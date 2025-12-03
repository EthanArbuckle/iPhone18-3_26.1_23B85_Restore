@interface FCAppReviewRequestConfig
- (FCAppReviewRequestConfig)initWithDictionary:(id)dictionary;
@end

@implementation FCAppReviewRequestConfig

- (FCAppReviewRequestConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = FCAppReviewRequestConfig;
  v5 = [(FCAppReviewRequestConfig *)&v7 init];
  if (v5)
  {
    v5->_quiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"quiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfLikedArticles = FCAppConfigurationIntegerValue(dictionaryCopy, @"minNumberOfLikedArticles", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfSavedArticles = FCAppConfigurationIntegerValue(dictionaryCopy, @"minNumberOfSavedArticles", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfSharedArticles = FCAppConfigurationIntegerValue(dictionaryCopy, @"minNumberOfSharedArticles", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfEndOfArticleReads = FCAppConfigurationIntegerValue(dictionaryCopy, @"minNumberOfEndOfArticleReads", 0x7FFFFFFFFFFFFFFFLL);
    v5->_minNumberOfCombinedActions = FCAppConfigurationIntegerValue(dictionaryCopy, @"minNumberOfCombinedActions", 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

@end