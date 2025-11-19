@interface CAFPairedDeviceListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFPairedDeviceList)pairedDeviceListValue;
- (id)formattedValue;
- (void)setPairedDeviceListValue:(id)a3;
@end

@implementation CAFPairedDeviceListCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPairedDeviceListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFPairedDeviceList)pairedDeviceListValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFPairedDeviceList pairedDeviceListWithArray:v2];

  return v3;
}

- (void)setPairedDeviceListValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFPairedDeviceListCharacteristic *)self pairedDeviceListValue];
  v3 = [v2 formattedValue];

  return v3;
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