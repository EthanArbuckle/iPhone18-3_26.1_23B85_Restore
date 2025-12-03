@interface NSString(GKAdditions)
- (__CFString)_gkLocaleSensitiveUppercaseString;
- (id)_gkArrayByTokenizingString;
- (id)_gkSHA256Hash;
- (id)_gkSHA256HashData;
- (id)_gkStringByUnescapingFromURLQuery;
- (uint64_t)_gkIsNaturallyRTL;
- (uint64_t)_gkSearchMatchesItem:()GKAdditions withSearchTerms:;
- (void)processUTF16CharactersForBidi:()GKAdditions;
@end

@implementation NSString(GKAdditions)

- (void)processUTF16CharactersForBidi:()GKAdditions
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ubidi_open();
  if (v5)
  {
    v6 = v5;
    v7 = [(__CFString *)self length];
    CharactersPtr = CFStringGetCharactersPtr(self);
    if (CharactersPtr)
    {
      v4[2](v4, v6, v7, CharactersPtr);
    }

    else
    {
      if ((v7 << 32) < 0x8000000001)
      {
        v9 = &v11;
      }

      else
      {
        v9 = malloc_type_malloc(2 * v7, 0x1000040BDFB0063uLL);
      }

      [(__CFString *)self getCharacters:v9];
      v4[2](v4, v6, v7, v9);
      if ((v7 << 32) >= 0x8000000001)
      {
        free(v9);
      }
    }

    ubidi_close();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_gkIsNaturallyRTL
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__NSString_GKAdditions___gkIsNaturallyRTL__block_invoke;
  v3[3] = &unk_2785DE0C0;
  v3[4] = &v4;
  [self processUTF16CharactersForBidi:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)_gkSearchMatchesItem:()GKAdditions withSearchTerms:
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count] && objc_msgSend(self, "length"))
  {
    v18 = v7;
    v8 = [v6 valueForKeyPath:self];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = *v25;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if ([v13 length])
          {
            v20 = 0;
            v21 = &v20;
            v22 = 0x2020000000;
            v23 = 0;
            v14 = [v8 length];
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __62__NSString_GKAdditions___gkSearchMatchesItem_withSearchTerms___block_invoke;
            v19[3] = &unk_2785DE0E8;
            v19[4] = v13;
            v19[5] = &v20;
            [v8 enumerateSubstringsInRange:0 options:v14 usingBlock:{1027, v19}];
            v15 = *(v21 + 24);
            _Block_object_dispose(&v20, 8);
            if (v15)
            {
              v10 = 1;
              goto LABEL_15;
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v7 = v18;
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (__CFString)_gkLocaleSensitiveUppercaseString
{
  v1 = [self mutableCopy];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  CFStringUppercase(v1, currentLocale);

  return v1;
}

- (id)_gkStringByUnescapingFromURLQuery
{
  v1 = [self stringByReplacingOccurrencesOfString:@"+" withString:@" "];
  stringByRemovingPercentEncoding = [v1 stringByRemovingPercentEncoding];

  return stringByRemovingPercentEncoding;
}

- (id)_gkArrayByTokenizingString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v4 = [MEMORY[0x277CCAC80] scannerWithString:v3];
  [v4 setCharactersToBeSkipped:0];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  scanLocation = [v4 scanLocation];
  if (scanLocation < [v3 length])
  {
    v6 = 0;
    while (1)
    {
      v7 = [self characterAtIndex:{objc_msgSend(v4, "scanLocation")}];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v7];
      v9 = [&unk_283B33448 objectForKey:v8];
      if (v9)
      {
        [v4 scanString:v8 intoString:0];
        v16 = v6;
        [v4 scanUpToString:v9 intoString:&v16];
        v10 = v16;

        [v4 scanString:v9 intoString:0];
        if (v10)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = v6;
        [v4 scanUpToCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:&v15];
        v10 = v15;

        if (v10)
        {
LABEL_5:
          v6 = [v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

          if ([v6 length])
          {
            [v14 addObject:v6];
          }

          goto LABEL_9;
        }
      }

      v6 = 0;
LABEL_9:
      [v4 scanCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:0];

      scanLocation2 = [v4 scanLocation];
      if (scanLocation2 >= [v3 length])
      {

        break;
      }
    }
  }

  v12 = [v14 copy];

  return v12;
}

- (id)_gkSHA256HashData
{
  v1 = [self dataUsingEncoding:1];
  v2 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), objc_msgSend(v2, "mutableBytes"));

  return v2;
}

- (id)_gkSHA256Hash
{
  _gkSHA256HashData = [self _gkSHA256HashData];
  v2 = [_gkSHA256HashData base64EncodedStringWithOptions:0];

  return v2;
}

@end