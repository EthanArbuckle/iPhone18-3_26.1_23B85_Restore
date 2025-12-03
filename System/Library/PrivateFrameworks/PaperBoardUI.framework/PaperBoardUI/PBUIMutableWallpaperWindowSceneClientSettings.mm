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
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)liveWallpaperPlaybackState;
- (void)setHomescreenAverageColor:(id)color;
- (void)setHomescreenContentStatic:(BOOL)static;
- (void)setHomescreenContrast:(double)contrast;
- (void)setHomescreenLegibilitySettings:(id)settings;
- (void)setHomescreenMinimumWallpaperScale:(double)scale;
- (void)setHomescreenParallaxEnabled:(BOOL)enabled;
- (void)setHomescreenParallaxFactor:(double)factor;
- (void)setHomescreenZoomFactor:(double)factor;
- (void)setLiveWallpaperPlaybackState:(int64_t)state;
- (void)setLockscreenAverageColor:(id)color;
- (void)setLockscreenContentLiveWallpaper:(BOOL)wallpaper;
- (void)setLockscreenContentStatic:(BOOL)static;
- (void)setLockscreenContrast:(double)contrast;
- (void)setLockscreenLegibilitySettings:(id)settings;
- (void)setLockscreenMinimumWallpaperScale:(double)scale;
- (void)setLockscreenParallaxEnabled:(BOOL)enabled;
- (void)setLockscreenParallaxFactor:(double)factor;
- (void)setLockscreenZoomFactor:(double)factor;
@end

@implementation PBUIMutableWallpaperWindowSceneClientSettings

- (double)homescreenMinimumWallpaperScale
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217227];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenMinimumWallpaperScale:(double)scale
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
  [otherSettings setObject:v4 forSetting:1207217227];
}

- (double)lockscreenMinimumWallpaperScale
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217228];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenMinimumWallpaperScale:(double)scale
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
  [otherSettings setObject:v4 forSetting:1207217228];
}

- (_UILegibilitySettings)homescreenLegibilitySettings
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217229];

  return v3;
}

- (void)setHomescreenLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:settingsCopy forSetting:1207217229];
}

- (_UILegibilitySettings)lockscreenLegibilitySettings
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217230];

  return v3;
}

- (void)setLockscreenLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:settingsCopy forSetting:1207217230];
}

- (UIColor)homescreenAverageColor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217231];
  uIColor = [v3 UIColor];

  return uIColor;
}

- (void)setHomescreenAverageColor:(id)color
{
  colorCopy = color;
  otherSettings = [(FBSSettings *)self otherSettings];
  bSColor = [colorCopy BSColor];

  [otherSettings setObject:bSColor forSetting:1207217231];
}

- (UIColor)lockscreenAverageColor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217232];
  uIColor = [v3 UIColor];

  return uIColor;
}

- (void)setLockscreenAverageColor:(id)color
{
  colorCopy = color;
  otherSettings = [(FBSSettings *)self otherSettings];
  bSColor = [colorCopy BSColor];

  [otherSettings setObject:bSColor forSetting:1207217232];
}

- (double)homescreenContrast
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217233];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenContrast:(double)contrast
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:contrast];
  [otherSettings setObject:v4 forSetting:1207217233];
}

- (double)lockscreenContrast
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217234];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenContrast:(double)contrast
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:contrast];
  [otherSettings setObject:v4 forSetting:1207217234];
}

- (double)homescreenParallaxFactor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217235];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenParallaxFactor:(double)factor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [otherSettings setObject:v4 forSetting:1207217235];
}

- (double)lockscreenParallaxFactor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217236];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenParallaxFactor:(double)factor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [otherSettings setObject:v4 forSetting:1207217236];
}

- (BOOL)homescreenParallaxEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217237];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setHomescreenParallaxEnabled:(BOOL)enabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1207217237];
}

- (BOOL)lockscreenParallaxEnabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217238];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLockscreenParallaxEnabled:(BOOL)enabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1207217238];
}

- (double)homescreenZoomFactor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217239];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenZoomFactor:(double)factor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [otherSettings setObject:v4 forSetting:1207217239];
}

- (double)lockscreenZoomFactor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217240];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenZoomFactor:(double)factor
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [otherSettings setObject:v4 forSetting:1207217240];
}

- (BOOL)isHomescreenContentStatic
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217241];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setHomescreenContentStatic:(BOOL)static
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1207217241];
}

- (BOOL)isLockscreenContentStatic
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217242];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLockscreenContentStatic:(BOOL)static
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1207217242];
}

- (BOOL)isLockscreenContentLiveWallpaper
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:1207217243];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLockscreenContentLiveWallpaper:(BOOL)wallpaper
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1207217243];
}

- (int64_t)liveWallpaperPlaybackState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1207217244];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setLiveWallpaperPlaybackState:(int64_t)state
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [otherSettings setObject:v4 forSetting:1207217244];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PBUIWallpaperWindowSceneClientSettings alloc];

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
    v10.super_class = PBUIMutableWallpaperWindowSceneClientSettings;
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
    v14.super_class = PBUIMutableWallpaperWindowSceneClientSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end