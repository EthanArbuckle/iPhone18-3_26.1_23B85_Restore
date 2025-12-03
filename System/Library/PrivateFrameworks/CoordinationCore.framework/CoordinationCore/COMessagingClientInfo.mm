@interface COMessagingClientInfo
- (COCoordinationServiceClient)client;
- (COMessagingClientInfo)initWithTopic:(id)topic cluster:(id)cluster handledClasses:(id)classes client:(id)client activateCompletionHanlder:(id)hanlder;
@end

@implementation COMessagingClientInfo

- (COMessagingClientInfo)initWithTopic:(id)topic cluster:(id)cluster handledClasses:(id)classes client:(id)client activateCompletionHanlder:(id)hanlder
{
  topicCopy = topic;
  clusterCopy = cluster;
  classesCopy = classes;
  clientCopy = client;
  hanlderCopy = hanlder;
  v25.receiver = self;
  v25.super_class = COMessagingClientInfo;
  v18 = [(COMessagingClientInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_topic, topic);
    objc_storeStrong(&v19->_cluster, cluster);
    objc_storeStrong(&v19->_handledClasses, classes);
    v20 = MEMORY[0x245D5FF10](hanlderCopy);
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v20;

    objc_storeWeak(&v19->_client, clientCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessions = v19->_sessions;
    v19->_sessions = dictionary;
  }

  return v19;
}

- (COCoordinationServiceClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end