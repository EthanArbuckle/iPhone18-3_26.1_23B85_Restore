@interface HMNumberRange(HFAdditions)
- (BOOL)hf_isEqual:()HFAdditions;
@end

@implementation HMNumberRange(HFAdditions)

- (BOOL)hf_isEqual:()HFAdditions
{
  v7 = a3;
  if (a1 != v7)
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

    v11 = [a1 minValue];
    if (v11 || ([v10 minValue], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [a1 minValue];
      if (!v12)
      {
LABEL_13:
        v15 = 0;
LABEL_14:
        if (!v11)
        {
        }

        goto LABEL_19;
      }

      v3 = v12;
      v4 = [v10 minValue];
      if (!v4)
      {
LABEL_12:

        goto LABEL_13;
      }

      v13 = [a1 minValue];
      v14 = [v10 minValue];
      if ([v13 compare:v14])
      {

        goto LABEL_12;
      }

      v26 = v14;
      v27 = v13;
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = [a1 maxValue];
    if (v18 || ([v10 maxValue], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = [a1 maxValue];
      if (v19)
      {
        v20 = v19;
        v29 = v17;
        v21 = [v10 maxValue];
        if (v21)
        {
          v22 = v21;
          v24 = [a1 maxValue];
          [v10 maxValue];
          v23 = v25 = v5;
          v15 = [v24 compare:v23] == 0;

          v5 = v25;
        }

        else
        {

          v15 = 0;
        }

        v17 = v29;
        if (v18)
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
        if (v18)
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