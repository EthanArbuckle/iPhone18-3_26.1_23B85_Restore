@interface CAFSettingProminenceLevelCharacteristic
+ (void)load;
- (BOOL)hasAppHomeTile;
- (BOOL)hasHomescreen;
- (id)formattedValue;
@end

@implementation CAFSettingProminenceLevelCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSettingProminenceLevelCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasAppHomeTile
{
  settingProminenceLevelValue = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return [CAFBitMaskUtilities bitmask:settingProminenceLevelValue hasOption:1];
}

- (BOOL)hasHomescreen
{
  settingProminenceLevelValue = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return [CAFBitMaskUtilities bitmask:settingProminenceLevelValue hasOption:8];
}

- (id)formattedValue
{
  settingProminenceLevelValue = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return NSStringFromSettingProminenceLevel(settingProminenceLevelValue);
}

@end