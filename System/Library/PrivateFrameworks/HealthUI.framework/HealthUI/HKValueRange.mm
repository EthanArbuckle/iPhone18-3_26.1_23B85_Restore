@interface HKValueRange
+ (HKValueRange)valueRangeWithMinValue:(id)value maxValue:(id)maxValue;
- (BOOL)containsValue:(id)value exclusiveStart:(BOOL)start exclusiveEnd:(BOOL)end;
- (BOOL)isEqual:(id)equal;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)hk_midPointToValue:(id)value percentage:(double)percentage;
- (void)unionMaxValueWithRange:(id)range;
- (void)unionMinValueWithRange:(id)range;
- (void)unionRange:(id)range;
@end

@implementation HKValueRange

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (equalCopy == self)
    {
      v6 = 1;
    }

    else
    {
      minValue = [(HKValueRange *)self minValue];
      minValue2 = [(HKValueRange *)equalCopy minValue];
      maxValue = [(HKValueRange *)self maxValue];
      maxValue2 = [(HKValueRange *)equalCopy maxValue];
      if (minValue == minValue2 || [minValue isEqual:minValue2])
      {
        if (maxValue == maxValue2)
        {
          v6 = 1;
        }

        else
        {
          v6 = [maxValue isEqual:maxValue2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_minValue);
  objc_storeStrong(v4 + 2, self->_maxValue);
  return v4;
}

+ (HKValueRange)valueRangeWithMinValue:(id)value maxValue:(id)maxValue
{
  valueCopy = value;
  maxValueCopy = maxValue;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = valueCopy;
  v9 = valueCopy;

  v10 = v7[2];
  v7[2] = maxValueCopy;

  return v7;
}

- (void)unionRange:(id)range
{
  rangeCopy = range;
  [(HKValueRange *)self unionMinValueWithRange:rangeCopy];
  [(HKValueRange *)self unionMaxValueWithRange:rangeCopy];
}

- (void)unionMinValueWithRange:(id)range
{
  rangeCopy = range;
  minValue = [(HKValueRange *)self minValue];
  if (!minValue || ([rangeCopy minValue], v5 = objc_claimAutoreleasedReturnValue(), IsSmaller = HKUIObjectIsSmaller(v5, minValue), v5, IsSmaller))
  {
    minValue2 = [rangeCopy minValue];
    minValue = self->_minValue;
    self->_minValue = minValue2;
  }
}

- (void)unionMaxValueWithRange:(id)range
{
  rangeCopy = range;
  maxValue = [(HKValueRange *)self maxValue];
  if (!maxValue || ([rangeCopy maxValue], v5 = objc_claimAutoreleasedReturnValue(), IsLarger = HKUIObjectIsLarger(v5, maxValue), v5, IsLarger))
  {
    maxValue2 = [rangeCopy maxValue];
    maxValue = self->_maxValue;
    self->_maxValue = maxValue2;
  }
}

- (BOOL)containsValue:(id)value exclusiveStart:(BOOL)start exclusiveEnd:(BOOL)end
{
  endCopy = end;
  startCopy = start;
  valueCopy = value;
  v9 = valueCopy;
  minValue = self->_minValue;
  if (minValue)
  {
    v11 = !startCopy;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    IsLargerOrEqual = HKUIObjectIsLargerOrEqual(valueCopy, minValue);
  }

  else
  {
    IsLargerOrEqual = HKUIObjectIsLarger(valueCopy, minValue);
  }

  v13 = IsLargerOrEqual;
  maxValue = self->_maxValue;
  if (maxValue)
  {
    v15 = !endCopy;
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
  minValue = [(HKValueRange *)self minValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    minValue2 = [(HKValueRange *)self minValue];
  }

  else
  {
    minValue2 = 0;
  }

  return minValue2;
}

- (NSDate)endDate
{
  maxValue = [(HKValueRange *)self maxValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    maxValue2 = [(HKValueRange *)self maxValue];
  }

  else
  {
    maxValue2 = 0;
  }

  return maxValue2;
}

- (id)hk_midPointToValue:(id)value percentage:(double)percentage
{
  valueCopy = value;
  minValue = [(HKValueRange *)self minValue];
  minValue2 = [valueCopy minValue];
  maxValue = [(HKValueRange *)self maxValue];
  maxValue2 = [valueCopy maxValue];

  v11 = [minValue hk_midPointToValue:minValue2 percentage:percentage];
  v12 = [maxValue hk_midPointToValue:maxValue2 percentage:percentage];
  v13 = [HKValueRange valueRangeWithMinValue:v11 maxValue:v12];

  return v13;
}

@end