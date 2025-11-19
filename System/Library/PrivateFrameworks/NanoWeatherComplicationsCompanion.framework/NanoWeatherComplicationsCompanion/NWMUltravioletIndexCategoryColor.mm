@interface NWMUltravioletIndexCategoryColor
+ (NSArray)spectrum;
+ (id)colorForNumber:(id)a3;
@end

@implementation NWMUltravioletIndexCategoryColor

+ (NSArray)spectrum
{
  v2 = spectrum_ColorSpectrum;
  if (!spectrum_ColorSpectrum)
  {
    v3 = +[NWMUltravioletIndexColorIndex allIndices];
    v4 = NSStringFromSelector(sel_color);
    v5 = [v3 valueForKeyPath:v4];
    v6 = spectrum_ColorSpectrum;
    spectrum_ColorSpectrum = v5;

    v2 = spectrum_ColorSpectrum;
  }

  return v2;
}

+ (id)colorForNumber:(id)a3
{
  if (a3)
  {
    [a3 doubleValue];
    [(NWKUIColorIndex *)NWMUltravioletIndexColorIndex colorForValue:?];
  }

  else
  {
    +[NWMUltravioletIndexCategoryColor unknown];
  }
  v3 = ;

  return v3;
}

@end