@interface NTKOlympusAnalogBackgroundPalette
- (NTKOlympusAnalogBackgroundPalette)initWithOlympusColorPalette:(id)palette alternatePalette:(id)alternatePalette;
- (id)tritiumLogoColor;
@end

@implementation NTKOlympusAnalogBackgroundPalette

- (NTKOlympusAnalogBackgroundPalette)initWithOlympusColorPalette:(id)palette alternatePalette:(id)alternatePalette
{
  paletteCopy = palette;
  alternatePaletteCopy = alternatePalette;
  v12.receiver = self;
  v12.super_class = NTKOlympusAnalogBackgroundPalette;
  v9 = [(NTKOlympusAnalogBackgroundPalette *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_olympusPalette, palette);
    objc_storeStrong(&v10->_tritiumPalette, alternatePalette);
  }

  return v10;
}

- (id)tritiumLogoColor
{
  pigmentEditOption = [(NTKFaceColorPalette *)self->_olympusPalette pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v5 = [fullname isEqualToString:@"victory.fall2025.voltSplash"];

  if (v5)
  {
    [(NTKOlympusColorPalette *)self->_olympusPalette primaryColor];
  }

  else
  {
    [(NTKOlympusAnalogBackgroundPalette *)self logo];
  }
  v6 = ;

  return v6;
}

@end