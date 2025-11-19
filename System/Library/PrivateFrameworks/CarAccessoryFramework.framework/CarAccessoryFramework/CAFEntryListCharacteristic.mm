@interface CAFEntryListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFEntryList)entryListValue;
- (id)formattedValue;
- (void)setEntryListValue:(id)a3;
@end

@implementation CAFEntryListCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFEntryList)entryListValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFEntryList entryListWithArray:v2];

  return v3;
}

- (void)setEntryListValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFEntryListCharacteristic *)self entryListValue];
  v3 = [v2 formattedValue];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x000000003000005D";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end