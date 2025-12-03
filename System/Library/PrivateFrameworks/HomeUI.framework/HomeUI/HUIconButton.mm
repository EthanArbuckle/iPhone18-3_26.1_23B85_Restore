@interface HUIconButton
- (CGSize)intrinsicContentSize;
- (HFIconDescriptor)iconDescriptor;
- (HUIconButton)initWithFrame:(CGRect)frame;
- (id)vibrancyEffect;
- (int64_t)contentMode;
- (void)setBackgroundVisualEffect:(id)effect animated:(BOOL)animated;
- (void)setBackgroundVisualEffectViewCornerRaduis:(double)raduis;
- (void)setContentMode:(int64_t)mode;
- (void)setIconSize:(unint64_t)size;
- (void)setIconTintColor:(id)color;
- (void)setSelected:(BOOL)selected;
- (void)setVibrancyEffect:(id)effect animated:(BOOL)animated;
- (void)tintColorDidChange;
- (void)updateWithIconDescriptor:(id)descriptor displayStyle:(unint64_t)style animated:(BOOL)animated;
@end

@implementation HUIconButton

- (HUIconButton)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = HUIconButton;
  v3 = [(HUIconButton *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    tintColor = [(HUIconButton *)v3 tintColor];
    cGColor = [tintColor CGColor];
    layer = [(HUIconButton *)v4 layer];
    [layer setBorderColor:cGColor];

    [(HUIconButton *)v4 _setContinuousCornerRadius:16.0];
    v8 = objc_alloc_init(MEMORY[0x277D180D0]);
    [(HUIconButton *)v4 setIconView:v8];

    iconView = [(HUIconButton *)v4 iconView];
    [iconView setTranslatesAutoresizingMaskIntoConstraints:0];

    iconView2 = [(HUIconButton *)v4 iconView];
    [iconView2 setUserInteractionEnabled:0];

    iconView3 = [(HUIconButton *)v4 iconView];
    [iconView3 setDisableContinuousAnimation:1];

    iconView4 = [(HUIconButton *)v4 iconView];
    [iconView4 setUseIntrinsicContentSizeFromAsset:0];

    iconView5 = [(HUIconButton *)v4 iconView];
    [(HUIconButton *)v4 addSubview:iconView5];

    array = [MEMORY[0x277CBEB18] array];
    iconView6 = [(HUIconButton *)v4 iconView];
    centerXAnchor = [iconView6 centerXAnchor];
    centerXAnchor2 = [(HUIconButton *)v4 centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v18];

    iconView7 = [(HUIconButton *)v4 iconView];
    centerYAnchor = [iconView7 centerYAnchor];
    centerYAnchor2 = [(HUIconButton *)v4 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v22];

    iconView8 = [(HUIconButton *)v4 iconView];
    widthAnchor = [iconView8 widthAnchor];
    widthAnchor2 = [(HUIconButton *)v4 widthAnchor];
    v26 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    [array addObject:v26];

    iconView9 = [(HUIconButton *)v4 iconView];
    heightAnchor = [iconView9 heightAnchor];
    heightAnchor2 = [(HUIconButton *)v4 heightAnchor];
    v30 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    [array addObject:v30];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = HUIconButton;
  [(HUIconButton *)&v6 tintColorDidChange];
  tintColor = [(HUIconButton *)self tintColor];
  cGColor = [tintColor CGColor];
  layer = [(HUIconButton *)self layer];
  [layer setBorderColor:cGColor];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = HUIconButton;
  [(HUIconButton *)&v7 setSelected:?];
  v5 = 0.0;
  if (selectedCopy)
  {
    v5 = HURoundToScreenScale(1.5);
  }

  layer = [(HUIconButton *)self layer];
  [layer setBorderWidth:v5];
}

- (void)updateWithIconDescriptor:(id)descriptor displayStyle:(unint64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  iconView = [(HUIconButton *)self iconView];
  [iconView updateWithIconDescriptor:descriptorCopy displayStyle:style animated:animatedCopy];
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
  iconView = [(HUIconButton *)self iconView];
  iconDescriptor = [iconView iconDescriptor];

  return iconDescriptor;
}

- (int64_t)contentMode
{
  iconView = [(HUIconButton *)self iconView];
  contentMode = [iconView contentMode];

  return contentMode;
}

- (void)setContentMode:(int64_t)mode
{
  iconView = [(HUIconButton *)self iconView];
  [iconView setContentMode:mode];
}

- (id)vibrancyEffect
{
  iconView = [(HUIconButton *)self iconView];
  vibrancyEffect = [iconView vibrancyEffect];

  return vibrancyEffect;
}

- (void)setVibrancyEffect:(id)effect animated:(BOOL)animated
{
  animatedCopy = animated;
  effectCopy = effect;
  iconView = [(HUIconButton *)self iconView];
  [iconView setVibrancyEffect:effectCopy animated:animatedCopy];
}

- (void)setIconTintColor:(id)color
{
  colorCopy = color;
  iconView = [(HUIconButton *)self iconView];
  [iconView setTintColor:colorCopy];
}

- (void)setIconSize:(unint64_t)size
{
  iconView = [(HUIconButton *)self iconView];
  [iconView setIconSize:size];
}

- (void)setBackgroundVisualEffect:(id)effect animated:(BOOL)animated
{
  animatedCopy = animated;
  effectCopy = effect;
  backgroundEffectView = [(HUIconButton *)self backgroundEffectView];

  if (backgroundEffectView)
  {
    if (animatedCopy)
    {
      v8 = MEMORY[0x277D75D18];
      iconView = [(HUIconButton *)self iconView];
      [iconView vibrancyEffectAnimationDuration];
      v11 = v10;
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __51__HUIconButton_setBackgroundVisualEffect_animated___block_invoke;
      v35 = &unk_277DB7558;
      selfCopy = self;
      v37 = effectCopy;
      [v8 animateWithDuration:&v32 animations:v11];

      goto LABEL_7;
    }

    backgroundEffectView2 = [(HUIconButton *)self backgroundEffectView];
    [backgroundEffectView2 setEffect:effectCopy];
  }

  else
  {
    backgroundEffectView2 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:effectCopy];
    [(HUIconButton *)self frame];
    [backgroundEffectView2 setFrame:?];
    [backgroundEffectView2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [backgroundEffectView2 setClipsToBounds:1];
    [backgroundEffectView2 setUserInteractionEnabled:0];
    [(HUIconButton *)self insertSubview:backgroundEffectView2 atIndex:0];
    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [backgroundEffectView2 leadingAnchor];
    leadingAnchor2 = [(HUIconButton *)self leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v16];

    trailingAnchor = [backgroundEffectView2 trailingAnchor];
    trailingAnchor2 = [(HUIconButton *)self trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v19];

    topAnchor = [backgroundEffectView2 topAnchor];
    topAnchor2 = [(HUIconButton *)self topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v22];

    bottomAnchor = [backgroundEffectView2 bottomAnchor];
    bottomAnchor2 = [(HUIconButton *)self bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v25];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(HUIconButton *)self setBackgroundEffectView:backgroundEffectView2];
  }

LABEL_7:
  v26 = [(HUIconButton *)self iconView:v32];
  v27 = MEMORY[0x277D75D00];
  objc_opt_class();
  v28 = effectCopy;
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

- (void)setBackgroundVisualEffectViewCornerRaduis:(double)raduis
{
  backgroundEffectView = [(HUIconButton *)self backgroundEffectView];

  if (backgroundEffectView)
  {
    backgroundEffectView2 = [(HUIconButton *)self backgroundEffectView];
    layer = [backgroundEffectView2 layer];
    [layer setCornerRadius:raduis];
  }
}

@end