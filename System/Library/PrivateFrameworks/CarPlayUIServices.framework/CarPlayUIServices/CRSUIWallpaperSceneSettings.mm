@interface CRSUIWallpaperSceneSettings
- (BOOL)isDimmed;
- (CRWallpaperData)wallpaper;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CRSUIWallpaperSceneSettings

- (CRWallpaperData)wallpaper
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1049979832];

  return v3;
}

- (BOOL)isDimmed
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:1049979833];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIMutableWallpaperSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end