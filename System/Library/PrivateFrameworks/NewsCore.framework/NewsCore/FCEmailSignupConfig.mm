@interface FCEmailSignupConfig
- (FCEmailSignupConfig)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCEmailSignupConfig

- (FCEmailSignupConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = FCEmailSignupConfig;
  v5 = [(FCEmailSignupConfig *)&v20 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"emailSignupStyle", 0);
    v5->_emailSignupStyle = FCEmailSignupStyleForValue(v6);

    v7 = FCAppConfigurationStringValue(dictionaryCopy, @"landingPageArticleID", &stru_1F2DC7DC0);
    landingPageArticleID = v5->_landingPageArticleID;
    v5->_landingPageArticleID = v7;

    v9 = FCAppConfigurationStringValue(dictionaryCopy, @"alertTitle", &stru_1F2DC7DC0);
    alertTitle = v5->_alertTitle;
    v5->_alertTitle = v9;

    v11 = FCAppConfigurationStringValue(dictionaryCopy, @"alertEmailAvailableMessage", &stru_1F2DC7DC0);
    alertEmailAvailableMessage = v5->_alertEmailAvailableMessage;
    v5->_alertEmailAvailableMessage = v11;

    v13 = FCAppConfigurationStringValue(dictionaryCopy, @"alertEmailUnavailableMessage", &stru_1F2DC7DC0);
    alertEmailUnavailableMessage = v5->_alertEmailUnavailableMessage;
    v5->_alertEmailUnavailableMessage = v13;

    v15 = FCAppConfigurationStringValue(dictionaryCopy, @"alertAcceptActionTitle", &stru_1F2DC7DC0);
    alertAcceptActionTitle = v5->_alertAcceptActionTitle;
    v5->_alertAcceptActionTitle = v15;

    v17 = FCAppConfigurationStringValue(dictionaryCopy, @"alertDeclineActionTitle", &stru_1F2DC7DC0);
    alertDeclineActionTitle = v5->_alertDeclineActionTitle;
    v5->_alertDeclineActionTitle = v17;
  }

  return v5;
}

@end