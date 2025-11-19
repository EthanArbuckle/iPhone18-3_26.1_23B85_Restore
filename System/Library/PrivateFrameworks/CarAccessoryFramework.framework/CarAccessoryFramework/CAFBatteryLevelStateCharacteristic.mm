@interface CAFBatteryLevelStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFBatteryLevelStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFBatteryLevelStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFBatteryLevelStateCharacteristic *)self batteryLevelStateValue];

  return NSStringFromBatteryLevelState(v2);
}

@end