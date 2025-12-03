@interface NSLocale(IntlPreferencesAdditions)
+ (BOOL)_defaultUsesTwelveHourClockForLocaleIdentifier:()IntlPreferencesAdditions;
+ (id)_archivedPreferencesWithOverridingLanguages:()IntlPreferencesAdditions targetPlatform:hash:;
+ (id)_hashesFromAppPreferences:()IntlPreferencesAdditions;
+ (id)_inputModesToEnableForLocale:()IntlPreferencesAdditions;
+ (id)_languageIdentifiersForLanguage:()IntlPreferencesAdditions region:;
+ (id)_localeIdentifierForLanguage:()IntlPreferencesAdditions region:;
+ (id)_preferencesForSetLanguageAndRegion:()IntlPreferencesAdditions;
+ (id)_sanitizedLanguageIdentifierFromKeyboardLanguage:()IntlPreferencesAdditions;
+ (id)_sanitizedLanguageIdentifierFromKeyboardLanguage:()IntlPreferencesAdditions currentLocale:;
+ (id)addLikelySubtagsForLocaleIdentifier:()IntlPreferencesAdditions;
+ (id)archivedPreferencesWithHashesForBundleIDs:()IntlPreferencesAdditions;
+ (id)canonicalLanguageAndScriptCodeIdentifierForIdentifier:()IntlPreferencesAdditions;
+ (id)canonicalLocaleIdentifierFromComponents:()IntlPreferencesAdditions;
+ (id)canonicalLocaleIdentifierWithValidCalendarForComponents:()IntlPreferencesAdditions;
+ (id)deviceLanguageLocale;
+ (id)displayNameForSelectableScriptCode:()IntlPreferencesAdditions;
+ (id)languageArrayAfterSettingLanguage:()IntlPreferencesAdditions fallback:toLanguageArray:;
+ (id)languageIdentifierForRegisteringPreferredLanguageFromAddedKeyboardLanguage:()IntlPreferencesAdditions forPreferredLanguages:;
+ (id)renderableLanguagesFromList:()IntlPreferencesAdditions;
+ (id)renderableLocaleLanguages;
+ (id)renderableUILanguages;
+ (id)supportedCJLanguageIdentifiers;
+ (id)validateLocale:()IntlPreferencesAdditions;
+ (uint64_t)_usesTwelveHourClock;
+ (uint64_t)_usesTwelveHourClockForLoginWindow;
+ (uint64_t)setLocaleAndResetCustomFormat:()IntlPreferencesAdditions;
+ (uint64_t)setLocaleAndResetTimeFormat:()IntlPreferencesAdditions;
+ (void)_insertFallbackLanguageIfNecessaryForRegion:()IntlPreferencesAdditions;
+ (void)_setUsesTwelveHourClock:()IntlPreferencesAdditions;
+ (void)_setUsesTwelveHourClockForLoginWindow:()IntlPreferencesAdditions;
+ (void)archivedPreferencesWithHashesForBundleIDs:()IntlPreferencesAdditions reply:;
+ (void)enableDefaultInputModesForCurrentLocale;
+ (void)enableInputModesForLocale:()IntlPreferencesAdditions addToFront:;
+ (void)registerPreferredLanguageForAddedKeyboardLanguage:()IntlPreferencesAdditions;
+ (void)resetCustomFormats;
+ (void)resetTimeFormat;
+ (void)setArchivedPreferences:()IntlPreferencesAdditions;
+ (void)setLanguageAndRegion:()IntlPreferencesAdditions;
+ (void)setLanguageToPreferredLanguages:()IntlPreferencesAdditions fallback:;
+ (void)setLocaleAfterLanguageChange:()IntlPreferencesAdditions;
+ (void)setLocaleAfterRegionChange:()IntlPreferencesAdditions;
+ (void)setLocaleOnly:()IntlPreferencesAdditions;
+ (void)setPreferredLanguageAndUpdateLocale:()IntlPreferencesAdditions;
+ (void)unregisterPreferredLanguageForKeyboardLanguage:()IntlPreferencesAdditions;
- (id)explanationTextForSelectableScripts;
- (id)localeByChangingLanguageTo:()IntlPreferencesAdditions;
- (id)optionNameForSelectableScripts;
- (id)optionNameWithColonForSelectableScripts;
- (id)preferenceKeysForSelectableScripts;
- (id)selectableScriptCodes;
- (id)selectedScript;
- (void)setSelectedScript:()IntlPreferencesAdditions;
@end

@implementation NSLocale(IntlPreferencesAdditions)

+ (id)deviceLanguageLocale
{
  v0 = MEMORY[0x277CBEAF8];
  deviceLanguage = [MEMORY[0x277CBEAF8] deviceLanguage];
  v2 = [v0 localeWithLocaleIdentifier:deviceLanguage];

  return v2;
}

+ (id)supportedCJLanguageIdentifiers
{
  systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
  v1 = [systemLanguages indexesOfObjectsPassingTest:&__block_literal_global_5];

  systemLanguages2 = [MEMORY[0x277CBEAF8] systemLanguages];
  v3 = [systemLanguages2 objectsAtIndexes:v1];

  return v3;
}

+ (id)canonicalLanguageAndScriptCodeIdentifierForIdentifier:()IntlPreferencesAdditions
{
  v21[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAF8] addLikelySubtagsForLocaleIdentifier:?];
  v1 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v0];
  v2 = *MEMORY[0x277CBE6C8];
  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v4 = *MEMORY[0x277CBE6F8];
  v5 = [v1 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
  v6 = v5;
  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v20[0] = v2;
    v20[1] = v4;
    v21[0] = v3;
    v21[1] = v5;
    v8 = MEMORY[0x277CBEAC0];
    v9 = v21;
    v10 = v20;
    v11 = 2;
LABEL_8:
    v12 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:v11];
    goto LABEL_9;
  }

  if (v3)
  {
    v18 = v2;
    v19 = v3;
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v19;
    v10 = &v18;
    v11 = 1;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:
  v13 = MEMORY[0x277CBEAF8];
  v14 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v12];
  v15 = [v13 canonicalLanguageIdentifierFromString:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)canonicalLocaleIdentifierFromComponents:()IntlPreferencesAdditions
{
  v0 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:?];
  v1 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:v0];

  return v1;
}

+ (id)addLikelySubtagsForLocaleIdentifier:()IntlPreferencesAdditions
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 UTF8String];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v7 length:uloc_addLikelySubtags() encoding:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)renderableUILanguages
{
  if (renderableUILanguages_onceToken != -1)
  {
    +[NSLocale(IntlPreferencesAdditions) renderableUILanguages];
  }

  v1 = renderableUILanguages___renderableLanguages;

  return v1;
}

+ (id)renderableLocaleLanguages
{
  if (renderableLocaleLanguages_onceToken != -1)
  {
    +[NSLocale(IntlPreferencesAdditions) renderableLocaleLanguages];
  }

  v1 = renderableLocaleLanguages___renderableLanguages;

  return v1;
}

+ (id)renderableLanguagesFromList:()IntlPreferencesAdditions
{
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_35];
  v5 = [v3 objectsAtIndexes:v4];

  return v5;
}

+ (void)setLocaleOnly:()IntlPreferencesAdditions
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
      localeIdentifier = [preferredLocale localeIdentifier];
      v9 = 138543618;
      v10 = v3;
      v11 = 2114;
      v12 = localeIdentifier;
      _os_log_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting locale to %{public}@. Current locale is %{public}@.", &v9, 0x16u);
    }

    v6 = *MEMORY[0x277CBF008];
    CFPreferencesSetAppValue(@"AppleLocale", v3, *MEMORY[0x277CBF008]);
    CFPreferencesAppSynchronize(v6);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleDatePreferencesChangedNotification", 0, 0, 1u);
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleTimePreferencesChangedNotification", 0, 0, 1u);
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleNumberPreferencesChangedNotification", 0, 0, 1u);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [NSLocale(IntlPreferencesAdditions) setLocaleOnly:v3];
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)setLocaleAndResetTimeFormat:()IntlPreferencesAdditions
{
  [MEMORY[0x277CBEAF8] setLocaleOnly:?];
  v0 = MEMORY[0x277CBEAF8];

  return [v0 resetTimeFormat];
}

+ (void)resetTimeFormat
{
  v0 = *MEMORY[0x277CBF008];
  CFPreferencesSetAppValue(@"AppleICUForce12HourTime", 0, *MEMORY[0x277CBF008]);
  CFPreferencesSetAppValue(@"AppleICUForce24HourTime", 0, v0);
  CFPreferencesAppSynchronize(v0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleTimePreferencesChangedNotification", 0, 0, 1u);
}

+ (uint64_t)setLocaleAndResetCustomFormat:()IntlPreferencesAdditions
{
  [MEMORY[0x277CBEAF8] setLocaleOnly:?];
  v0 = MEMORY[0x277CBEAF8];

  return [v0 resetCustomFormats];
}

+ (void)resetCustomFormats
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = *MEMORY[0x277CCA208];
  [standardUserDefaults removeObjectForKey:@"AppleICUDateFormatStrings" inDomain:*MEMORY[0x277CCA208]];
  [standardUserDefaults removeObjectForKey:@"AppleICUNumberSymbols" inDomain:v0];
}

+ (id)validateLocale:()IntlPreferencesAdditions
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  availableLocaleIdentifiers = [MEMORY[0x277CBEAF8] availableLocaleIdentifiers];
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v3];
  v6 = *MEMORY[0x277CBE6C8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if ([availableLocaleIdentifiers containsObject:v7])
  {
    v8 = v3;
  }

  else
  {
    v22 = v7;
    v23 = v3;
    [MEMORY[0x277CBEAF8] preferredLanguages];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v14];
          v16 = [v15 objectForKeyedSubscript:v6];

          if ([availableLocaleIdentifiers containsObject:v16])
          {
            v3 = v23;
            v8 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifier:v23 withNewLanguageIdentifier:v14];

            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = MEMORY[0x277CBEAF8];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v8 = [v17 canonicalLocaleIdentifierFromString:localeIdentifier];

    v3 = v23;
LABEL_13:
    v7 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)setLocaleAfterLanguageChange:()IntlPreferencesAdditions
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a3;
  preferredLocale = [v3 preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];

  v6 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifier:localeIdentifier withNewLanguageIdentifier:v4];

  v7 = [MEMORY[0x277CBEAF8] validateLocale:v6];

  v8 = MEMORY[0x277CBEAF8];
  v9 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v7];
  v10 = [v8 canonicalLocaleIdentifierWithValidCalendarForComponents:v9];

  if (([v10 isEqualToString:localeIdentifier] & 1) == 0)
  {
    [MEMORY[0x277CBEAF8] setLocaleAndResetCustomFormat:v10];
  }
}

+ (void)_insertFallbackLanguageIfNecessaryForRegion:()IntlPreferencesAdditions
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a3;
  preferredLanguages = [v3 preferredLanguages];
  preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v6 = [IntlUtility preferredLanguagesFromLanguages:preferredLanguages2 byAddingFallbacksForRegion:v4];

  if ([v6 count] && (objc_msgSend(v6, "isEqualToArray:", preferredLanguages) & 1) == 0)
  {
    [MEMORY[0x277CBEAF8] setPreferredLanguages:v6];
  }
}

+ (void)setLocaleAfterRegionChange:()IntlPreferencesAdditions
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  [v4 _insertFallbackLanguageIfNecessaryForRegion:v5];
  v6 = [self localeIdentifierForRegionChange:v5];

  [MEMORY[0x277CBEAF8] setLocaleAndResetCustomFormat:v6];
}

+ (id)canonicalLocaleIdentifierWithValidCalendarForComponents:()IntlPreferencesAdditions
{
  v3 = [a3 mutableCopy];
  v4 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromComponents:v3];
  v5 = [IntlUtility defaultCalendarForLocaleID:v4];
  v6 = [v3 objectForKey:@"calendar"];

  if (v6)
  {
    v7 = [v3 objectForKey:@"calendar"];
    v8 = [v7 isEqualToString:v5];

    if (!v8)
    {
      goto LABEL_7;
    }

    [v3 removeObjectForKey:@"calendar"];
  }

  else
  {
    v9 = +[IntlUtility supportedCalendars];
    v10 = [v9 containsObject:v5];

    if (v10)
    {
      goto LABEL_7;
    }

    [v3 setObject:*MEMORY[0x277CBE5C0] forKeyedSubscript:@"calendar"];
  }

  v11 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromComponents:v3];

  v4 = v11;
LABEL_7:

  return v4;
}

+ (id)languageArrayAfterSettingLanguage:()IntlPreferencesAdditions fallback:toLanguageArray:
{
  v28[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a5 mutableCopy];
  v10 = [v9 count];
  if (v7 && v10)
  {
    v11 = [v9 indexOfObject:v7];
    v12 = v11;
    if (v8)
    {
      v13 = MEMORY[0x277CCA8D8];
      v28[0] = @"zxx";
      v28[1] = v8;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v27 = v7;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v16 = [v13 preferredLocalizationsFromArray:v14 forPreferences:v15];
      firstObject = [v16 firstObject];
      v18 = [firstObject isEqualToString:v8] ^ 1;

      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v18 = 0;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_8:
    v19 = MEMORY[0x277CBEAF8];
    firstObject2 = [v9 firstObject];
    v21 = [v19 baseLanguageFromLanguage:firstObject2];

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 removeObjectAtIndex:v12];
    }

    v22 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v7];
    v23 = [v22 isEqualToString:v21];

    if (v23)
    {
      [v9 setObject:v7 atIndexedSubscript:0];
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      [v9 insertObject:v7 atIndex:0];
      if (!v18)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    v24 = [v9 indexOfObject:v8];
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 removeObjectAtIndex:v24];
    }

    [v9 insertObject:v8 atIndex:1];
    goto LABEL_17;
  }

LABEL_18:

  v25 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)setPreferredLanguageAndUpdateLocale:()IntlPreferencesAdditions
{
  v3 = a3;
  [MEMORY[0x277CBEAF8] setLocaleAfterLanguageChange:v3];
  v4 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v3];
  v10 = v3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  v6 = v10;
  if (!v5)
  {
    v7 = MEMORY[0x277CBEAF8];
    preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
    regionCode = [preferredLocale regionCode];
    v6 = [v7 languageFromLanguage:v10 byReplacingRegion:regionCode];
  }

  [MEMORY[0x277CBEAF8] setLanguageToPreferredLanguages:v6 fallback:0];
}

+ (void)setLanguageToPreferredLanguages:()IntlPreferencesAdditions fallback:
{
  v5 = MEMORY[0x277CBEAF8];
  v6 = a4;
  v7 = a3;
  preferredLanguages = [v5 preferredLanguages];
  v8 = [objc_opt_class() languageArrayAfterSettingLanguage:v7 fallback:v6 toLanguageArray:preferredLanguages];

  if ([v8 count] && (objc_msgSend(preferredLanguages, "isEqualToArray:", v8) & 1) == 0)
  {
    [MEMORY[0x277CBEAF8] setPreferredLanguages:v8];
  }
}

+ (id)_preferencesForSetLanguageAndRegion:()IntlPreferencesAdditions
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  if (![(__CFString *)v3 length])
  {
    v5 = @"en-001";

    v3 = v5;
  }

  v6 = MEMORY[0x277CBEAF8];
  v7 = [MEMORY[0x277CBEAF8] addLikelySubtagsForLocaleIdentifier:v3];
  v8 = [v6 componentsFromLocaleIdentifier:v7];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v9];
  v11 = [IntlUtility normalizedLanguageIDFromString:v10];

  v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v11];
  countryCode = [v12 countryCode];

  if (!countryCode)
  {
    v14 = *MEMORY[0x277CBE690];
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

    if (v15)
    {
      countryCode = [v9 objectForKeyedSubscript:v14];
    }

    else
    {
      countryCode = @"001";
      [v9 setObject:countryCode forKeyedSubscript:v14];
    }

    v16 = [MEMORY[0x277CBEAF8] languageFromLanguage:v11 byReplacingRegion:countryCode];

    v11 = v16;
  }

  systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
  v18 = [systemLanguages containsObject:v11];

  if (v18)
  {
    goto LABEL_12;
  }

  v19 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v11];
  systemLanguages2 = [MEMORY[0x277CBEAF8] systemLanguages];
  if ([systemLanguages2 containsObject:v19])
  {

LABEL_12:
    v29[0] = v11;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    [v4 setObject:v23 forKeyedSubscript:@"AppleLanguages"];
    goto LABEL_13;
  }

  baseSystemLanguages = [MEMORY[0x277CBEAF8] baseSystemLanguages];
  v22 = [baseSystemLanguages containsObject:v19];

  if (v22)
  {
    goto LABEL_12;
  }

  v23 = [MEMORY[0x277CBEAF8] languageFromLanguage:@"en-001" byReplacingRegion:{countryCode, v11}];
  v28[1] = v23;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [v4 setObject:v27 forKeyedSubscript:@"AppleLanguages"];

LABEL_13:
  v24 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromComponents:v9];
  [v4 setObject:v24 forKeyedSubscript:@"AppleLocale"];

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)setLanguageAndRegion:()IntlPreferencesAdditions
{
  v10 = [self _preferencesForSetLanguageAndRegion:?];
  v2 = MEMORY[0x277CBEAF8];
  v3 = [v10 objectForKeyedSubscript:@"AppleLanguages"];
  [v2 setPreferredLanguages:v3];

  v4 = MEMORY[0x277CBEAF8];
  v5 = [v10 objectForKeyedSubscript:@"AppleLocale"];
  v6 = [v4 localeWithLocaleIdentifier:v5];
  countryCode = [v6 countryCode];
  [self _insertFallbackLanguageIfNecessaryForRegion:countryCode];

  v8 = MEMORY[0x277CBEAF8];
  v9 = [v10 objectForKeyedSubscript:@"AppleLocale"];
  [v8 setLocaleAndResetCustomFormat:v9];
}

+ (uint64_t)_usesTwelveHourClock
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = *MEMORY[0x277CCA208];
  v4 = [standardUserDefaults objectForKey:@"AppleICUForce12HourTime" inDomain:*MEMORY[0x277CCA208]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 1;
  }

  else
  {
    v7 = [standardUserDefaults objectForKey:@"AppleICUForce24HourTime" inDomain:v3];
    bOOLValue2 = [v7 BOOLValue];

    if (bOOLValue2)
    {
      v6 = 0;
    }

    else
    {
      preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
      localeIdentifier = [preferredLocale localeIdentifier];
      v6 = [self _defaultUsesTwelveHourClockForLocaleIdentifier:localeIdentifier];
    }
  }

  return v6;
}

+ (uint64_t)_usesTwelveHourClockForLoginWindow
{
  v2 = *MEMORY[0x277CBF008];
  v3 = *MEMORY[0x277CBF020];
  v4 = *MEMORY[0x277CBF030];
  v5 = CFPreferencesCopyValue(@"AppleICUForce12HourTime", *MEMORY[0x277CBF008], *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  v6 = CFPreferencesCopyValue(@"AppleICUForce24HourTime", v2, v3, v4);
  v7 = CFPreferencesCopyValue(@"AppleLocale", v2, v3, v4);
  if ([v5 BOOLValue])
  {
    v8 = 1;
  }

  else if ([v6 BOOLValue])
  {
    v8 = 0;
  }

  else
  {
    v8 = [self _defaultUsesTwelveHourClockForLocaleIdentifier:v7];
  }

  return v8;
}

+ (BOOL)_defaultUsesTwelveHourClockForLocaleIdentifier:()IntlPreferencesAdditions
{
  v0 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:?];
  v1 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v1 setLocale:v0];
  [v1 setDateStyle:0];
  [v1 setTimeStyle:1];
  dateFormat = [v1 dateFormat];
  if ([dateFormat length])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [dateFormat characterAtIndex:v3];
      if (v6 == 104 || v6 == 75)
      {
        v4 += (v5 & 1) == 0;
      }

      else if (v6 == 39)
      {
        v5 ^= 1u;
      }

      ++v3;
    }

    while (v3 < [dateFormat length]);
    v7 = v4 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_setUsesTwelveHourClock:()IntlPreferencesAdditions
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  v7 = [self _defaultUsesTwelveHourClockForLocaleIdentifier:localeIdentifier];

  v8 = *MEMORY[0x277CCA208];
  if (v7 == a3)
  {
    [standardUserDefaults removeObjectForKey:@"AppleICUForce12HourTime" inDomain:*MEMORY[0x277CCA208]];
    [standardUserDefaults removeObjectForKey:@"AppleICUForce24HourTime" inDomain:v8];
    if ([MEMORY[0x277CBEAF8] _usesTwelveHourClock] == a3)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      v9 = @"AppleICUForce24HourTime";
    }

    else
    {
      v9 = @"AppleICUForce12HourTime";
    }

    v10 = MEMORY[0x277CBEC28];
  }

  else
  {
    if (a3)
    {
      [standardUserDefaults setObject:MEMORY[0x277CBEC38] forKey:@"AppleICUForce12HourTime" inDomain:*MEMORY[0x277CCA208]];
      [standardUserDefaults removeObjectForKey:@"AppleICUForce24HourTime" inDomain:v8];
      goto LABEL_11;
    }

    [standardUserDefaults removeObjectForKey:@"AppleICUForce12HourTime" inDomain:*MEMORY[0x277CCA208]];
    v10 = MEMORY[0x277CBEC38];
    v9 = @"AppleICUForce24HourTime";
  }

  [standardUserDefaults setObject:v10 forKey:v9 inDomain:v8];
LABEL_11:
}

+ (void)_setUsesTwelveHourClockForLoginWindow:()IntlPreferencesAdditions
{
  v5 = *MEMORY[0x277CBF008];
  v6 = *MEMORY[0x277CBF020];
  v7 = *MEMORY[0x277CBF030];
  v10 = CFPreferencesCopyValue(@"AppleLocale", *MEMORY[0x277CBF008], *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  if ([self _defaultUsesTwelveHourClockForLocaleIdentifier:?] == a3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (a3)
  {
    v8 = *MEMORY[0x277CBED28];
LABEL_5:
    CFPreferencesSetValue(@"AppleICUForce12HourTime", v8, v5, v6, v7);
    v9 = 0;
    goto LABEL_7;
  }

  CFPreferencesSetValue(@"AppleICUForce12HourTime", 0, v5, v6, v7);
  v9 = *MEMORY[0x277CBED28];
LABEL_7:
  CFPreferencesSetValue(@"AppleICUForce24HourTime", v9, v5, v6, v7);
}

+ (id)_languageIdentifiersForLanguage:()IntlPreferencesAdditions region:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [IPLanguageListManager alloc];
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v9 = [(IPLanguageListManager *)v7 initWithPreferredLanguages:v8];
  [(IPLanguageListManager *)v9 setRegion:v5 updateFirstLanguage:0];

  preferredLanguages = [(IPLanguageListManager *)v9 preferredLanguages];

  v11 = *MEMORY[0x277D85DE8];

  return preferredLanguages;
}

+ (id)_localeIdentifierForLanguage:()IntlPreferencesAdditions region:
{
  v5 = MEMORY[0x277CBEAF8];
  v6 = a4;
  v7 = [v5 localeWithLocaleIdentifier:a3];
  v8 = [v5 _localeIdentifierForRegionChangeFrom:v7 to:v6];

  return v8;
}

+ (void)enableDefaultInputModesForCurrentLocale
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [self enableInputModesForLocale:currentLocale addToFront:1];
}

+ (void)enableInputModesForLocale:()IntlPreferencesAdditions addToFront:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [self _inputModesToEnableForLocale:?];
  iPUIKeyboardInputModeController = [(objc_class *)IPUIKeyboardInputModeController() sharedInputModeController];
  activeInputModeIdentifiers = [iPUIKeyboardInputModeController activeInputModeIdentifiers];

  v8 = [activeInputModeIdentifiers mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = v5;
  if (a4)
  {
    reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  }

  else
  {
    reverseObjectEnumerator = v5;
  }

  v10 = reverseObjectEnumerator;
  v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if (([v8 containsObject:v15] & 1) == 0)
        {
          v16 = IPUIKeyboardCanonicalInputModeName(v15);
          v17 = [v8 containsObject:v16];

          if ((v17 & 1) == 0)
          {
            if (a4)
            {
              [v8 insertObject:v15 atIndex:0];
            }

            else
            {
              [v8 addObject:v15];
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  iPUIKeyboardPreferencesController = [(objc_class *)IPUIKeyboardPreferencesController() sharedPreferencesController];
  [iPUIKeyboardPreferencesController saveInputModes:v8];

  CFPreferencesSetAppValue(@"KeyboardLastUsed", 0, @"com.apple.Preferences");
  v19 = *MEMORY[0x277D85DE8];
}

+ (id)_inputModesToEnableForLocale:()IntlPreferencesAdditions
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    languageIdentifier = [v3 languageIdentifier];
    if (languageIdentifier)
    {
      iPUIKeyboardInputModeController = [(objc_class *)IPUIKeyboardInputModeController() sharedInputModeController];
      v54[0] = v4;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
      v8 = [iPUIKeyboardInputModeController suggestedInputModesForLocales:v7];

      if ([v8 count])
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v48;
LABEL_6:
          v13 = 0;
          while (1)
          {
            if (*v48 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v47 + 1) + 8 * v13);
            if ([v14 enabled])
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
              if (v11)
              {
                goto LABEL_6;
              }

              goto LABEL_12;
            }
          }

          identifier = [v14 identifier];

          if (identifier)
          {
            goto LABEL_18;
          }
        }

        else
        {
LABEL_12:
        }

        v17 = [v9 objectAtIndex:0];
        identifier = [v17 identifier];
      }

      else
      {
        identifier = IPUIKeyboardCanonicalInputModeName(languageIdentifier);
      }

LABEL_18:
      iPUIKeyboardInputModeController2 = [(objc_class *)IPUIKeyboardInputModeController() sharedInputModeController];
      normalizedEnabledInputModeIdentifiers = [iPUIKeyboardInputModeController2 normalizedEnabledInputModeIdentifiers];

      if (([normalizedEnabledInputModeIdentifiers containsObject:identifier] & 1) == 0)
      {
        v20 = IPUIKeyboardInputModeGetBaseLanguage(identifier);
        v42 = v8;
        if ([v20 isEqualToString:@"zh"])
        {
          v21 = IPUIKeyboardInputModeGetLanguageWithRegion(identifier);

          v20 = v21;
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v22 = normalizedEnabledInputModeIdentifiers;
        v23 = [v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v23)
        {
          v24 = v23;
          v39 = normalizedEnabledInputModeIdentifiers;
          v40 = languageIdentifier;
          v41 = v4;
          v25 = *v44;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v44 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v43 + 1) + 8 * i);
              v28 = IPUIKeyboardInputModeGetBaseLanguage(v27);
              if ([v28 isEqualToString:@"zh"])
              {
                v29 = IPUIKeyboardInputModeGetLanguageWithRegion(v27);

                v28 = v29;
              }

              if ([v20 isEqualToString:{v28, v39, v40, v41}])
              {
                v30 = v27;

                identifier = v30;
                goto LABEL_33;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }

LABEL_33:
          languageIdentifier = v40;
          v4 = v41;
          normalizedEnabledInputModeIdentifiers = v39;
        }

        v8 = v42;
      }

      iPUIKeyboardInputModeController3 = [(objc_class *)IPUIKeyboardInputModeController() sharedInputModeController];
      supportedInputModeIdentifiers = [iPUIKeyboardInputModeController3 supportedInputModeIdentifiers];

      v33 = IPUIKeyboardInputModeGetNormalizedIdentifier(identifier);
      v34 = [supportedInputModeIdentifiers containsObject:v33];

      if ((v34 & 1) == 0)
      {
        v35 = IPUIKeyboardInputMode_Intl();

        identifier = v35;
      }

      v36 = IPUIKeyboardInputModeGetIdentifierWithKeyboardLayouts(identifier);
      v51 = v36;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_sanitizedLanguageIdentifierFromKeyboardLanguage:()IntlPreferencesAdditions
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  currentLocale = [v4 currentLocale];
  v7 = [self _sanitizedLanguageIdentifierFromKeyboardLanguage:v5 currentLocale:currentLocale];

  return v7;
}

+ (id)_sanitizedLanguageIdentifierFromKeyboardLanguage:()IntlPreferencesAdditions currentLocale:
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v10 = 0;
    goto LABEL_26;
  }

  v36 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v6];
  v8 = [v36 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  renderableUILanguages = [self renderableUILanguages];
  v10 = [renderableUILanguages countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v10)
  {
    goto LABEL_25;
  }

  v34 = v7;
  v35 = v6;
  v11 = *v38;
  v12 = *MEMORY[0x277CBE6F8];
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(renderableUILanguages);
      }

      v14 = *(*(&v37 + 1) + 8 * i);
      v15 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v14];
      languageCode = [v15 languageCode];
      v17 = [v8 isEqualToString:languageCode];

      if (v17)
      {
        v18 = [v36 objectForKeyedSubscript:v12];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [MEMORY[0x277CBEAF8] scriptCodeFromLanguage:v35];
        }

        v21 = v20;

        scriptCode = [v15 scriptCode];
        v23 = scriptCode;
        if (scriptCode)
        {
          v24 = scriptCode;
        }

        else
        {
          v24 = [MEMORY[0x277CBEAF8] scriptCodeFromLanguage:v14];
        }

        v25 = v24;

        v26 = [v21 isEqualToString:v25];
        if (v26)
        {

          v27 = *MEMORY[0x277CBE690];
          v7 = v34;
          renderableUILanguages = [v34 objectForKey:*MEMORY[0x277CBE690]];
          v28 = [v36 objectForKeyedSubscript:v27];
          systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
          v6 = v35;
          v30 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:v35];
          if ([systemLanguages containsObject:v30])
          {
            v31 = [v28 length];

            if (!v31)
            {
LABEL_24:
              v10 = [MEMORY[0x277CBEAF8] languageFromLanguage:v35 byReplacingRegion:renderableUILanguages];

              goto LABEL_25;
            }

            systemLanguages = renderableUILanguages;
            renderableUILanguages = v28;
          }

          else
          {
          }

          goto LABEL_24;
        }
      }
    }

    v10 = [renderableUILanguages countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v7 = v34;
  v6 = v35;
LABEL_25:

LABEL_26:
  v32 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)languageIdentifierForRegisteringPreferredLanguageFromAddedKeyboardLanguage:()IntlPreferencesAdditions forPreferredLanguages:
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [self _sanitizedLanguageIdentifierFromKeyboardLanguage:a3];
  if (!v7)
  {
    v20 = 0;
    goto LABEL_19;
  }

  v8 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v7];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:{*(*(&v23 + 1) + 8 * i), v23}];
        v15 = [v14 isEqualToString:v8];

        if (v15)
        {
          v16 = 1;
          goto LABEL_12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v19 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

  if (!v19)
  {
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_17:
    v20 = v7;
    goto LABEL_18;
  }

  if (((v16 | [v8 isEqualToString:@"en"]) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v20 = 0;
LABEL_18:

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (void)registerPreferredLanguageForAddedKeyboardLanguage:()IntlPreferencesAdditions
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  _globalPreferredLanguages = [v4 _globalPreferredLanguages];
  v9 = [self languageIdentifierForRegisteringPreferredLanguageFromAddedKeyboardLanguage:v5 forPreferredLanguages:_globalPreferredLanguages];

  v8 = v9;
  if (v9)
  {
    LODWORD(v7) = *MEMORY[0x277CCA448];
    [MEMORY[0x277CBEAF8] registerPreferredLanguage:v9 usage:2 confidence:v7];
    v8 = v9;
  }
}

+ (void)unregisterPreferredLanguageForKeyboardLanguage:()IntlPreferencesAdditions
{
  v4 = [self _sanitizedLanguageIdentifierFromKeyboardLanguage:?];
  if (v4)
  {
    v13 = v4;
    _globalPreferredLanguages = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
    if ([_globalPreferredLanguages count] >= 2)
    {
      v6 = [_globalPreferredLanguages indexOfObject:v13];
      v7 = v6;
      if (v6)
      {
        v8 = v6 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v1 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v13];
        v9 = MEMORY[0x277CBEAF8];
        _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
        v3 = [v9 baseLanguageFromLanguage:_deviceLanguage];
        v10 = [v1 isEqualToString:v3] ^ 1;
      }

      if (v7)
      {
        v11 = v7 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {

        if (!v10)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (v10)
      {
LABEL_15:
        v12 = [_globalPreferredLanguages mutableCopy];
        [v12 removeObjectAtIndex:v7];
        [MEMORY[0x277CBEAF8] setPreferredLanguages:v12];
      }
    }

LABEL_16:

    v4 = v13;
  }
}

- (id)localeByChangingLanguageTo:()IntlPreferencesAdditions
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = objc_opt_class();
  localeIdentifier = [self localeIdentifier];
  v8 = [v6 canonicalLocaleIdentifier:localeIdentifier withNewLanguageIdentifier:v5];

  v9 = [v4 localeWithLocaleIdentifier:v8];

  return v9;
}

+ (id)_archivedPreferencesWithOverridingLanguages:()IntlPreferencesAdditions targetPlatform:hash:
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  memset(&v30, 0, sizeof(v30));
  CC_SHA1_Init(&v30);
  if ([v7 count])
  {
    v10 = [v7 copy];
  }

  else
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v12 = [preferredLanguages count];

    if (!v12)
    {
      goto LABEL_6;
    }

    preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v10 = [preferredLanguages2 copy];
  }

  [dictionary setObject:v10 forKeyedSubscript:@"AppleLanguages"];
  IP_hashKeyValue(&v30, @"AppleLanguages", v10);

LABEL_6:
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  if ([localeIdentifier length])
  {
    if (a4 >= 2)
    {
      calendarIdentifier = [preferredLocale calendarIdentifier];
      v17 = +[IntlUtility _supportedCalendarsOnEmbeddedSystems];
      v18 = [v17 containsObject:calendarIdentifier];

      if ((v18 & 1) == 0)
      {
        v19 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:localeIdentifier];
        v20 = [v19 mutableCopy];

        [v20 setObject:*MEMORY[0x277CBE5C0] forKeyedSubscript:@"calendar"];
        v21 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v20];

        localeIdentifier = v21;
      }
    }

    [dictionary setObject:localeIdentifier forKeyedSubscript:@"AppleLocale"];
    IP_hashKeyValue(&v30, @"AppleLocale", localeIdentifier);
  }

  _preferredTemperatureUnit = [MEMORY[0x277CBEAF8] _preferredTemperatureUnit];
  if ([_preferredTemperatureUnit length])
  {
    [dictionary setObject:_preferredTemperatureUnit forKeyedSubscript:@"AppleTemperatureUnit"];
    IP_hashKeyValue(&v30, @"AppleTemperatureUnit", _preferredTemperatureUnit);
  }

  v23 = *MEMORY[0x277CCA208];
  v24 = [standardUserDefaults objectForKey:@"AppleICUForce12HourTime" inDomain:*MEMORY[0x277CCA208]];
  if (v24)
  {
    [dictionary setObject:v24 forKeyedSubscript:@"AppleICUForce12HourTime"];
    IP_hashKeyValue(&v30, @"AppleICUForce12HourTime", v24);
  }

  v25 = [standardUserDefaults objectForKey:@"AppleICUForce24HourTime" inDomain:v23];
  if (v25)
  {
    [dictionary setObject:v25 forKeyedSubscript:@"AppleICUForce24HourTime"];
    IP_hashKeyValue(&v30, @"AppleICUForce24HourTime", v25);
  }

  _currentGlobalUserInflectionIfAvailable = [MEMORY[0x277CCAEA8] _currentGlobalUserInflectionIfAvailable];
  externalRepresentation = [_currentGlobalUserInflectionIfAvailable externalRepresentation];
  if (externalRepresentation)
  {
    [dictionary setObject:externalRepresentation forKeyedSubscript:@"ArchivedInflection"];
  }

  CC_SHA1_Final(md, &v30);
  if (a5)
  {
    *a5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  }

  v28 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)_hashesFromAppPreferences:()IntlPreferencesAdditions
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:{v11, v19}];
          v20 = 0;
          v13 = [self _archivedPreferencesWithOverridingLanguages:v12 targetPlatform:0 hash:&v20];
          v25[0] = @"AppleLanguages";
          v25[1] = @"hash";
          v26[0] = v12;
          v26[1] = v20;
          v14 = MEMORY[0x277CBEAC0];
          v15 = v20;
          v16 = [v14 dictionaryWithObjects:v26 forKeys:v25 count:2];
          [v5 setObject:v16 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }

    v4 = v19;
  }

  else
  {
    v5 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)archivedPreferencesWithHashesForBundleIDs:()IntlPreferencesAdditions reply:
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__NSLocale_IntlPreferencesAdditions__archivedPreferencesWithHashesForBundleIDs_reply___block_invoke;
  v8[3] = &unk_2787A94D0;
  v9 = v6;
  selfCopy = self;
  v7 = v6;
  [IntlUtility preferredLanguagesForBundleIDs:a3 reply:v8];
}

+ (id)archivedPreferencesWithHashesForBundleIDs:()IntlPreferencesAdditions
{
  v2 = [IntlUtility preferredLanguagesForBundleIDs:?];
  v3 = [self _hashesFromAppPreferences:v2];

  return v3;
}

+ (void)setArchivedPreferences:()IntlPreferencesAdditions
{
  v21 = a3;
  v3 = [v21 objectForKeyedSubscript:@"AppleLanguages"];

  if (v3)
  {
    v4 = [v21 objectForKeyedSubscript:@"AppleLanguages"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
    {
      [MEMORY[0x277CBEAF8] setPreferredLanguages:v4];
    }
  }

  v5 = [v21 objectForKeyedSubscript:@"AppleLocale"];

  if (v5)
  {
    v6 = [v21 objectForKeyedSubscript:@"AppleLocale"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
    {
      [MEMORY[0x277CBEAF8] setLocaleOnly:v6];
    }
  }

  v7 = [v21 objectForKeyedSubscript:@"AppleTemperatureUnit"];

  v8 = v21;
  if (v7)
  {
    v9 = [v21 objectForKeyedSubscript:@"AppleTemperatureUnit"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
    {
      [MEMORY[0x277CBEAF8] _setPreferredTemperatureUnit:v9];
    }

    v8 = v21;
  }

  v10 = [v8 objectForKeyedSubscript:@"AppleICUForce12HourTime"];
  if (v10)
  {
  }

  else
  {
    v11 = [v21 objectForKeyedSubscript:@"AppleICUForce24HourTime"];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [v21 objectForKeyedSubscript:@"AppleICUForce12HourTime"];
  v14 = *MEMORY[0x277CCA208];
  [standardUserDefaults setObject:v13 forKey:@"AppleICUForce12HourTime" inDomain:*MEMORY[0x277CCA208]];

  v15 = [v21 objectForKeyedSubscript:@"AppleICUForce24HourTime"];
  [standardUserDefaults setObject:v15 forKey:@"AppleICUForce24HourTime" inDomain:v14];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleTimePreferencesChangedNotification", 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SignificantTimeChangeNotification", 0, 0, 1u);

LABEL_20:
  v17 = [v21 objectForKeyedSubscript:@"ArchivedInflection"];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277CCAEA8]);
    v19 = [v21 objectForKeyedSubscript:@"ArchivedInflection"];
    v20 = [v18 initWithExternalRepresentation:v19 error:0];

    if (v20)
    {
      [v20 _setAsGlobalUserInflection];
    }
  }
}

- (id)selectedScript
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selectableScriptCodes = [self selectableScriptCodes];
  v3 = [selectableScriptCodes countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v6 = *MEMORY[0x277CBF008];
    v7 = *MEMORY[0x277CBF040];
    v8 = *MEMORY[0x277CBF030];
    obj = selectableScriptCodes;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        preferenceKeysForSelectableScripts = [self preferenceKeysForSelectableScripts];
        v12 = [preferenceKeysForSelectableScripts objectForKeyedSubscript:v10];

        v13 = CFPreferencesCopyValue(v12, v6, v7, v8);
        v14 = v13;
        if (v13 && ([v13 BOOLValue] & 1) != 0)
        {
          v18 = v10;

          v17 = obj;
          goto LABEL_12;
        }
      }

      selectableScriptCodes = obj;
      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v15 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v17 = [v15 addLikelySubtagsForLocaleIdentifier:localeIdentifier];

  v12 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v17];
  v18 = [(__CFString *)v12 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)setSelectedScript:()IntlPreferencesAdditions
{
  v9 = a3;
  selectedScript = [self selectedScript];
  if (([selectedScript isEqualToString:v9] & 1) == 0)
  {
    preferenceKeysForSelectableScripts = [self preferenceKeysForSelectableScripts];
    v6 = [preferenceKeysForSelectableScripts objectForKeyedSubscript:selectedScript];
    v7 = [preferenceKeysForSelectableScripts objectForKeyedSubscript:v9];
    v8 = *MEMORY[0x277CBF008];
    CFPreferencesSetAppValue(v6, 0, *MEMORY[0x277CBF008]);
    CFPreferencesSetAppValue(v7, *MEMORY[0x277CBED28], v8);
    CFPreferencesAppSynchronize(v8);
  }
}

- (id)selectableScriptCodes
{
  if (selectableScriptCodes_onceToken != -1)
  {
    [NSLocale(IntlPreferencesAdditions) selectableScriptCodes];
  }

  v2 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v4 = [v2 componentsFromLocaleIdentifier:localeIdentifier];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  v6 = MEMORY[0x277CBEAF8];
  localeIdentifier2 = [self localeIdentifier];
  v8 = [v6 addLikelySubtagsForLocaleIdentifier:localeIdentifier2];

  v9 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v8];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];

  v11 = [selectableScriptCodes_selectableScriptCodes objectForKeyedSubscript:v5];
  if ([v11 containsObject:v10])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)optionNameForSelectableScripts
{
  v1 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v3 = [v1 componentsFromLocaleIdentifier:localeIdentifier];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  LODWORD(v3) = [v4 isEqualToString:@"my"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v3)
  {
    v7 = @"ENCODING";
  }

  else
  {
    v7 = @"SCRIPT";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_28419F558 table:@"LocalizedSelectableScripts"];

  return v8;
}

- (id)optionNameWithColonForSelectableScripts
{
  v1 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v3 = [v1 componentsFromLocaleIdentifier:localeIdentifier];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  LODWORD(v3) = [v4 isEqualToString:@"my"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v3)
  {
    v7 = @"ENCODING_COLON";
  }

  else
  {
    v7 = @"SCRIPT_COLON";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_28419F558 table:@"LocalizedSelectableScripts"];

  return v8;
}

- (id)explanationTextForSelectableScripts
{
  v1 = MEMORY[0x277CBEAF8];
  localeIdentifier = [self localeIdentifier];
  v3 = [v1 componentsFromLocaleIdentifier:localeIdentifier];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if ([v4 isEqualToString:@"my"])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ZAWGYI_EXPLANATION_TEXT" value:&stru_28419F558 table:@"LocalizedSelectableScripts"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)displayNameForSelectableScriptCode:()IntlPreferencesAdditions
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_28419F558 table:@"LocalizedSelectableScripts"];

  return v6;
}

- (id)preferenceKeysForSelectableScripts
{
  v21 = *MEMORY[0x277D85DE8];
  selectableScriptCodes = [self selectableScriptCodes];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(selectableScriptCodes, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = selectableScriptCodes;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = MEMORY[0x277CCACA8];
        languageCode = [self languageCode];
        v11 = [v9 stringWithFormat:@"%@_%@", languageCode, v8];

        v12 = [@"AppleScriptPreference_" stringByAppendingString:v11];
        [v3 setObject:v12 forKeyedSubscript:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)setLocaleOnly:()IntlPreferencesAdditions .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAF8] preferredLocale];
  v3 = [v2 localeIdentifier];
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_fault_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Invalid locale %{public}@. Current locale is %{public}@.", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end