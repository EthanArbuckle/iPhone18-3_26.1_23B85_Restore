@interface HUQuickControlViewControllerConfiguration
- (HUQuickControlViewControllerConfiguration)initWithHome:(id)home;
- (HUQuickControlViewControllerConfiguration)initWithMediaRoutingIdentifier:(id)identifier;
@end

@implementation HUQuickControlViewControllerConfiguration

- (HUQuickControlViewControllerConfiguration)initWithHome:(id)home
{
  homeCopy = home;
  v8.receiver = self;
  v8.super_class = HUQuickControlViewControllerConfiguration;
  v6 = [(HUQuickControlViewControllerConfiguration *)&v8 init];
  if (v6)
  {
    if (!homeCopy)
    {
      NSLog(&cfstr_HomeReallyShou.isa);
    }

    objc_storeStrong(&v6->_home, home);
    v6->_copyItems = 1;
  }

  return v6;
}

- (HUQuickControlViewControllerConfiguration)initWithMediaRoutingIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = HUQuickControlViewControllerConfiguration;
  v4 = [(HUQuickControlViewControllerConfiguration *)&v6 init];
  if (v4)
  {
    if (!identifier)
    {
      NSLog(&cfstr_Mediaroutingid.isa);
    }

    v4->_copyItems = 1;
  }

  return v4;
}

@end