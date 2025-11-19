@interface FCNewsAppConfig
+ (id)configurationWithData:(void *)a3 storefrontID:(void *)a4 preferredLanguageTags:;
+ (id)defaultConfigurationForStoreFrontID:(uint64_t)a1;
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
- (id)analyticsEnvelopeContentTypeConfigsForEnvironment:(unint64_t)a3;
- (id)appAnalyticsAppHealthEndpointUrlForEnvironment:(unint64_t)a3;
- (id)appAnalyticsAppHeartbeatEndpointUrlForEnvironment:(unint64_t)a3;
- (id)appAnalyticsEndpointUrlForEnvironment:(unint64_t)a3;
- (id)appAnalyticsNotificationReceiptEndpointUrlForEnvironment:(unint64_t)a3;
- (id)expFieldForKey:(void *)a1;
- (id)jsonEncodableObject;
- (id)localizedStorefrontID;
- (id)paidALaCartePaywallConfigForChannelID:(id)a3;
- (id)personalizationTreatment;
- (id)recipeTagRecipeListIDPrefix;
- (id)todayConfigWithIdentifier:(id)a3 queueConfigs:(id)a4 backgroundColorLight:(id)a5 backgroundColorDark:(id)a6 audioIndicatorColor:(id)a7 widgetBannerConfig:(id)a8;
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
- (void)initWithConfigDictionary:(void *)a3 storefrontID:(void *)a4 languageConfigDictionary:;
@end

@implementation FCNewsAppConfig

- (id)localizedStorefrontID
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 languageConfigDictionary];
    if (v2)
    {
      v1 = [v1 storefrontID];
      v3 = FCAppConfigurationStringValue(v2, @"languageTag", &stru_1F2DC7DC0);
      v4 = [v3 lowercaseString];

      if ([v1 isEqualToString:@"143455"] && objc_msgSend(v4, "isEqualToString:", @"fr-ca"))
      {
        v5 = @"143455-fr-ca";

        v1 = v5;
      }
    }

    else
    {
      v4 = +[FCAppleAccount sharedAccount];
      v1 = [v4 supportedLocalizedContentStoreFrontID];
    }
  }

  return v1;
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"offlineModeMinimumSecondsSinceSuccessToOffline2", 10.0);

  return v3;
}

- (BOOL)useSecureConnectionForAssets
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"useSecureConnectionForAssets", 1);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"offlineModeMaximumDurationToCountAsSuccess", 3.0);

  return v3;
}

- (NSArray)offlineModeDetectionIgnoredHosts
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"offlineModeDetectionIgnoredHosts", &unk_1F2E6F8E8);

  return v3;
}

- (int64_t)maximumRetryAfterForCK
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maximumRetryAfterForCK", 3600);

  return v3;
}

- (NSString)experimentalizableFieldPostfix
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"experimentalizableFieldPostfix", 0);

  return v3;
}

- (BOOL)shouldShowAlternateHeadlines
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"shouldShowAlternateHeadlines", 1);

  return v3;
}

- (BOOL)articleEmbeddingsEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"articleEmbeddingsEnabled", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"orderFeedEnabledLevel", 7);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"checkForPaywallConfigChangesEnabled", 0);

  return v3;
}

- (double)newsletterSubscriptionStatusCacheTimeout
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"newsletterConfig", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"newsletterSubscriptionStatusCacheTimeout", 86400);
  return v4;
}

- (BOOL)isDefaultConfiguration
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = v2 == 0;

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
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v8 = FCAppConfigurationIntegerValue(v7, @"todayFeedLoadToCacheTimeWindow", 7200);
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

  v7 = v6;

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v7 integerValue];
LABEL_12:
  v9 = v8;

  return v9;
}

- (int64_t)entitlementsRequestTimeoutDurationInSeconds
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"entitlementsRequestTimeoutDurationInSeconds", 5);

  return v3;
}

- (int64_t)appConfigRefreshRate
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"appConfigRefreshRate", 3600);

  return v3;
}

- (BOOL)offlineModeEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"offlineModeEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)foodEnabled
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"foodEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isAnalyticsJitterEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"analyticsJitterEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (double)analyticsJitterLowerBound
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"analyticsJitterLowerBound", -600.0);

  return v3;
}

- (double)analyticsJitterUpperBound
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"analyticsJitterUpperBound", 600.0);

  return v3;
}

- (NSArray)analyticsDenylistDescriptorsInternal
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"analyticsDenylistDescriptorsInternal", 0);
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

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(v6, @"articleEmbeddingsScoringEnabled", 0);

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

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(v6, @"clientSideEngagementBoostEnabled", 0);

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

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(v6, @"fallbackToReverseChronSorting", 0);

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

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(v6, @"statelessPersonalizationEnabled2", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (BOOL)statelessPersonalizationAllowedForExtensions
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"statelessPersonalizationAllowedForExtensions", 1);

  return v3;
}

- (FCPersonalizationPublisherDampeningConfig)publisherDampeningConfig
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"publisherDampeningConfig", 0);

  v4 = [[FCPersonalizationPublisherDampeningConfig alloc] initWithConfig:v3];

  return v4;
}

- (FCPersonalizationPublisherDampeningConfig)shadowPublisherDampeningConfig
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"shadowPublisherDampeningConfig", 0);

  if (v4)
  {
    v5 = [[FCPersonalizationPublisherDampeningConfig alloc] initWithConfig:v4];
  }

  else
  {
    v5 = [(FCNewsAppConfig *)self publisherDampeningConfig];
  }

  v6 = v5;

  return v6;
}

- (FCStatelessPersonalizationPublisherFavorability)statelessPersonalizationPublisherFavorability
{
  v3 = [FCStatelessPersonalizationPublisherFavorability alloc];
  v4 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v5 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"statelessPersonalizationPublisherFavorability", 0);
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"personalizationAnalytics", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"enableTabiTagScoring", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"enableTabiCohortMemberships", 0);

  return v3;
}

- (BOOL)aggregatesInAppXavierEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"aggregatesInXavierEnabled", 1);

  return v3;
}

- (BOOL)liveActivitiesEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"liveActivitiesEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)useSearchInArticle
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"useSearchInArticleEnabledLevel", 0);

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
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v8 = FCAppConfigurationArrayValueWithDefaultValue(v7, @"internalPersonalizationRequestsToCollect", &unk_1F2E6F8D0);
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"financeURLAnalyticsAllowLists", 0);

  return v3;
}

- (BOOL)enableNewsPersonalizationAutoFavorites
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"enableNewsPersonalizationAutoFavorites", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"subscriptionsGlobalMeteredCount", 30);

  return v3;
}

- (BOOL)smarterMessagingEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"smarterMessagingEnabledLevel", 0xFFFFFFFFLL);

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

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(v6, @"useNotificationsV2EnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (FCSmarterMessagingConfig)smarterMessagingConfig
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"smarterMessagingConfig", 0);

  v4 = [[FCSmarterMessagingConfig alloc] initWithDictionary:v3];

  return v4;
}

- (int64_t)stateRestorationAllowedTimeWindow
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"news.demo.allow_long_state_restoration"];

  if (v4)
  {
    return 86400;
  }

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(v6, @"stateRestorationAllowedTimeWindow", 7200);

  return v7;
}

- (NSString)todayFeedEditionConfigJSON
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"todayFeedEditionConfigJson", 0);

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

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(v6, @"foregroundHeartbeatEventEnabled2", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
}

- (BOOL)foregroundHeartbeatEventShouldUseQueue
{
  if (NFInternalBuild() && (NewsCoreUserDefaults(), v3 = objc_claimAutoreleasedReturnValue(), [v3 objectForKey:@"news.features.foregroundHeartbeatEventShouldUseQueue"], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = NewsCoreUserDefaults();
    v6 = [v5 BOOLForKey:@"news.features.foregroundHeartbeatEventShouldUseQueue"];
  }

  else
  {
    v5 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationBoolValue(v5, @"foregroundHeartbeatEventShouldUseQueue", 1);
  }

  v7 = v6;

  return v7;
}

- (int64_t)feedAdScreenfulsToPrefetch
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"feedAdScreenfulsToPrefetch", 3);

  return v3;
}

- (BOOL)useWelcomeSeries
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"useWelcomeSeriesEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)feedDifferentiationModeEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"feedDifferentiationModeEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isTodaySponsorshipEligible
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"isTodaySponsorshipEligible", 1);

  return v3;
}

- (BOOL)adSponsorshipsEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"adSponsorshipsEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)appReviewRequestEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"appReviewRequestEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (int64_t)newsletterSubscriptionType
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"newsletterConfig", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"newsletterSubscriptionType", 2);
  return v4;
}

- (NSString)personalizationBundleIdMappingResourceId
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"personalizationBundleIdMappingResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"personalizationBundleIdMappingResourceId", 0);
  }

  return v6;
}

- (NSString)personalizationUrlMappingResourceId
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"personalizationUrlMappingResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"personalizationUrlMappingResourceId", 0);
  }

  return v6;
}

- (NSString)personalizationWhitelistResourceId
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"personalizationWhitelistResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"personalizationWhitelistResourceId", 0);
  }

  return v6;
}

- (NSString)personalizationFavorabilityResourceId
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"personalizationPublisherFavorabilityScoresResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"personalizationPublisherFavorabilityScoresResourceId", 0);
  }

  return v6;
}

- (NSArray)topStoriesPublishDates
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"topStoriesPublishTimeIntervals", 0);

  v4 = [v3 fc_arrayByTransformingWithBlock:&__block_literal_global_2301];

  return v4;
}

- (BOOL)configurableOffersEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"configurableOffersEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSString)configurableOffersMappingResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"configurableOffersMappingResourceId", @"configuration-configurable-offers-mapping-143441-en");

  return v3;
}

- (NSArray)deprecatedSportsTopicTagIds
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"foodHubTagId", 0);

  return v3;
}

- (NSString)recipeCatalogTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"recipeCatalogTagId", 0);

  return v3;
}

- (int64_t)articleRapidUpdatesTimeout
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"articleRapidUpdatesTimeout", 21600);

  return v3;
}

- (BOOL)adInstrumentationEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"adInstrumentationEnabled", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"bestOfferRequestTimeoutDurationInSeconds", 5);

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

+ (id)defaultConfigurationForStoreFrontID:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [[FCNewsAppConfig alloc] initWithConfigDictionary:v2 storefrontID:0 languageConfigDictionary:?];

  return v3;
}

- (void)initWithConfigDictionary:(void *)a3 storefrontID:(void *)a4 languageConfigDictionary:
{
  v339 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1 || (v328.receiver = a1, v328.super_class = FCNewsAppConfig, (v10 = objc_msgSendSuper2(&v328, sel_init)) == 0))
  {
    v50 = 0;
    goto LABEL_115;
  }

  v11 = v10;
  v12 = [v7 copy];
  v13 = v11[2];
  v11[2] = v12;

  v14 = [v8 copy];
  v15 = v11[6];
  v11[6] = v14;

  v297 = v9;
  v16 = [v9 copy];
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

  v21 = [v11 languageConfigDictionary];
  v22 = FCAppConfigurationDictionaryValueWithOverride(v21, @"peopleAlsoReadConfiguration", @"news.news_personalization.people_also_read_config_overrides.enabled", @"news.news_personalization.people_also_read_config_overrides.json");

  v23 = [[FCPeopleAlsoReadConfiguration alloc] initWithDictionary:v22];
  v24 = v11[3];
  v11[3] = v23;

  v298 = v7;
  v25 = v8;
  v26 = [FCOfflineDownloadsConfiguration alloc];
  v27 = [v11 configDictionary];
  v28 = FCAppConfigurationDictionaryValueWithDefaultValue(v27, @"offlineDownloadsConfig", 0);
  v29 = [(FCOfflineDownloadsConfiguration *)v26 initWithDictionary:v28 optimized:0];
  v30 = v11[4];
  v11[4] = v29;

  v31 = [FCOfflineDownloadsConfiguration alloc];
  v32 = [v11 configDictionary];
  v33 = FCAppConfigurationDictionaryValueWithDefaultValue(v32, @"offlineDownloadsConfigOptimized", 0);
  v34 = [(FCOfflineDownloadsConfiguration *)v31 initWithDictionary:v33 optimized:1];
  v35 = v11[5];
  v11[5] = v34;

  v36 = [v11 configDictionary];
  v37 = FCAppConfigurationIntegerValue(v36, @"enabledPrivateDataEncryptionLevel", 896);

  v38 = [v11 configDictionary];
  v39 = FCAppConfigurationIntegerValue(v38, @"privateDataMigrationCleanupLevel", 7);

  v40 = [v11 configDictionary];
  v41 = FCAppConfigurationIntegerValue(v40, @"privateDataSecureSubscriptionsLevel", 7);

  v42 = [v11 configDictionary];
  v43 = FCAppConfigurationIntegerValue(v42, @"privateDataSecureSubscriptionsCleanupLevel", 0xFFFFFFFFLL);

  v44 = [v11 configDictionary];
  v45 = FCAppConfigurationIntegerValue(v44, @"privateDataEncryptionRequiredLevel", 7);

  v46 = [v11 configDictionary];
  v47 = FCAppConfigurationIntegerValue(v46, @"privateDataMigrateToV4Level3", 0);

  v48 = [v11 configDictionary];
  v49 = FCAppConfigurationIntegerValue(v48, @"privateDataCleanupToV4Level3", 0);

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
  v303 = [MEMORY[0x1E695DF90] dictionary];
  v304 = objc_opt_new();
  v51 = [v11 configDictionary];
  v52 = FCAppConfigurationArrayValueWithDefaultValue(v51, @"endpointConfigs", 0);

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
        [v303 setObject:v60 forKey:v63];
        v64 = FCAppConfigurationLog;
        if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_INFO))
        {
          loga = v64;
          v65 = [(FCEndpointConfiguration *)v60 clientAPIBaseURLString];
          v66 = [(FCEndpointConfiguration *)v60 notificationsBaseURLString];
          v67 = [(FCEndpointConfiguration *)v60 staticAssetBaseURLString];
          v68 = [(FCEndpointConfiguration *)v60 remoteDataSourceBaseURLString];
          v69 = [(FCEndpointConfiguration *)v60 newsletterAPIBaseURLString];
          [(FCEndpointConfiguration *)v60 appAnalyticsAppHeartbeatBaseURLString];
          v71 = v70 = v60;
          *buf = 134219522;
          *&buf[4] = v62;
          *&buf[12] = 2112;
          *&buf[14] = v65;
          *&buf[22] = 2112;
          *&buf[24] = v66;
          LOWORD(v334[0]) = 2112;
          *(v334 + 2) = v67;
          HIWORD(v334[2]) = 2112;
          *&v334[3] = v68;
          LOWORD(v334[5]) = 2112;
          *(&v334[5] + 2) = v69;
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
  *(v300 + 9) = v303;
  v76 = v303;

  v77 = *(v300 + 53);
  *(v300 + 53) = v304;

  v78 = [v300 languageConfigDictionary];
  v79 = FCAppConfigurationArrayValueWithDefaultValue(v78, @"preSubscribedNotificationsChannelIds", 0);

  v80 = [v300 languageConfigDictionary];
  v81 = FCAppConfigurationArrayValueWithDefaultValue(v80, @"recommendedNotificationChannels", 0);

  v82 = [v81 fc_arrayByTransformingWithBlock:&__block_literal_global_172];
  v83 = [[FCNotificationsConfiguration alloc] initWithPresubscribedChannelIDs:v79 recommendedNotificationChannelIDs:v82];
  v84 = *(v300 + 10);
  *(v300 + 10) = v83;

  v85 = [v300 languageConfigDictionary];
  v86 = FCAppConfigurationDictionaryValueWithDefaultValue(v85, @"topStoriesConfig", 0);

  v87 = [[FCTopStoriesConfiguration alloc] initWithConfigDictionary:v86];
  v88 = *(v300 + 11);
  *(v300 + 11) = v87;

  v89 = [v300 configDictionary];
  v90 = FCAppConfigurationStringValue(v89, @"forYouNonPersonalizedGroupsOrder", 0);

  v91 = [[FCForYouGroupsConfiguration alloc] initWithJSONConfiguration:v90];
  v92 = *(v300 + 12);
  *(v300 + 12) = v91;

  v93 = v299;
  v94 = [v300 languageConfigDictionary];
  v95 = FCAppConfigurationDictionaryValueWithDefaultValue(v94, @"puzzlesConfig", 0);

  *v336 = @"143441";
  *&v336[8] = @"143455";
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:2];
  v97 = [[FCPuzzlesConfiguration alloc] initWithConfigDictionary:v95 storefrontID:v93 defaultSupportedStorefronts:v96];

  v98 = *(v300 + 13);
  *(v300 + 13) = v97;

  v99 = [v300 configDictionary];
  v100 = FCAppConfigurationDictionaryValueWithDefaultValue(v99, @"iadConfig", 0);

  v101 = [[FCIAdConfiguration alloc] initWithConfigDictionary:v100];
  v102 = *(v300 + 14);
  *(v300 + 14) = v101;

  v103 = [v300 configDictionary];
  v104 = FCAppConfigurationDictionaryValueWithDefaultValue(v103, @"prefetchConfig", 0);

  v105 = [[FCPrefetchConfiguration alloc] initWithConfigDictionary:v104];
  v106 = *(v300 + 15);
  *(v300 + 15) = v105;

  v107 = [v300 languageConfigDictionary];
  v108 = FCAppConfigurationDictionaryValueWithDefaultValue(v107, @"shareVideoPlayerConfig", 0);

  v109 = objc_opt_new();
  v110 = FCAppConfigurationStringValue(v108, @"discoverMoreVideosTitle", 0);
  [v109 setTitle:v110];

  v111 = FCAppConfigurationStringValue(v108, @"discoverMoreVideosSubtitle", 0);
  [v109 setSubtitle:v111];

  v112 = FCAppConfigurationStringValue(v108, @"discoverMoreVideosUrl", 0);
  [v109 setActionURLString:v112];

  v113 = *(v300 + 17);
  *(v300 + 17) = v109;

  v114 = [v300 configDictionary];
  v115 = FCAppConfigurationDictionaryValueWithDefaultValue(v114, @"widgetConfig2", 0);

  v116 = [[FCWidgetConfig alloc] initWithConfigDictionary:v115];
  v117 = *(v300 + 54);
  *(v300 + 54) = v116;

  v118 = [v300 languageConfigDictionary];
  v119 = FCAppConfigurationDictionaryValueWithDefaultValue(v118, @"channelPaywallConfigurations", 0);

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

  v132 = [v300 languageConfigDictionary];
  v133 = FCAppConfigurationDictionaryValueWithDefaultValue(v132, @"channelUpsellConfigurations2", 0);

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

  v146 = [v300 languageConfigDictionary];
  v147 = FCAppConfigurationDictionaryValueWithDefaultValue(v146, @"sportsUpsellConfiguration", 0);

  v148 = [[FCSportsUpsellConfig alloc] initWithConfigDictionary:v147];
  v149 = *(v300 + 20);
  *(v300 + 20) = v148;

  v150 = [v300 languageConfigDictionary];
  v151 = FCAppConfigurationDictionaryValueWithDefaultValue(v150, @"locationSharingUpsellConfiguration", 0);

  v152 = [[FCLocationSharingUpsellConfig alloc] initWithConfigDictionary:v151];
  v153 = *(v300 + 21);
  *(v300 + 21) = v152;

  v154 = [v300 languageConfigDictionary];
  v155 = FCAppConfigurationDictionaryValueWithDefaultValue(v154, @"paidBundleViaOfferConfiguration", 0);

  v156 = [[FCPaidBundleViaOfferConfig alloc] initWithConfigDictionary:v155];
  v157 = *(v300 + 22);
  *(v300 + 22) = v156;

  v158 = v93;
  v159 = [v300 languageConfigDictionary];
  v160 = FCAppConfigurationDictionaryValueWithDefaultValue(v159, @"paidBundleConfig", 0);

  v161 = [FCPaidBundleConfiguration alloc];
  v162 = [(FCNewsAppConfig *)v300 localizedStorefrontID];
  *v336 = @"143441";
  *&v336[8] = @"143455";
  *&v336[16] = @"143444";
  v337 = @"143460";
  v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:4];
  v164 = [(FCPaidBundleConfiguration *)v161 initWithConfigDictionary:v160 storefrontID:v158 localizedStorefrontID:v162 defaultSupportedStoreFronts:v163];

  v165 = *(v300 + 23);
  *(v300 + 23) = v164;

  if (NFInternalBuild())
  {
    v166 = NewsCoreUserDefaults();
    if ([v166 integerForKey:@"news.features.statelessPersonalization"] == 1)
    {
      v167 = [v300 configDictionary];
      v168 = FCAppConfigurationDictionaryValueWithDefaultValue(v167, @"newsPersonalizationConfiguration", 0);

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
        v172 = *(v300 + 42);
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
  v172 = [v300 configDictionary];
  v175 = FCAppConfigurationDictionaryValueWithDefaultValue(v172, @"newsPersonalizationConfiguration", 0);
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
        v296 = [v186 localizedDescription];
        *v336 = 138543362;
        *&v336[4] = v296;
        _os_log_error_impl(&dword_1B63EF000, v295, OS_LOG_TYPE_ERROR, "Failed to decode tabi config into Dictionary, proceeding as if no override is in place %{public}@", v336, 0xCu);
      }
    }

    else
    {
      v191 = [[FCNewsTabiConfiguration alloc] initWithDictionary:v185];
      v284 = [(FCNewsTabiConfiguration *)v191 packageAssetIDs];
      v285 = [v284 count];

      if (v285)
      {
        v171 = v300;
        objc_storeStrong(v300 + 43, v191);
        v286 = FCTabiConfigurationLog;
        if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_DEFAULT))
        {
          v287 = v286;
          v288 = [(FCNewsTabiConfiguration *)v191 version];
          *v336 = 138543362;
          *&v336[4] = v288;
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
  v188 = [v171 languageConfigDictionary];
  v178 = FCAppConfigurationDictionaryValueWithDefaultValue(v188, @"newsTabiConfigurationV2", 0);

  v189 = [v171 languageConfigDictionary];
  v185 = FCAppConfigurationDictionaryValueWithDefaultValue(v189, @"newsTabiConfigurationDawnburstD", 0);

  v190 = [v171 languageConfigDictionary];
  v191 = FCAppConfigurationDictionaryValueWithDefaultValue(v190, @"newsTabiConfigurationDawnburstB", 0);

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
      v199 = [v171 languageConfigDictionary];
      v291 = FCAppConfigurationDictionaryValueWithDefaultValue(v199, @"newsTabiConfiguration", MEMORY[0x1E695E0F8]);
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
  v199 = v171[43];
  v171[43] = v198;
LABEL_65:

  v200 = FCAppConfigurationLog;
  if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_DEFAULT))
  {
    v201 = v171[43];
    v202 = v200;
    v203 = [v201 version];
    *v336 = 138543362;
    *&v336[4] = v203;
    _os_log_impl(&dword_1B63EF000, v202, OS_LOG_TYPE_DEFAULT, "Loaded tabi configuration version %{public}@", v336, 0xCu);
  }

LABEL_67:

  v204 = [v171 languageConfigDictionary];
  v205 = FCAppConfigurationDictionaryValueWithDefaultValue(v204, @"channelPickerConfigurations", 0);

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

  v218 = [v300 configDictionary];
  v219 = FCAppConfigurationDictionaryValueWithDefaultValue(v218, @"launchPresentationConfigV2", 0);

  v220 = [[FCLaunchPresentationConfig alloc] initWithConfigDictionary:v219];
  v221 = *(v300 + 49);
  *(v300 + 49) = v220;

  v222 = [v300 languageConfigDictionary];
  v223 = FCAppConfigurationDictionaryValueWithDefaultValue(v222, @"campaignReferralConfigurations", 0);

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
    v8 = v299;
    v9 = v297;
    if (os_log_type_enabled(FCStatelessPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *v336 = 0;
      _os_log_impl(&dword_1B63EF000, v282, OS_LOG_TYPE_DEFAULT, "See an internal build with no times of day configuration in the app config, falling back to default", v336, 2u);
    }

    v283 = +[FCTimesOfDayConfiguration defaultConfiguration];
    v239 = *(v300 + 47);
    *(v300 + 47) = v283;
  }

  else
  {
    v238 = [FCTimesOfDayConfiguration alloc];
    v239 = [v300 configDictionary];
    v240 = FCAppConfigurationDictionaryValueWithDefaultValue(v239, @"timesOfDayConfiguration", 0);
    v241 = [(FCTimesOfDayConfiguration *)v238 initWithDictionary:v240];
    v242 = *(v300 + 47);
    *(v300 + 47) = v241;

    v7 = v298;
    v8 = v299;
    v9 = v297;
  }

  v243 = [v300 languageConfigDictionary];
  v244 = FCAppConfigurationDictionaryValueWithDefaultValue(v243, @"superfeedConfigOverrides", 0);

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

  v249 = [v300 languageConfigDictionary];
  v250 = FCAppConfigurationDictionaryValueWithDefaultValue(v249, @"autoFavoritesServiceConfiguration", 0);

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

  v259 = [v50 languageConfigDictionary];
  v260 = FCAppConfigurationDictionaryValueWithDefaultValue(v259, @"notificationScoringServiceConfiguration", 0);

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

  v269 = [v50 languageConfigDictionary];
  v270 = FCAppConfigurationDictionaryValueWithDefaultValue(v269, @"recipeAutoFavoritesServiceConfiguration", 0);

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

+ (id)configurationWithData:(void *)a3 storefrontID:(void *)a4 preferredLanguageTags:
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
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

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
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
    v47 = v7;
    v48 = v6;
    v10 = v9;
    v46 = v8;
    v11 = v8;
    objc_opt_self();
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = FCAppConfigurationArrayValueWithDefaultValue(v10, @"languageConfigs", 0);
    v45 = v10;
    v14 = FCAppConfigurationStringValue(v10, @"fallbackLanguageTag", 0);
    v51 = [v14 lowercaseString];

    v44 = v11;
    v43 = [v11 fc_arrayByTransformingWithBlock:&__block_literal_global_27];
    v50 = [v13 firstObject];
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
          v21 = [v20 lowercaseString];

          [v12 setObject:v19 forKeyedSubscript:v21];
          v22 = __75__FCNewsAppConfig_languageConfigDictionaryForConfig_preferredLanguageTags___block_invoke_2(v21);
          v23 = [v12 objectForKeyedSubscript:v22];

          if (!v23)
          {
            [v12 setObject:v19 forKeyedSubscript:v22];
          }

          if ([v21 isEqualToString:v51])
          {
            v24 = v19;

            v50 = v24;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v56 objects:buf count:16];
      }

      while (v16);
    }

    if ([v12 count])
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
            v33 = [v12 objectForKeyedSubscript:v31];
            if (v33 || ([v12 objectForKeyedSubscript:v32], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
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
      v37 = v50;
    }

    v38 = v37;

    v35 = v45;
    v6 = v48;
    v8 = v46;
    if (v38)
    {
      v7 = v47;
      v36 = [[FCNewsAppConfig alloc] initWithConfigDictionary:v45 storefrontID:v47 languageConfigDictionary:v38];
    }

    else
    {
      v36 = 0;
      v7 = v47;
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"optimizedStorageAutoEnablementThreshold", 3000000000);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"delayedNotificationSchedulerConfiguration", 0);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"delayedNotificationVendorConfiguration", 0);

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
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"localInForYouTopicTagAllowList", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"trendingTopicsRefreshRate", 3600);

  return v3;
}

- (int64_t)dailyChannelUpsellsCountLimit
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"dailyChannelUpsellsCountLimit", 3);

  return v3;
}

- (int64_t)shortcutsMaxCount
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"shortcutsMaxCount", 8);

  return v3;
}

- (BOOL)autoOnboardShortcuts
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"autoOnboardShortcuts", 0);

  return v3;
}

- (int64_t)minShortcutsOnboardCount
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"minShortcutsOnboardCount", 4);

  return v3;
}

- (int64_t)shortcutsOnboardCount
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"shortcutsOnboardCount", 6);

  return v3;
}

- (int64_t)maxCuratedShortcutsCount
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxCuratedShortcutsCount", 1);

  return v3;
}

- (int64_t)maxSuggestedShortcutsCount
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxSuggestedShortcutsCount", 5);

  return v3;
}

- (int64_t)shortcutsCustomizeAffordanceDisplayMinLaunchCount
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"shortcutsCustomizeAffordanceDisplayMinLaunchCount", 2);

  return v3;
}

- (int64_t)shortcutsCustomizeAffordanceSendToBackPositionMinLaunchCount
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"shortcutsCustomizeAffordanceSendToBackPositionMinLaunchCount", 15);

  return v3;
}

- (int64_t)notificationEnabledChannelsRefreshFrequency
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"notificationEnabledChannelsRefreshFrequency", 604800);

  return v3;
}

- (int64_t)savedArticlesCutoffTime
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"savedArticlesCutoffTime", 15552000);

  return v3;
}

- (int64_t)savedArticlesOpenedCutoffTime
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"savedArticlesOpenedCutoffTime", 21600);

  return v3;
}

- (int64_t)savedArticlesMaximumCountWiFi
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"savedArticlesMaximumCountWifi", 100);

  return v3;
}

- (int64_t)savedArticlesMaximumCountCellular
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"savedArticlesMaximumCountCellular", 10);

  return v3;
}

- (int64_t)maximumBundleSessionValue
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxBundleSessionValue", 10);

  return v3;
}

- (int64_t)maximumBundleSessionTime
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxBundleSessionTime", 86400);

  return v3;
}

- (int64_t)maximumMastheadWelcomeMessageTime
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxMastheadWelcomeMessageTime", 604800);

  return v3;
}

- (int64_t)maximumPremiumHeadlinesGroupSlottingTime
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxPremiumHeadlinesGroupSlottingTime", 604800);

  return v3;
}

- (int64_t)maximumPremiumStoriesUnlockedTipTime
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxPremiumStoriesUnlockedTipTime", 604800);

  return v3;
}

- (NSString)blockedArticleLearnMoreURL
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"blockedArticleLearnMoreURL", 0);

  return v3;
}

- (NSArray)presubscribedFeedIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"preSubscribedFeedIds", 0);

  return v3;
}

- (NSArray)permanentChannelIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"permanentChannelIds", 0);

  return v3;
}

- (NSArray)appleNewsNotificationChannelIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"appleNewsNotificationChannelIds", 0);

  return v3;
}

- (NSString)breakingNewsChannelID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"breakingNewsChannelId", 0);

  return v3;
}

- (NSString)briefingsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"briefingsTagId", 0);

  return v3;
}

- (NSString)trendingTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"trendingTagId", 0);

  return v3;
}

- (NSString)featuredStoriesTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"featuredStoriesTagId", 0);

  return v3;
}

- (NSString)savedStoriesTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"savedStoriesTagId", 0);

  return v3;
}

- (NSString)myMagazinesTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"myMagazinesTagId", 0);

  return v3;
}

- (NSString)sharedWithYouTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sharedWithYouTagId", 0);

  return v3;
}

- (NSString)shortcutsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"shortcutsTagId", 0);

  return v3;
}

- (NSString)mySportsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"mySportsTagId", 0);

  return v3;
}

- (NSString)sportsTopStoriesTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportsTopStoriesTagId", 0);

  return v3;
}

- (NSString)mySportsScoresTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"mySportsScoresTagId", 0);

  return v3;
}

- (NSString)sportScoresTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportScoresTagId", 0);

  return v3;
}

- (NSString)sportTeamScoresTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportTeamScoresTagId", 0);

  return v3;
}

- (NSString)sportLeagueScoresTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportLeagueScoresTagId", 0);

  return v3;
}

- (NSString)sportsStandingsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportLeagueStandingsTagId", 0);

  return v3;
}

- (NSString)sportsBracketTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportBracketTagId", 0);

  return v3;
}

- (NSString)mySportsHighlightsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"mySportsHighlightsTagId", 0);

  return v3;
}

- (NSString)sportHighlightsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportHighlightsTagId", 0);

  return v3;
}

- (NSString)sportTeamHighlightsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportTeamHighlightsTagId", 0);

  return v3;
}

- (NSString)sportLeagueHighlightsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportLeagueHighlightsTagId", 0);

  return v3;
}

- (NSString)sportEventHighlightsTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sportEventHighlightsTagId", 0);

  return v3;
}

- (FCSportsPrivacyConfiguration)sportsPrivacyConfiguration
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"sportsPrivacyConfiguration", 0);

  v4 = [[FCSportsPrivacyConfiguration alloc] initWithConfigDictionary:v3];

  return v4;
}

- (NSString)editorialChannelID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"appleEditorialChannelId", 0);

  return v3;
}

- (NSString)spotlightChannelID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"spotlightChannelId", 0);

  return v3;
}

- (NSString)editorialGemsSectionID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"editorialGemsSectionId", 0);

  return v3;
}

- (double)feedLineHeightMultiplier
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"feedLineHeightMultiplier", 1.0);

  return v3;
}

- (NSArray)aLaCartePaidSubscriptionGroupWhitelistedChannelIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"paidALaCarteSubscriptionGroupWhitelistedChannelIds", 0);
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

- (id)paidALaCartePaywallConfigForChannelID:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_cachedPaidALaCartePaywallConfigs)
  {
    v25 = v4;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [(FCNewsAppConfig *)self languageConfigDictionary];
    v8 = FCAppConfigurationDictionaryValueWithDefaultValue(v7, @"paidALaCartePaywallConfigs2", 0);

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

          v18 = [(FCPaidALaCartePaywallConfig *)v17 channelID];
          v19 = [v18 length];

          if (v19)
          {
            v20 = [(FCPaidALaCartePaywallConfig *)v17 channelID];
            [(NSDictionary *)v6 setObject:v17 forKeyedSubscript:v20];
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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"todayFeedKnobs", @"{}");

  return v3;
}

- (NSArray)hiddenFeedIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"hiddenFeedId", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumDurationBetweenForYouGroupsWeekday", 28800);

  return v3;
}

- (int64_t)minimumDurationBetweenForYouGroupsWeekend
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumDurationBetweenForYouGroupsWeekend", 14400);

  return v3;
}

- (int64_t)minimumDurationBetweenTrendingGroupsWeekday
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumDurationBetweenTrendingGroupsWeekday", 28800);

  return v3;
}

- (int64_t)minimumDurationBetweenTrendingGroupsWeekend
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumDurationBetweenTrendingGroupsWeekend", 14400);

  return v3;
}

- (int64_t)expiredPaidSubscriptionGroupCutoffTime
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"expiredPaidSubscriptionGroupCutoffTime", 0);

  return v3;
}

- (int64_t)maximumNumberOfExpiredPaidSubscriptionGroups
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxExpiredPaidSubscriptionGroupCount", 0);

  return v3;
}

- (int64_t)maximumTimesHeadlineInPaidSubscriptionGroup
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxTimesHeadlineInPaidSubscriptionGroup", 0);

  return v3;
}

- (int64_t)maximumPaidSubscriptionGroupSizeiPad
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxPaidSubscriptionGroupSizeIPad", 0);

  return v3;
}

- (int64_t)maximumPaidSubscriptionGroupSizeiPhone
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxPaidSubscriptionGroupSizeIPhone", 0);

  return v3;
}

- (BOOL)diversifyOptionalTopStories
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"diversifyOptionalTopStories", 1) != 0;

  return v3;
}

- (int64_t)optionalTopStoriesRefreshRate
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"optionalTopStoriesRefreshRate", 14400);

  return v3;
}

- (double)minimumTrendingUnseenRatio
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"minimumTrendingUnseenRatio", 0.5);

  return v3;
}

- (FCVideoGroupsConfig)forYouVideoGroupsConfig
{
  forYouVideoGroupsConfig = self->_forYouVideoGroupsConfig;
  if (!forYouVideoGroupsConfig)
  {
    v4 = [(FCNewsAppConfig *)self configDictionary];
    v5 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"forYouVideoGroupsConfig", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"endOfArticleMinPaidHeadlineRatio", 0.25);

  return v3;
}

- (int64_t)endOfArticleMaxInaccessiblePaidArticleCount
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"endOfArticleMaxInaccessiblePaidArticles", 2);

  return v3;
}

- (int64_t)endOfArticleExpireArticlesAfter
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"endOfArticleExpireArticlesAfter", 7776000);

  return v3;
}

- (NSString)endOfArticleFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"endOfArticleFeedConfigurationResourceId", 0);

  return v3;
}

- (int64_t)minimumDistanceBetweenImageOnTopTiles
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumDistanceBetweenImageOnTopTiles", 4);

  return v3;
}

- (NSString)nonBundleChannelPickerSuggestionsTabiPackageResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"nonBundleChannelPickerSuggestionsTabiPackageResourceId", 0);

  return v3;
}

- (NSString)bundleChannelPickerSuggestionsTabiPackageResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"bundleChannelPickerSuggestionsTabiPackageResourceId", 0);

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
    v5 = [(FCNewsAppConfig *)self localizedStorefrontID];
    objc_opt_self();
    if (qword_1EDB26FC0 != -1)
    {
      dispatch_once(&qword_1EDB26FC0, &__block_literal_global_2883);
    }

    v6 = qword_1EDB26FB8;
    v7 = [v6 objectForKeyedSubscript:v5];
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

    v11 = [(FCNewsAppConfig *)self languageConfigDictionary];
    v4 = FCAppConfigurationStringValue(v11, @"forYouConfigId", v10);
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
    v5 = [(FCNewsAppConfig *)self localizedStorefrontID];
    objc_opt_self();
    if (qword_1EDB26FD0 != -1)
    {
      dispatch_once(&qword_1EDB26FD0, &__block_literal_global_2894);
    }

    v6 = qword_1EDB26FC8;
    v7 = [v6 objectForKeyedSubscript:v5];
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

    v11 = [(FCNewsAppConfig *)self languageConfigDictionary];
    v4 = FCAppConfigurationStringValue(v11, @"forYouPremiumConfigId", v10);
  }

  return v4;
}

- (NSString)audioConfigRecordID
{
  v3 = [(FCNewsAppConfig *)self localizedStorefrontID];
  objc_opt_self();
  if (qword_1EDB27000 != -1)
  {
    dispatch_once(&qword_1EDB27000, &__block_literal_global_2909);
  }

  v4 = qword_1EDB26FF8;
  v5 = [v4 objectForKeyedSubscript:v3];
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

  v9 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v10 = FCAppConfigurationStringValue(v9, @"audioConfigId", v8);

  return v10;
}

- (NSArray)freeGlobalESLArticleListIDs
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"freeEvergreenArticleListId", 0);

  v5 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v6 = FCAppConfigurationStringValue(v5, @"freeEvergreenArticleListId2", v4);

  v7 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v8 = v7;
  if (v6)
  {
    v13[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v8, @"freeEvergreenArticleListIds", v9);
  }

  else
  {
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v7, @"freeEvergreenArticleListIds", MEMORY[0x1E695E0F0]);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSArray)paidGlobalESLArticleListIDs
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"paidEvergreenArticleListId", 0);

  v5 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v6 = FCAppConfigurationStringValue(v5, @"paidEvergreenArticleListId2", v4);

  v7 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v8 = v7;
  if (v6)
  {
    v13[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v8, @"paidEvergreenArticleListIds", v9);
  }

  else
  {
    v10 = FCAppConfigurationArrayValueWithDefaultValue(v7, @"paidEvergreenArticleListIds", MEMORY[0x1E695E0F0]);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSString)freeTagESLArticleListIDPrefix
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"freeTagEvergreenArticleListIdPrefix", 0);

  return v3;
}

- (NSString)paidTagESLArticleListIDPrefix
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"paidTagEvergreenArticleListIdPrefix", 0);

  return v3;
}

- (int64_t)maxTagESLArticleListsToQuery
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxTagEvergreenArticleListsToQuery", 30);

  return v3;
}

- (BOOL)shouldManuallySupplementEvergreenWithIssueArticles
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(v3, @"freeEvergreenArticleListIds", 0);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(FCNewsAppConfig *)self languageConfigDictionary];
    v7 = FCAppConfigurationArrayValueWithDefaultValue(v6, @"paidEvergreenArticleListIds", 0);
    v5 = v7 == 0;
  }

  return v5;
}

- (int64_t)forYouMaxDailyEvergreenArticlesForFreeUsers
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationIntegerValue(v3, @"forYouMaxDailyEvergreenArticlesForFreeUsers", 30);

  v5 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v6 = FCAppConfigurationIntegerValue(v5, @"forYouMaxDailyEvergreenArticlesForFreeUsers2", v4);

  return v6;
}

- (int64_t)forYouMaxDailyEvergreenArticlesForPaidUsers
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationIntegerValue(v3, @"forYouMaxDailyEvergreenArticlesForPaidUsers", 30);

  v5 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v6 = FCAppConfigurationIntegerValue(v5, @"forYouMaxDailyEvergreenArticlesForPaidUsers2", v4);

  return v6;
}

- (int64_t)maxIssuesPerESLInventoryRequest
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxIssuesPerESLInventoryRequest", 100);

  return v3;
}

- (NSArray)freeNotificationItemListIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"freeNotificationItemListIds", &unk_1F2E6F8A0);

  return v3;
}

- (NSArray)paidNotificationItemListIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"paidNotificationItemListIds", &unk_1F2E6F8B8);

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
    v7 = [v6 longLongValue];
  }

  else
  {
    v8 = [(FCNewsAppConfig *)self configDictionary];
    v7 = FCAppConfigurationIntegerValue(v8, @"notificationPoolAutoRefreshInterval", 14400);
  }

  return v7;
}

- (int64_t)notificationPoolMaxAge
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"notificationPoolMaxAge", 86400);

  return v3;
}

- (id)expFieldForKey:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (NFInternalBuild())
    {
      v4 = NewsCoreUserDefaults();
      v5 = [v4 BOOLForKey:@"use_cached_exp_fields"];

      if (!v5)
      {
        v10 = [a1 languageConfigDictionary];
        v8 = FCAppConfigurationStringValue(v10, v3, 0);

        v11 = NewsCoreUserDefaults();
        v6 = v11;
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

      v6 = NewsCoreUserDefaults();
      v7 = [v6 stringForKey:v3];
    }

    else
    {
      v6 = [a1 languageConfigDictionary];
      v7 = FCAppConfigurationStringValue(v6, v3, 0);
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"expirePinnedArticlesAfter", 0);

  return v3;
}

- (int64_t)singleTopicFeedMinFeedItemsPerRequest
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"singleTopicFeedMinFeedItemsPerRequest", 20);

  return v3;
}

- (int64_t)singleChannelFeedMinFeedItemsPerRequest
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"singleChannelFeedMinFeedItemsPerRequest", 20);

  return v3;
}

- (id)todayConfigWithIdentifier:(id)a3 queueConfigs:(id)a4 backgroundColorLight:(id)a5 backgroundColorDark:(id)a6 audioIndicatorColor:(id)a7 widgetBannerConfig:(id)a8
{
  v45 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v15 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v31 = v16;
    [(FCNewsAppConfig *)self setBackgroundColorLight:v16];
    v30 = v17;
    [(FCNewsAppConfig *)self setBackgroundColorDark:v17];
    [(FCNewsAppConfig *)self setAudioIndicatorColor:v18];
    v21 = v14;
    [(FCNewsAppConfig *)self setWidgetIdentifier:v14];
    [(FCNewsAppConfig *)self setWidgetBannerConfig:v19];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v15;
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

    v14 = v21;
    v17 = v30;
    v16 = v31;
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

- (id)analyticsEnvelopeContentTypeConfigsForEnvironment:(unint64_t)a3
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
  v7 = [v5 numberWithUnsignedInteger:a3];
  v8 = [(NSDictionary *)v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)appAnalyticsEndpointUrlForEnvironment:(unint64_t)a3
{
  v4 = [(FCNewsAppConfig *)self endpointConfigsByEnvironment];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 appAnalyticsBaseURLString];
  v8 = v7;
  v9 = @"https://news-events.apple.com/analyticseventsv2/async";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10];

  return v11;
}

- (id)appAnalyticsNotificationReceiptEndpointUrlForEnvironment:(unint64_t)a3
{
  v4 = [(FCNewsAppConfig *)self endpointConfigsByEnvironment];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 appAnalyticsNotificationReceiptBaseURLString];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E695DFF8]);
    v9 = [v6 appAnalyticsNotificationReceiptBaseURLString];
    v7 = [v8 initWithString:v9];
  }

  return v7;
}

- (id)appAnalyticsAppHealthEndpointUrlForEnvironment:(unint64_t)a3
{
  v5 = [(FCNewsAppConfig *)self endpointConfigsByEnvironment];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 appAnalyticsAppHealthBaseURLString];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DFF8]);
    v10 = [v7 appAnalyticsAppHealthBaseURLString];
    v11 = [v9 initWithString:v10];
  }

  else
  {
    v11 = [(FCNewsAppConfig *)self appAnalyticsEndpointUrlForEnvironment:a3];
  }

  return v11;
}

- (id)appAnalyticsAppHeartbeatEndpointUrlForEnvironment:(unint64_t)a3
{
  v5 = [(FCNewsAppConfig *)self endpointConfigsByEnvironment];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 appAnalyticsAppHeartbeatBaseURLString];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DFF8]);
    v10 = [v7 appAnalyticsAppHeartbeatBaseURLString];
    v11 = [v9 initWithString:v10];
  }

  else
  {
    v11 = [(FCNewsAppConfig *)self appAnalyticsEndpointUrlForEnvironment:a3];
  }

  return v11;
}

- (int64_t)maxRetriesForDroppedFeeds
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxRetriesForDroppedFeeds", 2);

  return v3;
}

- (double)delayBeforeRetryingDroppedFeeds
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"delayBeforeRetryingDroppedFeeds", 1.5);

  return v3;
}

- (int64_t)subscriptionsPlacardPublisherFrequencyInSeconds
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"subscriptionsPlacardPublisherFrequencySeconds", 86400);

  return v3;
}

- (int64_t)subscriptionsPlacardGlobalMaximumPerDay
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"subscriptionsPlacardGlobalMaxPerDay", 1);

  return v3;
}

- (int64_t)subscriptionsGracePeriodForTokenVerificationSeconds
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"subscriptionsGracePeriodForTokenVerificationSeconds", 1296000);

  return v3;
}

- (int64_t)entitlementsCacheRecoveryAttemptDurationInSeconds
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"entitlementsCacheRecoveryAttemptDurationSeconds", 2592000);

  return v3;
}

- (BOOL)enableCacheFallbackForArticleRecirculation
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"enableCacheFallbackForArticleRecirculation", 1);

  return v3;
}

- (id)recipeTagRecipeListIDPrefix
{
  if (a1)
  {
    v1 = [a1 languageConfigDictionary];
    v2 = FCAppConfigurationStringValue(v1, @"recipeTagRecipeListIDPrefix", 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)freeTagRecipeListIDPrefix
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = [(FCNewsAppConfig *)self recipeTagRecipeListIDPrefix];
  v5 = FCAppConfigurationStringValue(v3, @"freeTagRecipeListIdPrefix", v4);

  return v5;
}

- (NSString)paidTagRecipeListIDPrefix
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = [(FCNewsAppConfig *)self recipeTagRecipeListIDPrefix];
  v5 = FCAppConfigurationStringValue(v3, @"paidTagRecipeListIdPrefix", v4);

  return v5;
}

- (NSString)trendingRecipesListID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"trendingRecipesListID", 0);

  return v3;
}

- (NSArray)freeGlobalRecipeListIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"freeGlobalRecipeListIDs", MEMORY[0x1E695E0F0]);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"paidGlobalRecipeListIDs", MEMORY[0x1E695E0F0]);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"freeRecentRecipeListIDs", MEMORY[0x1E695E0F0]);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"paidRecentRecipeListIDs", MEMORY[0x1E695E0F0]);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"allowedRecipeRelatedTopicIDs", MEMORY[0x1E695E0F0]);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = MEMORY[0x1E695E0F0];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"allowedRecipeSuitableForDietTagIDs", MEMORY[0x1E695E0F0]);

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
  v3 = [(FCNewsAppConfig *)self configDictionary];
  [(FCNewsAppConfig *)self defaultTTLForRecipeListRecords];
  v5 = FCAppConfigurationIntegerValue(v3, @"ttlForTrendingRecipes", v4);

  return v5;
}

- (double)ttlForGlobalRecipes
{
  v3 = [(FCNewsAppConfig *)self configDictionary];
  [(FCNewsAppConfig *)self defaultTTLForRecipeListRecords];
  v5 = FCAppConfigurationIntegerValue(v3, @"ttlForGlobalRecipes", v4);

  return v5;
}

- (double)ttlForRecentRecipes
{
  v3 = [(FCNewsAppConfig *)self configDictionary];
  [(FCNewsAppConfig *)self defaultTTLForRecipeListRecords];
  v5 = FCAppConfigurationIntegerValue(v3, @"ttlForRecentRecipes", v4);

  return v5;
}

- (double)ttlForPersonalizedRecipes
{
  v3 = [(FCNewsAppConfig *)self configDictionary];
  [(FCNewsAppConfig *)self defaultTTLForRecipeListRecords];
  v5 = FCAppConfigurationIntegerValue(v3, @"ttlForPersonalizedRecipes", v4);

  return v5;
}

- (int64_t)endOfArticleOnscreenPercentageRequirement
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"endOfArticleOnscreenPercentageRequirement", 100);

  return v3;
}

- (double)defaultTTLForArticleRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForArticleRecords", 86400);

  return v3;
}

- (double)defaultTTLForArticleListRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForArticleListRecords", 7200);

  return v3;
}

- (double)defaultTTLForIssueRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForIssueRecords", 86400);

  return v3;
}

- (double)defaultTTLForIssueListRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForIssueListRecords", 7200);

  return v3;
}

- (double)defaultTTLForPurchaseLookupRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForPurchaseLookupRecords", 900);

  return v3;
}

- (double)defaultTTLForPuzzleRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForPuzzleRecords", 86400);

  return v3;
}

- (double)defaultTTLForPuzzleTypeRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForPuzzleTypeRecords", 28800);

  return v3;
}

- (double)defaultTTLForRecipeRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForRecipeRecords", 86400);

  return v3;
}

- (double)defaultTTLForRecipeListRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForRecipeListRecords", 7200);

  return v3;
}

- (double)defaultTTLForSportsEventRecords
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"defaultTTLForSportsEventRecords", 1500);

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

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v5 = FCAppConfigurationIntegerValue(v6, @"defaultTTLForTagRecords", 86400);

  return v5;
}

- (NSArray)onboardingFeedIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"onboardingTagIds", 0);

  return v3;
}

- (NSArray)discoverNewsPlusChannelIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"discoverNewsPlusChannelIds", 0);

  return v3;
}

- (NSArray)recommendedIssueAllowList
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"recommendedIssueAllowList", MEMORY[0x1E695E0F0]);

  return v3;
}

- (NSArray)recommendedIssueDenyList
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"recommendedIssueDenyList", MEMORY[0x1E695E0F0]);

  return v3;
}

- (BOOL)todayPerformanceAlertsEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"todayPerformanceAlertsEnabled", 1);

  return v3;
}

- (int64_t)todayPerformanceAlertsMinNewsVersion
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"todayPerformanceAlertsMinNewsVersion", 0);

  return v3;
}

- (double)todayPerformanceAlertPrewarmThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"todayPerformanceAlertPrewarmThreshold", 10.0);

  return v3;
}

- (double)todayPerformanceAlertGapExpansionThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"todayPerformanceAlertGapExpansionThreshold", 10.0);

  return v3;
}

- (double)todayPerformanceAlertSpinnerThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"todayPerformanceAlertSpinnerThreshold", 5.0);

  return v3;
}

- (double)todayFeedConfigEndpointTimeoutAfterCK
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"todayFeedConfigEndpointTimeoutAfterCK", 2.0);

  return v3;
}

- (int64_t)autoScrollToTopFeedTimeout
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"autoScrollToTopFeedTimeout", 14400);

  return v3;
}

- (NSString)webEmbedContentBlockers
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"webEmbedContentBlockers", @"[{trigger: {url-filter: .*,unless-domain: [*apple.com]},action: {type: block}}]");

  return v3;
}

- (NSString)webEmbedContentBlockerOverrides
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"webEmbedContentBlockerOverrides", 0);

  return v3;
}

- (NSString)anfRenderingConfiguration
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"anfRenderingConfiguration", 0);

  return v3;
}

- (double)interstitialAdLoadDelay
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"interstitialAdLoadDelay", 1.0);

  return v3;
}

- (double)prerollLoadingTimeout
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"prerollLoadingTimeout", 0.0);

  return v3;
}

- (double)prerollReadyToPlayTimeout
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"prerollReadyToPlayTimeout", 2.0);

  return v3;
}

- (double)feedBannerAdRequestThrottle
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"feedBannerAdRequestThrottle", 1.0);

  return v3;
}

- (double)articleBannerAdRequestThrottle
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"articleBannerAdRequestThrottle", 1.0);

  return v3;
}

- (double)interstitialAdRequestThrottle
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"interstitialAdRequestThrottle", 1.0);

  return v3;
}

- (double)prerollAdRequestThrottle
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"prerollAdRequestThrottle", 1.0);

  return v3;
}

- (double)nativeInFeedAdRequestThrottle
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"nativeInFeedAdRequestThrottle", 1.0);

  return v3;
}

- (double)nativeInArticleAdRequestThrottle
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"nativeInArticleAdRequestThrottle", 1.0);

  return v3;
}

- (int64_t)articleAdPrefetchLimit
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"articleAdPrefetchLimit", 3);

  return v3;
}

- (BOOL)widgetContentPrefetchEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"widgetContentPrefetchEnabled", 1);

  return v3;
}

- (BOOL)widgetBackgroundInteractionEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"widgetBackgroundInteractionEnabled", 0);

  return v3;
}

- (BOOL)widgetFetchOfTodayFeedLiteConfigEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"widgetFetchOfTodayFeedLiteConfigEnabled", 1);

  return v3;
}

- (BOOL)widgetAnalyticsEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"widgetAnalyticsEnabled2", 1);

  return v3;
}

- (BOOL)userSegmentationInWidgetAllowed
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"userSegmentationInWidgetAllowed", 1);

  return v3;
}

- (int64_t)newFavoriteNotificationAlertsFrequency
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"newFavoriteNotificationAlertsFrequency", 0);

  return v3;
}

- (int64_t)notificationArticleCacheTimeout
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"notificationArticleCacheTimeout", 300);

  return v3;
}

- (int64_t)notificationArticleWithRapidUpdatesCacheTimeout
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"notificationArticleWithRapidUpdatesCacheTimeout", 120);

  return v3;
}

- (BOOL)notificationEnableAssetPrefetching
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"notificationEnableAssetPrefetching", 1);

  return v3;
}

- (BOOL)notificationAssetPrefetchingRequiresWatch
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"notificationAssetPrefetchingRequiresWatch", 1);

  return v3;
}

- (NSString)embedConfigurationAssetID
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"anfEmbedConfigurationAsset", 0);

  return v3;
}

- (BOOL)universalLinksEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"universalLinksEnabled", 0);

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
    v5 = [(FCNewsAppConfig *)self localizedStorefrontID];
    objc_opt_self();
    if (qword_1EDB26FE0 != -1)
    {
      dispatch_once(&qword_1EDB26FE0, &__block_literal_global_2899);
    }

    v6 = qword_1EDB26FD8;
    v7 = [v6 objectForKeyedSubscript:v5];
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

    v11 = [(FCNewsAppConfig *)self languageConfigDictionary];
    v4 = FCAppConfigurationStringValue(v11, @"widgetSectionConfigId", v10);
  }

  return v4;
}

- (double)widgetTelemetrySamplingRate
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"widgetTelemetrySamplingRate2", 0.01);

  return v3;
}

- (double)articleDiversificationSimilarityExpectationStart
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"articleDiversitySimilarityExpectationStart", 0.0);

  return v3;
}

- (double)articleDiversificationSimilarityExpectationEnd
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"articleDiversitySimilarityExpectationEnd", 0.1);

  return v3;
}

- (double)articleDiversificationUniquePublisherExpectationSlope
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"publisherDiversitySlope", 0.75);

  return v3;
}

- (double)articleDiversificationUniquePublisherExpectationYIntercept
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"publisherDiversityYIntercept", 0.25);

  return v3;
}

- (int64_t)analyticsEndpointMaxPayloadSize
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"analyticsEndpointMaxPayloadSize", 500000);

  return v3;
}

- (NSString)recipePersonalizationBundleIdMappingResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"recipePersonalizationBundleIdMappingResourceId", 0);

  return v3;
}

- (NSString)recipePersonalizationUrlMappingResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"recipePersonalizationUrlMappingResourceId", 0);

  return v3;
}

- (NSString)recipePersonalizationAllowlistResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"recipePersonalizationAllowlistResourceId", 0);

  return v3;
}

- (NSString)locationRecommendationMappingsResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"locationRecommendationMappingsResourceId", 0);

  return v3;
}

- (NSString)localAreasMappingResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"localAreasMappingResourceId", 0);

  return v3;
}

- (NSString)tagFeedLayoutConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"tagFeedLayoutConfigurationResourceId", 0);

  return v3;
}

- (NSString)topicFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"topicFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)channelFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"channelFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)sectionFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sectionFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)sharedWithYouFeedLayoutConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"sharedFeedConfigurationResourceId", @"shared-feed-config-143441-en");

  return v3;
}

- (NSString)savedFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"savedFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)historyFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"historyFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)searchFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"searchFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)recipeSearchFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"recipeSearchFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)searchMoreFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"searchMoreFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)audioHistoryFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"audioHistoryFeedConfigurationResourceId", @"audio-history-feed-config-143441-en");

  return v3;
}

- (NSString)audioPlaylistFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"audioPlaylistFeedConfigurationResourceId", @"audio-playlist-feed-config-143441-en");

  return v3;
}

- (NSString)endOfRecipeFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"endOfRecipeFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)recipeBoxFeedConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"recipeBoxFeedConfigurationResourceId", 0);

  return v3;
}

- (NSString)userConcernConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"userConcernConfigurationResourceId", @"user-concern-config-143441-en");

  return v3;
}

- (NSString)channelPickerConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"channelPickerConfigurationResourceId", @"configuration-channel-picker-143441-en");

  return v3;
}

- (NSString)searchEndpointConfigurationResourceID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"searchEndpointConfigurationResourceId", @"configuration-search-endpoint-143441-en");

  return v3;
}

- (NSString)inConversationsAudioTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"inConversationsAudioTagId", 0);

  return v3;
}

- (NSString)businessAudioTagID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"businessAudioTagId", 0);

  return v3;
}

- (NSString)translationMapResourceID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"languageMapResourceId", 0);

  return v3;
}

- (NSString)userVectorWhitelistResourceId
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"userVectorWhitelistResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"userVectorWhitelistResourceId", 0);
  }

  return v6;
}

- (NSString)userVectorModelResourceId
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"userVectorModelResourceId", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"userVectorModelResourceId", 0);
  }

  return v6;
}

- (int64_t)articleReadCountThreshold
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"articleReadCountThreshold", 1);

  return v3;
}

- (int64_t)corryBarMaxArticleCountForArticleList
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"corryBarMaxArticleCountForArticleList", 10);

  return v3;
}

- (int64_t)corryBarMaxArticleCountForSingleArticle
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"corryBarMaxArticleCountForSingleArticle", 5);

  return v3;
}

- (BOOL)corryBarHideDiscoverMoreInterstitialForNonOnboardedUsers
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"corryBarHideDiscoverMoreInterstitialForNonOnboardedUsers", 0);

  return v3;
}

- (NSString)exploreArticleID
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"exploreArticleId", 0);

  return v3;
}

- (NSArray)externalAnalyticsConfigurations
{
  externalAnalyticsConfigurations = self->_externalAnalyticsConfigurations;
  if (!externalAnalyticsConfigurations)
  {
    v4 = [(FCNewsAppConfig *)self configDictionary];
    v5 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"externalAnalyticsConfig", 0);

    v6 = [v5 fc_arrayByTransformingWithBlock:&__block_literal_global_2272];
    v7 = self->_externalAnalyticsConfigurations;
    self->_externalAnalyticsConfigurations = v6;

    externalAnalyticsConfigurations = self->_externalAnalyticsConfigurations;
  }

  return externalAnalyticsConfigurations;
}

- (NSArray)mediaSharingBlacklistedChannelIDs
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"mediaSharingBlacklistedChannelIds", 0);

  return v3;
}

- (int64_t)topStoriesLocalNewsExpiration
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"topStoriesLocalNewsExpiration", 21600);

  return v3;
}

- (int64_t)autoRefreshMinimumInterval
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"autoRefreshMinimumInterval", 120);

  return v3;
}

- (BOOL)terminateAppOnBackgroundAfterJoiningOrLeavingExperiment
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"terminateAppOnBackgroundAfterJoiningOrLeavingExperiment", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"trendingStyle", 0);

  v4 = 0;
  if (([v3 isEqualToString:@"TrendingCellStyleNumberedCircle"] & 1) == 0)
  {
    v4 = [v3 isEqualToString:@"TrendingCellStyleImageOnSide"];
  }

  return v4;
}

- (NSString)articleRecirculationConfigJSON
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"articleRecirculationConfig", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"articleRecirculationConfig", 0);
  }

  return v6;
}

- (NSString)recipeRecirculationConfigJSON
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"recipeRecirculationConfig", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"recipeRecirculationConfig", 0);
  }

  return v6;
}

- (NSString)issueArticleRecirculationConfig
{
  v3 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v4 = FCAppConfigurationStringValue(v3, @"issueArticleRecirculationConfig", 0);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FCNewsAppConfig *)self configDictionary];
    v6 = FCAppConfigurationStringValue(v7, @"issueArticleRecirculationConfig", 0);
  }

  return v6;
}

- (NSString)articleRecirculationComponentPlacementConfigJSON
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"articleRecirculationComponentPlacementConfig", 0);

  return v3;
}

- (int64_t)articleRecirculationPopularFeedQueryTimeRange
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"articleRecirculationPopularFeedQueryTimeRange", 86400);

  return v3;
}

- (BOOL)disableThumbnailsForArticleRecirculation
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"disableThumbnailsForArticleRecirculation", 0);

  return v3;
}

- (NSString)feedNavigationConfigJSON
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"feedNavConfig", @"{items:[]}");

  return v3;
}

- (NSString)shortcutsCurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"shortcutsCurationResourceId", 0);

  return v3;
}

- (NSString)shortcutsConfigResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"shortcutsConfigResourceId", 0);

  return v3;
}

- (NSString)description
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = [v2 description];

  return v3;
}

- (BOOL)enableBadgeInSpotlightTabBar
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"enableBadgeInSpotlightTabBar", 0);

  return v3;
}

- (NSString)magazinesConfigRecordID
{
  v3 = [(FCNewsAppConfig *)self localizedStorefrontID];
  objc_opt_self();
  if (qword_1EDB26FF0 != -1)
  {
    dispatch_once(&qword_1EDB26FF0, &__block_literal_global_2904);
  }

  v4 = qword_1EDB26FE8;
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v7 = FCAppConfigurationStringValue(v6, @"maConfigId", v5);

  return v7;
}

- (BOOL)isArticleToolbarCompressionEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"articleToolbarCompressionEnabled", 1);

  return v3;
}

- (int64_t)lowStorageThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"lowStorageThreshold", 1000000000);

  return v3;
}

- (int64_t)criticalStorageThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"criticalStorageThreshold", 200000000);

  return v3;
}

- (int64_t)maximumTrendingGroupSizeiPad
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxTrendingGroupSizeIpad", 6);

  return v3;
}

- (int64_t)maximumTrendingGroupSizeiPhone
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"maxTrendingGroupSizeIphone", 4);

  return v3;
}

- (unint64_t)likeDislikeBehavior
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"likeDislikeBehavior", 1);

  return v3;
}

- (unint64_t)bestOfBundleFeedGroupKind
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"bestOfBundleFeedGroupKind", 1);

  return v3;
}

- (int64_t)emailSignupRequiredAppLaunchCount
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"emailSignupRequiredAppLaunchCount", 4);

  return v3;
}

- (BOOL)issuesNewsletterOptinEnabled
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"newsletterConfig", 0);

  LOBYTE(v2) = FCAppConfigurationBoolValue(v3, @"issuesNewsletterOptinEnabled", 0);
  return v2;
}

- (BOOL)enableLocationBasedAutofavorites
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"enableLocationBasedAutofavorites", 1);

  return v3;
}

- (BOOL)forYouGroupShouldPromoteAccessibleHeadline
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"forYouGroupShouldPromoteAccessibleHeadline", 0);

  return v3;
}

- (BOOL)todayFeedEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"feed3EnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)useNewsArticleSearch
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"searchConfigurationProfiles", 0);

  LOBYTE(v2) = [v3 containsObject:@"newsArticleSearch"];
  return v2;
}

- (BOOL)useMultipleNativeAds
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"useMultipleNativeAdsEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isSportsSyncingSupported
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"isSportsSyncingSupported", 1);

  return v3;
}

- (BOOL)servicesBundleCIPActivationEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"servicesBundleCIPActivationEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)paidBundleViaOfferEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"paidBundleViaOfferEnabledLevel", 0xFFFFFFFFLL);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isSIWAOnMacEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"signInWithAppleOnMacEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)fineGrainedNewsletterManagementEnabled
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = @"143441";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v4 = [(FCNewsAppConfig *)self storefrontID];
  if ([v3 containsObject:v4])
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(FCNewsAppConfig *)self configDictionary];
  v7 = FCAppConfigurationIntegerValue(v6, @"fineGrainedNewsletterManagementEnabledLevel", v5);

  result = [FCFeatureEnablementChecker enabledForCurrentLevel:v7];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)dimNonSubscriberContentOffline
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"dimNonSubscriberContentOffline", 0);

  return v3;
}

- (NSString)recipeCatalogFilterConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"recipeCatalogFilterConfigurationResourceId", 0);

  return v3;
}

- (NSString)offlineModeUnavailableMessage
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"offlineModeUnavailableMessage", 0);

  return v3;
}

- (NSString)offlineStatusBannerUpsellMessage
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"offlineStatusBannerUpsellMessage", 0);

  return v3;
}

- (NSString)offlineStatusBannerDeviceOfflineTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"offlineStatusBannerDeviceOfflineTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerPoorConnectionTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"offlineStatusBannerPoorConnectionTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerServerProblemTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"offlineStatusBannerServerProblemTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerUpdateRequiredTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"offlineStatusBannerUpdateRequiredTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerDeviceObsoletionTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"offlineStatusBannerDeviceObsoletionTitle", 0);

  return v3;
}

- (NSString)offlineStatusBannerDeviceOnlineTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"offlineStatusBannerDeviceOnlineTitle", 0);

  return v3;
}

- (NSString)enterOfflineModeButtonTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"enterOfflineModeButtonTitle", 0);

  return v3;
}

- (NSString)exitOfflineModeButtonTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"exitOfflineModeButtonTitle", 0);

  return v3;
}

- (BOOL)newSearchEndpointConfigEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"newSearchEndpointConfigEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)moreToReadEOAEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"moreToReadEOAEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)moreFromIssueEOAEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"moreFromIssueEOAEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)splitTopicGroups
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"splitTopicGroups", 0);

  return v3;
}

- (BOOL)inAppMessagesEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"inAppMessagesEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (double)continueReadingDismissalInterval
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"continueReadingDismissalIntervalSeconds", 6.0);

  return v3;
}

- (BOOL)isCardFeedRedesignEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"feedRedesignEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (int64_t)alternateUniversalLinksResourceRefreshRate
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"alternateUniversalLinksResourceRefreshRate", 86400);

  return v3;
}

- (BOOL)todayFeedConfigRequestsEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"todayFeedConfigRequestsEnabledLevel", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioFeedConfigRequestsEnabledLevel", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"personalizationEventTrackingEnabled2", 0xFFFFFFFFLL);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"sportsRecordEnabled", 0xFFFFFFFFLL);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"sportsRecommendationHidesIgnoredTags", 1);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"sportsNativeAdsEnabled", 1);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"inFeedDebuggingLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)isImprovedManagedTopicGroupingEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"improvedManagedTopicGroupingEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSArray)analyticsEventNamesPublicAllowlist
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"analyticsEventNamesPublicAllowlist", 0);
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"analyticsEventNamesSeedAllowlist", 0);
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"analyticsEventNamesInternalAllowlist", 0);
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"shouldProxyURLBucketFetch", 1);

  return v3;
}

- (int64_t)minimumBucketGroupConfigVersion
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"minimumBucketGroupConfigVersion", 2);

  return v3;
}

- (FCEmbedProxyConfiguration)embedProxyConfiguration
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"embedProxyConfiguration", 0);

  v4 = [[FCEmbedProxyConfiguration alloc] initWithDictionary:v3];

  return v4;
}

- (double)derivedPersonalizationDataBalanceValue
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"derivedPersonalizationDataBalanceValue", 1.0);

  return v3;
}

- (FCNewsPlusLabelConfigGroup)newsPlusLabelConfigGroup
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"newsPlusLabelConfigGroup", 0);

  v4 = [[FCNewsPlusLabelConfigGroup alloc] initWithConfigDictionary:v3];

  return v4;
}

- (FCAppReviewRequestConfig)appReviewRequestConfig
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"appReviewRequestConfig", 0);

  v4 = [[FCAppReviewRequestConfig alloc] initWithDictionary:v3];

  return v4;
}

- (NSArray)analyticsDenylistDescriptorsPublic
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"analyticsDenylistDescriptorsPublic", 0);
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"analyticsDenylistDescriptorsSeed", 0);
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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"sportsManagementRecommendedItemsCount", 5);
  return v4;
}

- (int64_t)sportsManagementMinChildItemsCount
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"sportsManagementMinChildItemsCount", 15);
  return v4;
}

- (NSString)sportsTaxonomyResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"taxonomyResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsStandingConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"standingConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsBoxScoreConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"boxScoreConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsKeyPlayerConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"keyPlayerConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsLineScoreConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"lineScoreConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsInjuryReportConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"injuryReportConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsBracketConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"bracketConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsScoreConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"scoreConfigurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsSyncingConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"sportsSyncingConfigurationV2ResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsFeaturedEventsResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"featuredEventsResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)sportsConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"sportsDataConfiguration", 0);

  v4 = FCAppConfigurationStringValue(v3, @"configurationResourceId", &stru_1F2DC7DC0);

  return v4;
}

- (NSString)webEmbedDataSourcesConfigurationResourceId
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"webEmbedDataSourcesConfigurationResourceId", 0);

  return v3;
}

- (int64_t)liveActivityFollowedAlertsThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"liveActivityFollowedAlertsThreshold", 3);

  return v3;
}

- (int64_t)liveActivityScheduledAlertsThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"liveActivityScheduledAlertsThreshold", 3);

  return v3;
}

- (double)liveActivityScheduleDelay
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"liveActivityScheduleDelay", 10.0);

  return v3;
}

- (double)liveActivityScheduleRandomInitialDelay
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"liveActivityScheduleRandomInitialDelay", 30.0);

  return v3;
}

- (double)liveActivityScheduleTimeWindow
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"liveActivityScheduleTimeWindow", 300.0);

  return v3;
}

- (double)liveActivityScheduleRetryInterval
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"liveActivityScheduleRetryInterval", 300.0);

  return v3;
}

- (double)liveActivityScheduleRetryTimeWindow
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"liveActivityScheduleRetryTimeWindow", 3600.0);

  return v3;
}

- (int64_t)liveActivityScheduleRetryCountMax
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"liveActivityScheduleRetryCountMax", 5);

  return v3;
}

- (NSArray)liveActivityAssetServerURLs
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = [MEMORY[0x1E695DEC8] array];
  v4 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"liveActivityAssetServerURLs", v3);

  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_2781];

  return v5;
}

- (BOOL)sportsSyncingV2Enabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"sportsSyncingV2EnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)exportToGroceryListEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"exportToGroceryListEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSString)exportToGroceryListTipTitle
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"exportToGroceryListTipTitle", 0);

  return v3;
}

- (NSString)exportToGroceryListTipMessage
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"exportToGroceryListTipMessage", 0);

  return v3;
}

- (BOOL)useAltSportsRecommendationMapping
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  LOBYTE(v2) = FCAppConfigurationBoolValue(v3, @"useAltSportsRecommendationMapping", 0);
  return v2;
}

- (double)minMembershipForTaxonomyCandidates
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDoubleValue(v3, @"minMembershipForTaxonomyCandidates", 0.0);
  return v4;
}

- (BOOL)considerAutofavoritesInMappingCandidates
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  LOBYTE(v2) = FCAppConfigurationBoolValue(v3, @"considerAutofavoritesInMappingCandidates", 1);
  return v2;
}

- (double)minScoreThresholdForSportsRecommendations
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDoubleValue(v3, @"minScoreThresholdForSportsRecommendations", 0.0);
  return v4;
}

- (double)minMembershipThreshold
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDoubleValue(v3, @"minMembershipThreshold", 0.051);
  return v4;
}

- (double)minMembershipThresholdForLocalRecommendation
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationDoubleValue(v3, @"minMembershipThresholdForLocalRecommendation", 0.0);
  return v4;
}

- (int64_t)maxSportRecommendationsWithLeagueTypeCollege
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

  v4 = FCAppConfigurationIntegerValue(v3, @"maxSportRecommendationsWithLeagueTypeCollege", 2);
  return v4;
}

- (int64_t)maxSportRecommendationsPerSport
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"localizedSportsDataConfiguration", 0);

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
  v6 = [v5 stringForKey:@"news.news_personalization.cluster_config_overrides.json"];

  if (![v6 length])
  {
LABEL_8:

LABEL_9:
    v6 = [(FCNewsAppConfig *)self languageConfigDictionary];
    v8 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"todayFeedGroupClusteringKnobOverrides", 0);
    goto LABEL_10;
  }

  v7 = [v6 dataUsingEncoding:4];
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
  v6 = [v5 stringForKey:@"news.news_personalization.cluster_config_overrides.json"];

  if (![v6 length])
  {
LABEL_8:

LABEL_9:
    v6 = [(FCNewsAppConfig *)self languageConfigDictionary];
    v8 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"tagFeedGroupClusteringKnobOverrides", 0);
    goto LABEL_10;
  }

  v7 = [v6 dataUsingEncoding:4];
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
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"articleLinkBehaviorConfig", 0);

  v4 = [[FCArticleLinkBehaviorConfig alloc] initWithConfigDictionary:v3];

  return v4;
}

- (FCArticleModalBrandBarConfig)articleModalBrandBarConfig
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"articleModalBrandBarConfig", 0);

  v4 = [[FCArticleModalBrandBarConfig alloc] initWithConfigDictionary:v3];

  return v4;
}

- (FCSportsFavoritesSyncModalConfig)sportsFavoritesSyncModalConfig
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"sportsFavoritesSyncModalConfig", 0);

  v4 = [[FCSportsFavoritesSyncModalConfig alloc] initWithConfigDictionary:v3];

  return v4;
}

- (NSString)newsFeedFormatConfiguration
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"newsFeedFormatConfiguration", 0);

  return v3;
}

- (BOOL)articleLinkBehaviorImprovementsEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"articleLinkBehaviorImprovementsEnabledLevel", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (BOOL)allowAnyChannelForTodayChannelGroups
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"allowAnyChannelForTodayChannelGroups", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"tagSubscriptionRepromptDelay", 0.0);

  return v3;
}

- (id)jsonEncodableObject
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = [v2 copy];

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"headlinePersonalizationInstrumentationConfig", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"headlinePersonalizationInstrumentationConfig", 0);

  LOBYTE(v2) = FCAppConfigurationBoolValue(v3, @"sendsAllFetchedHeadlines", 0);
  return v2 ^ 1;
}

- (BOOL)enableAIAttribution
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"enableAIAttributionEnabledLevelV2", 0);

  return [FCFeatureEnablementChecker enabledForCurrentLevel:v3];
}

- (NSString)aiAttributionArticleString
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"aiAttributionArticleString", 0);

  return v3;
}

- (BOOL)enableTabiAdSegments
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"enableTabiAdSegments", 0);

  return v3;
}

- (BOOL)enableTabiMyMagazinesPersonalization
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"enableTabiMyMagazinesPersonalization", 0);

  return v3;
}

- (BOOL)aggregatesInNotificationExtensionXavierEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"aggregatesInNotificationExtensionXavierEnabled", 1);

  return v3;
}

- (BOOL)tabiScoringInNotificationExtensionEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"tabiScoringInNotificationExtensionEnabled", 0);

  return v3;
}

- (BOOL)aggregatesInWidgetsXavierEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"aggregatesInWidgetsXavierEnabled", 1);

  return v3;
}

- (BOOL)tabiScoringInWidgetsEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"tabiScoringInWidgetsEnabled", 0);

  return v3;
}

- (BOOL)widgetForYouFromDaemonEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"widgetForYouFromDaemonEnabled", 0);

  return v3;
}

- (BOOL)todayWidgetForYouBestOfEnabled
{
  if (!NFInternalBuild())
  {
LABEL_5:
    v6 = [(FCNewsAppConfig *)self configDictionary];
    v7 = FCAppConfigurationBoolValue(v6, @"todayWidgetForYouBestOfEnabled", 0);

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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"todayWidgetForYouMaxInaccessible", 1000);

  return v3;
}

- (int64_t)todayWidgetForYouMaxEvergreen
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"todayWidgetForYouMaxEvergreen", 1000);

  return v3;
}

- (int64_t)todayWidgetForYouMaxPublisherOccurrences
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"todayWidgetForYouMaxPublisherOccurrences", 1000);

  return v3;
}

- (double)todayWidgetForYouBundleArticleQuota
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"todayWidgetForYouBundleArticleQuota", 0.0);

  return v3;
}

- (double)todayWidgetForYouTopicDiversityThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"todayWidgetForYouTopicDiversityThreshold", 1.0);

  return v3;
}

- (int64_t)todayWidgetForYouTopicDiversityWindowSize
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"todayWidgetForYouTopicDiversityWindowSize", 1);

  return v3;
}

- (NSArray)todayWidgetForYouTopicDiversityAllowedTopicIDs
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(v2, @"todayWidgetForYouTopicDiversityAllowedTopicIDs", 0);
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
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"todayWidgetForYouMaxAIGArticles", 1000);

  return v3;
}

- (NSDictionary)articleConfig
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"articleConfig", 0);

  return v3;
}

- (int64_t)audioPlaylistSweepRecencyThresholdInDays
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationIntegerValue(v2, @"audioPlaylistSweepRecencyThresholdInDays", 7);

  return v3;
}

- (double)audioPlaylistSweepListeningPercentageThreshold
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"audioPlaylistSweepListeningPercentageThreshold", 0.4);

  return v3;
}

- (double)offlineModeDetectionPingInterval
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"offlineModeDetectionPingInterval", 1.0);

  return v3;
}

- (double)offlineModeDetectionPingTimeoutInterval
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"offlineModeDetectionPingTimeoutInterval", 5.0);

  return v3;
}

- (double)offlineModeThrottleUnreliableDetectionTimeoutInterval
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationDoubleValue(v2, @"offlineModeThrottleUnreliableDetectionTimeoutInterval", 10.0);

  return v3;
}

- (NSDictionary)channelGroupBaselineMultipliers
{
  v2 = [(FCNewsAppConfig *)self languageConfigDictionary];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(v2, @"channelGroupBaselineMultipliers", MEMORY[0x1E695E0F8]);

  return v3;
}

- (BOOL)tabiBackgroundRefreshEnabled
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"tabiBackgroundRefreshEnabled", 1);

  return v3;
}

- (BOOL)shouldIncludeRecipePersonalizationScienceData
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"shouldIncludeRecipePersonalizationScienceData", 1);

  return v3;
}

- (NSString)smarterFetchStrategy
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationStringValue(v2, @"smarterFetchStrategy", 0);

  return v3;
}

- (BOOL)isSmarterFetchEnabledForESL
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"isSmarterFetchEnabledForESL", 0);

  return v3;
}

- (BOOL)isSmarterFetchEnabledForLatest
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"isSmarterFetchEnabledForLatest", 0);

  return v3;
}

- (BOOL)isSmarterFetchEnabledForSupplementalESL
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"isSmarterFetchEnabledForSupplementalESL", 0);

  return v3;
}

- (BOOL)isSmarterFetchEnabledForSupplementalLatest
{
  v2 = [(FCNewsAppConfig *)self configDictionary];
  v3 = FCAppConfigurationBoolValue(v2, @"isSmarterFetchEnabledForSupplementalLatest", 0);

  return v3;
}

@end