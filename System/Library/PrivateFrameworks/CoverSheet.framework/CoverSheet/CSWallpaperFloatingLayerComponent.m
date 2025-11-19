@interface CSWallpaperFloatingLayerComponent
- (BOOL)shouldRenderInline;
- (CSWallpaperFloatingLayerComponent)init;
- (void)setShouldMatchMove:(BOOL)a3;
- (void)setShouldRenderInline:(BOOL)a3;
@end

@implementation CSWallpaperFloatingLayerComponent

- (CSWallpaperFloatingLayerComponent)init
{
  v5.receiver = self;
  v5.super_class = CSWallpaperFloatingLayerComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:23];
  }

  return v3;
}

- (BOOL)shouldRenderInline
{
  v2 = [(CSComponent *)self value];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setShouldRenderInline:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(CSComponent *)self setValue:v4];
}

- (void)setShouldMatchMove:(BOOL)a3
{
  v4 = BSSettingFlagForBool();

  [(CSComponent *)self setFlag:v4];
}

@end