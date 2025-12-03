@interface CAFPressureStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPressureStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPressureStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  pressureStateValue = [(CAFPressureStateCharacteristic *)self pressureStateValue];

  return NSStringFromPressureState(pressureStateValue);
}

@end