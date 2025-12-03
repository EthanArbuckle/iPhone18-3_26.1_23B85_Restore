@interface HFTemperatureIconDescriptor
- (BOOL)isEqual:(id)equal;
- (HFTemperatureIconDescriptor)initWithFormattedTemperature:(id)temperature heatingCoolingMode:(int64_t)mode targetHeatingCoolingMode:(int64_t)coolingMode;
- (NSString)identifier;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HFTemperatureIconDescriptor

- (HFTemperatureIconDescriptor)initWithFormattedTemperature:(id)temperature heatingCoolingMode:(int64_t)mode targetHeatingCoolingMode:(int64_t)coolingMode
{
  temperatureCopy = temperature;
  v13.receiver = self;
  v13.super_class = HFTemperatureIconDescriptor;
  v10 = [(HFTemperatureIconDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_formattedTemperature, temperature);
    v11->_heatingCoolingMode = mode;
    v11->_targetHeatingCoolingMode = coolingMode;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      formattedTemperature = [(HFTemperatureIconDescriptor *)v5 formattedTemperature];
      formattedTemperature2 = [(HFTemperatureIconDescriptor *)self formattedTemperature];
      if (formattedTemperature == formattedTemperature2)
      {
        v10 = 1;
      }

      else
      {
        formattedTemperature3 = [(HFTemperatureIconDescriptor *)v5 formattedTemperature];
        formattedTemperature4 = [(HFTemperatureIconDescriptor *)self formattedTemperature];
        v10 = [formattedTemperature3 isEqualToString:formattedTemperature4];
      }

      heatingCoolingMode = [(HFTemperatureIconDescriptor *)v5 heatingCoolingMode];
      v11 = (heatingCoolingMode == [(HFTemperatureIconDescriptor *)self heatingCoolingMode]) & v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  formattedTemperature = [(HFTemperatureIconDescriptor *)self formattedTemperature];
  v3 = [formattedTemperature hash];

  return v3;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = compareCopy;
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
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFTemperatureIconDescriptor heatingCoolingMode](self, "heatingCoolingMode")}];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "heatingCoolingMode")}];
    v10 = [v8 compare:v9];

    if (!v10)
    {
      formattedTemperature = [(HFTemperatureIconDescriptor *)self formattedTemperature];
      formattedTemperature2 = [v7 formattedTemperature];
      v10 = [formattedTemperature compare:formattedTemperature2];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end