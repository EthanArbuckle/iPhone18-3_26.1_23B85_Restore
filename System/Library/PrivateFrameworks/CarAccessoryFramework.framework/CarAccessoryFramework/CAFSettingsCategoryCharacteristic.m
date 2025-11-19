@interface CAFSettingsCategoryCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFSettingsCategoryCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSettingsCategoryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFSettingsCategoryCharacteristic *)self settingsCategoryValue];

  return NSStringFromSettingsCategory(v2);
}

@end