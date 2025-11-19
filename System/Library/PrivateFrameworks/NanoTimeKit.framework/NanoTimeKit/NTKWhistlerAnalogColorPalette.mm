@interface NTKWhistlerAnalogColorPalette
- (NTKWhistlerAnalogColorPalette)initWithDevice:(id)a3;
- (id)bezelTextColorForColorPalette:(id)a3;
- (id)complicationForegroundColorPalette:(id)a3;
- (id)dialFillColorForColorPalette:(id)a3;
- (id)handFillColorForColorPalette:(id)a3;
- (id)hourTicksColorForColorPalette:(id)a3;
- (id)minuteTicksColorForColorPalette:(id)a3;
- (id)platterTextColorForColorPalette:(id)a3;
- (id)secondHandColorForColorPalette:(id)a3;
@end

@implementation NTKWhistlerAnalogColorPalette

- (NTKWhistlerAnalogColorPalette)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKWhistlerAnalogColorPalette;
  v6 = [(NTKWhistlerAnalogColorPalette *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)handFillColorForColorPalette:(id)a3
{
  if ([a3 isWhiteColor])
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

- (id)secondHandColorForColorPalette:(id)a3
{
  v3 = a3;
  if (([v3 isMulticolor] & 1) != 0 || (objc_msgSend(v3, "isBlackColor") & 1) != 0 || objc_msgSend(v3, "isWhiteColor"))
  {
    v4 = [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    v4 = [v3 primaryColor];
  }

  v5 = v4;

  return v5;
}

- (id)hourTicksColorForColorPalette:(id)a3
{
  if ([a3 isWhiteColor])
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

- (id)minuteTicksColorForColorPalette:(id)a3
{
  v3 = a3;
  if ([v3 isWhiteColor])
  {
    v4 = NTKColorWithRGBA(150, 150, 150, 1.0);
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 isBlackColor])
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
    goto LABEL_5;
  }

  v6 = [v3 primaryColor];
  v5 = [v6 colorWithAlphaComponent:0.5];

LABEL_7:

  return v5;
}

- (id)dialFillColorForColorPalette:(id)a3
{
  if ([a3 isWhiteColor])
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

- (id)bezelTextColorForColorPalette:(id)a3
{
  v3 = a3;
  if ([v3 isWhiteColor])
  {
    v4 = MEMORY[0x277D75348];
    v5 = 0.15;
  }

  else
  {
    v6 = [v3 isBlackColor];
    v4 = MEMORY[0x277D75348];
    if (v6)
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

- (id)platterTextColorForColorPalette:(id)a3
{
  v3 = a3;
  if ([v3 isWhiteColor])
  {
    v4 = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    if ([v3 isBlackColor])
    {
      [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v4 = ;
  }

  v5 = v4;

  return v5;
}

- (id)complicationForegroundColorPalette:(id)a3
{
  v3 = a3;
  if ([v3 isWhiteColor])
  {
    v4 = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    if ([v3 isBlackColor])
    {
      [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    }

    else
    {
      [v3 primaryColor];
    }
    v4 = ;
  }

  v5 = v4;

  return v5;
}

@end