@interface CAFBooleanSettingNotificationEntryCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFBooleanSettingNotificationEntry)BOOLeanSettingNotificationEntryValue;
- (id)formattedValue;
- (void)setBooleanSettingNotificationEntryValue:(id)a3;
@end

@implementation CAFBooleanSettingNotificationEntryCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFBooleanSettingNotificationEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFBooleanSettingNotificationEntry)BOOLeanSettingNotificationEntryValue
{
  v3 = [CAFBooleanSettingNotificationEntry alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFBooleanSettingNotificationEntry *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setBooleanSettingNotificationEntryValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFBooleanSettingNotificationEntryCharacteristic *)self BOOLeanSettingNotificationEntryValue];
  v3 = [v2 description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000036000032";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end