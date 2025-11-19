@interface HUBannerItem
- (HUBannerItem)init;
- (HUBannerItem)initWithHome:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUBannerItem

- (HUBannerItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUBannerItem;
  v6 = [(HUBannerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (HUBannerItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUBannerItem.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HUBannerItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUBannerItem *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

@end