@interface CAFUIInputDevicePurposeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFUIInputDevicePurposeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUIInputDevicePurposeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFUIInputDevicePurposeCharacteristic *)self uIInputDevicePurposeValue];

  return NSStringFromUIInputDevicePurpose(v2);
}

@end