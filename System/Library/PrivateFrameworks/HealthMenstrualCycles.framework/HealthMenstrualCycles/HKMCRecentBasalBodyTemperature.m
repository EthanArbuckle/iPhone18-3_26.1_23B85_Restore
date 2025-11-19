@interface HKMCRecentBasalBodyTemperature
- (BOOL)isEqual:(id)a3;
- (HKMCRecentBasalBodyTemperature)initWithCoder:(id)a3;
- (HKMCRecentBasalBodyTemperature)initWithMostRecent:(id)a3 upperQuantile:(id)a4 median:(id)a5 lowerQuantile:(id)a6;
- (NSString)shortDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCRecentBasalBodyTemperature

- (HKMCRecentBasalBodyTemperature)initWithMostRecent:(id)a3 upperQuantile:(id)a4 median:(id)a5 lowerQuantile:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HKMCRecentBasalBodyTemperature;
  v15 = [(HKMCRecentBasalBodyTemperature *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mostRecent, a3);
    objc_storeStrong(&v16->_upperQuantile, a4);
    objc_storeStrong(&v16->_median, a5);
    objc_storeStrong(&v16->_lowerQuantile, a6);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKMCRecentBasalBodyTemperature *)self shortDescription];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, v5];

  return v6;
}

- (NSString)shortDescription
{
  v3 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v4 = MEMORY[0x277CCACA8];
  [(HKQuantity *)self->_mostRecent doubleValueForUnit:v3];
  v6 = v5;
  [(HKQuantity *)self->_lowerQuantile doubleValueForUnit:v3];
  v8 = v7;
  [(HKQuantity *)self->_median doubleValueForUnit:v3];
  v10 = v9;
  [(HKQuantity *)self->_upperQuantile doubleValueForUnit:v3];
  v12 = [v4 stringWithFormat:@"last:%.2f [%.2f, %.2f, %.2f] %@", v6, v8, v10, v11, v3];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      mostRecent = self->_mostRecent;
      v7 = v5->_mostRecent;
      if (mostRecent != v7 && (!v7 || ![(HKQuantity *)mostRecent isEqual:?]))
      {
        goto LABEL_17;
      }

      upperQuantile = self->_upperQuantile;
      v9 = v5->_upperQuantile;
      if (upperQuantile != v9 && (!v9 || ![(HKQuantity *)upperQuantile isEqual:?]))
      {
        goto LABEL_17;
      }

      median = self->_median;
      v11 = v5->_median;
      if (median != v11 && (!v11 || ![(HKQuantity *)median isEqual:?]))
      {
        goto LABEL_17;
      }

      lowerQuantile = self->_lowerQuantile;
      v13 = v5->_lowerQuantile;
      if (lowerQuantile == v13)
      {
        v14 = 1;
        goto LABEL_18;
      }

      if (v13)
      {
        v14 = [(HKQuantity *)lowerQuantile isEqual:?];
      }

      else
      {
LABEL_17:
        v14 = 0;
      }

LABEL_18:

      goto LABEL_19;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(HKQuantity *)self->_mostRecent hash];
  v4 = [(HKQuantity *)self->_upperQuantile hash]^ v3;
  v5 = [(HKQuantity *)self->_median hash];
  return v4 ^ v5 ^ [(HKQuantity *)self->_lowerQuantile hash];
}

- (void)encodeWithCoder:(id)a3
{
  mostRecent = self->_mostRecent;
  v5 = a3;
  [v5 encodeObject:mostRecent forKey:@"MostRecent"];
  [v5 encodeObject:self->_upperQuantile forKey:@"UpperQuantile"];
  [v5 encodeObject:self->_median forKey:@"Median"];
  [v5 encodeObject:self->_lowerQuantile forKey:@"LowerQuantile"];
}

- (HKMCRecentBasalBodyTemperature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MostRecent"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpperQuantile"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Median"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LowerQuantile"];

  v9 = [(HKMCRecentBasalBodyTemperature *)self initWithMostRecent:v5 upperQuantile:v6 median:v7 lowerQuantile:v8];
  return v9;
}

@end