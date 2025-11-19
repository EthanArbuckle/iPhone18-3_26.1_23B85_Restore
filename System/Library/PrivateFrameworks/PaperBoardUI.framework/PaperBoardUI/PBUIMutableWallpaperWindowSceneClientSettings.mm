@interface PBUIMutableWallpaperWindowSceneClientSettings
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)liveWallpaperPlaybackState;
- (void)setHomescreenAverageColor:(id)a3;
- (void)setHomescreenContentStatic:(BOOL)a3;
- (void)setHomescreenContrast:(double)a3;
- (void)setHomescreenLegibilitySettings:(id)a3;
- (void)setHomescreenMinimumWallpaperScale:(double)a3;
- (void)setHomescreenParallaxEnabled:(BOOL)a3;
- (void)setHomescreenParallaxFactor:(double)a3;
- (void)setHomescreenZoomFactor:(double)a3;
- (void)setLiveWallpaperPlaybackState:(int64_t)a3;
- (void)setLockscreenAverageColor:(id)a3;
- (void)setLockscreenContentLiveWallpaper:(BOOL)a3;
- (void)setLockscreenContentStatic:(BOOL)a3;
- (void)setLockscreenContrast:(double)a3;
- (void)setLockscreenLegibilitySettings:(id)a3;
- (void)setLockscreenMinimumWallpaperScale:(double)a3;
- (void)setLockscreenParallaxEnabled:(BOOL)a3;
- (void)setLockscreenParallaxFactor:(double)a3;
- (void)setLockscreenZoomFactor:(double)a3;
@end

@implementation PBUIMutableWallpaperWindowSceneClientSettings

- (double)homescreenMinimumWallpaperScale
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217227];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenMinimumWallpaperScale:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1207217227];
}

- (double)lockscreenMinimumWallpaperScale
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217228];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenMinimumWallpaperScale:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1207217228];
}

- (_UILegibilitySettings)homescreenLegibilitySettings
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217229];

  return v3;
}

- (void)setHomescreenLegibilitySettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:1207217229];
}

- (_UILegibilitySettings)lockscreenLegibilitySettings
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217230];

  return v3;
}

- (void)setLockscreenLegibilitySettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:1207217230];
}

- (UIColor)homescreenAverageColor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217231];
  v4 = [v3 UIColor];

  return v4;
}

- (void)setHomescreenAverageColor:(id)a3
{
  v4 = a3;
  v6 = [(FBSSettings *)self otherSettings];
  v5 = [v4 BSColor];

  [v6 setObject:v5 forSetting:1207217231];
}

- (UIColor)lockscreenAverageColor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217232];
  v4 = [v3 UIColor];

  return v4;
}

- (void)setLockscreenAverageColor:(id)a3
{
  v4 = a3;
  v6 = [(FBSSettings *)self otherSettings];
  v5 = [v4 BSColor];

  [v6 setObject:v5 forSetting:1207217232];
}

- (double)homescreenContrast
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217233];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenContrast:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1207217233];
}

- (double)lockscreenContrast
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217234];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenContrast:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1207217234];
}

- (double)homescreenParallaxFactor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217235];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenParallaxFactor:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1207217235];
}

- (double)lockscreenParallaxFactor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217236];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenParallaxFactor:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1207217236];
}

- (BOOL)homescreenParallaxEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217237];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setHomescreenParallaxEnabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1207217237];
}

- (BOOL)lockscreenParallaxEnabled
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217238];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLockscreenParallaxEnabled:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1207217238];
}

- (double)homescreenZoomFactor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217239];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenZoomFactor:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1207217239];
}

- (double)lockscreenZoomFactor
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217240];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenZoomFactor:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1207217240];
}

- (BOOL)isHomescreenContentStatic
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217241];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setHomescreenContentStatic:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1207217241];
}

- (BOOL)isLockscreenContentStatic
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217242];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLockscreenContentStatic:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1207217242];
}

- (BOOL)isLockscreenContentLiveWallpaper
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:1207217243];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLockscreenContentLiveWallpaper:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1207217243];
}

- (int64_t)liveWallpaperPlaybackState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1207217244];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setLiveWallpaperPlaybackState:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:1207217244];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PBUIWallpaperWindowSceneClientSettings alloc];

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
    v10.super_class = PBUIMutableWallpaperWindowSceneClientSettings;
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
    v14.super_class = PBUIMutableWallpaperWindowSceneClientSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v12 = v11;

  return v12;
}

@end