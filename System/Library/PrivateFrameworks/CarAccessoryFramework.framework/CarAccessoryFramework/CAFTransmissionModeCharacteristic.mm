@interface CAFTransmissionModeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFTransmissionModeCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTransmissionModeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  transmissionModeValue = [(CAFTransmissionModeCharacteristic *)self transmissionModeValue];

  return NSStringFromTransmissionMode(transmissionModeValue);
}

@end