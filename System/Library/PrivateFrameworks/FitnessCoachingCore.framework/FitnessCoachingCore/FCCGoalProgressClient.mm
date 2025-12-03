@interface FCCGoalProgressClient
- (FCCGoalProgressClient)init;
- (FCCGoalProgressClient)initWithQueue:(id)queue xpcClient:(id)client;
- (void)_postGoalProgressNotification:(id)notification completion:(id)completion;
- (void)postGoalProgressNotification:(id)notification completion:(id)completion;
@end

@implementation FCCGoalProgressClient

- (FCCGoalProgressClient)init
{
  v3 = objc_alloc_init(FCCXPCClient);
  v4 = HKCreateSerialDispatchQueueWithQOSClass();
  v5 = [(FCCGoalProgressClient *)self initWithQueue:v4 xpcClient:v3];

  return v5;
}

- (FCCGoalProgressClient)initWithQueue:(id)queue xpcClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = FCCGoalProgressClient;
  v9 = [(FCCGoalProgressClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v10->_xpcClient, client);
  }

  return v10;
}

- (void)postGoalProgressNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__FCCGoalProgressClient_postGoalProgressNotification_completion___block_invoke;
  block[3] = &unk_279009F10;
  block[4] = self;
  v12 = notificationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = notificationCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_postGoalProgressNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  transportData = [notification transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:5 data:transportData completion:completionCopy];
}

@end