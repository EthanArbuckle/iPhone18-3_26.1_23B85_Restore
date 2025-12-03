@interface NSString(TSUVersionComparison)
- (uint64_t)tsu_compareToVersionString:()TSUVersionComparison;
@end

@implementation NSString(TSUVersionComparison)

- (uint64_t)tsu_compareToVersionString:()TSUVersionComparison
{
  v4 = a3;
  v5 = TokenizeVersionString(self);
  v6 = TokenizeVersionString(v4);
  v7 = v6;
  if (v5 | v6)
  {
    if (v5 || !v6)
    {
      if (!v5 || v6)
      {
        v10 = 0;
        while (1)
        {
          v11 = [v5 objectAtIndexedSubscript:v10];
          v12 = [v7 objectAtIndexedSubscript:v10];
          v8 = [v11 compare:v12];

          if (v8)
          {
            break;
          }

          if (++v10 == 3)
          {
            goto LABEL_2;
          }
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
LABEL_2:
    v8 = 0;
  }

  return v8;
}

@end