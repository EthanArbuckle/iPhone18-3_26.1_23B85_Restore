@interface IP
@end

@implementation IP

void __65__IP_pa_Arab_to_pa_Aran_migrator_performMigrationForPreferences___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:?];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  if ([v6 isEqualToString:@"pa"])
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
    v8 = [v7 isEqualToString:@"Arab"];

    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = [v10 localeIdentifierWithUpdatedScript:@"Aran"];
    v6 = [IntlUtility normalizedLanguageIDFromString:v9];

    [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
  }

LABEL_5:
}

void __61__IP_HK_MO_yue_Hant_migrator_performMigrationForPreferences___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:a2];
  v8 = *MEMORY[0x277CBE6C8];
  v14 = v7;
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  if ([v9 isEqualToString:@"zh"])
  {
    v10 = [v14 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
    v11 = [v10 isEqualToString:@"Hant"];

    if (!v11)
    {
      goto LABEL_5;
    }

    v9 = [v14 mutableCopy];
    [v9 setObject:@"yue" forKeyedSubscript:v8];
    v12 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v9];
    v13 = [IntlUtility normalizedLanguageIDFromString:v12];

    [*(a1 + 32) insertObject:v13 atIndex:a3 + 1];
    *a4 = 1;
  }

LABEL_5:
}

void __55__IP_Zawgyi_migrator_migrateToUseZawgyiForPreferences___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:?];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v9 = [v8 isEqualToString:@"my"];

  if (v9)
  {
    v10 = [v12 localeIdentifierWithUpdatedScript:@"Qaag"];
    v11 = [IntlUtility normalizedLanguageIDFromString:v10];

    [*(a1 + 32) setObject:v11 atIndexedSubscript:a3];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __62__IP_scriptSelection_migrator_performMigrationForPreferences___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:?];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
  v8 = [a1[4] objectForKeyedSubscript:v6];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v16 = a3;
    v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v17];
    v11 = [v10 preferenceKeysForSelectableScripts];
    v12 = [v11 objectForKeyedSubscript:v7];
    if (v12)
    {
      [a1[5] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
    }

    v13 = [a1[6] objectForKeyedSubscript:v7];
    v14 = [v17 localeIdentifierWithUpdatedScript:v13];
    v15 = [IntlUtility normalizedLanguageIDFromString:v14];

    [a1[7] setObject:v15 atIndexedSubscript:v16];
  }
}

@end