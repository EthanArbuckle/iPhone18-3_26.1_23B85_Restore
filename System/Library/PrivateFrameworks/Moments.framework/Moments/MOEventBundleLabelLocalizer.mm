@interface MOEventBundleLabelLocalizer
+ (BOOL)internalInstall;
+ (BOOL)isPreferredLanguageMidSentenceCaseCapable;
+ (BOOL)isPreferredLanguageNounCap;
+ (BOOL)isPreferredLanguageTitlecaseCapable;
+ (id)_MomentsBundle;
+ (id)_MomentsDefaultLanguageBundle;
+ (id)_Moments_AllCapitalizedStringForKey:(id)key;
+ (id)_Moments_CapitalizedStringForKey:(id)key;
+ (id)_Moments_LocalizedNounForKey:(id)key;
+ (id)_Moments_LocalizedStringForKey:(id)key withTable:(id)table;
+ (id)_Moments_LocalizedStringWithFormat:(id)format arguments:(id)arguments;
+ (id)_Moments_LowercaseNounForKey:(id)key;
+ (id)_Moments_TitleCapitalizedStringForKey:(id)key;
+ (id)__Moments_TitleCapitalizedStringForKey:(id)key;
+ (id)preferredLocalization;
@end

@implementation MOEventBundleLabelLocalizer

+ (id)_MomentsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)_MomentsDefaultLanguageBundle
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  v3 = [v2 pathForResource:@"en" ofType:@"lproj"];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];

  return v4;
}

+ (id)preferredLocalization
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  preferredLocalizations = [v2 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  if (!firstObject)
  {
    v5 = +[MOEventBundleLabelLocalizer _MomentsDefaultLanguageBundle];

    preferredLocalizations2 = [v5 preferredLocalizations];
    firstObject = [preferredLocalizations2 firstObject];

    v2 = v5;
  }

  return firstObject;
}

+ (BOOL)isPreferredLanguageNounCap
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  preferredLocalizations = [v2 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  LOBYTE(preferredLocalizations) = [firstObject isEqualToString:@"de"];
  return preferredLocalizations;
}

+ (BOOL)isPreferredLanguageTitlecaseCapable
{
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_284100648];
  v3 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  preferredLocalizations = [v3 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  LOBYTE(preferredLocalizations) = [v2 containsObject:firstObject];
  return preferredLocalizations;
}

+ (BOOL)isPreferredLanguageMidSentenceCaseCapable
{
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_284100660];
  v3 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  preferredLocalizations = [v3 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  LOBYTE(preferredLocalizations) = [v2 containsObject:firstObject];
  return preferredLocalizations ^ 1;
}

+ (id)_Moments_LocalizedNounForKey:(id)key
{
  v3 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:key];
  if (+[MOEventBundleLabelLocalizer isPreferredLanguageNounCap])
  {
    v4 = [MOEventBundleLabelLocalizer __Moments_TitleCapitalizedStringForKey:v3];

    v3 = v4;
  }

  return v3;
}

+ (id)_Moments_LocalizedStringForKey:(id)key withTable:(id)table
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  tableCopy = table;
  if (keyCopy)
  {
    if ([keyCopy length])
    {
      v9 = +[MOEventBundleLabelLocalizer _MomentsBundle];
      v10 = [v9 localizedStringForKey:keyCopy value:@"_Key_Not_Found_" table:tableCopy];
      if ([@"_Key_Not_Found_" isEqualToString:v10])
      {
        v11 = +[MOEventBundleLabelLocalizer _MomentsDefaultLanguageBundle];
        v12 = [v11 localizedStringForKey:keyCopy value:@"_Key_Not_Found_" table:tableCopy];
        v13 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v21 = 138412802;
          v22 = keyCopy;
          v23 = 2112;
          v24 = v11;
          v25 = 2112;
          v26 = v12;
          _os_log_error_impl(&dword_22D8C5000, v13, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer key is not found, key, %@, default language bundle, %@, default localized string, %@", &v21, 0x20u);
        }

        v14 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(MOEventBundleLabelLocalizer *)keyCopy _Moments_LocalizedStringForKey:v9 withTable:v14];
        }

        if ([@"_Key_Not_Found_" isEqualToString:v10])
        {
          v15 = keyCopy;

          v12 = v15;
        }

        else if (!v12)
        {
          v12 = keyCopy;
        }
      }

      else
      {
        v18 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:keyCopy withTable:v10];
        }

        v12 = v10;
      }
    }

    else
    {
      v12 = keyCopy;
    }
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v16 withTable:?];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelLocalizer.m" lineNumber:93 description:@"Invalid parameter not satisfying: key"];

    v12 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_Moments_LocalizedStringWithFormat:(id)format arguments:(id)arguments
{
  v36 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  argumentsCopy = arguments;
  if (!formatCopy)
  {
    v23 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormat initWithFormat:v23 capitalizationType:?];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelLocalizer.m" lineNumber:138 description:@"Invalid parameter not satisfying: format"];
    goto LABEL_26;
  }

  currentHandler = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:formatCopy];
  v10 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:currentHandler arguments:argumentsCopy];
  }

  v11 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:currentHandler arguments:argumentsCopy];
  }

  if (!currentHandler)
  {
    v24 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:formatCopy arguments:v24];
    }

LABEL_26:
    v21 = 0;
    goto LABEL_31;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = argumentsCopy;
  v12 = argumentsCopy;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v18 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(MOEventBundleLabelLocalizer *)v33 _Moments_LocalizedStringWithFormat:v17 arguments:&v34, v18];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v14);
  }

  if ([v12 count])
  {
    v19 = [v12 count];
    v20 = [MEMORY[0x277CBEB28] dataWithLength:{8 * objc_msgSend(v12, "count")}];
    [v12 getObjects:objc_msgSend(v20 range:{"mutableBytes"), 0, v19}];
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:currentHandler arguments:objc_msgSend(v20, "mutableBytes")];
    v22 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v21 arguments:?];
    }
  }

  else
  {
    v25 = _mo_log_facility_get_os_log(MOLogFacilityFramework);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:currentHandler arguments:v25];
    }

    currentHandler = currentHandler;
    v21 = currentHandler;
  }

  argumentsCopy = v28;
LABEL_31:

  v26 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_Moments_CapitalizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    v5 = v4;
    if ([v5 length] > 1)
    {
      v7 = [v5 substringToIndex:1];
      uppercaseString = [v7 uppercaseString];
      v9 = [v5 substringFromIndex:1];
      localizedCapitalizedString = [uppercaseString stringByAppendingString:v9];

      v5 = v7;
    }

    else
    {
      localizedCapitalizedString = [v5 localizedCapitalizedString];
    }
  }

  else
  {
    localizedCapitalizedString = 0;
  }

  return localizedCapitalizedString;
}

+ (id)_Moments_TitleCapitalizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    if ([self isPreferredLanguageTitlecaseCapable])
    {
      v6 = [MOEventBundleLabelLocalizer __Moments_TitleCapitalizedStringForKey:v5];
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)__Moments_TitleCapitalizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v4 mutableCopy];
    v7 = [v6 length];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __70__MOEventBundleLabelLocalizer___Moments_TitleCapitalizedStringForKey___block_invoke;
    v15 = &unk_278774E28;
    v16 = v6;
    v17 = currentLocale;
    v8 = currentLocale;
    v9 = v6;
    [v9 enumerateSubstringsInRange:0 options:v7 usingBlock:{1027, &v12}];
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __70__MOEventBundleLabelLocalizer___Moments_TitleCapitalizedStringForKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v14 = v7;
    if ([v7 length])
    {
      v8 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
      v9 = [v8 characterIsMember:{objc_msgSend(v14, "characterAtIndex:", 0)}];

      v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      if (a3)
      {
        if (([v10 characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", a3 - 1)}] & v9 & 1) == 0)
        {
LABEL_6:

          goto LABEL_7;
        }
      }

      else if (!v9)
      {
        goto LABEL_6;
      }

      v11 = *(a1 + 32);
      v12 = [v14 capitalizedStringWithLocale:*(a1 + 40)];
      [v11 replaceCharactersInRange:a3 withString:{a4, v12}];

      goto LABEL_6;
    }
  }

LABEL_7:

  return MEMORY[0x2821F96F8]();
}

+ (id)_Moments_AllCapitalizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    localizedUppercaseString = [v4 localizedUppercaseString];
  }

  else
  {
    localizedUppercaseString = 0;
  }

  return localizedUppercaseString;
}

+ (id)_Moments_LowercaseNounForKey:(id)key
{
  keyCopy = key;
  if (+[MOEventBundleLabelLocalizer isPreferredLanguageNounCap])
  {
    lowercaseString = keyCopy;
  }

  else
  {
    lowercaseString = [keyCopy lowercaseString];
  }

  v5 = lowercaseString;

  return v5;
}

+ (BOOL)internalInstall
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) == 1;
  CFRelease(v3);
  return v5;
}

+ (void)_Moments_LocalizedStringForKey:(uint64_t)a1 withTable:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 mask];
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_Moments_LocalizedStringForKey:(NSObject *)a3 withTable:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [v6 firstObject];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v8 localeIdentifier];
  v10 = [a2 preferredLocalizations];
  v11 = [v10 firstObject];
  v13 = 138413058;
  v14 = a1;
  v15 = 2112;
  v16 = v7;
  v17 = 2112;
  v18 = v9;
  v19 = 2112;
  v20 = v11;
  _os_log_error_impl(&dword_22D8C5000, a3, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer key is not found, key, %@, locale preferredLanguage, %@, locale, %@, framework preferredLocalization, %@", &v13, 0x2Au);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 count];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 count];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_Moments_LocalizedStringWithFormat:(void *)a3 arguments:(NSObject *)a4 .cold.3(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 mask];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_22D8C5000, a4, OS_LOG_TYPE_DEBUG, "MOEventBundleLabelLocalizer arg, %@", a1, 0xCu);
}

+ (void)_Moments_LocalizedStringWithFormat:(void *)a1 arguments:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 mask];
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(NSObject *)a2 .cold.5(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_DEBUG, "MOEventBundleLabelLocalizer output string, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(NSObject *)a2 .cold.6(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = 0;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer return nil for format, %@, localizedFormat, %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end