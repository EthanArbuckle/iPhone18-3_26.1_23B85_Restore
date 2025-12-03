@interface CAFTemperatureStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFTemperatureStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTemperatureStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  temperatureStateValue = [(CAFTemperatureStateCharacteristic *)self temperatureStateValue];

  return NSStringFromTemperatureState(temperatureStateValue);
}

@end