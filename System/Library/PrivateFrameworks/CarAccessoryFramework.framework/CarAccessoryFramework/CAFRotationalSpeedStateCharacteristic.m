@interface CAFRotationalSpeedStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFRotationalSpeedStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFRotationalSpeedStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFRotationalSpeedStateCharacteristic *)self rotationalSpeedStateValue];

  return NSStringFromRotationalSpeedState(v2);
}

@end