@interface HUCircleView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (HUCircleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation HUCircleView

- (HUCircleView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = HUCircleView;
  v3 = [(HUCircleView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCircleView *)v3 setOpaque:0];
    [(HUCircleView *)v4 setUserInteractionEnabled:0];
    v5 = [(HUCircleView *)v4 widthAnchor];
    v6 = [(HUCircleView *)v4 heightAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    [v7 setActive:1];

    if ([MEMORY[0x277D14CE0] shouldUseControlCenterMaterials])
    {
      v8 = [MEMORY[0x277CFC968] controlCenterTertiaryMaterial];
      controlCenterMaterialView = v4->_controlCenterMaterialView;
      v4->_controlCenterMaterialView = v8;

      [(HUCircleView *)v4 addSubview:v4->_controlCenterMaterialView];
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = HUCircleView;
  [(HUCircleView *)&v19 layoutSubviews];
  [(HUCircleView *)self bounds];
  v3 = CGRectGetWidth(v20) * 0.5;
  v4 = [(HUCircleView *)self layer];
  [v4 setCornerRadius:v3];

  if ([MEMORY[0x277D14CE0] shouldUseControlCenterMaterials])
  {
    [(HUCircleView *)self frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(HUCircleView *)self controlCenterMaterialView];
    [v13 setFrame:{v6, v8, v10, v12}];

    v14 = [(HUCircleView *)self layer];
    [v14 cornerRadius];
    v16 = v15;
    v17 = [(HUCircleView *)self controlCenterMaterialView];
    v18 = [v17 layer];
    [v18 setCornerRadius:v16];
  }
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = HUCircleView;
  [(HUCircleView *)&v7 tintColorDidChange];
  if ([(HUCircleView *)self backgroundColorFollowsTintColor])
  {
    v3 = [(HUCircleView *)self tintColor];
    [(HUCircleView *)self setBackgroundColor:v3];
  }

  if ([(HUCircleView *)self borderColorFollowsTintColor])
  {
    v4 = [(HUCircleView *)self tintColor];
    v5 = [v4 CGColor];
    v6 = [(HUCircleView *)self layer];
    [v6 setBorderColor:v5];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"cornerRadius"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"borderColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUCircleView;
    v5 = [(HUCircleView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end