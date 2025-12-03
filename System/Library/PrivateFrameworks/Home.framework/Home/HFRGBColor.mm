@interface HFRGBColor
- (BOOL)isEqual:(id)equal;
- (HFRGBColor)init;
- (HFRGBColor)initWithRed:(float)red green:(float)green blue:(float)blue;
- (HFRGBColor)initWithUIColor:(id)color;
- (NSString)description;
- (UIColor)UIColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueDescription;
- (unint64_t)hash;
- (void)getHue:(float *)hue saturation:(float *)saturation brightness:(float *)brightness;
@end

@implementation HFRGBColor

- (HFRGBColor)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRed_green_blue_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFColorPrimitive.m" lineNumber:21 description:{@"%s is unavailable; use %@ instead", "-[HFRGBColor init]", v5}];

  return 0;
}

- (HFRGBColor)initWithRed:(float)red green:(float)green blue:(float)blue
{
  v9.receiver = self;
  v9.super_class = HFRGBColor;
  result = [(HFRGBColor *)&v9 init];
  if (result)
  {
    result->_red = red;
    result->_green = green;
    result->_blue = blue;
  }

  return result;
}

- (HFRGBColor)initWithUIColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFColorPrimitive.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"color"}];
  }

  v13 = 0.0;
  v14 = 0.0;
  v12 = 0.0;
  [colorCopy getRed:&v14 green:&v13 blue:&v12 alpha:0];
  HIDWORD(v7) = HIDWORD(v13);
  HIDWORD(v6) = HIDWORD(v14);
  *&v6 = v14;
  *&v7 = v13;
  HIDWORD(v8) = HIDWORD(v12);
  *&v8 = v12;
  v9 = [(HFRGBColor *)self initWithRed:v6 green:v7 blue:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(HFRGBColor *)self red];
  v6 = v5;
  [(HFRGBColor *)self green];
  v8 = v7;
  [(HFRGBColor *)self blue];
  LODWORD(v9) = LODWORD(v10);
  LODWORD(v10) = v6;
  LODWORD(v11) = v8;

  return [v4 initWithRed:v10 green:v11 blue:v9];
}

- (UIColor)UIColor
{
  v3 = MEMORY[0x277D75348];
  [(HFRGBColor *)self red];
  v5 = v4;
  [(HFRGBColor *)self green];
  v7 = v6;
  [(HFRGBColor *)self blue];

  return [v3 colorWithRed:v5 green:v7 blue:v8 alpha:1.0];
}

- (void)getHue:(float *)hue saturation:(float *)saturation brightness:(float *)brightness
{
  v21 = 0.0;
  v22 = 0.0;
  v20 = 0.0;
  [(HFRGBColor *)self red];
  v10 = v9;
  [(HFRGBColor *)self green];
  v12 = v11;
  [(HFRGBColor *)self blue];
  v14 = v13;
  *v15.i64 = v10;
  *v16.i64 = v12;
  HFConvertRGBToHSB(&v22, &v21, &v20, v15, v16, v14);
  if (hue)
  {
    v17 = v22;
    *hue = v17;
  }

  if (saturation)
  {
    v18 = v21;
    *saturation = v18;
  }

  if (brightness)
  {
    v19 = v20;
    *brightness = v19;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(HFRGBColor *)self red];
      v7 = v6;
      [(HFRGBColor *)v5 red];
      if (vabds_f32(v7, v8) >= 0.001 || ([(HFRGBColor *)self green], v10 = v9, [(HFRGBColor *)v5 green], vabds_f32(v10, v11) >= 0.001))
      {
        v15 = 0;
      }

      else
      {
        [(HFRGBColor *)self blue];
        v13 = v12;
        [(HFRGBColor *)v5 blue];
        v15 = vabds_f32(v13, v14) < 0.001;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  [(HFRGBColor *)self red];
  v4 = vcvts_n_s32_f32(v3, 0x10uLL);
  [(HFRGBColor *)self green];
  v6 = 13 * (vcvts_n_s32_f32(v5, 0x10uLL) + 13 * v4);
  [(HFRGBColor *)self blue];
  return v6 + vcvts_n_s32_f32(v7, 0x10uLL);
}

- (id)valueDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(HFRGBColor *)self red];
  v5 = v4;
  [(HFRGBColor *)self green];
  v7 = v6;
  [(HFRGBColor *)self blue];
  return [v3 stringWithFormat:@"RGB(%f, %f, %f)", *&v5, *&v7, v8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HFRGBColor;
  v4 = [(HFRGBColor *)&v8 description];
  valueDescription = [(HFRGBColor *)self valueDescription];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, valueDescription];

  return v6;
}

@end