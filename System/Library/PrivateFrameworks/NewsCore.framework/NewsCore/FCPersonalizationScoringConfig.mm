@interface FCPersonalizationScoringConfig
- (FCPersonalizationScoringConfig)init;
- (FCPersonalizationScoringConfig)initWithAnfMultiplier:(double)multiplier articleLengthAggregateWeight:(double)weight articleReadPenalty:(double)penalty articleListenedPenalty:(double)listenedPenalty audioMultiplierForFreeUsers:(double)users audioMultiplierForTrialUsers:(double)trialUsers audioMultiplierForPaidUsers:(double)paidUsers autofavoritedVoteCoefficient:(uint64_t)self0 baselineRatePrior:(void *)self1 bundleFreeMultiplierForFreeUsers:(BOOL)self2 bundleFreeMultiplierForTrialUsers:(void *)self3 bundleFreeMultiplierForPaidUsers:(void *)self4 bundlePaidMultiplierForFreeUsers:(void *)self5 bundlePaidMultiplierForTrialUsers:(BOOL)self6 bundlePaidMultiplierForPaidUsers:(double)self7 conversionCoefficientForFreeUsers:(double)self8 conversionCoefficientForTrialUsers:(double)self9 conversionCoefficientForPaidUsers:(double)coefficientForPaidUsers conversionCohort:(double)cohort ctrWithOneAutofavorited:(double)autofavorited ctrWithOneSubscribed:(double)subscribed ctrWithSubscribedChannel:(double)channel ctrWithThreeAutofavorited:(double)threeAutofavorited ctrWithThreeSubscribed:(double)threeSubscribed ctrWithTwoAutofavorited:(double)twoAutofavorited ctrWithTwoSubscribed:(double)twoSubscribed ctrWithZeroAutofavorited:(double)zeroAutofavorited ctrWithZeroSubscribed:(double)multiplier0 decayFactor:(double)multiplier1 featuredMultiplierForFreeUsers:(double)multiplier2 featuredMultiplierForTrialUsers:(double)multiplier3 featuredMultiplierForPaidUsers:(double)multiplier4 evergreenMultiplierForFreeUsers:(double)multiplier5 evergreenMultiplierForTrialUsers:(double)multiplier6 evergreenMultiplierForPaidUsers:(double)multiplier7 globalScoreCoefficientFree:(double)multiplier8 globalScoreCoefficientPaid:(double)multiplier9 globalScoreCoefficientHalfLife:(double)weight0 globalScoreCoefficientInitialMultiplier:(double)weight1 globalScoreDemocratizationFactor:(double)weight2 conversionScoreDemocratizationFactor:(double)weight3 headlineSeenPenalty:(double)weight4 halfLifeCoefficient:(double)weight5 userFeedbackHalfLifeCoefficient:(double)weight6 evergreenHalfLifeCoefficient:(double)weight7 respectHalfLifeOverride:(double)weight8 mutedVoteCoefficient:(double)weight9 publisherAggregateWeight:(double)penalty0 sparseTagsPenalty:(double)penalty1 subscribedChannelScoreCoefficient:(double)penalty2 subscribedTopicsScoreCoefficient:(double)penalty3 userCohort:(double)penalty4 lowFlowBoostFetchCountWeight:(double)penalty5 lowFlowBoostFactor:(double)penalty6 lowFlowBoostMaxProductFactor:(double)penalty7 lowFlowBoostFetchEstimationConfig:(double)penalty8 lowFlowBoostEventEstimationConfig:(double)penalty9 nicheContentBoostOnlyAboveBaselineMembership:(double)listenedPenalty0 nicheContentBaselineMembershipMultiplier:(double)listenedPenalty1 nicheContentManagedTopicBoostAllTags:(BOOL)listenedPenalty2 nicheContentDefaultFlowRate:(double)listenedPenalty3 nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:;
- (FCPersonalizationScoringConfig)initWithCoder:(id)coder;
- (FCPersonalizationScoringConfig)initWithConfigDictionary:(id)dictionary;
- (FCPersonalizationScoringConfig)initWithConfigDictionary:(id)dictionary defaultConfig:(id)config;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPersonalizationScoringConfig

- (FCPersonalizationScoringConfig)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationScoringConfig init]";
    v10 = 2080;
    v11 = "FCPersonalizationScoringConfig.m";
    v12 = 1024;
    v13 = 16;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationScoringConfig init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationScoringConfig)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v132.receiver = self;
  v132.super_class = FCPersonalizationScoringConfig;
  v5 = [(FCPersonalizationScoringConfig *)&v132 init];
  if (v5)
  {
    v131 = v5;
    v6 = FCAppConfigurationDoubleValue(dictionaryCopy, @"anfMultiplier", 1.0);
    if (v6 < 0.0)
    {
      v6 = 1.0;
    }

    v130 = v6;
    v7 = FCAppConfigurationDoubleValue(dictionaryCopy, @"articleLengthAggregateWeight", 1.0);
    if (v7 < 0.0)
    {
      v7 = 1.0;
    }

    v129 = v7;
    v8 = FCAppConfigurationDoubleValue(dictionaryCopy, @"articleReadPenalty", 0.0);
    if (v8 > 1.0 || v8 < 0.0)
    {
      v8 = 0.0;
    }

    v128 = v8;
    v10 = FCAppConfigurationDoubleValue(dictionaryCopy, @"articleListenedPenalty", 0.0);
    if (v10 > 1.0 || v10 < 0.0)
    {
      v10 = 0.0;
    }

    v127 = v10;
    v126 = FCAppConfigurationDoubleValue(dictionaryCopy, @"audioMultiplierForAUsers", 1.1);
    v125 = FCAppConfigurationDoubleValue(dictionaryCopy, @"audioMultiplierForBUsers", 1.1);
    v124 = FCAppConfigurationDoubleValue(dictionaryCopy, @"audioMultiplierForCUsers", 1.1);
    v12 = FCAppConfigurationDoubleValue(dictionaryCopy, @"autofavoritedVoteCoefficient", 0.06);
    if (v12 > 1.0 || v12 < 0.0)
    {
      v12 = 0.06;
    }

    v123 = v12;
    v14 = FCAppConfigurationDoubleValue(dictionaryCopy, @"baselineRatePrior", 0.0166666667);
    if (v14 < 0.0)
    {
      v14 = 0.0166666667;
    }

    v122 = v14;
    v121 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundleFreeMultiplierForAUsers", 1.1);
    v120 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundleFreeMultiplierForBUsers", 1.1);
    v119 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundleFreeMultiplierForCUsers", 1.1);
    v118 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundlePaidMultiplierForAUsers", 1.1);
    v117 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundlePaidMultiplierForBUsers", 1.1);
    v115 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundlePaidMultiplierForCUsers", 1.1);
    v15 = FCAppConfigurationDoubleValue(dictionaryCopy, @"conversionCoefficientForFreeUsers", 0.0);
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v114 = v15;
    v16 = FCAppConfigurationDoubleValue(dictionaryCopy, @"conversionCoefficientForTrialUsers", 0.0);
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v113 = v16;
    v17 = FCAppConfigurationDoubleValue(dictionaryCopy, @"conversionCoefficientForPaidUsers", 0.0);
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    v112 = v17;
    v18 = [FCPersonalizationCohortConfig alloc];
    v116 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"conversionCohort", 0);
    v111 = [(FCPersonalizationCohortConfig *)v18 initWithConfigDictionary:v116];
    v19 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithOneAutofavorited", 0.004);
    if (v19 < 0.0)
    {
      v19 = 0.004;
    }

    v110 = v19;
    v20 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithOneSubscribed", 0.015);
    if (v20 < 0.0)
    {
      v20 = 0.015;
    }

    v109 = v20;
    v21 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithSubscribedChannel", 0.02);
    if (v21 < 0.0)
    {
      v21 = 0.02;
    }

    v108 = v21;
    v22 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithThreeAutofavorited", 0.012);
    if (v22 < 0.0)
    {
      v22 = 0.012;
    }

    v107 = v22;
    v23 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithThreeSubscribed", 0.025);
    if (v23 < 0.0)
    {
      v23 = 0.025;
    }

    v106 = v23;
    v24 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithTwoAutofavorited", 0.008);
    if (v24 < 0.0)
    {
      v24 = 0.008;
    }

    v105 = v24;
    v25 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithTwoSubscribed", 0.02);
    if (v25 < 0.0)
    {
      v25 = 0.02;
    }

    v104 = v25;
    v26 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithZeroAutofavorited", 0.0005);
    if (v26 < 0.0)
    {
      v26 = 0.0005;
    }

    v103 = v26;
    v27 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithZeroSubscribed", 0.001);
    if (v27 < 0.0)
    {
      v27 = 0.001;
    }

    v102 = v27;
    v28 = FCAppConfigurationDoubleValue(dictionaryCopy, @"decayFactor", 0.99);
    if (v28 >= 1.0 || v28 < 0.0)
    {
      v28 = 0.99;
    }

    v101 = v28;
    v100 = FCAppConfigurationDoubleValue(dictionaryCopy, @"featuredMultiplierForAUsers", 1.1);
    v99 = FCAppConfigurationDoubleValue(dictionaryCopy, @"featuredMultiplierForBUsers", 1.1);
    v98 = FCAppConfigurationDoubleValue(dictionaryCopy, @"featuredMultiplierForCUsers", 1.1);
    v97 = FCAppConfigurationDoubleValue(dictionaryCopy, @"evergreenMultiplierForAUsers", 1.0);
    v96 = FCAppConfigurationDoubleValue(dictionaryCopy, @"evergreenMultiplierForBUsers", 1.0);
    v95 = FCAppConfigurationDoubleValue(dictionaryCopy, @"evergreenMultiplierForCUsers", 1.0);
    v30 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreCoefficientFree", 0.64);
    if (v30 > 1.0 || v30 < 0.0)
    {
      v30 = 0.64;
    }

    v94 = v30;
    v32 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreCoefficientPaid", 0.64);
    if (v32 > 1.0 || v32 < 0.0)
    {
      v32 = 0.64;
    }

    v93 = v32;
    v34 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreCoefficientHalfLife", 50.0);
    if (v34 <= 0.0)
    {
      v34 = 50.0;
    }

    v92 = v34;
    v90 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreCoefficientInitialMultiplier", 2.0);
    v35 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreDemocratizationFactor", 1.0);
    if (v35 > 1.0 || v35 < 0.0)
    {
      v35 = 1.0;
    }

    v89 = v35;
    v37 = FCAppConfigurationDoubleValue(dictionaryCopy, @"conversionScoreDemocratizationFactor", 1.0);
    if (v37 > 1.0 || v37 < 0.0)
    {
      v37 = 1.0;
    }

    v88 = v37;
    v39 = FCAppConfigurationDoubleValue(dictionaryCopy, @"headlineSeenPenalty", 0.0);
    if (v39 > 1.0 || v39 < 0.0)
    {
      v39 = 0.0;
    }

    v87 = v39;
    v41 = FCAppConfigurationDoubleValue(dictionaryCopy, @"halfLifeCoefficient", 1.0);
    if (v41 < 0.0)
    {
      v41 = 1.0;
    }

    v86 = v41;
    v42 = FCAppConfigurationDoubleValue(dictionaryCopy, @"userFeedbackHalfLifeCoefficient", 0.0);
    if (v42 < 0.0)
    {
      v42 = 0.0;
    }

    v85 = v42;
    v43 = FCAppConfigurationDoubleValue(dictionaryCopy, @"evergreenHalfLifeCoefficient", 0.0);
    if (v43 < 0.0)
    {
      v43 = 0.0;
    }

    v84 = v43;
    v91 = FCAppConfigurationBoolValue(dictionaryCopy, @"respectHalfLifeOverride", 0);
    v44 = FCAppConfigurationDoubleValue(dictionaryCopy, @"mutedVoteCoefficient", 0.2);
    if (v44 > 1.0 || v44 < 0.0)
    {
      v44 = 0.2;
    }

    v83 = v44;
    v46 = FCAppConfigurationDoubleValue(dictionaryCopy, @"publisherAggregateWeight", 1.0);
    if (v46 < 0.0)
    {
      v46 = 1.0;
    }

    v82 = v46;
    v47 = FCAppConfigurationDoubleValue(dictionaryCopy, @"sparseTagsPenalty", 0.0);
    if (v47 > 1.0 || v47 < 0.0)
    {
      v47 = 0.0;
    }

    v81 = v47;
    v49 = FCAppConfigurationDoubleValue(dictionaryCopy, @"subscribedChannelScoreCoefficient", 0.0);
    if (v49 > 1.0 || v49 < 0.0)
    {
      v49 = 0.0;
    }

    v80 = v49;
    v51 = FCAppConfigurationDoubleValue(dictionaryCopy, @"subscribedTopicsScoreCoefficient", 0.0);
    if (v51 > 1.0 || v51 < 0.0)
    {
      v51 = 0.0;
    }

    v78 = v51;
    v53 = [FCPersonalizationCohortConfig alloc];
    v54 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"userCohort", 0);
    v55 = [(FCPersonalizationCohortConfig *)v53 initWithConfigDictionary:v54];
    v56 = FCAppConfigurationDoubleValue(dictionaryCopy, @"lowFlowBoostFetchCountWeight", 0.5);
    if (v56 > 1.0 || v56 < 0.0)
    {
      v56 = 0.5;
    }

    v77 = v56;
    v58 = FCAppConfigurationDoubleValue(dictionaryCopy, @"lowFlowBoostFactor", 0.0);
    if (v58 < 0.0)
    {
      v58 = 0.0;
    }

    v76 = v58;
    v59 = FCAppConfigurationDoubleValue(dictionaryCopy, @"lowFlowBoostMaxProductFactor", 0.1);
    if (v59 > 1.0 || v59 < 0.0)
    {
      v59 = 0.1;
    }

    v75 = v59;
    v61 = [FCPersonalizationLowFlowEstimationConfig alloc];
    v62 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"lowFlowBoostFetchEstimationConfig", 0);
    v63 = [(FCPersonalizationLowFlowEstimationConfig *)v61 initWithConfigDictionary:v62];
    v64 = [FCPersonalizationLowFlowEstimationConfig alloc];
    v65 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"lowFlowBoostEventEstimationConfig", 0);
    v66 = [(FCPersonalizationLowFlowEstimationConfig *)v64 initWithConfigDictionary:v65];
    v79 = FCAppConfigurationBoolValue(dictionaryCopy, @"nicheContentBoostOnlyAboveBaselineMembership", 1);
    v73 = FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentBaselineMembershipMultiplier", 1.0);
    v74 = FCAppConfigurationBoolValue(dictionaryCopy, @"nicheContentManagedTopicBoostAllTags", 0);
    v67 = FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentDefaultFlowRate", 0.0);
    if (v67 > 1.0 || v67 < 0.0)
    {
      v67 = 0.0;
    }

    v72 = v67;
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentDefaultSubscriptionRate", 0.0);
    FCAppConfigurationBoolValue(dictionaryCopy, @"nicheContentExcludeNonGroupableTopics", 1);
    FCAppConfigurationBoolValue(dictionaryCopy, @"nicheContentShouldBoostPublisher", 1);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentTopicFlowExponent", 2.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentPublisherFlowExponent", 2.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentManagedTopicBoost", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentServerFlowWeight", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentTopicSubscriptionExponent", 1.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentPublisherSubscriptionExponent", 1.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentQualityThreshold", 0.06);
    FCAppConfigurationIntegerValue(dictionaryCopy, @"contentTriggerMaxEventCount", 50);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerScoreExponent", 1.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerTagWeightExponent", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerMinScoreWeight", 1.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerMaxDampener", 1.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerDampenerCoefficient", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"personalizedMultiplierBaselineMembership", 0.2);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"personalizedMultiplierPreBaselineCurvature", 2.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"personalizedMultiplierPostBaselineCurvature", 2.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"personalizedMultiplierMembershipDampener", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"publisherDampenerWeight", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"recentlyFollowedDurationThreshold", 43200.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"recentlyFollowedMultiplier", 1.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"tabiScoreCoefficient", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostFeaturedArticleMultiplier", 1.1);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostFeatureCandidateArticleMultiplier", 1.1);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostFreeCohortCTRCap", 0.75);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostPaidCohortCTRCap", 0.5);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostTagQualityMultiplier", 1.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostReduceVisibilityMultiplier", 0.1);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostANFMutiplier", 1.5);
    FCAppConfigurationBoolValue(dictionaryCopy, @"dampenerEnabled", 1);
    FCAppConfigurationBoolValue(dictionaryCopy, @"multiplierEnabled", 1);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"peopleAlsoReadBaselineScore", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"peopleAlsoReadConditionalScoreCoefficient", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"peopleAlsoReadScoreCoefficient", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"recipeSeenPenalty", 0.0);
    FCAppConfigurationDoubleValue(dictionaryCopy, @"recipeViewedPenalty", 0.0);
    LOBYTE(v71) = v74;
    v69 = objc_retainAutoreleasedReturnValue( [FCPersonalizationScoringConfig initWithAnfMultiplier:articleLengthAggregateWeight:articleReadPenalty:articleListenedPenalty:audioMultiplierForFreeUsers:audioMultiplierForTrialUsers:audioMultiplierForPaidUsers:autofavoritedVoteCoefficient:baselineRatePrior:bundleFreeMultiplierForFreeUsers:bundleFreeMultiplierForTrialUsers:bundleFreeMultiplierForPaidUsers:bundlePaidMultiplierForFreeUsers:bundlePaidMultiplierForTrialUsers:bundlePaidMultiplierForPaidUsers:conversionCoefficientForFreeUsers:conversionCoefficientForTrialUsers:conversionCoefficientForPaidUsers:conversionCohort:ctrWithOneAutofavorited:ctrWithOneSubscribed:ctrWithSubscribedChannel:ctrWithThreeAutofavorited:ctrWithThreeSubscribed:ctrWithTwoAutofavorited:ctrWithTwoSubscribed:ctrWithZeroAutofavorited:ctrWithZeroSubscribed:decayFactor:featuredMultiplierForFreeUsers:featuredMultiplierForTrialUsers:featuredMultiplierForPaidUsers:evergreenMultiplierForFreeUsers:evergreenMultiplierForTrialUsers:evergreenMultiplierForPaidUsers:globalScoreCoefficientFree:globalScoreCoefficientPaid:globalScoreCoefficientHalfLife:globalScoreCoefficientInitialMultiplier:globalScoreDemocratizationFactor:conversionScoreDemocratizationFactor:headlineSeenPenalty:halfLifeCoefficient:userFeedbackHalfLifeCoefficient:evergreenHalfLifeCoefficient:respectHalfLifeOverride:mutedVoteCoefficient:publisherAggregateWeight:sparseTagsPenalty:subscribedChannelScoreCoefficient:subscribedTopicsScoreCoefficient:userCohort:lowFlowBoostFetchCountWeight:lowFlowBoostFactor:lowFlowBoostMaxProductFactor:lowFlowBoostFetchEstimationConfig:lowFlowBoostEventEstimationConfig:nicheContentBoostOnlyAboveBaselineMembership:nicheContentBaselineMembershipMultiplier:nicheContentManagedTopicBoostAllTags:nicheContentDefaultFlowRate:nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:]( v131,  "initWithAnfMultiplier:articleLengthAggregateWeight:articleReadPenalty:articleListenedPenalty:audioMultiplierForFreeUsers:audioMultiplierForTrialUsers:audioMultiplierForPaidUsers:autofavoritedVoteCoefficient:baselineRatePrior:bundleFreeMultiplierForFreeUsers:bundleFreeMultiplierForTrialUsers:bundleFreeMultiplierForPaidUsers:bundlePaidMultiplierForFreeUsers:bundlePaidMultiplierForTrialUsers:bundlePaidMultiplierForPaidUsers:conversionCoefficientForFreeUsers:conversionCoefficientForTrialUsers:conversionCoefficientForPaidUsers:conversionCohort:ctrWithOneAutofavorited:ctrWithOneSubscribed:ctrWithSubscribedChannel:ctrWithThreeAutofavorited:ctrWithThreeSubscribed:ctrWithTwoAutofavorited:ctrWithTwoSubscribed:ctrWithZeroAutofavorited:ctrWithZeroSubscribed:decayFactor:featuredMultiplierForFreeUsers:featuredMultiplierForTrialUsers:featuredMultiplierForPaidUsers:evergreenMultiplierForFreeUsers:evergreenMultiplierForTrialUsers:evergreenMultiplierForPaidUsers:globalScoreCoefficientFree:globalScoreCoefficientPaid:globalScoreCoefficientHalfLife:globalScoreCoefficientInitialMultiplier:globalScoreDemocratizationFactor:conversionScoreDemocratizationFactor:headlineSeenPenalty:halfLifeCoefficient:userFeedbackHalfLifeCoefficient:evergreenHalfLifeCoefficient:respectHalfLifeOverride:mutedVoteCoefficient:publisherAggregateWeight:sparseTagsPenalty:subscribedChannelScoreCoefficient:subscribedTopicsScoreCoefficient:userCohort:lowFlowBoostFetchCountWeight:lowFlowBoostFactor:lowFlowBoostMaxProductFactor:lowFlowBoostFetchEstimationConfig:lowFlowBoostEventEstimationConfig:nicheContentBoostOnlyAboveBaselineMembership:nicheContentBaselineMembershipMultiplier:nicheContentManagedTopicBoostAllTags:nicheContentDefaultFlowRate:nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:",  v111,  v91,  v55,  v63,  v66,  v79,  v130,  v129,  v128,  v127,  v126,  v125,  v124,  v123,  *&v122,  *&v121,  *&v120,  *&v119,  *&v118,  *&v117,  *&v115,  *&v114,  *&v113,  *&v112,  *&v110,  *&v109,  *&v108,  *&v107,  *&v106,  *&v105,  *&v104,  *&v103,  *&v102,  *&v101,  *&v100,  *&v99,  *&v98,  *&v97,  *&v96,  *&v95,  *&v94,  *&v93,  *&v92,  *&v90,  *&v89,  *&v88,
              *&v87,
              *&v86,
              *&v85,
              *&v84,
              *&v83,
              *&v82,
              *&v81,
              *&v80,
              *&v78,
              *&v77,
              *&v76,
              *&v75,
              *&v73,
              v71,
              *&v72));
  }

  else
  {
    v69 = 0;
  }

  return v69;
}

- (FCPersonalizationScoringConfig)initWithConfigDictionary:(id)dictionary defaultConfig:(id)config
{
  dictionaryCopy = dictionary;
  configCopy = config;
  v265.receiver = self;
  v265.super_class = FCPersonalizationScoringConfig;
  v8 = [(FCPersonalizationScoringConfig *)&v265 init];
  if (v8)
  {
    v263 = v8;
    [configCopy anfMultiplier];
    v10 = FCAppConfigurationDoubleValue(dictionaryCopy, @"anfMultiplier", v9);
    [configCopy anfMultiplier];
    if (v10 >= 0.0)
    {
      v11 = v10;
    }

    v262 = v11;
    [configCopy articleLengthAggregateWeight];
    v13 = FCAppConfigurationDoubleValue(dictionaryCopy, @"articleLengthAggregateWeight", v12);
    [configCopy articleLengthAggregateWeight];
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    v261 = v14;
    [configCopy articleReadPenalty];
    v16 = FCAppConfigurationDoubleValue(dictionaryCopy, @"articleReadPenalty", v15);
    [configCopy articleReadPenalty];
    if (v16 <= 1.0 && v16 >= 0.0)
    {
      v17 = v16;
    }

    v260 = v17;
    [configCopy articleListenedPenalty];
    v20 = FCAppConfigurationDoubleValue(dictionaryCopy, @"articleListenedPenalty", v19);
    [configCopy articleListenedPenalty];
    if (v20 <= 1.0 && v20 >= 0.0)
    {
      v21 = v20;
    }

    v259 = v21;
    [configCopy audioMultiplierForFreeUsers];
    v258 = FCAppConfigurationDoubleValue(dictionaryCopy, @"audioMultiplierForAUsers", v23);
    [configCopy audioMultiplierForTrialUsers];
    v257 = FCAppConfigurationDoubleValue(dictionaryCopy, @"audioMultiplierForBUsers", v24);
    [configCopy audioMultiplierForPaidUsers];
    v256 = FCAppConfigurationDoubleValue(dictionaryCopy, @"audioMultiplierForCUsers", v25);
    [configCopy autofavoritedVoteCoefficient];
    v27 = FCAppConfigurationDoubleValue(dictionaryCopy, @"autofavoritedVoteCoefficient", v26);
    [configCopy autofavoritedVoteCoefficient];
    if (v27 <= 1.0 && v27 >= 0.0)
    {
      v28 = v27;
    }

    v255 = v28;
    [configCopy baselineRatePrior];
    v31 = FCAppConfigurationDoubleValue(dictionaryCopy, @"baselineRatePrior", v30);
    [configCopy baselineRatePrior];
    if (v31 >= 0.0)
    {
      v32 = v31;
    }

    v254 = v32;
    [configCopy bundleFreeMultiplierForFreeUsers];
    v253 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundleFreeMultiplierForAUsers", v33);
    [configCopy bundleFreeMultiplierForTrialUsers];
    v252 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundleFreeMultiplierForBUsers", v34);
    [configCopy bundleFreeMultiplierForPaidUsers];
    v251 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundleFreeMultiplierForCUsers", v35);
    [configCopy bundlePaidMultiplierForFreeUsers];
    v249 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundlePaidMultiplierForAUsers", v36);
    [configCopy bundlePaidMultiplierForTrialUsers];
    v248 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundlePaidMultiplierForBUsers", v37);
    [configCopy bundlePaidMultiplierForPaidUsers];
    v246 = FCAppConfigurationDoubleValue(dictionaryCopy, @"bundlePaidMultiplierForCUsers", v38);
    [configCopy conversionCoefficientForFreeUsers];
    v40 = FCAppConfigurationDoubleValue(dictionaryCopy, @"conversionCoefficientForFreeUsers", v39);
    [configCopy conversionCoefficientForFreeUsers];
    if (v40 >= 0.0)
    {
      v41 = v40;
    }

    v244 = v41;
    [configCopy conversionCoefficientForTrialUsers];
    v43 = FCAppConfigurationDoubleValue(dictionaryCopy, @"conversionCoefficientForTrialUsers", v42);
    [configCopy conversionCoefficientForTrialUsers];
    if (v43 >= 0.0)
    {
      v44 = v43;
    }

    v243 = v44;
    [configCopy conversionCoefficientForPaidUsers];
    v46 = FCAppConfigurationDoubleValue(dictionaryCopy, @"conversionCoefficientForPaidUsers", v45);
    [configCopy conversionCoefficientForPaidUsers];
    if (v46 >= 0.0)
    {
      v47 = v46;
    }

    v242 = v47;
    v250 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"conversionCohort", 0);
    if (v250)
    {
      v48 = [FCPersonalizationCohortConfig alloc];
      v247 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"conversionCohort", 0);
      conversionCohort = [(FCPersonalizationCohortConfig *)v48 initWithConfigDictionary:?];
    }

    else
    {
      conversionCohort = [configCopy conversionCohort];
      v247 = conversionCohort;
    }

    [configCopy ctrWithOneAutofavorited];
    v52 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithOneAutofavorited", v51);
    [configCopy ctrWithOneAutofavorited];
    if (v52 >= 0.0)
    {
      v53 = v52;
    }

    v241 = v53;
    [configCopy ctrWithOneSubscribed];
    v55 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithOneSubscribed", v54);
    [configCopy ctrWithOneSubscribed];
    if (v55 >= 0.0)
    {
      v56 = v55;
    }

    v240 = v56;
    [configCopy ctrWithSubscribedChannel];
    v58 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithSubscribedChannel", v57);
    [configCopy ctrWithSubscribedChannel];
    if (v58 >= 0.0)
    {
      v59 = v58;
    }

    v239 = v59;
    [configCopy ctrWithThreeAutofavorited];
    v61 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithThreeAutofavorited", v60);
    [configCopy ctrWithThreeAutofavorited];
    if (v61 >= 0.0)
    {
      v62 = v61;
    }

    v238 = v62;
    [configCopy ctrWithThreeSubscribed];
    v64 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithThreeSubscribed", v63);
    [configCopy ctrWithThreeSubscribed];
    if (v64 >= 0.0)
    {
      v65 = v64;
    }

    v237 = v65;
    [configCopy ctrWithTwoAutofavorited];
    v67 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithTwoAutofavorited", v66);
    [configCopy ctrWithTwoAutofavorited];
    if (v67 >= 0.0)
    {
      v68 = v67;
    }

    v236 = v68;
    [configCopy ctrWithTwoSubscribed];
    v70 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithTwoSubscribed", v69);
    [configCopy ctrWithTwoSubscribed];
    if (v70 >= 0.0)
    {
      v71 = v70;
    }

    v235 = v71;
    [configCopy ctrWithZeroAutofavorited];
    v73 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithZeroAutofavorited", v72);
    [configCopy ctrWithZeroAutofavorited];
    if (v73 >= 0.0)
    {
      v74 = v73;
    }

    v234 = v74;
    [configCopy ctrWithZeroSubscribed];
    v76 = FCAppConfigurationDoubleValue(dictionaryCopy, @"ctrWithZeroSubscribed", v75);
    [configCopy ctrWithZeroSubscribed];
    if (v76 >= 0.0)
    {
      v77 = v76;
    }

    v233 = v77;
    [configCopy decayFactor];
    v79 = FCAppConfigurationDoubleValue(dictionaryCopy, @"decayFactor", v78);
    [configCopy decayFactor];
    if (v79 < 1.0 && v79 >= 0.0)
    {
      v80 = v79;
    }

    v232 = v80;
    [configCopy featuredMultiplierForFreeUsers];
    v231 = FCAppConfigurationDoubleValue(dictionaryCopy, @"featuredMultiplierForAUsers", v82);
    [configCopy featuredMultiplierForTrialUsers];
    v230 = FCAppConfigurationDoubleValue(dictionaryCopy, @"featuredMultiplierForBUsers", v83);
    [configCopy featuredMultiplierForPaidUsers];
    v229 = FCAppConfigurationDoubleValue(dictionaryCopy, @"featuredMultiplierForCUsers", v84);
    [configCopy evergreenMultiplierForFreeUsers];
    v228 = FCAppConfigurationDoubleValue(dictionaryCopy, @"evergreenMultiplierForAUsers", v85);
    [configCopy evergreenMultiplierForTrialUsers];
    v227 = FCAppConfigurationDoubleValue(dictionaryCopy, @"evergreenMultiplierForBUsers", v86);
    [configCopy evergreenMultiplierForPaidUsers];
    v226 = FCAppConfigurationDoubleValue(dictionaryCopy, @"evergreenMultiplierForCUsers", v87);
    [configCopy globalScoreCoefficientFree];
    v89 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreCoefficientFree", v88);
    [configCopy globalScoreCoefficientFree];
    if (v89 <= 1.0 && v89 >= 0.0)
    {
      v90 = v89;
    }

    v225 = v90;
    [configCopy globalScoreCoefficientPaid];
    v93 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreCoefficientPaid", v92);
    [configCopy globalScoreCoefficientPaid];
    if (v93 <= 1.0 && v93 >= 0.0)
    {
      v94 = v93;
    }

    v224 = v94;
    [configCopy globalScoreCoefficientHalfLife];
    v97 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreCoefficientHalfLife", v96);
    [configCopy globalScoreCoefficientHalfLife];
    if (v97 > 0.0)
    {
      v98 = v97;
    }

    v223 = v98;
    [configCopy globalScoreCoefficientInitialMultiplier];
    v222 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreCoefficientInitialMultiplier", v99);
    [configCopy globalScoreDemocratizationFactor];
    v101 = FCAppConfigurationDoubleValue(dictionaryCopy, @"globalScoreDemocratizationFactor", v100);
    [configCopy globalScoreDemocratizationFactor];
    if (v101 <= 1.0 && v101 >= 0.0)
    {
      v102 = v101;
    }

    v221 = v102;
    [configCopy conversionScoreDemocratizationFactor];
    v105 = FCAppConfigurationDoubleValue(dictionaryCopy, @"conversionScoreDemocratizationFactor", v104);
    [configCopy conversionScoreDemocratizationFactor];
    if (v105 <= 1.0 && v105 >= 0.0)
    {
      v106 = v105;
    }

    v219 = v106;
    [configCopy headlineSeenPenalty];
    v109 = FCAppConfigurationDoubleValue(dictionaryCopy, @"headlineSeenPenalty", v108);
    [configCopy headlineSeenPenalty];
    if (v109 <= 1.0 && v109 >= 0.0)
    {
      v110 = v109;
    }

    v218 = v110;
    [configCopy halfLifeCoefficient];
    v113 = FCAppConfigurationDoubleValue(dictionaryCopy, @"halfLifeCoefficient", v112);
    [configCopy halfLifeCoefficient];
    if (v113 >= 0.0)
    {
      v114 = v113;
    }

    v217 = v114;
    [configCopy userFeedbackHalfLifeCoefficient];
    v116 = FCAppConfigurationDoubleValue(dictionaryCopy, @"userFeedbackHalfLifeCoefficient", v115);
    [configCopy userFeedbackHalfLifeCoefficient];
    if (v116 > 0.0)
    {
      v117 = v116;
    }

    v216 = v117;
    [configCopy evergreenHalfLifeCoefficient];
    v119 = FCAppConfigurationDoubleValue(dictionaryCopy, @"evergreenHalfLifeCoefficient", v118);
    [configCopy evergreenHalfLifeCoefficient];
    if (v119 > 0.0)
    {
      v120 = v119;
    }

    v214 = v120;
    v220 = FCAppConfigurationBoolValue(dictionaryCopy, @"respectHalfLifeOverride", [configCopy respectHalfLifeOverride]);
    [configCopy mutedVoteCoefficient];
    v122 = FCAppConfigurationDoubleValue(dictionaryCopy, @"mutedVoteCoefficient", v121);
    [configCopy mutedVoteCoefficient];
    if (v122 <= 1.0 && v122 >= 0.0)
    {
      v123 = v122;
    }

    v213 = v123;
    [configCopy publisherAggregateWeight];
    v126 = FCAppConfigurationDoubleValue(dictionaryCopy, @"publisherAggregateWeight", v125);
    [configCopy publisherAggregateWeight];
    if (v126 >= 0.0)
    {
      v127 = v126;
    }

    v212 = v127;
    [configCopy sparseTagsPenalty];
    v129 = FCAppConfigurationDoubleValue(dictionaryCopy, @"sparseTagsPenalty", v128);
    [configCopy sparseTagsPenalty];
    if (v129 <= 1.0 && v129 >= 0.0)
    {
      v130 = v129;
    }

    v211 = v130;
    [configCopy subscribedChannelScoreCoefficient];
    v133 = FCAppConfigurationDoubleValue(dictionaryCopy, @"subscribedChannelScoreCoefficient", v132);
    [configCopy subscribedChannelScoreCoefficient];
    if (v133 <= 1.0 && v133 >= 0.0)
    {
      v134 = v133;
    }

    v210 = v134;
    [configCopy subscribedTopicsScoreCoefficient];
    v137 = FCAppConfigurationDoubleValue(dictionaryCopy, @"subscribedTopicsScoreCoefficient", v136);
    [configCopy subscribedTopicsScoreCoefficient];
    if (v137 <= 1.0 && v137 >= 0.0)
    {
      v138 = v137;
    }

    v209 = v138;
    v140 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"userCohort", 0);
    if (v140)
    {
      v141 = [FCPersonalizationCohortConfig alloc];
      v215 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"userCohort", 0);
      userCohort = [(FCPersonalizationCohortConfig *)v141 initWithConfigDictionary:?];
    }

    else
    {
      userCohort = [configCopy userCohort];
      v215 = userCohort;
    }

    [configCopy lowFlowBoostFetchCountWeight];
    v144 = FCAppConfigurationDoubleValue(dictionaryCopy, @"lowFlowBoostFetchCountWeight", v143);
    [configCopy lowFlowBoostFetchCountWeight];
    if (v144 <= 1.0 && v144 >= 0.0)
    {
      v145 = v144;
    }

    v208 = v145;
    [configCopy lowFlowBoostFactor];
    v148 = FCAppConfigurationDoubleValue(dictionaryCopy, @"lowFlowBoostFactor", v147);
    [configCopy lowFlowBoostFactor];
    if (v148 >= 0.0)
    {
      v149 = v148;
    }

    v207 = v149;
    [configCopy lowFlowBoostMaxProductFactor];
    v151 = FCAppConfigurationDoubleValue(dictionaryCopy, @"lowFlowBoostMaxProductFactor", v150);
    [configCopy lowFlowBoostMaxProductFactor];
    if (v151 <= 1.0 && v151 >= 0.0)
    {
      v152 = v151;
    }

    v206 = v152;
    v154 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"lowFlowBoostFetchEstimationConfig", 0);
    if (v154)
    {
      v155 = [FCPersonalizationLowFlowEstimationConfig alloc];
      v156 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"lowFlowBoostFetchEstimationConfig", 0);
      lowFlowBoostFetchEstimationConfig = [(FCPersonalizationLowFlowEstimationConfig *)v155 initWithConfigDictionary:v156];
    }

    else
    {
      lowFlowBoostFetchEstimationConfig = [configCopy lowFlowBoostFetchEstimationConfig];
      v156 = lowFlowBoostFetchEstimationConfig;
    }

    v264 = lowFlowBoostFetchEstimationConfig;
    v158 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"lowFlowBoostEventEstimationConfig", 0);
    v245 = conversionCohort;
    if (v158)
    {
      v159 = [FCPersonalizationLowFlowEstimationConfig alloc];
      v201 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"lowFlowBoostEventEstimationConfig", 0);
      lowFlowBoostEventEstimationConfig = [(FCPersonalizationLowFlowEstimationConfig *)v159 initWithConfigDictionary:?];
    }

    else
    {
      lowFlowBoostEventEstimationConfig = [configCopy lowFlowBoostEventEstimationConfig];
    }

    v205 = FCAppConfigurationBoolValue(dictionaryCopy, @"nicheContentBoostOnlyAboveBaselineMembership", [configCopy nicheContentBoostOnlyAboveBaselineMembership]);
    [configCopy nicheContentBaselineMembershipMultiplier];
    v203 = FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentBaselineMembershipMultiplier", v161);
    v204 = FCAppConfigurationBoolValue(dictionaryCopy, @"nicheContentManagedTopicBoostAllTags", [configCopy nicheContentManagedTopicBoostAllTags]);
    [configCopy nicheContentDefaultFlowRate];
    v163 = FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentDefaultFlowRate", v162);
    [configCopy nicheContentDefaultFlowRate];
    if (v163 <= 1.0 && v163 >= 0.0)
    {
      v164 = v163;
    }

    v202 = v164;
    [configCopy nicheContentDefaultSubscriptionRate];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentDefaultSubscriptionRate", v166);
    [configCopy nicheContentDefaultSubscriptionRate];
    FCAppConfigurationBoolValue(dictionaryCopy, @"nicheContentExcludeNonGroupableTopics", [configCopy nicheContentExcludeNonGroupableTopics]);
    FCAppConfigurationBoolValue(dictionaryCopy, @"nicheContentShouldBoostPublisher", [configCopy nicheContentShouldBoostPublisher]);
    [configCopy nicheContentTopicFlowExponent];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentTopicFlowExponent", v167);
    [configCopy nicheContentTopicFlowExponent];
    [configCopy nicheContentPublisherFlowExponent];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentPublisherFlowExponent", v168);
    [configCopy nicheContentPublisherFlowExponent];
    [configCopy nicheContentManagedTopicBoost];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentManagedTopicBoost", v169);
    [configCopy nicheContentManagedTopicBoost];
    [configCopy nicheContentServerFlowWeight];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentServerFlowWeight", v170);
    [configCopy nicheContentServerFlowWeight];
    [configCopy nicheContentTopicSubscriptionExponent];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentTopicSubscriptionExponent", v171);
    [configCopy nicheContentTopicSubscriptionExponent];
    [configCopy nicheContentPublisherSubscriptionExponent];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentPublisherSubscriptionExponent", v172);
    [configCopy nicheContentPublisherSubscriptionExponent];
    [configCopy nicheContentQualityThreshold];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"nicheContentQualityThreshold", v173);
    [configCopy nicheContentQualityThreshold];
    FCAppConfigurationIntegerValue(dictionaryCopy, @"contentTriggerMaxEventCount", [configCopy contentTriggerMaxEventCount]);
    [configCopy contentTriggerMaxEventCount];
    [configCopy contentTriggerScoreExponent];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerScoreExponent", v174);
    [configCopy contentTriggerScoreExponent];
    [configCopy contentTriggerTagWeightExponent];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerTagWeightExponent", v175);
    [configCopy contentTriggerTagWeightExponent];
    [configCopy contentTriggerMinScoreWeight];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerMinScoreWeight", v176);
    [configCopy contentTriggerMinScoreWeight];
    [configCopy contentTriggerMaxDampener];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerMaxDampener", v177);
    [configCopy contentTriggerMaxDampener];
    [configCopy contentTriggerDampenerCoefficient];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"contentTriggerDampenerCoefficient", v178);
    [configCopy contentTriggerDampenerCoefficient];
    [configCopy personalizedMultiplierBaselineMembership];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"personalizedMultiplierBaselineMembership", v179);
    [configCopy personalizedMultiplierBaselineMembership];
    [configCopy personalizedMultiplierPreBaselineCurvature];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"personalizedMultiplierPreBaselineCurvature", v180);
    [configCopy personalizedMultiplierPreBaselineCurvature];
    [configCopy personalizedMultiplierPostBaselineCurvature];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"personalizedMultiplierPostBaselineCurvature", v181);
    [configCopy personalizedMultiplierPostBaselineCurvature];
    [configCopy personalizedMultiplierMembershipDampener];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"personalizedMultiplierMembershipDampener", v182);
    [configCopy personalizedMultiplierMembershipDampener];
    [configCopy publisherDampenerWeight];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"publisherDampenerWeight", v183);
    [configCopy publisherDampenerWeight];
    [configCopy recentlyFollowedDurationThreshold];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"recentlyFollowedDurationThreshold", v184);
    [configCopy recentlyFollowedDurationThreshold];
    [configCopy recentlyFollowedMultiplier];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"recentlyFollowedMultiplier", v185);
    [configCopy recentlyFollowedMultiplier];
    [configCopy tabiScoreCoefficient];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"tabiScoreCoefficient", v186);
    [configCopy tabiScoreCoefficient];
    [configCopy clientSideEngagementBoostFeaturedArticleMultiplier];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostFeaturedArticleMultiplier", v187);
    [configCopy clientSideEngagementBoostFeaturedArticleMultiplier];
    [configCopy clientSideEngagementBoostFeatureCandidateArticleMultiplier];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostFeatureCandidateArticleMultiplier", v188);
    [configCopy clientSideEngagementBoostFeatureCandidateArticleMultiplier];
    [configCopy clientSideEngagementBoostFreeCohortCTRCap];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostFreeCohortCTRCap", v189);
    [configCopy clientSideEngagementBoostFreeCohortCTRCap];
    [configCopy clientSideEngagementBoostPaidCohortCTRCap];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostPaidCohortCTRCap", v190);
    [configCopy clientSideEngagementBoostPaidCohortCTRCap];
    [configCopy clientSideEngagementBoostTagQualityMultiplier];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostTagQualityMultiplier", v191);
    [configCopy clientSideEngagementBoostTagQualityMultiplier];
    [configCopy clientSideEngagementBoostReduceVisibilityMultiplier];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostReduceVisibilityMultiplier", v192);
    [configCopy clientSideEngagementBoostReduceVisibilityMultiplier];
    [configCopy clientSideEngagementBoostANFMutiplier];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"clientSideEngagementBoostANFMutiplier", v193);
    [configCopy clientSideEngagementBoostANFMutiplier];
    FCAppConfigurationBoolValue(dictionaryCopy, @"dampenerEnabled", [configCopy dampenerEnabled]);
    FCAppConfigurationBoolValue(dictionaryCopy, @"multiplierEnabled", [configCopy multiplierEnabled]);
    [configCopy peopleAlsoReadBaselineScore];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"peopleAlsoReadBaselineScore", v194);
    [configCopy peopleAlsoReadBaselineScore];
    [configCopy peopleAlsoReadConditionalScoreCoefficient];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"peopleAlsoReadConditionalScoreCoefficient", v195);
    [configCopy peopleAlsoReadConditionalScoreCoefficient];
    [configCopy peopleAlsoReadScoreCoefficient];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"peopleAlsoReadScoreCoefficient", v196);
    [configCopy peopleAlsoReadScoreCoefficient];
    [configCopy recipeSeenPenalty];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"recipeSeenPenalty", v197);
    [configCopy recipeSeenPenalty];
    [configCopy recipeViewedPenalty];
    FCAppConfigurationDoubleValue(dictionaryCopy, @"recipeViewedPenalty", v198);
    [configCopy recipeViewedPenalty];
    LOBYTE(v200) = v204;
    v50 = objc_retainAutoreleasedReturnValue( [FCPersonalizationScoringConfig initWithAnfMultiplier:articleLengthAggregateWeight:articleReadPenalty:articleListenedPenalty:audioMultiplierForFreeUsers:audioMultiplierForTrialUsers:audioMultiplierForPaidUsers:autofavoritedVoteCoefficient:baselineRatePrior:bundleFreeMultiplierForFreeUsers:bundleFreeMultiplierForTrialUsers:bundleFreeMultiplierForPaidUsers:bundlePaidMultiplierForFreeUsers:bundlePaidMultiplierForTrialUsers:bundlePaidMultiplierForPaidUsers:conversionCoefficientForFreeUsers:conversionCoefficientForTrialUsers:conversionCoefficientForPaidUsers:conversionCohort:ctrWithOneAutofavorited:ctrWithOneSubscribed:ctrWithSubscribedChannel:ctrWithThreeAutofavorited:ctrWithThreeSubscribed:ctrWithTwoAutofavorited:ctrWithTwoSubscribed:ctrWithZeroAutofavorited:ctrWithZeroSubscribed:decayFactor:featuredMultiplierForFreeUsers:featuredMultiplierForTrialUsers:featuredMultiplierForPaidUsers:evergreenMultiplierForFreeUsers:evergreenMultiplierForTrialUsers:evergreenMultiplierForPaidUsers:globalScoreCoefficientFree:globalScoreCoefficientPaid:globalScoreCoefficientHalfLife:globalScoreCoefficientInitialMultiplier:globalScoreDemocratizationFactor:conversionScoreDemocratizationFactor:headlineSeenPenalty:halfLifeCoefficient:userFeedbackHalfLifeCoefficient:evergreenHalfLifeCoefficient:respectHalfLifeOverride:mutedVoteCoefficient:publisherAggregateWeight:sparseTagsPenalty:subscribedChannelScoreCoefficient:subscribedTopicsScoreCoefficient:userCohort:lowFlowBoostFetchCountWeight:lowFlowBoostFactor:lowFlowBoostMaxProductFactor:lowFlowBoostFetchEstimationConfig:lowFlowBoostEventEstimationConfig:nicheContentBoostOnlyAboveBaselineMembership:nicheContentBaselineMembershipMultiplier:nicheContentManagedTopicBoostAllTags:nicheContentDefaultFlowRate:nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:]( v263,  "initWithAnfMultiplier:articleLengthAggregateWeight:articleReadPenalty:articleListenedPenalty:audioMultiplierForFreeUsers:audioMultiplierForTrialUsers:audioMultiplierForPaidUsers:autofavoritedVoteCoefficient:baselineRatePrior:bundleFreeMultiplierForFreeUsers:bundleFreeMultiplierForTrialUsers:bundleFreeMultiplierForPaidUsers:bundlePaidMultiplierForFreeUsers:bundlePaidMultiplierForTrialUsers:bundlePaidMultiplierForPaidUsers:conversionCoefficientForFreeUsers:conversionCoefficientForTrialUsers:conversionCoefficientForPaidUsers:conversionCohort:ctrWithOneAutofavorited:ctrWithOneSubscribed:ctrWithSubscribedChannel:ctrWithThreeAutofavorited:ctrWithThreeSubscribed:ctrWithTwoAutofavorited:ctrWithTwoSubscribed:ctrWithZeroAutofavorited:ctrWithZeroSubscribed:decayFactor:featuredMultiplierForFreeUsers:featuredMultiplierForTrialUsers:featuredMultiplierForPaidUsers:evergreenMultiplierForFreeUsers:evergreenMultiplierForTrialUsers:evergreenMultiplierForPaidUsers:globalScoreCoefficientFree:globalScoreCoefficientPaid:globalScoreCoefficientHalfLife:globalScoreCoefficientInitialMultiplier:globalScoreDemocratizationFactor:conversionScoreDemocratizationFactor:headlineSeenPenalty:halfLifeCoefficient:userFeedbackHalfLifeCoefficient:evergreenHalfLifeCoefficient:respectHalfLifeOverride:mutedVoteCoefficient:publisherAggregateWeight:sparseTagsPenalty:subscribedChannelScoreCoefficient:subscribedTopicsScoreCoefficient:userCohort:lowFlowBoostFetchCountWeight:lowFlowBoostFactor:lowFlowBoostMaxProductFactor:lowFlowBoostFetchEstimationConfig:lowFlowBoostEventEstimationConfig:nicheContentBoostOnlyAboveBaselineMembership:nicheContentBaselineMembershipMultiplier:nicheContentManagedTopicBoostAllTags:nicheContentDefaultFlowRate:nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:",  conversionCohort,  v220,  userCohort,  v264,  lowFlowBoostEventEstimationConfig,  v205,  v262,  v261,  v260,  v259,  v258,  v257,  v256,  v255,  *&v254,  *&v253,  *&v252,  *&v251,  *&v249,  *&v248,  *&v246,  *&v244,  *&v243,  *&v242,  *&v241,  *&v240,  *&v239,  *&v238,  *&v237,  *&v236,  *&v235,  *&v234,  *&v233,  *&v232,  *&v231,  *&v230,  *&v229,  *&v228,  *&v227,  *&v226,  *&v225,  *&v224,  *&v223,  *&v222,  *&v221,  *&v219,
              *&v218,
              *&v217,
              *&v216,
              *&v214,
              *&v213,
              *&v212,
              *&v211,
              *&v210,
              *&v209,
              *&v208,
              *&v207,
              *&v206,
              *&v203,
              v200,
              *&v202));
    if (v158)
    {

      lowFlowBoostEventEstimationConfig = v201;
    }

    if (v154)
    {
    }

    if (v140)
    {
    }

    if (v250)
    {
    }
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

- (FCPersonalizationScoringConfig)initWithAnfMultiplier:(double)multiplier articleLengthAggregateWeight:(double)weight articleReadPenalty:(double)penalty articleListenedPenalty:(double)listenedPenalty audioMultiplierForFreeUsers:(double)users audioMultiplierForTrialUsers:(double)trialUsers audioMultiplierForPaidUsers:(double)paidUsers autofavoritedVoteCoefficient:(uint64_t)self0 baselineRatePrior:(void *)self1 bundleFreeMultiplierForFreeUsers:(BOOL)self2 bundleFreeMultiplierForTrialUsers:(void *)self3 bundleFreeMultiplierForPaidUsers:(void *)self4 bundlePaidMultiplierForFreeUsers:(void *)self5 bundlePaidMultiplierForTrialUsers:(BOOL)self6 bundlePaidMultiplierForPaidUsers:(double)self7 conversionCoefficientForFreeUsers:(double)self8 conversionCoefficientForTrialUsers:(double)self9 conversionCoefficientForPaidUsers:(double)coefficientForPaidUsers conversionCohort:(double)cohort ctrWithOneAutofavorited:(double)autofavorited ctrWithOneSubscribed:(double)subscribed ctrWithSubscribedChannel:(double)channel ctrWithThreeAutofavorited:(double)threeAutofavorited ctrWithThreeSubscribed:(double)threeSubscribed ctrWithTwoAutofavorited:(double)twoAutofavorited ctrWithTwoSubscribed:(double)twoSubscribed ctrWithZeroAutofavorited:(double)zeroAutofavorited ctrWithZeroSubscribed:(double)multiplier0 decayFactor:(double)multiplier1 featuredMultiplierForFreeUsers:(double)multiplier2 featuredMultiplierForTrialUsers:(double)multiplier3 featuredMultiplierForPaidUsers:(double)multiplier4 evergreenMultiplierForFreeUsers:(double)multiplier5 evergreenMultiplierForTrialUsers:(double)multiplier6 evergreenMultiplierForPaidUsers:(double)multiplier7 globalScoreCoefficientFree:(double)multiplier8 globalScoreCoefficientPaid:(double)multiplier9 globalScoreCoefficientHalfLife:(double)weight0 globalScoreCoefficientInitialMultiplier:(double)weight1 globalScoreDemocratizationFactor:(double)weight2 conversionScoreDemocratizationFactor:(double)weight3 headlineSeenPenalty:(double)weight4 halfLifeCoefficient:(double)weight5 userFeedbackHalfLifeCoefficient:(double)weight6 evergreenHalfLifeCoefficient:(double)weight7 respectHalfLifeOverride:(double)weight8 mutedVoteCoefficient:(double)weight9 publisherAggregateWeight:(double)penalty0 sparseTagsPenalty:(double)penalty1 subscribedChannelScoreCoefficient:(double)penalty2 subscribedTopicsScoreCoefficient:(double)penalty3 userCohort:(double)penalty4 lowFlowBoostFetchCountWeight:(double)penalty5 lowFlowBoostFactor:(double)penalty6 lowFlowBoostMaxProductFactor:(double)penalty7 lowFlowBoostFetchEstimationConfig:(double)penalty8 lowFlowBoostEventEstimationConfig:(double)penalty9 nicheContentBoostOnlyAboveBaselineMembership:(double)listenedPenalty0 nicheContentBaselineMembershipMultiplier:(double)listenedPenalty1 nicheContentManagedTopicBoostAllTags:(BOOL)listenedPenalty2 nicheContentDefaultFlowRate:(double)listenedPenalty3 nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:
{
  priorCopy = prior;
  forTrialUsersCopy = forTrialUsers;
  forPaidUsersCopy = forPaidUsers;
  forFreeUsersCopy = forFreeUsers;
  v123.receiver = self;
  v123.super_class = FCPersonalizationScoringConfig;
  v99 = [(FCPersonalizationScoringConfig *)&v123 init];
  v100 = v99;
  if (v99)
  {
    v120 = STACK[0x558];
    v121 = STACK[0x560];
    v118 = STACK[0x548];
    v119 = STACK[0x550];
    v117 = STACK[0x540];
    v115 = STACK[0x538];
    v116 = STACK[0x539];
    v113 = STACK[0x528];
    v114 = STACK[0x530];
    v112 = STACK[0x520];
    v111 = STACK[0x518];
    v110 = STACK[0x510];
    v109 = STACK[0x508];
    v108 = STACK[0x500];
    v107 = STACK[0x4F8];
    v106 = STACK[0x4F0];
    v105 = STACK[0x4E8];
    v104 = STACK[0x4E0];
    v103 = STACK[0x4D8];
    v102 = STACK[0x4D0];
    v99->_anfMultiplier = a2;
    v99->_articleLengthAggregateWeight = multiplier;
    v99->_articleReadPenalty = weight;
    v99->_articleListenedPenalty = penalty;
    v99->_audioMultiplierForFreeUsers = listenedPenalty;
    v99->_audioMultiplierForTrialUsers = users;
    v99->_audioMultiplierForPaidUsers = trialUsers;
    v99->_autofavoritedVoteCoefficient = paidUsers;
    v99->_baselineRatePrior = multiplierForPaidUsers;
    v99->_bundleFreeMultiplierForFreeUsers = coefficientForFreeUsers;
    v99->_bundleFreeMultiplierForTrialUsers = coefficientForTrialUsers;
    v99->_bundleFreeMultiplierForPaidUsers = coefficientForPaidUsers;
    v99->_bundlePaidMultiplierForFreeUsers = cohort;
    v99->_bundlePaidMultiplierForTrialUsers = autofavorited;
    v99->_bundlePaidMultiplierForPaidUsers = subscribed;
    v99->_conversionCoefficientForFreeUsers = channel;
    v99->_conversionCoefficientForTrialUsers = threeAutofavorited;
    v99->_conversionCoefficientForPaidUsers = threeSubscribed;
    objc_storeStrong(&v99->_conversionCohort, prior);
    v100->_ctrWithOneAutofavorited = twoAutofavorited;
    v100->_ctrWithOneSubscribed = twoSubscribed;
    v100->_ctrWithSubscribedChannel = zeroAutofavorited;
    v100->_ctrWithThreeAutofavorited = zeroSubscribed;
    v100->_ctrWithThreeSubscribed = factor;
    v100->_ctrWithTwoAutofavorited = multiplierForFreeUsers;
    v100->_ctrWithTwoSubscribed = featuredMultiplierForTrialUsers;
    v100->_ctrWithZeroAutofavorited = featuredMultiplierForPaidUsers;
    v100->_ctrWithZeroSubscribed = evergreenMultiplierForFreeUsers;
    v100->_decayFactor = evergreenMultiplierForTrialUsers;
    v100->_featuredMultiplierForFreeUsers = evergreenMultiplierForPaidUsers;
    v100->_featuredMultiplierForTrialUsers = free;
    v100->_featuredMultiplierForPaidUsers = paid;
    v100->_evergreenMultiplierForFreeUsers = life;
    v100->_evergreenMultiplierForTrialUsers = initialMultiplier;
    v100->_evergreenMultiplierForPaidUsers = democratizationFactor;
    v100->_globalScoreCoefficientFree = scoreDemocratizationFactor;
    v100->_globalScoreCoefficientPaid = seenPenalty;
    v100->_globalScoreCoefficientHalfLife = lifeCoefficient;
    v100->_globalScoreCoefficientInitialMultiplier = halfLifeCoefficient;
    v100->_globalScoreDemocratizationFactor = evergreenHalfLifeCoefficient;
    v100->_conversionScoreDemocratizationFactor = override;
    v100->_headlineSeenPenalty = voteCoefficient;
    v100->_halfLifeCoefficient = aggregateWeight;
    v100->_respectHalfLifeOverride = freeUsers;
    v100->_evergreenHalfLifeCoefficient = scoreCoefficient;
    v100->_mutedVoteCoefficient = topicsScoreCoefficient;
    v100->_publisherAggregateWeight = userCohort;
    v100->_sparseTagsPenalty = countWeight;
    v100->_subscribedChannelScoreCoefficient = boostFactor;
    v100->_subscribedTopicsScoreCoefficient = productFactor;
    objc_storeStrong(&v100->_userCohort, forTrialUsers);
    v100->_userFeedbackHalfLifeCoefficient = tagsPenalty;
    v100->_lowFlowBoostFetchCountWeight = config;
    v100->_lowFlowBoostFactor = estimationConfig;
    v100->_lowFlowBoostMaxProductFactor = membership;
    objc_storeStrong(&v100->_lowFlowBoostFetchEstimationConfig, forPaidUsers);
    objc_storeStrong(&v100->_lowFlowBoostEventEstimationConfig, forFreeUsers);
    v100->_nicheContentBaselineMembershipMultiplier = membershipMultiplier;
    v100->_nicheContentDefaultFlowRate = rate;
    v100->_nicheContentDefaultSubscriptionRate = a64;
    v100->_nicheContentTopicFlowExponent = a67;
    v100->_nicheContentBoostOnlyAboveBaselineMembership = multiplierForTrialUsers;
    v100->_nicheContentManagedTopicBoostAllTags = tags;
    v100->_nicheContentExcludeNonGroupableTopics = a65;
    v100->_nicheContentShouldBoostPublisher = a66;
    v100->_nicheContentPublisherFlowExponent = a68;
    v100->_nicheContentManagedTopicBoost = a69;
    v100->_nicheContentServerFlowWeight = a70;
    v100->_nicheContentTopicSubscriptionExponent = a71;
    v100->_nicheContentPublisherSubscriptionExponent = a72;
    v100->_nicheContentQualityThreshold = a73;
    v100->_contentTriggerMaxEventCount = a74;
    v100->_contentTriggerScoreExponent = a75;
    v100->_contentTriggerTagWeightExponent = a76;
    v100->_contentTriggerMinScoreWeight = a77;
    v100->_contentTriggerMaxDampener = a78;
    v100->_contentTriggerDampenerCoefficient = a79;
    v100->_personalizedMultiplierBaselineMembership = a80;
    v100->_personalizedMultiplierPreBaselineCurvature = a81;
    *&v100->_personalizedMultiplierPostBaselineCurvature = v102;
    *&v100->_personalizedMultiplierMembershipDampener = v103;
    *&v100->_publisherDampenerWeight = v104;
    *&v100->_recentlyFollowedDurationThreshold = v105;
    *&v100->_recentlyFollowedMultiplier = v106;
    *&v100->_tabiScoreCoefficient = v107;
    *&v100->_clientSideEngagementBoostFeaturedArticleMultiplier = v108;
    *&v100->_clientSideEngagementBoostFeatureCandidateArticleMultiplier = v109;
    *&v100->_clientSideEngagementBoostFreeCohortCTRCap = v110;
    *&v100->_clientSideEngagementBoostPaidCohortCTRCap = v111;
    *&v100->_clientSideEngagementBoostTagQualityMultiplier = v112;
    *&v100->_clientSideEngagementBoostReduceVisibilityMultiplier = v113;
    *&v100->_clientSideEngagementBoostANFMutiplier = v114;
    v100->_dampenerEnabled = v115;
    v100->_multiplierEnabled = v116;
    *&v100->_peopleAlsoReadBaselineScore = v117;
    *&v100->_peopleAlsoReadConditionalScoreCoefficient = v118;
    *&v100->_peopleAlsoReadScoreCoefficient = v119;
    *&v100->_recipeSeenPenalty = v120;
    *&v100->_recipeViewedPenalty = v121;
  }

  return v100;
}

- (FCPersonalizationScoringConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"anfMultiplier"];
  v121 = v4;
  [coderCopy decodeDoubleForKey:@"articleLengthAggregateWeight"];
  v120 = v5;
  [coderCopy decodeDoubleForKey:@"articleReadPenalty"];
  v119 = v6;
  [coderCopy decodeDoubleForKey:@"articleListenedPenalty"];
  v118 = v7;
  [coderCopy decodeDoubleForKey:@"audioMultiplierForFreeUsers"];
  v117 = v8;
  [coderCopy decodeDoubleForKey:@"audioMultiplierForTrialUsers"];
  v116 = v9;
  [coderCopy decodeDoubleForKey:@"audioMultiplierForPaidUsers"];
  v115 = v10;
  [coderCopy decodeDoubleForKey:@"autofavoritedVoteCoefficient"];
  v114 = v11;
  [coderCopy decodeDoubleForKey:@"baselineRatePrior"];
  v113 = v12;
  [coderCopy decodeDoubleForKey:@"bundleFreeMultiplierForFreeUsers"];
  v112 = v13;
  [coderCopy decodeDoubleForKey:@"bundleFreeMultiplierForTrialUsers"];
  v111 = v14;
  [coderCopy decodeDoubleForKey:@"bundleFreeMultiplierForPaidUsers"];
  v110 = v15;
  [coderCopy decodeDoubleForKey:@"bundlePaidMultiplierForFreeUsers"];
  v109 = v16;
  [coderCopy decodeDoubleForKey:@"bundlePaidMultiplierForTrialUsers"];
  v108 = v17;
  [coderCopy decodeDoubleForKey:@"bundlePaidMultiplierForPaidUsers"];
  v107 = v18;
  [coderCopy decodeDoubleForKey:@"conversionCoefficientForFreeUsers"];
  v106 = v19;
  [coderCopy decodeDoubleForKey:@"conversionCoefficientForTrialUsers"];
  v104 = v20;
  [coderCopy decodeDoubleForKey:@"conversionCoefficientForPaidUsers"];
  v103 = v21;
  v105 = [coderCopy decodeObjectForKey:@"conversionCohort"];
  [coderCopy decodeDoubleForKey:@"ctrWithOneAutofavorited"];
  v102 = v22;
  [coderCopy decodeDoubleForKey:@"ctrWithOneSubscribed"];
  v101 = v23;
  [coderCopy decodeDoubleForKey:@"ctrWithSubscribedChannel"];
  v100 = v24;
  [coderCopy decodeDoubleForKey:@"ctrWithThreeAutofavorited"];
  v99 = v25;
  [coderCopy decodeDoubleForKey:@"ctrWithThreeSubscribed"];
  v98 = v26;
  [coderCopy decodeDoubleForKey:@"ctrWithTwoAutofavorited"];
  v97 = v27;
  [coderCopy decodeDoubleForKey:@"ctrWithTwoSubscribed"];
  v96 = v28;
  [coderCopy decodeDoubleForKey:@"ctrWithZeroAutofavorited"];
  v95 = v29;
  [coderCopy decodeDoubleForKey:@"ctrWithZeroSubscribed"];
  v94 = v30;
  [coderCopy decodeDoubleForKey:@"decayFactor"];
  v93 = v31;
  [coderCopy decodeDoubleForKey:@"featuredMultiplierForFreeUsers"];
  v92 = v32;
  [coderCopy decodeDoubleForKey:@"featuredMultiplierForTrialUsers"];
  v91 = v33;
  [coderCopy decodeDoubleForKey:@"featuredMultiplierForPaidUsers"];
  v90 = v34;
  [coderCopy decodeDoubleForKey:@"evergreenMultiplierForFreeUsers"];
  v89 = v35;
  [coderCopy decodeDoubleForKey:@"evergreenMultiplierForTrialUsers"];
  v87 = v36;
  [coderCopy decodeDoubleForKey:@"evergreenMultiplierForPaidUsers"];
  v86 = v37;
  [coderCopy decodeDoubleForKey:@"globalScoreCoefficientFree"];
  v85 = v38;
  [coderCopy decodeDoubleForKey:@"globalScoreCoefficientPaid"];
  v84 = v39;
  [coderCopy decodeDoubleForKey:@"globalScoreCoefficientHalfLife"];
  v83 = v40;
  [coderCopy decodeDoubleForKey:@"globalScoreCoefficientInitialMultiplier"];
  v82 = v41;
  [coderCopy decodeDoubleForKey:@"globalScoreDemocratizationFactor"];
  v81 = v42;
  [coderCopy decodeDoubleForKey:@"conversionScoreDemocratizationFactor"];
  v80 = v43;
  [coderCopy decodeDoubleForKey:@"headlineSeenPenalty"];
  v79 = v44;
  [coderCopy decodeDoubleForKey:@"halfLifeCoefficient"];
  v78 = v45;
  [coderCopy decodeDoubleForKey:@"userFeedbackHalfLifeCoefficient"];
  v76 = v46;
  [coderCopy decodeDoubleForKey:@"evergreenHalfLifeCoefficient"];
  v75 = v47;
  v88 = [coderCopy decodeBoolForKey:@"respectHalfLifeOverride"];
  [coderCopy decodeDoubleForKey:@"mutedVoteCoefficient"];
  v74 = v48;
  [coderCopy decodeDoubleForKey:@"publisherAggregateWeight"];
  v73 = v49;
  [coderCopy decodeDoubleForKey:@"sparseTagsPenalty"];
  v72 = v50;
  [coderCopy decodeDoubleForKey:@"subscribedChannelScoreCoefficient"];
  v71 = v51;
  [coderCopy decodeDoubleForKey:@"subscribedTopicsScoreCoefficient"];
  v70 = v52;
  v53 = [coderCopy decodeObjectForKey:@"userCohort"];
  [coderCopy decodeDoubleForKey:@"lowFlowBoostFetchCountWeight"];
  v69 = v54;
  [coderCopy decodeDoubleForKey:@"lowFlowBoostFactor"];
  v68 = v55;
  [coderCopy decodeDoubleForKey:@"lowFlowBoostMaxProductFactor"];
  v67 = v56;
  v57 = [coderCopy decodeObjectForKey:@"lowFlowBoostFetchEstimationConfig"];
  v58 = [coderCopy decodeObjectForKey:@"lowFlowBoostEventEstimationConfig"];
  v77 = [coderCopy decodeBoolForKey:@"nicheContentBoostOnlyAboveBaselineMembership"];
  [coderCopy decodeDoubleForKey:@"nicheContentBaselineMembershipMultiplier"];
  v66 = v59;
  v60 = [coderCopy decodeBoolForKey:@"nicheContentManagedTopicBoostAllTags"];
  [coderCopy decodeDoubleForKey:@"nicheContentDefaultFlowRate"];
  v65 = v61;
  [coderCopy decodeDoubleForKey:@"nicheContentDefaultSubscriptionRate"];
  [coderCopy decodeBoolForKey:@"nicheContentExcludeNonGroupableTopics"];
  [coderCopy decodeBoolForKey:@"nicheContentShouldBoostPublisher"];
  [coderCopy decodeDoubleForKey:@"nicheContentTopicFlowExponent"];
  [coderCopy decodeDoubleForKey:@"nicheContentPublisherFlowExponent"];
  [coderCopy decodeDoubleForKey:@"nicheContentManagedTopicBoost"];
  [coderCopy decodeDoubleForKey:@"nicheContentServerFlowWeight"];
  [coderCopy decodeDoubleForKey:@"nicheContentTopicSubscriptionExponent"];
  [coderCopy decodeDoubleForKey:@"nicheContentPublisherSubscriptionExponent"];
  [coderCopy decodeDoubleForKey:@"nicheContentQualityThreshold"];
  [coderCopy decodeIntegerForKey:@"contentTriggerMaxEventCount"];
  [coderCopy decodeDoubleForKey:@"contentTriggerScoreExponent"];
  [coderCopy decodeDoubleForKey:@"contentTriggerTagWeightExponent"];
  [coderCopy decodeDoubleForKey:@"contentTriggerMinScoreWeight"];
  [coderCopy decodeDoubleForKey:@"contentTriggerMaxDampener"];
  [coderCopy decodeDoubleForKey:@"contentTriggerDampenerCoefficient"];
  [coderCopy decodeDoubleForKey:@"personalizedMultiplierBaselineMembership"];
  [coderCopy decodeDoubleForKey:@"personalizedMultiplierPreBaselineCurvature"];
  [coderCopy decodeDoubleForKey:@"personalizedMultiplierPostBaselineCurvature"];
  [coderCopy decodeDoubleForKey:@"personalizedMultiplierMembershipDampener"];
  [coderCopy decodeDoubleForKey:@"publisherDampenerWeight"];
  [coderCopy decodeDoubleForKey:@"recentlyFollowedDurationThreshold"];
  [coderCopy decodeDoubleForKey:@"recentlyFollowedMultiplier"];
  [coderCopy decodeDoubleForKey:@"tabiScoreCoefficient"];
  [coderCopy decodeDoubleForKey:@"clientSideEngagementBoostFeaturedArticleMultiplier"];
  [coderCopy decodeDoubleForKey:@"clientSideEngagementBoostFeatureCandidateArticleMultiplier"];
  [coderCopy decodeDoubleForKey:@"clientSideEngagementBoostFreeCohortCTRCap"];
  [coderCopy decodeDoubleForKey:@"clientSideEngagementBoostPaidCohortCTRCap"];
  [coderCopy decodeDoubleForKey:@"clientSideEngagementBoostTagQualityMultiplier"];
  [coderCopy decodeDoubleForKey:@"clientSideEngagementBoostReduceVisibilityMultiplier"];
  [coderCopy decodeDoubleForKey:@"clientSideEngagementBoostANFMutiplier"];
  [coderCopy decodeBoolForKey:@"dampenerEnabled"];
  [coderCopy decodeBoolForKey:@"multiplierEnabled"];
  [coderCopy decodeDoubleForKey:@"peopleAlsoReadBaselineScore"];
  [coderCopy decodeDoubleForKey:@"peopleAlsoReadConditionalScoreCoefficient"];
  [coderCopy decodeDoubleForKey:@"peopleAlsoReadScoreCoefficient"];
  [coderCopy decodeDoubleForKey:@"recipeSeenPenalty"];
  [coderCopy decodeDoubleForKey:@"recipeViewedPenalty"];

  LOBYTE(v64) = v60;
  v62 = [FCPersonalizationScoringConfig initWithAnfMultiplier:articleLengthAggregateWeight:articleReadPenalty:articleListenedPenalty:audioMultiplierForFreeUsers:audioMultiplierForTrialUsers:audioMultiplierForPaidUsers:autofavoritedVoteCoefficient:baselineRatePrior:bundleFreeMultiplierForFreeUsers:bundleFreeMultiplierForTrialUsers:bundleFreeMultiplierForPaidUsers:bundlePaidMultiplierForFreeUsers:bundlePaidMultiplierForTrialUsers:bundlePaidMultiplierForPaidUsers:conversionCoefficientForFreeUsers:conversionCoefficientForTrialUsers:conversionCoefficientForPaidUsers:conversionCohort:ctrWithOneAutofavorited:ctrWithOneSubscribed:ctrWithSubscribedChannel:ctrWithThreeAutofavorited:ctrWithThreeSubscribed:ctrWithTwoAutofavorited:ctrWithTwoSubscribed:ctrWithZeroAutofavorited:ctrWithZeroSubscribed:decayFactor:featuredMultiplierForFreeUsers:featuredMultiplierForTrialUsers:featuredMultiplierForPaidUsers:evergreenMultiplierForFreeUsers:evergreenMultiplierForTrialUsers:evergreenMultiplierForPaidUsers:globalScoreCoefficientFree:globalScoreCoefficientPaid:globalScoreCoefficientHalfLife:globalScoreCoefficientInitialMultiplier:globalScoreDemocratizationFactor:conversionScoreDemocratizationFactor:headlineSeenPenalty:halfLifeCoefficient:userFeedbackHalfLifeCoefficient:evergreenHalfLifeCoefficient:respectHalfLifeOverride:mutedVoteCoefficient:publisherAggregateWeight:sparseTagsPenalty:subscribedChannelScoreCoefficient:subscribedTopicsScoreCoefficient:userCohort:lowFlowBoostFetchCountWeight:lowFlowBoostFactor:lowFlowBoostMaxProductFactor:lowFlowBoostFetchEstimationConfig:lowFlowBoostEventEstimationConfig:nicheContentBoostOnlyAboveBaselineMembership:nicheContentBaselineMembershipMultiplier:nicheContentManagedTopicBoostAllTags:nicheContentDefaultFlowRate:nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:]( self,  "initWithAnfMultiplier:articleLengthAggregateWeight:articleReadPenalty:articleListenedPenalty:audioMultiplierForFreeUsers:audioMultiplierForTrialUsers:audioMultiplierForPaidUsers:autofavoritedVoteCoefficient:baselineRatePrior:bundleFreeMultiplierForFreeUsers:bundleFreeMultiplierForTrialUsers:bundleFreeMultiplierForPaidUsers:bundlePaidMultiplierForFreeUsers:bundlePaidMultiplierForTrialUsers:bundlePaidMultiplierForPaidUsers:conversionCoefficientForFreeUsers:conversionCoefficientForTrialUsers:conversionCoefficientForPaidUsers:conversionCohort:ctrWithOneAutofavorited:ctrWithOneSubscribed:ctrWithSubscribedChannel:ctrWithThreeAutofavorited:ctrWithThreeSubscribed:ctrWithTwoAutofavorited:ctrWithTwoSubscribed:ctrWithZeroAutofavorited:ctrWithZeroSubscribed:decayFactor:featuredMultiplierForFreeUsers:featuredMultiplierForTrialUsers:featuredMultiplierForPaidUsers:evergreenMultiplierForFreeUsers:evergreenMultiplierForTrialUsers:evergreenMultiplierForPaidUsers:globalScoreCoefficientFree:globalScoreCoefficientPaid:globalScoreCoefficientHalfLife:globalScoreCoefficientInitialMultiplier:globalScoreDemocratizationFactor:conversionScoreDemocratizationFactor:headlineSeenPenalty:halfLifeCoefficient:userFeedbackHalfLifeCoefficient:evergreenHalfLifeCoefficient:respectHalfLifeOverride:mutedVoteCoefficient:publisherAggregateWeight:sparseTagsPenalty:subscribedChannelScoreCoefficient:subscribedTopicsScoreCoefficient:userCohort:lowFlowBoostFetchCountWeight:lowFlowBoostFactor:lowFlowBoostMaxProductFactor:lowFlowBoostFetchEstimationConfig:lowFlowBoostEventEstimationConfig:nicheContentBoostOnlyAboveBaselineMembership:nicheContentBaselineMembershipMultiplier:nicheContentManagedTopicBoostAllTags:nicheContentDefaultFlowRate:nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:",  v105,  v88,  v53,  v57,  v58,  v77,  v121,  v120,  v119,  v118,  v117,  v116,  v115,  v114,  v113,  v112,  v111,  v110,  v109,  v108,  v107,  v106,  v104,  v103,  v102,  v101,  v100,  v99,  v98,  v97,  v96,  v95,  v94,  v93,  v92,  v91,  v90,  v89,  v87,  v86,  v85,  v84,  v83,  v82,  v81,  v80,  v79,
          v78,
          v76,
          v75,
          v74,
          v73,
          v72,
          v71,
          v70,
          v69,
          v68,
          v67,
          v66,
          v64,
          v65);

  return v62;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(FCPersonalizationScoringConfig *)self anfMultiplier];
  [coderCopy encodeDouble:@"anfMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self articleLengthAggregateWeight];
  [coderCopy encodeDouble:@"articleLengthAggregateWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self articleReadPenalty];
  [coderCopy encodeDouble:@"articleReadPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self articleListenedPenalty];
  [coderCopy encodeDouble:@"articleListenedPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self audioMultiplierForFreeUsers];
  [coderCopy encodeDouble:@"audioMultiplierForAUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self audioMultiplierForTrialUsers];
  [coderCopy encodeDouble:@"audioMultiplierForBUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self audioMultiplierForPaidUsers];
  [coderCopy encodeDouble:@"audioMultiplierForCUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self autofavoritedVoteCoefficient];
  [coderCopy encodeDouble:@"autofavoritedVoteCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self baselineRatePrior];
  [coderCopy encodeDouble:@"baselineRatePrior" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundleFreeMultiplierForFreeUsers];
  [coderCopy encodeDouble:@"bundleFreeMultiplierForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundleFreeMultiplierForTrialUsers];
  [coderCopy encodeDouble:@"bundleFreeMultiplierForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundleFreeMultiplierForPaidUsers];
  [coderCopy encodeDouble:@"bundleFreeMultiplierForPaidUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundlePaidMultiplierForFreeUsers];
  [coderCopy encodeDouble:@"bundlePaidMultiplierForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundlePaidMultiplierForTrialUsers];
  [coderCopy encodeDouble:@"bundlePaidMultiplierForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundlePaidMultiplierForPaidUsers];
  [coderCopy encodeDouble:@"bundlePaidMultiplierForPaidUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self conversionCoefficientForFreeUsers];
  [coderCopy encodeDouble:@"conversionCoefficientForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self conversionCoefficientForTrialUsers];
  [coderCopy encodeDouble:@"conversionCoefficientForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self conversionCoefficientForPaidUsers];
  [coderCopy encodeDouble:@"conversionCoefficientForPaidUsers" forKey:?];
  conversionCohort = [(FCPersonalizationScoringConfig *)self conversionCohort];
  [coderCopy encodeObject:conversionCohort forKey:@"conversionCohort"];

  [(FCPersonalizationScoringConfig *)self ctrWithOneAutofavorited];
  [coderCopy encodeDouble:@"ctrWithOneAutofavorited" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithOneSubscribed];
  [coderCopy encodeDouble:@"ctrWithOneSubscribed" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithSubscribedChannel];
  [coderCopy encodeDouble:@"ctrWithSubscribedChannel" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithThreeAutofavorited];
  [coderCopy encodeDouble:@"ctrWithThreeAutofavorited" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithThreeSubscribed];
  [coderCopy encodeDouble:@"ctrWithThreeSubscribed" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithTwoAutofavorited];
  [coderCopy encodeDouble:@"ctrWithTwoAutofavorited" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithTwoSubscribed];
  [coderCopy encodeDouble:@"ctrWithTwoSubscribed" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithZeroAutofavorited];
  [coderCopy encodeDouble:@"ctrWithZeroAutofavorited" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithZeroSubscribed];
  [coderCopy encodeDouble:@"ctrWithZeroSubscribed" forKey:?];
  [(FCPersonalizationScoringConfig *)self decayFactor];
  [coderCopy encodeDouble:@"decayFactor" forKey:?];
  [(FCPersonalizationScoringConfig *)self featuredMultiplierForFreeUsers];
  [coderCopy encodeDouble:@"featuredMultiplierForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self featuredMultiplierForTrialUsers];
  [coderCopy encodeDouble:@"featuredMultiplierForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self featuredMultiplierForPaidUsers];
  [coderCopy encodeDouble:@"featuredMultiplierForPaidUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self evergreenMultiplierForFreeUsers];
  [coderCopy encodeDouble:@"evergreenMultiplierForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self evergreenMultiplierForTrialUsers];
  [coderCopy encodeDouble:@"evergreenMultiplierForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self evergreenMultiplierForPaidUsers];
  [coderCopy encodeDouble:@"evergreenMultiplierForPaidUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreCoefficientFree];
  [coderCopy encodeDouble:@"globalScoreCoefficientFree" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreCoefficientPaid];
  [coderCopy encodeDouble:@"globalScoreCoefficientPaid" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreCoefficientHalfLife];
  [coderCopy encodeDouble:@"globalScoreCoefficientHalfLife" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreCoefficientInitialMultiplier];
  [coderCopy encodeDouble:@"globalScoreCoefficientInitialMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreDemocratizationFactor];
  [coderCopy encodeDouble:@"globalScoreDemocratizationFactor" forKey:?];
  [(FCPersonalizationScoringConfig *)self conversionScoreDemocratizationFactor];
  [coderCopy encodeDouble:@"conversionScoreDemocratizationFactor" forKey:?];
  [(FCPersonalizationScoringConfig *)self headlineSeenPenalty];
  [coderCopy encodeDouble:@"headlineSeenPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self halfLifeCoefficient];
  [coderCopy encodeDouble:@"halfLifeCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self userFeedbackHalfLifeCoefficient];
  [coderCopy encodeDouble:@"userFeedbackHalfLifeCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self evergreenHalfLifeCoefficient];
  [coderCopy encodeDouble:@"evergreenHalfLifeCoefficient" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationScoringConfig respectHalfLifeOverride](self forKey:{"respectHalfLifeOverride"), @"respectHalfLifeOverride"}];
  [(FCPersonalizationScoringConfig *)self mutedVoteCoefficient];
  [coderCopy encodeDouble:@"mutedVoteCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self publisherAggregateWeight];
  [coderCopy encodeDouble:@"publisherAggregateWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self sparseTagsPenalty];
  [coderCopy encodeDouble:@"sparseTagsPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self subscribedChannelScoreCoefficient];
  [coderCopy encodeDouble:@"subscribedChannelScoreCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self subscribedTopicsScoreCoefficient];
  [coderCopy encodeDouble:@"subscribedTopicsScoreCoefficient" forKey:?];
  userCohort = [(FCPersonalizationScoringConfig *)self userCohort];
  [coderCopy encodeObject:userCohort forKey:@"userCohort"];

  [(FCPersonalizationScoringConfig *)self lowFlowBoostFetchCountWeight];
  [coderCopy encodeDouble:@"lowFlowBoostFetchCountWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self lowFlowBoostFactor];
  [coderCopy encodeDouble:@"lowFlowBoostFactor" forKey:?];
  [(FCPersonalizationScoringConfig *)self lowFlowBoostMaxProductFactor];
  [coderCopy encodeDouble:@"lowFlowBoostMaxProductFactor" forKey:?];
  lowFlowBoostFetchEstimationConfig = [(FCPersonalizationScoringConfig *)self lowFlowBoostFetchEstimationConfig];
  [coderCopy encodeObject:lowFlowBoostFetchEstimationConfig forKey:@"lowFlowBoostFetchEstimationConfig"];

  lowFlowBoostEventEstimationConfig = [(FCPersonalizationScoringConfig *)self lowFlowBoostEventEstimationConfig];
  [coderCopy encodeObject:lowFlowBoostEventEstimationConfig forKey:@"lowFlowBoostEventEstimationConfig"];

  [coderCopy encodeBool:-[FCPersonalizationScoringConfig nicheContentBoostOnlyAboveBaselineMembership](self forKey:{"nicheContentBoostOnlyAboveBaselineMembership"), @"nicheContentBoostOnlyAboveBaselineMembership"}];
  [(FCPersonalizationScoringConfig *)self nicheContentBaselineMembershipMultiplier];
  [coderCopy encodeDouble:@"nicheContentBaselineMembershipMultiplier" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationScoringConfig nicheContentManagedTopicBoostAllTags](self forKey:{"nicheContentManagedTopicBoostAllTags"), @"nicheContentManagedTopicBoostAllTags"}];
  [(FCPersonalizationScoringConfig *)self nicheContentDefaultFlowRate];
  [coderCopy encodeDouble:@"nicheContentDefaultFlowRate" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentDefaultSubscriptionRate];
  [coderCopy encodeDouble:@"nicheContentDefaultSubscriptionRate" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationScoringConfig nicheContentExcludeNonGroupableTopics](self forKey:{"nicheContentExcludeNonGroupableTopics"), @"nicheContentExcludeNonGroupableTopics"}];
  [coderCopy encodeBool:-[FCPersonalizationScoringConfig nicheContentShouldBoostPublisher](self forKey:{"nicheContentShouldBoostPublisher"), @"nicheContentShouldBoostPublisher"}];
  [(FCPersonalizationScoringConfig *)self nicheContentTopicFlowExponent];
  [coderCopy encodeDouble:@"nicheContentTopicFlowExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentPublisherFlowExponent];
  [coderCopy encodeDouble:@"nicheContentPublisherFlowExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentManagedTopicBoost];
  [coderCopy encodeDouble:@"nicheContentManagedTopicBoost" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentServerFlowWeight];
  [coderCopy encodeDouble:@"nicheContentServerFlowWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentTopicSubscriptionExponent];
  [coderCopy encodeDouble:@"nicheContentTopicSubscriptionExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentPublisherSubscriptionExponent];
  [coderCopy encodeDouble:@"nicheContentPublisherSubscriptionExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentQualityThreshold];
  [coderCopy encodeDouble:@"nicheContentQualityThreshold" forKey:?];
  [coderCopy encodeInteger:-[FCPersonalizationScoringConfig contentTriggerMaxEventCount](self forKey:{"contentTriggerMaxEventCount"), @"contentTriggerMaxEventCount"}];
  [(FCPersonalizationScoringConfig *)self contentTriggerScoreExponent];
  [coderCopy encodeDouble:@"contentTriggerScoreExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self contentTriggerTagWeightExponent];
  [coderCopy encodeDouble:@"contentTriggerTagWeightExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self contentTriggerMinScoreWeight];
  [coderCopy encodeDouble:@"contentTriggerMinScoreWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self contentTriggerMaxDampener];
  [coderCopy encodeDouble:@"contentTriggerMaxDampener" forKey:?];
  [(FCPersonalizationScoringConfig *)self contentTriggerDampenerCoefficient];
  [coderCopy encodeDouble:@"contentTriggerDampenerCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self personalizedMultiplierBaselineMembership];
  [coderCopy encodeDouble:@"personalizedMultiplierBaselineMembership" forKey:?];
  [(FCPersonalizationScoringConfig *)self personalizedMultiplierPreBaselineCurvature];
  [coderCopy encodeDouble:@"personalizedMultiplierPreBaselineCurvature" forKey:?];
  [(FCPersonalizationScoringConfig *)self personalizedMultiplierPostBaselineCurvature];
  [coderCopy encodeDouble:@"personalizedMultiplierPostBaselineCurvature" forKey:?];
  [(FCPersonalizationScoringConfig *)self personalizedMultiplierMembershipDampener];
  [coderCopy encodeDouble:@"personalizedMultiplierMembershipDampener" forKey:?];
  [(FCPersonalizationScoringConfig *)self publisherDampenerWeight];
  [coderCopy encodeDouble:@"publisherDampenerWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self recentlyFollowedDurationThreshold];
  [coderCopy encodeDouble:@"recentlyFollowedDurationThreshold" forKey:?];
  [(FCPersonalizationScoringConfig *)self recentlyFollowedMultiplier];
  [coderCopy encodeDouble:@"recentlyFollowedMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self tabiScoreCoefficient];
  [coderCopy encodeDouble:@"tabiScoreCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostFeaturedArticleMultiplier];
  [coderCopy encodeDouble:@"clientSideEngagementBoostFeaturedArticleMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostFeatureCandidateArticleMultiplier];
  [coderCopy encodeDouble:@"clientSideEngagementBoostFeatureCandidateArticleMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostFreeCohortCTRCap];
  [coderCopy encodeDouble:@"clientSideEngagementBoostFreeCohortCTRCap" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostPaidCohortCTRCap];
  [coderCopy encodeDouble:@"clientSideEngagementBoostPaidCohortCTRCap" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostTagQualityMultiplier];
  [coderCopy encodeDouble:@"clientSideEngagementBoostTagQualityMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostReduceVisibilityMultiplier];
  [coderCopy encodeDouble:@"clientSideEngagementBoostReduceVisibilityMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostANFMutiplier];
  [coderCopy encodeDouble:@"clientSideEngagementBoostANFMutiplier" forKey:?];
  [coderCopy encodeBool:-[FCPersonalizationScoringConfig dampenerEnabled](self forKey:{"dampenerEnabled"), @"dampenerEnabled"}];
  [coderCopy encodeBool:-[FCPersonalizationScoringConfig multiplierEnabled](self forKey:{"multiplierEnabled"), @"multiplierEnabled"}];
  [(FCPersonalizationScoringConfig *)self peopleAlsoReadBaselineScore];
  [coderCopy encodeDouble:@"peopleAlsoReadBaselineScore" forKey:?];
  [(FCPersonalizationScoringConfig *)self peopleAlsoReadConditionalScoreCoefficient];
  [coderCopy encodeDouble:@"peopleAlsoReadConditionalScoreCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self peopleAlsoReadScoreCoefficient];
  [coderCopy encodeDouble:@"peopleAlsoReadScoreCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self recipeSeenPenalty];
  [coderCopy encodeDouble:@"recipeSeenPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self recipeViewedPenalty];
  [coderCopy encodeDouble:@"recipeViewedPenalty" forKey:?];
}

@end