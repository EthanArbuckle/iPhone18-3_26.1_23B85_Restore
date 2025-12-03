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
  LODWORD(result) = [self getWhite:&v2 alpha:0];
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
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v2 = dynamicAlteranteColor(labelColor);
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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v2 = dynamicAlteranteColor(secondaryLabelColor);
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
  sf_mobileSafariFrameworkBundle = [v4 sf_mobileSafariFrameworkBundle];
  v7 = [self colorNamed:v5 inBundle:sf_mobileSafariFrameworkBundle compatibleWithTraitCollection:0];

  return v7;
}

- (uint64_t)safari_isCloseToWhite
{
  v5 = 0;
  v3 = 0.0;
  v4 = 0.0;
  v2 = 0;
  result = [self getHue:&v5 saturation:&v4 brightness:&v3 alpha:&v2];
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
  if ([self getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    selfCopy = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 0.75 alpha:v4];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)sf_slightlyDarkenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([self getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    selfCopy = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 0.9 alpha:v4];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)sf_brightenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([self getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    selfCopy = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 1.25 alpha:v4];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)sf_muchBrightenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([self getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    selfCopy = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 1.5 alpha:v4];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)sf_muchDarkenedColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([self getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    selfCopy = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 * 0.5 alpha:v4];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)safari_labelColorFromNumber:()MobileSafariExtras
{
  integerValue = [a3 integerValue];
  if (integerValue == 2)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else if (integerValue == 1)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    if (integerValue)
    {
      [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    tertiaryLabelColor = ;
  }

  return tertiaryLabelColor;
}

@end