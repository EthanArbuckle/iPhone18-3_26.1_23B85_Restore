@interface IP_pa_Arab_to_pa_Aran_migrator
- (id)performMigrationForPreferences:(id)a3;
@end

@implementation IP_pa_Arab_to_pa_Aran_migrator

- (id)performMigrationForPreferences:(id)a3
{
  v4 = a3;
  if ([(ISMigrator *)self previousVersionIsOlderThanMacOS:@"10.15" iOS:@"17A" watchOS:@"17R" tvOS:@"17J"])
  {
    v5 = [v4 mutableCopy];
    v6 = [v4 objectForKeyedSubscript:@"AppleLanguages"];
    v7 = [v6 mutableCopy];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__IP_pa_Arab_to_pa_Aran_migrator_performMigrationForPreferences___block_invoke;
    v18[3] = &unk_2787A9060;
    v8 = v7;
    v19 = v8;
    [v8 enumerateObjectsUsingBlock:v18];
    [v5 setObject:v8 forKeyedSubscript:@"AppleLanguages"];
    v9 = [v4 objectForKeyedSubscript:@"AppleLocale"];
    v10 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v9];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
    if ([v11 isEqualToString:@"pa"])
    {
      v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBE6F8]];
      v13 = [v12 isEqualToString:@"Arab"];

      if (v13)
      {
        v14 = MEMORY[0x277CBEAF8];
        v15 = [v9 localeIdentifierWithUpdatedScript:@"Aran"];
        v16 = [v14 canonicalLocaleIdentifierFromString:v15];

        [v5 setObject:v16 forKeyedSubscript:@"AppleLocale"];
        v9 = v16;
      }
    }

    else
    {
    }
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

@end