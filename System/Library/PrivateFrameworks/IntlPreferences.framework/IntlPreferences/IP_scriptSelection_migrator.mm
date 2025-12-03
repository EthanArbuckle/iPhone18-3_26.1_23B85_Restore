@interface IP_scriptSelection_migrator
- (id)performMigrationForPreferences:(id)preferences;
@end

@implementation IP_scriptSelection_migrator

- (id)performMigrationForPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if ([(ISMigrator *)self previousSchemaVersion]>= 0x1518)
  {
    v23 = preferencesCopy;
  }

  else
  {
    v5 = [preferencesCopy mutableCopy];
    v6 = [preferencesCopy objectForKeyedSubscript:@"AppleLanguages"];
    v7 = [v6 mutableCopy];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__IP_scriptSelection_migrator_performMigrationForPreferences___block_invoke;
    v25[3] = &unk_2787A90B0;
    v26 = &unk_2841A2638;
    v8 = v5;
    v27 = v8;
    v28 = &unk_2841A2660;
    v9 = v7;
    v29 = v9;
    [v9 enumerateObjectsUsingBlock:v25];
    v10 = [MEMORY[0x277CBEB70] orderedSetWithArray:v9];
    array = [v10 array];
    [v8 setObject:array forKeyedSubscript:@"AppleLanguages"];

    v12 = [preferencesCopy objectForKeyedSubscript:?];
    v13 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v12];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
    v16 = [&unk_2841A2638 objectForKeyedSubscript:v14];
    v17 = [v16 isEqualToString:v15];

    if (v17)
    {
      v18 = [&unk_2841A2660 objectForKeyedSubscript:v15];
      v19 = MEMORY[0x277CBEAF8];
      v20 = [v12 localeIdentifierWithUpdatedScript:v18];
      v21 = [v19 canonicalLocaleIdentifierFromString:v20];

      [v8 setObject:v21 forKeyedSubscript:@"AppleLocale"];
      v12 = v21;
    }

    v22 = v29;
    v23 = v8;
  }

  return v23;
}

@end