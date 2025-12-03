@interface FCOfflineFeedRules
- (FCOfflineFeedRules)initWithDictionary:(id)dictionary defaultMaxGroups:(int64_t)groups defaultMaxArticleDownloads:(int64_t)downloads defaultMaxIssueDownloads:(int64_t)issueDownloads defaultMaxPuzzleDownloads:(int64_t)puzzleDownloads defaultMaxAudioDownloads:(int64_t)audioDownloads defaultMaxRecipeDownloads:(int64_t)recipeDownloads;
- (FCOfflineFeedRules)initWithMaxGroups:(int64_t)groups maxArticleDownloads:(int64_t)downloads maxIssueDownloads:(int64_t)issueDownloads maxPuzzleDownloads:(int64_t)puzzleDownloads maxAudioDownloads:(int64_t)audioDownloads maxRecipeDownloads:(int64_t)recipeDownloads;
@end

@implementation FCOfflineFeedRules

- (FCOfflineFeedRules)initWithDictionary:(id)dictionary defaultMaxGroups:(int64_t)groups defaultMaxArticleDownloads:(int64_t)downloads defaultMaxIssueDownloads:(int64_t)issueDownloads defaultMaxPuzzleDownloads:(int64_t)puzzleDownloads defaultMaxAudioDownloads:(int64_t)audioDownloads defaultMaxRecipeDownloads:(int64_t)recipeDownloads
{
  dictionaryCopy = dictionary;
  v16 = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxGroups", groups);
  v17 = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxArticleDownloads", downloads);
  v18 = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxIssueDownloads", issueDownloads);
  v19 = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxPuzzleDownloads", puzzleDownloads);
  v20 = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxAudioDownloads", audioDownloads);
  v21 = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxRecipeDownloads", recipeDownloads);

  return [(FCOfflineFeedRules *)self initWithMaxGroups:v16 maxArticleDownloads:v17 maxIssueDownloads:v18 maxPuzzleDownloads:v19 maxAudioDownloads:v20 maxRecipeDownloads:v21];
}

- (FCOfflineFeedRules)initWithMaxGroups:(int64_t)groups maxArticleDownloads:(int64_t)downloads maxIssueDownloads:(int64_t)issueDownloads maxPuzzleDownloads:(int64_t)puzzleDownloads maxAudioDownloads:(int64_t)audioDownloads maxRecipeDownloads:(int64_t)recipeDownloads
{
  v15.receiver = self;
  v15.super_class = FCOfflineFeedRules;
  result = [(FCOfflineFeedRules *)&v15 init];
  if (result)
  {
    result->_maxGroups = groups;
    result->_maxArticleDownloads = downloads;
    result->_maxIssueDownloads = issueDownloads;
    result->_maxPuzzleDownloads = puzzleDownloads;
    result->_maxAudioDownloads = audioDownloads;
    result->_maxRecipeDownloads = recipeDownloads;
  }

  return result;
}

@end