@interface FCSportsEventRecordSource
+ (BOOL)recognizesRecordID:(id)d;
- (id)localizableKeys;
- (id)localizableLanguageSpecificKeys;
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCSportsEventRecordSource

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v6 = MEMORY[0x1E69B6FE0];
  baseCopy = base;
  recordCopy = record;
  v9 = objc_alloc_init(v6);
  [v9 setBase:baseCopy];

  localizedLanguageSpecificKeysByOriginalKey = [(FCRecordSource *)self localizedLanguageSpecificKeysByOriginalKey];
  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v12 = [(FCRecordSource *)self valueFromCKRecord:recordCopy baseKey:@"superfeedConfigResourceID" localizedKeys:localizedKeysByOriginalKey localizedLanguageSpecificKeys:localizedLanguageSpecificKeysByOriginalKey];
  [v9 setSuperfeedConfigResourceID:v12];

  v13 = [(FCRecordSource *)self valueFromCKRecord:recordCopy baseKey:@"eventArticleListID" localizedKeys:localizedKeysByOriginalKey localizedLanguageSpecificKeys:localizedLanguageSpecificKeysByOriginalKey];
  [v9 setEventArticleListID:v13];

  v14 = [(FCRecordSource *)self valueFromCKRecord:recordCopy baseKey:@"highlightsArticleListID" localizedKeys:localizedKeysByOriginalKey localizedLanguageSpecificKeys:localizedLanguageSpecificKeysByOriginalKey];
  [v9 setHighlightsArticleListID:v14];

  v15 = [(FCRecordSource *)self valueFromCKRecord:recordCopy baseKey:@"eventCompetitorTagIDs" localizedKeys:localizedKeysByOriginalKey localizedLanguageSpecificKeys:localizedLanguageSpecificKeysByOriginalKey];
  [v9 setEventCompetitorTagIDs:v15];

  v16 = [(FCRecordSource *)self valueFromCKRecord:recordCopy baseKey:@"eventLeagueTagID" localizedKeys:localizedKeysByOriginalKey localizedLanguageSpecificKeys:localizedLanguageSpecificKeysByOriginalKey];
  [v9 setEventLeagueTagID:v16];

  v17 = [(FCRecordSource *)self valueFromCKRecord:recordCopy baseKey:@"sportsData" localizedKeys:localizedKeysByOriginalKey localizedLanguageSpecificKeys:localizedLanguageSpecificKeysByOriginalKey];
  [v9 setSportsData:v17];

  v18 = [recordCopy objectForKeyedSubscript:@"minNewsVersion"];
  [v9 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v18)}];

  v19 = [recordCopy objectForKeyedSubscript:@"sportsTheme"];
  [v9 setSportsTheme:v19];

  v20 = [recordCopy objectForKeyedSubscript:@"isDeprecated"];
  [v9 setIsDeprecated:{objc_msgSend(v20, "BOOLValue")}];

  v21 = [recordCopy objectForKey:@"blockedStorefrontIDs"];
  v22 = [v21 mutableCopy];
  [v9 setBlockedStorefrontIDs:v22];

  v23 = [recordCopy objectForKey:@"allowedStorefrontIDs"];

  v24 = [v23 mutableCopy];
  [v9 setAllowedStorefrontIDs:v24];

  return v9;
}

+ (BOOL)recognizesRecordID:(id)d
{
  dCopy = d;
  v4 = +[FCSportsEventRecordSource recordIDPrefixes];
  v5 = [FCRecordSource recognizesRecordID:dCopy inRecordIDPrefixes:v4];

  return v5;
}

- (id)nonLocalizableKeys
{
  if (qword_1EDB27988 != -1)
  {
    dispatch_once(&qword_1EDB27988, &__block_literal_global_10_0);
  }

  v3 = _MergedGlobals_209;

  return v3;
}

uint64_t __47__FCSportsEventRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"minNewsVersion", @"sportsTheme", @"isDeprecated", @"blockedStorefrontIDs", @"allowedStorefrontIDs", 0}];
  v1 = _MergedGlobals_209;
  _MergedGlobals_209 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)localizableKeys
{
  if (qword_1EDB27998 != -1)
  {
    dispatch_once(&qword_1EDB27998, &__block_literal_global_15_3);
  }

  v3 = qword_1EDB27990;

  return v3;
}

uint64_t __44__FCSportsEventRecordSource_localizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"superfeedConfigResourceID", @"eventCompetitorTagIDs", @"eventLeagueTagID", @"sportsData", @"highlightsArticleListID", @"eventArticleListID", 0}];
  v1 = qword_1EDB27990;
  qword_1EDB27990 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)localizableLanguageSpecificKeys
{
  if (qword_1EDB279A8 != -1)
  {
    dispatch_once(&qword_1EDB279A8, &__block_literal_global_19_2);
  }

  v3 = qword_1EDB279A0;

  return v3;
}

uint64_t __60__FCSportsEventRecordSource_localizableLanguageSpecificKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"superfeedConfigResourceID", @"eventCompetitorTagIDs", @"eventLeagueTagID", @"sportsData", @"highlightsArticleListID", @"eventArticleListID", 0}];
  v1 = qword_1EDB279A0;
  qword_1EDB279A0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end