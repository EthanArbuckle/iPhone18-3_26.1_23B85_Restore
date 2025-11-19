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
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)liveWallpaperPlaybackState;
@end

@implementation PBUIWallpaperWindowSceneClientSettings

- (double)homescreenMinimumWallpaperScale
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217227];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenMinimumWallpaperScale
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217228];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (_UILegibilitySettings)homescreenLegibilitySettings
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217229];

  return v3;
}

- (_UILegibilitySettings)lockscreenLegibilitySettings
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217230];

  return v3;
}

- (UIColor)homescreenAverageColor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217231];
  v4 = [v3 UIColor];

  return v4;
}

- (UIColor)lockscreenAverageColor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217232];
  v4 = [v3 UIColor];

  return v4;
}

- (double)homescreenContrast
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217233];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenContrast
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217234];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)homescreenParallaxFactor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217235];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenParallaxFactor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217236];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)homescreenParallaxEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217237];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)lockscreenParallaxEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217238];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (double)homescreenZoomFactor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217239];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenZoomFactor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217240];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)isHomescreenContentStatic
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217241];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)isLockscreenContentStatic
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217242];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)isLockscreenContentLiveWallpaper
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217243];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (int64_t)liveWallpaperPlaybackState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217244];
  v4 = [v3 integerValue];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PBUIMutableWallpaperWindowSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v5 = PBUIWallpaperWindowSceneClientSettingKeyDescription(a3);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PBUIWallpaperWindowSceneClientSettings;
    v7 = [(FBSSettings *)&v10 keyDescriptionForSetting:a3];
  }

  v8 = v7;

  return v8;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v9 = PBUIWallpaperWindowSceneClientSettingValueDescription(a5, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PBUIWallpaperWindowSceneClientSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v12 = v11;

  return v12;
}

@end