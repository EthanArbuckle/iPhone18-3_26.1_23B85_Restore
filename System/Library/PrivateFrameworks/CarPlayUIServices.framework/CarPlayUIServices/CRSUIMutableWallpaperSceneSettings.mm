@interface CRSUIMutableWallpaperSceneSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIsDimmed:(BOOL)dimmed;
- (void)setWallpaper:(id)wallpaper;
@end

@implementation CRSUIMutableWallpaperSceneSettings

- (void)setWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:wallpaperCopy forSetting:1049979832];
}

- (void)setIsDimmed:(BOOL)dimmed
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:1049979833];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRSUIWallpaperSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end