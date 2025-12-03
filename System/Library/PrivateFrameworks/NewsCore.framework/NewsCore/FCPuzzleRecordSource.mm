@interface FCPuzzleRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCPuzzleRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB270F0 != -1)
  {
    dispatch_once(&qword_1EDB270F0, &__block_literal_global_4_2);
  }

  v3 = _MergedGlobals_150;

  return v3;
}

uint64_t __42__FCPuzzleRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"title", @"subtitle", @"description", @"puzzleTypeID", @"dataResourceID", @"authors", @"isPaid", @"publishDate", @"difficulty", @"relatedPuzzleIDs", @"thumbnailSmall", @"thumbnailLarge", @"language", @"blockedStorefrontIDs", @"allowedStorefrontIDs", @"minNewsVersion", @"teaserConfiguration", @"behaviorFlags", @"isDeprecated", @"isDraft", 0}];
  v1 = _MergedGlobals_150;
  _MergedGlobals_150 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6F68];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"title"];
  [v8 setTitle:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"subtitle"];
  [v8 setSubtitle:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"description"];
  [v8 setPuzzleDescription:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"dataResourceID"];
  [v8 setDataResourceID:v12];

  v13 = [recordCopy objectForKeyedSubscript:@"puzzleTypeID"];
  [v8 setPuzzleTypeID:v13];

  v14 = [recordCopy objectForKeyedSubscript:@"authors"];
  v15 = [v14 mutableCopy];
  [v8 setAuthors:v15];

  v16 = [recordCopy objectForKeyedSubscript:@"isPaid"];
  [v8 setIsPaid:{objc_msgSend(v16, "BOOLValue")}];

  v17 = [recordCopy objectForKeyedSubscript:@"publishDate"];
  pbDate = [v17 pbDate];
  [v8 setPublishedDate:pbDate];

  v19 = [recordCopy objectForKeyedSubscript:@"difficulty"];
  [v8 setDifficultyLevel:{objc_msgSend(v19, "unsignedLongLongValue")}];

  v20 = [recordCopy objectForKeyedSubscript:@"relatedPuzzleIDs"];
  v21 = [v20 mutableCopy];
  [v8 setRelatedPuzzleIDs:v21];

  v22 = [recordCopy objectForKeyedSubscript:@"thumbnailSmall"];
  [v8 setThumbnailImageCompactURL:v22];

  v23 = [recordCopy objectForKeyedSubscript:@"thumbnailLarge"];
  [v8 setThumbnailImageLargeURL:v23];

  v24 = [recordCopy objectForKeyedSubscript:@"language"];
  [v8 setLanguage:v24];

  v25 = [recordCopy objectForKeyedSubscript:@"blockedStorefrontIDs"];
  v26 = [v25 mutableCopy];
  [v8 setBlockedStorefrontIDs:v26];

  v27 = [recordCopy objectForKeyedSubscript:@"allowedStorefrontIDs"];
  v28 = [v27 mutableCopy];
  [v8 setAllowedStorefrontIDs:v28];

  v29 = [recordCopy objectForKeyedSubscript:@"minNewsVersion"];
  [v8 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v29)}];

  v30 = [recordCopy objectForKeyedSubscript:@"teaserConfiguration"];
  [v8 setTeaserConfiguration:v30];

  v31 = [recordCopy objectForKey:@"behaviorFlags"];
  [v8 setBehaviorFlags:{objc_msgSend(v31, "unsignedLongLongValue")}];

  v32 = [recordCopy objectForKeyedSubscript:@"isDeprecated"];
  [v8 setIsDeprecated:{objc_msgSend(v32, "BOOLValue")}];

  v33 = [recordCopy objectForKeyedSubscript:@"isDraft"];

  [v8 setIsDraft:{objc_msgSend(v33, "BOOLValue")}];

  return v8;
}

@end