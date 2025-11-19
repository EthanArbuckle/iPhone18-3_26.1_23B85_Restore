@interface CAFSettingNotificationEntryListCharacteristic
+ (void)load;
- (CAFSettingNotificationEntryList)settingNotificationEntryListValue;
- (id)formattedValue;
- (void)setSettingNotificationEntryListValue:(id)a3;
@end

@implementation CAFSettingNotificationEntryListCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSettingNotificationEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSettingNotificationEntryList)settingNotificationEntryListValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSettingNotificationEntryList settingNotificationEntryListWithArray:v2];

  return v3;
}

- (void)setSettingNotificationEntryListValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSettingNotificationEntryListCharacteristic *)self settingNotificationEntryListValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end