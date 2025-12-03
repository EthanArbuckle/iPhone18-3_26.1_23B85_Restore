@interface CAFSensorStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFSensorStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSensorStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  sensorStateValue = [(CAFSensorStateCharacteristic *)self sensorStateValue];

  return NSStringFromSensorState(sensorStateValue);
}

@end