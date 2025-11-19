@interface FCNewsTabiFeedPersonalizationOutputConfiguration
- (FCNewsTabiFeedPersonalizationOutputConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiFeedPersonalizationOutputConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self defaultHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tdefaultHeadlineScoringOutputName: %@;", v4];

  v5 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self topicFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttopicFeedHeadlineScoringOutputName: %@;", v5];

  v6 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self magazineFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmagazineFeedHeadlineScoringOutputName: %@;", v6];

  v7 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self magazineFeedIssuesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmagazineFeedIssuesHeadlineScoringOutputName: %@;", v7];

  v8 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self legacyAudioFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tlegacyAudioFeedHeadlineScoringOutputName: %@;", v8];

  v9 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self audioFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\taudioFeedHeadlineScoringOutputName: %@;", v9];

  v10 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleRecirculationPrimaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleRecirculationPrimaryHeadlineScoringOutputName: %@;", v10];

  v11 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleRecirculationSecondaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleRecirculationSecondaryHeadlineScoringOutputName: %@;", v11];

  v12 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleRecirculationTertiaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleRecirculationTertiaryHeadlineScoringOutputName: %@;", v12];

  v13 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleRecirculationQuaternaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleRecirculationQuaternaryHeadlineScoringOutputName: %@;", v13];

  v14 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self bestOfBundleHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tbestOfBundleHeadlineScoringOutputName: %@;", v14];

  v15 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self forYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tforYouGroupHeadlineScoringOutputName: %@;", v15];

  v16 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self greatStoriesYouMissedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tgreatStoriesYouMissedGroupHeadlineScoringOutputName: %@;", v16];

  v17 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self latestStoriesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tlatestStoriesGroupHeadlineScoringOutputName: %@;", v17];

  v18 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self localNewsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tlocalNewsGroupHeadlineScoringOutputName: %@;", v18];

  v19 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self newspaperGroupMagazineFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tnewspaperGroupMagazineFeedHeadlineScoringOutputName: %@;", v19];

  v20 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self todayWidgetHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttodayWidgetHeadlineScoringOutputName: %@;", v20];

  v21 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagWidgetHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagWidgetHeadlineScoringOutputName: %@;", v21];

  v22 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self notificationHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tnotificationHeadlineScoringOutputName: %@;", v22];

  v23 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self mySportsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmySportsGroupHeadlineScoringOutputName: %@;", v23];

  v24 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self sportsTopStoriesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tsportsTopStoriesHeadlineScoringOutputName: %@;", v24];

  v25 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self introToSportsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tintroToSportsGroupHeadlineScoringOutputName: %@;", v25];

  v26 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self highlightsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\thighlightsGroupHeadlineScoringOutputName: %@;", v26];

  v27 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self articleListTagFeedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tarticleListTagFeedGroupHeadlineScoringOutputName: %@;", v27];

  v28 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagFeedHeadlineScoringOutputName: %@;", v28];

  v29 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self newspaperGroupTodayFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tnewspaperGroupTodayFeedHeadlineScoringOutputName: %@;", v29];

  v30 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self moreForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmoreForYouGroupHeadlineScoringOutputName: %@;", v30];

  v31 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self introToSportsGroupForYouHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tintroToSportsGroupForYouHeadlineScoringOutputName: %@;", v31];

  v32 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self mySportsGroupForYouHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmySportsGroupForYouHeadlineScoringOutputName: %@;", v32];

  v33 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self mySportsTopicsHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tmySportsTopicsHeadlineScoringOutputName: %@;", v33];

  v34 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self curatedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tcuratedGroupHeadlineScoringOutputName: %@;", v34];

  v35 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self curatedGroupIssuesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tcuratedGroupIssuesHeadlineScoringOutputName: %@;", v35];

  v36 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self localSectionGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tlocalSectionGroupHeadlineScoringOutputName: %@;", v36];

  v37 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self newspaperSectionGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tnewspaperSectionGroupHeadlineScoringOutputName: %@;", v37];

  v38 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self sportsEventArticlesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tsportsEventArticlesGroupHeadlineScoringOutputName: %@;", v38];

  v39 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagFeedForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagFeedForYouGroupHeadlineScoringOutputName: %@;", v39];

  v40 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagRecentStoriesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagRecentStoriesGroupHeadlineScoringOutputName: %@;", v40];

  v41 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self tagDateRangeGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\ttagDateRangeGroupHeadlineScoringOutputName: %@;", v41];

  v42 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self sportsEventTopicGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tsportsEventTopicGroupHeadlineScoringOutputName: %@;", v42];

  v43 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self foodForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tfoodForYouGroupHeadlineScoringOutputName: %@;", v43];

  v44 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowDefaultHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowDefaultHeadlineScoringOutputName: %@;", v44];

  v45 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTopicFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTopicFeedHeadlineScoringOutputName: %@;", v45];

  v46 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMagazineFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMagazineFeedHeadlineScoringOutputName: %@;", v46];

  v47 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMagazineFeedIssuesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMagazineFeedIssuesHeadlineScoringOutputName: %@;", v47];

  v48 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowLegacyAudioFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowLegacyAudioFeedHeadlineScoringOutputName: %@;", v48];

  v49 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowAudioFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowAudioFeedHeadlineScoringOutputName: %@;", v49];

  v50 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleRecirculationPrimaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleRecirculationPrimaryHeadlineScoringOutputName: %@;", v50];

  v51 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleRecirculationSecondaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleRecirculationSecondaryHeadlineScoringOutputName: %@;", v51];

  v52 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleRecirculationTertiaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleRecirculationTertiaryHeadlineScoringOutputName: %@;", v52];

  v53 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleRecirculationQuaternaryHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleRecirculationQuaternaryHeadlineScoringOutputName: %@;", v53];

  v54 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowBestOfBundleHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowBestOfBundleHeadlineScoringOutputName: %@;", v54];

  v55 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowForYouGroupHeadlineScoringOutputName: %@;", v55];

  v56 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowGreatStoriesYouMissedGroupHeadlineScoringOutputName: %@;", v56];

  v57 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowLatestStoriesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowLatestStoriesGroupHeadlineScoringOutputName: %@;", v57];

  v58 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowLocalNewsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowLocalNewsGroupHeadlineScoringOutputName: %@;", v58];

  v59 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowNewspaperGroupMagazineFeedHeadlineScoringOutputName: %@;", v59];

  v60 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTodayWidgetHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTodayWidgetHeadlineScoringOutputName: %@;", v60];

  v61 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagWidgetHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagWidgetHeadlineScoringOutputName: %@;", v61];

  v62 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowNotificationHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowNotificationHeadlineScoringOutputName: %@;", v62];

  v63 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMySportsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMySportsGroupHeadlineScoringOutputName: %@;", v63];

  v64 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowSportsTopStoriesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowSportsTopStoriesHeadlineScoringOutputName: %@;", v64];

  v65 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowIntroToSportsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowIntroToSportsGroupHeadlineScoringOutputName: %@;", v65];

  v66 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowHighlightsGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowHighlightsGroupHeadlineScoringOutputName: %@;", v66];

  v67 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowArticleListTagFeedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowArticleListTagFeedGroupHeadlineScoringOutputName: %@;", v67];

  v68 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagFeedHeadlineScoringOutputName: %@;", v68];

  v69 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowNewspaperGroupTodayFeedHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowNewspaperGroupTodayFeedHeadlineScoringOutputName: %@;", v69];

  v70 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMoreForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMoreForYouGroupHeadlineScoringOutputName: %@;", v70];

  v71 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowIntroToSportsGroupForYouHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowIntroToSportsGroupForYouHeadlineScoringOutputName: %@;", v71];

  v72 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMySportsGroupForYouHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMySportsGroupForYouHeadlineScoringOutputName: %@;", v72];

  v73 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowMySportsTopicsHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowMySportsTopicsHeadlineScoringOutputName: %@;", v73];

  v74 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowCuratedGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowCuratedGroupHeadlineScoringOutputName: %@;", v74];

  v75 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowCuratedGroupIssuesHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowCuratedGroupIssuesHeadlineScoringOutputName: %@;", v75];

  v76 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowLocalSectionGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowLocalSectionGroupHeadlineScoringOutputName: %@;", v76];

  v77 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowNewspaperSectionGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowNewspaperSectionGroupHeadlineScoringOutputName: %@;", v77];

  v78 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowSportsEventArticlesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowSportsEventArticlesGroupHeadlineScoringOutputName: %@;", v78];

  v79 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagFeedForYouGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagFeedForYouGroupHeadlineScoringOutputName: %@;", v79];

  v80 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagRecentStoriesGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagRecentStoriesGroupHeadlineScoringOutputName: %@;", v80];

  v81 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowTagDateRangeGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowTagDateRangeGroupHeadlineScoringOutputName: %@;", v81];

  v82 = [(FCNewsTabiFeedPersonalizationOutputConfiguration *)self shadowSportsEventTopicGroupHeadlineScoringOutputName];
  [v3 appendFormat:@"\n\tshadowSportsEventTopicGroupHeadlineScoringOutputName: %@;", v82];

  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiFeedPersonalizationOutputConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"defaultHeadlineScoringOutputName", 0);
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
      v10 = FCAppConfigurationStringValue(v4, @"topicFeedHeadlineScoringOutputName", v7);
      topicFeedHeadlineScoringOutputName = v9->_topicFeedHeadlineScoringOutputName;
      v9->_topicFeedHeadlineScoringOutputName = v10;

      v12 = FCAppConfigurationStringValue(v4, @"magazineFeedHeadlineScoringOutputName", v7);
      magazineFeedHeadlineScoringOutputName = v9->_magazineFeedHeadlineScoringOutputName;
      v9->_magazineFeedHeadlineScoringOutputName = v12;

      v14 = FCAppConfigurationStringValue(v4, @"magazineFeedIssuesHeadlineScoringOutputName", v7);
      magazineFeedIssuesHeadlineScoringOutputName = v9->_magazineFeedIssuesHeadlineScoringOutputName;
      v9->_magazineFeedIssuesHeadlineScoringOutputName = v14;

      v16 = FCAppConfigurationStringValue(v4, @"legacyAudioFeedHeadlineScoringOutputName", v7);
      legacyAudioFeedHeadlineScoringOutputName = v9->_legacyAudioFeedHeadlineScoringOutputName;
      v9->_legacyAudioFeedHeadlineScoringOutputName = v16;

      v18 = FCAppConfigurationStringValue(v4, @"audioFeedHeadlineScoringOutputName", v7);
      audioFeedHeadlineScoringOutputName = v9->_audioFeedHeadlineScoringOutputName;
      v9->_audioFeedHeadlineScoringOutputName = v18;

      v20 = FCAppConfigurationStringValue(v4, @"articleRecirculationPrimaryHeadlineScoringOutputName", v7);
      articleRecirculationPrimaryHeadlineScoringOutputName = v9->_articleRecirculationPrimaryHeadlineScoringOutputName;
      v9->_articleRecirculationPrimaryHeadlineScoringOutputName = v20;

      v22 = FCAppConfigurationStringValue(v4, @"articleRecirculationSecondaryHeadlineScoringOutputName", v7);
      articleRecirculationSecondaryHeadlineScoringOutputName = v9->_articleRecirculationSecondaryHeadlineScoringOutputName;
      v9->_articleRecirculationSecondaryHeadlineScoringOutputName = v22;

      v24 = FCAppConfigurationStringValue(v4, @"articleRecirculationTertiaryHeadlineScoringOutputName", v7);
      articleRecirculationTertiaryHeadlineScoringOutputName = v9->_articleRecirculationTertiaryHeadlineScoringOutputName;
      v9->_articleRecirculationTertiaryHeadlineScoringOutputName = v24;

      v26 = FCAppConfigurationStringValue(v4, @"articleRecirculationQuaternaryHeadlineScoringOutputName", v7);
      articleRecirculationQuaternaryHeadlineScoringOutputName = v9->_articleRecirculationQuaternaryHeadlineScoringOutputName;
      v9->_articleRecirculationQuaternaryHeadlineScoringOutputName = v26;

      v28 = FCAppConfigurationStringValue(v4, @"bestOfBundleHeadlineScoringOutputName", v7);
      bestOfBundleHeadlineScoringOutputName = v9->_bestOfBundleHeadlineScoringOutputName;
      v9->_bestOfBundleHeadlineScoringOutputName = v28;

      v30 = FCAppConfigurationStringValue(v4, @"forYouGroupHeadlineScoringOutputName", v7);
      forYouGroupHeadlineScoringOutputName = v9->_forYouGroupHeadlineScoringOutputName;
      v9->_forYouGroupHeadlineScoringOutputName = v30;

      v32 = FCAppConfigurationStringValue(v4, @"greatStoriesYouMissedGroupHeadlineScoringOutputName", v7);
      greatStoriesYouMissedGroupHeadlineScoringOutputName = v9->_greatStoriesYouMissedGroupHeadlineScoringOutputName;
      v9->_greatStoriesYouMissedGroupHeadlineScoringOutputName = v32;

      v34 = FCAppConfigurationStringValue(v4, @"latestStoriesGroupHeadlineScoringOutputName", v7);
      latestStoriesGroupHeadlineScoringOutputName = v9->_latestStoriesGroupHeadlineScoringOutputName;
      v9->_latestStoriesGroupHeadlineScoringOutputName = v34;

      v36 = FCAppConfigurationStringValue(v4, @"localNewsGroupHeadlineScoringOutputName", v7);
      localNewsGroupHeadlineScoringOutputName = v9->_localNewsGroupHeadlineScoringOutputName;
      v9->_localNewsGroupHeadlineScoringOutputName = v36;

      v38 = FCAppConfigurationStringValue(v4, @"newspaperGroupMagazineFeedHeadlineScoringOutputName", v7);
      newspaperGroupMagazineFeedHeadlineScoringOutputName = v9->_newspaperGroupMagazineFeedHeadlineScoringOutputName;
      v9->_newspaperGroupMagazineFeedHeadlineScoringOutputName = v38;

      v40 = FCAppConfigurationStringValue(v4, @"todayWidgetHeadlineScoringOutputName", v7);
      todayWidgetHeadlineScoringOutputName = v9->_todayWidgetHeadlineScoringOutputName;
      v9->_todayWidgetHeadlineScoringOutputName = v40;

      v42 = FCAppConfigurationStringValue(v4, @"tagWidgetHeadlineScoringOutputName", v7);
      tagWidgetHeadlineScoringOutputName = v9->_tagWidgetHeadlineScoringOutputName;
      v9->_tagWidgetHeadlineScoringOutputName = v42;

      v44 = FCAppConfigurationStringValue(v4, @"notificationHeadlineScoringOutputName", v7);
      notificationHeadlineScoringOutputName = v9->_notificationHeadlineScoringOutputName;
      v9->_notificationHeadlineScoringOutputName = v44;

      v46 = FCAppConfigurationStringValue(v4, @"mySportsGroupHeadlineScoringOutputName", v7);
      mySportsGroupHeadlineScoringOutputName = v9->_mySportsGroupHeadlineScoringOutputName;
      v9->_mySportsGroupHeadlineScoringOutputName = v46;

      v48 = FCAppConfigurationStringValue(v4, @"sportsTopStoriesHeadlineScoringOutputName", v7);
      sportsTopStoriesHeadlineScoringOutputName = v9->_sportsTopStoriesHeadlineScoringOutputName;
      v9->_sportsTopStoriesHeadlineScoringOutputName = v48;

      v50 = FCAppConfigurationStringValue(v4, @"introToSportsGroupHeadlineScoringOutputName", v7);
      introToSportsGroupHeadlineScoringOutputName = v9->_introToSportsGroupHeadlineScoringOutputName;
      v9->_introToSportsGroupHeadlineScoringOutputName = v50;

      v52 = FCAppConfigurationStringValue(v4, @"highlightsGroupHeadlineScoringOutputName", v7);
      highlightsGroupHeadlineScoringOutputName = v9->_highlightsGroupHeadlineScoringOutputName;
      v9->_highlightsGroupHeadlineScoringOutputName = v52;

      v54 = FCAppConfigurationStringValue(v4, @"articleListTagFeedGroupHeadlineScoringOutputName", v7);
      articleListTagFeedGroupHeadlineScoringOutputName = v9->_articleListTagFeedGroupHeadlineScoringOutputName;
      v9->_articleListTagFeedGroupHeadlineScoringOutputName = v54;

      v56 = FCAppConfigurationStringValue(v4, @"tagFeedHeadlineScoringOutputName", v7);
      tagFeedHeadlineScoringOutputName = v9->_tagFeedHeadlineScoringOutputName;
      v9->_tagFeedHeadlineScoringOutputName = v56;

      v58 = FCAppConfigurationStringValue(v4, @"newspaperGroupTodayFeedHeadlineScoringOutputName", v7);
      newspaperGroupTodayFeedHeadlineScoringOutputName = v9->_newspaperGroupTodayFeedHeadlineScoringOutputName;
      v9->_newspaperGroupTodayFeedHeadlineScoringOutputName = v58;

      v60 = FCAppConfigurationStringValue(v4, @"moreForYouGroupHeadlineScoringOutputName", v7);
      moreForYouGroupHeadlineScoringOutputName = v9->_moreForYouGroupHeadlineScoringOutputName;
      v9->_moreForYouGroupHeadlineScoringOutputName = v60;

      v62 = FCAppConfigurationStringValue(v4, @"introToSportsGroupForYouHeadlineScoringOutputName", v7);
      introToSportsGroupForYouHeadlineScoringOutputName = v9->_introToSportsGroupForYouHeadlineScoringOutputName;
      v9->_introToSportsGroupForYouHeadlineScoringOutputName = v62;

      v64 = FCAppConfigurationStringValue(v4, @"mySportsGroupForYouHeadlineScoringOutputName", v7);
      mySportsGroupForYouHeadlineScoringOutputName = v9->_mySportsGroupForYouHeadlineScoringOutputName;
      v9->_mySportsGroupForYouHeadlineScoringOutputName = v64;

      v66 = FCAppConfigurationStringValue(v4, @"mySportsTopicsHeadlineScoringOutputName", v7);
      mySportsTopicsHeadlineScoringOutputName = v9->_mySportsTopicsHeadlineScoringOutputName;
      v9->_mySportsTopicsHeadlineScoringOutputName = v66;

      v68 = FCAppConfigurationStringValue(v4, @"curatedGroupHeadlineScoringOutputName", v7);
      curatedGroupHeadlineScoringOutputName = v9->_curatedGroupHeadlineScoringOutputName;
      v9->_curatedGroupHeadlineScoringOutputName = v68;

      v70 = FCAppConfigurationStringValue(v4, @"curatedGroupIssuesHeadlineScoringOutputName", v7);
      curatedGroupIssuesHeadlineScoringOutputName = v9->_curatedGroupIssuesHeadlineScoringOutputName;
      v9->_curatedGroupIssuesHeadlineScoringOutputName = v70;

      v72 = FCAppConfigurationStringValue(v4, @"localSectionGroupHeadlineScoringOutputName", v7);
      localSectionGroupHeadlineScoringOutputName = v9->_localSectionGroupHeadlineScoringOutputName;
      v9->_localSectionGroupHeadlineScoringOutputName = v72;

      v74 = FCAppConfigurationStringValue(v4, @"newspaperSectionGroupHeadlineScoringOutputName", v7);
      newspaperSectionGroupHeadlineScoringOutputName = v9->_newspaperSectionGroupHeadlineScoringOutputName;
      v9->_newspaperSectionGroupHeadlineScoringOutputName = v74;

      v76 = FCAppConfigurationStringValue(v4, @"sportsEventArticlesGroupHeadlineScoringOutputName", v7);
      sportsEventArticlesGroupHeadlineScoringOutputName = v9->_sportsEventArticlesGroupHeadlineScoringOutputName;
      v9->_sportsEventArticlesGroupHeadlineScoringOutputName = v76;

      v78 = FCAppConfigurationStringValue(v4, @"tagFeedForYouGroupHeadlineScoringOutputName", v7);
      tagFeedForYouGroupHeadlineScoringOutputName = v9->_tagFeedForYouGroupHeadlineScoringOutputName;
      v9->_tagFeedForYouGroupHeadlineScoringOutputName = v78;

      v80 = FCAppConfigurationStringValue(v4, @"tagRecentStoriesGroupHeadlineScoringOutputName", v7);
      tagRecentStoriesGroupHeadlineScoringOutputName = v9->_tagRecentStoriesGroupHeadlineScoringOutputName;
      v9->_tagRecentStoriesGroupHeadlineScoringOutputName = v80;

      v82 = FCAppConfigurationStringValue(v4, @"tagDateRangeGroupHeadlineScoringOutputName", v7);
      tagDateRangeGroupHeadlineScoringOutputName = v9->_tagDateRangeGroupHeadlineScoringOutputName;
      v9->_tagDateRangeGroupHeadlineScoringOutputName = v82;

      v84 = FCAppConfigurationStringValue(v4, @"sportsEventTopicGroupHeadlineScoringOutputName", v7);
      sportsEventTopicGroupHeadlineScoringOutputName = v9->_sportsEventTopicGroupHeadlineScoringOutputName;
      v9->_sportsEventTopicGroupHeadlineScoringOutputName = v84;

      v86 = FCAppConfigurationStringValue(v4, @"foodForYouGroupHeadlineScoringOutputName", v7);
      foodForYouGroupHeadlineScoringOutputName = v9->_foodForYouGroupHeadlineScoringOutputName;
      v9->_foodForYouGroupHeadlineScoringOutputName = v86;

      v88 = FCAppConfigurationStringValue(v4, @"shadowDefaultHeadlineScoringOutputName", v7);
      shadowDefaultHeadlineScoringOutputName = v9->_shadowDefaultHeadlineScoringOutputName;
      v9->_shadowDefaultHeadlineScoringOutputName = v88;

      v90 = FCAppConfigurationStringValue(v4, @"shadowMagazineFeedHeadlineScoringOutputName", v9->_magazineFeedHeadlineScoringOutputName);
      shadowMagazineFeedHeadlineScoringOutputName = v9->_shadowMagazineFeedHeadlineScoringOutputName;
      v9->_shadowMagazineFeedHeadlineScoringOutputName = v90;

      v92 = FCAppConfigurationStringValue(v4, @"shadowMagazineFeedIssuesHeadlineScoringOutputName", v9->_magazineFeedIssuesHeadlineScoringOutputName);
      shadowMagazineFeedIssuesHeadlineScoringOutputName = v9->_shadowMagazineFeedIssuesHeadlineScoringOutputName;
      v9->_shadowMagazineFeedIssuesHeadlineScoringOutputName = v92;

      v94 = FCAppConfigurationStringValue(v4, @"shadowLegacyAudioFeedHeadlineScoringOutputName", v9->_legacyAudioFeedHeadlineScoringOutputName);
      shadowLegacyAudioFeedHeadlineScoringOutputName = v9->_shadowLegacyAudioFeedHeadlineScoringOutputName;
      v9->_shadowLegacyAudioFeedHeadlineScoringOutputName = v94;

      v96 = FCAppConfigurationStringValue(v4, @"shadowAudioFeedHeadlineScoringOutputName", v9->_audioFeedHeadlineScoringOutputName);
      shadowAudioFeedHeadlineScoringOutputName = v9->_shadowAudioFeedHeadlineScoringOutputName;
      v9->_shadowAudioFeedHeadlineScoringOutputName = v96;

      v98 = FCAppConfigurationStringValue(v4, @"shadowArticleRecirculationPrimaryHeadlineScoringOutputName", v9->_articleRecirculationPrimaryHeadlineScoringOutputName);
      shadowArticleRecirculationPrimaryHeadlineScoringOutputName = v9->_shadowArticleRecirculationPrimaryHeadlineScoringOutputName;
      v9->_shadowArticleRecirculationPrimaryHeadlineScoringOutputName = v98;

      v100 = FCAppConfigurationStringValue(v4, @"shadowArticleRecirculationSecondaryHeadlineScoringOutputName", v9->_articleRecirculationSecondaryHeadlineScoringOutputName);
      shadowArticleRecirculationSecondaryHeadlineScoringOutputName = v9->_shadowArticleRecirculationSecondaryHeadlineScoringOutputName;
      v9->_shadowArticleRecirculationSecondaryHeadlineScoringOutputName = v100;

      v102 = FCAppConfigurationStringValue(v4, @"shadowArticleRecirculationTertiaryHeadlineScoringOutputName", v9->_articleRecirculationTertiaryHeadlineScoringOutputName);
      shadowArticleRecirculationTertiaryHeadlineScoringOutputName = v9->_shadowArticleRecirculationTertiaryHeadlineScoringOutputName;
      v9->_shadowArticleRecirculationTertiaryHeadlineScoringOutputName = v102;

      v104 = FCAppConfigurationStringValue(v4, @"shadowArticleRecirculationQuaternaryHeadlineScoringOutputName", v9->_articleRecirculationQuaternaryHeadlineScoringOutputName);
      shadowArticleRecirculationQuaternaryHeadlineScoringOutputName = v9->_shadowArticleRecirculationQuaternaryHeadlineScoringOutputName;
      v9->_shadowArticleRecirculationQuaternaryHeadlineScoringOutputName = v104;

      v106 = FCAppConfigurationStringValue(v4, @"shadowBestOfBundleHeadlineScoringOutputName", v9->_bestOfBundleHeadlineScoringOutputName);
      shadowBestOfBundleHeadlineScoringOutputName = v9->_shadowBestOfBundleHeadlineScoringOutputName;
      v9->_shadowBestOfBundleHeadlineScoringOutputName = v106;

      v108 = FCAppConfigurationStringValue(v4, @"shadowForYouGroupHeadlineScoringOutputName", v9->_forYouGroupHeadlineScoringOutputName);
      shadowForYouGroupHeadlineScoringOutputName = v9->_shadowForYouGroupHeadlineScoringOutputName;
      v9->_shadowForYouGroupHeadlineScoringOutputName = v108;

      v110 = FCAppConfigurationStringValue(v4, @"shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName", v9->_greatStoriesYouMissedGroupHeadlineScoringOutputName);
      shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName = v9->_shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName;
      v9->_shadowGreatStoriesYouMissedGroupHeadlineScoringOutputName = v110;

      v112 = FCAppConfigurationStringValue(v4, @"shadowLatestStoriesGroupHeadlineScoringOutputName", v9->_latestStoriesGroupHeadlineScoringOutputName);
      shadowLatestStoriesGroupHeadlineScoringOutputName = v9->_shadowLatestStoriesGroupHeadlineScoringOutputName;
      v9->_shadowLatestStoriesGroupHeadlineScoringOutputName = v112;

      v114 = FCAppConfigurationStringValue(v4, @"shadowLocalNewsGroupHeadlineScoringOutputName", v9->_localNewsGroupHeadlineScoringOutputName);
      shadowLocalNewsGroupHeadlineScoringOutputName = v9->_shadowLocalNewsGroupHeadlineScoringOutputName;
      v9->_shadowLocalNewsGroupHeadlineScoringOutputName = v114;

      v116 = FCAppConfigurationStringValue(v4, @"shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName", v9->_newspaperGroupMagazineFeedHeadlineScoringOutputName);
      shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName = v9->_shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName;
      v9->_shadowNewspaperGroupMagazineFeedHeadlineScoringOutputName = v116;

      v118 = FCAppConfigurationStringValue(v4, @"shadowTodayWidgetHeadlineScoringOutputName", v9->_todayWidgetHeadlineScoringOutputName);
      shadowTodayWidgetHeadlineScoringOutputName = v9->_shadowTodayWidgetHeadlineScoringOutputName;
      v9->_shadowTodayWidgetHeadlineScoringOutputName = v118;

      v120 = FCAppConfigurationStringValue(v4, @"shadowTagWidgetHeadlineScoringOutputName", v9->_tagWidgetHeadlineScoringOutputName);
      shadowTagWidgetHeadlineScoringOutputName = v9->_shadowTagWidgetHeadlineScoringOutputName;
      v9->_shadowTagWidgetHeadlineScoringOutputName = v120;

      v122 = FCAppConfigurationStringValue(v4, @"shadowNotificationHeadlineScoringOutputName", v9->_notificationHeadlineScoringOutputName);
      shadowNotificationHeadlineScoringOutputName = v9->_shadowNotificationHeadlineScoringOutputName;
      v9->_shadowNotificationHeadlineScoringOutputName = v122;

      v124 = FCAppConfigurationStringValue(v4, @"shadowMySportsGroupHeadlineScoringOutputName", v9->_mySportsGroupHeadlineScoringOutputName);
      shadowMySportsGroupHeadlineScoringOutputName = v9->_shadowMySportsGroupHeadlineScoringOutputName;
      v9->_shadowMySportsGroupHeadlineScoringOutputName = v124;

      v126 = FCAppConfigurationStringValue(v4, @"shadowSportsTopStoriesHeadlineScoringOutputName", v9->_sportsTopStoriesHeadlineScoringOutputName);
      shadowSportsTopStoriesHeadlineScoringOutputName = v9->_shadowSportsTopStoriesHeadlineScoringOutputName;
      v9->_shadowSportsTopStoriesHeadlineScoringOutputName = v126;

      v128 = FCAppConfigurationStringValue(v4, @"shadowIntroToSportsGroupHeadlineScoringOutputName", v9->_introToSportsGroupHeadlineScoringOutputName);
      shadowIntroToSportsGroupHeadlineScoringOutputName = v9->_shadowIntroToSportsGroupHeadlineScoringOutputName;
      v9->_shadowIntroToSportsGroupHeadlineScoringOutputName = v128;

      v130 = FCAppConfigurationStringValue(v4, @"shadowHighlightsGroupHeadlineScoringOutputName", v9->_highlightsGroupHeadlineScoringOutputName);
      shadowHighlightsGroupHeadlineScoringOutputName = v9->_shadowHighlightsGroupHeadlineScoringOutputName;
      v9->_shadowHighlightsGroupHeadlineScoringOutputName = v130;

      v132 = FCAppConfigurationStringValue(v4, @"shadowArticleListTagFeedGroupHeadlineScoringOutputName", v9->_articleListTagFeedGroupHeadlineScoringOutputName);
      shadowArticleListTagFeedGroupHeadlineScoringOutputName = v9->_shadowArticleListTagFeedGroupHeadlineScoringOutputName;
      v9->_shadowArticleListTagFeedGroupHeadlineScoringOutputName = v132;

      v134 = FCAppConfigurationStringValue(v4, @"shadowTagFeedHeadlineScoringOutputName", v9->_tagFeedHeadlineScoringOutputName);
      shadowTagFeedHeadlineScoringOutputName = v9->_shadowTagFeedHeadlineScoringOutputName;
      v9->_shadowTagFeedHeadlineScoringOutputName = v134;

      v136 = FCAppConfigurationStringValue(v4, @"shadowNewspaperGroupTodayFeedHeadlineScoringOutputName", v9->_newspaperGroupTodayFeedHeadlineScoringOutputName);
      shadowNewspaperGroupTodayFeedHeadlineScoringOutputName = v9->_shadowNewspaperGroupTodayFeedHeadlineScoringOutputName;
      v9->_shadowNewspaperGroupTodayFeedHeadlineScoringOutputName = v136;

      v138 = FCAppConfigurationStringValue(v4, @"shadowMoreForYouGroupHeadlineScoringOutputName", v9->_moreForYouGroupHeadlineScoringOutputName);
      shadowMoreForYouGroupHeadlineScoringOutputName = v9->_shadowMoreForYouGroupHeadlineScoringOutputName;
      v9->_shadowMoreForYouGroupHeadlineScoringOutputName = v138;

      v140 = FCAppConfigurationStringValue(v4, @"shadowIntroToSportsGroupForYouHeadlineScoringOutputName", v9->_introToSportsGroupForYouHeadlineScoringOutputName);
      shadowIntroToSportsGroupForYouHeadlineScoringOutputName = v9->_shadowIntroToSportsGroupForYouHeadlineScoringOutputName;
      v9->_shadowIntroToSportsGroupForYouHeadlineScoringOutputName = v140;

      v142 = FCAppConfigurationStringValue(v4, @"shadowMySportsGroupForYouHeadlineScoringOutputName", v9->_mySportsGroupForYouHeadlineScoringOutputName);
      shadowMySportsGroupForYouHeadlineScoringOutputName = v9->_shadowMySportsGroupForYouHeadlineScoringOutputName;
      v9->_shadowMySportsGroupForYouHeadlineScoringOutputName = v142;

      v144 = FCAppConfigurationStringValue(v4, @"shadowMySportsTopicsHeadlineScoringOutputName", v9->_mySportsTopicsHeadlineScoringOutputName);
      shadowMySportsTopicsHeadlineScoringOutputName = v9->_shadowMySportsTopicsHeadlineScoringOutputName;
      v9->_shadowMySportsTopicsHeadlineScoringOutputName = v144;

      v146 = FCAppConfigurationStringValue(v4, @"shadowCuratedGroupHeadlineScoringOutputName", v9->_curatedGroupHeadlineScoringOutputName);
      shadowCuratedGroupHeadlineScoringOutputName = v9->_shadowCuratedGroupHeadlineScoringOutputName;
      v9->_shadowCuratedGroupHeadlineScoringOutputName = v146;

      v148 = FCAppConfigurationStringValue(v4, @"shadowCuratedGroupIssuesHeadlineScoringOutputName", v9->_curatedGroupIssuesHeadlineScoringOutputName);
      shadowCuratedGroupIssuesHeadlineScoringOutputName = v9->_shadowCuratedGroupIssuesHeadlineScoringOutputName;
      v9->_shadowCuratedGroupIssuesHeadlineScoringOutputName = v148;

      v150 = FCAppConfigurationStringValue(v4, @"shadowLocalSectionGroupHeadlineScoringOutputName", v9->_localSectionGroupHeadlineScoringOutputName);
      shadowLocalSectionGroupHeadlineScoringOutputName = v9->_shadowLocalSectionGroupHeadlineScoringOutputName;
      v9->_shadowLocalSectionGroupHeadlineScoringOutputName = v150;

      v152 = FCAppConfigurationStringValue(v4, @"shadowNewspaperSectionGroupHeadlineScoringOutputName", v9->_newspaperSectionGroupHeadlineScoringOutputName);
      shadowNewspaperSectionGroupHeadlineScoringOutputName = v9->_shadowNewspaperSectionGroupHeadlineScoringOutputName;
      v9->_shadowNewspaperSectionGroupHeadlineScoringOutputName = v152;

      v154 = FCAppConfigurationStringValue(v4, @"shadowSportsEventArticlesGroupHeadlineScoringOutputName", v9->_sportsEventArticlesGroupHeadlineScoringOutputName);
      shadowSportsEventArticlesGroupHeadlineScoringOutputName = v9->_shadowSportsEventArticlesGroupHeadlineScoringOutputName;
      v9->_shadowSportsEventArticlesGroupHeadlineScoringOutputName = v154;

      v156 = FCAppConfigurationStringValue(v4, @"shadowTagFeedForYouGroupHeadlineScoringOutputName", v9->_tagFeedForYouGroupHeadlineScoringOutputName);
      shadowTagFeedForYouGroupHeadlineScoringOutputName = v9->_shadowTagFeedForYouGroupHeadlineScoringOutputName;
      v9->_shadowTagFeedForYouGroupHeadlineScoringOutputName = v156;

      v158 = FCAppConfigurationStringValue(v4, @"shadowTagRecentStoriesGroupHeadlineScoringOutputName", v9->_tagRecentStoriesGroupHeadlineScoringOutputName);
      shadowTagRecentStoriesGroupHeadlineScoringOutputName = v9->_shadowTagRecentStoriesGroupHeadlineScoringOutputName;
      v9->_shadowTagRecentStoriesGroupHeadlineScoringOutputName = v158;

      v160 = FCAppConfigurationStringValue(v4, @"shadowTagDateRangeGroupHeadlineScoringOutputName", v9->_tagDateRangeGroupHeadlineScoringOutputName);
      shadowTagDateRangeGroupHeadlineScoringOutputName = v9->_shadowTagDateRangeGroupHeadlineScoringOutputName;
      v9->_shadowTagDateRangeGroupHeadlineScoringOutputName = v160;

      v162 = FCAppConfigurationStringValue(v4, @"shadowSportsEventTopicGroupHeadlineScoringOutputName", v9->_sportsEventTopicGroupHeadlineScoringOutputName);
      shadowSportsEventTopicGroupHeadlineScoringOutputName = v9->_shadowSportsEventTopicGroupHeadlineScoringOutputName;
      v9->_shadowSportsEventTopicGroupHeadlineScoringOutputName = v162;
    }

    self = v9;
    v164 = self;
  }

  else
  {
    v167[0] = MEMORY[0x1E69E9820];
    v167[1] = 3221225472;
    v167[2] = __71__FCNewsTabiFeedPersonalizationOutputConfiguration_initWithDictionary___block_invoke;
    v167[3] = &unk_1E7C36F98;
    v168 = v4;
    v164 = __71__FCNewsTabiFeedPersonalizationOutputConfiguration_initWithDictionary___block_invoke(v167);
    v7 = v168;
  }

  return v164;
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