#/bin/sh
apt-get update
apt-get install -y apt-transport-https


apt-get install -y virtualbox virtualbox-ext-pack

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
touch /etc/apt/sources.list.d/kubernetes.list
 echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubectl


 curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-linux-amd64
 chmod +x minikube && sudo mv minikube /usr/local/bin/
