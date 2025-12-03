@interface FCAudioConfigRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCAudioConfigRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB26F08 != -1)
  {
    dispatch_once(&qword_1EDB26F08, &__block_literal_global_4_0);
  }

  v3 = _MergedGlobals_135;

  return v3;
}

uint64_t __47__FCAudioConfigRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"configuration", @"curatedArticleIDs", @"dailyBriefingArticleID", @"featuredAudioArticleListID", @"feedConfiguration", @"heroArticleIDs", @"latestAudioArticleListID", 0}];
  v1 = _MergedGlobals_135;
  _MergedGlobals_135 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6D10];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"configuration"];
  [v8 setConfiguration:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"curatedArticleIDs"];
  [v8 setCuratedArticleIDs:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"dailyBriefingArticleID"];
  [v8 setDailyBriefingArticleID:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"featuredAudioArticleListID"];
  [v8 setFeaturedAudioArticleListID:v12];

  v13 = [recordCopy objectForKeyedSubscript:@"feedConfiguration"];
  [v8 setFeedConfiguration:v13];

  v14 = [recordCopy objectForKeyedSubscript:@"heroArticleIDs"];
  [v8 setHeroArticleIDs:v14];

  v15 = [recordCopy objectForKeyedSubscript:@"latestAudioArticleListID"];

  [v8 setLatestAudioArticleListID:v15];

  return v8;
}

@end