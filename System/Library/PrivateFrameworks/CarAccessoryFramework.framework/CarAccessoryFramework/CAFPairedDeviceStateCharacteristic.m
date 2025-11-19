@interface CAFPairedDeviceStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPairedDeviceStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPairedDeviceStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFPairedDeviceStateCharacteristic *)self pairedDeviceStateValue];

  return NSStringFromPairedDeviceState(v2);
}

@end