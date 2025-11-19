@interface HFTemperatureColor
- (BOOL)isEqual:(id)a3;
- (HFTemperatureColor)init;
- (HFTemperatureColor)initWithTemperatureInMired:(float)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hf_RGBColorRepresentation;
- (id)valueDescription;
- (id)valueDescriptionInKelvin;
- (unint64_t)hash;
@end

@implementation HFTemperatureColor

- (HFTemperatureColor)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithTemperatureInMired_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFColorPrimitive.m" lineNumber:110 description:{@"%s is unavailable; use %@ instead", "-[HFTemperatureColor init]", v5}];

  return 0;
}

- (HFTemperatureColor)initWithTemperatureInMired:(float)a3
{
  v5.receiver = self;
  v5.super_class = HFTemperatureColor;
  result = [(HFTemperatureColor *)&v5 init];
  if (result)
  {
    result->_temperatureInMired = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  [(HFTemperatureColor *)self temperatureInMired];

  return [v4 initWithTemperatureInMired:?];
}

- (id)hf_RGBColorRepresentation
{
  v11 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  [(HFTemperatureColor *)self temperatureInKelvin];
  HFGetColorForLightTemperature(&v11, &v10, &v9, v2);
  v3 = [HFRGBColor alloc];
  HIDWORD(v4) = HIDWORD(v11);
  *&v4 = v11;
  HIDWORD(v6) = HIDWORD(v9);
  HIDWORD(v5) = HIDWORD(v10);
  *&v5 = v10;
  *&v6 = v9;
  v7 = [(HFRGBColor *)v3 initWithRed:v4 green:v5 blue:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HFTemperatureColor *)self temperatureInMired];
      v6 = v5;
      [(HFTemperatureColor *)v4 temperatureInMired];
      v8 = vabds_f32(v6, v7) < 0.001;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CCABB0];
  [(HFTemperatureColor *)self temperatureInMired];
  v3 = [v2 numberWithFloat:?];
  v4 = [v3 hash];

  return v4;
}

- (id)valueDescription
{
  v2 = MEMORY[0x277CCACA8];
  [(HFTemperatureColor *)self temperatureInMired];
  return [v2 stringWithFormat:@"%fm", v3];
}

- (id)valueDescriptionInKelvin
{
  v2 = MEMORY[0x277CCACA8];
  [(HFTemperatureColor *)self temperatureInKelvin];
  return [v2 stringWithFormat:@"%.0fK", v3];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HFTemperatureColor;
  v4 = [(HFTemperatureColor *)&v8 description];
  v5 = [(HFTemperatureColor *)self valueDescription];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end