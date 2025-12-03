@interface CAFSelectSettingNotificationEntryCharacteristic
+ (void)load;
- (CAFSelectSettingNotificationEntry)selectSettingNotificationEntryValue;
- (id)formattedValue;
- (void)setSelectSettingNotificationEntryValue:(id)value;
@end

@implementation CAFSelectSettingNotificationEntryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSelectSettingNotificationEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectSettingNotificationEntry)selectSettingNotificationEntryValue
{
  v3 = [CAFSelectSettingNotificationEntry alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSelectSettingNotificationEntry *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setSelectSettingNotificationEntryValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  selectSettingNotificationEntryValue = [(CAFSelectSettingNotificationEntryCharacteristic *)self selectSettingNotificationEntryValue];
  v3 = [selectSettingNotificationEntryValue description];

  return v3;
}

@end