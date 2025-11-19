@interface HUStatusBannerView
- (void)prepareForReuse;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUStatusBannerView

- (void)prepareForReuse
{
  v3 = [(HUBannerView *)self iconView];
  [v3 setVibrancyEffect:0];

  v4 = [(HUBannerView *)self iconView];
  [v4 setTintColor:0];

  v5.receiver = self;
  v5.super_class = HUStatusBannerView;
  [(HUBannerView *)&v5 prepareForReuse];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUBannerView *)self item];
  v6 = [v5 latestResults];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F20]];
  v8 = [v7 integerValue];

  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  if (!v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x277D75348] systemRedColor];
      v11 = [(HUBannerView *)self iconView];
      [v11 setTintColor:v10];

      v12 = MEMORY[0x277D75358];
      v13 = [MEMORY[0x277D75348] systemRedColor];
      v14 = [v12 colorEffectMonochromeTint:v13 blendingAmount:1.0 brightnessAdjustment:0.45];
      v15 = [(HUBannerView *)self iconView];
      [v15 setVibrancyEffect:v14];
    }
  }

  v16.receiver = self;
  v16.super_class = HUStatusBannerView;
  [(HUBannerView *)&v16 updateUIWithAnimation:v3];
}

@end