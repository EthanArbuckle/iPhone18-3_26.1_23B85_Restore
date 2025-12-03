@interface CAFBooleanSettingNotificationEntryCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFBooleanSettingNotificationEntry)BOOLeanSettingNotificationEntryValue;
- (id)formattedValue;
- (void)setBooleanSettingNotificationEntryValue:(id)value;
@end

@implementation CAFBooleanSettingNotificationEntryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFBooleanSettingNotificationEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFBooleanSettingNotificationEntry)BOOLeanSettingNotificationEntryValue
{
  v3 = [CAFBooleanSettingNotificationEntry alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFBooleanSettingNotificationEntry *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setBooleanSettingNotificationEntryValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  bOOLeanSettingNotificationEntryValue = [(CAFBooleanSettingNotificationEntryCharacteristic *)self BOOLeanSettingNotificationEntryValue];
  v3 = [bOOLeanSettingNotificationEntryValue description];

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