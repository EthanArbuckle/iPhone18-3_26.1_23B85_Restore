@interface HFTemperatureColorProfile
- (HFTemperatureColorProfile)initWithMinimumTemperature:(float)a3 maximumTemperature:(float)a4;
- (id)adjustedColorPrimitiveForPrimitive:(id)a3;
@end

@implementation HFTemperatureColorProfile

- (HFTemperatureColorProfile)initWithMinimumTemperature:(float)a3 maximumTemperature:(float)a4
{
  v7.receiver = self;
  v7.super_class = HFTemperatureColorProfile;
  result = [(HFTemperatureColorProfile *)&v7 init];
  if (result)
  {
    result->_minimumTemperature = a3;
    result->_maximumTemperature = a4;
  }

  return result;
}

- (id)adjustedColorPrimitiveForPrimitive:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 temperatureInMired];
    v9 = v8;
    [(HFTemperatureColorProfile *)self adjustedTemperatureForTemperature:?];
    v11 = v10;
    if (vabds_f32(v10, v9) > 0.00000011921)
    {
      v12 = [HFTemperatureColor alloc];
      *&v13 = v11;
      v14 = [(HFTemperatureColor *)v12 initWithTemperatureInMired:v13];

      v5 = v14;
    }
  }

  return v5;
}

@end