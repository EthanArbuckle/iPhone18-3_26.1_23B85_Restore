@interface HFTemperatureColorProfile
- (HFTemperatureColorProfile)initWithMinimumTemperature:(float)temperature maximumTemperature:(float)maximumTemperature;
- (id)adjustedColorPrimitiveForPrimitive:(id)primitive;
@end

@implementation HFTemperatureColorProfile

- (HFTemperatureColorProfile)initWithMinimumTemperature:(float)temperature maximumTemperature:(float)maximumTemperature
{
  v7.receiver = self;
  v7.super_class = HFTemperatureColorProfile;
  result = [(HFTemperatureColorProfile *)&v7 init];
  if (result)
  {
    result->_minimumTemperature = temperature;
    result->_maximumTemperature = maximumTemperature;
  }

  return result;
}

- (id)adjustedColorPrimitiveForPrimitive:(id)primitive
{
  primitiveCopy = primitive;
  objc_opt_class();
  v5 = primitiveCopy;
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