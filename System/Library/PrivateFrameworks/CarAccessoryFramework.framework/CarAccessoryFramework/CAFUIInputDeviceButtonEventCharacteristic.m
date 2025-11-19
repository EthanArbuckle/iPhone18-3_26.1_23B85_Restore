@interface CAFUIInputDeviceButtonEventCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFUIInputDeviceButtonEventCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUIInputDeviceButtonEventCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFUIInputDeviceButtonEventCharacteristic *)self uIInputDeviceButtonEventValue];

  return NSStringFromUIInputDeviceButtonEvent(v2);
}

@end