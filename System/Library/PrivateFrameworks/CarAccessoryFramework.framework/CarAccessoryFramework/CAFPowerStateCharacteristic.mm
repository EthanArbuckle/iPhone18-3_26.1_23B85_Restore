@interface CAFPowerStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPowerStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPowerStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  powerStateValue = [(CAFPowerStateCharacteristic *)self powerStateValue];

  return NSStringFromPowerState(powerStateValue);
}

@end