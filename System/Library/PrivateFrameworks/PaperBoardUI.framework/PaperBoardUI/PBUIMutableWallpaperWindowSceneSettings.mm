@interface PBUIMutableWallpaperWindowSceneSettings
- (BOOL)disallowHomescreenRasterization;
- (BOOL)disallowLockscreenRasterization;
- (BOOL)homescreenStyleChangesDelayed;
- (BOOL)homescreenWallpaperHidden;
- (BOOL)liveWallpaperInteractive;
- (BOOL)liveWallpaperTouchActive;
- (BOOL)lockscreenWallpaperHidden;
- (BOOL)wallpaperAnimationSuspended;
- (BOOL)wallpaperRequired;
- (CGRect)lockscreenWallpaperContentsRect;
- (NSString)cachingIdentifier;
- (PBUIWallpaperWindowSceneStyleTransitionState)homescreenStyleTransitionState;
- (PBUIWallpaperWindowSceneStyleTransitionState)lockscreenStyleTransitionState;
- (double)homescreenWallpaperAlpha;
- (double)lockscreenOnlyWallpaperAlpha;
- (double)lockscreenWallpaperAlpha;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)wallpaperVariant;
- (void)setCachingIdentifier:(id)identifier;
- (void)setDisallowHomescreenRasterization:(BOOL)rasterization;
- (void)setDisallowLockscreenRasterization:(BOOL)rasterization;
- (void)setHomescreenStyleChangesDelayed:(BOOL)delayed;
- (void)setHomescreenStyleTransitionState:(id)state;
- (void)setHomescreenWallpaperAlpha:(double)alpha;
- (void)setHomescreenWallpaperHidden:(BOOL)hidden;
- (void)setLiveWallpaperInteractive:(BOOL)interactive;
- (void)setLiveWallpaperTouchActive:(BOOL)active;
- (void)setLockscreenOnlyWallpaperAlpha:(double)alpha;
- (void)setLockscreenStyleTransitionState:(id)state;
- (void)setLockscreenWallpaperAlpha:(double)alpha;
- (void)setLockscreenWallpaperContentsRect:(CGRect)rect;
- (void)setLockscreenWallpaperHidden:(BOOL)hidden;
- (void)setWallpaperAnimationSuspended:(BOOL)suspended;
- (void)setWallpaperRequired:(BOOL)required;
- (void)setWallpaperVariant:(int64_t)variant;
@end

@implementation PBUIMutableWallpaperWindowSceneSettings

- (int64_t)wallpaperVariant
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229969];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setWallpaperVariant:(int64_t)variant
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:variant];
  [otherSettings setObject:v4 forSetting:727229969];
}

- (CGRect)lockscreenWallpaperContentsRect
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229970];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setLockscreenWallpaperContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  otherSettings = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [otherSettings setObject:v7 forSetting:727229970];
}

- (double)lockscreenWallpaperAlpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229971];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenWallpaperAlpha:(double)alpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:alpha];
  [otherSettings setObject:v4 forSetting:727229971];
}

- (double)homescreenWallpaperAlpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229972];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenWallpaperAlpha:(double)alpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:alpha];
  [otherSettings setObject:v4 forSetting:727229972];
}

- (double)lockscreenOnlyWallpaperAlpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229973];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenOnlyWallpaperAlpha:(double)alpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:alpha];
  [otherSettings setObject:v4 forSetting:727229973];
}

- (BOOL)disallowHomescreenRasterization
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229974];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setDisallowHomescreenRasterization:(BOOL)rasterization
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229974];
}

- (BOOL)disallowLockscreenRasterization
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229975];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setDisallowLockscreenRasterization:(BOOL)rasterization
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229975];
}

- (BOOL)homescreenWallpaperHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229976];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setHomescreenWallpaperHidden:(BOOL)hidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229976];
}

- (BOOL)lockscreenWallpaperHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229977];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLockscreenWallpaperHidden:(BOOL)hidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229977];
}

- (BOOL)wallpaperAnimationSuspended
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229978];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setWallpaperAnimationSuspended:(BOOL)suspended
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229978];
}

- (BOOL)wallpaperRequired
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229979];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setWallpaperRequired:(BOOL)required
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229979];
}

- (BOOL)homescreenStyleChangesDelayed
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229980];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setHomescreenStyleChangesDelayed:(BOOL)delayed
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229980];
}

- (NSString)cachingIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229981];

  return v3;
}

- (void)setCachingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:727229981];
}

- (PBUIWallpaperWindowSceneStyleTransitionState)homescreenStyleTransitionState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229982];

  return v3;
}

- (void)setHomescreenStyleTransitionState:(id)state
{
  stateCopy = state;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:stateCopy forSetting:727229982];
}

- (PBUIWallpaperWindowSceneStyleTransitionState)lockscreenStyleTransitionState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229983];

  return v3;
}

- (void)setLockscreenStyleTransitionState:(id)state
{
  stateCopy = state;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:stateCopy forSetting:727229983];
}

- (BOOL)liveWallpaperTouchActive
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229984];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLiveWallpaperTouchActive:(BOOL)active
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229984];
}

- (BOOL)liveWallpaperInteractive
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229985];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLiveWallpaperInteractive:(BOOL)interactive
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:727229985];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PBUIWallpaperWindowSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v5 = PBUIWallpaperWindowSceneSettingKeyDescription(setting);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PBUIMutableWallpaperWindowSceneSettings;
    v7 = [(FBSSettings *)&v10 keyDescriptionForSetting:setting];
  }

  v8 = v7;

  return v8;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v9 = PBUIWallpaperWindowSceneSettingValueDescription(setting, objectCopy);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PBUIMutableWallpaperWindowSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end