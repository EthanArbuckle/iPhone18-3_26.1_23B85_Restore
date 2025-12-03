@interface CAFBatteryLevelStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFBatteryLevelStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFBatteryLevelStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  batteryLevelStateValue = [(CAFBatteryLevelStateCharacteristic *)self batteryLevelStateValue];

  return NSStringFromBatteryLevelState(batteryLevelStateValue);
}

@end