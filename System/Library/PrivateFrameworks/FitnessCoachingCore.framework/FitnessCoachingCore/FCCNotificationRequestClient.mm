@interface FCCNotificationRequestClient
- (FCCNotificationRequestClient)init;
- (FCCNotificationRequestClient)initWithQueue:(id)queue xpcClient:(id)client;
- (void)postSampleNotificationWithCompletion:(id)completion;
@end

@implementation FCCNotificationRequestClient

- (FCCNotificationRequestClient)init
{
  v3 = objc_alloc_init(FCCXPCClient);
  v4 = HKCreateSerialDispatchQueueWithQOSClass();
  v5 = [(FCCNotificationRequestClient *)self initWithQueue:v4 xpcClient:v3];

  return v5;
}

- (FCCNotificationRequestClient)initWithQueue:(id)queue xpcClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = FCCNotificationRequestClient;
  v9 = [(FCCNotificationRequestClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v10->_xpcClient, client);
  }

  return v10;
}

- (void)postSampleNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__FCCNotificationRequestClient_postSampleNotificationWithCompletion___block_invoke;
  v7[3] = &unk_27900A068;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

@end