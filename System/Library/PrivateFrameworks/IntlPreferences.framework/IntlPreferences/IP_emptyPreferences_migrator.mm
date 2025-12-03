@interface IP_emptyPreferences_migrator
- (id)performMigrationForPreferences:(id)preferences;
@end

@implementation IP_emptyPreferences_migrator

- (id)performMigrationForPreferences:(id)preferences
{
  v28 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  if (-[ISMigrator platform](self, "platform") != 2 || -[ISMigrator previousSchemaVersion](self, "previousSchemaVersion") >= 0xFA0 || ([preferencesCopy objectForKeyedSubscript:@"AppleLocale"], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(preferencesCopy, "objectForKeyedSubscript:", @"AppleLanguages"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = preferencesCopy;
  }

  else
  {
    v11 = MigrationLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[IP_emptyPreferences_migrator performMigrationForPreferences:]";
      v26 = 2114;
      v27 = preferencesCopy;
      _os_log_impl(&dword_22DFB7000, v11, OS_LOG_TYPE_DEFAULT, "%s: Languages or locale is empty. Preferences: %{public}@", &v24, 0x16u);
    }

    v8 = [preferencesCopy mutableCopy];
    v12 = [v8 objectForKeyedSubscript:@"AppleLanguages"];

    if (!v12)
    {
      [v8 setObject:&unk_2841A2500 forKeyedSubscript:@"AppleLanguages"];
    }

    v13 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];

    if (v13)
    {
      v14 = MEMORY[0x277CBEAF8];
      v15 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];
      v16 = [v14 localeWithLocaleIdentifier:v15];
      regionCode = [v16 regionCode];
    }

    else
    {
      regionCode = @"US";
    }

    v18 = [IPLanguageListManager alloc];
    v19 = [v8 objectForKeyedSubscript:@"AppleLanguages"];
    v20 = [(IPLanguageListManager *)v18 initWithPreferredLanguages:v19];

    v21 = MEMORY[0x277CBEAF8];
    deviceLanguage = [(IPLanguageListManager *)v20 deviceLanguage];
    v23 = [v21 _localeIdentifierForLanguage:deviceLanguage region:regionCode];
    [v8 setObject:v23 forKeyedSubscript:@"AppleLocale"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end