@interface DIXPCConnectionManager
- (DIXPCConnectionManager)initWithXPCManager:(id)a3 dispatcher:(id)a4;
@end

@implementation DIXPCConnectionManager

- (DIXPCConnectionManager)initWithXPCManager:(id)a3 dispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DIXPCConnectionManager;
  v9 = [(DIXPCConnectionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, a3);
    objc_storeStrong(&v10->_dispatcher, a4);
  }

  return v10;
}

@end