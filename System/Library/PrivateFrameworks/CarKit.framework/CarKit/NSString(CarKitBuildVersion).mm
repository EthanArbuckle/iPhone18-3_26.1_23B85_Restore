@interface NSString(CarKitBuildVersion)
- (uint64_t)cr_buildVersionCompare:()CarKitBuildVersion;
@end

@implementation NSString(CarKitBuildVersion)

- (uint64_t)cr_buildVersionCompare:()CarKitBuildVersion
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 length];
    v6 = [v4 length];
    if (v5)
    {
      if (v6)
      {
        v7 = [a1 componentsSeparatedByString:@"."];
        v8 = [v4 componentsSeparatedByString:@"."];
        v9 = [v7 count];
        if (v9 >= [v8 count])
        {
          v10 = v8;
        }

        else
        {
          v10 = v7;
        }

        v11 = [v10 count];
        if (v11)
        {
          v12 = 0;
          while (1)
          {
            v13 = [v7 objectAtIndex:v12];
            v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "integerValue")}];
            v15 = [v8 objectAtIndex:v12];
            v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "integerValue")}];
            v17 = [v14 compare:v16];

            if (v17)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (v11 >= [v7 count])
          {
LABEL_15:
            if (v11 >= [v8 count])
            {
              v17 = 0;
            }

            else
            {
              do
              {
                v21 = [v8 objectAtIndex:v11];
                v22 = [v21 integerValue];

                if (v22 >= 1)
                {
                  break;
                }

                ++v11;
              }

              while (v11 < [v8 count]);
              if (v22 <= 0)
              {
                v17 = 0;
              }

              else
              {
                v17 = -1;
              }
            }
          }

          else
          {
            v17 = 1;
            v18 = v11;
            while (1)
            {
              v19 = [v7 objectAtIndex:v18];
              v20 = [v19 integerValue];

              if (v20 >= 1)
              {
                break;
              }

              if (++v18 >= [v7 count])
              {
                goto LABEL_15;
              }
            }
          }
        }
      }

      else
      {
        v17 = 1;
      }
    }

    else if (v6)
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = -1;
  }

  return v17;
}

@end