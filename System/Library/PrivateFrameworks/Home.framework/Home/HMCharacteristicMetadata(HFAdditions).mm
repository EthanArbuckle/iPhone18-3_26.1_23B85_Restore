@interface HMCharacteristicMetadata(HFAdditions)
- (HFNumberValueConstraints)hf_numericValueConstraints;
- (id)hf_characteristicValueForPercentage:()HFAdditions;
- (id)hf_normalizedValueForValue:()HFAdditions;
- (id)hf_valueRoundedToNearestStepValue:()HFAdditions;
- (uint64_t)hf_isEqualToMetadata:()HFAdditions;
- (uint64_t)hf_isInteger;
- (uint64_t)hf_isNumeric;
- (uint64_t)hf_isValidValue:()HFAdditions;
- (uint64_t)hf_percentageForCharacteristicValue:()HFAdditions;
@end

@implementation HMCharacteristicMetadata(HFAdditions)

- (HFNumberValueConstraints)hf_numericValueConstraints
{
  if ([self hf_isNumeric])
  {
    v2 = [HFNumberValueConstraints alloc];
    minimumValue = [self minimumValue];
    maximumValue = [self maximumValue];
    stepValue = [self stepValue];
    v6 = [(HFNumberValueConstraints *)v2 initWithMinValue:minimumValue maxValue:maximumValue stepValue:stepValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)hf_isEqualToMetadata:()HFAdditions
{
  v4 = a3;
  minimumValue = [self minimumValue];
  minimumValue2 = [v4 minimumValue];
  v7 = minimumValue;
  v8 = minimumValue2;
  v9 = v8;
  if (v7 != v8)
  {
    v10 = 0;
    v11 = v8;
    v12 = v7;
LABEL_42:

    goto LABEL_43;
  }

  if (!v7)
  {

LABEL_7:
    maximumValue = [self maximumValue];
    maximumValue2 = [v4 maximumValue];
    v12 = maximumValue;
    v16 = maximumValue2;
    v11 = v16;
    if (v12 != v16)
    {
      v10 = 0;
      v17 = v16;
      v18 = v12;
LABEL_41:

      goto LABEL_42;
    }

    if (v12)
    {
      v19 = [v12 isEqual:v16];

      if (!v19)
      {
        v10 = 0;
        goto LABEL_42;
      }
    }

    else
    {
    }

    stepValue = [self stepValue];
    stepValue2 = [v4 stepValue];
    v18 = stepValue;
    v22 = stepValue2;
    v17 = v22;
    if (v18 != v22)
    {
      v10 = 0;
      v23 = v22;
      v24 = v18;
LABEL_40:

      goto LABEL_41;
    }

    if (v18)
    {
      v25 = [v18 isEqual:v22];

      if (!v25)
      {
        v10 = 0;
        goto LABEL_41;
      }
    }

    else
    {
    }

    maxLength = [self maxLength];
    maxLength2 = [v4 maxLength];
    v24 = maxLength;
    v28 = maxLength2;
    v23 = v28;
    if (v24 != v28)
    {
      v10 = 0;
      v29 = v28;
      v44 = v24;
LABEL_39:

      v24 = v44;
      goto LABEL_40;
    }

    if (v24)
    {
      v45 = [v24 isEqual:v28];

      if (!v45)
      {
        v10 = 0;
        goto LABEL_40;
      }
    }

    else
    {
    }

    v44 = v24;
    format = [self format];
    format2 = [v4 format];
    v31 = format;
    v32 = format2;
    v33 = v32;
    v42 = v32;
    v43 = v31;
    if (v31 == v32)
    {
      if (v31)
      {
        v34 = v31;
        v35 = v33;
        LODWORD(v38) = [v34 isEqual:v33];

        if (!v38)
        {
          v10 = 0;
LABEL_38:
          v29 = v42;
          v24 = v43;
          goto LABEL_39;
        }
      }

      else
      {
      }

      units = [self units];
      units2 = [v4 units];
      v31 = units;
      v40 = units2;
      if (v31 == v40)
      {
        if (v31)
        {
          v10 = [v31 isEqual:v40];
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }

      v33 = v40;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_38;
  }

  v13 = [v7 isEqual:v8];

  if (v13)
  {
    goto LABEL_7;
  }

  v10 = 0;
LABEL_43:

  return v10;
}

- (id)hf_normalizedValueForValue:()HFAdditions
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    hf_numericValueConstraints = [self hf_numericValueConstraints];
    v6 = [hf_numericValueConstraints normalizedValueForValue:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (id)hf_valueRoundedToNearestStepValue:()HFAdditions
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    hf_numericValueConstraints = [self hf_numericValueConstraints];
    v6 = [hf_numericValueConstraints roundedValueForValue:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (uint64_t)hf_isValidValue:()HFAdditions
{
  v4 = a3;
  if (v4)
  {
    validValues = [self validValues];
    if (!validValues || (v6 = validValues, [self validValues], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v4), v7, v6, v8))
    {
      objc_opt_class();
      v9 = v4;
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      minimumValue = [self minimumValue];
      if (minimumValue)
      {
        minimumValue2 = [self minimumValue];
        [minimumValue2 doubleValue];
        v15 = v14;
      }

      else
      {
        v15 = 2.22507386e-308;
      }

      maximumValue = [self maximumValue];
      if (maximumValue)
      {
        maximumValue2 = [self maximumValue];
        [maximumValue2 doubleValue];
        v20 = v19;
      }

      else
      {
        v20 = 1.79769313e308;
      }

      if (v11)
      {
        [v11 doubleValue];
        if (v21 >= v15)
        {
          [v11 doubleValue];
          if (v22 <= v20)
          {
            goto LABEL_17;
          }
        }
      }

      else if (([self hf_isNumeric] & 1) == 0)
      {
LABEL_17:
        v16 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v16 = 0;
      goto LABEL_20;
    }
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (uint64_t)hf_isInteger
{
  format = [self format];

  if (!format)
  {
    return 0;
  }

  if (_MergedGlobals_265 != -1)
  {
    dispatch_once(&_MergedGlobals_265, &__block_literal_global_4_7);
  }

  v3 = qword_280E03098;
  format2 = [self format];
  v5 = [v3 containsObject:format2];

  return v5;
}

- (uint64_t)hf_isNumeric
{
  if ([self hf_isInteger])
  {
    return 1;
  }

  format = [self format];
  v4 = [format isEqualToString:*MEMORY[0x277CCF6B8]];

  return v4;
}

- (id)hf_characteristicValueForPercentage:()HFAdditions
{
  if ([self hf_isNumeric])
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      NSLog(&cfstr_IncrementalSta.isa, *&a2);
    }

    v5 = a2;
    v6 = 0.0;
    v7 = fmaxf(v5, 0.0);
    minimumValue = [self minimumValue];
    if (minimumValue)
    {
      minimumValue2 = [self minimumValue];
      [minimumValue2 floatValue];
      v6 = v10;
    }

    v11 = fminf(v7, 1.0);

    maximumValue = [self maximumValue];
    if (maximumValue)
    {
      maximumValue2 = [self maximumValue];
      [maximumValue2 floatValue];
      v15 = v14;
    }

    else
    {
      v15 = 100.0;
    }

    v17 = v6 + (v11 * (v15 - v6));
    stepValue = [self stepValue];
    v20 = stepValue;
    if (stepValue)
    {
      [stepValue floatValue];
      v17 = *&v19 * roundf(v17 / *&v19);
    }

    *&v19 = v17;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (uint64_t)hf_percentageForCharacteristicValue:()HFAdditions
{
  v4 = a3;
  minimumValue = [self minimumValue];
  if (minimumValue)
  {
    minimumValue2 = [self minimumValue];
    [minimumValue2 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  maximumValue = [self maximumValue];
  if (maximumValue)
  {
    maximumValue2 = [self maximumValue];
    [maximumValue2 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 100.0;
  }

  v13 = MEMORY[0x277CCABB0];
  [v4 doubleValue];
  v15 = v14;

  return [v13 numberWithDouble:(v15 - v8) / (v12 - v8)];
}

@end