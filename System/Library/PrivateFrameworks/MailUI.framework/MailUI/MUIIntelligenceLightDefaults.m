@interface MUIIntelligenceLightDefaults
+ (double)preferredMessageListAnimationDelay;
+ (double)preferredMessageListBackgroundCornerRadius;
+ (double)preferredMessageListFadeInDuration;
+ (double)preferredMessageListFadeOutDelay;
+ (double)preferredMessageListFadeOutDuration;
+ (double)preferredMessageListRimLightColorOpacity;
+ (double)preferredMessageListRimLightSoftRadius;
+ (double)preferredMessageListRimLightThickness;
+ (int64_t)preferredMessageListBeginningAnimationCurve;
+ (int64_t)preferredMessageListEndingAnimationCurve;
+ (void)restoreDefaultValues;
+ (void)setInitialSettingsIfNecessary;
@end

@implementation MUIIntelligenceLightDefaults

+ (void)setInitialSettingsIfNecessary
{
  v3 = [a1 _defaults];
  v4 = [v3 BOOLForKey:@"MUIIntelligenceLightDefaultsKeyHasSetupMessageListIntelligenceLightInitialSettingsKey.v4"];

  if ((v4 & 1) == 0)
  {
    [a1 restoreDefaultValues];
    v5 = [a1 _defaults];
    [v5 setBool:1 forKey:@"MUIIntelligenceLightDefaultsKeyHasSetupMessageListIntelligenceLightInitialSettingsKey.v4"];
  }
}

+ (int64_t)preferredMessageListBeginningAnimationCurve
{
  v2 = [a1 _defaults];
  v3 = [v2 integerForKey:@"MUIIntelligenceLightDefaultsKeyMessageListBeginningAnimationCurve"];

  return v3;
}

+ (int64_t)preferredMessageListEndingAnimationCurve
{
  v2 = [a1 _defaults];
  v3 = [v2 integerForKey:@"MUIIntelligenceLightDefaultsKeyMessageListEndingAnimationCurve"];

  return v3;
}

+ (double)preferredMessageListAnimationDelay
{
  v2 = [a1 _defaults];
  [v2 doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListAnimationDelay"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListFadeInDuration
{
  v2 = [a1 _defaults];
  [v2 doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListFadeInDuration"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListFadeOutDelay
{
  v2 = [a1 _defaults];
  [v2 doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListFadeOutDelay"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListFadeOutDuration
{
  v2 = [a1 _defaults];
  [v2 doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListFadeOutDuration"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListBackgroundCornerRadius
{
  v2 = [a1 _defaults];
  [v2 doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListBackgroundCornerRadius"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListRimLightThickness
{
  v2 = [a1 _defaults];
  [v2 doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightThickness"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListRimLightSoftRadius
{
  v2 = [a1 _defaults];
  [v2 doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightSoftRadius"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListRimLightColorOpacity
{
  v2 = [a1 _defaults];
  [v2 doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightColorOpacity"];
  v4 = v3;

  return v4;
}

+ (void)restoreDefaultValues
{
  v3 = [a1 _defaults];
  [v3 setInteger:1 forKey:@"MUIIntelligenceLightDefaultsKeyMessageListBeginningAnimationCurve"];

  v4 = [a1 _defaults];
  [v4 setInteger:2 forKey:@"MUIIntelligenceLightDefaultsKeyMessageListEndingAnimationCurve"];

  v5 = [a1 _defaults];
  [v5 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListAnimationDelay" forKey:0.1];

  v6 = [a1 _defaults];
  [v6 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListFadeInDuration" forKey:1.2];

  v7 = [a1 _defaults];
  [v7 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListFadeOutDelay" forKey:0.5];

  v8 = [a1 _defaults];
  [v8 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListFadeOutDuration" forKey:2.4];

  v9 = [a1 _defaults];
  [v9 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListBackgroundCornerRadius" forKey:20.0];

  v10 = [a1 _defaults];
  [v10 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightThickness" forKey:0.0];

  v11 = [a1 _defaults];
  [v11 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightSoftRadius" forKey:0.0];

  v12 = [a1 _defaults];
  [v12 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightColorOpacity" forKey:0.0];
}

@end