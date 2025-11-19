@interface FCCNotificationSuppressionClient
- (FCCNotificationSuppressionClient)init;
- (FCCNotificationSuppressionClient)initWithQueue:(id)a3 store:(id)a4 xpcClient:(id)a5;
- (void)_addNotificationSuppressionRequest:(id)a3 completion:(id)a4;
- (void)_removeNotificationSuppressionRequest:(id)a3 completion:(id)a4;
- (void)addNotificationSuppressionRequest:(id)a3 completion:(id)a4;
- (void)removeNotificationSuppressionRequest:(id)a3 completion:(id)a4;
@end

@implementation FCCNotificationSuppressionClient

- (FCCNotificationSuppressionClient)init
{
  v3 = objc_alloc_init(FCCNotificationSuppressionStore);
  v4 = objc_alloc_init(FCCXPCClient);
  v5 = HKCreateSerialDispatchQueueWithQOSClass();
  v6 = [(FCCNotificationSuppressionClient *)self initWithQueue:v5 store:v3 xpcClient:v4];

  return v6;
}

- (FCCNotificationSuppressionClient)initWithQueue:(id)a3 store:(id)a4 xpcClient:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FCCNotificationSuppressionClient;
  v12 = [(FCCNotificationSuppressionClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dispatchQueue, a3);
    objc_storeStrong(&v13->_store, a4);
    objc_storeStrong(&v13->_xpcClient, a5);
  }

  return v13;
}

- (void)addNotificationSuppressionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__FCCNotificationSuppressionClient_addNotificationSuppressionRequest_completion___block_invoke;
  block[3] = &unk_279009F10;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_addNotificationSuppressionRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:7 data:v7 completion:v6];
}

- (void)removeNotificationSuppressionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__FCCNotificationSuppressionClient_removeNotificationSuppressionRequest_completion___block_invoke;
  block[3] = &unk_279009F10;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_removeNotificationSuppressionRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:8 data:v7 completion:v6];
}

@end