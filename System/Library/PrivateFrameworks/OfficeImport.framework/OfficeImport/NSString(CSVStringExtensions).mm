@interface NSString(CSVStringExtensions)
- (id)_copyCsvRows:()CSVStringExtensions usingDelimiter:columnCountIsConstant:rowLimit:;
- (void)copyCsvRows:()CSVStringExtensions rowLimit:;
@end

@implementation NSString(CSVStringExtensions)

- (id)_copyCsvRows:()CSVStringExtensions usingDelimiter:columnCountIsConstant:rowLimit:
{
  v34 = a4;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *a3 = 0;
  *a5 = 1;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  invertedSet = [whitespaceCharacterSet invertedSet];
  [whitespaceAndNewlineCharacterSet formIntersectionWithCharacterSet:invertedSet];

  v11 = MEMORY[0x277CCAB50];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v34];
  v13 = [v11 characterSetWithCharactersInString:v12];
  v30 = a5;
  v31 = a3;

  [v13 formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];
  v14 = [MEMORY[0x277CCAC80] scannerWithString:self];
  [v14 setCharactersToBeSkipped:0];
  while (2)
  {
    if ([v14 isAtEnd])
    {
      goto LABEL_34;
    }

    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v17 = 0;
    v18 = 0;
    while ((v18 & 1) == 0)
    {
      v19 = objc_autoreleasePoolPush();
      v37 = 0;
      v20 = [v14 scanUpToCharactersFromSet:v13 intoString:&v37];
      v21 = v37;
      if (v20)
      {
        [v16 appendString:v21];
      }

      if ([v14 isAtEnd])
      {
        [v15 addObject:v16];
        v18 = 1;
        v22 = v21;
        goto LABEL_23;
      }

      v36 = v21;
      v23 = [v14 scanCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:&v36];
      v22 = v36;

      if (v23)
      {
        v24 = v22;
        if (v17)
        {
          goto LABEL_11;
        }

        [v15 addObject:v16];
        v17 = 0;
        v18 = 1;
      }

      else if ([v14 scanString:@"" intoString:0])
      {
        if ((v17 & 1) != 0 && [v14 scanString:@"" intoString:0])
        {
          [v16 appendString:@""];
          goto LABEL_12;
        }

        v18 = 0;
        v17 ^= 1u;
      }

      else if ([v14 scanString:v34 intoString:0])
      {
        v24 = v34;
        if (v17)
        {
LABEL_11:
          [v16 appendString:v24];
LABEL_12:
          v18 = 0;
          v17 = 1;
          goto LABEL_23;
        }

        [v15 addObject:v16];
        v25 = objc_alloc_init(MEMORY[0x277CCAB68]);

        whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        [v14 scanCharactersFromSet:whitespaceCharacterSet2 intoString:0];

        v17 = 0;
        v18 = 0;
        v16 = v25;
      }

      else
      {
        [v14 setScanLocation:{objc_msgSend(v14, "scanLocation") + 1}];
        v18 = 0;
      }

LABEL_23:

      objc_autoreleasePoolPop(v19);
    }

    v27 = [v15 count];
    if (v27)
    {
      [v32 addObject:v15];
      v28 = *v31;
      if (*v31 && v27 != v28)
      {
        *v30 = 0;
      }

      if (v27 > v28)
      {
        *v31 = v27;
      }
    }

    if (a6 == -1 || [v32 count] < a6)
    {

      continue;
    }

    break;
  }

LABEL_34:
  return v32;
}

- (void)copyCsvRows:()CSVStringExtensions rowLimit:
{
  v14 = 0;
  v7 = [self _copyCsvRows:a3 usingDelimiter:@" columnCountIsConstant:" rowLimit:{&v14, a4}];
  if (*a3 == 1 || (v14 & 1) == 0)
  {
    v13 = 0;
    v12 = 0;
    v8 = [self _copyCsvRows:&v13 usingDelimiter:@";" columnCountIsConstant:&v12 rowLimit:a4];
    v9 = v8;
    if (v13 >= 2 && v12 == 1)
    {
      v10 = v8;

      *a3 = v13;
      v7 = v10;
    }
  }

  return v7;
}

@end