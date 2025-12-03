@interface NSString(SFUJsonAdditions)
- (uint64_t)sfu_appendJsonStringToString:()SFUJsonAdditions;
@end

@implementation NSString(SFUJsonAdditions)

- (uint64_t)sfu_appendJsonStringToString:()SFUJsonAdditions
{
  if (sfu_appendJsonStringToString__onceToken != -1)
  {
    [NSString(SFUJsonAdditions) sfu_appendJsonStringToString:];
  }

  [a3 appendString:@""];
  if ([self rangeOfCharacterFromSet:sfu_appendJsonStringToString__escapeCharacters] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [self length];
    v6 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    [self getCharacters:v6];
    if (!v5)
    {
LABEL_33:
      free(v6);
      return [a3 appendString:@""];
    }

    v7 = v6;
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      v14 = v9;
      if (v9 <= 12)
      {
        if (v8 > 9)
        {
          if (v8 == 10)
          {
            v10 = a3;
            v11 = @"\\n";
          }

          else
          {
            if (v8 != 12)
            {
              goto LABEL_28;
            }

            v10 = a3;
            v11 = @"\\f";
          }
        }

        else if (v8 == 8)
        {
          v10 = a3;
          v11 = @"\\b";
        }

        else
        {
          if (v8 != 9)
          {
            goto LABEL_28;
          }

          v10 = a3;
          v11 = @"\\t";
        }
      }

      else if (v8 <= 91)
      {
        if (v8 == 13)
        {
          v10 = a3;
          v11 = @"\\r";
        }

        else
        {
          if (v8 != 34)
          {
LABEL_28:
            if (v8 < 0x20)
            {
              v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\u%.4x", v8];
            }

            else
            {
              v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&v14 length:1];
            }

            v11 = v12;
            v10 = a3;
            goto LABEL_32;
          }

          v10 = a3;
          v11 = @"\\"";
        }
      }

      else
      {
        switch(v8)
        {
          case 0x5C:
            v10 = a3;
            v11 = @"\\\\"";
            break;
          case 0x2028:
            v10 = a3;
            v11 = @"\\u2028";
            break;
          case 0x2029:
            v10 = a3;
            v11 = @"\\u2029";
            break;
          default:
            goto LABEL_28;
        }
      }

LABEL_32:
      [v10 appendString:v11];
      if (!--v5)
      {
        goto LABEL_33;
      }
    }
  }

  [a3 appendString:self];
  return [a3 appendString:@""];
}

@end