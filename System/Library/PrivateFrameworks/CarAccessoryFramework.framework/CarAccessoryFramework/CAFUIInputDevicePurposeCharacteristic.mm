@interface CAFUIInputDevicePurposeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFUIInputDevicePurposeCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUIInputDevicePurposeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  uIInputDevicePurposeValue = [(CAFUIInputDevicePurposeCharacteristic *)self uIInputDevicePurposeValue];

  return NSStringFromUIInputDevicePurpose(uIInputDevicePurposeValue);
}

@end