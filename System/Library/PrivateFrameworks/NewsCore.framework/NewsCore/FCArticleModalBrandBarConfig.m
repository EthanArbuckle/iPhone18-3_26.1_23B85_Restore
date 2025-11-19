@interface FCArticleModalBrandBarConfig
- (FCArticleModalBrandBarConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCArticleModalBrandBarConfig

- (FCArticleModalBrandBarConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = FCArticleModalBrandBarConfig;
  v5 = [(FCArticleModalBrandBarConfig *)&v21 init];
  if (v5)
  {
    v5->_enabled = FCAppConfigurationBoolValue(v4, @"enabled", 0);
    v5->_maxCount = FCAppConfigurationIntegerValue(v4, @"maxCount", 3);
    v5->_quiescenceInterval = FCAppConfigurationIntegerValue(v4, @"quiescenceInterval", 172800);
    v6 = FCBundle();
    v7 = [v6 localizedStringForKey:@"Apple News" value:&stru_1F2DC7DC0 table:0];
    v8 = FCAppConfigurationStringValue(v4, @"messageTitle", v7);
    messageTitle = v5->_messageTitle;
    v5->_messageTitle = v8;

    v10 = FCBundle();
    v11 = [v10 localizedStringForKey:@"The best stories from the sources you love value:all in one place." table:{&stru_1F2DC7DC0, 0}];
    v12 = FCAppConfigurationStringValue(v4, @"messageBody", v11);
    messageBody = v5->_messageBody;
    v5->_messageBody = v12;

    v14 = FCBundle();
    v15 = [v14 localizedStringForKey:@"MORE" value:&stru_1F2DC7DC0 table:0];
    v16 = FCAppConfigurationStringValue(v4, @"ctaTitle", v15);
    ctaTitle = v5->_ctaTitle;
    v5->_ctaTitle = v16;

    v18 = FCAppConfigurationStringValue(v4, @"ctaUrl", 0);
    ctaUrl = v5->_ctaUrl;
    v5->_ctaUrl = v18;

    v5->_campaignVersion = FCAppConfigurationIntegerValue(v4, @"campaignVersion", 0);
  }

  return v5;
}

@end