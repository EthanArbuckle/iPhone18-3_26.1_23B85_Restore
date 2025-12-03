@interface NSLocale(Setup)
+ (id)_subdivisionCodeFromSubdivisionTag:()Setup restrictedToRegionCode:;
- (BOOL)_requiresMultilingualSetupWithKeyboardIDs:()Setup;
- (id)_languagesForMultilingualSetupWithKeyboardsIDs:()Setup;
- (id)defaultLanguagesForMultilingualSetup;
@end

@implementation NSLocale(Setup)

- (BOOL)_requiresMultilingualSetupWithKeyboardIDs:()Setup
{
  v2 = [self _languagesForMultilingualSetupWithKeyboardsIDs:?];
  if ([v2 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    countryCode = [self countryCode];
    if ([countryCode length])
    {
      v4 = MEMORY[0x277CBEAF8];
      v5 = [@"zxx_" stringByAppendingString:countryCode];
      v6 = [v4 localeWithLocaleIdentifier:v5];
      v7 = [v6 _languagesForMultilingualSetupWithKeyboardsIDs:0];
    }

    else
    {
      v7 = 0;
    }

    v9 = MEMORY[0x277CBEAF8];
    languageIdentifier = [self languageIdentifier];
    v11 = [v9 baseLanguageFromLanguage:languageIdentifier];

    if ([v7 containsObject:v11])
    {
      baseSystemLanguages = [MEMORY[0x277CBEAF8] baseSystemLanguages];
      v13 = [v2 arrayByExcludingObjectsInArray:baseSystemLanguages];

      v8 = [v13 count] != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)_languagesForMultilingualSetupWithKeyboardsIDs:()Setup
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  languageIdentifier = [self languageIdentifier];

  if (languageIdentifier)
  {
    v4 = MEMORY[0x277CBEAF8];
    languageIdentifier2 = [self languageIdentifier];
    v6 = [v4 canonicalLanguageIdentifierFromString:languageIdentifier2];
    v7 = [v4 baseLanguageFromLanguage:v6];
    [orderedSet addObject:v7];
  }

  v8 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v10 = [v8 componentsFromLocaleIdentifier:localeIdentifier];
  v11 = [v10 objectForKey:@"sd"];

  if ([v11 length])
  {
    v12 = MEMORY[0x277CBEAF8];
    countryCode = [self countryCode];
    v14 = objc_opt_class();
    countryCode2 = [self countryCode];
    v16 = [v14 _subdivisionCodeFromSubdivisionTag:v11 restrictedToRegionCode:countryCode2];
    v17 = [v12 languagesForRegion:countryCode subdivision:v16 withThreshold:1 filter:2];

    if (v17)
    {
      goto LABEL_6;
    }
  }

  v18 = MEMORY[0x277CBEAF8];
  countryCode3 = [self countryCode];
  v17 = [v18 languagesForRegion:countryCode3 subdivision:0 withThreshold:1 filter:2];

  if (v17)
  {
LABEL_6:
    [orderedSet addObjectsFromArray:v17];
  }

  array = [orderedSet array];

  return array;
}

- (id)defaultLanguagesForMultilingualSetup
{
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  languageIdentifier = [self languageIdentifier];

  if (languageIdentifier)
  {
    v4 = MEMORY[0x277CBEAF8];
    languageIdentifier2 = [self languageIdentifier];
    v6 = [v4 canonicalLanguageIdentifierFromString:languageIdentifier2];
    v7 = [v4 baseLanguageFromLanguage:v6];
    [orderedSet addObject:v7];
  }

  v8 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v10 = [v8 componentsFromLocaleIdentifier:localeIdentifier];
  v11 = [v10 objectForKey:@"sd"];

  if ([v11 length])
  {
    v12 = MEMORY[0x277CBEAF8];
    countryCode = [self countryCode];
    v14 = objc_opt_class();
    countryCode2 = [self countryCode];
    v16 = [v14 _subdivisionCodeFromSubdivisionTag:v11 restrictedToRegionCode:countryCode2];
    v17 = [v12 languagesForRegion:countryCode subdivision:v16 withThreshold:2 filter:2];

    if (v17)
    {
      goto LABEL_6;
    }
  }

  v18 = MEMORY[0x277CBEAF8];
  countryCode3 = [self countryCode];
  v17 = [v18 languagesForRegion:countryCode3 subdivision:0 withThreshold:2 filter:2];

  if (v17)
  {
LABEL_6:
    [orderedSet addObjectsFromArray:v17];
  }

  array = [orderedSet array];

  return array;
}

+ (id)_subdivisionCodeFromSubdivisionTag:()Setup restrictedToRegionCode:
{
  v5 = a3;
  uppercaseString = [a4 uppercaseString];
  v7 = [v5 substringToIndex:2];
  uppercaseString2 = [v7 uppercaseString];

  v9 = [v5 substringFromIndex:2];

  uppercaseString3 = [v9 uppercaseString];

  if ([uppercaseString isEqualToString:uppercaseString2])
  {
    v11 = uppercaseString3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end