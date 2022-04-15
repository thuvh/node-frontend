#!/usr/bin/env bash

set -e
set -x

#echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

NODE_VERSION=10; docker build --build-arg "NODE_VERSION=$NODE_VERSION" -t thuvh/node-frontend:$NODE_VERSION .

NODE_VERSION=16.13.0; docker build --build-arg "NODE_VERSION=$NODE_VERSION" -t thuvh/node-frontend:$NODE_VERSION .
NODE_VERSION=16; docker build --build-arg "NODE_VERSION=$NODE_VERSION" -t thuvh/node-frontend:$NODE_VERSION .
NODE_VERSION=16; docker tag thuvh/node-frontend:$NODE_VERSION thuvh/node-frontend:latest

docker push thuvh/node-frontend:10
docker push thuvh/node-frontend:16.13.0
docker push thuvh/node-frontedn:16
docker push thuvh/node-frontend:latest
