@interface CAFPairedDeviceStateCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFPairedDeviceStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPairedDeviceStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  pairedDeviceStateValue = [(CAFPairedDeviceStateCharacteristic *)self pairedDeviceStateValue];

  return NSStringFromPairedDeviceState(pairedDeviceStateValue);
}

@end