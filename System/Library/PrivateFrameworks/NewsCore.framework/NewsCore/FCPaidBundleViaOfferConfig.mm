@interface FCPaidBundleViaOfferConfig
- (FCPaidBundleViaOfferConfig)initWithConfigDictionary:(id)a3;
@end

@implementation FCPaidBundleViaOfferConfig

- (FCPaidBundleViaOfferConfig)initWithConfigDictionary:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = FCPaidBundleViaOfferConfig;
  v5 = [(FCPaidBundleViaOfferConfig *)&v29 init];
  if (v5)
  {
    v6 = FCAppConfigurationIntegerValue(v4, @"iconBadgeQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_iconBadgeQuiescenceInterval = v7;
    v5->_iconBadgeMaxNumberOfPresentations = FCAppConfigurationIntegerValue(v4, @"iconBadgeMaxNumberOfPresentations", 0);
    v8 = FCAppConfigurationIntegerValue(v4, @"localNotificationQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_localNotificationQuiescenceInterval = v9;
    v5->_localNotificationMaxNumberOfPresentations = FCAppConfigurationIntegerValue(v4, @"localNotificationMaxNumberOfPresentations", 0);
    v10 = FCAppConfigurationStringValue(v4, @"localNotificationTitle", 0);
    localNotificationTitle = v5->_localNotificationTitle;
    v5->_localNotificationTitle = v10;

    v12 = FCAppConfigurationStringValue(v4, @"localNotificationSubtitle", 0);
    localNotificationSubtitle = v5->_localNotificationSubtitle;
    v5->_localNotificationSubtitle = v12;

    v14 = FCAppConfigurationStringValue(v4, @"localNotificationBody", 0);
    localNotificationBody = v5->_localNotificationBody;
    v5->_localNotificationBody = v14;

    v16 = FCAppConfigurationStringValue(v4, @"localNotificationURL", 0);
    localNotificationURL = v5->_localNotificationURL;
    v5->_localNotificationURL = v16;

    v18 = FCAppConfigurationIntegerValue(v4, @"localNotificationDelay", 0x7FFFFFFFFFFFFFFFLL);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_localNotificationDelay = v19;
    v20 = FCAppConfigurationIntegerValue(v4, @"upsellQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_upsellQuiescenceInterval = v21;
    v5->_upsellMaxNumberOfPresentations = FCAppConfigurationIntegerValue(v4, @"upsellMaxNumberOfPresentations", 0);
    v30[0] = @"1Party_HW_News_Offer_1";
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v23 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"vendorAdHocOfferIds", v22);
    vendorAdHocOfferIds = v5->_vendorAdHocOfferIds;
    v5->_vendorAdHocOfferIds = v23;

    v25 = FCAppConfigurationIntegerValue(v4, @"upsellBestOfferRefreshQuiescenceInterval", 86400);
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = 86400;
    }

    v5->_upsellBestOfferRefreshQuiescenceInterval = v26;
    v5->_paywallsEnabled = [FCFeatureEnablementChecker enabledInConfig:v4 forKey:@"paywallsEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
    v5->_subscriptionsDeeplinkEnabled = [FCFeatureEnablementChecker enabledInConfig:v4 forKey:@"subscriptionsDeeplinkEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
    v5->_mastheadBannerEnabled = [FCFeatureEnablementChecker enabledInConfig:v4 forKey:@"mastheadBannerEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
    v5->_iconBadgeMercuryEnabled = [FCFeatureEnablementChecker enabledInConfig:v4 forKey:@"iconBadgeMercuryEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
    v5->_localNotificationEnabled = [FCFeatureEnablementChecker enabledInConfig:v4 forKey:@"localNotificationEnabledLevel" withDefaultLevel:0];
    v5->_upsellEnabled = [FCFeatureEnablementChecker enabledInConfig:v4 forKey:@"upsellEnabledLevel2" withDefaultLevel:0xFFFFFFFFLL];
    v5->_appLaunchUpsellEnabled = [FCFeatureEnablementChecker enabledInConfig:v4 forKey:@"appLaunchUpsellEnabledLevel" withDefaultLevel:0xFFFFFFFFLL];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

@end