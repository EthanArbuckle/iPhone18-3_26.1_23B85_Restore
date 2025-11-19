@interface HFColorPaletteColor
- (BOOL)isEqual:(id)a3;
- (BOOL)isNaturalLightColor;
- (BOOL)isSimilarToColor:(id)a3;
- (HFColorPaletteColor)initWithColorPrimitive:(id)a3;
- (HFColorPaletteColor)initWithColorValue:(id)a3;
- (HFColorPaletteColor)initWithDictionaryRepresentation:(id)a3;
- (HFColorPaletteColor)initWithNaturalLightColor;
- (HFColorPaletteColor)initWithRed:(float)a3 green:(float)a4 blue:(float)a5;
- (HFColorPaletteColor)initWithUIColor:(id)a3;
- (NSString)description;
- (UIColor)UIColor;
- (id)colorByAdjustingToColorProfile:(id)a3;
- (id)dictionaryRepresentationWithPreferredPaletteType:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation HFColorPaletteColor

- (HFColorPaletteColor)initWithRed:(float)a3 green:(float)a4 blue:(float)a5
{
  v9 = [HFRGBColor alloc];
  *&v10 = a3;
  *&v11 = a4;
  *&v12 = a5;
  v13 = [(HFRGBColor *)v9 initWithRed:v10 green:v11 blue:v12];
  v14 = [(HFColorPaletteColor *)self initWithColorPrimitive:v13];

  return v14;
}

- (HFColorPaletteColor)initWithUIColor:(id)a3
{
  v4 = a3;
  v5 = [[HFRGBColor alloc] initWithUIColor:v4];

  v6 = [[HFColorCollection alloc] initWithPrimitiveColor:v5];
  v7 = [(HFColorPaletteColor *)self initWithColorCollection:v6];

  return v7;
}

- (HFColorPaletteColor)initWithColorValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFColorPaletteColor;
  v6 = [(HFColorPaletteColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colorValue, a3);
  }

  return v7;
}

- (HFColorPaletteColor)initWithColorPrimitive:(id)a3
{
  v4 = a3;
  v5 = [[HFColorCollection alloc] initWithPrimitiveColor:v4];

  v6 = [(HFColorPaletteColor *)self initWithColorValue:v5];
  return v6;
}

- (HFColorPaletteColor)initWithNaturalLightColor
{
  v3 = objc_alloc_init(HFNaturalLightColor);
  v4 = [(HFColorPaletteColor *)self initWithColorValue:v3];

  return v4;
}

- (HFColorPaletteColor)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:@"r"];
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
  v9 = [v4 objectForKeyedSubscript:@"g"];
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
  v12 = [v4 objectForKeyedSubscript:@"b"];
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
  v25 = [v4 objectForKeyedSubscript:@"temp"];
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

    v31 = self;
  }

  else
  {
    NSLog(&cfstr_CouldNotFindAn.isa, v4);
    v31 = 0;
  }

  return v31;
}

- (id)dictionaryRepresentationWithPreferredPaletteType:(unint64_t)a3
{
  v5 = objc_opt_new();
  objc_opt_class();
  v6 = [(HFColorPaletteColor *)self colorValue];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1 || ([v8 temperatureColor], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v10 = [v8 RGBColor];
      v11 = MEMORY[0x277CCABB0];
      [v10 red];
      v12 = [v11 numberWithFloat:?];
      [v5 setObject:v12 forKeyedSubscript:@"r"];

      v13 = MEMORY[0x277CCABB0];
      [v10 green];
      v14 = [v13 numberWithFloat:?];
      [v5 setObject:v14 forKeyedSubscript:@"g"];

      v15 = MEMORY[0x277CCABB0];
      [v10 blue];
      v16 = [v15 numberWithFloat:?];
      [v5 setObject:v16 forKeyedSubscript:@"b"];
    }

    v17 = [v8 temperatureColor];

    if (v17)
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = [v8 temperatureColor];
      [v19 temperatureInKelvin];
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
  v3 = [(HFColorPaletteColor *)self colorValue];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 RGBColor];

  v7 = [v6 UIColor];

  return v7;
}

- (id)colorByAdjustingToColorProfile:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HFColorPaletteColor *)self colorValue];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = self;
  if (v7)
  {
    v9 = [HFColorPaletteColor alloc];
    v10 = [v7 colorByAdjustingForProfile:v4];
    v11 = [(HFColorPaletteColor *)v9 initWithColorCollection:v10];

    v8 = v11;
  }

  return v8;
}

- (BOOL)isSimilarToColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v5 = [(HFColorPaletteColor *)self colorValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 colorValue];
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
  v9 = [(HFColorPaletteColor *)self colorValue];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 RGBColor];

  objc_opt_class();
  v13 = [v4 colorValue];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 RGBColor];

  [v12 red];
  v18 = v17;
  [v16 red];
  v20 = vabds_f32(v18, v19);
  [v12 green];
  v22 = v21;
  [v16 green];
  v24 = v20 + vabds_f32(v22, v23);
  [v12 blue];
  v26 = v25;
  [v16 blue];
  v8 = ((v24 + vabds_f32(v26, v27)) / 3.0) <= 0.03;

LABEL_14:
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HFColorPaletteColor *)self colorValue];
    v6 = [v4 colorValue];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HFColorPaletteColor *)self colorValue];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFColorPaletteColor *)self colorValue];
  v5 = [v3 appendObject:v4 withName:@"color"];

  v6 = [v3 build];

  return v6;
}

- (BOOL)isNaturalLightColor
{
  v2 = [(HFColorPaletteColor *)self colorValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end