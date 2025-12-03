@interface NSString(DYNSStringAdditions)
+ (uint64_t)dy_timeFormat:()DYNSStringAdditions unit:;
- (id)dy_removeWhiteSpaceCharacters;
- (uint64_t)dy_appendComponents:()DYNSStringAdditions usingSeparator:unique:;
- (uint64_t)dy_appendComponentsString:()DYNSStringAdditions usingSeparator:unique:;
- (uint64_t)dy_scanBuildPrefix:()DYNSStringAdditions number:;
- (uint64_t)simplifiedTestFileName:()DYNSStringAdditions;
@end

@implementation NSString(DYNSStringAdditions)

+ (uint64_t)dy_timeFormat:()DYNSStringAdditions unit:
{
  v6 = objc_opt_new();
  [v6 setMaximumFractionDigits:2];
  [v6 setAllowsFloats:1];
  [v6 setUsesGroupingSeparator:0];
  [v6 setRoundingMode:3];
  v7 = fabs(self);
  if (v7 >= 1.0)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self];
    v10 = @" s";
  }

  else if (v7 >= 0.001)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self * 1000.0];
    v10 = @" ms";
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    if (v7 >= 0.000001)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:self * 1000000.0];
      v10 = @" μs";
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:self * 1000000000.0];
      v10 = @" ns";
    }
  }

  v11 = [v6 stringFromNumber:v9];
  v12 = &stru_2860A9480;
  if (a4)
  {
    v12 = v10;
  }

  v13 = [v8 stringWithFormat:@"%@%@", v11, v12];

  return v13;
}

- (id)dy_removeWhiteSpaceCharacters
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self mutableCopy];
  v4 = [v3 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v4; i != 0x7FFFFFFFFFFFFFFFLL; i = [v3 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet])
    {
      [v3 deleteCharactersInRange:{i, v5}];
    }
  }

  return v3;
}

- (uint64_t)dy_scanBuildPrefix:()DYNSStringAdditions number:
{
  v7 = [MEMORY[0x277CCAC80] scannerWithString:self];
  if (![v7 scanInteger:0] || !objc_msgSend(v7, "scanCharactersFromSet:intoString:", objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"ABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0))
  {
    return 0;
  }

  if (a3)
  {
    *a3 = [self substringToIndex:{objc_msgSend(v7, "scanLocation")}];
  }

  return [v7 scanInteger:a4];
}

- (uint64_t)dy_appendComponents:()DYNSStringAdditions usingSeparator:unique:
{
  v27 = *MEMORY[0x277D85DE8];
  if ([self length])
  {
    v9 = [self componentsSeparatedByString:a4];
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
LABEL_3:
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      v12 = 1;
      do
      {
        v13 = v12;
        if (v9)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v14 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v23;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v23 != v16)
                {
                  objc_enumerationMutation(v9);
                }

                v18 = *(*(&v22 + 1) + 8 * i);
                if (([v10 containsObject:v18] & 1) == 0)
                {
                  [v11 addObject:v18];
                  [v10 addObject:v18];
                }
              }

              v15 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
            }

            while (v15);
          }
        }

        v12 = 0;
        v9 = a3;
      }

      while ((v13 & 1) != 0);

      v19 = v11;
      goto LABEL_19;
    }
  }

  if ([v9 count])
  {
    v19 = [v9 arrayByAddingObjectsFromArray:a3];
LABEL_19:
    a3 = v19;
  }

  result = [a3 componentsJoinedByString:a4];
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)dy_appendComponentsString:()DYNSStringAdditions usingSeparator:unique:
{
  if (![a3 length])
  {
    return self;
  }

  v9 = [a3 componentsSeparatedByString:a4];

  return [self dy_appendComponents:v9 usingSeparator:a4 unique:a5];
}

- (uint64_t)simplifiedTestFileName:()DYNSStringAdditions
{
  if (![self length])
  {
    *a3 = 0;
    return 0;
  }

  v5 = malloc_type_malloc([self length] + 1, 0xFFBD8F91uLL);
  v6 = [self cStringUsingEncoding:1];
  v7 = v5;
  while (1)
  {
    v8 = *v6;
    v9 = v8 - 32;
    if ((v8 - 32) > 0x3D)
    {
      goto LABEL_9;
    }

    if (((1 << v9) & 0x2800000004008301) == 0)
    {
      break;
    }

    if (v7 > v5 && *(v7 - 1) != 95)
    {
      LOBYTE(v8) = 95;
      goto LABEL_10;
    }

LABEL_11:
    ++v6;
  }

  if (((1 << v9) & 0x84) != 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*v6)
  {
LABEL_10:
    *v7++ = v8;
    goto LABEL_11;
  }

  v10 = v7 - 1;
  if (*(v7 - 1) != 95)
  {
    v10 = v7;
  }

  *v10 = 0;
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  free(v5);
  v12 = [v11 length];
  result = [objc_msgSend(MEMORY[0x277CCAC68] regularExpressionWithPattern:@"_0x[0-9a-f]+" options:1 error:{0), "stringByReplacingMatchesInString:options:range:withTemplate:", v11, 0, 0, v12, &stru_2860A9480}];
  *a3 = 0;
  return result;
}

@end