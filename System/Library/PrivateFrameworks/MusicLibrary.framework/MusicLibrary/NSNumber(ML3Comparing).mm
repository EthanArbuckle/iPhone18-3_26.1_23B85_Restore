@interface NSNumber(ML3Comparing)
- (uint64_t)ml_matchesValue:()ML3Comparing usingComparison:;
@end

@implementation NSNumber(ML3Comparing)

- (uint64_t)ml_matchesValue:()ML3Comparing usingComparison:
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [self compare:v7];
    v9 = 0;
    if (a4 > 5)
    {
      if ((a4 - 7) >= 3)
      {
        if (a4 != 6)
        {
          if (a4 == 10)
          {
            longLongValue = [self longLongValue];
            v9 = ([v7 longLongValue] & longLongValue) != 0;
          }

          goto LABEL_25;
        }

        v12 = v8 + 1 >= 2;
        goto LABEL_22;
      }
    }

    else
    {
      if (a4 > 2)
      {
        if (a4 == 3)
        {
          v10 = v8 == 1;
LABEL_17:
          v9 = v10;
          goto LABEL_25;
        }

        if (a4 != 4)
        {
          v10 = v8 == -1;
          goto LABEL_17;
        }

        v12 = v8 >= 2;
LABEL_22:
        v9 = !v12;
        goto LABEL_25;
      }

      if (a4 != 1)
      {
        if (a4 == 2)
        {
          v9 = [self isEqualToNumber:v7] ^ 1;
        }

        goto LABEL_25;
      }
    }

    v9 = [self isEqualToNumber:v7];
LABEL_25:

    goto LABEL_26;
  }

  v9 = 0;
LABEL_26:

  return v9;
}

@end