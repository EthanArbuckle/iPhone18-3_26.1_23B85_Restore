@interface CAFSeatBeltIndicatorCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFSeatBeltIndicatorCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSeatBeltIndicatorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  seatBeltIndicatorValue = [(CAFSeatBeltIndicatorCharacteristic *)self seatBeltIndicatorValue];

  return NSStringFromSeatBeltIndicator(seatBeltIndicatorValue);
}

@end