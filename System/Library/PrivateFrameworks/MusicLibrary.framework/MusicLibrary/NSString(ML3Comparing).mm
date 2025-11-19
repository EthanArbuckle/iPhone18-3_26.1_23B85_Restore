@interface NSString(ML3Comparing)
- (uint64_t)ml_matchesValue:()ML3Comparing usingComparison:;
@end

@implementation NSString(ML3Comparing)

- (uint64_t)ml_matchesValue:()ML3Comparing usingComparison:
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [a1 compare:v7];
    v9 = 0;
    if (a4 <= 4)
    {
      if (a4 <= 2)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v9 = [a1 isEqualToString:v7] ^ 1;
          }

          goto LABEL_29;
        }

        v10 = [a1 isEqualToString:v7];
        goto LABEL_28;
      }

      if (a4 != 3)
      {
        v11 = v8 >= 2;
        goto LABEL_17;
      }

      v12 = v8 == 1;
    }

    else
    {
      if (a4 > 6)
      {
        switch(a4)
        {
          case 7:
            v10 = [a1 containsString:v7];
            break;
          case 8:
            v10 = [a1 hasPrefix:v7];
            break;
          case 9:
            v10 = [a1 hasSuffix:v7];
            break;
          default:
LABEL_29:

            goto LABEL_30;
        }

LABEL_28:
        v9 = v10;
        goto LABEL_29;
      }

      if (a4 != 5)
      {
        v11 = v8 + 1 >= 2;
LABEL_17:
        v9 = !v11;
        goto LABEL_29;
      }

      v12 = v8 == -1;
    }

    v9 = v12;
    goto LABEL_29;
  }

  v9 = 0;
LABEL_30:

  return v9;
}

@end