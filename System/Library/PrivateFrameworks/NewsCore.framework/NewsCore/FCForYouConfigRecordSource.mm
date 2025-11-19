@interface FCForYouConfigRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
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

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v5 = MEMORY[0x1E69B6E48];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setBase:v6];

  v9 = [v7 objectForKeyedSubscript:@"configuration"];
  [v8 setConfiguration:v9];

  v10 = [v7 objectForKeyedSubscript:@"todayFeedConfiguration"];
  [v8 setTodayFeedConfiguration:v10];

  v11 = [v7 objectForKeyedSubscript:@"todayFeedTopStoriesArticleIDs"];
  [v8 setTodayFeedTopStoriesArticleIDs:v11];

  v12 = [v7 objectForKeyedSubscript:@"trendingArticleListID"];
  [v8 setTrendingArticleListID:v12];

  v13 = [v7 objectForKeyedSubscript:@"editorialArticleListIDs"];
  [v8 setEditorialArticleListIDs:v13];

  v14 = [v7 objectForKeyedSubscript:@"editorialSectionTagIDs"];
  [v8 setEditorialSectionTagIDs:v14];

  v15 = [v7 objectForKeyedSubscript:@"spotlightArticleID"];

  [v8 setSpotlightArticleID:v15];

  return v8;
}

@end