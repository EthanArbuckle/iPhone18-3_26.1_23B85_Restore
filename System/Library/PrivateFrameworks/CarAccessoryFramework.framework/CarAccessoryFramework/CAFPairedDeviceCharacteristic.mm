@interface CAFPairedDeviceCharacteristic
+ (void)load;
- (CAFPairedDevice)pairedDeviceValue;
- (id)formattedValue;
- (void)setPairedDeviceValue:(id)a3;
@end

@implementation CAFPairedDeviceCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPairedDeviceCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFPairedDevice)pairedDeviceValue
{
  v3 = [CAFPairedDevice alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFPairedDevice *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setPairedDeviceValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFPairedDeviceCharacteristic *)self pairedDeviceValue];
  v3 = [v2 description];

  return v3;
}

@end