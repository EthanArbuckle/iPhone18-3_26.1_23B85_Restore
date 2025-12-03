@interface HKMCRecentBasalBodyTemperature
- (BOOL)isEqual:(id)equal;
- (HKMCRecentBasalBodyTemperature)initWithCoder:(id)coder;
- (HKMCRecentBasalBodyTemperature)initWithMostRecent:(id)recent upperQuantile:(id)quantile median:(id)median lowerQuantile:(id)lowerQuantile;
- (NSString)shortDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCRecentBasalBodyTemperature

- (HKMCRecentBasalBodyTemperature)initWithMostRecent:(id)recent upperQuantile:(id)quantile median:(id)median lowerQuantile:(id)lowerQuantile
{
  recentCopy = recent;
  quantileCopy = quantile;
  medianCopy = median;
  lowerQuantileCopy = lowerQuantile;
  v18.receiver = self;
  v18.super_class = HKMCRecentBasalBodyTemperature;
  v15 = [(HKMCRecentBasalBodyTemperature *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mostRecent, recent);
    objc_storeStrong(&v16->_upperQuantile, quantile);
    objc_storeStrong(&v16->_median, median);
    objc_storeStrong(&v16->_lowerQuantile, lowerQuantile);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  shortDescription = [(HKMCRecentBasalBodyTemperature *)self shortDescription];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, shortDescription];

  return v6;
}

- (NSString)shortDescription
{
  degreeCelsiusUnit = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v4 = MEMORY[0x277CCACA8];
  [(HKQuantity *)self->_mostRecent doubleValueForUnit:degreeCelsiusUnit];
  v6 = v5;
  [(HKQuantity *)self->_lowerQuantile doubleValueForUnit:degreeCelsiusUnit];
  v8 = v7;
  [(HKQuantity *)self->_median doubleValueForUnit:degreeCelsiusUnit];
  v10 = v9;
  [(HKQuantity *)self->_upperQuantile doubleValueForUnit:degreeCelsiusUnit];
  v12 = [v4 stringWithFormat:@"last:%.2f [%.2f, %.2f, %.2f] %@", v6, v8, v10, v11, degreeCelsiusUnit];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  mostRecent = self->_mostRecent;
  coderCopy = coder;
  [coderCopy encodeObject:mostRecent forKey:@"MostRecent"];
  [coderCopy encodeObject:self->_upperQuantile forKey:@"UpperQuantile"];
  [coderCopy encodeObject:self->_median forKey:@"Median"];
  [coderCopy encodeObject:self->_lowerQuantile forKey:@"LowerQuantile"];
}

- (HKMCRecentBasalBodyTemperature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MostRecent"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UpperQuantile"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Median"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LowerQuantile"];

  v9 = [(HKMCRecentBasalBodyTemperature *)self initWithMostRecent:v5 upperQuantile:v6 median:v7 lowerQuantile:v8];
  return v9;
}

@end