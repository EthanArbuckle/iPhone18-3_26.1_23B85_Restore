@interface CAFTargetSpeedStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFTargetSpeedStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTargetSpeedStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFTargetSpeedStateCharacteristic *)self targetSpeedStateValue];

  return NSStringFromTargetSpeedState(v2);
}

@end