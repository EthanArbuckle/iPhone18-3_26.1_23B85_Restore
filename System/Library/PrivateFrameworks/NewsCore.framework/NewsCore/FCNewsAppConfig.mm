@interface FCNewsAppConfig
+ (id)configurationWithData:(void *)data storefrontID:(void *)d preferredLanguageTags:;
+ (id)defaultConfigurationForStoreFrontID:(uint64_t)d;
- (BOOL)adInstrumentationEnabled;
- (BOOL)adSponsorshipsEnabled;
- (BOOL)aggregatesInAppXavierEnabled;
- (BOOL)aggregatesInNotificationExtensionXavierEnabled;
- (BOOL)aggregatesInWidgetsXavierEnabled;
- (BOOL)allowAnyChannelForTodayChannelGroups;
- (BOOL)appReviewRequestEnabled;
- (BOOL)articleEmbeddingsEnabled;
- (BOOL)articleEmbeddingsScoringEnabled;
- (BOOL)articleLinkBehaviorImprovementsEnabled;
- (BOOL)audioFeedConfigRequestsEnabled;
- (BOOL)autoOnboardShortcuts;
- (BOOL)checkForPaywallConfigChangesEnabled;
- (BOOL)clientSideEngagementBoostEnabled;
- (BOOL)configurableOffersEnabled;
- (BOOL)considerAutofavoritesInMappingCandidates;
- (BOOL)corryBarHideDiscoverMoreInterstitialForNonOnboardedUsers;
- (BOOL)dimNonSubscriberContentOffline;
- (BOOL)disableThumbnailsForArticleRecirculation;
- (BOOL)diversifyOptionalTopStories;
- (BOOL)enableAIAttribution;
- (BOOL)enableBadgeInSpotlightTabBar;
- (BOOL)enableCacheFallbackForArticleRecirculation;
- (BOOL)enableLocationBasedAutofavorites;
- (BOOL)enableNewsPersonalizationAutoFavorites;
- (BOOL)enableTabiAdSegments;
- (BOOL)enableTabiCohortMemberships;
- (BOOL)enableTabiMyMagazinesPersonalization;
- (BOOL)enableTabiTagScoring;
- (BOOL)exportToGroceryListEnabled;
- (BOOL)fallbackToReverseChronSorting;
- (BOOL)feedDifferentiationModeEnabled;
- (BOOL)fineGrainedNewsletterManagementEnabled;
- (BOOL)foodEnabled;
- (BOOL)forYouGroupShouldPromoteAccessibleHeadline;
- (BOOL)foregroundHeartbeatEventEnabled;
- (BOOL)foregroundHeartbeatEventShouldUseQueue;
- (BOOL)inAppMessagesEnabled;
- (BOOL)inFeedDebugging;
- (BOOL)isAnalyticsJitterEnabled;
- (BOOL)isArticleToolbarCompressionEnabled;
- (BOOL)isCardFeedRedesignEnabled;
- (BOOL)isDefaultConfiguration;
- (BOOL)isImprovedManagedTopicGroupingEnabled;
- (BOOL)isOrderFeedEndpointEnabled;
- (BOOL)isSIWAOnMacEnabled;
- (BOOL)isSmarterFetchEnabledForESL;
- (BOOL)isSmarterFetchEnabledForLatest;
- (BOOL)isSmarterFetchEnabledForSupplementalESL;
- (BOOL)isSmarterFetchEnabledForSupplementalLatest;
- (BOOL)isSportsSyncingSupported;
- (BOOL)isTodaySponsorshipEligible;
- (BOOL)issuesNewsletterOptinEnabled;
- (BOOL)liveActivitiesEnabled;
- (BOOL)moreFromIssueEOAEnabled;
- (BOOL)moreToReadEOAEnabled;
- (BOOL)newSearchEndpointConfigEnabled;
- (BOOL)notificationAssetPrefetchingRequiresWatch;
- (BOOL)notificationEnableAssetPrefetching;
- (BOOL)offlineModeEnabled;
- (BOOL)paidBundleViaOfferEnabled;
- (BOOL)personalizationAnalyticsEnabled;
- (BOOL)personalizationEventTrackingEnabled;
- (BOOL)servicesBundleCIPActivationEnabled;
- (BOOL)shouldIncludeRecipePersonalizationScienceData;
- (BOOL)shouldManuallySupplementEvergreenWithIssueArticles;
- (BOOL)shouldProxyURLBucketFetch;
- (BOOL)shouldShowAlternateHeadlines;
- (BOOL)shouldShuffleReportedHeadlines;
- (BOOL)smarterMessagingEnabled;
- (BOOL)splitTopicGroups;
- (BOOL)sportsNativeAdsEnabled;
- (BOOL)sportsRecommendationHidesIgnoredTags;
- (BOOL)sportsRecordEnabled;
- (BOOL)sportsSyncingV2Enabled;
- (BOOL)statelessPersonalizationAllowedForExtensions;
- (BOOL)statelessPersonalizationEnabled;
- (BOOL)tabiBackgroundRefreshEnabled;
- (BOOL)tabiScoringInNotificationExtensionEnabled;
- (BOOL)tabiScoringInWidgetsEnabled;
- (BOOL)terminateAppOnBackgroundAfterJoiningOrLeavingExperiment;
- (BOOL)todayFeedConfigRequestsEnabled;
- (BOOL)todayFeedEnabled;
- (BOOL)todayPerformanceAlertsEnabled;
- (BOOL)todayWidgetForYouBestOfEnabled;
- (BOOL)universalLinksEnabled;
- (BOOL)useAltSportsRecommendationMapping;
- (BOOL)useMultipleNativeAds;
- (BOOL)useNewsArticleSearch;
- (BOOL)useNotificationsV2;
- (BOOL)useSearchInArticle;
- (BOOL)useSecureConnectionForAssets;
- (BOOL)useWelcomeSeries;
- (BOOL)userSegmentationInWidgetAllowed;
- (BOOL)widgetAnalyticsEnabled;
- (BOOL)widgetBackgroundInteractionEnabled;
- (BOOL)widgetContentPrefetchEnabled;
- (BOOL)widgetFetchOfTodayFeedLiteConfigEnabled;
- (BOOL)widgetForYouFromDaemonEnabled;
- (FCAppReviewRequestConfig)appReviewRequestConfig;
- (FCArticleLinkBehaviorConfig)articleLinkBehaviorConfig;
- (FCArticleModalBrandBarConfig)articleModalBrandBarConfig;
- (FCEmbedProxyConfiguration)embedProxyConfiguration;
- (FCNewsAppConfig)init;
- (FCNewsPlusLabelConfigGroup)newsPlusLabelConfigGroup;
- (FCOfflineDownloadsConfiguration)offlineDownloadsConfig;
- (FCPersonalizationPublisherDampeningConfig)publisherDampeningConfig;
- (FCPersonalizationPublisherDampeningConfig)shadowPublisherDampeningConfig;
- (FCSmarterMessagingConfig)smarterMessagingConfig;
- (FCSportsFavoritesSyncModalConfig)sportsFavoritesSyncModalConfig;
- (FCSportsPrivacyConfiguration)sportsPrivacyConfiguration;
- (FCStatelessPersonalizationPublisherFavorability)statelessPersonalizationPublisherFavorability;
- (FCVideoGroupsConfig)forYouVideoGroupsConfig;
- (NSArray)aLaCartePaidSubscriptionGroupWhitelistedChannelIDs;
- (NSArray)allowedRecipeRelatedTopicIDs;
- (NSArray)allowedRecipeSuitableForDietTagIDs;
- (NSArray)analyticsDenylistDescriptorsInternal;
- (NSArray)analyticsDenylistDescriptorsPublic;
- (NSArray)analyticsDenylistDescriptorsSeed;
- (NSArray)analyticsEventNamesInternalAllowlist;
- (NSArray)analyticsEventNamesPublicAllowlist;
- (NSArray)analyticsEventNamesSeedAllowlist;
- (NSArray)appleNewsNotificationChannelIDs;
- (NSArray)deprecatedSportsTopicTagIds;
- (NSArray)discoverNewsPlusChannelIDs;
- (NSArray)editoralRecommendedSportsTopicTagIds;
- (NSArray)editorialFallbackSportsTopicTagIds;
- (NSArray)externalAnalyticsConfigurations;
- (NSArray)freeGlobalESLArticleListIDs;
- (NSArray)freeGlobalRecipeListIDs;
- (NSArray)freeNotificationItemListIDs;
- (NSArray)freeRecentRecipeListIDs;
- (NSArray)hiddenFeedIDs;
- (NSArray)internalPersonalizationRequestsToCollect;
- (NSArray)liveActivityAssetServerURLs;
- (NSArray)mediaSharingBlacklistedChannelIDs;
- (NSArray)offlineModeDetectionIgnoredHosts;
- (NSArray)onboardingFeedIDs;
- (NSArray)paidGlobalESLArticleListIDs;
- (NSArray)paidGlobalRecipeListIDs;
- (NSArray)paidNotificationItemListIDs;
- (NSArray)paidRecentRecipeListIDs;
- (NSArray)permanentChannelIDs;
- (NSArray)presubscribedFeedIDs;
- (NSArray)recommendedIssueAllowList;
- (NSArray)recommendedIssueDenyList;
- (NSArray)todayWidgetForYouTopicDiversityAllowedTopicIDs;
- (NSArray)topStoriesPublishDates;
- (NSData)delayedNotificationSchedulerConfigurationData;
- (NSData)delayedNotificationVendorConfigurationData;
- (NSDictionary)articleConfig;
- (NSDictionary)channelGroupBaselineMultipliers;
- (NSDictionary)editorialTopicEventMapping;
- (NSDictionary)editorialTopicEventMappingProperties;
- (NSDictionary)financeURLAnalyticsAllowLists;
- (NSDictionary)localInForYouTopicTagAllowList;
- (NSDictionary)tagFeedGroupClusteringKnobOverrides;
- (NSDictionary)todayFeedGroupClusteringKnobOverrides;
- (NSString)aiAttributionArticleString;
- (NSString)anfRenderingConfiguration;
- (NSString)articleRecirculationComponentPlacementConfigJSON;
- (NSString)articleRecirculationConfigJSON;
- (NSString)audioConfigRecordID;
- (NSString)audioHistoryFeedConfigurationResourceId;
- (NSString)audioPlaylistFeedConfigurationResourceId;
- (NSString)blockedArticleLearnMoreURL;
- (NSString)breakingNewsChannelID;
- (NSString)briefingsTagID;
- (NSString)bundleChannelPickerSuggestionsTabiPackageResourceId;
- (NSString)businessAudioTagID;
- (NSString)channelFeedConfigurationResourceId;
- (NSString)channelPickerConfigurationResourceId;
- (NSString)configurableOffersMappingResourceId;
- (NSString)description;
- (NSString)editorialChannelID;
- (NSString)editorialGemsSectionID;
- (NSString)embedConfigurationAssetID;
- (NSString)endOfArticleFeedConfigurationResourceId;
- (NSString)endOfRecipeFeedConfigurationResourceId;
- (NSString)enterOfflineModeButtonTitle;
- (NSString)exitOfflineModeButtonTitle;
- (NSString)experimentalizableFieldPostfix;
- (NSString)exploreArticleID;
- (NSString)exportToGroceryListTipMessage;
- (NSString)exportToGroceryListTipTitle;
- (NSString)featuredStoriesTagID;
- (NSString)feedNavigationConfigJSON;
- (NSString)foodHubTagID;
- (NSString)forYouPremiumRecordConfigID;
- (NSString)forYouRecordConfigID;
- (NSString)freeTagESLArticleListIDPrefix;
- (NSString)freeTagRecipeListIDPrefix;
- (NSString)historyFeedConfigurationResourceId;
- (NSString)inConversationsAudioTagID;
- (NSString)issueArticleRecirculationConfig;
- (NSString)localAreasMappingResourceId;
- (NSString)locationRecommendationMappingsResourceId;
- (NSString)magazinesConfigRecordID;
- (NSString)myMagazinesTagID;
- (NSString)mySportsHighlightsTagID;
- (NSString)mySportsScoresTagID;
- (NSString)mySportsTagID;
- (NSString)newsFeedFormatConfiguration;
- (NSString)nonBundleChannelPickerSuggestionsTabiPackageResourceId;
- (NSString)offlineModeUnavailableMessage;
- (NSString)offlineStatusBannerDeviceObsoletionTitle;
- (NSString)offlineStatusBannerDeviceOfflineTitle;
- (NSString)offlineStatusBannerDeviceOnlineTitle;
- (NSString)offlineStatusBannerPoorConnectionTitle;
- (NSString)offlineStatusBannerServerProblemTitle;
- (NSString)offlineStatusBannerUpdateRequiredTitle;
- (NSString)offlineStatusBannerUpsellMessage;
- (NSString)paidTagESLArticleListIDPrefix;
- (NSString)paidTagRecipeListIDPrefix;
- (NSString)personalizationBundleIdMappingResourceId;
- (NSString)personalizationFavorabilityResourceId;
- (NSString)personalizationUrlMappingResourceId;
- (NSString)personalizationWhitelistResourceId;
- (NSString)recipeBoxFeedConfigurationResourceId;
- (NSString)recipeCatalogFilterConfigurationResourceId;
- (NSString)recipeCatalogTagID;
- (NSString)recipePersonalizationAllowlistResourceId;
- (NSString)recipePersonalizationBundleIdMappingResourceId;
- (NSString)recipePersonalizationUrlMappingResourceId;
- (NSString)recipeRecirculationConfigJSON;
- (NSString)recipeSearchFeedConfigurationResourceId;
- (NSString)savedFeedConfigurationResourceId;
- (NSString)savedStoriesTagID;
- (NSString)searchEndpointConfigurationResourceID;
- (NSString)searchFeedConfigurationResourceId;
- (NSString)searchMoreFeedConfigurationResourceId;
- (NSString)sectionFeedConfigurationResourceId;
- (NSString)sharedWithYouFeedLayoutConfigurationResourceId;
- (NSString)sharedWithYouTagID;
- (NSString)shortcutsConfigResourceId;
- (NSString)shortcutsCurationResourceId;
- (NSString)shortcutsTagID;
- (NSString)smarterFetchStrategy;
- (NSString)sportEventHighlightsTagID;
- (NSString)sportHighlightsTagID;
- (NSString)sportLeagueHighlightsTagID;
- (NSString)sportLeagueScoresTagID;
- (NSString)sportScoresTagID;
- (NSString)sportTeamHighlightsTagID;
- (NSString)sportTeamScoresTagID;
- (NSString)sportsBoxScoreConfigurationResourceId;
- (NSString)sportsBracketConfigurationResourceId;
- (NSString)sportsBracketTagID;
- (NSString)sportsConfigurationResourceId;
- (NSString)sportsFeaturedEventsResourceId;
- (NSString)sportsInjuryReportConfigurationResourceId;
- (NSString)sportsKeyPlayerConfigurationResourceId;
- (NSString)sportsLineScoreConfigurationResourceId;
- (NSString)sportsScoreConfigurationResourceId;
- (NSString)sportsStandingConfigurationResourceId;
- (NSString)sportsStandingsTagID;
- (NSString)sportsSyncingConfigurationResourceId;
- (NSString)sportsTaxonomyResourceId;
- (NSString)sportsTopStoriesTagID;
- (NSString)spotlightChannelID;
- (NSString)tagFeedLayoutConfigurationResourceId;
- (NSString)todayFeedEditionConfigJSON;
- (NSString)todayFeedKnobs;
- (NSString)topicFeedConfigurationResourceId;
- (NSString)translationMapResourceID;
- (NSString)trendingRecipesListID;
- (NSString)trendingTagID;
- (NSString)userConcernConfigurationResourceId;
- (NSString)userVectorModelResourceId;
- (NSString)userVectorWhitelistResourceId;
- (NSString)webEmbedContentBlockerOverrides;
- (NSString)webEmbedContentBlockers;
- (NSString)webEmbedDataSourcesConfigurationResourceId;
- (NSString)widgetConfigID;
- (double)analyticsJitterLowerBound;
- (double)analyticsJitterUpperBound;
- (double)articleBannerAdRequestThrottle;
- (double)articleDiversificationSimilarityExpectationEnd;
- (double)articleDiversificationSimilarityExpectationStart;
- (double)articleDiversificationUniquePublisherExpectationSlope;
- (double)articleDiversificationUniquePublisherExpectationYIntercept;
- (double)audioPlaylistSweepListeningPercentageThreshold;
- (double)continueReadingDismissalInterval;
- (double)defaultTTLForArticleListRecords;
- (double)defaultTTLForArticleRecords;
- (double)defaultTTLForIssueListRecords;
- (double)defaultTTLForIssueRecords;
- (double)defaultTTLForPurchaseLookupRecords;
- (double)defaultTTLForPuzzleRecords;
- (double)defaultTTLForPuzzleTypeRecords;
- (double)defaultTTLForRecipeListRecords;
- (double)defaultTTLForRecipeRecords;
- (double)defaultTTLForSportsEventRecords;
- (double)defaultTTLForTagRecords;
- (double)delayBeforeRetryingDroppedFeeds;
- (double)derivedPersonalizationDataBalanceValue;
- (double)endOfArticleMinPaidHeadlineRatio;
- (double)feedBannerAdRequestThrottle;
- (double)feedLineHeightMultiplier;
- (double)interstitialAdLoadDelay;
- (double)interstitialAdRequestThrottle;
- (double)liveActivityScheduleDelay;
- (double)liveActivityScheduleRandomInitialDelay;
- (double)liveActivityScheduleRetryInterval;
- (double)liveActivityScheduleRetryTimeWindow;
- (double)liveActivityScheduleTimeWindow;
- (double)minMembershipForTaxonomyCandidates;
- (double)minMembershipThreshold;
- (double)minMembershipThresholdForLocalRecommendation;
- (double)minScoreThresholdForSportsRecommendations;
- (double)minimumTrendingUnseenRatio;
- (double)nativeInArticleAdRequestThrottle;
- (double)nativeInFeedAdRequestThrottle;
- (double)newsletterSubscriptionStatusCacheTimeout;
- (double)offlineModeDetectionPingInterval;
- (double)offlineModeDetectionPingTimeoutInterval;
- (double)offlineModeMaximumDurationToCountAsSuccess;
- (double)offlineModeMinimumSecondsSinceSuccessToOffline;
- (double)offlineModeThrottleUnreliableDetectionTimeoutInterval;
- (double)prerollAdRequestThrottle;
- (double)prerollLoadingTimeout;
- (double)prerollReadyToPlayTimeout;
- (double)tagSubscriptionRepromptDelay;
- (double)todayFeedConfigEndpointTimeoutAfterCK;
- (double)todayPerformanceAlertGapExpansionThreshold;
- (double)todayPerformanceAlertPrewarmThreshold;
- (double)todayPerformanceAlertSpinnerThreshold;
- (double)todayWidgetForYouBundleArticleQuota;
- (double)todayWidgetForYouTopicDiversityThreshold;
- (double)ttlForGlobalRecipes;
- (double)ttlForPersonalizedRecipes;
- (double)ttlForRecentRecipes;
- (double)ttlForTrendingRecipes;
- (double)widgetTelemetrySamplingRate;
- (id)analyticsEnvelopeContentTypeConfigsForEnvironment:(unint64_t)environment;
- (id)appAnalyticsAppHealthEndpointUrlForEnvironment:(unint64_t)environment;
- (id)appAnalyticsAppHeartbeatEndpointUrlForEnvironment:(unint64_t)environment;
- (id)appAnalyticsEndpointUrlForEnvironment:(unint64_t)environment;
- (id)appAnalyticsNotificationReceiptEndpointUrlForEnvironment:(unint64_t)environment;
- (id)expFieldForKey:(void *)key;
- (id)jsonEncodableObject;
- (id)localizedStorefrontID;
- (id)paidALaCartePaywallConfigForChannelID:(id)d;
- (id)personalizationTreatment;
- (id)recipeTagRecipeListIDPrefix;
- (id)todayConfigWithIdentifier:(id)identifier queueConfigs:(id)configs backgroundColorLight:(id)light backgroundColorDark:(id)dark audioIndicatorColor:(id)color widgetBannerConfig:(id)config;
- (int64_t)alternateUniversalLinksResourceRefreshRate;
- (int64_t)analyticsEndpointMaxPayloadSize;
- (int64_t)appConfigRefreshRate;
- (int64_t)articleAdPrefetchLimit;
- (int64_t)articleRapidUpdatesTimeout;
- (int64_t)articleReadCountThreshold;
- (int64_t)articleRecirculationPopularFeedQueryTimeRange;
- (int64_t)audioPlaylistSweepRecencyThresholdInDays;
- (int64_t)autoRefreshMinimumInterval;
- (int64_t)autoScrollToTopFeedTimeout;
- (int64_t)bestOfferRequestTimeoutDurationInSeconds;
- (int64_t)corryBarMaxArticleCountForArticleList;
- (int64_t)corryBarMaxArticleCountForSingleArticle;
- (int64_t)criticalStorageThreshold;
- (int64_t)dailyChannelUpsellsCountLimit;
- (int64_t)emailSignupRequiredAppLaunchCount;
- (int64_t)endOfArticleExpireArticlesAfter;
- (int64_t)endOfArticleMaxInaccessiblePaidArticleCount;
- (int64_t)endOfArticleOnscreenPercentageRequirement;
- (int64_t)entitlementsCacheRecoveryAttemptDurationInSeconds;
- (int64_t)entitlementsRequestTimeoutDurationInSeconds;
- (int64_t)expirePinnedArticlesAfter;
- (int64_t)expiredPaidSubscriptionGroupCutoffTime;
- (int64_t)feedAdScreenfulsToPrefetch;
- (int64_t)forYouMaxDailyEvergreenArticlesForFreeUsers;
- (int64_t)forYouMaxDailyEvergreenArticlesForPaidUsers;
- (int64_t)liveActivityFollowedAlertsThreshold;
- (int64_t)liveActivityScheduleRetryCountMax;
- (int64_t)liveActivityScheduledAlertsThreshold;
- (int64_t)lowStorageThreshold;
- (int64_t)maxCuratedShortcutsCount;
- (int64_t)maxIssuesPerESLInventoryRequest;
- (int64_t)maxRetriesForDroppedFeeds;
- (int64_t)maxSportRecommendationsPerSport;
- (int64_t)maxSportRecommendationsWithLeagueTypeCollege;
- (int64_t)maxSuggestedShortcutsCount;
- (int64_t)maxTagESLArticleListsToQuery;
- (int64_t)maximumBundleSessionTime;
- (int64_t)maximumBundleSessionValue;
- (int64_t)maximumMastheadWelcomeMessageTime;
- (int64_t)maximumNumberOfExpiredPaidSubscriptionGroups;
- (int64_t)maximumPaidSubscriptionGroupSizeiPad;
- (int64_t)maximumPaidSubscriptionGroupSizeiPhone;
- (int64_t)maximumPremiumHeadlinesGroupSlottingTime;
- (int64_t)maximumPremiumStoriesUnlockedTipTime;
- (int64_t)maximumRetryAfterForCK;
- (int64_t)maximumTimesHeadlineInPaidSubscriptionGroup;
- (int64_t)maximumTrendingGroupSizeiPad;
- (int64_t)maximumTrendingGroupSizeiPhone;
- (int64_t)minShortcutsOnboardCount;
- (int64_t)minimumBucketGroupConfigVersion;
- (int64_t)minimumDistanceBetweenImageOnTopTiles;
- (int64_t)minimumDurationBetweenForYouGroupsWeekday;
- (int64_t)minimumDurationBetweenForYouGroupsWeekend;
- (int64_t)minimumDurationBetweenTrendingGroupsWeekday;
- (int64_t)minimumDurationBetweenTrendingGroupsWeekend;
- (int64_t)newFavoriteNotificationAlertsFrequency;
- (int64_t)newsletterSubscriptionType;
- (int64_t)notificationArticleCacheTimeout;
- (int64_t)notificationArticleWithRapidUpdatesCacheTimeout;
- (int64_t)notificationEnabledChannelsRefreshFrequency;
- (int64_t)notificationPoolAutoRefreshInterval;
- (int64_t)notificationPoolMaxAge;
- (int64_t)numberOfFetchedHeadlinesToReport;
- (int64_t)optimizedStorageAutoEnablementThreshold;
- (int64_t)optionalTopStoriesRefreshRate;
- (int64_t)savedArticlesCutoffTime;
- (int64_t)savedArticlesMaximumCountCellular;
- (int64_t)savedArticlesMaximumCountWiFi;
- (int64_t)savedArticlesOpenedCutoffTime;
- (int64_t)shortcutsCustomizeAffordanceDisplayMinLaunchCount;
- (int64_t)shortcutsCustomizeAffordanceSendToBackPositionMinLaunchCount;
- (int64_t)shortcutsMaxCount;
- (int64_t)shortcutsOnboardCount;
- (int64_t)singleChannelFeedMinFeedItemsPerRequest;
- (int64_t)singleTopicFeedMinFeedItemsPerRequest;
- (int64_t)sportsManagementMinChildItemsCount;
- (int64_t)sportsManagementRecommendedItemsCount;
- (int64_t)stateRestorationAllowedTimeWindow;
- (int64_t)subscriptionsGlobalMeteredCount;
- (int64_t)subscriptionsGracePeriodForTokenVerificationSeconds;
- (int64_t)subscriptionsPlacardGlobalMaximumPerDay;
- (int64_t)subscriptionsPlacardPublisherFrequencyInSeconds;
- (int64_t)todayFeedLoadToCacheTimeWindow;
- (int64_t)todayPerformanceAlertsMinNewsVersion;
- (int64_t)todayWidgetForYouMaxAIGArticles;
- (int64_t)todayWidgetForYouMaxEvergreen;
- (int64_t)todayWidgetForYouMaxInaccessible;
- (int64_t)todayWidgetForYouMaxPublisherOccurrences;
- (int64_t)todayWidgetForYouTopicDiversityWindowSize;
- (int64_t)topStoriesLocalNewsExpiration;
- (int64_t)trendingTopicsRefreshRate;
- (int64_t)widgetForYouBackgroundMinimumUpdateInterval;
- (unint64_t)bestOfBundleFeedGroupKind;
- (unint64_t)likeDislikeBehavior;
- (unint64_t)trendingStyle;
- (void)initWithConfigDictionary:(void *)dictionary storefrontID:(void *)d languageConfigDictionary:;
@end

@implementation FCNewsAppConfig

- (id)localizedStorefrontID
{
  selfCopy = self;
  if (self)
  {
    languageConfigDictionary = [self languageConfigDictionary];
    if (languageConfigDictionary)
    {
      selfCopy = [selfCopy storefrontID];
      v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"languageTag", &stru_1F2DC7DC0);
      lowercaseString = [v3 lowercaseString];

      if ([selfCopy isEqualToString:@"143455"] && objc_msgSend(lowercaseString, "isEqualToString:", @"fr-ca"))
      {
        v5 = @"143455-fr-ca";

        selfCopy = v5;
      }
    }

    else
    {
      lowercaseString = +[FCAppleAccount sharedAccount];
      selfCopy = [lowercaseString supportedLocalizedContentStoreFrontID];
    }
  }

  return selfCopy;
}

void __48__FCNewsAppConfig__loadSuperfeedConfigOverrides__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__FCNewsAppConfig__loadSuperfeedConfigOverrides__block_invoke_2;
  v6[3] = &unk_1E7C3A5F0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

- (double)offlineModeMinimumSecondsSinceSuccessToOffline
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"offlineModeMinimumSecondsSinceSuccessToOffline2", 10.0);

  return v3;
}

- (BOOL)useSecureConnectionForAssets
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"useSecureConnectionForAssets", 1);

  return v3;
}

void __63__FCNewsAppConfig__loadRecipeAutoFavoritesServiceConfiguration__block_invoke(uint64_t a1)
{
  v2 = FCAutoFavoritesServiceLog;
  if (os_log_type_enabled(FCAutoFavoritesServiceLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Found nil recipe auto favorites service configuration, storing empty configuration", v6, 2u);
  }

  v3 = [@"{}" dataUsingEncoding:4];
  v4 = *(a1 + 32);
  v5 = *(v4 + 360);
  *(v4 + 360) = v3;
}

- (double)offlineModeMaximumDurationToCountAsSuccess
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"offlineModeMaximumDurationToCountAsSuccess", 3.0);

  return v3;
}

- (NSArray)offlineModeDetectionIgnoredHosts
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"offlineModeDetectionIgnoredHosts", &unk_1F2E6F8E8);

  return v3;
}

- (int64_t)maximumRetryAfterForCK
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maximumRetryAfterForCK", 3600);

  return v3;
}

- (NSString)experimentalizableFieldPostfix
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"experimentalizableFieldPostfix", 0);

  return v3;
}

- (BOOL)shouldShowAlternateHeadlines
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"shouldShowAlternateHeadlines", 1);

  return v3;
}

- (BOOL)articleEmbeddingsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"articleEmbeddingsEnabled", 0);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.features.articleEmbeddingsEnabled"];

    if (v5 == 2)
    {
      return 0;
    }

    if (v5 == 1)
    {
      return 1;
    }
  }

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isOrderFeedEndpointEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"orderFeedEnabledLevel", 7);

  if (!NFInternalBuild())
  {
    if (NFSeedBuild())
    {
      v3 = (v3 & 2) != 0;
    }

    else
    {
      v3 = (v3 & 4) != 0;
    }
  }

  return v3 & 1;
}

- (BOOL)checkForPaywallConfigChangesEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"checkForPaywallConfigChangesEnabled", 0);

  return v3;
}

- (double)newsletterSubscriptionStatusCacheTimeout
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"newsletterConfig", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"newsletterSubscriptionStatusCacheTimeout", 86400);
  return v4;
}

- (BOOL)isDefaultConfiguration
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = configDictionary == 0;

  return v3;
}

- (int64_t)todayFeedLoadToCacheTimeWindow
{
  if (!NFInternalBuild())
  {
    goto LABEL_11;
  }

  v3 = NewsCoreUserDefaults();
  if (([v3 BOOLForKey:@"enable_config_overrides"] & 1) == 0)
  {

LABEL_11:
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    integerValue = FCAppConfigurationIntegerValue(configDictionary, @"todayFeedLoadToCacheTimeWindow", 7200);
    goto LABEL_12;
  }

  objc_opt_class();
  v4 = NewsCoreUserDefaults();
  v5 = [v4 objectForKey:@"override_today_feed_load_to_cache_time_window"];
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  configDictionary = v6;

  if (!configDictionary)
  {
    goto LABEL_11;
  }

  integerValue = [configDictionary integerValue];
LABEL_12:
  v9 = integerValue;

  return v9;
}

- (int64_t)entitlementsRequestTimeoutDurationInSeconds
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"entitlementsRequestTimeoutDurationInSeconds", 5);

  return v3;
}

- (int64_t)appConfigRefreshRate
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"appConfigRefreshRate", 3600);

  return v3;
}

- (BOOL)offlineModeEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"offlineModeEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)foodEnabled
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"foodEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isAnalyticsJitterEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"analyticsJitterEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (double)analyticsJitterLowerBound
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"analyticsJitterLowerBound", -600.0);

  return v3;
}

- (double)analyticsJitterUpperBound
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"analyticsJitterUpperBound", 600.0);

  return v3;
}

- (NSArray)analyticsDenylistDescriptorsInternal
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"analyticsDenylistDescriptorsInternal", 0);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (BOOL)articleEmbeddingsScoringEnabled
{
  if (NFInternalBuild())
  {
    v3 = NewsCoreUserDefaults();
    v4 = [v3 integerForKey:@"news.features.articleEmbeddingsScoring"];

    if (v4 == 1)
    {
      return 1;
    }

    if (v4 == 2)
    {
      return 0;
    }
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(configDictionary, @"articleEmbeddingsScoringEnabled", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (BOOL)clientSideEngagementBoostEnabled
{
  if (NFInternalBuild())
  {
    v3 = NewsCoreUserDefaults();
    v4 = [v3 integerForKey:@"news.features.clientSideEngagementBoost"];

    if (v4 == 1)
    {
      return 1;
    }

    if (v4 == 2)
    {
      return 0;
    }
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(configDictionary, @"clientSideEngagementBoostEnabled", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (BOOL)fallbackToReverseChronSorting
{
  if (NFInternalBuild())
  {
    v3 = NewsCoreUserDefaults();
    v4 = [v3 integerForKey:@"news.features.fallbackToReverseChronSorting"];

    if (v4 == 1)
    {
      return 1;
    }

    if (v4 == 2)
    {
      return 0;
    }
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(configDictionary, @"fallbackToReverseChronSorting", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (id)personalizationTreatment
{
  if (self)
  {
    self = self->_lazyPersonalizationTreatment;
  }

  return [(FCNewsAppConfig *)self value];
}

- (BOOL)statelessPersonalizationEnabled
{
  if (NFInternalBuild())
  {
    v3 = NewsCoreUserDefaults();
    v4 = [v3 integerForKey:@"news.features.statelessPersonalization"];

    if (v4 == 1)
    {
      return 1;
    }

    if (v4 == 2)
    {
      return 0;
    }
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(configDictionary, @"statelessPersonalizationEnabled2", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (BOOL)statelessPersonalizationAllowedForExtensions
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"statelessPersonalizationAllowedForExtensions", 1);

  return v3;
}

- (FCPersonalizationPublisherDampeningConfig)publisherDampeningConfig
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"publisherDampeningConfig", 0);

  v4 = [[FCPersonalizationPublisherDampeningConfig alloc] initWithConfig:v3];

  return v4;
}

- (FCPersonalizationPublisherDampeningConfig)shadowPublisherDampeningConfig
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"shadowPublisherDampeningConfig", 0);

  if (v4)
  {
    publisherDampeningConfig = [[FCPersonalizationPublisherDampeningConfig alloc] initWithConfig:v4];
  }

  else
  {
    publisherDampeningConfig = [(FCNewsAppConfig *)self publisherDampeningConfig];
  }

  v6 = publisherDampeningConfig;

  return v6;
}

- (FCStatelessPersonalizationPublisherFavorability)statelessPersonalizationPublisherFavorability
{
  v3 = [FCStatelessPersonalizationPublisherFavorability alloc];
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v5 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"statelessPersonalizationPublisherFavorability", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [(FCStatelessPersonalizationPublisherFavorability *)v3 initWithArray:v7];

  return v8;
}

- (BOOL)personalizationAnalyticsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"personalizationAnalytics", 0);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.features.personalizationAnalytics"];

    if (v5 == 2)
    {
      return 0;
    }

    if (v5 == 1)
    {
      return 1;
    }
  }

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)enableTabiTagScoring
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"enableTabiTagScoring", 0);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.features.enableTabiTagScoring"];

    if (v5 == 1)
    {
      return 1;
    }

    else if (v5 == 2)
    {
      return 0;
    }
  }

  return v3;
}

- (BOOL)enableTabiCohortMemberships
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"enableTabiCohortMemberships", 0);

  return v3;
}

- (BOOL)aggregatesInAppXavierEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"aggregatesInXavierEnabled", 1);

  return v3;
}

- (BOOL)liveActivitiesEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"liveActivitiesEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)useSearchInArticle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"useSearchInArticleEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSArray)internalPersonalizationRequestsToCollect
{
  if (!NFInternalBuild())
  {
    goto LABEL_5;
  }

  v3 = NewsCoreUserDefaults();
  v4 = [v3 valueForKey:@"news.news_personalization.collect_internal_personalization_requests"];

  if (!v4 || (NewsCoreUserDefaults(), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 BOOLForKey:@"news.news_personalization.collect_internal_personalization_requests"], v5, v6))
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v8 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"internalPersonalizationRequestsToCollect", &unk_1F2E6F8D0);
  }

  else
  {
LABEL_5:
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (NSDictionary)financeURLAnalyticsAllowLists
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"financeURLAnalyticsAllowLists", 0);

  return v3;
}

- (BOOL)enableNewsPersonalizationAutoFavorites
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"enableNewsPersonalizationAutoFavorites", 0);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.features.enableNewsPersonalizationAutoFavorites"];

    if (v5 == 1)
    {
      return 1;
    }

    else if (v5 == 2)
    {
      return 0;
    }
  }

  return v3;
}

- (int64_t)subscriptionsGlobalMeteredCount
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"subscriptionsGlobalMeteredCount", 30);

  return v3;
}

- (BOOL)smarterMessagingEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"smarterMessagingEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)useNotificationsV2
{
  if (NFInternalBuild())
  {
    v3 = NewsCoreUserDefaults();
    v4 = [v3 integerForKey:@"news.features.useNotificationsV2"];

    if (v4 == 1)
    {
      return 1;
    }

    if (v4 == 2)
    {
      return 0;
    }
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(configDictionary, @"useNotificationsV2EnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (FCSmarterMessagingConfig)smarterMessagingConfig
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"smarterMessagingConfig", 0);

  v4 = [[FCSmarterMessagingConfig alloc] initWithDictionary:v3];

  return v4;
}

- (int64_t)stateRestorationAllowedTimeWindow
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"news.demo.allow_long_state_restoration"];

  if (v4)
  {
    return 86400;
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(configDictionary, @"stateRestorationAllowedTimeWindow", 7200);

  return v7;
}

- (NSString)todayFeedEditionConfigJSON
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"todayFeedEditionConfigJson", 0);

  return v3;
}

- (BOOL)foregroundHeartbeatEventEnabled
{
  if (NFInternalBuild())
  {
    v3 = NewsCoreUserDefaults();
    v4 = [v3 integerForKey:@"news.features.foregroundHeartbeatEventEnabled"];

    if (v4 == 1)
    {
      return 1;
    }

    if (v4 == 2)
    {
      return 0;
    }
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(configDictionary, @"foregroundHeartbeatEventEnabled2", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (BOOL)foregroundHeartbeatEventShouldUseQueue
{
  if (NFInternalBuild() && (NewsCoreUserDefaults(), v3 = objc_claimAutoreleasedReturnValue(), [v3 objectForKey:@"news.features.foregroundHeartbeatEventShouldUseQueue"], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    configDictionary = NewsCoreUserDefaults();
    v6 = [configDictionary BOOLForKey:@"news.features.foregroundHeartbeatEventShouldUseQueue"];
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationBoolValue(configDictionary, @"foregroundHeartbeatEventShouldUseQueue", 1);
  }

  v7 = v6;

  return v7;
}

- (int64_t)feedAdScreenfulsToPrefetch
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"feedAdScreenfulsToPrefetch", 3);

  return v3;
}

- (BOOL)useWelcomeSeries
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"useWelcomeSeriesEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)feedDifferentiationModeEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"feedDifferentiationModeEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isTodaySponsorshipEligible
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"isTodaySponsorshipEligible", 1);

  return v3;
}

- (BOOL)adSponsorshipsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"adSponsorshipsEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)appReviewRequestEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"appReviewRequestEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (int64_t)newsletterSubscriptionType
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"newsletterConfig", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"newsletterSubscriptionType", 2);
  return v4;
}

- (NSString)personalizationBundleIdMappingResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"personalizationBundleIdMappingResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"personalizationBundleIdMappingResourceId", 0);
  }

  return v6;
}

- (NSString)personalizationUrlMappingResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"personalizationUrlMappingResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"personalizationUrlMappingResourceId", 0);
  }

  return v6;
}

- (NSString)personalizationWhitelistResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"personalizationWhitelistResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"personalizationWhitelistResourceId", 0);
  }

  return v6;
}

- (NSString)personalizationFavorabilityResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"personalizationPublisherFavorabilityScoresResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"personalizationPublisherFavorabilityScoresResourceId", 0);
  }

  return v6;
}

- (NSArray)topStoriesPublishDates
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"topStoriesPublishTimeIntervals", 0);

  v4 = [v3 fc_arrayByTransformingWithBlock:&__block_literal_global_2301];

  return v4;
}

- (BOOL)configurableOffersEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"configurableOffersEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSString)configurableOffersMappingResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"configurableOffersMappingResourceId", @"configuration-configurable-offers-mapping-143441-en");

  return v3;
}

- (NSArray)deprecatedSportsTopicTagIds
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationArrayValueWithDefaultValue(v3, @"deprecatedSportsTopicTagIds", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (NSString)foodHubTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"foodHubTagId", 0);

  return v3;
}

- (NSString)recipeCatalogTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipeCatalogTagId", 0);

  return v3;
}

- (int64_t)articleRapidUpdatesTimeout
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"articleRapidUpdatesTimeout", 21600);

  return v3;
}

- (BOOL)adInstrumentationEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"adInstrumentationEnabled", 0);

  return v3;
}

- (FCOfflineDownloadsConfiguration)offlineDownloadsConfig
{
  v3 = NewsCoreUserDefaults();
  if ([v3 BOOLForKey:@"optimized_storage_enabled"])
  {
    [(FCNewsAppConfig *)self offlineDownloadsConfigOptimized];
  }

  else
  {
    [(FCNewsAppConfig *)self offlineDownloadsConfigDefault];
  }
  v4 = ;

  return v4;
}

- (int64_t)bestOfferRequestTimeoutDurationInSeconds
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"bestOfferRequestTimeoutDurationInSeconds", 5);

  return v3;
}

- (FCNewsAppConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNewsAppConfig init]";
    v10 = 2080;
    v11 = "FCNewsAppConfig.m";
    v12 = 1024;
    v13 = 156;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNewsAppConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)defaultConfigurationForStoreFrontID:(uint64_t)d
{
  v2 = a2;
  objc_opt_self();
  v3 = [[FCNewsAppConfig alloc] initWithConfigDictionary:v2 storefrontID:0 languageConfigDictionary:?];

  return v3;
}

- (void)initWithConfigDictionary:(void *)dictionary storefrontID:(void *)d languageConfigDictionary:
{
  v339 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dictionaryCopy = dictionary;
  dCopy = d;
  if (!self || (v328.receiver = self, v328.super_class = FCNewsAppConfig, (v10 = objc_msgSendSuper2(&v328, sel_init)) == 0))
  {
    v50 = 0;
    goto LABEL_115;
  }

  v11 = v10;
  v12 = [v7 copy];
  v13 = v11[2];
  v11[2] = v12;

  v14 = [dictionaryCopy copy];
  v15 = v11[6];
  v11[6] = v14;

  v297 = dCopy;
  v16 = [dCopy copy];
  v17 = v11[7];
  v11[7] = v16;

  v18 = objc_alloc(MEMORY[0x1E69B68D8]);
  v326[0] = MEMORY[0x1E69E9820];
  v326[1] = 3221225472;
  v326[2] = __82__FCNewsAppConfig_initWithConfigDictionary_storefrontID_languageConfigDictionary___block_invoke;
  v326[3] = &unk_1E7C36F98;
  v327 = v7;
  v19 = [v18 initWithConstructor:v326];
  v20 = v11[52];
  v11[52] = v19;

  languageConfigDictionary = [v11 languageConfigDictionary];
  v22 = FCAppConfigurationDictionaryValueWithOverride(languageConfigDictionary, @"peopleAlsoReadConfiguration", @"news.news_personalization.people_also_read_config_overrides.enabled", @"news.news_personalization.people_also_read_config_overrides.json");

  v23 = [[FCPeopleAlsoReadConfiguration alloc] initWithDictionary:v22];
  v24 = v11[3];
  v11[3] = v23;

  v298 = v7;
  v25 = dictionaryCopy;
  v26 = [FCOfflineDownloadsConfiguration alloc];
  configDictionary = [v11 configDictionary];
  v28 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"offlineDownloadsConfig", 0);
  v29 = [(FCOfflineDownloadsConfiguration *)v26 initWithDictionary:v28 optimized:0];
  v30 = v11[4];
  v11[4] = v29;

  v31 = [FCOfflineDownloadsConfiguration alloc];
  configDictionary2 = [v11 configDictionary];
  v33 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary2, @"offlineDownloadsConfigOptimized", 0);
  v34 = [(FCOfflineDownloadsConfiguration *)v31 initWithDictionary:v33 optimized:1];
  v35 = v11[5];
  v11[5] = v34;

  configDictionary3 = [v11 configDictionary];
  v37 = FCAppConfigurationIntegerValue(configDictionary3, @"enabledPrivateDataEncryptionLevel", 896);

  configDictionary4 = [v11 configDictionary];
  v39 = FCAppConfigurationIntegerValue(configDictionary4, @"privateDataMigrationCleanupLevel", 7);

  configDictionary5 = [v11 configDictionary];
  v41 = FCAppConfigurationIntegerValue(configDictionary5, @"privateDataSecureSubscriptionsLevel", 7);

  configDictionary6 = [v11 configDictionary];
  v43 = FCAppConfigurationIntegerValue(configDictionary6, @"privateDataSecureSubscriptionsCleanupLevel", 0xFFFFFFFFLL);

  configDictionary7 = [v11 configDictionary];
  v45 = FCAppConfigurationIntegerValue(configDictionary7, @"privateDataEncryptionRequiredLevel", 7);

  configDictionary8 = [v11 configDictionary];
  v47 = FCAppConfigurationIntegerValue(configDictionary8, @"privateDataMigrateToV4Level3", 0);

  configDictionary9 = [v11 configDictionary];
  v49 = FCAppConfigurationIntegerValue(configDictionary9, @"privateDataCleanupToV4Level3", 0);

  v299 = v25;
  v300 = v11;
  if (NFInternalBuild())
  {
    *(v11 + 8) = (v37 & 0x480) != 0;
    *(v11 + 9) = (v37 & 0x80) != 0;
    *(v11 + 10) = v39 & 1;
    *(v11 + 11) = v41 & 1;
  }

  else if (NFSeedBuild())
  {
    *(v11 + 8) = (v37 & 0x900) != 0;
    *(v11 + 9) = HIBYTE(v37) & 1;
    *(v11 + 10) = (v39 & 2) != 0;
    *(v11 + 11) = (v41 & 2) != 0;
    v45 >>= 1;
  }

  else
  {
    *(v11 + 8) = (v37 & 0x1200) != 0;
    *(v11 + 9) = (v37 & 0x200) != 0;
    *(v11 + 10) = (v39 & 4) != 0;
    *(v11 + 11) = (v41 & 4) != 0;
    v45 >>= 2;
  }

  *(v11 + 13) = v45 & 1;
  *(v11 + 12) = [FCFeatureEnablementChecker enabledForCurrentLevel:v43];
  *(v11 + 14) = [FCFeatureEnablementChecker enabledForCurrentLevel:v47];
  *(v11 + 15) = [FCFeatureEnablementChecker enabledForCurrentLevel:v49];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v304 = objc_opt_new();
  configDictionary10 = [v11 configDictionary];
  v52 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary10, @"endpointConfigs", 0);

  v331 = 0u;
  v332 = 0u;
  v329 = 0u;
  v330 = 0u;
  obj = v52;
  v305 = [obj countByEnumeratingWithState:&v329 objects:v336 count:16];
  if (v305)
  {
    v302 = *v330;
    do
    {
      v53 = 0;
      do
      {
        if (*v330 != v302)
        {
          objc_enumerationMutation(obj);
        }

        v314 = v53;
        v54 = *(*(&v329 + 1) + 8 * v53);
        v313 = [FCEndpointConfiguration alloc];
        v322 = FCAppConfigurationStringValue(v54, @"clientApiBaseUrl", 0);
        log = FCAppConfigurationStringValue(v54, @"newsNotificationsBaseUrl", 0);
        v323 = FCAppConfigurationStringValue(v54, @"staticAssetBaseUrl", 0);
        v312 = FCAppConfigurationStringValue(v54, @"remoteDataSourceBaseUrl", 0);
        v311 = FCAppConfigurationStringValue(v54, @"newsletterApiBaseUrl", 0);
        v310 = FCAppConfigurationStringValue(v54, @"appAnalyticsEndpointUrl", 0);
        v321 = FCAppConfigurationStringValue(v54, @"fairPlayEndpointUrl", 0);
        v320 = FCAppConfigurationStringValue(v54, @"searchApiBaseUrl", 0);
        v319 = FCAppConfigurationStringValue(v54, @"puzzlesArchiveApiBaseUrl", 0);
        v318 = FCAppConfigurationStringValue(v54, @"appAnalyticsNotificationReceiptBaseUrl", 0);
        v317 = FCAppConfigurationStringValue(v54, @"authTokenApiBaseUrl", 0);
        v316 = FCAppConfigurationStringValue(v54, @"sportsDataVisualizationApiBaseUrl", 0);
        v315 = FCAppConfigurationStringValue(v54, @"fineGrainedNewsletterSubscriptionBaseUrl", 0);
        v309 = FCAppConfigurationStringValue(v54, @"appAnalyticsSportsEventsEndpointUrl", 0);
        v308 = FCAppConfigurationStringValue(v54, @"appHealthEventsEndpointUrl", 0);
        v307 = FCAppConfigurationStringValue(v54, @"appHeartbeatEventsEndpointUrl", 0);
        v55 = FCAppConfigurationStringValue(v54, @"ckOrderFeedBaseUrl", 0);
        v306 = FCAppConfigurationStringValue(v54, @"ckMultiFetchBaseUrl", 0);
        v56 = FCAppConfigurationStringValue(v54, @"ckRecordFetchBaseUrl", 0);
        v57 = FCAppConfigurationStringValue(v54, @"ckEdgeCachedOrderFeedBaseUrl", 0);
        v58 = FCAppConfigurationStringValue(v54, @"ckEdgeCachedMultiFetchBaseUrl", 0);
        v59 = FCAppConfigurationStringValue(v54, @"smarterFetchBaseUrl", 0);
        v60 = [(FCEndpointConfiguration *)v313 initWithClientAPIBaseURLString:v322 notificationsBaseURLString:log staticAssetBaseURLString:v323 remoteDataSourceBaseURLString:v312 newsletterAPIBaseURLString:v311 appAnalyticsBaseURLString:v310 fairPlayBaseURLString:v321 searchAPIBaseURLString:v320 puzzlesArchiveAPIBaseURLString:v319 appAnalyticsNotificationReceiptBaseURLString:v318 authTokenAPIBaseURLString:v317 sportsDataVisualizationAPIBaseURLString:v316 fineGrainedNewsletterSubscriptionBaseURLString:v315 appAnalyticsSportsEventsBaseURLString:v309 appAnalyticsAppHealthBaseURLString:v308 appAnalyticsAppHeartbeatBaseURLString:v307 ckOrderFeedBaseURLString:v55 ckMultiFetchBaseURLString:v306 ckRecordFetchBaseURLString:v56 ckEdgeCachedOrderFeedBaseURLString:v57 ckEdgeCachedMultiFetchBaseURLString:v58 smarterFetchBaseURLString:v59];

        v61 = FCAppConfigurationStringValue(v54, @"environment", 0);
        v62 = FCEndpointEnvironmentForEnvironment(v61);

        v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v62];
        [dictionary setObject:v60 forKey:v63];
        v64 = FCAppConfigurationLog;
        if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_INFO))
        {
          loga = v64;
          clientAPIBaseURLString = [(FCEndpointConfiguration *)v60 clientAPIBaseURLString];
          notificationsBaseURLString = [(FCEndpointConfiguration *)v60 notificationsBaseURLString];
          staticAssetBaseURLString = [(FCEndpointConfiguration *)v60 staticAssetBaseURLString];
          remoteDataSourceBaseURLString = [(FCEndpointConfiguration *)v60 remoteDataSourceBaseURLString];
          newsletterAPIBaseURLString = [(FCEndpointConfiguration *)v60 newsletterAPIBaseURLString];
          [(FCEndpointConfiguration *)v60 appAnalyticsAppHeartbeatBaseURLString];
          v71 = v70 = v60;
          *buf = 134219522;
          *&buf[4] = v62;
          *&buf[12] = 2112;
          *&buf[14] = clientAPIBaseURLString;
          *&buf[22] = 2112;
          *&buf[24] = notificationsBaseURLString;
          LOWORD(v334[0]) = 2112;
          *(v334 + 2) = staticAssetBaseURLString;
          HIWORD(v334[2]) = 2112;
          *&v334[3] = remoteDataSourceBaseURLString;
          LOWORD(v334[5]) = 2112;
          *(&v334[5] + 2) = newsletterAPIBaseURLString;
          HIWORD(v334[7]) = 2112;
          v335 = v71;
          _os_log_impl(&dword_1B63EF000, loga, OS_LOG_TYPE_INFO, "endpointConfig - environment: %ld, clientAPIURL: %@, notificationsURL: %@, staticAssetURL: %@, remoteDataSourcesURL: %@, newsletterURL: %@, appHeartbeatUrl: %@", buf, 0x48u);

          v60 = v70;
        }

        v72 = FCAppConfigurationStringValue(v54, @"analyticsEndpointUrlsJson", 0);
        v73 = FCAppConfigurationStringValue(v54, @"analyticsEnvelopeContentTypePropJson", 0);
        v74 = FCAnalyticsEnvelopeContentTypeConfigsByContentType(v72, v73);
        [v304 setObject:v74 forKeyedSubscript:v63];

        v53 = v314 + 1;
      }

      while (v305 != v314 + 1);
      v305 = [obj countByEnumeratingWithState:&v329 objects:v336 count:16];
    }

    while (v305);
  }

  v75 = *(v300 + 9);
  *(v300 + 9) = dictionary;
  v76 = dictionary;

  v77 = *(v300 + 53);
  *(v300 + 53) = v304;

  languageConfigDictionary2 = [v300 languageConfigDictionary];
  v79 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary2, @"preSubscribedNotificationsChannelIds", 0);

  languageConfigDictionary3 = [v300 languageConfigDictionary];
  v81 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary3, @"recommendedNotificationChannels", 0);

  v82 = [v81 fc_arrayByTransformingWithBlock:&__block_literal_global_172];
  v83 = [[FCNotificationsConfiguration alloc] initWithPresubscribedChannelIDs:v79 recommendedNotificationChannelIDs:v82];
  v84 = *(v300 + 10);
  *(v300 + 10) = v83;

  languageConfigDictionary4 = [v300 languageConfigDictionary];
  v86 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary4, @"topStoriesConfig", 0);

  v87 = [[FCTopStoriesConfiguration alloc] initWithConfigDictionary:v86];
  v88 = *(v300 + 11);
  *(v300 + 11) = v87;

  configDictionary11 = [v300 configDictionary];
  v90 = FCAppConfigurationStringValue(configDictionary11, @"forYouNonPersonalizedGroupsOrder", 0);

  v91 = [[FCForYouGroupsConfiguration alloc] initWithJSONConfiguration:v90];
  v92 = *(v300 + 12);
  *(v300 + 12) = v91;

  v93 = v299;
  languageConfigDictionary5 = [v300 languageConfigDictionary];
  v95 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary5, @"puzzlesConfig", 0);

  *v336 = @"143441";
  *&v336[8] = @"143455";
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:2];
  v97 = [[FCPuzzlesConfiguration alloc] initWithConfigDictionary:v95 storefrontID:v93 defaultSupportedStorefronts:v96];

  v98 = *(v300 + 13);
  *(v300 + 13) = v97;

  configDictionary12 = [v300 configDictionary];
  v100 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary12, @"iadConfig", 0);

  v101 = [[FCIAdConfiguration alloc] initWithConfigDictionary:v100];
  v102 = *(v300 + 14);
  *(v300 + 14) = v101;

  configDictionary13 = [v300 configDictionary];
  v104 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary13, @"prefetchConfig", 0);

  v105 = [[FCPrefetchConfiguration alloc] initWithConfigDictionary:v104];
  v106 = *(v300 + 15);
  *(v300 + 15) = v105;

  languageConfigDictionary6 = [v300 languageConfigDictionary];
  v108 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary6, @"shareVideoPlayerConfig", 0);

  v109 = objc_opt_new();
  v110 = FCAppConfigurationStringValue(v108, @"discoverMoreVideosTitle", 0);
  [v109 setTitle:v110];

  v111 = FCAppConfigurationStringValue(v108, @"discoverMoreVideosSubtitle", 0);
  [v109 setSubtitle:v111];

  v112 = FCAppConfigurationStringValue(v108, @"discoverMoreVideosUrl", 0);
  [v109 setActionURLString:v112];

  v113 = *(v300 + 17);
  *(v300 + 17) = v109;

  configDictionary14 = [v300 configDictionary];
  v115 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary14, @"widgetConfig2", 0);

  v116 = [[FCWidgetConfig alloc] initWithConfigDictionary:v115];
  v117 = *(v300 + 54);
  *(v300 + 54) = v116;

  languageConfigDictionary7 = [v300 languageConfigDictionary];
  v119 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary7, @"channelPaywallConfigurations", 0);

  v120 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v119, "count")}];
  memset(buf, 0, sizeof(buf));
  memset(v334, 0, sizeof(v334));
  v121 = v119;
  v122 = [v121 countByEnumeratingWithState:buf objects:v336 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = **&buf[16];
    do
    {
      for (i = 0; i != v123; ++i)
      {
        if (**&buf[16] != v124)
        {
          objc_enumerationMutation(v121);
        }

        v126 = *(*&buf[8] + 8 * i);
        v127 = [FCChannelPaywallConfig alloc];
        v128 = [v121 objectForKeyedSubscript:v126];
        v129 = [(FCChannelPaywallConfig *)v127 initWithChannelID:v126 configDictionary:v128];

        [v120 setObject:v129 forKeyedSubscript:v126];
      }

      v123 = [v121 countByEnumeratingWithState:buf objects:v336 count:16];
    }

    while (v123);
  }

  v130 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v120];
  v131 = *(v300 + 19);
  *(v300 + 19) = v130;

  languageConfigDictionary8 = [v300 languageConfigDictionary];
  v133 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary8, @"channelUpsellConfigurations2", 0);

  v134 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v133, "count")}];
  memset(buf, 0, sizeof(buf));
  memset(v334, 0, sizeof(v334));
  v135 = v133;
  v136 = [v135 countByEnumeratingWithState:buf objects:v336 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = **&buf[16];
    do
    {
      for (j = 0; j != v137; ++j)
      {
        if (**&buf[16] != v138)
        {
          objc_enumerationMutation(v135);
        }

        v140 = *(*&buf[8] + 8 * j);
        v141 = [FCChannelUpsellConfig alloc];
        v142 = [v135 objectForKeyedSubscript:v140];
        v143 = [(FCChannelUpsellConfig *)v141 initWithChannelID:v140 configDictionary:v142];

        [v134 setObject:v143 forKeyedSubscript:v140];
      }

      v137 = [v135 countByEnumeratingWithState:buf objects:v336 count:16];
    }

    while (v137);
  }

  v144 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v134];
  v145 = *(v300 + 18);
  *(v300 + 18) = v144;

  languageConfigDictionary9 = [v300 languageConfigDictionary];
  v147 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary9, @"sportsUpsellConfiguration", 0);

  v148 = [[FCSportsUpsellConfig alloc] initWithConfigDictionary:v147];
  v149 = *(v300 + 20);
  *(v300 + 20) = v148;

  languageConfigDictionary10 = [v300 languageConfigDictionary];
  v151 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary10, @"locationSharingUpsellConfiguration", 0);

  v152 = [[FCLocationSharingUpsellConfig alloc] initWithConfigDictionary:v151];
  v153 = *(v300 + 21);
  *(v300 + 21) = v152;

  languageConfigDictionary11 = [v300 languageConfigDictionary];
  v155 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary11, @"paidBundleViaOfferConfiguration", 0);

  v156 = [[FCPaidBundleViaOfferConfig alloc] initWithConfigDictionary:v155];
  v157 = *(v300 + 22);
  *(v300 + 22) = v156;

  v158 = v93;
  languageConfigDictionary12 = [v300 languageConfigDictionary];
  v160 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary12, @"paidBundleConfig", 0);

  v161 = [FCPaidBundleConfiguration alloc];
  localizedStorefrontID = [(FCNewsAppConfig *)v300 localizedStorefrontID];
  *v336 = @"143441";
  *&v336[8] = @"143455";
  *&v336[16] = @"143444";
  v337 = @"143460";
  v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:4];
  v164 = [(FCPaidBundleConfiguration *)v161 initWithConfigDictionary:v160 storefrontID:v158 localizedStorefrontID:localizedStorefrontID defaultSupportedStoreFronts:v163];

  v165 = *(v300 + 23);
  *(v300 + 23) = v164;

  if (NFInternalBuild())
  {
    v166 = NewsCoreUserDefaults();
    if ([v166 integerForKey:@"news.features.statelessPersonalization"] == 1)
    {
      configDictionary15 = [v300 configDictionary];
      v168 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary15, @"newsPersonalizationConfiguration", 0);

      if (!v168)
      {
        v169 = FCStatelessPersonalizationLog;
        if (os_log_type_enabled(FCStatelessPersonalizationLog, OS_LOG_TYPE_DEFAULT))
        {
          *v336 = 0;
          _os_log_impl(&dword_1B63EF000, v169, OS_LOG_TYPE_DEFAULT, "Stateless Personalization Enabled, but not personalization configuration was specified, falling back to default", v336, 2u);
        }

        v170 = +[FCNewsPersonalizationConfiguration defaultConfiguration];
        v171 = v300;
        configDictionary16 = *(v300 + 42);
        *(v300 + 42) = v170;
        goto LABEL_42;
      }
    }

    else
    {
    }
  }

  v173 = FCStatelessPersonalizationLog;
  if (os_log_type_enabled(FCStatelessPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v336 = 0;
    _os_log_impl(&dword_1B63EF000, v173, OS_LOG_TYPE_DEFAULT, "Loading news personalization configuration", v336, 2u);
  }

  v174 = [FCNewsPersonalizationConfiguration alloc];
  v171 = v300;
  configDictionary16 = [v300 configDictionary];
  v175 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary16, @"newsPersonalizationConfiguration", 0);
  v176 = [(FCNewsPersonalizationConfiguration *)v174 initWithDictionary:v175];
  v177 = *(v300 + 42);
  *(v300 + 42) = v176;

LABEL_42:
  if (!NFInternalBuild())
  {
    goto LABEL_52;
  }

  v178 = NewsCoreUserDefaults();
  if ([(FCNewsTabiConfiguration *)v178 BOOLForKey:@"news.news_personalization.tabi.allow_tabi_configuration_from_user_defaults"])
  {
    v179 = NewsCoreUserDefaults();
    v180 = [v179 stringForKey:@"news.news_personalization.tabi.custom_tabi_configuration"];

    if (!v180)
    {
      goto LABEL_52;
    }

    v181 = NewsCoreUserDefaults();
    v178 = [v181 stringForKey:@"news.news_personalization.tabi.custom_tabi_configuration"];

    v182 = FCTabiConfigurationLog;
    if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      *v336 = 138543362;
      *&v336[4] = v178;
      _os_log_impl(&dword_1B63EF000, v182, OS_LOG_TYPE_DEFAULT, "Found tabi config override enabled, specified as %{public}@", v336, 0xCu);
    }

    v183 = MEMORY[0x1E696ACB0];
    v184 = [(FCNewsTabiConfiguration *)v178 dataUsingEncoding:4];
    *buf = 0;
    v185 = [v183 JSONObjectWithData:v184 options:0 error:buf];
    v186 = *buf;

    if (v186)
    {
      v187 = FCTabiConfigurationLog;
      if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
      {
        v295 = v187;
        localizedDescription = [v186 localizedDescription];
        *v336 = 138543362;
        *&v336[4] = localizedDescription;
        _os_log_error_impl(&dword_1B63EF000, v295, OS_LOG_TYPE_ERROR, "Failed to decode tabi config into Dictionary, proceeding as if no override is in place %{public}@", v336, 0xCu);
      }
    }

    else
    {
      v191 = [[FCNewsTabiConfiguration alloc] initWithDictionary:v185];
      packageAssetIDs = [(FCNewsTabiConfiguration *)v191 packageAssetIDs];
      v285 = [packageAssetIDs count];

      if (v285)
      {
        v171 = v300;
        objc_storeStrong(v300 + 43, v191);
        v286 = FCTabiConfigurationLog;
        if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_DEFAULT))
        {
          v287 = v286;
          version = [(FCNewsTabiConfiguration *)v191 version];
          *v336 = 138543362;
          *&v336[4] = version;
          _os_log_impl(&dword_1B63EF000, v287, OS_LOG_TYPE_DEFAULT, "Loaded user defaults tabi configuration version %{public}@", v336, 0xCu);

          v286 = FCTabiConfigurationLog;
        }

        if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
        {
          v289 = *(v300 + 43);
          *v336 = 138543362;
          *&v336[4] = v289;
          _os_log_impl(&dword_1B63EF000, v286, OS_LOG_TYPE_DEFAULT, "Full configuration %{public}@", v336, 0xCu);
        }

        goto LABEL_67;
      }

      v294 = FCTabiConfigurationLog;
      if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
      {
        *v336 = 0;
        _os_log_error_impl(&dword_1B63EF000, v294, OS_LOG_TYPE_ERROR, "Defaults specified tabi configuration didn't specify any packageAssetIDs, proceeding as if no override is in place", v336, 2u);
      }

      v171 = v300;
    }
  }

LABEL_52:
  languageConfigDictionary13 = [v171 languageConfigDictionary];
  v178 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary13, @"newsTabiConfigurationV2", 0);

  languageConfigDictionary14 = [v171 languageConfigDictionary];
  v185 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary14, @"newsTabiConfigurationDawnburstD", 0);

  languageConfigDictionary15 = [v171 languageConfigDictionary];
  v191 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary15, @"newsTabiConfigurationDawnburstB", 0);

  if (v178)
  {
    v192 = FCTabiConfigurationLog;
    if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      *v336 = 0;
      _os_log_impl(&dword_1B63EF000, v192, OS_LOG_TYPE_DEFAULT, "Found V2 tabi configuration", v336, 2u);
    }

    v193 = [FCNewsTabiConfiguration alloc];
    v194 = v178;
  }

  else if (v185)
  {
    v195 = FCTabiConfigurationLog;
    if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      *v336 = 0;
      _os_log_impl(&dword_1B63EF000, v195, OS_LOG_TYPE_DEFAULT, "Found DawnburstD tabi configuration", v336, 2u);
    }

    v193 = [FCNewsTabiConfiguration alloc];
    v194 = v185;
  }

  else
  {
    v196 = FCTabiConfigurationLog;
    v197 = os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_DEFAULT);
    if (!v191)
    {
      if (v197)
      {
        *v336 = 0;
        _os_log_impl(&dword_1B63EF000, v196, OS_LOG_TYPE_DEFAULT, "Using baseline tabi configuration", v336, 2u);
      }

      v290 = [FCNewsTabiConfiguration alloc];
      languageConfigDictionary16 = [v171 languageConfigDictionary];
      v291 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary16, @"newsTabiConfiguration", MEMORY[0x1E695E0F8]);
      v292 = [(FCNewsTabiConfiguration *)v290 initWithDictionary:v291];
      v293 = *(v300 + 43);
      *(v300 + 43) = v292;

      v171 = v300;
      goto LABEL_65;
    }

    if (v197)
    {
      *v336 = 0;
      _os_log_impl(&dword_1B63EF000, v196, OS_LOG_TYPE_DEFAULT, "Found DawnburstB tabi configuration", v336, 2u);
    }

    v193 = [FCNewsTabiConfiguration alloc];
    v194 = v191;
  }

  v198 = [(FCNewsTabiConfiguration *)v193 initWithDictionary:v194];
  languageConfigDictionary16 = v171[43];
  v171[43] = v198;
LABEL_65:

  v200 = FCAppConfigurationLog;
  if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
  {
    v201 = v171[43];
    v202 = v200;
    version2 = [v201 version];
    *v336 = 138543362;
    *&v336[4] = version2;
    _os_log_impl(&dword_1B63EF000, v202, OS_LOG_TYPE_DEFAULT, "Loaded tabi configuration version %{public}@", v336, 0xCu);
  }

LABEL_67:

  languageConfigDictionary17 = [v171 languageConfigDictionary];
  v205 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary17, @"channelPickerConfigurations", 0);

  v206 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v205, "count")}];
  memset(buf, 0, sizeof(buf));
  memset(v334, 0, sizeof(v334));
  v207 = v205;
  v208 = [v207 countByEnumeratingWithState:buf objects:v336 count:16];
  if (v208)
  {
    v209 = v208;
    v210 = **&buf[16];
    do
    {
      for (k = 0; k != v209; ++k)
      {
        if (**&buf[16] != v210)
        {
          objc_enumerationMutation(v207);
        }

        v212 = *(*&buf[8] + 8 * k);
        v213 = [FCChannelPickerConfig alloc];
        v214 = [v207 objectForKeyedSubscript:v212];
        v215 = [(FCChannelPickerConfig *)v213 initWithPickerID:v212 configDictionary:v214];

        [v206 setObject:v215 forKeyedSubscript:v212];
      }

      v209 = [v207 countByEnumeratingWithState:buf objects:v336 count:16];
    }

    while (v209);
  }

  v216 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v206];
  v217 = *(v300 + 48);
  *(v300 + 48) = v216;

  configDictionary17 = [v300 configDictionary];
  v219 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary17, @"launchPresentationConfigV2", 0);

  v220 = [[FCLaunchPresentationConfig alloc] initWithConfigDictionary:v219];
  v221 = *(v300 + 49);
  *(v300 + 49) = v220;

  languageConfigDictionary18 = [v300 languageConfigDictionary];
  v223 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary18, @"campaignReferralConfigurations", 0);

  v224 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v223, "count")}];
  memset(buf, 0, sizeof(buf));
  memset(v334, 0, sizeof(v334));
  v225 = v223;
  v226 = [v225 countByEnumeratingWithState:buf objects:v336 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = **&buf[16];
    do
    {
      for (m = 0; m != v227; ++m)
      {
        if (**&buf[16] != v228)
        {
          objc_enumerationMutation(v225);
        }

        v230 = *(*&buf[8] + 8 * m);
        v231 = [FCCampaignReferralConfig alloc];
        v232 = [v225 objectForKeyedSubscript:v230];
        v233 = [(FCCampaignReferralConfig *)v231 initWithCampaignID:v230 configDictionary:v232];

        [v224 setObject:v233 forKeyedSubscript:v230];
      }

      v227 = [v225 countByEnumeratingWithState:buf objects:v336 count:16];
    }

    while (v227);
  }

  v234 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v224];
  v50 = v300;
  v235 = *(v300 + 50);
  *(v300 + 50) = v234;

  if (NFInternalBuild() && ([v300 configDictionary], v236 = objc_claimAutoreleasedReturnValue(), FCAppConfigurationDictionaryValueWithDefaultValue(v236, @"timesOfDayConfiguration", 0), v237 = objc_claimAutoreleasedReturnValue(), v237, v236, !v237))
  {
    v282 = FCStatelessPersonalizationLog;
    v7 = v298;
    dictionaryCopy = v299;
    dCopy = v297;
    if (os_log_type_enabled(FCStatelessPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *v336 = 0;
      _os_log_impl(&dword_1B63EF000, v282, OS_LOG_TYPE_DEFAULT, "See an internal build with no times of day configuration in the app config, falling back to default", v336, 2u);
    }

    v283 = +[FCTimesOfDayConfiguration defaultConfiguration];
    configDictionary18 = *(v300 + 47);
    *(v300 + 47) = v283;
  }

  else
  {
    v238 = [FCTimesOfDayConfiguration alloc];
    configDictionary18 = [v300 configDictionary];
    v240 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary18, @"timesOfDayConfiguration", 0);
    v241 = [(FCTimesOfDayConfiguration *)v238 initWithDictionary:v240];
    v242 = *(v300 + 47);
    *(v300 + 47) = v241;

    v7 = v298;
    dictionaryCopy = v299;
    dCopy = v297;
  }

  languageConfigDictionary19 = [v300 languageConfigDictionary];
  v244 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary19, @"superfeedConfigOverrides", 0);

  v245 = MEMORY[0x1E695DF20];
  *v336 = MEMORY[0x1E69E9820];
  *&v336[8] = 3221225472;
  *&v336[16] = __48__FCNewsAppConfig__loadSuperfeedConfigOverrides__block_invoke;
  v337 = &unk_1E7C36EC8;
  v338 = v244;
  v246 = v244;
  v247 = [v245 fc_dictionary:v336];
  v248 = *(v300 + 51);
  *(v300 + 51) = v247;

  languageConfigDictionary20 = [v300 languageConfigDictionary];
  v250 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary20, @"autoFavoritesServiceConfiguration", 0);

  if (v250)
  {
    v251 = v250;
    *buf = 0;
    v252 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v251 options:0 error:buf];
    v253 = *buf;
    v254 = FCAutoFavoritesServiceLog;
    if (v253)
    {
      if (os_log_type_enabled(FCAutoFavoritesServiceLog, OS_LOG_TYPE_ERROR))
      {
        *v336 = 138543362;
        *&v336[4] = v253;
        _os_log_error_impl(&dword_1B63EF000, v254, OS_LOG_TYPE_ERROR, "Encountered error when encoding auto favorites service configuration as data, storing empty configuration. Error=%{public}@", v336, 0xCu);
      }

      v255 = [@"{}" dataUsingEncoding:4];
    }

    else
    {
      if (os_log_type_enabled(FCAutoFavoritesServiceLog, OS_LOG_TYPE_DEFAULT))
      {
        v256 = v254;
        v257 = [v252 length];
        *v336 = 134218242;
        *&v336[4] = v257;
        *&v336[12] = 2114;
        *&v336[14] = v251;
        _os_log_impl(&dword_1B63EF000, v256, OS_LOG_TYPE_DEFAULT, "Successfully encoded %lu bytes for auto favorites service configuration %{public}@", v336, 0x16u);
      }

      v255 = v252;
    }

    v258 = *(v300 + 44);
    *(v300 + 44) = v255;

    v50 = v300;
  }

  else
  {
    *v336 = MEMORY[0x1E69E9820];
    *&v336[8] = 3221225472;
    *&v336[16] = __57__FCNewsAppConfig__loadAutoFavoritesServiceConfiguration__block_invoke;
    v337 = &unk_1E7C36EA0;
    v338 = v300;
    __57__FCNewsAppConfig__loadAutoFavoritesServiceConfiguration__block_invoke(v336);
  }

  languageConfigDictionary21 = [v50 languageConfigDictionary];
  v260 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary21, @"notificationScoringServiceConfiguration", 0);

  if (v260)
  {
    v261 = v260;
    *buf = 0;
    v262 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v261 options:0 error:buf];
    v263 = *buf;
    v264 = FCNotificationsLog;
    if (v263)
    {
      if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_ERROR))
      {
        *v336 = 138543362;
        *&v336[4] = v263;
        _os_log_error_impl(&dword_1B63EF000, v264, OS_LOG_TYPE_ERROR, "Encountered error when encoding notification scoring service configuration as data, storing empty configuration. Error=%{public}@", v336, 0xCu);
      }

      v265 = [@"{}" dataUsingEncoding:4];
    }

    else
    {
      if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
      {
        v266 = v264;
        v267 = [v262 length];
        *v336 = 134218242;
        *&v336[4] = v267;
        *&v336[12] = 2114;
        *&v336[14] = v261;
        _os_log_impl(&dword_1B63EF000, v266, OS_LOG_TYPE_DEFAULT, "Successfully encoded %lu bytes for notification scoring service configuration %{public}@", v336, 0x16u);
      }

      v265 = v262;
    }

    v268 = *(v300 + 46);
    *(v300 + 46) = v265;

    v50 = v300;
  }

  else
  {
    *v336 = MEMORY[0x1E69E9820];
    *&v336[8] = 3221225472;
    *&v336[16] = __63__FCNewsAppConfig__loadNotificationScoringServiceConfiguration__block_invoke;
    v337 = &unk_1E7C36EA0;
    v338 = v50;
    __63__FCNewsAppConfig__loadNotificationScoringServiceConfiguration__block_invoke(v336);
  }

  languageConfigDictionary22 = [v50 languageConfigDictionary];
  v270 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary22, @"recipeAutoFavoritesServiceConfiguration", 0);

  if (v270)
  {
    v271 = v270;
    *buf = 0;
    v272 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v271 options:0 error:buf];
    v273 = *buf;
    v274 = FCAutoFavoritesServiceLog;
    if (v273)
    {
      if (os_log_type_enabled(FCAutoFavoritesServiceLog, OS_LOG_TYPE_ERROR))
      {
        *v336 = 138543362;
        *&v336[4] = v273;
        _os_log_error_impl(&dword_1B63EF000, v274, OS_LOG_TYPE_ERROR, "Encountered error when encoding recipe auto favorites service configuration as data, storing empty configuration. Error=%{public}@", v336, 0xCu);
      }

      v275 = [@"{}" dataUsingEncoding:4];
      v276 = *(v300 + 44);
      *(v300 + 44) = v275;
    }

    else
    {
      if (os_log_type_enabled(FCAutoFavoritesServiceLog, OS_LOG_TYPE_DEFAULT))
      {
        v277 = v274;
        v278 = [v272 length];
        *v336 = 134218242;
        *&v336[4] = v278;
        *&v336[12] = 2114;
        *&v336[14] = v271;
        _os_log_impl(&dword_1B63EF000, v277, OS_LOG_TYPE_DEFAULT, "Successfully encoded %lu bytes for recipe auto favorites service configuration %{public}@", v336, 0x16u);
      }

      v279 = v272;
      v276 = *(v300 + 45);
      *(v300 + 45) = v279;
    }

    v50 = v300;
  }

  else
  {
    *v336 = MEMORY[0x1E69E9820];
    *&v336[8] = 3221225472;
    *&v336[16] = __63__FCNewsAppConfig__loadRecipeAutoFavoritesServiceConfiguration__block_invoke;
    v337 = &unk_1E7C36EA0;
    v338 = v50;
    __63__FCNewsAppConfig__loadRecipeAutoFavoritesServiceConfiguration__block_invoke(v336);
  }

LABEL_115:
  v280 = *MEMORY[0x1E69E9840];
  return v50;
}

+ (id)configurationWithData:(void *)data storefrontID:(void *)d preferredLanguageTags:
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a2;
  dataCopy = data;
  dCopy = d;
  objc_opt_self();
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "data"];
    *buf = 136315906;
    v62 = "+[FCNewsAppConfig configurationWithData:storefrontID:preferredLanguageTags:]";
    v63 = 2080;
    v64 = "FCNewsAppConfig.m";
    v65 = 1024;
    v66 = 175;
    v67 = 2114;
    v68 = v41;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "preferredLanguageTags"];
    *buf = 136315906;
    v62 = "+[FCNewsAppConfig configurationWithData:storefrontID:preferredLanguageTags:]";
    v63 = 2080;
    v64 = "FCNewsAppConfig.m";
    v65 = 1024;
    v66 = 176;
    v67 = 2114;
    v68 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (v6 && ([MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v47 = dataCopy;
    v48 = v6;
    v10 = v9;
    v46 = dCopy;
    v11 = dCopy;
    objc_opt_self();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = FCAppConfigurationArrayValueWithDefaultValue(v10, @"languageConfigs", 0);
    v45 = v10;
    v14 = FCAppConfigurationStringValue(v10, @"fallbackLanguageTag", 0);
    lowercaseString = [v14 lowercaseString];

    v44 = v11;
    v43 = [v11 fc_arrayByTransformingWithBlock:&__block_literal_global_27];
    firstObject = [v13 firstObject];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v56 objects:buf count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v57;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v56 + 1) + 8 * i);
          v20 = FCAppConfigurationStringValue(v19, @"languageTag", &stru_1F2DC7DC0);
          lowercaseString2 = [v20 lowercaseString];

          [dictionary setObject:v19 forKeyedSubscript:lowercaseString2];
          v22 = __75__FCNewsAppConfig_languageConfigDictionaryForConfig_preferredLanguageTags___block_invoke_2(lowercaseString2);
          v23 = [dictionary objectForKeyedSubscript:v22];

          if (!v23)
          {
            [dictionary setObject:v19 forKeyedSubscript:v22];
          }

          if ([lowercaseString2 isEqualToString:lowercaseString])
          {
            v24 = v19;

            firstObject = v24;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v56 objects:buf count:16];
      }

      while (v16);
    }

    if ([dictionary count])
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v25 = v43;
      v26 = v43;
      v27 = [v26 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v53;
        while (2)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v53 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v52 + 1) + 8 * j);
            v32 = __75__FCNewsAppConfig_languageConfigDictionaryForConfig_preferredLanguageTags___block_invoke_2(v31);
            v33 = [dictionary objectForKeyedSubscript:v31];
            if (v33 || ([dictionary objectForKeyedSubscript:v32], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v34 = v33;

              goto LABEL_34;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v52 objects:v60 count:16];
          v34 = 0;
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v34 = 0;
      }

LABEL_34:
    }

    else
    {
      v34 = 0;
      v25 = v43;
    }

    if (v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = firstObject;
    }

    v38 = v37;

    v35 = v45;
    v6 = v48;
    dCopy = v46;
    if (v38)
    {
      dataCopy = v47;
      v36 = [[FCNewsAppConfig alloc] initWithConfigDictionary:v45 storefrontID:v47 languageConfigDictionary:v38];
    }

    else
    {
      v36 = 0;
      dataCopy = v47;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v36;
}

FCPersonalizationTreatment *__82__FCNewsAppConfig_initWithConfigDictionary_storefrontID_languageConfigDictionary___block_invoke(uint64_t a1)
{
  v2 = [FCPersonalizationTreatment alloc];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(*(a1 + 32), @"personalizationTreatment", 0);
  v4 = [(FCPersonalizationTreatment *)v2 initWithPersonalizationTreatmentDictionary:v3];

  return v4;
}

id __75__FCNewsAppConfig_languageConfigDictionaryForConfig_preferredLanguageTags___block_invoke_2(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"-"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v1;
  }

  else
  {
    v3 = [v1 substringToIndex:v2];
  }

  v4 = v3;

  return v4;
}

- (int64_t)optimizedStorageAutoEnablementThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"optimizedStorageAutoEnablementThreshold", 3000000000);

  return v3;
}

void __48__FCNewsAppConfig__loadSuperfeedConfigOverrides__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:@"resourceId"];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void __57__FCNewsAppConfig__loadAutoFavoritesServiceConfiguration__block_invoke(uint64_t a1)
{
  v2 = FCAutoFavoritesServiceLog;
  if (os_log_type_enabled(FCAutoFavoritesServiceLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Found nil auto favorites service configuration, storing empty configuration", v6, 2u);
  }

  v3 = [@"{}" dataUsingEncoding:4];
  v4 = *(a1 + 32);
  v5 = *(v4 + 352);
  *(v4 + 352) = v3;
}

void __63__FCNewsAppConfig__loadNotificationScoringServiceConfiguration__block_invoke(uint64_t a1)
{
  v2 = FCAutoFavoritesServiceLog;
  if (os_log_type_enabled(FCAutoFavoritesServiceLog, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Found nil notification scoring service configuration, storing empty configuration", v6, 2u);
  }

  v3 = [@"{}" dataUsingEncoding:4];
  v4 = *(a1 + 32);
  v5 = *(v4 + 368);
  *(v4 + 368) = v3;
}

- (NSData)delayedNotificationSchedulerConfigurationData
{
  v20 = *MEMORY[0x1E69E9840];
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"delayedNotificationSchedulerConfiguration", 0);

  if (v3)
  {
    v4 = v3;
    v15 = 0;
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v15];
    v6 = v15;
    v7 = FCNotificationsLog;
    if (v6)
    {
      if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Encountered error when encoding delayed notification scheduler configuration as data, storing empty configuration. Error=%{public}@", buf, 0xCu);
      }

      v8 = [@"{}" dataUsingEncoding:4];
    }

    else
    {
      if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v7;
        v12 = [v5 length];
        *buf = 134218242;
        v17 = v12;
        v18 = 2114;
        v19 = v4;
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Successfully encoded %lu bytes for delayed notification scheduler configuration %{public}@", buf, 0x16u);
      }

      v8 = v5;
    }

    v10 = v8;
  }

  else
  {
    v9 = FCNotificationsLog;
    if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Found nil delayed notification scheduler configuration, returning empty configuration", buf, 2u);
    }

    v10 = [@"{}" dataUsingEncoding:4];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSData)delayedNotificationVendorConfigurationData
{
  v20 = *MEMORY[0x1E69E9840];
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"delayedNotificationVendorConfiguration", 0);

  if (v3)
  {
    v4 = v3;
    v15 = 0;
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v15];
    v6 = v15;
    v7 = FCNotificationsLog;
    if (v6)
    {
      if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Encountered error when encoding delayed notification vendor configuration as data, storing empty configuration. Error=%{public}@", buf, 0xCu);
      }

      v8 = [@"{}" dataUsingEncoding:4];
    }

    else
    {
      if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v7;
        v12 = [v5 length];
        *buf = 134218242;
        v17 = v12;
        v18 = 2114;
        v19 = v4;
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Successfully encoded %lu bytes for delayed notification vendor configuration %{public}@", buf, 0x16u);
      }

      v8 = v5;
    }

    v10 = v8;
  }

  else
  {
    v9 = FCNotificationsLog;
    if (os_log_type_enabled(FCNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Found nil delayed notification vendor configuration, returning empty configuration", buf, 2u);
    }

    v10 = [@"{}" dataUsingEncoding:4];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSDictionary)localInForYouTopicTagAllowList
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localInForYouTopicTagAllowList", 0);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__FCNewsAppConfig_localInForYouTopicTagAllowList__block_invoke;
    v8[3] = &unk_1E7C3A618;
    v8[4] = self;
    v5 = __49__FCNewsAppConfig_localInForYouTopicTagAllowList__block_invoke(v8);
  }

  v6 = v5;

  return v6;
}

id __49__FCNewsAppConfig_localInForYouTopicTagAllowList__block_invoke(uint64_t a1)
{
  v2 = FCAppConfigurationLog;
  if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Found nil for local in for you topic tag allow list, returning default", v5, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = &unk_1F2E71988;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)trendingTopicsRefreshRate
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"trendingTopicsRefreshRate", 3600);

  return v3;
}

- (int64_t)dailyChannelUpsellsCountLimit
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"dailyChannelUpsellsCountLimit", 3);

  return v3;
}

- (int64_t)shortcutsMaxCount
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"shortcutsMaxCount", 8);

  return v3;
}

- (BOOL)autoOnboardShortcuts
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"autoOnboardShortcuts", 0);

  return v3;
}

- (int64_t)minShortcutsOnboardCount
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"minShortcutsOnboardCount", 4);

  return v3;
}

- (int64_t)shortcutsOnboardCount
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"shortcutsOnboardCount", 6);

  return v3;
}

- (int64_t)maxCuratedShortcutsCount
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxCuratedShortcutsCount", 1);

  return v3;
}

- (int64_t)maxSuggestedShortcutsCount
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxSuggestedShortcutsCount", 5);

  return v3;
}

- (int64_t)shortcutsCustomizeAffordanceDisplayMinLaunchCount
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"shortcutsCustomizeAffordanceDisplayMinLaunchCount", 2);

  return v3;
}

- (int64_t)shortcutsCustomizeAffordanceSendToBackPositionMinLaunchCount
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"shortcutsCustomizeAffordanceSendToBackPositionMinLaunchCount", 15);

  return v3;
}

- (int64_t)notificationEnabledChannelsRefreshFrequency
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"notificationEnabledChannelsRefreshFrequency", 604800);

  return v3;
}

- (int64_t)savedArticlesCutoffTime
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"savedArticlesCutoffTime", 15552000);

  return v3;
}

- (int64_t)savedArticlesOpenedCutoffTime
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"savedArticlesOpenedCutoffTime", 21600);

  return v3;
}

- (int64_t)savedArticlesMaximumCountWiFi
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"savedArticlesMaximumCountWifi", 100);

  return v3;
}

- (int64_t)savedArticlesMaximumCountCellular
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"savedArticlesMaximumCountCellular", 10);

  return v3;
}

- (int64_t)maximumBundleSessionValue
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxBundleSessionValue", 10);

  return v3;
}

- (int64_t)maximumBundleSessionTime
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxBundleSessionTime", 86400);

  return v3;
}

- (int64_t)maximumMastheadWelcomeMessageTime
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxMastheadWelcomeMessageTime", 604800);

  return v3;
}

- (int64_t)maximumPremiumHeadlinesGroupSlottingTime
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxPremiumHeadlinesGroupSlottingTime", 604800);

  return v3;
}

- (int64_t)maximumPremiumStoriesUnlockedTipTime
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxPremiumStoriesUnlockedTipTime", 604800);

  return v3;
}

- (NSString)blockedArticleLearnMoreURL
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"blockedArticleLearnMoreURL", 0);

  return v3;
}

- (NSArray)presubscribedFeedIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"preSubscribedFeedIds", 0);

  return v3;
}

- (NSArray)permanentChannelIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"permanentChannelIds", 0);

  return v3;
}

- (NSArray)appleNewsNotificationChannelIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"appleNewsNotificationChannelIds", 0);

  return v3;
}

- (NSString)breakingNewsChannelID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"breakingNewsChannelId", 0);

  return v3;
}

- (NSString)briefingsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"briefingsTagId", 0);

  return v3;
}

- (NSString)trendingTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"trendingTagId", 0);

  return v3;
}

- (NSString)featuredStoriesTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"featuredStoriesTagId", 0);

  return v3;
}

- (NSString)savedStoriesTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"savedStoriesTagId", 0);

  return v3;
}

- (NSString)myMagazinesTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"myMagazinesTagId", 0);

  return v3;
}

- (NSString)sharedWithYouTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sharedWithYouTagId", 0);

  return v3;
}

- (NSString)shortcutsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"shortcutsTagId", 0);

  return v3;
}

- (NSString)mySportsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"mySportsTagId", 0);

  return v3;
}

- (NSString)sportsTopStoriesTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportsTopStoriesTagId", 0);

  return v3;
}

- (NSString)mySportsScoresTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"mySportsScoresTagId", 0);

  return v3;
}

- (NSString)sportScoresTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportScoresTagId", 0);

  return v3;
}

- (NSString)sportTeamScoresTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportTeamScoresTagId", 0);

  return v3;
}

- (NSString)sportLeagueScoresTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportLeagueScoresTagId", 0);

  return v3;
}

- (NSString)sportsStandingsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportLeagueStandingsTagId", 0);

  return v3;
}

- (NSString)sportsBracketTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportBracketTagId", 0);

  return v3;
}

- (NSString)mySportsHighlightsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"mySportsHighlightsTagId", 0);

  return v3;
}

- (NSString)sportHighlightsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportHighlightsTagId", 0);

  return v3;
}

- (NSString)sportTeamHighlightsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportTeamHighlightsTagId", 0);

  return v3;
}

- (NSString)sportLeagueHighlightsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportLeagueHighlightsTagId", 0);

  return v3;
}

- (NSString)sportEventHighlightsTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sportEventHighlightsTagId", 0);

  return v3;
}

- (FCSportsPrivacyConfiguration)sportsPrivacyConfiguration
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"sportsPrivacyConfiguration", 0);

  v4 = [[FCSportsPrivacyConfiguration alloc] initWithConfigDictionary:v3];

  return v4;
}

- (NSString)editorialChannelID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"appleEditorialChannelId", 0);

  return v3;
}

- (NSString)spotlightChannelID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"spotlightChannelId", 0);

  return v3;
}

- (NSString)editorialGemsSectionID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"editorialGemsSectionId", 0);

  return v3;
}

- (double)feedLineHeightMultiplier
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDoubleValue(languageConfigDictionary, @"feedLineHeightMultiplier", 1.0);

  return v3;
}

- (NSArray)aLaCartePaidSubscriptionGroupWhitelistedChannelIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"paidALaCarteSubscriptionGroupWhitelistedChannelIds", 0);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)paidALaCartePaywallConfigForChannelID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = dCopy;
  if (!self->_cachedPaidALaCartePaywallConfigs)
  {
    v25 = dCopy;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
    v8 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"paidALaCartePaywallConfigs2", 0);

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [FCPaidALaCartePaywallConfig alloc];
          v16 = [v9 objectForKeyedSubscript:v14];
          v17 = [(FCPaidALaCartePaywallConfig *)v15 initWithChannelID:v14 configDictionary:v16];

          channelID = [(FCPaidALaCartePaywallConfig *)v17 channelID];
          v19 = [channelID length];

          if (v19)
          {
            channelID2 = [(FCPaidALaCartePaywallConfig *)v17 channelID];
            [(NSDictionary *)v6 setObject:v17 forKeyedSubscript:channelID2];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    cachedPaidALaCartePaywallConfigs = self->_cachedPaidALaCartePaywallConfigs;
    self->_cachedPaidALaCartePaywallConfigs = v6;

    v5 = v25;
  }

  if ([v5 length])
  {
    v22 = [(NSDictionary *)self->_cachedPaidALaCartePaywallConfigs objectForKeyedSubscript:v5];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (NSString)todayFeedKnobs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"todayFeedKnobs", @"{}");

  return v3;
}

- (NSArray)hiddenFeedIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"hiddenFeedId", 0);

  if (v3)
  {
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int64_t)minimumDurationBetweenForYouGroupsWeekday
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"minimumDurationBetweenForYouGroupsWeekday", 28800);

  return v3;
}

- (int64_t)minimumDurationBetweenForYouGroupsWeekend
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"minimumDurationBetweenForYouGroupsWeekend", 14400);

  return v3;
}

- (int64_t)minimumDurationBetweenTrendingGroupsWeekday
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"minimumDurationBetweenTrendingGroupsWeekday", 28800);

  return v3;
}

- (int64_t)minimumDurationBetweenTrendingGroupsWeekend
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"minimumDurationBetweenTrendingGroupsWeekend", 14400);

  return v3;
}

- (int64_t)expiredPaidSubscriptionGroupCutoffTime
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"expiredPaidSubscriptionGroupCutoffTime", 0);

  return v3;
}

- (int64_t)maximumNumberOfExpiredPaidSubscriptionGroups
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxExpiredPaidSubscriptionGroupCount", 0);

  return v3;
}

- (int64_t)maximumTimesHeadlineInPaidSubscriptionGroup
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxTimesHeadlineInPaidSubscriptionGroup", 0);

  return v3;
}

- (int64_t)maximumPaidSubscriptionGroupSizeiPad
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxPaidSubscriptionGroupSizeIPad", 0);

  return v3;
}

- (int64_t)maximumPaidSubscriptionGroupSizeiPhone
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxPaidSubscriptionGroupSizeIPhone", 0);

  return v3;
}

- (BOOL)diversifyOptionalTopStories
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"diversifyOptionalTopStories", 1) != 0;

  return v3;
}

- (int64_t)optionalTopStoriesRefreshRate
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"optionalTopStoriesRefreshRate", 14400);

  return v3;
}

- (double)minimumTrendingUnseenRatio
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"minimumTrendingUnseenRatio", 0.5);

  return v3;
}

- (FCVideoGroupsConfig)forYouVideoGroupsConfig
{
  forYouVideoGroupsConfig = self->_forYouVideoGroupsConfig;
  if (!forYouVideoGroupsConfig)
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v5 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"forYouVideoGroupsConfig", 0);

    if (v5)
    {
      v6 = [[FCVideoGroupsConfig alloc] initWithConfigDictionary:v5];
      v7 = self->_forYouVideoGroupsConfig;
      self->_forYouVideoGroupsConfig = v6;
    }

    forYouVideoGroupsConfig = self->_forYouVideoGroupsConfig;
  }

  return forYouVideoGroupsConfig;
}

- (double)endOfArticleMinPaidHeadlineRatio
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"endOfArticleMinPaidHeadlineRatio", 0.25);

  return v3;
}

- (int64_t)endOfArticleMaxInaccessiblePaidArticleCount
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"endOfArticleMaxInaccessiblePaidArticles", 2);

  return v3;
}

- (int64_t)endOfArticleExpireArticlesAfter
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"endOfArticleExpireArticlesAfter", 7776000);

  return v3;
}

- (NSString)endOfArticleFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"endOfArticleFeedConfigurationResourceId", 0);

  return v3;
}

- (int64_t)minimumDistanceBetweenImageOnTopTiles
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"minimumDistanceBetweenImageOnTopTiles", 4);

  return v3;
}

- (NSString)nonBundleChannelPickerSuggestionsTabiPackageResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"nonBundleChannelPickerSuggestionsTabiPackageResourceId", 0);

  return v3;
}

- (NSString)bundleChannelPickerSuggestionsTabiPackageResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"bundleChannelPickerSuggestionsTabiPackageResourceId", 0);

  return v3;
}

- (NSString)forYouRecordConfigID
{
  objc_opt_self();
  if (qword_1EDB26F90 != -1)
  {
    dispatch_once(&qword_1EDB26F90, &__block_literal_global_2871);
  }

  v3 = _MergedGlobals_139;
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    localizedStorefrontID = [(FCNewsAppConfig *)self localizedStorefrontID];
    objc_opt_self();
    if (qword_1EDB26FC0 != -1)
    {
      dispatch_once(&qword_1EDB26FC0, &__block_literal_global_2883);
    }

    v6 = qword_1EDB26FB8;
    v7 = [v6 objectForKeyedSubscript:localizedStorefrontID];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Y-%@-en", @"143441"];
    }

    v10 = v9;

    languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
    v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"forYouConfigId", v10);
  }

  return v4;
}

- (NSString)forYouPremiumRecordConfigID
{
  objc_opt_self();
  if (qword_1EDB26FA0 != -1)
  {
    dispatch_once(&qword_1EDB26FA0, &__block_literal_global_2873);
  }

  v3 = qword_1EDB26F98;
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    localizedStorefrontID = [(FCNewsAppConfig *)self localizedStorefrontID];
    objc_opt_self();
    if (qword_1EDB26FD0 != -1)
    {
      dispatch_once(&qword_1EDB26FD0, &__block_literal_global_2894);
    }

    v6 = qword_1EDB26FC8;
    v7 = [v6 objectForKeyedSubscript:localizedStorefrontID];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"YP-%@-en", @"143441"];
    }

    v10 = v9;

    languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
    v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"forYouPremiumConfigId", v10);
  }

  return v4;
}

- (NSString)audioConfigRecordID
{
  localizedStorefrontID = [(FCNewsAppConfig *)self localizedStorefrontID];
  objc_opt_self();
  if (qword_1EDB27000 != -1)
  {
    dispatch_once(&qword_1EDB27000, &__block_literal_global_2909);
  }

  v4 = qword_1EDB26FF8;
  v5 = [v4 objectForKeyedSubscript:localizedStorefrontID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"U-%@-en", @"143441"];
  }

  v8 = v7;

  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v10 = FCAppConfigurationStringValue(languageConfigDictionary, @"audioConfigId", v8);

  return v10;
}

- (NSArray)freeGlobalESLArticleListIDs
{
  v13[1] = *MEMORY[0x1E69E9840];
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"freeEvergreenArticleListId", 0);

  languageConfigDictionary2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v6 = FCAppConfigurationStringValue(languageConfigDictionary2, @"freeEvergreenArticleListId2", v4);

  languageConfigDictionary3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v8 = languageConfigDictionary3;
  if (v6)
  {
    v13[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v8, @"freeEvergreenArticleListIds", v9);
  }

  else
  {
    v10 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary3, @"freeEvergreenArticleListIds", MEMORY[0x1E695E0F0]);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSArray)paidGlobalESLArticleListIDs
{
  v13[1] = *MEMORY[0x1E69E9840];
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"paidEvergreenArticleListId", 0);

  languageConfigDictionary2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v6 = FCAppConfigurationStringValue(languageConfigDictionary2, @"paidEvergreenArticleListId2", v4);

  languageConfigDictionary3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v8 = languageConfigDictionary3;
  if (v6)
  {
    v13[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v8, @"paidEvergreenArticleListIds", v9);
  }

  else
  {
    v10 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary3, @"paidEvergreenArticleListIds", MEMORY[0x1E695E0F0]);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSString)freeTagESLArticleListIDPrefix
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"freeTagEvergreenArticleListIdPrefix", 0);

  return v3;
}

- (NSString)paidTagESLArticleListIDPrefix
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"paidTagEvergreenArticleListIdPrefix", 0);

  return v3;
}

- (int64_t)maxTagESLArticleListsToQuery
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"maxTagEvergreenArticleListsToQuery", 30);

  return v3;
}

- (BOOL)shouldManuallySupplementEvergreenWithIssueArticles
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"freeEvergreenArticleListIds", 0);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    languageConfigDictionary2 = [(FCNewsAppConfig *)self languageConfigDictionary];
    v7 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary2, @"paidEvergreenArticleListIds", 0);
    v5 = v7 == 0;
  }

  return v5;
}

- (int64_t)forYouMaxDailyEvergreenArticlesForFreeUsers
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"forYouMaxDailyEvergreenArticlesForFreeUsers", 30);

  languageConfigDictionary2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v6 = FCAppConfigurationIntegerValue(languageConfigDictionary2, @"forYouMaxDailyEvergreenArticlesForFreeUsers2", v4);

  return v6;
}

- (int64_t)forYouMaxDailyEvergreenArticlesForPaidUsers
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"forYouMaxDailyEvergreenArticlesForPaidUsers", 30);

  languageConfigDictionary2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v6 = FCAppConfigurationIntegerValue(languageConfigDictionary2, @"forYouMaxDailyEvergreenArticlesForPaidUsers2", v4);

  return v6;
}

- (int64_t)maxIssuesPerESLInventoryRequest
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"maxIssuesPerESLInventoryRequest", 100);

  return v3;
}

- (NSArray)freeNotificationItemListIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"freeNotificationItemListIds", &unk_1F2E6F8A0);

  return v3;
}

- (NSArray)paidNotificationItemListIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"paidNotificationItemListIds", &unk_1F2E6F8B8);

  return v3;
}

- (int64_t)notificationPoolAutoRefreshInterval
{
  if (NFInternalBuild())
  {
    objc_opt_class();
    v3 = NewsCoreUserDefaults();
    v4 = [v3 objectForKey:@"notification_pool_auto_refresh_interval"];
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
  }

  else
  {
    v6 = 0;
  }

  if ([v6 longLongValue])
  {
    longLongValue = [v6 longLongValue];
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    longLongValue = FCAppConfigurationIntegerValue(configDictionary, @"notificationPoolAutoRefreshInterval", 14400);
  }

  return longLongValue;
}

- (int64_t)notificationPoolMaxAge
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"notificationPoolMaxAge", 86400);

  return v3;
}

- (id)expFieldForKey:(void *)key
{
  v3 = a2;
  if (key)
  {
    if (NFInternalBuild())
    {
      v4 = NewsCoreUserDefaults();
      v5 = [v4 BOOLForKey:@"use_cached_exp_fields"];

      if (!v5)
      {
        languageConfigDictionary = [key languageConfigDictionary];
        v8 = FCAppConfigurationStringValue(languageConfigDictionary, v3, 0);

        v11 = NewsCoreUserDefaults();
        languageConfigDictionary2 = v11;
        if (v8)
        {
          [v11 setObject:v8 forKey:v3];
        }

        else
        {
          [v11 removeObjectForKey:v3];
        }

        goto LABEL_7;
      }

      languageConfigDictionary2 = NewsCoreUserDefaults();
      v7 = [languageConfigDictionary2 stringForKey:v3];
    }

    else
    {
      languageConfigDictionary2 = [key languageConfigDictionary];
      v7 = FCAppConfigurationStringValue(languageConfigDictionary2, v3, 0);
    }

    v8 = v7;
LABEL_7:

    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (int64_t)expirePinnedArticlesAfter
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"expirePinnedArticlesAfter", 0);

  return v3;
}

- (int64_t)singleTopicFeedMinFeedItemsPerRequest
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"singleTopicFeedMinFeedItemsPerRequest", 20);

  return v3;
}

- (int64_t)singleChannelFeedMinFeedItemsPerRequest
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"singleChannelFeedMinFeedItemsPerRequest", 20);

  return v3;
}

- (id)todayConfigWithIdentifier:(id)identifier queueConfigs:(id)configs backgroundColorLight:(id)light backgroundColorDark:(id)dark audioIndicatorColor:(id)color widgetBannerConfig:(id)config
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  configsCopy = configs;
  lightCopy = light;
  darkCopy = dark;
  colorCopy = color;
  configCopy = config;
  if (configsCopy || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      goto LABEL_4;
    }

LABEL_18:
    v20 = 0;
    goto LABEL_14;
  }

  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "queueConfigs"];
  *buf = 136315906;
  v38 = "[FCNewsAppConfig todayConfigWithIdentifier:queueConfigs:backgroundColorLight:backgroundColorDark:audioIndicatorColor:widgetBannerConfig:]";
  v39 = 2080;
  v40 = "FCNewsAppConfig.m";
  v41 = 1024;
  v42 = 1531;
  v43 = 2114;
  v44 = v29;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  if (!self)
  {
    goto LABEL_18;
  }

LABEL_4:
  v20 = self->_widgetConfig;
  if (v20)
  {
    self = objc_opt_new();
    v31 = lightCopy;
    [(FCNewsAppConfig *)self setBackgroundColorLight:lightCopy];
    v30 = darkCopy;
    [(FCNewsAppConfig *)self setBackgroundColorDark:darkCopy];
    [(FCNewsAppConfig *)self setAudioIndicatorColor:colorCopy];
    v21 = identifierCopy;
    [(FCNewsAppConfig *)self setWidgetIdentifier:identifierCopy];
    [(FCNewsAppConfig *)self setWidgetBannerConfig:configCopy];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = configsCopy;
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(FCNewsAppConfig *)self addTodayQueueConfigs:*(*(&v32 + 1) + 8 * i)];
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v24);
    }

    identifierCopy = v21;
    darkCopy = v30;
    lightCopy = v31;
  }

  else
  {
    self = 0;
  }

LABEL_14:

  v27 = *MEMORY[0x1E69E9840];

  return self;
}

- (int64_t)widgetForYouBackgroundMinimumUpdateInterval
{
  if (self)
  {
    self = self->_widgetConfig;
  }

  return [(FCNewsAppConfig *)self forYouBackgroundMinimumUpdateInterval];
}

- (id)analyticsEnvelopeContentTypeConfigsForEnvironment:(unint64_t)environment
{
  if (self)
  {
    analyticsContentTypeConfigsByContentTypeByEnvironment = self->_analyticsContentTypeConfigsByContentTypeByEnvironment;
  }

  else
  {
    analyticsContentTypeConfigsByContentTypeByEnvironment = 0;
  }

  v5 = MEMORY[0x1E696AD98];
  v6 = analyticsContentTypeConfigsByContentTypeByEnvironment;
  v7 = [v5 numberWithUnsignedInteger:environment];
  v8 = [(NSDictionary *)v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)appAnalyticsEndpointUrlForEnvironment:(unint64_t)environment
{
  endpointConfigsByEnvironment = [(FCNewsAppConfig *)self endpointConfigsByEnvironment];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:environment];
  v6 = [endpointConfigsByEnvironment objectForKeyedSubscript:v5];

  appAnalyticsBaseURLString = [v6 appAnalyticsBaseURLString];
  v8 = appAnalyticsBaseURLString;
  v9 = @"https://news-events.apple.com/analyticseventsv2/async";
  if (appAnalyticsBaseURLString)
  {
    v9 = appAnalyticsBaseURLString;
  }

  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10];

  return v11;
}

- (id)appAnalyticsNotificationReceiptEndpointUrlForEnvironment:(unint64_t)environment
{
  endpointConfigsByEnvironment = [(FCNewsAppConfig *)self endpointConfigsByEnvironment];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:environment];
  v6 = [endpointConfigsByEnvironment objectForKeyedSubscript:v5];

  appAnalyticsNotificationReceiptBaseURLString = [v6 appAnalyticsNotificationReceiptBaseURLString];

  if (appAnalyticsNotificationReceiptBaseURLString)
  {
    v8 = objc_alloc(MEMORY[0x1E695DFF8]);
    appAnalyticsNotificationReceiptBaseURLString2 = [v6 appAnalyticsNotificationReceiptBaseURLString];
    appAnalyticsNotificationReceiptBaseURLString = [v8 initWithString:appAnalyticsNotificationReceiptBaseURLString2];
  }

  return appAnalyticsNotificationReceiptBaseURLString;
}

- (id)appAnalyticsAppHealthEndpointUrlForEnvironment:(unint64_t)environment
{
  endpointConfigsByEnvironment = [(FCNewsAppConfig *)self endpointConfigsByEnvironment];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:environment];
  v7 = [endpointConfigsByEnvironment objectForKeyedSubscript:v6];

  appAnalyticsAppHealthBaseURLString = [v7 appAnalyticsAppHealthBaseURLString];

  if (appAnalyticsAppHealthBaseURLString)
  {
    v9 = objc_alloc(MEMORY[0x1E695DFF8]);
    appAnalyticsAppHealthBaseURLString2 = [v7 appAnalyticsAppHealthBaseURLString];
    v11 = [v9 initWithString:appAnalyticsAppHealthBaseURLString2];
  }

  else
  {
    v11 = [(FCNewsAppConfig *)self appAnalyticsEndpointUrlForEnvironment:environment];
  }

  return v11;
}

- (id)appAnalyticsAppHeartbeatEndpointUrlForEnvironment:(unint64_t)environment
{
  endpointConfigsByEnvironment = [(FCNewsAppConfig *)self endpointConfigsByEnvironment];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:environment];
  v7 = [endpointConfigsByEnvironment objectForKeyedSubscript:v6];

  appAnalyticsAppHeartbeatBaseURLString = [v7 appAnalyticsAppHeartbeatBaseURLString];

  if (appAnalyticsAppHeartbeatBaseURLString)
  {
    v9 = objc_alloc(MEMORY[0x1E695DFF8]);
    appAnalyticsAppHeartbeatBaseURLString2 = [v7 appAnalyticsAppHeartbeatBaseURLString];
    v11 = [v9 initWithString:appAnalyticsAppHeartbeatBaseURLString2];
  }

  else
  {
    v11 = [(FCNewsAppConfig *)self appAnalyticsEndpointUrlForEnvironment:environment];
  }

  return v11;
}

- (int64_t)maxRetriesForDroppedFeeds
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxRetriesForDroppedFeeds", 2);

  return v3;
}

- (double)delayBeforeRetryingDroppedFeeds
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"delayBeforeRetryingDroppedFeeds", 1.5);

  return v3;
}

- (int64_t)subscriptionsPlacardPublisherFrequencyInSeconds
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"subscriptionsPlacardPublisherFrequencySeconds", 86400);

  return v3;
}

- (int64_t)subscriptionsPlacardGlobalMaximumPerDay
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"subscriptionsPlacardGlobalMaxPerDay", 1);

  return v3;
}

- (int64_t)subscriptionsGracePeriodForTokenVerificationSeconds
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"subscriptionsGracePeriodForTokenVerificationSeconds", 1296000);

  return v3;
}

- (int64_t)entitlementsCacheRecoveryAttemptDurationInSeconds
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"entitlementsCacheRecoveryAttemptDurationSeconds", 2592000);

  return v3;
}

- (BOOL)enableCacheFallbackForArticleRecirculation
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"enableCacheFallbackForArticleRecirculation", 1);

  return v3;
}

- (id)recipeTagRecipeListIDPrefix
{
  if (self)
  {
    languageConfigDictionary = [self languageConfigDictionary];
    v2 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipeTagRecipeListIDPrefix", 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)freeTagRecipeListIDPrefix
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  recipeTagRecipeListIDPrefix = [(FCNewsAppConfig *)self recipeTagRecipeListIDPrefix];
  v5 = FCAppConfigurationStringValue(languageConfigDictionary, @"freeTagRecipeListIdPrefix", recipeTagRecipeListIDPrefix);

  return v5;
}

- (NSString)paidTagRecipeListIDPrefix
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  recipeTagRecipeListIDPrefix = [(FCNewsAppConfig *)self recipeTagRecipeListIDPrefix];
  v5 = FCAppConfigurationStringValue(languageConfigDictionary, @"paidTagRecipeListIdPrefix", recipeTagRecipeListIDPrefix);

  return v5;
}

- (NSString)trendingRecipesListID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"trendingRecipesListID", 0);

  return v3;
}

- (NSArray)freeGlobalRecipeListIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"freeGlobalRecipeListIDs", MEMORY[0x1E695E0F0]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (NSArray)paidGlobalRecipeListIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"paidGlobalRecipeListIDs", MEMORY[0x1E695E0F0]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (NSArray)freeRecentRecipeListIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"freeRecentRecipeListIDs", MEMORY[0x1E695E0F0]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (NSArray)paidRecentRecipeListIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"paidRecentRecipeListIDs", MEMORY[0x1E695E0F0]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (NSArray)allowedRecipeRelatedTopicIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"allowedRecipeRelatedTopicIDs", MEMORY[0x1E695E0F0]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (NSArray)allowedRecipeSuitableForDietTagIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"allowedRecipeSuitableForDietTagIDs", MEMORY[0x1E695E0F0]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (double)ttlForTrendingRecipes
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  [(FCNewsAppConfig *)self defaultTTLForRecipeListRecords];
  v5 = FCAppConfigurationIntegerValue(configDictionary, @"ttlForTrendingRecipes", v4);

  return v5;
}

- (double)ttlForGlobalRecipes
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  [(FCNewsAppConfig *)self defaultTTLForRecipeListRecords];
  v5 = FCAppConfigurationIntegerValue(configDictionary, @"ttlForGlobalRecipes", v4);

  return v5;
}

- (double)ttlForRecentRecipes
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  [(FCNewsAppConfig *)self defaultTTLForRecipeListRecords];
  v5 = FCAppConfigurationIntegerValue(configDictionary, @"ttlForRecentRecipes", v4);

  return v5;
}

- (double)ttlForPersonalizedRecipes
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  [(FCNewsAppConfig *)self defaultTTLForRecipeListRecords];
  v5 = FCAppConfigurationIntegerValue(configDictionary, @"ttlForPersonalizedRecipes", v4);

  return v5;
}

- (int64_t)endOfArticleOnscreenPercentageRequirement
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"endOfArticleOnscreenPercentageRequirement", 100);

  return v3;
}

- (double)defaultTTLForArticleRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForArticleRecords", 86400);

  return v3;
}

- (double)defaultTTLForArticleListRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForArticleListRecords", 7200);

  return v3;
}

- (double)defaultTTLForIssueRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForIssueRecords", 86400);

  return v3;
}

- (double)defaultTTLForIssueListRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForIssueListRecords", 7200);

  return v3;
}

- (double)defaultTTLForPurchaseLookupRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForPurchaseLookupRecords", 900);

  return v3;
}

- (double)defaultTTLForPuzzleRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForPuzzleRecords", 86400);

  return v3;
}

- (double)defaultTTLForPuzzleTypeRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForPuzzleTypeRecords", 28800);

  return v3;
}

- (double)defaultTTLForRecipeRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForRecipeRecords", 86400);

  return v3;
}

- (double)defaultTTLForRecipeListRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForRecipeListRecords", 7200);

  return v3;
}

- (double)defaultTTLForSportsEventRecords
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForSportsEventRecords", 1500);

  return v3;
}

- (double)defaultTTLForTagRecords
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 BOOLForKey:@"reduce_tags_cache_refresh"];

  if (v4)
  {
    return 180.0;
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v5 = FCAppConfigurationIntegerValue(configDictionary, @"defaultTTLForTagRecords", 86400);

  return v5;
}

- (NSArray)onboardingFeedIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"onboardingTagIds", 0);

  return v3;
}

- (NSArray)discoverNewsPlusChannelIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"discoverNewsPlusChannelIds", 0);

  return v3;
}

- (NSArray)recommendedIssueAllowList
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"recommendedIssueAllowList", MEMORY[0x1E695E0F0]);

  return v3;
}

- (NSArray)recommendedIssueDenyList
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"recommendedIssueDenyList", MEMORY[0x1E695E0F0]);

  return v3;
}

- (BOOL)todayPerformanceAlertsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"todayPerformanceAlertsEnabled", 1);

  return v3;
}

- (int64_t)todayPerformanceAlertsMinNewsVersion
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"todayPerformanceAlertsMinNewsVersion", 0);

  return v3;
}

- (double)todayPerformanceAlertPrewarmThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"todayPerformanceAlertPrewarmThreshold", 10.0);

  return v3;
}

- (double)todayPerformanceAlertGapExpansionThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"todayPerformanceAlertGapExpansionThreshold", 10.0);

  return v3;
}

- (double)todayPerformanceAlertSpinnerThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"todayPerformanceAlertSpinnerThreshold", 5.0);

  return v3;
}

- (double)todayFeedConfigEndpointTimeoutAfterCK
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"todayFeedConfigEndpointTimeoutAfterCK", 2.0);

  return v3;
}

- (int64_t)autoScrollToTopFeedTimeout
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"autoScrollToTopFeedTimeout", 14400);

  return v3;
}

- (NSString)webEmbedContentBlockers
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"webEmbedContentBlockers", @"[{trigger: {url-filter: .*,unless-domain: [*apple.com]},action: {type: block}}]");

  return v3;
}

- (NSString)webEmbedContentBlockerOverrides
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"webEmbedContentBlockerOverrides", 0);

  return v3;
}

- (NSString)anfRenderingConfiguration
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"anfRenderingConfiguration", 0);

  return v3;
}

- (double)interstitialAdLoadDelay
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"interstitialAdLoadDelay", 1.0);

  return v3;
}

- (double)prerollLoadingTimeout
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"prerollLoadingTimeout", 0.0);

  return v3;
}

- (double)prerollReadyToPlayTimeout
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"prerollReadyToPlayTimeout", 2.0);

  return v3;
}

- (double)feedBannerAdRequestThrottle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"feedBannerAdRequestThrottle", 1.0);

  return v3;
}

- (double)articleBannerAdRequestThrottle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"articleBannerAdRequestThrottle", 1.0);

  return v3;
}

- (double)interstitialAdRequestThrottle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"interstitialAdRequestThrottle", 1.0);

  return v3;
}

- (double)prerollAdRequestThrottle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"prerollAdRequestThrottle", 1.0);

  return v3;
}

- (double)nativeInFeedAdRequestThrottle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"nativeInFeedAdRequestThrottle", 1.0);

  return v3;
}

- (double)nativeInArticleAdRequestThrottle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"nativeInArticleAdRequestThrottle", 1.0);

  return v3;
}

- (int64_t)articleAdPrefetchLimit
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"articleAdPrefetchLimit", 3);

  return v3;
}

- (BOOL)widgetContentPrefetchEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"widgetContentPrefetchEnabled", 1);

  return v3;
}

- (BOOL)widgetBackgroundInteractionEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"widgetBackgroundInteractionEnabled", 0);

  return v3;
}

- (BOOL)widgetFetchOfTodayFeedLiteConfigEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"widgetFetchOfTodayFeedLiteConfigEnabled", 1);

  return v3;
}

- (BOOL)widgetAnalyticsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"widgetAnalyticsEnabled2", 1);

  return v3;
}

- (BOOL)userSegmentationInWidgetAllowed
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"userSegmentationInWidgetAllowed", 1);

  return v3;
}

- (int64_t)newFavoriteNotificationAlertsFrequency
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"newFavoriteNotificationAlertsFrequency", 0);

  return v3;
}

- (int64_t)notificationArticleCacheTimeout
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"notificationArticleCacheTimeout", 300);

  return v3;
}

- (int64_t)notificationArticleWithRapidUpdatesCacheTimeout
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"notificationArticleWithRapidUpdatesCacheTimeout", 120);

  return v3;
}

- (BOOL)notificationEnableAssetPrefetching
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"notificationEnableAssetPrefetching", 1);

  return v3;
}

- (BOOL)notificationAssetPrefetchingRequiresWatch
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"notificationAssetPrefetchingRequiresWatch", 1);

  return v3;
}

- (NSString)embedConfigurationAssetID
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"anfEmbedConfigurationAsset", 0);

  return v3;
}

- (BOOL)universalLinksEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"universalLinksEnabled", 0);

  return v3;
}

- (NSString)widgetConfigID
{
  objc_opt_self();
  if (qword_1EDB26FB0 != -1)
  {
    dispatch_once(&qword_1EDB26FB0, &__block_literal_global_2875);
  }

  v3 = qword_1EDB26FA8;
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    localizedStorefrontID = [(FCNewsAppConfig *)self localizedStorefrontID];
    objc_opt_self();
    if (qword_1EDB26FE0 != -1)
    {
      dispatch_once(&qword_1EDB26FE0, &__block_literal_global_2899);
    }

    v6 = qword_1EDB26FD8;
    v7 = [v6 objectForKeyedSubscript:localizedStorefrontID];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"W-%@-en", @"143441"];
    }

    v10 = v9;

    languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
    v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"widgetSectionConfigId", v10);
  }

  return v4;
}

- (double)widgetTelemetrySamplingRate
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"widgetTelemetrySamplingRate2", 0.01);

  return v3;
}

- (double)articleDiversificationSimilarityExpectationStart
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"articleDiversitySimilarityExpectationStart", 0.0);

  return v3;
}

- (double)articleDiversificationSimilarityExpectationEnd
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"articleDiversitySimilarityExpectationEnd", 0.1);

  return v3;
}

- (double)articleDiversificationUniquePublisherExpectationSlope
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"publisherDiversitySlope", 0.75);

  return v3;
}

- (double)articleDiversificationUniquePublisherExpectationYIntercept
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"publisherDiversityYIntercept", 0.25);

  return v3;
}

- (int64_t)analyticsEndpointMaxPayloadSize
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"analyticsEndpointMaxPayloadSize", 500000);

  return v3;
}

- (NSString)recipePersonalizationBundleIdMappingResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipePersonalizationBundleIdMappingResourceId", 0);

  return v3;
}

- (NSString)recipePersonalizationUrlMappingResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipePersonalizationUrlMappingResourceId", 0);

  return v3;
}

- (NSString)recipePersonalizationAllowlistResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipePersonalizationAllowlistResourceId", 0);

  return v3;
}

- (NSString)locationRecommendationMappingsResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"locationRecommendationMappingsResourceId", 0);

  return v3;
}

- (NSString)localAreasMappingResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"localAreasMappingResourceId", 0);

  return v3;
}

- (NSString)tagFeedLayoutConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"tagFeedLayoutConfigurationResourceId", 0);

  return v3;
}

- (NSString)topicFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"topicFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)channelFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"channelFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)sectionFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sectionFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)sharedWithYouFeedLayoutConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"sharedFeedConfigurationResourceId", @"shared-feed-config-143441-en");

  return v3;
}

- (NSString)savedFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"savedFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)historyFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"historyFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)searchFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"searchFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)recipeSearchFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipeSearchFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)searchMoreFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"searchMoreFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)audioHistoryFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"audioHistoryFeedConfigurationResourceId", @"audio-history-feed-config-143441-en");

  return v3;
}

- (NSString)audioPlaylistFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"audioPlaylistFeedConfigurationResourceId", @"audio-playlist-feed-config-143441-en");

  return v3;
}

- (NSString)endOfRecipeFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"endOfRecipeFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)recipeBoxFeedConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipeBoxFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)userConcernConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"userConcernConfigurationResourceId", @"user-concern-config-143441-en");

  return v3;
}

- (NSString)channelPickerConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"channelPickerConfigurationResourceId", @"configuration-channel-picker-143441-en");

  return v3;
}

- (NSString)searchEndpointConfigurationResourceID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"searchEndpointConfigurationResourceId", @"configuration-search-endpoint-143441-en");

  return v3;
}

- (NSString)inConversationsAudioTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"inConversationsAudioTagId", 0);

  return v3;
}

- (NSString)businessAudioTagID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"businessAudioTagId", 0);

  return v3;
}

- (NSString)translationMapResourceID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"languageMapResourceId", 0);

  return v3;
}

- (NSString)userVectorWhitelistResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"userVectorWhitelistResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"userVectorWhitelistResourceId", 0);
  }

  return v6;
}

- (NSString)userVectorModelResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"userVectorModelResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"userVectorModelResourceId", 0);
  }

  return v6;
}

- (int64_t)articleReadCountThreshold
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(languageConfigDictionary, @"articleReadCountThreshold", 1);

  return v3;
}

- (int64_t)corryBarMaxArticleCountForArticleList
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"corryBarMaxArticleCountForArticleList", 10);

  return v3;
}

- (int64_t)corryBarMaxArticleCountForSingleArticle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"corryBarMaxArticleCountForSingleArticle", 5);

  return v3;
}

- (BOOL)corryBarHideDiscoverMoreInterstitialForNonOnboardedUsers
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"corryBarHideDiscoverMoreInterstitialForNonOnboardedUsers", 0);

  return v3;
}

- (NSString)exploreArticleID
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"exploreArticleId", 0);

  return v3;
}

- (NSArray)externalAnalyticsConfigurations
{
  externalAnalyticsConfigurations = self->_externalAnalyticsConfigurations;
  if (!externalAnalyticsConfigurations)
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v5 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"externalAnalyticsConfig", 0);

    v6 = [v5 fc_arrayByTransformingWithBlock:&__block_literal_global_2272];
    v7 = self->_externalAnalyticsConfigurations;
    self->_externalAnalyticsConfigurations = v6;

    externalAnalyticsConfigurations = self->_externalAnalyticsConfigurations;
  }

  return externalAnalyticsConfigurations;
}

- (NSArray)mediaSharingBlacklistedChannelIDs
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(languageConfigDictionary, @"mediaSharingBlacklistedChannelIds", 0);

  return v3;
}

- (int64_t)topStoriesLocalNewsExpiration
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"topStoriesLocalNewsExpiration", 21600);

  return v3;
}

- (int64_t)autoRefreshMinimumInterval
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"autoRefreshMinimumInterval", 120);

  return v3;
}

- (BOOL)terminateAppOnBackgroundAfterJoiningOrLeavingExperiment
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"terminateAppOnBackgroundAfterJoiningOrLeavingExperiment", 0);

  return v3;
}

uint64_t __41__FCNewsAppConfig_topStoriesPublishDates__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [a2 integerValue];

  return [v2 dateWithTimeIntervalSinceReferenceDate:v3];
}

- (unint64_t)trendingStyle
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"trendingStyle", 0);

  v4 = 0;
  if (([v3 isEqualToString:@"TrendingCellStyleNumberedCircle"] & 1) == 0)
  {
    v4 = [v3 isEqualToString:@"TrendingCellStyleImageOnSide"];
  }

  return v4;
}

- (NSString)articleRecirculationConfigJSON
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"articleRecirculationConfig", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"articleRecirculationConfig", 0);
  }

  return v6;
}

- (NSString)recipeRecirculationConfigJSON
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipeRecirculationConfig", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"recipeRecirculationConfig", 0);
  }

  return v6;
}

- (NSString)issueArticleRecirculationConfig
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(languageConfigDictionary, @"issueArticleRecirculationConfig", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(configDictionary, @"issueArticleRecirculationConfig", 0);
  }

  return v6;
}

- (NSString)articleRecirculationComponentPlacementConfigJSON
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"articleRecirculationComponentPlacementConfig", 0);

  return v3;
}

- (int64_t)articleRecirculationPopularFeedQueryTimeRange
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"articleRecirculationPopularFeedQueryTimeRange", 86400);

  return v3;
}

- (BOOL)disableThumbnailsForArticleRecirculation
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"disableThumbnailsForArticleRecirculation", 0);

  return v3;
}

- (NSString)feedNavigationConfigJSON
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"feedNavConfig", @"{items:[]}");

  return v3;
}

- (NSString)shortcutsCurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"shortcutsCurationResourceId", 0);

  return v3;
}

- (NSString)shortcutsConfigResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"shortcutsConfigResourceId", 0);

  return v3;
}

- (NSString)description
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = [configDictionary description];

  return v3;
}

- (BOOL)enableBadgeInSpotlightTabBar
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"enableBadgeInSpotlightTabBar", 0);

  return v3;
}

- (NSString)magazinesConfigRecordID
{
  localizedStorefrontID = [(FCNewsAppConfig *)self localizedStorefrontID];
  objc_opt_self();
  if (qword_1EDB26FF0 != -1)
  {
    dispatch_once(&qword_1EDB26FF0, &__block_literal_global_2904);
  }

  v4 = qword_1EDB26FE8;
  v5 = [v4 objectForKeyedSubscript:localizedStorefrontID];

  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v7 = FCAppConfigurationStringValue(languageConfigDictionary, @"maConfigId", v5);

  return v7;
}

- (BOOL)isArticleToolbarCompressionEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"articleToolbarCompressionEnabled", 1);

  return v3;
}

- (int64_t)lowStorageThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"lowStorageThreshold", 1000000000);

  return v3;
}

- (int64_t)criticalStorageThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"criticalStorageThreshold", 200000000);

  return v3;
}

- (int64_t)maximumTrendingGroupSizeiPad
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxTrendingGroupSizeIpad", 6);

  return v3;
}

- (int64_t)maximumTrendingGroupSizeiPhone
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"maxTrendingGroupSizeIphone", 4);

  return v3;
}

- (unint64_t)likeDislikeBehavior
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"likeDislikeBehavior", 1);

  return v3;
}

- (unint64_t)bestOfBundleFeedGroupKind
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"bestOfBundleFeedGroupKind", 1);

  return v3;
}

- (int64_t)emailSignupRequiredAppLaunchCount
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"emailSignupRequiredAppLaunchCount", 4);

  return v3;
}

- (BOOL)issuesNewsletterOptinEnabled
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"newsletterConfig", 0);

  LOBYTE(languageConfigDictionary) = FCAppConfigurationBoolValue(v3, @"issuesNewsletterOptinEnabled", 0);
  return languageConfigDictionary;
}

- (BOOL)enableLocationBasedAutofavorites
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"enableLocationBasedAutofavorites", 1);

  return v3;
}

- (BOOL)forYouGroupShouldPromoteAccessibleHeadline
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"forYouGroupShouldPromoteAccessibleHeadline", 0);

  return v3;
}

- (BOOL)todayFeedEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"feed3EnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)useNewsArticleSearch
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"searchConfigurationProfiles", 0);

  LOBYTE(configDictionary) = [v3 containsObject:@"newsArticleSearch"];
  return configDictionary;
}

- (BOOL)useMultipleNativeAds
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"useMultipleNativeAdsEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isSportsSyncingSupported
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"isSportsSyncingSupported", 1);

  return v3;
}

- (BOOL)servicesBundleCIPActivationEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"servicesBundleCIPActivationEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)paidBundleViaOfferEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"paidBundleViaOfferEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isSIWAOnMacEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"signInWithAppleOnMacEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)fineGrainedNewsletterManagementEnabled
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = @"143441";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  storefrontID = [(FCNewsAppConfig *)self storefrontID];
  if ([v3 containsObject:storefrontID])
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(configDictionary, @"fineGrainedNewsletterManagementEnabledLevel", v5);

  result = [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)dimNonSubscriberContentOffline
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationBoolValue(languageConfigDictionary, @"dimNonSubscriberContentOffline", 0);

  return v3;
}

- (NSString)recipeCatalogFilterConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"recipeCatalogFilterConfigurationResourceId", 0);

  return v3;
}

- (NSString)offlineModeUnavailableMessage
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"offlineModeUnavailableMessage", 0);

  return v3;
}

- (NSString)offlineStatusBannerUpsellMessage
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"offlineStatusBannerUpsellMessage", 0);

  return v3;
}

- (NSString)offlineStatusBannerDeviceOfflineTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"offlineStatusBannerDeviceOfflineTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerPoorConnectionTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"offlineStatusBannerPoorConnectionTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerServerProblemTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"offlineStatusBannerServerProblemTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerUpdateRequiredTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"offlineStatusBannerUpdateRequiredTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerDeviceObsoletionTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"offlineStatusBannerDeviceObsoletionTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerDeviceOnlineTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"offlineStatusBannerDeviceOnlineTitle", 0);

  return v3;
}

- (NSString)enterOfflineModeButtonTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"enterOfflineModeButtonTitle", 0);

  return v3;
}

- (NSString)exitOfflineModeButtonTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"exitOfflineModeButtonTitle", 0);

  return v3;
}

- (BOOL)newSearchEndpointConfigEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"newSearchEndpointConfigEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)moreToReadEOAEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"moreToReadEOAEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)moreFromIssueEOAEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"moreFromIssueEOAEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)splitTopicGroups
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"splitTopicGroups", 0);

  return v3;
}

- (BOOL)inAppMessagesEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"inAppMessagesEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (double)continueReadingDismissalInterval
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"continueReadingDismissalIntervalSeconds", 6.0);

  return v3;
}

- (BOOL)isCardFeedRedesignEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"feedRedesignEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (int64_t)alternateUniversalLinksResourceRefreshRate
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"alternateUniversalLinksResourceRefreshRate", 86400);

  return v3;
}

- (BOOL)todayFeedConfigRequestsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"todayFeedConfigRequestsEnabledLevel", 0);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.features.todayfeedconfigrequests"];

    if (v5 == 2)
    {
      return 0;
    }

    if (v5 == 1)
    {
      return 1;
    }
  }

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)audioFeedConfigRequestsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"audioFeedConfigRequestsEnabledLevel", 0);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.features.audiofeedconfigrequests"];

    if (v5 == 2)
    {
      return 0;
    }

    if (v5 == 1)
    {
      return 1;
    }
  }

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)personalizationEventTrackingEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"personalizationEventTrackingEnabled2", 0xFFFFFFFFLL);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.features.personalizationEventTracking"];

    if (v5 == 2)
    {
      return 0;
    }

    if (v5 == 1)
    {
      return 1;
    }
  }

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)sportsRecordEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"sportsRecordEnabled", 0xFFFFFFFFLL);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.features.useSportsRecord"];

    if (v5 == 2)
    {
      return 0;
    }

    if (v5 == 1)
    {
      return 1;
    }
  }

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)sportsRecommendationHidesIgnoredTags
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"sportsRecommendationHidesIgnoredTags", 1);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.sports.sportsRecommendationHidesIgnoredTags"];

    if (v5 == 2)
    {
      return 0;
    }

    if (v5 == 1)
    {
      return 1;
    }
  }

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)sportsNativeAdsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"sportsNativeAdsEnabled", 1);

  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    v5 = [v4 integerForKey:@"news.sports.nativeAdsEnabled"];

    if (v5 == 2)
    {
      return 0;
    }

    if (v5 == 1)
    {
      return 1;
    }
  }

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)inFeedDebugging
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"inFeedDebuggingLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isImprovedManagedTopicGroupingEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"improvedManagedTopicGroupingEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSArray)analyticsEventNamesPublicAllowlist
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"analyticsEventNamesPublicAllowlist", 0);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (NSArray)analyticsEventNamesSeedAllowlist
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"analyticsEventNamesSeedAllowlist", 0);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (NSArray)analyticsEventNamesInternalAllowlist
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"analyticsEventNamesInternalAllowlist", 0);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (BOOL)shouldProxyURLBucketFetch
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"shouldProxyURLBucketFetch", 1);

  return v3;
}

- (int64_t)minimumBucketGroupConfigVersion
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"minimumBucketGroupConfigVersion", 2);

  return v3;
}

- (FCEmbedProxyConfiguration)embedProxyConfiguration
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"embedProxyConfiguration", 0);

  v4 = [[FCEmbedProxyConfiguration alloc] initWithDictionary:v3];

  return v4;
}

- (double)derivedPersonalizationDataBalanceValue
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"derivedPersonalizationDataBalanceValue", 1.0);

  return v3;
}

- (FCNewsPlusLabelConfigGroup)newsPlusLabelConfigGroup
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"newsPlusLabelConfigGroup", 0);

  v4 = [[FCNewsPlusLabelConfigGroup alloc] initWithConfigDictionary:v3];

  return v4;
}

- (FCAppReviewRequestConfig)appReviewRequestConfig
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"appReviewRequestConfig", 0);

  v4 = [[FCAppReviewRequestConfig alloc] initWithDictionary:v3];

  return v4;
}

- (NSArray)analyticsDenylistDescriptorsPublic
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"analyticsDenylistDescriptorsPublic", 0);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (NSArray)analyticsDenylistDescriptorsSeed
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"analyticsDenylistDescriptorsSeed", 0);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (NSDictionary)editorialTopicEventMapping
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"editorialTopicEventMapping", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (NSDictionary)editorialTopicEventMappingProperties
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"editorialTopicEventMappingProperties", 0);
  v5 = v4;
  v6 = MEMORY[0x1E695E0F8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v7 fc_dictionaryByTransformingValuesWithBlock:&__block_literal_global_2693];

  return v8;
}

FCEditorialTopicEventMappingProperty *__55__FCNewsAppConfig_editorialTopicEventMappingProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCEditorialTopicEventMappingProperty alloc] initWithDictionary:v2];

  return v3;
}

- (NSArray)editoralRecommendedSportsTopicTagIds
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationArrayValueWithDefaultValue(v3, @"editoralRecommendedSportsTopicTagIds", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (NSArray)editorialFallbackSportsTopicTagIds
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationArrayValueWithDefaultValue(v3, @"editorialFallbackSportsTopicTagIds", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (int64_t)sportsManagementRecommendedItemsCount
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"sportsManagementRecommendedItemsCount", 5);
  return v4;
}

- (int64_t)sportsManagementMinChildItemsCount
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"sportsManagementMinChildItemsCount", 15);
  return v4;
}

- (NSString)sportsTaxonomyResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"taxonomyResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsStandingConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"standingConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsBoxScoreConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"boxScoreConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsKeyPlayerConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"keyPlayerConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsLineScoreConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"lineScoreConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsInjuryReportConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"injuryReportConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsBracketConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"bracketConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsScoreConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"scoreConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsSyncingConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"sportsSyncingConfigurationV2ResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsFeaturedEventsResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"featuredEventsResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsConfigurationResourceId
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"sportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"configurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)webEmbedDataSourcesConfigurationResourceId
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"webEmbedDataSourcesConfigurationResourceId", 0);

  return v3;
}

- (int64_t)liveActivityFollowedAlertsThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"liveActivityFollowedAlertsThreshold", 3);

  return v3;
}

- (int64_t)liveActivityScheduledAlertsThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"liveActivityScheduledAlertsThreshold", 3);

  return v3;
}

- (double)liveActivityScheduleDelay
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"liveActivityScheduleDelay", 10.0);

  return v3;
}

- (double)liveActivityScheduleRandomInitialDelay
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"liveActivityScheduleRandomInitialDelay", 30.0);

  return v3;
}

- (double)liveActivityScheduleTimeWindow
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"liveActivityScheduleTimeWindow", 300.0);

  return v3;
}

- (double)liveActivityScheduleRetryInterval
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"liveActivityScheduleRetryInterval", 300.0);

  return v3;
}

- (double)liveActivityScheduleRetryTimeWindow
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"liveActivityScheduleRetryTimeWindow", 3600.0);

  return v3;
}

- (int64_t)liveActivityScheduleRetryCountMax
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"liveActivityScheduleRetryCountMax", 5);

  return v3;
}

- (NSArray)liveActivityAssetServerURLs
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  array = [MEMORY[0x1E695DEC8] array];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"liveActivityAssetServerURLs", array);

  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_2781];

  return v5;
}

- (BOOL)sportsSyncingV2Enabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"sportsSyncingV2EnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)exportToGroceryListEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"exportToGroceryListEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSString)exportToGroceryListTipTitle
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"exportToGroceryListTipTitle", 0);

  return v3;
}

- (NSString)exportToGroceryListTipMessage
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"exportToGroceryListTipMessage", 0);

  return v3;
}

- (BOOL)useAltSportsRecommendationMapping
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  LOBYTE(languageConfigDictionary) = FCAppConfigurationBoolValue(v3, @"useAltSportsRecommendationMapping", 0);
  return languageConfigDictionary;
}

- (double)minMembershipForTaxonomyCandidates
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDoubleValue(v3, @"minMembershipForTaxonomyCandidates", 0.0);
  return v4;
}

- (BOOL)considerAutofavoritesInMappingCandidates
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  LOBYTE(languageConfigDictionary) = FCAppConfigurationBoolValue(v3, @"considerAutofavoritesInMappingCandidates", 1);
  return languageConfigDictionary;
}

- (double)minScoreThresholdForSportsRecommendations
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDoubleValue(v3, @"minScoreThresholdForSportsRecommendations", 0.0);
  return v4;
}

- (double)minMembershipThreshold
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDoubleValue(v3, @"minMembershipThreshold", 0.051);
  return v4;
}

- (double)minMembershipThresholdForLocalRecommendation
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDoubleValue(v3, @"minMembershipThresholdForLocalRecommendation", 0.0);
  return v4;
}

- (int64_t)maxSportRecommendationsWithLeagueTypeCollege
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"maxSportRecommendationsWithLeagueTypeCollege", 2);
  return v4;
}

- (int64_t)maxSportRecommendationsPerSport
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"maxSportRecommendationsPerSport", 3);
  return v4;
}

- (NSDictionary)todayFeedGroupClusteringKnobOverrides
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = NewsCoreUserDefaults();
  v4 = [v3 BOOLForKey:@"news.news_personalization.cluster_config_overrides.enabled"];

  if (!NFInternalBuild() || !v4)
  {
    goto LABEL_9;
  }

  v5 = NewsCoreUserDefaults();
  languageConfigDictionary = [v5 stringForKey:@"news.news_personalization.cluster_config_overrides.json"];

  if (![languageConfigDictionary length])
  {
LABEL_8:

LABEL_9:
    languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
    v8 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"todayFeedGroupClusteringKnobOverrides", 0);
    goto LABEL_10;
  }

  v7 = [languageConfigDictionary dataUsingEncoding:4];
  v14 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = v9;
    v11 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "Failed to parse debug override value for todayFeedGroupClusteringKnobOverrides error: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSDictionary)tagFeedGroupClusteringKnobOverrides
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = NewsCoreUserDefaults();
  v4 = [v3 BOOLForKey:@"news.news_personalization.cluster_config_overrides.enabled"];

  if (!NFInternalBuild() || !v4)
  {
    goto LABEL_9;
  }

  v5 = NewsCoreUserDefaults();
  languageConfigDictionary = [v5 stringForKey:@"news.news_personalization.cluster_config_overrides.json"];

  if (![languageConfigDictionary length])
  {
LABEL_8:

LABEL_9:
    languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
    v8 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"tagFeedGroupClusteringKnobOverrides", 0);
    goto LABEL_10;
  }

  v7 = [languageConfigDictionary dataUsingEncoding:4];
  v14 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = v9;
    v11 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "Failed to parse debug override value for topicFeedGroupClusteringKnobOverrides error: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (FCArticleLinkBehaviorConfig)articleLinkBehaviorConfig
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"articleLinkBehaviorConfig", 0);

  v4 = [[FCArticleLinkBehaviorConfig alloc] initWithConfigDictionary:v3];

  return v4;
}

- (FCArticleModalBrandBarConfig)articleModalBrandBarConfig
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"articleModalBrandBarConfig", 0);

  v4 = [[FCArticleModalBrandBarConfig alloc] initWithConfigDictionary:v3];

  return v4;
}

- (FCSportsFavoritesSyncModalConfig)sportsFavoritesSyncModalConfig
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"sportsFavoritesSyncModalConfig", 0);

  v4 = [[FCSportsFavoritesSyncModalConfig alloc] initWithConfigDictionary:v3];

  return v4;
}

- (NSString)newsFeedFormatConfiguration
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"newsFeedFormatConfiguration", 0);

  return v3;
}

- (BOOL)articleLinkBehaviorImprovementsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"articleLinkBehaviorImprovementsEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)allowAnyChannelForTodayChannelGroups
{
  v12 = *MEMORY[0x1E69E9840];
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"allowAnyChannelForTodayChannelGroups", 0);

  if (NFInternalBuild() && (NewsCoreUserDefaults(), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKey:@"news.personalization.allow_any_channel_for_today_channel_groups"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = NewsCoreUserDefaults();
    v3 = [v6 BOOLForKey:@"news.personalization.allow_any_channel_for_today_channel_groups"];

    v7 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v3;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "See internal user with allow any channel for today channel groups override as %d", v11, 8u);
    }
  }

  else if (v3)
  {
    v8 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "allowAnyChannelForTodayChannelGroups being reported as true from app config", v11, 2u);
    }

    LOBYTE(v3) = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (double)tagSubscriptionRepromptDelay
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"tagSubscriptionRepromptDelay", 0.0);

  return v3;
}

- (id)jsonEncodableObject
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = [configDictionary copy];

  return v3;
}

void __41__FCNewsAppConfig_overrideForYouConfigID__block_invoke()
{
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    if ([v4 BOOLForKey:@"enable_config_overrides"])
    {
      v0 = NewsCoreUserDefaults();
      v1 = [v0 stringForKey:@"override_foryouconfig_id"];
      v2 = _MergedGlobals_139;
      _MergedGlobals_139 = v1;
    }

    else
    {
      v0 = _MergedGlobals_139;
      _MergedGlobals_139 = 0;
    }

    v3 = v4;
  }

  else
  {
    v3 = _MergedGlobals_139;
    _MergedGlobals_139 = 0;
  }
}

void __48__FCNewsAppConfig_overrideForYouPremiumConfigID__block_invoke()
{
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    if ([v4 BOOLForKey:@"enable_config_overrides"])
    {
      v0 = NewsCoreUserDefaults();
      v1 = [v0 stringForKey:@"override_foryouconfig_premium_id"];
      v2 = qword_1EDB26F98;
      qword_1EDB26F98 = v1;
    }

    else
    {
      v0 = qword_1EDB26F98;
      qword_1EDB26F98 = 0;
    }

    v3 = v4;
  }

  else
  {
    v3 = qword_1EDB26F98;
    qword_1EDB26F98 = 0;
  }
}

void __48__FCNewsAppConfig_overrideWidgetSectionConfigID__block_invoke()
{
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    if ([v4 BOOLForKey:@"enable_config_overrides"])
    {
      v0 = NewsCoreUserDefaults();
      v1 = [v0 stringForKey:@"override_widgetsectionconfig_id"];
      v2 = qword_1EDB26FA8;
      qword_1EDB26FA8 = v1;
    }

    else
    {
      v0 = qword_1EDB26FA8;
      qword_1EDB26FA8 = 0;
    }

    v3 = v4;
  }

  else
  {
    v3 = qword_1EDB26FA8;
    qword_1EDB26FA8 = 0;
  }
}

void __69__FCNewsAppConfig_defaultForYouRecordConfigIDByLocalizedStorefrontID__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"Y", @"143441"];
  v9[0] = v0;
  v8[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"Y", @"143455"];
  v9[1] = v1;
  v8[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"Y", @"143455"];
  v9[2] = v2;
  v8[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"Y", @"143444"];
  v9[3] = v3;
  v8[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"Y", @"143460"];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_1EDB26FB8;
  qword_1EDB26FB8 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

void __76__FCNewsAppConfig_defaultForYouPremiumRecordConfigIDByLocalizedStorefrontID__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"YP", @"143441"];
  v9[0] = v0;
  v8[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"YP", @"143455"];
  v9[1] = v1;
  v8[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"YP", @"143455"];
  v9[2] = v2;
  v8[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"YP", @"143444"];
  v9[3] = v3;
  v8[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"YP", @"143460"];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_1EDB26FC8;
  qword_1EDB26FC8 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

void __69__FCNewsAppConfig_defaultWidgetRecordConfigIDByLocalizedStorefrontID__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"W", @"143441"];
  v9[0] = v0;
  v8[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"W", @"143455"];
  v9[1] = v1;
  v8[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"W", @"143455"];
  v9[2] = v2;
  v8[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"W", @"143444"];
  v9[3] = v3;
  v8[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"W", @"143460"];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_1EDB26FD8;
  qword_1EDB26FD8 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

void __72__FCNewsAppConfig_defaultMagazinesConfigRecordIDByLocalizedStorefrontID__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"configuration-magazines", @"143441"];
  v9[0] = v0;
  v8[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"configuration-magazines", @"143455"];
  v9[1] = v1;
  v8[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"configuration-magazines", @"143455"];
  v9[2] = v2;
  v8[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"configuration-magazines", @"143444"];
  v9[3] = v3;
  v8[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"configuration-magazines", @"143460"];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_1EDB26FE8;
  qword_1EDB26FE8 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

void __68__FCNewsAppConfig_defaultAudioConfigRecordIDByLocalizedStorefrontID__block_invoke()
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"U", @"143441"];
  v9[0] = v0;
  v8[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"U", @"143455"];
  v9[1] = v1;
  v8[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"U", @"143455"];
  v9[2] = v2;
  v8[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"U", @"143444"];
  v9[3] = v3;
  v8[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"U", @"143460"];
  v9[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_1EDB26FF8;
  qword_1EDB26FF8 = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (int64_t)numberOfFetchedHeadlinesToReport
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"headlinePersonalizationInstrumentationConfig", 0);

  if (FCAppConfigurationBoolValue(v3, @"sendsAllFetchedHeadlines", 0))
  {
    v4 = FCAppConfigurationIntegerValue(v3, @"maxNumberOfHeadlines", 0);
  }

  else
  {
    v4 = FCAppConfigurationIntegerValue(v3, @"numberOfSampledHeadlines", 0);
    v5 = FCAppConfigurationIntegerValue(v3, @"maxNumberOfHeadlines", 0);
    if (v4 >= v5)
    {
      v4 = v5;
    }
  }

  return v4;
}

- (BOOL)shouldShuffleReportedHeadlines
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"headlinePersonalizationInstrumentationConfig", 0);

  LOBYTE(configDictionary) = FCAppConfigurationBoolValue(v3, @"sendsAllFetchedHeadlines", 0);
  return configDictionary ^ 1;
}

- (BOOL)enableAIAttribution
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"enableAIAttributionEnabledLevelV2", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSString)aiAttributionArticleString
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(languageConfigDictionary, @"aiAttributionArticleString", 0);

  return v3;
}

- (BOOL)enableTabiAdSegments
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"enableTabiAdSegments", 0);

  return v3;
}

- (BOOL)enableTabiMyMagazinesPersonalization
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"enableTabiMyMagazinesPersonalization", 0);

  return v3;
}

- (BOOL)aggregatesInNotificationExtensionXavierEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"aggregatesInNotificationExtensionXavierEnabled", 1);

  return v3;
}

- (BOOL)tabiScoringInNotificationExtensionEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"tabiScoringInNotificationExtensionEnabled", 0);

  return v3;
}

- (BOOL)aggregatesInWidgetsXavierEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"aggregatesInWidgetsXavierEnabled", 1);

  return v3;
}

- (BOOL)tabiScoringInWidgetsEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"tabiScoringInWidgetsEnabled", 0);

  return v3;
}

- (BOOL)widgetForYouFromDaemonEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"widgetForYouFromDaemonEnabled", 0);

  return v3;
}

- (BOOL)todayWidgetForYouBestOfEnabled
{
  if (!NFInternalBuild())
  {
LABEL_5:
    configDictionary = [(FCNewsAppConfig *)self configDictionary];
    v7 = FCAppConfigurationBoolValue(configDictionary, @"todayWidgetForYouBestOfEnabled", 0);

    return v7;
  }

  v3 = NewsCoreUserDefaults();
  v4 = [v3 integerForKey:@"widget_for_you_best_of_enabled"];

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      return 0;
    }

    goto LABEL_5;
  }

  return 1;
}

- (int64_t)todayWidgetForYouMaxInaccessible
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"todayWidgetForYouMaxInaccessible", 1000);

  return v3;
}

- (int64_t)todayWidgetForYouMaxEvergreen
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"todayWidgetForYouMaxEvergreen", 1000);

  return v3;
}

- (int64_t)todayWidgetForYouMaxPublisherOccurrences
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"todayWidgetForYouMaxPublisherOccurrences", 1000);

  return v3;
}

- (double)todayWidgetForYouBundleArticleQuota
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"todayWidgetForYouBundleArticleQuota", 0.0);

  return v3;
}

- (double)todayWidgetForYouTopicDiversityThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"todayWidgetForYouTopicDiversityThreshold", 1.0);

  return v3;
}

- (int64_t)todayWidgetForYouTopicDiversityWindowSize
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"todayWidgetForYouTopicDiversityWindowSize", 1);

  return v3;
}

- (NSArray)todayWidgetForYouTopicDiversityAllowedTopicIDs
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDictionary, @"todayWidgetForYouTopicDiversityAllowedTopicIDs", 0);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (int64_t)todayWidgetForYouMaxAIGArticles
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"todayWidgetForYouMaxAIGArticles", 1000);

  return v3;
}

- (NSDictionary)articleConfig
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDictionary, @"articleConfig", 0);

  return v3;
}

- (int64_t)audioPlaylistSweepRecencyThresholdInDays
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(configDictionary, @"audioPlaylistSweepRecencyThresholdInDays", 7);

  return v3;
}

- (double)audioPlaylistSweepListeningPercentageThreshold
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"audioPlaylistSweepListeningPercentageThreshold", 0.4);

  return v3;
}

- (double)offlineModeDetectionPingInterval
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"offlineModeDetectionPingInterval", 1.0);

  return v3;
}

- (double)offlineModeDetectionPingTimeoutInterval
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"offlineModeDetectionPingTimeoutInterval", 5.0);

  return v3;
}

- (double)offlineModeThrottleUnreliableDetectionTimeoutInterval
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(configDictionary, @"offlineModeThrottleUnreliableDetectionTimeoutInterval", 10.0);

  return v3;
}

- (NSDictionary)channelGroupBaselineMultipliers
{
  languageConfigDictionary = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(languageConfigDictionary, @"channelGroupBaselineMultipliers", MEMORY[0x1E695E0F8]);

  return v3;
}

- (BOOL)tabiBackgroundRefreshEnabled
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"tabiBackgroundRefreshEnabled", 1);

  return v3;
}

- (BOOL)shouldIncludeRecipePersonalizationScienceData
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"shouldIncludeRecipePersonalizationScienceData", 1);

  return v3;
}

- (NSString)smarterFetchStrategy
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(configDictionary, @"smarterFetchStrategy", 0);

  return v3;
}

- (BOOL)isSmarterFetchEnabledForESL
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"isSmarterFetchEnabledForESL", 0);

  return v3;
}

- (BOOL)isSmarterFetchEnabledForLatest
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"isSmarterFetchEnabledForLatest", 0);

  return v3;
}

- (BOOL)isSmarterFetchEnabledForSupplementalESL
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"isSmarterFetchEnabledForSupplementalESL", 0);

  return v3;
}

- (BOOL)isSmarterFetchEnabledForSupplementalLatest
{
  configDictionary = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(configDictionary, @"isSmarterFetchEnabledForSupplementalLatest", 0);

  return v3;
}

@end