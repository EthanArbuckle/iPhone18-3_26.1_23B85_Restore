@interface CAFEntryListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFEntryList)entryListValue;
- (id)formattedValue;
- (void)setEntryListValue:(id)value;
@end

@implementation CAFEntryListCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFEntryList)entryListValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFEntryList entryListWithArray:arrayValue];

  return v3;
}

- (void)setEntryListValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  entryListValue = [(CAFEntryListCharacteristic *)self entryListValue];
  formattedValue = [entryListValue formattedValue];

  return formattedValue;
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