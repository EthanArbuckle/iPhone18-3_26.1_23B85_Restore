@interface PBUIWallpaperWindowSceneTwoCurveTransitionContext
- (BSAnimationSettings)inAnimationSettings;
- (BSAnimationSettings)outAnimationSettings;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (void)setInAnimationSettings:(id)a3;
- (void)setOutAnimationSettings:(id)a3;
@end

@implementation PBUIWallpaperWindowSceneTwoCurveTransitionContext

- (BSAnimationSettings)inAnimationSettings
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3263779365];

  return v3;
}

- (void)setInAnimationSettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:3263779365];
}

- (BSAnimationSettings)outAnimationSettings
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:3263779366];

  return v3;
}

- (void)setOutAnimationSettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:3263779366];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 3263779365)
  {
    v5 = @"inAnimationSettings";
  }

  else if (a3 == 3263779366)
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