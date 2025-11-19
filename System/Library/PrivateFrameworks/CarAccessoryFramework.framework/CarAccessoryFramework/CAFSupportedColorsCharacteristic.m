@interface CAFSupportedColorsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSupportedColors)supportedColorsValue;
- (id)formattedValue;
- (void)setSupportedColorsValue:(id)a3;
@end

@implementation CAFSupportedColorsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSupportedColorsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSupportedColors)supportedColorsValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSupportedColors supportedColorsWithArray:v2];

  return v3;
}

- (void)setSupportedColorsValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSupportedColorsCharacteristic *)self supportedColorsValue];
  v3 = [v2 formattedValue];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000052000003";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end