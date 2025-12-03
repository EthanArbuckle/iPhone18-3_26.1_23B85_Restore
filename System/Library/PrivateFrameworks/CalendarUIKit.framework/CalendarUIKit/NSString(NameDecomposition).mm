@interface NSString(NameDecomposition)
+ (id)CUIK_attendeeNameExtensions;
+ (id)CUIK_attendeePartialSurnames;
- (__CFString)CUIK_attendeeTrimCommasSpacesQuotes;
- (uint64_t)CUIK_attendeeAppearsToBeAnInitial;
- (void)CUIK_attendeeFirstName:()NameDecomposition middleName:lastName:extension:;
@end

@implementation NSString(NameDecomposition)

+ (id)CUIK_attendeeNameExtensions
{
  v0 = CUIK_attendeeNameExtensions_nameExtensions;
  if (!CUIK_attendeeNameExtensions_nameExtensions)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"jr.", @"sr.", @"iii", @"m.d.", @"md", @"d.d.s.", @"dds", @"ph.d.", @"phd", @"m.b.a.", @"mba", @"esq.", @"esq", @"jr", @"sr", @"ii", @"iv", @"v", @"vi", @"vii", @"viii", @"ix", 0}];
    v2 = CUIK_attendeeNameExtensions_nameExtensions;
    CUIK_attendeeNameExtensions_nameExtensions = v1;

    v0 = CUIK_attendeeNameExtensions_nameExtensions;
  }

  return v0;
}

+ (id)CUIK_attendeePartialSurnames
{
  v0 = CUIK_attendeePartialSurnames_partialSurnames;
  if (!CUIK_attendeePartialSurnames_partialSurnames)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"de", @"den", @"der", @"di", @"do", @"du", @"la", @"le", @"les", @"van", @"von", 0}];
    v2 = CUIK_attendeePartialSurnames_partialSurnames;
    CUIK_attendeePartialSurnames_partialSurnames = v1;

    v0 = CUIK_attendeePartialSurnames_partialSurnames;
  }

  return v0;
}

- (uint64_t)CUIK_attendeeAppearsToBeAnInitial
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

- (__CFString)CUIK_attendeeTrimCommasSpacesQuotes
{
  if ([&unk_1F4ABECF0 containsObject:self])
  {
    v2 = [self copy];
    goto LABEL_27;
  }

  v3 = [self length];
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v3;
  v5 = [self characterAtIndex:0];
  v6 = 0;
  v7 = v4 - 1;
  v8 = 1;
  while (v5 == 32 || v5 == 44)
  {
LABEL_9:
    if (v4 == v8)
    {
      v9 = v4 - 1;
      goto LABEL_13;
    }

    v5 = [self characterAtIndex:v8++];
  }

  if (v5 == 34)
  {
    v6 ^= 1u;
    goto LABEL_9;
  }

  v9 = v8 - 1;
LABEL_13:
  v10 = 0;
  for (i = v4 - v9; ; --i)
  {
    v12 = [self characterAtIndex:v7];
    if (v12 != 32 && v12 != 44)
    {
      if (v12 != 34)
      {
        break;
      }

      v10 ^= 1u;
    }

    if (!v7)
    {
      break;
    }

    --v7;
  }

  if (v9 >= v7)
  {
LABEL_24:
    v2 = &stru_1F4AA8958;
    goto LABEL_27;
  }

  v2 = [self substringWithRange:{v9, i}];
  if (v10 & 1 | ((v6 & 1) == 0))
  {
    if (!(v6 & 1 | ((v10 & 1) == 0)))
    {
      v13 = @"%@";
      goto LABEL_26;
    }
  }

  else
  {
    v13 = @"%@";
LABEL_26:
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:v13, v2];

    v2 = v14;
  }

LABEL_27:

  return v2;
}

- (void)CUIK_attendeeFirstName:()NameDecomposition middleName:lastName:extension:
{
  selfCopy = self;
  if (![selfCopy length])
  {
    v14 = 0;
    v15 = 0;
    v10 = 0;
    v16 = 0;
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
    goto LABEL_50;
  }

  v10 = [selfCopy componentsSeparatedByString:{@", "}];
  if ([v10 count] > 2 || objc_msgSend(v10, "count") == 2 && (objc_msgSend(MEMORY[0x1E696AEC0], "CUIK_attendeeNameExtensions"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "lastObject"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "CUIK_attendeeTrimCommasSpacesQuotes"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "lowercaseString"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v17, "containsObject:", v20), v20, v19, v18, v17, (v21 & 1) == 0))
  {
    if ([v10 count] < 3)
    {
      v23 = MEMORY[0x1E696AEC0];
      v11 = [v10 objectAtIndex:1];
      v12 = [v10 objectAtIndex:0];
      [v23 stringWithFormat:@"%@ %@", v11, v12];
    }

    else
    {
      v11 = [v10 mutableCopy];
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v11 objectAtIndexedSubscript:1];
      [v11 setObject:v13 atIndexedSubscript:0];

      [v11 setObject:v12 atIndexedSubscript:1];
      [v11 componentsJoinedByString:@" "];
    }
    v24 = ;

    v22 = v24;
  }

  else
  {
    v22 = selfCopy;
  }

  v58 = a4;
  v59 = a3;
  selfCopy = v22;
  v15 = [v22 componentsSeparatedByString:@" "];
  v25 = [v15 count];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v25];
  v16 = 0;
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      v27 = v16;
      v16 = [v15 objectAtIndex:i];

      if (([v16 isEqualToString:&stru_1F4AA8958] & 1) == 0)
      {
        cUIK_attendeeTrimCommasSpacesQuotes = [v16 CUIK_attendeeTrimCommasSpacesQuotes];
        if ([cUIK_attendeeTrimCommasSpacesQuotes length])
        {
          [v14 addObject:cUIK_attendeeTrimCommasSpacesQuotes];
        }
      }
    }
  }

  v29 = [v14 count];
  if (v29 == 2)
  {
    [v14 objectAtIndex:0];
    *v59 = v30 = v59;
    *v58 = 0;
    *a5 = [v14 objectAtIndex:1];
  }

  else
  {
    v30 = v59;
    if (v29 != 1)
    {
      if (v29)
      {
        lastObject = [v14 lastObject];
        cUIK_attendeeNameExtensions = [MEMORY[0x1E696AEC0] CUIK_attendeeNameExtensions];
        lowercaseString = [lastObject lowercaseString];
        v34 = [cUIK_attendeeNameExtensions containsObject:lowercaseString];

        if (v34)
        {
          v35 = lastObject;
          *a6 = lastObject;
          [v14 removeLastObject];
        }

        else
        {
          *a6 = 0;
        }

        v57 = lastObject;
        if (([v14 count] - 3) > 0xFFFFFFFFFFFFFFFDLL)
        {
          v36 = 0;
        }

        else
        {
          v36 = 0;
          v37 = 1;
          do
          {
            v38 = v16;
            v16 = [v14 objectAtIndex:v37];

            cUIK_attendeePartialSurnames = [MEMORY[0x1E696AEC0] CUIK_attendeePartialSurnames];
            lowercaseString2 = [v16 lowercaseString];
            v41 = [cUIK_attendeePartialSurnames containsObject:lowercaseString2];

            if (v41)
            {
              v42 = MEMORY[0x1E696AEC0];
              v43 = [v14 objectAtIndex:v37 + 1];
              v44 = [v42 stringWithFormat:@"%@ %@", v16, v43];

              [v14 replaceObjectAtIndex:v37 withObject:v44];
              [v14 removeObjectAtIndex:++v37];
              v36 = v44;
            }

            else
            {
              ++v37;
            }
          }

          while (v37 < [v14 count] - 1);
        }

        v45 = [v14 count];
        if (v45 < 4)
        {
          [v14 lastObject];
          *a5 = v49 = v57;
          v30 = v59;
        }

        else
        {
          v46 = [v14 objectAtIndex:v45 - 2];

          cUIK_attendeeAppearsToBeAnInitial = [v46 CUIK_attendeeAppearsToBeAnInitial];
          lastObject2 = [v14 lastObject];
          v49 = lastObject2;
          v30 = v59;
          if (cUIK_attendeeAppearsToBeAnInitial)
          {
            v50 = lastObject2;
            *a5 = v49;
            v49 = v57;
          }

          else
          {

            *a5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v46, v49];
            [v14 removeLastObject];
          }

          v16 = v46;
        }

        [v14 removeLastObject];
        *v30 = [v14 objectAtIndex:0];
        [v14 removeObjectAtIndex:0];
        if ([v14 count])
        {
          v51 = CurrentLocaleExpectsMultipleFamilyNames();
          v52 = [v14 componentsJoinedByString:@" "];
          v53 = v52;
          if (v51)
          {
            *a5 = [v52 stringByAppendingFormat:@" %@", *a5];
          }

          else
          {
            v54 = v52;
            *v58 = v53;
          }
        }

        else
        {
          *v58 = 0;
        }

        goto LABEL_48;
      }

      *v59 = 0;
      *v58 = 0;
      *a5 = 0;
      *a6 = 0;
    }

    *v59 = selfCopy;
    *v58 = 0;
    *a5 = 0;
  }

  *a6 = 0;
LABEL_48:
  if (CurrentLocaleExpectsSurnameFirst())
  {
    v55 = *v30;
    *v30 = *a5;
    v56 = v55;
    *a5 = v55;
  }

LABEL_50:
}

@end