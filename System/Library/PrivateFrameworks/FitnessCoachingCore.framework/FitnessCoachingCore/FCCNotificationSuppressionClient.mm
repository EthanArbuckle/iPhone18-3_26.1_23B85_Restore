@interface FCCNotificationSuppressionClient
- (FCCNotificationSuppressionClient)init;
- (FCCNotificationSuppressionClient)initWithQueue:(id)queue store:(id)store xpcClient:(id)client;
- (void)_addNotificationSuppressionRequest:(id)request completion:(id)completion;
- (void)_removeNotificationSuppressionRequest:(id)request completion:(id)completion;
- (void)addNotificationSuppressionRequest:(id)request completion:(id)completion;
- (void)removeNotificationSuppressionRequest:(id)request completion:(id)completion;
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

- (FCCNotificationSuppressionClient)initWithQueue:(id)queue store:(id)store xpcClient:(id)client
{
  queueCopy = queue;
  storeCopy = store;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = FCCNotificationSuppressionClient;
  v12 = [(FCCNotificationSuppressionClient *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dispatchQueue, queue);
    objc_storeStrong(&v13->_store, store);
    objc_storeStrong(&v13->_xpcClient, client);
  }

  return v13;
}

- (void)addNotificationSuppressionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__FCCNotificationSuppressionClient_addNotificationSuppressionRequest_completion___block_invoke;
  block[3] = &unk_279009F10;
  block[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_addNotificationSuppressionRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  transportData = [request transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:7 data:transportData completion:completionCopy];
}

- (void)removeNotificationSuppressionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__FCCNotificationSuppressionClient_removeNotificationSuppressionRequest_completion___block_invoke;
  block[3] = &unk_279009F10;
  block[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_removeNotificationSuppressionRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  transportData = [request transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:8 data:transportData completion:completionCopy];
}

@end