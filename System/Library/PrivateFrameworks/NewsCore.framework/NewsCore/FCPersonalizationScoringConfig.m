@interface FCPersonalizationScoringConfig
- (FCPersonalizationScoringConfig)init;
- (FCPersonalizationScoringConfig)initWithAnfMultiplier:(double)a3 articleLengthAggregateWeight:(double)a4 articleReadPenalty:(double)a5 articleListenedPenalty:(double)a6 audioMultiplierForFreeUsers:(double)a7 audioMultiplierForTrialUsers:(double)a8 audioMultiplierForPaidUsers:(double)a9 autofavoritedVoteCoefficient:(uint64_t)a10 baselineRatePrior:(void *)a11 bundleFreeMultiplierForFreeUsers:(BOOL)a12 bundleFreeMultiplierForTrialUsers:(void *)a13 bundleFreeMultiplierForPaidUsers:(void *)a14 bundlePaidMultiplierForFreeUsers:(void *)a15 bundlePaidMultiplierForTrialUsers:(BOOL)a16 bundlePaidMultiplierForPaidUsers:(double)a17 conversionCoefficientForFreeUsers:(double)a18 conversionCoefficientForTrialUsers:(double)a19 conversionCoefficientForPaidUsers:(double)a20 conversionCohort:(double)a21 ctrWithOneAutofavorited:(double)a22 ctrWithOneSubscribed:(double)a23 ctrWithSubscribedChannel:(double)a24 ctrWithThreeAutofavorited:(double)a25 ctrWithThreeSubscribed:(double)a26 ctrWithTwoAutofavorited:(double)a27 ctrWithTwoSubscribed:(double)a28 ctrWithZeroAutofavorited:(double)a29 ctrWithZeroSubscribed:(double)a30 decayFactor:(double)a31 featuredMultiplierForFreeUsers:(double)a32 featuredMultiplierForTrialUsers:(double)a33 featuredMultiplierForPaidUsers:(double)a34 evergreenMultiplierForFreeUsers:(double)a35 evergreenMultiplierForTrialUsers:(double)a36 evergreenMultiplierForPaidUsers:(double)a37 globalScoreCoefficientFree:(double)a38 globalScoreCoefficientPaid:(double)a39 globalScoreCoefficientHalfLife:(double)a40 globalScoreCoefficientInitialMultiplier:(double)a41 globalScoreDemocratizationFactor:(double)a42 conversionScoreDemocratizationFactor:(double)a43 headlineSeenPenalty:(double)a44 halfLifeCoefficient:(double)a45 userFeedbackHalfLifeCoefficient:(double)a46 evergreenHalfLifeCoefficient:(double)a47 respectHalfLifeOverride:(double)a48 mutedVoteCoefficient:(double)a49 publisherAggregateWeight:(double)a50 sparseTagsPenalty:(double)a51 subscribedChannelScoreCoefficient:(double)a52 subscribedTopicsScoreCoefficient:(double)a53 userCohort:(double)a54 lowFlowBoostFetchCountWeight:(double)a55 lowFlowBoostFactor:(double)a56 lowFlowBoostMaxProductFactor:(double)a57 lowFlowBoostFetchEstimationConfig:(double)a58 lowFlowBoostEventEstimationConfig:(double)a59 nicheContentBoostOnlyAboveBaselineMembership:(double)a60 nicheContentBaselineMembershipMultiplier:(double)a61 nicheContentManagedTopicBoostAllTags:(BOOL)a62 nicheContentDefaultFlowRate:(double)a63 nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:;
- (FCPersonalizationScoringConfig)initWithCoder:(id)a3;
- (FCPersonalizationScoringConfig)initWithConfigDictionary:(id)a3;
- (FCPersonalizationScoringConfig)initWithConfigDictionary:(id)a3 defaultConfig:(id)a4;
- (void)encodeWithCoder:(id)a3;
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

- (FCPersonalizationScoringConfig)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v132.receiver = self;
  v132.super_class = FCPersonalizationScoringConfig;
  v5 = [(FCPersonalizationScoringConfig *)&v132 init];
  if (v5)
  {
    v131 = v5;
    v6 = FCAppConfigurationDoubleValue(v4, @"anfMultiplier", 1.0);
    if (v6 < 0.0)
    {
      v6 = 1.0;
    }

    v130 = v6;
    v7 = FCAppConfigurationDoubleValue(v4, @"articleLengthAggregateWeight", 1.0);
    if (v7 < 0.0)
    {
      v7 = 1.0;
    }

    v129 = v7;
    v8 = FCAppConfigurationDoubleValue(v4, @"articleReadPenalty", 0.0);
    if (v8 > 1.0 || v8 < 0.0)
    {
      v8 = 0.0;
    }

    v128 = v8;
    v10 = FCAppConfigurationDoubleValue(v4, @"articleListenedPenalty", 0.0);
    if (v10 > 1.0 || v10 < 0.0)
    {
      v10 = 0.0;
    }

    v127 = v10;
    v126 = FCAppConfigurationDoubleValue(v4, @"audioMultiplierForAUsers", 1.1);
    v125 = FCAppConfigurationDoubleValue(v4, @"audioMultiplierForBUsers", 1.1);
    v124 = FCAppConfigurationDoubleValue(v4, @"audioMultiplierForCUsers", 1.1);
    v12 = FCAppConfigurationDoubleValue(v4, @"autofavoritedVoteCoefficient", 0.06);
    if (v12 > 1.0 || v12 < 0.0)
    {
      v12 = 0.06;
    }

    v123 = v12;
    v14 = FCAppConfigurationDoubleValue(v4, @"baselineRatePrior", 0.0166666667);
    if (v14 < 0.0)
    {
      v14 = 0.0166666667;
    }

    v122 = v14;
    v121 = FCAppConfigurationDoubleValue(v4, @"bundleFreeMultiplierForAUsers", 1.1);
    v120 = FCAppConfigurationDoubleValue(v4, @"bundleFreeMultiplierForBUsers", 1.1);
    v119 = FCAppConfigurationDoubleValue(v4, @"bundleFreeMultiplierForCUsers", 1.1);
    v118 = FCAppConfigurationDoubleValue(v4, @"bundlePaidMultiplierForAUsers", 1.1);
    v117 = FCAppConfigurationDoubleValue(v4, @"bundlePaidMultiplierForBUsers", 1.1);
    v115 = FCAppConfigurationDoubleValue(v4, @"bundlePaidMultiplierForCUsers", 1.1);
    v15 = FCAppConfigurationDoubleValue(v4, @"conversionCoefficientForFreeUsers", 0.0);
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v114 = v15;
    v16 = FCAppConfigurationDoubleValue(v4, @"conversionCoefficientForTrialUsers", 0.0);
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v113 = v16;
    v17 = FCAppConfigurationDoubleValue(v4, @"conversionCoefficientForPaidUsers", 0.0);
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    v112 = v17;
    v18 = [FCPersonalizationCohortConfig alloc];
    v116 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"conversionCohort", 0);
    v111 = [(FCPersonalizationCohortConfig *)v18 initWithConfigDictionary:v116];
    v19 = FCAppConfigurationDoubleValue(v4, @"ctrWithOneAutofavorited", 0.004);
    if (v19 < 0.0)
    {
      v19 = 0.004;
    }

    v110 = v19;
    v20 = FCAppConfigurationDoubleValue(v4, @"ctrWithOneSubscribed", 0.015);
    if (v20 < 0.0)
    {
      v20 = 0.015;
    }

    v109 = v20;
    v21 = FCAppConfigurationDoubleValue(v4, @"ctrWithSubscribedChannel", 0.02);
    if (v21 < 0.0)
    {
      v21 = 0.02;
    }

    v108 = v21;
    v22 = FCAppConfigurationDoubleValue(v4, @"ctrWithThreeAutofavorited", 0.012);
    if (v22 < 0.0)
    {
      v22 = 0.012;
    }

    v107 = v22;
    v23 = FCAppConfigurationDoubleValue(v4, @"ctrWithThreeSubscribed", 0.025);
    if (v23 < 0.0)
    {
      v23 = 0.025;
    }

    v106 = v23;
    v24 = FCAppConfigurationDoubleValue(v4, @"ctrWithTwoAutofavorited", 0.008);
    if (v24 < 0.0)
    {
      v24 = 0.008;
    }

    v105 = v24;
    v25 = FCAppConfigurationDoubleValue(v4, @"ctrWithTwoSubscribed", 0.02);
    if (v25 < 0.0)
    {
      v25 = 0.02;
    }

    v104 = v25;
    v26 = FCAppConfigurationDoubleValue(v4, @"ctrWithZeroAutofavorited", 0.0005);
    if (v26 < 0.0)
    {
      v26 = 0.0005;
    }

    v103 = v26;
    v27 = FCAppConfigurationDoubleValue(v4, @"ctrWithZeroSubscribed", 0.001);
    if (v27 < 0.0)
    {
      v27 = 0.001;
    }

    v102 = v27;
    v28 = FCAppConfigurationDoubleValue(v4, @"decayFactor", 0.99);
    if (v28 >= 1.0 || v28 < 0.0)
    {
      v28 = 0.99;
    }

    v101 = v28;
    v100 = FCAppConfigurationDoubleValue(v4, @"featuredMultiplierForAUsers", 1.1);
    v99 = FCAppConfigurationDoubleValue(v4, @"featuredMultiplierForBUsers", 1.1);
    v98 = FCAppConfigurationDoubleValue(v4, @"featuredMultiplierForCUsers", 1.1);
    v97 = FCAppConfigurationDoubleValue(v4, @"evergreenMultiplierForAUsers", 1.0);
    v96 = FCAppConfigurationDoubleValue(v4, @"evergreenMultiplierForBUsers", 1.0);
    v95 = FCAppConfigurationDoubleValue(v4, @"evergreenMultiplierForCUsers", 1.0);
    v30 = FCAppConfigurationDoubleValue(v4, @"globalScoreCoefficientFree", 0.64);
    if (v30 > 1.0 || v30 < 0.0)
    {
      v30 = 0.64;
    }

    v94 = v30;
    v32 = FCAppConfigurationDoubleValue(v4, @"globalScoreCoefficientPaid", 0.64);
    if (v32 > 1.0 || v32 < 0.0)
    {
      v32 = 0.64;
    }

    v93 = v32;
    v34 = FCAppConfigurationDoubleValue(v4, @"globalScoreCoefficientHalfLife", 50.0);
    if (v34 <= 0.0)
    {
      v34 = 50.0;
    }

    v92 = v34;
    v90 = FCAppConfigurationDoubleValue(v4, @"globalScoreCoefficientInitialMultiplier", 2.0);
    v35 = FCAppConfigurationDoubleValue(v4, @"globalScoreDemocratizationFactor", 1.0);
    if (v35 > 1.0 || v35 < 0.0)
    {
      v35 = 1.0;
    }

    v89 = v35;
    v37 = FCAppConfigurationDoubleValue(v4, @"conversionScoreDemocratizationFactor", 1.0);
    if (v37 > 1.0 || v37 < 0.0)
    {
      v37 = 1.0;
    }

    v88 = v37;
    v39 = FCAppConfigurationDoubleValue(v4, @"headlineSeenPenalty", 0.0);
    if (v39 > 1.0 || v39 < 0.0)
    {
      v39 = 0.0;
    }

    v87 = v39;
    v41 = FCAppConfigurationDoubleValue(v4, @"halfLifeCoefficient", 1.0);
    if (v41 < 0.0)
    {
      v41 = 1.0;
    }

    v86 = v41;
    v42 = FCAppConfigurationDoubleValue(v4, @"userFeedbackHalfLifeCoefficient", 0.0);
    if (v42 < 0.0)
    {
      v42 = 0.0;
    }

    v85 = v42;
    v43 = FCAppConfigurationDoubleValue(v4, @"evergreenHalfLifeCoefficient", 0.0);
    if (v43 < 0.0)
    {
      v43 = 0.0;
    }

    v84 = v43;
    v91 = FCAppConfigurationBoolValue(v4, @"respectHalfLifeOverride", 0);
    v44 = FCAppConfigurationDoubleValue(v4, @"mutedVoteCoefficient", 0.2);
    if (v44 > 1.0 || v44 < 0.0)
    {
      v44 = 0.2;
    }

    v83 = v44;
    v46 = FCAppConfigurationDoubleValue(v4, @"publisherAggregateWeight", 1.0);
    if (v46 < 0.0)
    {
      v46 = 1.0;
    }

    v82 = v46;
    v47 = FCAppConfigurationDoubleValue(v4, @"sparseTagsPenalty", 0.0);
    if (v47 > 1.0 || v47 < 0.0)
    {
      v47 = 0.0;
    }

    v81 = v47;
    v49 = FCAppConfigurationDoubleValue(v4, @"subscribedChannelScoreCoefficient", 0.0);
    if (v49 > 1.0 || v49 < 0.0)
    {
      v49 = 0.0;
    }

    v80 = v49;
    v51 = FCAppConfigurationDoubleValue(v4, @"subscribedTopicsScoreCoefficient", 0.0);
    if (v51 > 1.0 || v51 < 0.0)
    {
      v51 = 0.0;
    }

    v78 = v51;
    v53 = [FCPersonalizationCohortConfig alloc];
    v54 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"userCohort", 0);
    v55 = [(FCPersonalizationCohortConfig *)v53 initWithConfigDictionary:v54];
    v56 = FCAppConfigurationDoubleValue(v4, @"lowFlowBoostFetchCountWeight", 0.5);
    if (v56 > 1.0 || v56 < 0.0)
    {
      v56 = 0.5;
    }

    v77 = v56;
    v58 = FCAppConfigurationDoubleValue(v4, @"lowFlowBoostFactor", 0.0);
    if (v58 < 0.0)
    {
      v58 = 0.0;
    }

    v76 = v58;
    v59 = FCAppConfigurationDoubleValue(v4, @"lowFlowBoostMaxProductFactor", 0.1);
    if (v59 > 1.0 || v59 < 0.0)
    {
      v59 = 0.1;
    }

    v75 = v59;
    v61 = [FCPersonalizationLowFlowEstimationConfig alloc];
    v62 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"lowFlowBoostFetchEstimationConfig", 0);
    v63 = [(FCPersonalizationLowFlowEstimationConfig *)v61 initWithConfigDictionary:v62];
    v64 = [FCPersonalizationLowFlowEstimationConfig alloc];
    v65 = FCAppConfigurationDictionaryValueWithDefaultValue(v4, @"lowFlowBoostEventEstimationConfig", 0);
    v66 = [(FCPersonalizationLowFlowEstimationConfig *)v64 initWithConfigDictionary:v65];
    v79 = FCAppConfigurationBoolValue(v4, @"nicheContentBoostOnlyAboveBaselineMembership", 1);
    v73 = FCAppConfigurationDoubleValue(v4, @"nicheContentBaselineMembershipMultiplier", 1.0);
    v74 = FCAppConfigurationBoolValue(v4, @"nicheContentManagedTopicBoostAllTags", 0);
    v67 = FCAppConfigurationDoubleValue(v4, @"nicheContentDefaultFlowRate", 0.0);
    if (v67 > 1.0 || v67 < 0.0)
    {
      v67 = 0.0;
    }

    v72 = v67;
    FCAppConfigurationDoubleValue(v4, @"nicheContentDefaultSubscriptionRate", 0.0);
    FCAppConfigurationBoolValue(v4, @"nicheContentExcludeNonGroupableTopics", 1);
    FCAppConfigurationBoolValue(v4, @"nicheContentShouldBoostPublisher", 1);
    FCAppConfigurationDoubleValue(v4, @"nicheContentTopicFlowExponent", 2.0);
    FCAppConfigurationDoubleValue(v4, @"nicheContentPublisherFlowExponent", 2.0);
    FCAppConfigurationDoubleValue(v4, @"nicheContentManagedTopicBoost", 0.0);
    FCAppConfigurationDoubleValue(v4, @"nicheContentServerFlowWeight", 0.0);
    FCAppConfigurationDoubleValue(v4, @"nicheContentTopicSubscriptionExponent", 1.0);
    FCAppConfigurationDoubleValue(v4, @"nicheContentPublisherSubscriptionExponent", 1.0);
    FCAppConfigurationDoubleValue(v4, @"nicheContentQualityThreshold", 0.06);
    FCAppConfigurationIntegerValue(v4, @"contentTriggerMaxEventCount", 50);
    FCAppConfigurationDoubleValue(v4, @"contentTriggerScoreExponent", 1.0);
    FCAppConfigurationDoubleValue(v4, @"contentTriggerTagWeightExponent", 0.0);
    FCAppConfigurationDoubleValue(v4, @"contentTriggerMinScoreWeight", 1.0);
    FCAppConfigurationDoubleValue(v4, @"contentTriggerMaxDampener", 1.0);
    FCAppConfigurationDoubleValue(v4, @"contentTriggerDampenerCoefficient", 0.0);
    FCAppConfigurationDoubleValue(v4, @"personalizedMultiplierBaselineMembership", 0.2);
    FCAppConfigurationDoubleValue(v4, @"personalizedMultiplierPreBaselineCurvature", 2.0);
    FCAppConfigurationDoubleValue(v4, @"personalizedMultiplierPostBaselineCurvature", 2.0);
    FCAppConfigurationDoubleValue(v4, @"personalizedMultiplierMembershipDampener", 0.0);
    FCAppConfigurationDoubleValue(v4, @"publisherDampenerWeight", 0.0);
    FCAppConfigurationDoubleValue(v4, @"recentlyFollowedDurationThreshold", 43200.0);
    FCAppConfigurationDoubleValue(v4, @"recentlyFollowedMultiplier", 1.0);
    FCAppConfigurationDoubleValue(v4, @"tabiScoreCoefficient", 0.0);
    FCAppConfigurationDoubleValue(v4, @"clientSideEngagementBoostFeaturedArticleMultiplier", 1.1);
    FCAppConfigurationDoubleValue(v4, @"clientSideEngagementBoostFeatureCandidateArticleMultiplier", 1.1);
    FCAppConfigurationDoubleValue(v4, @"clientSideEngagementBoostFreeCohortCTRCap", 0.75);
    FCAppConfigurationDoubleValue(v4, @"clientSideEngagementBoostPaidCohortCTRCap", 0.5);
    FCAppConfigurationDoubleValue(v4, @"clientSideEngagementBoostTagQualityMultiplier", 1.0);
    FCAppConfigurationDoubleValue(v4, @"clientSideEngagementBoostReduceVisibilityMultiplier", 0.1);
    FCAppConfigurationDoubleValue(v4, @"clientSideEngagementBoostANFMutiplier", 1.5);
    FCAppConfigurationBoolValue(v4, @"dampenerEnabled", 1);
    FCAppConfigurationBoolValue(v4, @"multiplierEnabled", 1);
    FCAppConfigurationDoubleValue(v4, @"peopleAlsoReadBaselineScore", 0.0);
    FCAppConfigurationDoubleValue(v4, @"peopleAlsoReadConditionalScoreCoefficient", 0.0);
    FCAppConfigurationDoubleValue(v4, @"peopleAlsoReadScoreCoefficient", 0.0);
    FCAppConfigurationDoubleValue(v4, @"recipeSeenPenalty", 0.0);
    FCAppConfigurationDoubleValue(v4, @"recipeViewedPenalty", 0.0);
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

- (FCPersonalizationScoringConfig)initWithConfigDictionary:(id)a3 defaultConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v265.receiver = self;
  v265.super_class = FCPersonalizationScoringConfig;
  v8 = [(FCPersonalizationScoringConfig *)&v265 init];
  if (v8)
  {
    v263 = v8;
    [v7 anfMultiplier];
    v10 = FCAppConfigurationDoubleValue(v6, @"anfMultiplier", v9);
    [v7 anfMultiplier];
    if (v10 >= 0.0)
    {
      v11 = v10;
    }

    v262 = v11;
    [v7 articleLengthAggregateWeight];
    v13 = FCAppConfigurationDoubleValue(v6, @"articleLengthAggregateWeight", v12);
    [v7 articleLengthAggregateWeight];
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    v261 = v14;
    [v7 articleReadPenalty];
    v16 = FCAppConfigurationDoubleValue(v6, @"articleReadPenalty", v15);
    [v7 articleReadPenalty];
    if (v16 <= 1.0 && v16 >= 0.0)
    {
      v17 = v16;
    }

    v260 = v17;
    [v7 articleListenedPenalty];
    v20 = FCAppConfigurationDoubleValue(v6, @"articleListenedPenalty", v19);
    [v7 articleListenedPenalty];
    if (v20 <= 1.0 && v20 >= 0.0)
    {
      v21 = v20;
    }

    v259 = v21;
    [v7 audioMultiplierForFreeUsers];
    v258 = FCAppConfigurationDoubleValue(v6, @"audioMultiplierForAUsers", v23);
    [v7 audioMultiplierForTrialUsers];
    v257 = FCAppConfigurationDoubleValue(v6, @"audioMultiplierForBUsers", v24);
    [v7 audioMultiplierForPaidUsers];
    v256 = FCAppConfigurationDoubleValue(v6, @"audioMultiplierForCUsers", v25);
    [v7 autofavoritedVoteCoefficient];
    v27 = FCAppConfigurationDoubleValue(v6, @"autofavoritedVoteCoefficient", v26);
    [v7 autofavoritedVoteCoefficient];
    if (v27 <= 1.0 && v27 >= 0.0)
    {
      v28 = v27;
    }

    v255 = v28;
    [v7 baselineRatePrior];
    v31 = FCAppConfigurationDoubleValue(v6, @"baselineRatePrior", v30);
    [v7 baselineRatePrior];
    if (v31 >= 0.0)
    {
      v32 = v31;
    }

    v254 = v32;
    [v7 bundleFreeMultiplierForFreeUsers];
    v253 = FCAppConfigurationDoubleValue(v6, @"bundleFreeMultiplierForAUsers", v33);
    [v7 bundleFreeMultiplierForTrialUsers];
    v252 = FCAppConfigurationDoubleValue(v6, @"bundleFreeMultiplierForBUsers", v34);
    [v7 bundleFreeMultiplierForPaidUsers];
    v251 = FCAppConfigurationDoubleValue(v6, @"bundleFreeMultiplierForCUsers", v35);
    [v7 bundlePaidMultiplierForFreeUsers];
    v249 = FCAppConfigurationDoubleValue(v6, @"bundlePaidMultiplierForAUsers", v36);
    [v7 bundlePaidMultiplierForTrialUsers];
    v248 = FCAppConfigurationDoubleValue(v6, @"bundlePaidMultiplierForBUsers", v37);
    [v7 bundlePaidMultiplierForPaidUsers];
    v246 = FCAppConfigurationDoubleValue(v6, @"bundlePaidMultiplierForCUsers", v38);
    [v7 conversionCoefficientForFreeUsers];
    v40 = FCAppConfigurationDoubleValue(v6, @"conversionCoefficientForFreeUsers", v39);
    [v7 conversionCoefficientForFreeUsers];
    if (v40 >= 0.0)
    {
      v41 = v40;
    }

    v244 = v41;
    [v7 conversionCoefficientForTrialUsers];
    v43 = FCAppConfigurationDoubleValue(v6, @"conversionCoefficientForTrialUsers", v42);
    [v7 conversionCoefficientForTrialUsers];
    if (v43 >= 0.0)
    {
      v44 = v43;
    }

    v243 = v44;
    [v7 conversionCoefficientForPaidUsers];
    v46 = FCAppConfigurationDoubleValue(v6, @"conversionCoefficientForPaidUsers", v45);
    [v7 conversionCoefficientForPaidUsers];
    if (v46 >= 0.0)
    {
      v47 = v46;
    }

    v242 = v47;
    v250 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"conversionCohort", 0);
    if (v250)
    {
      v48 = [FCPersonalizationCohortConfig alloc];
      v247 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"conversionCohort", 0);
      v49 = [(FCPersonalizationCohortConfig *)v48 initWithConfigDictionary:?];
    }

    else
    {
      v49 = [v7 conversionCohort];
      v247 = v49;
    }

    [v7 ctrWithOneAutofavorited];
    v52 = FCAppConfigurationDoubleValue(v6, @"ctrWithOneAutofavorited", v51);
    [v7 ctrWithOneAutofavorited];
    if (v52 >= 0.0)
    {
      v53 = v52;
    }

    v241 = v53;
    [v7 ctrWithOneSubscribed];
    v55 = FCAppConfigurationDoubleValue(v6, @"ctrWithOneSubscribed", v54);
    [v7 ctrWithOneSubscribed];
    if (v55 >= 0.0)
    {
      v56 = v55;
    }

    v240 = v56;
    [v7 ctrWithSubscribedChannel];
    v58 = FCAppConfigurationDoubleValue(v6, @"ctrWithSubscribedChannel", v57);
    [v7 ctrWithSubscribedChannel];
    if (v58 >= 0.0)
    {
      v59 = v58;
    }

    v239 = v59;
    [v7 ctrWithThreeAutofavorited];
    v61 = FCAppConfigurationDoubleValue(v6, @"ctrWithThreeAutofavorited", v60);
    [v7 ctrWithThreeAutofavorited];
    if (v61 >= 0.0)
    {
      v62 = v61;
    }

    v238 = v62;
    [v7 ctrWithThreeSubscribed];
    v64 = FCAppConfigurationDoubleValue(v6, @"ctrWithThreeSubscribed", v63);
    [v7 ctrWithThreeSubscribed];
    if (v64 >= 0.0)
    {
      v65 = v64;
    }

    v237 = v65;
    [v7 ctrWithTwoAutofavorited];
    v67 = FCAppConfigurationDoubleValue(v6, @"ctrWithTwoAutofavorited", v66);
    [v7 ctrWithTwoAutofavorited];
    if (v67 >= 0.0)
    {
      v68 = v67;
    }

    v236 = v68;
    [v7 ctrWithTwoSubscribed];
    v70 = FCAppConfigurationDoubleValue(v6, @"ctrWithTwoSubscribed", v69);
    [v7 ctrWithTwoSubscribed];
    if (v70 >= 0.0)
    {
      v71 = v70;
    }

    v235 = v71;
    [v7 ctrWithZeroAutofavorited];
    v73 = FCAppConfigurationDoubleValue(v6, @"ctrWithZeroAutofavorited", v72);
    [v7 ctrWithZeroAutofavorited];
    if (v73 >= 0.0)
    {
      v74 = v73;
    }

    v234 = v74;
    [v7 ctrWithZeroSubscribed];
    v76 = FCAppConfigurationDoubleValue(v6, @"ctrWithZeroSubscribed", v75);
    [v7 ctrWithZeroSubscribed];
    if (v76 >= 0.0)
    {
      v77 = v76;
    }

    v233 = v77;
    [v7 decayFactor];
    v79 = FCAppConfigurationDoubleValue(v6, @"decayFactor", v78);
    [v7 decayFactor];
    if (v79 < 1.0 && v79 >= 0.0)
    {
      v80 = v79;
    }

    v232 = v80;
    [v7 featuredMultiplierForFreeUsers];
    v231 = FCAppConfigurationDoubleValue(v6, @"featuredMultiplierForAUsers", v82);
    [v7 featuredMultiplierForTrialUsers];
    v230 = FCAppConfigurationDoubleValue(v6, @"featuredMultiplierForBUsers", v83);
    [v7 featuredMultiplierForPaidUsers];
    v229 = FCAppConfigurationDoubleValue(v6, @"featuredMultiplierForCUsers", v84);
    [v7 evergreenMultiplierForFreeUsers];
    v228 = FCAppConfigurationDoubleValue(v6, @"evergreenMultiplierForAUsers", v85);
    [v7 evergreenMultiplierForTrialUsers];
    v227 = FCAppConfigurationDoubleValue(v6, @"evergreenMultiplierForBUsers", v86);
    [v7 evergreenMultiplierForPaidUsers];
    v226 = FCAppConfigurationDoubleValue(v6, @"evergreenMultiplierForCUsers", v87);
    [v7 globalScoreCoefficientFree];
    v89 = FCAppConfigurationDoubleValue(v6, @"globalScoreCoefficientFree", v88);
    [v7 globalScoreCoefficientFree];
    if (v89 <= 1.0 && v89 >= 0.0)
    {
      v90 = v89;
    }

    v225 = v90;
    [v7 globalScoreCoefficientPaid];
    v93 = FCAppConfigurationDoubleValue(v6, @"globalScoreCoefficientPaid", v92);
    [v7 globalScoreCoefficientPaid];
    if (v93 <= 1.0 && v93 >= 0.0)
    {
      v94 = v93;
    }

    v224 = v94;
    [v7 globalScoreCoefficientHalfLife];
    v97 = FCAppConfigurationDoubleValue(v6, @"globalScoreCoefficientHalfLife", v96);
    [v7 globalScoreCoefficientHalfLife];
    if (v97 > 0.0)
    {
      v98 = v97;
    }

    v223 = v98;
    [v7 globalScoreCoefficientInitialMultiplier];
    v222 = FCAppConfigurationDoubleValue(v6, @"globalScoreCoefficientInitialMultiplier", v99);
    [v7 globalScoreDemocratizationFactor];
    v101 = FCAppConfigurationDoubleValue(v6, @"globalScoreDemocratizationFactor", v100);
    [v7 globalScoreDemocratizationFactor];
    if (v101 <= 1.0 && v101 >= 0.0)
    {
      v102 = v101;
    }

    v221 = v102;
    [v7 conversionScoreDemocratizationFactor];
    v105 = FCAppConfigurationDoubleValue(v6, @"conversionScoreDemocratizationFactor", v104);
    [v7 conversionScoreDemocratizationFactor];
    if (v105 <= 1.0 && v105 >= 0.0)
    {
      v106 = v105;
    }

    v219 = v106;
    [v7 headlineSeenPenalty];
    v109 = FCAppConfigurationDoubleValue(v6, @"headlineSeenPenalty", v108);
    [v7 headlineSeenPenalty];
    if (v109 <= 1.0 && v109 >= 0.0)
    {
      v110 = v109;
    }

    v218 = v110;
    [v7 halfLifeCoefficient];
    v113 = FCAppConfigurationDoubleValue(v6, @"halfLifeCoefficient", v112);
    [v7 halfLifeCoefficient];
    if (v113 >= 0.0)
    {
      v114 = v113;
    }

    v217 = v114;
    [v7 userFeedbackHalfLifeCoefficient];
    v116 = FCAppConfigurationDoubleValue(v6, @"userFeedbackHalfLifeCoefficient", v115);
    [v7 userFeedbackHalfLifeCoefficient];
    if (v116 > 0.0)
    {
      v117 = v116;
    }

    v216 = v117;
    [v7 evergreenHalfLifeCoefficient];
    v119 = FCAppConfigurationDoubleValue(v6, @"evergreenHalfLifeCoefficient", v118);
    [v7 evergreenHalfLifeCoefficient];
    if (v119 > 0.0)
    {
      v120 = v119;
    }

    v214 = v120;
    v220 = FCAppConfigurationBoolValue(v6, @"respectHalfLifeOverride", [v7 respectHalfLifeOverride]);
    [v7 mutedVoteCoefficient];
    v122 = FCAppConfigurationDoubleValue(v6, @"mutedVoteCoefficient", v121);
    [v7 mutedVoteCoefficient];
    if (v122 <= 1.0 && v122 >= 0.0)
    {
      v123 = v122;
    }

    v213 = v123;
    [v7 publisherAggregateWeight];
    v126 = FCAppConfigurationDoubleValue(v6, @"publisherAggregateWeight", v125);
    [v7 publisherAggregateWeight];
    if (v126 >= 0.0)
    {
      v127 = v126;
    }

    v212 = v127;
    [v7 sparseTagsPenalty];
    v129 = FCAppConfigurationDoubleValue(v6, @"sparseTagsPenalty", v128);
    [v7 sparseTagsPenalty];
    if (v129 <= 1.0 && v129 >= 0.0)
    {
      v130 = v129;
    }

    v211 = v130;
    [v7 subscribedChannelScoreCoefficient];
    v133 = FCAppConfigurationDoubleValue(v6, @"subscribedChannelScoreCoefficient", v132);
    [v7 subscribedChannelScoreCoefficient];
    if (v133 <= 1.0 && v133 >= 0.0)
    {
      v134 = v133;
    }

    v210 = v134;
    [v7 subscribedTopicsScoreCoefficient];
    v137 = FCAppConfigurationDoubleValue(v6, @"subscribedTopicsScoreCoefficient", v136);
    [v7 subscribedTopicsScoreCoefficient];
    if (v137 <= 1.0 && v137 >= 0.0)
    {
      v138 = v137;
    }

    v209 = v138;
    v140 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"userCohort", 0);
    if (v140)
    {
      v141 = [FCPersonalizationCohortConfig alloc];
      v215 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"userCohort", 0);
      v142 = [(FCPersonalizationCohortConfig *)v141 initWithConfigDictionary:?];
    }

    else
    {
      v142 = [v7 userCohort];
      v215 = v142;
    }

    [v7 lowFlowBoostFetchCountWeight];
    v144 = FCAppConfigurationDoubleValue(v6, @"lowFlowBoostFetchCountWeight", v143);
    [v7 lowFlowBoostFetchCountWeight];
    if (v144 <= 1.0 && v144 >= 0.0)
    {
      v145 = v144;
    }

    v208 = v145;
    [v7 lowFlowBoostFactor];
    v148 = FCAppConfigurationDoubleValue(v6, @"lowFlowBoostFactor", v147);
    [v7 lowFlowBoostFactor];
    if (v148 >= 0.0)
    {
      v149 = v148;
    }

    v207 = v149;
    [v7 lowFlowBoostMaxProductFactor];
    v151 = FCAppConfigurationDoubleValue(v6, @"lowFlowBoostMaxProductFactor", v150);
    [v7 lowFlowBoostMaxProductFactor];
    if (v151 <= 1.0 && v151 >= 0.0)
    {
      v152 = v151;
    }

    v206 = v152;
    v154 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"lowFlowBoostFetchEstimationConfig", 0);
    if (v154)
    {
      v155 = [FCPersonalizationLowFlowEstimationConfig alloc];
      v156 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"lowFlowBoostFetchEstimationConfig", 0);
      v157 = [(FCPersonalizationLowFlowEstimationConfig *)v155 initWithConfigDictionary:v156];
    }

    else
    {
      v157 = [v7 lowFlowBoostFetchEstimationConfig];
      v156 = v157;
    }

    v264 = v157;
    v158 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"lowFlowBoostEventEstimationConfig", 0);
    v245 = v49;
    if (v158)
    {
      v159 = [FCPersonalizationLowFlowEstimationConfig alloc];
      v201 = FCAppConfigurationDictionaryValueWithDefaultValue(v6, @"lowFlowBoostEventEstimationConfig", 0);
      v160 = [(FCPersonalizationLowFlowEstimationConfig *)v159 initWithConfigDictionary:?];
    }

    else
    {
      v160 = [v7 lowFlowBoostEventEstimationConfig];
    }

    v205 = FCAppConfigurationBoolValue(v6, @"nicheContentBoostOnlyAboveBaselineMembership", [v7 nicheContentBoostOnlyAboveBaselineMembership]);
    [v7 nicheContentBaselineMembershipMultiplier];
    v203 = FCAppConfigurationDoubleValue(v6, @"nicheContentBaselineMembershipMultiplier", v161);
    v204 = FCAppConfigurationBoolValue(v6, @"nicheContentManagedTopicBoostAllTags", [v7 nicheContentManagedTopicBoostAllTags]);
    [v7 nicheContentDefaultFlowRate];
    v163 = FCAppConfigurationDoubleValue(v6, @"nicheContentDefaultFlowRate", v162);
    [v7 nicheContentDefaultFlowRate];
    if (v163 <= 1.0 && v163 >= 0.0)
    {
      v164 = v163;
    }

    v202 = v164;
    [v7 nicheContentDefaultSubscriptionRate];
    FCAppConfigurationDoubleValue(v6, @"nicheContentDefaultSubscriptionRate", v166);
    [v7 nicheContentDefaultSubscriptionRate];
    FCAppConfigurationBoolValue(v6, @"nicheContentExcludeNonGroupableTopics", [v7 nicheContentExcludeNonGroupableTopics]);
    FCAppConfigurationBoolValue(v6, @"nicheContentShouldBoostPublisher", [v7 nicheContentShouldBoostPublisher]);
    [v7 nicheContentTopicFlowExponent];
    FCAppConfigurationDoubleValue(v6, @"nicheContentTopicFlowExponent", v167);
    [v7 nicheContentTopicFlowExponent];
    [v7 nicheContentPublisherFlowExponent];
    FCAppConfigurationDoubleValue(v6, @"nicheContentPublisherFlowExponent", v168);
    [v7 nicheContentPublisherFlowExponent];
    [v7 nicheContentManagedTopicBoost];
    FCAppConfigurationDoubleValue(v6, @"nicheContentManagedTopicBoost", v169);
    [v7 nicheContentManagedTopicBoost];
    [v7 nicheContentServerFlowWeight];
    FCAppConfigurationDoubleValue(v6, @"nicheContentServerFlowWeight", v170);
    [v7 nicheContentServerFlowWeight];
    [v7 nicheContentTopicSubscriptionExponent];
    FCAppConfigurationDoubleValue(v6, @"nicheContentTopicSubscriptionExponent", v171);
    [v7 nicheContentTopicSubscriptionExponent];
    [v7 nicheContentPublisherSubscriptionExponent];
    FCAppConfigurationDoubleValue(v6, @"nicheContentPublisherSubscriptionExponent", v172);
    [v7 nicheContentPublisherSubscriptionExponent];
    [v7 nicheContentQualityThreshold];
    FCAppConfigurationDoubleValue(v6, @"nicheContentQualityThreshold", v173);
    [v7 nicheContentQualityThreshold];
    FCAppConfigurationIntegerValue(v6, @"contentTriggerMaxEventCount", [v7 contentTriggerMaxEventCount]);
    [v7 contentTriggerMaxEventCount];
    [v7 contentTriggerScoreExponent];
    FCAppConfigurationDoubleValue(v6, @"contentTriggerScoreExponent", v174);
    [v7 contentTriggerScoreExponent];
    [v7 contentTriggerTagWeightExponent];
    FCAppConfigurationDoubleValue(v6, @"contentTriggerTagWeightExponent", v175);
    [v7 contentTriggerTagWeightExponent];
    [v7 contentTriggerMinScoreWeight];
    FCAppConfigurationDoubleValue(v6, @"contentTriggerMinScoreWeight", v176);
    [v7 contentTriggerMinScoreWeight];
    [v7 contentTriggerMaxDampener];
    FCAppConfigurationDoubleValue(v6, @"contentTriggerMaxDampener", v177);
    [v7 contentTriggerMaxDampener];
    [v7 contentTriggerDampenerCoefficient];
    FCAppConfigurationDoubleValue(v6, @"contentTriggerDampenerCoefficient", v178);
    [v7 contentTriggerDampenerCoefficient];
    [v7 personalizedMultiplierBaselineMembership];
    FCAppConfigurationDoubleValue(v6, @"personalizedMultiplierBaselineMembership", v179);
    [v7 personalizedMultiplierBaselineMembership];
    [v7 personalizedMultiplierPreBaselineCurvature];
    FCAppConfigurationDoubleValue(v6, @"personalizedMultiplierPreBaselineCurvature", v180);
    [v7 personalizedMultiplierPreBaselineCurvature];
    [v7 personalizedMultiplierPostBaselineCurvature];
    FCAppConfigurationDoubleValue(v6, @"personalizedMultiplierPostBaselineCurvature", v181);
    [v7 personalizedMultiplierPostBaselineCurvature];
    [v7 personalizedMultiplierMembershipDampener];
    FCAppConfigurationDoubleValue(v6, @"personalizedMultiplierMembershipDampener", v182);
    [v7 personalizedMultiplierMembershipDampener];
    [v7 publisherDampenerWeight];
    FCAppConfigurationDoubleValue(v6, @"publisherDampenerWeight", v183);
    [v7 publisherDampenerWeight];
    [v7 recentlyFollowedDurationThreshold];
    FCAppConfigurationDoubleValue(v6, @"recentlyFollowedDurationThreshold", v184);
    [v7 recentlyFollowedDurationThreshold];
    [v7 recentlyFollowedMultiplier];
    FCAppConfigurationDoubleValue(v6, @"recentlyFollowedMultiplier", v185);
    [v7 recentlyFollowedMultiplier];
    [v7 tabiScoreCoefficient];
    FCAppConfigurationDoubleValue(v6, @"tabiScoreCoefficient", v186);
    [v7 tabiScoreCoefficient];
    [v7 clientSideEngagementBoostFeaturedArticleMultiplier];
    FCAppConfigurationDoubleValue(v6, @"clientSideEngagementBoostFeaturedArticleMultiplier", v187);
    [v7 clientSideEngagementBoostFeaturedArticleMultiplier];
    [v7 clientSideEngagementBoostFeatureCandidateArticleMultiplier];
    FCAppConfigurationDoubleValue(v6, @"clientSideEngagementBoostFeatureCandidateArticleMultiplier", v188);
    [v7 clientSideEngagementBoostFeatureCandidateArticleMultiplier];
    [v7 clientSideEngagementBoostFreeCohortCTRCap];
    FCAppConfigurationDoubleValue(v6, @"clientSideEngagementBoostFreeCohortCTRCap", v189);
    [v7 clientSideEngagementBoostFreeCohortCTRCap];
    [v7 clientSideEngagementBoostPaidCohortCTRCap];
    FCAppConfigurationDoubleValue(v6, @"clientSideEngagementBoostPaidCohortCTRCap", v190);
    [v7 clientSideEngagementBoostPaidCohortCTRCap];
    [v7 clientSideEngagementBoostTagQualityMultiplier];
    FCAppConfigurationDoubleValue(v6, @"clientSideEngagementBoostTagQualityMultiplier", v191);
    [v7 clientSideEngagementBoostTagQualityMultiplier];
    [v7 clientSideEngagementBoostReduceVisibilityMultiplier];
    FCAppConfigurationDoubleValue(v6, @"clientSideEngagementBoostReduceVisibilityMultiplier", v192);
    [v7 clientSideEngagementBoostReduceVisibilityMultiplier];
    [v7 clientSideEngagementBoostANFMutiplier];
    FCAppConfigurationDoubleValue(v6, @"clientSideEngagementBoostANFMutiplier", v193);
    [v7 clientSideEngagementBoostANFMutiplier];
    FCAppConfigurationBoolValue(v6, @"dampenerEnabled", [v7 dampenerEnabled]);
    FCAppConfigurationBoolValue(v6, @"multiplierEnabled", [v7 multiplierEnabled]);
    [v7 peopleAlsoReadBaselineScore];
    FCAppConfigurationDoubleValue(v6, @"peopleAlsoReadBaselineScore", v194);
    [v7 peopleAlsoReadBaselineScore];
    [v7 peopleAlsoReadConditionalScoreCoefficient];
    FCAppConfigurationDoubleValue(v6, @"peopleAlsoReadConditionalScoreCoefficient", v195);
    [v7 peopleAlsoReadConditionalScoreCoefficient];
    [v7 peopleAlsoReadScoreCoefficient];
    FCAppConfigurationDoubleValue(v6, @"peopleAlsoReadScoreCoefficient", v196);
    [v7 peopleAlsoReadScoreCoefficient];
    [v7 recipeSeenPenalty];
    FCAppConfigurationDoubleValue(v6, @"recipeSeenPenalty", v197);
    [v7 recipeSeenPenalty];
    [v7 recipeViewedPenalty];
    FCAppConfigurationDoubleValue(v6, @"recipeViewedPenalty", v198);
    [v7 recipeViewedPenalty];
    LOBYTE(v200) = v204;
    v50 = objc_retainAutoreleasedReturnValue( [FCPersonalizationScoringConfig initWithAnfMultiplier:articleLengthAggregateWeight:articleReadPenalty:articleListenedPenalty:audioMultiplierForFreeUsers:audioMultiplierForTrialUsers:audioMultiplierForPaidUsers:autofavoritedVoteCoefficient:baselineRatePrior:bundleFreeMultiplierForFreeUsers:bundleFreeMultiplierForTrialUsers:bundleFreeMultiplierForPaidUsers:bundlePaidMultiplierForFreeUsers:bundlePaidMultiplierForTrialUsers:bundlePaidMultiplierForPaidUsers:conversionCoefficientForFreeUsers:conversionCoefficientForTrialUsers:conversionCoefficientForPaidUsers:conversionCohort:ctrWithOneAutofavorited:ctrWithOneSubscribed:ctrWithSubscribedChannel:ctrWithThreeAutofavorited:ctrWithThreeSubscribed:ctrWithTwoAutofavorited:ctrWithTwoSubscribed:ctrWithZeroAutofavorited:ctrWithZeroSubscribed:decayFactor:featuredMultiplierForFreeUsers:featuredMultiplierForTrialUsers:featuredMultiplierForPaidUsers:evergreenMultiplierForFreeUsers:evergreenMultiplierForTrialUsers:evergreenMultiplierForPaidUsers:globalScoreCoefficientFree:globalScoreCoefficientPaid:globalScoreCoefficientHalfLife:globalScoreCoefficientInitialMultiplier:globalScoreDemocratizationFactor:conversionScoreDemocratizationFactor:headlineSeenPenalty:halfLifeCoefficient:userFeedbackHalfLifeCoefficient:evergreenHalfLifeCoefficient:respectHalfLifeOverride:mutedVoteCoefficient:publisherAggregateWeight:sparseTagsPenalty:subscribedChannelScoreCoefficient:subscribedTopicsScoreCoefficient:userCohort:lowFlowBoostFetchCountWeight:lowFlowBoostFactor:lowFlowBoostMaxProductFactor:lowFlowBoostFetchEstimationConfig:lowFlowBoostEventEstimationConfig:nicheContentBoostOnlyAboveBaselineMembership:nicheContentBaselineMembershipMultiplier:nicheContentManagedTopicBoostAllTags:nicheContentDefaultFlowRate:nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:]( v263,  "initWithAnfMultiplier:articleLengthAggregateWeight:articleReadPenalty:articleListenedPenalty:audioMultiplierForFreeUsers:audioMultiplierForTrialUsers:audioMultiplierForPaidUsers:autofavoritedVoteCoefficient:baselineRatePrior:bundleFreeMultiplierForFreeUsers:bundleFreeMultiplierForTrialUsers:bundleFreeMultiplierForPaidUsers:bundlePaidMultiplierForFreeUsers:bundlePaidMultiplierForTrialUsers:bundlePaidMultiplierForPaidUsers:conversionCoefficientForFreeUsers:conversionCoefficientForTrialUsers:conversionCoefficientForPaidUsers:conversionCohort:ctrWithOneAutofavorited:ctrWithOneSubscribed:ctrWithSubscribedChannel:ctrWithThreeAutofavorited:ctrWithThreeSubscribed:ctrWithTwoAutofavorited:ctrWithTwoSubscribed:ctrWithZeroAutofavorited:ctrWithZeroSubscribed:decayFactor:featuredMultiplierForFreeUsers:featuredMultiplierForTrialUsers:featuredMultiplierForPaidUsers:evergreenMultiplierForFreeUsers:evergreenMultiplierForTrialUsers:evergreenMultiplierForPaidUsers:globalScoreCoefficientFree:globalScoreCoefficientPaid:globalScoreCoefficientHalfLife:globalScoreCoefficientInitialMultiplier:globalScoreDemocratizationFactor:conversionScoreDemocratizationFactor:headlineSeenPenalty:halfLifeCoefficient:userFeedbackHalfLifeCoefficient:evergreenHalfLifeCoefficient:respectHalfLifeOverride:mutedVoteCoefficient:publisherAggregateWeight:sparseTagsPenalty:subscribedChannelScoreCoefficient:subscribedTopicsScoreCoefficient:userCohort:lowFlowBoostFetchCountWeight:lowFlowBoostFactor:lowFlowBoostMaxProductFactor:lowFlowBoostFetchEstimationConfig:lowFlowBoostEventEstimationConfig:nicheContentBoostOnlyAboveBaselineMembership:nicheContentBaselineMembershipMultiplier:nicheContentManagedTopicBoostAllTags:nicheContentDefaultFlowRate:nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:",  v49,  v220,  v142,  v264,  v160,  v205,  v262,  v261,  v260,  v259,  v258,  v257,  v256,  v255,  *&v254,  *&v253,  *&v252,  *&v251,  *&v249,  *&v248,  *&v246,  *&v244,  *&v243,  *&v242,  *&v241,  *&v240,  *&v239,  *&v238,  *&v237,  *&v236,  *&v235,  *&v234,  *&v233,  *&v232,  *&v231,  *&v230,  *&v229,  *&v228,  *&v227,  *&v226,  *&v225,  *&v224,  *&v223,  *&v222,  *&v221,  *&v219,
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

      v160 = v201;
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

- (FCPersonalizationScoringConfig)initWithAnfMultiplier:(double)a3 articleLengthAggregateWeight:(double)a4 articleReadPenalty:(double)a5 articleListenedPenalty:(double)a6 audioMultiplierForFreeUsers:(double)a7 audioMultiplierForTrialUsers:(double)a8 audioMultiplierForPaidUsers:(double)a9 autofavoritedVoteCoefficient:(uint64_t)a10 baselineRatePrior:(void *)a11 bundleFreeMultiplierForFreeUsers:(BOOL)a12 bundleFreeMultiplierForTrialUsers:(void *)a13 bundleFreeMultiplierForPaidUsers:(void *)a14 bundlePaidMultiplierForFreeUsers:(void *)a15 bundlePaidMultiplierForTrialUsers:(BOOL)a16 bundlePaidMultiplierForPaidUsers:(double)a17 conversionCoefficientForFreeUsers:(double)a18 conversionCoefficientForTrialUsers:(double)a19 conversionCoefficientForPaidUsers:(double)a20 conversionCohort:(double)a21 ctrWithOneAutofavorited:(double)a22 ctrWithOneSubscribed:(double)a23 ctrWithSubscribedChannel:(double)a24 ctrWithThreeAutofavorited:(double)a25 ctrWithThreeSubscribed:(double)a26 ctrWithTwoAutofavorited:(double)a27 ctrWithTwoSubscribed:(double)a28 ctrWithZeroAutofavorited:(double)a29 ctrWithZeroSubscribed:(double)a30 decayFactor:(double)a31 featuredMultiplierForFreeUsers:(double)a32 featuredMultiplierForTrialUsers:(double)a33 featuredMultiplierForPaidUsers:(double)a34 evergreenMultiplierForFreeUsers:(double)a35 evergreenMultiplierForTrialUsers:(double)a36 evergreenMultiplierForPaidUsers:(double)a37 globalScoreCoefficientFree:(double)a38 globalScoreCoefficientPaid:(double)a39 globalScoreCoefficientHalfLife:(double)a40 globalScoreCoefficientInitialMultiplier:(double)a41 globalScoreDemocratizationFactor:(double)a42 conversionScoreDemocratizationFactor:(double)a43 headlineSeenPenalty:(double)a44 halfLifeCoefficient:(double)a45 userFeedbackHalfLifeCoefficient:(double)a46 evergreenHalfLifeCoefficient:(double)a47 respectHalfLifeOverride:(double)a48 mutedVoteCoefficient:(double)a49 publisherAggregateWeight:(double)a50 sparseTagsPenalty:(double)a51 subscribedChannelScoreCoefficient:(double)a52 subscribedTopicsScoreCoefficient:(double)a53 userCohort:(double)a54 lowFlowBoostFetchCountWeight:(double)a55 lowFlowBoostFactor:(double)a56 lowFlowBoostMaxProductFactor:(double)a57 lowFlowBoostFetchEstimationConfig:(double)a58 lowFlowBoostEventEstimationConfig:(double)a59 nicheContentBoostOnlyAboveBaselineMembership:(double)a60 nicheContentBaselineMembershipMultiplier:(double)a61 nicheContentManagedTopicBoostAllTags:(BOOL)a62 nicheContentDefaultFlowRate:(double)a63 nicheContentDefaultSubscriptionRate:nicheContentExcludeNonGroupableTopics:nicheContentShouldBoostPublisher:nicheContentTopicFlowExponent:nicheContentPublisherFlowExponent:nicheContentManagedTopicBoost:nicheContentServerFlowWeight:nicheContentTopicSubscriptionExponent:nicheContentPublisherSubscriptionExponent:nicheContentQualityThreshold:contentTriggerMaxEventCount:contentTriggerScoreExponent:contentTriggerTagWeightExponent:contentTriggerMinScoreWeight:contentTriggerMaxDampener:contentTriggerDampenerCoefficient:personalizedMultiplierBaselineMembership:personalizedMultiplierPreBaselineCurvature:personalizedMultiplierPostBaselineCurvature:personalizedMultiplierMembershipDampener:publisherDampenerWeight:recentlyFollowedDurationThreshold:recentlyFollowedMultiplier:tabiScoreCoefficient:clientSideEngagementBoostFeaturedArticleMultiplier:clientSideEngagementBoostFeatureCandidateArticleMultiplier:clientSideEngagementBoostFreeCohortCTRCap:clientSideEngagementBoostPaidCohortCTRCap:clientSideEngagementBoostTagQualityMultiplier:clientSideEngagementBoostReduceVisibilityMultiplier:clientSideEngagementBoostANFMutiplier:dampenerEnabled:multiplierEnabled:peopleAlsoReadBaselineScore:peopleAlsoReadConditionalScoreCoefficient:peopleAlsoReadScoreCoefficient:recipeSeenPenalty:recipeViewedPenalty:
{
  v95 = a11;
  v96 = a13;
  v97 = a14;
  v98 = a15;
  v123.receiver = a1;
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
    v99->_articleLengthAggregateWeight = a3;
    v99->_articleReadPenalty = a4;
    v99->_articleListenedPenalty = a5;
    v99->_audioMultiplierForFreeUsers = a6;
    v99->_audioMultiplierForTrialUsers = a7;
    v99->_audioMultiplierForPaidUsers = a8;
    v99->_autofavoritedVoteCoefficient = a9;
    v99->_baselineRatePrior = a17;
    v99->_bundleFreeMultiplierForFreeUsers = a18;
    v99->_bundleFreeMultiplierForTrialUsers = a19;
    v99->_bundleFreeMultiplierForPaidUsers = a20;
    v99->_bundlePaidMultiplierForFreeUsers = a21;
    v99->_bundlePaidMultiplierForTrialUsers = a22;
    v99->_bundlePaidMultiplierForPaidUsers = a23;
    v99->_conversionCoefficientForFreeUsers = a24;
    v99->_conversionCoefficientForTrialUsers = a25;
    v99->_conversionCoefficientForPaidUsers = a26;
    objc_storeStrong(&v99->_conversionCohort, a11);
    v100->_ctrWithOneAutofavorited = a27;
    v100->_ctrWithOneSubscribed = a28;
    v100->_ctrWithSubscribedChannel = a29;
    v100->_ctrWithThreeAutofavorited = a30;
    v100->_ctrWithThreeSubscribed = a31;
    v100->_ctrWithTwoAutofavorited = a32;
    v100->_ctrWithTwoSubscribed = a33;
    v100->_ctrWithZeroAutofavorited = a34;
    v100->_ctrWithZeroSubscribed = a35;
    v100->_decayFactor = a36;
    v100->_featuredMultiplierForFreeUsers = a37;
    v100->_featuredMultiplierForTrialUsers = a38;
    v100->_featuredMultiplierForPaidUsers = a39;
    v100->_evergreenMultiplierForFreeUsers = a40;
    v100->_evergreenMultiplierForTrialUsers = a41;
    v100->_evergreenMultiplierForPaidUsers = a42;
    v100->_globalScoreCoefficientFree = a43;
    v100->_globalScoreCoefficientPaid = a44;
    v100->_globalScoreCoefficientHalfLife = a45;
    v100->_globalScoreCoefficientInitialMultiplier = a46;
    v100->_globalScoreDemocratizationFactor = a47;
    v100->_conversionScoreDemocratizationFactor = a48;
    v100->_headlineSeenPenalty = a49;
    v100->_halfLifeCoefficient = a50;
    v100->_respectHalfLifeOverride = a12;
    v100->_evergreenHalfLifeCoefficient = a52;
    v100->_mutedVoteCoefficient = a53;
    v100->_publisherAggregateWeight = a54;
    v100->_sparseTagsPenalty = a55;
    v100->_subscribedChannelScoreCoefficient = a56;
    v100->_subscribedTopicsScoreCoefficient = a57;
    objc_storeStrong(&v100->_userCohort, a13);
    v100->_userFeedbackHalfLifeCoefficient = a51;
    v100->_lowFlowBoostFetchCountWeight = a58;
    v100->_lowFlowBoostFactor = a59;
    v100->_lowFlowBoostMaxProductFactor = a60;
    objc_storeStrong(&v100->_lowFlowBoostFetchEstimationConfig, a14);
    objc_storeStrong(&v100->_lowFlowBoostEventEstimationConfig, a15);
    v100->_nicheContentBaselineMembershipMultiplier = a61;
    v100->_nicheContentDefaultFlowRate = a63;
    v100->_nicheContentDefaultSubscriptionRate = a64;
    v100->_nicheContentTopicFlowExponent = a67;
    v100->_nicheContentBoostOnlyAboveBaselineMembership = a16;
    v100->_nicheContentManagedTopicBoostAllTags = a62;
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

- (FCPersonalizationScoringConfig)initWithCoder:(id)a3
{
  v3 = a3;
  [v3 decodeDoubleForKey:@"anfMultiplier"];
  v121 = v4;
  [v3 decodeDoubleForKey:@"articleLengthAggregateWeight"];
  v120 = v5;
  [v3 decodeDoubleForKey:@"articleReadPenalty"];
  v119 = v6;
  [v3 decodeDoubleForKey:@"articleListenedPenalty"];
  v118 = v7;
  [v3 decodeDoubleForKey:@"audioMultiplierForFreeUsers"];
  v117 = v8;
  [v3 decodeDoubleForKey:@"audioMultiplierForTrialUsers"];
  v116 = v9;
  [v3 decodeDoubleForKey:@"audioMultiplierForPaidUsers"];
  v115 = v10;
  [v3 decodeDoubleForKey:@"autofavoritedVoteCoefficient"];
  v114 = v11;
  [v3 decodeDoubleForKey:@"baselineRatePrior"];
  v113 = v12;
  [v3 decodeDoubleForKey:@"bundleFreeMultiplierForFreeUsers"];
  v112 = v13;
  [v3 decodeDoubleForKey:@"bundleFreeMultiplierForTrialUsers"];
  v111 = v14;
  [v3 decodeDoubleForKey:@"bundleFreeMultiplierForPaidUsers"];
  v110 = v15;
  [v3 decodeDoubleForKey:@"bundlePaidMultiplierForFreeUsers"];
  v109 = v16;
  [v3 decodeDoubleForKey:@"bundlePaidMultiplierForTrialUsers"];
  v108 = v17;
  [v3 decodeDoubleForKey:@"bundlePaidMultiplierForPaidUsers"];
  v107 = v18;
  [v3 decodeDoubleForKey:@"conversionCoefficientForFreeUsers"];
  v106 = v19;
  [v3 decodeDoubleForKey:@"conversionCoefficientForTrialUsers"];
  v104 = v20;
  [v3 decodeDoubleForKey:@"conversionCoefficientForPaidUsers"];
  v103 = v21;
  v105 = [v3 decodeObjectForKey:@"conversionCohort"];
  [v3 decodeDoubleForKey:@"ctrWithOneAutofavorited"];
  v102 = v22;
  [v3 decodeDoubleForKey:@"ctrWithOneSubscribed"];
  v101 = v23;
  [v3 decodeDoubleForKey:@"ctrWithSubscribedChannel"];
  v100 = v24;
  [v3 decodeDoubleForKey:@"ctrWithThreeAutofavorited"];
  v99 = v25;
  [v3 decodeDoubleForKey:@"ctrWithThreeSubscribed"];
  v98 = v26;
  [v3 decodeDoubleForKey:@"ctrWithTwoAutofavorited"];
  v97 = v27;
  [v3 decodeDoubleForKey:@"ctrWithTwoSubscribed"];
  v96 = v28;
  [v3 decodeDoubleForKey:@"ctrWithZeroAutofavorited"];
  v95 = v29;
  [v3 decodeDoubleForKey:@"ctrWithZeroSubscribed"];
  v94 = v30;
  [v3 decodeDoubleForKey:@"decayFactor"];
  v93 = v31;
  [v3 decodeDoubleForKey:@"featuredMultiplierForFreeUsers"];
  v92 = v32;
  [v3 decodeDoubleForKey:@"featuredMultiplierForTrialUsers"];
  v91 = v33;
  [v3 decodeDoubleForKey:@"featuredMultiplierForPaidUsers"];
  v90 = v34;
  [v3 decodeDoubleForKey:@"evergreenMultiplierForFreeUsers"];
  v89 = v35;
  [v3 decodeDoubleForKey:@"evergreenMultiplierForTrialUsers"];
  v87 = v36;
  [v3 decodeDoubleForKey:@"evergreenMultiplierForPaidUsers"];
  v86 = v37;
  [v3 decodeDoubleForKey:@"globalScoreCoefficientFree"];
  v85 = v38;
  [v3 decodeDoubleForKey:@"globalScoreCoefficientPaid"];
  v84 = v39;
  [v3 decodeDoubleForKey:@"globalScoreCoefficientHalfLife"];
  v83 = v40;
  [v3 decodeDoubleForKey:@"globalScoreCoefficientInitialMultiplier"];
  v82 = v41;
  [v3 decodeDoubleForKey:@"globalScoreDemocratizationFactor"];
  v81 = v42;
  [v3 decodeDoubleForKey:@"conversionScoreDemocratizationFactor"];
  v80 = v43;
  [v3 decodeDoubleForKey:@"headlineSeenPenalty"];
  v79 = v44;
  [v3 decodeDoubleForKey:@"halfLifeCoefficient"];
  v78 = v45;
  [v3 decodeDoubleForKey:@"userFeedbackHalfLifeCoefficient"];
  v76 = v46;
  [v3 decodeDoubleForKey:@"evergreenHalfLifeCoefficient"];
  v75 = v47;
  v88 = [v3 decodeBoolForKey:@"respectHalfLifeOverride"];
  [v3 decodeDoubleForKey:@"mutedVoteCoefficient"];
  v74 = v48;
  [v3 decodeDoubleForKey:@"publisherAggregateWeight"];
  v73 = v49;
  [v3 decodeDoubleForKey:@"sparseTagsPenalty"];
  v72 = v50;
  [v3 decodeDoubleForKey:@"subscribedChannelScoreCoefficient"];
  v71 = v51;
  [v3 decodeDoubleForKey:@"subscribedTopicsScoreCoefficient"];
  v70 = v52;
  v53 = [v3 decodeObjectForKey:@"userCohort"];
  [v3 decodeDoubleForKey:@"lowFlowBoostFetchCountWeight"];
  v69 = v54;
  [v3 decodeDoubleForKey:@"lowFlowBoostFactor"];
  v68 = v55;
  [v3 decodeDoubleForKey:@"lowFlowBoostMaxProductFactor"];
  v67 = v56;
  v57 = [v3 decodeObjectForKey:@"lowFlowBoostFetchEstimationConfig"];
  v58 = [v3 decodeObjectForKey:@"lowFlowBoostEventEstimationConfig"];
  v77 = [v3 decodeBoolForKey:@"nicheContentBoostOnlyAboveBaselineMembership"];
  [v3 decodeDoubleForKey:@"nicheContentBaselineMembershipMultiplier"];
  v66 = v59;
  v60 = [v3 decodeBoolForKey:@"nicheContentManagedTopicBoostAllTags"];
  [v3 decodeDoubleForKey:@"nicheContentDefaultFlowRate"];
  v65 = v61;
  [v3 decodeDoubleForKey:@"nicheContentDefaultSubscriptionRate"];
  [v3 decodeBoolForKey:@"nicheContentExcludeNonGroupableTopics"];
  [v3 decodeBoolForKey:@"nicheContentShouldBoostPublisher"];
  [v3 decodeDoubleForKey:@"nicheContentTopicFlowExponent"];
  [v3 decodeDoubleForKey:@"nicheContentPublisherFlowExponent"];
  [v3 decodeDoubleForKey:@"nicheContentManagedTopicBoost"];
  [v3 decodeDoubleForKey:@"nicheContentServerFlowWeight"];
  [v3 decodeDoubleForKey:@"nicheContentTopicSubscriptionExponent"];
  [v3 decodeDoubleForKey:@"nicheContentPublisherSubscriptionExponent"];
  [v3 decodeDoubleForKey:@"nicheContentQualityThreshold"];
  [v3 decodeIntegerForKey:@"contentTriggerMaxEventCount"];
  [v3 decodeDoubleForKey:@"contentTriggerScoreExponent"];
  [v3 decodeDoubleForKey:@"contentTriggerTagWeightExponent"];
  [v3 decodeDoubleForKey:@"contentTriggerMinScoreWeight"];
  [v3 decodeDoubleForKey:@"contentTriggerMaxDampener"];
  [v3 decodeDoubleForKey:@"contentTriggerDampenerCoefficient"];
  [v3 decodeDoubleForKey:@"personalizedMultiplierBaselineMembership"];
  [v3 decodeDoubleForKey:@"personalizedMultiplierPreBaselineCurvature"];
  [v3 decodeDoubleForKey:@"personalizedMultiplierPostBaselineCurvature"];
  [v3 decodeDoubleForKey:@"personalizedMultiplierMembershipDampener"];
  [v3 decodeDoubleForKey:@"publisherDampenerWeight"];
  [v3 decodeDoubleForKey:@"recentlyFollowedDurationThreshold"];
  [v3 decodeDoubleForKey:@"recentlyFollowedMultiplier"];
  [v3 decodeDoubleForKey:@"tabiScoreCoefficient"];
  [v3 decodeDoubleForKey:@"clientSideEngagementBoostFeaturedArticleMultiplier"];
  [v3 decodeDoubleForKey:@"clientSideEngagementBoostFeatureCandidateArticleMultiplier"];
  [v3 decodeDoubleForKey:@"clientSideEngagementBoostFreeCohortCTRCap"];
  [v3 decodeDoubleForKey:@"clientSideEngagementBoostPaidCohortCTRCap"];
  [v3 decodeDoubleForKey:@"clientSideEngagementBoostTagQualityMultiplier"];
  [v3 decodeDoubleForKey:@"clientSideEngagementBoostReduceVisibilityMultiplier"];
  [v3 decodeDoubleForKey:@"clientSideEngagementBoostANFMutiplier"];
  [v3 decodeBoolForKey:@"dampenerEnabled"];
  [v3 decodeBoolForKey:@"multiplierEnabled"];
  [v3 decodeDoubleForKey:@"peopleAlsoReadBaselineScore"];
  [v3 decodeDoubleForKey:@"peopleAlsoReadConditionalScoreCoefficient"];
  [v3 decodeDoubleForKey:@"peopleAlsoReadScoreCoefficient"];
  [v3 decodeDoubleForKey:@"recipeSeenPenalty"];
  [v3 decodeDoubleForKey:@"recipeViewedPenalty"];

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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [(FCPersonalizationScoringConfig *)self anfMultiplier];
  [v8 encodeDouble:@"anfMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self articleLengthAggregateWeight];
  [v8 encodeDouble:@"articleLengthAggregateWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self articleReadPenalty];
  [v8 encodeDouble:@"articleReadPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self articleListenedPenalty];
  [v8 encodeDouble:@"articleListenedPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self audioMultiplierForFreeUsers];
  [v8 encodeDouble:@"audioMultiplierForAUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self audioMultiplierForTrialUsers];
  [v8 encodeDouble:@"audioMultiplierForBUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self audioMultiplierForPaidUsers];
  [v8 encodeDouble:@"audioMultiplierForCUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self autofavoritedVoteCoefficient];
  [v8 encodeDouble:@"autofavoritedVoteCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self baselineRatePrior];
  [v8 encodeDouble:@"baselineRatePrior" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundleFreeMultiplierForFreeUsers];
  [v8 encodeDouble:@"bundleFreeMultiplierForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundleFreeMultiplierForTrialUsers];
  [v8 encodeDouble:@"bundleFreeMultiplierForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundleFreeMultiplierForPaidUsers];
  [v8 encodeDouble:@"bundleFreeMultiplierForPaidUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundlePaidMultiplierForFreeUsers];
  [v8 encodeDouble:@"bundlePaidMultiplierForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundlePaidMultiplierForTrialUsers];
  [v8 encodeDouble:@"bundlePaidMultiplierForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self bundlePaidMultiplierForPaidUsers];
  [v8 encodeDouble:@"bundlePaidMultiplierForPaidUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self conversionCoefficientForFreeUsers];
  [v8 encodeDouble:@"conversionCoefficientForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self conversionCoefficientForTrialUsers];
  [v8 encodeDouble:@"conversionCoefficientForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self conversionCoefficientForPaidUsers];
  [v8 encodeDouble:@"conversionCoefficientForPaidUsers" forKey:?];
  v4 = [(FCPersonalizationScoringConfig *)self conversionCohort];
  [v8 encodeObject:v4 forKey:@"conversionCohort"];

  [(FCPersonalizationScoringConfig *)self ctrWithOneAutofavorited];
  [v8 encodeDouble:@"ctrWithOneAutofavorited" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithOneSubscribed];
  [v8 encodeDouble:@"ctrWithOneSubscribed" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithSubscribedChannel];
  [v8 encodeDouble:@"ctrWithSubscribedChannel" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithThreeAutofavorited];
  [v8 encodeDouble:@"ctrWithThreeAutofavorited" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithThreeSubscribed];
  [v8 encodeDouble:@"ctrWithThreeSubscribed" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithTwoAutofavorited];
  [v8 encodeDouble:@"ctrWithTwoAutofavorited" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithTwoSubscribed];
  [v8 encodeDouble:@"ctrWithTwoSubscribed" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithZeroAutofavorited];
  [v8 encodeDouble:@"ctrWithZeroAutofavorited" forKey:?];
  [(FCPersonalizationScoringConfig *)self ctrWithZeroSubscribed];
  [v8 encodeDouble:@"ctrWithZeroSubscribed" forKey:?];
  [(FCPersonalizationScoringConfig *)self decayFactor];
  [v8 encodeDouble:@"decayFactor" forKey:?];
  [(FCPersonalizationScoringConfig *)self featuredMultiplierForFreeUsers];
  [v8 encodeDouble:@"featuredMultiplierForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self featuredMultiplierForTrialUsers];
  [v8 encodeDouble:@"featuredMultiplierForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self featuredMultiplierForPaidUsers];
  [v8 encodeDouble:@"featuredMultiplierForPaidUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self evergreenMultiplierForFreeUsers];
  [v8 encodeDouble:@"evergreenMultiplierForFreeUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self evergreenMultiplierForTrialUsers];
  [v8 encodeDouble:@"evergreenMultiplierForTrialUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self evergreenMultiplierForPaidUsers];
  [v8 encodeDouble:@"evergreenMultiplierForPaidUsers" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreCoefficientFree];
  [v8 encodeDouble:@"globalScoreCoefficientFree" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreCoefficientPaid];
  [v8 encodeDouble:@"globalScoreCoefficientPaid" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreCoefficientHalfLife];
  [v8 encodeDouble:@"globalScoreCoefficientHalfLife" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreCoefficientInitialMultiplier];
  [v8 encodeDouble:@"globalScoreCoefficientInitialMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self globalScoreDemocratizationFactor];
  [v8 encodeDouble:@"globalScoreDemocratizationFactor" forKey:?];
  [(FCPersonalizationScoringConfig *)self conversionScoreDemocratizationFactor];
  [v8 encodeDouble:@"conversionScoreDemocratizationFactor" forKey:?];
  [(FCPersonalizationScoringConfig *)self headlineSeenPenalty];
  [v8 encodeDouble:@"headlineSeenPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self halfLifeCoefficient];
  [v8 encodeDouble:@"halfLifeCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self userFeedbackHalfLifeCoefficient];
  [v8 encodeDouble:@"userFeedbackHalfLifeCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self evergreenHalfLifeCoefficient];
  [v8 encodeDouble:@"evergreenHalfLifeCoefficient" forKey:?];
  [v8 encodeBool:-[FCPersonalizationScoringConfig respectHalfLifeOverride](self forKey:{"respectHalfLifeOverride"), @"respectHalfLifeOverride"}];
  [(FCPersonalizationScoringConfig *)self mutedVoteCoefficient];
  [v8 encodeDouble:@"mutedVoteCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self publisherAggregateWeight];
  [v8 encodeDouble:@"publisherAggregateWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self sparseTagsPenalty];
  [v8 encodeDouble:@"sparseTagsPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self subscribedChannelScoreCoefficient];
  [v8 encodeDouble:@"subscribedChannelScoreCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self subscribedTopicsScoreCoefficient];
  [v8 encodeDouble:@"subscribedTopicsScoreCoefficient" forKey:?];
  v5 = [(FCPersonalizationScoringConfig *)self userCohort];
  [v8 encodeObject:v5 forKey:@"userCohort"];

  [(FCPersonalizationScoringConfig *)self lowFlowBoostFetchCountWeight];
  [v8 encodeDouble:@"lowFlowBoostFetchCountWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self lowFlowBoostFactor];
  [v8 encodeDouble:@"lowFlowBoostFactor" forKey:?];
  [(FCPersonalizationScoringConfig *)self lowFlowBoostMaxProductFactor];
  [v8 encodeDouble:@"lowFlowBoostMaxProductFactor" forKey:?];
  v6 = [(FCPersonalizationScoringConfig *)self lowFlowBoostFetchEstimationConfig];
  [v8 encodeObject:v6 forKey:@"lowFlowBoostFetchEstimationConfig"];

  v7 = [(FCPersonalizationScoringConfig *)self lowFlowBoostEventEstimationConfig];
  [v8 encodeObject:v7 forKey:@"lowFlowBoostEventEstimationConfig"];

  [v8 encodeBool:-[FCPersonalizationScoringConfig nicheContentBoostOnlyAboveBaselineMembership](self forKey:{"nicheContentBoostOnlyAboveBaselineMembership"), @"nicheContentBoostOnlyAboveBaselineMembership"}];
  [(FCPersonalizationScoringConfig *)self nicheContentBaselineMembershipMultiplier];
  [v8 encodeDouble:@"nicheContentBaselineMembershipMultiplier" forKey:?];
  [v8 encodeBool:-[FCPersonalizationScoringConfig nicheContentManagedTopicBoostAllTags](self forKey:{"nicheContentManagedTopicBoostAllTags"), @"nicheContentManagedTopicBoostAllTags"}];
  [(FCPersonalizationScoringConfig *)self nicheContentDefaultFlowRate];
  [v8 encodeDouble:@"nicheContentDefaultFlowRate" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentDefaultSubscriptionRate];
  [v8 encodeDouble:@"nicheContentDefaultSubscriptionRate" forKey:?];
  [v8 encodeBool:-[FCPersonalizationScoringConfig nicheContentExcludeNonGroupableTopics](self forKey:{"nicheContentExcludeNonGroupableTopics"), @"nicheContentExcludeNonGroupableTopics"}];
  [v8 encodeBool:-[FCPersonalizationScoringConfig nicheContentShouldBoostPublisher](self forKey:{"nicheContentShouldBoostPublisher"), @"nicheContentShouldBoostPublisher"}];
  [(FCPersonalizationScoringConfig *)self nicheContentTopicFlowExponent];
  [v8 encodeDouble:@"nicheContentTopicFlowExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentPublisherFlowExponent];
  [v8 encodeDouble:@"nicheContentPublisherFlowExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentManagedTopicBoost];
  [v8 encodeDouble:@"nicheContentManagedTopicBoost" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentServerFlowWeight];
  [v8 encodeDouble:@"nicheContentServerFlowWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentTopicSubscriptionExponent];
  [v8 encodeDouble:@"nicheContentTopicSubscriptionExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentPublisherSubscriptionExponent];
  [v8 encodeDouble:@"nicheContentPublisherSubscriptionExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self nicheContentQualityThreshold];
  [v8 encodeDouble:@"nicheContentQualityThreshold" forKey:?];
  [v8 encodeInteger:-[FCPersonalizationScoringConfig contentTriggerMaxEventCount](self forKey:{"contentTriggerMaxEventCount"), @"contentTriggerMaxEventCount"}];
  [(FCPersonalizationScoringConfig *)self contentTriggerScoreExponent];
  [v8 encodeDouble:@"contentTriggerScoreExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self contentTriggerTagWeightExponent];
  [v8 encodeDouble:@"contentTriggerTagWeightExponent" forKey:?];
  [(FCPersonalizationScoringConfig *)self contentTriggerMinScoreWeight];
  [v8 encodeDouble:@"contentTriggerMinScoreWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self contentTriggerMaxDampener];
  [v8 encodeDouble:@"contentTriggerMaxDampener" forKey:?];
  [(FCPersonalizationScoringConfig *)self contentTriggerDampenerCoefficient];
  [v8 encodeDouble:@"contentTriggerDampenerCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self personalizedMultiplierBaselineMembership];
  [v8 encodeDouble:@"personalizedMultiplierBaselineMembership" forKey:?];
  [(FCPersonalizationScoringConfig *)self personalizedMultiplierPreBaselineCurvature];
  [v8 encodeDouble:@"personalizedMultiplierPreBaselineCurvature" forKey:?];
  [(FCPersonalizationScoringConfig *)self personalizedMultiplierPostBaselineCurvature];
  [v8 encodeDouble:@"personalizedMultiplierPostBaselineCurvature" forKey:?];
  [(FCPersonalizationScoringConfig *)self personalizedMultiplierMembershipDampener];
  [v8 encodeDouble:@"personalizedMultiplierMembershipDampener" forKey:?];
  [(FCPersonalizationScoringConfig *)self publisherDampenerWeight];
  [v8 encodeDouble:@"publisherDampenerWeight" forKey:?];
  [(FCPersonalizationScoringConfig *)self recentlyFollowedDurationThreshold];
  [v8 encodeDouble:@"recentlyFollowedDurationThreshold" forKey:?];
  [(FCPersonalizationScoringConfig *)self recentlyFollowedMultiplier];
  [v8 encodeDouble:@"recentlyFollowedMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self tabiScoreCoefficient];
  [v8 encodeDouble:@"tabiScoreCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostFeaturedArticleMultiplier];
  [v8 encodeDouble:@"clientSideEngagementBoostFeaturedArticleMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostFeatureCandidateArticleMultiplier];
  [v8 encodeDouble:@"clientSideEngagementBoostFeatureCandidateArticleMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostFreeCohortCTRCap];
  [v8 encodeDouble:@"clientSideEngagementBoostFreeCohortCTRCap" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostPaidCohortCTRCap];
  [v8 encodeDouble:@"clientSideEngagementBoostPaidCohortCTRCap" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostTagQualityMultiplier];
  [v8 encodeDouble:@"clientSideEngagementBoostTagQualityMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostReduceVisibilityMultiplier];
  [v8 encodeDouble:@"clientSideEngagementBoostReduceVisibilityMultiplier" forKey:?];
  [(FCPersonalizationScoringConfig *)self clientSideEngagementBoostANFMutiplier];
  [v8 encodeDouble:@"clientSideEngagementBoostANFMutiplier" forKey:?];
  [v8 encodeBool:-[FCPersonalizationScoringConfig dampenerEnabled](self forKey:{"dampenerEnabled"), @"dampenerEnabled"}];
  [v8 encodeBool:-[FCPersonalizationScoringConfig multiplierEnabled](self forKey:{"multiplierEnabled"), @"multiplierEnabled"}];
  [(FCPersonalizationScoringConfig *)self peopleAlsoReadBaselineScore];
  [v8 encodeDouble:@"peopleAlsoReadBaselineScore" forKey:?];
  [(FCPersonalizationScoringConfig *)self peopleAlsoReadConditionalScoreCoefficient];
  [v8 encodeDouble:@"peopleAlsoReadConditionalScoreCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self peopleAlsoReadScoreCoefficient];
  [v8 encodeDouble:@"peopleAlsoReadScoreCoefficient" forKey:?];
  [(FCPersonalizationScoringConfig *)self recipeSeenPenalty];
  [v8 encodeDouble:@"recipeSeenPenalty" forKey:?];
  [(FCPersonalizationScoringConfig *)self recipeViewedPenalty];
  [v8 encodeDouble:@"recipeViewedPenalty" forKey:?];
}

@end