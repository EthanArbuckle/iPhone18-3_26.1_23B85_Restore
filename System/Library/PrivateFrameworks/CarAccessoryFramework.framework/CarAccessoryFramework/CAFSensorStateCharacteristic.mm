@interface CAFSensorStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFSensorStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSensorStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFSensorStateCharacteristic *)self sensorStateValue];

  return NSStringFromSensorState(v2);
}

@end