uint64_t sub_1C6B7B540(void *a1)
{
  v3 = sub_1C6D76B00();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C6D76B30();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  [a1 articleLengthAggregateWeight];
  [v1 articleLengthLongThreshold];
  [v1 articleLengthMediumThreshold];
  [a1 baselineRatePrior];
  [v1 baselineImpressionPrior];
  [v1 baselineImpressionPrior];
  sub_1C6D76AF0();
  [v1 featureImpressionPrior];
  sub_1C6D76AF0();
  sub_1C6D76B20();
  [a1 publisherAggregateWeight];
  [v1 publisherTopicIDEventCountMinimum];
  return sub_1C6D76A70();
}

id sub_1C6B7B72C@<X0>(uint64_t a1@<X8>)
{
  v54[16] = a1;
  v2 = sub_1C6D76B70();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C6D76990();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v54[15] = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54[14] = v54 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54[13] = v54 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54[12] = v54 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v54[11] = v54 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v54[10] = v54 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v54[9] = v54 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v54[8] = v54 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v54[20] = v54 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v54[19] = v54 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v54[18] = v54 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v54[17] = v54 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v54 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = v54 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = v54 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = v54 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = v54 - v43;
  v45 = sub_1C6D76B50();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v54[7] = v54 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C6D76AA0();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = v54 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 defaultScoringConfig];
  if (result)
  {
    v53 = result;
    [result decayFactor];

    [v1 topStoriesGroupAggregatesGroupBias];
    [v1 trendingGroupAggregatesGroupBias];
    v54[6] = v51;
    sub_1C6D76A90();
    [v1 heavyClickClickValue];
    [v1 heavyClickImpressionValue];
    sub_1C6D76AF0();
    [v1 heavyClickBaselineClickValue];
    [v1 heavyClickBaselineImpressionValue];
    sub_1C6D76AF0();
    v54[5] = v44;
    sub_1C6D76980();
    [v1 presentationClickValue];
    [v1 presentationImpressionValue];
    sub_1C6D76AF0();
    [v1 presentationBaselineClickValue];
    [v1 presentationBaselineImpressionValue];
    sub_1C6D76AF0();
    v54[4] = v42;
    sub_1C6D76980();
    [v1 weakClickClickValue];
    [v1 weakClickImpressionValue];
    sub_1C6D76AF0();
    [v1 weakClickBaselineClickValue];
    [v1 weakClickBaselineImpressionValue];
    sub_1C6D76AF0();
    v54[3] = v39;
    sub_1C6D76980();
    [v1 dislikeClickValue];
    [v1 dislikeImpressionValue];
    sub_1C6D76AF0();
    [v1 dislikeBaselineClickValue];
    [v1 dislikeBaselineImpressionValue];
    sub_1C6D76AF0();
    v54[2] = v36;
    sub_1C6D76980();
    [v1 visitClickValue];
    [v1 visitImpressionValue];
    sub_1C6D76AF0();
    [v1 visitBaselineClickValue];
    [v1 visitBaselineImpressionValue];
    sub_1C6D76AF0();
    v54[1] = v33;
    sub_1C6D76980();
    [v1 subscribeClickValue];
    [v1 subscribeImpressionValue];
    sub_1C6D76AF0();
    [v1 subscribeBaselineClickValue];
    [v1 subscribeBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 ignoreClickValue];
    [v1 ignoreImpressionValue];
    sub_1C6D76AF0();
    [v1 ignoreBaselineClickValue];
    [v1 ignoreBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 likeClickValue];
    [v1 likeImpressionValue];
    sub_1C6D76AF0();
    [v1 likeBaselineClickValue];
    [v1 likeBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 muteClickValue];
    [v1 muteImpressionValue];
    sub_1C6D76AF0();
    [v1 muteBaselineClickValue];
    [v1 muteBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 savedClickValue];
    [v1 savedImpressionValue];
    sub_1C6D76AF0();
    [v1 savedBaselineClickValue];
    [v1 savedBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 shareClickValue];
    [v1 shareImpressionValue];
    sub_1C6D76AF0();
    [v1 shareBaselineClickValue];
    [v1 shareBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 sportsTagSeenClickValue];
    [v1 sportsTagSeenImpressionValue];
    sub_1C6D76AF0();
    [v1 sportsTagSeenBaselineClickValue];
    [v1 sportsTagSeenBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 trackFinishedClickValue];
    [v1 trackFinishedImpressionValue];
    sub_1C6D76AF0();
    [v1 trackFinishedBaselineClickValue];
    [v1 trackFinishedBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 trackListenedClickValue];
    [v1 trackListenedImpressionValue];
    sub_1C6D76AF0();
    [v1 trackListenedBaselineClickValue];
    [v1 trackListenedBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 trackVisitedClickValue];
    [v1 trackVisitedImpressionValue];
    sub_1C6D76AF0();
    [v1 trackVisitedBaselineClickValue];
    [v1 trackVisitedBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 unsubscribeClickValue];
    [v1 unsubscribeImpressionValue];
    sub_1C6D76AF0();
    [v1 unsubscribeBaselineClickValue];
    [v1 unsubscribeBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 unmuteClickValue];
    [v1 unmuteImpressionValue];
    sub_1C6D76AF0();
    [v1 unmuteBaselineClickValue];
    [v1 unmuteBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    sub_1C6D76B40();
    return sub_1C6D76AB0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B7C3F0@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v131) = a3;
  v150 = a2;
  v151 = a4;
  v5 = sub_1C6D769D0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v149 = v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D767F0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = v116 - v12;
  v13 = sub_1C6D76840();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v153 = v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C6D768D0();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v145 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v147 = v116 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v116 - v22;
  v24 = sub_1C6D76860();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v142 = v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v116 - v28;
  v30 = sub_1C6D769B0();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C6D76970();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v152 = v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v116 - v38;
  v40 = sub_1C6B7D894();
  [a1 anfMultiplier];
  v141 = v41;
  [a1 autofavoritedVoteCoefficient];
  v140 = v42;
  [a1 ctrWithOneAutofavorited];
  [a1 ctrWithThreeAutofavorited];
  [a1 ctrWithTwoAutofavorited];
  [a1 ctrWithZeroAutofavorited];
  v143 = v39;
  sub_1C6D76960();
  [a1 conversionScoreDemocratizationFactor];
  v139 = v43;
  [a1 clientSideEngagementBoostANFMutiplier];
  v138 = v44;
  [a1 clientSideEngagementBoostFeaturedArticleMultiplier];
  v137 = v45;
  [a1 clientSideEngagementBoostFeatureCandidateArticleMultiplier];
  v136 = v46;
  [a1 clientSideEngagementBoostFreeCohortCTRCap];
  v135 = v47;
  [a1 clientSideEngagementBoostPaidCohortCTRCap];
  v134 = v48;
  [a1 clientSideEngagementBoostReduceVisibilityMultiplier];
  v133 = v49;
  [a1 clientSideEngagementBoostTagQualityMultiplier];
  v132 = v50;
  [a1 contentTriggerDampenerCoefficient];
  [a1 contentTriggerMaxDampener];
  [a1 contentTriggerMaxEventCount];
  [a1 contentTriggerMinScoreWeight];
  [a1 contentTriggerScoreExponent];
  [a1 contentTriggerTagWeightExponent];
  v144 = v33;
  sub_1C6D769A0();
  v51 = [a1 conversionCohort];
  [v51 userBaseline];
  v148 = v52;

  v53 = [a1 conversionCohort];
  [v53 considerPublisherTopicAggregates];

  v54 = [a1 conversionCohort];
  [v54 dilutionFactor];
  v130 = v55;

  v56 = [a1 conversionCohort];
  [v56 enableUndampening];

  v57 = [a1 conversionCohort];
  [v57 exponentialFavoritedBoost];

  v58 = [a1 conversionCohort];
  [v58 globalWeight];

  v59 = [a1 conversionCohort];
  [v59 globalWeightHalfLife];

  v60 = [a1 conversionCohort];
  [v60 globalWeightInitialMultiplier];

  v61 = [a1 conversionCohort];
  [v61 paddingFactor];

  v62 = [a1 conversionCohort];
  [v62 postBaselineCurvature];

  v63 = [a1 conversionCohort];
  [v63 preBaselineCurvature];

  v64 = [a1 conversionCohort];
  [v64 favoritedBoost];

  v65 = [a1 conversionCohort];
  [v65 undampenOnlyAboveBaselineMembership];

  v66 = [a1 conversionCohort];
  [v66 useExponentialFavoritedBoost];

  v67 = [a1 conversionCohort];
  [v67 useRelativePersonalizationValue];

  v146 = v29;
  sub_1C6D76850();
  [a1 ctrWithSubscribedChannel];
  v129 = v68;
  LODWORD(v130) = [a1 dampenerEnabled];
  [a1 evergreenHalfLifeCoefficient];
  v128 = v69;
  [a1 audioMultiplierForFreeUsers];
  [a1 bundleFreeMultiplierForFreeUsers];
  if ((v40 & 1) == 0)
  {
    [a1 bundlePaidMultiplierForFreeUsers];
  }

  [a1 conversionCoefficientForFreeUsers];
  [a1 evergreenMultiplierForFreeUsers];
  [a1 featuredMultiplierForFreeUsers];
  v148 = v23;
  sub_1C6D768C0();
  [a1 halfLifeCoefficient];
  v127 = v70;
  [a1 userFeedbackHalfLifeCoefficient];
  v125 = v71;
  [a1 articleListenedPenalty];
  v124 = v72;
  v126 = [a1 multiplierEnabled];
  [a1 mutedVoteCoefficient];
  v121 = v73;
  [a1 nicheContentManagedTopicBoostAllTags];
  [a1 nicheContentDefaultFlowRate];
  v120 = v74;
  [a1 nicheContentDefaultSubscriptionRate];
  v119 = v75;
  v76 = [a1 lowFlowBoostEventEstimationConfig];
  [v76 exponent];

  v77 = [a1 lowFlowBoostEventEstimationConfig];
  [v77 padding];

  v78 = [a1 lowFlowBoostEventEstimationConfig];
  [v78 prior];

  sub_1C6D767E0();
  [a1 nicheContentExcludeNonGroupableTopics];
  v79 = [a1 lowFlowBoostFetchEstimationConfig];
  [v79 exponent];

  v80 = [a1 lowFlowBoostFetchEstimationConfig];
  [v80 padding];

  v81 = [a1 lowFlowBoostFetchEstimationConfig];
  [v81 prior];

  sub_1C6D767E0();
  [a1 lowFlowBoostFetchCountWeight];
  v118 = v82;
  [a1 nicheContentManagedTopicBoost];
  v117 = v83;
  [a1 nicheContentBaselineMembershipMultiplier];
  [a1 lowFlowBoostFactor];
  [a1 nicheContentBoostOnlyAboveBaselineMembership];
  [a1 lowFlowBoostMaxProductFactor];
  [a1 nicheContentPublisherFlowExponent];
  [a1 nicheContentPublisherSubscriptionExponent];
  [a1 nicheContentQualityThreshold];
  [a1 nicheContentServerFlowWeight];
  [a1 nicheContentShouldBoostPublisher];
  [a1 nicheContentTopicFlowExponent];
  [a1 nicheContentTopicSubscriptionExponent];
  sub_1C6D76830();
  [a1 audioMultiplierForPaidUsers];
  [a1 bundleFreeMultiplierForPaidUsers];
  if ((v40 & 1) == 0)
  {
    [a1 bundlePaidMultiplierForPaidUsers];
  }

  [a1 conversionCoefficientForPaidUsers];
  [a1 evergreenMultiplierForPaidUsers];
  [a1 featuredMultiplierForPaidUsers];
  sub_1C6D768C0();
  [a1 personalizedMultiplierBaselineMembership];
  [a1 personalizedMultiplierMembershipDampener];
  [a1 personalizedMultiplierPostBaselineCurvature];
  [a1 personalizedMultiplierPreBaselineCurvature];
  sub_1C6D769C0();
  [a1 publisherDampenerWeight];
  v123 = v84;
  [a1 articleReadPenalty];
  v122 = v85;
  [a1 recentlyFollowedDurationThreshold];
  v120 = v86;
  [a1 recentlyFollowedMultiplier];
  v119 = v87;
  LODWORD(v118) = [a1 respectHalfLifeOverride];
  [a1 headlineSeenPenalty];
  v117 = v88;
  [a1 globalScoreCoefficientFree];
  v116[9] = v89;
  [a1 globalScoreCoefficientHalfLife];
  v116[8] = v90;
  [a1 globalScoreCoefficientInitialMultiplier];
  v116[7] = v91;
  [a1 globalScoreCoefficientPaid];
  v116[6] = v92;
  [a1 globalScoreDemocratizationFactor];
  v116[5] = v93;
  [a1 sparseTagsPenalty];
  v116[4] = v94;
  [a1 subscribedChannelScoreCoefficient];
  v116[3] = v95;
  [a1 subscribedTopicsScoreCoefficient];
  v116[2] = v96;
  [a1 ctrWithOneSubscribed];
  [a1 ctrWithThreeSubscribed];
  [a1 ctrWithTwoSubscribed];
  [a1 ctrWithZeroSubscribed];
  sub_1C6D76960();
  v97 = 0;
  if ((v131 & 1) == 0)
  {
    [a1 tabiScoreCoefficient];
  }

  v131 = v97;
  [a1 audioMultiplierForTrialUsers];
  [a1 bundleFreeMultiplierForTrialUsers];
  if ((v40 & 1) == 0)
  {
    [a1 bundlePaidMultiplierForTrialUsers];
  }

  [a1 conversionCoefficientForTrialUsers];
  [a1 evergreenMultiplierForTrialUsers];
  [a1 featuredMultiplierForTrialUsers];
  sub_1C6D768C0();
  v98 = [a1 userCohort];
  [v98 userBaseline];
  v116[1] = v99;

  v100 = [a1 userCohort];
  [v100 considerPublisherTopicAggregates];

  v101 = [a1 userCohort];
  [v101 dilutionFactor];
  v116[0] = v102;

  v103 = [a1 userCohort];
  [v103 enableUndampening];

  v104 = [a1 userCohort];
  [v104 exponentialFavoritedBoost];

  v105 = [a1 userCohort];
  [v105 globalWeight];

  v106 = [a1 userCohort];
  [v106 globalWeightHalfLife];

  v107 = [a1 userCohort];
  [v107 globalWeightInitialMultiplier];

  v108 = [a1 userCohort];
  [v108 paddingFactor];

  v109 = [a1 userCohort];
  [v109 postBaselineCurvature];

  v110 = [a1 userCohort];
  [v110 preBaselineCurvature];

  v111 = [a1 userCohort];
  [v111 favoritedBoost];

  v112 = [a1 userCohort];
  [v112 undampenOnlyAboveBaselineMembership];

  v113 = [a1 userCohort];
  [v113 useExponentialFavoritedBoost];

  v114 = [a1 userCohort];
  [v114 useRelativePersonalizationValue];

  sub_1C6D76850();
  [a1 peopleAlsoReadBaselineScore];
  [a1 peopleAlsoReadConditionalScoreCoefficient];
  [a1 peopleAlsoReadScoreCoefficient];
  return sub_1C6D767A0();
}

id sub_1C6B7D894()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v11 = *MEMORY[0x1E69B6A20];
    sub_1C6D795A0();
    goto LABEL_10;
  }

  v2 = sub_1C6D795A0();
  v4 = v3;

  v5 = *MEMORY[0x1E69B6A20];
  v6 = sub_1C6D795A0();
  if (!v4)
  {
LABEL_10:

    return 0;
  }

  if (v2 == v6 && v4 == v7)
  {

    goto LABEL_12;
  }

  v9 = sub_1C6D7A130();

  result = 0;
  if (v9)
  {
LABEL_12:
    v12 = NewsCoreUserDefaults();
    v13 = [v12 BOOLForKey_];

    return v13;
  }

  return result;
}

uint64_t sub_1C6B7D9D4(void *a1)
{
  v1 = [a1 tagWeightMapping];
  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  sub_1C6B7DD88();
  v2 = sub_1C6D79490();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1C6D79E80() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  v12 = (v4 + 64) >> 6;
  v42 = v12;
  v43 = v6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    v16 = v11;
    if (!sub_1C6D79EA0() || (v17 = v5, swift_dynamicCast(), v20 = v44, swift_dynamicCast(), v21 = v44, v15 = v10, !v44))
    {
LABEL_30:
      sub_1C6B688C4();

      return sub_1C6D767C0();
    }

LABEL_19:
    v22 = v3;
    v23 = v20;
    v24 = v21;
    v25 = [v23 integerValue];
    [v24 doubleValue];
    v27 = v26;
    v28 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v16;
    v31 = sub_1C6B64D8C(v25);
    v32 = v28[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_32;
    }

    v35 = v30;
    if (v28[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v11 = v44;
        if (v30)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1C6B72D88();
        v11 = v44;
        if (v35)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1C6B6EB54(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_1C6B64D8C(v25);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_34;
      }

      v31 = v36;
      v11 = v44;
      if (v35)
      {
LABEL_8:
        *(v11[7] + 8 * v31) = v27;

        goto LABEL_9;
      }
    }

    v11[(v31 >> 6) + 8] |= 1 << v31;
    *(v11[6] + 8 * v31) = v25;
    *(v11[7] + 8 * v31) = v27;

    v38 = v11[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_33;
    }

    v11[2] = v40;
LABEL_9:
    v10 = v15;
    v5 = v17;
    v3 = v22;
    v12 = v42;
    v6 = v43;
  }

  v13 = v10;
  v14 = v5;
  v15 = v10;
  if (v5)
  {
LABEL_15:
    v16 = v11;
    v17 = (v14 - 1) & v14;
    v18 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v19 = *(*(v6 + 56) + v18);
    v20 = *(*(v6 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_30;
    }

    v14 = *(v3 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

unint64_t sub_1C6B7DD88()
{
  result = qword_1EDCEA4A0;
  if (!qword_1EDCEA4A0)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA8C0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA4A0);
  }

  return result;
}

uint64_t sub_1C6B7DDF0(uint64_t a1, char a2)
{
  [v2 channelTopicMappingWeight];
  [v2 democratizationFactor];
  [v2 locationScoreDecayFactor];
  [v2 locationWeight];
  [v2 maxDistanceThreshold];
  [v2 maxLocationsToConsider];
  if (a2)
  {
    [v2 popularityMultiplierBoost];
  }

  [v2 popularityMultiplierExponent];
  [v2 topicTopicMappingWeight];
  [v2 userMembershipWeight];
  return sub_1C6D76F70();
}

uint64_t sub_1C6B7DF50@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C6D76AC0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C6D767D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D76A80();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D767B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v13;
  v14 = sub_1C6D76780();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v17;
  v18 = sub_1C6D76A40();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v32 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C6D79170();
  v21 = *(v35 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, *MEMORY[0x1E69B5A20]);
  v25 = sub_1C6D79130();
  v26 = sub_1C6D79120();
  v27 = sub_1C6D79150();
  v30 = v27;
  sub_1C6B7A268();
  sub_1C6B7A480(v17);
  sub_1C6B7C3F0(v25, 0, 0, v13);
  sub_1C6B7B540(v25);
  sub_1C6B7D9D4(v27);
  sub_1C6B7E2C4(v26);
  sub_1C6B7B72C(v36);
  sub_1C6D76A50();

  return (*(v21 + 8))(v24, v35);
}

uint64_t sub_1C6B7E2C4(void *a1)
{
  v43 = sub_1C6D76AE0();
  v39 = *(v43 - 8);
  v2 = *(v39 + 64);
  v3 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v33 - v5;
  v6 = [a1 topicsConfig];
  sub_1C6B0C69C(0, &unk_1EDCEA4F0, 0x1E69B5470);
  v7 = sub_1C6D79780();

  if (v7 >> 62)
  {
LABEL_26:
    v8 = sub_1C6D79E90();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v36 = v7 & 0xFFFFFFFFFFFFFF8;
      v37 = v7 & 0xC000000000000001;
      v40 = (v39 + 32);
      v33 = v39 + 40;
      v10 = MEMORY[0x1E69E7CC8];
      v34 = v8;
      v35 = v7;
      while (1)
      {
        if (v37)
        {
          v11 = MEMORY[0x1CCA56240](v9, v7);
        }

        else
        {
          if (v9 >= *(v36 + 16))
          {
            goto LABEL_23;
          }

          v11 = *(v7 + 8 * v9 + 32);
        }

        v12 = v11;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v41 = v9 + 1;
        v13 = [v11 topicID];
        v14 = sub_1C6D795A0();
        v16 = v15;

        [v12 capAtBaseline];
        [v12 halfLifeCoefficientOverride];
        v7 = [v12 limitInGroup];
        [v12 publisherTopicWeight];
        [v12 scoreMultiplier];
        [v12 shouldLimitInGroup];
        [v12 tagWeight];
        [v12 useHalfLifeCoefficientOverride];
        v17 = v38;
        sub_1C6D76AD0();
        v18 = *v40;
        (*v40)(v42, v17, v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v10;
        v21 = sub_1C6B5DEA8(v14, v16);
        v22 = v10[2];
        v23 = (v20 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_24;
        }

        v7 = v20;
        if (v10[3] >= v24)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v20)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1C6B72D54();
            if (v7)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1C6B6EB20(v24, isUniquelyReferenced_nonNull_native);
          v25 = sub_1C6B5DEA8(v14, v16);
          if ((v7 & 1) != (v26 & 1))
          {
            result = sub_1C6D7A1C0();
            __break(1u);
            return result;
          }

          v21 = v25;
          if (v7)
          {
LABEL_4:

            v10 = v44;
            (*(v39 + 40))(v44[7] + *(v39 + 72) * v21, v42, v43);

            goto LABEL_5;
          }
        }

        v27 = v43;
        v10 = v44;
        v44[(v21 >> 6) + 8] |= 1 << v21;
        v28 = (v10[6] + 16 * v21);
        *v28 = v14;
        v28[1] = v16;
        v18((v10[7] + *(v39 + 72) * v21), v42, v27);

        v29 = v10[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        v10[2] = v31;
LABEL_5:
        ++v9;
        v7 = v35;
        if (v41 == v34)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC8];
LABEL_28:

  return v10;
}

void sub_1C6B7E734()
{
  if (!qword_1EDCE6278)
  {
    sub_1C6D76460();
    sub_1C6D76470();
    sub_1C6D76480();
    sub_1C6D76450();
    sub_1C6D76430();
    sub_1C6D76440();
    sub_1C6D76490();
    sub_1C6D764A0();
    sub_1C6B7E8C8(&qword_1EDCE62D0, MEMORY[0x1E69E3328]);
    sub_1C6B7E8C8(&qword_1EDCE62C8, MEMORY[0x1E69E3338]);
    v0 = sub_1C6D766E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6278);
    }
  }
}

uint64_t sub_1C6B7E8C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6B7E910()
{
  if (!qword_1EDCE6258)
  {
    sub_1C6D76600();
    sub_1C6D76610();
    sub_1C6D76620();
    sub_1C6D765F0();
    sub_1C6D765C0();
    sub_1C6D765D0();
    sub_1C6D76630();
    sub_1C6D765E0();
    sub_1C6B7E8C8(&qword_1EDCE6298, MEMORY[0x1E69E3428]);
    sub_1C6B7E8C8(&qword_1EDCE62A0, MEMORY[0x1E69E33F8]);
    v0 = sub_1C6D766E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6258);
    }
  }
}

void sub_1C6B7EAA4()
{
  if (!qword_1EDCE6260)
  {
    sub_1C6D76580();
    sub_1C6D76590();
    sub_1C6D765A0();
    sub_1C6D76570();
    sub_1C6D76540();
    sub_1C6D76550();
    sub_1C6D765B0();
    sub_1C6D76560();
    sub_1C6B7E8C8(&qword_1EDCE62A8, MEMORY[0x1E69E33D8]);
    sub_1C6B7E8C8(&qword_1EDCE62B0, MEMORY[0x1E69E33A8]);
    v0 = sub_1C6D766E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6260);
    }
  }
}

void sub_1C6B7EC38()
{
  if (!qword_1EDCE6280)
  {
    sub_1C6D766C0();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6280);
    }
  }
}

void sub_1C6B7EC90()
{
  if (!qword_1EDCE6250)
  {
    sub_1C6D76680();
    sub_1C6D76690();
    sub_1C6D766A0();
    sub_1C6D76670();
    sub_1C6D76640();
    sub_1C6D76650();
    sub_1C6D766B0();
    sub_1C6D76660();
    sub_1C6B7E8C8(&qword_1EDCE6288, MEMORY[0x1E69E3478]);
    sub_1C6B7E8C8(&qword_1EDCE6290, MEMORY[0x1E69E3448]);
    v0 = sub_1C6D766E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6250);
    }
  }
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B7FB10(v1 + *(v7 + 24), v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7FB90(v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead()
{
  result = qword_1EDCE4C40;
  if (!qword_1EDCE4C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B7F030@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B7FB10(a1 + *(v8 + 24), v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7FB90(v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6B7F1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 24);
  sub_1C6B7FB90(a2 + v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 24);
  sub_1C6B7FB90(v1 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleRead.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 24);
  *(v5 + 12) = v16;
  sub_1C6B7FB10(v1 + v16, v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7FB90(v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B7F640;
}

void sub_1C6B7F640(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6B7FB90(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B7F770(v5);
  }

  else
  {
    sub_1C6B7FB90(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6B7F770(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleRead.hasArticle.getter()
{
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B7FB10(v0 + *(v5 + 24), v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7FB90(v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleRead.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 24);
  sub_1C6B7FB90(v0 + v1, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B7FB10(v1 + *(v8 + 28), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7FB90(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6B7FB10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B82104(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B7FB90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B82104(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6B7FC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B7FB10(a1 + *(v9 + 28), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6B7FB90(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6B7FD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 28);
  sub_1C6B7FB90(a2 + v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 28);
  sub_1C6B7FB90(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleRead.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 28);
  *(v5 + 12) = v16;
  sub_1C6B7FB10(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7FB90(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B80204;
}

void sub_1C6B80204(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6B7FB90(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6B7FB90(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleRead.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B7FB10(v0 + *(v6 + 28), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6B7FB90(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleRead.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 28);
  sub_1C6B7FB90(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.scrollData.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v3 = &a1[v2[5]];
  sub_1C6D78A30();
  v4 = v2[6];
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t sub_1C6B807C4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4C70);
  __swift_project_value_buffer(v0, qword_1EDCE4C70);
  sub_1C6B82104(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "scroll_data";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleRead._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
          sub_1C6B820BC(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
          sub_1C6D78BA0();
          break;
        case 2:
          sub_1C6B80C78();
          break;
        case 1:
          sub_1C6B80BC4();
          break;
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6B80BC4()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 24);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6B820BC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6B80C78()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 28);
  sub_1C6D78A00();
  sub_1C6B820BC(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6B80E40(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6B81064(v3, a1, a2, a3);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
      sub_1C6B820BC(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      sub_1C6D78CE0();
    }

    v11 = v5 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B80E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B7FB10(a1 + *(v14 + 24), v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B7FB90(v8, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6B820BC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B7F770(v13);
}

uint64_t sub_1C6B81064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B7FB10(a1 + *(v15 + 28), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6B7FB90(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6B820BC(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  sub_1C6B820BC(&qword_1EC1D6FD0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B8133C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[a1[5]];
  sub_1C6D78A30();
  v5 = a1[6];
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = sub_1C6D78A00();
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1C6B81460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B820BC(&qword_1EC1D6FE0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B814DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B81584(uint64_t a1)
{
  v2 = sub_1C6B820BC(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B815F0()
{
  sub_1C6B820BC(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventArticleReadV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v63 = a2;
  v3 = sub_1C6D78A00();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69AAB70];
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v54 - v10;
  sub_1C6B81FE8(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v6);
  v57 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v7);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v54 - v21;
  sub_1C6B81FE8(0, &qword_1EC1D69F0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v54 - v26;
  v58 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v28 = *(v58 + 24);
  v29 = *(v24 + 56);
  v62 = a1;
  sub_1C6B7FB10(a1 + v28, v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v30 = v63;
  sub_1C6B7FB10(v63 + v28, &v27[v29], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v31 = *(v15 + 48);
  if (v31(v27, 1, v14) == 1)
  {
    if (v31(&v27[v29], 1, v14) == 1)
    {
      sub_1C6B7FB90(v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      goto LABEL_8;
    }

LABEL_6:
    v32 = &qword_1EC1D69F0;
    v33 = &qword_1EDCE52B0;
    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle;
    v35 = v27;
LABEL_14:
    sub_1C6B82060(v35, v32, v33, v34);
    goto LABEL_15;
  }

  sub_1C6B7FB10(v27, v22, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if (v31(&v27[v29], 1, v14) == 1)
  {
    sub_1C6B7F770(v22);
    goto LABEL_6;
  }

  sub_1C6B483C8(&v27[v29], v18);
  v36 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v22, v18);
  sub_1C6B7F770(v18);
  sub_1C6B7F770(v22);
  sub_1C6B7FB90(v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  if ((v36 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v37 = v58;
  v38 = *(v58 + 28);
  v39 = *(v57 + 48);
  v40 = MEMORY[0x1E69AAB70];
  v41 = v62;
  v42 = v59;
  sub_1C6B7FB10(v62 + v38, v59, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6B7FB10(v30 + v38, v42 + v39, &qword_1EDCDFD00, v40);
  v44 = v60;
  v43 = v61;
  v45 = *(v60 + 48);
  if (v45(v42, 1, v61) != 1)
  {
    v46 = v56;
    sub_1C6B7FB10(v42, v56, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    if (v45(v42 + v39, 1, v43) != 1)
    {
      v49 = v42 + v39;
      v50 = v55;
      (*(v44 + 32))(v55, v49, v43);
      sub_1C6B820BC(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
      v51 = sub_1C6D79560();
      v52 = *(v44 + 8);
      v52(v50, v43);
      v52(v46, v43);
      sub_1C6B7FB90(v42, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      if ((v51 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    (*(v44 + 8))(v46, v43);
    goto LABEL_13;
  }

  if (v45(v42 + v39, 1, v43) != 1)
  {
LABEL_13:
    v32 = &qword_1EC1D6F60;
    v33 = &qword_1EDCDFD00;
    v34 = MEMORY[0x1E69AAB70];
    v35 = v42;
    goto LABEL_14;
  }

  sub_1C6B7FB90(v42, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_18:
  if (sub_1C6B5A9B0(*v41, *v30))
  {
    v53 = *(v37 + 20);
    sub_1C6D78A40();
    sub_1C6B820BC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v47 = sub_1C6D79560();
    return v47 & 1;
  }

LABEL_15:
  v47 = 0;
  return v47 & 1;
}

void sub_1C6B81EA4()
{
  sub_1C6B82104(319, &qword_1EDCDFA70, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      sub_1C6B82104(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6B82104(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6B81FE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6B82104(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6B82060(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B81FE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6B820BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6B82104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B823A4(v1 + *(v7 + 44), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession()
{
  result = qword_1EDCE7A18;
  if (!qword_1EDCE7A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B823A4(uint64_t a1, uint64_t a2)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B82438(uint64_t a1)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B824C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B823A4(a1 + *(v8 + 44), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6B82630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 44);
  sub_1C6B82438(a2 + v9);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.startedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 44);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Com_Apple_News_PersonalizationStorage_CompressedSession.startedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 44);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B857BC;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSession.hasStartedAt.getter()
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B823A4(v0 + *(v5 + 44), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSession.clearStartedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 44);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B823A4(v1 + *(v7 + 48), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t sub_1C6B82D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B823A4(a1 + *(v8 + 48), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6B82E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 48);
  sub_1C6B82438(a2 + v9);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.endedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 48);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Com_Apple_News_PersonalizationStorage_CompressedSession.endedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 48);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B83270;
}

void sub_1C6B83274(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6B82438(v9 + v3);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6B82438(v9 + v3);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSession.hasEndedAt.getter()
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B823A4(v0 + *(v5 + 48), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSession.clearEndedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 48);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.events.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.articles.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.ids.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.clientVersion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.clientVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void Com_Apple_News_PersonalizationStorage_CompressedSession.messageVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.messageVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 40);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 40);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v4 = a1 + v3[10];
  sub_1C6D78A30();
  v5 = v3[11];
  v6 = sub_1C6D789A0();
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a1 + v5, 1, 1, v6);
  v7 = a1 + v3[12];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_1C6B83944()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D6FE8);
  __swift_project_value_buffer(v0, qword_1EC1D6FE8);
  sub_1C6B85758(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6D80990;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "started_at";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "ended_at";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "events";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "articles";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "ids";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "client_version";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "message_version";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSession._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5950 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6FE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            sub_1C6D78B60();
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
          sub_1C6B85710(qword_1EDCE3BC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
          goto LABEL_22;
        }

        if (result == 7)
        {
LABEL_23:
          sub_1C6D78B80();
          goto LABEL_5;
        }

        if (result == 8)
        {
          sub_1C6B84C68();
          sub_1C6D78B00();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_1C6B84038();
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
          sub_1C6B85710(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
LABEL_22:
          v0 = v3;
          sub_1C6D78BA0();
          goto LABEL_5;
        }

        if (result == 1)
        {
          goto LABEL_23;
        }

        if (result == 2)
        {
          sub_1C6B83F84();
        }
      }

LABEL_5:
      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6B83F84()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 44);
  sub_1C6D789A0();
  sub_1C6B85710(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6B84038()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 48);
  sub_1C6D789A0();
  sub_1C6B85710(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    result = sub_1C6B84358(v0);
    if (!v1)
    {
      sub_1C6B84574(v0);
      if (*(*(v0 + 16) + 16))
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
        sub_1C6B85710(qword_1EDCE3E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
        sub_1C6D78CE0();
      }

      if (*(*(v0 + 24) + 16))
      {
        type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
        sub_1C6B85710(qword_1EDCE3BC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        sub_1C6D78CE0();
      }

      if (*(*(v0 + 32) + 16))
      {
        sub_1C6D78CB0();
      }

      v6 = *(v0 + 48);
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = *(v0 + 40) & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        sub_1C6D78CC0();
      }

      if (*(v0 + 56))
      {
        v9 = *(v0 + 56);
        v10 = *(v0 + 64);
        sub_1C6B84C68();
        sub_1C6D78C70();
      }

      v8 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession() + 40);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6B84358(uint64_t a1)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B823A4(a1 + *(v11 + 44), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B82438(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6B85710(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6B84574(uint64_t a1)
{
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B823A4(a1 + *(v11 + 48), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B82438(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6B85710(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  sub_1C6B85710(&qword_1EC1D7000, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B8481C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  v5 = a2 + a1[10];
  sub_1C6D78A30();
  v6 = a1[11];
  v7 = sub_1C6D789A0();
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a2 + v6, 1, 1, v7);
  v8 = a2 + a1[12];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_1C6B8491C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6B84990(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6B84A04(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1C6B84A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B85710(&qword_1EC1D7010, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B84AD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5950 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6FE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B84B7C(uint64_t a1)
{
  v2 = sub_1C6B85710(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B84BE8()
{
  sub_1C6B85710(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);

  return sub_1C6D78C20();
}

unint64_t sub_1C6B84C68()
{
  result = qword_1EDCE4DD8[0];
  if (!qword_1EDCE4DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCE4DD8);
  }

  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B25Storage_CompressedSessionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47[-v13];
  sub_1C6B85620();
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47[-v21];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_18;
  }

  v51 = v8;
  v52 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v53 = a1;
  v23 = *(v52 + 44);
  v24 = *(v16 + 48);
  sub_1C6B823A4(a1 + v23, v22);
  sub_1C6B823A4(a2 + v23, &v22[v24]);
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) == 1)
  {
    if (v25(&v22[v24], 1, v4) == 1)
    {
      v49 = v5;
      v50 = a2;
      sub_1C6B82438(v22);
      goto LABEL_11;
    }

LABEL_9:
    v26 = v22;
LABEL_17:
    sub_1C6B856B4(v26);
    goto LABEL_18;
  }

  sub_1C6B823A4(v22, v14);
  if (v25(&v22[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_9;
  }

  v50 = a2;
  v27 = *(v5 + 32);
  v28 = v5;
  v29 = v51;
  v27(v51, &v22[v24], v4);
  sub_1C6B85710(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
  v48 = sub_1C6D79560();
  v49 = v28;
  v30 = *(v28 + 8);
  v30(v29, v4);
  v30(v14, v4);
  sub_1C6B82438(v22);
  if ((v48 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v31 = v52;
  v32 = *(v52 + 48);
  v33 = *(v16 + 48);
  sub_1C6B823A4(v53 + v32, v20);
  v34 = v50 + v32;
  v35 = v50;
  sub_1C6B823A4(v34, &v20[v33]);
  if (v25(v20, 1, v4) != 1)
  {
    v36 = v54;
    sub_1C6B823A4(v20, v54);
    if (v25(&v20[v33], 1, v4) != 1)
    {
      v39 = v49;
      v40 = v51;
      (*(v49 + 32))(v51, &v20[v33], v4);
      sub_1C6B85710(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v41 = sub_1C6D79560();
      v42 = *(v39 + 8);
      v42(v40, v4);
      v42(v36, v4);
      sub_1C6B82438(v20);
      if ((v41 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    (*(v49 + 8))(v36, v4);
    goto LABEL_16;
  }

  if (v25(&v20[v33], 1, v4) != 1)
  {
LABEL_16:
    v26 = v20;
    goto LABEL_17;
  }

  sub_1C6B82438(v20);
LABEL_21:
  v43 = v53;
  if (sub_1C6B5AC80(v53[2], v35[2]) & 1) != 0 && (sub_1C6B5B5C4(v43[3], v35[3]) & 1) != 0 && (sub_1C6B55CF8(v43[4], v35[4]) & 1) != 0 && (v43[5] == v35[5] && v43[6] == v35[6] || (sub_1C6D7A130()))
  {
    v44 = v43[7];
    v45 = v35[7];
    if (*(v35 + 64) == 1)
    {
      if (v45 <= 2)
      {
        if (v45)
        {
          if (v45 == 1)
          {
            if (v44 == 1)
            {
              goto LABEL_34;
            }
          }

          else if (v44 == 2)
          {
            goto LABEL_34;
          }
        }

        else if (!v44)
        {
          goto LABEL_34;
        }
      }

      else if (v45 > 4)
      {
        if (v45 == 5)
        {
          if (v44 == 5)
          {
            goto LABEL_34;
          }
        }

        else if (v44 == 6)
        {
          goto LABEL_34;
        }
      }

      else if (v45 == 3)
      {
        if (v44 == 3)
        {
          goto LABEL_34;
        }
      }

      else if (v44 == 4)
      {
        goto LABEL_34;
      }
    }

    else if (v44 == v45)
    {
LABEL_34:
      v46 = *(v31 + 40);
      sub_1C6D78A40();
      sub_1C6B85710(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v37 = sub_1C6D79560();
      return v37 & 1;
    }
  }

LABEL_18:
  v37 = 0;
  return v37 & 1;
}

void sub_1C6B85454()
{
  sub_1C6B85758(319, &qword_1EDCDFA68, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6B85758(319, &qword_1EDCDFA60, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C6B855D0();
      if (v2 <= 0x3F)
      {
        sub_1C6D78A40();
        if (v3 <= 0x3F)
        {
          sub_1C6B85758(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6B855D0()
{
  if (!qword_1EDCE7F40)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7F40);
    }
  }
}

void sub_1C6B85620()
{
  if (!qword_1EC1D6C50)
  {
    sub_1C6B85758(255, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6C50);
    }
  }
}

uint64_t sub_1C6B856B4(uint64_t a1)
{
  sub_1C6B85620();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B85710(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6B85758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C6B857C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30[1] = a2;
  v6 = sub_1C6D77CF0();
  v30[0] = *(v6 - 8);
  v7 = *(v30[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v31 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B85C18();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D77290();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(v30 - v17, a1, v15);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v19 = sub_1C6D77270();
    v20 = sub_1C6D77330();
    v22 = v21;

    if (!v3)
    {
      sub_1C6B85CAC(&qword_1EC1D7018, MEMORY[0x1E69B4A20]);
      v23 = v31;
      sub_1C6D75AF0();
      a3[3] = v6;
      v25 = MEMORY[0x1E69B4A20];
      a3[4] = sub_1C6B85CAC(&qword_1EC1D7020, MEMORY[0x1E69B4A20]);
      a3[5] = sub_1C6B85CAC(&qword_1EC1D7028, v25);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a3);
      (*(v30[0] + 32))(boxed_opaque_existential_2, v23, v6);
      sub_1C6B1C9F0(v20, v22);
      v27 = *MEMORY[0x1E69E3690];
      v28 = sub_1C6D76F90();
      v29 = *(v28 - 8);
      (*(v29 + 104))(a3, v27, v28);
      (*(v29 + 56))(a3, 0, 1, v28);
    }
  }

  else
  {
    v24 = sub_1C6D76F90();
    (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }
}

void sub_1C6B85C18()
{
  if (!qword_1EDCE6048)
  {
    sub_1C6D77D00();
    sub_1C6B85CAC(&qword_1EDCE5E98, MEMORY[0x1E69B4A38]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6048);
    }
  }
}

uint64_t sub_1C6B85CAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved()
{
  result = qword_1EDCE4408;
  if (!qword_1EDCE4408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B85F38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6B860D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleUnsaved.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleUnsaved.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleUnsaved.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_1C6B867A8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7030);
  __swift_project_value_buffer(v0, qword_1EC1D7030);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "article";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleUnsaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5958 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6B86A48();
    }
  }

  return result;
}

uint64_t sub_1C6B86A48()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6B87498(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.traverse<A>(visitor:)()
{
  result = sub_1C6B86B54(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B86B54(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6B87498(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnsaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  sub_1C6B87498(&qword_1EC1D7048, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B86E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B87498(&qword_1EC1D7068, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B86EB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5958 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B86F58(uint64_t a1)
{
  v2 = sub_1C6B87498(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B86FC4()
{
  sub_1C6B87498(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleUnsavedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6B87498(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6B87498(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted()
{
  result = qword_1EDCE3948;
  if (!qword_1EDCE3948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B876F0()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7070);
  __swift_project_value_buffer(v0, qword_1EC1D7070);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "tag_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5960 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7070);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted() + 20);
  sub_1C6D78A40();
  sub_1C6B87FF8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
  sub_1C6B87FF8(&qword_1EC1D7088, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B87B14@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B87B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B87FF8(&qword_1EC1D70A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B87C00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5960 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7070);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B87CA8(uint64_t a1)
{
  v2 = sub_1C6B87FF8(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B87D14()
{
  sub_1C6B87FF8(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B87EB0(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6B87FF8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B87F7C()
{
  result = sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6B87FF8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B88068()
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);

  v9 = sub_1C6B8C820(v8);

  v11 = sub_1C6B8C260(v10);

  if (*(v11 + 16))
  {

    v12 = sub_1C6B647AC(v11);
    sub_1C6B688CC();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 1;
    swift_willThrow();
    return v3;
  }

  else
  {
    v34[1] = v1;
    v35 = v0;
    v37 = v6;
    v38 = v3;

    sub_1C6B8CBF0(0, &qword_1EDCDF638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    result = sub_1C6D79EF0();
    v15 = result;
    v16 = 0;
    v17 = v9 + 64;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v36 = result + 64;
    v22 = v38;
    if (v20)
    {
      while (1)
      {
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_12:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v9 + 56) + 8 * v26);
        if (!*(v27 + 16))
        {
          break;
        }

        v28 = v9;
        v39 = *(*(v9 + 48) + 4 * v26);
        v29 = v37;
        sub_1C6B8CB6C(v27 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v37, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        *(v36 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(v15[6] + 4 * v26) = v39;
        result = sub_1C6B8CDC4(v29, v15[7] + *(v22 + 72) * v26, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v30 = v15[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_20;
        }

        v15[2] = v32;
        v9 = v28;
        if (!v20)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v24 = v16;
      while (1)
      {
        v16 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v16 >= v21)
        {

          MEMORY[0x1EEE9AC00](v33);
          v34[-2] = v35;
          v3 = sub_1C6B8C3C0(sub_1C6B8CBD4, &v34[-4], v15);

          return v3;
        }

        v25 = *(v17 + 8 * v16);
        ++v24;
        if (v25)
        {
          v23 = __clz(__rbit64(v25));
          v20 = (v25 - 1) & v25;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C6B883C4()
{
  v0 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v65 = (&v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v60 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = (&v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = (&v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = (&v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = (&v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = (&v60 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = (&v60 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v60 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CB6C(v66, v53, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6B8CDC4(v53, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v54 = *v45;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
      v57 = v45;
      break;
    case 2u:
      sub_1C6B8CDC4(v53, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v54 = *v41;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead;
      v57 = v41;
      break;
    case 3u:
      sub_1C6B8CDC4(v53, v37, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
      goto LABEL_17;
    case 4u:
      sub_1C6B8CDC4(v53, v33, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v54 = *v33;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
      v57 = v33;
      break;
    case 5u:
      sub_1C6B8CDC4(v53, v25, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v54 = *v25;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
      v57 = v25;
      break;
    case 6u:
      v37 = v60;
      sub_1C6B8CDC4(v53, v60, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
      goto LABEL_17;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0x12u:
    case 0x13u:
      sub_1C6B8AD34(v53, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v54 = 0;
      v55 = 1;
      return v54 | (v55 << 32);
    case 0xCu:
      v37 = v63;
      sub_1C6B8CDC4(v53, v63, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
      goto LABEL_17;
    case 0xDu:
      v37 = v64;
      sub_1C6B8CDC4(v53, v64, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
      goto LABEL_17;
    case 0xEu:
      v37 = v65;
      sub_1C6B8CDC4(v53, v65, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
      goto LABEL_17;
    case 0xFu:
      sub_1C6B8CDC4(v53, v29, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v54 = *v29;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
      v57 = v29;
      break;
    case 0x10u:
      sub_1C6B8CDC4(v53, v21, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v54 = *v21;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
      v57 = v21;
      break;
    case 0x11u:
      v37 = v61;
      sub_1C6B8CDC4(v53, v61, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
      goto LABEL_17;
    case 0x14u:
      v37 = v62;
      sub_1C6B8CDC4(v53, v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v54 = *v37;
      v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended;
LABEL_17:
      v56 = v58;
      v57 = v37;
      break;
    default:
      sub_1C6B8CDC4(v53, v49, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      v54 = *v49;
      v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen;
      v57 = v49;
      break;
  }

  sub_1C6B8AD34(v57, v56);
  v55 = 0;
  return v54 | (v55 << 32);
}

unint64_t sub_1C6B88C1C()
{
  v227 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v0 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v232 = &v188 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v2 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v231 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v4 = *(*(v223 - 8) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v230 = &v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v6 = *(*(v221 - 8) + 64);
  MEMORY[0x1EEE9AC00](v221);
  v229 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v8 = *(*(v219 - 8) + 64);
  MEMORY[0x1EEE9AC00](v219);
  v228 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v10 = *(*(v217 - 8) + 64);
  MEMORY[0x1EEE9AC00](v217);
  v226 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v12 = *(*(v215 - 8) + 64);
  MEMORY[0x1EEE9AC00](v215);
  v224 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v14 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v222 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v16 = *(*(v212 - 8) + 64);
  MEMORY[0x1EEE9AC00](v212);
  v220 = &v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v18 = *(*(v211 - 8) + 64);
  MEMORY[0x1EEE9AC00](v211);
  v218 = &v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v20 = *(*(v208 - 8) + 64);
  MEMORY[0x1EEE9AC00](v208);
  v216 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v22 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v214 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CE2C(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v210 = &v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v209 = &v188 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v207 = &v188 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v206 = &v188 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v204 = &v188 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v203 = &v188 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v202 = &v188 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v201 = &v188 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v200 = &v188 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v199 = &v188 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v198 = &v188 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v197 = &v188 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v196 = &v188 - v50;
  v51 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v52 = *(v51 - 8);
  v233 = v51;
  v234 = v52;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v195 = &v188 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v194 = &v188 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v193 = &v188 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v192 = &v188 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v191 = &v188 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v190 = &v188 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v189 = &v188 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v188 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v188 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v188 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v188 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v188 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v188 - v83;
  v85 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v188 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v188 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CB6C(v235, v92, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v94 = v214;
      sub_1C6B8CDC4(v92, v214, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v123 = v197;
      sub_1C6B8AC44(v94 + *(v205 + 24), v197, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v124 = v233;
      v125 = *(v234 + 48);
      if (v125(v123, 1, v233) == 1)
      {
        v126 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v126 - 8) + 56))(v81, 1, 1, v126);
        v127 = &v81[*(v124 + 20)];
        sub_1C6D78A30();
        if (v125(v123, 1, v124) != 1)
        {
          sub_1C6B8ACC4(v123, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v123, v81, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v177 = sub_1C6B8A9AC();
      v93 = v177;
      v78 = (HIDWORD(v177) & 1);
      sub_1C6B8AD34(v81, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v170 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
      goto LABEL_54;
    case 2u:
      v107 = v216;
      sub_1C6B8CDC4(v92, v216, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v108 = v198;
      sub_1C6B8AC44(v107 + *(v208 + 28), v198, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v109 = v233;
      v110 = *(v234 + 48);
      if (v110(v108, 1, v233) == 1)
      {
        v111 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v111 - 8) + 56))(v78, 1, 1, v111);
        v112 = &v78[*(v109 + 20)];
        sub_1C6D78A30();
        if (v110(v108, 1, v109) != 1)
        {
          sub_1C6B8ACC4(v108, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v108, v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v173 = sub_1C6B8A9AC();
      v93 = v173;
      v174 = HIDWORD(v173) & 1;
      sub_1C6B8AD34(v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6B8AD34(v107, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      LOBYTE(v78) = v174;
      return v93 | (v78 << 32);
    case 3u:
      v100 = v218;
      sub_1C6B8CDC4(v92, v218, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v113 = v199;
      sub_1C6B8AC44(v100 + *(v211 + 28), v199, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v114 = v233;
      v115 = *(v234 + 48);
      if (v115(v113, 1, v233) == 1)
      {
        v116 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v116 - 8) + 56))(v75, 1, 1, v116);
        v117 = &v75[*(v114 + 20)];
        sub_1C6D78A30();
        if (v115(v113, 1, v114) != 1)
        {
          sub_1C6B8ACC4(v113, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v113, v75, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v175 = sub_1C6B8A9AC();
      v93 = v175;
      v78 = (HIDWORD(v175) & 1);
      sub_1C6B8AD34(v75, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
      goto LABEL_69;
    case 4u:
      v94 = v220;
      sub_1C6B8CDC4(v92, v220, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v95 = v200;
      sub_1C6B8AC44(v94 + *(v212 + 24), v200, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v96 = v233;
      v97 = *(v234 + 48);
      if (v97(v95, 1, v233) == 1)
      {
        v98 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v98 - 8) + 56))(v72, 1, 1, v98);
        v99 = &v72[*(v96 + 20)];
        sub_1C6D78A30();
        if (v97(v95, 1, v96) != 1)
        {
          sub_1C6B8ACC4(v95, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v95, v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v169 = sub_1C6B8A9AC();
      v93 = v169;
      v78 = (HIDWORD(v169) & 1);
      sub_1C6B8AD34(v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v170 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
LABEL_54:
      v178 = v170;
      v179 = v94;
      goto LABEL_70;
    case 5u:
      v100 = v224;
      sub_1C6B8CDC4(v92, v224, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v134 = v202;
      sub_1C6B8AC44(v100 + *(v215 + 24), v202, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v135 = v233;
      v136 = *(v234 + 48);
      if (v136(v134, 1, v233) == 1)
      {
        v137 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v138 = v189;
        (*(*(v137 - 8) + 56))(v189, 1, 1, v137);
        v139 = v138 + *(v135 + 20);
        sub_1C6D78A30();
        if (v136(v134, 1, v135) != 1)
        {
          sub_1C6B8ACC4(v134, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v138 = v189;
        sub_1C6B8CDC4(v134, v189, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v181 = sub_1C6B8A9AC();
      v93 = v181;
      v78 = (HIDWORD(v181) & 1);
      sub_1C6B8AD34(v138, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
      goto LABEL_69;
    case 6u:
      v100 = v228;
      sub_1C6B8CDC4(v92, v228, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v146 = v204;
      sub_1C6B8AC44(v100 + *(v219 + 24), v204, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v147 = v233;
      v148 = *(v234 + 48);
      if (v148(v146, 1, v233) == 1)
      {
        v149 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v150 = v191;
        (*(*(v149 - 8) + 56))(v191, 1, 1, v149);
        v151 = v150 + *(v147 + 20);
        sub_1C6D78A30();
        if (v148(v146, 1, v147) != 1)
        {
          sub_1C6B8ACC4(v146, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v150 = v191;
        sub_1C6B8CDC4(v146, v191, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v183 = sub_1C6B8A9AC();
      v93 = v183;
      v78 = (HIDWORD(v183) & 1);
      sub_1C6B8AD34(v150, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
      goto LABEL_69;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      sub_1C6B8AD34(v92, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v93 = 0;
      LOBYTE(v78) = 1;
      return v93 | (v78 << 32);
    case 0xCu:
      v100 = v230;
      sub_1C6B8CDC4(v92, v230, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v101 = v207;
      sub_1C6B8AC44(v100 + *(v223 + 24), v207, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v102 = v233;
      v103 = *(v234 + 48);
      if (v103(v101, 1, v233) == 1)
      {
        v104 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v105 = v193;
        (*(*(v104 - 8) + 56))(v193, 1, 1, v104);
        v106 = v105 + *(v102 + 20);
        sub_1C6D78A30();
        if (v103(v101, 1, v102) != 1)
        {
          sub_1C6B8ACC4(v101, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v105 = v193;
        sub_1C6B8CDC4(v101, v193, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v171 = sub_1C6B8A9AC();
      v93 = v171;
      v78 = (HIDWORD(v171) & 1);
      sub_1C6B8AD34(v105, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
      goto LABEL_69;
    case 0xDu:
      v100 = v231;
      sub_1C6B8CDC4(v92, v231, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v163 = v209;
      sub_1C6B8AC44(v100 + *(v225 + 24), v209, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v164 = v233;
      v165 = *(v234 + 48);
      if (v165(v163, 1, v233) == 1)
      {
        v166 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v167 = v194;
        (*(*(v166 - 8) + 56))(v194, 1, 1, v166);
        v168 = v167 + *(v164 + 20);
        sub_1C6D78A30();
        if (v165(v163, 1, v164) != 1)
        {
          sub_1C6B8ACC4(v163, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v167 = v194;
        sub_1C6B8CDC4(v163, v194, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v186 = sub_1C6B8A9AC();
      v93 = v186;
      v78 = (HIDWORD(v186) & 1);
      sub_1C6B8AD34(v167, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
      goto LABEL_69;
    case 0xEu:
      v100 = v232;
      sub_1C6B8CDC4(v92, v232, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v128 = v210;
      sub_1C6B8AC44(v100 + *(v227 + 24), v210, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v129 = v233;
      v130 = *(v234 + 48);
      if (v130(v128, 1, v233) == 1)
      {
        v131 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v132 = v195;
        (*(*(v131 - 8) + 56))(v195, 1, 1, v131);
        v133 = v132 + *(v129 + 20);
        sub_1C6D78A30();
        if (v130(v128, 1, v129) != 1)
        {
          sub_1C6B8ACC4(v128, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v132 = v195;
        sub_1C6B8CDC4(v128, v195, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v180 = sub_1C6B8A9AC();
      v93 = v180;
      v78 = (HIDWORD(v180) & 1);
      sub_1C6B8AD34(v132, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
      goto LABEL_69;
    case 0xFu:
      v100 = v222;
      sub_1C6B8CDC4(v92, v222, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v152 = v201;
      sub_1C6B8AC44(v100 + *(v213 + 24), v201, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v153 = v233;
      v154 = *(v234 + 48);
      if (v154(v152, 1, v233) == 1)
      {
        v155 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v155 - 8) + 56))(v69, 1, 1, v155);
        v156 = &v69[*(v153 + 20)];
        sub_1C6D78A30();
        if (v154(v152, 1, v153) != 1)
        {
          sub_1C6B8ACC4(v152, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v152, v69, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v184 = sub_1C6B8A9AC();
      v93 = v184;
      v78 = (HIDWORD(v184) & 1);
      sub_1C6B8AD34(v69, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
      goto LABEL_69;
    case 0x10u:
      v100 = v226;
      sub_1C6B8CDC4(v92, v226, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v157 = v203;
      sub_1C6B8AC44(v100 + *(v217 + 24), v203, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v158 = v233;
      v159 = *(v234 + 48);
      if (v159(v157, 1, v233) == 1)
      {
        v160 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v161 = v190;
        (*(*(v160 - 8) + 56))(v190, 1, 1, v160);
        v162 = v161 + *(v158 + 20);
        sub_1C6D78A30();
        if (v159(v157, 1, v158) != 1)
        {
          sub_1C6B8ACC4(v157, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v161 = v190;
        sub_1C6B8CDC4(v157, v190, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v185 = sub_1C6B8A9AC();
      v93 = v185;
      v78 = (HIDWORD(v185) & 1);
      sub_1C6B8AD34(v161, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
      goto LABEL_69;
    case 0x11u:
      v100 = v229;
      sub_1C6B8CDC4(v92, v229, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v140 = v206;
      sub_1C6B8AC44(v100 + *(v221 + 24), v206, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v141 = v233;
      v142 = *(v234 + 48);
      if (v142(v140, 1, v233) == 1)
      {
        v143 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        v144 = v192;
        (*(*(v143 - 8) + 56))(v192, 1, 1, v143);
        v145 = v144 + *(v141 + 20);
        sub_1C6D78A30();
        if (v142(v140, 1, v141) != 1)
        {
          sub_1C6B8ACC4(v140, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        v144 = v192;
        sub_1C6B8CDC4(v140, v192, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v182 = sub_1C6B8A9AC();
      v93 = v182;
      v78 = (HIDWORD(v182) & 1);
      sub_1C6B8AD34(v144, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v172 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
LABEL_69:
      v178 = v172;
      v179 = v100;
LABEL_70:
      sub_1C6B8AD34(v179, v178);
      break;
    default:
      sub_1C6B8CDC4(v92, v88, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      v118 = v196;
      sub_1C6B8AC44(&v88[*(v85 + 24)], v196, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      v119 = v233;
      v120 = *(v234 + 48);
      if (v120(v118, 1, v233) == 1)
      {
        v121 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
        (*(*(v121 - 8) + 56))(v84, 1, 1, v121);
        v122 = &v84[*(v119 + 20)];
        sub_1C6D78A30();
        if (v120(v118, 1, v119) != 1)
        {
          sub_1C6B8ACC4(v118, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
        }
      }

      else
      {
        sub_1C6B8CDC4(v118, v84, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      }

      v176 = sub_1C6B8A9AC();
      v93 = v176;
      v78 = (HIDWORD(v176) & 1);
      sub_1C6B8AD34(v84, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      sub_1C6B8AD34(v88, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      break;
  }

  return v93 | (v78 << 32);
}

unint64_t sub_1C6B8A9AC()
{
  v1 = v0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6B8CE2C(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22[-v8];
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22[-v16];
  sub_1C6B8AC44(v1, v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C6B8ACC4(v9, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    v18 = 0;
    v19 = 1;
  }

  else
  {
    sub_1C6B8CDC4(v9, v17, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B8CDC4(v17, v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B8CDC4(v14, v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
    v20 = &v5[*(v2 + 32)];
    v18 = *v20;
    v19 = *(v20 + 4);
    sub_1C6B8AD34(v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  }

  return v18 | (v19 << 32);
}

uint64_t sub_1C6B8AC44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B8CE2C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B8ACC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B8CE2C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6B8AD34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1C6B8AD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v179 = a1;
  v183 = a4;
  v180 = a3;
  v170 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v177 = *(v170 - 8);
  v5 = *(v177 + 8);
  MEMORY[0x1EEE9AC00](v170);
  v165 = (&v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v164 = (&v162 - v8);
  v9 = MEMORY[0x1E69E6720];
  sub_1C6B8CE2C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v167 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v162 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v171 = &v162 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v166 = &v162 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v168 = &v162 - v20;
  v21 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v173 = (&v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B8CE2C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v9);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v174 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v172 = &v162 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v162 - v31;
  v33 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CB6C(a2, v40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6B8CDC4(v40, v36, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  v176 = v33;
  v41 = *(v33 + 36);
  sub_1C6B8AC44(&v36[v41], v32, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v175 = v22;
  v42 = *(v22 + 48);
  LODWORD(a2) = v42(v32, 1, v21);
  sub_1C6B8ACC4(v32, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (a2 != 1)
  {
    v43 = v36;
    v44 = &v36[v41];
    v45 = v172;
    sub_1C6B8AC44(v44, v172, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    if (v42(v45, 1, v21) == 1)
    {
      v46 = v173;
      *(v173 + 3) = 0;
      *v46 = 0;
      v47 = v46 + *(v21 + 44);
      sub_1C6D78A30();
      if (v42(v45, 1, v21) != 1)
      {
        sub_1C6B8ACC4(v45, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      }
    }

    else
    {
      v46 = v173;
      sub_1C6B8CDC4(v45, v173, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    }

    v48 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
    v49 = v179;
    v50 = *(v179 + v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v49 + v48);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      v52 = sub_1C6D2BEA8(v52);
      *(v49 + v48) = v52;
    }

    v56 = v174;
    sub_1C6B8CDC4(v46, v174, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    (*(v175 + 7))(v56, 0, 1, v21);
    v57 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
    swift_beginAccess();
    sub_1C6B8CD44(v56, &v52[v57], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    swift_endAccess();
    v36 = v43;
  }

  v58 = v178;
  v59 = v180(*(v36 + 2));
  if (v58)
  {
    return sub_1C6B8AD34(v36, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  }

  v62 = v60;
  v63 = v59;
  v64 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v65 = v179;
  v66 = *(v179 + v64);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *(v65 + v64);
  if ((v67 & 1) == 0)
  {
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    v68 = sub_1C6D2BEA8(v68);
    *(v65 + v64) = v68;
  }

  swift_beginAccess();
  v72 = *(v68 + 4);
  *(v68 + 3) = v63;
  *(v68 + 4) = v62;

  v73 = *v36;
  v74 = *(*v36 + 16);
  v75 = MEMORY[0x1E69E7CC0];
  v178 = v64;
  v163 = v36;
  if (v74)
  {
    v182 = MEMORY[0x1E69E7CC0];
    result = sub_1C6B39280(0, v74, 0);
    v76 = 0;
    v75 = v182;
    while (v76 < *(v73 + 16))
    {
      result = v180(*(v73 + 32 + 4 * v76));
      v182 = v75;
      v79 = *(v75 + 16);
      v78 = *(v75 + 24);
      if (v79 >= v78 >> 1)
      {
        v175 = result;
        v81 = v77;
        sub_1C6B39280((v78 > 1), v79 + 1, 1);
        v77 = v81;
        result = v175;
        v75 = v182;
      }

      ++v76;
      *(v75 + 16) = v79 + 1;
      v80 = v75 + 16 * v79;
      *(v80 + 32) = result;
      *(v80 + 40) = v77;
      if (v74 == v76)
      {
        v64 = v178;
        v65 = v179;
        v36 = v163;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_20:
  v82 = *(v65 + v64);
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *(v65 + v64);
  if ((v83 & 1) == 0)
  {
    v85 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    swift_allocObject();
    v84 = sub_1C6D2BEA8(v84);
    *(v65 + v64) = v84;
  }

  swift_beginAccess();
  v88 = *(v84 + 2);
  *(v84 + 2) = v75;

  v89 = *(v36 + 3);
  v90 = *(v65 + v64);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(v65 + v64);
  if ((v91 & 1) == 0)
  {
    v93 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();
    v92 = sub_1C6D2BEA8(v92);
    *(v65 + v64) = v92;
  }

  v96 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  *&v92[v96] = v89;
  v97 = *(v176 + 40);
  v98 = v168;
  sub_1C6B8AC44(&v36[v97], v168, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v99 = v177 + 48;
  v100 = *(v177 + 6);
  v101 = v170;
  v102 = v100(v98, 1, v170);
  sub_1C6B8ACC4(v98, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v103 = v102 == 1;
  v104 = v101;
  if (!v103)
  {
    v105 = v166;
    sub_1C6B8AC44(&v36[v97], v166, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v106 = v100(v105, 1, v101);
    v107 = v100;
    v108 = v99;
    if (v106 == 1)
    {
      v109 = v164;
      *v164 = xmmword_1C6D7F510;
      v110 = v109 + *(v104 + 20);
      sub_1C6D78A30();
      v111 = v107(v105, 1, v104);
      v112 = v178;
      v113 = v179;
      if (v111 != 1)
      {
        sub_1C6B8ACC4(v105, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }
    }

    else
    {
      v109 = v164;
      sub_1C6B8CDC4(v105, v164, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v112 = v178;
      v113 = v179;
    }

    v114 = *(v113 + v112);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v116 = *(v113 + v112);
    v175 = v108;
    v100 = v107;
    if ((v115 & 1) == 0)
    {
      v117 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v118 = *(v117 + 48);
      v119 = *(v117 + 52);
      swift_allocObject();
      v116 = sub_1C6D2BEA8(v116);
      *(v113 + v112) = v116;
    }

    v120 = v109;
    v121 = v171;
    sub_1C6B8CDC4(v120, v171, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v177 + 7))(v121, 0, 1, v104);
    v122 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
    swift_beginAccess();
    sub_1C6B8CD44(v121, &v116[v122], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
    v36 = v163;
  }

  v123 = *(v176 + 44);
  v124 = v169;
  sub_1C6B8AC44(&v36[v123], v169, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v125 = v104;
  v126 = v100(v124, 1, v104);
  sub_1C6B8ACC4(v124, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v126 != 1)
  {
    v127 = v167;
    sub_1C6B8AC44(&v36[v123], v167, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v128 = v125;
    if (v100(v127, 1, v125) == 1)
    {
      v129 = v165;
      *v165 = xmmword_1C6D7F510;
      v130 = v129 + *(v128 + 20);
      sub_1C6D78A30();
      v131 = v100(v127, 1, v128);
      v132 = v178;
      v133 = v179;
      if (v131 != 1)
      {
        sub_1C6B8ACC4(v127, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }
    }

    else
    {
      v129 = v165;
      sub_1C6B8CDC4(v127, v165, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v132 = v178;
      v133 = v179;
    }

    v134 = *(v133 + v132);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v136 = *(v133 + v132);
    if ((v135 & 1) == 0)
    {
      v137 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v138 = *(v137 + 48);
      v139 = *(v137 + 52);
      swift_allocObject();
      v136 = sub_1C6D2BEA8(v136);
      *(v133 + v132) = v136;
    }

    v140 = v171;
    sub_1C6B8CDC4(v129, v171, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v177 + 7))(v140, 0, 1, v128);
    v141 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
    swift_beginAccess();
    sub_1C6B8CD44(v140, &v136[v141], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
    v36 = v163;
  }

  v142 = *(v36 + 2);
  v143 = *(v142 + 16);
  v144 = MEMORY[0x1E69E7CC0];
  if (v143)
  {
    v181 = MEMORY[0x1E69E7CC0];
    result = sub_1C6B39280(0, v143, 0);
    v145 = 0;
    v144 = v181;
    while (v145 < *(v142 + 16))
    {
      result = v180(*(v142 + 32 + 4 * v145));
      v181 = v144;
      v148 = *(v144 + 16);
      v147 = *(v144 + 24);
      if (v148 >= v147 >> 1)
      {
        v177 = result;
        v150 = v146;
        sub_1C6B39280((v147 > 1), v148 + 1, 1);
        v146 = v150;
        result = v177;
        v144 = v181;
      }

      ++v145;
      *(v144 + 16) = v148 + 1;
      v149 = v144 + 16 * v148;
      *(v149 + 32) = result;
      *(v149 + 40) = v146;
      if (v143 == v145)
      {
        v151 = v179;
        v36 = v163;
        goto LABEL_48;
      }
    }

LABEL_53:
    __break(1u);
    return result;
  }

  v151 = v179;
LABEL_48:
  v152 = v178;
  v153 = *(v151 + v178);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1C6B8AD34(v36, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v154 = *(v151 + v152);
  }

  else
  {
    v155 = *(v151 + v152);
    v156 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v157 = *(v156 + 48);
    v158 = *(v156 + 52);
    swift_allocObject();

    v154 = sub_1C6D2BEA8(v159);
    sub_1C6B8AD34(v36, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);

    *(v151 + v152) = v154;
  }

  v160 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v161 = *&v154[v160];
  *&v154[v160] = v144;
}

uint64_t sub_1C6B8BC6C()
{
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6B8CCFC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78C30();
}

void sub_1C6B8BD24(void *a1, uint64_t a2, int *a3)
{
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B8CE2C(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - v13;
  sub_1C6B8CE2C(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, v10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v38 - v17;
  v19 = *a3;
  v20 = *(a2 + 32);
  if (*(v20 + 16) <= v19)
  {
    v30 = v19;
    sub_1C6B688CC();
    swift_allocError();
    *v31 = v30;
    *(v31 + 8) = 0;
    swift_willThrow();
    return;
  }

  if ((v19 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v39 = v8;
    v40 = v3;
    v21 = v20 + 16 * v19;
    v22 = a1;
    v23 = *(v21 + 32);
    v24 = *(v21 + 40);
    v25 = v22[1];

    *v22 = v23;
    v22[1] = v24;
    v26 = v22;
    v27 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
    sub_1C6B8AC44(a3 + *(v27 + 20), v14, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v28 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
    if ((*(*(v28 - 8) + 48))(v14, 1, v28) == 1)
    {
      sub_1C6B8ACC4(v14, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      v29 = 1;
    }

    else
    {
      sub_1C6B8CB6C(a2, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
      v32 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v33 = swift_allocObject();
      sub_1C6B8CDC4(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
      v34 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
      MEMORY[0x1EEE9AC00](v34);
      *(&v38 - 4) = v14;
      *(&v38 - 3) = sub_1C6B8CC70;
      *(&v38 - 2) = v33;
      sub_1C6B8CCFC(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v35 = v40;
      sub_1C6D78C30();
      v40 = v35;
      if (v35)
      {

        sub_1C6B8AD34(v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        return;
      }

      sub_1C6B8AD34(v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      v29 = 0;
      v26 = v22;
    }

    v36 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v36 - 8) + 56))(v18, v29, 1, v36);
    v37 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    sub_1C6B8CD44(v18, v26 + *(v37 + 20), &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  }
}

uint64_t sub_1C6B8C1D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(v2 + 16) <= result)
  {
    v6 = result;
    sub_1C6B688CC();
    v4 = swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    swift_willThrow();
    return v4;
  }

  if ((result & 0x80000000) == 0)
  {
    v3 = v2 + 16 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B8C260(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1C6B8C6B8(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1C6B8C7A8(v9, v4, v2);
  result = MEMORY[0x1CCA57100](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6B8C3C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B8CBF0(0, &qword_1EDCDF640, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  result = sub_1C6D79EF0();
  v12 = result;
  v13 = 0;
  v39 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v32 = result + 64;
  v34 = result;
  if ((v18 & v14) != 0)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v39 + 48) + 4 * v24);
      v26 = v35;
      sub_1C6B8CB6C(*(v39 + 56) + *(v36 + 72) * v24, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v27 = v40;
      v37(v26);
      sub_1C6B8AD34(v26, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      if (v27)
      {
        break;
      }

      v40 = 0;
      *(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v28 = v33;
      v12 = v34;
      *(*(v34 + 48) + 4 * v24) = v25;
      result = sub_1C6B8CDC4(v7, *(v12 + 56) + *(v28 + 72) * v24, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v29 = *(v12 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_17;
      }

      *(v12 + 16) = v31;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v12 = v34;

    return v12;
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        return v12;
      }

      v23 = *(v15 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t *sub_1C6B8C6B8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) != 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1C6D5C360(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1C6D5C360(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C6B8C7A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1C6B8C6B8(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1C6B8C820(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = (&v36 - v8);
  v9 = MEMORY[0x1E69E7CC8];
  v42 = MEMORY[0x1E69E7CC8];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v11 = *(v7 + 80);
  v39 = v11;
  v12 = (v11 + 32) & ~v11;
  v13 = *(v7 + 72);
  v14 = a1 + v12;
  v37 = xmmword_1C6D7E630;
  v40 = v5;
  v38 = v12;
  while (1)
  {
    v16 = v41;
    sub_1C6B8CB6C(v14, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v17 = *v16;
    v19 = sub_1C6B64DD0(*v16);
    v20 = v9[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (v9[3] < v22)
    {
      sub_1C6B6F10C(v22, 1);
      v9 = v42;
      v24 = sub_1C6B64DD0(v17);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v19 = v24;
    }

    if (v23)
    {
      v26 = v9[7];
      sub_1C6B8CDC4(v41, v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v27 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1C6B65AA4(0, v27[2] + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1C6B65AA4(v29 > 1, v30 + 1, 1, v27);
        *(v26 + 8 * v19) = v27;
      }

      v27[2] = v30 + 1;
      v12 = v38;
      v15 = v27 + v38 + v30 * v13;
      v5 = v40;
      sub_1C6B8CDC4(v40, v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    }

    else
    {
      sub_1C6B8CE2C(0, &unk_1EDCDF538, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, MEMORY[0x1E69E6F90]);
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_1C6B8CDC4(v41, v31 + v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v9[(v19 >> 6) + 8] |= 1 << v19;
      *(v9[6] + 4 * v19) = v17;
      *(v9[7] + 8 * v19) = v31;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v9[2] = v34;
    }

    v14 += v13;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6B8CB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C6B8CBF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79F30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B8CCFC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B8CD44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B8CE2C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B8CDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6B8CE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C6B8CE90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D773E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69B4508])
  {
    v10 = MEMORY[0x1E69E3540];
LABEL_23:
    v11 = *v10;
    v12 = sub_1C6D76B90();
    v13 = *(*(v12 - 8) + 104);
    v14 = a1;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  if (v9 == *MEMORY[0x1E69B4528])
  {
    v10 = MEMORY[0x1E69E3558];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B44F8])
  {
    v10 = MEMORY[0x1E69E3538];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B44A0])
  {
    v10 = MEMORY[0x1E69E3500];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B4518])
  {
    v10 = MEMORY[0x1E69E3550];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B4510])
  {
    v10 = MEMORY[0x1E69E3548];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B44B8])
  {
    v10 = MEMORY[0x1E69E3518];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B44D8])
  {
    v10 = MEMORY[0x1E69E3530];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B44C8])
  {
    v10 = MEMORY[0x1E69E3528];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B44B0])
  {
    v10 = MEMORY[0x1E69E3510];
    goto LABEL_23;
  }

  if (v9 == *MEMORY[0x1E69B44C0])
  {
    v10 = MEMORY[0x1E69E3520];
    goto LABEL_23;
  }

  v17 = *MEMORY[0x1E69B44A8];
  v18 = v9;
  v12 = sub_1C6D76B90();
  v13 = *(*(v12 - 8) + 104);
  if (v18 != v17)
  {
    v13(a1, *MEMORY[0x1E69E3540], v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = *MEMORY[0x1E69E3508];
  v14 = a1;
  return v13(v14, v15, v12);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked()
{
  result = qword_1EDCE2F78;
  if (!qword_1EDCE2F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B8D3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6B8D534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked() + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked() + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked() + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked() + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6B8DC60()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D70B0);
  __swift_project_value_buffer(v0, qword_1EC1D70B0);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5968 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D70B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6B8DF80();
    }
  }

  return result;
}

uint64_t sub_1C6B8DF80()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6B8EA30(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6B8E0D0(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6B8E0D0(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  sub_1C6B3E190(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6B8EA30(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  sub_1C6B8EA30(&qword_1EC1D70C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B8E3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B8EA30(&qword_1EC1D70E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B8E42C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5968 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D70B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B8E4D4(uint64_t a1)
{
  v2 = sub_1C6B8EA30(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B8E540()
{
  sub_1C6B8EA30(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B45Storage_CompressedSessionEventArticleDislikedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B3FB88();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6B3E190(a1 + v19, v17);
  sub_1C6B3E190(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      v25 = *(v18 + 20);
      sub_1C6D78A40();
      sub_1C6B8EA30(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v20], v8);
  v24 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6B8EA30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B8EA78()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B8EAC0()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t RecipeEventProcessor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RecipeEventProcessor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void RecipeEventProcessor.process<A>(processEvent:)(uint64_t a1)
{
  v253 = a1;
  v254 = 0;
  v215 = sub_1C6D77A10();
  v210 = *(v215 - 8);
  v1 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v205 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1C6B9621C(0, &qword_1EDCE6008, sub_1C6B90950, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v233 = &v205 - v6;
  sub_1C6B90950();
  v235 = v7;
  v228 = *(v7 - 8);
  v8 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v234 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1C6D77600();
  v212 = *(v216 - 8);
  v10 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v218 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &qword_1EDCE60D0, sub_1C6B909E4, v3);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v242 = &v205 - v14;
  sub_1C6B909E4();
  v244 = v15;
  v236 = *(v15 - 8);
  v16 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v229 = &v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1C6D779B0();
  v214 = *(v241 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v249 = &v205 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &qword_1EDCE6070, sub_1C6B90AC0, v3);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v240 = &v205 - v22;
  sub_1C6B90AC0();
  v246 = v23;
  v245 = *(v23 - 8);
  v24 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v237 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8], v3);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v219 = &v205 - v28;
  v227 = sub_1C6D77620();
  v217 = *(v227 - 8);
  v29 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v231 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &qword_1EDCE60C0, sub_1C6B90B54, v3);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v205 - v33;
  sub_1C6B90B54();
  v250 = *(v35 - 8);
  v251 = v35;
  v36 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v247 = &v205 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1C6D75F50();
  v221 = *(v222 - 8);
  v38 = *(v221 + 64);
  v39 = MEMORY[0x1EEE9AC00](v222);
  v209 = &v205 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v220 = &v205 - v41;
  v225 = sub_1C6D77380();
  v224 = *(v225 - 8);
  v42 = *(v224 + 64);
  v43 = MEMORY[0x1EEE9AC00](v225);
  v211 = &v205 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v205 - v45;
  v238 = sub_1C6D77C70();
  v223 = *(v238 - 8);
  v47 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v238);
  v243 = &v205 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B9621C(0, &qword_1EDCE5FF8, sub_1C6B90BE8, v3);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v52 = &v205 - v51;
  v53 = sub_1C6D77290();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v226 = &v205 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v232 = &v205 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v239 = &v205 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v205 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v205 - v65;
  sub_1C6B90BE8();
  v68 = v67;
  v69 = *(v67 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v205 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(v54 + 16);
  v252 = v54 + 16;
  v248 = v73;
  v73(v66, v253, v53);
  v74 = v53;
  v75 = swift_dynamicCast();
  v76 = *(v69 + 56);
  if (v75)
  {
    v76(v52, 0, 1, v68);
    (*(v69 + 32))(v72, v52, v68);
    v77 = sub_1C6D77270();
    v78 = v254;
    v79 = sub_1C6D77330();
    v254 = v78;
    if (v78)
    {
      (*(v69 + 8))(v72, v68);

      goto LABEL_43;
    }

    v207 = v34;
    v208 = v74;
    v106 = v80;
    v107 = v79;

    v108 = sub_1C6D75B10();
    v109 = *(v108 + 48);
    v110 = *(v108 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6B90A78(&qword_1EDCE5EB0, MEMORY[0x1E69B49C8]);
    v111 = v107;
    v112 = v106;
    v113 = v254;
    sub_1C6D75AF0();
    v254 = v113;
    if (v113)
    {
      (*(v69 + 8))(v72, v68);
      sub_1C6B1C9F0(v111, v112);

      goto LABEL_43;
    }

    v205 = v111;
    v206 = v112;

    v139 = v243;
    sub_1C6D77C60();
    v140 = sub_1C6D77360();
    v142 = v141;
    (*(v224 + 8))(v46, v225);
    if (!v142)
    {
      sub_1C6B95A74();
      v254 = swift_allocError();
      *v170 = 0;
      swift_willThrow();
      sub_1C6B1C9F0(v205, v206);
      (*(v223 + 8))(v139, v238);
      (*(v69 + 8))(v72, v68);
      goto LABEL_43;
    }

    v143 = *(v230 + 16);
    v144 = v220;
    sub_1C6D75F30();
    v145 = v140;
    v146 = v254;
    sub_1C6B90CEC(v145, v142, v144);
    v147 = (v221 + 8);
    v148 = (v223 + 8);
    v149 = (v69 + 8);
    v254 = v146;
    v150 = v238;
    if (v146)
    {
      sub_1C6B1C9F0(v205, v206);

      (*v147)(v144, v222);
      (*v148)(v243, v150);
      (*v149)(v72, v68);
      goto LABEL_43;
    }

    sub_1C6B1C9F0(v205, v206);

    (*v147)(v144, v222);
    (*v148)(v243, v150);
    (*v149)(v72, v68);
    v74 = v208;
    v34 = v207;
  }

  else
  {
    v76(v52, 1, 1, v68);
    sub_1C6B90C7C(v52, &qword_1EDCE5FF8, sub_1C6B90BE8);
  }

  v81 = v253;
  v82 = v248;
  v248(v64, v253, v74);
  v83 = v251;
  v84 = swift_dynamicCast();
  v85 = v250;
  v86 = *(v250 + 56);
  if (v84)
  {
    v86(v34, 0, 1, v83);
    v87 = v247;
    (*(v85 + 32))();
    v88 = v85;
    v89 = sub_1C6D77270();
    v90 = v254;
    v91 = sub_1C6D77330();
    v254 = v90;
    if (v90)
    {
      (*(v88 + 8))(v87, v83);
LABEL_8:

      goto LABEL_43;
    }

    v126 = v91;
    v127 = v92;

    v128 = sub_1C6D75B10();
    v129 = *(v128 + 48);
    v130 = *(v128 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6B90A78(&qword_1EC1D7108, MEMORY[0x1E69B46B0]);
    v131 = v227;
    v132 = v254;
    sub_1C6D75AF0();
    v254 = v132;
    if (v132)
    {
      (*(v250 + 8))(v247, v251);
LABEL_41:
      v168 = v126;
      v169 = v127;
      goto LABEL_42;
    }

    v155 = *(v230 + 16);
    swift_beginAccess();
    v156 = *(v155 + 64);
    if (!v156)
    {
      sub_1C6B95A74();
      v254 = swift_allocError();
      *v186 = 1;
      swift_willThrow();
      sub_1C6B1C9F0(v126, v127);
      (*(v217 + 8))(v231, v131);
      (*(v250 + 8))(v247, v251);
      goto LABEL_43;
    }

    v157 = *(v155 + 64);

    v158 = v219;
    sub_1C6D77240();
    v159 = *(*v156 + 104);
    swift_beginAccess();
    v160 = v231;
    sub_1C6B9145C(v231, v158);
    swift_endAccess();
    sub_1C6B1C9F0(v126, v127);

    sub_1C6B90C7C(v158, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
    (*(v217 + 8))(v160, v131);
    (*(v250 + 8))(v247, v251);
    v93 = v244;
    v94 = v242;
    v95 = v246;
  }

  else
  {
    v86(v34, 1, 1, v83);
    sub_1C6B90C7C(v34, &qword_1EDCE60C0, sub_1C6B90B54);
    v93 = v244;
    v94 = v242;
    v95 = v246;
  }

  v82(v239, v81, v74);
  v96 = v240;
  v97 = swift_dynamicCast();
  v98 = v245;
  v99 = *(v245 + 56);
  v100 = v241;
  if (v97)
  {
    v99(v96, 0, 1, v95);
    v101 = v237;
    (*(v98 + 32))(v237, v96, v95);
    v102 = sub_1C6D77270();
    v103 = v254;
    v104 = sub_1C6D77330();
    v254 = v103;
    if (v103)
    {
      (*(v98 + 8))(v101, v95);

      goto LABEL_43;
    }

    v126 = v104;
    v127 = v105;

    v151 = sub_1C6D75B10();
    v152 = *(v151 + 48);
    v153 = *(v151 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6B90A78(&qword_1EC1D7100, MEMORY[0x1E69B4890]);
    v154 = v254;
    sub_1C6D75AF0();
    v254 = v154;
    if (v154)
    {
      (*(v245 + 8))(v237, v246);
      goto LABEL_41;
    }

    v171 = *(v230 + 16);
    swift_beginAccess();
    v172 = *(v171 + 64);
    if (!v172)
    {
      sub_1C6B95A74();
      v254 = swift_allocError();
      *v194 = 1;
      swift_willThrow();
      sub_1C6B1C9F0(v126, v127);
      (*(v214 + 8))(v249, v100);
      (*(v245 + 8))(v237, v246);
      goto LABEL_43;
    }

    v173 = *(v171 + 64);

    v174 = v219;
    v175 = v237;
    sub_1C6D77240();
    v176 = *(*v172 + 104);
    swift_beginAccess();
    v177 = v249;
    sub_1C6B91894(v249, v174);
    swift_endAccess();
    sub_1C6B1C9F0(v126, v127);

    sub_1C6B90C7C(v174, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
    (*(v214 + 8))(v177, v100);
    (*(v245 + 8))(v175, v246);
    v114 = v235;
    v115 = v234;
    v93 = v244;
    v94 = v242;
    v82 = v248;
    v248(v232, v81, v74);
  }

  else
  {
    v99(v96, 1, 1, v95);
    sub_1C6B90C7C(v96, &qword_1EDCE6070, sub_1C6B90AC0);
    v114 = v235;
    v115 = v234;
    v82(v232, v81, v74);
  }

  v116 = swift_dynamicCast();
  v117 = v236;
  v118 = *(v236 + 56);
  v119 = v233;
  if (v116)
  {
    v118(v94, 0, 1, v93);
    v120 = v229;
    (*(v117 + 32))(v229, v94, v93);
    v121 = sub_1C6D77270();
    v122 = v93;
    v123 = v254;
    v124 = sub_1C6D77330();
    v254 = v123;
    if (v123)
    {
      (*(v117 + 8))(v120, v122);

      goto LABEL_43;
    }

    v161 = v124;
    v162 = v125;

    v163 = sub_1C6D75B10();
    v164 = *(v163 + 48);
    v165 = *(v163 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6B90A78(&qword_1EC1D70F8, MEMORY[0x1E69B4668]);
    v166 = v216;
    v167 = v254;
    sub_1C6D75AF0();
    v254 = v167;
    if (v167)
    {
      (*(v236 + 8))(v229, v244);
      v168 = v161;
      v169 = v162;
LABEL_42:
      sub_1C6B1C9F0(v168, v169);

      goto LABEL_43;
    }

    v251 = v162;

    v187 = *(v230 + 16);
    swift_beginAccess();
    v188 = *(v187 + 64);
    v189 = v229;
    if (!v188)
    {
      sub_1C6B95A74();
      v254 = swift_allocError();
      *v203 = 1;
      swift_willThrow();
      sub_1C6B1C9F0(v161, v251);
      (*(v212 + 8))(v218, v166);
      (*(v236 + 8))(v189, v244);
      goto LABEL_43;
    }

    v190 = *(v187 + 64);

    v191 = v219;
    sub_1C6D77240();
    v192 = *(*v188 + 104);
    swift_beginAccess();
    v193 = v218;
    sub_1C6B91CCC(v218, v191);
    swift_endAccess();
    sub_1C6B1C9F0(v161, v251);

    sub_1C6B90C7C(v191, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
    (*(v212 + 8))(v193, v216);
    (*(v236 + 8))(v189, v244);
    v114 = v235;
    v115 = v234;
  }

  else
  {
    v118(v94, 1, 1, v93);
    sub_1C6B90C7C(v94, &qword_1EDCE60D0, sub_1C6B909E4);
  }

  v82(v226, v81, v74);
  v133 = swift_dynamicCast();
  v134 = v228;
  v135 = *(v228 + 56);
  if ((v133 & 1) == 0)
  {
    v135(v119, 1, 1, v114);
    sub_1C6B90C7C(v119, &qword_1EDCE6008, sub_1C6B90950);
    return;
  }

  v135(v119, 0, 1, v114);
  (*(v134 + 32))(v115, v119, v114);
  v89 = sub_1C6D77270();
  v136 = v254;
  v137 = sub_1C6D77330();
  v254 = v136;
  if (v136)
  {
    (*(v134 + 8))(v115, v114);
    goto LABEL_8;
  }

  v126 = v137;
  v127 = v138;

  v178 = sub_1C6D75B10();
  v179 = *(v178 + 48);
  v180 = *(v178 + 52);
  swift_allocObject();
  sub_1C6D75B00();
  sub_1C6B90A78(&qword_1EDCE5F08, MEMORY[0x1E69B48C0]);
  v181 = v213;
  v182 = v254;
  sub_1C6D75AF0();
  v254 = v182;
  if (v182)
  {
    (*(v228 + 8))(v234, v235);
    goto LABEL_41;
  }

  v195 = v211;
  sub_1C6D77A00();
  v196 = sub_1C6D77360();
  v197 = v181;
  v199 = v198;
  (*(v224 + 8))(v195, v225);
  if (v199)
  {
    v200 = *(v230 + 16);
    v201 = v209;
    sub_1C6D75F30();
    v202 = v254;
    sub_1C6B92104(v196, v199, v201);
    v254 = v202;
    if (!v202)
    {
      sub_1C6B1C9F0(v126, v127);

      (*(v221 + 8))(v201, v222);
      (*(v210 + 8))(v213, v215);
      (*(v228 + 8))(v234, v235);
      return;
    }

    sub_1C6B1C9F0(v126, v127);

    (*(v221 + 8))(v201, v222);
    (*(v210 + 8))(v213, v215);
  }

  else
  {
    sub_1C6B95A74();
    v254 = swift_allocError();
    *v204 = 0;
    swift_willThrow();
    sub_1C6B1C9F0(v126, v127);
    (*(v210 + 8))(v197, v215);
  }

  (*(v228 + 8))(v234, v235);
LABEL_43:
  if (qword_1EDCE03B8 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_1C6D7E630;
  v255 = 0;
  v256 = 0xE000000000000000;
  sub_1C6D7A120();
  v184 = v255;
  v185 = v256;
  *(v183 + 56) = MEMORY[0x1E69E6158];
  *(v183 + 64) = sub_1C6B2064C();
  *(v183 + 32) = v184;
  *(v183 + 40) = v185;
  sub_1C6D78D30();
}

void sub_1C6B90950()
{
  if (!qword_1EDCE6010)
  {
    sub_1C6D77A20();
    sub_1C6B90A78(&qword_1EDCE5F00, MEMORY[0x1E69B48D0]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6010);
    }
  }
}

void sub_1C6B909E4()
{
  if (!qword_1EDCE60D8)
  {
    sub_1C6D77610();
    sub_1C6B90A78(&qword_1EDCE5F90, MEMORY[0x1E69B4678]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE60D8);
    }
  }
}

uint64_t sub_1C6B90A78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6B90AC0()
{
  if (!qword_1EDCE6078)
  {
    sub_1C6D779C0();
    sub_1C6B90A78(&qword_1EDCE5F10, MEMORY[0x1E69B48A0]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6078);
    }
  }
}

void sub_1C6B90B54()
{
  if (!qword_1EDCE60C8)
  {
    sub_1C6D77630();
    sub_1C6B90A78(&qword_1EDCE5F88, MEMORY[0x1E69B46C0]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE60C8);
    }
  }
}

void sub_1C6B90BE8()
{
  if (!qword_1EDCE6000)
  {
    sub_1C6D77C80();
    sub_1C6B90A78(&qword_1EDCE5EA8, MEMORY[0x1E69B49D8]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6000);
    }
  }
}

uint64_t sub_1C6B90C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B9621C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t *sub_1C6B90CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(v3 + 64))
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C6D7EB10;
    v9 = *(v3 + 64);
    if (v9)
    {
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
    }

    sub_1C6B95D68();
    v17 = sub_1C6D795F0();
    MEMORY[0x1CCA55B00](v17);

    v18 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1C6B2064C();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    *(v8 + 96) = v18;
    *(v8 + 104) = v19;
    *(v8 + 64) = v19;
    *(v8 + 72) = a1;
    *(v8 + 80) = a2;

    sub_1C6D78D30();

    v15 = &qword_1EC1D7128;
    sub_1C6B95DB8(0, &qword_1EC1D7128, _s7FactoryCMa);
    sub_1C6B95CB8(&qword_1EC1D7130, &qword_1EC1D7128, _s7FactoryCMa);
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C6D7E630;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1C6B2064C();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    sub_1C6D79AC0();
    sub_1C6D78D30();

    v13 = off_1EEB692F8;
    _s7FactoryCMa();
    v14 = v3;
    v15 = (v13)(a1, a2);
    v16 = *(*v15 + 104);
    swift_beginAccess();
    Com_Apple_News_Personalization_RecipeSession.start(at:)(a3);
    swift_endAccess();
    if (!v4)
    {
      v22 = *(v14 + 64);
      *(v14 + 64) = v15;
    }
  }

  return v15;
}

unint64_t *sub_1C6B910A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(v3 + 64))
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C6D7EB10;
    v9 = *(v3 + 64);
    if (v9)
    {
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
    }

    sub_1C6B95D68();
    v17 = sub_1C6D795F0();
    MEMORY[0x1CCA55B00](v17);

    v18 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1C6B2064C();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    *(v8 + 96) = v18;
    *(v8 + 104) = v19;
    *(v8 + 64) = v19;
    *(v8 + 72) = a1;
    *(v8 + 80) = a2;

    sub_1C6D78D30();

    v15 = &qword_1EC1D7118;
    sub_1C6B95DB8(0, &qword_1EC1D7118, _s7FactoryCMa_0);
    sub_1C6B95CB8(&qword_1EC1D7120, &qword_1EC1D7118, _s7FactoryCMa_0);
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C6D7E630;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1C6B2064C();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    sub_1C6D79AC0();
    sub_1C6D78D30();

    v13 = off_1EEB69468;
    _s7FactoryCMa_0();
    v14 = v3;
    v15 = (v13)(a1, a2);
    v16 = *(*v15 + 104);
    swift_beginAccess();
    Com_Apple_News_Personalization_Session.start(at:)(a3);
    swift_endAccess();
    if (!v4)
    {
      v22 = *(v14 + 64);
      *(v14 + 64) = v15;
    }
  }

  return v15;
}

uint64_t sub_1C6B9145C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  sub_1C6B90A78(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D78C30();
  v30 = a1;
  v31 = v19;
  sub_1C6B90A78(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v20 = v25;
  sub_1C6D78C30();
  v28 = a1;
  v29 = v15;
  sub_1C6B90A78(&qword_1EC1D7148, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  sub_1C6D78C30();
  v27 = v11;
  sub_1C6B90A78(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  sub_1C6D78C30();
  v21 = *(v20 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1C6B65BE0(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C6B65BE0(v22 > 1, v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  sub_1C6B95F84(v7, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  *(v20 + 16) = v21;
  sub_1C6B95D08(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeViewed);
  sub_1C6B95D08(v15, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6B95D08(v19, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
}

uint64_t sub_1C6B91894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  sub_1C6B90A78(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D78C30();
  v30 = a1;
  v31 = v19;
  sub_1C6B90A78(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v20 = v25;
  sub_1C6D78C30();
  v28 = a1;
  v29 = v15;
  sub_1C6B90A78(&qword_1EC1D7158, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6D78C30();
  v27 = v11;
  sub_1C6B90A78(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  sub_1C6D78C30();
  v21 = *(v20 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1C6B65BE0(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C6B65BE0(v22 > 1, v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  sub_1C6B95F84(v7, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  *(v20 + 16) = v21;
  sub_1C6B95D08(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventCookModeViewed);
  sub_1C6B95D08(v15, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6B95D08(v19, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
}

uint64_t sub_1C6B91CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  sub_1C6B90A78(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D78C30();
  v29 = a1;
  v30 = v19;
  sub_1C6B90A78(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v20 = v25;
  sub_1C6D78C30();
  v28 = v15;
  sub_1C6B90A78(&qword_1EC1D7160, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  sub_1C6D78C30();
  v27 = v11;
  sub_1C6B90A78(&qword_1EC1D7150, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  sub_1C6D78C30();
  v21 = *(v20 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1C6B65BE0(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C6B65BE0(v22 > 1, v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  sub_1C6B95F84(v7, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
  *(v20 + 16) = v21;
  sub_1C6B95D08(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved);
  sub_1C6B95D08(v15, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return sub_1C6B95D08(v19, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
}

uint64_t sub_1C6B92104(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v50 = a3;
  v7 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDCE9830;
  sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v16 = v15;
  v17 = swift_allocObject();
  v49 = xmmword_1C6D7E630;
  *(v17 + 16) = xmmword_1C6D7E630;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1C6B2064C();
  *(v17 + 64) = v48;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  swift_beginAccess();
  v18 = v3[8];
  if (v18)
  {
    if (v18[2] == a1 && v18[3] == a2 || (sub_1C6D7A130() & 1) != 0)
    {
      v46 = v16;
      v47 = v14;
      v19 = *(*v18 + 104);
      swift_beginAccess();
      sub_1C6B95F1C(v18 + v19, v13, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
      v20 = *(*(v13 + 2) + 16);

      sub_1C6B95D08(v13, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
      if (v20)
      {
        v45 = v3;
        swift_beginAccess();
        Com_Apple_News_Personalization_RecipeSession.end(at:)(v50);
        swift_endAccess();
        if (v4)
        {
        }

        v27 = swift_allocObject();
        *(v27 + 16) = v49;
        v28 = v48;
        *(v27 + 56) = MEMORY[0x1E69E6158];
        *(v27 + 64) = v28;
        *(v27 + 32) = a1;
        *(v27 + 40) = a2;

        sub_1C6D79AC0();
        sub_1C6D78D30();

        sub_1C6B95F1C(v18 + v19, v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
        v29 = Com_Apple_News_Personalization_RecipeSession.serialize()();
        v31 = v30;
        v32 = v29;
        v44 = v29;
        v50 = v33;
        v35 = v34;
        sub_1C6B95D08(v11, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1C6D7EB10;
        v37 = MEMORY[0x1E69E6158];
        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = v28;
        *(v36 + 32) = a1;
        *(v36 + 40) = a2;
        *(v36 + 96) = v37;
        *(v36 + 104) = v28;
        *(v36 + 72) = v32;
        *(v36 + 80) = v31;

        sub_1C6D79AC0();
        sub_1C6D78D30();

        v39 = v45[6];
        v38 = v45[7];
        __swift_project_boxed_opaque_existential_1(v45 + 3, v39);
        v40 = *(v38 + 8);
        v41 = v44;
        v43 = v31;
        v44 = v35;
        v40(v41, v31, v35, v50, v39, v38);
        v42 = swift_allocObject();
        *(v42 + 16) = v49;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = v28;
        *(v42 + 32) = a1;
        *(v42 + 40) = a2;

        sub_1C6D79AC0();
        sub_1C6D78D30();

        sub_1C6B1C9F0(v44, v50);

        v3 = v45;
      }

      else
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v49;
        v23 = v48;
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 64) = v23;
        *(v22 + 32) = a1;
        *(v22 + 40) = a2;

        sub_1C6D79AC0();
        sub_1C6D78D30();
      }

      v24 = v3[8];
      v3[8] = 0;
    }

    sub_1C6B95DB8(0, &qword_1EC1D7128, _s7FactoryCMa);
    sub_1C6B95CB8(&qword_1EC1D7130, &qword_1EC1D7128, _s7FactoryCMa);
    swift_allocError();
    *v26 = 2;
  }

  else
  {
    sub_1C6B95DB8(0, &qword_1EC1D7128, _s7FactoryCMa);
    sub_1C6B95CB8(&qword_1EC1D7130, &qword_1EC1D7128, _s7FactoryCMa);
    swift_allocError();
    *v21 = 0;
  }

  return swift_willThrow();
}

uint64_t sub_1C6B92790(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v50 = a3;
  v7 = type metadata accessor for Com_Apple_News_Personalization_Session();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDCE9830;
  sub_1C6B9621C(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v16 = v15;
  v17 = swift_allocObject();
  v49 = xmmword_1C6D7E630;
  *(v17 + 16) = xmmword_1C6D7E630;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1C6B2064C();
  *(v17 + 64) = v48;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  swift_beginAccess();
  v18 = v3[8];
  if (v18)
  {
    if (v18[2] == a1 && v18[3] == a2 || (sub_1C6D7A130() & 1) != 0)
    {
      v46 = v16;
      v47 = v14;
      v19 = *(*v18 + 104);
      swift_beginAccess();
      sub_1C6B95F1C(v18 + v19, v13, type metadata accessor for Com_Apple_News_Personalization_Session);
      v20 = *(*(v13 + 2) + 16);

      sub_1C6B95D08(v13, type metadata accessor for Com_Apple_News_Personalization_Session);
      if (v20)
      {
        v45 = v3;
        swift_beginAccess();
        Com_Apple_News_Personalization_Session.end(at:)(v50);
        swift_endAccess();
        if (v4)
        {
        }

        v27 = swift_allocObject();
        *(v27 + 16) = v49;
        v28 = v48;
        *(v27 + 56) = MEMORY[0x1E69E6158];
        *(v27 + 64) = v28;
        *(v27 + 32) = a1;
        *(v27 + 40) = a2;

        sub_1C6D79AC0();
        sub_1C6D78D30();

        sub_1C6B95F1C(v18 + v19, v10, type metadata accessor for Com_Apple_News_Personalization_Session);
        v29 = Com_Apple_News_Personalization_Session.serialize()();
        v31 = v30;
        v32 = v29;
        v44 = v29;
        v50 = v33;
        v35 = v34;
        sub_1C6B95D08(v10, type metadata accessor for Com_Apple_News_Personalization_Session);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1C6D7EB10;
        v37 = MEMORY[0x1E69E6158];
        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = v28;
        *(v36 + 32) = a1;
        *(v36 + 40) = a2;
        *(v36 + 96) = v37;
        *(v36 + 104) = v28;
        *(v36 + 72) = v32;
        *(v36 + 80) = v31;

        sub_1C6D79AC0();
        sub_1C6D78D30();

        v39 = v45[6];
        v38 = v45[7];
        __swift_project_boxed_opaque_existential_1(v45 + 3, v39);
        v40 = *(v38 + 8);
        v41 = v44;
        v43 = v31;
        v44 = v35;
        v40(v41, v31, v35, v50, v39, v38);
        v42 = swift_allocObject();
        *(v42 + 16) = v49;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = v28;
        *(v42 + 32) = a1;
        *(v42 + 40) = a2;

        sub_1C6D79AC0();
        sub_1C6D78D30();

        sub_1C6B1C9F0(v44, v50);

        v3 = v45;
      }

      else
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v49;
        v23 = v48;
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 64) = v23;
        *(v22 + 32) = a1;
        *(v22 + 40) = a2;

        sub_1C6D79AC0();
        sub_1C6D78D30();
      }

      v24 = v3[8];
      v3[8] = 0;
    }

    sub_1C6B95DB8(0, &qword_1EC1D7118, _s7FactoryCMa_0);
    sub_1C6B95CB8(&qword_1EC1D7120, &qword_1EC1D7118, _s7FactoryCMa_0);
    swift_allocError();
    *v26 = 2;
  }

  else
  {
    sub_1C6B95DB8(0, &qword_1EC1D7118, _s7FactoryCMa_0);
    sub_1C6B95CB8(&qword_1EC1D7120, &qword_1EC1D7118, _s7FactoryCMa_0);
    swift_allocError();
    *v21 = 0;
  }

  return swift_willThrow();
}

uint64_t sub_1C6B92F54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D773E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69B4508])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69B4528])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69B44F8])
  {
    v10 = 2;
LABEL_25:
    *a1 = v10;
    goto LABEL_26;
  }

  if (result == *MEMORY[0x1E69B44A0])
  {
    v10 = 3;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B4518])
  {
    v10 = 4;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B4510])
  {
    v10 = 5;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44B8])
  {
    v10 = 6;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44D8])
  {
    v10 = 7;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44C8])
  {
    v10 = 8;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44B0])
  {
    v10 = 9;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44C0])
  {
    v10 = 10;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x1E69B44A8])
  {
    v10 = 11;
    goto LABEL_25;
  }

  if (result != *MEMORY[0x1E69B44E8] && result != *MEMORY[0x1E69B44D0] && result != *MEMORY[0x1E69B44E0] && result != *MEMORY[0x1E69B4530] && result != *MEMORY[0x1E69B44F0] && result != *MEMORY[0x1E69B4520])
  {
    if (result != *MEMORY[0x1E69B4500])
    {
      *a1 = 0;
      *(a1 + 8) = 1;
      return (*(v5 + 8))(v8, v4);
    }

    v10 = 12;
    goto LABEL_25;
  }

LABEL_2:
  *a1 = 0;
LABEL_26:
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1C6B9325C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D77E80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69B4BD0])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69B4BA0])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69B4BD8])
  {
    v10 = 2;
LABEL_45:
    *a1 = v10;
    goto LABEL_46;
  }

  if (result == *MEMORY[0x1E69B4B60])
  {
    v10 = 3;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B68])
  {
    v10 = 4;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B70])
  {
    v10 = 5;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BB8])
  {
    v10 = 6;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B98])
  {
    v10 = 7;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B30])
  {
    v10 = 8;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B80])
  {
    v10 = 9;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B88])
  {
    v10 = 10;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B40])
  {
    v10 = 11;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B48])
  {
    v10 = 12;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B90])
  {
    v10 = 13;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BC8])
  {
    v10 = 14;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BA8])
  {
    v10 = 15;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B28])
  {
    v10 = 16;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B58])
  {
    v10 = 17;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BB0])
  {
    v10 = 18;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B38])
  {
    v10 = 19;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4BE0])
  {
    v10 = 20;
    goto LABEL_45;
  }

  if (result == *MEMORY[0x1E69B4B20])
  {
    v10 = 21;
    goto LABEL_45;
  }

  if (result != *MEMORY[0x1E69B4B78])
  {
    if (result == *MEMORY[0x1E69B4BE8])
    {
      v10 = 22;
    }

    else if (result == *MEMORY[0x1E69B4BC0])
    {
      v10 = 23;
    }

    else
    {
      if (result != *MEMORY[0x1E69B4B50])
      {
        *a1 = 0;
        *(a1 + 8) = 1;
        return (*(v5 + 8))(v8, v4);
      }

      v10 = 24;
    }

    goto LABEL_45;
  }

LABEL_2:
  *a1 = 0;
LABEL_46:
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1C6B93650@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D77F00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69B4E98])
  {
    goto LABEL_2;
  }

  if (result == *MEMORY[0x1E69B4E80])
  {
    *a1 = 1;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69B4ED8])
  {
    v10 = 2;
LABEL_49:
    *a1 = v10;
    goto LABEL_50;
  }

  if (result == *MEMORY[0x1E69B4C20])
  {
    v10 = 3;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4D18])
  {
    v10 = 4;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4EC8])
  {
    v10 = 5;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C78])
  {
    v10 = 6;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4CD8])
  {
    v10 = 7;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E70])
  {
    v10 = 8;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E60])
  {
    v10 = 9;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4D70])
  {
    v10 = 10;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E30])
  {
    v10 = 11;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E00])
  {
    v10 = 12;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4EC0])
  {
    v10 = 13;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4EE8])
  {
    v10 = 14;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C28])
  {
    v10 = 15;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4D20])
  {
    v10 = 16;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C58])
  {
    v10 = 17;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E10])
  {
    v10 = 18;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C98])
  {
    v10 = 19;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4DA8])
  {
    v10 = 20;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4E78])
  {
    v10 = 21;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4C50])
  {
    v10 = 22;
    goto LABEL_49;
  }

  if (result == *MEMORY[0x1E69B4EB0])
  {
    v10 = 23;
    goto LABEL_49;
  }

  if (result != *MEMORY[0x1E69B4D00] && result != *MEMORY[0x1E69B4C40])
  {
    if (result == *MEMORY[0x1E69B4E90])
    {
      v10 = 24;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E68])
    {
      v10 = 25;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DB0])
    {
      v10 = 26;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C90])
    {
      v10 = 27;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D48])
    {
      v10 = 28;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E08])
    {
      v10 = 29;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C68])
    {
      v10 = 30;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C60])
    {
      v10 = 31;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E18])
    {
      v10 = 32;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C38])
    {
      v10 = 33;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4ED0])
    {
      v10 = 34;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CF0])
    {
      v10 = 35;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E58])
    {
      v10 = 36;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D78])
    {
      v10 = 37;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CF8])
    {
      v10 = 38;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DC0])
    {
      v10 = 39;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E20])
    {
      v10 = 40;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E88])
    {
      v10 = 41;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C30])
    {
      v10 = 42;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4EB8])
    {
      v10 = 43;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4EA0])
    {
      v10 = 44;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CB8])
    {
      v10 = 45;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DD8])
    {
      v10 = 46;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C88])
    {
      v10 = 47;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D08])
    {
      v10 = 48;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D40])
    {
      v10 = 49;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E50])
    {
      v10 = 50;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CE0])
    {
      v10 = 51;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4CC0])
    {
      v10 = 52;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D68])
    {
      v10 = 53;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D98])
    {
      v10 = 54;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D28])
    {
      v10 = 55;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DE8])
    {
      v10 = 56;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D90])
    {
      v10 = 57;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D88])
    {
      v10 = 58;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DD0])
    {
      v10 = 59;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E48])
    {
      v10 = 60;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E28])
    {
      v10 = 61;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4EE0])
    {
      v10 = 62;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4DE0])
    {
      v10 = 63;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4C48])
    {
      v10 = 64;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D10])
    {
      v10 = 65;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4E38])
    {
      v10 = 66;
      goto LABEL_49;
    }

    if (result == *MEMORY[0x1E69B4D50])
    {
      v10 = 67;
      goto LABEL_49;
    }

    if (result != *MEMORY[0x1E69B4DF8] && result != *MEMORY[0x1E69B4DB8])
    {
      if (result == *MEMORY[0x1E69B4D30])
      {
        v10 = 68;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4DF0])
      {
        v10 = 69;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4CC8])
      {
        v10 = 70;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4C70])
      {
        v10 = 71;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4C80])
      {
        v10 = 72;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4D60])
      {
        v10 = 73;
        goto LABEL_49;
      }

      if (result == *MEMORY[0x1E69B4DC8])
      {
        v10 = 74;
        goto LABEL_49;
      }

      if (result != *MEMORY[0x1E69B4EA8] && result != *MEMORY[0x1E69B4D80] && result != *MEMORY[0x1E69B4CB0] && result != *MEMORY[0x1E69B4CD0])
      {
        if (result == *MEMORY[0x1E69B4CE8])
        {
          v10 = 75;
        }

        else if (result == *MEMORY[0x1E69B4CA8])
        {
          v10 = 76;
        }

        else if (result == *MEMORY[0x1E69B4D38])
        {
          v10 = 77;
        }

        else if (result == *MEMORY[0x1E69B4E40])
        {
          v10 = 78;
        }

        else if (result == *MEMORY[0x1E69B4DA0])
        {
          v10 = 79;
        }

        else if (result == *MEMORY[0x1E69B4D58])
        {
          v10 = 80;
        }

        else
        {
          if (result != *MEMORY[0x1E69B4CA0])
          {
            *a1 = 0;
            *(a1 + 8) = 1;
            return (*(v5 + 8))(v8, v4);
          }

          v10 = 81;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_2:
  *a1 = 0;
LABEL_50:
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1C6B9410C(void *a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v92 = a6;
  v93 = a3;
  v89 = a5;
  v95 = a4;
  v98 = a1;
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B9621C(0, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v81 - v10;
  sub_1C6B9621C(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18], v7);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v81 - v15;
  v16 = sub_1C6D77F00();
  v87 = *(v16 - 8);
  v88 = v16;
  v17 = *(v87 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v85 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v81 - v20;
  sub_1C6B9621C(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v7);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v81 - v23;
  v25 = sub_1C6D77E80();
  v83 = *(v25 - 8);
  v84 = v25;
  v26 = *(v83 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v81 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v82 = &v81 - v29;
  v30 = sub_1C6D773E0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C6D77EC0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95(v38);
  sub_1C6D77EB0();
  (*(v36 + 8))(v40, v35);
  sub_1C6B92F54(&v96);
  v41 = v98;
  v42 = (*(v31 + 8))(v34, v30);
  v43 = v97;
  v41[6] = v96;
  *(v41 + 56) = v43;
  v95 = a2;
  v89(v42);
  v44 = sub_1C6D77E60();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v24, 1, v44) == 1)
  {
    v46 = sub_1C6B90C7C(v24, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  }

  else
  {
    v47 = v81;
    sub_1C6D77E50();
    (*(v45 + 8))(v24, v44);
    v48 = v82;
    v49 = v83;
    v50 = v84;
    (*(v83 + 32))(v82, v47, v84);
    sub_1C6B9325C(&v96);
    v46 = (*(v49 + 8))(v48, v50);
    v51 = v97;
    v52 = v98;
    v98[4] = v96;
    *(v52 + 40) = v51;
  }

  v53 = v90;
  v54 = v92;
  v92(v46);
  v55 = sub_1C6D77EF0();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  v58 = v57(v53, 1, v55);
  v59 = v91;
  if (v58 == 1)
  {
    v60 = sub_1C6B90C7C(v53, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  }

  else
  {
    v61 = v85;
    sub_1C6D77EE0();
    (*(v56 + 8))(v53, v55);
    v62 = v86;
    v63 = v87;
    v64 = v61;
    v65 = v88;
    (*(v87 + 32))(v86, v64, v88);
    sub_1C6B93650(&v96);
    v60 = (*(v63 + 8))(v62, v65);
    v66 = v97;
    v67 = v98;
    v98[2] = v96;
    *(v67 + 24) = v66;
  }

  v54(v60);
  if (v57(v59, 1, v55) == 1)
  {
    sub_1C6B90C7C(v59, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    v68 = v94;
  }

  else
  {
    v69 = sub_1C6D77ED0();
    v71 = v70;
    (*(v56 + 8))(v59, v55);
    v68 = v94;
    if (v71)
    {
      v72 = (v98 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36));
      v73 = v72[1];

      *v72 = v69;
      v72[1] = v71;
    }
  }

  sub_1C6B95FEC(v93, v68);
  v74 = sub_1C6D77C50();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v68, 1, v74) == 1)
  {
    return sub_1C6B90C7C(v68, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
  }

  v77 = sub_1C6D77C40();
  v79 = v78;
  result = (*(v75 + 8))(v68, v74);
  if (v79 >> 60 != 15)
  {
    v80 = v98;
    result = sub_1C6B1C9F0(*v98, v98[1]);
    *v80 = v77;
    v80[1] = v79;
  }

  return result;
}

uint64_t sub_1C6B9492C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v26 = a4;
  v27 = a5;
  v28 = a3;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D773B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D78A00();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26(v18);
  sub_1C6D773A0();
  (*(v11 + 8))(v14, v10);
  sub_1C6D789D0();
  v21 = v27(0);
  v22 = *(v21 + 24);
  sub_1C6B90C7C(a1 + v22, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v16 + 32))(a1 + v22, v20, v15);
  (*(v16 + 56))(a1 + v22, 0, 1, v15);
  sub_1C6B95F1C(v28, v9, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v23 = *(v21 + 20);
  sub_1C6B90C7C(a1 + v23, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6B95F84(v9, a1 + v23, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return (*(v29 + 56))(a1 + v23, 0, 1, v30);
}

uint64_t sub_1C6B94C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v90 = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1C6B9621C(0, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v75 - v7;
  sub_1C6B9621C(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18], v4);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v75 - v12;
  v13 = sub_1C6D77F00();
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v79 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v75 - v17;
  sub_1C6B9621C(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18], v4);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v75 - v20;
  v22 = sub_1C6D77E80();
  v77 = *(v22 - 8);
  v78 = v22;
  v23 = *(v77 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v75 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v75 - v26;
  sub_1C6B9621C(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00], v4);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v75 - v29;
  v31 = sub_1C6D773E0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v75 - v37;
  v85 = a2;
  sub_1C6D775E0();
  v39 = sub_1C6D77EC0();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v30, 1, v39) == 1)
  {
    sub_1C6B90C7C(v30, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    v41 = v90;
  }

  else
  {
    sub_1C6D77EB0();
    (*(v40 + 8))(v30, v39);
    (*(v32 + 32))(v38, v36, v31);
    sub_1C6B92F54(&v88);
    (*(v32 + 8))(v38, v31);
    v42 = v89;
    v41 = v90;
    *(v90 + 48) = v88;
    *(v41 + 56) = v42;
  }

  sub_1C6D775D0();
  v43 = sub_1C6D77E60();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v21, 1, v43);
  v46 = v83;
  v47 = v84;
  if (v45 == 1)
  {
    sub_1C6B90C7C(v21, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  }

  else
  {
    v48 = v75;
    sub_1C6D77E50();
    (*(v44 + 8))(v21, v43);
    v49 = v76;
    v50 = v77;
    v51 = v78;
    (*(v77 + 32))(v76, v48, v78);
    sub_1C6B9325C(&v88);
    (*(v50 + 8))(v49, v51);
    v52 = v89;
    *(v41 + 32) = v88;
    *(v41 + 40) = v52;
  }

  sub_1C6D775F0();
  v53 = sub_1C6D77EF0();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  if (v55(v46, 1, v53) == 1)
  {
    sub_1C6B90C7C(v46, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  }

  else
  {
    v56 = v79;
    sub_1C6D77EE0();
    (*(v54 + 8))(v46, v53);
    v57 = v80;
    v58 = v81;
    v59 = v56;
    v60 = v82;
    (*(v81 + 32))(v80, v59, v82);
    sub_1C6B93650(&v88);
    v61 = v60;
    v41 = v90;
    (*(v58 + 8))(v57, v61);
    v62 = v89;
    *(v41 + 16) = v88;
    *(v41 + 24) = v62;
  }

  sub_1C6D775F0();
  if (v55(v47, 1, v53) == 1)
  {
    sub_1C6B90C7C(v47, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    v63 = v87;
  }

  else
  {
    v64 = sub_1C6D77ED0();
    v66 = v65;
    (*(v54 + 8))(v47, v53);
    v63 = v87;
    if (v66)
    {
      v67 = (v41 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36));
      v68 = v67[1];

      *v67 = v64;
      v67[1] = v66;
    }
  }

  sub_1C6B95FEC(v86, v63);
  v69 = sub_1C6D77C50();
  v70 = *(v69 - 8);
  if ((*(v70 + 48))(v63, 1, v69) == 1)
  {
    return sub_1C6B90C7C(v63, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8]);
  }

  v72 = sub_1C6D77C40();
  v74 = v73;
  result = (*(v70 + 8))(v63, v69);
  if (v74 >> 60 != 15)
  {
    result = sub_1C6B1C9F0(*v41, *(v41 + 8));
    *v41 = v72;
    *(v41 + 8) = v74;
  }

  return result;
}

uint64_t sub_1C6B954F0(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v24 = a3;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D773D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v14);
  v17 = sub_1C6D773C0();
  v19 = v18;
  (*(v12 + 8))(v16, v11);
  v20 = a1[1];

  *a1 = v17;
  a1[1] = v19;
  sub_1C6B95F1C(v24, v10, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  v21 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 24);
  sub_1C6B90C7C(a1 + v21, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6B95F84(v10, a1 + v21, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  return (*(v7 + 56))(a1 + v21, 0, 1, v6);
}

uint64_t sub_1C6B9570C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B95F1C(a2, v8, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEventRecipeSaved() + 20);
  sub_1C6B90C7C(a1 + v9, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6B95F84(v8, a1 + v9, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  return (*(v5 + 56))(a1 + v9, 0, 1, v4);
}

uint64_t sub_1C6B95854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1C6D75F50();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F40();
  sub_1C6D78980();
  v13 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0) + 24);
  sub_1C6B90C7C(a1 + v13, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v9 + 32))(a1 + v13, v12, v8);
  (*(v9 + 56))(a1 + v13, 0, 1, v8);
  sub_1C6B90C7C(a1, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  sub_1C6B95F1C(a2, a1, a3);
  v14 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

unint64_t sub_1C6B95A74()
{
  result = qword_1EC1D70F0;
  if (!qword_1EC1D70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D70F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecipeEventProcessor.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecipeEventProcessor.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6B95C64()
{
  result = qword_1EC1D7110;
  if (!qword_1EC1D7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7110);
  }

  return result;
}

uint64_t sub_1C6B95CB8(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C6B95DB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6B95D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6B95D68()
{
  if (!qword_1EDCE6698)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6698);
    }
  }
}

void sub_1C6B95DB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for SessionManager.Errors();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B95F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B95F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B95FEC(uint64_t a1, uint64_t a2)
{
  sub_1C6B9621C(0, &unk_1EDCE5EB8, MEMORY[0x1E69B49B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C6B9621C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Array.truncate(_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1C6D79810() <= a1)
  {
  }

  else
  {
    sub_1C6D79820();
    swift_getWitnessTable();
    sub_1C6D796E0();
    swift_getWitnessTable();
    sub_1C6D79A20();
    sub_1C6D79C60();
    swift_getWitnessTable();
    return sub_1C6D79830();
  }

  return a2;
}

uint64_t Array.conform(repeating:inLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Array.truncate(_:)(a2, a3);
  result = sub_1C6D79810();
  if (result == a2)
  {
    return v7;
  }

  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    sub_1C6B96440(a1, a2 - result, a4);
    v9 = sub_1C6D797D0();

    return v9;
  }

  return result;
}

uint64_t sub_1C6B96440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D797E0();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1C6D79820();
    return v8;
  }

  return result;
}

double sub_1C6B9656C(uint64_t a1)
{
  v2 = sub_1C6D795E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v12[1] = a1;
    sub_1C6B18CB8(0, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1C6B98654();
    sub_1C6D79530();
    sub_1C6D795D0();
    v8 = sub_1C6D795B0();
    v10 = v9;

    (*(v3 + 8))(v7, v2);
    if (v10 >> 60 != 15)
    {
      sub_1C6B18CB8(0, &unk_1EDCE7D30, MEMORY[0x1E6969080], MEMORY[0x1E69E6F90]);
      v11 = swift_allocObject();
      *&result = 1;
      *(v11 + 16) = xmmword_1C6D7E630;
      *(v11 + 32) = v8;
      *(v11 + 40) = v10;
    }
  }

  return result;
}

uint64_t sub_1C6B96720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_1C6B995C4(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
      v28 = sub_1C6D79500();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_1C6B995C4(&qword_1EDCE5D20, MEMORY[0x1E6996088]);
        v33 = sub_1C6D79560();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B96AD0@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v68 = a4;
  sub_1C6B986D0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1C6D783E0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C6D78810();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C6B99064(a1, a2);
  if (v4)
  {
    return result;
  }

  v69 = v20;
  v70 = v16;
  v22 = 0;
  v71[0] = MEMORY[0x1E69E7CC8];
  v23 = *(a1 + 16);
  v24 = v15;
  while (v23 != v22)
  {
    v25 = v22 + 1;
    sub_1C6B97138(v71, a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22, a3);
    v22 = v25;
  }

  v66 = v11;
  v64 = 0;
  v26 = v71[0];
  v27 = v69;
  sub_1C6D78800();
  v28 = v26 + 64;
  v29 = 1 << *(v26 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v26 + 64);
  v32 = (v29 + 63) >> 6;
  v63 = *MEMORY[0x1E6996120];
  v62 = *MEMORY[0x1E6996130];
  v61 = *MEMORY[0x1E6996148];
  v60 = *MEMORY[0x1E6996140];
  v59 = *MEMORY[0x1E6996138];
  v58 = *MEMORY[0x1E6996128];
  v67 = v26;

  v33 = 0;
  v65 = v24;
  while (1)
  {
    v38 = v70;
    if (!v31)
    {
      break;
    }

LABEL_18:
    v40 = __clz(__rbit64(v31)) | (v33 << 6);
    v41 = (*(v67 + 48) + 16 * v40);
    v42 = *v41;
    v43 = v41[1];
    v44 = *(*(v67 + 56) + 8 * v40);
    swift_bridgeObjectRetain_n();

    sub_1C6D783C0();
    v45 = *(v44 + 16);
    v71[5] = v43;
    if (v45 > 2)
    {
      if (v45 == 3)
      {
        swift_beginAccess();
        v34 = *(v44 + 40);
        v57 = v34;
        v35 = MEMORY[0x1E69E7CC0];
        if (v34)
        {
          v35 = v34;
        }

        v36 = v66;
        *v66 = v35;
        v37 = sub_1C6D78760();
        (*(*(v37 - 8) + 104))(v36, v61, v37);
        goto LABEL_11;
      }

      if (v45 == 4)
      {
        swift_beginAccess();
        v48 = *(v44 + 48);
        v57 = v48;
        v49 = MEMORY[0x1E69E7CC0];
        if (v48)
        {
          v49 = v48;
        }

        v36 = v66;
        *v66 = v49;
        v37 = sub_1C6D78760();
        (*(*(v37 - 8) + 104))(v36, v62, v37);
        goto LABEL_11;
      }

      v52 = *(v44 + 56);
      if (v52)
      {
        v53 = v52;
        v54 = sub_1C6D75E60();
        v56 = v55;
      }

      else
      {
        v54 = 0;
        v56 = 0xC000000000000000;
      }

      v36 = v66;
      *v66 = v54;
      v36[1] = v56;
      v37 = sub_1C6D78760();
      (*(*(v37 - 8) + 104))(v36, v63, v37);
    }

    else
    {
      if (v45)
      {
        if (v45 == 1)
        {
          swift_beginAccess();
          v46 = *(v44 + 24);
          v57 = v46;
          v47 = MEMORY[0x1E69E7CC0];
          if (v46)
          {
            v47 = v46;
          }

          v36 = v66;
          *v66 = v47;
          v37 = sub_1C6D78760();
          (*(*(v37 - 8) + 104))(v36, v59, v37);
        }

        else
        {
          swift_beginAccess();
          v50 = *(v44 + 32);
          v57 = v50;
          v51 = MEMORY[0x1E69E7CC0];
          if (v50)
          {
            v51 = v50;
          }

          v36 = v66;
          *v66 = v51;
          v37 = sub_1C6D78760();
          (*(*(v37 - 8) + 104))(v36, v60, v37);
        }

LABEL_11:

        goto LABEL_12;
      }

      v37 = sub_1C6D78760();
      v36 = v66;
      (*(*(v37 - 8) + 104))(v66, v58, v37);
    }

LABEL_12:
    v31 &= v31 - 1;
    sub_1C6D78760();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    v27 = v69;
    sub_1C6D78830();
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v32)
    {

      (*(v17 + 32))(v68, v27, v38);
    }

    v31 = *(v28 + 8 * v39);
    ++v33;
    if (v31)
    {
      v33 = v39;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B97138(void *a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1C6B986D0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1C6D78760();
  v10 = *(v167 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v167);
  v155 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v148 - v14;
  v16 = sub_1C6D783E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a2;
  v21 = sub_1C6D787E0();
  v166 = *(v21 + 16);
  if (!v166)
  {
  }

  v22 = a3;
  v23 = 0;
  v164 = (v10 + 48);
  v165 = v17 + 16;
  v162 = v16;
  v163 = (v10 + 32);
  v154 = (v10 + 16);
  v160 = (v10 + 8);
  v161 = (v17 + 8);
  v152 = v22;
  v156 = v15;
  v157 = v17;
  v24 = v167;
  v158 = v9;
  v159 = v21;
  while (v23 < *(v21 + 16))
  {
    (*(v17 + 16))(v20, v21 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23, v16);
    sub_1C6D78820();
    if ((*v164)(v9, 1, v24) == 1)
    {
      goto LABEL_87;
    }

    (*v163)(v15, v9, v24);
    v25 = sub_1C6D783D0();
    v27 = a1;
    v28 = *a1;
    if (!*(v28 + 16))
    {

LABEL_14:
      v47 = sub_1C6D783D0();
      v48 = v24;
      v50 = v49;
      v51 = v155;
      (*v154)(v155, v15, v48);
      type metadata accessor for MutableFeature();
      swift_allocObject();
      v52 = sub_1C6B97DF0(v51);
      if (!v52)
      {
        v64 = sub_1C6B5DEA8(v47, v50);
        v66 = v65;

        if (v66)
        {
          a1 = v27;
          v67 = *v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = *v27;
          v169 = *v27;
          v15 = v156;
          v24 = v167;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1C6B736C8();
            v69 = v169;
          }

          v70 = *(v69[6] + 16 * v64 + 8);

          v71 = *(v69[7] + 8 * v64);

          sub_1C6B16C9C(v64, v69);
          *v27 = v69;
          v16 = v162;
          goto LABEL_67;
        }

        v15 = v156;
        v16 = v162;
        a1 = v27;
        goto LABEL_66;
      }

      v53 = v52;
      v54 = *v27;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v169 = *v27;
      v56 = v169;
      v57 = sub_1C6B5DEA8(v47, v50);
      v59 = v56[2];
      v60 = (v58 & 1) == 0;
      v43 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v43)
      {
        goto LABEL_79;
      }

      v62 = v58;
      if (v56[3] >= v61)
      {
        if (v55)
        {
          goto LABEL_24;
        }

        v132 = v57;
        sub_1C6B736C8();
        v57 = v132;
        v72 = v169;
        if ((v62 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_25:
        v73 = v72[7];
        v74 = *(v73 + 8 * v57);
        *(v73 + 8 * v57) = v53;
      }

      else
      {
        sub_1C6B6FCD0(v61, v55);
        v57 = sub_1C6B5DEA8(v47, v50);
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_88;
        }

LABEL_24:
        v72 = v169;
        if (v62)
        {
          goto LABEL_25;
        }

LABEL_61:
        v72[(v57 >> 6) + 8] |= 1 << v57;
        v133 = (v72[6] + 16 * v57);
        *v133 = v47;
        v133[1] = v50;
        *(v72[7] + 8 * v57) = v53;
        v134 = v72[2];
        v43 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v43)
        {
          goto LABEL_80;
        }

        v72[2] = v135;
      }

      a1 = v27;
      *v27 = v72;
      goto LABEL_64;
    }

    v29 = sub_1C6B5DEA8(v25, v26);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      goto LABEL_14;
    }

    v32 = *(*(v28 + 56) + 8 * v29);

    v153 = v32;
    if (v152 > 1)
    {
      if (v152 != 2)
      {

        _s14FeaturesErrorsOMa(0);
        sub_1C6B995C4(&qword_1EC1D7170, _s14FeaturesErrorsOMa);
        swift_allocError();
        v144 = v143;
        sub_1C6B99EC8(0, &qword_1EDCE5CD8, MEMORY[0x1E6996150]);
        v146 = *(v145 + 48);
        sub_1C6B98210(v144);
        v147 = v167;
        (*v154)(&v144[v146], v15, v167);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_77:
        (*v160)(v15, v147);
        return (*v161)(v20, v162);
      }

      v75 = sub_1C6D783D0();
      v77 = v76;
      v78 = v151;
      v79 = sub_1C6B9960C(v15);
      v151 = v78;
      if (v78)
      {

        v147 = v167;
        goto LABEL_77;
      }

      v80 = v79;

      v81 = *v27;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v169 = *v27;
      v83 = v169;
      v84 = sub_1C6B5DEA8(v75, v77);
      v86 = v83[2];
      v87 = (v85 & 1) == 0;
      v43 = __OFADD__(v86, v87);
      v88 = v86 + v87;
      if (v43)
      {
        goto LABEL_82;
      }

      v89 = v85;
      if (v83[3] >= v88)
      {
        if (v82)
        {
          goto LABEL_46;
        }

        v137 = v84;
        sub_1C6B736C8();
        v84 = v137;
        v113 = v169;
        if ((v89 & 1) == 0)
        {
          goto LABEL_71;
        }

LABEL_47:
        v114 = v113[7];
        v115 = *(v114 + 8 * v84);
        *(v114 + 8 * v84) = v80;
      }

      else
      {
        sub_1C6B6FCD0(v88, v82);
        v84 = sub_1C6B5DEA8(v75, v77);
        if ((v89 & 1) != (v90 & 1))
        {
          goto LABEL_88;
        }

LABEL_46:
        v113 = v169;
        if (v89)
        {
          goto LABEL_47;
        }

LABEL_71:
        v113[(v84 >> 6) + 8] |= 1 << v84;
        v138 = (v113[6] + 16 * v84);
        *v138 = v75;
        v138[1] = v77;
        *(v113[7] + 8 * v84) = v80;
        v139 = v113[2];
        v43 = __OFADD__(v139, 1);
        v140 = v139 + 1;
        if (v43)
        {
          goto LABEL_85;
        }

        v113[2] = v140;
      }

      a1 = v27;
      *v27 = v113;
LABEL_64:
      v15 = v156;
LABEL_65:
      v16 = v162;
LABEL_66:
      v24 = v167;
LABEL_67:
      v9 = v158;
      goto LABEL_68;
    }

    if (!v152)
    {
      v33 = sub_1C6D783D0();
      v35 = v34;
      v36 = *v27;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v169 = *v27;
      v38 = v169;
      v39 = sub_1C6B5DEA8(v33, v35);
      v41 = v38[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_81;
      }

      v45 = v40;
      if (v38[3] >= v44)
      {
        if ((v37 & 1) == 0)
        {
          v136 = v39;
          sub_1C6B736C8();
          v39 = v136;
        }
      }

      else
      {
        sub_1C6B6FCD0(v44, v37);
        v39 = sub_1C6B5DEA8(v33, v35);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_88;
        }
      }

      v15 = v156;
      v107 = v169;
      if (v45)
      {
        v108 = v169[7];
        v109 = *(v108 + 8 * v39);
        *(v108 + 8 * v39) = v153;
      }

      else
      {
        v169[(v39 >> 6) + 8] |= 1 << v39;
        v110 = (v107[6] + 16 * v39);
        *v110 = v33;
        v110[1] = v35;
        *(v107[7] + 8 * v39) = v153;
        v111 = v107[2];
        v43 = __OFADD__(v111, 1);
        v112 = v111 + 1;
        if (v43)
        {
          goto LABEL_84;
        }

        v107[2] = v112;
      }

      a1 = v27;
      *v27 = v107;
      goto LABEL_65;
    }

    v91 = sub_1C6D783D0();
    v150 = v92;
    v93 = v155;
    (*v154)(v155, v15, v24);
    type metadata accessor for MutableFeature();
    swift_allocObject();
    v94 = sub_1C6B97DF0(v93);
    if (!v94)
    {
      v116 = sub_1C6B5DEA8(v91, v150);
      v118 = v117;

      if (v118)
      {
        v119 = v116;
        a1 = v27;
        v120 = *v27;
        v121 = swift_isUniquelyReferenced_nonNull_native();
        v122 = *v27;
        v169 = *v27;
        if ((v121 & 1) == 0)
        {
          sub_1C6B736C8();
          v122 = v169;
        }

        v123 = *(v122[6] + 16 * v119 + 8);

        v124 = *(v122[7] + 8 * v119);

        sub_1C6B16C9C(v119, v122);

        *v27 = v122;
        v16 = v162;
      }

      else
      {

        v16 = v162;
        a1 = v27;
      }

      goto LABEL_67;
    }

    v148 = v94;
    a1 = v27;
    v95 = *v27;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v169 = *v27;
    v97 = v169;
    v149 = v91;
    v98 = v150;
    v99 = sub_1C6B5DEA8(v91, v150);
    v101 = v97[2];
    v102 = (v100 & 1) == 0;
    v43 = __OFADD__(v101, v102);
    v103 = v101 + v102;
    if (v43)
    {
      goto LABEL_83;
    }

    v104 = v100;
    if (v97[3] >= v103)
    {
      v105 = v98;
      v9 = v158;
      if ((v96 & 1) == 0)
      {
        v141 = v99;
        sub_1C6B736C8();
        v99 = v141;
      }
    }

    else
    {
      sub_1C6B6FCD0(v103, v96);
      v105 = v98;
      v99 = sub_1C6B5DEA8(v149, v98);
      v9 = v158;
      if ((v104 & 1) != (v106 & 1))
      {
        goto LABEL_88;
      }
    }

    v125 = v149;
    v126 = v169;
    if (v104)
    {
      v127 = v169[7];
      v128 = *(v127 + 8 * v99);
      *(v127 + 8 * v99) = v148;
    }

    else
    {
      v169[(v99 >> 6) + 8] |= 1 << v99;
      v129 = (v126[6] + 16 * v99);
      *v129 = v125;
      v129[1] = v105;
      *(v126[7] + 8 * v99) = v148;
      v130 = v126[2];
      v43 = __OFADD__(v130, 1);
      v131 = v130 + 1;
      if (v43)
      {
        goto LABEL_86;
      }

      v126[2] = v131;
    }

    *a1 = v126;
    v16 = v162;
    v24 = v167;
LABEL_68:
    ++v23;
    (*v160)(v15, v24);
    (*v161)(v20, v16);
    v21 = v159;
    v17 = v157;
    if (v166 == v23)
    {
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}