export PATH="~/anaconda4/bin:$PATH"
wget http://snap.stanford.edu/data/amazon/productGraph/categoryFiles/reviews_Electronics.json.gz
wget http://snap.stanford.edu/data/amazon/productGraph/categoryFiles/meta_Electronics.json.gz
gunzip reviews_Electronics.json.gz
gunzip meta_Electronics.json.gz
python script/process_data.py
python script/local_aggretor.py
python script/split_by_user.py
python script/generate_voc.py
