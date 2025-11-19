@interface IP_advancedSettings_migrator
- (id)performMigrationForPreferences:(id)a3;
- (void)migrateOtherSystemSettings;
@end

@implementation IP_advancedSettings_migrator

- (id)performMigrationForPreferences:(id)a3
{
  v4 = a3;
  if ([(ISMigrator *)self platform]== 1 && [(ISMigrator *)self previousSchemaVersion]< 0xBB8)
  {
    v5 = [v4 mutableCopy];
    v6 = [v4 objectForKeyedSubscript:@"AppleLocale"];
    v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v6];
    v8 = [v7 mutableCopy];

    [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277CBE698]];
    v9 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v8];
    [v5 setObject:v9 forKeyedSubscript:@"AppleLocale"];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)migrateOtherSystemSettings
{
  if ([(ISMigrator *)self platform]!= 1 || [(ISMigrator *)self previousSchemaVersion]>= 0xBB8)
  {
    return;
  }

  v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = *MEMORY[0x277CCA208];
  [v22 removeObjectForKey:@"AppleICUTimeFormatStrings" inDomain:*MEMORY[0x277CCA208]];
  [v22 removeObjectForKey:@"AppleICUDateTimeSymbols" inDomain:v3];
  v4 = +[IPNumberFormat currentFormat];
  v5 = +[IPNumberFormat availableFormats];
  if ([v5 containsObject:v4])
  {
    [IPNumberFormat setFormat:v4];
  }

  else
  {
    v6 = [v5 firstObject];
    [IPNumberFormat setFormat:v6];
  }

  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CBEAF8] preferredLocale];
  [v7 setLocale:v8];

  [v7 setDateStyle:1];
  v9 = [v7 dateFormat];
  v10 = +[IPDateFormat dateFormatterFromLocale];
  v11 = [v10 dateFormat];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = IPFormatOptionLocale;
LABEL_11:
    v18 = *v13;
    goto LABEL_12;
  }

  v14 = [v7 dateFormat];
  v15 = +[IPDateFormat dateFormatterFromLanguage];
  v16 = [v15 dateFormat];
  v17 = [v14 isEqualToString:v16];

  if (v17)
  {
    v13 = IPFormatOptionLanguage;
    goto LABEL_11;
  }

  v19 = [v7 dateFormat];
  v20 = [&unk_2841A24B8 containsObject:v19];

  if (v20)
  {
    v21 = [v7 dateFormat];
    [IPDateFormat setDateFormat:v21];

    goto LABEL_13;
  }

  v18 = @"locale";
LABEL_12:
  [IPDateFormat setDateFormat:v18];
LABEL_13:
}

@end