@interface HFMutableColorPalette
- (void)setColor:(id)color atIndex:(unint64_t)index;
@end

@implementation HFMutableColorPalette

- (void)setColor:(id)color atIndex:(unint64_t)index
{
  colorCopy = color;
  colors = [(HFColorPalette *)self colors];
  v8 = [colors count];

  if (v8 <= index)
  {
    v9 = MEMORY[0x277CCABB0];
    colors2 = [(HFColorPalette *)self colors];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(colors2, "count")}];
    NSLog(&cfstr_AttemptingToSe.isa, v11);
  }

  _isNaturalLightPalette = [(HFColorPalette *)self _isNaturalLightPalette];
  if (index || !_isNaturalLightPalette)
  {
    if ([colorCopy isNaturalLightColor])
    {
      NSLog(&cfstr_YouCanTSetTheN.isa);
    }

    else
    {
      rawColors = [(HFColorPalette *)self rawColors];
      v15 = [rawColors mutableCopy];

      [v15 setObject:colorCopy atIndexedSubscript:index];
      [(HFColorPalette *)self setRawColors:v15];
    }
  }

  else
  {
    v13 = HFLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to change the color position reservered for the natural light swatch.", buf, 2u);
    }
  }
}

@end