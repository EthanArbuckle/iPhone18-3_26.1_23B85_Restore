@interface HUQuickControlMagnifierView
- (CGSize)sizeThatFits:(CGSize)a3;
- (HUQuickControlMagnifierView)initWithFrame:(CGRect)a3;
- (double)_outlineWidth;
- (void)layoutSubviews;
@end

@implementation HUQuickControlMagnifierView

- (HUQuickControlMagnifierView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = HUQuickControlMagnifierView;
  v3 = [(HUQuickControlMagnifierView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUQuickControlMagnifierView *)v3 setSelectedColor:0];
    [(HUQuickControlMagnifierView *)v4 _outlineWidth];
    v6 = v5;
    v7 = [(HUQuickControlMagnifierView *)v4 layer];
    [v7 setBorderWidth:v6];

    v8 = [MEMORY[0x277D75348] systemWhiteColor];
    v9 = [v8 CGColor];
    v10 = [(HUQuickControlMagnifierView *)v4 layer];
    [v10 setBorderColor:v9];

    v11 = [(HUQuickControlMagnifierView *)v4 layer];
    LODWORD(v12) = 1045220557;
    [v11 setShadowOpacity:v12];

    v13 = [(HUQuickControlMagnifierView *)v4 layer];
    [v13 setShadowRadius:15.0];

    v14 = *MEMORY[0x277CBF3A8];
    v15 = *(MEMORY[0x277CBF3A8] + 8);
    v16 = [(HUQuickControlMagnifierView *)v4 layer];
    [v16 setShadowOffset:{v14, v15}];
  }

  return v4;
}

- (double)_outlineWidth
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  result = 1.66666667;
  if (v4 <= 2.0)
  {
    return 1.5;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(HUQuickControlMagnifierView *)self innerRadius:a3.width];
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
  v5 = [(HUQuickControlMagnifierView *)self layer];
  [v5 setCornerRadius:v4];

  v6 = MEMORY[0x277D75208];
  [(HUQuickControlMagnifierView *)self bounds];
  v7 = [v6 bezierPathWithOvalInRect:?];
  v8 = [v7 CGPath];
  v9 = [(HUQuickControlMagnifierView *)self layer];
  [v9 setShadowPath:v8];
}

@end