@interface FBSSceneClientSettingsDiff
+ (id)diffFromSettings:(id)a3 toSettings:(id)a4;
- (id)settingsByApplyingToMutableCopyOfSettings:(id)a3;
@end

@implementation FBSSceneClientSettingsDiff

+ (id)diffFromSettings:(id)a3 toSettings:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___FBSSceneClientSettingsDiff;
  v4 = objc_msgSendSuper2(&v6, sel_diffFromSettings_toSettings_, a3, a4);

  return v4;
}

- (id)settingsByApplyingToMutableCopyOfSettings:(id)a3
{
  v5.receiver = self;
  v5.super_class = FBSSceneClientSettingsDiff;
  v3 = [(FBSSettingsDiff *)&v5 settingsByApplyingToMutableCopyOfSettings:a3];

  return v3;
}

@end