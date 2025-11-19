@interface COMessagingClientInfo
- (COCoordinationServiceClient)client;
- (COMessagingClientInfo)initWithTopic:(id)a3 cluster:(id)a4 handledClasses:(id)a5 client:(id)a6 activateCompletionHanlder:(id)a7;
@end

@implementation COMessagingClientInfo

- (COMessagingClientInfo)initWithTopic:(id)a3 cluster:(id)a4 handledClasses:(id)a5 client:(id)a6 activateCompletionHanlder:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = COMessagingClientInfo;
  v18 = [(COMessagingClientInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_topic, a3);
    objc_storeStrong(&v19->_cluster, a4);
    objc_storeStrong(&v19->_handledClasses, a5);
    v20 = MEMORY[0x245D5FF10](v17);
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v20;

    objc_storeWeak(&v19->_client, v16);
    v22 = [MEMORY[0x277CBEB38] dictionary];
    sessions = v19->_sessions;
    v19->_sessions = v22;
  }

  return v19;
}

- (COCoordinationServiceClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end