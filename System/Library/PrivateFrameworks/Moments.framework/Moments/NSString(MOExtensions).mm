@interface NSString(MOExtensions)
- (__CFString)mask;
@end

@implementation NSString(MOExtensions)

- (__CFString)mask
{
  if ([self length])
  {
    if ([self length] == 1)
    {
      v2 = @"*";
    }

    else
    {
      if ([self length] == 2)
      {
        v3 = MEMORY[0x277CCACA8];
        v4 = [self substringToIndex:1];
        v2 = [v3 stringWithFormat:@"%@*", v4];
      }

      else
      {
        v5 = ([self length] * 0.499999);
        v6 = [self length];
        if ((v6 - v5) >> 1 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = (v6 - v5) >> 1;
        }

        v8 = [self length];
        v9 = MEMORY[0x277CCACA8];
        v4 = [self substringToIndex:v7];
        v10 = [&stru_2840EECB0 stringByPaddingToLength:v5 withString:@"*" startingAtIndex:0];
        v11 = [self substringFromIndex:{v5 - v8 + objc_msgSend(self, "length") + v7}];
        v2 = [v9 stringWithFormat:@"%@%@%@", v4, v10, v11];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end