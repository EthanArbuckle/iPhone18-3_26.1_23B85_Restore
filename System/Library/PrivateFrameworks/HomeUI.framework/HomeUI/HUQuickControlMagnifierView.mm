@interface HUQuickControlMagnifierView
- (CGSize)sizeThatFits:(CGSize)fits;
- (HUQuickControlMagnifierView)initWithFrame:(CGRect)frame;
- (double)_outlineWidth;
- (void)layoutSubviews;
@end

@implementation HUQuickControlMagnifierView

- (HUQuickControlMagnifierView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = HUQuickControlMagnifierView;
  v3 = [(HUQuickControlMagnifierView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUQuickControlMagnifierView *)v3 setSelectedColor:0];
    [(HUQuickControlMagnifierView *)v4 _outlineWidth];
    v6 = v5;
    layer = [(HUQuickControlMagnifierView *)v4 layer];
    [layer setBorderWidth:v6];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    cGColor = [systemWhiteColor CGColor];
    layer2 = [(HUQuickControlMagnifierView *)v4 layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(HUQuickControlMagnifierView *)v4 layer];
    LODWORD(v12) = 1045220557;
    [layer3 setShadowOpacity:v12];

    layer4 = [(HUQuickControlMagnifierView *)v4 layer];
    [layer4 setShadowRadius:15.0];

    v14 = *MEMORY[0x277CBF3A8];
    v15 = *(MEMORY[0x277CBF3A8] + 8);
    layer5 = [(HUQuickControlMagnifierView *)v4 layer];
    [layer5 setShadowOffset:{v14, v15}];
  }

  return v4;
}

- (double)_outlineWidth
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  result = 1.66666667;
  if (v4 <= 2.0)
  {
    return 1.5;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(HUQuickControlMagnifierView *)self innerRadius:fits.width];
  v5 = v4;
  [(HUQuickControlMagnifierView *)self _outlineWidth];
  v7 = v5 + v6 + v5 + v6;
  v8 = v7;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUQuickControlMagnifierView;
  [(HUQuickControlMagnifierView *)&v10 layoutSubviews];
  [(HUQuickControlMagnifierView *)self bounds];
  v4 = v3 * 0.5;
  layer = [(HUQuickControlMagnifierView *)self layer];
  [layer setCornerRadius:v4];

  v6 = MEMORY[0x277D75208];
  [(HUQuickControlMagnifierView *)self bounds];
  v7 = [v6 bezierPathWithOvalInRect:?];
  cGPath = [v7 CGPath];
  layer2 = [(HUQuickControlMagnifierView *)self layer];
  [layer2 setShadowPath:cGPath];
}

@end