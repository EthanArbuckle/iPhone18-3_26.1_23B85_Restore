@interface CSBatteryChargingView
+ (id)batteryChargingRingViewWithConfiguration:(id)a3 externalBattery:(id)a4;
+ (id)batteryChargingViewWithDoubleBattery;
+ (id)batteryChargingViewWithSingleBattery;
+ (id)horizontalBatteryChargingViewForBatterySize:(CGSize)a3 includeBoltImage:(BOOL)a4;
+ (id)maskImageNameForChargingBattery;
+ (id)maskImageNameForInternalChargingBattery;
- (CGPoint)_batteryCenter;
- (CGRect)_tightFrameForElement:(unint64_t)a3;
- (CGSize)_imageViewScalingCorrectedBatterySize:(CGSize)a3;
- (CSBatteryChargingView)initWithFrame:(CGRect)a3;
- (double)_batteryHeight;
- (id)_updateChargeString:(id)a3 oldLabel:(id)a4;
- (void)setLegibilitySettings:(id)a3;
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

+ (id)horizontalBatteryChargingViewForBatterySize:(CGSize)a3 includeBoltImage:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v7 = [_CSSingleBatteryChargingView alloc];
  v8 = [(_CSSingleBatteryChargingView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_CSSingleBatteryChargingView *)v8 setBatterySize:width, height];
  [(_CSSingleBatteryChargingView *)v8 setHorizontalLayoutNeeded:1];
  [(_CSSingleBatteryChargingView *)v8 setIncludesBoltImage:v4];

  return v8;
}

+ (id)batteryChargingRingViewWithConfiguration:(id)a3 externalBattery:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CSBatteryChargingRingView alloc];
  v8 = [(CSBatteryChargingRingView *)v7 initWithFrame:v6 configuration:v5 externalBattery:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

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

- (CSBatteryChargingView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CSBatteryChargingView;
  v3 = [(CSBatteryChargingView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_alignmentPercent = 0.0;
    v5 = [MEMORY[0x277D75348] clearColor];
    [(CSBatteryChargingView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
  }
}

- (id)_updateChargeString:(id)a3 oldLabel:(id)a4
{
  v6 = a3;
  [a4 removeFromSuperview];
  v7 = [MEMORY[0x277D65E90] rootSettings];
  v8 = [(CSBatteryChargingView *)self legibilitySettings];
  [v7 dateStrengthForStyle:{objc_msgSend(v8, "style")}];
  v10 = v9;

  v11 = objc_alloc(MEMORY[0x277D67CF8]);
  v12 = [(CSBatteryChargingView *)self legibilitySettings];
  v13 = [(CSBatteryChargingView *)self _chargePercentFont];
  v14 = [v11 initWithSettings:v12 strength:v6 string:v13 font:v10];

  [(CSBatteryChargingView *)self addSubview:v14];

  return v14;
}

- (CGSize)_imageViewScalingCorrectedBatterySize:(CGSize)a3
{
  v3 = round(a3.width * 1.0735);
  v4 = round(a3.height * 1.0735);
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

- (CGRect)_tightFrameForElement:(unint64_t)a3
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

  [(CSProminentLayoutController *)v8 frameForElements:a3 variant:1 withBoundingRect:?];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

@end