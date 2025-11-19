@interface FCOfflineFeedRules
- (FCOfflineFeedRules)initWithDictionary:(id)a3 defaultMaxGroups:(int64_t)a4 defaultMaxArticleDownloads:(int64_t)a5 defaultMaxIssueDownloads:(int64_t)a6 defaultMaxPuzzleDownloads:(int64_t)a7 defaultMaxAudioDownloads:(int64_t)a8 defaultMaxRecipeDownloads:(int64_t)a9;
- (FCOfflineFeedRules)initWithMaxGroups:(int64_t)a3 maxArticleDownloads:(int64_t)a4 maxIssueDownloads:(int64_t)a5 maxPuzzleDownloads:(int64_t)a6 maxAudioDownloads:(int64_t)a7 maxRecipeDownloads:(int64_t)a8;
@end

@implementation FCOfflineFeedRules

- (FCOfflineFeedRules)initWithDictionary:(id)a3 defaultMaxGroups:(int64_t)a4 defaultMaxArticleDownloads:(int64_t)a5 defaultMaxIssueDownloads:(int64_t)a6 defaultMaxPuzzleDownloads:(int64_t)a7 defaultMaxAudioDownloads:(int64_t)a8 defaultMaxRecipeDownloads:(int64_t)a9
{
  v15 = a3;
  v16 = FCAppConfigurationIntegerValue(v15, @"maxGroups", a4);
  v17 = FCAppConfigurationIntegerValue(v15, @"maxArticleDownloads", a5);
  v18 = FCAppConfigurationIntegerValue(v15, @"maxIssueDownloads", a6);
  v19 = FCAppConfigurationIntegerValue(v15, @"maxPuzzleDownloads", a7);
  v20 = FCAppConfigurationIntegerValue(v15, @"maxAudioDownloads", a8);
  v21 = FCAppConfigurationIntegerValue(v15, @"maxRecipeDownloads", a9);

  return [(FCOfflineFeedRules *)self initWithMaxGroups:v16 maxArticleDownloads:v17 maxIssueDownloads:v18 maxPuzzleDownloads:v19 maxAudioDownloads:v20 maxRecipeDownloads:v21];
}

- (FCOfflineFeedRules)initWithMaxGroups:(int64_t)a3 maxArticleDownloads:(int64_t)a4 maxIssueDownloads:(int64_t)a5 maxPuzzleDownloads:(int64_t)a6 maxAudioDownloads:(int64_t)a7 maxRecipeDownloads:(int64_t)a8
{
  v15.receiver = self;
  v15.super_class = FCOfflineFeedRules;
  result = [(FCOfflineFeedRules *)&v15 init];
  if (result)
  {
    result->_maxGroups = a3;
    result->_maxArticleDownloads = a4;
    result->_maxIssueDownloads = a5;
    result->_maxPuzzleDownloads = a6;
    result->_maxAudioDownloads = a7;
    result->_maxRecipeDownloads = a8;
  }

  return result;
}

@end