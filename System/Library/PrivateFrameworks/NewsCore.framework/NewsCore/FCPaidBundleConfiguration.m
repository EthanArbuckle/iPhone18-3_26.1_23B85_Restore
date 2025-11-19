@interface FCPaidBundleConfiguration
+ (id)defaultConfigurationForStorefrontID:(id)a3;
+ (id)defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID;
+ (id)defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID;
+ (id)defaultFamilySharingLandingPageByLocalizedStorefrontID;
+ (id)defaultLandingPageByLocalizedStorefrontID;
+ (id)defaultPaidFeedIDByLocalizedStorefrontID;
+ (id)defaultServicesBundleLandingPageByLocalizedStorefrontID;
+ (id)defaultTagListIDByLocalizedStorefrontID;
+ (id)defaultVanityURLMappingResourceIDByLocalizedStorefrontID;
+ (id)renewalLandingPageByLocalizedStorefrontID;
- (BOOL)appLaunchUpsellLastSeenDateSyncEnabled;
- (BOOL)appLaunchUpsellLastShownCampaignIDSyncEnabled;
- (BOOL)areMagazinesEnabled;
- (BOOL)arePaywallConfigsEqualToOtherPaidBundleConfig:(id)a3;
- (BOOL)audioRefreshForceWakeEnabled;
- (BOOL)forYouIncludePaidSectionFeedsForFreeUsers;
- (BOOL)forYouIncludePaidSectionFeedsForPaidUsers;
- (BOOL)isCategoriesDownloadButtonEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFamilySharingSetupEnabled;
- (BOOL)isFreeBadgeEnabledForNonSubscribers;
- (BOOL)isFreeBadgeEnabledForSubscribers;
- (BOOL)isNarrativeAudioEnabled;
- (BOOL)isPaidBadgeEnabledForNonSubscribers;
- (BOOL)isPaidBadgeEnabledForSubscribers;
- (BOOL)requiresHardPaywallForIssuesToC;
- (BOOL)widgetUpsellFeaturesEnabled;
- (FCPaidBundleConfiguration)init;
- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)a3;
- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)a3 storefrontID:(id)a4;
- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)a3 storefrontID:(id)a4 localizedStorefrontID:(id)a5 defaultSupportedStoreFronts:(id)a6;
- (NSArray)audioChannelPaywallOverrideAllowedTagIDs;
- (NSArray)audioFeedPaywallPositions;
- (NSArray)groupWhitelistedTagIds;
- (NSArray)offeredBundlePurchaseIDs;
- (NSArray)restorableBundlePurchaseIDs;
- (NSDate)appLaunchUpsellCampaignEndDate;
- (NSDate)appLaunchUpsellCampaignStartDate;
- (NSDictionary)audioPaywallConfigurationsByType;
- (NSDictionary)audioServicesBundlePaywallConfigurationsByType;
- (NSDictionary)audioUpsellConfigurationsByID;
- (NSDictionary)bundleViaOfferSubscriptionButtonConfigurationsByType;
- (NSDictionary)carrierServicesBundleSubscriptionButtonConfigurationsByType;
- (NSDictionary)flexiblePaywallConfig;
- (NSDictionary)magazineGenresByGenre;
- (NSDictionary)offeredBundlePurchaseIDsMap;
- (NSDictionary)paywallConfigurationsByType;
- (NSDictionary)servicesBundlePaywallConfigurationsByType;
- (NSDictionary)servicesBundleSubscriptionButtonConfigurationsByType;
- (NSDictionary)subscriptionButtonConfigurationsByType;
- (NSString)appLaunchUpsellArticleID;
- (NSString)appLaunchUpsellCampaignID;
- (NSString)appLaunchUpsellInstanceID;
- (NSString)audioArticlesChannelId;
- (NSString)audioDailyBriefingFeatureName;
- (NSString)audioUpsellArticleID;
- (NSString)audioUpsellInstanceID;
- (NSString)defaultLandingPageArticleID;
- (NSString)defaultServicesBundleLandingPageArticleID;
- (NSString)endOfPurchaseFamilySharingSetupArticleID;
- (NSString)endOfPurchaseNoFamilySharingSetupArticleID;
- (NSString)endOfPurchaseServicesBundleFamilySharingSetupArticleID;
- (NSString)endOfPurchaseServicesBundleNoFamilySharingSetupArticleID;
- (NSString)expirationAlertDescription;
- (NSString)familySharingLandingPageArticleID;
- (NSString)featuredArticlesTagList;
- (NSString)freeBadgeTitle;
- (NSString)globalFeedIDForFreeUsers;
- (NSString)globalFeedIDForPaidUsers;
- (NSString)osloAbandonmentUpsellArticleID;
- (NSString)osloAbandonmentUpsellInstanceID;
- (NSString)paidBadgeTitle;
- (NSString)recommendableIssuesTagList;
- (NSString)renewalLandingPageArticleID;
- (NSString)servicesBundleMetricsTopicName;
- (NSString)todayMastheadPaywallConfiguration;
- (NSString)vanityURLMappingResourceID;
- (double)maxPriceDeltaThreshold;
- (id)defaultAudioPaywallConfigs;
- (id)defaultMagazineGenres;
- (id)defaultPaywallConfigs;
- (id)defaultServicesBundleSubscriptionButtonConfigs;
- (id)defaultSubscriptionButtonConfigs;
- (id)paywallConfigurationsByTypeForKey:(id)a3;
- (id)postPurchaseOnboardingConfigurationsByTypeForKey:(id)a3;
- (id)subscriptionButtonConfigurationsByTypeForKey:(id)a3;
- (int64_t)appLaunchUpsellBehaviorFlags;
- (int64_t)appLaunchUpsellNewSessionBackgroundTimeInterval;
- (int64_t)appLaunchUpsellPresentationDelay;
- (int64_t)appLaunchUpsellQuiescenceInterval;
- (int64_t)appLaunchUpsellRequiredAppLaunchCount;
- (int64_t)audioCloseIdlePlayerAfterTime;
- (int64_t)audioFinishedAtTimeFromEnd;
- (int64_t)audioOfflineArticlesMaxCountCriticalStorage;
- (int64_t)audioOfflineArticlesMaxCountLowStorage;
- (int64_t)audioOfflineArticlesMaxCountNormalStorage;
- (int64_t)audioRecentlyPlayedMaxCount;
- (int64_t)audioRefreshForceWakeRandomizationWindow;
- (int64_t)audioRefreshTimeGMT;
- (int64_t)audioRewindToParagraphStartAfterTime;
- (int64_t)audioSuggestionsHighlyPersonalizedCount;
- (int64_t)audioSuggestionsMaxAge;
- (int64_t)audioSuggestionsMaxCount;
- (int64_t)audioSuggestionsMaxIgnoreCount;
- (int64_t)audioSuggestionsRecycleAfterTime;
- (int64_t)audioUpsellMaxDisplayCount;
- (int64_t)bundleSubscriptionsGlobalMeteredCount;
- (int64_t)criticalStorageAutomaticIssueDownloadTTL;
- (int64_t)criticalStorageManualIssueDownloadTTL;
- (int64_t)entitlementsCacheExpiredGracePeriodInSeconds;
- (int64_t)entitlementsGracePeriodInSeconds;
- (int64_t)featuredArticlesFetchLimit;
- (int64_t)feedAutoRefreshMinimumInterval;
- (int64_t)forYouMaxDailyPaidArticlesForFreeUsers;
- (int64_t)forYouMaxMagazineGroupsForFreeUsers;
- (int64_t)forYouMaxMagazineGroupsForPaidUsers;
- (int64_t)forYouMaxMagazineGroupsForTrialUsers;
- (int64_t)lowStorageAutomaticIssueDownloadTTL;
- (int64_t)lowStorageManualIssueDownloadTTL;
- (int64_t)maxAllowedSubscriptionDetectionTime;
- (int64_t)maximumArticlesWithSoftPaywallPerSession;
- (int64_t)minFollowedMagazinesToHideSuggestionsCompact;
- (int64_t)minFollowedMagazinesToHideSuggestionsRegular;
- (int64_t)minimumArticlesBeforeArticleSoftPaywall;
- (int64_t)minimumArticlesInANFIssueBeforeRead;
- (int64_t)minimumPagesInPDFIssueBeforeRead;
- (int64_t)minimumReadIssuesInMyMagazines;
- (int64_t)newIssuesCheckLocalTime;
- (int64_t)newIssuesNotificationDeliveryLocalTime;
- (int64_t)normalStorageAutomaticIssueDownloadTTL;
- (int64_t)normalStorageManualIssueDownloadTTL;
- (int64_t)osloAbandonmentUpsellMaxPresentationCount;
- (int64_t)osloAbandonmentUpsellQuiescenceInterval;
- (int64_t)recentIssuesMaxAge;
- (int64_t)vanityURLMappingRefreshRate;
- (unint64_t)appLaunchUpsellBundleTrialVisibility;
- (unint64_t)appLaunchUpsellPaidVisibility;
- (unint64_t)articleHardPaywallType;
- (unint64_t)audioFeedPaywallSubtype;
- (unint64_t)hash;
- (unint64_t)magazineFeedPaywallSubtype;
- (unint64_t)paywallConfigsOfferType;
- (unint64_t)subscriptionLinkTargetType;
@end

@implementation FCPaidBundleConfiguration

- (unint64_t)paywallConfigsOfferType
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 integerForKey:@"newssubscription.paywall_configs.config_overrides.config_type"];

  if (!v4)
  {
    v5 = [(FCPaidBundleConfiguration *)self configDict];
    v4 = FCAppConfigurationIntegerValue(v5, @"paywallConfigsOfferType", 0);
  }

  return v4;
}

- (NSString)appLaunchUpsellArticleID
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"appLaunchUpsellArticleID", 0);

  return v3;
}

- (BOOL)isFreeBadgeEnabledForNonSubscribers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"freeBadgeEnabled", 0);

  return v3;
}

- (BOOL)isPaidBadgeEnabledForNonSubscribers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"paidBadgeEnabled", 1);

  return v3;
}

- (BOOL)areMagazinesEnabled
{
  if (qword_1EDB276F8 != -1)
  {
    dispatch_once(&qword_1EDB276F8, &__block_literal_global_99);
  }

  if (_MergedGlobals_187)
  {
    return 1;
  }

  v4 = +[FCAppleAccount sharedAccount];
  v5 = [v4 isContentStoreFrontSupported];

  if (!v5)
  {
    return 0;
  }

  v6 = [(FCPaidBundleConfiguration *)self defaultSupportedStoreFronts];
  v7 = [(FCPaidBundleConfiguration *)self storefrontID];
  if ([v6 containsObject:v7])
  {
    v8 = 7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(FCPaidBundleConfiguration *)self configDict];
  v10 = FCAppConfigurationIntegerValueWithDefaultValueIfMissing(v9, @"enabledLevel", v8, 0);

  return v10 & 1;
}

void __48__FCPaidBundleConfiguration_areMagazinesEnabled__block_invoke()
{
  if (NFInternalBuild())
  {
    v0 = MEMORY[0x1E696AEC0];
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v2 stringForKey:@"news.features.magazines"];
    _MergedGlobals_187 = [v0 fc_string:@"enabled" isEqualToString:v1];
  }

  else
  {
    _MergedGlobals_187 = 0;
  }
}

- (BOOL)isNarrativeAudioEnabled
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 stringForKey:@"news.features.audio"];

  if ([MEMORY[0x1E696AEC0] fc_string:v4 isEqualToString:@"enabled"])
  {
    v5 = 1;
  }

  else if (([MEMORY[0x1E696AEC0] fc_string:v4 isEqualToString:@"disabled"] & 1) != 0 || (+[FCAppleAccount sharedAccount](FCAppleAccount, "sharedAccount"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isContentStoreFrontSupported"), v6, !v7))
  {
    v5 = 0;
  }

  else
  {
    if (NFInternalBuild())
    {
      v8 = 1;
    }

    else if (NFSeedBuild())
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"143441", @"143444", @"143460", @"143455", 0}];
    v10 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
    v11 = [v9 containsObject:v10];

    if (v11)
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(FCPaidBundleConfiguration *)self configDict];
    v14 = FCAppConfigurationIntegerValue(v13, @"audioEnabledLevel", v12);

    v5 = (v14 & v8) != 0;
  }

  return v5;
}

- (NSArray)offeredBundlePurchaseIDs
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 arrayForKey:@"newssubscription.bundle_subscriptions.offered_purchase_ids"];

  if (v4)
  {
    v5 = [v4 firstObject];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 firstObject];
      if ([v7 length])
      {
        v8 = NFInternalBuild();

        if (v8)
        {
          v9 = v4;
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v10 = [(FCPaidBundleConfiguration *)self configDict];
  v9 = FCAppConfigurationArrayValueWithDefaultValue(v10, @"offeredPurchaseIds", &unk_1F2E6FA68);

LABEL_8:

  return v9;
}

- (int64_t)bundleSubscriptionsGlobalMeteredCount
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"bundleSubscriptionsGlobalMeteredCount2", 15);

  return v3;
}

- (int64_t)minimumArticlesBeforeArticleSoftPaywall
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumArticlesBeforeArticleSoftPaywall", 0);

  return v3;
}

- (int64_t)maximumArticlesWithSoftPaywallPerSession
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"maximumArticlesWithSoftPaywallPerSession", 10000);

  return v3;
}

- (NSString)vanityURLMappingResourceID
{
  v3 = +[FCPaidBundleConfiguration defaultVanityURLMappingResourceIDByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"vanityUrlMappingResourceId", v5);

  return v7;
}

+ (id)defaultVanityURLMappingResourceIDByLocalizedStorefrontID
{
  if (qword_1EDB27778 != -1)
  {
    dispatch_once(&qword_1EDB27778, &__block_literal_global_566);
  }

  v3 = qword_1EDB27770;

  return v3;
}

void __85__FCPaidBundleConfiguration_defaultVanityURLMappingResourceIDByLocalizedStorefrontID__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"VUM", @"143441"];
  v9[0] = v0;
  v8[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"VUM", @"143455"];
  v9[1] = v1;
  v8[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"VUM", @"143455"];
  v9[2] = v2;
  v8[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"VUM", @"143444"];
  v9[3] = v3;
  v8[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"VUM", @"143460"];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_1EDB27770;
  qword_1EDB27770 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (int64_t)vanityURLMappingRefreshRate
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"vanityUrlMappingRefreshRate", 3600);

  return v3;
}

- (FCPaidBundleConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPaidBundleConfiguration init]";
    v10 = 2080;
    v11 = "FCPaidBundleConfiguration.m";
    v12 = 1024;
    v13 = 67;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPaidBundleConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v5 = +[FCAppleAccount sharedAccount];
  v6 = [v5 supportedContentStoreFrontID];
  v7 = +[FCAppleAccount sharedAccount];
  v8 = [v7 supportedLocalizedContentStoreFrontID];
  v9 = FCSupportedStoreFrontIDs();
  v10 = [v9 allObjects];
  v11 = [(FCPaidBundleConfiguration *)self initWithConfigDictionary:v4 storefrontID:v6 localizedStorefrontID:v8 defaultSupportedStoreFronts:v10];

  return v11;
}

- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)a3 storefrontID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = FCSupportedStoreFrontIDs();
  v9 = [v8 allObjects];
  v10 = [(FCPaidBundleConfiguration *)self initWithConfigDictionary:v7 storefrontID:v6 localizedStorefrontID:v6 defaultSupportedStoreFronts:v9];

  return v10;
}

- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)a3 storefrontID:(id)a4 localizedStorefrontID:(id)a5 defaultSupportedStoreFronts:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = FCPaidBundleConfiguration;
  v14 = [(FCPaidBundleConfiguration *)&v34 init];
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = [v10 copy];
  configDict = v14->_configDict;
  v14->_configDict = v15;

  v17 = [v11 copy];
  storefrontID = v14->_storefrontID;
  v14->_storefrontID = v17;

  v19 = [v12 copy];
  localizedStorefrontID = v14->_localizedStorefrontID;
  v14->_localizedStorefrontID = v19;

  objc_storeStrong(&v14->_defaultSupportedStoreFronts, a6);
  v21 = [MEMORY[0x1E695DF90] dictionary];
  keyedPaywallConfigurationsByType = v14->_keyedPaywallConfigurationsByType;
  v14->_keyedPaywallConfigurationsByType = v21;

  v23 = [MEMORY[0x1E695DF90] dictionary];
  keyedSubscriptionButtonConfigurationsByType = v14->_keyedSubscriptionButtonConfigurationsByType;
  v14->_keyedSubscriptionButtonConfigurationsByType = v23;

  v25 = [MEMORY[0x1E695DF90] dictionary];
  keyedPostPurchaseOnboardingConfigurationsByType = v14->_keyedPostPurchaseOnboardingConfigurationsByType;
  v14->_keyedPostPurchaseOnboardingConfigurationsByType = v25;

  v27 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
  lock = v14->_lock;
  v14->_lock = v27;

  v29 = FCAppConfigurationStringValue(v10, @"articleSoftPaywallPosition", @"top");
  if (![v29 isEqualToString:@"top"])
  {
    if ([v29 isEqualToString:@"both"])
    {
      v30 = 2;
      goto LABEL_10;
    }

    if ([v29 isEqualToString:@"bottom"])
    {
      v30 = 4;
      goto LABEL_10;
    }

    if ([v29 isEqualToString:@"none"])
    {
      v30 = 1;
      goto LABEL_10;
    }
  }

  v30 = 3;
LABEL_10:
  v14->_articleSoftPaywallPosition = v30;
  v31 = FCAppConfigurationStringValue(v10, @"aLaCarteArticleSoftPaywallPosition", @"bottom");
  if ([v31 isEqualToString:@"top"])
  {
    v32 = 2;
  }

  else if ([v31 isEqualToString:@"bottom"] || !objc_msgSend(v31, "isEqualToString:", @"none"))
  {
    v32 = 3;
  }

  else
  {
    v32 = 1;
  }

  v14->_aLaCarteArticleSoftPaywallPosition = v32;

LABEL_17:
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    v8 = [(FCPaidBundleConfiguration *)self configDict];
    v9 = [v6 configDict];
    if ([v7 nf_object:v8 isEqualToObject:v9])
    {
      v10 = MEMORY[0x1E69E58C0];
      v11 = [(FCPaidBundleConfiguration *)self storefrontID];
      v12 = [v6 storefrontID];
      if ([v10 nf_object:v11 isEqualToObject:v12])
      {
        v13 = MEMORY[0x1E69E58C0];
        v14 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
        v15 = [v6 localizedStorefrontID];
        v16 = [v13 nf_object:v14 isEqualToObject:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(FCPaidBundleConfiguration *)self configDict];
  v4 = [v3 hash];
  v5 = [(FCPaidBundleConfiguration *)self storefrontID];
  v6 = [v5 hash] ^ v4;
  v7 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)arePaywallConfigsEqualToOtherPaidBundleConfig:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(FCPaidBundleConfiguration *)self paywallConfigsOfferType];
    if (v5 == [v4 paywallConfigsOfferType])
    {
      v6 = [(FCPaidBundleConfiguration *)self configDict];
      v7 = FCAppConfigurationArrayValueWithDefaultValue(v6, @"paywallConfigs", 0);

      v8 = [v4 configDict];
      v9 = FCAppConfigurationArrayValueWithDefaultValue(v8, @"paywallConfigs", 0);

      if (([MEMORY[0x1E69E58C0] nf_object:v7 isEqualToObject:v9] & 1) == 0)
      {
        v33 = FCPaywallLog;
        v27 = 0;
        if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "PaywallConfigs are not equal: 'paywallConfigs' have changed", buf, 2u);
          v27 = 0;
        }

        goto LABEL_31;
      }

      v10 = [(FCPaidBundleConfiguration *)self configDict];
      v11 = FCAppConfigurationArrayValueWithDefaultValue(v10, @"audioPaywallConfigs", 0);

      v12 = [v4 configDict];
      v13 = FCAppConfigurationArrayValueWithDefaultValue(v12, @"audioPaywallConfigs", 0);

      if (([MEMORY[0x1E69E58C0] nf_object:v11 isEqualToObject:v13] & 1) == 0)
      {
        v34 = FCPaywallLog;
        v27 = 0;
        if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v34, OS_LOG_TYPE_DEFAULT, "PaywallConfigs are not equal: 'audioPaywallConfigs' have changed", buf, 2u);
          v27 = 0;
        }

        goto LABEL_30;
      }

      v41 = v11;
      v14 = [(FCPaidBundleConfiguration *)self configDict];
      v15 = FCAppConfigurationArrayValueWithDefaultValue(v14, @"sbPaywallConfigs", 0);

      v16 = [v4 configDict];
      v17 = FCAppConfigurationArrayValueWithDefaultValue(v16, @"sbPaywallConfigs", 0);

      if (([MEMORY[0x1E69E58C0] nf_object:v15 isEqualToObject:v17] & 1) == 0)
      {
        v35 = FCPaywallLog;
        v27 = 0;
        if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_DEFAULT, "PaywallConfigs are not equal: 'sbPaywallConfigs' have changed", buf, 2u);
          v27 = 0;
        }

        goto LABEL_29;
      }

      v39 = v15;
      v18 = [(FCPaidBundleConfiguration *)self configDict];
      v19 = FCAppConfigurationArrayValueWithDefaultValue(v18, @"audioSbPaywallConfigs", 0);

      v20 = [v4 configDict];
      v21 = FCAppConfigurationArrayValueWithDefaultValue(v20, @"audioSbPaywallConfigs", 0);

      v40 = v19;
      if (([MEMORY[0x1E69E58C0] nf_object:v19 isEqualToObject:v21] & 1) == 0)
      {
        v36 = FCPaywallLog;
        v27 = 0;
        v15 = v39;
        if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_DEFAULT, "PaywallConfigs are not equal: 'audioSbPaywallConfigs' have changed", buf, 2u);
          v27 = 0;
        }

        goto LABEL_28;
      }

      v22 = [(FCPaidBundleConfiguration *)self configDict];
      v23 = FCAppConfigurationArrayValueWithDefaultValue(v22, @"flexiblePaywallConfig", 0);

      v24 = [v4 configDict];
      v25 = FCAppConfigurationArrayValueWithDefaultValue(v24, @"flexiblePaywallConfig", 0);

      v26 = v23;
      v38 = v25;
      v27 = [MEMORY[0x1E69E58C0] nf_object:v23 isEqualToObject:v25];
      v28 = FCPaywallLog;
      v29 = os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        v15 = v39;
        if (v29)
        {
          *buf = 0;
          v30 = "PaywallConfigs are equal";
LABEL_26:
          _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
        }
      }

      else
      {
        v15 = v39;
        if (v29)
        {
          *buf = 0;
          v30 = "PaywallConfigs are not equal: 'flexiblePaywallConfig' have changed";
          goto LABEL_26;
        }
      }

LABEL_28:
LABEL_29:

      v11 = v41;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    v31 = FCPaywallLog;
    if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v32 = "PaywallConfigs are not equal: the offer type has changed";
      goto LABEL_14;
    }
  }

  else
  {
    v31 = FCPaywallLog;
    if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v32 = "PaywallConfigs are not equal: the other object is nil";
LABEL_14:
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
    }
  }

  v27 = 0;
LABEL_32:

  return v27;
}

- (id)paywallConfigurationsByTypeForKey:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCPaidBundleConfiguration *)self lock];
  [v5 lock];

  v6 = [(NSMutableDictionary *)self->_keyedPaywallConfigurationsByType objectForKeyedSubscript:v4];
  v7 = [(FCPaidBundleConfiguration *)self lock];
  [v7 unlock];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(FCPaidBundleConfiguration *)self configDict];
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v9, v4, 0);

    if (v10)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [[FCPaywallConfiguration alloc] initWithConfigDictionary:*(*(&v24 + 1) + 8 * i)];
            v17 = [(FCPaywallConfiguration *)v16 paywallType];
            if (v16)
            {
              v18 = v17 == 0;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
              [v8 fc_safelySetObject:v16 forKey:v19];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v13);
      }

      v20 = [(FCPaidBundleConfiguration *)self lock];
      [v20 lock];

      [(NSMutableDictionary *)self->_keyedPaywallConfigurationsByType fc_safelySetObject:v8 forKey:v4];
      v21 = [(FCPaidBundleConfiguration *)self lock];
      [v21 unlock];

      v6 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)subscriptionButtonConfigurationsByTypeForKey:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCPaidBundleConfiguration *)self lock];
  [v5 lock];

  v6 = [(NSMutableDictionary *)self->_keyedSubscriptionButtonConfigurationsByType objectForKeyedSubscript:v4];
  v7 = [(FCPaidBundleConfiguration *)self lock];
  [v7 unlock];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(FCPaidBundleConfiguration *)self configDict];
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v9, v4, 0);

    if (v10)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [[FCSubscriptionButtonConfiguration alloc] initWithConfigDictionary:*(*(&v24 + 1) + 8 * i)];
            v17 = [(FCSubscriptionButtonConfiguration *)v16 subscriptionButtonType];
            if (v16)
            {
              v18 = v17 == 0;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
              [v8 fc_safelySetObject:v16 forKey:v19];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v13);
      }

      v20 = [(FCPaidBundleConfiguration *)self lock];
      [v20 lock];

      [(NSMutableDictionary *)self->_keyedSubscriptionButtonConfigurationsByType fc_safelySetObject:v8 forKey:v4];
      v21 = [(FCPaidBundleConfiguration *)self lock];
      [v21 unlock];

      v6 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)postPurchaseOnboardingConfigurationsByTypeForKey:(id)a3
{
  v4 = a3;
  v5 = [(FCPaidBundleConfiguration *)self lock];
  [v5 lock];

  v6 = [(NSMutableDictionary *)self->_keyedPostPurchaseOnboardingConfigurationsByType objectForKeyedSubscript:v4];
  v7 = [(FCPaidBundleConfiguration *)self lock];
  [v7 unlock];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(FCPaidBundleConfiguration *)self configDict];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(v9, v4, 0);

    if (v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __78__FCPaidBundleConfiguration_postPurchaseOnboardingConfigurationsByTypeForKey___block_invoke;
      v17[3] = &unk_1E7C3F720;
      v12 = v11;
      v18 = v12;
      [v10 enumerateKeysAndObjectsUsingBlock:v17];
      v13 = [(FCPaidBundleConfiguration *)self lock];
      [v13 lock];

      [(NSMutableDictionary *)self->_keyedPostPurchaseOnboardingConfigurationsByType fc_safelySetObject:v12 forKey:v4];
      v14 = [(FCPaidBundleConfiguration *)self lock];
      [v14 unlock];

      v15 = v18;
      v8 = v12;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __78__FCPaidBundleConfiguration_postPurchaseOnboardingConfigurationsByTypeForKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = FCPostPurchaseOnboardingConfigurationTypeWithValue(v5);
    v8 = [MEMORY[0x1E695DF70] array];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__FCPaidBundleConfiguration_postPurchaseOnboardingConfigurationsByTypeForKey___block_invoke_2;
    v14[3] = &unk_1E7C41DD8;
    v15 = v8;
    v9 = v8;
    [v6 enumerateObjectsUsingBlock:v14];
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [v10 fc_safelySetObject:v9 forKey:v11];
  }

  else
  {
    v12 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "Incorrect json structure received for onboarding steps. Expected a JSON array of onboarding steps.", v13, 2u);
    }
  }
}

uint64_t __78__FCPaidBundleConfiguration_postPurchaseOnboardingConfigurationsByTypeForKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [[FCPostPurchaseOnboardingConfiguration alloc] initWithConfigDictionary:v3];

  v4 = [(FCPostPurchaseOnboardingConfiguration *)v8 postPurchaseOnboardingStep];
  v5 = v8;
  if (v8)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v4 = [*(a1 + 32) addObject:v8];
    v5 = v8;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (NSDictionary)flexiblePaywallConfig
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"flexiblePaywallConfig", 0);

  return v3;
}

- (unint64_t)subscriptionLinkTargetType
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 integerForKey:@"newssubscription.subscriptionlink.target_type"];

  if (!v4)
  {
    v5 = [(FCPaidBundleConfiguration *)self configDict];
    v4 = FCAppConfigurationIntegerValue(v5, @"subscriptionLinkTargetType", 0);
  }

  return v4;
}

- (double)maxPriceDeltaThreshold
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationDoubleValue(v2, @"maxDeltaThreshold", 0.0);

  return v3;
}

- (NSDictionary)paywallConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByTypeForKey:@"paywallConfigs"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCPaidBundleConfiguration *)self defaultPaywallConfigs];
  }

  v6 = v5;

  return v6;
}

- (NSDictionary)servicesBundlePaywallConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByTypeForKey:@"sbPaywallConfigs"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCPaidBundleConfiguration *)self defaultPaywallConfigs];
  }

  v6 = v5;

  return v6;
}

- (NSDictionary)audioPaywallConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByTypeForKey:@"audioPaywallConfigs"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCPaidBundleConfiguration *)self defaultAudioPaywallConfigs];
  }

  v6 = v5;

  return v6;
}

- (NSDictionary)audioServicesBundlePaywallConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByTypeForKey:@"audioSbPaywallConfigs"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCPaidBundleConfiguration *)self defaultAudioPaywallConfigs];
  }

  v6 = v5;

  return v6;
}

- (NSDictionary)subscriptionButtonConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self subscriptionButtonConfigurationsByTypeForKey:@"subscriptionButtonConfigs"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCPaidBundleConfiguration *)self defaultSubscriptionButtonConfigs];
  }

  v6 = v5;

  return v6;
}

- (NSDictionary)servicesBundleSubscriptionButtonConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self subscriptionButtonConfigurationsByTypeForKey:@"sbSubscriptionButtonConfigs"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCPaidBundleConfiguration *)self defaultServicesBundleSubscriptionButtonConfigs];
  }

  v6 = v5;

  return v6;
}

- (NSDictionary)carrierServicesBundleSubscriptionButtonConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self subscriptionButtonConfigurationsByTypeForKey:@"carrierServicesBundleSubscriptionButtonConfigs"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCPaidBundleConfiguration *)self defaultServicesBundleSubscriptionButtonConfigs];
  }

  v6 = v5;

  return v6;
}

- (NSDictionary)bundleViaOfferSubscriptionButtonConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self subscriptionButtonConfigurationsByTypeForKey:@"bundleViaOfferSubscriptionButtonConfigs"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCPaidBundleConfiguration *)self defaultServicesBundleSubscriptionButtonConfigs];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)articleHardPaywallType
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"articleHardPaywallType", 0);

  return v3;
}

- (unint64_t)audioFeedPaywallSubtype
{
  v3 = [(FCPaidBundleConfiguration *)self configDict];
  v4 = FCAppConfigurationIntegerValue(v3, @"audioFeedPaywallType", 0);

  if (v4 == 2)
  {
    v5 = [(FCPaidBundleConfiguration *)self audioPaywallConfigurationsByType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:14];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [(FCPaidBundleConfiguration *)self audioPaywallConfigurationsByType];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:15];
      v10 = [v8 objectForKeyedSubscript:v9];

      if (v10)
      {
        return 2;
      }

      v11 = FCPaywallLog;
      if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v12 = "Missing 'Large' configuration data for Video Audio Feed Paywall! Defaulting to Regular Audio Feed Paywall type!";
        v13 = &v15;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = FCPaywallLog;
      if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v12 = "Missing 'Small' configuration data for Video Audio Feed Paywall! Defaulting to Regular Audio Feed Paywall type!";
        v13 = &v16;
LABEL_9:
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      }
    }

    return 1;
  }

  return v4;
}

- (unint64_t)magazineFeedPaywallSubtype
{
  v3 = [(FCPaidBundleConfiguration *)self configDict];
  v4 = FCAppConfigurationIntegerValue(v3, @"magazineFeedPaywallType", 0);

  if (v4 == 2)
  {
    v5 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:9];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByType];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:10];
      v10 = [v8 objectForKeyedSubscript:v9];

      if (v10)
      {
        return 2;
      }

      v11 = FCPaywallLog;
      if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v12 = "Missing 'Large' configuration data for Video Magazine Feed Paywall! Defaulting to Regular Magazine Feed Paywall type!";
        v13 = &v15;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = FCPaywallLog;
      if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v12 = "Missing 'Small' configuration data for Video Magazine Feed Paywall! Defaulting to Regular Magazine Feed Paywall type!";
        v13 = &v16;
LABEL_9:
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      }
    }

    return 1;
  }

  return v4;
}

- (NSDictionary)magazineGenresByGenre
{
  v26 = *MEMORY[0x1E69E9840];
  magazineGenresByGenre = self->_magazineGenresByGenre;
  if (!magazineGenresByGenre)
  {
    v4 = [(FCPaidBundleConfiguration *)self configDict];
    v5 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"magazineGenres", 0);

    if (v5)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          v11 = 0;
          do
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * v11);
            v13 = [FCMagazineGenre alloc];
            v14 = [(FCMagazineGenre *)v13 initWithConfigDictionary:v12, v21];
            v15 = [(FCMagazineGenre *)v14 genre];

            if (v15)
            {
              v16 = [(FCMagazineGenre *)v14 genre];
              [(NSDictionary *)v6 fc_safelySetObject:v14 forKey:v16];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }

      v17 = self->_magazineGenresByGenre;
      self->_magazineGenresByGenre = v6;
    }

    else
    {
      v18 = [(FCPaidBundleConfiguration *)self defaultMagazineGenres];
      v17 = self->_magazineGenresByGenre;
      self->_magazineGenresByGenre = v18;
    }

    magazineGenresByGenre = self->_magazineGenresByGenre;
  }

  v19 = *MEMORY[0x1E69E9840];

  return magazineGenresByGenre;
}

- (BOOL)isFamilySharingSetupEnabled
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"familySharingSetupEnabled", 0);

  return v3;
}

- (NSString)servicesBundleMetricsTopicName
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"sbFigaroTopic", 0);

  return v3;
}

- (NSString)defaultLandingPageArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultLandingPageByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"deArticleID", v5);

  return v7;
}

- (NSString)defaultServicesBundleLandingPageArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultServicesBundleLandingPageByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"sbArticleID", v5);

  return v7;
}

- (NSString)familySharingLandingPageArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultFamilySharingLandingPageByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"shArticleID", v5);

  return v7;
}

- (NSString)endOfPurchaseFamilySharingSetupArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"endOfPurchaseFamilySharingSetupArticleID", v5);

  return v7;
}

- (NSString)endOfPurchaseNoFamilySharingSetupArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"endOfPurchaseNoFamilySharingSetupArticleID", v5);

  return v7;
}

- (NSString)endOfPurchaseServicesBundleFamilySharingSetupArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"endOfPurchaseServicesBundleFamilySharingSetupArticleID", v5);

  return v7;
}

- (NSString)endOfPurchaseServicesBundleNoFamilySharingSetupArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"endOfPurchaseServicesBundleNoFamilySharingSetupArticleID", v5);

  return v7;
}

- (NSString)renewalLandingPageArticleID
{
  v3 = +[FCPaidBundleConfiguration renewalLandingPageByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"reArticleID", v5);

  return v7;
}

- (NSArray)restorableBundlePurchaseIDs
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 arrayForKey:@"newssubscription.bundle_subscriptions.restorable_purchase_ids"];

  if (v4)
  {
    v5 = [v4 firstObject];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 firstObject];
      if ([v7 length])
      {
        v8 = NFInternalBuild();

        if (v8)
        {
          v9 = v4;
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v10 = [(FCPaidBundleConfiguration *)self configDict];
  v9 = FCAppConfigurationArrayValueWithDefaultValue(v10, @"restorablePurchaseIds", &unk_1F2E6FA50);

LABEL_8:

  return v9;
}

- (NSDictionary)offeredBundlePurchaseIDsMap
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"offeredBundlePurchaseIDsMap", 0);

  return v3;
}

- (int64_t)newIssuesCheckLocalTime
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"newIssuesCheckLocalTime", 10800);

  return v3;
}

- (int64_t)newIssuesNotificationDeliveryLocalTime
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"newIssuesNotificationDeliveryLocalTime", 68400);

  return v3;
}

- (int64_t)maxAllowedSubscriptionDetectionTime
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxAllowedSubscriptionDetectionTime", 2592000);

  return v3;
}

- (NSString)featuredArticlesTagList
{
  v3 = +[FCPaidBundleConfiguration defaultTagListIDByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"featuredArticlesTagList", v5);

  return v7;
}

- (int64_t)featuredArticlesFetchLimit
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"featuredArticlesFetchLimit", 250);

  return v3;
}

- (NSString)recommendableIssuesTagList
{
  v3 = +[FCPaidBundleConfiguration defaultTagListIDByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"recommendableIssuesTagList", v5);

  return v7;
}

- (NSString)globalFeedIDForFreeUsers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"paidFeedIdForFreeUsers", 0);

  return v3;
}

- (NSString)globalFeedIDForPaidUsers
{
  v3 = +[FCPaidBundleConfiguration defaultPaidFeedIDByLocalizedStorefrontID];
  v4 = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(v6, @"paidFeedId", v5);

  return v7;
}

- (BOOL)forYouIncludePaidSectionFeedsForFreeUsers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"forYouIncludePaidSectionFeedsForFreeUsers", 0);

  return v3;
}

- (BOOL)forYouIncludePaidSectionFeedsForPaidUsers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"forYouIncludePaidSectionFeedsForPaidUsers", 0);

  return v3;
}

- (NSString)expirationAlertDescription
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"expirationAlertDescription", 0);

  return v3;
}

- (int64_t)forYouMaxDailyPaidArticlesForFreeUsers
{
  v3 = [(FCPaidBundleConfiguration *)self configDict];
  v4 = FCAppConfigurationIntegerValue(v3, @"forYouMaxDailyPaidArticlesForFreeUsers", 10);

  v5 = [(FCPaidBundleConfiguration *)self configDict];
  v6 = FCAppConfigurationIntegerValue(v5, @"forYouMaxDailyPaidArticlesForFreeUsers2", v4);

  return v6;
}

- (int64_t)forYouMaxMagazineGroupsForFreeUsers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"forYouMaxMagazineGroupsForAUsers", 1);

  return v3;
}

- (int64_t)forYouMaxMagazineGroupsForTrialUsers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"forYouMaxMagazineGroupsForBUsers", 3);

  return v3;
}

- (int64_t)forYouMaxMagazineGroupsForPaidUsers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"forYouMaxMagazineGroupsForCUsers", 3);

  return v3;
}

- (BOOL)isFreeBadgeEnabledForSubscribers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"freeBadgeEnabledForPaidUsers", 0);

  return v3;
}

- (BOOL)isPaidBadgeEnabledForSubscribers
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"paidBadgeEnabledForPaidUsers", 0);

  return v3;
}

- (NSString)freeBadgeTitle
{
  v3 = FCBundle();
  v4 = [v3 localizedStringForKey:@"Free" value:&stru_1F2DC7DC0 table:0];

  v5 = [(FCPaidBundleConfiguration *)self configDict];
  v6 = FCAppConfigurationStringValue(v5, @"freeBadgeTitle", v4);

  return v6;
}

- (NSString)paidBadgeTitle
{
  v3 = FCBundle();
  v4 = [v3 localizedStringForKey:@" News+" value:&stru_1F2DC7DC0 table:0];

  v5 = [(FCPaidBundleConfiguration *)self configDict];
  v6 = FCAppConfigurationStringValue(v5, @"paidBadgeTitle", v4);

  return v6;
}

- (int64_t)feedAutoRefreshMinimumInterval
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"feedAutoRefreshMinimumInterval", 43200);

  return v3;
}

- (int64_t)normalStorageManualIssueDownloadTTL
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v4 = FCAppConfigurationIntegerValue(v2, @"normalStorageManualIssueDownloadTTL", v3);

  return v4;
}

- (int64_t)normalStorageAutomaticIssueDownloadTTL
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"normalStorageAutomaticIssueDownloadTTL", 2592000);

  return v3;
}

- (int64_t)lowStorageManualIssueDownloadTTL
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"lowStorageManualIssueDownloadTTL", 2592000);

  return v3;
}

- (int64_t)lowStorageAutomaticIssueDownloadTTL
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"lowStorageAutomaticIssueDownloadTTL", 2592000);

  return v3;
}

- (int64_t)criticalStorageManualIssueDownloadTTL
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"criticalStorageManualIssueDownloadTTL", 2592000);

  return v3;
}

- (int64_t)criticalStorageAutomaticIssueDownloadTTL
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"criticalStorageAutomaticIssueDownloadTTL", 0);

  return v3;
}

- (NSArray)groupWhitelistedTagIds
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"groupWhitelistedTagIds", 0);

  return v3;
}

- (int64_t)entitlementsGracePeriodInSeconds
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"entitlementsGracePeriodInSeconds", 604800);

  return v3;
}

- (int64_t)entitlementsCacheExpiredGracePeriodInSeconds
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"entitlementsCacheExpiredGracePeriodInSeconds", 172800);

  return v3;
}

- (BOOL)isCategoriesDownloadButtonEnabled
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"categoriesDownloadButtonEnabled", 0);

  return v3;
}

- (int64_t)recentIssuesMaxAge
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"recentIssuesMaxAge", 604800);

  return v3;
}

- (int64_t)minimumReadIssuesInMyMagazines
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumReadIssuesInMyMagazines", 3);

  return v3;
}

- (int64_t)minimumArticlesInANFIssueBeforeRead
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumArticlesInANFIssueBeforeRead", 1);

  return v3;
}

- (int64_t)minimumPagesInPDFIssueBeforeRead
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumPagesInPDFIssueBeforeRead", 4);

  return v3;
}

- (NSString)todayMastheadPaywallConfiguration
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"todayMastheadPaywallConfiguration", 0);

  return v3;
}

- (int64_t)minFollowedMagazinesToHideSuggestionsCompact
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"minFollowedMagazinesToHideSuggestionsCompact", 5);

  return v3;
}

- (int64_t)minFollowedMagazinesToHideSuggestionsRegular
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"minFollowedMagazinesToHideSuggestionsRegular", 8);

  return v3;
}

- (unint64_t)appLaunchUpsellPaidVisibility
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"appLaunchUpsellPaidVisibility", 0);

  return v3;
}

- (unint64_t)appLaunchUpsellBundleTrialVisibility
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"appLaunchUpsellBundleTrialVisibility", 0);

  return v3;
}

- (NSString)appLaunchUpsellInstanceID
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"appLaunchUpsellInstanceID", 0);

  return v3;
}

- (NSString)appLaunchUpsellCampaignID
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"appLaunchUpsellCampaignID", 0);

  return v3;
}

- (NSDate)appLaunchUpsellCampaignStartDate
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [(FCPaidBundleConfiguration *)self configDict];
  v4 = [v2 dateWithTimeIntervalSince1970:{FCAppConfigurationIntegerValue(v3, @"appLaunchUpsellCampaignStartDate", 0)}];

  return v4;
}

- (NSDate)appLaunchUpsellCampaignEndDate
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValueWithDefaultValueIfMissing(v2, @"appLaunchUpsellCampaignEndDate", -1, -1);

  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3];
  }

  return v4;
}

- (int64_t)appLaunchUpsellRequiredAppLaunchCount
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"appLaunchUpsellRequiredAppLaunchCount", 4);

  return v3;
}

- (int64_t)appLaunchUpsellQuiescenceInterval
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"appLaunchUpsellQuiescenceInterval", 172800);

  return v3;
}

- (int64_t)appLaunchUpsellNewSessionBackgroundTimeInterval
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"appLaunchUpsellNewSessionBackgroundTimeInterval", 600);

  return v3;
}

- (BOOL)appLaunchUpsellLastSeenDateSyncEnabled
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"appLaunchUpsellLastSeenDateSyncEnabled", 0);

  return v3;
}

- (BOOL)appLaunchUpsellLastShownCampaignIDSyncEnabled
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"appLaunchUpsellLastShownCampaignIDSyncEnabled", 0);

  return v3;
}

- (int64_t)appLaunchUpsellBehaviorFlags
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"appLaunchUpsellBehaviorFlags", 0);

  return v3;
}

- (int64_t)audioSuggestionsMaxCount
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioSuggestionsMaxCount", 6);

  return v3;
}

- (int64_t)audioSuggestionsHighlyPersonalizedCount
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioSuggestionsHighlyPersonalizedCount", 5);

  return v3;
}

- (int64_t)audioSuggestionsMaxAge
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioSuggestionsMaxAge", 604800);

  return v3;
}

- (int64_t)audioSuggestionsRecycleAfterTime
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioSuggestionsRecycleAfterTime", 345600);

  return v3;
}

- (int64_t)audioSuggestionsMaxIgnoreCount
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioSuggestionsMaxIgnoreCount", 2);

  return v3;
}

- (int64_t)audioOfflineArticlesMaxCountNormalStorage
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioOfflineArticlesMaxCountNormalStorage", 25);

  return v3;
}

- (int64_t)audioOfflineArticlesMaxCountLowStorage
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioOfflineArticlesMaxCountLowStorage", 2);

  return v3;
}

- (int64_t)audioOfflineArticlesMaxCountCriticalStorage
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioOfflineArticlesMaxCountCriticalStorage", 0);

  return v3;
}

- (NSString)audioUpsellArticleID
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"audioUpsellArticleID", 0);

  return v3;
}

- (int64_t)audioUpsellMaxDisplayCount
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioUpsellMaxDisplayCount", -1);

  return v3;
}

- (NSString)audioUpsellInstanceID
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"audioUpsellInstanceID", 0);

  return v3;
}

- (int64_t)audioRecentlyPlayedMaxCount
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioRecentlyPlayedMaxCount", 100);

  return v3;
}

- (int64_t)audioFinishedAtTimeFromEnd
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioFinishedAtTimeFromEnd", 10);

  return v3;
}

- (NSString)audioDailyBriefingFeatureName
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCBundle();
  v4 = [v3 localizedStringForKey:@"Apple News Today" value:&stru_1F2DC7DC0 table:0];
  v5 = FCAppConfigurationStringValue(v2, @"audioDailyBriefingFeatureName", v4);

  return v5;
}

- (int64_t)audioRefreshTimeGMT
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioRefreshTimeGMT", 39600);

  return v3;
}

- (BOOL)audioRefreshForceWakeEnabled
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"audioRefreshShouldForceWake", 0);

  return v3;
}

- (int64_t)audioRefreshForceWakeRandomizationWindow
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioRefreshForceWakeRandomizationWindow", 600);

  return v3;
}

- (int64_t)audioRewindToParagraphStartAfterTime
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioRewindToParagraphStartAfterTime", 180);

  return v3;
}

- (int64_t)audioCloseIdlePlayerAfterTime
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioCloseIdlePlayerAfterTime", 300);

  return v3;
}

- (NSArray)audioFeedPaywallPositions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"audioFeedPaywallPositions", 0);

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
    v8[0] = v5;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSArray)audioChannelPaywallOverrideAllowedTagIDs
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"audioChannelPaywallOverrideAllowedTagIDs", 0);

  return v3;
}

- (NSString)audioArticlesChannelId
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"audioArticlesChannelId", 0);

  return v3;
}

- (NSDictionary)audioUpsellConfigurationsByID
{
  v24 = *MEMORY[0x1E69E9840];
  audioUpsellConfigurationsByID = self->_audioUpsellConfigurationsByID;
  if (!audioUpsellConfigurationsByID)
  {
    v4 = [(FCPaidBundleConfiguration *)self configDict];
    v5 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"audioUpsellConfigs", 0);

    if (v5)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            v13 = [FCAudioUpsellConfig alloc];
            v14 = [(FCAudioUpsellConfig *)v13 initWithConfigDictionary:v12, v19];
            v15 = [(FCAudioUpsellConfig *)v14 identifier];
            [(NSDictionary *)v6 fc_safelySetObject:v14 forKey:v15];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      v16 = self->_audioUpsellConfigurationsByID;
      self->_audioUpsellConfigurationsByID = v6;
    }

    audioUpsellConfigurationsByID = self->_audioUpsellConfigurationsByID;
  }

  v17 = *MEMORY[0x1E69E9840];

  return audioUpsellConfigurationsByID;
}

- (BOOL)requiresHardPaywallForIssuesToC
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(v2, @"requiresHardPaywallForIssuesToC", 1);

  return v3;
}

- (int64_t)appLaunchUpsellPresentationDelay
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"appLaunchUpsellPresentationDelay", 0);

  return v3;
}

- (BOOL)widgetUpsellFeaturesEnabled
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = [FCFeatureEnablementChecker enabledInConfig:v2 forKey:@"widgetUpsellFeaturesEnabled" withDefaultLevel:0];

  return v3;
}

- (NSString)osloAbandonmentUpsellArticleID
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"osloAbandonmentUpsellArticleID", 0);

  return v3;
}

- (int64_t)osloAbandonmentUpsellQuiescenceInterval
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"osloAbandonmentUpsellQuiescenceInterval", 0);

  return v3;
}

- (int64_t)osloAbandonmentUpsellMaxPresentationCount
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(v2, @"osloAbandonmentUpsellMaxPresentationCount", 0);

  return v3;
}

- (NSString)osloAbandonmentUpsellInstanceID
{
  v2 = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(v2, @"osloAbandonmentUpsellInstanceID", &stru_1F2DC7DC0);

  return v3;
}

+ (id)defaultConfigurationForStorefrontID:(id)a3
{
  v3 = a3;
  v4 = [FCPaidBundleConfiguration alloc];
  v5 = FCSupportedStoreFrontIDs();
  v6 = [v5 allObjects];
  v7 = [(FCPaidBundleConfiguration *)v4 initWithConfigDictionary:0 storefrontID:v3 localizedStorefrontID:v3 defaultSupportedStoreFronts:v6];

  return v7;
}

+ (id)renewalLandingPageByLocalizedStorefrontID
{
  if (qword_1EDB27708 != -1)
  {
    dispatch_once(&qword_1EDB27708, &__block_literal_global_452_0);
  }

  v3 = qword_1EDB27700;

  return v3;
}

void __70__FCPaidBundleConfiguration_renewalLandingPageByLocalizedStorefrontID__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"143441";
  v3[1] = @"143455";
  v4[0] = @"ApD6XdJJuQ9Kr_QCk9ivPDQ";
  v4[1] = @"AVtXQTyGvT4OsKHgxZ05M1A";
  v3[2] = @"143455-fr-ca";
  v3[3] = @"143444";
  v4[2] = @"Apnn-WUtwSc2wEXaXYwuUWA";
  v4[3] = @"AXu1vfWkQTGCTyH2EjVUFwQ";
  v3[4] = @"143460";
  v4[4] = @"AfRcHZ0YIQbC4GCJ2KwZYxw";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = qword_1EDB27700;
  qword_1EDB27700 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)defaultLandingPageByLocalizedStorefrontID
{
  if (qword_1EDB27718 != -1)
  {
    dispatch_once(&qword_1EDB27718, &__block_literal_global_470);
  }

  v3 = qword_1EDB27710;

  return v3;
}

void __70__FCPaidBundleConfiguration_defaultLandingPageByLocalizedStorefrontID__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"143441";
  v3[1] = @"143455";
  v4[0] = @"A53eyrvagTQO5cri5DWwDnw";
  v4[1] = @"AvPUnt7dQSmGX_KaIUHC5kQ";
  v3[2] = @"143455-fr-ca";
  v3[3] = @"143444";
  v4[2] = @"AfEzIPkyQTxC9g7atKJeVKw";
  v4[3] = @"A1fFFI_OFTuWOCZBiz3nBkw";
  v3[4] = @"143460";
  v4[4] = @"ATV43D73KTPyTlJ-hlICZmA";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = qword_1EDB27710;
  qword_1EDB27710 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)defaultServicesBundleLandingPageByLocalizedStorefrontID
{
  if (qword_1EDB27728 != -1)
  {
    dispatch_once(&qword_1EDB27728, &__block_literal_global_487_0);
  }

  v3 = qword_1EDB27720;

  return v3;
}

void __84__FCPaidBundleConfiguration_defaultServicesBundleLandingPageByLocalizedStorefrontID__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"143441";
  v3[1] = @"143455";
  v4[0] = @"AdgSCAdtlS0P9UQhWGbPVRA";
  v4[1] = @"AMNrflzD8TRirzxx_2tdqdA";
  v3[2] = @"143455-fr-ca";
  v3[3] = @"143444";
  v4[2] = @"AM3SM6D1cSHG6iB9O-deE_A";
  v4[3] = @"ASKOyErGaR3vAe6iqsxkekQ";
  v3[4] = @"143460";
  v4[4] = @"AiLdUCfKuR2C9hsKAryYVQw";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = qword_1EDB27720;
  qword_1EDB27720 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)defaultFamilySharingLandingPageByLocalizedStorefrontID
{
  if (qword_1EDB27738 != -1)
  {
    dispatch_once(&qword_1EDB27738, &__block_literal_global_504);
  }

  v3 = qword_1EDB27730;

  return v3;
}

void __83__FCPaidBundleConfiguration_defaultFamilySharingLandingPageByLocalizedStorefrontID__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"143441";
  v3[1] = @"143455";
  v4[0] = @"ATHi8wuYqRw6_2XiqVdBmRQ";
  v4[1] = @"ABnZHWwYzQAOG4srVl6oJPw";
  v3[2] = @"143455-fr-ca";
  v3[3] = @"143444";
  v4[2] = @"ADaPfwzFeS4Kqd7ynKkCGtA";
  v4[3] = @"ApJ3T6edORFWeIsm1UYVVnQ";
  v3[4] = @"143460";
  v4[4] = @"AOKrTMJ1ORhKcIeS77Oak5g";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = qword_1EDB27730;
  qword_1EDB27730 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID
{
  if (qword_1EDB27748 != -1)
  {
    dispatch_once(&qword_1EDB27748, &__block_literal_global_521);
  }

  v3 = qword_1EDB27740;

  return v3;
}

void __99__FCPaidBundleConfiguration_defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"143441";
  v3[1] = @"143455";
  v4[0] = @"Axse1yHejTiq4m6_FDhWjzQ";
  v4[1] = @"AQteqTSopTuyVb6risDsqqA";
  v3[2] = @"143455-fr-ca";
  v3[3] = @"143444";
  v4[2] = @"AQY3aWLseQxyESRs82-fbVA";
  v4[3] = @"AHhJreKRQTyueyd82FfUzVA";
  v3[4] = @"143460";
  v4[4] = @"ADcFux8UIR96JlKqVNI1fpQ";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = qword_1EDB27740;
  qword_1EDB27740 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID
{
  if (qword_1EDB27758 != -1)
  {
    dispatch_once(&qword_1EDB27758, &__block_literal_global_538);
  }

  v3 = qword_1EDB27750;

  return v3;
}

void __101__FCPaidBundleConfiguration_defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID__block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"143441";
  v3[1] = @"143455";
  v4[0] = @"Aj9QiLScMQ6ux3gXuFpSjLQ";
  v4[1] = @"AzXHbVKNIT4CFohbsyaGOOw";
  v3[2] = @"143455-fr-ca";
  v3[3] = @"143444";
  v4[2] = @"AbTcLWiv4TvGpXAB-tS0e3w";
  v4[3] = @"Ad0wrgFufRKKrELGiiY6KAA";
  v3[4] = @"143460";
  v4[4] = @"AoXCsrwX1Tm6WCWhQvbwomw";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = qword_1EDB27750;
  qword_1EDB27750 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)defaultTagListIDByLocalizedStorefrontID
{
  if (qword_1EDB27768 != -1)
  {
    dispatch_once(&qword_1EDB27768, &__block_literal_global_555);
  }

  v3 = qword_1EDB27760;

  return v3;
}

void __68__FCPaidBundleConfiguration_defaultTagListIDByLocalizedStorefrontID__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"GI", @"143441"];
  v9[0] = v0;
  v8[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"GI", @"143455"];
  v9[1] = v1;
  v8[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"GI", @"143455"];
  v9[2] = v2;
  v8[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"GI", @"143444"];
  v9[3] = v3;
  v8[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"GI", @"143460"];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_1EDB27760;
  qword_1EDB27760 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)defaultPaidFeedIDByLocalizedStorefrontID
{
  if (qword_1EDB27788 != -1)
  {
    dispatch_once(&qword_1EDB27788, &__block_literal_global_571);
  }

  v3 = qword_1EDB27780;

  return v3;
}

void __69__FCPaidBundleConfiguration_defaultPaidFeedIDByLocalizedStorefrontID__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$en-US", @"TRKNDEVsSSl2ye3cRDsruSQ", @"143441"];
  v9[0] = v0;
  v8[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$en-CA", @"TRKNDEVsSSl2ye3cRDsruSQ"];
  v9[1] = v1;
  v8[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$fr-CA", @"TRKNDEVsSSl2ye3cRDsruSQ"];
  v9[2] = v2;
  v8[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$en-UK", @"TRKNDEVsSSl2ye3cRDsruSQ"];
  v9[3] = v3;
  v8[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$en-AU", @"TRKNDEVsSSl2ye3cRDsruSQ"];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_1EDB27780;
  qword_1EDB27780 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)defaultPaywallConfigs
{
  v18[11] = *MEMORY[0x1E69E9840];
  v2 = [(FCPaidBundleConfiguration *)self defaultLandingPageArticleID];
  v17[0] = &unk_1F2E70818;
  v16 = [FCPaywallConfiguration defaultArticleHardPaywallWithLandingPageArticleID:v2];
  v18[0] = v16;
  v17[1] = &unk_1F2E70830;
  v15 = [FCPaywallConfiguration defaultArticleSharedHardPaywallWithLandingPageArticleID:v2];
  v18[1] = v15;
  v17[2] = &unk_1F2E70848;
  v14 = [FCPaywallConfiguration defaultArticleSoftPaywallWithLandingPageArticleID:v2];
  v18[2] = v14;
  v17[3] = &unk_1F2E70860;
  v3 = [FCPaywallConfiguration defaultArticleSharedSoftPaywallWithLandingPageArticleID:v2];
  v18[3] = v3;
  v17[4] = &unk_1F2E70878;
  v4 = [FCPaywallConfiguration defaultChannelSoftPaywallWithLandingPageArticleID:v2];
  v18[4] = v4;
  v17[5] = &unk_1F2E70890;
  v5 = [FCPaywallConfiguration defaultMagazineFeedSoftPaywallSmallPaywallWithLandingPageArticleID:v2];
  v18[5] = v5;
  v17[6] = &unk_1F2E708A8;
  v6 = [FCPaywallConfiguration defaultMagazineFeedSoftPaywallMediumPaywallWithLandingPageArticleID:v2];
  v18[6] = v6;
  v17[7] = &unk_1F2E708C0;
  v7 = [FCPaywallConfiguration defaultMagazineFeedSoftPaywallLargePaywallWithLandingPageArticleID:v2];
  v18[7] = v7;
  v17[8] = &unk_1F2E708D8;
  v8 = [FCPaywallConfiguration defaultMagazineFeedVideoSoftPaywallSmallPaywallWithLandingPageArticleID:v2];
  v18[8] = v8;
  v17[9] = &unk_1F2E708F0;
  v9 = [FCPaywallConfiguration defaultMagazineFeedVideoSoftPaywallLargePaywallWithLandingPageArticleID:v2];
  v18[9] = v9;
  v17[10] = &unk_1F2E70908;
  v10 = [FCPaywallConfiguration defaultPDFHardPaywallWithLandingPageArticleID:v2];
  v18[10] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)defaultAudioPaywallConfigs
{
  v14[7] = *MEMORY[0x1E69E9840];
  v2 = [(FCPaidBundleConfiguration *)self defaultLandingPageArticleID];
  v13[0] = &unk_1F2E70818;
  v3 = [FCPaywallConfiguration defaultAudioArticleHardPaywallWithLandingPageArticleID:v2];
  v14[0] = v3;
  v13[1] = &unk_1F2E70830;
  v4 = [FCPaywallConfiguration defaultAudioArticleSharedHardPaywallWithLandingPageArticleID:v2];
  v14[1] = v4;
  v13[2] = &unk_1F2E70848;
  v5 = [FCPaywallConfiguration defaultAudioArticleSoftPaywallWithLandingPageArticleID:v2];
  v14[2] = v5;
  v13[3] = &unk_1F2E70860;
  v6 = [FCPaywallConfiguration defaultAudioArticleSharedSoftPaywallWithLandingPageArticleID:v2];
  v14[3] = v6;
  v13[4] = &unk_1F2E70920;
  v7 = [FCPaywallConfiguration defaultAudioFeedSoftPaywallSmallPaywallWithLandingPageArticleID:v2];
  v14[4] = v7;
  v13[5] = &unk_1F2E70938;
  v8 = [FCPaywallConfiguration defaultAudioFeedSoftPaywallLargePaywallWithLandingPageArticleID:v2];
  v14[5] = v8;
  v13[6] = &unk_1F2E70878;
  v9 = [FCPaywallConfiguration defaultChannelSoftPaywallWithLandingPageArticleID:v2];
  v14[6] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)defaultSubscriptionButtonConfigs
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [(FCPaidBundleConfiguration *)self defaultLandingPageArticleID];
  v9[0] = &unk_1F2E70818;
  v3 = [FCSubscriptionButtonConfiguration defaultArticleSubscriptionButtonWithLandingPageArticleID:v2];
  v10[0] = v3;
  v9[1] = &unk_1F2E70830;
  v4 = +[FCSubscriptionButtonConfiguration defaultOsloSheetTargetSubscriptionButton];
  v10[1] = v4;
  v9[2] = &unk_1F2E70848;
  v5 = [FCSubscriptionButtonConfiguration defaultIssueCoverSubscriptionButtonWithLandingPageArticleID:v2];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)defaultServicesBundleSubscriptionButtonConfigs
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [(FCPaidBundleConfiguration *)self defaultServicesBundleLandingPageArticleID];
  v9[0] = &unk_1F2E70818;
  v3 = [FCSubscriptionButtonConfiguration defaultArticleSubscriptionButtonWithLandingPageArticleID:v2];
  v10[0] = v3;
  v9[1] = &unk_1F2E70830;
  v4 = +[FCSubscriptionButtonConfiguration defaultAmsSheetTargetSubscriptionButton];
  v10[1] = v4;
  v9[2] = &unk_1F2E70848;
  v5 = [FCSubscriptionButtonConfiguration defaultIssueCoverSubscriptionButtonWithLandingPageArticleID:v2];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)defaultMagazineGenres
{
  v71[15] = *MEMORY[0x1E69E9840];
  v2 = FCBundle();
  v3 = [v2 localizedStringForKey:@"automotive magazines" value:&stru_1F2DC7DC0 table:0];
  v4 = [FCMagazineGenre magazineGenreWithGenre:@"automotive" localizedDescription:v3];

  v5 = FCBundle();
  v6 = [v5 localizedStringForKey:@"business & finance magazines" value:&stru_1F2DC7DC0 table:0];
  v7 = [FCMagazineGenre magazineGenreWithGenre:@"business-finance" localizedDescription:v6];

  v8 = FCBundle();
  v9 = [v8 localizedStringForKey:@"crafts & hobby magazines" value:&stru_1F2DC7DC0 table:0];
  v10 = [FCMagazineGenre magazineGenreWithGenre:@"crafts-hobby" localizedDescription:v9];

  v11 = FCBundle();
  v12 = [v11 localizedStringForKey:@"entertainment magazines" value:&stru_1F2DC7DC0 table:0];
  v13 = [FCMagazineGenre magazineGenreWithGenre:@"entertainment" localizedDescription:v12];

  v14 = FCBundle();
  v15 = [v14 localizedStringForKey:@"fashion & style magazines" value:&stru_1F2DC7DC0 table:0];
  v16 = [FCMagazineGenre magazineGenreWithGenre:@"fashion-style" localizedDescription:v15];

  v17 = FCBundle();
  v18 = [v17 localizedStringForKey:@"food & cooking magazines" value:&stru_1F2DC7DC0 table:0];
  v69 = [FCMagazineGenre magazineGenreWithGenre:@"food-cooking" localizedDescription:v18];

  v19 = FCBundle();
  v20 = [v19 localizedStringForKey:@"health & fitness magazines" value:&stru_1F2DC7DC0 table:0];
  v68 = [FCMagazineGenre magazineGenreWithGenre:@"health-fitness" localizedDescription:v20];

  v21 = FCBundle();
  v22 = [v21 localizedStringForKey:@"home & gardening magazines" value:&stru_1F2DC7DC0 table:0];
  v67 = [FCMagazineGenre magazineGenreWithGenre:@"home-gardening" localizedDescription:v22];

  v23 = FCBundle();
  v24 = [v23 localizedStringForKey:@"kids & parenting magazines" value:&stru_1F2DC7DC0 table:0];
  v66 = [FCMagazineGenre magazineGenreWithGenre:@"kids-parenting" localizedDescription:v24];

  v25 = FCBundle();
  v26 = [v25 localizedStringForKey:@"men’s lifestyle magazines" value:&stru_1F2DC7DC0 table:0];
  v65 = [FCMagazineGenre magazineGenreWithGenre:@"men-lifestyle" localizedDescription:v26];

  v27 = FCBundle();
  v28 = [v27 localizedStringForKey:@"news & politics magazines" value:&stru_1F2DC7DC0 table:0];
  v64 = [FCMagazineGenre magazineGenreWithGenre:@"news-politics" localizedDescription:v28];

  v29 = FCBundle();
  v30 = [v29 localizedStringForKey:@"science & technology magazines" value:&stru_1F2DC7DC0 table:0];
  v63 = [FCMagazineGenre magazineGenreWithGenre:@"science-technology" localizedDescription:v30];

  v31 = FCBundle();
  v32 = [v31 localizedStringForKey:@"sports & recreation magazines" value:&stru_1F2DC7DC0 table:0];
  v62 = [FCMagazineGenre magazineGenreWithGenre:@"sports-recreation" localizedDescription:v32];

  v33 = FCBundle();
  v34 = [v33 localizedStringForKey:@"travel magazines" value:&stru_1F2DC7DC0 table:0];
  v61 = [FCMagazineGenre magazineGenreWithGenre:@"travel-regional" localizedDescription:v34];

  v35 = FCBundle();
  v36 = [v35 localizedStringForKey:@"women’s lifestyle magazines" value:&stru_1F2DC7DC0 table:0];
  v49 = [FCMagazineGenre magazineGenreWithGenre:@"women-lifestyle" localizedDescription:v36];

  v60 = v4;
  v55 = [v4 genre];
  v70[0] = v55;
  v71[0] = v4;
  v59 = v7;
  v54 = [v7 genre];
  v70[1] = v54;
  v71[1] = v7;
  v58 = v10;
  v53 = [v10 genre];
  v70[2] = v53;
  v71[2] = v10;
  v57 = v13;
  v52 = [v13 genre];
  v70[3] = v52;
  v71[3] = v13;
  v56 = v16;
  v51 = [v16 genre];
  v70[4] = v51;
  v71[4] = v16;
  v50 = [v69 genre];
  v70[5] = v50;
  v71[5] = v69;
  v37 = [v68 genre];
  v70[6] = v37;
  v71[6] = v68;
  v38 = [v67 genre];
  v70[7] = v38;
  v71[7] = v67;
  v39 = [v66 genre];
  v70[8] = v39;
  v71[8] = v66;
  v40 = [v65 genre];
  v70[9] = v40;
  v71[9] = v65;
  v41 = [v64 genre];
  v70[10] = v41;
  v71[10] = v64;
  v42 = [v63 genre];
  v70[11] = v42;
  v71[11] = v63;
  v43 = [v62 genre];
  v70[12] = v43;
  v71[12] = v62;
  v44 = [v61 genre];
  v70[13] = v44;
  v71[13] = v61;
  v45 = [v49 genre];
  v70[14] = v45;
  v71[14] = v49;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:15];

  v46 = *MEMORY[0x1E69E9840];

  return v48;
}

@end