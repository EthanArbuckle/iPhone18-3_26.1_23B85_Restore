@interface HUQuickControlStepperSeparatorView
- (HUQuickControlStepperSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation HUQuickControlStepperSeparatorView

- (HUQuickControlStepperSeparatorView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = HUQuickControlStepperSeparatorView;
  v3 = [(HUQuickControlStepperSeparatorView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemGrayColor];
    v5 = [v4 colorWithAlphaComponent:0.3];
    [(HUQuickControlStepperSeparatorView *)v3 setBackgroundColor:v5];

    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
    v7 = [(HUQuickControlStepperSeparatorView *)v3 layer];
    [v7 setCompositingFilter:v6];
  }

  return v3;
}

@end