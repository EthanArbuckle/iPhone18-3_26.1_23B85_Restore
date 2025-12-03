@interface CSBatteryFillView
- (CSBatteryFillView)initWithFrame:(CGRect)frame isInternalBattery:(BOOL)battery lowBatteryLevel:(int64_t)level;
- (void)drawRect:(CGRect)rect;
@end

@implementation CSBatteryFillView

- (CSBatteryFillView)initWithFrame:(CGRect)frame isInternalBattery:(BOOL)battery lowBatteryLevel:(int64_t)level
{
  v8.receiver = self;
  v8.super_class = CSBatteryFillView;
  result = [(CSBatteryFillView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_isInternalBattery = battery;
    result->_lowBatteryLevel = level;
  }

  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (self->_isInternalBattery && self->_isBatterySaverModeActive)
  {
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  }

  else
  {
    if (self->_chargePercentage <= self->_lowBatteryLevel)
    {
      [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGreenColor];
    }
    systemYellowColor = ;
  }

  v12 = systemYellowColor;
  [systemYellowColor set];
  v9 = width * self->_chargePercentage / 100.0;
  v10 = floorf(v9);
  v11 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1 && !self->_isInternalBattery || objc_msgSend(*v11, "userInterfaceLayoutDirection") == 1 && self->_isInternalBattery)
  {
    x = x + width - v10;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = v10;
  v14.size.height = height;
  UIRectFill(v14);
}

@end