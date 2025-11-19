@interface CAFSelectSettingNotificationEntryCharacteristic
+ (void)load;
- (CAFSelectSettingNotificationEntry)selectSettingNotificationEntryValue;
- (id)formattedValue;
- (void)setSelectSettingNotificationEntryValue:(id)a3;
@end

@implementation CAFSelectSettingNotificationEntryCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSelectSettingNotificationEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectSettingNotificationEntry)selectSettingNotificationEntryValue
{
  v3 = [CAFSelectSettingNotificationEntry alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSelectSettingNotificationEntry *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setSelectSettingNotificationEntryValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSelectSettingNotificationEntryCharacteristic *)self selectSettingNotificationEntryValue];
  v3 = [v2 description];

  return v3;
}

@end