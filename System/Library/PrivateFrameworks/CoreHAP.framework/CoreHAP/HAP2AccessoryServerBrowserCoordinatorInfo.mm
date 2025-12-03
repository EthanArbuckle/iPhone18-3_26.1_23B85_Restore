@interface HAP2AccessoryServerBrowserCoordinatorInfo
- (HAP2AccessoryServerBrowserCoordinatorInfo)initWithCoordinator:(id)coordinator;
@end

@implementation HAP2AccessoryServerBrowserCoordinatorInfo

- (HAP2AccessoryServerBrowserCoordinatorInfo)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = HAP2AccessoryServerBrowserCoordinatorInfo;
  v6 = [(HAP2AccessoryServerBrowserCoordinatorInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, coordinator);
  }

  return v7;
}

@end