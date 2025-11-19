@interface CAFSelectSettingNotificationEntryListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSelectSettingNotificationEntryList)selectSettingNotificationEntryListValue;
- (id)formattedValue;
- (void)setSelectSettingNotificationEntryListValue:(id)a3;
@end

@implementation CAFSelectSettingNotificationEntryListCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSelectSettingNotificationEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectSettingNotificationEntryList)selectSettingNotificationEntryListValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSelectSettingNotificationEntryList selectSettingNotificationEntryListWithArray:v2];

  return v3;
}

- (void)setSelectSettingNotificationEntryListValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSelectSettingNotificationEntryListCharacteristic *)self selectSettingNotificationEntryListValue];
  v3 = [v2 formattedValue];

  return v3;
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