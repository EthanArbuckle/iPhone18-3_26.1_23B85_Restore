@interface CSWallpaperComponent
- (CSWallpaperComponent)init;
- (void)setShouldMatchBackgroundStyle:(BOOL)a3;
@end

@implementation CSWallpaperComponent

- (CSWallpaperComponent)init
{
  v5.receiver = self;
  v5.super_class = CSWallpaperComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:6];
  }

  return v3;
}

- (void)setShouldMatchBackgroundStyle:(BOOL)a3
{
  v4 = BSSettingFlagForBool();

  [(CSComponent *)self setFlag:v4];
}

@end