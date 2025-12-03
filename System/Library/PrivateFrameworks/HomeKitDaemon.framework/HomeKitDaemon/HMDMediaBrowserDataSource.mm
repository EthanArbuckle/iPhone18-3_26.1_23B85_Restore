@interface HMDMediaBrowserDataSource
- (HMDDevice)currentDevice;
- (HMDMediaBrowserDataSource)init;
- (id)performOperation:(id)operation;
@end

@implementation HMDMediaBrowserDataSource

- (id)performOperation:(id)operation
{
  v3 = MEMORY[0x277D0F8F0];
  operationCopy = operation;
  defaultScheduler = [v3 defaultScheduler];
  v6 = [defaultScheduler performOperation:operationCopy];

  return v6;
}

- (HMDDevice)currentDevice
{
  v2 = +[HMDAppleAccountManager sharedManager];
  device = [v2 device];

  return device;
}

- (HMDMediaBrowserDataSource)init
{
  v7.receiver = self;
  v7.super_class = HMDMediaBrowserDataSource;
  v2 = [(HMDMediaBrowserDataSource *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CFE990]);
    v4 = [v3 initWithLocalDomainAndServiceType:*MEMORY[0x277CFE550]];
    airPlayBonjourBrowser = v2->_airPlayBonjourBrowser;
    v2->_airPlayBonjourBrowser = v4;
  }

  return v2;
}

@end