@interface NTKOlympusColorPalette
- (NTKOlympusColorPalette)init;
- (UIColor)secondaryBackgroundColor;
- (double)colorBrightness:(id)a3;
- (id)_circularDialSubtickColor;
- (id)_customBlack;
- (id)_darker;
- (id)_digits;
- (id)_logo;
- (id)_primaryBackgroundColor;
- (id)_primaryTextColor;
- (id)_secondHandColor;
- (id)_secondHandForColorName:(id)a3;
- (id)_tritiumLogoColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)mainColor;
@end

@implementation NTKOlympusColorPalette

- (NTKOlympusColorPalette)init
{
  v3 = +[NTKOlympusColorEditOption pigmentFaceDomain];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7.receiver = self;
  v7.super_class = NTKOlympusColorPalette;
  v5 = [(NTKFaceColorPalette *)&v7 initWithDomainName:v3 inBundle:v4];

  if (v5)
  {
    [(NTKOlympusColorPalette *)v5 setDial:0];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKOlympusColorPalette;
  v4 = [(NTKFaceColorPalette *)&v6 copyWithZone:a3];
  [v4 setStyle:{-[NTKOlympusColorPalette style](self, "style")}];
  [v4 setDial:{-[NTKOlympusColorPalette dial](self, "dial")}];
  [v4 setUseSmallFont:{-[NTKOlympusColorPalette useSmallFont](self, "useSmallFont")}];
  return v4;
}

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = NTKOlympusColorPalette;
  v4 = [(NTKFaceColorPalette *)&v7 identifier];
  v5 = [v3 stringWithFormat:@"%@-%lu-%lu-%lu", v4, self->_style, self->_dial, self->_useSmallFont];

  return v5;
}

- (id)mainColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];

    v5 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
    v6 = [v5 primaryColor];

    [(NTKOlympusColorPalette *)self colorBrightness:v4];
    v8 = v7;
    [(NTKOlympusColorPalette *)self colorBrightness:v6];
    if (v8 <= v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = v4;
    }

    v11 = v10;
  }

  else
  {
    v11 = [(NTKOlympusColorPalette *)self primaryColor];
  }

  return v11;
}

- (id)_primaryTextColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKOlympusColorPalette *)self digits];
  }

  return v4;
}

- (id)_digits
{
  v3 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v4 = [v3 fullname];
  v5 = [v4 isEqualToString:@"victory.fall2025.voltSplash"];

  if (v5)
  {
    v6 = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    v6 = [(NTKOlympusColorPalette *)self darker];
    if ([(NTKFaceColorPalette *)self isNotFoundColor:v6])
    {
      if ([(NTKFaceColorPalette *)self isCompositePalette])
      {
        v7 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
        v8 = [v7 primaryColor];

        v6 = v7;
      }

      else
      {
        v8 = [(NTKOlympusColorPalette *)self primaryColor];
      }

      v6 = v8;
    }
  }

  return v6;
}

- (id)_darker
{
  v2 = [(NTKOlympusColorPalette *)self primaryColor];
  v3 = NTKColorByApplyingBlackOverlay(v2, 0.2);

  return v3;
}

- (id)_primaryBackgroundColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    if ([v3 isBlackColor])
    {
      [(NTKOlympusColorPalette *)self _customBlack];
    }

    else
    {
      [v3 primaryColor];
    }
    v4 = ;
  }

  else
  {
    v4 = [(NTKOlympusColorPalette *)self primaryColor];
  }

  return v4;
}

- (id)_tritiumLogoColor
{
  v3 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v4 = [v3 fullname];
  v5 = [v4 isEqualToString:@"victory.fall2025.voltSplash"];

  if (v5)
  {
    [(NTKOlympusColorPalette *)self primaryColor];
  }

  else
  {
    [(NTKOlympusColorPalette *)self logo];
  }
  v6 = ;

  return v6;
}

- (id)_logo
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    v4 = [v3 isBlackColor];

    v5 = [(NTKFaceColorPalette *)self paletteAtIndex:v4 != 0];
    v6 = [v5 logo];
  }

  else
  {
    v6 = [(NTKOlympusColorPalette *)self orangeLogo];
  }

  return v6;
}

- (id)_secondHandColor
{
  v3 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v4 = [v3 identifier];

  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v5 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    v6 = [v5 isBlackColor];

    v7 = [(NTKFaceColorPalette *)self paletteAtIndex:v6];
    v8 = [v7 pigmentEditOption];
    v9 = [v8 identifier];

    v4 = v9;
  }

  v10 = [(NTKOlympusColorPalette *)self _secondHandForColorName:v4];

  return v10;
}

- (id)_secondHandForColorName:(id)a3
{
  v4 = a3;
  if (([v4 isEqual:@"victory.limeBlast"] & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"victory.spruceAura") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"victory.blueBlack") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"victory.hasta") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"victory.chlorineBlue") & 1) != 0 || objc_msgSend(v4, "isEqual:", @"victory.ironstone"))
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_8;
  }

  if ([v4 isEqual:@"victory.fall2025.voltSplash"])
  {
    v8 = 1.0;
    v9 = 76;
    v10 = 76;
    v11 = 76;
LABEL_16:
    v5 = NTKColorWithRGBA(v9, v10, v11, v8);
    goto LABEL_8;
  }

  if (([v4 isEqual:@"victory.fall2025.blueRibbon"] & 1) != 0 || objc_msgSend(v4, "isEqual:", @"victory.fall2025.alpenglowPink"))
  {
    v8 = 1.0;
    v9 = 230;
    v10 = 230;
    v11 = 230;
    goto LABEL_16;
  }

  v5 = [(NTKOlympusColorPalette *)self logo];
LABEL_8:
  v6 = v5;

  return v6;
}

- (id)_circularDialSubtickColor
{
  v2 = [(NTKOlympusColorPalette *)self ticks];
  v3 = [v2 colorWithAlphaComponent:0.35];

  return v3;
}

- (UIColor)secondaryBackgroundColor
{
  v3 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v4 = [v3 fullname];
  v5 = [v4 isEqualToString:@"victory.fall2025.voltSplash"];

  if (v5)
  {
    v6 = [(NTKOlympusColorPalette *)self darker];
  }

  else
  {
    if ([(NTKFaceColorPalette *)self isCompositePalette])
    {
      v7 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
      if ([v7 isBlackColor])
      {
        v8 = [(NTKOlympusColorPalette *)self _customBlack];

        goto LABEL_9;
      }
    }

    v6 = [(NTKOlympusColorPalette *)self primaryTextColor];
  }

  v8 = v6;
LABEL_9:

  return v8;
}

- (double)colorBrightness:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0;
  [a3 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  return (v6 * 587.0 + v7 * 299.0 + v5 * 114.0) / 1000.0;
}

- (id)_customBlack
{
  if (self->_useSmallFont)
  {
    v2 = [(NTKOlympusColorPalette *)self softBlack];
  }

  else if (self->_dial || self->_style != 2)
  {
    v2 = [(NTKOlympusColorPalette *)self black];
  }

  else
  {
    v2 = [(NTKOlympusColorPalette *)self softerBlack];
  }

  return v2;
}

@end