@interface HUQuickControlViewControllerConfiguration
- (HUQuickControlViewControllerConfiguration)initWithHome:(id)a3;
- (HUQuickControlViewControllerConfiguration)initWithMediaRoutingIdentifier:(id)a3;
@end

@implementation HUQuickControlViewControllerConfiguration

- (HUQuickControlViewControllerConfiguration)initWithHome:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = HUQuickControlViewControllerConfiguration;
  v6 = [(HUQuickControlViewControllerConfiguration *)&v8 init];
  if (v6)
  {
    if (!v5)
    {
      NSLog(&cfstr_HomeReallyShou.isa);
    }

    objc_storeStrong(&v6->_home, a3);
    v6->_copyItems = 1;
  }

  return v6;
}

- (HUQuickControlViewControllerConfiguration)initWithMediaRoutingIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUQuickControlViewControllerConfiguration;
  v4 = [(HUQuickControlViewControllerConfiguration *)&v6 init];
  if (v4)
  {
    if (!a3)
    {
      NSLog(&cfstr_Mediaroutingid.isa);
    }

    v4->_copyItems = 1;
  }

  return v4;
}

@end