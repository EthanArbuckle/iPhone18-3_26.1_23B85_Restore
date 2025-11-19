@interface HFRangeControlItemValue
+ (id)targetValueWithValue:(id)a3;
+ (id)thresholdValueWithMinimumValue:(id)a3 maximumValue:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HFNumberRange)numberRange;
- (NSNumber)targetValue;
- (id)description;
- (unint64_t)hash;
@end

@implementation HFRangeControlItemValue

+ (id)thresholdValueWithMinimumValue:(id)a3 maximumValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setMode:2];
  [v7 setMinimumValue:v6];

  [v7 setMaximumValue:v5];

  return v7;
}

+ (id)targetValueWithValue:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setMode:1];
  [v4 setTargetValue:v3];

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
    v6 = [(HFRangeControlItemValue *)self minimumValue];
    [v6 doubleValue];
    v8 = v7;
    v9 = [(HFRangeControlItemValue *)self maximumValue];
    [v9 doubleValue];
    v3 = [v5 numberWithDouble:(v8 + v10) * 0.5];
  }

  return v3;
}

- (HFNumberRange)numberRange
{
  v4 = [(HFRangeControlItemValue *)self mode];
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v5 = [(HFRangeControlItemValue *)self maximumValue];
    v6 = [(HFRangeControlItemValue *)self minimumValue];
    v2 = [HFNumberRange rangeWithMaxValue:v5 minValue:v6];
  }

  else
  {
    v5 = [(HFRangeControlItemValue *)self targetValue];
    v2 = [HFNumberRange valueWithValue:v5];
  }

LABEL_6:

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(HFRangeControlItemValue *)self mode];
    if (v6 == [v5 mode])
    {
      if ([(HFRangeControlItemValue *)self mode]== 1 || ![(HFRangeControlItemValue *)self mode])
      {
        v8 = [(HFRangeControlItemValue *)self targetValue];
        v9 = [v5 targetValue];
        v10 = v8;
        v11 = v9;
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
        v12 = [(HFRangeControlItemValue *)self minimumValue];
        v13 = [v5 minimumValue];
        v14 = v12;
        v15 = v13;
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

        v17 = [(HFRangeControlItemValue *)self maximumValue];
        v18 = [v5 maximumValue];
        v19 = v17;
        v20 = v18;
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
  v4 = [(HFRangeControlItemValue *)self mode];
  if (v4 < 2)
  {
    v5 = [(HFRangeControlItemValue *)self targetValue];
    v2 = [v5 hash];
LABEL_5:

    return v2;
  }

  if (v4 == 2)
  {
    v5 = [(HFRangeControlItemValue *)self minimumValue];
    v6 = [v5 hash];
    v7 = [(HFRangeControlItemValue *)self maximumValue];
    v2 = [v7 hash] ^ v6;

    goto LABEL_5;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HFRangeControlItemValue *)self targetValue];
  v5 = [(HFRangeControlItemValue *)self minimumValue];
  v6 = [(HFRangeControlItemValue *)self maximumValue];
  v7 = [v3 stringWithFormat:@"%@, min %@ max %@", v4, v5, v6];

  return v7;
}

@end