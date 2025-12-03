@interface HUQuickControlRoundButton
- (HUQuickControlRoundButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation HUQuickControlRoundButton

- (HUQuickControlRoundButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = HUQuickControlRoundButton;
  v3 = [(HUQuickControlRoundButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(HUQuickControlRoundButton *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    [(HUQuickControlRoundButton *)v4 setClipsToBounds:1];
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterTertiaryMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      controlCenterMaterialView = v4->_controlCenterMaterialView;
      v4->_controlCenterMaterialView = controlCenterTertiaryMaterial;

      [(HUQuickControlRoundButton *)v4 addSubview:v4->_controlCenterMaterialView];
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = HUQuickControlRoundButton;
  [(HUQuickControlRoundButton *)&v20 layoutSubviews];
  [(HUQuickControlRoundButton *)self bounds];
  v4 = v3 * 0.5;
  layer = [(HUQuickControlRoundButton *)self layer];
  [layer setCornerRadius:v4];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    [(HUQuickControlRoundButton *)self frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    controlCenterMaterialView = [(HUQuickControlRoundButton *)self controlCenterMaterialView];
    [controlCenterMaterialView setFrame:{v7, v9, v11, v13}];

    layer2 = [(HUQuickControlRoundButton *)self layer];
    [layer2 cornerRadius];
    v17 = v16;
    controlCenterMaterialView2 = [(HUQuickControlRoundButton *)self controlCenterMaterialView];
    layer3 = [controlCenterMaterialView2 layer];
    [layer3 setCornerRadius:v17];
  }
}

@end