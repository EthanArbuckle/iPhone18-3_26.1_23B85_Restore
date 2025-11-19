@interface COCapabilityManagerClientInterfaceMediator
- (COCapabilityManager)manager;
- (COCapabilityManagerClientInterfaceMediator)initWithCapabilityManager:(id)a3;
@end

@implementation COCapabilityManagerClientInterfaceMediator

- (COCapabilityManagerClientInterfaceMediator)initWithCapabilityManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COCapabilityManagerClientInterfaceMediator;
  v5 = [(COCapabilityManagerClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, v4);
  }

  return v6;
}

- (COCapabilityManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end