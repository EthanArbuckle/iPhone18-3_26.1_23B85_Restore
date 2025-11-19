@interface CAFSeatBeltIndicatorCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFSeatBeltIndicatorCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSeatBeltIndicatorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFSeatBeltIndicatorCharacteristic *)self seatBeltIndicatorValue];

  return NSStringFromSeatBeltIndicator(v2);
}

@end