@interface IP_unsupportedVariantsAddedByKeyboards_migrator
- (id)migrateForPreferences:(id)preferences keyboards:(id)keyboards;
- (id)performMigrationForPreferences:(id)preferences;
@end

@implementation IP_unsupportedVariantsAddedByKeyboards_migrator

- (id)migrateForPreferences:(id)preferences keyboards:(id)keyboards
{
  v52 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  keyboardsCopy = keyboards;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = keyboardsCopy;
  v9 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = IPUIKeyboardInputModeGetLanguageWithRegion(*(*(&v46 + 1) + 8 * i));
        v14 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:v13];
        [orderedSet addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v10);
  }

  v39 = orderedSet;
  v36 = v8;

  v35 = [preferencesCopy mutableCopy];
  v15 = [preferencesCopy objectForKeyedSubscript:?];
  v38 = [MEMORY[0x277CBEB40] orderedSetWithArray:v15];
  v16 = MEMORY[0x277CBEAF8];
  v37 = preferencesCopy;
  v17 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];
  v18 = [v16 componentsFromLocaleIdentifier:v17];
  v19 = *MEMORY[0x277CBE690];
  v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  v21 = [IPLanguageListManager effectiveSystemLanguagesWithUnsupportedVariant:1 forPreferredLanguages:v15];
  firstObject = [v21 firstObject];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v15;
  v22 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v42 + 1) + 8 * j);
        v27 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v26];
        v28 = [v27 objectForKeyedSubscript:v19];

        if (([v28 isEqualToString:v20] & 1) == 0 && (objc_msgSend(v26, "isEqualToString:", firstObject) & 1) == 0)
        {
          systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
          v30 = [systemLanguages containsObject:v26];

          if ((v30 & 1) == 0)
          {
            if ([v39 containsObject:v26])
            {
              v31 = [MEMORY[0x277CBEAF8] languageFromLanguage:v26 byReplacingRegion:v20];
              if ([v38 containsObject:v31])
              {
                [v38 removeObject:v26];
              }

              else
              {
                [v38 replaceObjectAtIndex:objc_msgSend(v38 withObject:{"indexOfObject:", v26), v31}];
              }
            }
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v23);
  }

  array = [v38 array];
  [v35 setObject:array forKeyedSubscript:@"AppleLanguages"];

  v33 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)performMigrationForPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if ([(ISMigrator *)self previousSchemaVersion]>= 0x7D0)
  {
    v7 = preferencesCopy;
  }

  else
  {
    iPUIKeyboardInputModeController = [(objc_class *)IPUIKeyboardInputModeController() sharedInputModeController];
    enabledInputModeIdentifiers = [iPUIKeyboardInputModeController enabledInputModeIdentifiers];

    v7 = [(IP_unsupportedVariantsAddedByKeyboards_migrator *)self migrateForPreferences:preferencesCopy keyboards:enabledInputModeIdentifiers];
  }

  return v7;
}

@end