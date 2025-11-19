@interface NSString(GTMNSStringHTMLAdditions)
- (__CFString)gtm_stringByEscapingHTMLUsingTable:()GTMNSStringHTMLAdditions ofSize:escapingUnicode:;
- (id)gtm_stringByUnescapingFromHTML;
@end

@implementation NSString(GTMNSStringHTMLAdditions)

- (id)gtm_stringByUnescapingFromHTML
{
  v2 = [a1 length];
  v3 = [a1 rangeOfString:@"&" options:4 range:{0, v2}];
  if (v4)
  {
    v5 = v3;
    v25 = [MEMORY[0x277CCAB68] stringWithString:a1];
    do
    {
      v6 = [a1 rangeOfString:@";" options:0 range:{v5, v2 - v5}];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v6 - v5;
        v8 = [a1 substringWithRange:{v5, v6 - v5 + 1}];
        v9 = [v8 length];
        v10 = v9 - 4;
        if ((v9 - 4) <= 6)
        {
          v11 = v9;
          if ([v8 characterAtIndex:1] == 35)
          {
            if (([v8 characterAtIndex:2] & 0xFFFFFFDF) == 0x58)
            {
              v12 = [v8 substringWithRange:{3, v10}];
              v13 = [MEMORY[0x277CCAC80] scannerWithString:v12];
              v29 = 0;
              if ([v13 scanHexInt:&v29])
              {
                v14 = (v29 - 1) > 0xFFFD;
              }

              else
              {
                v14 = 1;
              }

              if (!v14 && [v13 scanLocation] == v10)
              {
                v28 = v29;
                v15 = [MEMORY[0x277CCACA8] stringWithCharacters:&v28 length:1];
                [v25 replaceCharactersInRange:v5 withString:{v7 + 1, v15}];
              }
            }

            else
            {
              v18 = v11 - 3;
              v12 = [v8 substringWithRange:{2, v11 - 3}];
              v19 = [MEMORY[0x277CCAC80] scannerWithString:v12];
              v27 = 0;
              if ([v19 scanInt:&v27])
              {
                v20 = (v27 - 1) > 0xFFFD;
              }

              else
              {
                v20 = 1;
              }

              if (!v20 && [v19 scanLocation] == v18)
              {
                v26 = v27;
                v21 = [MEMORY[0x277CCACA8] stringWithCharacters:&v26 length:1];
                [v25 replaceCharactersInRange:v5 withString:{v7 + 1, v21}];
              }
            }
          }

          else
          {
            v16 = 253;
            v17 = &gAsciiHTMLEscapeMap;
            while (![v8 isEqualToString:*v17])
            {
              v17 += 2;
              if (!--v16)
              {
                goto LABEL_27;
              }
            }

            v12 = [MEMORY[0x277CCACA8] stringWithCharacters:v17 + 1 length:1];
            [v25 replaceCharactersInRange:v5 withString:{v7 + 1, v12}];
          }
        }

LABEL_27:
      }

      v2 = v5;
      v5 = [a1 rangeOfString:@"&" options:4 range:{0, v5}];
    }

    while (v22);
    v23 = v25;
  }

  else
  {
    v23 = a1;
  }

  return v23;
}

- (__CFString)gtm_stringByEscapingHTMLUsingTable:()GTMNSStringHTMLAdditions ofSize:escapingUnicode:
{
  v9 = [(__CFString *)a1 length];
  if (!v9)
  {
    v16 = a1;
    goto LABEL_26;
  }

  v10 = v9;
  v11 = [MEMORY[0x277CCAB68] string];
  v12 = [MEMORY[0x277CBEB28] dataWithCapacity:2 * v10];
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    goto LABEL_5;
  }

  v14 = [MEMORY[0x277CBEB28] dataWithLength:2 * v10];
  if (v14)
  {
    v15 = v14;
    -[__CFString getCharacters:](a1, "getCharacters:", [v14 mutableBytes]);
    CharactersPtr = [v15 bytes];

LABEL_5:
    v16 = 0;
    if (CharactersPtr && v12)
    {
      v23 = v12;
      v17 = [v12 mutableBytes];
      v18 = 0;
      v19 = a4 >> 4;
      do
      {
        v20 = bsearch(CharactersPtr, a3, v19, 0x10uLL, EscapeMapCompare);
        if (v20 || (v21 = *CharactersPtr, a5) && v21 >= 0x80)
        {
          if (v18)
          {
            CFStringAppendCharacters(v11, v17, v18);
          }

          if (v20)
          {
            [(__CFString *)v11 appendString:*v20];
          }

          else
          {
            [(__CFString *)v11 appendFormat:@"&#%d;", *CharactersPtr];
          }

          v18 = 0;
        }

        else
        {
          v17[v18++] = v21;
        }

        ++CharactersPtr;
        --v10;
      }

      while (v10);
      if (v18)
      {
        CFStringAppendCharacters(v11, v17, v18);
      }

      v16 = v11;
      v12 = v23;
    }

    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:

LABEL_26:

  return v16;
}

@end