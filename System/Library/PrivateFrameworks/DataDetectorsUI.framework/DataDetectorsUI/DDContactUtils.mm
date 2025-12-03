@interface DDContactUtils
+ (__CFString)normalizedPhoneNumberFromString:(uint64_t)string;
+ (uint64_t)phoneNumber:(void *)number isEqualToPhoneNumber:;
@end

@implementation DDContactUtils

+ (uint64_t)phoneNumber:(void *)number isEqualToPhoneNumber:
{
  v4 = a2;
  numberCopy = number;
  v6 = objc_opt_self();
  v7 = 0;
  if (v4 && numberCopy)
  {
    if (v4 == numberCopy)
    {
      v7 = 1;
    }

    else
    {
      v8 = v6;
      if ([v4 length] >= 5 && objc_msgSend(numberCopy, "length") > 4)
      {
        v9 = [(DDContactUtils *)v8 normalizedPhoneNumberFromString:v4];
        v10 = [(DDContactUtils *)v8 normalizedPhoneNumberFromString:numberCopy];
        v11 = v9;
        v12 = v10;
        v13 = [v11 length];
        v14 = [v12 length];
        if (v13 <= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        if (v13 >= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v13;
        }

        if (v15 && v16 / v15 >= 0.5)
        {
          if (v16)
          {
            v17 = 0;
            v18 = v14 - 1;
            v19 = v13 - 1;
            while (1)
            {
              v20 = [v11 characterAtIndex:v19];
              if (v20 != [v12 characterAtIndex:v18])
              {
                break;
              }

              ++v17;
              --v18;
              --v19;
              if (v16 == v17)
              {
                v21 = v16;
                goto LABEL_24;
              }
            }

            v21 = v17;
          }

          else
          {
            v21 = 0.0;
          }

LABEL_24:
          v7 = v21 / v16 >= 0.75;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = [v4 isEqualToString:numberCopy];
      }
    }
  }

  return v7;
}

+ (__CFString)normalizedPhoneNumberFromString:(uint64_t)string
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 length];
  if ((v3 - 31) < 0xFFFFFFFFFFFFFFE2)
  {
    v4 = &stru_282C1E0A8;
    goto LABEL_40;
  }

  v5 = v3;
  if (([v2 containsString:@"+"] & 1) != 0 || objc_msgSend(v2, "containsString:", @"＋"))
  {
    v6 = [v2 stringByReplacingOccurrencesOfString:@"(0)" withString:&stru_282C1E0A8];

    v5 = [v6 length];
    v2 = v6;
  }

  MEMORY[0x28223BE20]();
  v8 = (&v18 - ((v7 + 17) & 0xFFFFFFFFFFFFFFF0));
  [v2 getCharacters:v8 range:{0, v5}];
  if (!v5)
  {
    *v8 = 0;
    v4 = &stru_282C1E0A8;
    goto LABEL_40;
  }

  v18 = &v18;
  v9 = 0;
  v10 = 0;
  do
  {
    v12 = v8[v9];
    if (v12 >> 10 == 54)
    {
      if (v9 + 1 >= v5)
      {
        goto LABEL_17;
      }

      v13 = v8[v9 + 1];
      if ((v13 & 0xFC00) != 0xDC00)
      {
        goto LABEL_17;
      }

      v12 = v13 + (v12 << 10) - 56613888;
      ++v9;
    }

    else
    {
      if (v12 - 48 < 0xA)
      {
        goto LABEL_16;
      }

      if (v12 <= 0x2B && ((1 << v12) & 0xC0800000000) != 0)
      {
        goto LABEL_16;
      }

      if (v12 - 65 <= 0x19)
      {
        if (v12 < 0x57)
        {
          v11 = 56;
        }

        else
        {
          v11 = 57;
        }

        if (v12 == 83)
        {
          v11 = 55;
        }

        if (v12 <= 0x52)
        {
          LOWORD(v12) = (v12 - 65) / 3 + 50;
        }

        else
        {
          LOWORD(v12) = v11;
        }

        goto LABEL_16;
      }

      if (!v8[v9])
      {
        goto LABEL_17;
      }
    }

    if (u_isdigit(v12))
    {
      v14 = u_charDigitValue(v12);
      if (v14 <= 9)
      {
        LOWORD(v12) = v14 | 0x30;
LABEL_16:
        v8[v10++] = v12;
      }
    }

    else if (v12 == 65291)
    {
      LOWORD(v12) = 43;
      goto LABEL_16;
    }

LABEL_17:
    ++v9;
  }

  while (v9 < v5);
  v8[v10] = 0;
  if (v10)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithCharacters:v8 length:{v10, v18, v19}];
  }

  else
  {
    v4 = &stru_282C1E0A8;
  }

LABEL_40:

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

@end