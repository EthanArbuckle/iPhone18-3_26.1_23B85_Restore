@interface FCArticleLinkBehaviorConfig
- (FCArticleLinkBehaviorConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCArticleLinkBehaviorConfig

- (FCArticleLinkBehaviorConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FCArticleLinkBehaviorConfig;
  v5 = [(FCArticleLinkBehaviorConfig *)&v19 init];
  if (v5)
  {
    v5->_openArticlesAsModals = FCAppConfigurationBoolValue(v4, @"openArticlesAsModals", 0);
    v5->_lohAnimationEnabled = FCAppConfigurationBoolValue(v4, @"lohAnimationEnabled", 0);
    v5->_lohAnimationCompletesInArticle = FCAppConfigurationBoolValue(v4, @"lohAnimationCompletesInArticle", 0);
    v6 = FCBundle();
    v7 = [v6 localizedStringForKey:@"Welcome to" value:&stru_1F2DC7DC0 table:0];
    v8 = FCAppConfigurationStringValue(v4, @"animationTitleLine1", v7);
    animationTitleLine1 = v5->_animationTitleLine1;
    v5->_animationTitleLine1 = v8;

    v10 = FCBundle();
    v11 = [v10 localizedStringForKey:@"Apple News" value:&stru_1F2DC7DC0 table:0];
    v12 = FCAppConfigurationStringValue(v4, @"animationTitleLine2", v11);
    animationTitleLine2 = v5->_animationTitleLine2;
    v5->_animationTitleLine2 = v12;

    v14 = FCBundle();
    v15 = [v14 localizedStringForKey:@"All your news value:all in one app." table:{&stru_1F2DC7DC0, 0}];
    v16 = FCAppConfigurationStringValue(v4, @"animationBody", v15);
    animationBody = v5->_animationBody;
    v5->_animationBody = v16;

    v5->_animationMaxCount = FCAppConfigurationIntegerValue(v4, @"animationMaxCount", 3);
    v5->_animationQuiescenceInterval = FCAppConfigurationIntegerValue(v4, @"animationQuiescenceInterval", 172800);
    v5->_animationCampaignVersion = FCAppConfigurationIntegerValue(v4, @"animationCampaignVersion", 0);
  }

  return v5;
}

@end