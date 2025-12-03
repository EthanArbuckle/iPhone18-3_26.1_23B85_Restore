@interface FCSportsRecommendationMappings
- (FCSportsRecommendationMappings)initWithDictionary:(id)dictionary;
@end

@implementation FCSportsRecommendationMappings

- (FCSportsRecommendationMappings)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FCSportsRecommendationMappings;
  v5 = [(FCSportsRecommendationMappings *)&v14 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"defaultRecommendations", 0);
    v7 = [[FCSportsRecommendationsProvider alloc] initWithDictionary:v6];
    defaultRecommendations = v5->_defaultRecommendations;
    v5->_defaultRecommendations = v7;

    v9 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"alternativeRecommendations", 0);
    v10 = [[FCSportsRecommendationsProvider alloc] initWithDictionary:v9];
    alternativeRecommendations = v5->_alternativeRecommendations;
    v5->_alternativeRecommendations = v10;

    if (!v5->_defaultRecommendations && !v5->_alternativeRecommendations)
    {

      v12 = 0;
      goto LABEL_6;
    }
  }

  v12 = v5;
LABEL_6:

  return v12;
}

@end