@interface _CSSingleBatteryChargingView
- (CGSize)batterySize;
- (_CSSingleBatteryChargingView)initWithFrame:(CGRect)frame;
- (double)_batteryNoseOffset;
- (id)_chargePercentFont;
- (void)_layoutBattery;
- (void)_layoutChargePercentLabel;
- (void)layoutSubviews;
- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler;
- (void)setBatterySize:(CGSize)size;
- (void)setBatteryVisible:(BOOL)visible;
- (void)setIncludesBoltImage:(BOOL)image;
- (void)setLegibilitySettings:(id)settings;
- (void)setPrimaryBatteryText:(id)text forBattery:(id)battery;
@end

@implementation _CSSingleBatteryChargingView

- (_CSSingleBatteryChargingView)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = _CSSingleBatteryChargingView;
  v3 = [(CSBatteryChargingView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = +[CSBatteryChargingView maskImageNameForChargingBattery];
    v5 = [MEMORY[0x277D755B8] imageNamed:v4 inBundle:v39];
    batteryImage = v3->_batteryImage;
    v3->_batteryImage = v5;

    [(UIImage *)v3->_batteryImage size];
    v3->_batteryImageSize.width = v7;
    v3->_batteryImageSize.height = v8;
    v9 = [MEMORY[0x277D755D0] configurationWithWeight:7];
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"bolt.fill"];
    boltImage = v3->_boltImage;
    v3->_boltImage = v10;

    v12 = [(UIImage *)v3->_boltImage imageWithRenderingMode:2];
    v13 = v3->_boltImage;
    v3->_boltImage = v12;

    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3->_boltImage];
    boltImageView = v3->_boltImageView;
    v3->_boltImageView = v14;

    [(UIImageView *)v3->_boltImageView setPreferredSymbolConfiguration:v9];
    v16 = v3->_boltImageView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIImageView *)v16 setTintColor:blackColor];

    [(CSBatteryChargingView *)v3 _imageViewScalingCorrectedBatterySize:v3->_batteryImageSize.width, v3->_batteryImageSize.height];
    v19 = v18;
    v21 = v20;
    v22 = [CSBatteryFillView alloc];
    v23 = -[CSBatteryFillView initWithFrame:isInternalBattery:lowBatteryLevel:](v22, "initWithFrame:isInternalBattery:lowBatteryLevel:", 1, [MEMORY[0x277D75A78] lowBatteryLevel], 0.0, 0.0, v19, v21);
    batteryFillView = v3->_batteryFillView;
    v3->_batteryFillView = v23;

    [(CSBatteryFillView *)v3->_batteryFillView setAutoresizingMask:18];
    v25 = v3->_batteryFillView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CSBatteryFillView *)v25 setBackgroundColor:clearColor];

    v27 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:2020];
    [v27 setRenderingHint:1];
    v28 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:v27 settings:{0.0, 0.0, v19, v21}];
    batteryBlurView = v3->_batteryBlurView;
    v3->_batteryBlurView = v28;

    [(_UIBackdropView *)v3->_batteryBlurView setAutoresizingMask:18];
    v30 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v19, v21}];
    batteryContainerView = v3->_batteryContainerView;
    v3->_batteryContainerView = v30;

    v32 = v3->_batteryContainerView;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v32 setBackgroundColor:clearColor2];

    [(UIView *)v3->_batteryContainerView setAutoresizingMask:18];
    [(UIView *)v3->_batteryContainerView setClipsToBounds:1];
    [(UIView *)v3->_batteryContainerView addSubview:v3->_batteryBlurView];
    [(UIView *)v3->_batteryContainerView addSubview:v3->_batteryFillView];
    [(UIView *)v3->_batteryContainerView setAlpha:0.0];
    v34 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3->_batteryImage];
    [v34 setAutoresizingMask:18];
    [v34 setFrame:{0.0, 0.0, v19, v21}];
    [v34 setContentMode:0];
    [(CSBatteryFillView *)v3->_batteryFillView setMaskView:v34];
    inputSettings = [(_UIBackdropView *)v3->_batteryBlurView inputSettings];
    [inputSettings setGrayscaleTintMaskImage:v3->_batteryImage];

    inputSettings2 = [(_UIBackdropView *)v3->_batteryBlurView inputSettings];
    [inputSettings2 setColorTintMaskImage:v3->_batteryImage];

    inputSettings3 = [(_UIBackdropView *)v3->_batteryBlurView inputSettings];
    [inputSettings3 setFilterMaskImage:v3->_batteryImage];

    [(_CSSingleBatteryChargingView *)v3 addSubview:v3->_batteryContainerView];
  }

  return v3;
}

- (void)setBatterySize:(CGSize)size
{
  if (self->_batteryImageSize.width != size.width || self->_batteryImageSize.height != size.height)
  {
    self->_batteryImageSize = size;
    [(_CSSingleBatteryChargingView *)self setNeedsLayout];

    [(_CSSingleBatteryChargingView *)self layoutIfNeeded];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  v6.receiver = self;
  v6.super_class = _CSSingleBatteryChargingView;
  [(CSBatteryChargingView *)&v6 setLegibilitySettings:settings];
  chargePercentLabel = self->_chargePercentLabel;
  legibilitySettings = [(CSBatteryChargingView *)self legibilitySettings];
  [(SBUILegibilityLabel *)chargePercentLabel setLegibilitySettings:legibilitySettings];
}

- (void)setIncludesBoltImage:(BOOL)image
{
  if (self->_includesBoltImage != image)
  {
    self->_includesBoltImage = image;
    [(UIImageView *)self->_boltImageView removeFromSuperview];
    if (self->_includesBoltImage)
    {
      boltImageView = self->_boltImageView;

      [(_CSSingleBatteryChargingView *)self addSubview:boltImageView];
    }
  }
}

- (void)setPrimaryBatteryText:(id)text forBattery:(id)battery
{
  chargePercentLabel = self->_chargePercentLabel;
  batteryCopy = battery;
  v8 = [(CSBatteryChargingView *)self _updateChargeString:text oldLabel:chargePercentLabel];
  v9 = self->_chargePercentLabel;
  self->_chargePercentLabel = v8;

  [(SBUILegibilityLabel *)self->_chargePercentLabel setAdjustsFontSizeToFitWidth:1];
  -[CSBatteryFillView setChargePercentage:](self->_batteryFillView, "setChargePercentage:", [batteryCopy percentCharge]);
  batteryFillView = self->_batteryFillView;
  isLowPowerModeActive = [batteryCopy isLowPowerModeActive];

  [(CSBatteryFillView *)batteryFillView setBatterySaverModeActive:isLowPowerModeActive];

  [(_CSSingleBatteryChargingView *)self setNeedsLayout];
}

- (void)setBatteryVisible:(BOOL)visible
{
  batteryContainerView = self->_batteryContainerView;
  v5 = 0.0;
  if (visible)
  {
    v5 = 1.0;
  }

  [(UIView *)batteryContainerView setAlpha:v5];

  [(_CSSingleBatteryChargingView *)self setNeedsLayout];
}

- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)layoutSubviews
{
  [(_CSSingleBatteryChargingView *)self _layoutBattery];

  [(_CSSingleBatteryChargingView *)self _layoutChargePercentLabel];
}

- (void)_layoutChargePercentLabel
{
  [(SBUILegibilityLabel *)self->_chargePercentLabel frame];
  chargePercentLabel = self->_chargePercentLabel;
  [(_CSSingleBatteryChargingView *)self bounds];
  [(SBUILegibilityLabel *)chargePercentLabel sizeThatFits:v4, 0.0];
  v6 = v5;
  v8 = v7;
  [(_CSSingleBatteryChargingView *)self bounds];
  if (v6 > v9)
  {
    [(_CSSingleBatteryChargingView *)self bounds];
    v6 = v10;
  }

  if ([(_CSSingleBatteryChargingView *)self horizontalLayoutNeeded])
  {
    [(_CSSingleBatteryChargingView *)self bounds];
    [(CSBatteryChargingView *)self horizontalGapBetweenBatteryAndPercentLabel];
    SBFMainScreenScale();
    BSFloatRoundForScale();
    v12 = v11;
    SBFMainScreenScale();
    BSFloatRoundForScale();
    v14 = v13;
  }

  else
  {
    [(CSBatteryChargingView *)self _tightFrameForElement:2];
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    CGRectGetMidY(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMidX(v25);
    SBFMainScreenScale();
    BSRectRoundForScale();
    v12 = v19;
    v6 = v20;
    v8 = v21;
  }

  v22 = self->_chargePercentLabel;

  [(SBUILegibilityLabel *)v22 setFrame:v12, v14, v6, v8];
}

- (void)_layoutBattery
{
  [(CSBatteryChargingView *)self _imageViewScalingCorrectedBatterySize:self->_batteryImageSize.width, self->_batteryImageSize.height];
  v4 = v3;
  v6 = v5;
  if ([(_CSSingleBatteryChargingView *)self horizontalLayoutNeeded])
  {
    [(_CSSingleBatteryChargingView *)self bounds];
    [(CSBatteryChargingView *)self horizontalGapBetweenBatteryAndPercentLabel];
    SBFMainScreenScale();
    BSFloatRoundForScale();
    v8 = v7;
    SBFMainScreenScale();
    BSFloatRoundForScale();
    v10 = v9;
  }

  else
  {
    [(CSBatteryChargingView *)self _batteryCenter];
    v10 = v11 - v6 * 0.5;
    v13 = v12 - v4 * 0.5;
    [(_CSSingleBatteryChargingView *)self _batteryNoseOffset];
    v8 = v14 + v13;
  }

  if (self->_includesBoltImage)
  {
    [(UIImageView *)self->_boltImageView sizeThatFits:0.0, v6];
    [(UIImageView *)self->_boltImageView setFrame:v8 + (v4 - v16) * 0.5, v10 - (v15 + -2.0 - v6) * 0.5];
  }

  batteryContainerView = self->_batteryContainerView;

  [(UIView *)batteryContainerView setFrame:v8, v10, v4, v6];
}

- (double)_batteryNoseOffset
{
  v3 = __sb__runningInSpringBoard();
  v4 = v3;
  if (v3)
  {
    v5 = 3.0;
    if (SBFEffectiveDeviceClass() != 2)
    {
      return v5;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v5 = 3.0;
    if ([currentDevice userInterfaceIdiom] != 1)
    {
LABEL_6:

      return v5;
    }
  }

  SBFMainScreenScale();
  BSFloatFloorForScale();
  v5 = v6;
  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  return v5;
}

- (id)_chargePercentFont
{
  [MEMORY[0x277D02CF0] fontSizeForElementType:2 isLandscapeVariant:0];
  v4 = v3;
  if ([(_CSSingleBatteryChargingView *)self horizontalLayoutNeeded])
  {
    v4 = 25.0;
  }

  [MEMORY[0x277D02CF0] fontWeightForElementType:2];
  v6 = MEMORY[0x277D74300];

  return [v6 systemFontOfSize:v4 weight:v5];
}

- (CGSize)batterySize
{
  width = self->_batterySize.width;
  height = self->_batterySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end