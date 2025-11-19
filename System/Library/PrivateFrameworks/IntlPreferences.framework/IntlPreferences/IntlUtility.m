@interface IntlUtility
+ (BOOL)canCapitalizeAutonymForLanguage:(id)a3;
+ (BOOL)forceCapitalizationInLanguageLists;
+ (BOOL)isChineseLikeLunarCalendar:(id)a3;
+ (BOOL)isLunarCalendarDefaultOn;
+ (BOOL)isLunarCalendarDefaultOnForLanguage:(id)a3 locale:(id)a4;
+ (BOOL)isYearlessDate:(id)a3 forCalendar:(id)a4;
+ (BOOL)upgradeAppleLanguagesFrom:(id)a3 to:(id)a4;
+ (id)_dataForLunarCalendar:(id)a3;
+ (id)_getXPCConnectionForLocalizationSwitcher;
+ (id)_lunarCalendarData;
+ (id)_lunarCalendars;
+ (id)_preferredLanguagesForBundleID:(id)a3;
+ (id)_preferredLanguagesForBundleID:(id)a3 withBundleRecord:(id)a4;
+ (id)_proposedOverrideLanguageFromLanguage:(id)a3 forLocalizations:(id)a4 preferredLanguages:(id)a5 regionCode:(id)a6;
+ (id)_sortedCalendarIdentifiersFrom:(id)a3;
+ (id)_supportedCalendarsOnEmbeddedSystems;
+ (id)alternateContinentOfRegion:(id)a3;
+ (id)capitalizeFirstWordOfName:(id)a3 accordingToLanguage:(id)a4;
+ (id)defaultCalendarForLocaleID:(id)a3;
+ (id)displayNameForNumberingSystemWithIdentifier:(id)a3 localeIdentifier:(id)a4 short:(BOOL)a5;
+ (id)filterLanguageList:(id)a3 forRegion:(id)a4 fromLanguages:(id)a5;
+ (id)localeForCalendarID:(id)a3;
+ (id)localeForCalendarID:(id)a3 andLocale:(id)a4;
+ (id)localeForCalendarID:(id)a3 andLocale:(id)a4 preferredLanguages:(id)a5;
+ (id)lunarCalendarsForLocaleID:(id)a3;
+ (id)normalizedLanguageIDFromString:(id)a3;
+ (id)numberingSystemForLocaleID:(id)a3;
+ (id)numberingSystemsForLocaleID:(id)a3;
+ (id)numberingSystemsFromArray:(id)a3 forLocaleID:(id)a4;
+ (id)parentLocaleIdentifierForIdentifier:(id)a3;
+ (id)perAppLanguageSelectionBundleIdentifiers;
+ (id)preferredLanguageForBundleID:(id)a3;
+ (id)preferredLanguagesForBundleIDs:(id)a3;
+ (id)preferredLanguagesFromLanguages:(id)a3 byAddingFallbacksForRegion:(id)a4;
+ (id)preferredLunarCalendarForLocaleID:(id)a3;
+ (id)sharedIntlUtility;
+ (id)stdLanguageIDs;
+ (int)UDisplayContextForIUDisplayNameContext:(unint64_t)a3;
+ (int64_t)formattingContextFromIUDisplayNameContext:(unint64_t)a3;
+ (int64_t)yearlessYearForMonth:(int64_t)a3 withCalendar:(id)a4;
+ (void)_setPreferredLanguage:(id)a3 forBundleID:(id)a4;
+ (void)checkForDiscoveredLanguages:(id)a3;
+ (void)enumeratePreferredCalendarsForLocaleID:(id)a3 usingBlock:(id)a4;
+ (void)preferredLanguagesForBundleID:(id)a3 reply:(id)a4;
+ (void)preferredLanguagesForBundleIDs:(id)a3 reply:(id)a4;
+ (void)setPreferredLanguage:(id)a3 forBundleID:(id)a4;
+ (void)setPreferredLanguage:(id)a3 forBundleID:(id)a4 andRelaunchWithCompletion:(id)a5;
+ (void)setYearlessYear:(id)a3 forCalendar:(id)a4;
+ (void)subscribeToAppLanguageChanges:(id)a3;
+ (void)unsubscribeFromAppLanguageChanges;
- (BOOL)canRenderLanguage:(id)a3;
- (id)ICUdisplayNameForLanguage:(id)a3 capitalization:(ULocaleDisplayNames *)a4;
- (id)displayNameForDialect:(id)a3 context:(unint64_t)a4 displayLanguage:(id)a5;
- (id)displayNameForLanguage:(id)a3 context:(unint64_t)a4 displayLanguage:(id)a5;
- (id)displayNameForLocale:(id)a3 displayLanguage:(id)a4 capitalization:(unint64_t)a5 short:(BOOL)a6;
- (id)languageList;
- (id)localizedNameForScript:(signed __int16)a3;
@end

@implementation IntlUtility

+ (id)sharedIntlUtility
{
  if (sharedIntlUtility_onceToken != -1)
  {
    +[IntlUtility sharedIntlUtility];
  }

  v3 = sharedIntlUtility_sIntlUtility;

  return v3;
}

- (id)languageList
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__IntlUtility_languageList__block_invoke;
  block[3] = &unk_2787A8F28;
  block[4] = self;
  if (languageList___onceToken != -1)
  {
    dispatch_once(&languageList___onceToken, block);
  }

  return languageList___languageToNativeNameMap;
}

uint64_t __32__IntlUtility_sharedIntlUtility__block_invoke()
{
  sharedIntlUtility_sIntlUtility = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)stdLanguageIDs
{
  if (stdLanguageIDs_onceToken != -1)
  {
    +[IntlUtility stdLanguageIDs];
  }

  v3 = stdLanguageIDs_sStdLanguageIDs;

  return v3;
}

void __29__IntlUtility_stdLanguageIDs__block_invoke()
{
  v2 = [MEMORY[0x277CBEAF8] supportedLanguages];
  v0 = [v2 allObjects];
  v1 = stdLanguageIDs_sStdLanguageIDs;
  stdLanguageIDs_sStdLanguageIDs = v0;
}

+ (id)normalizedLanguageIDFromString:(id)a3
{
  v4 = a3;
  if (v4 && ([objc_opt_class() stdLanguageIDs], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, !v6) && (objc_msgSend(MEMORY[0x277CBEAF8], "canonicalLanguageIdentifierFromString:", v4), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    block = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __46__IntlUtility_normalizedLanguageIDFromString___block_invoke;
    v24 = &__block_descriptor_40_e5_v8__0l;
    v25 = a1;
    if (normalizedLanguageIDFromString____onceTokenForSpecialIDReplacements != -1)
    {
      dispatch_once(&normalizedLanguageIDFromString____onceTokenForSpecialIDReplacements, &block);
    }

    if (normalizedLanguageIDFromString__sSpecialIDReplacements && ([normalizedLanguageIDFromString__sSpecialIDReplacements objectForKey:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
    }

    else
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __46__IntlUtility_normalizedLanguageIDFromString___block_invoke_2;
      v19 = &__block_descriptor_40_e5_v8__0l;
      v20 = a1;
      if (normalizedLanguageIDFromString____onceTokenForCanonicalLanguageIDs != -1)
      {
        dispatch_once(&normalizedLanguageIDFromString____onceTokenForCanonicalLanguageIDs, &v16);
      }

      v12 = [normalizedLanguageIDFromString__sCanonicalLanguageIDs indexOfObject:{v8, v16, v17, v18, v19, v20, block, v22, v23, v24, v25}];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v12;
        v14 = [objc_opt_class() stdLanguageIDs];
        v15 = [v14 objectAtIndex:v13];

        v8 = v15;
      }

      v10 = v8;
      v8 = v10;
    }
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

void __46__IntlUtility_normalizedLanguageIDFromString___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v2 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v6 URLForResource:@"LanguageCodeExceptions" withExtension:@"plist"];
  v4 = [v1 dictionaryWithContentsOfURL:v3];
  v5 = normalizedLanguageIDFromString__sSpecialIDReplacements;
  normalizedLanguageIDFromString__sSpecialIDReplacements = v4;
}

void __46__IntlUtility_normalizedLanguageIDFromString___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() stdLanguageIDs];
  v5 = [v2 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() stdLanguageIDs];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:*(*(&v16 + 1) + 8 * v11)];
        [v5 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  v14 = normalizedLanguageIDFromString__sCanonicalLanguageIDs;
  normalizedLanguageIDFromString__sCanonicalLanguageIDs = v13;

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)capitalizeFirstWordOfName:(id)a3 accordingToLanguage:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:a4];
  v7 = [v5 length];
  if (v7 >= 0x80)
  {
    v8 = 128;
  }

  else
  {
    v8 = v7;
  }

  [v5 getCharacters:v17 range:{0, v8}];
  [v6 UTF8String];
  ubrk_open();
  ubrk_first();
  v9 = ubrk_next();
  ubrk_close();
  v10 = [v5 substringToIndex:v9];
  v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v6];
  v12 = [v10 capitalizedStringWithLocale:v11];

  v13 = [v5 substringFromIndex:v9];
  v14 = [v12 stringByAppendingString:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)alternateContinentOfRegion:(id)a3
{
  v3 = alternateContinentOfRegion__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[IntlUtility alternateContinentOfRegion:];
  }

  v5 = [alternateContinentOfRegion__sAltContinentsForRegion objectForKeyedSubscript:v4];

  return v5;
}

uint64_t __42__IntlUtility_alternateContinentOfRegion___block_invoke()
{
  alternateContinentOfRegion__sAltContinentsForRegion = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"AM", @"150", @"CY", @"142", @"EG", @"150", @"GE", @"150", @"GL", @"150", @"TR", @"142", @"RU", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (void)enumeratePreferredCalendarsForLocaleID:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 && v5)
  {
    v10 = 0;
    [a3 UTF8String];
    ucal_getKeywordValuesForLocale();
    v9 = 0;
    do
    {
      v7 = uenum_next();
      if (!v7)
      {
        break;
      }

      if (v10 > 0)
      {
        break;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      (v6)[2](v6, v8, &v9);
    }

    while (v9 != 1);
    uenum_close();
  }
}

+ (id)defaultCalendarForLocaleID:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  [a3 UTF8String];
  uloc_getBaseName();
  ucal_open();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:ucal_getType()];
  ucal_close();
  if (!v5)
  {
    v5 = *MEMORY[0x277CBE5C0];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_lunarCalendarData
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__IntlUtility__lunarCalendarData__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_lunarCalendarData___onceToken != -1)
  {
    dispatch_once(&_lunarCalendarData___onceToken, block);
  }

  v2 = _lunarCalendarData___lunarCalendarData;

  return v2;
}

void __33__IntlUtility__lunarCalendarData__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"LunarCalendars" withExtension:@"plist"];
  v5 = [v1 dictionaryWithContentsOfURL:v4];
  v6 = _lunarCalendarData___lunarCalendarData;
  _lunarCalendarData___lunarCalendarData = v5;

  if (!_lunarCalendarData___lunarCalendarData && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __33__IntlUtility__lunarCalendarData__block_invoke_cold_1();
  }
}

+ (id)_dataForLunarCalendar:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBE5E0];
  v6 = [v4 hasPrefix:*MEMORY[0x277CBE5E0]];
  v7 = [a1 _lunarCalendarData];
  v8 = v7;
  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  v10 = [v7 objectForKey:v9];

  return v10;
}

+ (id)_lunarCalendars
{
  if (_os_feature_enabled_impl())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__IntlUtility__lunarCalendars__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (_lunarCalendars___onceToken != -1)
    {
      dispatch_once(&_lunarCalendars___onceToken, block);
    }

    v3 = _lunarCalendars___lunarCalendars;
  }

  else
  {
    v3 = &unk_2841A2518;
  }

  return v3;
}

void __30__IntlUtility__lunarCalendars__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _lunarCalendarData];
  v1 = [v4 allKeys];
  v2 = [v1 sortedArrayUsingSelector:sel_compare_];
  v3 = _lunarCalendars___lunarCalendars;
  _lunarCalendars___lunarCalendars = v2;
}

+ (id)_sortedCalendarIdentifiersFrom:(id)a3
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a3;
  v5 = [v3 currentLocale];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__IntlUtility__sortedCalendarIdentifiersFrom___block_invoke;
  v9[3] = &unk_2787A91B8;
  v10 = v5;
  v6 = v5;
  v7 = [v4 sortedArrayUsingComparator:v9];

  return v7;
}

uint64_t __46__IntlUtility__sortedCalendarIdentifiersFrom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) localizedStringForCalendarIdentifier:v5];
  if (!v7)
  {
    v7 = v5;
  }

  v8 = [*(a1 + 32) localizedStringForCalendarIdentifier:v6];
  if (!v8)
  {
    v8 = v6;
  }

  v9 = [v7 localizedStandardCompare:v8];

  return v9;
}

+ (id)lunarCalendarsForLocaleID:(id)a3
{
  v4 = a3;
  v5 = [a1 _lunarCalendars];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = *MEMORY[0x277CBE5E8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__IntlUtility_lunarCalendarsForLocaleID___block_invoke;
  v10[3] = &unk_2787A91E0;
  v10[4] = &v11;
  [IntlUtility enumeratePreferredCalendarsForLocaleID:v4 usingBlock:v10];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  [v6 setArray:v5];
  v7 = [v6 indexOfObject:*MEMORY[0x277CBE5E0]];
  [v6 replaceObjectAtIndex:v7 withObject:v12[5]];
  v8 = [a1 _sortedCalendarIdentifiersFrom:v6];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __41__IntlUtility_lunarCalendarsForLocaleID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *MEMORY[0x277CBE5E0];
  v8 = v6;
  if ([v6 hasPrefix:*MEMORY[0x277CBE5E0]] && (objc_msgSend(v8, "isEqualToString:", v7) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)preferredLunarCalendarForLocaleID:(id)a3
{
  v3 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v4 = [IntlUtility lunarCalendarsForLocaleID:v3];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __49__IntlUtility_preferredLunarCalendarForLocaleID___block_invoke;
  v15 = &unk_2787A9208;
  v5 = v4;
  v16 = v5;
  v17 = &v18;
  [IntlUtility enumeratePreferredCalendarsForLocaleID:v3 usingBlock:&v12];
  v6 = v19[5];
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:{v3, v12, v13, v14, v15}];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
    if (_isChineseLanguageCode(v8))
    {
      v9 = MEMORY[0x277CBE590];
    }

    else if ([v8 isEqualToString:@"ar"])
    {
      v9 = MEMORY[0x277CBE5E8];
    }

    else if ([v8 isEqualToString:@"he"])
    {
      v9 = MEMORY[0x277CBE5C8];
    }

    else if ([v8 isEqualToString:@"vi"])
    {
      v9 = MEMORY[0x277CBE618];
    }

    else
    {
      if (![v8 isEqualToString:@"ko"])
      {
LABEL_13:

        v6 = v19[5];
        goto LABEL_14;
      }

      v9 = MEMORY[0x277CBE5A0];
    }

    objc_storeStrong(v19 + 5, *v9);
    goto LABEL_13;
  }

LABEL_14:
  v10 = v6;

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __49__IntlUtility_preferredLunarCalendarForLocaleID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)localeForCalendarID:(id)a3
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a3;
  v5 = [v3 currentLocale];
  v6 = [IntlUtility localeForCalendarID:v4 andLocale:v5];

  return v6;
}

+ (id)localeForCalendarID:(id)a3 andLocale:(id)a4
{
  v5 = MEMORY[0x277CBEAF8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 preferredLanguages];
  v9 = [IntlUtility localeForCalendarID:v7 andLocale:v6 preferredLanguages:v8];

  return v9;
}

+ (id)localeForCalendarID:(id)a3 andLocale:(id)a4 preferredLanguages:(id)a5
{
  v42[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBEB38];
  v11 = MEMORY[0x277CBEAF8];
  v12 = [a4 localeIdentifier];
  v13 = [v11 componentsFromLocaleIdentifier:v12];
  v14 = [v10 dictionaryWithDictionary:v13];

  v15 = [a1 _dataForLunarCalendar:v8];
  v16 = [v15 objectForKey:@"preferredLanguages"];
  if ([v16 count])
  {
    v17 = [MEMORY[0x277CBEAF8] mostPreferredLanguageOf:v16 withPreferredLanguages:v9 forUsage:1 options:0];
    if (v17 || ([v15 objectForKey:@"restrictToPreferredLanguages"], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "BOOLValue"), v22, v23) && (objc_msgSend(v16, "firstObject"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = v17;
      v19 = *MEMORY[0x277CBE6F8];
      v42[0] = *MEMORY[0x277CBE6C8];
      v42[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      [v14 removeObjectsForKeys:v20];

      v21 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v18];
      [v14 addEntriesFromDictionary:v21];
    }
  }

  v24 = [v15 objectForKey:@"numberingSystems"];
  v25 = MEMORY[0x277CBEAF8];
  v26 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v14];
  v27 = [v25 localeWithLocaleIdentifier:v26];
  v28 = [v27 languageIdentifier];

  v29 = [v24 objectForKeyedSubscript:v28];
  if (![v29 length])
  {
    v30 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v28];
    [v24 objectForKeyedSubscript:v30];
    v32 = v31 = v8;

    v29 = v32;
    v8 = v31;
  }

  v33 = v15;
  v41 = v9;
  if ([v29 length])
  {
    [v14 setObject:v29 forKeyedSubscript:@"numbers"];
  }

  [v14 setObject:v8 forKeyedSubscript:@"calendar"];
  v34 = MEMORY[0x277CBEAF8];
  [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v14];
  v36 = v35 = v8;
  v37 = [v34 canonicalLocaleIdentifierFromString:v36];

  v38 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v37];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (BOOL)isLunarCalendarDefaultOn
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v5 = [v4 firstObject];
  v6 = [v3 canonicalLanguageIdentifierFromString:v5];

  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  LOBYTE(a1) = [a1 isLunarCalendarDefaultOnForLanguage:v6 locale:v7];

  return a1;
}

+ (BOOL)isLunarCalendarDefaultOnForLanguage:(id)a3 locale:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x277CBE690];
  v8 = a3;
  v9 = [v6 objectForKey:v7];
  v10 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v8];

  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  v12 = (_isChineseLanguageCode(v11) & 1) != 0 || [v11 isEqualToString:@"vi"];
  if (([v11 isEqualToString:@"he"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"IL") && !objc_msgSend(v11, "isEqualToString:", @"ar"))
  {
    if ([v11 isEqualToString:@"ar"])
    {
      [&unk_2841A2530 containsObject:v9];
    }
  }

  else if ([v11 isEqualToString:@"ar"])
  {
    if (((v12 | [&unk_2841A2530 containsObject:v9]) & 1) == 0)
    {
LABEL_12:
      LOBYTE(v13) = 0;
      goto LABEL_20;
    }
  }

  else if (!v12)
  {
    goto LABEL_12;
  }

  v14 = [v6 localeIdentifier];
  v15 = [a1 preferredLunarCalendarForLocaleID:v14];

  v16 = [v6 localeIdentifier];
  v17 = [a1 defaultCalendarForLocaleID:v16];

  v18 = [a1 supportedCalendars];
  LOBYTE(v16) = [v18 containsObject:v17];

  if ((v16 & 1) == 0)
  {
    v19 = *MEMORY[0x277CBE5C0];

    v17 = v19;
  }

  if (v15)
  {
    v13 = [v17 isEqualToString:v15] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 1;
  }

LABEL_20:
  return v13;
}

+ (BOOL)isChineseLikeLunarCalendar:(id)a3
{
  v3 = [a3 calendarIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277CBE590]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CBE5A0]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x277CBE618]];
  }

  return v4;
}

+ (int64_t)yearlessYearForMonth:(int64_t)a3 withCalendar:(id)a4
{
  v6 = a4;
  v7 = [v6 calendarIdentifier];
  if ([v7 isEqualToString:*MEMORY[0x277CBE5C8]])
  {
    v8 = 6;
  }

  else if ([v7 hasPrefix:@"islamic"])
  {
    v8 = 7;
  }

  else if ([a1 isChineseLikeLunarCalendar:v6])
  {
    v8 = chineseLeapMonthExtendedYears[a3];
  }

  else
  {
    v8 = 1604;
  }

  return v8;
}

+ (BOOL)isYearlessDate:(id)a3 forCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 1;
  }

  else
  {
    if (!v7)
    {
      v7 = [v6 calendar];
    }

    v9 = +[IntlUtility yearlessYearForMonth:withCalendar:](IntlUtility, "yearlessYearForMonth:withCalendar:", [v6 month], v7);
    if ([a1 isChineseLikeLunarCalendar:v7])
    {
      v10 = [v6 era];
      v11 = [v6 year] + 60 * v10 - 61;
    }

    else
    {
      v11 = [v6 year];
    }

    v8 = v9 == v11;
  }

  return v8;
}

+ (void)setYearlessYear:(id)a3 forCalendar:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = [v8 calendar];
  }

  v7 = +[IntlUtility yearlessYearForMonth:withCalendar:](IntlUtility, "yearlessYearForMonth:withCalendar:", [v8 month], v6);
  if ([a1 isChineseLikeLunarCalendar:v6])
  {
    [v8 setEra:v7 / 60 + 1];
    v7 = v7 % 60 + 1;
  }

  [v8 setYear:v7];
}

+ (id)numberingSystemForLocaleID:(id)a3
{
  v3 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:a3];
  v4 = [v3 mutableCopy];

  v5 = [v4 objectForKeyedSubscript:@"numbers"];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    [v4 setObject:@"default" forKeyedSubscript:@"numbers"];
    v7 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
    [v7 UTF8String];
    v8 = unumsys_open();
    v6 = 0;
    if (v8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:MEMORY[0x2318E0750](v8)];
      unumsys_close();
    }
  }

  return v6;
}

+ (id)numberingSystemsFromArray:(id)a3 forLocaleID:(id)a4
{
  v6 = a3;
  v7 = [a1 numberingSystemsForLocaleID:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__IntlUtility_numberingSystemsFromArray_forLocaleID___block_invoke;
  v12[3] = &unk_2787A9230;
  v13 = v6;
  v8 = v6;
  v9 = [v7 indexesOfObjectsPassingTest:v12];
  v10 = [v7 objectsAtIndexes:v9];

  return v10;
}

+ (id)numberingSystemsForLocaleID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v21 = v3;
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v3];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"numbers"];
  if ([v7 length] && (objc_msgSend(v4, "containsObject:", v7) & 1) == 0)
  {
    [v4 addObject:v7];
  }

  v20 = v7;
  v19 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v22 = 0u;
  v23 = 0u;
  if ([&unk_2841A2548 containsObject:?])
  {
    v8 = &unk_2841A2560;
  }

  else
  {
    v8 = &unk_2841A2578;
  }

  v24 = 0uLL;
  v25 = 0uLL;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v6 setObject:*(*(&v22 + 1) + 8 * i) forKeyedSubscript:@"numbers"];
        v13 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v6];
        [v13 UTF8String];
        v14 = unumsys_open();

        if (v14)
        {
          if (!MEMORY[0x2318E0770](v14) && MEMORY[0x2318E0760](v14) == 10)
          {
            v15 = MEMORY[0x2318E0750](v14);
            if (v15)
            {
              v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
              if (([v4 containsObject:v16] & 1) == 0)
              {
                [v4 addObject:v16];
              }
            }
          }

          unumsys_close();
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  if (([v4 containsObject:@"latn"] & 1) == 0)
  {
    [v4 addObject:@"latn"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)displayNameForNumberingSystemWithIdentifier:(id)a3 localeIdentifier:(id)a4 short:(BOOL)a5
{
  v5 = a5;
  v7 = MEMORY[0x277CBEAF8];
  v8 = a3;
  v9 = [v7 componentsFromLocaleIdentifier:a4];
  v10 = [v9 mutableCopy];

  [v10 setObject:v8 forKeyedSubscript:@"numbers"];
  v11 = objc_opt_new();
  v12 = MEMORY[0x277CBEAF8];
  v13 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v10];
  v14 = [v12 localeWithLocaleIdentifier:v13];
  [v11 setLocale:v14];

  if (v5)
  {
    v15 = &unk_2841A2488;
  }

  else
  {
    v15 = &unk_2841A24A0;
  }

  v16 = [v11 stringFromNumber:v15];

  return v16;
}

void __27__IntlUtility_languageList__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAF8] supportedLanguages];
  v3 = [v2 allObjects];

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v10, v17}];
        v12 = [v11 localizedStringForLanguage:v10 context:3];

        if ([v12 length])
        {
          v13 = *(a1 + 32);
          v14 = [objc_opt_class() capitalizeFirstWordOfName:v12 accordingToLanguage:v10];
          [v4 setObject:v14 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = languageList___languageToNativeNameMap;
  languageList___languageToNativeNameMap = v4;

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)forceCapitalizationInLanguageLists
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__IntlUtility_forceCapitalizationInLanguageLists__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (forceCapitalizationInLanguageLists___onceToken != -1)
  {
    dispatch_once(&forceCapitalizationInLanguageLists___onceToken, block);
  }

  return forceCapitalizationInLanguageLists___capitalize;
}

void __49__IntlUtility_forceCapitalizationInLanguageLists__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v2 localizedStringForKey:@"ForceCapitalizationInLanguageLists" value:@"0" table:0];

  if ([v13 length])
  {
    v3 = [v13 isEqualToString:@"0"];
    forceCapitalizationInLanguageLists___capitalize = v3 ^ 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    forceCapitalizationInLanguageLists___capitalize = 0;
  }

  v4 = MEMORY[0x277CBEAF8];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 preferredLocalizations];
  v7 = [v6 firstObject];
  v8 = [v4 canonicalLanguageIdentifierFromString:v7];

  if ([v8 length])
  {
    v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v8];
    v10 = [v9 localizedStringForLanguage:v8 context:3];

    if ([v10 length])
    {
      v11 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      v12 = [v10 rangeOfCharacterFromSet:v11];

      forceCapitalizationInLanguageLists___capitalize = v12 == 0;
    }
  }

LABEL_10:
}

+ (BOOL)canCapitalizeAutonymForLanguage:(id)a3
{
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:a3];
  v4 = [v3 languageCode];
  v5 = [v4 isEqualToString:@"lut"];

  return v5 ^ 1;
}

- (id)displayNameForDialect:(id)a3 context:(unint64_t)a4 displayLanguage:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() normalizedLanguageIDFromString:v9];
  [IntlUtility UDisplayContextForIUDisplayNameContext:a4];
  [v8 UTF8String];

  v11 = [(IntlUtility *)self ICUdisplayNameForLanguage:v10 capitalization:uldn_openForContext()];
  uldn_close();
  if ([v11 isEqualToString:v10])
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)ICUdisplayNameForLanguage:(id)a3 capitalization:(ULocaleDisplayNames *)a4
{
  v10 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    [a3 UTF8String];
    v4 = uldn_localeDisplayName();
    if (v4 >= 128)
    {
      v6 = 128;
    }

    else
    {
      v6 = v4;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithCharacters:v9 length:v6];
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)displayNameForLocale:(id)a3 displayLanguage:(id)a4 capitalization:(unint64_t)a5 short:(BOOL)a6
{
  v6 = a6;
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v11 = MEMORY[0x277CBEAF8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 preferredLocalizations];
    v14 = [v13 firstObject];
    v10 = [v11 canonicalLanguageIdentifierFromString:v14];
  }

  v27 = 0;
  v15 = [IntlUtility UDisplayContextForIUDisplayNameContext:a5];
  if (v6)
  {
    v16 = 513;
  }

  else
  {
    v16 = 512;
  }

  v28 = v15;
  v29 = v16;
  v26 = 0;
  [v10 UTF8String];
  uldn_openForContext();
  [v9 UTF8String];
  v17 = uldn_localeDisplayName();
  if (v17 >= 150)
  {
    v17 = 0;
    v26 = 15;
  }

  v18 = &v25 - ((2 * (v17 + 1) + 15) & 0x3FFFFFFF0);
  [v9 UTF8String];
  v19 = uldn_localeDisplayName();
  uldn_close();
  if (v26 <= 0)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithCharacters:v18 length:v19];
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v9;
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (int)UDisplayContextForIUDisplayNameContext:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    return 256;
  }

  else
  {
    return a3 + 256;
  }
}

+ (id)filterLanguageList:(id)a3 forRegion:(id)a4 fromLanguages:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v21 = a4;
  v8 = a5;
  v20 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v13, v21];
        v15 = [IntlUtility normalizedLanguageIDFromString:v14];

        do
        {
          if ([v8 containsObject:v15])
          {
            v13 = v15;
            v16 = v15;
            goto LABEL_12;
          }

          v16 = [IntlUtility parentLocaleIdentifierForIdentifier:v15];

          v15 = v16;
        }

        while (![v16 isEqualToString:@"root"]);
        if (![v8 containsObject:v13])
        {
          goto LABEL_13;
        }

LABEL_12:
        [v20 addObject:v13];
LABEL_13:
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)preferredLanguagesFromLanguages:(id)a3 byAddingFallbacksForRegion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 mutableCopy];
  v8 = MEMORY[0x277CBEAF8];
  v9 = [IntlUtility preferredLanguagesForRegionWithoutFiltering:v6];
  v10 = [v9 firstObject];
  v11 = [v8 baseLanguageFromLanguage:v10];

  if ([&unk_2841A2590 containsObject:v11])
  {
    v21 = v6;
    v22 = v7;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:{*(*(&v23 + 1) + 8 * i), v21}];
          v18 = [&unk_2841A2590 containsObject:v17];

          if (v18)
          {
            v6 = v21;
            v7 = v22;
            goto LABEL_14;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v6 = v21;
    v12 = [MEMORY[0x277CBEAF8] languageFromLanguage:v11 byReplacingRegion:v21];
    if ([v12 length])
    {
      v7 = v22;
      if ([v22 count])
      {
        [v22 addObject:v12];
      }
    }

    else
    {
      v7 = v22;
    }

LABEL_14:
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)parentLocaleIdentifierForIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 UTF8String];
  ualoc_getAppleParent();
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  if ([(__CFString *)v5 isEqualToString:v3])
  {

    v5 = @"root";
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)canRenderLanguage:(id)a3
{
  v3 = a3;
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 12.0, 0);
  if (UIFontForLanguage)
  {
    v5 = UIFontForLanguage;
    v6 = [objc_opt_class() normalizedLanguageIDFromString:v3];
    v7 = [MEMORY[0x277CBEAF8] exemplarForLanguage:v6];
    v8 = v7;
    if (v7 && (v15.length = CFStringGetLength(v7), v15.location = 0, (v9 = CTFontCreateForString(v5, v8, v15)) != 0))
    {
      v10 = v9;
      v11 = CTFontCopyName(v9, *MEMORY[0x277CC4930]);
      if (v11)
      {
        v12 = v11;
        v13 = CFEqual(v11, @"LastResort") == 0;
        CFRelease(v12);
      }

      else
      {
        v13 = 1;
      }

      CFRelease(v10);
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)localizedNameForScript:(signed __int16)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Script-%d", a3];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_28419F558 table:0];

  return v5;
}

+ (id)_supportedCalendarsOnEmbeddedSystems
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE600];
  v6[0] = *MEMORY[0x277CBE5C0];
  v6[1] = v2;
  v6[2] = *MEMORY[0x277CBE588];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)upgradeAppleLanguagesFrom:(id)a3 to:(id)a4
{
  v4 = [(ISMigrator *)ISRootMigrator migratorFromVersion:a3 toVersion:a4];
  v5 = [v4 performMigration];

  return v5;
}

- (id)displayNameForLanguage:(id)a3 context:(unint64_t)a4 displayLanguage:(id)a5
{
  v7 = MEMORY[0x277CBEAF8];
  v8 = a3;
  v9 = [v7 localeWithLocaleIdentifier:a5];
  v10 = [v9 localizedStringForLanguage:v8 context:{objc_msgSend(objc_opt_class(), "formattingContextFromIUDisplayNameContext:", a4)}];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  return v12;
}

+ (int64_t)formattingContextFromIUDisplayNameContext:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return 6 - a3;
  }
}

+ (id)preferredLanguageForBundleID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  v6 = [v5 URL];
  if (v6)
  {
    v7 = [a1 _preferredLanguagesForBundleID:v4 withBundleRecord:v5];
    if (!v7)
    {
      v7 = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
    }

    v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v6];
    v9 = MEMORY[0x277CCA8D8];
    v10 = [v8 normalizedLocalizations];
    v11 = [v9 preferredLocalizationsFromArray:v10 forPreferences:v7];

    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_proposedOverrideLanguageFromLanguage:(id)a3 forLocalizations:(id)a4 preferredLanguages:(id)a5 regionCode:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 length] && objc_msgSend(v10, "count") && objc_msgSend(v11, "count") && objc_msgSend(v12, "length") && (objc_msgSend(v10, "containsObject:", v9) & 1) != 0)
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __100__IntlUtility__proposedOverrideLanguageFromLanguage_forLocalizations_preferredLanguages_regionCode___block_invoke;
    v55[3] = &unk_2787A9258;
    v56 = v10;
    v13 = v9;
    v57 = v13;
    v48 = MEMORY[0x2318E03E0](v55);
    v46 = v13;
    v43 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v13];
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v52;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:*(*(&v51 + 1) + 8 * i)];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v17);
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __100__IntlUtility__proposedOverrideLanguageFromLanguage_forLocalizations_preferredLanguages_regionCode___block_invoke_2;
    v49[3] = &unk_2787A9280;
    v21 = v43;
    v50 = v21;
    v22 = [v14 indexesOfObjectsPassingTest:v49];
    if ([v22 count] && (v23 = objc_msgSend(v22, "firstIndex"), v23 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v29 = v23;
      v42 = v11;
      v44 = v21;
      while (1)
      {
        v30 = v22;
        v31 = [v15 mutableCopy];
        [v31 removeObjectAtIndex:v29];
        v32 = [v15 objectAtIndexedSubscript:v29];
        [v31 insertObject:v32 atIndex:0];

        if ((v48)[2](v48, v31))
        {
          break;
        }

        v22 = v30;
        v29 = [v30 indexGreaterThanIndex:v29];

        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = 0;
          v21 = v44;
          v25 = v46;
          goto LABEL_25;
        }
      }

      v24 = [v15 objectAtIndexedSubscript:v29];

      v21 = v44;
      v25 = v46;
      v22 = v30;
LABEL_25:
      v11 = v42;
    }

    else
    {
      v24 = 0;
      v25 = v46;
    }

    if (![v24 length])
    {
      v45 = v21;
      v47 = v22;
      v33 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v25];
      v34 = [v33 countryCode];
      v42 = [v34 length];

      if (v42)
      {
        v22 = v47;
      }

      else
      {
        v42 = [MEMORY[0x277CBEAF8] languageFromLanguage:v25 byReplacingRegion:v12];
        v58 = v42;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        v36 = [v35 arrayByAddingObjectsFromArray:v15];
        v37 = (v48)[2](v48, v36);

        if (v37)
        {
          v38 = v42;

          v24 = v38;
        }

        v22 = v47;
      }

      v21 = v45;
    }

    if (![v24 length])
    {
      v39 = v11;
      v40 = v22;
      v41 = v25;

      v24 = v41;
      v22 = v40;
      v11 = v39;
    }

    v26 = v24;
  }

  else
  {
    v26 = v9;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __100__IntlUtility__proposedOverrideLanguageFromLanguage_forLocalizations_preferredLanguages_regionCode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:*(a1 + 32) forPreferences:a2];
  v4 = [v3 firstObject];
  v5 = [v4 isEqualToString:*(a1 + 40)];

  return v5;
}

+ (id)_preferredLanguagesForBundleID:(id)a3
{
  v4 = MEMORY[0x277CC1E70];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  v7 = [a1 _preferredLanguagesForBundleID:v5 withAppRecord:v6];

  return v7;
}

+ (id)_preferredLanguagesForBundleID:(id)a3 withBundleRecord:(id)a4
{
  v5 = a3;
  v6 = [a4 dataContainerURL];
  v7 = [v6 path];

  v8 = *MEMORY[0x277CBF040];
  v9 = *MEMORY[0x277CBF010];
  v10 = _CFPreferencesCopyValueWithContainer();

  if ((_NSIsNSArray() & 1) == 0)
  {

    v10 = 0;
  }

  return v10;
}

+ (void)checkForDiscoveredLanguages:(id)a3
{
  v4 = a3;
  v5 = [a1 _getXPCConnectionForLocalizationSwitcher];
  v6 = [v5 remoteObjectProxy];
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__IntlUtility_checkForDiscoveredLanguages___block_invoke;
    v7[3] = &unk_2787A92A8;
    v8 = v4;
    [v6 checkForDiscoveredLanguages:v7];
  }
}

uint64_t __43__IntlUtility_checkForDiscoveredLanguages___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)preferredLanguagesForBundleID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _getXPCConnectionForLocalizationSwitcher];
  v9 = [v8 remoteObjectProxy];
  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__IntlUtility_preferredLanguagesForBundleID_reply___block_invoke;
    v10[3] = &unk_2787A92D0;
    v11 = v7;
    [v9 preferredLanguagesForBundleID:v6 reply:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

+ (void)preferredLanguagesForBundleIDs:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _getXPCConnectionForLocalizationSwitcher];
  v9 = [v8 remoteObjectProxy];
  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__IntlUtility_preferredLanguagesForBundleIDs_reply___block_invoke;
    v10[3] = &unk_2787A92A8;
    v11 = v7;
    [v9 preferredLanguagesForBundleIDs:v6 reply:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

+ (id)preferredLanguagesForBundleIDs:(id)a3
{
  v4 = a3;
  v5 = [a1 _getXPCConnectionForLocalizationSwitcher];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__IntlUtility_preferredLanguagesForBundleIDs___block_invoke;
  v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v17[4] = a1;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__IntlUtility_preferredLanguagesForBundleIDs___block_invoke_241;
    v10[3] = &unk_2787A9318;
    v10[4] = &v11;
    [v6 preferredLanguagesForBundleIDs:v4 reply:v10];
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __46__IntlUtility_preferredLanguagesForBundleIDs___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v6 = objc_opt_class();

    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v5;
    v7 = v6;
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error obtaining remote object proxy, %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_setPreferredLanguage:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v7];
  v9 = [v8 bundleURL];
  if (v9)
  {
    v52 = v9;
    v10 = [MEMORY[0x277CCA8D8] bundleWithURL:v9];
    v11 = v10;
    v54 = v6;
    v51 = a1;
    if (v6)
    {
      v12 = [v10 normalizedLocalizations];
      v13 = [MEMORY[0x277CBEAF8] preferredLanguages];
      v14 = [MEMORY[0x277CBEAF8] currentLocale];
      v15 = [v14 countryCode];
      [a1 _proposedOverrideLanguageFromLanguage:v6 forLocalizations:v12 preferredLanguages:v13 regionCode:v15];
      v16 = v11;
      v18 = v17 = v8;

      v6 = [MEMORY[0x277CBEB40] orderedSetWithObject:v18];
      v19 = [MEMORY[0x277CBEAF8] preferredLanguages];
      [v6 addObjectsFromArray:v19];

      v8 = v17;
      v11 = v16;
    }

    v20 = MEMORY[0x277CCA8D8];
    v21 = [v11 normalizedLocalizations];
    v22 = [v6 array];
    v23 = [v20 preferredLocalizationsFromArray:v21 forPreferences:v22];
    v24 = [v23 firstObject];

    v25 = MEMORY[0x277CCA8D8];
    v26 = [v11 normalizedLocalizations];
    v27 = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
    v28 = [v25 preferredLocalizationsFromArray:v26 forPreferences:v27];
    v29 = [v28 firstObject];

    v49 = v29;
    v50 = v24;
    v30 = [v24 isEqualToString:v29];
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = [v6 array];
    }

    v53 = v8;
    v32 = [v8 dataContainerURL];
    v33 = [v32 path];

    v34 = *MEMORY[0x277CBF040];
    v35 = *MEMORY[0x277CBF010];
    _CFPreferencesSetValueWithContainer();
    v36 = [v11 bundleIdentifier];
    v37 = [v36 hasPrefix:@"com.apple."];

    if (v37 && v33)
    {
      _CFPreferencesSetValueWithContainer();
    }

    v38 = [MEMORY[0x277CEAF78] sharedDeviceConnection];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __49__IntlUtility__setPreferredLanguage_forBundleID___block_invoke;
    v55[3] = &unk_2787A9340;
    v58 = v51;
    v39 = v31;
    v56 = v39;
    v40 = v6;
    v57 = v40;
    [v38 fetchWatchAppBundleIDForCompanionAppBundleID:v7 completion:v55];

    v41 = [v51 perAppLanguageSelectionBundleIdentifiers];
    v42 = [MEMORY[0x277CBEB40] orderedSetWithArray:v41];
    v43 = v42;
    v44 = v30 ^ 1;
    if (!v54)
    {
      v44 = 0;
    }

    if (v44)
    {
      [v42 addObject:v7];
    }

    else
    {
      [v42 removeObject:v7];
    }

    v45 = [v43 array];
    v46 = [v45 isEqualToArray:v41];

    if ((v46 & 1) == 0)
    {
      v47 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v48 = [v43 array];
      [v47 setObject:v48 forKey:@"ApplePerAppLanguageSelectionBundleIdentifiers" inDomain:*MEMORY[0x277CCA208]];
    }

    v8 = v53;
    v6 = v54;
    v9 = v52;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [IntlUtility _setPreferredLanguage:v7 forBundleID:?];
  }
}

void __49__IntlUtility__setPreferredLanguage_forBundleID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v6;
      v8 = *&buf[4];
      _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error obtaining watch app bundle ID, %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v9 = getNRPairedDeviceRegistryClass_softClass_0;
    v23 = getNRPairedDeviceRegistryClass_softClass_0;
    if (!getNRPairedDeviceRegistryClass_softClass_0)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNRPairedDeviceRegistryClass_block_invoke_0;
      v27 = &unk_2787A8FA0;
      v28 = &v20;
      __getNRPairedDeviceRegistryClass_block_invoke_0(buf);
      v9 = v21[3];
    }

    v10 = v9;
    _Block_object_dispose(&v20, 8);
    v11 = [v9 sharedInstance];
    v12 = [v11 getActivePairedDevice];

    v13 = [MEMORY[0x277CEAF78] sharedDeviceConnection];
    v24 = @"AppleLanguages";
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(a1 + 32);
    }

    else
    {
      v15 = [*(a1 + 40) array];
    }

    v16 = v14 == 0;
    v25 = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__IntlUtility__setPreferredLanguage_forBundleID___block_invoke_248;
    v19[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v19[4] = *(a1 + 48);
    [v13 updatePreferencesForApplicationWithIdentifier:v5 preferences:v17 writingToPreferencesLocation:1 forPairedDevice:v12 options:1 completion:v19];

    if (v16)
    {
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __49__IntlUtility__setPreferredLanguage_forBundleID___block_invoke_248(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v6 = objc_opt_class();

    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v5;
    v7 = v6;
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error updating preferences for watch app, %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)setPreferredLanguage:(id)a3 forBundleID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a1 _setPreferredLanguage:a3 forBundleID:v6];
  v7 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:v6];
  v8 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Terminating app on per-app language change"];
  [v8 setMaximumTerminationResistance:40];
  v9 = [objc_alloc(MEMORY[0x277D47020]) initWithPredicate:v7 context:v8];
  v17 = 0;
  v10 = [v9 acquireWithError:&v17];
  v11 = v17;
  if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    *buf = 138543618;
    v19 = v12;
    v20 = 2114;
    v21 = v6;
    v13 = v12;
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error obtaining termination assertion on %{public}@", buf, 0x16u);
  }

  [v9 invalidate];
  v14 = [a1 _getXPCConnectionForLocalizationSwitcher];
  v15 = [v14 remoteObjectProxy];
  [v15 notifyPreferredLanguageChangedForBundleID:v6];

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)setPreferredLanguage:(id)a3 forBundleID:(id)a4 andRelaunchWithCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [a1 _setPreferredLanguage:v10 forBundleID:v9];
  v11 = [a1 _getXPCConnectionForLocalizationSwitcher];
  v12 = [v11 remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__IntlUtility_setPreferredLanguage_forBundleID_andRelaunchWithCompletion___block_invoke;
  v14[3] = &unk_2787A9368;
  v15 = v8;
  v13 = v8;
  [v12 setPreferredLanguage:v10 forBundleID:v9 andRelaunchWithReply:v14];
}

uint64_t __74__IntlUtility_setPreferredLanguage_forBundleID_andRelaunchWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)_getXPCConnectionForLocalizationSwitcher
{
  if (_getXPCConnectionForLocalizationSwitcher_onceToken != -1)
  {
    +[IntlUtility _getXPCConnectionForLocalizationSwitcher];
  }

  v3 = _getXPCConnectionForLocalizationSwitcher__connectionToService;

  return v3;
}

uint64_t __55__IntlUtility__getXPCConnectionForLocalizationSwitcher__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.localizationswitcherd" options:4096];
  v1 = _getXPCConnectionForLocalizationSwitcher__connectionToService;
  _getXPCConnectionForLocalizationSwitcher__connectionToService = v0;

  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841A8A78];
  [_getXPCConnectionForLocalizationSwitcher__connectionToService setRemoteObjectInterface:v2];

  v3 = _getXPCConnectionForLocalizationSwitcher__connectionToService;

  return [v3 resume];
}

+ (id)perAppLanguageSelectionBundleIdentifiers
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"ApplePerAppLanguageSelectionBundleIdentifiers" inDomain:*MEMORY[0x277CCA208]];

  return v3;
}

+ (void)subscribeToAppLanguageChanges:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __45__IntlUtility_subscribeToAppLanguageChanges___block_invoke;
  handler[3] = &unk_2787A9390;
  v8 = v3;
  v4 = v3;
  xpc_set_event_stream_handler("com.apple.IntlPreferences.events", 0, handler);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_set_event();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "per_app_language_changed";
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "XPC event [%{public}s] registered.", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __45__IntlUtility_subscribeToAppLanguageChanges___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
  v5 = xpc_dictionary_get_string(v3, "bundleID");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = string;
    v11 = 2082;
    v12 = v5;
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "XPC event [%{public}s] received with bundle ID = [%{public}s]", &v9, 0x16u);
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    reply = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    (*(v6 + 16))(v6, reply);
  }

  else
  {
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)unsubscribeFromAppLanguageChanges
{
  v5 = *MEMORY[0x277D85DE8];
  xpc_set_event();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446210;
    v4 = "per_app_language_changed";
    _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "XPC event [%{public}s] unregistered.", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_setPreferredLanguage:(uint64_t)a1 forBundleID:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "App bundle for ID %{private}@ doesn't exist, exiting", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end