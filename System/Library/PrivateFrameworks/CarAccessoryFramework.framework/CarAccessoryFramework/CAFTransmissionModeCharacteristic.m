@interface CAFTransmissionModeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFTransmissionModeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTransmissionModeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFTransmissionModeCharacteristic *)self transmissionModeValue];

  return NSStringFromTransmissionMode(v2);
}

@end