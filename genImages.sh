#!/usr/bin/env bash

$(aws ecr get-login --no-include-email)

export BUILD_NUMBER=0.0.0

docker build -t 955065381857.dkr.ecr.cn-north-1.amazonaws.com.cn/order-service:$BUILD_NUMBER .
docker tag 955065381857.dkr.ecr.cn-north-1.amazonaws.com.cn/order-service:$BUILD_NUMBER 955065381857.dkr.ecr.cn-north-1.amazonaws.com.cn/order-service:latest

docker push 955065381857.dkr.ecr.cn-north-1.amazonaws.com.cn/order-service:$BUILD_NUMBER
docker push 955065381857.dkr.ecr.cn-north-1.amazonaws.com.cn/order-service:latest
