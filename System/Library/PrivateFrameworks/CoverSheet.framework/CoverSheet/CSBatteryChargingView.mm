@interface CSBatteryChargingView
+ (id)batteryChargingRingViewWithConfiguration:(id)configuration externalBattery:(id)battery;
+ (id)batteryChargingViewWithDoubleBattery;
+ (id)batteryChargingViewWithSingleBattery;
+ (id)horizontalBatteryChargingViewForBatterySize:(CGSize)size includeBoltImage:(BOOL)image;
+ (id)maskImageNameForChargingBattery;
+ (id)maskImageNameForInternalChargingBattery;
- (CGPoint)_batteryCenter;
- (CGRect)_tightFrameForElement:(unint64_t)element;
- (CGSize)_imageViewScalingCorrectedBatterySize:(CGSize)size;
- (CSBatteryChargingView)initWithFrame:(CGRect)frame;
- (double)_batteryHeight;
- (id)_updateChargeString:(id)string oldLabel:(id)label;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation CSBatteryChargingView

+ (id)batteryChargingViewWithSingleBattery
{
  v2 = [_CSSingleBatteryChargingView alloc];
  v3 = [(_CSSingleBatteryChargingView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v3;
}

+ (id)batteryChargingViewWithDoubleBattery
{
  v2 = [_CSDoubleBatteryChargingView alloc];
  v3 = [(_CSDoubleBatteryChargingView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v3;
}

+ (id)horizontalBatteryChargingViewForBatterySize:(CGSize)size includeBoltImage:(BOOL)image
{
  imageCopy = image;
  height = size.height;
  width = size.width;
  v7 = [_CSSingleBatteryChargingView alloc];
  v8 = [(_CSSingleBatteryChargingView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_CSSingleBatteryChargingView *)v8 setBatterySize:width, height];
  [(_CSSingleBatteryChargingView *)v8 setHorizontalLayoutNeeded:1];
  [(_CSSingleBatteryChargingView *)v8 setIncludesBoltImage:imageCopy];

  return v8;
}

+ (id)batteryChargingRingViewWithConfiguration:(id)configuration externalBattery:(id)battery
{
  batteryCopy = battery;
  configurationCopy = configuration;
  v7 = [CSBatteryChargingRingView alloc];
  v8 = [(CSBatteryChargingRingView *)v7 initWithFrame:configurationCopy configuration:batteryCopy externalBattery:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v8;
}

+ (id)maskImageNameForChargingBattery
{
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v2 = [@"LockScreenChargingBatteryMask" stringByAppendingString:@"-RTL"];
  }

  else
  {
    v2 = @"LockScreenChargingBatteryMask";
  }

  return v2;
}

+ (id)maskImageNameForInternalChargingBattery
{
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v2 = [@"LockScreenInternalChargingBatteryMask" stringByAppendingString:@"-RTL"];
  }

  else
  {
    v2 = @"LockScreenInternalChargingBatteryMask";
  }

  return v2;
}

- (CSBatteryChargingView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CSBatteryChargingView;
  v3 = [(CSBatteryChargingView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_alignmentPercent = 0.0;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CSBatteryChargingView *)v4 setBackgroundColor:clearColor];
  }

  return v4;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
  }
}

- (id)_updateChargeString:(id)string oldLabel:(id)label
{
  stringCopy = string;
  [label removeFromSuperview];
  rootSettings = [MEMORY[0x277D65E90] rootSettings];
  legibilitySettings = [(CSBatteryChargingView *)self legibilitySettings];
  [rootSettings dateStrengthForStyle:{objc_msgSend(legibilitySettings, "style")}];
  v10 = v9;

  v11 = objc_alloc(MEMORY[0x277D67CF8]);
  legibilitySettings2 = [(CSBatteryChargingView *)self legibilitySettings];
  _chargePercentFont = [(CSBatteryChargingView *)self _chargePercentFont];
  v14 = [v11 initWithSettings:legibilitySettings2 strength:stringCopy string:_chargePercentFont font:v10];

  [(CSBatteryChargingView *)self addSubview:v14];

  return v14;
}

- (CGSize)_imageViewScalingCorrectedBatterySize:(CGSize)size
{
  v3 = round(size.width * 1.0735);
  v4 = round(size.height * 1.0735);
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_batteryHeight
{
  [MEMORY[0x277D02CF0] fontSizeForElementType:1 isLandscapeVariant:0];
  v2 = [MEMORY[0x277D74300] systemFontOfSize:?];
  [v2 capHeight];
  v4 = round(v3);

  v5 = BSFloatEqualToFloat();
  result = 73.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (CGPoint)_batteryCenter
{
  [(CSBatteryChargingView *)self _tightFrameForElement:1];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetMidY(v11);
  SBFMainScreenScale();

  BSPointRoundForScale();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)_tightFrameForElement:(unint64_t)element
{
  prominentLayoutController = self->_prominentLayoutController;
  if (prominentLayoutController)
  {
    [(CSProminentLayoutController *)prominentLayoutController setTraitEnvironment:self];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D02CF0]) initWithTraitEnvironment:self];
    v7 = self->_prominentLayoutController;
    self->_prominentLayoutController = v6;
  }

  v8 = self->_prominentLayoutController;
  [(CSBatteryChargingView *)self bounds];

  [(CSProminentLayoutController *)v8 frameForElements:element variant:1 withBoundingRect:?];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

@end