@interface CRSUIMutableWallpaperSceneSettings
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIsDimmed:(BOOL)a3;
- (void)setWallpaper:(id)a3;
@end

@implementation CRSUIMutableWallpaperSceneSettings

- (void)setWallpaper:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:1049979832];
}

- (void)setIsDimmed:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagForBool() forSetting:1049979833];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRSUIWallpaperSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end