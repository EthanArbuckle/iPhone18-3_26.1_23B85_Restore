@interface NTKOlympusColorPalette
- (NTKOlympusColorPalette)init;
- (UIColor)secondaryBackgroundColor;
- (double)colorBrightness:(id)brightness;
- (id)_circularDialSubtickColor;
- (id)_customBlack;
- (id)_darker;
- (id)_digits;
- (id)_logo;
- (id)_primaryBackgroundColor;
- (id)_primaryTextColor;
- (id)_secondHandColor;
- (id)_secondHandForColorName:(id)name;
- (id)_tritiumLogoColor;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKOlympusColorPalette;
  v4 = [(NTKFaceColorPalette *)&v6 copyWithZone:zone];
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
  identifier = [(NTKFaceColorPalette *)&v7 identifier];
  v5 = [v3 stringWithFormat:@"%@-%lu-%lu-%lu", identifier, self->_style, self->_dial, self->_useSmallFont];

  return v5;
}

- (id)mainColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    primaryColor = [v3 primaryColor];

    v5 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
    primaryColor2 = [v5 primaryColor];

    [(NTKOlympusColorPalette *)self colorBrightness:primaryColor];
    v8 = v7;
    [(NTKOlympusColorPalette *)self colorBrightness:primaryColor2];
    if (v8 <= v9)
    {
      v10 = primaryColor2;
    }

    else
    {
      v10 = primaryColor;
    }

    primaryColor3 = v10;
  }

  else
  {
    primaryColor3 = [(NTKOlympusColorPalette *)self primaryColor];
  }

  return primaryColor3;
}

- (id)_primaryTextColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    primaryColor = [(NTKOlympusColorPalette *)self digits];
  }

  return primaryColor;
}

- (id)_digits
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v5 = [fullname isEqualToString:@"victory.fall2025.voltSplash"];

  if (v5)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    blackColor = [(NTKOlympusColorPalette *)self darker];
    if ([(NTKFaceColorPalette *)self isNotFoundColor:blackColor])
    {
      if ([(NTKFaceColorPalette *)self isCompositePalette])
      {
        v7 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
        primaryColor = [v7 primaryColor];

        blackColor = v7;
      }

      else
      {
        primaryColor = [(NTKOlympusColorPalette *)self primaryColor];
      }

      blackColor = primaryColor;
    }
  }

  return blackColor;
}

- (id)_darker
{
  primaryColor = [(NTKOlympusColorPalette *)self primaryColor];
  v3 = NTKColorByApplyingBlackOverlay(primaryColor, 0.2);

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
    primaryColor = ;
  }

  else
  {
    primaryColor = [(NTKOlympusColorPalette *)self primaryColor];
  }

  return primaryColor;
}

- (id)_tritiumLogoColor
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v5 = [fullname isEqualToString:@"victory.fall2025.voltSplash"];

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
    isBlackColor = [v3 isBlackColor];

    v5 = [(NTKFaceColorPalette *)self paletteAtIndex:isBlackColor != 0];
    logo = [v5 logo];
  }

  else
  {
    logo = [(NTKOlympusColorPalette *)self orangeLogo];
  }

  return logo;
}

- (id)_secondHandColor
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  identifier = [pigmentEditOption identifier];

  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v5 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    isBlackColor = [v5 isBlackColor];

    v7 = [(NTKFaceColorPalette *)self paletteAtIndex:isBlackColor];
    pigmentEditOption2 = [v7 pigmentEditOption];
    identifier2 = [pigmentEditOption2 identifier];

    identifier = identifier2;
  }

  v10 = [(NTKOlympusColorPalette *)self _secondHandForColorName:identifier];

  return v10;
}

- (id)_secondHandForColorName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqual:@"victory.limeBlast"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqual:", @"victory.spruceAura") & 1) != 0 || (objc_msgSend(nameCopy, "isEqual:", @"victory.blueBlack") & 1) != 0 || (objc_msgSend(nameCopy, "isEqual:", @"victory.hasta") & 1) != 0 || (objc_msgSend(nameCopy, "isEqual:", @"victory.chlorineBlue") & 1) != 0 || objc_msgSend(nameCopy, "isEqual:", @"victory.ironstone"))
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_8;
  }

  if ([nameCopy isEqual:@"victory.fall2025.voltSplash"])
  {
    v8 = 1.0;
    v9 = 76;
    v10 = 76;
    v11 = 76;
LABEL_16:
    whiteColor = NTKColorWithRGBA(v9, v10, v11, v8);
    goto LABEL_8;
  }

  if (([nameCopy isEqual:@"victory.fall2025.blueRibbon"] & 1) != 0 || objc_msgSend(nameCopy, "isEqual:", @"victory.fall2025.alpenglowPink"))
  {
    v8 = 1.0;
    v9 = 230;
    v10 = 230;
    v11 = 230;
    goto LABEL_16;
  }

  whiteColor = [(NTKOlympusColorPalette *)self logo];
LABEL_8:
  v6 = whiteColor;

  return v6;
}

- (id)_circularDialSubtickColor
{
  ticks = [(NTKOlympusColorPalette *)self ticks];
  v3 = [ticks colorWithAlphaComponent:0.35];

  return v3;
}

- (UIColor)secondaryBackgroundColor
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  fullname = [pigmentEditOption fullname];
  v5 = [fullname isEqualToString:@"victory.fall2025.voltSplash"];

  if (v5)
  {
    darker = [(NTKOlympusColorPalette *)self darker];
  }

  else
  {
    if ([(NTKFaceColorPalette *)self isCompositePalette])
    {
      v7 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
      if ([v7 isBlackColor])
      {
        _customBlack = [(NTKOlympusColorPalette *)self _customBlack];

        goto LABEL_9;
      }
    }

    darker = [(NTKOlympusColorPalette *)self primaryTextColor];
  }

  _customBlack = darker;
LABEL_9:

  return _customBlack;
}

- (double)colorBrightness:(id)brightness
{
  if (!brightness)
  {
    return 0.0;
  }

  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0;
  [brightness getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  return (v6 * 587.0 + v7 * 299.0 + v5 * 114.0) / 1000.0;
}

- (id)_customBlack
{
  if (self->_useSmallFont)
  {
    softBlack = [(NTKOlympusColorPalette *)self softBlack];
  }

  else if (self->_dial || self->_style != 2)
  {
    softBlack = [(NTKOlympusColorPalette *)self black];
  }

  else
  {
    softBlack = [(NTKOlympusColorPalette *)self softerBlack];
  }

  return softBlack;
}

@end