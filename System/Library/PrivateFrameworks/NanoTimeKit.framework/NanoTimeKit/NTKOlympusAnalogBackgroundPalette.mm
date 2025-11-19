@interface NTKOlympusAnalogBackgroundPalette
- (NTKOlympusAnalogBackgroundPalette)initWithOlympusColorPalette:(id)a3 alternatePalette:(id)a4;
- (id)tritiumLogoColor;
@end

@implementation NTKOlympusAnalogBackgroundPalette

- (NTKOlympusAnalogBackgroundPalette)initWithOlympusColorPalette:(id)a3 alternatePalette:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NTKOlympusAnalogBackgroundPalette;
  v9 = [(NTKOlympusAnalogBackgroundPalette *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_olympusPalette, a3);
    objc_storeStrong(&v10->_tritiumPalette, a4);
  }

  return v10;
}

- (id)tritiumLogoColor
{
  v3 = [(NTKFaceColorPalette *)self->_olympusPalette pigmentEditOption];
  v4 = [v3 fullname];
  v5 = [v4 isEqualToString:@"victory.fall2025.voltSplash"];

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