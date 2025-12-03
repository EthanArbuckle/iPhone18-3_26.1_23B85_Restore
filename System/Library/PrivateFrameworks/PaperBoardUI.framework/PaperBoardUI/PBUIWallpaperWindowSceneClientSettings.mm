@interface PBUIWallpaperWindowSceneClientSettings
- (BOOL)homescreenParallaxEnabled;
- (BOOL)isHomescreenContentStatic;
- (BOOL)isLockscreenContentLiveWallpaper;
- (BOOL)isLockscreenContentStatic;
- (BOOL)lockscreenParallaxEnabled;
- (UIColor)homescreenAverageColor;
- (UIColor)lockscreenAverageColor;
- (_UILegibilitySettings)homescreenLegibilitySettings;
- (_UILegibilitySettings)lockscreenLegibilitySettings;
- (double)homescreenContrast;
- (double)homescreenMinimumWallpaperScale;
- (double)homescreenParallaxFactor;
- (double)homescreenZoomFactor;
- (double)lockscreenContrast;
- (double)lockscreenMinimumWallpaperScale;
- (double)lockscreenParallaxFactor;
- (double)lockscreenZoomFactor;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)liveWallpaperPlaybackState;
@end

@implementation PBUIWallpaperWindowSceneClientSettings

- (double)homescreenMinimumWallpaperScale
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217227];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenMinimumWallpaperScale
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217228];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (_UILegibilitySettings)homescreenLegibilitySettings
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217229];

  return v3;
}

- (_UILegibilitySettings)lockscreenLegibilitySettings
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217230];

  return v3;
}

- (UIColor)homescreenAverageColor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217231];
  uIColor = [v3 UIColor];

  return uIColor;
}

- (UIColor)lockscreenAverageColor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217232];
  uIColor = [v3 UIColor];

  return uIColor;
}

- (double)homescreenContrast
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217233];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenContrast
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217234];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)homescreenParallaxFactor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217235];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenParallaxFactor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217236];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)homescreenParallaxEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217237];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)lockscreenParallaxEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217238];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (double)homescreenZoomFactor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217239];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenZoomFactor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217240];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)isHomescreenContentStatic
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217241];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)isLockscreenContentStatic
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217242];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)isLockscreenContentLiveWallpaper
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217243];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (int64_t)liveWallpaperPlaybackState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217244];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PBUIMutableWallpaperWindowSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v5 = PBUIWallpaperWindowSceneClientSettingKeyDescription(setting);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PBUIWallpaperWindowSceneClientSettings;
    v7 = [(FBSSettings *)&v10 keyDescriptionForSetting:setting];
  }

  v8 = v7;

  return v8;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v9 = PBUIWallpaperWindowSceneClientSettingValueDescription(setting, objectCopy);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PBUIWallpaperWindowSceneClientSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end