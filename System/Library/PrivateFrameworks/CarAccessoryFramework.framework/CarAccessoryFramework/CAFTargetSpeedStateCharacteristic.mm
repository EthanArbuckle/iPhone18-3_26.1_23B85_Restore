@interface CAFTargetSpeedStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFTargetSpeedStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTargetSpeedStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  targetSpeedStateValue = [(CAFTargetSpeedStateCharacteristic *)self targetSpeedStateValue];

  return NSStringFromTargetSpeedState(targetSpeedStateValue);
}

@end