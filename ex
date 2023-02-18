pool: 
  name: Default
trigger:
  - master

steps:
  - task: Maven@3
    inputs:
      mavenPOMFile: 'pom.xml'
      goals: 'package'
      testResultsFiles: '**/surefire-reports/TEST-*.xml'
      javaHomeOption: 'Path'
      jdkDirectory: /usr/lib/jvm/java-17-openjdk-amd64
      mavenVersionOption: 'path'
      mavenDirectory: /home/ubuntu/spring-petclinic