@interface FCSmarterMessagingConfig
- (FCSmarterMessagingConfig)initWithDictionary:(id)dictionary;
@end

@implementation FCSmarterMessagingConfig

- (FCSmarterMessagingConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = FCSmarterMessagingConfig;
  v5 = [(FCSmarterMessagingConfig *)&v23 init];
  if (v5)
  {
    v5->_lowChurnPropensitySegmentSetId = FCAppConfigurationIntegerValue(dictionaryCopy, @"lowChurnPropensitySegmentSetId", 0);
    v5->_mediumChurnPropensitySegmentSetId = FCAppConfigurationIntegerValue(dictionaryCopy, @"mediumChurnPropensitySegmentSetId", 0);
    v5->_highChurnPropensitySegmentSetId = FCAppConfigurationIntegerValue(dictionaryCopy, @"highChurnPropensitySegmentSetId", 0);
    v6 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"segmentSetIdsAllowlist", 0);
    segmentSetIdsAllowlist = v5->_segmentSetIdsAllowlist;
    v5->_segmentSetIdsAllowlist = v6;

    v8 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"placementsBlocklist", 0);
    placementsBlocklist = v5->_placementsBlocklist;
    v5->_placementsBlocklist = v8;

    v5->_todayFeedMastheadBannerEnabledForSubscribers = FCAppConfigurationBoolValue(dictionaryCopy, @"todayFeedMastheadBannerEnabledForSubscribers", 0);
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"engagementUpsellConfig2", 0);
    engagementUpsellConfig = v5->_engagementUpsellConfig;
    v5->_engagementUpsellConfig = v10;

    v5->_maxEnableNotificationBubbleTipPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxEnableNotificationBubbleTipPresentations", 0);
    v5->_notificationBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"notificationBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_maxSportsOnboardingBubbleTipPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxSportsOnboardingBubbleTipPresentations", 0);
    v5->_sportsBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"sportsBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_maxSportsScoresBubbleTipPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxSportsScoresBubbleTipPresentations", 0);
    v5->_sportsScoresBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"sportsScoresBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_maxShortcutsBubbleTipPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxShortcutsBubbleTipPresentations", 0);
    v5->_shortcutsBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"shortcutsBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v5->_maxPuzzleHubInfoBubbleTipPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxPuzzleHubInfoBubbleTipPresentations", 0);
    v5->_puzzleHubInfoBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"puzzleHubInfoBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
    v12 = FCAppConfigurationStringValue(dictionaryCopy, @"puzzleHubInfoBubbleTipBody", 0);
    puzzleHubInfoBubbleTipBody = v5->_puzzleHubInfoBubbleTipBody;
    v5->_puzzleHubInfoBubbleTipBody = v12;

    v14 = FCAppConfigurationStringValue(dictionaryCopy, @"puzzleHubInfoBubbleTipTitle", 0);
    puzzleHubInfoBubbleTipTitle = v5->_puzzleHubInfoBubbleTipTitle;
    v5->_puzzleHubInfoBubbleTipTitle = v14;

    v16 = FCAppConfigurationStringValue(dictionaryCopy, @"puzzleHubInfoBubbleTipIconUrl", 0);
    puzzleHubInfoBubbleTipIconUrl = v5->_puzzleHubInfoBubbleTipIconUrl;
    v5->_puzzleHubInfoBubbleTipIconUrl = v16;

    v18 = FCAppConfigurationStringValue(dictionaryCopy, @"discoverNewsPlusBubbleTipBody", 0);
    discoverNewsPlusBubbleTipBody = v5->_discoverNewsPlusBubbleTipBody;
    v5->_discoverNewsPlusBubbleTipBody = v18;

    v20 = FCAppConfigurationStringValue(dictionaryCopy, @"discoverNewsPlusBubbleTipTitle", 0);
    discoverNewsPlusBubbleTipTitle = v5->_discoverNewsPlusBubbleTipTitle;
    v5->_discoverNewsPlusBubbleTipTitle = v20;

    v5->_discoverNewsPlusBubbleTipEnabled = FCAppConfigurationBoolValue(dictionaryCopy, @"discoverNewsPlusBubbleTipEnabled", 1);
    v5->_maxNewsPlusStoriesBubbleTipPresentations = FCAppConfigurationIntegerValue(dictionaryCopy, @"maxNewsPlusStoriesBubbleTipPresentations", 0);
    v5->_newsPlusStoriesBubbleTipPresentationsQuiescenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"newsPlusStoriesBubbleTipPresentationsQuiescenceInterval", 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

@end