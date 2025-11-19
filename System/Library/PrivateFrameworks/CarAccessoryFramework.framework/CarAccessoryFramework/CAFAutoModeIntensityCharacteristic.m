@interface CAFAutoModeIntensityCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFAutoModeIntensityCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFAutoModeIntensityCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFAutoModeIntensityCharacteristic *)self autoModeIntensityValue];

  return NSStringFromAutoModeIntensity(v2);
}

@end