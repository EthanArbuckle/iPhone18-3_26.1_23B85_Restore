@interface CAFUnitTypeCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (NSUnit)unitValue;
- (id)formattedValue;
- (void)setUnitValue:(id)a3;
@end

@implementation CAFUnitTypeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUnitTypeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSUnit)unitValue
{
  v2 = [(CAFUnitTypeCharacteristic *)self unitTypeValue];

  return NSUnitFromCAFUnitType(v2);
}

- (void)setUnitValue:(id)a3
{
  v4 = CAFUnitTypeFromNSUnit(a3);

  [(CAFUnitTypeCharacteristic *)self setUnitTypeValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFUInt16Characteristic *)self uint16Value];

  return NSStringFromUnitType(v2);
}

+ (id)secondaryCharacteristicFormats
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000046000004";
  v5[1] = @"0x0000000046000010";
  v5[2] = @"0x0000000046000011";
  v5[3] = @"0x0000000046000001";
  v5[4] = @"0x0000000046000005";
  v5[5] = @"0x00000000FF00000F";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end