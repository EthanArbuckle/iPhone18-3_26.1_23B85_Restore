@interface CAFFuelLevelStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFFuelLevelStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFFuelLevelStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFFuelLevelStateCharacteristic *)self fuelLevelStateValue];

  return NSStringFromFuelLevelState(v2);
}

@end