@interface HUStatusBannerView
- (void)prepareForReuse;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUStatusBannerView

- (void)prepareForReuse
{
  iconView = [(HUBannerView *)self iconView];
  [iconView setVibrancyEffect:0];

  iconView2 = [(HUBannerView *)self iconView];
  [iconView2 setTintColor:0];

  v5.receiver = self;
  v5.super_class = HUStatusBannerView;
  [(HUBannerView *)&v5 prepareForReuse];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  item = [(HUBannerView *)self item];
  latestResults = [item latestResults];

  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F20]];
  integerValue = [v7 integerValue];

  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  if (!integerValue)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      iconView = [(HUBannerView *)self iconView];
      [iconView setTintColor:systemRedColor];

      v12 = MEMORY[0x277D75358];
      systemRedColor2 = [MEMORY[0x277D75348] systemRedColor];
      v14 = [v12 colorEffectMonochromeTint:systemRedColor2 blendingAmount:1.0 brightnessAdjustment:0.45];
      iconView2 = [(HUBannerView *)self iconView];
      [iconView2 setVibrancyEffect:v14];
    }
  }

  v16.receiver = self;
  v16.super_class = HUStatusBannerView;
  [(HUBannerView *)&v16 updateUIWithAnimation:animationCopy];
}

@end