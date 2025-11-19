@interface CAFDriverSideCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFDriverSideCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFDriverSideCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFDriverSideCharacteristic *)self driverSideValue];

  return NSStringFromDriverSide(v2);
}

@end