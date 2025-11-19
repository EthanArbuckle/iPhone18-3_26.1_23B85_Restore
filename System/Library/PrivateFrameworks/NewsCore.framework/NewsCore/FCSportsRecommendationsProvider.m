@interface FCSportsRecommendationsProvider
- (FCSportsRecommendationsProvider)initWithDictionary:(id)a3;
@end

@implementation FCSportsRecommendationsProvider

- (FCSportsRecommendationsProvider)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCSportsRecommendationsProvider;
  v5 = [(FCSportsRecommendationsProvider *)&v10 init];
  if (v5 && (FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"scoredTagIDs", 0), v6 = objc_claimAutoreleasedReturnValue(), scoredTagIDs = v5->_scoredTagIDs, v5->_scoredTagIDs = v6, scoredTagIDs, !v5->_scoredTagIDs))
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