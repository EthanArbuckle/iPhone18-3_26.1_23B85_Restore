@interface NSString(OCStringAdditions)
+ (BOOL)tc_skipString:()OCStringAdditions;
+ (id)tc_mapString:()OCStringAdditions;
- (id)tc_escapedFragment;
- (id)tc_escapedPath;
- (id)tc_initialsFromAuthorName;
- (uint64_t)tc_languageTypeAtIndex:()OCStringAdditions effectiveRange:;
@end

@implementation NSString(OCStringAdditions)

+ (id)tc_mapString:()OCStringAdditions
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v3];
  v6 = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v8 = [v3 characterAtIndex:i];
      if (v8 == 13 || v8 == 10)
      {
        ++v6;
      }

      if (v8 != 13 && v8 != 10)
      {
        break;
      }
    }
  }

  [v5 deleteCharactersInRange:{0, v6}];
  v11 = 8232;
  v9 = [MEMORY[0x277CCACA8] stringWithCharacters:&v11 length:1];
  [v5 replaceOccurrencesOfString:v9 withString:@"\v" options:2 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

+ (BOOL)tc_skipString:()OCStringAdditions
{
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = [v3 characterAtIndex:0];
    v7 = v5 == 13 || v5 == 10;
    if (v7 && v4 != 1)
    {
      v9 = 1;
      while (1)
      {
        v10 = [v3 characterAtIndex:v9];
        v7 = 0;
        if (v10 > 0x20 || ((1 << v10) & 0x100002600) == 0)
        {
          break;
        }

        if (++v9 >= v4)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
LABEL_16:
    v7 = 1;
  }

  return v7;
}

- (id)tc_initialsFromAuthorName
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 componentsSeparatedByString:@" "];
  v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 length])
        {
          v8 = [v7 substringToIndex:1];
          [v2 appendString:v8];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v2;
}

- (uint64_t)tc_languageTypeAtIndex:()OCStringAdditions effectiveRange:
{
  v17 = 0;
  v7 = OCLanguageTypeForCharacter([a1 characterAtIndex:?], &v17);
  if (a4)
  {
    *a4 = a3;
    v8 = [a1 length];
    v9 = a3 + 1;
    if (v9 >= v8)
    {
      v12 = v7;
    }

    else
    {
      v10 = v8;
      v11 = v17;
      do
      {
        v12 = v7;
        v16 = 0;
        v13 = OCLanguageTypeForCharacter([a1 characterAtIndex:v9], &v16);
        v14 = v16 & v11;
        if (v16)
        {
          v7 = v7;
        }

        else
        {
          v7 = v13;
        }

        if (!v16 && !v11)
        {
          if (v12 != v13)
          {
            goto LABEL_14;
          }

          v14 = v11;
          v7 = v12;
        }

        ++v9;
        v11 = v14;
      }

      while (v10 != v9);
      v12 = v7;
      v9 = v10;
    }

LABEL_14:
    a4[1] = v9 - *a4;
    return v12;
  }

  return v7;
}

- (id)tc_escapedPath
{
  v2 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

- (id)tc_escapedFragment
{
  v2 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

@end