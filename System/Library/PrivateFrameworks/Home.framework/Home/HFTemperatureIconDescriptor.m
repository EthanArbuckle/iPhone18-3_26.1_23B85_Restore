@interface HFTemperatureIconDescriptor
- (BOOL)isEqual:(id)a3;
- (HFTemperatureIconDescriptor)initWithFormattedTemperature:(id)a3 heatingCoolingMode:(int64_t)a4 targetHeatingCoolingMode:(int64_t)a5;
- (NSString)identifier;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation HFTemperatureIconDescriptor

- (HFTemperatureIconDescriptor)initWithFormattedTemperature:(id)a3 heatingCoolingMode:(int64_t)a4 targetHeatingCoolingMode:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HFTemperatureIconDescriptor;
  v10 = [(HFTemperatureIconDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_formattedTemperature, a3);
    v11->_heatingCoolingMode = a4;
    v11->_targetHeatingCoolingMode = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HFTemperatureIconDescriptor *)v5 formattedTemperature];
      v7 = [(HFTemperatureIconDescriptor *)self formattedTemperature];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HFTemperatureIconDescriptor *)v5 formattedTemperature];
        v9 = [(HFTemperatureIconDescriptor *)self formattedTemperature];
        v10 = [v8 isEqualToString:v9];
      }

      v12 = [(HFTemperatureIconDescriptor *)v5 heatingCoolingMode];
      v11 = (v12 == [(HFTemperatureIconDescriptor *)self heatingCoolingMode]) & v10;
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
  v2 = [(HFTemperatureIconDescriptor *)self formattedTemperature];
  v3 = [v2 hash];

  return v3;
}

- (NSString)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (int64_t)compare:(id)a3
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
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFTemperatureIconDescriptor heatingCoolingMode](self, "heatingCoolingMode")}];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "heatingCoolingMode")}];
    v10 = [v8 compare:v9];

    if (!v10)
    {
      v11 = [(HFTemperatureIconDescriptor *)self formattedTemperature];
      v12 = [v7 formattedTemperature];
      v10 = [v11 compare:v12];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end