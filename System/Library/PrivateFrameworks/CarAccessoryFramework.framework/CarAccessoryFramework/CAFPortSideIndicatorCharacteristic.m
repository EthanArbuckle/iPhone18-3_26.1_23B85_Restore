@interface CAFPortSideIndicatorCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPortSideIndicatorCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPortSideIndicatorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFPortSideIndicatorCharacteristic *)self portSideIndicatorValue];

  return NSStringFromPortSideIndicator(v2);
}

@end