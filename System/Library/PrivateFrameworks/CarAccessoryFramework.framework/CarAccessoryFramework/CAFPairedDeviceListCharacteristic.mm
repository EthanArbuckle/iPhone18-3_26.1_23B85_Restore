@interface CAFPairedDeviceListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFPairedDeviceList)pairedDeviceListValue;
- (id)formattedValue;
- (void)setPairedDeviceListValue:(id)value;
@end

@implementation CAFPairedDeviceListCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPairedDeviceListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFPairedDeviceList)pairedDeviceListValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFPairedDeviceList pairedDeviceListWithArray:arrayValue];

  return v3;
}

- (void)setPairedDeviceListValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  pairedDeviceListValue = [(CAFPairedDeviceListCharacteristic *)self pairedDeviceListValue];
  formattedValue = [pairedDeviceListValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000036000013";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end