@interface CAFBatteryConditioningStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFBatteryConditioningStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFBatteryConditioningStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFBatteryConditioningStateCharacteristic *)self batteryConditioningStateValue];

  return NSStringFromBatteryConditioningState(v2);
}

@end