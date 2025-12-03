@interface COCapabilityManagerClientInterfaceMediator
- (COCapabilityManager)manager;
- (COCapabilityManagerClientInterfaceMediator)initWithCapabilityManager:(id)manager;
@end

@implementation COCapabilityManagerClientInterfaceMediator

- (COCapabilityManagerClientInterfaceMediator)initWithCapabilityManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = COCapabilityManagerClientInterfaceMediator;
  v5 = [(COCapabilityManagerClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, managerCopy);
  }

  return v6;
}

- (COCapabilityManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end