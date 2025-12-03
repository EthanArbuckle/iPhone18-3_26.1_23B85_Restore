@interface FCCPauseRingsClient
- (FCCPauseRingsClient)init;
- (FCCPauseRingsClient)initWithQueue:(id)queue xpcClient:(id)client;
- (void)_postNotificationWithRequest:(id)request completion:(id)completion;
@end

@implementation FCCPauseRingsClient

- (FCCPauseRingsClient)init
{
  v3 = objc_alloc_init(FCCXPCClient);
  v4 = HKCreateSerialDispatchQueueWithQOSClass();
  v5 = [(FCCPauseRingsClient *)self initWithQueue:v4 xpcClient:v3];

  return v5;
}

- (FCCPauseRingsClient)initWithQueue:(id)queue xpcClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = FCCPauseRingsClient;
  v9 = [(FCCPauseRingsClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v10->_xpcClient, client);
  }

  return v10;
}

- (void)_postNotificationWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  transportData = [request transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:10 data:transportData completion:completionCopy];
}

@end