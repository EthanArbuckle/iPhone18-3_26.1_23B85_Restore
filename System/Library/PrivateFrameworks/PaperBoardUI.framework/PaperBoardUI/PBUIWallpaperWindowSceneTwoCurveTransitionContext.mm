@interface PBUIWallpaperWindowSceneTwoCurveTransitionContext
- (BSAnimationSettings)inAnimationSettings;
- (BSAnimationSettings)outAnimationSettings;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (void)setInAnimationSettings:(id)settings;
- (void)setOutAnimationSettings:(id)settings;
@end

@implementation PBUIWallpaperWindowSceneTwoCurveTransitionContext

- (BSAnimationSettings)inAnimationSettings
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3263779365];

  return v3;
}

- (void)setInAnimationSettings:(id)settings
{
  settingsCopy = settings;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:settingsCopy forSetting:3263779365];
}

- (BSAnimationSettings)outAnimationSettings
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:3263779366];

  return v3;
}

- (void)setOutAnimationSettings:(id)settings
{
  settingsCopy = settings;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:settingsCopy forSetting:3263779366];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 3263779365)
  {
    v5 = @"inAnimationSettings";
  }

  else if (setting == 3263779366)
  {
    v5 = @"outAnimationSettings";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = PBUIWallpaperWindowSceneTwoCurveTransitionContext;
    v5 = [(FBSSettings *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

@end