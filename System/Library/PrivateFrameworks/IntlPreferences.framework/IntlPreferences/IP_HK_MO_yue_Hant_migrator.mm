@interface IP_HK_MO_yue_Hant_migrator
- (id)performMigrationForPreferences:(id)preferences;
@end

@implementation IP_HK_MO_yue_Hant_migrator

- (id)performMigrationForPreferences:(id)preferences
{
  v35 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  if ([(ISMigrator *)self previousSchemaVersion]>= 0x3E8)
  {
    v17 = preferencesCopy;
  }

  else
  {
    v5 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];
    v6 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v5];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBE690]];
    if ([v7 isEqualToString:@"HK"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"MO"))
    {
      v24 = v7;
      v25 = v6;
      v26 = v5;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v27 = preferencesCopy;
      v8 = [preferencesCopy objectForKeyedSubscript:@"AppleLanguages"];
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
        v12 = *MEMORY[0x277CBE6C8];
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:*(*(&v30 + 1) + 8 * i)];
            v15 = [v14 objectForKeyedSubscript:v12];
            v16 = [v15 isEqualToString:@"yue"];

            if (v16)
            {
              preferencesCopy = v27;
              v17 = v27;

              goto LABEL_15;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      preferencesCopy = v27;
      v17 = [v27 mutableCopy];
      v18 = [v27 objectForKeyedSubscript:v23];
      v19 = [v18 mutableCopy];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __61__IP_HK_MO_yue_Hant_migrator_performMigrationForPreferences___block_invoke;
      v28[3] = &unk_2787A9060;
      v29 = v19;
      v20 = v19;
      [v20 enumerateObjectsUsingBlock:v28];
      [v17 setObject:v20 forKeyedSubscript:v23];

LABEL_15:
      v6 = v25;
      v5 = v26;
      v7 = v24;
    }

    else
    {
      v17 = preferencesCopy;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

@end