@interface HMNumberRange(HFAdditions)
- (BOOL)hf_isEqual:()HFAdditions;
@end

@implementation HMNumberRange(HFAdditions)

- (BOOL)hf_isEqual:()HFAdditions
{
  v7 = a3;
  if (self != v7)
  {
    objc_opt_class();
    v8 = v7;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (!v10)
    {
      v15 = 0;
LABEL_19:

      goto LABEL_20;
    }

    minValue = [self minValue];
    if (minValue || ([v10 minValue], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      minValue2 = [self minValue];
      if (!minValue2)
      {
LABEL_13:
        v15 = 0;
LABEL_14:
        if (!minValue)
        {
        }

        goto LABEL_19;
      }

      v3 = minValue2;
      minValue3 = [v10 minValue];
      if (!minValue3)
      {
LABEL_12:

        goto LABEL_13;
      }

      minValue4 = [self minValue];
      minValue5 = [v10 minValue];
      if ([minValue4 compare:minValue5])
      {

        goto LABEL_12;
      }

      v26 = minValue5;
      v27 = minValue4;
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    maxValue = [self maxValue];
    if (maxValue || ([v10 maxValue], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      maxValue2 = [self maxValue];
      if (maxValue2)
      {
        v20 = maxValue2;
        v29 = v17;
        maxValue3 = [v10 maxValue];
        if (maxValue3)
        {
          v22 = maxValue3;
          maxValue4 = [self maxValue];
          [v10 maxValue];
          v23 = v25 = v5;
          v15 = [maxValue4 compare:v23] == 0;

          v5 = v25;
        }

        else
        {

          v15 = 0;
        }

        v17 = v29;
        if (maxValue)
        {
LABEL_32:

          if ((v17 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_36:

          goto LABEL_14;
        }
      }

      else
      {
        v15 = 0;
        if (maxValue)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v28 = 0;
      v15 = 1;
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

  v15 = 1;
LABEL_20:

  return v15;
}

@end