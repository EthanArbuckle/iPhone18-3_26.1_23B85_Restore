@interface CAFDataCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (NSData)dataValue;
- (id)formattedValue;
- (void)setDataValue:(id)value;
@end

@implementation CAFDataCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDataCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSData)dataValue
{
  objc_opt_class();
  value = [(CAFCharacteristic *)self value];
  if (value && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDataValue:(id)value
{
  v4 = [value copy];
  [(CAFCharacteristic *)self setValue:v4];
}

- (id)formattedValue
{
  value = [(CAFCharacteristic *)self value];
  if (value)
  {
    v4 = MEMORY[0x277CCACA8];
    dataValue = [(CAFDataCharacteristic *)self dataValue];
    v6 = [dataValue length];
    dataValue2 = [(CAFDataCharacteristic *)self dataValue];
    v8 = [dataValue2 description];
    v9 = [v4 stringWithFormat:@"bytes=%lu %@", v6, v8];
  }

  else
  {
    v9 = @"(null)";
  }

  return v9;
}

+ (id)secondaryCharacteristicFormats
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000032000020";
  v5[1] = @"0x0000000036000068";
  v5[2] = @"0x00000000FF00000C";
  v5[3] = @"0x00000000FF00000D";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end