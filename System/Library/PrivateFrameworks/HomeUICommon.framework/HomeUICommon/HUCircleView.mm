@interface HUCircleView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (HUCircleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation HUCircleView

- (HUCircleView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = HUCircleView;
  v3 = [(HUCircleView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCircleView *)v3 setOpaque:0];
    [(HUCircleView *)v4 setUserInteractionEnabled:0];
    widthAnchor = [(HUCircleView *)v4 widthAnchor];
    heightAnchor = [(HUCircleView *)v4 heightAnchor];
    v7 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    [v7 setActive:1];

    if ([MEMORY[0x277D14CE0] shouldUseControlCenterMaterials])
    {
      controlCenterTertiaryMaterial = [MEMORY[0x277CFC968] controlCenterTertiaryMaterial];
      controlCenterMaterialView = v4->_controlCenterMaterialView;
      v4->_controlCenterMaterialView = controlCenterTertiaryMaterial;

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
  layer = [(HUCircleView *)self layer];
  [layer setCornerRadius:v3];

  if ([MEMORY[0x277D14CE0] shouldUseControlCenterMaterials])
  {
    [(HUCircleView *)self frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    controlCenterMaterialView = [(HUCircleView *)self controlCenterMaterialView];
    [controlCenterMaterialView setFrame:{v6, v8, v10, v12}];

    layer2 = [(HUCircleView *)self layer];
    [layer2 cornerRadius];
    v16 = v15;
    controlCenterMaterialView2 = [(HUCircleView *)self controlCenterMaterialView];
    layer3 = [controlCenterMaterialView2 layer];
    [layer3 setCornerRadius:v16];
  }
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = HUCircleView;
  [(HUCircleView *)&v7 tintColorDidChange];
  if ([(HUCircleView *)self backgroundColorFollowsTintColor])
  {
    tintColor = [(HUCircleView *)self tintColor];
    [(HUCircleView *)self setBackgroundColor:tintColor];
  }

  if ([(HUCircleView *)self borderColorFollowsTintColor])
  {
    tintColor2 = [(HUCircleView *)self tintColor];
    cGColor = [tintColor2 CGColor];
    layer = [(HUCircleView *)self layer];
    [layer setBorderColor:cGColor];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"cornerRadius"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"borderColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUCircleView;
    v5 = [(HUCircleView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end