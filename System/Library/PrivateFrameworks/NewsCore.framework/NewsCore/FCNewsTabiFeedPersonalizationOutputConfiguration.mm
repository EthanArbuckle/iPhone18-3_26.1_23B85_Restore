@interface FCNewsTabiFeedPersonalizationOutputConfiguration
- (FCNewsTabiFeedPersonalizationOutputConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsTabiFeedPersonalizationOutputConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  defaultHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self defaultHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tdefaultHeadlineScoringOutputName: %@;", defaultHeadlineScoringOutputName];

  topicFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self topicFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttopicFeedHeadlineScoringOutputName: %@;", topicFeedHeadlineScoringOutputName];

  magazineFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self magazineFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmagazineFeedHeadlineScoringOutputName: %@;", magazineFeedHeadlineScoringOutputName];

  magazineFeedIssuesHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self magazineFeedIssuesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmagazineFeedIssuesHeadlineScoringOutputName: %@;", magazineFeedIssuesHeadlineScoringOutputName];

  legacyAudioFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self legacyAudioFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tlegacyAudioFeedHeadlineScoringOutputName: %@;", legacyAudioFeedHeadlineScoringOutputName];

  audioFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self audioFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\taudioFeedHeadlineScoringOutputName: %@;", audioFeedHeadlineScoringOutputName];

  articleRecirculationPrimaryHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleRecirculationPrimaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleRecirculationPrimaryHeadlineScoringOutputName: %@;", articleRecirculationPrimaryHeadlineScoringOutputName];

  articleRecirculationSecondaryHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleRecirculationSecondaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleRecirculationSecondaryHeadlineScoringOutputName: %@;", articleRecirculationSecondaryHeadlineScoringOutputName];

  articleRecirculationTertiaryHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleRecirculationTertiaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleRecirculationTertiaryHeadlineScoringOutputName: %@;", articleRecirculationTertiaryHeadlineScoringOutputName];

  articleRecirculationQuaternaryHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleRecirculationQuaternaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleRecirculationQuaternaryHeadlineScoringOutputName: %@;", articleRecirculationQuaternaryHeadlineScoringOutputName];

  bestOfBundleHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self bestOfBundleHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tbestOfBundleHeadlineScoringOutputName: %@;", bestOfBundleHeadlineScoringOutputName];

  forYouGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self forYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tforYouGroupHeadlineScoringOutputName: %@;", forYouGroupHeadlineScoringOutputName];

  greatStoriesYouMissedGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self greatStoriesYouMissedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tgreatStoriesYouMissedGroupHeadlineScoringOutputName: %@;", greatStoriesYouMissedGroupHeadlineScoringOutputName];

  latestStoriesGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self latestStoriesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tlatestStoriesGroupHeadlineScoringOutputName: %@;", latestStoriesGroupHeadlineScoringOutputName];

  localNewsGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self localNewsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tlocalNewsGroupHeadlineScoringOutputName: %@;", localNewsGroupHeadlineScoringOutputName];

  newspaperGroupMagazineFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self newspaperGroupMagazineFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tnewspaperGroupMagazineFeedHeadlineScoringOutputName: %@;", newspaperGroupMagazineFeedHeadlineScoringOutputName];

  todayWidgetHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self todayWidgetHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttodayWidgetHeadlineScoringOutputName: %@;", todayWidgetHeadlineScoringOutputName];

  tagWidgetHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagWidgetHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagWidgetHeadlineScoringOutputName: %@;", tagWidgetHeadlineScoringOutputName];

  notificationHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self notificationHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tnotificationHeadlineScoringOutputName: %@;", notificationHeadlineScoringOutputName];

  mySportsGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self mySportsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmySportsGroupHeadlineScoringOutputName: %@;", mySportsGroupHeadlineScoringOutputName];

  sportsTopStoriesHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self sportsTopStoriesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tsportsTopStoriesHeadlineScoringOutputName: %@;", sportsTopStoriesHeadlineScoringOutputName];

  introToSportsGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self introToSportsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tintroToSportsGroupHeadlineScoringOutputName: %@;", introToSportsGroupHeadlineScoringOutputName];

  highlightsGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self highlightsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\thighlightsGroupHeadlineScoringOutputName: %@;", highlightsGroupHeadlineScoringOutputName];

  articleListTagFeedGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleListTagFeedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleListTagFeedGroupHeadlineScoringOutputName: %@;", articleListTagFeedGroupHeadlineScoringOutputName];

  tagFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagFeedHeadlineScoringOutputName: %@;", tagFeedHeadlineScoringOutputName];

  newspaperGroupTodayFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self newspaperGroupTodayFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tnewspaperGroupTodayFeedHeadlineScoringOutputName: %@;", newspaperGroupTodayFeedHeadlineScoringOutputName];

  moreForYouGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self moreForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmoreForYouGroupHeadlineScoringOutputName: %@;", moreForYouGroupHeadlineScoringOutputName];

  introToSportsGroupForYouHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self introToSportsGroupForYouHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tintroToSportsGroupForYouHeadlineScoringOutputName: %@;", introToSportsGroupForYouHeadlineScoringOutputName];

  mySportsGroupForYouHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self mySportsGroupForYouHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmySportsGroupForYouHeadlineScoringOutputName: %@;", mySportsGroupForYouHeadlineScoringOutputName];

  mySportsTopicsHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self mySportsTopicsHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmySportsTopicsHeadlineScoringOutputName: %@;", mySportsTopicsHeadlineScoringOutputName];

  curatedGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self curatedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tcuratedGroupHeadlineScoringOutputName: %@;", curatedGroupHeadlineScoringOutputName];

  curatedGroupIssuesHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self curatedGroupIssuesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tcuratedGroupIssuesHeadlineScoringOutputName: %@;", curatedGroupIssuesHeadlineScoringOutputName];

  localSectionGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self localSectionGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tlocalSectionGroupHeadlineScoringOutputName: %@;", localSectionGroupHeadlineScoringOutputName];

  newspaperSectionGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self newspaperSectionGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tnewspaperSectionGroupHeadlineScoringOutputName: %@;", newspaperSectionGroupHeadlineScoringOutputName];

  sportsEventArticlesGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self sportsEventArticlesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tsportsEventArticlesGroupHeadlineScoringOutputName: %@;", sportsEventArticlesGroupHeadlineScoringOutputName];

  tagFeedForYouGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagFeedForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagFeedForYouGroupHeadlineScoringOutputName: %@;", tagFeedForYouGroupHeadlineScoringOutputName];

  tagRecentStoriesGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagRecentStoriesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagRecentStoriesGroupHeadlineScoringOutputName: %@;", tagRecentStoriesGroupHeadlineScoringOutputName];

  tagDateRangeGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagDateRangeGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagDateRangeGroupHeadlineScoringOutputName: %@;", tagDateRangeGroupHeadlineScoringOutputName];

  sportsEventTopicGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self sportsEventTopicGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tsportsEventTopicGroupHeadlineScoringOutputName: %@;", sportsEventTopicGroupHeadlineScoringOutputName];

  foodForYouGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self foodForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tfoodForYouGroupHeadlineScoringOutputName: %@;", foodForYouGroupHeadlineScoringOutputName];

  shadowDefaultHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowDefaultHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowDefaultHeadlineScoringOutputName: %@;", shadowDefaultHeadlineScoringOutputName];

  shadowTopicFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTopicFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTopicFeedHeadlineScoringOutputName: %@;", shadowTopicFeedHeadlineScoringOutputName];

  shadowMagazineFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMagazineFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMagazineFeedHeadlineScoringOutputName: %@;", shadowMagazineFeedHeadlineScoringOutputName];

  shadowMagazineFeedIssuesHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMagazineFeedIssuesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMagazineFeedIssuesHeadlineScoringOutputName: %@;", shadowMagazineFeedIssuesHeadlineScoringOutputName];

  shadowLegacyAudioFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowLegacyAudioFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowLegacyAudioFeedHeadlineScoringOutputName: %@;", shadowLegacyAudioFeedHeadlineScoringOutputName];

  shadowAudioFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowAudioFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowAudioFeedHeadlineScoringOutputName: %@;", shadowAudioFeedHeadlineScoringOutputName];

  shadowArticleRecirculationPrimaryHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleRecirculationPrimaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleRecirculationPrimaryHeadlineScoringOutputName: %@;", shadowArticleRecirculationPrimaryHeadlineScoringOutputName];

  shadowArticleRecirculationSecondaryHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleRecirculationSecondaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleRecirculationSecondaryHeadlineScoringOutputName: %@;", shadowArticleRecirculationSecondaryHeadlineScoringOutputName];

  shadowArticleRecirculationTertiaryHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleRecirculationTertiaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleRecirculationTertiaryHeadlineScoringOutputName: %@;", shadowArticleRecirculationTertiaryHeadlineScoringOutputName];

  shadowArticleRecirculationQuaternaryHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleRecirculationQuaternaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleRecirculationQuaternaryHeadlineScoringOutputName: %@;", shadowArticleRecirculationQuaternaryHeadlineScoringOutputName];

  shadowBestOfBundleHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowBestOfBundleHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowBestOfBundleHeadlineScoringOutputName: %@;", shadowBestOfBundleHeadlineScoringOutputName];

  shadowForYouGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowForYouGroupHeadlineScoringOutputName: %@;", shadowForYouGroupHeadlineScoringOutputName];

  shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowGreatStoriesYouMissedGroupHeadlineScoringOutputName: %@;", shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName];

  shadowLatestStoriesGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowLatestStoriesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowLatestStoriesGroupHeadlineScoringOutputName: %@;", shadowLatestStoriesGroupHeadlineScoringOutputName];

  shadowLocalNewsGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowLocalNewsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowLocalNewsGroupHeadlineScoringOutputName: %@;", shadowLocalNewsGroupHeadlineScoringOutputName];

  shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowNewspaperGroupMagazineFeedHeadlineScoringOutputName: %@;", shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName];

  shadowTodayWidgetHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTodayWidgetHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTodayWidgetHeadlineScoringOutputName: %@;", shadowTodayWidgetHeadlineScoringOutputName];

  shadowTagWidgetHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagWidgetHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagWidgetHeadlineScoringOutputName: %@;", shadowTagWidgetHeadlineScoringOutputName];

  shadowNotificationHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowNotificationHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowNotificationHeadlineScoringOutputName: %@;", shadowNotificationHeadlineScoringOutputName];

  shadowMySportsGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMySportsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMySportsGroupHeadlineScoringOutputName: %@;", shadowMySportsGroupHeadlineScoringOutputName];

  shadowSportsTopStoriesHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowSportsTopStoriesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowSportsTopStoriesHeadlineScoringOutputName: %@;", shadowSportsTopStoriesHeadlineScoringOutputName];

  shadowIntroToSportsGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowIntroToSportsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowIntroToSportsGroupHeadlineScoringOutputName: %@;", shadowIntroToSportsGroupHeadlineScoringOutputName];

  shadowHighlightsGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowHighlightsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowHighlightsGroupHeadlineScoringOutputName: %@;", shadowHighlightsGroupHeadlineScoringOutputName];

  shadowArticleListTagFeedGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleListTagFeedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleListTagFeedGroupHeadlineScoringOutputName: %@;", shadowArticleListTagFeedGroupHeadlineScoringOutputName];

  shadowTagFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagFeedHeadlineScoringOutputName: %@;", shadowTagFeedHeadlineScoringOutputName];

  shadowNewspaperGroupTodayFeedHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowNewspaperGroupTodayFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowNewspaperGroupTodayFeedHeadlineScoringOutputName: %@;", shadowNewspaperGroupTodayFeedHeadlineScoringOutputName];

  shadowMoreForYouGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMoreForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMoreForYouGroupHeadlineScoringOutputName: %@;", shadowMoreForYouGroupHeadlineScoringOutputName];

  shadowIntroToSportsGroupForYouHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowIntroToSportsGroupForYouHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowIntroToSportsGroupForYouHeadlineScoringOutputName: %@;", shadowIntroToSportsGroupForYouHeadlineScoringOutputName];

  shadowMySportsGroupForYouHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMySportsGroupForYouHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMySportsGroupForYouHeadlineScoringOutputName: %@;", shadowMySportsGroupForYouHeadlineScoringOutputName];

  shadowMySportsTopicsHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMySportsTopicsHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMySportsTopicsHeadlineScoringOutputName: %@;", shadowMySportsTopicsHeadlineScoringOutputName];

  shadowCuratedGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowCuratedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowCuratedGroupHeadlineScoringOutputName: %@;", shadowCuratedGroupHeadlineScoringOutputName];

  shadowCuratedGroupIssuesHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowCuratedGroupIssuesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowCuratedGroupIssuesHeadlineScoringOutputName: %@;", shadowCuratedGroupIssuesHeadlineScoringOutputName];

  shadowLocalSectionGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowLocalSectionGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowLocalSectionGroupHeadlineScoringOutputName: %@;", shadowLocalSectionGroupHeadlineScoringOutputName];

  shadowNewspaperSectionGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowNewspaperSectionGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowNewspaperSectionGroupHeadlineScoringOutputName: %@;", shadowNewspaperSectionGroupHeadlineScoringOutputName];

  shadowSportsEventArticlesGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowSportsEventArticlesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowSportsEventArticlesGroupHeadlineScoringOutputName: %@;", shadowSportsEventArticlesGroupHeadlineScoringOutputName];

  shadowTagFeedForYouGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagFeedForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagFeedForYouGroupHeadlineScoringOutputName: %@;", shadowTagFeedForYouGroupHeadlineScoringOutputName];

  shadowTagRecentStoriesGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagRecentStoriesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagRecentStoriesGroupHeadlineScoringOutputName: %@;", shadowTagRecentStoriesGroupHeadlineScoringOutputName];

  shadowTagDateRangeGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagDateRangeGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagDateRangeGroupHeadlineScoringOutputName: %@;", shadowTagDateRangeGroupHeadlineScoringOutputName];

  shadowSportsEventTopicGroupHeadlineScoringOutputName = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowSportsEventTopicGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowSportsEventTopicGroupHeadlineScoringOutputName: %@;", shadowSportsEventTopicGroupHeadlineScoringOutputName];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiFeedPersonalizationOutputConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationStringValue(dictionaryCopy, @"defaultHeadlineScoringOutputName", 0);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v166.receiver = self;
    v166.super_class = FCNewsTabiFeedPersonalizationOutputConfiguration;
    v8 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)&v166 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_defaultHeadlineScoringOutputName, v6);
      v10 = FCAppConfigurationStringValue(dictionaryCopy, @"topicFeedHeadlineScoringOutputName", v7);
      topicFeedHeadlineScoringOutputName = v9->_topicFeedHeadlineScoringOutputName;
      v9->_topicFeedHeadlineScoringOutputName = v10;

      v12 = FCAppConfigurationStringValue(dictionaryCopy, @"magazineFeedHeadlineScoringOutputName", v7);
      magazineFeedHeadlineScoringOutputName = v9->_magazineFeedHeadlineScoringOutputName;
      v9->_magazineFeedHeadlineScoringOutputName = v12;

      v14 = FCAppConfigurationStringValue(dictionaryCopy, @"magazineFeedIssuesHeadlineScoringOutputName", v7);
      magazineFeedIssuesHeadlineScoringOutputName = v9->_magazineFeedIssuesHeadlineScoringOutputName;
      v9->_magazineFeedIssuesHeadlineScoringOutputName = v14;

      v16 = FCAppConfigurationStringValue(dictionaryCopy, @"legacyAudioFeedHeadlineScoringOutputName", v7);
      legacyAudioFeedHeadlineScoringOutputName = v9->_legacyAudioFeedHeadlineScoringOutputName;
      v9->_legacyAudioFeedHeadlineScoringOutputName = v16;

      v18 = FCAppConfigurationStringValue(dictionaryCopy, @"audioFeedHeadlineScoringOutputName", v7);
      audioFeedHeadlineScoringOutputName = v9->_audioFeedHeadlineScoringOutputName;
      v9->_audioFeedHeadlineScoringOutputName = v18;

      v20 = FCAppConfigurationStringValue(dictionaryCopy, @"articleRecirculationPrimaryHeadlineScoringOutputName", v7);
      articleRecirculationPrimaryHeadlineScoringOutputName = v9->_articleRecirculationPrimaryHeadlineScoringOutputName;
      v9->_articleRecirculationPrimaryHeadlineScoringOutputName = v20;

      v22 = FCAppConfigurationStringValue(dictionaryCopy, @"articleRecirculationSecondaryHeadlineScoringOutputName", v7);
      articleRecirculationSecondaryHeadlineScoringOutputName = v9->_articleRecirculationSecondaryHeadlineScoringOutputName;
      v9->_articleRecirculationSecondaryHeadlineScoringOutputName = v22;

      v24 = FCAppConfigurationStringValue(dictionaryCopy, @"articleRecirculationTertiaryHeadlineScoringOutputName", v7);
      articleRecirculationTertiaryHeadlineScoringOutputName = v9->_articleRecirculationTertiaryHeadlineScoringOutputName;
      v9->_articleRecirculationTertiaryHeadlineScoringOutputName = v24;

      v26 = FCAppConfigurationStringValue(dictionaryCopy, @"articleRecirculationQuaternaryHeadlineScoringOutputName", v7);
      articleRecirculationQuaternaryHeadlineScoringOutputName = v9->_articleRecirculationQuaternaryHeadlineScoringOutputName;
      v9->_articleRecirculationQuaternaryHeadlineScoringOutputName = v26;

      v28 = FCAppConfigurationStringValue(dictionaryCopy, @"bestOfBundleHeadlineScoringOutputName", v7);
      bestOfBundleHeadlineScoringOutputName = v9->_bestOfBundleHeadlineScoringOutputName;
      v9->_bestOfBundleHeadlineScoringOutputName = v28;

      v30 = FCAppConfigurationStringValue(dictionaryCopy, @"forYouGroupHeadlineScoringOutputName", v7);
      forYouGroupHeadlineScoringOutputName = v9->_forYouGroupHeadlineScoringOutputName;
      v9->_forYouGroupHeadlineScoringOutputName = v30;

      v32 = FCAppConfigurationStringValue(dictionaryCopy, @"greatStoriesYouMissedGroupHeadlineScoringOutputName", v7);
      greatStoriesYouMissedGroupHeadlineScoringOutputName = v9->_greatStoriesYouMissedGroupHeadlineScoringOutputName;
      v9->_greatStoriesYouMissedGroupHeadlineScoringOutputName = v32;

      v34 = FCAppConfigurationStringValue(dictionaryCopy, @"latestStoriesGroupHeadlineScoringOutputName", v7);
      latestStoriesGroupHeadlineScoringOutputName = v9->_latestStoriesGroupHeadlineScoringOutputName;
      v9->_latestStoriesGroupHeadlineScoringOutputName = v34;

      v36 = FCAppConfigurationStringValue(dictionaryCopy, @"localNewsGroupHeadlineScoringOutputName", v7);
      localNewsGroupHeadlineScoringOutputName = v9->_localNewsGroupHeadlineScoringOutputName;
      v9->_localNewsGroupHeadlineScoringOutputName = v36;

      v38 = FCAppConfigurationStringValue(dictionaryCopy, @"newspaperGroupMagazineFeedHeadlineScoringOutputName", v7);
      newspaperGroupMagazineFeedHeadlineScoringOutputName = v9->_newspaperGroupMagazineFeedHeadlineScoringOutputName;
      v9->_newspaperGroupMagazineFeedHeadlineScoringOutputName = v38;

      v40 = FCAppConfigurationStringValue(dictionaryCopy, @"todayWidgetHeadlineScoringOutputName", v7);
      todayWidgetHeadlineScoringOutputName = v9->_todayWidgetHeadlineScoringOutputName;
      v9->_todayWidgetHeadlineScoringOutputName = v40;

      v42 = FCAppConfigurationStringValue(dictionaryCopy, @"tagWidgetHeadlineScoringOutputName", v7);
      tagWidgetHeadlineScoringOutputName = v9->_tagWidgetHeadlineScoringOutputName;
      v9->_tagWidgetHeadlineScoringOutputName = v42;

      v44 = FCAppConfigurationStringValue(dictionaryCopy, @"notificationHeadlineScoringOutputName", v7);
      notificationHeadlineScoringOutputName = v9->_notificationHeadlineScoringOutputName;
      v9->_notificationHeadlineScoringOutputName = v44;

      v46 = FCAppConfigurationStringValue(dictionaryCopy, @"mySportsGroupHeadlineScoringOutputName", v7);
      mySportsGroupHeadlineScoringOutputName = v9->_mySportsGroupHeadlineScoringOutputName;
      v9->_mySportsGroupHeadlineScoringOutputName = v46;

      v48 = FCAppConfigurationStringValue(dictionaryCopy, @"sportsTopStoriesHeadlineScoringOutputName", v7);
      sportsTopStoriesHeadlineScoringOutputName = v9->_sportsTopStoriesHeadlineScoringOutputName;
      v9->_sportsTopStoriesHeadlineScoringOutputName = v48;

      v50 = FCAppConfigurationStringValue(dictionaryCopy, @"introToSportsGroupHeadlineScoringOutputName", v7);
      introToSportsGroupHeadlineScoringOutputName = v9->_introToSportsGroupHeadlineScoringOutputName;
      v9->_introToSportsGroupHeadlineScoringOutputName = v50;

      v52 = FCAppConfigurationStringValue(dictionaryCopy, @"highlightsGroupHeadlineScoringOutputName", v7);
      highlightsGroupHeadlineScoringOutputName = v9->_highlightsGroupHeadlineScoringOutputName;
      v9->_highlightsGroupHeadlineScoringOutputName = v52;

      v54 = FCAppConfigurationStringValue(dictionaryCopy, @"articleListTagFeedGroupHeadlineScoringOutputName", v7);
      articleListTagFeedGroupHeadlineScoringOutputName = v9->_articleListTagFeedGroupHeadlineScoringOutputName;
      v9->_articleListTagFeedGroupHeadlineScoringOutputName = v54;

      v56 = FCAppConfigurationStringValue(dictionaryCopy, @"tagFeedHeadlineScoringOutputName", v7);
      tagFeedHeadlineScoringOutputName = v9->_tagFeedHeadlineScoringOutputName;
      v9->_tagFeedHeadlineScoringOutputName = v56;

      v58 = FCAppConfigurationStringValue(dictionaryCopy, @"newspaperGroupTodayFeedHeadlineScoringOutputName", v7);
      newspaperGroupTodayFeedHeadlineScoringOutputName = v9->_newspaperGroupTodayFeedHeadlineScoringOutputName;
      v9->_newspaperGroupTodayFeedHeadlineScoringOutputName = v58;

      v60 = FCAppConfigurationStringValue(dictionaryCopy, @"moreForYouGroupHeadlineScoringOutputName", v7);
      moreForYouGroupHeadlineScoringOutputName = v9->_moreForYouGroupHeadlineScoringOutputName;
      v9->_moreForYouGroupHeadlineScoringOutputName = v60;

      v62 = FCAppConfigurationStringValue(dictionaryCopy, @"introToSportsGroupForYouHeadlineScoringOutputName", v7);
      introToSportsGroupForYouHeadlineScoringOutputName = v9->_introToSportsGroupForYouHeadlineScoringOutputName;
      v9->_introToSportsGroupForYouHeadlineScoringOutputName = v62;

      v64 = FCAppConfigurationStringValue(dictionaryCopy, @"mySportsGroupForYouHeadlineScoringOutputName", v7);
      mySportsGroupForYouHeadlineScoringOutputName = v9->_mySportsGroupForYouHeadlineScoringOutputName;
      v9->_mySportsGroupForYouHeadlineScoringOutputName = v64;

      v66 = FCAppConfigurationStringValue(dictionaryCopy, @"mySportsTopicsHeadlineScoringOutputName", v7);
      mySportsTopicsHeadlineScoringOutputName = v9->_mySportsTopicsHeadlineScoringOutputName;
      v9->_mySportsTopicsHeadlineScoringOutputName = v66;

      v68 = FCAppConfigurationStringValue(dictionaryCopy, @"curatedGroupHeadlineScoringOutputName", v7);
      curatedGroupHeadlineScoringOutputName = v9->_curatedGroupHeadlineScoringOutputName;
      v9->_curatedGroupHeadlineScoringOutputName = v68;

      v70 = FCAppConfigurationStringValue(dictionaryCopy, @"curatedGroupIssuesHeadlineScoringOutputName", v7);
      curatedGroupIssuesHeadlineScoringOutputName = v9->_curatedGroupIssuesHeadlineScoringOutputName;
      v9->_curatedGroupIssuesHeadlineScoringOutputName = v70;

      v72 = FCAppConfigurationStringValue(dictionaryCopy, @"localSectionGroupHeadlineScoringOutputName", v7);
      localSectionGroupHeadlineScoringOutputName = v9->_localSectionGroupHeadlineScoringOutputName;
      v9->_localSectionGroupHeadlineScoringOutputName = v72;

      v74 = FCAppConfigurationStringValue(dictionaryCopy, @"newspaperSectionGroupHeadlineScoringOutputName", v7);
      newspaperSectionGroupHeadlineScoringOutputName = v9->_newspaperSectionGroupHeadlineScoringOutputName;
      v9->_newspaperSectionGroupHeadlineScoringOutputName = v74;

      v76 = FCAppConfigurationStringValue(dictionaryCopy, @"sportsEventArticlesGroupHeadlineScoringOutputName", v7);
      sportsEventArticlesGroupHeadlineScoringOutputName = v9->_sportsEventArticlesGroupHeadlineScoringOutputName;
      v9->_sportsEventArticlesGroupHeadlineScoringOutputName = v76;

      v78 = FCAppConfigurationStringValue(dictionaryCopy, @"tagFeedForYouGroupHeadlineScoringOutputName", v7);
      tagFeedForYouGroupHeadlineScoringOutputName = v9->_tagFeedForYouGroupHeadlineScoringOutputName;
      v9->_tagFeedForYouGroupHeadlineScoringOutputName = v78;

      v80 = FCAppConfigurationStringValue(dictionaryCopy, @"tagRecentStoriesGroupHeadlineScoringOutputName", v7);
      tagRecentStoriesGroupHeadlineScoringOutputName = v9->_tagRecentStoriesGroupHeadlineScoringOutputName;
      v9->_tagRecentStoriesGroupHeadlineScoringOutputName = v80;

      v82 = FCAppConfigurationStringValue(dictionaryCopy, @"tagDateRangeGroupHeadlineScoringOutputName", v7);
      tagDateRangeGroupHeadlineScoringOutputName = v9->_tagDateRangeGroupHeadlineScoringOutputName;
      v9->_tagDateRangeGroupHeadlineScoringOutputName = v82;

      v84 = FCAppConfigurationStringValue(dictionaryCopy, @"sportsEventTopicGroupHeadlineScoringOutputName", v7);
      sportsEventTopicGroupHeadlineScoringOutputName = v9->_sportsEventTopicGroupHeadlineScoringOutputName;
      v9->_sportsEventTopicGroupHeadlineScoringOutputName = v84;

      v86 = FCAppConfigurationStringValue(dictionaryCopy, @"foodForYouGroupHeadlineScoringOutputName", v7);
      foodForYouGroupHeadlineScoringOutputName = v9->_foodForYouGroupHeadlineScoringOutputName;
      v9->_foodForYouGroupHeadlineScoringOutputName = v86;

      v88 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowDefaultHeadlineScoringOutputName", v7);
      shadowDefaultHeadlineScoringOutputName = v9->_shadowDefaultHeadlineScoringOutputName;
      v9->_shadowDefaultHeadlineScoringOutputName = v88;

      v90 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowMagazineFeedHeadlineScoringOutputName", v9->_magazineFeedHeadlineScoringOutputName);
      shadowMagazineFeedHeadlineScoringOutputName = v9->_shadowMagazineFeedHeadlineScoringOutputName;
      v9->_shadowMagazineFeedHeadlineScoringOutputName = v90;

      v92 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowMagazineFeedIssuesHeadlineScoringOutputName", v9->_magazineFeedIssuesHeadlineScoringOutputName);
      shadowMagazineFeedIssuesHeadlineScoringOutputName = v9->_shadowMagazineFeedIssuesHeadlineScoringOutputName;
      v9->_shadowMagazineFeedIssuesHeadlineScoringOutputName = v92;

      v94 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowLegacyAudioFeedHeadlineScoringOutputName", v9->_legacyAudioFeedHeadlineScoringOutputName);
      shadowLegacyAudioFeedHeadlineScoringOutputName = v9->_shadowLegacyAudioFeedHeadlineScoringOutputName;
      v9->_shadowLegacyAudioFeedHeadlineScoringOutputName = v94;

      v96 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowAudioFeedHeadlineScoringOutputName", v9->_audioFeedHeadlineScoringOutputName);
      shadowAudioFeedHeadlineScoringOutputName = v9->_shadowAudioFeedHeadlineScoringOutputName;
      v9->_shadowAudioFeedHeadlineScoringOutputName = v96;

      v98 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowArticleRecirculationPrimaryHeadlineScoringOutputName", v9->_articleRecirculationPrimaryHeadlineScoringOutputName);
      shadowArticleRecirculationPrimaryHeadlineScoringOutputName = v9->_shadowArticleRecirculationPrimaryHeadlineScoringOutputName;
      v9->_shadowArticleRecirculationPrimaryHeadlineScoringOutputName = v98;

      v100 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowArticleRecirculationSecondaryHeadlineScoringOutputName", v9->_articleRecirculationSecondaryHeadlineScoringOutputName);
      shadowArticleRecirculationSecondaryHeadlineScoringOutputName = v9->_shadowArticleRecirculationSecondaryHeadlineScoringOutputName;
      v9->_shadowArticleRecirculationSecondaryHeadlineScoringOutputName = v100;

      v102 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowArticleRecirculationTertiaryHeadlineScoringOutputName", v9->_articleRecirculationTertiaryHeadlineScoringOutputName);
      shadowArticleRecirculationTertiaryHeadlineScoringOutputName = v9->_shadowArticleRecirculationTertiaryHeadlineScoringOutputName;
      v9->_shadowArticleRecirculationTertiaryHeadlineScoringOutputName = v102;

      v104 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowArticleRecirculationQuaternaryHeadlineScoringOutputName", v9->_articleRecirculationQuaternaryHeadlineScoringOutputName);
      shadowArticleRecirculationQuaternaryHeadlineScoringOutputName = v9->_shadowArticleRecirculationQuaternaryHeadlineScoringOutputName;
      v9->_shadowArticleRecirculationQuaternaryHeadlineScoringOutputName = v104;

      v106 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowBestOfBundleHeadlineScoringOutputName", v9->_bestOfBundleHeadlineScoringOutputName);
      shadowBestOfBundleHeadlineScoringOutputName = v9->_shadowBestOfBundleHeadlineScoringOutputName;
      v9->_shadowBestOfBundleHeadlineScoringOutputName = v106;

      v108 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowForYouGroupHeadlineScoringOutputName", v9->_forYouGroupHeadlineScoringOutputName);
      shadowForYouGroupHeadlineScoringOutputName = v9->_shadowForYouGroupHeadlineScoringOutputName;
      v9->_shadowForYouGroupHeadlineScoringOutputName = v108;

      v110 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName", v9->_greatStoriesYouMissedGroupHeadlineScoringOutputName);
      shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName = v9->_shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName;
      v9->_shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName = v110;

      v112 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowLatestStoriesGroupHeadlineScoringOutputName", v9->_latestStoriesGroupHeadlineScoringOutputName);
      shadowLatestStoriesGroupHeadlineScoringOutputName = v9->_shadowLatestStoriesGroupHeadlineScoringOutputName;
      v9->_shadowLatestStoriesGroupHeadlineScoringOutputName = v112;

      v114 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowLocalNewsGroupHeadlineScoringOutputName", v9->_localNewsGroupHeadlineScoringOutputName);
      shadowLocalNewsGroupHeadlineScoringOutputName = v9->_shadowLocalNewsGroupHeadlineScoringOutputName;
      v9->_shadowLocalNewsGroupHeadlineScoringOutputName = v114;

      v116 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName", v9->_newspaperGroupMagazineFeedHeadlineScoringOutputName);
      shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName = v9->_shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName;
      v9->_shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName = v116;

      v118 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowTodayWidgetHeadlineScoringOutputName", v9->_todayWidgetHeadlineScoringOutputName);
      shadowTodayWidgetHeadlineScoringOutputName = v9->_shadowTodayWidgetHeadlineScoringOutputName;
      v9->_shadowTodayWidgetHeadlineScoringOutputName = v118;

      v120 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowTagWidgetHeadlineScoringOutputName", v9->_tagWidgetHeadlineScoringOutputName);
      shadowTagWidgetHeadlineScoringOutputName = v9->_shadowTagWidgetHeadlineScoringOutputName;
      v9->_shadowTagWidgetHeadlineScoringOutputName = v120;

      v122 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowNotificationHeadlineScoringOutputName", v9->_notificationHeadlineScoringOutputName);
      shadowNotificationHeadlineScoringOutputName = v9->_shadowNotificationHeadlineScoringOutputName;
      v9->_shadowNotificationHeadlineScoringOutputName = v122;

      v124 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowMySportsGroupHeadlineScoringOutputName", v9->_mySportsGroupHeadlineScoringOutputName);
      shadowMySportsGroupHeadlineScoringOutputName = v9->_shadowMySportsGroupHeadlineScoringOutputName;
      v9->_shadowMySportsGroupHeadlineScoringOutputName = v124;

      v126 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowSportsTopStoriesHeadlineScoringOutputName", v9->_sportsTopStoriesHeadlineScoringOutputName);
      shadowSportsTopStoriesHeadlineScoringOutputName = v9->_shadowSportsTopStoriesHeadlineScoringOutputName;
      v9->_shadowSportsTopStoriesHeadlineScoringOutputName = v126;

      v128 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowIntroToSportsGroupHeadlineScoringOutputName", v9->_introToSportsGroupHeadlineScoringOutputName);
      shadowIntroToSportsGroupHeadlineScoringOutputName = v9->_shadowIntroToSportsGroupHeadlineScoringOutputName;
      v9->_shadowIntroToSportsGroupHeadlineScoringOutputName = v128;

      v130 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowHighlightsGroupHeadlineScoringOutputName", v9->_highlightsGroupHeadlineScoringOutputName);
      shadowHighlightsGroupHeadlineScoringOutputName = v9->_shadowHighlightsGroupHeadlineScoringOutputName;
      v9->_shadowHighlightsGroupHeadlineScoringOutputName = v130;

      v132 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowArticleListTagFeedGroupHeadlineScoringOutputName", v9->_articleListTagFeedGroupHeadlineScoringOutputName);
      shadowArticleListTagFeedGroupHeadlineScoringOutputName = v9->_shadowArticleListTagFeedGroupHeadlineScoringOutputName;
      v9->_shadowArticleListTagFeedGroupHeadlineScoringOutputName = v132;

      v134 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowTagFeedHeadlineScoringOutputName", v9->_tagFeedHeadlineScoringOutputName);
      shadowTagFeedHeadlineScoringOutputName = v9->_shadowTagFeedHeadlineScoringOutputName;
      v9->_shadowTagFeedHeadlineScoringOutputName = v134;

      v136 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowNewspaperGroupTodayFeedHeadlineScoringOutputName", v9->_newspaperGroupTodayFeedHeadlineScoringOutputName);
      shadowNewspaperGroupTodayFeedHeadlineScoringOutputName = v9->_shadowNewspaperGroupTodayFeedHeadlineScoringOutputName;
      v9->_shadowNewspaperGroupTodayFeedHeadlineScoringOutputName = v136;

      v138 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowMoreForYouGroupHeadlineScoringOutputName", v9->_moreForYouGroupHeadlineScoringOutputName);
      shadowMoreForYouGroupHeadlineScoringOutputName = v9->_shadowMoreForYouGroupHeadlineScoringOutputName;
      v9->_shadowMoreForYouGroupHeadlineScoringOutputName = v138;

      v140 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowIntroToSportsGroupForYouHeadlineScoringOutputName", v9->_introToSportsGroupForYouHeadlineScoringOutputName);
      shadowIntroToSportsGroupForYouHeadlineScoringOutputName = v9->_shadowIntroToSportsGroupForYouHeadlineScoringOutputName;
      v9->_shadowIntroToSportsGroupForYouHeadlineScoringOutputName = v140;

      v142 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowMySportsGroupForYouHeadlineScoringOutputName", v9->_mySportsGroupForYouHeadlineScoringOutputName);
      shadowMySportsGroupForYouHeadlineScoringOutputName = v9->_shadowMySportsGroupForYouHeadlineScoringOutputName;
      v9->_shadowMySportsGroupForYouHeadlineScoringOutputName = v142;

      v144 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowMySportsTopicsHeadlineScoringOutputName", v9->_mySportsTopicsHeadlineScoringOutputName);
      shadowMySportsTopicsHeadlineScoringOutputName = v9->_shadowMySportsTopicsHeadlineScoringOutputName;
      v9->_shadowMySportsTopicsHeadlineScoringOutputName = v144;

      v146 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowCuratedGroupHeadlineScoringOutputName", v9->_curatedGroupHeadlineScoringOutputName);
      shadowCuratedGroupHeadlineScoringOutputName = v9->_shadowCuratedGroupHeadlineScoringOutputName;
      v9->_shadowCuratedGroupHeadlineScoringOutputName = v146;

      v148 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowCuratedGroupIssuesHeadlineScoringOutputName", v9->_curatedGroupIssuesHeadlineScoringOutputName);
      shadowCuratedGroupIssuesHeadlineScoringOutputName = v9->_shadowCuratedGroupIssuesHeadlineScoringOutputName;
      v9->_shadowCuratedGroupIssuesHeadlineScoringOutputName = v148;

      v150 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowLocalSectionGroupHeadlineScoringOutputName", v9->_localSectionGroupHeadlineScoringOutputName);
      shadowLocalSectionGroupHeadlineScoringOutputName = v9->_shadowLocalSectionGroupHeadlineScoringOutputName;
      v9->_shadowLocalSectionGroupHeadlineScoringOutputName = v150;

      v152 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowNewspaperSectionGroupHeadlineScoringOutputName", v9->_newspaperSectionGroupHeadlineScoringOutputName);
      shadowNewspaperSectionGroupHeadlineScoringOutputName = v9->_shadowNewspaperSectionGroupHeadlineScoringOutputName;
      v9->_shadowNewspaperSectionGroupHeadlineScoringOutputName = v152;

      v154 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowSportsEventArticlesGroupHeadlineScoringOutputName", v9->_sportsEventArticlesGroupHeadlineScoringOutputName);
      shadowSportsEventArticlesGroupHeadlineScoringOutputName = v9->_shadowSportsEventArticlesGroupHeadlineScoringOutputName;
      v9->_shadowSportsEventArticlesGroupHeadlineScoringOutputName = v154;

      v156 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowTagFeedForYouGroupHeadlineScoringOutputName", v9->_tagFeedForYouGroupHeadlineScoringOutputName);
      shadowTagFeedForYouGroupHeadlineScoringOutputName = v9->_shadowTagFeedForYouGroupHeadlineScoringOutputName;
      v9->_shadowTagFeedForYouGroupHeadlineScoringOutputName = v156;

      v158 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowTagRecentStoriesGroupHeadlineScoringOutputName", v9->_tagRecentStoriesGroupHeadlineScoringOutputName);
      shadowTagRecentStoriesGroupHeadlineScoringOutputName = v9->_shadowTagRecentStoriesGroupHeadlineScoringOutputName;
      v9->_shadowTagRecentStoriesGroupHeadlineScoringOutputName = v158;

      v160 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowTagDateRangeGroupHeadlineScoringOutputName", v9->_tagDateRangeGroupHeadlineScoringOutputName);
      shadowTagDateRangeGroupHeadlineScoringOutputName = v9->_shadowTagDateRangeGroupHeadlineScoringOutputName;
      v9->_shadowTagDateRangeGroupHeadlineScoringOutputName = v160;

      v162 = FCAppConfigurationStringValue(dictionaryCopy, @"shadowSportsEventTopicGroupHeadlineScoringOutputName", v9->_sportsEventTopicGroupHeadlineScoringOutputName);
      shadowSportsEventTopicGroupHeadlineScoringOutputName = v9->_shadowSportsEventTopicGroupHeadlineScoringOutputName;
      v9->_shadowSportsEventTopicGroupHeadlineScoringOutputName = v162;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v167[0] = MEMORY[0x1E69E9820];
    v167[1] = 3221225472;
    v167[2] = __71__FCNewsTabiFeedPersonalizationOutputConfiguration_initWithDictionary___block_invoke;
    v167[3] = &unk_1E7C36F98;
    v168 = dictionaryCopy;
    selfCopy = __71__FCNewsTabiFeedPersonalizationOutputConfiguration_initWithDictionary___block_invoke(v167);
    v7 = v168;
  }

  return selfCopy;
}

uint64_t __71__FCNewsTabiFeedPersonalizationOutputConfiguration_initWithDictionary___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCTabiConfigurationLog;
  if (os_log_type_enabled(FCTabiConfigurationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 description];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to initialize FCNewsTabiFeedPersonalizationOutputConfiguration due to failure to decode defaultHeadlineScoringOutputName from configuration %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end