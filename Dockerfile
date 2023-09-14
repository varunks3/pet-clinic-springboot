FROM openjdk:20-jdk-slim

WORKDIR /app

COPY target/spring-petclinic-3.1.0-SNAPSHOT.jar /app/spring-petclinic-3.1.0-SNAPSHOT.jar

CMD ["java", "-jar", "spring-petclinic-3.1.0-SNAPSHOT.jar"]


# docker build -t image-name:latest .
# docker run -p 8000:8000 python-django-app:latest


# az aks create -g kubernetes-hosting -n myAKSCluster --enable-managed-identity --node-count 1 --enable-addons monitoring --enable-msi-auth-for-monitoring  --attach-acr kubernetesreposbpc --generate-ssh-keys