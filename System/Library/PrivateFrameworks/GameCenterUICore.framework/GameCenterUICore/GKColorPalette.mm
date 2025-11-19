@interface GKColorPalette
+ (id)paletteFromImage:(id)a3;
+ (id)sharedPalette;
- (UIColor)selectedCellBackgroundColor;
@end

@implementation GKColorPalette

+ (id)sharedPalette
{
  if (sharedPalette_onceToken != -1)
  {
    +[GKColorPalette sharedPalette];
  }

  v3 = sharedPalette_standardColors;

  return v3;
}

uint64_t __31__GKColorPalette_sharedPalette__block_invoke()
{
  if (*MEMORY[0x277D0C258])
  {
    v0 = off_27967E690;
  }

  else
  {
    v0 = off_27967E660;
  }

  sharedPalette_standardColors = objc_alloc_init(*v0);

  return MEMORY[0x2821F96F8]();
}

+ (id)paletteFromImage:(id)a3
{
  v3 = a3;
  v4 = [[GKImageColorPalette alloc] initWithImage:v3];

  return v4;
}

- (UIColor)selectedCellBackgroundColor
{
  v2 = [MEMORY[0x277D75348] labelColor];
  v3 = [v2 colorWithAlphaComponent:0.1];

  return v3;
}

@end