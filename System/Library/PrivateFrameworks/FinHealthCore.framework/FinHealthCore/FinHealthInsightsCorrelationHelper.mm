@interface FinHealthInsightsCorrelationHelper
+ (id)kendallCoefficientWithIndexedAmountSums:(id)sums;
+ (id)spearmanCoefficientWithIndexedAmountSums:(id)sums;
@end

@implementation FinHealthInsightsCorrelationHelper

+ (id)kendallCoefficientWithIndexedAmountSums:(id)sums
{
  sumsCopy = sums;
  v4 = sumsCopy;
  if (!sumsCopy || [sumsCopy count] < 2)
  {
    goto LABEL_14;
  }

  if ([v4 count] == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    do
    {
      for (i = v7; i < [v4 count]; ++i)
      {
        v9 = [v4 objectAtIndex:v7];
        v10 = [v4 objectAtIndex:i];
        v11 = [v9 lessThan:v10];

        if (v11)
        {
          ++v5;
        }

        else
        {
          v12 = [v4 objectAtIndex:v7];
          v13 = [v4 objectAtIndex:i];
          v14 = [v12 greaterThan:v13];

          v6 += v14;
        }
      }

      ++v7;
    }

    while (v7 < [v4 count] - 1);
  }

  if (v6 + v5)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:(v5 - v6) / (v6 + v5)];
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

  return v15;
}

+ (id)spearmanCoefficientWithIndexedAmountSums:(id)sums
{
  sumsCopy = sums;
  v4 = sumsCopy;
  if (sumsCopy && [sumsCopy count] >= 2)
  {
    v5 = [v4 count];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = 0x277CCA000uLL;
    v41 = v5;
    if (v5 < 2)
    {
      v20 = v5;
      v9 = 1;
      v21 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      v10 = v5;
      for (i = 1; i != v5; ++i)
      {
        v12 = [v4 objectAtIndex:{i, v41}];
        v13 = [v4 objectAtIndex:i - 1];
        v14 = [v12 compare:v13];

        if (v14)
        {
          if (v9)
          {
            v43 = v5 - i;
            v15 = v10 / v9;
            v16 = v8;
            for (j = 1; j <= v9; ++j)
            {
              v18 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v15];
              v19 = [v4 objectAtIndex:v16];
              [v6 setObject:v18 forKey:v19];

              --v16;
            }

            v9 = 1;
            v5 = v41;
            v10 = v43;
          }

          else
          {
            v9 = 1;
            v10 = v5 - i;
          }
        }

        else
        {
          v10 += v5 - i;
          ++v9;
        }

        ++v8;
      }

      v7 = 0x277CCA000;
      if (!v9)
      {
        goto LABEL_19;
      }

      v20 = v10 / v9;
      v21 = v5;
    }

    v23 = v21 - 1;
    for (k = 1; k <= v9; ++k)
    {
      v25 = [objc_alloc(*(v7 + 2432)) initWithDouble:v20];
      v26 = [v4 objectAtIndex:v23];
      [v6 setObject:v25 forKey:v26];

      --v23;
    }

LABEL_19:
    zero = [*(v7 + 2432) zero];
    v28 = zero;
    if (v5)
    {
      v29 = 0;
      v30 = v5;
      do
      {
        v31 = [objc_alloc(*(v7 + 2432)) initWithInteger:v30];
        v32 = [v4 objectAtIndex:v29];
        v33 = [v6 objectForKey:v32];
        v34 = [v31 decimalNumberBySubtracting:v33];
        v35 = [v34 decimalNumberByRaisingToPower:2];

        v36 = [v28 decimalNumberByAdding:v35];

        v7 = 0x277CCA000;
        ++v29;
        v28 = v36;
        --v30;
      }

      while (v30);
    }

    else
    {
      v36 = zero;
    }

    v37 = [objc_alloc(*(v7 + 2432)) initWithDouble:(v42 * v42 + -1.0) * v42 / 6.0];
    v38 = [*(v7 + 2432) one];
    v39 = [v36 decimalNumberByDividingBy:v37];
    v22 = [v38 decimalNumberBySubtracting:v39];

    goto LABEL_25;
  }

  v22 = 0;
LABEL_25:

  return v22;
}

@end