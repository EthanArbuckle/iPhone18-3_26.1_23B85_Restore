@interface HUIconButton
- (CGSize)intrinsicContentSize;
- (HFIconDescriptor)iconDescriptor;
- (HUIconButton)initWithFrame:(CGRect)a3;
- (id)vibrancyEffect;
- (int64_t)contentMode;
- (void)setBackgroundVisualEffect:(id)a3 animated:(BOOL)a4;
- (void)setBackgroundVisualEffectViewCornerRaduis:(double)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setIconSize:(unint64_t)a3;
- (void)setIconTintColor:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setVibrancyEffect:(id)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
- (void)updateWithIconDescriptor:(id)a3 displayStyle:(unint64_t)a4 animated:(BOOL)a5;
@end

@implementation HUIconButton

- (HUIconButton)initWithFrame:(CGRect)a3
{
  v32.receiver = self;
  v32.super_class = HUIconButton;
  v3 = [(HUIconButton *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(HUIconButton *)v3 tintColor];
    v6 = [v5 CGColor];
    v7 = [(HUIconButton *)v4 layer];
    [v7 setBorderColor:v6];

    [(HUIconButton *)v4 _setContinuousCornerRadius:16.0];
    v8 = objc_alloc_init(MEMORY[0x277D180D0]);
    [(HUIconButton *)v4 setIconView:v8];

    v9 = [(HUIconButton *)v4 iconView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(HUIconButton *)v4 iconView];
    [v10 setUserInteractionEnabled:0];

    v11 = [(HUIconButton *)v4 iconView];
    [v11 setDisableContinuousAnimation:1];

    v12 = [(HUIconButton *)v4 iconView];
    [v12 setUseIntrinsicContentSizeFromAsset:0];

    v13 = [(HUIconButton *)v4 iconView];
    [(HUIconButton *)v4 addSubview:v13];

    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [(HUIconButton *)v4 iconView];
    v16 = [v15 centerXAnchor];
    v17 = [(HUIconButton *)v4 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v14 addObject:v18];

    v19 = [(HUIconButton *)v4 iconView];
    v20 = [v19 centerYAnchor];
    v21 = [(HUIconButton *)v4 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v14 addObject:v22];

    v23 = [(HUIconButton *)v4 iconView];
    v24 = [v23 widthAnchor];
    v25 = [(HUIconButton *)v4 widthAnchor];
    v26 = [v24 constraintLessThanOrEqualToAnchor:v25];
    [v14 addObject:v26];

    v27 = [(HUIconButton *)v4 iconView];
    v28 = [v27 heightAnchor];
    v29 = [(HUIconButton *)v4 heightAnchor];
    v30 = [v28 constraintLessThanOrEqualToAnchor:v29];
    [v14 addObject:v30];

    [MEMORY[0x277CCAAD0] activateConstraints:v14];
  }

  return v4;
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = HUIconButton;
  [(HUIconButton *)&v6 tintColorDidChange];
  v3 = [(HUIconButton *)self tintColor];
  v4 = [v3 CGColor];
  v5 = [(HUIconButton *)self layer];
  [v5 setBorderColor:v4];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = HUIconButton;
  [(HUIconButton *)&v7 setSelected:?];
  v5 = 0.0;
  if (v3)
  {
    v5 = HURoundToScreenScale(1.5);
  }

  v6 = [(HUIconButton *)self layer];
  [v6 setBorderWidth:v5];
}

- (void)updateWithIconDescriptor:(id)a3 displayStyle:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(HUIconButton *)self iconView];
  [v9 updateWithIconDescriptor:v8 displayStyle:a4 animated:v5];
}

- (CGSize)intrinsicContentSize
{
  v2 = 48.0;
  v3 = 48.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (HFIconDescriptor)iconDescriptor
{
  v2 = [(HUIconButton *)self iconView];
  v3 = [v2 iconDescriptor];

  return v3;
}

- (int64_t)contentMode
{
  v2 = [(HUIconButton *)self iconView];
  v3 = [v2 contentMode];

  return v3;
}

- (void)setContentMode:(int64_t)a3
{
  v4 = [(HUIconButton *)self iconView];
  [v4 setContentMode:a3];
}

- (id)vibrancyEffect
{
  v2 = [(HUIconButton *)self iconView];
  v3 = [v2 vibrancyEffect];

  return v3;
}

- (void)setVibrancyEffect:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUIconButton *)self iconView];
  [v7 setVibrancyEffect:v6 animated:v4];
}

- (void)setIconTintColor:(id)a3
{
  v4 = a3;
  v5 = [(HUIconButton *)self iconView];
  [v5 setTintColor:v4];
}

- (void)setIconSize:(unint64_t)a3
{
  v4 = [(HUIconButton *)self iconView];
  [v4 setIconSize:a3];
}

- (void)setBackgroundVisualEffect:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUIconButton *)self backgroundEffectView];

  if (v7)
  {
    if (v4)
    {
      v8 = MEMORY[0x277D75D18];
      v9 = [(HUIconButton *)self iconView];
      [v9 vibrancyEffectAnimationDuration];
      v11 = v10;
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __51__HUIconButton_setBackgroundVisualEffect_animated___block_invoke;
      v35 = &unk_277DB7558;
      v36 = self;
      v37 = v6;
      [v8 animateWithDuration:&v32 animations:v11];

      goto LABEL_7;
    }

    v12 = [(HUIconButton *)self backgroundEffectView];
    [v12 setEffect:v6];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v6];
    [(HUIconButton *)self frame];
    [v12 setFrame:?];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setClipsToBounds:1];
    [v12 setUserInteractionEnabled:0];
    [(HUIconButton *)self insertSubview:v12 atIndex:0];
    v13 = [MEMORY[0x277CBEB18] array];
    v14 = [v12 leadingAnchor];
    v15 = [(HUIconButton *)self leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v13 addObject:v16];

    v17 = [v12 trailingAnchor];
    v18 = [(HUIconButton *)self trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v13 addObject:v19];

    v20 = [v12 topAnchor];
    v21 = [(HUIconButton *)self topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v13 addObject:v22];

    v23 = [v12 bottomAnchor];
    v24 = [(HUIconButton *)self bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v13 addObject:v25];

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
    [(HUIconButton *)self setBackgroundEffectView:v12];
  }

LABEL_7:
  v26 = [(HUIconButton *)self iconView:v32];
  v27 = MEMORY[0x277D75D00];
  objc_opt_class();
  v28 = v6;
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  v31 = [v27 effectForBlurEffect:v30 style:0];
  [v26 setVibrancyEffect:v31];
}

void __51__HUIconButton_setBackgroundVisualEffect_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundEffectView];
  [v2 setEffect:*(a1 + 40)];
}

- (void)setBackgroundVisualEffectViewCornerRaduis:(double)a3
{
  v5 = [(HUIconButton *)self backgroundEffectView];

  if (v5)
  {
    v7 = [(HUIconButton *)self backgroundEffectView];
    v6 = [v7 layer];
    [v6 setCornerRadius:a3];
  }
}

@end