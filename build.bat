@echo off
echo Building and pushing Docker image...
docker build -t sum117/guilded-novelai-bot . && docker push sum117/guilded-novelai-bot

echo Connecting to server and updating Docker container...
ssh WebDevCloud "cd /home/jcaliman/guilded_novelai && docker-compose pull && docker-compose up -d"
