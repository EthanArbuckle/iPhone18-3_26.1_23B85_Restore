@interface NTKWhistlerAnalogColorPalette
- (NTKWhistlerAnalogColorPalette)initWithDevice:(id)device;
- (id)bezelTextColorForColorPalette:(id)palette;
- (id)complicationForegroundColorPalette:(id)palette;
- (id)dialFillColorForColorPalette:(id)palette;
- (id)handFillColorForColorPalette:(id)palette;
- (id)hourTicksColorForColorPalette:(id)palette;
- (id)minuteTicksColorForColorPalette:(id)palette;
- (id)platterTextColorForColorPalette:(id)palette;
- (id)secondHandColorForColorPalette:(id)palette;
@end

@implementation NTKWhistlerAnalogColorPalette

- (NTKWhistlerAnalogColorPalette)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKWhistlerAnalogColorPalette;
  v6 = [(NTKWhistlerAnalogColorPalette *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (id)handFillColorForColorPalette:(id)palette
{
  if ([palette isWhiteColor])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v3 = ;

  return v3;
}

- (id)secondHandColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  if (([paletteCopy isMulticolor] & 1) != 0 || (objc_msgSend(paletteCopy, "isBlackColor") & 1) != 0 || objc_msgSend(paletteCopy, "isWhiteColor"))
  {
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    systemRedColor = [paletteCopy primaryColor];
  }

  v5 = systemRedColor;

  return v5;
}

- (id)hourTicksColorForColorPalette:(id)palette
{
  if ([palette isWhiteColor])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v3 = ;

  return v3;
}

- (id)minuteTicksColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  if ([paletteCopy isWhiteColor])
  {
    v4 = NTKColorWithRGBA(150, 150, 150, 1.0);
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([paletteCopy isBlackColor])
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
    goto LABEL_5;
  }

  primaryColor = [paletteCopy primaryColor];
  v5 = [primaryColor colorWithAlphaComponent:0.5];

LABEL_7:

  return v5;
}

- (id)dialFillColorForColorPalette:(id)palette
{
  if ([palette isWhiteColor])
  {
    NTKColorWithRGBA(229, 229, 229, 1.0);
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v3 = ;

  return v3;
}

- (id)bezelTextColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  if ([paletteCopy isWhiteColor])
  {
    v4 = MEMORY[0x277D75348];
    v5 = 0.15;
  }

  else
  {
    isBlackColor = [paletteCopy isBlackColor];
    v4 = MEMORY[0x277D75348];
    if (isBlackColor)
    {
      v5 = 0.85;
    }

    else
    {
      v5 = 0.944444444;
    }
  }

  v7 = [v4 colorWithWhite:v5 alpha:1.0];

  return v7;
}

- (id)platterTextColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  if ([paletteCopy isWhiteColor])
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    if ([paletteCopy isBlackColor])
    {
      [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    blackColor = ;
  }

  v5 = blackColor;

  return v5;
}

- (id)complicationForegroundColorPalette:(id)palette
{
  paletteCopy = palette;
  if ([paletteCopy isWhiteColor])
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    if ([paletteCopy isBlackColor])
    {
      [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    }

    else
    {
      [paletteCopy primaryColor];
    }
    blackColor = ;
  }

  v5 = blackColor;

  return v5;
}

@end