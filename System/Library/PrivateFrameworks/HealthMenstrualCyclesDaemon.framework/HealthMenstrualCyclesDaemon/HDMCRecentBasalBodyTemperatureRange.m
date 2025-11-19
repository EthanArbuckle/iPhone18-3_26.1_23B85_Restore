@interface HDMCRecentBasalBodyTemperatureRange
- (BOOL)isEqual:(id)a3;
- (id)_initWithUpperQuantileValue:(double)a3 medianValue:(double)a4 lowerQuantileValue:(double)a5 unit:(id)a6;
- (id)description;
- (id)recentBasalBodyTemperatureWithMostRecentQuantity:(id)a3;
- (unint64_t)hash;
- (void)initWithUpperQuantileQuantity:(void *)a3 medianQuantity:(void *)a4 lowerQuantileQuantity:;
@end

@implementation HDMCRecentBasalBodyTemperatureRange

- (id)_initWithUpperQuantileValue:(double)a3 medianValue:(double)a4 lowerQuantileValue:(double)a5 unit:(id)a6
{
  v10 = a6;
  v11 = [MEMORY[0x277CCD7E8] quantityWithUnit:v10 doubleValue:a3];
  v12 = [MEMORY[0x277CCD7E8] quantityWithUnit:v10 doubleValue:a4];
  v13 = [MEMORY[0x277CCD7E8] quantityWithUnit:v10 doubleValue:a5];
  v14 = [(HDMCRecentBasalBodyTemperatureRange *)self initWithUpperQuantileQuantity:v11 medianQuantity:v12 lowerQuantileQuantity:v13];

  return v14;
}

- (void)initWithUpperQuantileQuantity:(void *)a3 medianQuantity:(void *)a4 lowerQuantileQuantity:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = HDMCRecentBasalBodyTemperatureRange;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      v10 = [v7 copy];
      v11 = a1[1];
      a1[1] = v10;

      v12 = [v8 copy];
      v13 = a1[2];
      a1[2] = v12;

      v14 = [v9 copy];
      v15 = a1[3];
      a1[3] = v14;
    }
  }

  return a1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  median = self->_median;
  return [v3 stringWithFormat:@"<%@: %@, %@, %@>", v4, self->_lowerQuantile, median, self->_upperQuantile];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDMCRecentBasalBodyTemperatureRange;
  if (![(HDMCRecentBasalBodyTemperatureRange *)&v14 isEqual:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_16;
    }

    v6 = v4;
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

- (id)recentBasalBodyTemperatureWithMostRecentQuantity:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D119E0]) initWithMostRecent:v4 upperQuantile:self->_upperQuantile median:self->_median lowerQuantile:self->_lowerQuantile];

  return v5;
}

@end