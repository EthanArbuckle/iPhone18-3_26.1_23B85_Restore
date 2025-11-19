@interface IP_emptyPreferences_migrator
- (id)performMigrationForPreferences:(id)a3;
@end

@implementation IP_emptyPreferences_migrator

- (id)performMigrationForPreferences:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (-[ISMigrator platform](self, "platform") != 2 || -[ISMigrator previousSchemaVersion](self, "previousSchemaVersion") >= 0xFA0 || ([v4 objectForKeyedSubscript:@"AppleLocale"], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "objectForKeyedSubscript:", @"AppleLanguages"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = v4;
  }

  else
  {
    v11 = MigrationLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[IP_emptyPreferences_migrator performMigrationForPreferences:]";
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_22DFB7000, v11, OS_LOG_TYPE_DEFAULT, "%s: Languages or locale is empty. Preferences: %{public}@", &v24, 0x16u);
    }

    v8 = [v4 mutableCopy];
    v12 = [v8 objectForKeyedSubscript:@"AppleLanguages"];

    if (!v12)
    {
      [v8 setObject:&unk_2841A2500 forKeyedSubscript:@"AppleLanguages"];
    }

    v13 = [v4 objectForKeyedSubscript:@"AppleLocale"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEAF8];
      v15 = [v4 objectForKeyedSubscript:@"AppleLocale"];
      v16 = [v14 localeWithLocaleIdentifier:v15];
      v17 = [v16 regionCode];
    }

    else
    {
      v17 = @"US";
    }

    v18 = [IPLanguageListManager alloc];
    v19 = [v8 objectForKeyedSubscript:@"AppleLanguages"];
    v20 = [(IPLanguageListManager *)v18 initWithPreferredLanguages:v19];

    v21 = MEMORY[0x277CBEAF8];
    v22 = [(IPLanguageListManager *)v20 deviceLanguage];
    v23 = [v21 _localeIdentifierForLanguage:v22 region:v17];
    [v8 setObject:v23 forKeyedSubscript:@"AppleLocale"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end