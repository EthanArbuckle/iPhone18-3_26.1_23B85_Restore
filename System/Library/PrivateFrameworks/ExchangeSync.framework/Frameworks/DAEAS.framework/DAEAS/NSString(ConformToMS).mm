@interface NSString(ConformToMS)
- (id)stringFormattedForMSVersioning;
@end

@implementation NSString(ConformToMS)

- (id)stringFormattedForMSVersioning
{
  v2 = objc_opt_new();
  v3 = [self length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [self characterAtIndex:v6];
      v8 = v7;
      if ((v8 - 48) <= 9)
      {
        break;
      }

      if (v8 <= 0x7F)
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x100) == 0)
        {
          goto LABEL_17;
        }

LABEL_9:
        v10 = (__tolower(v8) - 96);
        if (v10 >= 10)
        {
          v11 = &stru_285D39BD0;
        }

        else
        {
          v11 = @"0";
        }

        if (v5)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"000%@%d", v11, v10];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d.", v11, v10];
        }
        v9 = ;
        v5 = 1;
LABEL_16:
        [v2 appendString:v9];

        goto LABEL_17;
      }

      if (__maskrune(v7, 0x100uLL))
      {
        goto LABEL_9;
      }

LABEL_17:
      if (v4 == ++v6)
      {
        goto LABEL_18;
      }
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v8];
    goto LABEL_16;
  }

LABEL_18:

  return v2;
}

@end