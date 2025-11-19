@interface CAFArrayCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (NSArray)arrayValue;
- (id)formattedValue;
- (void)setArrayValue:(id)a3;
@end

@implementation CAFArrayCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFArrayCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSArray)arrayValue
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

- (void)setArrayValue:(id)a3
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
    v5 = [(CAFArrayCharacteristic *)self arrayValue];
    v6 = [v5 componentsJoinedByString:{@", "}];
    v7 = [v4 stringWithFormat:@"[%@]", v6];
  }

  else
  {
    v7 = @"(null)";
  }

  return v7;
}

+ (id)secondaryCharacteristicFormats
{
  v5[24] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000037000012";
  v5[1] = @"0x0000000050000001";
  v5[2] = @"0x0000000036000012";
  v5[3] = @"0x0000000047000011";
  v5[4] = @"0x0000000030000037";
  v5[5] = @"0x0000000030000018";
  v5[6] = @"0x0000000036000009";
  v5[7] = @"0x0000000036000007";
  v5[8] = @"0x0000000036000062";
  v5[9] = @"0x00000000FF000011";
  v5[10] = @"0x00000000FF00001C";
  v5[11] = @"0x00000000FF00001A";
  v5[12] = @"0x00000000FF000017";
  v5[13] = @"0x00000000FF000018";
  v5[14] = @"0x00000000FF000019";
  v5[15] = @"0x00000000FF000016";
  v5[16] = @"0x00000000FF00001D";
  v5[17] = @"0x00000000FF00001B";
  v5[18] = @"0x00000000FF000013";
  v5[19] = @"0x00000000FF000014";
  v5[20] = @"0x00000000FF000015";
  v5[21] = @"0x00000000FF000012";
  v5[22] = @"0x0000000047000004";
  v5[23] = @"0x0000000031000025";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:24];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end