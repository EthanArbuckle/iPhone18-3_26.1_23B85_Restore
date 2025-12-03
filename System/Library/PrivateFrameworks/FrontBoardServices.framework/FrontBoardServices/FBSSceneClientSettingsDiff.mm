@interface FBSSceneClientSettingsDiff
+ (id)diffFromSettings:(id)settings toSettings:(id)toSettings;
- (id)settingsByApplyingToMutableCopyOfSettings:(id)settings;
@end

@implementation FBSSceneClientSettingsDiff

+ (id)diffFromSettings:(id)settings toSettings:(id)toSettings
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___FBSSceneClientSettingsDiff;
  v4 = objc_msgSendSuper2(&v6, sel_diffFromSettings_toSettings_, settings, toSettings);

  return v4;
}

- (id)settingsByApplyingToMutableCopyOfSettings:(id)settings
{
  v5.receiver = self;
  v5.super_class = FBSSceneClientSettingsDiff;
  v3 = [(FBSSettingsDiff *)&v5 settingsByApplyingToMutableCopyOfSettings:settings];

  return v3;
}

@end