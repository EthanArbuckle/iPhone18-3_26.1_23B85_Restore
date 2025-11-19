@interface CAFSettingNotificationEntryCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSettingNotificationEntry)settingNotificationEntryValue;
- (id)formattedValue;
- (void)setSettingNotificationEntryValue:(id)a3;
@end

@implementation CAFSettingNotificationEntryCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSettingNotificationEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSettingNotificationEntry)settingNotificationEntryValue
{
  v3 = [CAFSettingNotificationEntry alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSettingNotificationEntry *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setSettingNotificationEntryValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSettingNotificationEntryCharacteristic *)self settingNotificationEntryValue];
  v3 = [v2 description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000036000031";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end