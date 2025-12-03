@interface DIXPCConnectionManager
- (DIXPCConnectionManager)initWithXPCManager:(id)manager dispatcher:(id)dispatcher;
@end

@implementation DIXPCConnectionManager

- (DIXPCConnectionManager)initWithXPCManager:(id)manager dispatcher:(id)dispatcher
{
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  v12.receiver = self;
  v12.super_class = DIXPCConnectionManager;
  v9 = [(DIXPCConnectionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, manager);
    objc_storeStrong(&v10->_dispatcher, dispatcher);
  }

  return v10;
}

@end