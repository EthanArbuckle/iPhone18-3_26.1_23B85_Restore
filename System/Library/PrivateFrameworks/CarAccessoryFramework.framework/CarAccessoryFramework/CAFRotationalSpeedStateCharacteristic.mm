@interface CAFRotationalSpeedStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFRotationalSpeedStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFRotationalSpeedStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  rotationalSpeedStateValue = [(CAFRotationalSpeedStateCharacteristic *)self rotationalSpeedStateValue];

  return NSStringFromRotationalSpeedState(rotationalSpeedStateValue);
}

@end