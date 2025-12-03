@interface IP_advancedSettings_migrator
- (id)performMigrationForPreferences:(id)preferences;
- (void)migrateOtherSystemSettings;
@end

@implementation IP_advancedSettings_migrator

- (id)performMigrationForPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if ([(ISMigrator *)self platform]== 1 && [(ISMigrator *)self previousSchemaVersion]< 0xBB8)
  {
    v5 = [preferencesCopy mutableCopy];
    v6 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];
    v7 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v6];
    v8 = [v7 mutableCopy];

    [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277CBE698]];
    v9 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v8];
    [v5 setObject:v9 forKeyedSubscript:@"AppleLocale"];
  }

  else
  {
    v5 = preferencesCopy;
  }

  return v5;
}

- (void)migrateOtherSystemSettings
{
  if ([(ISMigrator *)self platform]!= 1 || [(ISMigrator *)self previousSchemaVersion]>= 0xBB8)
  {
    return;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = *MEMORY[0x277CCA208];
  [standardUserDefaults removeObjectForKey:@"AppleICUTimeFormatStrings" inDomain:*MEMORY[0x277CCA208]];
  [standardUserDefaults removeObjectForKey:@"AppleICUDateTimeSymbols" inDomain:v3];
  v4 = +[IPNumberFormat currentFormat];
  v5 = +[IPNumberFormat availableFormats];
  if ([v5 containsObject:v4])
  {
    [IPNumberFormat setFormat:v4];
  }

  else
  {
    firstObject = [v5 firstObject];
    [IPNumberFormat setFormat:firstObject];
  }

  v7 = objc_opt_new();
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  [v7 setLocale:preferredLocale];

  [v7 setDateStyle:1];
  dateFormat = [v7 dateFormat];
  v10 = +[IPDateFormat dateFormatterFromLocale];
  dateFormat2 = [v10 dateFormat];
  v12 = [dateFormat isEqualToString:dateFormat2];

  if (v12)
  {
    v13 = IPFormatOptionLocale;
LABEL_11:
    v18 = *v13;
    goto LABEL_12;
  }

  dateFormat3 = [v7 dateFormat];
  v15 = +[IPDateFormat dateFormatterFromLanguage];
  dateFormat4 = [v15 dateFormat];
  v17 = [dateFormat3 isEqualToString:dateFormat4];

  if (v17)
  {
    v13 = IPFormatOptionLanguage;
    goto LABEL_11;
  }

  dateFormat5 = [v7 dateFormat];
  v20 = [&unk_2841A24B8 containsObject:dateFormat5];

  if (v20)
  {
    dateFormat6 = [v7 dateFormat];
    [IPDateFormat setDateFormat:dateFormat6];

    goto LABEL_13;
  }

  v18 = @"locale";
LABEL_12:
  [IPDateFormat setDateFormat:v18];
LABEL_13:
}

@end