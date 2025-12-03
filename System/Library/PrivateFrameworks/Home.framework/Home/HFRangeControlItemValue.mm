@interface HFRangeControlItemValue
+ (id)targetValueWithValue:(id)value;
+ (id)thresholdValueWithMinimumValue:(id)value maximumValue:(id)maximumValue;
- (BOOL)isEqual:(id)equal;
- (HFNumberRange)numberRange;
- (NSNumber)targetValue;
- (id)description;
- (unint64_t)hash;
@end

@implementation HFRangeControlItemValue

+ (id)thresholdValueWithMinimumValue:(id)value maximumValue:(id)maximumValue
{
  maximumValueCopy = maximumValue;
  valueCopy = value;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setMode:2];
  [v7 setMinimumValue:valueCopy];

  [v7 setMaximumValue:maximumValueCopy];

  return v7;
}

+ (id)targetValueWithValue:(id)value
{
  valueCopy = value;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setMode:1];
  [v4 setTargetValue:valueCopy];

  return v4;
}

- (NSNumber)targetValue
{
  targetValue = self->_targetValue;
  if (targetValue)
  {
    v3 = targetValue;
  }

  else
  {
    v5 = MEMORY[0x277CCABB0];
    minimumValue = [(HFRangeControlItemValue *)self minimumValue];
    [minimumValue doubleValue];
    v8 = v7;
    maximumValue = [(HFRangeControlItemValue *)self maximumValue];
    [maximumValue doubleValue];
    v3 = [v5 numberWithDouble:(v8 + v10) * 0.5];
  }

  return v3;
}

- (HFNumberRange)numberRange
{
  mode = [(HFRangeControlItemValue *)self mode];
  if (mode >= 2)
  {
    if (mode != 2)
    {
      goto LABEL_6;
    }

    maximumValue = [(HFRangeControlItemValue *)self maximumValue];
    minimumValue = [(HFRangeControlItemValue *)self minimumValue];
    v2 = [HFNumberRange rangeWithMaxValue:maximumValue minValue:minimumValue];
  }

  else
  {
    maximumValue = [(HFRangeControlItemValue *)self targetValue];
    v2 = [HFNumberRange valueWithValue:maximumValue];
  }

LABEL_6:

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    mode = [(HFRangeControlItemValue *)self mode];
    if (mode == [v5 mode])
    {
      if ([(HFRangeControlItemValue *)self mode]== 1 || ![(HFRangeControlItemValue *)self mode])
      {
        targetValue = [(HFRangeControlItemValue *)self targetValue];
        targetValue2 = [v5 targetValue];
        v10 = targetValue;
        v11 = targetValue2;
        if (v10 == v11)
        {
          v7 = 1;
        }

        else if (v10)
        {
          v7 = [v10 isEqual:v11];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 1;
      }

      if ([(HFRangeControlItemValue *)self mode]== 2 || ![(HFRangeControlItemValue *)self mode])
      {
        minimumValue = [(HFRangeControlItemValue *)self minimumValue];
        minimumValue2 = [v5 minimumValue];
        v14 = minimumValue;
        v15 = minimumValue2;
        if (v14 == v15)
        {
          v16 = 1;
        }

        else if (v14)
        {
          v16 = [v14 isEqual:v15];
        }

        else
        {
          v16 = 0;
        }

        maximumValue = [(HFRangeControlItemValue *)self maximumValue];
        maximumValue2 = [v5 maximumValue];
        v19 = maximumValue;
        v20 = maximumValue2;
        if (v19 == v20)
        {
          v21 = 1;
        }

        else if (v19)
        {
          v21 = [v19 isEqual:v20];
        }

        else
        {
          v21 = 0;
        }

        v7 &= v16 & v21;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  mode = [(HFRangeControlItemValue *)self mode];
  if (mode < 2)
  {
    targetValue = [(HFRangeControlItemValue *)self targetValue];
    v2 = [targetValue hash];
LABEL_5:

    return v2;
  }

  if (mode == 2)
  {
    targetValue = [(HFRangeControlItemValue *)self minimumValue];
    v6 = [targetValue hash];
    maximumValue = [(HFRangeControlItemValue *)self maximumValue];
    v2 = [maximumValue hash] ^ v6;

    goto LABEL_5;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  targetValue = [(HFRangeControlItemValue *)self targetValue];
  minimumValue = [(HFRangeControlItemValue *)self minimumValue];
  maximumValue = [(HFRangeControlItemValue *)self maximumValue];
  v7 = [v3 stringWithFormat:@"%@, min %@ max %@", targetValue, minimumValue, maximumValue];

  return v7;
}

@end