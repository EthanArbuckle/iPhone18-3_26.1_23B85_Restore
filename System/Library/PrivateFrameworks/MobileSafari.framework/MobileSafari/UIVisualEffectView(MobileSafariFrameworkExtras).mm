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
  v2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [a1 sf_configureAsStartPageBackgroundWithNonVibrantBackgroundColor:v2];
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
  v6 = objc_alloc_init(a1);
  [v6 _setGroupName:@"start-page-cell"];
  [v6 _setContinuousCornerRadius:20.0];
  v7 = [v6 contentView];
  [v7 _setContinuousCornerRadius:20.0];

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
  v9 = [v6 layer];
  [v9 setShadowRadius:a2];
  [v9 setShadowPathIsBounds:1];
  v10 = [MEMORY[0x1E69DC888] blackColor];
  [v9 setShadowColor:{objc_msgSend(v10, "CGColor")}];

  [v9 setShadowOffset:{0.0, 6.0}];
  [v9 setShadowOpacity:0.0];

LABEL_13:

  return v6;
}

+ (id)sf_startPageLabelVibrancyEffectView
{
  v0 = MEMORY[0x1E69DD248];
  v1 = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
  v2 = [v0 effectForBlurEffect:v1 style:0];

  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v2];

  return v3;
}

- (void)sf_configureAsStartPageBackgroundIgnoringVibrancy
{
  v2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [a1 sf_configureAsStartPageBackgroundIgnoringVibrancyWithBackgroundColor:v2];
}

- (void)sf_configureAsStartPageBackgroundIgnoringVibrancyWithBackgroundColor:()MobileSafariFrameworkExtras
{
  v4 = a3;
  v5 = [a1 contentView];
  [v5 setBackgroundColor:v4];

  [a1 setEffect:0];
  v7 = [a1 layer];
  if ([v7 shadowPathIsBounds])
  {
    LODWORD(v6) = *"\nף=";
    [v7 setShadowOpacity:v6];
  }
}

- (void)sf_configureAsStartPageBackgroundWithNonVibrantBackgroundColor:()MobileSafariFrameworkExtras
{
  v12 = a3;
  v4 = [a1 traitCollection];
  v5 = [v4 sf_backgroundBlurEffect];
  if (![v4 sf_usesVibrantAppearance])
  {
LABEL_6:
    [a1 sf_configureAsStartPageBackgroundIgnoringVibrancyWithBackgroundColor:v12];
    goto LABEL_10;
  }

  if (v5)
  {
    if (debugOpaqueInPopover_onceToken != -1)
    {
      [UIVisualEffectView(MobileSafariFrameworkExtras) sf_configureAsStartPageBackgroundWithNonVibrantBackgroundColor:];
    }

    if (debugOpaqueInPopover_flag == 1)
    {
      goto LABEL_6;
    }

    v8 = [MEMORY[0x1E69DC888] blackColor];
    v9 = [a1 contentView];
    [v9 setBackgroundColor:v8];

    v7 = [MEMORY[0x1E69DD248] effectForBlurEffect:v5 style:6];
  }

  else
  {
    v6 = [a1 contentView];
    [v6 setBackgroundColor:0];

    v7 = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
  }

  v10 = v7;
  [a1 setEffect:v7];

  v11 = [a1 layer];
  [v11 setShadowOpacity:0.0];

LABEL_10:
}

- (void)sf_configureAsStartPageForegroundWithEffectStyle:()MobileSafariFrameworkExtras
{
  v10 = [a1 traitCollection];
  if ([v10 sf_usesVibrantAppearance])
  {
    v5 = [v10 sf_backgroundBlurEffect];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC730] _sf_defaultStartPageBackgroundEffect];
    }

    v8 = v7;
    v9 = [MEMORY[0x1E69DD248] effectForBlurEffect:v7 style:a3];
    [a1 setEffect:v9];
  }

  else
  {
    [a1 setEffect:0];
  }
}

- (void)sf_setHighlighted:()MobileSafariFrameworkExtras cellState:
{
  v6 = MEMORY[0x1E69DC6E8];
  v7 = a4;
  v8 = [v6 listGroupedCellConfiguration];
  v10 = [v8 updatedConfigurationForState:v7];

  v9 = [v10 backgroundColor];
  [a1 sf_setHighlighted:a3 cellState:v7 nonVibrantBackgroundColor:v9];
}

- (void)sf_setHighlighted:()MobileSafariFrameworkExtras cellState:nonVibrantBackgroundColor:
{
  v8 = a5;
  v6 = [a1 effect];

  if (!v6)
  {
    v7 = [a1 contentView];
    [v7 setBackgroundColor:v8];
  }
}

@end