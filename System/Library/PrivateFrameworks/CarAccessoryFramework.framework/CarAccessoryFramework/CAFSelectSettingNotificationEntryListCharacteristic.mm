@interface CAFSelectSettingNotificationEntryListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSelectSettingNotificationEntryList)selectSettingNotificationEntryListValue;
- (id)formattedValue;
- (void)setSelectSettingNotificationEntryListValue:(id)value;
@end

@implementation CAFSelectSettingNotificationEntryListCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSelectSettingNotificationEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectSettingNotificationEntryList)selectSettingNotificationEntryListValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSelectSettingNotificationEntryList selectSettingNotificationEntryListWithArray:arrayValue];

  return v3;
}

- (void)setSelectSettingNotificationEntryListValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  selectSettingNotificationEntryListValue = [(CAFSelectSettingNotificationEntryListCharacteristic *)self selectSettingNotificationEntryListValue];
  formattedValue = [selectSettingNotificationEntryListValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000036000033";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end