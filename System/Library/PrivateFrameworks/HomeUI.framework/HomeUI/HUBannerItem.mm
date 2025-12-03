@interface HUBannerItem
- (HUBannerItem)init;
- (HUBannerItem)initWithHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUBannerItem

- (HUBannerItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HUBannerItem;
  v6 = [(HUBannerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
  }

  return v7;
}

- (HUBannerItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUBannerItem.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HUBannerItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HUBannerItem *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

@end