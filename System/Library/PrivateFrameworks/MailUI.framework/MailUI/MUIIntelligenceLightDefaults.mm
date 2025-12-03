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
  _defaults = [self _defaults];
  v4 = [_defaults BOOLForKey:@"MUIIntelligenceLightDefaultsKeyHasSetupMessageListIntelligenceLightInitialSettingsKey.v4"];

  if ((v4 & 1) == 0)
  {
    [self restoreDefaultValues];
    _defaults2 = [self _defaults];
    [_defaults2 setBool:1 forKey:@"MUIIntelligenceLightDefaultsKeyHasSetupMessageListIntelligenceLightInitialSettingsKey.v4"];
  }
}

+ (int64_t)preferredMessageListBeginningAnimationCurve
{
  _defaults = [self _defaults];
  v3 = [_defaults integerForKey:@"MUIIntelligenceLightDefaultsKeyMessageListBeginningAnimationCurve"];

  return v3;
}

+ (int64_t)preferredMessageListEndingAnimationCurve
{
  _defaults = [self _defaults];
  v3 = [_defaults integerForKey:@"MUIIntelligenceLightDefaultsKeyMessageListEndingAnimationCurve"];

  return v3;
}

+ (double)preferredMessageListAnimationDelay
{
  _defaults = [self _defaults];
  [_defaults doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListAnimationDelay"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListFadeInDuration
{
  _defaults = [self _defaults];
  [_defaults doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListFadeInDuration"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListFadeOutDelay
{
  _defaults = [self _defaults];
  [_defaults doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListFadeOutDelay"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListFadeOutDuration
{
  _defaults = [self _defaults];
  [_defaults doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListFadeOutDuration"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListBackgroundCornerRadius
{
  _defaults = [self _defaults];
  [_defaults doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListBackgroundCornerRadius"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListRimLightThickness
{
  _defaults = [self _defaults];
  [_defaults doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightThickness"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListRimLightSoftRadius
{
  _defaults = [self _defaults];
  [_defaults doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightSoftRadius"];
  v4 = v3;

  return v4;
}

+ (double)preferredMessageListRimLightColorOpacity
{
  _defaults = [self _defaults];
  [_defaults doubleForKey:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightColorOpacity"];
  v4 = v3;

  return v4;
}

+ (void)restoreDefaultValues
{
  _defaults = [self _defaults];
  [_defaults setInteger:1 forKey:@"MUIIntelligenceLightDefaultsKeyMessageListBeginningAnimationCurve"];

  _defaults2 = [self _defaults];
  [_defaults2 setInteger:2 forKey:@"MUIIntelligenceLightDefaultsKeyMessageListEndingAnimationCurve"];

  _defaults3 = [self _defaults];
  [_defaults3 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListAnimationDelay" forKey:0.1];

  _defaults4 = [self _defaults];
  [_defaults4 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListFadeInDuration" forKey:1.2];

  _defaults5 = [self _defaults];
  [_defaults5 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListFadeOutDelay" forKey:0.5];

  _defaults6 = [self _defaults];
  [_defaults6 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListFadeOutDuration" forKey:2.4];

  _defaults7 = [self _defaults];
  [_defaults7 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListBackgroundCornerRadius" forKey:20.0];

  _defaults8 = [self _defaults];
  [_defaults8 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightThickness" forKey:0.0];

  _defaults9 = [self _defaults];
  [_defaults9 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightSoftRadius" forKey:0.0];

  _defaults10 = [self _defaults];
  [_defaults10 setDouble:@"MUIIntelligenceLightDefaultsKeyMessageListRimLightColorOpacity" forKey:0.0];
}

@end