@interface FCCMoveModeClient
- (FCCMoveModeClient)init;
- (FCCMoveModeClient)initWithQueue:(id)queue xpcClient:(id)client;
- (void)_postMoveModeNotification:(id)notification completion:(id)completion;
- (void)postMoveModeNotification:(id)notification completion:(id)completion;
@end

@implementation FCCMoveModeClient

- (FCCMoveModeClient)init
{
  v3 = objc_alloc_init(FCCXPCClient);
  v4 = HKCreateSerialDispatchQueueWithQOSClass();
  v5 = [(FCCMoveModeClient *)self initWithQueue:v4 xpcClient:v3];

  return v5;
}

- (FCCMoveModeClient)initWithQueue:(id)queue xpcClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = FCCMoveModeClient;
  v9 = [(FCCMoveModeClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v10->_xpcClient, client);
  }

  return v10;
}

- (void)postMoveModeNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__FCCMoveModeClient_postMoveModeNotification_completion___block_invoke;
  block[3] = &unk_279009F10;
  block[4] = self;
  v12 = notificationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = notificationCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_postMoveModeNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  transportData = [notification transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:4 data:transportData completion:completionCopy];
}

@end