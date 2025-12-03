@interface FCArticleModalBrandBarConfig
- (FCArticleModalBrandBarConfig)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCArticleModalBrandBarConfig

- (FCArticleModalBrandBarConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = FCArticleModalBrandBarConfig;
  v5 = [(FCArticleModalBrandBarConfig *)&v21 init];
  if (v5)
  {
    v5->_enabled = FCAppConfigurationBoolValue(dictionaryCopy, @"enabled", 0);
    v5->_maxCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxCount", 3);
    v5->_quiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"quiescenceInterval", 172800);
    v6 = FCBundle();
    v7 = [v6 localizedStringForKey:@"Apple News" value:&stru_1F2DC7DC0 table:0];
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"messageTitle", v7);
    messageTitle = v5->_messageTitle;
    v5->_messageTitle = v8;

    v10 = FCBundle();
    v11 = [v10 localizedStringForKey:@"The best stories from the sources you love value:all in one place." table:{&stru_1F2DC7DC0, 0}];
    v12 = FCAppConfigurationStringValue(dictionaryCopy, @"messageBody", v11);
    messageBody = v5->_messageBody;
    v5->_messageBody = v12;

    v14 = FCBundle();
    v15 = [v14 localizedStringForKey:@"MORE" value:&stru_1F2DC7DC0 table:0];
    v16 = FCAppConfigurationStringValue(dictionaryCopy, @"ctaTitle", v15);
    ctaTitle = v5->_ctaTitle;
    v5->_ctaTitle = v16;

    v18 = FCAppConfigurationStringValue(dictionaryCopy, @"ctaUrl", 0);
    ctaUrl = v5->_ctaUrl;
    v5->_ctaUrl = v18;

    v5->_campaignVersion = FCAppConfigurationIntegerValue(dictionaryCopy, @"campaignVersion", 0);
  }

  return v5;
}

@end