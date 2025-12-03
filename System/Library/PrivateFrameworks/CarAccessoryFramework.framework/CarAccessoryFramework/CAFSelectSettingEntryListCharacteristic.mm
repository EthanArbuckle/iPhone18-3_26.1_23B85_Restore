@interface CAFSelectSettingEntryListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSelectSettingEntryList)selectSettingEntryListValue;
- (id)formattedValue;
- (void)setSelectSettingEntryListValue:(id)value;
@end

@implementation CAFSelectSettingEntryListCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSelectSettingEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectSettingEntryList)selectSettingEntryListValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSelectSettingEntryList selectSettingEntryListWithArray:arrayValue];

  return v3;
}

- (void)setSelectSettingEntryListValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  selectSettingEntryListValue = [(CAFSelectSettingEntryListCharacteristic *)self selectSettingEntryListValue];
  formattedValue = [selectSettingEntryListValue formattedValue];

  return formattedValue;
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