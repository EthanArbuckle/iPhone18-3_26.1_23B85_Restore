@interface TCNumberFormatUtilities
+ (id)cleanDateTimeFormatString:(id)string withMappings:(id)mappings;
+ (id)cleanDateTimeSubstring:(id)substring withMappings:(id)mappings;
@end

@implementation TCNumberFormatUtilities

+ (id)cleanDateTimeFormatString:(id)string withMappings:(id)mappings
{
  stringCopy = string;
  mappingsCopy = mappings;
  string = [MEMORY[0x277CCAB68] string];
  if (stringCopy)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (![stringCopy length])
      {
        v11 = stringCopy;
        goto LABEL_32;
      }

      v9 = [stringCopy rangeOfString:@"'"];
      v10 = v9;
      if (!((v9 != 0) | v7 & 1))
      {
        break;
      }

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0;
        v12 = stringCopy;
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

      v16 = [stringCopy substringToIndex:v9];
      v11 = [stringCopy substringFromIndex:v10 + 1];

      if (v16)
      {
        v12 = v16;
        if ((v7 & 1) == 0)
        {
LABEL_20:
          v15 = [self cleanDateTimeSubstring:v12 withMappings:mappingsCopy];
LABEL_21:
          v17 = v12;
          v18 = v15;

          if (!v18)
          {
            v19 = 0;
            goto LABEL_33;
          }

          [string appendString:v18];
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
      stringCopy = v18;
LABEL_27:

      stringCopy = v11;
      if (!v11)
      {
        goto LABEL_32;
      }
    }

    if ([string length])
    {
      if ([string length] >= 2)
      {
        [string deleteCharactersInRange:{objc_msgSend(string, "length") - 1, 1}];
      }

      [string appendString:@"'"];
      v7 = 1;
      v11 = [stringCopy substringFromIndex:1];
      v8 = 1;
      goto LABEL_27;
    }

LABEL_24:
    v11 = [stringCopy substringFromIndex:1];

    goto LABEL_25;
  }

  v11 = 0;
LABEL_32:
  v19 = string;
LABEL_33:

  return v19;
}

+ (id)cleanDateTimeSubstring:(id)substring withMappings:(id)mappings
{
  substringCopy = substring;
  mappingsCopy = mappings;
  if (substringCopy && [substringCopy length])
  {
    if ([substringCopy rangeOfString:@"s:S"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [substringCopy stringByReplacingOccurrencesOfString:@"s:S" withString:@"s.S"];

      substringCopy = v7;
    }

    v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"EMLdyYGDwFWhHKkmsSa"];
    v31 = v8;
    invertedSet = [v8 invertedSet];
    v30 = invertedSet;
    string = [MEMORY[0x277CCAB68] string];
    if (substringCopy)
    {
      while ([substringCopy length])
      {
        v11 = [substringCopy rangeOfCharacterFromSet:invertedSet];
        v12 = v11;
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0;
          v15 = substringCopy;
LABEL_13:
          substringCopy = v15;
          while (1)
          {
            if (![substringCopy length])
            {
LABEL_21:
              invertedSet = v30;
              v8 = v31;
              goto LABEL_26;
            }

            v16 = MEMORY[0x277CCA900];
            v17 = [substringCopy substringToIndex:1];
            v18 = [v16 characterSetWithCharactersInString:v17];
            invertedSet2 = [v18 invertedSet];

            v20 = [substringCopy rangeOfCharacterFromSet:invertedSet2];
            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = 0;
            }

            else
            {
              v22 = [substringCopy substringToIndex:v20];
              v21 = [substringCopy substringFromIndex:v20];

              substringCopy = v22;
            }

            v23 = [mappingsCopy objectForKey:substringCopy];
            if (!v23)
            {
              break;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            [string appendString:v23];

            substringCopy = v21;
            if (!v21)
            {
              goto LABEL_21;
            }
          }

          v28 = 0;
          substringCopy = v14;
          invertedSet = v30;
          v8 = v31;
          goto LABEL_31;
        }

        if (v11)
        {
          v15 = [substringCopy substringToIndex:v11];
          v14 = [substringCopy substringFromIndex:v12];

          if (v15)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v13 = [substringCopy rangeOfCharacterFromSet:v8];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = 0;
          }

          else
          {
            v24 = [substringCopy substringToIndex:v13];
            v14 = [substringCopy substringFromIndex:v13];

            substringCopy = v24;
          }

          v25 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", .-:<>/"}];
          invertedSet3 = [v25 invertedSet];

          if ([substringCopy rangeOfCharacterFromSet:invertedSet3] != 0x7FFFFFFFFFFFFFFFLL)
          {
            substringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", substringCopy];

            substringCopy = substringCopy;
          }

          [string appendString:substringCopy];

LABEL_26:
        }

        substringCopy = v14;
        if (!v14)
        {
          break;
        }
      }
    }

    v28 = string;
LABEL_31:
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

@end