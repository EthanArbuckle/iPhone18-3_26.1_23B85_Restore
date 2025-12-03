@interface CAFSettingNotificationEntryListCharacteristic
+ (void)load;
- (CAFSettingNotificationEntryList)settingNotificationEntryListValue;
- (id)formattedValue;
- (void)setSettingNotificationEntryListValue:(id)value;
@end

@implementation CAFSettingNotificationEntryListCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSettingNotificationEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSettingNotificationEntryList)settingNotificationEntryListValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSettingNotificationEntryList settingNotificationEntryListWithArray:arrayValue];

  return v3;
}

- (void)setSettingNotificationEntryListValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  settingNotificationEntryListValue = [(CAFSettingNotificationEntryListCharacteristic *)self settingNotificationEntryListValue];
  formattedValue = [settingNotificationEntryListValue formattedValue];

  return formattedValue;
}

@end