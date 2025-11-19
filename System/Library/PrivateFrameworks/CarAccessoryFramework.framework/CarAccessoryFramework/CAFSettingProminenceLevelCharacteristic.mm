@interface CAFSettingProminenceLevelCharacteristic
+ (void)load;
- (BOOL)hasAppHomeTile;
- (BOOL)hasHomescreen;
- (id)formattedValue;
@end

@implementation CAFSettingProminenceLevelCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSettingProminenceLevelCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)hasAppHomeTile
{
  v2 = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:1];
}

- (BOOL)hasHomescreen
{
  v2 = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return [CAFBitMaskUtilities bitmask:v2 hasOption:8];
}

- (id)formattedValue
{
  v2 = [(CAFSettingProminenceLevelCharacteristic *)self settingProminenceLevelValue];

  return NSStringFromSettingProminenceLevel(v2);
}

@end