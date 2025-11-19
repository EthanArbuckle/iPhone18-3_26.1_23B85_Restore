@interface FCCGoalCompletionClient
- (FCCGoalCompletionClient)init;
- (FCCGoalCompletionClient)initWithQueue:(id)a3 xpcClient:(id)a4;
- (void)_postGoalCompletionNotification:(id)a3 completion:(id)a4;
- (void)postGoalCompletionNotification:(id)a3 completion:(id)a4;
@end

@implementation FCCGoalCompletionClient

- (FCCGoalCompletionClient)init
{
  v3 = objc_alloc_init(FCCXPCClient);
  v4 = HKCreateSerialDispatchQueueWithQOSClass();
  v5 = [(FCCGoalCompletionClient *)self initWithQueue:v4 xpcClient:v3];

  return v5;
}

- (FCCGoalCompletionClient)initWithQueue:(id)a3 xpcClient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCCGoalCompletionClient;
  v9 = [(FCCGoalCompletionClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a3);
    objc_storeStrong(&v10->_xpcClient, a4);
  }

  return v10;
}

- (void)postGoalCompletionNotification:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__FCCGoalCompletionClient_postGoalCompletionNotification_completion___block_invoke;
  block[3] = &unk_279009F10;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_postGoalCompletionNotification:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:3 data:v7 completion:v6];
}

@end