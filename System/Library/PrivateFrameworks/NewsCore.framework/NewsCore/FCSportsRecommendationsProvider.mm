@interface FCSportsRecommendationsProvider
- (FCSportsRecommendationsProvider)initWithDictionary:(id)dictionary;
@end

@implementation FCSportsRecommendationsProvider

- (FCSportsRecommendationsProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FCSportsRecommendationsProvider;
  v5 = [(FCSportsRecommendationsProvider *)&v10 init];
  if (v5 && (FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"scoredTagIDs", 0), v6 = objc_claimAutoreleasedReturnValue(), scoredTagIDs = v5->_scoredTagIDs, v5->_scoredTagIDs = v6, scoredTagIDs, !v5->_scoredTagIDs))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end