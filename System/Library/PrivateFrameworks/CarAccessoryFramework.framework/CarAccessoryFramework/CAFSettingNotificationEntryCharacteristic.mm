@interface CAFSettingNotificationEntryCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSettingNotificationEntry)settingNotificationEntryValue;
- (id)formattedValue;
- (void)setSettingNotificationEntryValue:(id)value;
@end

@implementation CAFSettingNotificationEntryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSettingNotificationEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSettingNotificationEntry)settingNotificationEntryValue
{
  v3 = [CAFSettingNotificationEntry alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSettingNotificationEntry *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setSettingNotificationEntryValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  settingNotificationEntryValue = [(CAFSettingNotificationEntryCharacteristic *)self settingNotificationEntryValue];
  v3 = [settingNotificationEntryValue description];

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