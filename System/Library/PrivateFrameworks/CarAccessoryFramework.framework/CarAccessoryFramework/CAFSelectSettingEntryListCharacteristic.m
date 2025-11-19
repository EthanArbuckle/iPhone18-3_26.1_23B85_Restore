@interface CAFSelectSettingEntryListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSelectSettingEntryList)selectSettingEntryListValue;
- (id)formattedValue;
- (void)setSelectSettingEntryListValue:(id)a3;
@end

@implementation CAFSelectSettingEntryListCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSelectSettingEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectSettingEntryList)selectSettingEntryListValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSelectSettingEntryList selectSettingEntryListWithArray:v2];

  return v3;
}

- (void)setSelectSettingEntryListValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSelectSettingEntryListCharacteristic *)self selectSettingEntryListValue];
  v3 = [v2 formattedValue];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000036000024";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end