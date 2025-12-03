@interface OITSULocale
+ (BOOL)localeIsAutoUpdating:(id)updating;
+ (id)allSupportedTemplatePickerLanguages;
+ (id)allSupportedTier1Languages;
+ (id)allSupportedTier3Languages;
+ (id)applicationLocale;
+ (id)cacheKeyForLocale:(id)locale;
+ (id)canonicalizeLocaleIdentifier:(id)identifier;
+ (id)canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:(id)only;
+ (id)canonicalizeLocaleIdentifierWithLanguageAndScriptOnly:(id)only;
+ (id)canonicalizeLocaleIdentifierWithLanguageOnly:(id)only;
+ (id)canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:(id)only;
+ (id)currentLocale;
+ (id)deducedScriptForLocale:(id)locale;
+ (id)displayNameForCode:(id)code ofType:(id)type displayStandalone:(BOOL)standalone;
+ (id)localeForLocaleIdentifier:(id)identifier documentLanguageIdentifier:(id)languageIdentifier;
+ (id)localeIDWithDefaultRegionCode:(id)code;
+ (id)localeIDWithoutDefaultRegionCode:(id)code avoidAmbiguousCases:(BOOL)cases;
+ (id)preferredLanguages;
+ (id)preferredLocale;
+ (id)simplifiedDisplayNameForLocaleID:(id)d displayStandalone:(BOOL)standalone;
+ (unint64_t)autoupdatingCurrentLocaleChangeCount;
+ (void)initialize;
+ (void)saveLocaleForReuse:(id)reuse;
+ (void)setLocalizedStringBundle:(__CFBundle *)bundle;
- (BOOL)isEqual:(id)equal;
- (OITSULocale)initWithLocale:(id)locale documentLanguageIdentifier:(id)identifier useAutoupdating:(BOOL)autoupdating;
- (__CFNumberFormatter)checkoutNumberFormatter;
- (__CFNumberFormatter)checkoutScientificNumberFormatter;
- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory inBundle:(__CFBundle *)bundle;
- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory inBundleWithURL:(id)l;
- (id)copyWithDocumentLanguageIdentifier:(id)identifier;
- (id)description;
- (id)displayLanguageNameWithStandalone:(BOOL)standalone;
- (id)localeIdentifierWithLanguageAndRegionOnly;
- (id)localeIdentifierWithLanguageScriptAndRegionOnly;
- (id)localeSpecificStorageForKey:(id)key;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
- (id)numberFormatterStringFromDouble:(double)double withFormat:(id)format useDecimalPlaces:(BOOL)places minDecimalPlaces:(unsigned __int16)decimalPlaces decimalPlaces:(unsigned __int16)a7 showThousandsSeparator:(BOOL)separator currencyCode:(id)code suppressMinusSign:(BOOL)self0;
- (int64_t)localizedCaseInsensitiveCompare:(id)compare toString:(id)string;
- (int64_t)localizedCompare:(id)compare toString:(id)string;
- (unint64_t)hash;
- (void)_initializeNumberFormatterStringFromDoubleCache;
- (void)dealloc;
- (void)returnNumberFormatter:(__CFNumberFormatter *)formatter;
- (void)returnScientificNumberFormatter:(__CFNumberFormatter *)formatter;
- (void)setLocaleSpecificStorage:(id)storage forKey:(id)key;
@end

@implementation OITSULocale

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sStaticLocaleLock = objc_opt_new();
    sOtherLocales = objc_opt_new();
    sCurrentLocale = 0;

    TSURegisterLocaleChangeObserver(&__block_literal_global_4);
  }
}

uint64_t __25__OITSULocale_initialize__block_invoke()
{
  [sStaticLocaleLock lock];
  ++sAutoupdatingCurrentLocaleChangeCount;

  sCurrentLocale = 0;
  v0 = sStaticLocaleLock;

  return [v0 unlock];
}

+ (void)setLocalizedStringBundle:(__CFBundle *)bundle
{
  if (sLocalizedStringBundle)
  {
    CFRelease(sLocalizedStringBundle);
  }

  sLocalizedStringBundle = bundle;

  CFRetain(bundle);
}

+ (unint64_t)autoupdatingCurrentLocaleChangeCount
{
  [sStaticLocaleLock lock];
  v2 = sAutoupdatingCurrentLocaleChangeCount;
  [sStaticLocaleLock unlock];
  return v2;
}

+ (id)cacheKeyForLocale:(id)locale
{
  if ([OITSULocale localeIsAutoUpdating:?])
  {
    return @"NSAutoLocale";
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"CFLocale:%@", objc_msgSend(locale, "localeIdentifier")];
  }
}

+ (id)preferredLanguages
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = [objc_msgSend(self "currentLocale")];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

+ (id)currentLocale
{
  v2 = sCurrentLocale;
  if (!sCurrentLocale)
  {
    objc_sync_enter(self);
    if (!sCurrentLocale)
    {
      v4 = [OITSULocale alloc];
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      sCurrentLocale = -[OITSULocale initWithLocale:documentLanguageIdentifier:useAutoupdating:](v4, "initWithLocale:documentLanguageIdentifier:useAutoupdating:", currentLocale, [MEMORY[0x277CBEAF8] tsu_firstPreferredLocalization], 1);
    }

    objc_sync_exit(self);
    v2 = sCurrentLocale;
  }

  v6 = v2;

  return v6;
}

+ (id)preferredLocale
{
  v2 = sPreferredLocale;
  if (!sPreferredLocale)
  {
    objc_sync_enter(self);
    if (!sPreferredLocale)
    {
      v4 = [OITSULocale alloc];
      sPreferredLocale = -[OITSULocale initWithLocale:documentLanguageIdentifier:useAutoupdating:](v4, "initWithLocale:documentLanguageIdentifier:useAutoupdating:", TSUPreferredLocale(), [MEMORY[0x277CBEAF8] tsu_firstPreferredLocalization], 1);
    }

    objc_sync_exit(self);
    v2 = sPreferredLocale;
  }

  v5 = v2;

  return v5;
}

+ (id)applicationLocale
{
  v2 = +[OITSULocale currentLocale];

  return [v2 locale];
}

+ (id)canonicalizeLocaleIdentifier:(id)identifier
{
  v3 = [objc_msgSend(MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:{identifier), "mutableCopy"}];
  v4 = *MEMORY[0x277CBE720];
  if ([objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{*MEMORY[0x277CBE720]), "uppercaseString"), "isEqualToString:", @"POSIX"}])
  {
    [v3 removeObjectForKey:v4];
  }

  v5 = MEMORY[0x277CBEAF8];
  v6 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v3];

  return [v5 canonicalLocaleIdentifierFromString:v6];
}

+ (id)canonicalizeLocaleIdentifierWithLanguageOnly:(id)only
{
  v3 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:only];
  v4 = *MEMORY[0x277CBE6C8];

  return [v3 objectForKeyedSubscript:v4];
}

+ (id)canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:(id)only
{
  v3 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:only];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  if ([v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]])
  {
    [dictionary setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v5), v5}];
  }

  v6 = *MEMORY[0x277CBE690];
  if ([v3 objectForKeyedSubscript:*MEMORY[0x277CBE690]])
  {
    [dictionary setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v6), v6}];
  }

  v7 = MEMORY[0x277CBEAF8];
  v8 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:dictionary];

  return [v7 canonicalLocaleIdentifierFromString:v8];
}

+ (id)canonicalizeLocaleIdentifierWithLanguageAndScriptOnly:(id)only
{
  v3 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:only];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  if ([v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]])
  {
    [dictionary setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v5), v5}];
  }

  v6 = *MEMORY[0x277CBE6F8];
  if ([v3 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]])
  {
    [dictionary setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v6), v6}];
  }

  v7 = MEMORY[0x277CBEAF8];
  v8 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:dictionary];

  return [v7 canonicalLocaleIdentifierFromString:v8];
}

+ (id)canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:(id)only
{
  v3 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:only];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CBE6C8];
  if ([v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]])
  {
    [dictionary setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v5), v5}];
  }

  v6 = *MEMORY[0x277CBE690];
  if ([v3 objectForKeyedSubscript:*MEMORY[0x277CBE690]])
  {
    [dictionary setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v6), v6}];
  }

  v7 = *MEMORY[0x277CBE6F8];
  if ([v3 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]])
  {
    [dictionary setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v7), v7}];
  }

  v8 = MEMORY[0x277CBEAF8];
  v9 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:dictionary];

  return [v8 canonicalLocaleIdentifierFromString:v9];
}

+ (id)deducedScriptForLocale:(id)locale
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(MEMORY[0x277CBEAF8] "componentsFromLocaleIdentifier:"mutableCopy"")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [&unk_286F6D248 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
  v8 = *MEMORY[0x277CBE6F8];
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(&unk_286F6D248);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    [v4 setObject:v10 forKeyedSubscript:v8];
    if ([objc_msgSend(MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:{objc_msgSend(MEMORY[0x277CBEAF8], "localeIdentifierFromComponents:", v4)), "isEqualToString:", locale}])
    {
      return v10;
    }

    if (v6 == ++v9)
    {
      v6 = [&unk_286F6D248 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)localeIDWithDefaultRegionCode:(id)code
{
  v26[3] = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:{code), "mutableCopy"}];
  v4 = *MEMORY[0x277CBE6C8];
  v5 = [objc_msgSend(v3 objectForKeyedSubscript:{*MEMORY[0x277CBE6C8]), "isEqualToString:", @"zh"}];
  v6 = MEMORY[0x277CBE6F8];
  if (v5)
  {
    v7 = *MEMORY[0x277CBE6F8];
    v8 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
    v9 = *MEMORY[0x277CBE690];
    if (!v8)
    {
      if ([&unk_286F6D260 containsObject:{objc_msgSend(v3, "objectForKeyedSubscript:", *MEMORY[0x277CBE690])}])
      {
        v10 = @"Hant";
      }

      else
      {
        v10 = @"Hans";
      }

      [v3 setObject:v10 forKeyedSubscript:v7];
    }

    if (![v3 objectForKeyedSubscript:v9])
    {
      if ([@"Hant" isEqualToString:{objc_msgSend(v3, "objectForKeyedSubscript:", v7)}])
      {
        v11 = @"TW";
      }

      else
      {
        v11 = @"CN";
      }

      goto LABEL_17;
    }
  }

  else
  {
    if ([objc_msgSend(v3 objectForKeyedSubscript:{v4), "isEqualToString:", @"ko"}])
    {
      v12 = *v6;
      if ([&unk_286F6D278 containsObject:{objc_msgSend(v3, "objectForKeyedSubscript:", *v6)}])
      {
        [v3 setObject:0 forKeyedSubscript:v12];
      }
    }

    v9 = *MEMORY[0x277CBE690];
    if (![v3 objectForKeyedSubscript:*MEMORY[0x277CBE690]])
    {
      [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]) forKeyedSubscript:{"initWithContentsOfFile:", objc_msgSend(SFUBundle(), "pathForResource:ofType:", @"LocaleIDData", @"plist", "objectForKeyedSubscript:", @"DefaultRegionCodes", "objectForKeyedSubscript:", objc_msgSend(v3, "objectForKeyedSubscript:", v4)), v9}];
      if (![v3 objectForKeyedSubscript:v9])
      {
        v11 = [objc_msgSend(MEMORY[0x277CBEAF8] "currentLocale")];
LABEL_17:
        [v3 setObject:v11 forKeyedSubscript:v9];
      }
    }
  }

  allKeys = [v3 allKeys];
  v26[0] = v4;
  v26[1] = v9;
  v26[2] = *v6;
  v14 = [MEMORY[0x277CBEB98] setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v26, 3)}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        if (([v14 containsObject:v19] & 1) == 0)
        {
          [v3 removeObjectForKey:v19];
        }
      }

      v16 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v3];
}

+ (id)localeIDWithoutDefaultRegionCode:(id)code avoidAmbiguousCases:(BOOL)cases
{
  casesCopy = cases;
  v6 = [objc_msgSend(MEMORY[0x277CBEAF8] "componentsFromLocaleIdentifier:"mutableCopy"")];
  v7 = v6;
  v8 = *MEMORY[0x277CBE6C8];
  if (casesCopy && ([&unk_286F6D290 containsObject:{objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x277CBE6C8])}] & 1) != 0)
  {
    return code;
  }

  if ([@"zh" isEqualToString:{objc_msgSend(v7, "objectForKeyedSubscript:", v8)}])
  {
    v10 = [@"Hant" isEqualToString:{objc_msgSend(v7, "objectForKeyedSubscript:", *MEMORY[0x277CBE6F8])}];
    v11 = *MEMORY[0x277CBE690];
    if (v10 && ([@"TW" isEqualToString:{objc_msgSend(v7, "objectForKeyedSubscript:", *MEMORY[0x277CBE690])}] & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *MEMORY[0x277CBE690];
  }

  if ([objc_msgSend(v7 objectForKeyedSubscript:{v11), "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithContentsOfFile:", objc_msgSend(SFUBundle(), "pathForResource:ofType:", @"LocaleIDData", @"plist", "objectForKeyedSubscript:", @"DefaultRegionCodes", "objectForKeyedSubscript:", objc_msgSend(v7, "objectForKeyedSubscript:", v8))}])
  {
LABEL_10:
    [v7 setObject:0 forKeyedSubscript:v11];
  }

  v12 = MEMORY[0x277CBEAF8];

  return [v12 localeIdentifierFromComponents:v7];
}

+ (id)simplifiedDisplayNameForLocaleID:(id)d displayStandalone:(BOOL)standalone
{
  standaloneCopy = standalone;
  v5 = [OITSULocale localeIDWithoutDefaultRegionCode:[OITSULocale localeIDWithDefaultRegionCode:d] avoidAmbiguousCases:1];
  result = [OITSULocale displayNameForCode:v5 ofType:*MEMORY[0x277CBE6C0] displayStandalone:standaloneCopy];
  if (!result)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSULocale simplifiedDisplayNameForLocaleID:displayStandalone:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSULocale.m"], 407, 0, "Nil display name returned for locale ID %@", objc_msgSend(+[OITSULocale applicationLocale](OITSULocale, "applicationLocale"), "localeIdentifier"));
    +[OITSUAssertionHandler logBacktraceThrottled];
    return &stru_286EE1130;
  }

  return result;
}

+ (id)displayNameForCode:(id)code ofType:(id)type displayStandalone:(BOOL)standalone
{
  typeCopy = type;
  v7 = [OITSULocale applicationLocale:code];
  v8 = *MEMORY[0x277CBE6C0];
  v9 = *MEMORY[0x277CBE6C8];
  if (*MEMORY[0x277CBE690] != typeCopy && v9 != typeCopy && v8 != typeCopy)
  {
    typeCopy = *MEMORY[0x277CBE6C0];
  }

  if (typeCopy == v9 && [code containsString:@"-"])
  {
    typeCopy = v8;
  }

  return [v7 displayNameForKey:typeCopy value:code];
}

+ (id)allSupportedTier1Languages
{
  if (allSupportedTier1Languages_once != -1)
  {
    +[OITSULocale allSupportedTier1Languages];
  }

  return allSupportedTier1Languages_supportedTiers0and1;
}

id __41__OITSULocale_allSupportedTier1Languages__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:{objc_msgSend(SFUBundle(), "pathForResource:ofType:", @"LocaleIDData", @"plist", "objectForKeyedSubscript:", @"Tiers0and1"}];
  v1 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v2 = [v0 mutableCopy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v0);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v1 containsObject:v7] & 1) == 0 && (objc_msgSend(v1, "containsObject:", objc_msgSend(v7, "substringToIndex:", 2)) & 1) == 0)
        {
          [v2 removeObject:v7];
        }
      }

      v4 = [v0 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  allSupportedTier1Languages_supportedTiers0and1 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return allSupportedTier1Languages_supportedTiers0and1;
}

+ (id)allSupportedTier3Languages
{
  if (allSupportedTier3Languages_once != -1)
  {
    +[OITSULocale allSupportedTier3Languages];
  }

  return allSupportedTier3Languages_supportedLanguages;
}

id __41__OITSULocale_allSupportedTier3Languages__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:{objc_msgSend(SFUBundle(), "pathForResource:ofType:", @"LocaleIDData", @"plist", "objectForKeyedSubscript:", @"Tiers0thru3"}];
  v1 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v2 = [v0 mutableCopy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v0 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v0);
        }

        v14 = *(*(&v10 + 1) + 8 * v6);
        v7 = v14;
        v8 = [objc_msgSend(MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v1 forPreferences:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v14, 1)), "objectAtIndexedSubscript:", 0}];
        if (([v7 hasPrefix:{objc_msgSend(v8, "substringToIndex:", 2)}] & 1) == 0 && (!objc_msgSend(v7, "isEqualToString:", @"nb") || (objc_msgSend(v8, "isEqualToString:", @"no") & 1) == 0))
        {
          [v2 removeObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v0 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  allSupportedTier3Languages_supportedLanguages = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return allSupportedTier3Languages_supportedLanguages;
}

+ (id)allSupportedTemplatePickerLanguages
{
  if (allSupportedTemplatePickerLanguages_once != -1)
  {
    +[OITSULocale allSupportedTemplatePickerLanguages];
  }

  return allSupportedTemplatePickerLanguages_supportedLanguages;
}

id __50__OITSULocale_allSupportedTemplatePickerLanguages__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObjectsFromArray:{+[OITSULocale allSupportedTier3Languages](OITSULocale, "allSupportedTier3Languages")}];
  [v0 addObjectsFromArray:{objc_msgSend(objc_msgSend(objc_alloc(MEMORY[0x277CBEAC0]), "initWithContentsOfFile:", objc_msgSend(SFUBundle(), "pathForResource:ofType:", @"LocaleIDData", @"plist", "objectForKeyedSubscript:", @"AdditionalTemplatePickerLanguages"}];
  allSupportedTemplatePickerLanguages_supportedLanguages = [v0 allObjects];

  v1 = allSupportedTemplatePickerLanguages_supportedLanguages;

  return v1;
}

+ (BOOL)localeIsAutoUpdating:(id)updating
{
  if (localeIsAutoUpdating__onceToken != -1)
  {
    +[OITSULocale localeIsAutoUpdating:];
  }

  return objc_opt_isKindOfClass() & 1;
}

uint64_t __36__OITSULocale_localeIsAutoUpdating___block_invoke()
{
  [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  result = objc_opt_class();
  localeIsAutoUpdating__s_autoupdatingCurrentLocaleClass = result;
  return result;
}

+ (id)localeForLocaleIdentifier:(id)identifier documentLanguageIdentifier:(id)languageIdentifier
{
  if (!identifier || !languageIdentifier)
  {
    return 0;
  }

  [sStaticLocaleLock lock];
  v6 = [sOtherLocales objectForKey:{objc_msgSend(identifier, "stringByAppendingFormat:", @", %@", languageIdentifier)}];
  [sStaticLocaleLock unlock];

  return v6;
}

+ (void)saveLocaleForReuse:(id)reuse
{
  [sStaticLocaleLock lock];
  if (![sOtherLocales objectForKey:{objc_msgSend(reuse, "localeIdentifier")}])
  {
    [sOtherLocales setObject:reuse forKey:{objc_msgSend(objc_msgSend(reuse, "localeIdentifier"), "stringByAppendingFormat:", @", %@", objc_msgSend(reuse, "documentLanguageIdentifier"))}];
  }

  v4 = sStaticLocaleLock;

  [v4 unlock];
}

- (OITSULocale)initWithLocale:(id)locale documentLanguageIdentifier:(id)identifier useAutoupdating:(BOOL)autoupdating
{
  autoupdatingCopy = autoupdating;
  v19.receiver = self;
  v19.super_class = OITSULocale;
  v8 = [(OITSULocale *)&v19 init];
  if (!v8)
  {
    return v8;
  }

  if (identifier)
  {
    if (!locale)
    {
      goto LABEL_10;
    }
  }

  else
  {
    identifier = [MEMORY[0x277CBEAF8] tsu_firstPreferredLocalization];
    if (!locale)
    {
LABEL_10:

      return 0;
    }
  }

  if (!identifier)
  {
    goto LABEL_10;
  }

  v9 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:identifier];
  v10 = +[OITSULocale canonicalizeLocaleIdentifier:](OITSULocale, "canonicalizeLocaleIdentifier:", [locale localeIdentifier]);
  if (autoupdatingCopy || (v11 = [OITSULocale localeForLocaleIdentifier:v10 documentLanguageIdentifier:v9]) == 0)
  {
    pthread_mutex_init(&v8->_formattersMutex, 0);
    v8->_localeIdentifier = v10;
    if (autoupdatingCopy)
    {
      autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    }

    else
    {
      autoupdatingCurrentLocale = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v8->_localeIdentifier];
    }

    v8->_locale = autoupdatingCurrentLocale;
    v8->_isAutoUpdating = autoupdatingCopy;
    v8->_languageCode = [(NSLocale *)autoupdatingCurrentLocale objectForKey:*MEMORY[0x277CBE6C8]];
    v8->_documentLanguageIdentifier = v9;
    v8->_numberFormatters = objc_opt_new();
    v8->_scientificNumberFormatters = objc_opt_new();
    v8->_dateParserLibrary = [[OITSUDateParserLibrary alloc] initWithLocale:v8];
    v8->_currencyCode = [+[OITSUNumberFormatter defaultCurrencyCodeForLocale:](OITSUNumberFormatter defaultCurrencyCodeForLocale:{v8->_locale), "copy"}];
    v8->_numberFormatterStringFromDoubleWithFormatLock = objc_opt_new();
    v8->_decimalSeparator = [+[OITSUNumberFormatter decimalSeparatorForLocale:](OITSUNumberFormatter decimalSeparatorForLocale:{v8->_locale), "copy"}];
    v8->_groupingSeparator = [+[OITSUNumberFormatter groupingSeparatorForLocale:](OITSUNumberFormatter groupingSeparatorForLocale:{v8->_locale), "copy"}];
    v8->_currencyDecimalSeparator = [+[OITSUNumberFormatter currencyDecimalSeparatorForLocale:](OITSUNumberFormatter currencyDecimalSeparatorForLocale:{v8->_locale), "copy"}];
    v8->_currencyGroupingSeparator = [+[OITSUNumberFormatter currencyGroupingSeparatorForLocale:](OITSUNumberFormatter currencyGroupingSeparatorForLocale:{v8->_locale), "copy"}];
    v8->_percentSymbol = [+[OITSUNumberFormatter percentSymbolForLocale:](OITSUNumberFormatter percentSymbolForLocale:{v8->_locale), "copy"}];
    v14 = [(NSString *)v8->_decimalSeparator isEqualToString:@"."];
    v15 = @";";
    if (v14)
    {
      v15 = @",";
    }

    v8->_listSeparator = v15;
    v8->_groupingSize = [OITSUNumberFormatter groupingSizeForLocale:v8->_locale];
    v8->_localeSpecificStorageLock = objc_opt_new();
    v8->_localeSpecificStorage = objc_opt_new();
    v8->_dateComponentOrdering = TSUDateComponentOrderingForLocale([locale localeIdentifier]);
    v8->_gregorianCalendarLocale = TSUCopyLocaleWithGregorianCalendarFromLocale(v8->_locale);
    UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, v8->_locale, kCFDateFormatterMediumStyle, kCFDateFormatterMediumStyle);
    v8->_monthSymbols = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBED98]);
    v8->_standaloneMonthSymbols = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBEDE0]);
    v8->_weekdaySymbols = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBEE20]);
    v8->_standaloneWeekdaySymbols = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBEDF0]);
    v8->_shortMonthSymbols = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBEDB0]);
    v8->_shortStandaloneMonthSymbols = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBEDC0]);
    v8->_shortWeekdaySymbols = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBEDD8]);
    v8->_shortStandaloneWeekdaySymbols = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBEDD0]);
    v8->_amString = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBED70]);
    v8->_pmString = CFDateFormatterCopyProperty(UsingHarmonizedSymbols, *MEMORY[0x277CBEDA0]);
    CFRelease(UsingHarmonizedSymbols);
    v8->_trueString = [(OITSULocale *)v8 localizedStringForKey:@"TRUE" value:&stru_286EE1130 table:@"TSUtility"];
    v8->_falseString = [(OITSULocale *)v8 localizedStringForKey:@"FALSE" value:&stru_286EE1130 table:@"TSUtility"];
    v17 = objc_opt_new();
    v8->_cachedLocalizedStrings = v17;
    [(NSCache *)v17 setName:@"Docuemnt-language localized strings cache"];
    if (!autoupdatingCopy)
    {
      [OITSULocale saveLocaleForReuse:v8];
    }
  }

  else
  {
    v12 = v11;

    return v12;
  }

  return v8;
}

- (id)localeIdentifierWithLanguageAndRegionOnly
{
  localeIdentifier = [(OITSULocale *)self localeIdentifier];

  return [OITSULocale canonicalizeLocaleIdentifierWithLanguageAndRegionOnly:localeIdentifier];
}

- (id)localeIdentifierWithLanguageScriptAndRegionOnly
{
  localeIdentifier = [(OITSULocale *)self localeIdentifier];

  return [OITSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:localeIdentifier];
}

- (id)copyWithDocumentLanguageIdentifier:(id)identifier
{
  v5 = [OITSULocale alloc];
  locale = [(OITSULocale *)self locale];
  isAutoUpdating = [(OITSULocale *)self isAutoUpdating];

  return [(OITSULocale *)v5 initWithLocale:locale documentLanguageIdentifier:identifier useAutoupdating:isAutoUpdating];
}

- (void)dealloc
{
  self->_gregorianCalendarLocale = 0;
  plainFormatter = self->_plainFormatter;
  if (plainFormatter)
  {
    CFRelease(plainFormatter);
    self->_plainFormatter = 0;
  }

  noMinusSignPlainFormatter = self->_noMinusSignPlainFormatter;
  if (noMinusSignPlainFormatter)
  {
    CFRelease(noMinusSignPlainFormatter);
    self->_noMinusSignPlainFormatter = 0;
  }

  currencyFormatter = self->_currencyFormatter;
  if (currencyFormatter)
  {
    CFRelease(currencyFormatter);
    self->_currencyFormatter = 0;
  }

  noMinusSignCurrencyFormatter = self->_noMinusSignCurrencyFormatter;
  if (noMinusSignCurrencyFormatter)
  {
    CFRelease(noMinusSignCurrencyFormatter);
    self->_noMinusSignCurrencyFormatter = 0;
  }

  pthread_mutex_destroy(&self->_formattersMutex);
  v7.receiver = self;
  v7.super_class = OITSULocale;
  [(OITSULocale *)&v7 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, equal);
    if (v6)
    {
      v7 = v6;
      LODWORD(v6) = -[NSString isEqualToString:](-[OITSULocale localeIdentifier](self, "localeIdentifier"), "isEqualToString:", [v6 localeIdentifier]);
      if (v6)
      {
        isAutoUpdating = [(OITSULocale *)self isAutoUpdating];
        LOBYTE(v6) = isAutoUpdating ^ [v7 isAutoUpdating] ^ 1;
      }
    }
  }

  return v6;
}

- (unint64_t)hash
{
  localeIdentifier = [(OITSULocale *)self localeIdentifier];

  return [(NSString *)localeIdentifier hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_isAutoUpdating)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  return [v3 stringWithFormat:@"<%@: %p>: for %@ language %@ autoupdating: %@", v4, self, self->_localeIdentifier, self->_documentLanguageIdentifier, v5];
}

- (id)displayLanguageNameWithStandalone:(BOOL)standalone
{
  standaloneCopy = standalone;
  v5 = *MEMORY[0x277CBE6C8];
  v6 = [(NSLocale *)self->_locale objectForKey:*MEMORY[0x277CBE6C8]];
  if ([v6 isEqualToString:@"zh"] && ((v7 = -[NSLocale objectForKey:](self->_locale, "objectForKey:", *MEMORY[0x277CBE6F8])) != 0 || (v7 = +[OITSULocale deducedScriptForLocale:](OITSULocale, "deducedScriptForLocale:", self->_localeIdentifier)) != 0))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v7];
    v9 = *MEMORY[0x277CBE6C0];
  }

  else
  {
    v8 = v6;
    v9 = v5;
  }

  return [OITSULocale displayNameForCode:v8 ofType:v9 displayStandalone:standaloneCopy];
}

- (__CFNumberFormatter)checkoutNumberFormatter
{
  pthread_mutex_lock(&self->_formattersMutex);
  if ([(NSMutableArray *)self->_numberFormatters count])
  {
    lastObject = [(NSMutableArray *)self->_numberFormatters lastObject];
    [(NSMutableArray *)self->_numberFormatters removeLastObject];
    pthread_mutex_unlock(&self->_formattersMutex);
    if (lastObject)
    {
      goto LABEL_6;
    }
  }

  else
  {
    pthread_mutex_unlock(&self->_formattersMutex);
  }

  lastObject = TSUHarmonizedCFNumberFormatterCreate([(OITSULocale *)self locale], 0);
  CFNumberFormatterSetFormat(lastObject, @"0");
  CFNumberFormatterSetProperty(lastObject, *MEMORY[0x277CBEF58], [MEMORY[0x277CCABB0] numberWithInt:0]);
  CFNumberFormatterSetProperty(lastObject, *MEMORY[0x277CBEF48], [MEMORY[0x277CCABB0] numberWithInt:0x7FFFFFFFLL]);
  if (!lastObject)
  {
    return 0;
  }

LABEL_6:

  return lastObject;
}

- (void)returnNumberFormatter:(__CFNumberFormatter *)formatter
{
  if (formatter)
  {
    pthread_mutex_lock(&self->_formattersMutex);
    [(NSMutableArray *)self->_numberFormatters addObject:formatter];

    pthread_mutex_unlock(&self->_formattersMutex);
  }
}

- (__CFNumberFormatter)checkoutScientificNumberFormatter
{
  pthread_mutex_lock(&self->_formattersMutex);
  if ([(NSMutableArray *)self->_scientificNumberFormatters count])
  {
    lastObject = [(NSMutableArray *)self->_scientificNumberFormatters lastObject];
    [(NSMutableArray *)self->_scientificNumberFormatters removeLastObject];
    pthread_mutex_unlock(&self->_formattersMutex);
    if (lastObject)
    {
      goto LABEL_6;
    }
  }

  else
  {
    pthread_mutex_unlock(&self->_formattersMutex);
  }

  lastObject = TSUHarmonizedCFNumberFormatterCreate([(OITSULocale *)self locale], 4);
  CFNumberFormatterSetFormat(lastObject, @"0E+0");
  CFNumberFormatterSetProperty(lastObject, *MEMORY[0x277CBEF58], [MEMORY[0x277CCABB0] numberWithInt:0]);
  CFNumberFormatterSetProperty(lastObject, *MEMORY[0x277CBEF48], [MEMORY[0x277CCABB0] numberWithInt:0x7FFFFFFFLL]);
  if (!lastObject)
  {
    return 0;
  }

LABEL_6:

  return lastObject;
}

- (void)returnScientificNumberFormatter:(__CFNumberFormatter *)formatter
{
  if (formatter)
  {
    pthread_mutex_lock(&self->_formattersMutex);
    [(NSMutableArray *)self->_scientificNumberFormatters addObject:formatter];

    pthread_mutex_unlock(&self->_formattersMutex);
  }
}

- (void)_initializeNumberFormatterStringFromDoubleCache
{
  [(NSLock *)self->_numberFormatterStringFromDoubleWithFormatLock lock];
  if (!self->_noMinusSignCurrencyFormatter)
  {
    v3 = TSUHarmonizedCFNumberFormatterCreate([(OITSULocale *)self locale], 0);
    self->_noMinusSignCurrencyFormatter = v3;
    CFNumberFormatterSetProperty(v3, *MEMORY[0x277CBEFD8], [MEMORY[0x277CCABB0] numberWithInt:6]);
    CFNumberFormatterSetProperty(self->_noMinusSignCurrencyFormatter, *MEMORY[0x277CBEF68], &unk_286F6D710);
  }

  if (!self->_currencyFormatter)
  {
    v4 = TSUHarmonizedCFNumberFormatterCreate([(OITSULocale *)self locale], 0);
    self->_currencyFormatter = v4;
    CFNumberFormatterSetProperty(v4, *MEMORY[0x277CBEFD8], [MEMORY[0x277CCABB0] numberWithInt:6]);
    CFNumberFormatterSetProperty(self->_currencyFormatter, *MEMORY[0x277CBEF68], &unk_286F6D710);
  }

  if (!self->_noMinusSignPlainFormatter)
  {
    v5 = TSUHarmonizedCFNumberFormatterCreate([(OITSULocale *)self locale], 0);
    self->_noMinusSignPlainFormatter = v5;
    CFNumberFormatterSetProperty(v5, *MEMORY[0x277CBEFD8], [MEMORY[0x277CCABB0] numberWithInt:6]);
    CFNumberFormatterSetProperty(self->_noMinusSignPlainFormatter, *MEMORY[0x277CBEF68], &unk_286F6D710);
  }

  if (!self->_plainFormatter)
  {
    v6 = TSUHarmonizedCFNumberFormatterCreate([(OITSULocale *)self locale], 0);
    self->_plainFormatter = v6;
    CFNumberFormatterSetProperty(v6, *MEMORY[0x277CBEFD8], [MEMORY[0x277CCABB0] numberWithInt:6]);
    CFNumberFormatterSetProperty(self->_plainFormatter, *MEMORY[0x277CBEF68], &unk_286F6D710);
  }

  numberFormatterStringFromDoubleWithFormatLock = self->_numberFormatterStringFromDoubleWithFormatLock;

  [(NSLock *)numberFormatterStringFromDoubleWithFormatLock unlock];
}

- (id)numberFormatterStringFromDouble:(double)double withFormat:(id)format useDecimalPlaces:(BOOL)places minDecimalPlaces:(unsigned __int16)decimalPlaces decimalPlaces:(unsigned __int16)a7 showThousandsSeparator:(BOOL)separator currencyCode:(id)code suppressMinusSign:(BOOL)self0
{
  separatorCopy = separator;
  v12 = a7;
  decimalPlacesCopy = decimalPlaces;
  placesCopy = places;
  doubleCopy = double;
  if (!self->_plainFormatter)
  {
    [(OITSULocale *)self _initializeNumberFormatterStringFromDoubleCache];
  }

  [(NSLock *)self->_numberFormatterStringFromDoubleWithFormatLock lock];
  if (code && [code length])
  {
    if (sign)
    {
      v17 = 320;
    }

    else
    {
      v17 = 312;
    }

    v18 = 296;
    if (sign)
    {
      v18 = 304;
    }

    noMinusSignPlainFormatter = *(&self->super.isa + v18);
    if (([code isEqualToString:*(&self->super.isa + v17)] & 1) == 0)
    {
      TSUHarmonizedCFNumberFormatterSetCurrency(noMinusSignPlainFormatter, code);

      *(&self->super.isa + v17) = [code copy];
    }
  }

  else if (sign)
  {
    noMinusSignPlainFormatter = self->_noMinusSignPlainFormatter;
  }

  else
  {
    noMinusSignPlainFormatter = self->_plainFormatter;
  }

  CFNumberFormatterSetFormat(noMinusSignPlainFormatter, format);
  if (placesCopy)
  {
    if (kTSUNumberFormatterDecimalPlacesAsManyAsNecessary == v12)
    {
      v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0];
      v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:0x7FFFFFFFLL];
      CFNumberFormatterSetProperty(noMinusSignPlainFormatter, *MEMORY[0x277CBEF58], v20);
      CFNumberFormatterSetProperty(noMinusSignPlainFormatter, *MEMORY[0x277CBEF48], v21);
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:decimalPlacesCopy];
      CFNumberFormatterSetProperty(noMinusSignPlainFormatter, *MEMORY[0x277CBEF58], v22);

      v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v12];
      CFNumberFormatterSetProperty(noMinusSignPlainFormatter, *MEMORY[0x277CBEF48], v23);
    }
  }

  if (sign)
  {
    CFNumberFormatterSetProperty(noMinusSignPlainFormatter, *MEMORY[0x277CBEF70], &stru_286EE1130);
  }

  v24 = MEMORY[0x277CBED10];
  if (separatorCopy)
  {
    v24 = MEMORY[0x277CBED28];
  }

  CFNumberFormatterSetProperty(noMinusSignPlainFormatter, *MEMORY[0x277CBEFE8], *v24);
  if (separatorCopy)
  {
    v25 = *MEMORY[0x277CBEF30];
    v26 = CFNumberFormatterCopyProperty(noMinusSignPlainFormatter, *MEMORY[0x277CBEF30]);
    valuePtr = 0;
    Type = CFNumberGetType(v26);
    CFNumberGetValue(v26, Type, &valuePtr);
    if (!valuePtr)
    {
      CFNumberFormatterSetProperty(noMinusSignPlainFormatter, v25, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[OITSULocale groupingSize](self, "groupingSize")}]);
    }
  }

  v28 = CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], noMinusSignPlainFormatter, kCFNumberDoubleType, &doubleCopy);
  [(NSLock *)self->_numberFormatterStringFromDoubleWithFormatLock unlock];
  return v28;
}

- (id)localeSpecificStorageForKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  [(NSLock *)self->_localeSpecificStorageLock lock];
  v5 = [(NSMutableDictionary *)self->_localeSpecificStorage objectForKey:key];
  [(NSLock *)self->_localeSpecificStorageLock unlock];
  return v5;
}

- (void)setLocaleSpecificStorage:(id)storage forKey:(id)key
{
  if (key)
  {
    [(NSLock *)self->_localeSpecificStorageLock lock];
    localeSpecificStorage = self->_localeSpecificStorage;
    if (storage)
    {
      [(NSMutableDictionary *)localeSpecificStorage setObject:storage forKey:key];
    }

    else
    {
      [(NSMutableDictionary *)localeSpecificStorage removeObjectForKey:key];
    }

    localeSpecificStorageLock = self->_localeSpecificStorageLock;

    [(NSLock *)localeSpecificStorageLock unlock];
  }
}

- (int64_t)localizedCompare:(id)compare toString:(id)string
{
  v7 = [compare length];
  locale = [(OITSULocale *)self locale];

  return [compare compare:string options:0 range:0 locale:{v7, locale}];
}

- (int64_t)localizedCaseInsensitiveCompare:(id)compare toString:(id)string
{
  v7 = [compare length];
  locale = [(OITSULocale *)self locale];

  return [compare compare:string options:1 range:0 locale:{v7, locale}];
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  objc_sync_enter(self);
  if (!sLocalizedStringBundle)
  {
    v7 = objc_opt_class();
    [v7 setLocalizedStringBundle:CFBundleGetMainBundle()];
    v8 = CFBundleCopyBundleURL(sLocalizedStringBundle);
    CFRelease(v8);
  }

  objc_sync_exit(self);
  return key;
}

- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory inBundleWithURL:(id)l
{
  v10 = CFBundleCreate(*MEMORY[0x277CBECE8], l);
  v11 = [(OITSULocale *)self URLForResource:resource withExtension:extension subdirectory:subdirectory inBundle:v10];
  CFRelease(v10);
  return v11;
}

- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory inBundle:(__CFBundle *)bundle
{
  v16[1] = *MEMORY[0x277D85DE8];
  v11 = CFBundleCopyBundleLocalizations(bundle);
  v16[0] = [(OITSULocale *)self localeIdentifierWithLanguageAndRegionOnly];
  v12 = CFBundleCopyLocalizationsForPreferences(v11, [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1]);
  ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
  v14 = CFBundleCopyResourceURLForLocalization(bundle, resource, extension, subdirectory, ValueAtIndex);
  CFRelease(v11);
  CFRelease(v12);
  return v14;
}

@end