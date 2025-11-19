@interface FCSmarterMessagingConfig
- (FCSmarterMessagingConfig)initWithDictionary:(id)a3;
@end

@implementation FCSmarterMessagingConfig

- (FCSmarterMessagingConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = FCSmarterMessagingConfig;
  v5 = [(FCSmarterMessagingConfig *)&v23 init];
  if (v5)
  {
    v5->_lowChurnPropensitySegmentSetId = FCAppConfigurationIntegerValue(v4, @"lowChurnPropensitySegmentSetId", 0);
    v5->_mediumChurnPropensitySegmentSetId = FCAppConfigurationIntegerValue(v4, @"mediumChurnPropensitySegmentSetId", 0);
    v5->_highChurnPropensitySegmentSetId = FCAppConfigurationIntegerValue(v4, @"highChurnPropensitySegmentSetId", 0);
    v6 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"segmentSetIdsAllowlist", 0);
    segmentSetIdsAllowlist = v5->_segmentSetIdsAllowlist;
    v5->_segmentSetIdsAllowlist = v6;

    v8 = FCAppConfigurationArrayValueWithDefaultValue(v4, @"placementsBlocklist", 0);
    placementsBlocklist = v5->_placementsBlocklist;
    v5->_placementsBlocklist = v8;

    v5->_todayFeedMastheadBannerEnabledForSubscribers = FCAppConfigurationBoolValue(v4, @"todayFeedMastheadBannerEnabledForSubscribers", 0);
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"engagementUpsellConfig2", 0);
    engagementUpsellConfig = v5->_engagementUpsellConfig;
    v5->_engagementUpsellConfig = v10;

    v5->_maxEnableNotificationBubbleTipPresentations = FCAppConfigurationIntegerValue(v4, @"maxEnableNotificationBubbleTipPresentations", 0);
    v5->_notificationBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(v4, @"notificationBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_maxSportsOnboardingBubbleTipPresentations = FCAppConfigurationIntegerValue(v4, @"maxSportsOnboardingBubbleTipPresentations", 0);
    v5->_sportsBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(v4, @"sportsBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_maxSportsScoresBubbleTipPresentations = FCAppConfigurationIntegerValue(v4, @"maxSportsScoresBubbleTipPresentations", 0);
    v5->_sportsScoresBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(v4, @"sportsScoresBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_maxShortcutsBubbleTipPresentations = FCAppConfigurationIntegerValue(v4, @"maxShortcutsBubbleTipPresentations", 0);
    v5->_shortcutsBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(v4, @"shortcutsBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_maxPuzzleHubInfoBubbleTipPresentations = FCAppConfigurationIntegerValue(v4, @"maxPuzzleHubInfoBubbleTipPresentations", 0);
    v5->_puzzleHubInfoBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(v4, @"puzzleHubInfoBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v12 = FCAppConfigurationStringValue(v4, @"puzzleHubInfoBubbleTipBody", 0);
    puzzleHubInfoBubbleTipBody = v5->_puzzleHubInfoBubbleTipBody;
    v5->_puzzleHubInfoBubbleTipBody = v12;

    v14 = FCAppConfigurationStringValue(v4, @"puzzleHubInfoBubbleTipTitle", 0);
    puzzleHubInfoBubbleTipTitle = v5->_puzzleHubInfoBubbleTipTitle;
    v5->_puzzleHubInfoBubbleTipTitle = v14;

    v16 = FCAppConfigurationStringValue(v4, @"puzzleHubInfoBubbleTipIconUrl", 0);
    puzzleHubInfoBubbleTipIconUrl = v5->_puzzleHubInfoBubbleTipIconUrl;
    v5->_puzzleHubInfoBubbleTipIconUrl = v16;

    v18 = FCAppConfigurationStringValue(v4, @"discoverNewsPlusBubbleTipBody", 0);
    discoverNewsPlusBubbleTipBody = v5->_discoverNewsPlusBubbleTipBody;
    v5->_discoverNewsPlusBubbleTipBody = v18;

    v20 = FCAppConfigurationStringValue(v4, @"discoverNewsPlusBubbleTipTitle", 0);
    discoverNewsPlusBubbleTipTitle = v5->_discoverNewsPlusBubbleTipTitle;
    v5->_discoverNewsPlusBubbleTipTitle = v20;

    v5->_discoverNewsPlusBubbleTipEnabled = FCAppConfigurationBoolValue(v4, @"discoverNewsPlusBubbleTipEnabled", 1);
    v5->_maxNewsPlusStoriesBubbleTipPresentations = FCAppConfigurationIntegerValue(v4, @"maxNewsPlusStoriesBubbleTipPresentations", 0);
    v5->_newsPlusStoriesBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(v4, @"newsPlusStoriesBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

@end