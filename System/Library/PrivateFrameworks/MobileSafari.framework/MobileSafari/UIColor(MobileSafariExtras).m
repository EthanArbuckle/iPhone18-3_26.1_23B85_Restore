@interface UIColor(MobileSafariExtras)
+ (id)safari_labelColorFromNumber:()MobileSafariExtras;
+ (id)sf_alternateLabelColor;
+ (id)sf_alternateSecondaryLabelColor;
+ (id)sf_colorNamed:()MobileSafariExtras;
- (id)sf_brightenedColor;
- (id)sf_darkenedColor;
- (id)sf_muchBrightenedColor;
- (id)sf_muchDarkenedColor;
- (id)sf_slightlyDarkenedColor;
- (uint64_t)safari_isCloseToWhite;
- (uint64_t)sf_isDarkColor;
@end

@implementation UIColor(MobileSafariExtras)

- (uint64_t)sf_isDarkColor
{
  v2 = 0.0;
  LODWORD(result) = [a1 getWhite:&v2 alpha:0];
  if (v2 < 0.6)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

+ (id)sf_alternateLabelColor
{
  v0 = sf_alternateLabelColor_alternateLabelColor;
  if (!sf_alternateLabelColor_alternateLabelColor)
  {
    v1 = [MEMORY[0x1E69DC888] labelColor];
    v2 = dynamicAlteranteColor(v1);
    v3 = sf_alternateLabelColor_alternateLabelColor;
    sf_alternateLabelColor_alternateLabelColor = v2;

    v0 = sf_alternateLabelColor_alternateLabelColor;
  }

  return v0;
}

+ (id)sf_alternateSecondaryLabelColor
{
  v0 = sf_alternateSecondaryLabelColor_alternateSecondaryLabelColor;
  if (!sf_alternateSecondaryLabelColor_alternateSecondaryLabelColor)
  {
    v1 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v2 = dynamicAlteranteColor(v1);
    v3 = sf_alternateSecondaryLabelColor_alternateSecondaryLabelColor;
    sf_alternateSecondaryLabelColor_alternateSecondaryLabelColor = v2;

    v0 = sf_alternateSecondaryLabelColor_alternateSecondaryLabelColor;
  }

  return v0;
}

+ (id)sf_colorNamed:()MobileSafariExtras
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 sf_mobileSafariFrameworkBundle];
  v7 = [a1 colorNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

- (uint64_t)safari_isCloseToWhite
{
  v5 = 0;
  v3 = 0.0;
  v4 = 0.0;
  v2 = 0;
  result = [a1 getHue:&v5 saturation:&v4 brightness:&v3 alpha:&v2];
  if (result)
  {
    return v4 < 0.05 && v3 >= 0.9;
  }

  return result;
}

- (id)sf_darkenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([a1 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 0.75 alpha:v4];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)sf_slightlyDarkenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([a1 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 0.9 alpha:v4];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)sf_brightenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([a1 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 1.25 alpha:v4];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)sf_muchBrightenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([a1 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 1.5 alpha:v4];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)sf_muchDarkenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([a1 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 0.5 alpha:v4];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

+ (id)safari_labelColorFromNumber:()MobileSafariExtras
{
  v3 = [a3 integerValue];
  if (v3 == 2)
  {
    v4 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else if (v3 == 1)
  {
    v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    if (v3)
    {
      [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v4 = ;
  }

  return v4;
}

@end