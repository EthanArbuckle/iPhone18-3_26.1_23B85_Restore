@interface IP_Zawgyi_migrator
- (id)migrateToUseZawgyiForPreferences:(id)preferences;
- (id)performMigrationForPreferences:(id)preferences;
@end

@implementation IP_Zawgyi_migrator

- (id)migrateToUseZawgyiForPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = [preferencesCopy mutableCopy];
  v5 = [preferencesCopy objectForKeyedSubscript:@"AppleLanguages"];
  v6 = [v5 mutableCopy];

  v7 = [preferencesCopy objectForKeyedSubscript:@"AppleLocale"];
  v8 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:v7];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __55__IP_Zawgyi_migrator_migrateToUseZawgyiForPreferences___block_invoke;
  v22 = &unk_2787A9088;
  v9 = v6;
  v23 = v9;
  v24 = &v25;
  [v9 enumerateObjectsUsingBlock:&v19];
  if ((v26[3] & 1) == 0)
  {
    v10 = MEMORY[0x277CBEAF8];
    v11 = [v8 objectForKeyedSubscript:{*MEMORY[0x277CBE690], v19, v20, v21, v22}];
    v12 = [v10 languageFromLanguage:@"my-Qaag" byReplacingRegion:v11];

    [v9 addObject:v12];
  }

  [v4 setObject:v9 forKeyedSubscript:{@"AppleLanguages", v19, v20, v21, v22}];
  v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
  v14 = [v13 isEqualToString:@"my"];

  if (v14)
  {
    v15 = MEMORY[0x277CBEAF8];
    v16 = [v7 localeIdentifierWithUpdatedScript:@"Qaag"];
    v17 = [v15 canonicalLocaleIdentifierFromString:v16];

    [v4 setObject:v17 forKeyedSubscript:@"AppleLocale"];
    v7 = v17;
  }

  _Block_object_dispose(&v25, 8);

  return v4;
}

- (id)performMigrationForPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if ([(ISMigrator *)self previousSchemaVersion]>= 0x3E9 || [(ISMigrator *)self platform]!= 1 && [(ISMigrator *)self platform]!= 2)
  {
    goto LABEL_8;
  }

  v5 = CTFontDescriptorCreateWithNameAndSize(@"Zawgyi-One", 0.0);
  MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v5, 0);
  if (v5)
  {
    CFRelease(v5);
  }

  if (MatchingFontDescriptor)
  {
    CFRelease(MatchingFontDescriptor);
    v7 = [(IP_Zawgyi_migrator *)self migrateToUseZawgyiForPreferences:preferencesCopy];
  }

  else
  {
LABEL_8:
    v7 = preferencesCopy;
  }

  v8 = v7;

  return v8;
}

@end