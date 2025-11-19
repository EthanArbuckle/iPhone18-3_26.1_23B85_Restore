@interface FCPersonalizationTreatment
- (FCPersonalizationTreatment)initWithCoder:(id)a3;
- (FCPersonalizationTreatment)initWithPersonalizationTreatmentDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPersonalizationTreatment

- (FCPersonalizationTreatment)initWithPersonalizationTreatmentDictionary:(id)a3
{
  v5 = a3;
  v1343.receiver = self;
  v1343.super_class = FCPersonalizationTreatment;
  v6 = [(FCPersonalizationTreatment *)&v1343 init];
  v7 = v6;
  if (v6)
  {
    v8 = &v6->_featureImpressionsByAction[2];
    pbTreatment = v6->_pbTreatment;
    v6->_pbTreatment = 0;

    objc_storeStrong(&v7->_treatmentDictionary, a3);
    v7->_treatmentID = FCAppConfigurationIntegerValue(v5, @"treatmentId", 0);
    v10 = [FCPersonalizationScoringConfig alloc];
    v11 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"defaultScoringConfig", 0);
    v12 = [(FCPersonalizationScoringConfig *)v10 initWithConfigDictionary:v11];
    defaultScoringConfig = v7->_defaultScoringConfig;
    v7->_defaultScoringConfig = v12;

    v14 = [FCPersonalizationScoringConfig alloc];
    v15 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"defaultRecipeScoringConfig", 0);
    v16 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v17 = [(FCPersonalizationScoringConfig *)v14 initWithConfigDictionary:v15 defaultConfig:v16];
    defaultRecipeScoringConfig = v7->_defaultRecipeScoringConfig;
    v7->_defaultRecipeScoringConfig = v17;

    v19 = [FCPersonalizationScoringConfig alloc];
    v20 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"topicFeedScoringConfig", 0);
    v21 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v22 = [(FCPersonalizationScoringConfig *)v19 initWithConfigDictionary:v20 defaultConfig:v21];
    topicFeedScoringConfig = v7->_topicFeedScoringConfig;
    v7->_topicFeedScoringConfig = v22;

    v24 = [FCPersonalizationScoringConfig alloc];
    v25 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"magazineFeedArticleScoringConfig", 0);
    v26 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v27 = [(FCPersonalizationScoringConfig *)v24 initWithConfigDictionary:v25 defaultConfig:v26];
    magazineFeedArticleScoringConfig = v7->_magazineFeedArticleScoringConfig;
    v7->_magazineFeedArticleScoringConfig = v27;

    v29 = [FCPersonalizationScoringConfig alloc];
    v30 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"magazineFeedIssueScoringConfig", 0);
    v31 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v32 = [(FCPersonalizationScoringConfig *)v29 initWithConfigDictionary:v30 defaultConfig:v31];
    magazineFeedIssueScoringConfig = v7->_magazineFeedIssueScoringConfig;
    v7->_magazineFeedIssueScoringConfig = v32;

    v34 = [FCPersonalizationScoringConfig alloc];
    v35 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"audioFeedScoringConfig", 0);
    v36 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v37 = [(FCPersonalizationScoringConfig *)v34 initWithConfigDictionary:v35 defaultConfig:v36];
    legacyAudioFeedScoringConfig = v7->_legacyAudioFeedScoringConfig;
    v7->_legacyAudioFeedScoringConfig = v37;

    v39 = [FCPersonalizationScoringConfig alloc];
    v40 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"audioFeed2ScoringConfig", 0);
    v41 = [(FCPersonalizationScoringConfig *)v39 initWithConfigDictionary:v40 defaultConfig:v7->_legacyAudioFeedScoringConfig];
    audioFeedScoringConfig = v7->_audioFeedScoringConfig;
    v7->_audioFeedScoringConfig = v41;

    v43 = [FCPersonalizationScoringConfig alloc];
    v44 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleRecirculationPrimaryScoringConfig", 0);
    v45 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v46 = [(FCPersonalizationScoringConfig *)v43 initWithConfigDictionary:v44 defaultConfig:v45];
    articleRecirculationPrimaryScoringConfig = v7->_articleRecirculationPrimaryScoringConfig;
    v7->_articleRecirculationPrimaryScoringConfig = v46;

    v48 = [FCPersonalizationScoringConfig alloc];
    v49 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleRecirculationSecondaryScoringConfig", 0);
    v50 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v51 = [(FCPersonalizationScoringConfig *)v48 initWithConfigDictionary:v49 defaultConfig:v50];
    articleRecirculationSecondaryScoringConfig = v7->_articleRecirculationSecondaryScoringConfig;
    v7->_articleRecirculationSecondaryScoringConfig = v51;

    v53 = [FCPersonalizationScoringConfig alloc];
    v54 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleRecirculationTertiaryScoringConfig", 0);
    v55 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v56 = [(FCPersonalizationScoringConfig *)v53 initWithConfigDictionary:v54 defaultConfig:v55];
    articleRecirculationTertiaryScoringConfig = v7->_articleRecirculationTertiaryScoringConfig;
    v7->_articleRecirculationTertiaryScoringConfig = v56;

    v58 = [FCPersonalizationScoringConfig alloc];
    v59 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleRecirculationQuaternaryScoringConfig", 0);
    v60 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v61 = [(FCPersonalizationScoringConfig *)v58 initWithConfigDictionary:v59 defaultConfig:v60];
    articleRecirculationQuaternaryScoringConfig = v7->_articleRecirculationQuaternaryScoringConfig;
    v7->_articleRecirculationQuaternaryScoringConfig = v61;

    v63 = [FCPersonalizationScoringConfig alloc];
    v64 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"bestOfBundleScoringConfig", 0);
    v65 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v66 = [(FCPersonalizationScoringConfig *)v63 initWithConfigDictionary:v64 defaultConfig:v65];
    bestOfBundleScoringConfig = v7->_bestOfBundleScoringConfig;
    v7->_bestOfBundleScoringConfig = v66;

    v68 = [FCPersonalizationScoringConfig alloc];
    v69 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"curatedScoringConfig", 0);
    v70 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v71 = [(FCPersonalizationScoringConfig *)v68 initWithConfigDictionary:v69 defaultConfig:v70];
    curatedScoringConfig = v7->_curatedScoringConfig;
    v7->_curatedScoringConfig = v71;

    v73 = [FCPersonalizationScoringConfig alloc];
    v74 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"curatedIssuesScoringConfig", 0);
    v75 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v76 = [(FCPersonalizationScoringConfig *)v73 initWithConfigDictionary:v74 defaultConfig:v75];
    curatedIssuesScoringConfig = v7->_curatedIssuesScoringConfig;
    v7->_curatedIssuesScoringConfig = v76;

    v78 = [FCPersonalizationScoringConfig alloc];
    v79 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"forYouScoringConfig", 0);
    v80 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v81 = [(FCPersonalizationScoringConfig *)v78 initWithConfigDictionary:v79 defaultConfig:v80];
    forYouScoringConfig = v7->_forYouScoringConfig;
    v7->_forYouScoringConfig = v81;

    v83 = [FCPersonalizationScoringConfig alloc];
    v84 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"greatStoriesYouMissedScoringConfig", 0);
    v85 = [(FCPersonalizationTreatment *)v7 forYouScoringConfig];
    v86 = [(FCPersonalizationScoringConfig *)v83 initWithConfigDictionary:v84 defaultConfig:v85];
    greatStoriesYouMissedScoringConfig = v7->_greatStoriesYouMissedScoringConfig;
    v7->_greatStoriesYouMissedScoringConfig = v86;

    v88 = [FCPersonalizationScoringConfig alloc];
    v89 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"latestStoriesScoringConfig", 0);
    v90 = [(FCPersonalizationTreatment *)v7 forYouScoringConfig];
    v91 = [(FCPersonalizationScoringConfig *)v88 initWithConfigDictionary:v89 defaultConfig:v90];
    latestStoriesScoringConfig = v7->_latestStoriesScoringConfig;
    v7->_latestStoriesScoringConfig = v91;

    v93 = [FCPersonalizationScoringConfig alloc];
    v94 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"localNewsScoringConfig", 0);
    v95 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v96 = [(FCPersonalizationScoringConfig *)v93 initWithConfigDictionary:v94 defaultConfig:v95];
    localNewsScoringConfig = v7->_localNewsScoringConfig;
    v7->_localNewsScoringConfig = v96;

    v98 = [FCPersonalizationScoringConfig alloc];
    v99 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"newspaperMagazineFeedScoringConfig", 0);
    v100 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v101 = [(FCPersonalizationScoringConfig *)v98 initWithConfigDictionary:v99 defaultConfig:v100];
    newspaperMagazineFeedScoringConfig = v7->_newspaperMagazineFeedScoringConfig;
    v7->_newspaperMagazineFeedScoringConfig = v101;

    v103 = [FCPersonalizationScoringConfig alloc];
    v104 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"todayWidgetScoringConfig", 0);
    v105 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v106 = [(FCPersonalizationScoringConfig *)v103 initWithConfigDictionary:v104 defaultConfig:v105];
    todayWidgetScoringConfig = v7->_todayWidgetScoringConfig;
    v7->_todayWidgetScoringConfig = v106;

    v108 = [FCPersonalizationScoringConfig alloc];
    v109 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagWidgetScoringConfig", 0);
    v110 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v111 = [(FCPersonalizationScoringConfig *)v108 initWithConfigDictionary:v109 defaultConfig:v110];
    tagWidgetScoringConfig = v7->_tagWidgetScoringConfig;
    v7->_tagWidgetScoringConfig = v111;

    v113 = [FCPersonalizationScoringConfig alloc];
    v114 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"notificationScoringConfig", 0);
    v115 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v116 = [(FCPersonalizationScoringConfig *)v113 initWithConfigDictionary:v114 defaultConfig:v115];
    notificationScoringConfig = v7->_notificationScoringConfig;
    v7->_notificationScoringConfig = v116;

    v118 = [FCPersonalizationScoringConfig alloc];
    v119 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"mySportsGroupScoringConfig", 0);
    v120 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v121 = [(FCPersonalizationScoringConfig *)v118 initWithConfigDictionary:v119 defaultConfig:v120];
    mySportsGroupScoringConfig = v7->_mySportsGroupScoringConfig;
    v7->_mySportsGroupScoringConfig = v121;

    v123 = [FCPersonalizationScoringConfig alloc];
    v124 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"mySportsGroupForYouScoringConfig", 0);
    v125 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v126 = [(FCPersonalizationScoringConfig *)v123 initWithConfigDictionary:v124 defaultConfig:v125];
    mySportsGroupForYouScoringConfig = v7->_mySportsGroupForYouScoringConfig;
    v7->_mySportsGroupForYouScoringConfig = v126;

    v128 = [FCPersonalizationScoringConfig alloc];
    v129 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"mySportsTopicsScoringConfig", 0);
    v130 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v131 = [(FCPersonalizationScoringConfig *)v128 initWithConfigDictionary:v129 defaultConfig:v130];
    mySportsTopicsScoringConfig = v7->_mySportsTopicsScoringConfig;
    v7->_mySportsTopicsScoringConfig = v131;

    v133 = [FCPersonalizationScoringConfig alloc];
    v134 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"sportsTopStoriesScoringConfig", 0);
    v135 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v136 = [(FCPersonalizationScoringConfig *)v133 initWithConfigDictionary:v134 defaultConfig:v135];
    sportsTopStoriesScoringConfig = v7->_sportsTopStoriesScoringConfig;
    v7->_sportsTopStoriesScoringConfig = v136;

    v138 = [FCPersonalizationScoringConfig alloc];
    v139 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"introToSportsGroupScoringConfig", 0);
    v140 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v141 = [(FCPersonalizationScoringConfig *)v138 initWithConfigDictionary:v139 defaultConfig:v140];
    introToSportsGroupScoringConfig = v7->_introToSportsGroupScoringConfig;
    v7->_introToSportsGroupScoringConfig = v141;

    v143 = [FCPersonalizationScoringConfig alloc];
    v144 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"introToSportsGroupForYouScoringConfig", 0);
    v145 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v146 = [(FCPersonalizationScoringConfig *)v143 initWithConfigDictionary:v144 defaultConfig:v145];
    introToSportsGroupForYouScoringConfig = v7->_introToSportsGroupForYouScoringConfig;
    v7->_introToSportsGroupForYouScoringConfig = v146;

    v148 = [FCPersonalizationScoringConfig alloc];
    v149 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"highlightsGroupScoringConfig", 0);
    v150 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v151 = [(FCPersonalizationScoringConfig *)v148 initWithConfigDictionary:v149 defaultConfig:v150];
    highlightsGroupScoringConfig = v7->_highlightsGroupScoringConfig;
    v7->_highlightsGroupScoringConfig = v151;

    v153 = [FCPersonalizationScoringConfig alloc];
    v154 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleListTagFeedGroupScoringConfig", 0);
    v155 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v156 = [(FCPersonalizationScoringConfig *)v153 initWithConfigDictionary:v154 defaultConfig:v155];
    articleListTagFeedGroupScoringConfig = v7->_articleListTagFeedGroupScoringConfig;
    v7->_articleListTagFeedGroupScoringConfig = v156;

    v158 = [FCPersonalizationScoringConfig alloc];
    v159 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagFeedScoringConfig", 0);
    v160 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v161 = [(FCPersonalizationScoringConfig *)v158 initWithConfigDictionary:v159 defaultConfig:v160];
    tagFeedScoringConfig = v7->_tagFeedScoringConfig;
    v7->_tagFeedScoringConfig = v161;

    v163 = [FCPersonalizationScoringConfig alloc];
    v164 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"newspaperTodayFeedScoringConfig", 0);
    v165 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v166 = [(FCPersonalizationScoringConfig *)v163 initWithConfigDictionary:v164 defaultConfig:v165];
    newspaperTodayFeedScoringConfig = v7->_newspaperTodayFeedScoringConfig;
    v7->_newspaperTodayFeedScoringConfig = v166;

    v168 = [FCPersonalizationScoringConfig alloc];
    v169 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"moreForYouScoringConfig", 0);
    v170 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v171 = [(FCPersonalizationScoringConfig *)v168 initWithConfigDictionary:v169 defaultConfig:v170];
    moreForYouScoringConfig = v7->_moreForYouScoringConfig;
    v7->_moreForYouScoringConfig = v171;

    v173 = [FCPersonalizationScoringConfig alloc];
    v174 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"localSectionGroupScoringConfig", 0);
    v175 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v176 = [(FCPersonalizationScoringConfig *)v173 initWithConfigDictionary:v174 defaultConfig:v175];
    localSectionGroupScoringConfig = v7->_localSectionGroupScoringConfig;
    v7->_localSectionGroupScoringConfig = v176;

    v178 = [FCPersonalizationScoringConfig alloc];
    v179 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"newspaperSectionGroupScoringConfig", 0);
    v180 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v181 = [(FCPersonalizationScoringConfig *)v178 initWithConfigDictionary:v179 defaultConfig:v180];
    newspaperSectionGroupScoringConfig = v7->_newspaperSectionGroupScoringConfig;
    v7->_newspaperSectionGroupScoringConfig = v181;

    v183 = [FCPersonalizationScoringConfig alloc];
    v184 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"sportsEventArticlesGroupScoringConfig", 0);
    v185 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v186 = [(FCPersonalizationScoringConfig *)v183 initWithConfigDictionary:v184 defaultConfig:v185];
    sportsEventArticlesGroupScoringConfig = v7->_sportsEventArticlesGroupScoringConfig;
    v7->_sportsEventArticlesGroupScoringConfig = v186;

    v188 = [FCPersonalizationScoringConfig alloc];
    v189 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagForYouGroupScoringConfig", 0);
    v190 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v191 = [(FCPersonalizationScoringConfig *)v188 initWithConfigDictionary:v189 defaultConfig:v190];
    tagForYouGroupScoringConfig = v7->_tagForYouGroupScoringConfig;
    v7->_tagForYouGroupScoringConfig = v191;

    v193 = [FCPersonalizationScoringConfig alloc];
    v194 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagRecentStoriesScoringConfig", 0);
    v195 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v196 = [(FCPersonalizationScoringConfig *)v193 initWithConfigDictionary:v194 defaultConfig:v195];
    tagRecentStoriesScoringConfig = v7->_tagRecentStoriesScoringConfig;
    v7->_tagRecentStoriesScoringConfig = v196;

    v198 = [FCPersonalizationScoringConfig alloc];
    v199 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagDateRangeScoringConfig", 0);
    v200 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v201 = [(FCPersonalizationScoringConfig *)v198 initWithConfigDictionary:v199 defaultConfig:v200];
    tagDateRangeScoringConfig = v7->_tagDateRangeScoringConfig;
    v7->_tagDateRangeScoringConfig = v201;

    v203 = [FCPersonalizationScoringConfig alloc];
    v204 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"sportsEventTopicGroupScoringConfig", 0);
    v205 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v206 = [(FCPersonalizationScoringConfig *)v203 initWithConfigDictionary:v204 defaultConfig:v205];
    sportsEventTopicGroupScoringConfig = v7->_sportsEventTopicGroupScoringConfig;
    v7->_sportsEventTopicGroupScoringConfig = v206;

    v208 = [FCPersonalizationScoringConfig alloc];
    v209 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"affinityGroupScoringConfig", 0);
    v210 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v211 = [(FCPersonalizationScoringConfig *)v208 initWithConfigDictionary:v209 defaultConfig:v210];
    affinityGroupScoringConfig = v7->_affinityGroupScoringConfig;
    v7->_affinityGroupScoringConfig = v211;

    v213 = [FCPersonalizationScoringConfig alloc];
    v214 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"foodForYouScoringConfig", 0);
    v215 = [(FCPersonalizationTreatment *)v7 defaultScoringConfig];
    v216 = [(FCPersonalizationScoringConfig *)v213 initWithConfigDictionary:v214 defaultConfig:v215];
    foodForYouScoringConfig = v7->_foodForYouScoringConfig;
    v7->_foodForYouScoringConfig = v216;

    v218 = [FCPersonalizationTopicsConfig alloc];
    v219 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"defaultTopicsConfig", 0);
    v220 = [(FCPersonalizationTopicsConfig *)v218 initWithConfig:v219];
    defaultTopicsConfig = v7->_defaultTopicsConfig;
    v7->_defaultTopicsConfig = v220;

    v222 = [FCPersonalizationTopicsConfig alloc];
    v223 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"topicFeedTopicsConfig", 0);
    v224 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v225 = [(FCPersonalizationTopicsConfig *)v222 initWithConfig:v223 defaultConfig:v224];
    topicFeedTopicsConfig = v7->_topicFeedTopicsConfig;
    v7->_topicFeedTopicsConfig = v225;

    v227 = [FCPersonalizationTopicsConfig alloc];
    v228 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"magazineFeedArticleTopicsConfig", 0);
    v229 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v230 = [(FCPersonalizationTopicsConfig *)v227 initWithConfig:v228 defaultConfig:v229];
    magazineFeedArticleTopicsConfig = v7->_magazineFeedArticleTopicsConfig;
    v7->_magazineFeedArticleTopicsConfig = v230;

    v232 = [FCPersonalizationTopicsConfig alloc];
    v233 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"magazineFeedIssueTopicsConfig", 0);
    v234 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v235 = [(FCPersonalizationTopicsConfig *)v232 initWithConfig:v233 defaultConfig:v234];
    magazineFeedIssueTopicsConfig = v7->_magazineFeedIssueTopicsConfig;
    v7->_magazineFeedIssueTopicsConfig = v235;

    v237 = [FCPersonalizationTopicsConfig alloc];
    v238 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"audioFeedTopicsConfig", 0);
    v239 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v240 = [(FCPersonalizationTopicsConfig *)v237 initWithConfig:v238 defaultConfig:v239];
    legacyAudioFeedTopicsConfig = v7->_legacyAudioFeedTopicsConfig;
    v7->_legacyAudioFeedTopicsConfig = v240;

    v242 = [FCPersonalizationTopicsConfig alloc];
    v243 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"audioFeed2TopicsConfig", 0);
    v244 = [(FCPersonalizationTopicsConfig *)v242 initWithConfig:v243 defaultConfig:v7->_legacyAudioFeedTopicsConfig];
    audioFeedTopicsConfig = v7->_audioFeedTopicsConfig;
    v7->_audioFeedTopicsConfig = v244;

    v246 = [FCPersonalizationTopicsConfig alloc];
    v247 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"articleRecirculationPrimaryTopicsConfig", 0);
    v248 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v249 = [(FCPersonalizationTopicsConfig *)v246 initWithConfig:v247 defaultConfig:v248];
    articleRecirculationPrimaryTopicsConfig = v7->_articleRecirculationPrimaryTopicsConfig;
    v7->_articleRecirculationPrimaryTopicsConfig = v249;

    v251 = [FCPersonalizationTopicsConfig alloc];
    v252 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"articleRecirculationSecondaryTopicsConfig", 0);
    v253 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v254 = [(FCPersonalizationTopicsConfig *)v251 initWithConfig:v252 defaultConfig:v253];
    articleRecirculationSecondaryTopicsConfig = v7->_articleRecirculationSecondaryTopicsConfig;
    v7->_articleRecirculationSecondaryTopicsConfig = v254;

    v256 = [FCPersonalizationTopicsConfig alloc];
    v257 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"articleRecirculationTertiaryTopicsConfig", 0);
    v258 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v259 = [(FCPersonalizationTopicsConfig *)v256 initWithConfig:v257 defaultConfig:v258];
    articleRecirculationTertiaryTopicsConfig = v7->_articleRecirculationTertiaryTopicsConfig;
    v7->_articleRecirculationTertiaryTopicsConfig = v259;

    v261 = [FCPersonalizationTopicsConfig alloc];
    v262 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"articleRecirculationQuaternaryTopicsConfig", 0);
    v263 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v264 = [(FCPersonalizationTopicsConfig *)v261 initWithConfig:v262 defaultConfig:v263];
    articleRecirculationQuaternaryTopicsConfig = v7->_articleRecirculationQuaternaryTopicsConfig;
    v7->_articleRecirculationQuaternaryTopicsConfig = v264;

    v266 = [FCPersonalizationTopicsConfig alloc];
    v267 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"bestOfBundleTopicsConfig", 0);
    v268 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v269 = [(FCPersonalizationTopicsConfig *)v266 initWithConfig:v267 defaultConfig:v268];
    bestOfBundleTopicsConfig = v7->_bestOfBundleTopicsConfig;
    v7->_bestOfBundleTopicsConfig = v269;

    v271 = [FCPersonalizationTopicsConfig alloc];
    v272 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"curatedTopicsConfig", 0);
    v273 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v274 = [(FCPersonalizationTopicsConfig *)v271 initWithConfig:v272 defaultConfig:v273];
    curatedTopicsConfig = v7->_curatedTopicsConfig;
    v7->_curatedTopicsConfig = v274;

    v276 = [FCPersonalizationTopicsConfig alloc];
    v277 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"curatedIssuesTopicsConfig", 0);
    v278 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v279 = [(FCPersonalizationTopicsConfig *)v276 initWithConfig:v277 defaultConfig:v278];
    curatedIssuesTopicsConfig = v7->_curatedIssuesTopicsConfig;
    v7->_curatedIssuesTopicsConfig = v279;

    v281 = [FCPersonalizationTopicsConfig alloc];
    v282 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"forYouTopicsConfig", 0);
    v283 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v284 = [(FCPersonalizationTopicsConfig *)v281 initWithConfig:v282 defaultConfig:v283];
    forYouTopicsConfig = v7->_forYouTopicsConfig;
    v7->_forYouTopicsConfig = v284;

    v286 = [FCPersonalizationTopicsConfig alloc];
    v287 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"greatStoriesYouMissedTopicsConfig", 0);
    v288 = [(FCPersonalizationTreatment *)v7 forYouTopicsConfig];
    v289 = [(FCPersonalizationTopicsConfig *)v286 initWithConfig:v287 defaultConfig:v288];
    greatStoriesYouMissedTopicsConfig = v7->_greatStoriesYouMissedTopicsConfig;
    v7->_greatStoriesYouMissedTopicsConfig = v289;

    v291 = [FCPersonalizationTopicsConfig alloc];
    v292 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"latestStoriesTopicsConfig", 0);
    v293 = [(FCPersonalizationTreatment *)v7 forYouTopicsConfig];
    v294 = [(FCPersonalizationTopicsConfig *)v291 initWithConfig:v292 defaultConfig:v293];
    latestStoriesTopicsConfig = v7->_latestStoriesTopicsConfig;
    v7->_latestStoriesTopicsConfig = v294;

    v296 = [FCPersonalizationTopicsConfig alloc];
    v297 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"localNewsTopicsConfig", 0);
    v298 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v299 = [(FCPersonalizationTopicsConfig *)v296 initWithConfig:v297 defaultConfig:v298];
    localNewsTopicsConfig = v7->_localNewsTopicsConfig;
    v7->_localNewsTopicsConfig = v299;

    v301 = [FCPersonalizationTopicsConfig alloc];
    v302 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"newspaperMagazineFeedTopicsConfig", 0);
    v303 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v304 = [(FCPersonalizationTopicsConfig *)v301 initWithConfig:v302 defaultConfig:v303];
    newspaperMagazineFeedTopicsConfig = v7->_newspaperMagazineFeedTopicsConfig;
    v7->_newspaperMagazineFeedTopicsConfig = v304;

    v306 = [FCPersonalizationTopicsConfig alloc];
    v307 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"todayWidgetTopicsConfig", 0);
    v308 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v309 = [(FCPersonalizationTopicsConfig *)v306 initWithConfig:v307 defaultConfig:v308];
    todayWidgetTopicsConfig = v7->_todayWidgetTopicsConfig;
    v7->_todayWidgetTopicsConfig = v309;

    v311 = [FCPersonalizationTopicsConfig alloc];
    v312 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"tagWidgetTopicsConfig", 0);
    v313 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v314 = [(FCPersonalizationTopicsConfig *)v311 initWithConfig:v312 defaultConfig:v313];
    tagWidgetTopicsConfig = v7->_tagWidgetTopicsConfig;
    v7->_tagWidgetTopicsConfig = v314;

    v316 = [FCPersonalizationTopicsConfig alloc];
    v317 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"mySportsGroupTopicsConfig", 0);
    v318 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v319 = [(FCPersonalizationTopicsConfig *)v316 initWithConfig:v317 defaultConfig:v318];
    mySportsGroupTopicsConfig = v7->_mySportsGroupTopicsConfig;
    v7->_mySportsGroupTopicsConfig = v319;

    v321 = [FCPersonalizationTopicsConfig alloc];
    v322 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"mySportsGroupForYouTopicsConfig", 0);
    v323 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v324 = [(FCPersonalizationTopicsConfig *)v321 initWithConfig:v322 defaultConfig:v323];
    mySportsGroupForYouTopicsConfig = v7->_mySportsGroupForYouTopicsConfig;
    v7->_mySportsGroupForYouTopicsConfig = v324;

    v326 = [FCPersonalizationTopicsConfig alloc];
    v327 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"mySportsTopicsTopicsConfig", 0);
    v328 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v329 = [(FCPersonalizationTopicsConfig *)v326 initWithConfig:v327 defaultConfig:v328];
    mySportsTopicsTopicsConfig = v7->_mySportsTopicsTopicsConfig;
    v7->_mySportsTopicsTopicsConfig = v329;

    v331 = [FCPersonalizationTopicsConfig alloc];
    v332 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"sportsTopStoriesTopicsConfig", 0);
    v333 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v334 = [(FCPersonalizationTopicsConfig *)v331 initWithConfig:v332 defaultConfig:v333];
    sportsTopStoriesTopicsConfig = v7->_sportsTopStoriesTopicsConfig;
    v7->_sportsTopStoriesTopicsConfig = v334;

    v336 = [FCPersonalizationTopicsConfig alloc];
    v337 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"introToSportsGroupTopicsConfig", 0);
    v338 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v339 = [(FCPersonalizationTopicsConfig *)v336 initWithConfig:v337 defaultConfig:v338];
    introToSportsGroupTopicsConfig = v7->_introToSportsGroupTopicsConfig;
    v7->_introToSportsGroupTopicsConfig = v339;

    v341 = [FCPersonalizationTopicsConfig alloc];
    v342 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"introToSportsGroupForYouTopicsConfig", 0);
    v343 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v344 = [(FCPersonalizationTopicsConfig *)v341 initWithConfig:v342 defaultConfig:v343];
    introToSportsGroupForYouTopicsConfig = v7->_introToSportsGroupForYouTopicsConfig;
    v7->_introToSportsGroupForYouTopicsConfig = v344;

    v346 = [FCPersonalizationTopicsConfig alloc];
    v347 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"highlightsGroupTopicsConfig", 0);
    v348 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v349 = [(FCPersonalizationTopicsConfig *)v346 initWithConfig:v347 defaultConfig:v348];
    highlightsGroupTopicsConfig = v7->_highlightsGroupTopicsConfig;
    v7->_highlightsGroupTopicsConfig = v349;

    v351 = [FCPersonalizationTopicsConfig alloc];
    v352 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"articleListTagFeedGroupTopicsConfig", 0);
    v353 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v354 = [(FCPersonalizationTopicsConfig *)v351 initWithConfig:v352 defaultConfig:v353];
    articleListTagFeedGroupTopicsConfig = v7->_articleListTagFeedGroupTopicsConfig;
    v7->_articleListTagFeedGroupTopicsConfig = v354;

    v356 = [FCPersonalizationTopicsConfig alloc];
    v357 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"tagFeedTopicsConfig", 0);
    v358 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v359 = [(FCPersonalizationTopicsConfig *)v356 initWithConfig:v357 defaultConfig:v358];
    tagFeedTopicsConfig = v7->_tagFeedTopicsConfig;
    v7->_tagFeedTopicsConfig = v359;

    v361 = [FCPersonalizationTopicsConfig alloc];
    v362 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"newspaperTodayFeedTopicsConfig", 0);
    v363 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v364 = [(FCPersonalizationTopicsConfig *)v361 initWithConfig:v362 defaultConfig:v363];
    newspaperTodayFeedTopicsConfig = v7->_newspaperTodayFeedTopicsConfig;
    v7->_newspaperTodayFeedTopicsConfig = v364;

    v366 = [FCPersonalizationTopicsConfig alloc];
    v367 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"moreForYouTopicsConfig", 0);
    v368 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v369 = [(FCPersonalizationTopicsConfig *)v366 initWithConfig:v367 defaultConfig:v368];
    moreForYouTopicsConfig = v7->_moreForYouTopicsConfig;
    v7->_moreForYouTopicsConfig = v369;

    v371 = [FCPersonalizationTopicsConfig alloc];
    v372 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"localSectionGroupTopicsConfig", 0);
    v373 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v374 = [(FCPersonalizationTopicsConfig *)v371 initWithConfig:v372 defaultConfig:v373];
    localSectionGroupTopicsConfig = v7->_localSectionGroupTopicsConfig;
    v7->_localSectionGroupTopicsConfig = v374;

    v376 = [FCPersonalizationTopicsConfig alloc];
    v377 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"newspaperSectionGroupTopicsConfig", 0);
    v378 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v379 = [(FCPersonalizationTopicsConfig *)v376 initWithConfig:v377 defaultConfig:v378];
    newspaperSectionGroupTopicsConfig = v7->_newspaperSectionGroupTopicsConfig;
    v7->_newspaperSectionGroupTopicsConfig = v379;

    v381 = [FCPersonalizationTopicsConfig alloc];
    v382 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"sportsEventArticlesGroupTopicsConfig", 0);
    v383 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v384 = [(FCPersonalizationTopicsConfig *)v381 initWithConfig:v382 defaultConfig:v383];
    sportsEventArticlesGroupTopicsConfig = v7->_sportsEventArticlesGroupTopicsConfig;
    v7->_sportsEventArticlesGroupTopicsConfig = v384;

    v386 = [FCPersonalizationTopicsConfig alloc];
    v387 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"tagForYouGroupTopicsConfig", 0);
    v388 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v389 = [(FCPersonalizationTopicsConfig *)v386 initWithConfig:v387 defaultConfig:v388];
    tagForYouGroupTopicsConfig = v7->_tagForYouGroupTopicsConfig;
    v7->_tagForYouGroupTopicsConfig = v389;

    v391 = [FCPersonalizationTopicsConfig alloc];
    v392 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"tagRecentStoriesTopicsConfig", 0);
    v393 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v394 = [(FCPersonalizationTopicsConfig *)v391 initWithConfig:v392 defaultConfig:v393];
    tagRecentStoriesTopicsConfig = v7->_tagRecentStoriesTopicsConfig;
    v7->_tagRecentStoriesTopicsConfig = v394;

    v396 = [FCPersonalizationTopicsConfig alloc];
    v397 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"tagDateRangeTopicsConfig", 0);
    v398 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v399 = [(FCPersonalizationTopicsConfig *)v396 initWithConfig:v397 defaultConfig:v398];
    tagDateRangeTopicsConfig = v7->_tagDateRangeTopicsConfig;
    v7->_tagDateRangeTopicsConfig = v399;

    v401 = [FCPersonalizationTopicsConfig alloc];
    v402 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"sportsEventTopicGroupTopicsConfig", 0);
    v403 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v404 = [(FCPersonalizationTopicsConfig *)v401 initWithConfig:v402 defaultConfig:v403];
    sportsEventTopicGroupTopicsConfig = v7->_sportsEventTopicGroupTopicsConfig;
    v7->_sportsEventTopicGroupTopicsConfig = v404;

    v406 = [FCPersonalizationTopicsConfig alloc];
    v407 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"affinityGroupTopicsConfig", 0);
    v408 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v409 = [(FCPersonalizationTopicsConfig *)v406 initWithConfig:v407 defaultConfig:v408];
    affinityGroupTopicsConfig = v7->_affinityGroupTopicsConfig;
    v7->_affinityGroupTopicsConfig = v409;

    v411 = [FCPersonalizationTopicsConfig alloc];
    v412 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"foodForYouTopicsConfig", 0);
    v413 = [(FCPersonalizationTreatment *)v7 defaultTopicsConfig];
    v414 = [(FCPersonalizationTopicsConfig *)v411 initWithConfig:v412 defaultConfig:v413];
    foodForYouTopicsConfig = v7->_foodForYouTopicsConfig;
    v7->_foodForYouTopicsConfig = v414;

    v416 = [FCPersonalizationOntologyLevelConfig alloc];
    v417 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"defaultOntologyLevelConfig", 0);
    v418 = [(FCPersonalizationOntologyLevelConfig *)v416 initWithConfig:v417];
    defaultOntologyLevelConfig = v7->_defaultOntologyLevelConfig;
    v7->_defaultOntologyLevelConfig = v418;

    v420 = [FCPersonalizationOntologyLevelConfig alloc];
    v421 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"topicFeedOntologyLevelConfig", 0);
    v422 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v423 = [(FCPersonalizationOntologyLevelConfig *)v420 initWithConfig:v421 defaultConfig:v422];
    topicFeedOntologyLevelConfig = v7->_topicFeedOntologyLevelConfig;
    v7->_topicFeedOntologyLevelConfig = v423;

    v425 = [FCPersonalizationOntologyLevelConfig alloc];
    v426 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"magazineFeedArticleOntologyLevelConfig", 0);
    v427 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v428 = [(FCPersonalizationOntologyLevelConfig *)v425 initWithConfig:v426 defaultConfig:v427];
    magazineFeedArticleOntologyLevelConfig = v7->_magazineFeedArticleOntologyLevelConfig;
    v7->_magazineFeedArticleOntologyLevelConfig = v428;

    v430 = [FCPersonalizationOntologyLevelConfig alloc];
    v431 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"magazineFeedIssueOntologyLevelConfig", 0);
    v432 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v433 = [(FCPersonalizationOntologyLevelConfig *)v430 initWithConfig:v431 defaultConfig:v432];
    magazineFeedIssueOntologyLevelConfig = v7->_magazineFeedIssueOntologyLevelConfig;
    v7->_magazineFeedIssueOntologyLevelConfig = v433;

    v435 = [FCPersonalizationOntologyLevelConfig alloc];
    v436 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"audioFeedOntologyLevelConfig", 0);
    v437 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v438 = [(FCPersonalizationOntologyLevelConfig *)v435 initWithConfig:v436 defaultConfig:v437];
    legacyAudioFeedOntologyLevelConfig = v7->_legacyAudioFeedOntologyLevelConfig;
    v7->_legacyAudioFeedOntologyLevelConfig = v438;

    v440 = [FCPersonalizationOntologyLevelConfig alloc];
    v441 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"audioFeed2OntologyLevelConfig", 0);
    v442 = [(FCPersonalizationOntologyLevelConfig *)v440 initWithConfig:v441 defaultConfig:v7->_legacyAudioFeedOntologyLevelConfig];
    audioFeedOntologyLevelConfig = v7->_audioFeedOntologyLevelConfig;
    v7->_audioFeedOntologyLevelConfig = v442;

    v444 = [FCPersonalizationOntologyLevelConfig alloc];
    v445 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleRecirculationPrimaryOntologyLevelConfig", 0);
    v446 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v447 = [(FCPersonalizationOntologyLevelConfig *)v444 initWithConfig:v445 defaultConfig:v446];
    articleRecirculationPrimaryOntologyLevelConfig = v7->_articleRecirculationPrimaryOntologyLevelConfig;
    v7->_articleRecirculationPrimaryOntologyLevelConfig = v447;

    v449 = [FCPersonalizationOntologyLevelConfig alloc];
    v450 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleRecirculationSecondaryOntologyLevelConfig", 0);
    v451 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v452 = [(FCPersonalizationOntologyLevelConfig *)v449 initWithConfig:v450 defaultConfig:v451];
    articleRecirculationSecondaryOntologyLevelConfig = v7->_articleRecirculationSecondaryOntologyLevelConfig;
    v7->_articleRecirculationSecondaryOntologyLevelConfig = v452;

    v454 = [FCPersonalizationOntologyLevelConfig alloc];
    v455 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleRecirculationTertiaryOntologyLevelConfig", 0);
    v456 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v457 = [(FCPersonalizationOntologyLevelConfig *)v454 initWithConfig:v455 defaultConfig:v456];
    articleRecirculationTertiaryOntologyLevelConfig = v7->_articleRecirculationTertiaryOntologyLevelConfig;
    v7->_articleRecirculationTertiaryOntologyLevelConfig = v457;

    v459 = [FCPersonalizationOntologyLevelConfig alloc];
    v460 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleRecirculationQuaternaryOntologyLevelConfig", 0);
    v461 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v462 = [(FCPersonalizationOntologyLevelConfig *)v459 initWithConfig:v460 defaultConfig:v461];
    articleRecirculationQuaternaryOntologyLevelConfig = v7->_articleRecirculationQuaternaryOntologyLevelConfig;
    v7->_articleRecirculationQuaternaryOntologyLevelConfig = v462;

    v464 = [FCPersonalizationOntologyLevelConfig alloc];
    v465 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"bestOfBundleOntologyLevelConfig", 0);
    v466 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v467 = [(FCPersonalizationOntologyLevelConfig *)v464 initWithConfig:v465 defaultConfig:v466];
    bestOfBundleOntologyLevelConfig = v7->_bestOfBundleOntologyLevelConfig;
    v7->_bestOfBundleOntologyLevelConfig = v467;

    v469 = [FCPersonalizationOntologyLevelConfig alloc];
    v470 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"curatedOntologyLevelConfig", 0);
    v471 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v472 = [(FCPersonalizationOntologyLevelConfig *)v469 initWithConfig:v470 defaultConfig:v471];
    curatedOntologyLevelConfig = v7->_curatedOntologyLevelConfig;
    v7->_curatedOntologyLevelConfig = v472;

    v474 = [FCPersonalizationOntologyLevelConfig alloc];
    v475 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"curatedIssuesOntologyLevelConfig", 0);
    v476 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v477 = [(FCPersonalizationOntologyLevelConfig *)v474 initWithConfig:v475 defaultConfig:v476];
    curatedIssuesOntologyLevelConfig = v7->_curatedIssuesOntologyLevelConfig;
    v7->_curatedIssuesOntologyLevelConfig = v477;

    v479 = [FCPersonalizationOntologyLevelConfig alloc];
    v480 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"forYouOntologyLevelConfig", 0);
    v481 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v482 = [(FCPersonalizationOntologyLevelConfig *)v479 initWithConfig:v480 defaultConfig:v481];
    forYouOntologyLevelConfig = v7->_forYouOntologyLevelConfig;
    v7->_forYouOntologyLevelConfig = v482;

    v484 = [FCPersonalizationOntologyLevelConfig alloc];
    v485 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"greatStoriesYouMissedOntologyLevelConfig", 0);
    v486 = [(FCPersonalizationTreatment *)v7 forYouOntologyLevelConfig];
    v487 = [(FCPersonalizationOntologyLevelConfig *)v484 initWithConfig:v485 defaultConfig:v486];
    greatStoriesYouMissedOntologyLevelConfig = v7->_greatStoriesYouMissedOntologyLevelConfig;
    v7->_greatStoriesYouMissedOntologyLevelConfig = v487;

    v489 = [FCPersonalizationOntologyLevelConfig alloc];
    v490 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"latestStoriesOntologyLevelConfig", 0);
    v491 = [(FCPersonalizationTreatment *)v7 forYouOntologyLevelConfig];
    v492 = [(FCPersonalizationOntologyLevelConfig *)v489 initWithConfig:v490 defaultConfig:v491];
    latestStoriesOntologyLevelConfig = v7->_latestStoriesOntologyLevelConfig;
    v7->_latestStoriesOntologyLevelConfig = v492;

    v494 = [FCPersonalizationOntologyLevelConfig alloc];
    v495 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"localNewsOntologyLevelConfig", 0);
    v496 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v497 = [(FCPersonalizationOntologyLevelConfig *)v494 initWithConfig:v495 defaultConfig:v496];
    localNewsOntologyLevelConfig = v7->_localNewsOntologyLevelConfig;
    v7->_localNewsOntologyLevelConfig = v497;

    v499 = [FCPersonalizationOntologyLevelConfig alloc];
    v500 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"newspaperMagazineFeedOntologyLevelConfig", 0);
    v501 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v502 = [(FCPersonalizationOntologyLevelConfig *)v499 initWithConfig:v500 defaultConfig:v501];
    newspaperMagazineFeedOntologyLevelConfig = v7->_newspaperMagazineFeedOntologyLevelConfig;
    v7->_newspaperMagazineFeedOntologyLevelConfig = v502;

    v504 = [FCPersonalizationOntologyLevelConfig alloc];
    v505 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"todayWidgetOntologyLevelConfig", 0);
    v506 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v507 = [(FCPersonalizationOntologyLevelConfig *)v504 initWithConfig:v505 defaultConfig:v506];
    todayWidgetOntologyLevelConfig = v7->_todayWidgetOntologyLevelConfig;
    v7->_todayWidgetOntologyLevelConfig = v507;

    v509 = [FCPersonalizationOntologyLevelConfig alloc];
    v510 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagWidgetOntologyLevelConfig", 0);
    v511 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v512 = [(FCPersonalizationOntologyLevelConfig *)v509 initWithConfig:v510 defaultConfig:v511];
    tagWidgetOntologyLevelConfig = v7->_tagWidgetOntologyLevelConfig;
    v7->_tagWidgetOntologyLevelConfig = v512;

    v514 = [FCPersonalizationOntologyLevelConfig alloc];
    v515 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"mySportsGroupOntologyLevelConfig", 0);
    v516 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v517 = [(FCPersonalizationOntologyLevelConfig *)v514 initWithConfig:v515 defaultConfig:v516];
    mySportsGroupOntologyLevelConfig = v7->_mySportsGroupOntologyLevelConfig;
    v7->_mySportsGroupOntologyLevelConfig = v517;

    v519 = [FCPersonalizationOntologyLevelConfig alloc];
    v520 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"mySportsGroupForYouOntologyLevelConfig", 0);
    v521 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v522 = [(FCPersonalizationOntologyLevelConfig *)v519 initWithConfig:v520 defaultConfig:v521];
    mySportsGroupForYouOntologyLevelConfig = v7->_mySportsGroupForYouOntologyLevelConfig;
    v7->_mySportsGroupForYouOntologyLevelConfig = v522;

    v524 = [FCPersonalizationOntologyLevelConfig alloc];
    v525 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"mySportsTopicsOntologyLevelConfig", 0);
    v526 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v527 = [(FCPersonalizationOntologyLevelConfig *)v524 initWithConfig:v525 defaultConfig:v526];
    mySportsTopicsOntologyLevelConfig = v7->_mySportsTopicsOntologyLevelConfig;
    v7->_mySportsTopicsOntologyLevelConfig = v527;

    v529 = [FCPersonalizationOntologyLevelConfig alloc];
    v530 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"sportsTopStoriesOntologyLevelConfig", 0);
    v531 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v532 = [(FCPersonalizationOntologyLevelConfig *)v529 initWithConfig:v530 defaultConfig:v531];
    sportsTopStoriesOntologyLevelConfig = v7->_sportsTopStoriesOntologyLevelConfig;
    v7->_sportsTopStoriesOntologyLevelConfig = v532;

    v534 = [FCPersonalizationOntologyLevelConfig alloc];
    v535 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"introToSportsGroupOntologyLevelConfig", 0);
    v536 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v537 = [(FCPersonalizationOntologyLevelConfig *)v534 initWithConfig:v535 defaultConfig:v536];
    introToSportsGroupOntologyLevelConfig = v7->_introToSportsGroupOntologyLevelConfig;
    v7->_introToSportsGroupOntologyLevelConfig = v537;

    v539 = [FCPersonalizationOntologyLevelConfig alloc];
    v540 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"introToSportsGroupForYouOntologyLevelConfig", 0);
    v541 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v542 = [(FCPersonalizationOntologyLevelConfig *)v539 initWithConfig:v540 defaultConfig:v541];
    introToSportsGroupForYouOntologyLevelConfig = v7->_introToSportsGroupForYouOntologyLevelConfig;
    v7->_introToSportsGroupForYouOntologyLevelConfig = v542;

    v544 = [FCPersonalizationOntologyLevelConfig alloc];
    v545 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"highlightsGroupOntologyLevelConfig", 0);
    v546 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v547 = [(FCPersonalizationOntologyLevelConfig *)v544 initWithConfig:v545 defaultConfig:v546];
    highlightsGroupOntologyLevelConfig = v7->_highlightsGroupOntologyLevelConfig;
    v7->_highlightsGroupOntologyLevelConfig = v547;

    v549 = [FCPersonalizationOntologyLevelConfig alloc];
    v550 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"articleListTagFeedGroupOntologyLevelConfig", 0);
    v551 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v552 = [(FCPersonalizationOntologyLevelConfig *)v549 initWithConfig:v550 defaultConfig:v551];
    articleListTagFeedGroupOntologyLevelConfig = v7->_articleListTagFeedGroupOntologyLevelConfig;
    v7->_articleListTagFeedGroupOntologyLevelConfig = v552;

    v554 = [FCPersonalizationOntologyLevelConfig alloc];
    v555 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagFeedOntologyLevelConfig", 0);
    v556 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v557 = [(FCPersonalizationOntologyLevelConfig *)v554 initWithConfig:v555 defaultConfig:v556];
    tagFeedOntologyLevelConfig = v7->_tagFeedOntologyLevelConfig;
    v7->_tagFeedOntologyLevelConfig = v557;

    v559 = [FCPersonalizationOntologyLevelConfig alloc];
    v560 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"newspaperTodayFeedOntologyLevelConfig", 0);
    v561 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v562 = [(FCPersonalizationOntologyLevelConfig *)v559 initWithConfig:v560 defaultConfig:v561];
    newspaperTodayFeedOntologyLevelConfig = v7->_newspaperTodayFeedOntologyLevelConfig;
    v7->_newspaperTodayFeedOntologyLevelConfig = v562;

    v564 = [FCPersonalizationOntologyLevelConfig alloc];
    v565 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"moreForYouOntologyLevelConfig", 0);
    v566 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v567 = [(FCPersonalizationOntologyLevelConfig *)v564 initWithConfig:v565 defaultConfig:v566];
    moreForYouOntologyLevelConfig = v7->_moreForYouOntologyLevelConfig;
    v7->_moreForYouOntologyLevelConfig = v567;

    v569 = [FCPersonalizationOntologyLevelConfig alloc];
    v570 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"localSectionGroupOntologyLevelConfig", 0);
    v571 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v572 = [(FCPersonalizationOntologyLevelConfig *)v569 initWithConfig:v570 defaultConfig:v571];
    localSectionGroupOntologyLevelConfig = v7->_localSectionGroupOntologyLevelConfig;
    v7->_localSectionGroupOntologyLevelConfig = v572;

    v574 = [FCPersonalizationOntologyLevelConfig alloc];
    v575 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"newspaperSectionGroupOntologyLevelConfig", 0);
    v576 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v577 = [(FCPersonalizationOntologyLevelConfig *)v574 initWithConfig:v575 defaultConfig:v576];
    newspaperSectionGroupOntologyLevelConfig = v7->_newspaperSectionGroupOntologyLevelConfig;
    v7->_newspaperSectionGroupOntologyLevelConfig = v577;

    v579 = [FCPersonalizationOntologyLevelConfig alloc];
    v580 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"sportsEventArticlesGroupOntologyLevelConfig", 0);
    v581 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v582 = [(FCPersonalizationOntologyLevelConfig *)v579 initWithConfig:v580 defaultConfig:v581];
    sportsEventArticlesGroupOntologyLevelConfig = v7->_sportsEventArticlesGroupOntologyLevelConfig;
    v7->_sportsEventArticlesGroupOntologyLevelConfig = v582;

    v584 = [FCPersonalizationOntologyLevelConfig alloc];
    v585 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagForYouGroupOntologyLevelConfig", 0);
    v586 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v587 = [(FCPersonalizationOntologyLevelConfig *)v584 initWithConfig:v585 defaultConfig:v586];
    tagForYouGroupOntologyLevelConfig = v7->_tagForYouGroupOntologyLevelConfig;
    v7->_tagForYouGroupOntologyLevelConfig = v587;

    v589 = [FCPersonalizationOntologyLevelConfig alloc];
    v590 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagRecentStoriesOntologyLevelConfig", 0);
    v591 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v592 = [(FCPersonalizationOntologyLevelConfig *)v589 initWithConfig:v590 defaultConfig:v591];
    tagRecentStoriesOntologyLevelConfig = v7->_tagRecentStoriesOntologyLevelConfig;
    v7->_tagRecentStoriesOntologyLevelConfig = v592;

    v594 = [FCPersonalizationOntologyLevelConfig alloc];
    v595 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"tagDateRangeOntologyLevelConfig", 0);
    v596 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v597 = [(FCPersonalizationOntologyLevelConfig *)v594 initWithConfig:v595 defaultConfig:v596];
    tagDateRangeOntologyLevelConfig = v7->_tagDateRangeOntologyLevelConfig;
    v7->_tagDateRangeOntologyLevelConfig = v597;

    v599 = [FCPersonalizationOntologyLevelConfig alloc];
    v600 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"sportsEventTopicGroupOntologyLevelConfig", 0);
    v601 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v602 = [(FCPersonalizationOntologyLevelConfig *)v599 initWithConfig:v600 defaultConfig:v601];
    sportsEventTopicGroupOntologyLevelConfig = v7->_sportsEventTopicGroupOntologyLevelConfig;
    v7->_sportsEventTopicGroupOntologyLevelConfig = v602;

    v604 = [FCPersonalizationOntologyLevelConfig alloc];
    v605 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"affinityGroupOntologyLevelConfig", 0);
    v606 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v607 = [(FCPersonalizationOntologyLevelConfig *)v604 initWithConfig:v605 defaultConfig:v606];
    affinityGroupOntologyLevelConfig = v7->_affinityGroupOntologyLevelConfig;
    v7->_affinityGroupOntologyLevelConfig = v607;

    v609 = [FCPersonalizationOntologyLevelConfig alloc];
    v610 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"foodForYouOntologyLevelConfig", 0);
    v611 = [(FCPersonalizationTreatment *)v7 defaultOntologyLevelConfig];
    v612 = [(FCPersonalizationOntologyLevelConfig *)v609 initWithConfig:v610 defaultConfig:v611];
    foodForYouOntologyLevelConfig = v7->_foodForYouOntologyLevelConfig;
    v7->_foodForYouOntologyLevelConfig = v612;

    v614 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowDefaultScoringConfig", 0);
    v615 = v614;
    v616 = MEMORY[0x1E695E0F8];
    if (v614)
    {
      v617 = v614;
    }

    else
    {
      v617 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v7->_shadowDefaultScoringConfig, v617);

    v618 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTopicFeedScoringConfig", 0);
    v619 = v618;
    if (v618)
    {
      v620 = v618;
    }

    else
    {
      v620 = v616;
    }

    objc_storeStrong(&v7->_shadowTopicFeedScoringConfig, v620);

    v621 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMagazineFeedArticleScoringConfig", 0);
    v622 = v621;
    if (v621)
    {
      v623 = v621;
    }

    else
    {
      v623 = v616;
    }

    objc_storeStrong(&v7->_shadowMagazineFeedArticleScoringConfig, v623);

    v624 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMagazineFeedIssueScoringConfig", 0);
    v625 = v624;
    if (v624)
    {
      v626 = v624;
    }

    else
    {
      v626 = v616;
    }

    objc_storeStrong(&v7->_shadowMagazineFeedIssueScoringConfig, v626);

    v627 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowAudioFeedScoringConfig", 0);
    v628 = v627;
    if (v627)
    {
      v629 = v627;
    }

    else
    {
      v629 = v616;
    }

    objc_storeStrong(&v7->_shadowLegacyAudioFeedScoringConfig, v629);

    v630 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowAudioFeed2ScoringConfig", 0);
    v631 = v630;
    if (v630)
    {
      v632 = v630;
    }

    else
    {
      v632 = v616;
    }

    objc_storeStrong(&v7->_shadowAudioFeedScoringConfig, v632);

    v633 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleRecirculationPrimaryScoringConfig", 0);
    v634 = v633;
    if (v633)
    {
      v635 = v633;
    }

    else
    {
      v635 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationPrimaryScoringConfig, v635);

    v636 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleRecirculationSecondaryScoringConfig", 0);
    v637 = v636;
    if (v636)
    {
      v638 = v636;
    }

    else
    {
      v638 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationSecondaryScoringConfig, v638);

    v639 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleRecirculationTertiaryScoringConfig", 0);
    v640 = v639;
    if (v639)
    {
      v641 = v639;
    }

    else
    {
      v641 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationTertiaryScoringConfig, v641);

    v642 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleRecirculationQuaternaryScoringConfig", 0);
    v643 = v642;
    if (v642)
    {
      v644 = v642;
    }

    else
    {
      v644 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationQuaternaryScoringConfig, v644);

    v645 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowBestOfBundleScoringConfig", 0);
    v646 = v645;
    if (v645)
    {
      v647 = v645;
    }

    else
    {
      v647 = v616;
    }

    objc_storeStrong(&v7->_shadowBestOfBundleScoringConfig, v647);

    v648 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowCuratedScoringConfig", 0);
    v649 = v648;
    if (v648)
    {
      v650 = v648;
    }

    else
    {
      v650 = v616;
    }

    objc_storeStrong(&v7->_shadowCuratedScoringConfig, v650);

    v651 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowCuratedIssuesScoringConfig", 0);
    v652 = v651;
    if (v651)
    {
      v653 = v651;
    }

    else
    {
      v653 = v616;
    }

    objc_storeStrong(&v7->_shadowCuratedIssuesScoringConfig, v653);

    v654 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowForYouScoringConfig", 0);
    v655 = v654;
    if (v654)
    {
      v656 = v654;
    }

    else
    {
      v656 = v616;
    }

    objc_storeStrong(&v7->_shadowForYouScoringConfig, v656);

    v657 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowGreatStoriesYouMissedScoringConfig", 0);
    v658 = v657;
    if (v657)
    {
      v659 = v657;
    }

    else
    {
      v659 = v616;
    }

    objc_storeStrong(&v7->_shadowGreatStoriesYouMissedScoringConfig, v659);

    v660 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowLatestStoriesScoringConfig", 0);
    v661 = v660;
    if (v660)
    {
      v662 = v660;
    }

    else
    {
      v662 = v616;
    }

    objc_storeStrong(&v7->_shadowLatestStoriesScoringConfig, v662);

    v663 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowLocalNewsScoringConfig", 0);
    v664 = v663;
    if (v663)
    {
      v665 = v663;
    }

    else
    {
      v665 = v616;
    }

    objc_storeStrong(&v7->_shadowLocalNewsScoringConfig, v665);

    v666 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowNewspaperMagazineFeedScoringConfig", 0);
    v667 = v666;
    if (v666)
    {
      v668 = v666;
    }

    else
    {
      v668 = v616;
    }

    objc_storeStrong(&v7->_shadowNewspaperMagazineFeedScoringConfig, v668);

    v669 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTodayWidgetScoringConfig", 0);
    v670 = v669;
    if (v669)
    {
      v671 = v669;
    }

    else
    {
      v671 = v616;
    }

    objc_storeStrong(&v7->_shadowTodayWidgetScoringConfig, v671);

    v672 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagWidgetScoringConfig", 0);
    v673 = v672;
    if (v672)
    {
      v674 = v672;
    }

    else
    {
      v674 = v616;
    }

    objc_storeStrong(&v7->_shadowTagWidgetScoringConfig, v674);

    v675 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowNotificationScoringConfig", 0);
    v676 = v675;
    if (v675)
    {
      v677 = v675;
    }

    else
    {
      v677 = v616;
    }

    objc_storeStrong(&v7->_shadowNotificationScoringConfig, v677);

    v678 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMySportsGroupScoringConfig", 0);
    v679 = v678;
    if (v678)
    {
      v680 = v678;
    }

    else
    {
      v680 = v616;
    }

    objc_storeStrong(&v7->_shadowMySportsGroupScoringConfig, v680);

    v681 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMySportsGroupForYouScoringConfig", 0);
    v682 = v681;
    if (v681)
    {
      v683 = v681;
    }

    else
    {
      v683 = v616;
    }

    objc_storeStrong(&v7->_shadowMySportsGroupForYouScoringConfig, v683);

    v684 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMySportsTopicsScoringConfig", 0);
    v685 = v684;
    if (v684)
    {
      v686 = v684;
    }

    else
    {
      v686 = v616;
    }

    objc_storeStrong(&v7->_shadowMySportsTopicsScoringConfig, v686);

    v687 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowSportsTopStoriesScoringConfig", 0);
    v688 = v687;
    if (v687)
    {
      v689 = v687;
    }

    else
    {
      v689 = v616;
    }

    objc_storeStrong(&v7->_shadowSportsTopStoriesScoringConfig, v689);

    v690 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowIntroToSportsGroupScoringConfig", 0);
    v691 = v690;
    if (v690)
    {
      v692 = v690;
    }

    else
    {
      v692 = v616;
    }

    objc_storeStrong(&v7->_shadowIntroToSportsGroupScoringConfig, v692);

    v693 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowIntroToSportsGroupForYouScoringConfig", 0);
    v694 = v693;
    if (v693)
    {
      v695 = v693;
    }

    else
    {
      v695 = v616;
    }

    objc_storeStrong(&v7->_shadowIntroToSportsGroupForYouScoringConfig, v695);

    v696 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowHighlightsGroupScoringConfig", 0);
    v697 = v696;
    if (v696)
    {
      v698 = v696;
    }

    else
    {
      v698 = v616;
    }

    objc_storeStrong(&v7->_shadowHighlightsGroupScoringConfig, v698);

    v699 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleListTagFeedGroupScoringConfig", 0);
    v700 = v699;
    if (v699)
    {
      v701 = v699;
    }

    else
    {
      v701 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleListTagFeedGroupScoringConfig, v701);

    v702 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagFeedScoringConfig", 0);
    v703 = v702;
    if (v702)
    {
      v704 = v702;
    }

    else
    {
      v704 = v616;
    }

    objc_storeStrong(&v7->_shadowTagFeedScoringConfig, v704);

    v705 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowNewspaperTodayFeedScoringConfig", 0);
    v706 = v705;
    if (v705)
    {
      v707 = v705;
    }

    else
    {
      v707 = v616;
    }

    objc_storeStrong(&v7->_shadowNewspaperTodayFeedScoringConfig, v707);

    v708 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMoreForYouScoringConfig", 0);
    v709 = v708;
    if (v708)
    {
      v710 = v708;
    }

    else
    {
      v710 = v616;
    }

    objc_storeStrong(&v7->_shadowMoreForYouScoringConfig, v710);

    v711 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowLocalSectionGroupScoringConfig", 0);
    v712 = v711;
    if (v711)
    {
      v713 = v711;
    }

    else
    {
      v713 = v616;
    }

    objc_storeStrong(&v7->_shadowLocalSectionGroupScoringConfig, v713);

    v714 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowNewspaperSectionGroupScoringConfig", 0);
    v715 = v714;
    if (v714)
    {
      v716 = v714;
    }

    else
    {
      v716 = v616;
    }

    objc_storeStrong(&v7->_shadowNewspaperSectionGroupScoringConfig, v716);

    v717 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowSportsEventArticlesGroupScoringConfig", 0);
    v718 = v717;
    if (v717)
    {
      v719 = v717;
    }

    else
    {
      v719 = v616;
    }

    objc_storeStrong(&v7->_shadowSportsEventArticlesGroupScoringConfig, v719);

    v720 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagForYouGroupScoringConfig", 0);
    v721 = v720;
    if (v720)
    {
      v722 = v720;
    }

    else
    {
      v722 = v616;
    }

    objc_storeStrong(&v7->_shadowTagForYouGroupScoringConfig, v722);

    v723 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagRecentStoriesScoringConfig", 0);
    v724 = v723;
    if (v723)
    {
      v725 = v723;
    }

    else
    {
      v725 = v616;
    }

    objc_storeStrong(&v7->_shadowTagRecentStoriesScoringConfig, v725);

    v726 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagDateRangeScoringConfig", 0);
    v727 = v726;
    if (v726)
    {
      v728 = v726;
    }

    else
    {
      v728 = v616;
    }

    objc_storeStrong(&v7->_shadowTagDateRangeScoringConfig, v728);

    v729 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowSportsEventTopicGroupScoringConfig", 0);
    v730 = v729;
    if (v729)
    {
      v731 = v729;
    }

    else
    {
      v731 = v616;
    }

    objc_storeStrong(&v7->_shadowSportsEventTopicGroupScoringConfig, v731);

    v732 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowAffinityGroupScoringConfig", 0);
    v733 = v732;
    if (v732)
    {
      v734 = v732;
    }

    else
    {
      v734 = v616;
    }

    objc_storeStrong(&v7->_shadowAffinityGroupScoringConfig, v734);

    v735 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowFoodForYouScoringConfig", 0);
    v736 = v735;
    if (v735)
    {
      v737 = v735;
    }

    else
    {
      v737 = v616;
    }

    objc_storeStrong(&v7->_shadowFoodForYouScoringConfig, v737);

    v738 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowDefaultTopicsConfig", 0);
    v739 = v738;
    v740 = MEMORY[0x1E695E0F0];
    if (v738)
    {
      v741 = v738;
    }

    else
    {
      v741 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v7->_shadowDefaultTopicsConfig, v741);

    v742 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowTopicFeedTopicsConfig", 0);
    v743 = v742;
    if (v742)
    {
      v744 = v742;
    }

    else
    {
      v744 = v740;
    }

    objc_storeStrong(&v7->_shadowTopicFeedTopicsConfig, v744);

    v745 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowMagazineFeedArticleTopicsConfig", 0);
    v746 = v745;
    if (v745)
    {
      v747 = v745;
    }

    else
    {
      v747 = v740;
    }

    objc_storeStrong(&v7->_shadowMagazineFeedArticleTopicsConfig, v747);

    v748 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowMagazineFeedIssueTopicsConfig", 0);
    v749 = v748;
    if (v748)
    {
      v750 = v748;
    }

    else
    {
      v750 = v740;
    }

    objc_storeStrong(&v7->_shadowMagazineFeedIssueTopicsConfig, v750);

    v751 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowAudioFeedTopicsConfig", 0);
    v752 = v751;
    if (v751)
    {
      v753 = v751;
    }

    else
    {
      v753 = v740;
    }

    objc_storeStrong(&v7->_shadowLegacyAudioFeedTopicsConfig, v753);

    v754 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowAudioFeed2TopicsConfig", 0);
    v755 = v754;
    if (v754)
    {
      v756 = v754;
    }

    else
    {
      v756 = v740;
    }

    objc_storeStrong(&v7->_shadowAudioFeedTopicsConfig, v756);

    v757 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowArticleRecirculationPrimaryTopicsConfig", 0);
    v758 = v757;
    if (v757)
    {
      v759 = v757;
    }

    else
    {
      v759 = v740;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationPrimaryTopicsConfig, v759);

    v760 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowArticleRecirculationSecondaryTopicsConfig", 0);
    v761 = v760;
    if (v760)
    {
      v762 = v760;
    }

    else
    {
      v762 = v740;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationSecondaryTopicsConfig, v762);

    v763 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowArticleRecirculationTertiaryTopicsConfig", 0);
    v764 = v763;
    if (v763)
    {
      v765 = v763;
    }

    else
    {
      v765 = v740;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationTertiaryTopicsConfig, v765);

    v766 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowArticleRecirculationQuaternaryTopicsConfig", 0);
    v767 = v766;
    if (v766)
    {
      v768 = v766;
    }

    else
    {
      v768 = v740;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationQuaternaryTopicsConfig, v768);

    v769 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowBestOfBundleTopicsConfig", 0);
    v770 = v769;
    if (v769)
    {
      v771 = v769;
    }

    else
    {
      v771 = v740;
    }

    objc_storeStrong(&v7->_shadowBestOfBundleTopicsConfig, v771);

    v772 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowCuratedTopicsConfig", 0);
    v773 = v772;
    if (v772)
    {
      v774 = v772;
    }

    else
    {
      v774 = v740;
    }

    objc_storeStrong(&v7->_shadowCuratedTopicsConfig, v774);

    v775 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowCuratedIssuesTopicsConfig", 0);
    v776 = v775;
    if (v775)
    {
      v777 = v775;
    }

    else
    {
      v777 = v740;
    }

    objc_storeStrong(&v7->_shadowCuratedIssuesTopicsConfig, v777);

    v778 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowForYouTopicsConfig", 0);
    v779 = v778;
    if (v778)
    {
      v780 = v778;
    }

    else
    {
      v780 = v740;
    }

    objc_storeStrong(&v7->_shadowForYouTopicsConfig, v780);

    v781 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowGreatStoriesYouMissedTopicsConfig", 0);
    v782 = v781;
    if (v781)
    {
      v783 = v781;
    }

    else
    {
      v783 = v740;
    }

    objc_storeStrong(&v7->_shadowGreatStoriesYouMissedTopicsConfig, v783);

    v784 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowLatestStoriesTopicsConfig", 0);
    v785 = v784;
    if (v784)
    {
      v786 = v784;
    }

    else
    {
      v786 = v740;
    }

    objc_storeStrong(&v7->_shadowLatestStoriesTopicsConfig, v786);

    v787 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowLocalNewsTopicsConfig", 0);
    v788 = v787;
    if (v787)
    {
      v789 = v787;
    }

    else
    {
      v789 = v740;
    }

    objc_storeStrong(&v7->_shadowLocalNewsTopicsConfig, v789);

    v790 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowNewspaperMagazineFeedTopicsConfig", 0);
    v791 = v790;
    if (v790)
    {
      v792 = v790;
    }

    else
    {
      v792 = v740;
    }

    objc_storeStrong(&v7->_shadowNewspaperMagazineFeedTopicsConfig, v792);

    v793 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowTodayWidgetTopicsConfig", 0);
    v794 = v793;
    if (v793)
    {
      v795 = v793;
    }

    else
    {
      v795 = v740;
    }

    objc_storeStrong(&v7->_shadowTodayWidgetTopicsConfig, v795);

    v796 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowTagWidgetTopicsConfig", 0);
    v797 = v796;
    if (v796)
    {
      v798 = v796;
    }

    else
    {
      v798 = v740;
    }

    objc_storeStrong(&v7->_shadowTagWidgetTopicsConfig, v798);

    v799 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowMySportsGroupTopicsConfig", 0);
    v800 = v799;
    if (v799)
    {
      v801 = v799;
    }

    else
    {
      v801 = v740;
    }

    objc_storeStrong(&v7->_shadowMySportsGroupTopicsConfig, v801);

    v802 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowMySportsGroupForYouTopicsConfig", 0);
    v803 = v802;
    if (v802)
    {
      v804 = v802;
    }

    else
    {
      v804 = v740;
    }

    objc_storeStrong(&v7->_shadowMySportsGroupForYouTopicsConfig, v804);

    v805 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowMySportsTopicsTopicsConfig", 0);
    v806 = v805;
    if (v805)
    {
      v807 = v805;
    }

    else
    {
      v807 = v740;
    }

    objc_storeStrong(&v7->_shadowMySportsTopicsTopicsConfig, v807);

    v808 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowSportsTopStoriesTopicsConfig", 0);
    v809 = v808;
    if (v808)
    {
      v810 = v808;
    }

    else
    {
      v810 = v740;
    }

    objc_storeStrong(&v7->_shadowSportsTopStoriesTopicsConfig, v810);

    v811 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowIntroToSportsGroupTopicsConfig", 0);
    v812 = v811;
    if (v811)
    {
      v813 = v811;
    }

    else
    {
      v813 = v740;
    }

    objc_storeStrong(&v7->_shadowIntroToSportsGroupTopicsConfig, v813);

    v814 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowIntroToSportsGroupForYouTopicsConfig", 0);
    v815 = v814;
    if (v814)
    {
      v816 = v814;
    }

    else
    {
      v816 = v740;
    }

    objc_storeStrong(&v7->_shadowIntroToSportsGroupForYouTopicsConfig, v816);

    v817 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowHighlightsGroupTopicsConfig", 0);
    v818 = v817;
    if (v817)
    {
      v819 = v817;
    }

    else
    {
      v819 = v740;
    }

    objc_storeStrong(&v7->_shadowHighlightsGroupTopicsConfig, v819);

    v820 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowArticleListTagFeedGroupTopicsConfig", 0);
    v821 = v820;
    if (v820)
    {
      v822 = v820;
    }

    else
    {
      v822 = v740;
    }

    objc_storeStrong(&v7->_shadowArticleListTagFeedGroupTopicsConfig, v822);

    v823 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowTagFeedTopicsConfig", 0);
    v824 = v823;
    if (v823)
    {
      v825 = v823;
    }

    else
    {
      v825 = v740;
    }

    objc_storeStrong(&v7->_shadowTagFeedTopicsConfig, v825);

    v826 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowNewspaperTodayFeedTopicsConfig", 0);
    v827 = v826;
    if (v826)
    {
      v828 = v826;
    }

    else
    {
      v828 = v740;
    }

    objc_storeStrong(&v7->_shadowNewspaperTodayFeedTopicsConfig, v828);

    v829 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowMoreForYouTopicsConfig", 0);
    v830 = v829;
    if (v829)
    {
      v831 = v829;
    }

    else
    {
      v831 = v740;
    }

    objc_storeStrong(&v7->_shadowMoreForYouTopicsConfig, v831);

    v832 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowLocalSectionGroupTopicsConfig", 0);
    v833 = v832;
    if (v832)
    {
      v834 = v832;
    }

    else
    {
      v834 = v740;
    }

    objc_storeStrong(&v7->_shadowLocalSectionGroupTopicsConfig, v834);

    v835 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowNewspaperSectionGroupTopicsConfig", 0);
    v836 = v835;
    if (v835)
    {
      v837 = v835;
    }

    else
    {
      v837 = v740;
    }

    objc_storeStrong(&v7->_shadowNewspaperSectionGroupTopicsConfig, v837);

    v838 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowSportsEventArticlesGroupTopicsConfig", 0);
    v839 = v838;
    if (v838)
    {
      v840 = v838;
    }

    else
    {
      v840 = v740;
    }

    objc_storeStrong(&v7->_shadowSportsEventArticlesGroupTopicsConfig, v840);

    v841 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowTagForYouGroupTopicsConfig", 0);
    v842 = v841;
    if (v841)
    {
      v843 = v841;
    }

    else
    {
      v843 = v740;
    }

    objc_storeStrong(&v7->_shadowTagForYouGroupTopicsConfig, v843);

    v844 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowTagRecentStoriesTopicsConfig", 0);
    v845 = v844;
    if (v844)
    {
      v846 = v844;
    }

    else
    {
      v846 = v740;
    }

    objc_storeStrong(&v7->_shadowTagRecentStoriesTopicsConfig, v846);

    v847 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowTagDateRangeTopicsConfig", 0);
    v848 = v847;
    if (v847)
    {
      v849 = v847;
    }

    else
    {
      v849 = v740;
    }

    objc_storeStrong(&v7->_shadowTagDateRangeTopicsConfig, v849);

    v850 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowSportsEventTopicGroupTopicsConfig", 0);
    v851 = v850;
    if (v850)
    {
      v852 = v850;
    }

    else
    {
      v852 = v740;
    }

    objc_storeStrong(&v7->_shadowSportsEventTopicGroupTopicsConfig, v852);

    v853 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowAffinityGroupTopicsConfig", 0);
    v854 = v853;
    if (v853)
    {
      v855 = v853;
    }

    else
    {
      v855 = v740;
    }

    objc_storeStrong(&v7->_shadowAffinityGroupTopicsConfig, v855);

    v856 = FCAppConfigurationArrayValueWithDefaultValue(v5, @"shadowFoodForYouTopicsConfig", 0);
    v857 = v856;
    if (v856)
    {
      v858 = v856;
    }

    else
    {
      v858 = v740;
    }

    objc_storeStrong(&v7->_shadowFoodForYouTopicsConfig, v858);

    v859 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowDefaultOntologyLevelConfig", 0);
    v860 = v859;
    if (v859)
    {
      v861 = v859;
    }

    else
    {
      v861 = v616;
    }

    objc_storeStrong(&v7->_shadowDefaultOntologyLevelConfig, v861);

    v862 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTopicFeedOntologyLevelConfig", 0);
    v863 = v862;
    if (v862)
    {
      v864 = v862;
    }

    else
    {
      v864 = v616;
    }

    objc_storeStrong(&v7->_shadowTopicFeedOntologyLevelConfig, v864);

    v865 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMagazineFeedArticleOntologyLevelConfig", 0);
    v866 = v865;
    if (v865)
    {
      v867 = v865;
    }

    else
    {
      v867 = v616;
    }

    objc_storeStrong(&v7->_shadowMagazineFeedArticleOntologyLevelConfig, v867);

    v868 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMagazineFeedIssueOntologyLevelConfig", 0);
    v869 = v868;
    if (v868)
    {
      v870 = v868;
    }

    else
    {
      v870 = v616;
    }

    objc_storeStrong(&v7->_shadowMagazineFeedIssueOntologyLevelConfig, v870);

    v871 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowAudioFeedOntologyLevelConfig", 0);
    v872 = v871;
    if (v871)
    {
      v873 = v871;
    }

    else
    {
      v873 = v616;
    }

    objc_storeStrong(&v7->_shadowLegacyAudioFeedOntologyLevelConfig, v873);

    v874 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowAudioFeed2OntologyLevelConfig", 0);
    v875 = v874;
    if (v874)
    {
      v876 = v874;
    }

    else
    {
      v876 = v616;
    }

    objc_storeStrong(&v7->_shadowAudioFeedOntologyLevelConfig, v876);

    v877 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleRecirculationPrimaryOntologyLevelConfig", 0);
    v878 = v877;
    if (v877)
    {
      v879 = v877;
    }

    else
    {
      v879 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationPrimaryOntologyLevelConfig, v879);

    v880 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleRecirculationSecondaryOntologyLevelConfig", 0);
    v881 = v880;
    if (v880)
    {
      v882 = v880;
    }

    else
    {
      v882 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationSecondaryOntologyLevelConfig, v882);

    v883 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleRecirculationTertiaryOntologyLevelConfig", 0);
    v884 = v883;
    if (v883)
    {
      v885 = v883;
    }

    else
    {
      v885 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationTertiaryOntologyLevelConfig, v885);

    v886 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleRecirculationQuaternaryOntologyLevelConfig", 0);
    v887 = v886;
    if (v886)
    {
      v888 = v886;
    }

    else
    {
      v888 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleRecirculationQuaternaryOntologyLevelConfig, v888);

    v889 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowBestOfBundleOntologyLevelConfig", 0);
    v890 = v889;
    if (v889)
    {
      v891 = v889;
    }

    else
    {
      v891 = v616;
    }

    objc_storeStrong(&v7->_shadowBestOfBundleOntologyLevelConfig, v891);

    v892 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowCuratedOntologyLevelConfig", 0);
    v893 = v892;
    if (v892)
    {
      v894 = v892;
    }

    else
    {
      v894 = v616;
    }

    objc_storeStrong(&v7->_shadowCuratedOntologyLevelConfig, v894);

    v895 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowCuratedIssuesOntologyLevelConfig", 0);
    v896 = v895;
    if (v895)
    {
      v897 = v895;
    }

    else
    {
      v897 = v616;
    }

    objc_storeStrong(&v7->_shadowCuratedIssuesOntologyLevelConfig, v897);

    v898 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowForYouOntologyLevelConfig", 0);
    v899 = v898;
    if (v898)
    {
      v900 = v898;
    }

    else
    {
      v900 = v616;
    }

    objc_storeStrong(&v7->_shadowForYouOntologyLevelConfig, v900);

    v901 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowGreatStoriesYouMissedOntologyLevelConfig", 0);
    v902 = v901;
    if (v901)
    {
      v903 = v901;
    }

    else
    {
      v903 = v616;
    }

    objc_storeStrong(&v7->_shadowGreatStoriesYouMissedOntologyLevelConfig, v903);

    v904 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowLatestStoriesOntologyLevelConfig", 0);
    v905 = v904;
    if (v904)
    {
      v906 = v904;
    }

    else
    {
      v906 = v616;
    }

    objc_storeStrong(&v7->_shadowLatestStoriesOntologyLevelConfig, v906);

    v907 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowLocalNewsOntologyLevelConfig", 0);
    v908 = v907;
    if (v907)
    {
      v909 = v907;
    }

    else
    {
      v909 = v616;
    }

    objc_storeStrong(&v7->_shadowLocalNewsOntologyLevelConfig, v909);

    v910 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowNewspaperMagazineFeedOntologyLevelConfig", 0);
    v911 = v910;
    if (v910)
    {
      v912 = v910;
    }

    else
    {
      v912 = v616;
    }

    objc_storeStrong(&v7->_shadowNewspaperMagazineFeedOntologyLevelConfig, v912);

    v913 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTodayWidgetOntologyLevelConfig", 0);
    v914 = v913;
    if (v913)
    {
      v915 = v913;
    }

    else
    {
      v915 = v616;
    }

    objc_storeStrong(&v7->_shadowTodayWidgetOntologyLevelConfig, v915);

    v916 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagWidgetOntologyLevelConfig", 0);
    v917 = v916;
    if (v916)
    {
      v918 = v916;
    }

    else
    {
      v918 = v616;
    }

    objc_storeStrong(&v7->_shadowTagWidgetOntologyLevelConfig, v918);

    v919 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMySportsGroupOntologyLevelConfig", 0);
    v920 = v919;
    if (v919)
    {
      v921 = v919;
    }

    else
    {
      v921 = v616;
    }

    objc_storeStrong(&v7->_shadowMySportsGroupOntologyLevelConfig, v921);

    v922 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMySportsGroupForYouOntologyLevelConfig", 0);
    v923 = v922;
    if (v922)
    {
      v924 = v922;
    }

    else
    {
      v924 = v616;
    }

    objc_storeStrong(&v7->_shadowMySportsGroupForYouOntologyLevelConfig, v924);

    v925 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMySportsTopicsOntologyLevelConfig", 0);
    v926 = v925;
    if (v925)
    {
      v927 = v925;
    }

    else
    {
      v927 = v616;
    }

    objc_storeStrong(&v7->_shadowMySportsTopicsOntologyLevelConfig, v927);

    v928 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowSportsTopStoriesOntologyLevelConfig", 0);
    v929 = v928;
    if (v928)
    {
      v930 = v928;
    }

    else
    {
      v930 = v616;
    }

    objc_storeStrong(&v7->_shadowSportsTopStoriesOntologyLevelConfig, v930);

    v931 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowIntroToSportsGroupOntologyLevelConfig", 0);
    v932 = v931;
    if (v931)
    {
      v933 = v931;
    }

    else
    {
      v933 = v616;
    }

    objc_storeStrong(&v7->_shadowIntroToSportsGroupOntologyLevelConfig, v933);

    v934 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowIntroToSportsGroupForYouOntologyLevelConfig", 0);
    v935 = v934;
    if (v934)
    {
      v936 = v934;
    }

    else
    {
      v936 = v616;
    }

    objc_storeStrong(&v7->_shadowIntroToSportsGroupForYouOntologyLevelConfig, v936);

    v937 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowHighlightsGroupOntologyLevelConfig", 0);
    v938 = v937;
    if (v937)
    {
      v939 = v937;
    }

    else
    {
      v939 = v616;
    }

    objc_storeStrong(&v7->_shadowHighlightsGroupOntologyLevelConfig, v939);

    v940 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowArticleListTagFeedGroupOntologyLevelConfig", 0);
    v941 = v940;
    if (v940)
    {
      v942 = v940;
    }

    else
    {
      v942 = v616;
    }

    objc_storeStrong(&v7->_shadowArticleListTagFeedGroupOntologyLevelConfig, v942);

    v943 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagFeedOntologyLevelConfig", 0);
    v944 = v943;
    if (v943)
    {
      v945 = v943;
    }

    else
    {
      v945 = v616;
    }

    objc_storeStrong(&v7->_shadowTagFeedOntologyLevelConfig, v945);

    v946 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowNewspaperTodayFeedOntologyLevelConfig", 0);
    v947 = v946;
    if (v946)
    {
      v948 = v946;
    }

    else
    {
      v948 = v616;
    }

    objc_storeStrong(&v7->_shadowNewspaperTodayFeedOntologyLevelConfig, v948);

    v949 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowMoreForYouOntologyLevelConfig", 0);
    v950 = v949;
    if (v949)
    {
      v951 = v949;
    }

    else
    {
      v951 = v616;
    }

    objc_storeStrong(&v7->_shadowMoreForYouOntologyLevelConfig, v951);

    v952 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowLocalSectionGroupOntologyLevelConfig", 0);
    v953 = v952;
    if (v952)
    {
      v954 = v952;
    }

    else
    {
      v954 = v616;
    }

    objc_storeStrong(&v7->_shadowLocalSectionGroupOntologyLevelConfig, v954);

    v955 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowNewspaperSectionGroupOntologyLevelConfig", 0);
    v956 = v955;
    if (v955)
    {
      v957 = v955;
    }

    else
    {
      v957 = v616;
    }

    objc_storeStrong(&v7->_shadowNewspaperSectionGroupOntologyLevelConfig, v957);

    v958 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowSportsEventArticlesGroupOntologyLevelConfig", 0);
    v959 = v958;
    if (v958)
    {
      v960 = v958;
    }

    else
    {
      v960 = v616;
    }

    objc_storeStrong(&v7->_shadowSportsEventArticlesGroupOntologyLevelConfig, v960);

    v961 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagForYouGroupOntologyLevelConfig", 0);
    v962 = v961;
    if (v961)
    {
      v963 = v961;
    }

    else
    {
      v963 = v616;
    }

    objc_storeStrong(&v7->_shadowTagForYouGroupOntologyLevelConfig, v963);

    v964 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagRecentStoriesOntologyLevelConfig", 0);
    v965 = v964;
    if (v964)
    {
      v966 = v964;
    }

    else
    {
      v966 = v616;
    }

    objc_storeStrong(&v7->_shadowTagRecentStoriesOntologyLevelConfig, v966);

    v967 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowTagDateRangeOntologyLevelConfig", 0);
    v968 = v967;
    if (v967)
    {
      v969 = v967;
    }

    else
    {
      v969 = v616;
    }

    objc_storeStrong(&v7->_shadowTagDateRangeOntologyLevelConfig, v969);

    v970 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowSportsEventTopicGroupOntologyLevelConfig", 0);
    v971 = v970;
    if (v970)
    {
      v972 = v970;
    }

    else
    {
      v972 = v616;
    }

    objc_storeStrong(&v7->_shadowSportsEventTopicGroupOntologyLevelConfig, v972);

    v973 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowAffinityGroupOntologyLevelConfig", 0);
    v974 = v973;
    if (v973)
    {
      v975 = v973;
    }

    else
    {
      v975 = v616;
    }

    objc_storeStrong(&v7->_shadowAffinityGroupOntologyLevelConfig, v975);

    v976 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"shadowFoodForYouOntologyLevelConfig", 0);
    v977 = v976;
    if (v976)
    {
      v978 = v976;
    }

    else
    {
      v978 = v616;
    }

    objc_storeStrong(&v7->_shadowFoodForYouOntologyLevelConfig, v978);

    v979 = [FCPersonalizationTagScoringConfig alloc];
    v980 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"defaultTagScoringConfig", 0);
    v981 = [(FCPersonalizationTagScoringConfig *)v979 initWithConfigDictionary:v980];
    defaultTagScoringConfig = v7->_defaultTagScoringConfig;
    v7->_defaultTagScoringConfig = v981;

    v983 = [FCPersonalizationTagScoringConfig alloc];
    v984 = FCAppConfigurationDictionaryValueWithDefaultValue(v5, @"sportsTagScoringConfig", 0);
    v985 = [(FCPersonalizationTreatment *)v7 defaultTagScoringConfig];
    v986 = [(FCPersonalizationTagScoringConfig *)v983 initWithConfigDictionary:v984 defaultConfig:v985];
    sportsTagScoringConfig = v7->_sportsTagScoringConfig;
    v7->_sportsTagScoringConfig = v986;

    v988 = FCAppConfigurationDoubleValue(v5, @"hourlyFlowRateMinimum", 4.0);
    if (v988 < 0.0)
    {
      v988 = 4.0;
    }

    v7->_hourlyFlowRateMinimum = v988;
    v989 = FCAppConfigurationDoubleValue(v5, @"hourlyFlowRateSubscriptionCountBuffer", 0.0);
    if (v989 < 0.0)
    {
      v989 = 0.0;
    }

    v7->_hourlyFlowRateSubscriptionCountBuffer = v989;
    v990 = FCAppConfigurationDoubleValue(v5, @"hourlyFlowRateDampeningFactor", 2.0);
    if (v990 <= 0.0)
    {
      v990 = 2.0;
    }

    v7->_hourlyFlowRateDampeningFactor = v990;
    v991 = FCAppConfigurationDoubleValue(v5, @"hourlyFlowRatePerSubscription", 1.0);
    if (v991 < 0.0)
    {
      v991 = 1.0;
    }

    v7->_hourlyFlowRatePerSubscription = v991;
    v992 = FCAppConfigurationDoubleValue(v5, @"extraHeadlinesToShowTheUser", 0.0);
    if (v992 < 0.0)
    {
      v992 = 0.0;
    }

    v7->_extraArticlesToShowUser = v992;
    v993 = FCAppConfigurationDoubleValue(v5, @"hourlyFlowRateAlpha", 0.535544906);
    if (v993 <= 0.0)
    {
      v993 = 0.535544906;
    }

    v7->_hourlyFlowRateAlpha = v993;
    v994 = FCAppConfigurationDoubleValue(v5, @"hourlyFlowRateBeta", 0.464455094);
    if (v994 <= 0.0)
    {
      v994 = 0.464455094;
    }

    v7->_hourlyFlowRateBeta = v994;
    v7->_hourlyFlowRateGamma = fmax(FCAppConfigurationDoubleValue(v5, @"hourlyFlowRateGamma", 0.0), 0.0);
    v995 = FCAppConfigurationDoubleValue(v5, @"flowRateDecayFactor", 0.99);
    if (v995 >= 1.0 || v995 < 0.0)
    {
      v995 = 0.99;
    }

    v7->_hourlyFlowRateDecayFactor = v995;
    v997 = FCAppConfigurationDoubleValue(v5, @"flowRatePriorWeight", 1.0);
    if (v997 < 0.0)
    {
      v997 = 1.0;
    }

    v7->_hourlyFlowRatePriorWeight = v997;
    v998 = FCAppConfigurationDoubleValue(v5, @"hourlyFlowRateFloor", 1.0);
    if (v998 < 0.0)
    {
      v998 = 1.0;
    }

    v7->_hourlyFlowRateFloor = v998;
    v999 = FCAppConfigurationDoubleValue(v5, @"hourlyFlowRateCeiling", 416.66);
    if (v999 < 0.0)
    {
      v999 = 416.66;
    }

    v7->_hourlyFlowRateCeiling = v999;
    v1000 = FCAppConfigurationDoubleValue(v5, @"baselineImpressionPrior", 60.0);
    if (v1000 < 0.0)
    {
      v1000 = 60.0;
    }

    v7->_baselineImpressionPrior = v1000;
    v1001 = FCAppConfigurationDoubleValue(v5, @"featureImpressionPrior", 0.0);
    if (v1001 < 0.0)
    {
      v1001 = 0.0;
    }

    v7->_featureImpressionPrior = v1001;
    v1002 = FCAppConfigurationDoubleValue(v5, @"articleLengthLongThreshold", 5000.0);
    if (v1002 < 0.0)
    {
      v1002 = 5000.0;
    }

    v7->_articleLengthLongThreshold = v1002;
    v1003 = FCAppConfigurationDoubleValue(v5, @"articleLengthMediumThreshold", 2000.0);
    if (v1003 < 0.0)
    {
      v1003 = 2000.0;
    }

    v7->_articleLengthMediumThreshold = v1003;
    v1004 = FCAppConfigurationIntegerValue(v5, @"publisherTopicIDEventCountMinimum", 5);
    v1005 = v1004;
    if (v1004 < 0)
    {
      v1005 = 5;
    }

    v7->_publisherTopicIDEventCountMinimum = v1005;
    v1006 = FCAppConfigurationDoubleValue(v5, @"publisherDiversificationPenalty", 0.2);
    if (v1006 > 1.0 || v1006 < 0.0)
    {
      v1006 = 0.2;
    }

    v7->_publisherDiversificationPenalty = v1006;
    v1008 = FCAppConfigurationDoubleValue(v5, @"publisherDiversificationInitialPenalty", 0.4);
    if (v1008 > 1.0 || v1008 < 0.0)
    {
      v1008 = 0.4;
    }

    v7->_publisherDiversificationInitialPenalty = v1008;
    v1010 = FCAppConfigurationDoubleValue(v5, @"publisherDiversificationPenaltyHalfLife", 200.0);
    if (v1010 <= 0.0)
    {
      v1010 = 200.0;
    }

    v7->_publisherDiversificationPenaltyHalfLife = v1010;
    v1011 = FCAppConfigurationDoubleValue(v5, @"heavyClickMinimumDuration", 7.0);
    if (v1011 < 0.0)
    {
      v1011 = 7.0;
    }

    v7->_heavyClickMinimumDuration = v1011;
    v1012 = FCAppConfigurationDoubleValue(v5, @"trackVisitedMinimumDuration", 10.0);
    if (v1012 < 0.0)
    {
      v1012 = 10.0;
    }

    v7->_trackVisitedMinimumDuration = v1012;
    v1013 = FCAppConfigurationDoubleValue(v5, @"trackListenedMinimumDuration", 30.0);
    if (v1013 < 0.0)
    {
      v1013 = 30.0;
    }

    v7->_trackListenedMinimumDuration = v1013;
    v1014 = FCAppConfigurationDoubleValue(v5, @"swipeToArticleWeakClickMinimumDuration", 4.0);
    if (v1014 < 0.0)
    {
      v1014 = 4.0;
    }

    v7->_swipeToArticleWeakClickMinimumDuration = v1014;
    v1015 = FCAppConfigurationDoubleValue(v5, @"swipeToArticleHeavyClickMinimumDuration", 10.0);
    if (v1015 < 0.0)
    {
      v1015 = 10.0;
    }

    v7->_swipeToArticleHeavyClickMinimumDuration = v1015;
    v1016 = FCAppConfigurationDoubleValue(v5, @"lowQualityContentThreshold", 0.2);
    if (v1016 > 1.0 || v1016 < 0.0)
    {
      v1016 = 0.2;
    }

    v7->_lowQualityContentThreshold = v1016;
    v7->_lowQualityFilterShouldPreserveItemsFromSubscribedChannels = FCAppConfigurationBoolValue(v5, @"lowQualityFilterShouldPreserveItemsFromSubscribedChannels", 0);
    v7->_lowQualityFilterShouldIsolateEvergreenItems = FCAppConfigurationBoolValue(v5, @"lowQualityFilterShouldIsolateEvergreenItems", 0);
    v1018 = FCAppConfigurationDoubleValue(v5, @"sportsTagSeenMinimumDuration", 3.0);
    if (v1018 < 0.0)
    {
      v1018 = 3.0;
    }

    v7->_sportsTagSeenMinimumDuration = v1018;
    v7->_sportsTagSeenEnableFeedSource = FCAppConfigurationBoolValue(v5, @"sportsTagSeenEnableFeedSource", 0);
    v7->_sportsTagSeenEnableSportsManagementSource = FCAppConfigurationBoolValue(v5, @"sportsTagSeenEnableSportsManagementSource", 1);
    v7->_sportsTagSeenEnableSportsManagementDetailSource = FCAppConfigurationBoolValue(v5, @"sportsTagSeenEnableSportsManagementDetailSource", 1);
    v1019 = FCAppConfigurationIntegerValue(v5, @"thumbnailMinHammingDistance", 37);
    v1020 = v1019;
    if (v1019 <= 0)
    {
      v1020 = 37;
    }

    v7->_thumbnailMinHammingDistance = v1020;
    v1021 = FCAppConfigurationDoubleValue(v5, @"presentationImpressionValue", 1.0);
    if (v1021 < 0.0)
    {
      v1021 = 1.0;
    }

    v7->_presentationImpressionValue = v1021;
    v1022 = FCAppConfigurationDoubleValue(v5, @"heavyClickImpressionValue", 3.0);
    if (v1022 < 0.0)
    {
      v1022 = 3.0;
    }

    v7->_heavyClickImpressionValue = v1022;
    v1023 = FCAppConfigurationDoubleValue(v5, @"likeImpressionValue", 2.0);
    if (v1023 < 0.0)
    {
      v1023 = 2.0;
    }

    v7->_likeImpressionValue = v1023;
    v1024 = FCAppConfigurationDoubleValue(v5, @"shareImpressionValue", 2.0);
    if (v1024 < 0.0)
    {
      v1024 = 2.0;
    }

    v7->_shareImpressionValue = v1024;
    v1025 = FCAppConfigurationDoubleValue(v5, @"savedImpressionValue", 1.0);
    if (v1025 < 0.0)
    {
      v1025 = 1.0;
    }

    v7->_savedImpressionValue = v1025;
    v1026 = FCAppConfigurationDoubleValue(v5, @"subscribeImpressionValue", 10.0);
    if (v1026 < 0.0)
    {
      v1026 = 10.0;
    }

    v7->_subscribeImpressionValue = v1026;
    v1027 = FCAppConfigurationDoubleValue(v5, @"subscribeRelatedImpressionValue", 0.0);
    if (v1027 < 0.0)
    {
      v1027 = 0.0;
    }

    v7->_subscribeRelatedImpressionValue = v1027;
    v1028 = FCAppConfigurationDoubleValue(v5, @"existingSubscriptionImpressionValue", 5.0);
    if (v1028 < 0.0)
    {
      v1028 = 5.0;
    }

    v7->_existingSubscriptionImpressionValue = v1028;
    v1029 = FCAppConfigurationDoubleValue(v5, @"existingSubscriptionRelatedImpressionValue", 0.0);
    if (v1029 < 0.0)
    {
      v1029 = 0.0;
    }

    v7->_existingSubscriptionRelatedImpressionValue = v1029;
    v1030 = FCAppConfigurationDoubleValue(v5, @"tappedImpressionValue", 0.0);
    if (v1030 < 0.0)
    {
      v1030 = 0.0;
    }

    v7->_tappedImpressionValue = v1030;
    v1031 = FCAppConfigurationDoubleValue(v5, @"weakClickImpressionValue", 0.0);
    if (v1031 < 0.0)
    {
      v1031 = 0.0;
    }

    v7->_weakClickImpressionValue = v1031;
    v1032 = FCAppConfigurationDoubleValue(v5, @"unsubscribeImpressionValue", 0.0);
    if (v1032 < 0.0)
    {
      v1032 = 0.0;
    }

    v7->_unsubscribeImpressionValue = v1032;
    v1033 = FCAppConfigurationDoubleValue(v5, @"visitImpressionValue", 3.0);
    if (v1033 < 0.0)
    {
      v1033 = 3.0;
    }

    v7->_visitImpressionValue = v1033;
    v1034 = FCAppConfigurationDoubleValue(v5, @"dislikeImpressionValue", 50.0);
    if (v1034 < 0.0)
    {
      v1034 = 50.0;
    }

    v7->_dislikeImpressionValue = v1034;
    v1035 = FCAppConfigurationDoubleValue(v5, @"recommendationPresentationFeedImpressionValue", 0.0);
    if (v1035 < 0.0)
    {
      v1035 = 0.0;
    }

    v7->_recommendationPresentationFeedImpressionValue = v1035;
    v1036 = FCAppConfigurationDoubleValue(v5, @"recommendationPresentationExploreImpressionValue", 4.0);
    if (v1036 < 0.0)
    {
      v1036 = 4.0;
    }

    v7->_recommendationPresentationExploreImpressionValue = v1036;
    v1037 = FCAppConfigurationDoubleValue(v5, @"premiumSubscriptionActivationImpressionValue", 25.0);
    if (v1037 < 0.0)
    {
      v1037 = 25.0;
    }

    v7->_premiumSubscriptionActivationImpressionValue = v1037;
    v1038 = FCAppConfigurationDoubleValue(v5, @"muteImpressionValue", 50.0);
    if (v1038 < 0.0)
    {
      v1038 = 50.0;
    }

    v7->_muteImpressionValue = v1038;
    v1039 = FCAppConfigurationDoubleValue(v5, @"unmuteImpressionValue", 0.0);
    if (v1039 < 0.0)
    {
      v1039 = 0.0;
    }

    v7->_unmuteImpressionValue = v1039;
    v1040 = FCAppConfigurationDoubleValue(v5, @"videoInitiatePlaybackImpressionValue", 1.0);
    if (v1040 < 0.0)
    {
      v1040 = 1.0;
    }

    v7->_videoInitiatePlaybackImpressionValue = v1040;
    v1041 = FCAppConfigurationDoubleValue(v5, @"videoCompletePlaybackImpressionValue", 2.0);
    if (v1041 < 0.0)
    {
      v1041 = 2.0;
    }

    v7->_videoCompletePlaybackImpressionValue = v1041;
    v1042 = FCAppConfigurationDoubleValue(v5, @"videoComplete25ImpressionValue", 0.0);
    if (v1042 < 0.0)
    {
      v1042 = 0.0;
    }

    v7->_videoComplete25ImpressionValue = v1042;
    v1043 = FCAppConfigurationDoubleValue(v5, @"videoComplete50ImpressionValue", 0.0);
    if (v1043 < 0.0)
    {
      v1043 = 0.0;
    }

    v7->_videoComplete50ImpressionValue = v1043;
    v1044 = FCAppConfigurationDoubleValue(v5, @"videoComplete75ImpressionValue", 0.0);
    if (v1044 < 0.0)
    {
      v1044 = 0.0;
    }

    v7->_videoComplete75ImpressionValue = v1044;
    v1045 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetPresentationImpressionValue", 0.0);
    if (v1045 < 0.0)
    {
      v1045 = 0.0;
    }

    v7->_newsTodayWidgetPresentationImpressionValue = v1045;
    v1046 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetClickImpressionValue", 0.0);
    if (v1046 < 0.0)
    {
      v1046 = 0.0;
    }

    v7->_newsTodayWidgetClickImpressionValue = v1046;
    v1047 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetVideoPlaybackImpressionValue", 0.0);
    if (v1047 < 0.0)
    {
      v1047 = 0.0;
    }

    v7->_newsTodayWidgetVideoPlaybackImpressionValue = v1047;
    v1048 = FCAppConfigurationDoubleValue(v5, @"appInstallImpressionValue", 0.0);
    if (v1048 < 0.0)
    {
      v1048 = 0.0;
    }

    v7->_appInstallImpressionValue = v1048;
    v1049 = FCAppConfigurationDoubleValue(v5, @"appInFocusImpressionValue", 0.0);
    if (v1049 < 0.0)
    {
      v1049 = 0.0;
    }

    v7->_appInFocusImpressionValue = v1049;
    v1050 = FCAppConfigurationDoubleValue(v5, @"safariHistoryImpressionValue", 0.0);
    if (v1050 < 0.0)
    {
      v1050 = 0.0;
    }

    v7->_safariHistoryImpressionValue = v1050;
    v1051 = FCAppConfigurationDoubleValue(v5, @"publisherBoostForSourceMoreFromFeedImpressionValue", 0.0);
    if (v1051 < 0.0)
    {
      v1051 = 0.0;
    }

    v7->_publisherBoostForSourceMoreFromFeedImpressionValue = v1051;
    v1052 = FCAppConfigurationDoubleValue(v5, @"topicBoostForSourceRelatedFeedImpressionValue", 0.0);
    if (v1052 < 0.0)
    {
      v1052 = 0.0;
    }

    v7->_topicBoostForSourceRelatedFeedImpressionValue = v1052;
    v1053 = FCAppConfigurationDoubleValue(v5, @"publisherBoostForIssueOpenImpressionValue", 0.0);
    if (v1053 < 0.0)
    {
      v1053 = 0.0;
    }

    v7->_publisherBoostForIssueOpenImpressionValue = v1053;
    v1054 = FCAppConfigurationDoubleValue(v5, @"trackVisitedImpressionValue", 1.0);
    if (v1054 < 0.0)
    {
      v1054 = 1.0;
    }

    v7->_trackVisitedImpressionValue = v1054;
    v1055 = FCAppConfigurationDoubleValue(v5, @"trackListenedImpressionValue", 3.0);
    if (v1055 < 0.0)
    {
      v1055 = 3.0;
    }

    v7->_trackListenedImpressionValue = v1055;
    v1056 = FCAppConfigurationDoubleValue(v5, @"trackFinishedImpressionValue", 10.0);
    if (v1056 < 0.0)
    {
      v1056 = 10.0;
    }

    v7->_trackFinishedImpressionValue = v1056;
    v1057 = FCAppConfigurationDoubleValue(v5, @"sportsTagSeenImpressionValue", 1.0);
    if (v1057 < 0.0)
    {
      v1057 = 1.0;
    }

    v7->_sportsTagSeenImpressionValue = v1057;
    v1058 = FCAppConfigurationDoubleValue(v5, @"ignoreImpressionValue", 50.0);
    if (v1058 < 0.0)
    {
      v1058 = 50.0;
    }

    v7->_ignoreImpressionValue = v1058;
    v1059 = FCAppConfigurationDoubleValue(v5, @"presentationBaselineImpressionValue", 1.0);
    if (v1059 < 0.0)
    {
      v1059 = 1.0;
    }

    v7->_presentationBaselineImpressionValue = v1059;
    v1060 = FCAppConfigurationDoubleValue(v5, @"heavyClickBaselineImpressionValue", 0.0);
    if (v1060 < 0.0)
    {
      v1060 = 0.0;
    }

    v7->_heavyClickBaselineImpressionValue = v1060;
    v1061 = FCAppConfigurationDoubleValue(v5, @"likeBaselineImpressionValue", 0.0);
    if (v1061 < 0.0)
    {
      v1061 = 0.0;
    }

    v7->_likeBaselineImpressionValue = v1061;
    v1062 = FCAppConfigurationDoubleValue(v5, @"shareBaselineImpressionValue", 0.0);
    if (v1062 < 0.0)
    {
      v1062 = 0.0;
    }

    v7->_shareBaselineImpressionValue = v1062;
    v1063 = FCAppConfigurationDoubleValue(v5, @"savedBaselineImpressionValue", 0.0);
    if (v1063 < 0.0)
    {
      v1063 = 0.0;
    }

    v7->_savedBaselineImpressionValue = v1063;
    v1064 = FCAppConfigurationDoubleValue(v5, @"subscribeBaselineImpressionValue", 0.0);
    if (v1064 < 0.0)
    {
      v1064 = 0.0;
    }

    v7->_subscribeBaselineImpressionValue = v1064;
    v1065 = FCAppConfigurationDoubleValue(v5, @"subscribeRelatedBaselineImpressionValue", 0.0);
    if (v1065 < 0.0)
    {
      v1065 = 0.0;
    }

    v7->_subscribeRelatedBaselineImpressionValue = v1065;
    v1066 = FCAppConfigurationDoubleValue(v5, @"existingSubscriptionBaselineImpressionValue", 0.0);
    if (v1066 < 0.0)
    {
      v1066 = 0.0;
    }

    v7->_existingSubscriptionBaselineImpressionValue = v1066;
    v1067 = FCAppConfigurationDoubleValue(v5, @"existingSubscriptionRelatedBaselineImpressionValue", 0.0);
    if (v1067 < 0.0)
    {
      v1067 = 0.0;
    }

    v7->_existingSubscriptionRelatedBaselineImpressionValue = v1067;
    v1068 = FCAppConfigurationDoubleValue(v5, @"tappedBaselineImpressionValue", 0.0);
    if (v1068 < 0.0)
    {
      v1068 = 0.0;
    }

    v7->_tappedBaselineImpressionValue = v1068;
    v1069 = FCAppConfigurationDoubleValue(v5, @"weakClickBaselineImpressionValue", 0.0);
    if (v1069 < 0.0)
    {
      v1069 = 0.0;
    }

    v7->_weakClickBaselineImpressionValue = v1069;
    v1070 = FCAppConfigurationDoubleValue(v5, @"unsubscribeBaselineImpressionValue", 0.0);
    if (v1070 < 0.0)
    {
      v1070 = 0.0;
    }

    v7->_unsubscribeBaselineImpressionValue = v1070;
    v1071 = FCAppConfigurationDoubleValue(v5, @"visitBaselineImpressionValue", 0.0);
    if (v1071 < 0.0)
    {
      v1071 = 0.0;
    }

    v7->_visitBaselineImpressionValue = v1071;
    v1072 = FCAppConfigurationDoubleValue(v5, @"dislikeBaselineImpressionValue", 0.0);
    if (v1072 < 0.0)
    {
      v1072 = 0.0;
    }

    v7->_dislikeBaselineImpressionValue = v1072;
    v1073 = FCAppConfigurationDoubleValue(v5, @"recommendationPresentationFeedBaselineImpressionValue", 0.0);
    if (v1073 < 0.0)
    {
      v1073 = 0.0;
    }

    v7->_recommendationPresentationFeedBaselineImpressionValue = v1073;
    v1074 = FCAppConfigurationDoubleValue(v5, @"recommendationPresentationExploreBaselineImpressionValue", 0.0);
    if (v1074 < 0.0)
    {
      v1074 = 0.0;
    }

    v7->_recommendationPresentationExploreBaselineImpressionValue = v1074;
    v1075 = FCAppConfigurationDoubleValue(v5, @"premiumSubscriptionActivationBaselineImpressionValue", 0.0);
    if (v1075 < 0.0)
    {
      v1075 = 0.0;
    }

    v7->_premiumSubscriptionActivationBaselineImpressionValue = v1075;
    v1076 = FCAppConfigurationDoubleValue(v5, @"muteBaselineImpressionValue", 0.0);
    if (v1076 < 0.0)
    {
      v1076 = 0.0;
    }

    v7->_muteBaselineImpressionValue = v1076;
    v1077 = FCAppConfigurationDoubleValue(v5, @"unmuteBaselineImpressionValue", 0.0);
    if (v1077 < 0.0)
    {
      v1077 = 0.0;
    }

    v7->_unmuteBaselineImpressionValue = v1077;
    v1078 = FCAppConfigurationDoubleValue(v5, @"videoInitiatePlaybackBaselineImpressionValue", 0.0);
    if (v1078 < 0.0)
    {
      v1078 = 0.0;
    }

    v7->_videoInitiatePlaybackBaselineImpressionValue = v1078;
    v1079 = FCAppConfigurationDoubleValue(v5, @"videoCompletePlaybackBaselineImpressionValue", 0.0);
    if (v1079 < 0.0)
    {
      v1079 = 0.0;
    }

    v7->_videoCompletePlaybackBaselineImpressionValue = v1079;
    v1080 = FCAppConfigurationDoubleValue(v5, @"videoComplete25BaselineImpressionValue", 0.0);
    if (v1080 < 0.0)
    {
      v1080 = 0.0;
    }

    v7->_videoComplete25BaselineImpressionValue = v1080;
    v1081 = FCAppConfigurationDoubleValue(v5, @"videoComplete50BaselineImpressionValue", 0.0);
    if (v1081 < 0.0)
    {
      v1081 = 0.0;
    }

    v7->_videoComplete50BaselineImpressionValue = v1081;
    v1082 = FCAppConfigurationDoubleValue(v5, @"videoComplete75BaselineImpressionValue", 0.0);
    if (v1082 < 0.0)
    {
      v1082 = 0.0;
    }

    v7->_videoComplete75BaselineImpressionValue = v1082;
    v1083 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetPresentationBaselineImpressionValue", 1.0);
    if (v1083 < 0.0)
    {
      v1083 = 1.0;
    }

    v7->_newsTodayWidgetPresentationBaselineImpressionValue = v1083;
    v1084 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetClickBaselineImpressionValue", 0.0);
    if (v1084 < 0.0)
    {
      v1084 = 0.0;
    }

    v7->_newsTodayWidgetClickBaselineImpressionValue = v1084;
    v1085 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetVideoPlaybackBaselineImpressionValue", 0.0);
    if (v1085 < 0.0)
    {
      v1085 = 0.0;
    }

    v7->_newsTodayWidgetVideoPlaybackBaselineImpressionValue = v1085;
    v1086 = FCAppConfigurationDoubleValue(v5, @"appInstallBaselineImpressionValue", 0.0);
    if (v1086 < 0.0)
    {
      v1086 = 0.0;
    }

    v7->_appInstallBaselineImpressionValue = v1086;
    v1087 = FCAppConfigurationDoubleValue(v5, @"appInFocusBaselineImpressionValue", 0.0);
    if (v1087 < 0.0)
    {
      v1087 = 0.0;
    }

    v7->_appInFocusBaselineImpressionValue = v1087;
    v1088 = FCAppConfigurationDoubleValue(v5, @"safariHistoryBaselineImpressionValue", 0.0);
    if (v1088 < 0.0)
    {
      v1088 = 0.0;
    }

    v7->_safariHistoryBaselineImpressionValue = v1088;
    v1089 = FCAppConfigurationDoubleValue(v5, @"publisherBoostForSourceMoreFromFeedBaselineImpressionValue", 0.0);
    if (v1089 < 0.0)
    {
      v1089 = 0.0;
    }

    v7->_publisherBoostForSourceMoreFromFeedBaselineImpressionValue = v1089;
    v1090 = FCAppConfigurationDoubleValue(v5, @"topicBoostForSourceRelatedFeedBaselineImpressionValue", 0.0);
    if (v1090 < 0.0)
    {
      v1090 = 0.0;
    }

    v7->_topicBoostForSourceRelatedFeedBaselineImpressionValue = v1090;
    v1091 = FCAppConfigurationDoubleValue(v5, @"publisherBoostForIssueOpenBaselineImpressionValue", 0.0);
    if (v1091 < 0.0)
    {
      v1091 = 0.0;
    }

    v7->_publisherBoostForIssueOpenBaselineImpressionValue = v1091;
    v1092 = FCAppConfigurationDoubleValue(v5, @"trackVisitedBaselineImpressionValue", 1.0);
    if (v1092 < 0.0)
    {
      v1092 = 1.0;
    }

    v7->_trackVisitedBaselineImpressionValue = v1092;
    v1093 = FCAppConfigurationDoubleValue(v5, @"trackListenedBaselineImpressionValue", 3.0);
    if (v1093 < 0.0)
    {
      v1093 = 3.0;
    }

    v7->_trackListenedBaselineImpressionValue = v1093;
    v1094 = FCAppConfigurationDoubleValue(v5, @"trackFinishedBaselineImpressionValue", 10.0);
    if (v1094 < 0.0)
    {
      v1094 = 10.0;
    }

    v7->_trackFinishedBaselineImpressionValue = v1094;
    v1095 = FCAppConfigurationDoubleValue(v5, @"sportsTagSeenBaselineImpressionValue", 1.0);
    if (v1095 < 0.0)
    {
      v1095 = 1.0;
    }

    v7->_sportsTagSeenBaselineImpressionValue = v1095;
    v1096 = FCAppConfigurationDoubleValue(v5, @"ignoreBaselineImpressionValue", 0.0);
    if (v1096 < 0.0)
    {
      v1096 = 0.0;
    }

    v7->_ignoreBaselineImpressionValue = v1096;
    v1097 = FCAppConfigurationDoubleValue(v5, @"presentationClickValue", 0.0);
    if (v1097 < 0.0)
    {
      v1097 = 0.0;
    }

    v7->_presentationClickValue = v1097;
    v1098 = FCAppConfigurationDoubleValue(v5, @"heavyClickClickValue", 3.0);
    if (v1098 < 0.0)
    {
      v1098 = 3.0;
    }

    v7->_heavyClickClickValue = v1098;
    v1099 = FCAppConfigurationDoubleValue(v5, @"likeClickValue", 2.0);
    if (v1099 < 0.0)
    {
      v1099 = 2.0;
    }

    v7->_likeClickValue = v1099;
    v1100 = FCAppConfigurationDoubleValue(v5, @"shareClickValue", 2.0);
    if (v1100 < 0.0)
    {
      v1100 = 2.0;
    }

    v7->_shareClickValue = v1100;
    v1101 = FCAppConfigurationDoubleValue(v5, @"savedClickValue", 1.0);
    if (v1101 < 0.0)
    {
      v1101 = 1.0;
    }

    v7->_savedClickValue = v1101;
    v1102 = FCAppConfigurationDoubleValue(v5, @"subscribeClickValue", 10.0);
    if (v1102 < 0.0)
    {
      v1102 = 10.0;
    }

    v7->_subscribeClickValue = v1102;
    v1103 = FCAppConfigurationDoubleValue(v5, @"subscribeRelatedClickValue", 0.0);
    if (v1103 < 0.0)
    {
      v1103 = 0.0;
    }

    v7->_subscribeRelatedClickValue = v1103;
    v1104 = FCAppConfigurationDoubleValue(v5, @"existingSubscriptionClickValue", 5.0);
    if (v1104 < 0.0)
    {
      v1104 = 5.0;
    }

    v7->_existingSubscriptionClickValue = v1104;
    v1105 = FCAppConfigurationDoubleValue(v5, @"existingSubscriptionRelatedClickValue", 0.0);
    if (v1105 < 0.0)
    {
      v1105 = 0.0;
    }

    v7->_existingSubscriptionRelatedClickValue = v1105;
    v1106 = FCAppConfigurationDoubleValue(v5, @"tappedClickValue", 0.0);
    if (v1106 < 0.0)
    {
      v1106 = 0.0;
    }

    v7->_tappedClickValue = v1106;
    v1107 = FCAppConfigurationDoubleValue(v5, @"weakClickClickValue", 1.0);
    if (v1107 < 0.0)
    {
      v1107 = 1.0;
    }

    v7->_weakClickClickValue = v1107;
    v1108 = FCAppConfigurationDoubleValue(v5, @"unsubscribeClickValue", 0.0);
    if (v1108 < 0.0)
    {
      v1108 = 0.0;
    }

    v7->_unsubscribeClickValue = v1108;
    v1109 = FCAppConfigurationDoubleValue(v5, @"visitClickValue", 3.0);
    if (v1109 < 0.0)
    {
      v1109 = 3.0;
    }

    v7->_visitClickValue = v1109;
    v1110 = FCAppConfigurationDoubleValue(v5, @"dislikeClickValue", 0.0);
    if (v1110 < 0.0)
    {
      v1110 = 0.0;
    }

    v7->_dislikeClickValue = v1110;
    v1111 = FCAppConfigurationDoubleValue(v5, @"recommendationPresentationFeedClickValue", 0.0);
    if (v1111 < 0.0)
    {
      v1111 = 0.0;
    }

    v7->_recommendationPresentationFeedClickValue = v1111;
    v1112 = FCAppConfigurationDoubleValue(v5, @"recommendationPresentationExploreClickValue", 0.0);
    if (v1112 < 0.0)
    {
      v1112 = 0.0;
    }

    v7->_recommendationPresentationExploreClickValue = v1112;
    v1113 = FCAppConfigurationDoubleValue(v5, @"premiumSubscriptionActivationClickValue", 25.0);
    if (v1113 < 0.0)
    {
      v1113 = 25.0;
    }

    v7->_premiumSubscriptionActivationClickValue = v1113;
    v1114 = FCAppConfigurationDoubleValue(v5, @"muteClickValue", 0.0);
    if (v1114 < 0.0)
    {
      v1114 = 0.0;
    }

    v7->_muteClickValue = v1114;
    v1115 = FCAppConfigurationDoubleValue(v5, @"unmuteClickValue", 0.0);
    if (v1115 < 0.0)
    {
      v1115 = 0.0;
    }

    v7->_unmuteClickValue = v1115;
    v1116 = FCAppConfigurationDoubleValue(v5, @"videoInitiatePlaybackClickValue", 1.0);
    if (v1116 < 0.0)
    {
      v1116 = 1.0;
    }

    v7->_videoInitiatePlaybackClickValue = v1116;
    v1117 = FCAppConfigurationDoubleValue(v5, @"videoCompletePlaybackClickValue", 2.0);
    if (v1117 < 0.0)
    {
      v1117 = 2.0;
    }

    v7->_videoCompletePlaybackClickValue = v1117;
    v1118 = FCAppConfigurationDoubleValue(v5, @"videoComplete25ClickValue", 0.0);
    if (v1118 < 0.0)
    {
      v1118 = 0.0;
    }

    v7->_videoComplete25ClickValue = v1118;
    v1119 = FCAppConfigurationDoubleValue(v5, @"videoComplete50ClickValue", 0.0);
    if (v1119 < 0.0)
    {
      v1119 = 0.0;
    }

    v7->_videoComplete50ClickValue = v1119;
    v1120 = FCAppConfigurationDoubleValue(v5, @"videoComplete75ClickValue", 0.0);
    if (v1120 < 0.0)
    {
      v1120 = 0.0;
    }

    v7->_videoComplete75ClickValue = v1120;
    v1121 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetPresentationClickValue", 0.0);
    if (v1121 < 0.0)
    {
      v1121 = 0.0;
    }

    v7->_newsTodayWidgetPresentationClickValue = v1121;
    v1122 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetClickClickValue", 1.0);
    if (v1122 < 0.0)
    {
      v1122 = 1.0;
    }

    v7->_newsTodayWidgetClickClickValue = v1122;
    v1123 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetVideoPlaybackClickValue", 1.0);
    if (v1123 < 0.0)
    {
      v1123 = 1.0;
    }

    v7->_newsTodayWidgetVideoPlaybackClickValue = v1123;
    v1124 = FCAppConfigurationDoubleValue(v5, @"appInstallClickValue", 0.0);
    if (v1124 < 0.0)
    {
      v1124 = 0.0;
    }

    v7->_appInstallClickValue = v1124;
    v1125 = FCAppConfigurationDoubleValue(v5, @"appInFocusClickValue", 0.0);
    if (v1125 < 0.0)
    {
      v1125 = 0.0;
    }

    v7->_appInFocusClickValue = v1125;
    v1126 = FCAppConfigurationDoubleValue(v5, @"safariHistoryClickValue", 0.0);
    if (v1126 < 0.0)
    {
      v1126 = 0.0;
    }

    v7->_safariHistoryClickValue = v1126;
    v1127 = FCAppConfigurationDoubleValue(v5, @"publisherBoostForSourceMoreFromFeedClickValue", 0.0);
    if (v1127 < 0.0)
    {
      v1127 = 0.0;
    }

    v7->_publisherBoostForSourceMoreFromFeedClickValue = v1127;
    v1128 = FCAppConfigurationDoubleValue(v5, @"topicBoostForSourceRelatedFeedClickValue", 0.0);
    if (v1128 < 0.0)
    {
      v1128 = 0.0;
    }

    v7->_topicBoostForSourceRelatedFeedClickValue = v1128;
    v1129 = FCAppConfigurationDoubleValue(v5, @"publisherBoostForIssueOpenClickValue", 0.0);
    if (v1129 < 0.0)
    {
      v1129 = 0.0;
    }

    v7->_publisherBoostForIssueOpenClickValue = v1129;
    v1130 = FCAppConfigurationDoubleValue(v5, @"trackVisitedClickValue", 1.0);
    if (v1130 < 0.0)
    {
      v1130 = 1.0;
    }

    v7->_trackVisitedClickValue = v1130;
    v1131 = FCAppConfigurationDoubleValue(v5, @"trackListenedClickValue", 3.0);
    if (v1131 < 0.0)
    {
      v1131 = 3.0;
    }

    v7->_trackListenedClickValue = v1131;
    v1132 = FCAppConfigurationDoubleValue(v5, @"trackFinishedClickValue", 10.0);
    if (v1132 < 0.0)
    {
      v1132 = 10.0;
    }

    v7->_trackFinishedClickValue = v1132;
    v1133 = FCAppConfigurationDoubleValue(v5, @"sportsTagSeenClickValue", 0.0);
    if (v1133 < 0.0)
    {
      v1133 = 0.0;
    }

    v7->_sportsTagSeenClickValue = v1133;
    v1134 = FCAppConfigurationDoubleValue(v5, @"ignoreClickValue", 0.0);
    if (v1134 < 0.0)
    {
      v1134 = 0.0;
    }

    v7->_ignoreClickValue = v1134;
    v1135 = FCAppConfigurationDoubleValue(v5, @"metaGroupingRelatednessThreshold", 0.7);
    if (v1135 > 1.0 || v1135 < 0.0)
    {
      v1135 = 0.7;
    }

    v7->_metaGroupingRelatednessThreshold = v1135;
    v1137 = FCAppConfigurationDoubleValue(v5, @"metaGroupingRelatednessKWeight", 0.1);
    if (v1137 < 0.0)
    {
      v1137 = 0.1;
    }

    v7->_metaGroupingRelatednessKWeight = v1137;
    v1138 = FCAppConfigurationDoubleValue(v5, @"metaGroupingTopicScoreWeight", 0.5);
    if (v1138 > 1.0 || v1138 < 0.0)
    {
      v1138 = 0.5;
    }

    v7->_metaGroupingTopicScoreWeight = v1138;
    v1140 = FCAppConfigurationDoubleValue(v5, @"metaGroupingHighestScoringRelativeScoreMultiplier", 100.0);
    if (v1140 <= 0.0)
    {
      v1140 = 100.0;
    }

    v7->_metaGroupingHighestScoringRelativeScoreMultiplier = v1140;
    v1141 = FCAppConfigurationDoubleValue(v5, @"metaGroupingSubscribedTopicMultiplier", 5.0);
    if (v1141 <= 0.0)
    {
      v1141 = 5.0;
    }

    v7->_metaGroupingSubscribedTopicMultiplier = v1141;
    v1142 = FCAppConfigurationDoubleValue(v5, @"presentationBaselineClickValue", 0.0);
    if (v1142 < 0.0)
    {
      v1142 = 0.0;
    }

    v7->_presentationBaselineClickValue = v1142;
    v1143 = FCAppConfigurationDoubleValue(v5, @"heavyClickBaselineClickValue", 0.0);
    if (v1143 < 0.0)
    {
      v1143 = 0.0;
    }

    v7->_heavyClickBaselineClickValue = v1143;
    v1144 = FCAppConfigurationDoubleValue(v5, @"likeBaselineClickValue", 0.0);
    if (v1144 < 0.0)
    {
      v1144 = 0.0;
    }

    v7->_likeBaselineClickValue = v1144;
    v1145 = FCAppConfigurationDoubleValue(v5, @"shareBaselineClickValue", 0.0);
    if (v1145 < 0.0)
    {
      v1145 = 0.0;
    }

    v7->_shareBaselineClickValue = v1145;
    v1146 = FCAppConfigurationDoubleValue(v5, @"savedBaselineClickValue", 0.0);
    if (v1146 < 0.0)
    {
      v1146 = 0.0;
    }

    v7->_savedBaselineClickValue = v1146;
    v1147 = FCAppConfigurationDoubleValue(v5, @"subscribeBaselineClickValue", 0.0);
    if (v1147 < 0.0)
    {
      v1147 = 0.0;
    }

    v7->_subscribeBaselineClickValue = v1147;
    v1148 = FCAppConfigurationDoubleValue(v5, @"subscribeRelatedBaselineClickValue", 0.0);
    if (v1148 < 0.0)
    {
      v1148 = 0.0;
    }

    v7->_subscribeRelatedBaselineClickValue = v1148;
    v1149 = FCAppConfigurationDoubleValue(v5, @"existingSubscriptionBaselineClickValue", 0.0);
    if (v1149 < 0.0)
    {
      v1149 = 0.0;
    }

    v7->_existingSubscriptionBaselineClickValue = v1149;
    v1150 = FCAppConfigurationDoubleValue(v5, @"existingSubscriptionRelatedBaselineClickValue", 0.0);
    if (v1150 < 0.0)
    {
      v1150 = 0.0;
    }

    v7->_existingSubscriptionRelatedBaselineClickValue = v1150;
    v1151 = FCAppConfigurationDoubleValue(v5, @"tappedBaselineClickValue", 0.0);
    if (v1151 < 0.0)
    {
      v1151 = 0.0;
    }

    v7->_tappedBaselineClickValue = v1151;
    v1152 = FCAppConfigurationDoubleValue(v5, @"weakClickBaselineClickValue", 1.0);
    if (v1152 < 0.0)
    {
      v1152 = 1.0;
    }

    v7->_weakClickBaselineClickValue = v1152;
    v1153 = FCAppConfigurationDoubleValue(v5, @"unsubscribeBaselineClickValue", 0.0);
    if (v1153 < 0.0)
    {
      v1153 = 0.0;
    }

    v7->_unsubscribeBaselineClickValue = v1153;
    v1154 = FCAppConfigurationDoubleValue(v5, @"visitBaselineClickValue", 0.0);
    if (v1154 < 0.0)
    {
      v1154 = 0.0;
    }

    v7->_visitBaselineClickValue = v1154;
    v1155 = FCAppConfigurationDoubleValue(v5, @"dislikeBaselineClickValue", 0.0);
    if (v1155 < 0.0)
    {
      v1155 = 0.0;
    }

    v7->_dislikeBaselineClickValue = v1155;
    v1156 = FCAppConfigurationDoubleValue(v5, @"recommendationPresentationFeedBaselineClickValue", 0.0);
    if (v1156 < 0.0)
    {
      v1156 = 0.0;
    }

    v7->_recommendationPresentationFeedBaselineClickValue = v1156;
    v1157 = FCAppConfigurationDoubleValue(v5, @"recommendationPresentationExploreBaselineClickValue", 0.0);
    if (v1157 < 0.0)
    {
      v1157 = 0.0;
    }

    v7->_recommendationPresentationExploreBaselineClickValue = v1157;
    v1158 = FCAppConfigurationDoubleValue(v5, @"premiumSubscriptionActivationBaselineClickValue", 0.0);
    if (v1158 < 0.0)
    {
      v1158 = 0.0;
    }

    v7->_premiumSubscriptionActivationBaselineClickValue = v1158;
    v1159 = FCAppConfigurationDoubleValue(v5, @"muteBaselineClickValue", 0.0);
    if (v1159 < 0.0)
    {
      v1159 = 0.0;
    }

    v7->_muteBaselineClickValue = v1159;
    v1160 = FCAppConfigurationDoubleValue(v5, @"unmuteBaselineClickValue", 0.0);
    if (v1160 < 0.0)
    {
      v1160 = 0.0;
    }

    v7->_unmuteBaselineClickValue = v1160;
    v1161 = FCAppConfigurationDoubleValue(v5, @"videoInitiatePlaybackBaselineClickValue", 0.0);
    if (v1161 < 0.0)
    {
      v1161 = 0.0;
    }

    v7->_videoInitiatePlaybackBaselineClickValue = v1161;
    v1162 = FCAppConfigurationDoubleValue(v5, @"videoCompletePlaybackBaselineClickValue", 0.0);
    if (v1162 < 0.0)
    {
      v1162 = 0.0;
    }

    v7->_videoCompletePlaybackBaselineClickValue = v1162;
    v1163 = FCAppConfigurationDoubleValue(v5, @"videoComplete25BaselineClickValue", 0.0);
    if (v1163 < 0.0)
    {
      v1163 = 0.0;
    }

    v7->_videoComplete25BaselineClickValue = v1163;
    v1164 = FCAppConfigurationDoubleValue(v5, @"videoComplete50BaselineClickValue", 0.0);
    if (v1164 < 0.0)
    {
      v1164 = 0.0;
    }

    v7->_videoComplete50BaselineClickValue = v1164;
    v1165 = FCAppConfigurationDoubleValue(v5, @"videoComplete75BaselineClickValue", 0.0);
    if (v1165 < 0.0)
    {
      v1165 = 0.0;
    }

    v7->_videoComplete75BaselineClickValue = v1165;
    v1166 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetPresentationBaselineClickValue", 0.0);
    if (v1166 < 0.0)
    {
      v1166 = 0.0;
    }

    v7->_newsTodayWidgetPresentationBaselineClickValue = v1166;
    v1167 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetClickBaselineClickValue", 1.0);
    if (v1167 < 0.0)
    {
      v1167 = 1.0;
    }

    v7->_newsTodayWidgetClickBaselineClickValue = v1167;
    v1168 = FCAppConfigurationDoubleValue(v5, @"newsTodayWidgetVideoPlaybackBaselineClickValue", 0.0);
    if (v1168 < 0.0)
    {
      v1168 = 0.0;
    }

    v7->_newsTodayWidgetVideoPlaybackBaselineClickValue = v1168;
    v1169 = FCAppConfigurationDoubleValue(v5, @"appInstallBaselineClickValue", 0.0);
    if (v1169 < 0.0)
    {
      v1169 = 0.0;
    }

    v7->_appInstallBaselineClickValue = v1169;
    v1170 = FCAppConfigurationDoubleValue(v5, @"appInFocusBaselineClickValue", 0.0);
    if (v1170 < 0.0)
    {
      v1170 = 0.0;
    }

    v7->_appInFocusBaselineClickValue = v1170;
    v1171 = FCAppConfigurationDoubleValue(v5, @"safariHistoryBaselineClickValue", 0.0);
    if (v1171 < 0.0)
    {
      v1171 = 0.0;
    }

    v7->_safariHistoryBaselineClickValue = v1171;
    v1172 = FCAppConfigurationDoubleValue(v5, @"publisherBoostForSourceMoreFromFeedBaselineClickValue", 0.0);
    if (v1172 < 0.0)
    {
      v1172 = 0.0;
    }

    v7->_publisherBoostForSourceMoreFromFeedBaselineClickValue = v1172;
    v1173 = FCAppConfigurationDoubleValue(v5, @"topicBoostForSourceRelatedFeedBaselineClickValue", 0.0);
    if (v1173 < 0.0)
    {
      v1173 = 0.0;
    }

    v7->_topicBoostForSourceRelatedFeedBaselineClickValue = v1173;
    v1174 = FCAppConfigurationDoubleValue(v5, @"publisherBoostForIssueOpenBaselineClickValue", 0.0);
    if (v1174 < 0.0)
    {
      v1174 = 0.0;
    }

    v7->_publisherBoostForIssueOpenBaselineClickValue = v1174;
    v1175 = FCAppConfigurationDoubleValue(v5, @"trackVisitedBaselineClickValue", 1.0);
    if (v1175 < 0.0)
    {
      v1175 = 1.0;
    }

    v7->_trackVisitedBaselineClickValue = v1175;
    v1176 = FCAppConfigurationDoubleValue(v5, @"trackListenedBaselineClickValue", 3.0);
    if (v1176 < 0.0)
    {
      v1176 = 3.0;
    }

    v7->_trackListenedBaselineClickValue = v1176;
    v1177 = FCAppConfigurationDoubleValue(v5, @"trackFinishedBaselineClickValue", 10.0);
    if (v1177 < 0.0)
    {
      v1177 = 10.0;
    }

    v7->_trackFinishedBaselineClickValue = v1177;
    v1178 = FCAppConfigurationDoubleValue(v5, @"sportsTagSeenBaselineClickValue", 0.0);
    if (v1178 < 0.0)
    {
      v1178 = 0.0;
    }

    v7->_sportsTagSeenBaselineClickValue = v1178;
    v1179 = FCAppConfigurationDoubleValue(v5, @"ignoreBaselineClickValue", 0.0);
    if (v1179 < 0.0)
    {
      v1179 = 0.0;
    }

    v7->_ignoreBaselineClickValue = v1179;
    v1180 = FCAppConfigurationIntegerValue(v5, @"minClusterSizeIPhone", 3);
    v1181 = v1180;
    if (v1180 <= 0)
    {
      v1181 = 3;
    }

    v7->_minClusterSizeIPhone = v1181;
    v1182 = FCAppConfigurationIntegerValue(v5, @"maxClusterSizeIPhone", 30);
    v1183 = v1182;
    if (v1182 <= 0)
    {
      v1183 = 30;
    }

    v7->_maxClusterSizeIPhone = v1183;
    v1184 = FCAppConfigurationIntegerValue(v5, @"minMoreForYouSizeIPhone", 3);
    v1185 = v1184;
    if (v1184 <= 0)
    {
      v1185 = 3;
    }

    v7->_minMoreForYouSizeIPhone = v1185;
    v1186 = FCAppConfigurationIntegerValue(v5, @"maxMoreForYouSizeIPhone", 30);
    v1187 = v1186;
    if (v1186 <= 0)
    {
      v1187 = 30;
    }

    v7->_maxMoreForYouSizeIPhone = v1187;
    v1188 = FCAppConfigurationIntegerValue(v5, @"minIdealClusterSizeIPhone", 3);
    v1189 = v1188;
    if (v1188 <= 0)
    {
      v1189 = 3;
    }

    v7->_minIdealClusterSizeIPhone = v1189;
    v1190 = FCAppConfigurationIntegerValue(v5, @"maxIdealClusterSizeIPhone", 5);
    v1191 = v1190;
    if (v1190 <= 0)
    {
      v1191 = 5;
    }

    v7->_maxIdealClusterSizeIPhone = v1191;
    v1192 = FCAppConfigurationIntegerValue(v5, @"minClusterSizeIPhoneAutoFavorite", 3);
    v1193 = v1192;
    if (v1192 <= 0)
    {
      v1193 = 3;
    }

    v7->_minClusterSizeIPhoneAutoFavorite = v1193;
    v1194 = FCAppConfigurationIntegerValue(v5, @"maxClusterSizeIPhoneAutoFavorite", 3);
    v1195 = v1194;
    if (v1194 <= 0)
    {
      v1195 = 3;
    }

    v7->_maxClusterSizeIPhoneAutoFavorite = v1195;
    v1196 = FCAppConfigurationIntegerValue(v5, @"minIdealClusterSizeIPhoneAutoFavorite", 3);
    v1197 = v1196;
    if (v1196 <= 0)
    {
      v1197 = 3;
    }

    v7->_minIdealClusterSizeIPhoneAutoFavorite = v1197;
    v1198 = FCAppConfigurationIntegerValue(v5, @"maxIdealClusterSizeIPhoneAutoFavorite", 3);
    v1199 = v1198;
    if (v1198 <= 0)
    {
      v1199 = 3;
    }

    v7->_maxIdealClusterSizeIPhoneAutoFavorite = v1199;
    v1200 = FCAppConfigurationIntegerValue(v5, @"maxPublisherOccurrencesIPhone", 2);
    v1201 = v1200;
    if (v1200 <= 0)
    {
      v1201 = 2;
    }

    v7->_maxPublisherOccurrencesIPhone = v1201;
    v1202 = FCAppConfigurationIntegerValue(v5, @"maxPublisherOccurrencesIPhoneBestOfBundle", 2);
    v1203 = v1202;
    if (v1202 <= 0)
    {
      v1203 = 2;
    }

    v7->_maxPublisherOccurrencesIPhoneBestOfBundle = v1203;
    v1204 = FCAppConfigurationIntegerValue(v5, @"maxPublisherOccurrencesIPhoneForYouGroup", 2);
    v1205 = v1204;
    if (v1204 <= 0)
    {
      v1205 = 2;
    }

    v7->_maxPublisherOccurrencesIPhoneForYouGroup = v1205;
    v1206 = FCAppConfigurationIntegerValue(v5, @"maxPublisherOccurrencesIPhoneGreatStoriesYouMissed", 2);
    v1207 = v1206;
    if (v1206 <= 0)
    {
      v1207 = 2;
    }

    v7->_maxPublisherOccurrencesIPhoneGreatStoriesYouMissed = v1207;
    v1208 = FCAppConfigurationIntegerValue(v5, @"maxUnpaidArticlesIPhone", 1);
    v1209 = v1208;
    if (v1208 < 0)
    {
      v1209 = 1;
    }

    v7->_maxUnpaidArticlesIPhone = v1209;
    v1210 = FCAppConfigurationIntegerValue(v5, @"maxUnpaidArticlesIPhoneBestOfBundle", 99);
    v1211 = v1210;
    if (v1210 < 0)
    {
      v1211 = 99;
    }

    v7->_maxUnpaidArticlesIPhoneBestOfBundle = v1211;
    v1212 = FCAppConfigurationIntegerValue(v5, @"maxUnpaidArticlesIPhoneForYouGroup", 1);
    v1213 = v1212;
    if (v1212 < 0)
    {
      v1213 = 1;
    }

    v7->_maxUnpaidArticlesIPhoneForYouGroup = v1213;
    v1214 = FCAppConfigurationIntegerValue(v5, @"maxUnpaidArticlesIPhoneGreatStoriesYouMissed", 1);
    v1215 = v1214;
    if (v1214 < 0)
    {
      v1215 = 1;
    }

    v7->_maxUnpaidArticlesIPhoneGreatStoriesYouMissed = v1215;
    v1216 = FCAppConfigurationIntegerValue(v5, @"maxNativeAdCountIPhone", 0);
    v1217 = v1216;
    if (v1216 < 0)
    {
      v1217 = 0;
    }

    v7->_maxNativeAdCountIPhone = v1217;
    v1218 = FCAppConfigurationIntegerValue(v5, @"maxNativeAdCountIPhoneBestOfBundle", 0);
    v1219 = v1218;
    if (v1218 < 0)
    {
      v1219 = 0;
    }

    v7->_maxNativeAdCountIPhoneBestOfBundle = v1219;
    v1220 = FCAppConfigurationIntegerValue(v5, @"maxNativeAdCountIPhoneForYouGroup", 0);
    v1221 = v1220;
    if (v1220 < 0)
    {
      v1221 = 0;
    }

    v7->_maxNativeAdCountIPhoneForYouGroup = v1221;
    v1222 = FCAppConfigurationIntegerValue(v5, @"maxNativeAdCountIPhoneGreatStoriesYouMissed", 0);
    v1223 = v1222;
    if (v1222 < 0)
    {
      v1223 = 0;
    }

    v7->_maxNativeAdCountIPhoneGreatStoriesYouMissed = v1223;
    v1224 = FCAppConfigurationIntegerValue(v5, @"minClusterSizeIPad", 3);
    v1225 = v1224;
    if (v1224 <= 0)
    {
      v1225 = 3;
    }

    v7->_minClusterSizeIPad = v1225;
    v1226 = FCAppConfigurationIntegerValue(v5, @"maxClusterSizeIPad", 30);
    v1227 = v1226;
    if (v1226 <= 0)
    {
      v1227 = 30;
    }

    v7->_maxClusterSizeIPad = v1227;
    v1228 = FCAppConfigurationIntegerValue(v5, @"minMoreForYouSizeIPad", 3);
    v1229 = v1228;
    if (v1228 <= 0)
    {
      v1229 = 3;
    }

    v7->_minMoreForYouSizeIPad = v1229;
    v1230 = FCAppConfigurationIntegerValue(v5, @"maxMoreForYouSizeIPad", 30);
    v1231 = v1230;
    if (v1230 <= 0)
    {
      v1231 = 30;
    }

    v7->_maxMoreForYouSizeIPad = v1231;
    v1232 = FCAppConfigurationIntegerValue(v5, @"minIdealClusterSizeIPad", 5);
    v1233 = v1232;
    if (v1232 <= 0)
    {
      v1233 = 5;
    }

    v7->_minIdealClusterSizeIPad = v1233;
    v1234 = FCAppConfigurationIntegerValue(v5, @"maxIdealClusterSizeIPad", 9);
    v1235 = v1234;
    if (v1234 <= 0)
    {
      v1235 = 9;
    }

    v7->_maxIdealClusterSizeIPad = v1235;
    v1236 = FCAppConfigurationIntegerValue(v5, @"minClusterSizeIPadAutoFavorite", 5);
    v1237 = v1236;
    if (v1236 <= 0)
    {
      v1237 = 5;
    }

    v7->_minClusterSizeIPadAutoFavorite = v1237;
    v1238 = FCAppConfigurationIntegerValue(v5, @"maxClusterSizeIPadAutoFavorite", 5);
    v1239 = v1238;
    if (v1238 <= 0)
    {
      v1239 = 5;
    }

    v7->_maxClusterSizeIPadAutoFavorite = v1239;
    v1240 = FCAppConfigurationIntegerValue(v5, @"minIdealClusterSizeIPadAutoFavorite", 5);
    v1241 = v1240;
    if (v1240 <= 0)
    {
      v1241 = 5;
    }

    v7->_minIdealClusterSizeIPadAutoFavorite = v1241;
    v1242 = FCAppConfigurationIntegerValue(v5, @"maxIdealClusterSizeIPadAutoFavorite", 5);
    v1243 = v1242;
    if (v1242 <= 0)
    {
      v1243 = 5;
    }

    v7->_maxIdealClusterSizeIPadAutoFavorite = v1243;
    v1244 = FCAppConfigurationIntegerValue(v5, @"maxPublisherOccurrencesIPad", 2);
    v1245 = v1244;
    if (v1244 <= 0)
    {
      v1245 = 2;
    }

    v7->_maxPublisherOccurrencesIPad = v1245;
    v1246 = FCAppConfigurationIntegerValue(v5, @"maxPublisherOccurrencesIPadBestOfBundle", 2);
    v1247 = v1246;
    if (v1246 <= 0)
    {
      v1247 = 2;
    }

    v7->_maxPublisherOccurrencesIPadBestOfBundle = v1247;
    v1248 = FCAppConfigurationIntegerValue(v5, @"maxPublisherOccurrencesIPadForYouGroup", 2);
    v1249 = v1248;
    if (v1248 <= 0)
    {
      v1249 = 2;
    }

    v7->_maxPublisherOccurrencesIPadForYouGroup = v1249;
    v1250 = FCAppConfigurationIntegerValue(v5, @"maxPublisherOccurrencesIPadGreatStoriesYouMissed", 2);
    v1251 = v1250;
    if (v1250 <= 0)
    {
      v1251 = 2;
    }

    v7->_maxPublisherOccurrencesIPadGreatStoriesYouMissed = v1251;
    v1252 = FCAppConfigurationIntegerValue(v5, @"maxUnpaidArticlesIPad", 1);
    v1253 = v1252;
    if (v1252 < 0)
    {
      v1253 = 1;
    }

    v7->_maxUnpaidArticlesIPad = v1253;
    v1254 = FCAppConfigurationIntegerValue(v5, @"maxUnpaidArticlesIPadBestOfBundle", 99);
    v1255 = v1254;
    if (v1254 < 0)
    {
      v1255 = 99;
    }

    v7->_maxUnpaidArticlesIPadBestOfBundle = v1255;
    v1256 = FCAppConfigurationIntegerValue(v5, @"maxUnpaidArticlesIPadForYouGroup", 1);
    v1257 = v1256;
    if (v1256 < 0)
    {
      v1257 = 1;
    }

    v7->_maxUnpaidArticlesIPadForYouGroup = v1257;
    v1258 = FCAppConfigurationIntegerValue(v5, @"maxUnpaidArticlesIPadGreatStoriesYouMissed", 1);
    v1259 = v1258;
    if (v1258 < 0)
    {
      v1259 = 1;
    }

    v7->_maxUnpaidArticlesIPadGreatStoriesYouMissed = v1259;
    v1260 = FCAppConfigurationIntegerValue(v5, @"maxNativeAdCountIPad", 0);
    v1261 = v1260;
    if (v1260 < 0)
    {
      v1261 = 0;
    }

    v7->_maxNativeAdCountIPad = v1261;
    v1262 = FCAppConfigurationIntegerValue(v5, @"maxNativeAdCountIPadBestOfBundle", 0);
    v1263 = v1262;
    if (v1262 < 0)
    {
      v1263 = 0;
    }

    v7->_maxNativeAdCountIPadBestOfBundle = v1263;
    v1264 = FCAppConfigurationIntegerValue(v5, @"maxNativeAdCountIPadForYouGroup", 0);
    v1265 = v1264;
    if (v1264 < 0)
    {
      v1265 = 0;
    }

    v7->_maxNativeAdCountIPadForYouGroup = v1265;
    v1266 = FCAppConfigurationIntegerValue(v5, @"maxNativeAdCountIPadGreatStoriesYouMissed", 0);
    v1267 = v1266;
    if (v1266 < 0)
    {
      v1267 = 0;
    }

    v7->_maxNativeAdCountIPadGreatStoriesYouMissed = v1267;
    v1268 = FCAppConfigurationDoubleValue(v5, @"relatedTopicMultiplier", 0.8);
    if (v1268 > 1.0 || v1268 < 0.0)
    {
      v1268 = 0.8;
    }

    v7->_relatedTopicMultiplier = v1268;
    v1270 = FCAppConfigurationDoubleValue(v5, @"relatedTopicRatioFilter", 0.3);
    if (v1270 > 1.0 || v1270 < 0.0)
    {
      v1270 = 0.3;
    }

    v7->_relatedTopicRatioFilter = v1270;
    v7->_managedTopicMultiplier = FCAppConfigurationDoubleValue(v5, @"managedTopicMultiplier", 1.0);
    v7->_managedWinnerTopicMultiplier = FCAppConfigurationDoubleValue(v5, @"managedWinnerTopicMultiplier", 1.0);
    v7->_topicAutofavoritedMultiplier = FCAppConfigurationDoubleValue(v5, @"topicAutofavoritedMultiplier", 1.0);
    v7->_topicFavoritedMultiplier = FCAppConfigurationDoubleValue(v5, @"topicFavoritedMultiplier", 1.0);
    v7->_topicGroupSizeMultiplier = FCAppConfigurationDoubleValue(v5, @"topicGroupSizeMultiplier", 1.0);
    v7->_topicGroupableMultiplier = FCAppConfigurationDoubleValue(v5, @"topicGroupableMultiplier", 1.0);
    v7->_channelScoreWeight = FCAppConfigurationDoubleValue(v5, @"channelScoreWeight", 0.5);
    v7->_topicScoreWeight = FCAppConfigurationDoubleValue(v5, @"topicScoreWeight", 0.5);
    v7->_topicSpecificityMultiplier = FCAppConfigurationDoubleValue(v5, @"topicSpecificityMultiplier", 1.0);
    v1272 = FCAppConfigurationIntegerValue(v5, @"publisherDiversityMinPublisherCount", 3);
    v1273 = v1272;
    if (v1272 <= 0)
    {
      v1273 = 3;
    }

    v7->_publisherDiversityMinPublisherCount = v1273;
    v1274 = FCAppConfigurationIntegerValue(v5, @"publisherDiversityMaxPublisherCount", 10);
    v1275 = v1274;
    if (v1274 <= 0)
    {
      v1275 = 10;
    }

    v7->_publisherDiversityMaxPublisherCount = v1275;
    v1276 = FCAppConfigurationDoubleValue(v5, @"publisherDiversityMaxArticleFilter", 0.3);
    if (v1276 <= 0.0)
    {
      v1276 = 0.3;
    }

    v7->_publisherDiversityMaxArticleFilter = v1276;
    v1277 = FCAppConfigurationIntegerValue(v5, @"maxEvergreenArticlesPerGroup", 2);
    v1278 = v1277;
    if (v1277 < 0)
    {
      v1278 = 2;
    }

    v7->_maxEvergreenArticlesPerGroup = v1278;
    v1279 = FCAppConfigurationDoubleValue(v5, @"safariSignalWeight", 1.0);
    if (v1279 > 1.0 || v1279 < 0.0)
    {
      v1279 = 1.0;
    }

    v7->_safariSignalWeight = v1279;
    v1281 = FCAppConfigurationDoubleValue(v5, @"safariTimeDecayMultiplier", 0.99);
    if (v1281 <= 0.0)
    {
      v1281 = 0.99;
    }

    v7->_safariTimeDecayMultiplier = v1281;
    v1282 = FCAppConfigurationDoubleValue(v5, @"safariOccurrenceDecayMultiplier", 0.995);
    if (v1282 > 1.0 || v1282 < 0.0)
    {
      v1282 = 0.995;
    }

    v7->_safariOccurrenceDecayMultiplier = v1282;
    v1284 = FCAppConfigurationDoubleValue(v5, @"safariEventBlackoutSeconds", 90.0);
    if (v1284 < 0.0)
    {
      v1284 = 90.0;
    }

    v7->_safariEventBlackoutSeconds = v1284;
    v1285 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMinObservationsSafari", 4.0);
    if (v1285 <= 0.0)
    {
      v1285 = 4.0;
    }

    v7->_autoFavoriteMinObservationsSafari = v1285;
    v1286 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMinScoreSafari", 3.0);
    if (v1286 <= 0.0)
    {
      v1286 = 3.0;
    }

    v7->_autoFavoriteMinScoreSafari = v1286;
    v7->_safariTagFavorabilityExponent = FCAppConfigurationDoubleValue(v5, @"safariTagFavorabilityExponent", 1.0);
    v7->_safariPriorFactorExponent = FCAppConfigurationDoubleValue(v5, @"safariPriorFactorExponent", 0.0);
    v1287 = FCAppConfigurationDoubleValue(v5, @"appUsageSignalWeight", 1.0);
    if (v1287 > 1.0 || v1287 < 0.0)
    {
      v1287 = 1.0;
    }

    v7->_appUsageSignalWeight = v1287;
    v1289 = FCAppConfigurationDoubleValue(v5, @"appUsageTimeDecayMultiplier", 0.99);
    if (v1289 > 1.0 || v1289 < 0.0)
    {
      v1289 = 0.99;
    }

    v7->_appUsageTimeDecayMultiplier = v1289;
    v1291 = FCAppConfigurationDoubleValue(v5, @"appUsageOccurrenceDecayMultiplier", 0.995);
    if (v1291 <= 0.0)
    {
      v1291 = 0.995;
    }

    v7->_appUsageOccurrenceDecayMultiplier = v1291;
    v1292 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMinObservationsExtAppUsage", 1.0);
    if (v1292 <= 0.0)
    {
      v1292 = 1.0;
    }

    v7->_autoFavoriteMinObservationsExtAppUsage = v1292;
    v1293 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMinScoreExtAppUsage", 1.0);
    if (v1293 <= 0.0)
    {
      v1293 = 1.0;
    }

    v7->_autoFavoriteMinScoreExtAppUsage = v1293;
    v7->_appUsageTagFavorabilityExponent = FCAppConfigurationDoubleValue(v5, @"appUsageTagFavorabilityExponent", 1.0);
    v7->_appUsagePriorFactorExponent = FCAppConfigurationDoubleValue(v5, @"appUsagePriorFactorExponent", 0.0);
    v1294 = FCAppConfigurationDoubleValue(v5, @"portraitSignalWeight", 1.0);
    if (v1294 > 1.0 || v1294 < 0.0)
    {
      v1294 = 1.0;
    }

    v7->_portraitSignalWeight = v1294;
    v1296 = FCAppConfigurationDoubleValue(v5, @"portraitDecayRate", 1209600.0);
    if (v1296 < 0.0)
    {
      v1296 = 1209600.0;
    }

    v7->_portraitDecayRate = v1296;
    v1297 = FCAppConfigurationDoubleValue(v5, @"portraitGlobalThreshold", 0.6);
    if (v1297 > 1.0 || v1297 < 0.0)
    {
      v1297 = 0.6;
    }

    v7->_portraitGlobalThreshold = v1297;
    v7->_portraitTagFavorabilityExponent = FCAppConfigurationDoubleValue(v5, @"portraitTagFavorabilityExponent", 1.0);
    v7->_portraitPriorFactorExponent = FCAppConfigurationDoubleValue(v5, @"portraitPriorFactorExponent", 0.0);
    v1299 = FCAppConfigurationDoubleValue(v5, @"internalUsageSignalWeight", 1.0);
    if (v1299 > 1.0 || v1299 < 0.0)
    {
      v1299 = 1.0;
    }

    v7->_internalUsageSignalWeight = v1299;
    v1301 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMaxIdleTime", 604800.0);
    if (v1301 <= 0.0)
    {
      v1301 = 604800.0;
    }

    v7->_autoFavoriteMaxIdleTime = v1301;
    v1302 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMinClicks", 10.0);
    if (v1302 <= 0.0)
    {
      v1302 = 10.0;
    }

    v7->_autoFavoriteMinClicks = v1302;
    v1303 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMinEvents", 25.0);
    if (v1303 <= 0.0)
    {
      v1303 = 25.0;
    }

    v7->_autoFavoriteMinEvents = v1303;
    v1304 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMinRate", 0.1);
    if (v1304 <= 0.0)
    {
      v1304 = 0.1;
    }

    v7->_autoFavoriteMinRate = v1304;
    v1305 = FCAppConfigurationDoubleValue(v5, @"autoFavoriteMinRelativeRate", 0.75);
    if (v1305 <= 0.0)
    {
      v1305 = 0.75;
    }

    v7->_autoFavoriteMinRelativeRate = v1305;
    v1306 = FCAppConfigurationDoubleValue(v5, @"autoUnfavoriteFactor", 1.1);
    if (v1306 <= 0.0)
    {
      v1306 = 1.1;
    }

    v7->_autoUnfavoriteFactor = v1306;
    v1307 = FCAppConfigurationDoubleValue(v5, @"autoGroupableFactor", 0.8);
    if (v1307 <= 0.0)
    {
      v1307 = 0.8;
    }

    v7->_autoGroupableFactor = v1307;
    v7->_autoFavoriteTagFavorabilityExponent = FCAppConfigurationDoubleValue(v5, @"autoFavoriteTagFavorabilityExponent", 1.0);
    v7->_autoFavoritePriorFactorExponent = FCAppConfigurationDoubleValue(v5, @"autoFavoritePriorFactorExponent", 1.0);
    v1308 = FCAppConfigurationDoubleValue(v5, @"groupImpressionBiasCorrectionFactor", 1.0);
    if (v1308 >= 1.0 || v1308 < 0.0)
    {
      v1308 = 1.0;
    }

    v7->_groupImpressionBiasCorrectionFactor = v1308;
    v1310 = FCAppConfigurationDoubleValue(v5, @"indexImpressionBiasCorrectionFactor", 1.0);
    if (v1310 >= 1.0 || v1310 < 0.0)
    {
      v1310 = 1.0;
    }

    v7->_indexImpressionBiasCorrectionFactor = v1310;
    v1312 = FCAppConfigurationIntegerValue(v5, @"maxNumberOfSuggestions", 40);
    v1313 = v1312;
    if (v1312 < 0)
    {
      v1313 = 40;
    }

    v7->_maxNumberOfSuggestions = v1313;
    v1314 = FCAppConfigurationDoubleValue(v5, @"uGroupMinimumSubscribedChannelSourceFeedArticleRatio", 0.5);
    if (v1314 < 0.0)
    {
      v1314 = 0.5;
    }

    v7->_uGroupMinimumSubscribedChannelSourceFeedArticleRatio = v1314;
    v7->_numEventsToDisableDefaultTopics = FCAppConfigurationIntegerValue(v5, @"numEventsToDisableDefaultTopics", -1);
    v1315 = FCAppConfigurationIntegerValue(v5, @"numSubscriptionsToDisableDefaultTopics", 5);
    v1316 = v1315;
    if (v1315 < 0)
    {
      v1316 = 5;
    }

    v7->_numSubscriptionsToDisableDefaultTopics = v1316;
    v1317 = FCAppConfigurationIntegerValue(v5, @"auditionedAutoFavoritesEmitterLimit", 1);
    v1318 = v1317;
    if (v1317 < 0)
    {
      v1318 = 1;
    }

    v7->_auditionedAutoFavoritesEmitterLimit = v1318;
    v1319 = FCAppConfigurationDoubleValue(v5, @"topicDiversityThreshold", 1.0);
    if (v1319 >= 1.0 || v1319 < 0.0)
    {
      v1319 = 1.0;
    }

    v7->_topicDiversityThreshold = v1319;
    v1321 = FCAppConfigurationIntegerValue(v5, @"topicDiversityWindowSize", 3);
    v1322 = v1321;
    if (v1321 <= 0)
    {
      v1322 = 3;
    }

    v7->_topicDiversityWindowSize = v1322;
    v1323 = FCAppConfigurationIntegerValue(v5, @"minBaselineEventsToSubmitUserVector", 0);
    v1324 = v1323;
    if (v1323 < 0)
    {
      v1324 = 0;
    }

    v7->_minBaselineEventsToSubmitUserVector = v1324;
    v7->_personalizesSportsTagsInUserVector = FCAppConfigurationBoolValue(v5, @"personalizesFavoritedSportsTags", 0);
    v7->_shadowModeScoringEnabled = FCAppConfigurationBoolValue(v5, @"shadowModeScoringEnabled", 0);
    v7->_topicFeedFilterMutedTopics = FCAppConfigurationBoolValue(v5, @"topicFeedFilterMutedTopics", 1);
    v7->_magazineFeedGroupScoreWeight = FCAppConfigurationDoubleValue(v5, @"magazineFeedGroupScoreWeight", 0.0);
    v7->_audioFeedGroupScoreWeight = FCAppConfigurationDoubleValue(v5, @"audioFeedGroupScoreWeight", 0.0);
    v7->_forYouGroupFilteredSubsetCount = FCAppConfigurationIntegerValue(v5, @"forYouGroupFilteredSubsetCount", 100);
    v7->_forYouGroupAllowUnfilteredArticles = FCAppConfigurationBoolValue(v5, @"forYouGroupAllowUnfilteredArticles", 0);
    v7->_topStoriesGroupAggregatesGroupBias = FCAppConfigurationDoubleValue(v5, @"topStoriesGroupAggregatesGroupBias", 1.0);
    v7->_trendingGroupAggregatesGroupBias = FCAppConfigurationDoubleValue(v5, @"trendingGroupAggregatesGroupBias", 1.0);
    v7->_clicksToImpressionsRatioMaximum = FCAppConfigurationDoubleValue(v5, @"clicksToImpressionsRatioMaximum", 1.0);
    v7->_featureClicksByAction[1] = v7->_presentationClickValue;
    *&v7->_featureClicksByAction[2] = *&v7->_tappedClickValue;
    *&v7->_featureClicksByAction[4] = *&v7->_heavyClickClickValue;
    v7->_featureClicksByAction[6] = v7->_dislikeClickValue;
    *&v7->_featureClicksByAction[7] = *&v7->_shareClickValue;
    unsubscribeClickValue = v7->_unsubscribeClickValue;
    v7->_featureClicksByAction[9] = v7->_subscribeClickValue;
    v7->_featureClicksByAction[10] = unsubscribeClickValue;
    v7->_featureClicksByAction[11] = v7->_visitClickValue;
    *&v7->_featureClicksByAction[12] = *&v7->_subscribeRelatedClickValue;
    v7->_featureClicksByAction[14] = v7->_existingSubscriptionRelatedClickValue;
    v1326 = *&v7->_premiumSubscriptionActivationClickValue;
    *&v7->_featureClicksByAction[15] = *&v7->_recommendationPresentationFeedClickValue;
    *&v7->_featureClicksByAction[17] = v1326;
    *&v7->_featureClicksByAction[19] = *&v7->_unmuteClickValue;
    v7->_featureClicksByAction[21] = v7->_videoCompletePlaybackClickValue;
    *&v7->_featureClicksByAction[22] = *&v7->_newsTodayWidgetPresentationClickValue;
    *&v7->_featureClicksByAction[24] = *&v7->_newsTodayWidgetVideoPlaybackClickValue;
    *&v7->_featureClicksByAction[26] = *&v7->_appInFocusClickValue;
    *&v7->_featureClicksByAction[28] = *&v7->_videoComplete25ClickValue;
    v7->_featureClicksByAction[30] = v7->_videoComplete75ClickValue;
    *&v7->_featureClicksByAction[31] = *&v7->_publisherBoostForSourceMoreFromFeedClickValue;
    v7->_featureClicksByAction[33] = v7->_publisherBoostForIssueOpenClickValue;
    v7->_featureImpressionsByAction[1] = v7->_presentationImpressionValue;
    v1327 = *&v7->_heavyClickImpressionValue;
    v1328 = *&v7->_shareImpressionValue;
    *v8 = *&v7->_tappedImpressionValue;
    *&v7->_featureImpressionsByAction[4] = v1327;
    v7->_featureImpressionsByAction[6] = v7->_dislikeImpressionValue;
    *&v7->_featureImpressionsByAction[7] = v1328;
    *&v1327 = v7->_unsubscribeImpressionValue;
    v7->_featureImpressionsByAction[9] = v7->_subscribeImpressionValue;
    *&v7->_featureImpressionsByAction[10] = v1327;
    v7->_featureImpressionsByAction[11] = v7->_visitImpressionValue;
    *&v7->_featureImpressionsByAction[12] = *&v7->_subscribeRelatedImpressionValue;
    v7->_featureImpressionsByAction[14] = v7->_existingSubscriptionRelatedImpressionValue;
    v1329 = *&v7->_premiumSubscriptionActivationImpressionValue;
    *&v7->_featureImpressionsByAction[15] = *&v7->_recommendationPresentationFeedImpressionValue;
    *&v7->_featureImpressionsByAction[17] = v1329;
    *&v7->_featureImpressionsByAction[19] = *&v7->_unmuteImpressionValue;
    v7->_featureImpressionsByAction[21] = v7->_videoCompletePlaybackImpressionValue;
    v1330 = *&v7->_newsTodayWidgetVideoPlaybackImpressionValue;
    *&v7->_featureImpressionsByAction[22] = *&v7->_newsTodayWidgetPresentationImpressionValue;
    *&v7->_featureImpressionsByAction[24] = v1330;
    v1331 = *&v7->_videoComplete25ImpressionValue;
    *&v7->_featureImpressionsByAction[26] = *&v7->_appInFocusImpressionValue;
    *&v7->_featureImpressionsByAction[28] = v1331;
    v7->_featureImpressionsByAction[30] = v7->_videoComplete75ImpressionValue;
    *&v7->_featureImpressionsByAction[31] = *&v7->_publisherBoostForSourceMoreFromFeedImpressionValue;
    v7->_featureImpressionsByAction[33] = v7->_publisherBoostForIssueOpenImpressionValue;
    v7->_baselineClicksByAction[1] = v7->_presentationBaselineClickValue;
    v1332 = *&v7->_heavyClickBaselineClickValue;
    *&v7->_baselineClicksByAction[2] = *&v7->_tappedBaselineClickValue;
    *&v7->_baselineClicksByAction[4] = v1332;
    v7->_baselineClicksByAction[6] = v7->_dislikeBaselineClickValue;
    *&v7->_baselineClicksByAction[7] = *&v7->_shareBaselineClickValue;
    v7->_baselineClicksByAction[9] = v7->_subscribeBaselineClickValue;
    v7->_baselineClicksByAction[10] = v7->_unsubscribeBaselineClickValue;
    v7->_baselineClicksByAction[11] = v7->_visitBaselineClickValue;
    *&v7->_baselineClicksByAction[12] = *&v7->_subscribeRelatedBaselineClickValue;
    v7->_baselineClicksByAction[14] = v7->_existingSubscriptionRelatedBaselineClickValue;
    v1333 = *&v7->_premiumSubscriptionActivationBaselineClickValue;
    *&v7->_baselineClicksByAction[15] = *&v7->_recommendationPresentationFeedBaselineClickValue;
    *&v7->_baselineClicksByAction[17] = v1333;
    *&v7->_baselineClicksByAction[19] = *&v7->_unmuteBaselineClickValue;
    v7->_baselineClicksByAction[21] = v7->_videoCompletePlaybackBaselineClickValue;
    v1334 = *&v7->_newsTodayWidgetVideoPlaybackBaselineClickValue;
    *&v7->_baselineClicksByAction[22] = *&v7->_newsTodayWidgetPresentationBaselineClickValue;
    *&v7->_baselineClicksByAction[24] = v1334;
    v1335 = *&v7->_videoComplete25BaselineClickValue;
    *&v7->_baselineClicksByAction[26] = *&v7->_appInFocusBaselineClickValue;
    *&v7->_baselineClicksByAction[28] = v1335;
    v7->_baselineClicksByAction[30] = v7->_videoComplete75BaselineClickValue;
    *&v7->_baselineClicksByAction[31] = *&v7->_publisherBoostForSourceMoreFromFeedBaselineClickValue;
    v7->_baselineClicksByAction[33] = v7->_publisherBoostForIssueOpenBaselineClickValue;
    v7->_baselineImpressionsByAction[1] = v7->_presentationBaselineImpressionValue;
    v1336 = *&v7->_heavyClickBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[2] = *&v7->_tappedBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[4] = v1336;
    v7->_baselineImpressionsByAction[6] = v7->_dislikeBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[7] = *&v7->_shareBaselineImpressionValue;
    v7->_baselineImpressionsByAction[9] = v7->_subscribeBaselineImpressionValue;
    v7->_baselineImpressionsByAction[10] = v7->_unsubscribeBaselineImpressionValue;
    v7->_baselineImpressionsByAction[11] = v7->_visitBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[12] = *&v7->_subscribeRelatedBaselineImpressionValue;
    v7->_baselineImpressionsByAction[14] = v7->_existingSubscriptionRelatedBaselineImpressionValue;
    v1337 = *&v7->_premiumSubscriptionActivationBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[15] = *&v7->_recommendationPresentationFeedBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[17] = v1337;
    *&v7->_baselineImpressionsByAction[19] = *&v7->_unmuteBaselineImpressionValue;
    v7->_baselineImpressionsByAction[21] = v7->_videoCompletePlaybackBaselineImpressionValue;
    v1338 = *&v7->_newsTodayWidgetVideoPlaybackBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[22] = *&v7->_newsTodayWidgetPresentationBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[24] = v1338;
    v1339 = *&v7->_videoComplete25BaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[26] = *&v7->_appInFocusBaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[28] = v1339;
    v7->_baselineImpressionsByAction[30] = v7->_videoComplete75BaselineImpressionValue;
    *&v7->_baselineImpressionsByAction[31] = *&v7->_publisherBoostForSourceMoreFromFeedBaselineImpressionValue;
    v7->_baselineImpressionsByAction[33] = v7->_publisherBoostForIssueOpenBaselineImpressionValue;
    v7->_filterableNotificationThresholdMultiplier = FCAppConfigurationDoubleValue(v5, @"filterableNotificationThresholdMultiplier", 1.0);
    v1340 = FCAppConfigurationDoubleValue(v5, @"minimumMyMagazinesIssueScoreBaselineMultiplier", 0.0);
    if (v1340 < 0.0)
    {
      v1340 = 0.0;
    }

    v7->_minimumMyMagazinesIssueScoreBaselineMultiplier = v1340;
    v7->_maxNumberOfTotalTopicAndChannelGroups = FCAppConfigurationIntegerValue(v5, @"maxNumberOfTotalTopicAndChannelGroups", 1000);
    v7->_scoringVersion = FCAppConfigurationIntegerValue(v5, @"scoringVersion", 0);
    v1341 = FCAppConfigurationNumberValue(v5, @"maxExternalSignalEventCount", &unk_1F2E70710);
    v7->_maxExternalSignalEventCount = [v1341 integerValue];
  }

  return v7;
}

- (FCPersonalizationTreatment)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:5];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"treatmentDictionary"];

  v9 = [(FCPersonalizationTreatment *)self initWithPersonalizationTreatmentDictionary:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (*&self->_pbTreatment != 0)
  {
    v5 = v4;
    [v4 encodeObject:? forKey:?];
    v4 = v5;
  }
}

@end