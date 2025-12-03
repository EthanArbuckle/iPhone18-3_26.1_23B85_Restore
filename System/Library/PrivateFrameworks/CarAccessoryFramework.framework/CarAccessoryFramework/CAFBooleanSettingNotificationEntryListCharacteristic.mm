@interface CAFBooleanSettingNotificationEntryListCharacteristic
+ (void)load;
- (CAFBooleanSettingNotificationEntryList)BOOLeanSettingNotificationEntryListValue;
- (id)formattedValue;
- (void)setBooleanSettingNotificationEntryListValue:(id)value;
@end

@implementation CAFBooleanSettingNotificationEntryListCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFBooleanSettingNotificationEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFBooleanSettingNotificationEntryList)BOOLeanSettingNotificationEntryListValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFBooleanSettingNotificationEntryList BOOLeanSettingNotificationEntryListWithArray:arrayValue];

  return v3;
}

- (void)setBooleanSettingNotificationEntryListValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  bOOLeanSettingNotificationEntryListValue = [(CAFBooleanSettingNotificationEntryListCharacteristic *)self BOOLeanSettingNotificationEntryListValue];
  formattedValue = [bOOLeanSettingNotificationEntryListValue formattedValue];

  return formattedValue;
}

@end