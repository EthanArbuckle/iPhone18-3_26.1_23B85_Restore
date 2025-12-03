@interface CAFBatteryConditioningStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFBatteryConditioningStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFBatteryConditioningStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  batteryConditioningStateValue = [(CAFBatteryConditioningStateCharacteristic *)self batteryConditioningStateValue];

  return NSStringFromBatteryConditioningState(batteryConditioningStateValue);
}

@end