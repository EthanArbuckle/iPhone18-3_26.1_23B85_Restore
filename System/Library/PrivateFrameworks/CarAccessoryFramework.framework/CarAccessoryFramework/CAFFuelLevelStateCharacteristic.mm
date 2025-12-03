@interface CAFFuelLevelStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFFuelLevelStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFFuelLevelStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  fuelLevelStateValue = [(CAFFuelLevelStateCharacteristic *)self fuelLevelStateValue];

  return NSStringFromFuelLevelState(fuelLevelStateValue);
}

@end