@interface PBUIWallpaperWindowSceneSettings
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
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)wallpaperVariant;
@end

@implementation PBUIWallpaperWindowSceneSettings

- (int64_t)wallpaperVariant
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229969];
  integerValue = [v3 integerValue];

  return integerValue;
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

- (double)lockscreenWallpaperAlpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229971];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)homescreenWallpaperAlpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229972];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)lockscreenOnlyWallpaperAlpha
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229973];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)disallowHomescreenRasterization
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229974];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)disallowLockscreenRasterization
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229975];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)homescreenWallpaperHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229976];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)lockscreenWallpaperHidden
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229977];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)wallpaperAnimationSuspended
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229978];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)wallpaperRequired
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229979];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)homescreenStyleChangesDelayed
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229980];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (NSString)cachingIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229981];

  return v3;
}

- (PBUIWallpaperWindowSceneStyleTransitionState)homescreenStyleTransitionState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229982];

  return v3;
}

- (PBUIWallpaperWindowSceneStyleTransitionState)lockscreenStyleTransitionState
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:727229983];

  return v3;
}

- (BOOL)liveWallpaperTouchActive
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229984];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (BOOL)liveWallpaperInteractive
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings flagForSetting:727229985];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PBUIMutableWallpaperWindowSceneSettings alloc];

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
    v10.super_class = PBUIWallpaperWindowSceneSettings;
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
    v14.super_class = PBUIWallpaperWindowSceneSettings;
    v11 = [(FBSSettings *)&v14 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  v12 = v11;

  return v12;
}

@end