@interface HFColorPaletteColor
- (BOOL)isEqual:(id)equal;
- (BOOL)isNaturalLightColor;
- (BOOL)isSimilarToColor:(id)color;
- (HFColorPaletteColor)initWithColorPrimitive:(id)primitive;
- (HFColorPaletteColor)initWithColorValue:(id)value;
- (HFColorPaletteColor)initWithDictionaryRepresentation:(id)representation;
- (HFColorPaletteColor)initWithNaturalLightColor;
- (HFColorPaletteColor)initWithRed:(float)red green:(float)green blue:(float)blue;
- (HFColorPaletteColor)initWithUIColor:(id)color;
- (NSString)description;
- (UIColor)UIColor;
- (id)colorByAdjustingToColorProfile:(id)profile;
- (id)dictionaryRepresentationWithPreferredPaletteType:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation HFColorPaletteColor

- (HFColorPaletteColor)initWithRed:(float)red green:(float)green blue:(float)blue
{
  v9 = [HFRGBColor alloc];
  *&v10 = red;
  *&v11 = green;
  *&v12 = blue;
  v13 = [(HFRGBColor *)v9 initWithRed:v10 green:v11 blue:v12];
  v14 = [(HFColorPaletteColor *)self initWithColorPrimitive:v13];

  return v14;
}

- (HFColorPaletteColor)initWithUIColor:(id)color
{
  colorCopy = color;
  v5 = [[HFRGBColor alloc] initWithUIColor:colorCopy];

  v6 = [[HFColorCollection alloc] initWithPrimitiveColor:v5];
  v7 = [(HFColorPaletteColor *)self initWithColorCollection:v6];

  return v7;
}

- (HFColorPaletteColor)initWithColorValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = HFColorPaletteColor;
  v6 = [(HFColorPaletteColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colorValue, value);
  }

  return v7;
}

- (HFColorPaletteColor)initWithColorPrimitive:(id)primitive
{
  primitiveCopy = primitive;
  v5 = [[HFColorCollection alloc] initWithPrimitiveColor:primitiveCopy];

  v6 = [(HFColorPaletteColor *)self initWithColorValue:v5];
  return v6;
}

- (HFColorPaletteColor)initWithNaturalLightColor
{
  v3 = objc_alloc_init(HFNaturalLightColor);
  v4 = [(HFColorPaletteColor *)self initWithColorValue:v3];

  return v4;
}

- (HFColorPaletteColor)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  v6 = [representationCopy objectForKeyedSubscript:@"r"];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [representationCopy objectForKeyedSubscript:@"g"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = [representationCopy objectForKeyedSubscript:@"b"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v8 && v11 && v14)
  {
    v15 = [HFRGBColor alloc];
    [v8 floatValue];
    v17 = v16;
    [v11 floatValue];
    v19 = v18;
    [v14 floatValue];
    LODWORD(v21) = v20;
    LODWORD(v22) = v17;
    LODWORD(v23) = v19;
    v24 = [(HFRGBColor *)v15 initWithRed:v22 green:v23 blue:v21];
    [v5 addObject:v24];
  }

  objc_opt_class();
  v25 = [representationCopy objectForKeyedSubscript:@"temp"];
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v27)
  {
    v28 = [HFTemperatureColor alloc];
    [v27 floatValue];
    v29 = [(HFTemperatureColor *)v28 initWithTemperatureInKelvin:?];
    [v5 addObject:v29];
  }

  if ([v5 count])
  {
    v30 = [[HFColorCollection alloc] initWithPrimitiveColors:v5];
    self = [(HFColorPaletteColor *)self initWithColorCollection:v30];

    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_CouldNotFindAn.isa, representationCopy);
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentationWithPreferredPaletteType:(unint64_t)type
{
  v5 = objc_opt_new();
  objc_opt_class();
  colorValue = [(HFColorPaletteColor *)self colorValue];
  if (objc_opt_isKindOfClass())
  {
    v7 = colorValue;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    if ((type & 0xFFFFFFFFFFFFFFFDLL) != 1 || ([v8 temperatureColor], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      rGBColor = [v8 RGBColor];
      v11 = MEMORY[0x277CCABB0];
      [rGBColor red];
      v12 = [v11 numberWithFloat:?];
      [v5 setObject:v12 forKeyedSubscript:@"r"];

      v13 = MEMORY[0x277CCABB0];
      [rGBColor green];
      v14 = [v13 numberWithFloat:?];
      [v5 setObject:v14 forKeyedSubscript:@"g"];

      v15 = MEMORY[0x277CCABB0];
      [rGBColor blue];
      v16 = [v15 numberWithFloat:?];
      [v5 setObject:v16 forKeyedSubscript:@"b"];
    }

    temperatureColor = [v8 temperatureColor];

    if (temperatureColor)
    {
      v18 = MEMORY[0x277CCABB0];
      temperatureColor2 = [v8 temperatureColor];
      [temperatureColor2 temperatureInKelvin];
      v21 = [v18 numberWithUnsignedInteger:v20];
      [v5 setObject:v21 forKeyedSubscript:@"temp"];
    }

    v22 = v5;
  }

  else
  {
    NSLog(&cfstr_OnlyHfcolorcol.isa);
    v22 = 0;
  }

  return v22;
}

- (UIColor)UIColor
{
  objc_opt_class();
  colorValue = [(HFColorPaletteColor *)self colorValue];
  if (objc_opt_isKindOfClass())
  {
    v4 = colorValue;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  rGBColor = [v5 RGBColor];

  uIColor = [rGBColor UIColor];

  return uIColor;
}

- (id)colorByAdjustingToColorProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  colorValue = [(HFColorPaletteColor *)self colorValue];
  if (objc_opt_isKindOfClass())
  {
    v6 = colorValue;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  selfCopy = self;
  if (v7)
  {
    v9 = [HFColorPaletteColor alloc];
    v10 = [v7 colorByAdjustingForProfile:profileCopy];
    v11 = [(HFColorPaletteColor *)v9 initWithColorCollection:v10];

    selfCopy = v11;
  }

  return selfCopy;
}

- (BOOL)isSimilarToColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    v8 = 0;
    goto LABEL_14;
  }

  colorValue = [(HFColorPaletteColor *)self colorValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorValue2 = [colorCopy colorValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = 1;
      goto LABEL_14;
    }
  }

  else
  {
  }

  objc_opt_class();
  colorValue3 = [(HFColorPaletteColor *)self colorValue];
  if (objc_opt_isKindOfClass())
  {
    v10 = colorValue3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  rGBColor = [v11 RGBColor];

  objc_opt_class();
  colorValue4 = [colorCopy colorValue];
  if (objc_opt_isKindOfClass())
  {
    v14 = colorValue4;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  rGBColor2 = [v15 RGBColor];

  [rGBColor red];
  v18 = v17;
  [rGBColor2 red];
  v20 = vabds_f32(v18, v19);
  [rGBColor green];
  v22 = v21;
  [rGBColor2 green];
  v24 = v20 + vabds_f32(v22, v23);
  [rGBColor blue];
  v26 = v25;
  [rGBColor2 blue];
  v8 = ((v24 + vabds_f32(v26, v27)) / 3.0) <= 0.03;

LABEL_14:
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorValue = [(HFColorPaletteColor *)self colorValue];
    colorValue2 = [equalCopy colorValue];
    v7 = [colorValue isEqual:colorValue2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  colorValue = [(HFColorPaletteColor *)self colorValue];
  v3 = [colorValue hash];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  colorValue = [(HFColorPaletteColor *)self colorValue];
  v5 = [v3 appendObject:colorValue withName:@"color"];

  build = [v3 build];

  return build;
}

- (BOOL)isNaturalLightColor
{
  colorValue = [(HFColorPaletteColor *)self colorValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end