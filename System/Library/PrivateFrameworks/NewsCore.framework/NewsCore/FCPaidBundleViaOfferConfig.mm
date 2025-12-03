@interface FCPaidBundleViaOfferConfig
- (FCPaidBundleViaOfferConfig)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCPaidBundleViaOfferConfig

- (FCPaidBundleViaOfferConfig)initWithConfigDictionary:(id)dictionary
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = FCPaidBundleViaOfferConfig;
  v5 = [(FCPaidBundleViaOfferConfig *)&v29 init];
  if (v5)
  {
    v6 = FCAppConfigurationIntegerValue(dictionaryCopy, @"iconBadgeQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_iconBadgeQuiescenceInterval = v7;
    v5->_iconBadgeMaxNumberOfPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"iconBadgeMaxNumberOfPresentations", 0);
    v8 = FCAppConfigurationIntegerValue(dictionaryCopy, @"localNotificationQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_localNotificationQuiescenceInterval = v9;
    v5->_localNotificationMaxNumberOfPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"localNotificationMaxNumberOfPresentations", 0);
    v10 = FCAppConfigurationStringValue(dictionaryCopy, @"localNotificationTitle", 0);
    localNotificationTitle = v5->_localNotificationTitle;
    v5->_localNotificationTitle = v10;

    v12 = FCAppConfigurationStringValue(dictionaryCopy, @"localNotificationSubtitle", 0);
    localNotificationSubtitle = v5->_localNotificationSubtitle;
    v5->_localNotificationSubtitle = v12;

    v14 = FCAppConfigurationStringValue(dictionaryCopy, @"localNotificationBody", 0);
    localNotificationBody = v5->_localNotificationBody;
    v5->_localNotificationBody = v14;

    v16 = FCAppConfigurationStringValue(dictionaryCopy, @"localNotificationURL", 0);
    localNotificationURL = v5->_localNotificationURL;
    v5->_localNotificationURL = v16;

    v18 = FCAppConfigurationIntegerValue(dictionaryCopy, @"localNotificationDelay", 0x7FFFFFFFFFFFFFFFLL);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_localNotificationDelay = v19;
    v20 = FCAppConfigurationIntegerValue(dictionaryCopy, @"upsellQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_upsellQuiescenceInterval = v21;
    v5->_upsellMaxNumberOfPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"upsellMaxNumberOfPresentations", 0);
    v30[0] = @"1Party_HW_News_Offer_1";
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v23 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"vendorAdHocOfferIds", v22);
    vendorAdHocOfferIds = v5->_vendorAdHocOfferIds;
    v5->_vendorAdHocOfferIds = v23;

    v25 = FCAppConfigurationIntegerValue(dictionaryCopy, @"upsellBestOfferRefreshQuiescenceInterval", 86400);
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = 86400;
    }

    v5->_upsellBestOfferRefreshQuiescenceInterval = v26;
    v5->_paywallsEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"paywallsEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
    v5->_subscriptionsDeeplinkEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"subscriptionsDeeplinkEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
    v5->_mastheadBannerEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"mastheadBannerEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
    v5->_iconBadgeMercuryEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"iconBadgeMercuryEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
    v5->_localNotificationEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"localNotificationEnabledLevel" withDefaultLevel:0];
    v5->_upsellEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"upsellEnabledLevel2" withDefaultLevel:0xFFFFFFFFLL];
    v5->_appLaunchUpsellEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"appLaunchUpsellEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

@end