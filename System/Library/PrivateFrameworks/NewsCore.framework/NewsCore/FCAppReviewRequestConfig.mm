@interface FCAppReviewRequestConfig
- (FCAppReviewRequestConfig)initWithDictionary:(id)a3;
@end

@implementation FCAppReviewRequestConfig

- (FCAppReviewRequestConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FCAppReviewRequestConfig;
  v5 = [(FCAppReviewRequestConfig *)&v7 init];
  if (v5)
  {
    v5->_quiescenceInterval = FCAppConfigurationIntegerValue(v4, @"quiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfLikedArticles = FCAppConfigurationIntegerValue(v4, @"minNumberOfLikedArticles", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfSavedArticles = FCAppConfigurationIntegerValue(v4, @"minNumberOfSavedArticles", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfSharedArticles = FCAppConfigurationIntegerValue(v4, @"minNumberOfSharedArticles", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfEndOfArticleReads = FCAppConfigurationIntegerValue(v4, @"minNumberOfEndOfArticleReads", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfCombinedActions = FCAppConfigurationIntegerValue(v4, @"minNumberOfCombinedActions", 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

@end