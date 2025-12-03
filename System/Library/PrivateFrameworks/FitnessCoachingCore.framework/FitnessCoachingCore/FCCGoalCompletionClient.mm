@interface FCCGoalCompletionClient
- (FCCGoalCompletionClient)init;
- (FCCGoalCompletionClient)initWithQueue:(id)queue xpcClient:(id)client;
- (void)_postGoalCompletionNotification:(id)notification completion:(id)completion;
- (void)postGoalCompletionNotification:(id)notification completion:(id)completion;
@end

@implementation FCCGoalCompletionClient

- (FCCGoalCompletionClient)init
{
  v3 = objc_alloc_init(FCCXPCClient);
  v4 = HKCreateSerialDispatchQueueWithQOSClass();
  v5 = [(FCCGoalCompletionClient *)self initWithQueue:v4 xpcClient:v3];

  return v5;
}

- (FCCGoalCompletionClient)initWithQueue:(id)queue xpcClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = FCCGoalCompletionClient;
  v9 = [(FCCGoalCompletionClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v10->_xpcClient, client);
  }

  return v10;
}

- (void)postGoalCompletionNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__FCCGoalCompletionClient_postGoalCompletionNotification_completion___block_invoke;
  block[3] = &unk_279009F10;
  block[4] = self;
  v12 = notificationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = notificationCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_postGoalCompletionNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  transportData = [notification transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:3 data:transportData completion:completionCopy];
}

@end