@interface FCCPauseRingsClient
- (FCCPauseRingsClient)init;
- (FCCPauseRingsClient)initWithQueue:(id)a3 xpcClient:(id)a4;
- (void)_postNotificationWithRequest:(id)a3 completion:(id)a4;
@end

@implementation FCCPauseRingsClient

- (FCCPauseRingsClient)init
{
  v3 = objc_alloc_init(FCCXPCClient);
  v4 = HKCreateSerialDispatchQueueWithQOSClass();
  v5 = [(FCCPauseRingsClient *)self initWithQueue:v4 xpcClient:v3];

  return v5;
}

- (FCCPauseRingsClient)initWithQueue:(id)a3 xpcClient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCCPauseRingsClient;
  v9 = [(FCCPauseRingsClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a3);
    objc_storeStrong(&v10->_xpcClient, a4);
  }

  return v10;
}

- (void)_postNotificationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 transportData];
  [(FCCXPCClient *)self->_xpcClient transportMessage:10 data:v7 completion:v6];
}

@end