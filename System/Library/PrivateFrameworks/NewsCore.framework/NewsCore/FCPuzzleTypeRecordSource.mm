@interface FCPuzzleTypeRecordSource
+ (BOOL)recognizesRecordID:(id)d;
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCPuzzleTypeRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB27210 != -1)
  {
    dispatch_once(&qword_1EDB27210, &__block_literal_global_4_3);
  }

  v3 = _MergedGlobals_156;

  return v3;
}

uint64_t __46__FCPuzzleTypeRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"name", @"nameCompact", @"kind", @"behaviorFlags", @"engineResourceID", @"superfeedConfigResourceID", @"latestPuzzleIDs", @"promotedPuzzleIDs", @"nameImage", @"nameImageForDarkBackground", @"coverImage", @"feedNavImage", @"navigationChromeBackgroundImage", @"navigationChromeBackgroundImageCompact", @"navigationChromeBackgroundImageLarge", @"navigationChromeBackgroundDarkModeImage", @"navigationChromeBackgroundDarkModeImageCompact", @"navigationChromeBackgroundDarkModeImageLarge", @"language", @"blockedStorefrontIDs", @"allowedStorefrontIDs", @"minNewsVersion", @"exploreTileImage", @"themeConfiguration", @"imagesResourceID", @"isPublic", 0}];
  v1 = _MergedGlobals_156;
  _MergedGlobals_156 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)recognizesRecordID:(id)d
{
  dCopy = d;
  v4 = +[FCPuzzleTypeRecordSource recordIDPrefixes];
  v5 = [FCRecordSource recognizesRecordID:dCopy inRecordIDPrefixes:v4];

  return v5;
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6F70];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"name"];
  [v8 setName:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"nameCompact"];
  [v8 setNameCompact:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"kind"];
  [v8 setKind:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"behaviorFlags"];
  [v8 setBehaviorFlags:{objc_msgSend(v12, "unsignedLongLongValue")}];

  v13 = [recordCopy objectForKeyedSubscript:@"engineResourceID"];
  [v8 setEngineResourceID:v13];

  v14 = [recordCopy objectForKeyedSubscript:@"superfeedConfigResourceID"];
  [v8 setSuperfeedConfigResourceID:v14];

  v15 = [recordCopy objectForKeyedSubscript:@"latestPuzzleIDs"];
  [v8 setLatestPuzzleIDs:v15];

  v16 = [recordCopy objectForKeyedSubscript:@"promotedPuzzleIDs"];
  [v8 setPromotedPuzzleIDs:v16];

  v17 = [recordCopy objectForKeyedSubscript:@"coverImage"];
  [v8 setCoverImageURL:v17];

  v18 = [recordCopy objectForKeyedSubscript:@"nameImage"];
  [v8 setNameImageURL:v18];

  v19 = [recordCopy objectForKeyedSubscript:@"nameImageForDarkBackground"];
  [v8 setNameImageForDarkBackgroundURL:v19];

  v20 = [recordCopy objectForKeyedSubscript:@"feedNavImage"];
  [v8 setFeedNavImageURL:v20];

  v21 = [recordCopy objectForKeyedSubscript:@"navigationChromeBackgroundImage"];
  [v8 setNavigationChromeBackgroundImageURL:v21];

  v22 = [recordCopy objectForKeyedSubscript:@"navigationChromeBackgroundImageCompact"];
  [v8 setNavigationChromeBackgroundImageCompactURL:v22];

  v23 = [recordCopy objectForKeyedSubscript:@"navigationChromeBackgroundImageLarge"];
  [v8 setNavigationChromeBackgroundImageLargeURL:v23];

  v24 = [recordCopy objectForKeyedSubscript:@"navigationChromeBackgroundDarkModeImage"];
  [v8 setNavigationChromeBackgroundDarkModeImageURL:v24];

  v25 = [recordCopy objectForKeyedSubscript:@"navigationChromeBackgroundDarkModeImageCompact"];
  [v8 setNavigationChromeBackgroundDarkModeImageCompactURL:v25];

  v26 = [recordCopy objectForKeyedSubscript:@"navigationChromeBackgroundDarkModeImageLarge"];
  [v8 setNavigationChromeBackgroundDarkModeImageLargeURL:v26];

  v27 = [recordCopy objectForKeyedSubscript:@"language"];
  [v8 setLanguage:v27];

  v28 = [recordCopy objectForKeyedSubscript:@"blockedStorefrontIDs"];
  v29 = [v28 mutableCopy];
  [v8 setBlockedStorefrontIDs:v29];

  v30 = [recordCopy objectForKeyedSubscript:@"allowedStorefrontIDs"];
  v31 = [v30 mutableCopy];
  [v8 setAllowedStorefrontIDs:v31];

  v32 = [recordCopy objectForKeyedSubscript:@"minNewsVersion"];
  [v8 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v32)}];

  v33 = [recordCopy objectForKeyedSubscript:@"exploreTileImage"];
  [v8 setExploreTileImageURL:v33];

  v34 = [recordCopy objectForKeyedSubscript:@"themeConfiguration"];
  [v8 setThemeConfiguration:v34];

  v35 = [recordCopy objectForKeyedSubscript:@"imagesResourceID"];
  [v8 setImagesResourceID:v35];

  v36 = [recordCopy objectForKeyedSubscript:@"isPublic"];

  [v8 setIsPublic:{objc_msgSend(v36, "BOOLValue")}];

  return v8;
}

@end