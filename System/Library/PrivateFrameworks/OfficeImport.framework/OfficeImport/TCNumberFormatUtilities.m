@interface TCNumberFormatUtilities
+ (id)cleanDateTimeFormatString:(id)a3 withMappings:(id)a4;
+ (id)cleanDateTimeSubstring:(id)a3 withMappings:(id)a4;
@end

@implementation TCNumberFormatUtilities

+ (id)cleanDateTimeFormatString:(id)a3 withMappings:(id)a4
{
  v5 = a3;
  v22 = a4;
  v6 = [MEMORY[0x277CCAB68] string];
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (![v5 length])
      {
        v11 = v5;
        goto LABEL_32;
      }

      v9 = [v5 rangeOfString:@"'"];
      v10 = v9;
      if (!((v9 != 0) | v7 & 1))
      {
        break;
      }

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0;
        v12 = v5;
        if ((v7 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if (!v9)
      {
        goto LABEL_24;
      }

      v16 = [v5 substringToIndex:v9];
      v11 = [v5 substringFromIndex:v10 + 1];

      if (v16)
      {
        v12 = v16;
        if ((v7 & 1) == 0)
        {
LABEL_20:
          v15 = [a1 cleanDateTimeSubstring:v12 withMappings:v22];
LABEL_21:
          v17 = v12;
          v18 = v15;

          if (!v18)
          {
            v19 = 0;
            goto LABEL_33;
          }

          [v6 appendString:v18];
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {

            goto LABEL_32;
          }

          goto LABEL_26;
        }

LABEL_7:
        if ([v12 rangeOfString:@""] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = [MEMORY[0x277CCAB68] stringWithString:v12];

          v12 = v13;
          [v13 replaceOccurrencesOfString:@" withString:@" options:2 range:{0, objc_msgSend(v13, "length")}];
        }

        if (v8)
        {
          v14 = @"%@";
        }

        else
        {
          v14 = @"%@";
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v12];
        goto LABEL_21;
      }

LABEL_25:
      v18 = 0;
LABEL_26:
      v8 = 0;
      v7 ^= 1u;
      v5 = v18;
LABEL_27:

      v5 = v11;
      if (!v11)
      {
        goto LABEL_32;
      }
    }

    if ([v6 length])
    {
      if ([v6 length] >= 2)
      {
        [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
      }

      [v6 appendString:@"'"];
      v7 = 1;
      v11 = [v5 substringFromIndex:1];
      v8 = 1;
      goto LABEL_27;
    }

LABEL_24:
    v11 = [v5 substringFromIndex:1];

    goto LABEL_25;
  }

  v11 = 0;
LABEL_32:
  v19 = v6;
LABEL_33:

  return v19;
}

+ (id)cleanDateTimeSubstring:(id)a3 withMappings:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 length])
  {
    if ([v5 rangeOfString:@"s:S"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v5 stringByReplacingOccurrencesOfString:@"s:S" withString:@"s.S"];

      v5 = v7;
    }

    v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"EMLdyYGDwFWhHKkmsSa"];
    v31 = v8;
    v9 = [v8 invertedSet];
    v30 = v9;
    v10 = [MEMORY[0x277CCAB68] string];
    if (v5)
    {
      while ([v5 length])
      {
        v11 = [v5 rangeOfCharacterFromSet:v9];
        v12 = v11;
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0;
          v15 = v5;
LABEL_13:
          v5 = v15;
          while (1)
          {
            if (![v5 length])
            {
LABEL_21:
              v9 = v30;
              v8 = v31;
              goto LABEL_26;
            }

            v16 = MEMORY[0x277CCA900];
            v17 = [v5 substringToIndex:1];
            v18 = [v16 characterSetWithCharactersInString:v17];
            v19 = [v18 invertedSet];

            v20 = [v5 rangeOfCharacterFromSet:v19];
            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = 0;
            }

            else
            {
              v22 = [v5 substringToIndex:v20];
              v21 = [v5 substringFromIndex:v20];

              v5 = v22;
            }

            v23 = [v6 objectForKey:v5];
            if (!v23)
            {
              break;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            [v10 appendString:v23];

            v5 = v21;
            if (!v21)
            {
              goto LABEL_21;
            }
          }

          v28 = 0;
          v5 = v14;
          v9 = v30;
          v8 = v31;
          goto LABEL_31;
        }

        if (v11)
        {
          v15 = [v5 substringToIndex:v11];
          v14 = [v5 substringFromIndex:v12];

          if (v15)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v13 = [v5 rangeOfCharacterFromSet:v8];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = 0;
          }

          else
          {
            v24 = [v5 substringToIndex:v13];
            v14 = [v5 substringFromIndex:v13];

            v5 = v24;
          }

          v25 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", .-:<>/"}];
          v26 = [v25 invertedSet];

          if ([v5 rangeOfCharacterFromSet:v26] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v5];

            v5 = v27;
          }

          [v10 appendString:v5];

LABEL_26:
        }

        v5 = v14;
        if (!v14)
        {
          break;
        }
      }
    }

    v28 = v10;
LABEL_31:
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

@end