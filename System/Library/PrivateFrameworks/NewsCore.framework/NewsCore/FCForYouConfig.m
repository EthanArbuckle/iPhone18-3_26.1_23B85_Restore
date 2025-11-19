@interface FCForYouConfig
- (FCForYouConfig)initWithRecord:(id)a3 interestToken:(id)a4;
- (NSArray)editorialArticleListIDs;
- (NSArray)editorialSectionTagIDs;
- (NSArray)todayFeedTopStoriesArticleIDs;
- (NSDate)fetchedDate;
- (NSString)spotlightArticleID;
- (NSString)trendingArticleListID;
@end

@implementation FCForYouConfig

- (FCForYouConfig)initWithRecord:(id)a3 interestToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = FCForYouConfig;
  v9 = [(FCForYouConfig *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_forYouConfigRecord, a3);
    objc_storeStrong(&v10->_interestToken, a4);
    v11 = MEMORY[0x1E695DF20];
    v12 = [v7 configuration];
    v13 = [v11 fc_dictionaryFromJSON:v12];

    v14 = [FCTopStoriesGroupConfig alloc];
    v15 = [v13 objectForKeyedSubscript:@"top_stories"];
    v16 = [(FCTopStoriesGroupConfig *)v14 initWithDictionary:v15];
    topStoriesGroupConfig = v10->_topStoriesGroupConfig;
    v10->_topStoriesGroupConfig = v16;

    v18 = [FCGroupConfig alloc];
    v19 = [v13 objectForKeyedSubscript:@"trending"];
    v20 = [(FCGroupConfig *)v18 initWithDictionary:v19];
    trendingGroupConfig = v10->_trendingGroupConfig;
    v10->_trendingGroupConfig = v20;

    v22 = [FCSpotlightGroupConfig alloc];
    v23 = [v13 objectForKeyedSubscript:@"spotlight"];
    v24 = [(FCSpotlightGroupConfig *)v22 initWithDictionary:v23];
    spotlightGroupConfig = v10->_spotlightGroupConfig;
    v10->_spotlightGroupConfig = v24;

    objc_opt_class();
    v26 = [v13 objectForKeyedSubscript:@"editorial"];
    if (v26)
    {
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      v29 = [v28 fc_arrayByTransformingWithBlock:&__block_literal_global_55];
      editorialGroupConfigs = v10->_editorialGroupConfigs;
      v10->_editorialGroupConfigs = v29;
    }
  }

  return v10;
}

FCGroupConfig *__47__FCForYouConfig_initWithRecord_interestToken___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCGroupConfig alloc] initWithDictionary:v2];

  return v3;
}

- (NSArray)todayFeedTopStoriesArticleIDs
{
  v2 = [(FCForYouConfig *)self forYouConfigRecord];
  v3 = [v2 todayFeedTopStoriesArticleIDs];

  return v3;
}

- (NSString)trendingArticleListID
{
  v2 = [(FCForYouConfig *)self forYouConfigRecord];
  v3 = [v2 trendingArticleListID];

  return v3;
}

- (NSArray)editorialArticleListIDs
{
  v2 = [(FCForYouConfig *)self forYouConfigRecord];
  v3 = [v2 editorialArticleListIDs];

  return v3;
}

- (NSArray)editorialSectionTagIDs
{
  v2 = [(FCForYouConfig *)self forYouConfigRecord];
  v3 = [v2 editorialSectionTagIDs];

  return v3;
}

- (NSString)spotlightArticleID
{
  v2 = [(FCForYouConfig *)self forYouConfigRecord];
  v3 = [v2 spotlightArticleID];

  return v3;
}

- (NSDate)fetchedDate
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [(FCForYouConfig *)self forYouConfigRecord];
  v4 = [v3 base];
  v5 = [v4 fetchDate];
  v6 = [v2 dateWithPBDate:v5];

  return v6;
}

@end