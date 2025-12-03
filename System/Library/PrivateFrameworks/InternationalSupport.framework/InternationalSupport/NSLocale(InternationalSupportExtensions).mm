@interface NSLocale(InternationalSupportExtensions)
+ (__CFString)_parentLocaleIdentifierForIdentifier:()InternationalSupportExtensions;
+ (id)_ICUdisplayNameForLanguage:()InternationalSupportExtensions capitalization:;
+ (id)_addLikelySubtagsForLocaleIdentifier:()InternationalSupportExtensions;
+ (id)_availableRegionsOfType:()InternationalSupportExtensions;
+ (id)_containingRegionOfType:()InternationalSupportExtensions forRegion:;
+ (id)_deviceLanguages;
+ (id)_displayNameForNormalizedLanguage:()InternationalSupportExtensions context:displayLanguage:length:;
+ (id)_displayNameForNormalizedLanguage:()InternationalSupportExtensions context:displayLanguage:length:isCalcium:;
+ (id)_displayNameForRegion:()InternationalSupportExtensions displayLanguage:context:short:;
+ (id)_globalPreferredLanguages;
+ (id)_languagesForRegion:()InternationalSupportExtensions subdivision:withThreshold:;
+ (id)_minimizeSubtagsForLocaleIdentifier:()InternationalSupportExtensions;
+ (id)_normalizedLanguageIdentifierFromString:()InternationalSupportExtensions;
+ (id)_parentLocaleIdentifiersForIdentifier:()InternationalSupportExtensions;
+ (id)_regionLanguageDataForRegionCode:()InternationalSupportExtensions subdivisionCode:;
+ (id)abbreviationsForLanguages:()InternationalSupportExtensions minimizeVariants:;
+ (id)availableSpokenLanguages;
+ (id)baseLanguageFromLanguage:()InternationalSupportExtensions;
+ (id)baseSystemLanguages;
+ (id)containingRegionOfRegion:()InternationalSupportExtensions;
+ (id)exemplarForLanguage:()InternationalSupportExtensions;
+ (id)exemplarRegionForLanguage:()InternationalSupportExtensions;
+ (id)languageFromLanguage:()InternationalSupportExtensions byReplacingRegion:;
+ (id)languagesByAddingRelatedLanguagesToLanguages:()InternationalSupportExtensions;
+ (id)languagesForRegion:()InternationalSupportExtensions subdivision:withThreshold:filter:;
+ (id)matchedLanguagesFromAvailableLanguages:()InternationalSupportExtensions forPreferredLanguages:;
+ (id)minimizedLanguagesFromLanguages:()InternationalSupportExtensions;
+ (id)regionsForLanguage:()InternationalSupportExtensions withThreshold:;
+ (id)relatedLanguagesForLanguage:()InternationalSupportExtensions;
+ (id)scriptCodeFromLanguage:()InternationalSupportExtensions;
+ (id)spokenLanguagesForLanguage:()InternationalSupportExtensions;
+ (id)spokenLanguagesForLanguages:()InternationalSupportExtensions includeLanguagesForRegion:;
+ (id)supportedLanguages;
+ (id)supportedRegions;
+ (uint64_t)_locale:()InternationalSupportExtensions hasCommonParentWith:;
+ (void)_displayNameForLanguage:()InternationalSupportExtensions displayLanguage:context:length:;
- (__CFString)numberingSystem;
- (id)availableNumberingSystems;
- (id)countryCodeTopLevelDomainsUsingPunycode:()InternationalSupportExtensions;
- (id)displayNameForLanguage:()InternationalSupportExtensions displayLanguage:context:;
- (id)displayNameForRegion:()InternationalSupportExtensions displayLanguage:context:short:;
- (id)localizedStringForLanguage:()InternationalSupportExtensions context:length:;
- (id)localizedStringForNumberingSystem:()InternationalSupportExtensions short:;
- (id)localizedStringForRegion:()InternationalSupportExtensions context:short:;
- (uint64_t)isEquivalentTo:()InternationalSupportExtensions;
- (uint64_t)positionOfDayPeriodInFormattedTime;
@end

@implementation NSLocale(InternationalSupportExtensions)

+ (id)_globalPreferredLanguages
{
  v7[1] = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];
  v2 = [v1 objectForKeyedSubscript:@"AppleLanguages"];

  if (!v2 || ![v2 count])
  {
    v3 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);

    v2 = v3;
  }

  if (![v2 count])
  {
    v7[0] = @"en-US";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

    v2 = v4;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)_deviceLanguages
{
  if (_deviceLanguages___onceToken != -1)
  {
    +[NSLocale(InternationalSupportExtensions) _deviceLanguages];
  }

  v1 = _deviceLanguages___deviceLanguages;

  return v1;
}

- (__CFString)numberingSystem
{
  v1 = MEMORY[0x1E695DF58];
  localeIdentifier = [self localeIdentifier];
  v3 = [v1 componentsFromLocaleIdentifier:localeIdentifier];
  v4 = [v3 mutableCopy];

  v5 = [v4 objectForKeyedSubscript:@"numbers"];
  if ([v5 length] && (objc_msgSend(v5, "isEqualToString:", @"default") & 1) == 0)
  {
    v8 = v5;
  }

  else
  {
    [v4 setObject:@"default" forKeyedSubscript:@"numbers"];
    v6 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v4];
    [v6 UTF8String];
    v7 = unumsys_open();
    v8 = @"latn";
    if (v7)
    {
      v9 = MEMORY[0x1B8CC32D0](v7);
      if (v9)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      }

      unumsys_close();
    }
  }

  return v8;
}

+ (id)baseSystemLanguages
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NSLocale_InternationalSupportExtensions__baseSystemLanguages__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (baseSystemLanguages___onceToken != -1)
  {
    dispatch_once(&baseSystemLanguages___onceToken, block);
  }

  v1 = baseSystemLanguages___baseSystemLanguages;

  return v1;
}

+ (id)supportedLanguages
{
  v1 = MEMORY[0x1E695DFD8];
  _languagesToExemplarStrings = [self _languagesToExemplarStrings];
  allKeys = [_languagesToExemplarStrings allKeys];
  v4 = [v1 setWithArray:allKeys];

  return v4;
}

+ (id)exemplarForLanguage:()InternationalSupportExtensions
{
  v4 = a3;
  if (v4)
  {
    _languagesToExemplarStrings = [self _languagesToExemplarStrings];
    v6 = [_languagesToExemplarStrings objectForKey:v4];

    if (!v6)
    {
      v7 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v4];

      _languagesToExemplarStrings2 = [self _languagesToExemplarStrings];
      v6 = [_languagesToExemplarStrings2 objectForKey:v7];

      v4 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)languagesForRegion:()InternationalSupportExtensions subdivision:withThreshold:filter:
{
  v10 = a3;
  v11 = a4;
  if (a6 == 2)
  {
    _supportedKeyboardLanguages = [self _supportedKeyboardLanguages];
    goto LABEL_5;
  }

  if (a6 == 1)
  {
    _supportedKeyboardLanguages = [MEMORY[0x1E695DF58] systemLanguages];
LABEL_5:
    v13 = _supportedKeyboardLanguages;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  v14 = [self _languagesForRegion:v10 subdivision:v11 withThreshold:a5];
  v15 = v14;
  if (v13)
  {
    v16 = [self matchedLanguagesFromAvailableLanguages:v13 forPreferredLanguages:v14];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;

  return v17;
}

+ (id)regionsForLanguage:()InternationalSupportExtensions withThreshold:
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  HIDWORD(v15) = 0;
  [v3 UTF8String];
  RegionsForLanguage = ualoc_getRegionsForLanguage();
  v6 = RegionsForLanguage;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:RegionsForLanguage];
  MEMORY[0x1EEE9AC00]();
  v9 = &v15 - v8;
  [v3 UTF8String];
  ualoc_getRegionsForLanguage();
  if (SHIDWORD(v15) <= 0 && v6 >= 1)
  {
    v10 = v6;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      [v7 addObject:v11];

      v9 += 24;
      --v10;
    }

    while (v10);
  }

  v12 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v7];

  if (v12)
  {
    array = [v12 array];
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)supportedRegions
{
  if (supportedRegions___onceToken != -1)
  {
    +[NSLocale(InternationalSupportExtensions) supportedRegions];
  }

  v1 = supportedRegions___supportedRegions;

  return v1;
}

+ (id)exemplarRegionForLanguage:()InternationalSupportExtensions
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v3];
  countryCode = [v4 countryCode];

  if (![countryCode length])
  {
    lowercaseString = [v3 lowercaseString];
    v7 = [lowercaseString isEqualToString:@"en"];

    if (v7)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v9 = MEMORY[0x1E695DF58];
    v10 = [MEMORY[0x1E695DF58] _addLikelySubtagsForLocaleIdentifier:v3];
    v11 = [v9 localeWithLocaleIdentifier:v10];
    countryCode2 = [v11 countryCode];

    countryCode = countryCode2;
  }

  v8 = countryCode;
  countryCode = v8;
LABEL_6:

  return v8;
}

+ (id)_availableRegionsOfType:()InternationalSupportExtensions
{
  array = [MEMORY[0x1E695DF70] array];
  uregion_getAvailable();
  v1 = uenum_next();
  if (v1)
  {
    for (i = v1; ; i = v4)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithCString:i encoding:4];
      [array addObject:v3];

      v4 = uenum_next();
      if (!v4)
      {
        break;
      }
    }
  }

  uenum_close();

  return array;
}

+ (id)_containingRegionOfType:()InternationalSupportExtensions forRegion:
{
  v9 = 0;
  v5 = MEMORY[0x1B8CC3350]([a4 UTF8String], &v9);
  if (v9 > 0 || v5 == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = MEMORY[0x1B8CC3330](v5, a3);
    if (v7)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithCString:MEMORY[0x1B8CC3340]() encoding:4];
    }
  }

  return v7;
}

+ (id)containingRegionOfRegion:()InternationalSupportExtensions
{
  v7 = 0;
  v3 = MEMORY[0x1B8CC3350]([a3 UTF8String], &v7);
  if (v7 > 0 || v3 == 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = MEMORY[0x1B8CC3320](v3);
    if (v5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithCString:MEMORY[0x1B8CC3340]() encoding:4];
    }
  }

  return v5;
}

+ (id)baseLanguageFromLanguage:()InternationalSupportExtensions
{
  v4 = a3;
  v5 = v4;
  if ([v4 length])
  {
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
    regionCode = [v6 regionCode];
    if ([regionCode length])
    {
    }

    else
    {
      scriptCode = [v6 scriptCode];
      v9 = [scriptCode length];

      v5 = v4;
      if (!v9)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    v10 = [MEMORY[0x1E695DF58] _addLikelySubtagsForLocaleIdentifier:v4];
    v11 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v10];
    v12 = [v11 mutableCopy];

    [v12 removeObjectForKey:*MEMORY[0x1E695D978]];
    v13 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v12];
    v5 = [self _normalizedLanguageIdentifierFromString:v13];

    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

+ (id)scriptCodeFromLanguage:()InternationalSupportExtensions
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DF58] _addLikelySubtagsForLocaleIdentifier:v3];
    v5 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v4];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695D9E8]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)languageFromLanguage:()InternationalSupportExtensions byReplacingRegion:
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if ([v8 length])
  {
    v9 = v8;
    if ([v7 length])
    {
      v10 = [self baseLanguageFromLanguage:v8];
      v11 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v10];
      v12 = [v11 mutableCopy];

      [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695D978]];
      v13 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v12];
      v9 = [self _normalizedLanguageIdentifierFromString:v13];
    }
  }

  return v9;
}

+ (id)minimizedLanguagesFromLanguages:()InternationalSupportExtensions
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:0x1F373C110 forPreferences:v3];
    firstObject = [v4 firstObject];

    v6 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:firstObject];
    v7 = MEMORY[0x1E696AAE8];
    _deviceLanguages = [MEMORY[0x1E695DF58] _deviceLanguages];
    v9 = [v7 preferredLocalizationsFromArray:_deviceLanguages forPreferences:v3];
    firstObject2 = [v9 firstObject];

    v11 = MEMORY[0x1E696AAE8];
    v36[0] = firstObject2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v13 = [v11 preferredLocalizationsFromArray:0x1F373C110 forPreferences:v12];
    firstObject3 = [v13 firstObject];

    v15 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:firstObject3];
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v17 = orderedSet;
    if (firstObject && v6 && firstObject3 && v15)
    {
      [orderedSet addObject:firstObject];
      if (([v6 isEqualToString:v15] & 1) == 0)
      {
        [v17 addObject:v6];
      }

      [v17 addObject:firstObject3];
      [v17 addObject:v15];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v21 = [v3 componentsJoinedByString:{@", "}];
        v22 = 136316674;
        v23 = "+[NSLocale(InternationalSupportExtensions) minimizedLanguagesFromLanguages:]";
        v24 = 2114;
        v25 = v21;
        v26 = 2114;
        v27 = firstObject;
        v28 = 2114;
        v29 = v6;
        v30 = 2114;
        v31 = firstObject2;
        v32 = 2114;
        v33 = firstObject3;
        v34 = 2114;
        v35 = v15;
        _os_log_fault_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Unable to minimize languages. languages = [ %{public}@ ], minimizedLanguage = %{public}@, , minimizedLanguageBase = %{public}@, deviceLanguage = %{public}@, minimizedDeviceLanguage = %{public}@, minimizedDeviceLanguageBase = %{public}@", &v22, 0x48u);
      }

      [v17 addObjectsFromArray:v3];
    }

    array = [v17 array];
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  v19 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)localizedStringForLanguage:()InternationalSupportExtensions context:length:
{
  v8 = a3;
  v9 = objc_opt_class();
  languageIdentifier = [self languageIdentifier];
  v11 = [v9 _displayNameForLanguage:v8 displayLanguage:languageIdentifier context:a4 length:a5];

  return v11;
}

+ (void)_displayNameForLanguage:()InternationalSupportExtensions displayLanguage:context:length:
{
  v10 = a4;
  v11 = a3;
  v12 = [objc_opt_class() _normalizedLanguageIdentifierFromString:v11];
  v13 = [self _displayNameForNormalizedLanguage:v12 context:a5 displayLanguage:v10 length:a6];

  if ([v13 isEqualToString:v12])
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;

  return v14;
}

- (id)localizedStringForRegion:()InternationalSupportExtensions context:short:
{
  v8 = a3;
  v9 = objc_opt_class();
  languageIdentifier = [self languageIdentifier];
  v11 = [v9 _displayNameForRegion:v8 displayLanguage:languageIdentifier context:a4 short:a5];

  return v11;
}

+ (id)_displayNameForRegion:()InternationalSupportExtensions displayLanguage:context:short:
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = objc_opt_class();
  v14 = [v12 length];
  firstObject = v12;
  if (!v14)
  {
    self = [MEMORY[0x1E696AAE8] mainBundle];
    preferredLocalizations = [self preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
  }

  v16 = [v13 _normalizedLanguageIdentifierFromString:firstObject];

  if (!v14)
  {
  }

  if ((a5 - 3) >= 3)
  {
    v17 = 256;
  }

  else
  {
    v17 = 262 - a5;
  }

  v26 = 0;
  if (a6)
  {
    v18 = 513;
  }

  else
  {
    v18 = 512;
  }

  v27 = v17;
  v28 = v18;
  [v16 UTF8String];
  uldn_openForContext();
  [v11 UTF8String];
  v19 = uldn_regionDisplayName();
  if (v19 >= 150)
  {
    v19 = 0;
    LODWORD(v26) = 15;
  }

  v20 = &v25 - ((2 * (v19 + 1) + 15) & 0x3FFFFFFF0);
  [v11 UTF8String];
  v21 = uldn_regionDisplayName();
  uldn_close();
  if (v26 > 0 || ([MEMORY[0x1E696AEC0] stringWithCharacters:v20 length:v21], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = v11;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)matchedLanguagesFromAvailableLanguages:()InternationalSupportExtensions forPreferredLanguages:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [MEMORY[0x1E695DFA0] orderedSet];
  v27 = v26 = v5;
  v7 = [&unk_1F373C3F8 arrayByAddingObjectsFromArray:v5];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v11 = *MEMORY[0x1E695D9B0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = MEMORY[0x1E696AAE8];
        v33 = v13;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        v16 = [v14 preferredLocalizationsFromArray:v7 forPreferences:v15];
        firstObject = [v16 firstObject];

        if (firstObject)
        {
          v18 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v13];
          v19 = [v18 objectForKeyedSubscript:v11];

          v20 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:firstObject];
          v21 = [v20 objectForKeyedSubscript:v11];

          if (v19)
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22 && (([v19 isEqualToString:v21] & 1) != 0 || objc_msgSend(MEMORY[0x1E695DF58], "_locale:hasCommonParentWith:", firstObject, v13)))
          {
            [v27 addObject:firstObject];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  array = [v27 array];

  v24 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)relatedLanguagesForLanguage:()InternationalSupportExtensions
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (relatedLanguagesForLanguage____onceToken != -1)
  {
    +[NSLocale(InternationalSupportExtensions) relatedLanguagesForLanguage:];
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  allKeys = [relatedLanguagesForLanguage____relatedLanguages allKeys];
  v36[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v8 = [self mostPreferredLanguageOf:allKeys withPreferredLanguages:v7 forUsage:0 options:0];

  if (v8)
  {
    v9 = [relatedLanguagesForLanguage____relatedLanguages objectForKeyedSubscript:v8];
  }

  else
  {
    v9 = 0;
  }

  if ([v9 count])
  {
    v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
    countryCode = [v10 countryCode];

    v30 = countryCode;
    if ([countryCode length])
    {
      v27 = v8;
      v28 = orderedSet;
      v29 = v4;
      v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26 = v9;
      v13 = v9;
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v18];
            countryCode2 = [v19 countryCode];
            v21 = [countryCode2 length];

            if (v21)
            {
              [v12 addObject:v18];
            }

            else
            {
              v22 = [MEMORY[0x1E695DF58] languageFromLanguage:v18 byReplacingRegion:v30];
              [v12 addObject:v22];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v15);
      }

      orderedSet = v28;
      [v28 addObjectsFromArray:v12];

      v4 = v29;
      v9 = v26;
      v8 = v27;
    }

    else
    {
      [orderedSet addObjectsFromArray:v9];
    }
  }

  array = [orderedSet array];

  v24 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)languagesByAddingRelatedLanguagesToLanguages:()InternationalSupportExtensions
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if ([v3 count])
  {
    v4 = MEMORY[0x1E695DF58];
    firstObject = [v3 firstObject];
    v6 = [v4 scriptCodeFromLanguage:firstObject];
    v7 = [v6 isEqualToString:@"Latn"];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = v3;
    v8 = v3;
    v27 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v27)
    {
      v25 = *v36;
      do
      {
        v9 = 0;
        do
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v8);
          }

          v28 = *(*(&v35 + 1) + 8 * v9);
          v29 = v9;
          v10 = [self relatedLanguagesForLanguage:?];
          array = [MEMORY[0x1E695DF70] array];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v32;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v32 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v31 + 1) + 8 * i);
                if (([v8 containsObject:v17] & 1) == 0)
                {
                  if (!v7 || ([MEMORY[0x1E695DF58] scriptCodeFromLanguage:v17], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"Latn"), v18, v20 = orderedSet, (v19 & 1) == 0))
                  {
                    v20 = array;
                  }

                  [v20 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v14);
          }

          [orderedSet addObject:v28];
          [orderedSet addObjectsFromArray:array];

          v9 = v29 + 1;
        }

        while (v29 + 1 != v27);
        v27 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v27);
    }

    v3 = v24;
  }

  array2 = [orderedSet array];

  v22 = *MEMORY[0x1E69E9840];

  return array2;
}

+ (id)availableSpokenLanguages
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__NSLocale_InternationalSupportExtensions__availableSpokenLanguages__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (availableSpokenLanguages___onceToken != -1)
  {
    dispatch_once(&availableSpokenLanguages___onceToken, block);
  }

  v1 = availableSpokenLanguages___availableSpokenLanguages;

  return v1;
}

+ (id)spokenLanguagesForLanguage:()InternationalSupportExtensions
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v3];
  v5 = MEMORY[0x1E695DF58];
  allKeys = [&unk_1F373A850 allKeys];
  v16[0] = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v8 = [v5 matchedLanguagesFromAvailableLanguages:allKeys forPreferredLanguages:v7];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [&unk_1F373A850 objectForKeyedSubscript:firstObject];
  }

  else
  {
    languageCode = [v4 languageCode];
    if (languageCode)
    {
      languageCode2 = [v4 languageCode];
      v15 = languageCode2;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)spokenLanguagesForLanguages:()InternationalSupportExtensions includeLanguagesForRegion:
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v6, "count")}];
  if (a4)
  {
    v8 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:1];
  }

  else
  {
    v8 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = [self spokenLanguagesForLanguage:v13];
        [v7 addObjectsFromArray:v14];

        if (a4)
        {
          v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
          countryCode = [v15 countryCode];

          if (countryCode)
          {
            [v8 addObject:countryCode];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v10);
  }

  if (a4)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v8;
    v30 = v8;
    v32 = [v30 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v32)
    {
      v31 = *v40;
      do
      {
        v17 = 0;
        do
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(v30);
          }

          v34 = v17;
          v18 = *(*(&v39 + 1) + 8 * v17);
          v19 = [MEMORY[0x1E695DF58] languagesForRegion:v18 subdivision:0 withThreshold:1 filter:{0, v29}];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v20 = [v19 countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v36;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v36 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = [MEMORY[0x1E695DF58] languageFromLanguage:*(*(&v35 + 1) + 8 * j) byReplacingRegion:v18];
                v25 = [self spokenLanguagesForLanguage:v24];
                [v7 addObjectsFromArray:v25];
              }

              v21 = [v19 countByEnumeratingWithState:&v35 objects:v47 count:16];
            }

            while (v21);
          }

          v17 = v34 + 1;
        }

        while (v34 + 1 != v32);
        v32 = [v30 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v32);
    }

    v8 = v29;
  }

  array = [v7 array];

  v27 = *MEMORY[0x1E69E9840];

  return array;
}

- (uint64_t)isEquivalentTo:()InternationalSupportExtensions
{
  v4 = a3;
  localeIdentifier = [self localeIdentifier];
  localeIdentifier2 = [v4 localeIdentifier];

  v7 = [MEMORY[0x1E695DF58] _addLikelySubtagsForLocaleIdentifier:localeIdentifier];

  v8 = [MEMORY[0x1E695DF58] _addLikelySubtagsForLocaleIdentifier:localeIdentifier2];

  v9 = [v7 isEqualToString:v8];
  return v9;
}

- (id)availableNumberingSystems
{
  v26 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v3 = MEMORY[0x1E695DF58];
  localeIdentifier = [self localeIdentifier];
  v5 = [v3 componentsFromLocaleIdentifier:localeIdentifier];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"numbers"];
  if ([v7 length])
  {
    [array addObject:v7];
  }

  v20 = v7;
  v19 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695D9B0]];
  v21 = 0u;
  v22 = 0u;
  if ([&unk_1F373C590 containsObject:?])
  {
    v8 = &unk_1F373C5A8;
  }

  else
  {
    v8 = &unk_1F373C5C0;
  }

  v23 = 0uLL;
  v24 = 0uLL;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v6 setObject:*(*(&v21 + 1) + 8 * i) forKeyedSubscript:@"numbers"];
        v13 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v6];
        [v13 UTF8String];
        v14 = unumsys_open();

        if (v14)
        {
          if (!MEMORY[0x1B8CC32F0](v14) && MEMORY[0x1B8CC32E0](v14) == 10)
          {
            v15 = MEMORY[0x1B8CC32D0](v14);
            if (v15)
            {
              v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
              if (([array containsObject:v16] & 1) == 0)
              {
                [array addObject:v16];
              }
            }
          }

          unumsys_close();
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if (([array containsObject:@"latn"] & 1) == 0)
  {
    [array addObject:@"latn"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)localizedStringForNumberingSystem:()InternationalSupportExtensions short:
{
  v6 = MEMORY[0x1E695DF58];
  v7 = a3;
  localeIdentifier = [self localeIdentifier];
  v9 = [v6 componentsFromLocaleIdentifier:localeIdentifier];
  v10 = [v9 mutableCopy];

  [v10 setObject:v7 forKeyedSubscript:@"numbers"];
  v11 = objc_opt_new();
  v12 = MEMORY[0x1E695DF58];
  v13 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v10];
  v14 = [v12 localeWithLocaleIdentifier:v13];
  [v11 setLocale:v14];

  if (a4)
  {
    v15 = &unk_1F373C958;
  }

  else
  {
    v15 = &unk_1F373C970;
  }

  v16 = [v11 stringFromNumber:v15];

  return v16;
}

- (id)countryCodeTopLevelDomainsUsingPunycode:()InternationalSupportExtensions
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v31 = *MEMORY[0x1E69E9840];
  countryCode = [v0 countryCode];
  lowercaseString = [countryCode lowercaseString];
  v5 = [&unk_1F3737C40 objectForKeyedSubscript:lowercaseString];

  if (v2 && [v5 count])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 length];
          v14 = v12;
          if (v13)
          {
            v15 = v13;
            v14 = v12;
            if ([v12 characterAtIndex:0] >= 0x80)
            {
              v16 = v15 >= 0x400 ? 1024 : v15;
              [v12 getCharacters:label range:{0, v16}];
              pErrorCode = U_ZERO_ERROR;
              v17 = MEMORY[0x1B8CC3250](48, &pErrorCode);
              v14 = v12;
              if (v17)
              {
                v14 = v12;
                if (pErrorCode == U_ZERO_ERROR)
                {
                  v18 = v17;
                  *&pInfo.reservedI2 = 0;
                  *&pInfo.size = 16;
                  v19 = uidna_labelToASCII(v17, label, v15, dest, 2048, &pInfo, &pErrorCode);
                  v14 = v12;
                  if (v19 >= 1)
                  {
                    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:dest length:v19];
                  }

                  uidna_close(v18);
                }
              }
            }
          }

          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)positionOfDayPeriodInFormattedTime
{
  v1 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:self];
  if (![v1 length])
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = [v1 characterAtIndex:v2];
    if (v5 != 39)
    {
      break;
    }

    v3 ^= 1u;
LABEL_10:
    if (++v2 >= [v1 length])
    {
      goto LABEL_16;
    }
  }

  if (v3)
  {
    v3 = 1;
    goto LABEL_10;
  }

  v3 = 0;
  v6 = v5 - 66;
  if ((v5 - 66) > 0x29)
  {
    goto LABEL_10;
  }

  if (((1 << v6) & 0x24000000240) != 0)
  {
    v3 = 0;
    v4 = 1;
    goto LABEL_10;
  }

  if (((1 << v6) & 0x180000001) == 0)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

LABEL_17:

  return v7;
}

+ (id)abbreviationsForLanguages:()InternationalSupportExtensions minimizeVariants:
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v53 objects:v59 count:16];
  v39 = v6;
  v40 = array;
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_opt_class() _normalizedLanguageIdentifierFromString:*(*(&v53 + 1) + 8 * i)];
        uppercaseString = [&unk_1F3737CE0 objectForKeyedSubscript:v11];
        if (!uppercaseString)
        {
          v13 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:v11];
          uppercaseString = [&unk_1F3737CE0 objectForKeyedSubscript:v13];
          if (!uppercaseString)
          {
            iSOLanguageCodes = [MEMORY[0x1E695DF58] ISOLanguageCodes];
            v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v11];
            languageCode = [v15 languageCode];
            uppercaseString = &stru_1F3737388;
            if ([iSOLanguageCodes containsObject:languageCode])
            {
              uppercaseString = [languageCode uppercaseString];
            }

            v6 = v39;
            array = v40;
          }
        }

        [array addObject:{uppercaseString, v39, v40}];
      }

      v8 = [v6 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v8);
  }

  if (a4)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = array;
    v19 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v50;
      v22 = MEMORY[0x1E695E118];
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [*(*(&v49 + 1) + 8 * j) componentsSeparatedByString:{@" ", v39, v40}];
          v25 = [v24 objectAtIndexedSubscript:0];
          v26 = [dictionary objectForKey:v25];

          if (v26)
          {
            v27 = dictionary2;
          }

          else
          {
            v27 = dictionary;
          }

          [v27 setObject:v22 forKey:v25];
        }

        v20 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v20);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obja = obj;
    v28 = [obja countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v46;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v46 != v30)
          {
            objc_enumerationMutation(obja);
          }

          v32 = *(*(&v45 + 1) + 8 * k);
          v33 = [v32 componentsSeparatedByString:{@" ", v39, v40}];
          v34 = [v33 objectAtIndexedSubscript:0];
          v35 = [dictionary2 objectForKey:v34];

          if (v35)
          {
            v36 = v32;
          }

          else
          {
            v36 = v34;
          }

          [array2 addObject:v36];
        }

        v29 = [obja countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v29);
    }

    v6 = v39;
    array = v40;
  }

  else
  {
    array2 = array;
  }

  v37 = *MEMORY[0x1E69E9840];

  return array2;
}

- (id)displayNameForLanguage:()InternationalSupportExtensions displayLanguage:context:
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() _displayNameForLanguage:v8 displayLanguage:v7 context:a5 length:0];

  return v9;
}

- (id)displayNameForRegion:()InternationalSupportExtensions displayLanguage:context:short:
{
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _displayNameForRegion:v10 displayLanguage:v9 context:a5 short:a6];

  return v11;
}

+ (id)_displayNameForNormalizedLanguage:()InternationalSupportExtensions context:displayLanguage:length:
{
  v10 = a5;
  v11 = a3;
  v12 = [self _displayNameForNormalizedLanguage:v11 context:a4 displayLanguage:v10 length:a6 isCalcium:{objc_msgSend(self, "isOnCalciumDevice")}];

  return v12;
}

+ (id)_displayNameForNormalizedLanguage:()InternationalSupportExtensions context:displayLanguage:length:isCalcium:
{
  v50[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  selfCopy = self;
  v12 = objc_opt_class();
  v13 = 0x1E696A000uLL;
  if ([v11 length])
  {
    v14 = [v12 _normalizedLanguageIdentifierFromString:v11];
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    preferredLocalizations = [mainBundle preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    v14 = [v12 _normalizedLanguageIdentifierFromString:firstObject];
  }

  v18 = 0x1E695D000uLL;
  if (a7)
  {
    v19 = [&unk_1F37399C8 objectForKeyedSubscript:v10];
    v20 = MEMORY[0x1E696AAE8];
    allKeys = [v19 allKeys];
    v22 = [&unk_1F373C5D8 arrayByAddingObjectsFromArray:allKeys];
    v50[0] = v14;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
    v24 = [v20 preferredLocalizationsFromArray:v22 forPreferences:v23];
    firstObject2 = [v24 firstObject];

    if (![firstObject2 length])
    {
      goto LABEL_10;
    }

    if ([firstObject2 isEqualToString:@"zxx"])
    {
      goto LABEL_10;
    }

    v26 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:firstObject2];
    languageCode = [v26 languageCode];
    v28 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v14];
    languageCode2 = [v28 languageCode];
    v30 = [languageCode isEqualToString:languageCode2];

    if (v30)
    {
      v31 = [v19 objectForKeyedSubscript:firstObject2];

      v13 = 0x1E696A000;
      v18 = 0x1E695D000;
      if (v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
LABEL_10:

      v13 = 0x1E696A000uLL;
      v18 = 0x1E695D000uLL;
    }
  }

  v32 = [&unk_1F3739978 objectForKeyedSubscript:v10];
  v33 = *(v13 + 2792);
  allKeys2 = [v32 allKeys];
  v35 = [&unk_1F373C5F0 arrayByAddingObjectsFromArray:allKeys2];
  v49 = v14;
  v36 = [*(v18 + 3784) arrayWithObjects:&v49 count:1];
  v37 = [v33 preferredLocalizationsFromArray:v35 forPreferences:v36];
  firstObject3 = [v37 firstObject];

  if (![firstObject3 length])
  {
    goto LABEL_16;
  }

  if ([firstObject3 isEqualToString:@"zxx"])
  {
    goto LABEL_16;
  }

  v39 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:firstObject3];
  languageCode3 = [v39 languageCode];
  v41 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v14];
  languageCode4 = [v41 languageCode];
  v43 = [languageCode3 isEqualToString:languageCode4];

  if (v43)
  {
    v31 = [v32 objectForKeyedSubscript:firstObject3];

    if (v31)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

  [v14 UTF8String];
  v44 = uldn_openForContext();
  if (v44)
  {
    v31 = [selfCopy _ICUdisplayNameForLanguage:v10 capitalization:v44];
    uldn_close();
  }

  else
  {
    v31 = 0;
  }

LABEL_20:
  if (![v31 length])
  {
    v45 = v10;

    v31 = v45;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)_addLikelySubtagsForLocaleIdentifier:()InternationalSupportExtensions
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 UTF8String];
  uloc_addLikelySubtags();
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_minimizeSubtagsForLocaleIdentifier:()InternationalSupportExtensions
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 UTF8String];
  uloc_minimizeSubtags();
  v4 = v3;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];

  v6 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v4];
  v7 = *MEMORY[0x1E695D978];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695D978]];

  if ([v8 length])
  {
    v9 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v5];
    v10 = [v9 objectForKeyedSubscript:v7];
    v11 = [v10 length];

    if (!v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v5, v8];

      v5 = v12;
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_normalizedLanguageIdentifierFromString:()InternationalSupportExtensions
{
  v4 = a3;
  if (v4 && ([self _languagesToExemplarStrings], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", v4), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v8 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v4];
    v9 = v4;
    if (!v8 || ([&unk_1F3737D08 objectForKeyedSubscript:v4], (v10 = objc_claimAutoreleasedReturnValue()) == 0) && (objc_msgSend(&unk_1F3737D08, "objectForKeyedSubscript:", v8), v10 = objc_claimAutoreleasedReturnValue(), v9 = v8, !v10))
    {
      v10 = v9;
    }

    v7 = v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

+ (id)_ICUdisplayNameForLanguage:()InternationalSupportExtensions capitalization:
{
  v10 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    [a3 UTF8String];
    v4 = uldn_localeDisplayName();
    if (v4 >= 0x80)
    {
      v6 = 128;
    }

    else
    {
      v6 = v4;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:v9 length:v6];
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_languagesForRegion:()InternationalSupportExtensions subdivision:withThreshold:
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a4;
  uppercaseString = [a3 uppercaseString];
  uppercaseString2 = [v8 uppercaseString];

  v11 = 0.05;
  if (a5 != 1)
  {
    v11 = 0.0;
  }

  if (a5 == 2)
  {
    v12 = 0.6;
  }

  else
  {
    v12 = v11;
  }

  if ([uppercaseString2 length])
  {
    v13 = [self _regionLanguageDataForRegionCode:uppercaseString subdivisionCode:uppercaseString2];
    v14 = [v13 objectForKeyedSubscript:@"all"];
    v15 = __90__NSLocale_InternationalSupportExtensions___languagesForRegion_subdivision_withThreshold___block_invoke(v14, v13, @"override", a5);
    if (!v15 || (v16 = v15, [MEMORY[0x1E695DFB8] orderedSetWithArray:v15], v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
    {
      v50 = v13;
      v51 = uppercaseString2;
      v18 = uppercaseString;
      v19 = [v14 keysSortedByValueUsingComparator:&__block_literal_global_271];
      array = [MEMORY[0x1E695DF70] array];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v54;
LABEL_11:
        v25 = 0;
        while (1)
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v53 + 1) + 8 * v25);
          v27 = [v14 objectForKeyedSubscript:v26];
          [v27 floatValue];
          v29 = v28;

          if (v12 > v29)
          {
            break;
          }

          [array addObject:v26];
          if (v23 == ++v25)
          {
            v23 = [v21 countByEnumeratingWithState:&v53 objects:v57 count:16];
            if (v23)
            {
              goto LABEL_11;
            }

            break;
          }
        }
      }

      v30 = [array count];
      uppercaseString = v18;
      uppercaseString2 = v51;
      v13 = v50;
      if (v30)
      {
        v31 = __90__NSLocale_InternationalSupportExtensions___languagesForRegion_subdivision_withThreshold___block_invoke(v30, v50, @"remove", a5);
        if ([v31 count])
        {
          [array removeObjectsInArray:v31];
        }
      }

      v17 = [MEMORY[0x1E695DFB8] orderedSetWithArray:array];
    }
  }

  else
  {
    v13 = [self _regionLanguageDataForRegionCode:uppercaseString subdivisionCode:0];
    v35 = __90__NSLocale_InternationalSupportExtensions___languagesForRegion_subdivision_withThreshold___block_invoke(v13, v13, @"override", a5);
    if (!v35 || (v36 = v35, [MEMORY[0x1E695DFB8] orderedSetWithArray:v35], v17 = objc_claimAutoreleasedReturnValue(), v36, !v17))
    {
      v52 = 0;
      [uppercaseString UTF8String];
      LanguagesForRegion = ualoc_getLanguagesForRegion();
      v50 = v13;
      v51 = uppercaseString2;
      v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:LanguagesForRegion];
      v48[1] = v48;
      MEMORY[0x1EEE9AC00]();
      v40 = v48 - v39;
      v41 = uppercaseString;
      v49 = uppercaseString;
      [v41 UTF8String];
      ualoc_getLanguagesForRegion();
      if (v52 <= 0 && LanguagesForRegion >= 1)
      {
        v42 = LanguagesForRegion;
        do
        {
          v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v40];
          v44 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v43];

          v45 = [v44 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

          [v38 addObject:v45];
          v40 += 40;
          --v42;
        }

        while (v42);
      }

      v46 = [v38 count];
      uppercaseString2 = v51;
      v13 = v50;
      if (v46)
      {
        v47 = __90__NSLocale_InternationalSupportExtensions___languagesForRegion_subdivision_withThreshold___block_invoke(v46, v50, @"remove", a5);
        if ([v47 count])
        {
          [v38 removeObjectsInArray:v47];
        }
      }

      v17 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v38];

      uppercaseString = v49;
    }
  }

  array2 = [v17 array];

  v33 = *MEMORY[0x1E69E9840];

  return array2;
}

+ (id)_regionLanguageDataForRegionCode:()InternationalSupportExtensions subdivisionCode:
{
  v5 = a4;
  v6 = [&unk_1F373A828 objectForKeyedSubscript:a3];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 objectForKeyedSubscript:v5];

    v7 = v8;
  }

  return v7;
}

+ (__CFString)_parentLocaleIdentifierForIdentifier:()InternationalSupportExtensions
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 UTF8String];
  ualoc_getAppleParent();
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  if ([v5 isEqualToString:v3])
  {
    v6 = @"root";
  }

  else
  {
    v6 = v5;
  }

  if ([(__CFString *)v6 isEqualToString:@"root"])
  {
    if ([v3 isEqualToString:@"yue-CN"])
    {

      v6 = @"zh-CN";
    }

    if ([v3 isEqualToString:@"yue-HK"])
    {

      v6 = @"zh-HK";
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_parentLocaleIdentifiersForIdentifier:()InternationalSupportExtensions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
  v6 = [self _parentLocaleIdentifierForIdentifier:v4];
  if (v6)
  {
    v7 = v6;
    do
    {
      if ([v7 isEqualToString:v4])
      {
        break;
      }

      if ([v7 isEqualToString:@"root"])
      {
        break;
      }

      [v5 addObject:v7];
      v8 = [self _parentLocaleIdentifierForIdentifier:v7];

      v7 = v8;
    }

    while (v8);
  }

  return v5;
}

+ (uint64_t)_locale:()InternationalSupportExtensions hasCommonParentWith:
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [self _parentLocaleIdentifiersForIdentifier:a3];
  v9 = [v6 setWithArray:v8];

  v10 = MEMORY[0x1E695DFD8];
  v11 = [self _parentLocaleIdentifiersForIdentifier:v7];

  v12 = [v10 setWithArray:v11];

  v13 = [v9 intersectsSet:v12];
  return v13;
}

@end