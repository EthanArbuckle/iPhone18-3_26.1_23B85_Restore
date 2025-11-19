@interface HKValueRange
+ (HKValueRange)valueRangeWithMinValue:(id)a3 maxValue:(id)a4;
- (BOOL)containsValue:(id)a3 exclusiveStart:(BOOL)a4 exclusiveEnd:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)hk_midPointToValue:(id)a3 percentage:(double)a4;
- (void)unionMaxValueWithRange:(id)a3;
- (void)unionMinValueWithRange:(id)a3;
- (void)unionRange:(id)a3;
@end

@implementation HKValueRange

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (v4 == self)
    {
      v6 = 1;
    }

    else
    {
      v7 = [(HKValueRange *)self minValue];
      v8 = [(HKValueRange *)v4 minValue];
      v9 = [(HKValueRange *)self maxValue];
      v10 = [(HKValueRange *)v4 maxValue];
      if (v7 == v8 || [v7 isEqual:v8])
      {
        if (v9 == v10)
        {
          v6 = 1;
        }

        else
        {
          v6 = [v9 isEqual:v10];
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_minValue);
  objc_storeStrong(v4 + 2, self->_maxValue);
  return v4;
}

+ (HKValueRange)valueRangeWithMinValue:(id)a3 maxValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = v5;
  v9 = v5;

  v10 = v7[2];
  v7[2] = v6;

  return v7;
}

- (void)unionRange:(id)a3
{
  v4 = a3;
  [(HKValueRange *)self unionMinValueWithRange:v4];
  [(HKValueRange *)self unionMaxValueWithRange:v4];
}

- (void)unionMinValueWithRange:(id)a3
{
  v9 = a3;
  v4 = [(HKValueRange *)self minValue];
  if (!v4 || ([v9 minValue], v5 = objc_claimAutoreleasedReturnValue(), IsSmaller = HKUIObjectIsSmaller(v5, v4), v5, IsSmaller))
  {
    v7 = [v9 minValue];
    minValue = self->_minValue;
    self->_minValue = v7;
  }
}

- (void)unionMaxValueWithRange:(id)a3
{
  v9 = a3;
  v4 = [(HKValueRange *)self maxValue];
  if (!v4 || ([v9 maxValue], v5 = objc_claimAutoreleasedReturnValue(), IsLarger = HKUIObjectIsLarger(v5, v4), v5, IsLarger))
  {
    v7 = [v9 maxValue];
    maxValue = self->_maxValue;
    self->_maxValue = v7;
  }
}

- (BOOL)containsValue:(id)a3 exclusiveStart:(BOOL)a4 exclusiveEnd:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = v8;
  minValue = self->_minValue;
  if (minValue)
  {
    v11 = !v6;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    IsLargerOrEqual = HKUIObjectIsLargerOrEqual(v8, minValue);
  }

  else
  {
    IsLargerOrEqual = HKUIObjectIsLarger(v8, minValue);
  }

  v13 = IsLargerOrEqual;
  maxValue = self->_maxValue;
  if (maxValue)
  {
    v15 = !v5;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    IsSmallerOrEqual = HKUIObjectIsSmallerOrEqual(v9, maxValue);
  }

  else
  {
    IsSmallerOrEqual = HKUIObjectIsSmaller(v9, maxValue);
  }

  v17 = IsSmallerOrEqual;

  return v13 && v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKValueRange;
  v4 = [(HKValueRange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ min=%@ max=%@", v4, self->_minValue, self->_maxValue];

  return v5;
}

- (NSDate)startDate
{
  v3 = [(HKValueRange *)self minValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(HKValueRange *)self minValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDate)endDate
{
  v3 = [(HKValueRange *)self maxValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(HKValueRange *)self maxValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hk_midPointToValue:(id)a3 percentage:(double)a4
{
  v6 = a3;
  v7 = [(HKValueRange *)self minValue];
  v8 = [v6 minValue];
  v9 = [(HKValueRange *)self maxValue];
  v10 = [v6 maxValue];

  v11 = [v7 hk_midPointToValue:v8 percentage:a4];
  v12 = [v9 hk_midPointToValue:v10 percentage:a4];
  v13 = [HKValueRange valueRangeWithMinValue:v11 maxValue:v12];

  return v13;
}

@end