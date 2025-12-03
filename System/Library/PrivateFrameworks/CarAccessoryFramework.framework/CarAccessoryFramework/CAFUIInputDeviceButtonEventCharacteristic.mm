@interface CAFUIInputDeviceButtonEventCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFUIInputDeviceButtonEventCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUIInputDeviceButtonEventCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  uIInputDeviceButtonEventValue = [(CAFUIInputDeviceButtonEventCharacteristic *)self uIInputDeviceButtonEventValue];

  return NSStringFromUIInputDeviceButtonEvent(uIInputDeviceButtonEventValue);
}

@end