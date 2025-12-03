@interface NSString(ECPersonNameComponents)
+ (id)ec_nameExtensions;
+ (id)ec_partialSurnames;
+ (void)__ec_extractFirstName:()ECPersonNameComponents middleName:lastName:extension:fromString:;
- (__CFString)ec_trimCommasSpacesQuotes;
- (id)ec_personNameComponents;
- (uint64_t)ec_appearsToBeAnInitial;
@end

@implementation NSString(ECPersonNameComponents)

- (id)ec_personNameComponents
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  [objc_opt_class() __ec_extractFirstName:&v10 middleName:&v9 lastName:&v8 extension:&v7 fromString:self];
  v1 = v10;
  v2 = v9;
  v3 = v8;
  v4 = v7;
  v5 = objc_alloc_init(MEMORY[0x277CCAC00]);
  [v5 setGivenName:v1];
  [v5 setMiddleName:v2];
  [v5 setFamilyName:v3];
  [v5 setNameSuffix:v4];

  return v5;
}

+ (void)__ec_extractFirstName:()ECPersonNameComponents middleName:lastName:extension:fromString:
{
  v55 = a7;
  v7 = [v55 componentsSeparatedByString:{@", "}];
  v8 = v55;
  v54 = v7;
  if ([v7 count] >= 2)
  {
    ec_nameExtensions = [MEMORY[0x277CCACA8] ec_nameExtensions];
    lastObject = [v7 lastObject];
    ec_trimCommasSpacesQuotes = [lastObject ec_trimCommasSpacesQuotes];
    lowercaseString = [ec_trimCommasSpacesQuotes lowercaseString];
    v13 = [ec_nameExtensions containsObject:lowercaseString];

    v8 = v55;
    if ((v13 & 1) == 0)
    {
      if ([v7 count] < 3)
      {
        v18 = MEMORY[0x277CCACA8];
        v14 = [v7 objectAtIndex:1];
        lastObject2 = [v7 objectAtIndex:0];
        v8 = [v18 stringWithFormat:@"%@ %@", v14, lastObject2];
        v17 = v55;
      }

      else
      {
        v14 = [v7 mutableCopy];
        [v14 removeLastObject];
        v15 = MEMORY[0x277CCACA8];
        lastObject2 = [v7 lastObject];
        v17 = [v14 componentsJoinedByString:@" "];
        v8 = [v15 stringWithFormat:@"%@ %@", lastObject2, v17];
      }
    }
  }

  v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = [v8 length];
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    for (i = 0; v21 != i; ++i)
    {
      v25 = [v8 characterAtIndex:i];
      if (v25 > 90)
      {
        if (v25 == 91)
        {
          if ([v19 length])
          {
            [v20 addObject:v19];
          }

          v26 = objc_alloc_init(MEMORY[0x277CCAB68]);

          ++v22;
          goto LABEL_30;
        }

        if (v25 == 93)
        {
          if (v22)
          {
            --v22;
          }

          else
          {
            v22 = 0;
          }

          continue;
        }
      }

      else
      {
        if (v25 == 40)
        {
          if ([v19 length])
          {
            [v20 addObject:v19];
          }

          v26 = objc_alloc_init(MEMORY[0x277CCAB68]);

          ++v23;
LABEL_30:
          v19 = v26;
          continue;
        }

        if (v25 == 41)
        {
          if (v23)
          {
            --v23;
          }

          else
          {
            v23 = 0;
          }

          continue;
        }
      }

      if (!(v23 | v22))
      {
        if (v25 != 32)
        {
          [v19 appendFormat:@"%C", v25];
LABEL_34:
          v23 = 0;
          v22 = 0;
          continue;
        }

        if (![v19 length])
        {
          goto LABEL_34;
        }

        [v20 addObject:v19];
        v26 = objc_alloc_init(MEMORY[0x277CCAB68]);

        v23 = 0;
        v22 = 0;
        goto LABEL_30;
      }
    }
  }

  if ([v19 length])
  {
    [v20 addObject:v19];
  }

  v27 = [v20 count];
  if (v27 == 2)
  {
    *a3 = [v20 objectAtIndex:0];
    *a4 = 0;
    *a5 = [v20 objectAtIndex:1];
    goto LABEL_41;
  }

  if (v27 <= 1)
  {
    v28 = v8;
    *a3 = v8;
    *a4 = 0;
    *a5 = 0;
LABEL_41:
    *a6 = 0;
    goto LABEL_59;
  }

  lastObject3 = [v20 lastObject];
  ec_nameExtensions2 = [MEMORY[0x277CCACA8] ec_nameExtensions];
  v31 = lastObject3;
  v49 = lastObject3;
  lowercaseString2 = [lastObject3 lowercaseString];
  v33 = [ec_nameExtensions2 containsObject:lowercaseString2];

  if (v33)
  {
    v34 = v31;
    *a6 = v31;
    [v20 removeLastObject];
  }

  else
  {
    *a6 = 0;
  }

  v35 = 0;
  for (j = 1; ; ++j)
  {
    v37 = v19;
    if (j >= [v20 count] - 1)
    {
      break;
    }

    v19 = [v20 objectAtIndex:j];

    ec_partialSurnames = [MEMORY[0x277CCACA8] ec_partialSurnames];
    lowercaseString3 = [v19 lowercaseString];
    v40 = [ec_partialSurnames containsObject:lowercaseString3];

    if (v40)
    {
      v41 = MEMORY[0x277CCAB68];
      v42 = [v20 objectAtIndex:j + 1];
      v43 = [v41 stringWithFormat:@"%@ %@", v19, v42];

      [v20 replaceObjectAtIndex:j withObject:v43];
      v35 = v43;
      [v20 removeObjectAtIndex:j + 1];
    }
  }

  v44 = [v20 count];
  if (v44 < 4)
  {
    *a5 = [v20 lastObject];
    v46 = v49;
    [v20 removeLastObject];
  }

  else
  {
    v45 = [v20 objectAtIndex:v44 - 2];

    if ([v45 ec_appearsToBeAnInitial])
    {
      *a5 = [v20 lastObject];
      v19 = v45;
      v46 = v49;
    }

    else
    {
      lastObject4 = [v20 lastObject];

      *a5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v45, lastObject4];
      [v20 removeLastObject];
      v19 = v45;
      v46 = lastObject4;
    }

    [v20 removeLastObject];
  }

  *a3 = [v20 objectAtIndex:0];
  [v20 removeObjectAtIndex:0];
  v48 = [v20 count];
  if (v48)
  {
    v48 = [v20 componentsJoinedByString:@" "];
  }

  *a4 = v48;

LABEL_59:
}

+ (id)ec_nameExtensions
{
  if (ec_nameExtensions_onceToken != -1)
  {
    +[NSString(ECPersonNameComponents) ec_nameExtensions];
  }

  v1 = ec_nameExtensions_nameExtensions;

  return v1;
}

+ (id)ec_partialSurnames
{
  if (ec_partialSurnames_onceToken != -1)
  {
    +[NSString(ECPersonNameComponents) ec_partialSurnames];
  }

  v1 = ec_partialSurnames_partialSurnames;

  return v1;
}

- (uint64_t)ec_appearsToBeAnInitial
{
  v2 = [self length];
  if (v2 == 1)
  {
    return 1;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v3 = 1;
  if ([self characterAtIndex:1] != 46)
  {
    v3 = 1;
    if ([self characterAtIndex:1] != 93)
    {
      return 0;
    }
  }

  return v3;
}

- (__CFString)ec_trimCommasSpacesQuotes
{
  v2 = [self length];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = [self characterAtIndex:0];
  v4 = 0;
  v5 = 1;
  while (v3 <= 0x2Cu && ((1 << v3) & 0x100500000000) != 0)
  {
    v4 ^= v3 == 34;
    if (v2 == v5)
    {
      v6 = v2;
      goto LABEL_9;
    }

    v3 = [self characterAtIndex:v5++];
  }

  v6 = v5 - 1;
LABEL_9:
  v7 = v2 - 1;
  v8 = [self characterAtIndex:v7];
  v9 = 0;
  while (v8 <= 0x2Cu)
  {
    if (((1 << v8) & 0x100500000000) == 0)
    {
      break;
    }

    --v7;
    v9 ^= v8 == 34;
    if (v7 <= v6)
    {
      break;
    }

    v8 = [self characterAtIndex:v7];
  }

  if (v7 < v6)
  {
LABEL_15:
    v10 = &stru_284041D88;
    goto LABEL_21;
  }

  v10 = [self substringWithRange:{v6, v7 - v6 + 1}];
  if (v9 & 1 | ((v4 & 1) == 0))
  {
    if (v4 & 1 | ((v9 & 1) == 0))
    {
      goto LABEL_21;
    }

    v11 = @"%@";
  }

  else
  {
    v11 = @"%@";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v10];

  v10 = v12;
LABEL_21:

  return v10;
}

@end