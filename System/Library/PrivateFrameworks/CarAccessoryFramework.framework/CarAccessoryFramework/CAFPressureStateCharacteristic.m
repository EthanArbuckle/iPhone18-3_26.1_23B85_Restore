@interface CAFPressureStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPressureStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPressureStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFPressureStateCharacteristic *)self pressureStateValue];

  return NSStringFromPressureState(v2);
}

@end