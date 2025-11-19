@interface HMDMediaBrowserDataSource
- (HMDDevice)currentDevice;
- (HMDMediaBrowserDataSource)init;
- (id)performOperation:(id)a3;
@end

@implementation HMDMediaBrowserDataSource

- (id)performOperation:(id)a3
{
  v3 = MEMORY[0x277D0F8F0];
  v4 = a3;
  v5 = [v3 defaultScheduler];
  v6 = [v5 performOperation:v4];

  return v6;
}

- (HMDDevice)currentDevice
{
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 device];

  return v3;
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