@interface CSBatteryFillView
- (CSBatteryFillView)initWithFrame:(CGRect)a3 isInternalBattery:(BOOL)a4 lowBatteryLevel:(int64_t)a5;
- (void)drawRect:(CGRect)a3;
@end

@implementation CSBatteryFillView

- (CSBatteryFillView)initWithFrame:(CGRect)a3 isInternalBattery:(BOOL)a4 lowBatteryLevel:(int64_t)a5
{
  v8.receiver = self;
  v8.super_class = CSBatteryFillView;
  result = [(CSBatteryFillView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_isInternalBattery = a4;
    result->_lowBatteryLevel = a5;
  }

  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_isInternalBattery && self->_isBatterySaverModeActive)
  {
    v8 = [MEMORY[0x277D75348] systemYellowColor];
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
    v8 = ;
  }

  v12 = v8;
  [v8 set];
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