@interface CAFDataCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (NSData)dataValue;
- (id)formattedValue;
- (void)setDataValue:(id)a3;
@end

@implementation CAFDataCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFDataCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSData)dataValue
{
  objc_opt_class();
  v3 = [(CAFCharacteristic *)self value];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDataValue:(id)a3
{
  v4 = [a3 copy];
  [(CAFCharacteristic *)self setValue:v4];
}

- (id)formattedValue
{
  v3 = [(CAFCharacteristic *)self value];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(CAFDataCharacteristic *)self dataValue];
    v6 = [v5 length];
    v7 = [(CAFDataCharacteristic *)self dataValue];
    v8 = [v7 description];
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