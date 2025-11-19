@interface HUQuickControlRoundButton
- (HUQuickControlRoundButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation HUQuickControlRoundButton

- (HUQuickControlRoundButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = HUQuickControlRoundButton;
  v3 = [(HUQuickControlRoundButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HUQuickControlRoundButton *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    [(HUQuickControlRoundButton *)v4 setClipsToBounds:1];
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v6 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      controlCenterMaterialView = v4->_controlCenterMaterialView;
      v4->_controlCenterMaterialView = v6;

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
  v5 = [(HUQuickControlRoundButton *)self layer];
  [v5 setCornerRadius:v4];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    [(HUQuickControlRoundButton *)self frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(HUQuickControlRoundButton *)self controlCenterMaterialView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v15 = [(HUQuickControlRoundButton *)self layer];
    [v15 cornerRadius];
    v17 = v16;
    v18 = [(HUQuickControlRoundButton *)self controlCenterMaterialView];
    v19 = [v18 layer];
    [v19 setCornerRadius:v17];
  }
}

@end