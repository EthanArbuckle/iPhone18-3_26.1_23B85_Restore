@interface FCSportsUpsellConfig
- (FCSportsUpsellConfig)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCSportsUpsellConfig

- (FCSportsUpsellConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FCSportsUpsellConfig;
  v5 = [(FCSportsUpsellConfig *)&v13 init];
  if (v5)
  {
    v6 = FCAppConfigurationIntegerValue(dictionaryCopy, @"quiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_quiescenceInterval = v7;
    v8 = FCAppConfigurationIntegerValue(dictionaryCopy, @"engagedUserQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_engagedUserQuiescenceInterval = v9;
    v10 = FCAppConfigurationIntegerValue(dictionaryCopy, @"minNumberOfArticlesRead", 0x7FFFFFFFFFFFFFFFLL);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_minNumberOfArticlesRead = v11;
    v5->_maxNumberOfPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxNumberOfPresentations", 0);
    v5->_landingPageArticleID = FCAppConfigurationStringValue(dictionaryCopy, @"landingPageArticleId", 0);
    v5->_maxNumberOfTopics = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxNumberOfTopics", 1);
  }

  return v5;
}

@end