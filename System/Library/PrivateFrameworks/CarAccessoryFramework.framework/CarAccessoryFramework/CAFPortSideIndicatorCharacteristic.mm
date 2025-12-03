@interface CAFPortSideIndicatorCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPortSideIndicatorCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPortSideIndicatorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  portSideIndicatorValue = [(CAFPortSideIndicatorCharacteristic *)self portSideIndicatorValue];

  return NSStringFromPortSideIndicator(portSideIndicatorValue);
}

@end