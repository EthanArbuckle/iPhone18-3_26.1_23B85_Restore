@interface NSLocale(EmailFoundationAdditions)
+ (BOOL)ef_isCurrentLocaleRTL;
+ (__CFString)ef_directionalMarkForCurrentLocale;
+ (id)ef_localesFromLanguages:()EmailFoundationAdditions;
+ (id)ef_posixLocale;
+ (id)ef_quotePairsForLanguages:()EmailFoundationAdditions;
+ (id)ef_quotePairsForLocales:()EmailFoundationAdditions;
@end

@implementation NSLocale(EmailFoundationAdditions)

+ (id)ef_posixLocale
{
  if (ef_posixLocale_onceToken != -1)
  {
    +[NSLocale(EmailFoundationAdditions) ef_posixLocale];
  }

  v1 = ef_posixLocale_locale;

  return v1;
}

+ (BOOL)ef_isCurrentLocaleRTL
{
  v0 = MEMORY[0x1E695DF58];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageIdentifier = [currentLocale languageIdentifier];
  v3 = [v0 characterDirectionForLanguage:languageIdentifier] == 2;

  return v3;
}

+ (__CFString)ef_directionalMarkForCurrentLocale
{
  if ([self ef_isCurrentLocaleRTL])
  {
    return @"\u200F";
  }

  else
  {
    return @"\u200E";
  }
}

+ (id)ef_localesFromLanguages:()EmailFoundationAdditions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 ef_compactMap:&__block_literal_global_10_2];
  if (![v3 count])
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v8[0] = currentLocale;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

    v3 = v5;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)ef_quotePairsForLocales:()EmailFoundationAdditions
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 count])
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v24[0] = currentLocale;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];

    v3 = v5;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        quotationBeginDelimiter = [v11 quotationBeginDelimiter];
        quotationEndDelimiter = [v11 quotationEndDelimiter];
        v14 = [EFPair pairWithFirst:quotationBeginDelimiter second:quotationEndDelimiter];
        [v6 addObject:v14];
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = [EFPair pairWithFirst:@" second:@"];
  [v6 addObject:v15];

  array = [v6 array];

  v17 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)ef_quotePairsForLanguages:()EmailFoundationAdditions
{
  v2 = [self ef_localesFromLanguages:?];
  v3 = [self ef_quotePairsForLocales:v2];

  return v3;
}

@end