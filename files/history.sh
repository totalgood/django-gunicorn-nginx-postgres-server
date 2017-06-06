sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenvwrapper
WORKON_HOME=/webapps/ mkvirtualenv --python=python3 openchat_env
workon openchat_env
python  # double check python3
sudo pip install --upgrade pip
ls -al ~/.virtualenvs/
ln -s /webapps/openchat_env/ ~/.virtualenvs/openchat_env
workon openchat_env
pip3 install --upgrade django==1.10.7
cd /webapps/openchat_env/
git clone git@github.com:totalgood/openchat.git
cd ..
sudo useradd --system --gid webapps --home /webapps/openchat_env openchat
sudo chown -R openchat:webapps openchat_env
nano /webapps/openchat_env/bin/gunicorn_start  # see files/webapps/openchat_env/bin/gunicorn_start
nano /etc/supervisor/conf.d/hackor.conf  # see files/etc/supervisor/conf.d/openchat.conf
cd /webapps/openchat_env/openchat/
sudo supervisorctl reread
mkdir /webapps/openchat_env/logs
ls -ald /webapps/openchat_env/*
sudo chown -R openchat:webapps ../logs
sudo chmod -R g+w ../logs
sudo chmod -R g+x ../logs
sudo supervisorctl reread
sudo supervisorctl update
nano requirements.txt  # see files/openchat_env/openchat/requirements.txt
nano test-requirements.txt 
pip install django-extensions
pip install djangorestframework
pip install djangorestframework-csv
pip install pyscopg2
pip install gunicorn
pip install sutime
pip install tweepy
pip install django_celery_results
pip install django_filters
python manage.py shell
pip freeze frozen-requirements.txt
nano frozen-requirements.txt 
# cp /webapps/hackor/hackor/hackor/local_settings.py .
sudo chown -R openchat:webapps *
python manage.py shell
git commit -am 'update requirements.txt just for openchat, not hackor'
nano local_settings.py  # files/openchat_env/openchat/openchat/local_settings.py
sudo chown openchat:webapps local_settings.py
nano openchat/settings.py 
mv local_settings.py openchat/
python manage.py shell
sudo chown -h openchat:webapps python-sutime
sudo nano /etc/nginx/sites-available/hackor
ls /etc/nginx/sites-available/
ls /etc/nginx/sites-enabled/
sudo ln -s /etc/nginx/sites-available/openchat /etc/nginx/sites-enabled/openchat
ls -al /etc/nginx/sites-enabled/
sudo service nginx restart
systemctl status nginx.service
sudo nano /etc/nginx/sites-available/openchat 
sudo chown openchat:webapps run
sudo chmod a+x openchat:webapps run
sudo chmod a+x run
sudo chmod -R a+w run
sudo chmod -R a+r run
sudo chmod -R a+x run
systemctl status nginx.service
systemctl start nginx.service
journalctl -xe
cd /etc/nginx
cd sites-available
sudo mv openchat hackor-refactored-for-openchat
sudo nano openchat
systemctl start nginx.service
sudo nano openchat 
sudo supervisorctl start openchat
sudo nano /etc/supervisor/conf.d/hackor.conf
 5115  cd ..
 5116  cd supervisor/
 5117  cd conf.d/
 5119  sudo nano openchat.conf 
 5120  sudo chmod a+x /webapps/openchat_env/bin/gunicorn_start
 5121  sudo chmod a+r /webapps/openchat_env/bin/gunicorn_start
 5122  sudo supervisorctl start openchat
 5123  cd /webapps/
 5125  cd openchat_env/
 5128  ls ../hackor
 5130  ls ../hackor/hackor
 5131  mkdir openchat/collected-static
 5132  sudo chown openchat:webapps openchat/collected-static
 5133  mkdir openchat/media
 5134  sudo chown openchat:webapps openchat/media
 5135  sudo chmod a+x openchat:webapps openchat/media
 5136  sudo chmod a+x openchat/media
 5137  sudo chmod a+x openchat/collected-static/
 5138  sudo chmod -R a+r openchat/collected-static/
 5139  sudo chmod -R a+r openchat/media
 5140  python manage.py collectstatic
 5141  cd openchat
 5142  python manage.py collectstatic
 5143  python manage.py migrate
 5144  pip install django_filters
 5145  python manage.py shell
 5146  nano requirements.txt 
 5147  pip uninstall django_filters
 5148  pip install django-filter
 5149  python manage.py shell
 5150  python manage.py migrate
 5151  python manage.py syncdb
 5152  python manage.py --help
 5153  python manage.py dbshell
 5154  python manage.py --help
 5156  cd /webapps
 5157  cd hackor
 5159  cd share
 5161  cd ..
 5162  find . -name "sutime*'
 5163  find . -name 'sutime*'
 5164  cd ../openchat
 5165  find . -name '*sutime*'
 5166  ln -s hackor/python-sutime ../openchat_env/openchat/python-sutime
 5167  chmod a+x hackor/python-sutime
 5168  sudo chmod a+x hackor/python-sutime
 5169  sudo chmod -R a+r hackor/python-sutime
 5170  find hackor/python-sutime -type d -exec chmod 775 {} \;
 5171  sudo find hackor/python-sutime -type d -exec chmod 775 {} \;
 5172  cd ../openchat
 5173  workon openchat
 5175  workon openchat
 5176  workon openchat_env
 5177  cd /webapps
 5178  cd openchat_env/
 5179  sudo supervisorctl restart openchat
 5180  sudo systemctl restart nginx.service
 5183  workon openchat_env
 5186  cd /webapps/openchat_env
 5188  chodn openchat:webapps hidden-static/
 5189  chmod openchat:webapps hidden-static/
 5190  chowbn openchat:webapps hidden-static/
 5191  chown openchat:webapps hidden-static/
 5192  sudo chown openchat:webapps hidden-static
 5193  ls ../hackor
 5196  chown openchat:webapps ..
 5197  sudo chown openchat:webapps ..
 5200  cd logs
 5202  more gunicorn_supervisor.log 
 5203  nano ../bin/gunicorn_start
 5204  sudo supervisorctl start openchat
 5205  more gunicorn_supervisor.log 
 5206  cd ..
 5207  cd openchat
 5208  python manage.py makemigrations
 5210  cd openchat/
 5212  cd ..
 5214  cd twote/
 5218  chown openchat:webapps migrations
 5219  sudo chown openchat:webapps migrations
 5220  cd ..
 5221  python manage.py makemigrations
 5222  python manage.py migrate
 5231  cd ..
 5232  cd hackor
 5233  cd twote
 5235  cp secrets.py ../../../openchat_env/openchat/openspaces/
 5236  cd ../../../
 5237  cd openchat_env/
 5240  cd openchat/
 5244  rm python manage.py makemigrations
 5246  git checkout manage.py
 5248  git checkout -- manage.py
 5250  git add manage.py
 5252  cd ..
 5253  cd openchat/
 5254  python manage.py makemigrations
 5255  sudo su - postgres
 5256  nano openchat/settings.py 
 5257  cd openchat
 5258  nano local_settings.py 
 5259  cd ..
 5260  python manage.py makemigrations
 5261  python manage.py migrate
 5262  sudo su - postgres
 5263  python manage.py migrate
 5264  su - postgres
 5266  sudo su - postgres
 5267  python manage.py migrate
 5268  more openspaces/models.py
 5269  nano openchat/settings.py 
 5270  systemctl restart nginx.service
 5271  nano openchat/settings.py 
 5272  cd ..
 5273  cd bin
 5274  more gunicorn_start 
 5275  nano gunicorn_start 
 5276  sudo nano /etc/supervisor/conf.d/openchat.conf 
 5277  sudo nano /etc/nginx/sites-available/openchat 
 5278  sudo supervisorctl restart openchat
 5279  systemctl restart nginx.service
 5280  cd ..
 5281  sudo nano /etc/nginx/sites-available/openchat 
 5282  systemctl restart nginx.service
 5283  cd openchat
 5284  python manage.py createsuperuser
 5285  python manage.py migrate openspaces zero
 5286  python manage.py migrate openchat zero
 5287  python manage.py makemigrations openchat
 5288  python manage.py makemigrations openspaces
 5289  python manage.py migrate
 5292  git add openchat
 5294  git commit -am 'allowed_hosts to accomidate test domains and subdomains'
 5295  python manage.py collectstatic
 5296  sudo nano /etc/nginx/sites-available/openchat 
 5299  nano requirements.txt
 5301  nano requirements.txt
 5303  git add hackor-requirements.txt 
 5308  nano /etc/supervisor/conf.d/streambotd.conf 
 5309  sudo mv ~/streambotd.conf /etc/supervisor/conf.d/streambotd.conf 
 5310  ls -al /etc/supervisor/conf.d/
 5311  supervisorctl restart streambotd
 5312  supervisorctl start streambotd
 5313  supervisorctl restart openchat
 5314  sudo supervisorctl start streambotd
 5315  sudo supervisorctl restart streambotd
 5316  sudo nano /etc/supervisor/conf.d/streambotd.conf 
 5317  sudo supervisorctl restart streambotd
 5318  ls -al /webapps/openchat_env/logs/
 5319  cd ..
 5320  ls -al /webapps/openchat_env/
 5321  cd openchat
 5323  python streambot.py
 5325  python
 5326  python streambot.py
 5328  python streambot.py
 5330  more hackor-requirements.txt | grep date
 5331  pip install python-dateutil
 5332  python streambot.py
 5333  nano streambot.py
 5335  cd python-sutime
 5336  rm python-sutime
 5337  ln -s /webapps/hackor/hackor/python-sutime python-sutime
 5338  sudo chown -h openchat:webapps python-sutime
 5340  python streambot.py
 5341  cd ..
 5344  cd /webapps/openchat/
 5345  cd /webapps/openchat_env/
 5346  cd logs
 5350  cd /webapps/openchat_env/
 5352  cd openchat
 5354  cd openchat
 5356  cd ../openspaces/
 5358  nano secrets.py 
 5360  cd ..
 5361  workon openchat_env
 5362  python streambot.py
 5363  sudo supervisorctl restart streambotd
 5364  more /etc/supervisor/conf.d/streambotd.conf
 5365  /webapps/openchat_env/bin/python /webapps/openchat_env/openchat/streambot.py
 5366  /webapps/openchat_env/logs/streambot-stream.log
 5367  more /webapps/openchat_env/logs/streambot-stream.log
 5368  nano /etc/supervisor/conf.d/streambotd.conf
 5369  sudo supervisorctl start streambotd
 5370  supervisorctl start streambotd
 5371  supervisorctl start celeryd
 5372  nano /etc/supervisor/conf.d/celeryd.conf 
 5373  sudo nano /etc/supervisor/conf.d/celeryd.conf 
 5374  supervisorctl start celeryd
 5375  sudo supervisorctl start celeryd
 5376  sudo supervisorctl restart celeryd
 5377  sudo supervisorctl start streambotd
 5378  sudo nano /etc/supervisor/conf.d/steambotd.conf 
 5379  sudo nano /etc/supervisor/conf.d/streambotd.conf 
 5380  sudo supervisorctl update
 5381  sudo supervisorctl reread
 5382  sudo supervisorctl update
 5383  sudo supervisorctl restart celeryd
 5384  sudo supervisorctl restart streambotd
 5385  sudo supervisorctl status streambotd
 5386  more /webapps/openchat_env/logs/streambot-stream.log 
 5387  more /webapps/openchat_env/logs/streambot-stream_error.log 
 5388  python
 5389  sudo su openchat
 5390  sudo supervisorctl restart streambotd
 5391  cd ..
 5394  ln -s /webapps/hackor/nltk_data /webapps/openchat_env/nltk_data
 5397  ln -s /webapps/hackor/hackor/nltk_data /webapps/openchat_env/nltk_data
 5399  ln -s /webapps/hackor/hackor/nltk_data /webapps/openchat_env/nltk_data
 5401  sudo supervisorctl restart streambotd
 5407  workon openchat_env
 5408  cd /webapps/openchat_env/
 5412  sudo rm -rf nltk_data_punkt_stopwords_only/
 5414  sudo chown openchat:webapps nltk_data
 5416  sudo chown -h openchat:webapps nltk_data
 5418  sudo chown -h hackor:webapps nltk_data
 5419  sudo chown hackor:webapps nltk_data
 5420  sudo chown -h openchat:webapps nltk_data
 5422  cd openchat
 5424  nano requirements.txt 
 5427  nano requirements.txt 
 5435  nano requirements.txt 
 5436  cd ..
 5438  cd openchat/
 5439  nano .gitignore 
 5442  nano .gitignore 
 5446  nano gunicorn_start 
 5447  nano ../bin/gunicorn_start 
 5449  chgrp -R webapps .
 5450  sudo chgrp -R webapps .
 5451  sudo chmod -R g+swX .
 5452  setfacl -R -m g:webapps:rwX .
 5453  sudo setfacl -R -m g:webapps:rwX .
 5454  find . -type d | xargs setfacl -R -m d:g:webapps:rwX
 5455  sudo find . -type d -exec setfacl -R -m d:g:webapps:rwX {} \;
 5460  git commit -am 'local edits to load_test_bot.py by zak'
 5462  sudo su zak
 5463  sudo chown -R zak /home/zak/.ssh/
 5464  sudo su zak
 5466  sudo DD_API_KEY=60ad30bc73a0f3bfca0f403ff231c4e2 bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/dd-agent/master/packaging/datadog-agent/source/install_agent.sh)"
 5468  cd /webapps/openchat_env/
 5470  cd openchat/
 5472  more openchat/local_settings.py