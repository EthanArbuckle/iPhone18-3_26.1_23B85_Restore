@interface CSWallpaperFloatingLayerComponent
- (BOOL)shouldRenderInline;
- (CSWallpaperFloatingLayerComponent)init;
- (void)setShouldMatchMove:(BOOL)move;
- (void)setShouldRenderInline:(BOOL)inline;
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
  value = [(CSComponent *)self value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (void)setShouldRenderInline:(BOOL)inline
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:inline];
  [(CSComponent *)self setValue:v4];
}

- (void)setShouldMatchMove:(BOOL)move
{
  v4 = BSSettingFlagForBool();

  [(CSComponent *)self setFlag:v4];
}

@end