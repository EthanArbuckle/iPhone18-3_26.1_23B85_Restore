@interface HDMCRecentBasalBodyTemperatureRange
- (BOOL)isEqual:(id)equal;
- (id)_initWithUpperQuantileValue:(double)value medianValue:(double)medianValue lowerQuantileValue:(double)quantileValue unit:(id)unit;
- (id)description;
- (id)recentBasalBodyTemperatureWithMostRecentQuantity:(id)quantity;
- (unint64_t)hash;
- (void)initWithUpperQuantileQuantity:(void *)quantity medianQuantity:(void *)medianQuantity lowerQuantileQuantity:;
@end

@implementation HDMCRecentBasalBodyTemperatureRange

- (id)_initWithUpperQuantileValue:(double)value medianValue:(double)medianValue lowerQuantileValue:(double)quantileValue unit:(id)unit
{
  unitCopy = unit;
  v11 = [MEMORY[0x277CCD7E8] quantityWithUnit:unitCopy doubleValue:value];
  v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:unitCopy doubleValue:medianValue];
  v13 = [MEMORY[0x277CCD7E8] quantityWithUnit:unitCopy doubleValue:quantileValue];
  v14 = [(HDMCRecentBasalBodyTemperatureRange *)self initWithUpperQuantileQuantity:v11 medianQuantity:v12 lowerQuantileQuantity:v13];

  return v14;
}

- (void)initWithUpperQuantileQuantity:(void *)quantity medianQuantity:(void *)medianQuantity lowerQuantileQuantity:
{
  v7 = a2;
  quantityCopy = quantity;
  medianQuantityCopy = medianQuantity;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = HDMCRecentBasalBodyTemperatureRange;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
    {
      v10 = [v7 copy];
      v11 = self[1];
      self[1] = v10;

      v12 = [quantityCopy copy];
      v13 = self[2];
      self[2] = v12;

      v14 = [medianQuantityCopy copy];
      v15 = self[3];
      self[3] = v14;
    }
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  median = self->_median;
  return [v3 stringWithFormat:@"<%@: %@, %@, %@>", v4, self->_lowerQuantile, median, self->_upperQuantile];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = HDMCRecentBasalBodyTemperatureRange;
  if (![(HDMCRecentBasalBodyTemperatureRange *)&v14 isEqual:equalCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_16;
    }

    v6 = equalCopy;
    upperQuantile = self->_upperQuantile;
    v8 = v6[1];
    if (upperQuantile != v8 && (!v8 || ![(HKQuantity *)upperQuantile isEqual:?]))
    {
      goto LABEL_14;
    }

    median = self->_median;
    v10 = v6[2];
    if (median != v10 && (!v10 || ![(HKQuantity *)median isEqual:?]))
    {
      goto LABEL_14;
    }

    lowerQuantile = self->_lowerQuantile;
    v12 = v6[3];
    if (lowerQuantile == v12)
    {
      v5 = 1;
      goto LABEL_15;
    }

    if (v12)
    {
      v5 = [(HKQuantity *)lowerQuantile isEqual:?];
    }

    else
    {
LABEL_14:
      v5 = 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v5 = 1;
LABEL_16:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HKQuantity *)self->_upperQuantile hash];
  v4 = [(HKQuantity *)self->_median hash]^ v3;
  return v4 ^ [(HKQuantity *)self->_lowerQuantile hash];
}

- (id)recentBasalBodyTemperatureWithMostRecentQuantity:(id)quantity
{
  quantityCopy = quantity;
  v5 = [objc_alloc(MEMORY[0x277D119E0]) initWithMostRecent:quantityCopy upperQuantile:self->_upperQuantile median:self->_median lowerQuantile:self->_lowerQuantile];

  return v5;
}

@end