@interface FCEmailSignupConfig
- (FCEmailSignupConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCEmailSignupConfig

- (FCEmailSignupConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FCEmailSignupConfig;
  v5 = [(FCEmailSignupConfig *)&v20 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"emailSignupStyle", 0);
    v5->_emailSignupStyle = FCEmailSignupStyleForValue(v6);

    v7 = FCAppConfigurationStringValue(v4, @"landingPageArticleID", &stru_1F2DC7DC0);
    landingPageArticleID = v5->_landingPageArticleID;
    v5->_landingPageArticleID = v7;

    v9 = FCAppConfigurationStringValue(v4, @"alertTitle", &stru_1F2DC7DC0);
    alertTitle = v5->_alertTitle;
    v5->_alertTitle = v9;

    v11 = FCAppConfigurationStringValue(v4, @"alertEmailAvailableMessage", &stru_1F2DC7DC0);
    alertEmailAvailableMessage = v5->_alertEmailAvailableMessage;
    v5->_alertEmailAvailableMessage = v11;

    v13 = FCAppConfigurationStringValue(v4, @"alertEmailUnavailableMessage", &stru_1F2DC7DC0);
    alertEmailUnavailableMessage = v5->_alertEmailUnavailableMessage;
    v5->_alertEmailUnavailableMessage = v13;

    v15 = FCAppConfigurationStringValue(v4, @"alertAcceptActionTitle", &stru_1F2DC7DC0);
    alertAcceptActionTitle = v5->_alertAcceptActionTitle;
    v5->_alertAcceptActionTitle = v15;

    v17 = FCAppConfigurationStringValue(v4, @"alertDeclineActionTitle", &stru_1F2DC7DC0);
    alertDeclineActionTitle = v5->_alertDeclineActionTitle;
    v5->_alertDeclineActionTitle = v17;
  }

  return v5;
}

@end