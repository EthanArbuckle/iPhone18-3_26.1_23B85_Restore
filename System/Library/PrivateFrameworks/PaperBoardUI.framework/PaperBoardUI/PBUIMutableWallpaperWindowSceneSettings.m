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
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)wallpaperVariant;
- (void)setCachingIdentifier:(id)a3;
- (void)setDisallowHomescreenRasterization:(BOOL)a3;
- (void)setDisallowLockscreenRasterization:(BOOL)a3;
- (void)setHomescreenStyleChangesDelayed:(BOOL)a3;
- (void)setHomescreenStyleTransitionState:(id)a3;
- (void)setHomescreenWallpaperAlpha:(double)a3;
- (void)setHomescreenWallpaperHidden:(BOOL)a3;
- (void)setLiveWallpaperInteractive:(BOOL)a3;
- (void)setLiveWallpaperTouchActive:(BOOL)a3;
- (void)setLockscreenOnlyWallpaperAlpha:(double)a3;
- (void)setLockscreenStyleTransitionState:(id)a3;
- (void)setLockscreenWallpaperAlpha:(double)a3;
- (void)setLockscreenWallpaperContentsRect:(CGRect)a3;
- (void)setLockscreenWallpaperHidden:(BOOL)a3;
- (void)setWallpaperAnimationSuspended:(BOOL)a3;
- (void)setWallpaperRequired:(BOOL)a3;
- (void)setWallpaperVariant:(int64_t)a3;
@end

@implementation PBUIMutableWallpaperWindowSceneSettings

- (int64_t)wallpaperVariant
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:727229969];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setWallpaperVariant:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:727229969];
}

- (CGRect)lockscreenWallpaperContentsRect
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:727229970];
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

- (void)setLockscreenWallpaperContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(FBSSettings *)self otherSettings];
  v7 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [v8 setObject:v7 forSetting:727229970];
}

- (double)lockscreenWallpaperAlpha
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:727229971];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenWallpaperAlpha:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:727229971];
}

- (double)homescreenWallpaperAlpha
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:727229972];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setHomescreenWallpaperAlpha:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:727229972];
}

- (double)lockscreenOnlyWallpaperAlpha
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:727229973];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLockscreenOnlyWallpaperAlpha:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:727229973];
}

- (BOOL)disallowHomescreenRasterization
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229974];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setDisallowHomescreenRasterization:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229974];
}

- (BOOL)disallowLockscreenRasterization
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229975];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setDisallowLockscreenRasterization:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229975];
}

- (BOOL)homescreenWallpaperHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229976];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setHomescreenWallpaperHidden:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229976];
}

- (BOOL)lockscreenWallpaperHidden
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229977];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLockscreenWallpaperHidden:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229977];
}

- (BOOL)wallpaperAnimationSuspended
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229978];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setWallpaperAnimationSuspended:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229978];
}

- (BOOL)wallpaperRequired
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229979];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setWallpaperRequired:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229979];
}

- (BOOL)homescreenStyleChangesDelayed
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229980];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setHomescreenStyleChangesDelayed:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229980];
}

- (NSString)cachingIdentifier
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:727229981];

  return v3;
}

- (void)setCachingIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:727229981];
}

- (PBUIWallpaperWindowSceneStyleTransitionState)homescreenStyleTransitionState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:727229982];

  return v3;
}

- (void)setHomescreenStyleTransitionState:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:727229982];
}

- (PBUIWallpaperWindowSceneStyleTransitionState)lockscreenStyleTransitionState
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:727229983];

  return v3;
}

- (void)setLockscreenStyleTransitionState:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:727229983];
}

- (BOOL)liveWallpaperTouchActive
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229984];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLiveWallpaperTouchActive:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229984];
}

- (BOOL)liveWallpaperInteractive
{
  v2 = [(FBSSettings *)self otherSettings];
  [v2 flagForSetting:727229985];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (void)setLiveWallpaperInteractive:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:727229985];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PBUIWallpaperWindowSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v5 = PBUIWallpaperWindowSceneSettingKeyDescription(a3);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PBUIMutableWallpaperWindowSceneSettings;
    v7 = [(FBSSettings *)&v10 keyDescriptionForSetting:a3];
  }

  v8 = v7;

  return v8;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  v9 = PBUIWallpaperWindowSceneSettingValueDescription(a5, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PBUIMutableWallpaperWindowSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  v12 = v11;

  return v12;
}

@end