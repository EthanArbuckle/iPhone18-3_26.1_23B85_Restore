@interface CAFSettingsCategoryCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFSettingsCategoryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSettingsCategoryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  settingsCategoryValue = [(CAFSettingsCategoryCharacteristic *)self settingsCategoryValue];

  return NSStringFromSettingsCategory(settingsCategoryValue);
}

@end