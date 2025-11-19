@interface HAP2AccessoryServerBrowserCoordinatorInfo
- (HAP2AccessoryServerBrowserCoordinatorInfo)initWithCoordinator:(id)a3;
@end

@implementation HAP2AccessoryServerBrowserCoordinatorInfo

- (HAP2AccessoryServerBrowserCoordinatorInfo)initWithCoordinator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAP2AccessoryServerBrowserCoordinatorInfo;
  v6 = [(HAP2AccessoryServerBrowserCoordinatorInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, a3);
  }

  return v7;
}

@end