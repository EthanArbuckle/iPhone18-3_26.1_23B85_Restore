@interface UIVisualEffectView(MobileSafariFrameworkExtras)
+ (id)safari_statusBarGradientBlurEffectView;
+ (id)sf_startPageBackgroundTraits;
+ (id)sf_startPageCellBackgroundEffectViewWithShadow:()MobileSafariFrameworkExtras shadowRadius:;
+ (id)sf_startPageLabelVibrancyEffectView;
- (void)sf_configureAsStartPageBackground;
- (void)sf_configureAsStartPageBackgroundIgnoringVibrancy;
- (void)sf_configureAsStartPageBackgroundIgnoringVibrancyWithBackgroundColor:()MobileSafariFrameworkExtras;
- (void)sf_configureAsStartPageBackgroundWithNonVibrantBackgroundColor:()MobileSafariFrameworkExtras;
- (void)sf_configureAsStartPageForegroundWithEffectStyle:()MobileSafariFrameworkExtras;
- (void)sf_setHighlighted:()MobileSafariFrameworkExtras cellState:;
- (void)sf_setHighlighted:()MobileSafariFrameworkExtras cellState:nonVibrantBackgroundColor:;
@end

@implementation UIVisualEffectView(MobileSafariFrameworkExtras)

+ (id)safari_statusBarGradientBlurEffectView
{
  if (safari_statusBarGradientBlurEffectView_onceToken != -1)
  {
    +[UIVisualEffectView(MobileSafariFrameworkExtras) safari_statusBarGradientBlurEffectView];
  }

  v0 = objc_alloc(MEMORY[0x1E69DD298]);
  v1 = [v0 initWithEffect:safari_statusBarGradientBlurEffectView_gradientBlur];

  return v1;
}

- (void)sf_configureAsStartPageBackground
{
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [self sf_configureAsStartPageBackgroundWithNonVibrantBackgroundColor:secondarySystemGroupedBackgroundColor];
}

+ (id)sf_startPageBackgroundTraits
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];

  return v0;
}

+ (id)sf_startPageCellBackgroundEffectViewWithShadow:()MobileSafariFrameworkExtras shadowRadius:
{
  v6 = objc_alloc_init(self);
  [v6 _setGroupName:@"start-page-cell"];
  [v6 _setContinuousCornerRadius:20.0];
  contentView = [v6 contentView];
  [contentView _setContinuousCornerRadius:20.0];

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v8 = 1;
  }

  else
  {
    v8 = a4 == 0;
  }

  if (v8)
  {
    if (debugShadows_onceToken != -1)
    {
      +[UIVisualEffectView(MobileSafariFrameworkExtras) sf_startPageCellBackgroundEffectViewWithShadow:shadowRadius:];
    }

LABEL_11:
    if (debugShadows_flag != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (debugShadows_onceToken != -1)
  {
    +[UIVisualEffectView(MobileSafariFrameworkExtras) sf_startPageCellBackgroundEffectViewWithShadow:shadowRadius:];
  }

  if (debugShadows_flag == 2)
  {
    goto LABEL_11;
  }

LABEL_12:
  layer = [v6 layer];
  [layer setShadowRadius:a2];
  [layer setShadowPathIsBounds:1];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  [layer setShadowOffset:{0.0, 6.0}];
  [layer setShadowOpacity:0.0];

LABEL_13:

  return v6;
}

+ (id)sf_startPageLabelVibrancyEffectView
{
  v0 = MEMORY[0x1E69DD248];
  _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
  v2 = [v0 effectForBlurEffect:_sf_defaultStartPageBackgroundEffect style:0];

  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v2];

  return v3;
}

- (void)sf_configureAsStartPageBackgroundIgnoringVibrancy
{
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [self sf_configureAsStartPageBackgroundIgnoringVibrancyWithBackgroundColor:secondarySystemGroupedBackgroundColor];
}

- (void)sf_configureAsStartPageBackgroundIgnoringVibrancyWithBackgroundColor:()MobileSafariFrameworkExtras
{
  v4 = a3;
  contentView = [self contentView];
  [contentView setBackgroundColor:v4];

  [self setEffect:0];
  layer = [self layer];
  if ([layer shadowPathIsBounds])
  {
    LODWORD(v6) = *"\nף=";
    [layer setShadowOpacity:v6];
  }
}

- (void)sf_configureAsStartPageBackgroundWithNonVibrantBackgroundColor:()MobileSafariFrameworkExtras
{
  v12 = a3;
  traitCollection = [self traitCollection];
  sf_backgroundBlurEffect = [traitCollection sf_backgroundBlurEffect];
  if (![traitCollection sf_usesVibrantAppearance])
  {
LABEL_6:
    [self sf_configureAsStartPageBackgroundIgnoringVibrancyWithBackgroundColor:v12];
    goto LABEL_10;
  }

  if (sf_backgroundBlurEffect)
  {
    if (debugOpaqueInPopover_onceToken != -1)
    {
      [UIVisualEffectView(MobileSafariFrameworkExtras) sf_configureAsStartPageBackgroundWithNonVibrantBackgroundColor:];
    }

    if (debugOpaqueInPopover_flag == 1)
    {
      goto LABEL_6;
    }

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    contentView = [self contentView];
    [contentView setBackgroundColor:blackColor];

    _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DD248] effectForBlurEffect:sf_backgroundBlurEffect style:6];
  }

  else
  {
    contentView2 = [self contentView];
    [contentView2 setBackgroundColor:0];

    _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
  }

  v10 = _sf_defaultStartPageBackgroundEffect;
  [self setEffect:_sf_defaultStartPageBackgroundEffect];

  layer = [self layer];
  [layer setShadowOpacity:0.0];

LABEL_10:
}

- (void)sf_configureAsStartPageForegroundWithEffectStyle:()MobileSafariFrameworkExtras
{
  traitCollection = [self traitCollection];
  if ([traitCollection sf_usesVibrantAppearance])
  {
    sf_backgroundBlurEffect = [traitCollection sf_backgroundBlurEffect];
    v6 = sf_backgroundBlurEffect;
    if (sf_backgroundBlurEffect)
    {
      _sf_defaultStartPageBackgroundEffect = sf_backgroundBlurEffect;
    }

    else
    {
      _sf_defaultStartPageBackgroundEffect = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
    }

    v8 = _sf_defaultStartPageBackgroundEffect;
    v9 = [MEMORY[0x1E69DD248] effectForBlurEffect:_sf_defaultStartPageBackgroundEffect style:a3];
    [self setEffect:v9];
  }

  else
  {
    [self setEffect:0];
  }
}

- (void)sf_setHighlighted:()MobileSafariFrameworkExtras cellState:
{
  v6 = MEMORY[0x1E69DC6E8];
  v7 = a4;
  listGroupedCellConfiguration = [v6 listGroupedCellConfiguration];
  v10 = [listGroupedCellConfiguration updatedConfigurationForState:v7];

  backgroundColor = [v10 backgroundColor];
  [self sf_setHighlighted:a3 cellState:v7 nonVibrantBackgroundColor:backgroundColor];
}

- (void)sf_setHighlighted:()MobileSafariFrameworkExtras cellState:nonVibrantBackgroundColor:
{
  v8 = a5;
  effect = [self effect];

  if (!effect)
  {
    contentView = [self contentView];
    [contentView setBackgroundColor:v8];
  }
}

@end