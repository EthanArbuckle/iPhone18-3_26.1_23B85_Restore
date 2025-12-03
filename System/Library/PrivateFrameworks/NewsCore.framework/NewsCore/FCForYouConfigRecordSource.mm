@interface FCForYouConfigRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
@end

@implementation FCForYouConfigRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB276C8 != -1)
  {
    dispatch_once(&qword_1EDB276C8, &__block_literal_global_4_8);
  }

  v3 = _MergedGlobals_184;

  return v3;
}

uint64_t __48__FCForYouConfigRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"configuration", @"todayFeedConfiguration", @"editorialArticleListIDs", @"todayFeedTopStoriesArticleIDs", @"trendingArticleListID", @"editorialSectionTagIDs", @"spotlightArticleID", 0}];
  v1 = _MergedGlobals_184;
  _MergedGlobals_184 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v5 = MEMORY[0x1E69B6E48];
  baseCopy = base;
  recordCopy = record;
  v8 = objc_alloc_init(v5);
  [v8 setBase:baseCopy];

  v9 = [recordCopy objectForKeyedSubscript:@"configuration"];
  [v8 setConfiguration:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"todayFeedConfiguration"];
  [v8 setTodayFeedConfiguration:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"todayFeedTopStoriesArticleIDs"];
  [v8 setTodayFeedTopStoriesArticleIDs:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"trendingArticleListID"];
  [v8 setTrendingArticleListID:v12];

  v13 = [recordCopy objectForKeyedSubscript:@"editorialArticleListIDs"];
  [v8 setEditorialArticleListIDs:v13];

  v14 = [recordCopy objectForKeyedSubscript:@"editorialSectionTagIDs"];
  [v8 setEditorialSectionTagIDs:v14];

  v15 = [recordCopy objectForKeyedSubscript:@"spotlightArticleID"];

  [v8 setSpotlightArticleID:v15];

  return v8;
}

@end