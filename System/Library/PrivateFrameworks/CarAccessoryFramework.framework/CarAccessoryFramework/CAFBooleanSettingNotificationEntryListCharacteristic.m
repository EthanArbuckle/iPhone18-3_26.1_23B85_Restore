@interface CAFBooleanSettingNotificationEntryListCharacteristic
+ (void)load;
- (CAFBooleanSettingNotificationEntryList)BOOLeanSettingNotificationEntryListValue;
- (id)formattedValue;
- (void)setBooleanSettingNotificationEntryListValue:(id)a3;
@end

@implementation CAFBooleanSettingNotificationEntryListCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFBooleanSettingNotificationEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFBooleanSettingNotificationEntryList)BOOLeanSettingNotificationEntryListValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFBooleanSettingNotificationEntryList BOOLeanSettingNotificationEntryListWithArray:v2];

  return v3;
}

- (void)setBooleanSettingNotificationEntryListValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFBooleanSettingNotificationEntryListCharacteristic *)self BOOLeanSettingNotificationEntryListValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end