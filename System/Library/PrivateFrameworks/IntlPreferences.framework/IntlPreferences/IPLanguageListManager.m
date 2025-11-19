@interface IPLanguageListManager
+ (BOOL)canRemoveLanguages:(id)a3 fromPreferredLanguages:(id)a4;
+ (id)effectiveSystemLanguagesWithUnsupportedVariant:(BOOL)a3 forPreferredLanguages:(id)a4;
+ (id)manager;
+ (id)regionalVariantLanguagesForBaseLanguage:(id)a3;
+ (id)regionalVariantLanguagesForSystemLanguages;
- (IPLanguageListManager)initWithPreferredLanguages:(id)a3;
- (IPLanguageListManager)initWithPreferredLanguages:(id)a3 preferredLocale:(id)a4;
- (IPLanguageListManager)initWithPreferredLanguages:(id)a3 preferredLocale:(id)a4 systemLanguages:(id)a5;
- (NSString)deviceLanguage;
- (NSString)systemDisplayLanguage;
- (id)deviceLanguagesForChangingDeviceLanguage:(BOOL)a3;
- (id)languageVariants;
- (id)otherLanguages;
- (void)setPreferredLanguages:(id)a3;
- (void)setRegion:(id)a3 updateFirstLanguage:(BOOL)a4;
- (void)systemDisplayLanguage;
@end

@implementation IPLanguageListManager

- (IPLanguageListManager)initWithPreferredLanguages:(id)a3 preferredLocale:(id)a4 systemLanguages:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IPLanguageListManager;
  v12 = [(IPLanguageListManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preferredLanguages, a3);
    objc_storeStrong(&v13->_preferredLocale, a4);
    objc_storeStrong(&v13->_systemLanguages, a5);
  }

  return v13;
}

- (IPLanguageListManager)initWithPreferredLanguages:(id)a3 preferredLocale:(id)a4
{
  v6 = MEMORY[0x277CBEAF8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 systemLanguages];
  v10 = [(IPLanguageListManager *)self initWithPreferredLanguages:v8 preferredLocale:v7 systemLanguages:v9];

  return v10;
}

- (IPLanguageListManager)initWithPreferredLanguages:(id)a3
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = [v4 preferredLocale];
  v7 = [MEMORY[0x277CBEAF8] systemLanguages];
  v8 = [(IPLanguageListManager *)self initWithPreferredLanguages:v5 preferredLocale:v6 systemLanguages:v7];

  return v8;
}

+ (id)manager
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEAF8] _globalPreferredLanguages];
  v4 = [MEMORY[0x277CBEAF8] preferredLocale];
  v5 = [MEMORY[0x277CBEAF8] systemLanguages];
  v6 = [v2 initWithPreferredLanguages:v3 preferredLocale:v4 systemLanguages:v5];

  return v6;
}

- (id)deviceLanguagesForChangingDeviceLanguage:(BOOL)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = [(IPLanguageListManager *)self systemLanguages];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [(IPLanguageListManager *)self systemLanguages];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __66__IPLanguageListManager_deviceLanguagesForChangingDeviceLanguage___block_invoke;
  v54[3] = &unk_2787A9418;
  v8 = v6;
  v55 = v8;
  [v7 enumerateObjectsUsingBlock:v54];

  v45 = [(IPLanguageListManager *)self systemDisplayLanguage];
  v9 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:?];
  v10 = [(IPLanguageListManager *)self preferredLocale];
  v11 = [v10 countryCode];

  v12 = [IntlUtility preferredLanguagesForRegionWithoutFiltering:v11];
  v13 = [(IPLanguageListManager *)self systemLanguages];
  v14 = [objc_opt_class() regionalVariantLanguagesForSystemLanguages];
  v15 = [v13 arrayByAddingObjectsFromArray:v14];
  v44 = v11;
  v16 = [IntlUtility filterLanguageList:v12 forRegion:v11 fromLanguages:v15];
  v17 = [v16 mutableCopy];

  v18 = v9;
  v19 = v8;

  [v8 removeObjectsInArray:v17];
  if (v9)
  {
    [v8 removeObject:v9];
    [v17 removeObject:v9];
  }

  v20 = v45;
  if (v45)
  {
    [v8 removeObject:v45];
    [v17 removeObject:v45];
  }

  v21 = [MEMORY[0x277CBEB40] orderedSet];
  v22 = v21;
  if (v45)
  {
    [v21 addObject:v45];
  }

  v43 = v17;
  [v22 addObjectsFromArray:v17];
  [v22 addObjectsFromArray:v8];
  if (!a3)
  {
    v23 = v18;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v24 = [(IPLanguageListManager *)self preferredLanguages];
    v25 = [v24 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v51;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v50 + 1) + 8 * i);
          v30 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v29];
          v31 = [v22 indexOfObject:v29];
          if (v31 != 0x7FFFFFFFFFFFFFFFLL || (v31 = [v22 indexOfObject:v30], v31 != 0x7FFFFFFFFFFFFFFFLL))
          {
            [v22 removeObjectAtIndex:v31];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v26);
    }

    [v22 removeObject:v45];
    v19 = v8;
    v18 = v23;
    v20 = v45;
  }

  v32 = [MEMORY[0x277CBEB40] orderedSet];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v33 = v22;
  v34 = [v33 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v47;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [IPLanguage languageWithIdentifier:*(*(&v46 + 1) + 8 * j)];
        [v32 addObject:v38];
      }

      v35 = [v33 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v35);
  }

  v39 = [v32 array];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

void __66__IPLanguageListManager_deviceLanguagesForChangingDeviceLanguage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IntlUtility normalizedLanguageIDFromString:a2];
  [v2 addObject:v3];
}

- (id)languageVariants
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(IPLanguageListManager *)self systemDisplayLanguage];
  v3 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v2];
  v4 = [objc_opt_class() regionalVariantLanguagesForBaseLanguage:v3];
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [IPLanguage languageWithIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 array];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)otherLanguages
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAF8] renderableUILanguages];
  v4 = [v3 mutableCopy];

  v5 = [(IPLanguageListManager *)self systemLanguages];
  [v4 removeObjectsInArray:v5];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(IPLanguageListManager *)self preferredLanguages];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v11];
        v13 = [v4 indexOfObject:v11];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL || (v13 = [v4 indexOfObject:v12], v13 != 0x7FFFFFFFFFFFFFFFLL))
        {
          [v4 removeObjectAtIndex:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [IPLanguage languageWithIdentifier:*(*(&v24 + 1) + 8 * j), v24];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v21 = [(IPLanguageListManager *)self deviceLanguagesForChangingDeviceLanguage:0];
  [v14 removeObjectsInArray:v21];

  [objc_opt_class() sortByLocalizedLanguage:v14];
  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setRegion:(id)a3 updateFirstLanguage:(BOOL)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v40 = self;
  v6 = [(IPLanguageListManager *)self preferredLanguages];
  v7 = [v6 mutableCopy];

  if ([v7 count])
  {
    v8 = 0;
    v9 = 0;
    v38 = *MEMORY[0x277CBE690];
    v39 = v7;
    v36 = v5;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:{v9, v36}];
      v11 = [MEMORY[0x277CBEAF8] languageFromLanguage:v10 byReplacingRegion:v5];
      v41 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v10];
      if (v8)
      {
        v12 = 0;
      }

      else
      {
        v13 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v10];
        v14 = [MEMORY[0x277CBEAF8] systemLanguages];
        if ([v14 containsObject:v13])
        {
          v12 = 1;
        }

        else
        {
          v15 = [MEMORY[0x277CBEAF8] baseSystemLanguages];
          v12 = [v15 containsObject:v13];
        }
      }

      v16 = [objc_opt_class() regionalVariantLanguagesForSystemLanguages];
      v17 = [v16 containsObject:v10];

      if (v12)
      {
        v7 = v39;
        if (!a4 && ![MEMORY[0x277CBEAF8] _language:v10 usesSameLocalizationAs:v11])
        {
          if ((v17 & 1) == 0)
          {
            v18 = MEMORY[0x277CCA8D8];
            v19 = [objc_opt_class() regionalVariantLanguagesForSystemLanguages];
            v42[0] = v10;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
            v21 = [v18 preferredLocalizationsFromArray:v19 forPreferences:v20];
            v22 = [v21 firstObject];

            v7 = v39;
            if ([v22 length] && objc_msgSend(MEMORY[0x277CBEAF8], "_language:usesSameLocalizationAs:", v22, v10))
            {
              [v39 replaceObjectAtIndex:v9 withObject:v22];
            }

            v5 = v36;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v23 = [v41 objectForKeyedSubscript:v38];
        v7 = v39;
        if (v23)
        {
          v24 = v23;
          v25 = v17 ^ 1;
          v26 = [v41 objectForKeyedSubscript:v38];
          v27 = [(IPLanguageListManager *)v40 preferredLocale];
          v28 = [v27 countryCode];
          v29 = [v26 isEqualToString:v28] | v25;

          v5 = v36;
          v7 = v39;

          if ((v29 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      [v7 replaceObjectAtIndex:v9 withObject:v11];
LABEL_20:
      v8 |= v12;

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  v30 = [MEMORY[0x277CBEB70] orderedSetWithArray:v7];
  v31 = [v30 array];
  [v7 setArray:v31];

  v32 = MEMORY[0x277CBEAF8];
  v33 = [MEMORY[0x277CBEAF8] localeIdentifierForRegionChange:v5];
  v34 = [v32 localeWithLocaleIdentifier:v33];
  [(IPLanguageListManager *)v40 setPreferredLocale:v34];

  [(IPLanguageListManager *)v40 setPreferredLanguages:v7];
  v35 = *MEMORY[0x277D85DE8];
}

- (void)setPreferredLanguages:(id)a3
{
  objc_storeStrong(&self->_preferredLanguages, a3);
  v6 = a3;
  systemDisplayLanguage = self->_systemDisplayLanguage;
  self->_systemDisplayLanguage = 0;
}

- (NSString)deviceLanguage
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Foundation"];
  v4 = [v3 localizations];

  v5 = MEMORY[0x277CCA8D8];
  v6 = [(IPLanguageListManager *)self preferredLanguages];
  v7 = [v5 preferredLocalizationsFromArray:v4 forPreferences:v6];
  v8 = [v7 firstObject];

  v9 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:v8];

  return v9;
}

- (NSString)systemDisplayLanguage
{
  v29[1] = *MEMORY[0x277D85DE8];
  systemDisplayLanguage = self->_systemDisplayLanguage;
  if (systemDisplayLanguage)
  {
    goto LABEL_19;
  }

  v4 = [(IPLanguageListManager *)self deviceLanguage];
  v5 = objc_opt_class();
  v6 = [(IPLanguageListManager *)self preferredLanguages];
  v7 = [v5 effectiveSystemLanguagesWithUnsupportedVariant:1 forPreferredLanguages:v6];
  v8 = [v7 firstObject];

  v9 = v4;
  v10 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v8];
  v11 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v9];
  v12 = [v10 isEqualToString:v11];

  v13 = v9;
  if (v12)
  {
    v13 = v8;
  }

  if (v13)
  {
    v14 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v13];
    v15 = [objc_opt_class() regionalVariantLanguagesForBaseLanguage:v14];
    if ([v15 containsObject:v13])
    {
LABEL_18:
      v25 = self->_systemDisplayLanguage;
      self->_systemDisplayLanguage = v13;
      v26 = v13;

      systemDisplayLanguage = self->_systemDisplayLanguage;
LABEL_19:
      v19 = systemDisplayLanguage;
      goto LABEL_20;
    }

    v16 = [(IPLanguageListManager *)self systemLanguages];
    v17 = [v16 arrayByAddingObjectsFromArray:v15];

    if ([v17 containsObject:v13])
    {
      v18 = 0;
    }

    else
    {
      v20 = MEMORY[0x277CCA8D8];
      v29[0] = v13;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      v22 = [v20 preferredLocalizationsFromArray:v17 forPreferences:v21];
      v18 = [v22 firstObject];

      if ([(__CFString *)v18 isEqualToString:@"pt"])
      {

        v18 = @"pt-BR";
      }

      else if (!v18)
      {
        goto LABEL_16;
      }

      if ([v17 containsObject:v18])
      {
        v23 = v18;
        v18 = v23;
LABEL_17:
        p_isa = &v23->isa;

        v13 = p_isa;
        goto LABEL_18;
      }
    }

LABEL_16:
    v23 = v14;
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [IPLanguageListManager systemDisplayLanguage];
  }

  v19 = 0;
LABEL_20:
  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)regionalVariantLanguagesForBaseLanguage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [MEMORY[0x277CBEAF8] renderableUILanguages];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v3 isEqualToString:v10] & 1) == 0)
        {
          v11 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v10];
          if ([v3 isEqualToString:v11])
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v4 sortUsingComparator:&__block_literal_global_4];
  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __65__IPLanguageListManager_regionalVariantLanguagesForBaseLanguage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [IPLanguage languageWithIdentifier:a2];
  v6 = [v5 localizedStringForName];

  v7 = [IPLanguage languageWithIdentifier:v4];

  v8 = [v7 localizedStringForName];

  v9 = [v6 localizedStandardCompare:v8];
  return v9;
}

+ (id)regionalVariantLanguagesForSystemLanguages
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages;
  if (!regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages)
  {
    v4 = [MEMORY[0x277CBEB40] orderedSet];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [MEMORY[0x277CBEAF8] baseSystemLanguages];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [a1 regionalVariantLanguagesForBaseLanguage:*(*(&v15 + 1) + 8 * v9)];
          [v4 addObjectsFromArray:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = [v4 array];
    v12 = regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages;
    regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages = v11;

    v3 = regionalVariantLanguagesForSystemLanguages___regionalVariantLanguagesForSystemLanguages;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __49__IPLanguageListManager_sortByLocalizedLanguage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedStringForName];
  v6 = [v4 localizedStringForName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

+ (id)effectiveSystemLanguagesWithUnsupportedVariant:(BOOL)a3 forPreferredLanguages:(id)a4
{
  v26 = a3;
  v32 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = 0x277CBE000uLL;
  v6 = [MEMORY[0x277CBEAF8] systemLanguages];
  v7 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      v25 = v10;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        if ([v6 containsObject:{v13, v25}])
        {
          [v7 addObject:v13];
        }

        else
        {
          v14 = [*(v5 + 2808) baseLanguageFromLanguage:v13];
          if ([v6 containsObject:v14])
          {
            goto LABEL_10;
          }

          [*(v5 + 2808) baseSystemLanguages];
          v15 = v11;
          v16 = v6;
          v17 = v7;
          v18 = v8;
          v20 = v19 = v5;
          v21 = [v20 containsObject:v14];

          v5 = v19;
          v8 = v18;
          v7 = v17;
          v6 = v16;
          v11 = v15;
          v10 = v25;
          if (v21)
          {
LABEL_10:
            if (v26)
            {
              v22 = v13;
            }

            else
            {
              v22 = v14;
            }

            [v7 addObject:v22];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  if (![v7 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      +[IPLanguageListManager effectiveSystemLanguagesWithUnsupportedVariant:forPreferredLanguages:];
    }

    [v7 addObject:@"en-001"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)canRemoveLanguages:(id)a3 fromPreferredLanguages:(id)a4
{
  v5 = a3;
  v6 = [IPLanguageListManager effectiveSystemLanguagesWithUnsupportedVariant:1 forPreferredLanguages:a4];
  v7 = [v6 mutableCopy];

  [v7 removeObjectsInArray:v5];
  LOBYTE(v6) = [v7 count] != 0;

  return v6;
}

- (void)systemDisplayLanguage
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[IPLanguageListManager systemDisplayLanguage]";
  _os_log_fault_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: systemDisplayLanguage is nil.", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

+ (void)effectiveSystemLanguagesWithUnsupportedVariant:forPreferredLanguages:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "+[IPLanguageListManager effectiveSystemLanguagesWithUnsupportedVariant:forPreferredLanguages:]";
  v3 = 2112;
  v4 = @"en-001";
  _os_log_fault_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: effectiveSystemLanguages is empty. Falling back to [%@].", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

@end