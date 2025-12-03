@interface CAFPairedDeviceCharacteristic
+ (void)load;
- (CAFPairedDevice)pairedDeviceValue;
- (id)formattedValue;
- (void)setPairedDeviceValue:(id)value;
@end

@implementation CAFPairedDeviceCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPairedDeviceCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFPairedDevice)pairedDeviceValue
{
  v3 = [CAFPairedDevice alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFPairedDevice *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setPairedDeviceValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  pairedDeviceValue = [(CAFPairedDeviceCharacteristic *)self pairedDeviceValue];
  v3 = [pairedDeviceValue description];

  return v3;
}

@end