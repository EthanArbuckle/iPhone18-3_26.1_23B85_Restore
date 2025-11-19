@interface FCNewsTabiConfiguration
- (FCNewsTabiChannelPickerSuggestionsConfiguration)channelPickerSuggestionsConfiguration;
- (FCNewsTabiConfiguration)init;
- (FCNewsTabiConfiguration)initWithDictionary:(id)a3;
- (FCNewsTabiFeedPersonalizationConfiguration)feedPersonalizationConfiguration;
- (FCNewsTabiMyMagazinesConfiguration)myMagazinesConfiguration;
- (FCNewsTabiNotificationScoringConfiguration)notificationScoringConfiguration;
- (FCNewsTabiPersonalizedPaywallsConfiguration)personalizedPaywallsConfiguration;
- (FCNewsTabiRecipeDiversificationConfiguration)recipeDiversificationConfiguration;
- (FCNewsTabiRecipeScoringConfiguration)recipeScoringConfiguration;
- (FCNewsTabiRecipeTagSuggestionsConfiguration)recipeTagSuggestionsConfiguration;
- (FCNewsTabiRecommendedIssuesConfiguration)recommendedIssuesConfiguration;
- (FCNewsTabiRecommendedTagsConfiguration)recommendedTagsConfiguration;
- (FCNewsTabiSmarterFetchConfiguration)smarterFetchConfiguration;
- (FCNewsTabiTagCohortMembershipConfiguration)tagCohortMembershipConfiguration;
- (FCNewsTabiTagScoringConfiguration)tagScoringConfiguration;
- (FCNewsTabiTagSuggestionsConfiguration)tagSuggestionsConfiguration;
- (NSArray)packageAssetIDs;
- (id)description;
@end

@implementation FCNewsTabiConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  if (self->_packageAssetIDs)
  {
    v4 = [(FCNewsTabiConfiguration *)self channelPickerSuggestionsConfiguration];
    v5 = [v4 indentedDescription];
    [v3 appendFormat:@"\n\tchannelPickerSuggestionsConfiguration: %@;", v5];

    v6 = [(FCNewsTabiConfiguration *)self eventAggregationConfiguration];
    v7 = [v6 indentedDescription];
    [v3 appendFormat:@"\n\teventAggregationConfiguration: %@;", v7];

    v8 = [(FCNewsTabiConfiguration *)self feedPersonalizationConfiguration];
    v9 = [v8 indentedDescription];
    [v3 appendFormat:@"\n\tfeedPersonalizationConfiguration: %@;", v9];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCNewsTabiConfiguration mlComputeUnits](self, "mlComputeUnits")}];
    [v3 appendFormat:@"\n\tmlComputeUnits: %@;", v10];

    v11 = [(FCNewsTabiConfiguration *)self myMagazinesConfiguration];
    v12 = [v11 indentedDescription];
    [v3 appendFormat:@"\n\tmyMagazinesConfiguration: %@;", v12];

    v13 = [(FCNewsTabiConfiguration *)self notificationScoringConfiguration];
    v14 = [v13 indentedDescription];
    [v3 appendFormat:@"\n\tnotificationScoringConfiguration: %@;", v14];

    v15 = [(FCNewsTabiConfiguration *)self packageAssetIDs];
    v16 = [v15 indentedDescription];
    [v3 appendFormat:@"\n\tpackageAssetIDs: %@;", v16];

    v17 = [(FCNewsTabiConfiguration *)self personalizedPaywallsConfiguration];
    v18 = [v17 indentedDescription];
    [v3 appendFormat:@"\n\tpersonalizedPaywallsConfiguration: %@;", v18];

    v19 = [(FCNewsTabiConfiguration *)self recommendedTagsConfiguration];
    v20 = [v19 indentedDescription];
    [v3 appendFormat:@"\n\trecommendedTagsConfiguration: %@;", v20];

    v21 = [(FCNewsTabiConfiguration *)self recommendedIssuesConfiguration];
    v22 = [v21 indentedDescription];
    [v3 appendFormat:@"\n\trecommendedIssuesConfiguration: %@;", v22];

    v23 = [(FCNewsTabiConfiguration *)self tagCohortMembershipConfiguration];
    v24 = [v23 indentedDescription];
    [v3 appendFormat:@"\n\ttagCohortMembershipConfiguration: %@;", v24];

    v25 = [(FCNewsTabiConfiguration *)self tagScoringConfiguration];
    v26 = [v25 indentedDescription];
    [v3 appendFormat:@"\n\ttagScoringConfiguration: %@;", v26];

    v27 = [(FCNewsTabiConfiguration *)self tagSuggestionsConfiguration];
    v28 = [v27 indentedDescription];
    [v3 appendFormat:@"\n\ttagSuggestionsConfiguration: %@;", v28];

    v29 = [(FCNewsTabiConfiguration *)self unloadGraphOnBackgroundConfiguration];
    v30 = [v29 indentedDescription];
    [v3 appendFormat:@"\n\tunloadGraphOnBackgroundConfiguration: %@;", v30];

    v31 = [(FCNewsTabiConfiguration *)self recipeScoringConfiguration];
    v32 = [v31 indentedDescription];
    [v3 appendFormat:@"\n\trecipeScoringConfiguration: %@;", v32];

    v33 = [(FCNewsTabiConfiguration *)self recipeDiversificationConfiguration];
    v34 = [v33 indentedDescription];
    [v3 appendFormat:@"\n\trecipeDiversificationConfiguration: %@;", v34];

    v35 = [(FCNewsTabiConfiguration *)self recipeTagSuggestionsConfiguration];
    v36 = [v35 indentedDescription];
    [v3 appendFormat:@"\n\trecipeTagSuggestionsConfiguration: %@;", v36];

    v37 = [(FCNewsTabiConfiguration *)self smarterFetchConfiguration];
    v38 = @"\n\tsmarterFetchConfiguration: %@;";
  }

  else
  {
    v39 = [(FCNewsTabiConfiguration *)self adSegmentsEndpoint];
    v40 = [v39 indentedDescription];
    [v3 appendFormat:@"\n\tadSegmentsEndpoint: %@;", v40];

    v41 = [(FCNewsTabiConfiguration *)self channelPickerSuggestionsEndpoint];
    v42 = [v41 indentedDescription];
    [v3 appendFormat:@"\n\tchannelPickerSuggestionsEndpoint: %@;", v42];

    v43 = [(FCNewsTabiConfiguration *)self eventAggregationConfiguration];
    v44 = [v43 indentedDescription];
    [v3 appendFormat:@"\n\teventAggregationConfiguration: %@;", v44];

    v45 = [(FCNewsTabiConfiguration *)self feedPersonalizationEndpoint];
    v46 = [v45 indentedDescription];
    [v3 appendFormat:@"\n\tfeedPersonalizationEndpoint: %@;", v46];

    v47 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCNewsTabiConfiguration mlComputeUnits](self, "mlComputeUnits")}];
    [v3 appendFormat:@"\n\tmlComputeUnits: %@;", v47];

    v48 = [(FCNewsTabiConfiguration *)self myMagazinesEndpoint];
    v49 = [v48 indentedDescription];
    [v3 appendFormat:@"\n\tmyMagazinesEndpoint: %@;", v49];

    v50 = [(FCNewsTabiConfiguration *)self notificationScoringEndpoint];
    v51 = [v50 indentedDescription];
    [v3 appendFormat:@"\n\tnotificationScoringEndpoint: %@;", v51];

    v52 = [(FCNewsTabiConfiguration *)self packageAssetIDs];
    v53 = [v52 indentedDescription];
    [v3 appendFormat:@"\n\tpackageAssetIDs: %@;", v53];

    v54 = [(FCNewsTabiConfiguration *)self personalizedPaywallsEndpoint];
    v55 = [v54 indentedDescription];
    [v3 appendFormat:@"\n\tpersonalizedPaywallsEndpoint: %@;", v55];

    v56 = [(FCNewsTabiConfiguration *)self recommendedIssuesEndpoint];
    v57 = [v56 indentedDescription];
    [v3 appendFormat:@"\n\trecommendedIssuesEndpoint: %@;", v57];

    v58 = [(FCNewsTabiConfiguration *)self recommendedTagsEndpoint];
    v59 = [v58 indentedDescription];
    [v3 appendFormat:@"\n\trecommendedTagsEndpoint: %@;", v59];

    v60 = [(FCNewsTabiConfiguration *)self tagCohortMembershipEndpoint];
    v61 = [v60 indentedDescription];
    [v3 appendFormat:@"\n\ttagCohortMembershipEndpoint: %@;", v61];

    v62 = [(FCNewsTabiConfiguration *)self tagScoringEndpoint];
    v63 = [v62 indentedDescription];
    [v3 appendFormat:@"\n\ttagScoringEndpoint: %@;", v63];

    v64 = [(FCNewsTabiConfiguration *)self tagSuggestionsEndpoint];
    v65 = [v64 indentedDescription];
    [v3 appendFormat:@"\n\ttagSuggestionsEndpoint: %@;", v65];

    v66 = [(FCNewsTabiConfiguration *)self unloadGraphOnBackgroundConfiguration];
    v67 = [v66 indentedDescription];
    [v3 appendFormat:@"\n\tunloadGraphOnBackgroundConfiguration: %@;", v67];

    v68 = [(FCNewsTabiConfiguration *)self recipeScoringEndpoint];
    v69 = [v68 indentedDescription];
    [v3 appendFormat:@"\n\trecipeScoringEndpoint: %@;", v69];

    v70 = [(FCNewsTabiConfiguration *)self recipeDiversificationEndpoint];
    v71 = [v70 indentedDescription];
    [v3 appendFormat:@"\n\trecipeDiversificationEndpoint: %@;", v71];

    v72 = [(FCNewsTabiConfiguration *)self recipeTagSuggestionsEndpoint];
    v73 = [v72 indentedDescription];
    [v3 appendFormat:@"\n\trecipeTagSuggestionsEndpoint: %@;", v73];

    v37 = [(FCNewsTabiConfiguration *)self smarterFetchEndpoint];
    v38 = @"\n\tsmarterFetchEndpoint: %@;";
  }

  v74 = [v37 indentedDescription];
  [v3 appendFormat:v38, v74];

  [v3 appendString:@"\n>"];

  return v3;
}

- (NSArray)packageAssetIDs
{
  packageAssetIDs = self->_packageAssetIDs;
  if (packageAssetIDs)
  {
    v3 = packageAssetIDs;
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__FCNewsTabiConfiguration_packageAssetIDs__block_invoke;
    v5[3] = &unk_1E7C3B578;
    v5[4] = self;
    v3 = __42__FCNewsTabiConfiguration_packageAssetIDs__block_invoke(v5);
  }

  return v3;
}

id __42__FCNewsTabiConfiguration_packageAssetIDs__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__FCNewsTabiConfiguration_packageAssetIDs__block_invoke_2;
  v4[3] = &unk_1E7C371F8;
  v4[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E695DFD8] fc_set:v4];
  v2 = [v1 allObjects];

  return v2;
}

void __42__FCNewsTabiConfiguration_packageAssetIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 adSegmentsEndpoint];
  v6 = [v5 packageAssetID];
  [v4 fc_safelyAddObject:v6];

  v7 = [*(a1 + 32) channelPickerSuggestionsEndpoint];
  v8 = [v7 packageAssetID];
  [v4 fc_safelyAddObject:v8];

  v9 = [*(a1 + 32) feedPersonalizationEndpoint];
  v10 = [v9 packageAssetID];
  [v4 fc_safelyAddObject:v10];

  v11 = [*(a1 + 32) myMagazinesEndpoint];
  v12 = [v11 packageAssetID];
  [v4 fc_safelyAddObject:v12];

  v13 = [*(a1 + 32) notificationScoringEndpoint];
  v14 = [v13 packageAssetID];
  [v4 fc_safelyAddObject:v14];

  v15 = [*(a1 + 32) personalizedPaywallsEndpoint];
  v16 = [v15 packageAssetID];
  [v4 fc_safelyAddObject:v16];

  v17 = [*(a1 + 32) recommendedIssuesEndpoint];
  v18 = [v17 packageAssetID];
  [v4 fc_safelyAddObject:v18];

  v19 = [*(a1 + 32) recommendedTagsEndpoint];
  v20 = [v19 packageAssetID];
  [v4 fc_safelyAddObject:v20];

  v21 = [*(a1 + 32) tagCohortMembershipEndpoint];
  v22 = [v21 packageAssetID];
  [v4 fc_safelyAddObject:v22];

  v23 = [*(a1 + 32) tagScoringEndpoint];
  v24 = [v23 packageAssetID];
  [v4 fc_safelyAddObject:v24];

  v25 = [*(a1 + 32) tagSuggestionsEndpoint];
  v26 = [v25 packageAssetID];
  [v4 fc_safelyAddObject:v26];

  v27 = [*(a1 + 32) recipeScoringEndpoint];
  v28 = [v27 packageAssetID];
  [v4 fc_safelyAddObject:v28];

  v29 = [*(a1 + 32) recipeDiversificationEndpoint];
  v30 = [v29 packageAssetID];
  [v4 fc_safelyAddObject:v30];

  v31 = [*(a1 + 32) recipeTagSuggestionsEndpoint];
  v32 = [v31 packageAssetID];
  [v4 fc_safelyAddObject:v32];

  v34 = [*(a1 + 32) smarterFetchEndpoint];
  v33 = [v34 packageAssetID];
  [v4 fc_safelyAddObject:v33];
}

- (FCNewsTabiConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNewsTabiConfiguration init]";
    v10 = 2080;
    v11 = "FCNewsTabiConfiguration.m";
    v12 = 1024;
    v13 = 86;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNewsTabiConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNewsTabiConfiguration)initWithDictionary:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v90.receiver = self;
    v90.super_class = FCNewsTabiConfiguration;
    v8 = [(FCNewsTabiConfiguration *)&v90 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_dictionary, a3);
      v85 = MEMORY[0x1E69E9820];
      v86 = 3221225472;
      v87 = __46__FCNewsTabiConfiguration_initWithDictionary___block_invoke_2;
      v88 = &unk_1E7C3F068;
      v10 = v7;
      v89 = v10;
      v11 = FCAppConfigurationIntegerValue(v10, @"mlComputeUnits", 0);
      if ((v11 - 1) >= 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      v9->_mlComputeUnits = v12;
      v13 = FCAppConfigurationStringValue(v10, @"version", @"UNSPECIFIED");
      version = v9->_version;
      v9->_version = v13;

      v15 = FCAppConfigurationArrayValueWithDefaultValue(v10, @"packageAssetIDs", 0);
      packageAssetIDs = v9->_packageAssetIDs;
      v9->_packageAssetIDs = v15;

      v82 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"adSegmentsConfiguration", 0);
      v17 = [[FCNewsTabiAdSegmentsEndpoint alloc] initWithDictionary:v82];
      adSegmentsEndpoint = v9->_adSegmentsEndpoint;
      v9->_adSegmentsEndpoint = v17;

      v81 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"channelPickerSuggestionsConfiguration", 0);
      v19 = [[FCNewsTabiChannelPickerSuggestionsEndpoint alloc] initWithDictionary:v81];
      channelPickerSuggestionsEndpoint = v9->_channelPickerSuggestionsEndpoint;
      v9->_channelPickerSuggestionsEndpoint = v19;

      v21 = [[FCNewsTabiChannelPickerSuggestionsConfiguration alloc] initWithDictionary:v81];
      channelPickerSuggestionsConfiguration = v9->_channelPickerSuggestionsConfiguration;
      v9->_channelPickerSuggestionsConfiguration = v21;

      v80 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"feedPersonalizationConfiguration", 0);
      v23 = [[FCNewsTabiFeedPersonalizationEndpoint alloc] initWithDictionary:v80];
      feedPersonalizationEndpoint = v9->_feedPersonalizationEndpoint;
      v9->_feedPersonalizationEndpoint = v23;

      v25 = [[FCNewsTabiFeedPersonalizationConfiguration alloc] initWithDictionary:v80];
      feedPersonalizationConfiguration = v9->_feedPersonalizationConfiguration;
      v9->_feedPersonalizationConfiguration = v25;

      v79 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"myMagazinesConfiguration", 0);
      v27 = [[FCNewsTabiMyMagazinesEndpoint alloc] initWithDictionary:v79];
      myMagazinesEndpoint = v9->_myMagazinesEndpoint;
      v9->_myMagazinesEndpoint = v27;

      v78 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"notificationScoringConfiguration", 0);
      v29 = [[FCNewsTabiNotificationScoringEndpoint alloc] initWithDictionary:v78];
      notificationScoringEndpoint = v9->_notificationScoringEndpoint;
      v9->_notificationScoringEndpoint = v29;

      v77 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"personalizedPaywallsConfiguration", 0);
      v31 = [[FCNewsTabiPersonalizedPaywallsEndpoint alloc] initWithDictionary:v77];
      personalizedPaywallsEndpoint = v9->_personalizedPaywallsEndpoint;
      v9->_personalizedPaywallsEndpoint = v31;

      v33 = [[FCNewsTabiPersonalizedPaywallsConfiguration alloc] initWithDictionary:v77];
      personalizedPaywallsConfiguration = v9->_personalizedPaywallsConfiguration;
      v9->_personalizedPaywallsConfiguration = v33;

      v76 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"recommendedIssuesConfiguration", 0);
      v35 = [[FCNewsTabiRecommendedIssuesEndpoint alloc] initWithDictionary:v76];
      recommendedIssuesEndpoint = v9->_recommendedIssuesEndpoint;
      v9->_recommendedIssuesEndpoint = v35;

      v37 = [[FCNewsTabiRecommendedIssuesConfiguration alloc] initWithDictionary:v76];
      recommendedIssuesConfiguration = v9->_recommendedIssuesConfiguration;
      v9->_recommendedIssuesConfiguration = v37;

      v75 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"recommendedTagsConfiguration", 0);
      v39 = [[FCNewsTabiRecommendedTagsEndpoint alloc] initWithDictionary:v75];
      recommendedTagsEndpoint = v9->_recommendedTagsEndpoint;
      v9->_recommendedTagsEndpoint = v39;

      v74 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"tagCohortMembershipConfiguration", 0);
      v41 = [[FCNewsTabiTagCohortMembershipEndpoint alloc] initWithDictionary:v74];
      tagCohortMembershipEndpoint = v9->_tagCohortMembershipEndpoint;
      v9->_tagCohortMembershipEndpoint = v41;

      v73 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"tagScoringConfiguration", 0);
      v43 = [[FCNewsTabiTagScoringEndpoint alloc] initWithDictionary:v73];
      tagScoringEndpoint = v9->_tagScoringEndpoint;
      v9->_tagScoringEndpoint = v43;

      v72 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"tagSuggestionsConfiguration", 0);
      v45 = [[FCNewsTabiTagSuggestionsEndpoint alloc] initWithDictionary:v72];
      tagSuggestionsEndpoint = v9->_tagSuggestionsEndpoint;
      v9->_tagSuggestionsEndpoint = v45;

      v71 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"unloadGraphOnBackgroundConfiguration", 0);
      v47 = [[FCNewsTabiUnloadGraphOnBackgroundConfiguration alloc] initWithDictionary:v71];
      unloadGraphOnBackgroundConfiguration = v9->_unloadGraphOnBackgroundConfiguration;
      v9->_unloadGraphOnBackgroundConfiguration = v47;

      v70 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"recipeScoringConfiguration", 0);
      v49 = [[FCNewsTabiRecipeScoringEndpoint alloc] initWithDictionary:v70];
      recipeScoringEndpoint = v9->_recipeScoringEndpoint;
      v9->_recipeScoringEndpoint = v49;

      v51 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"recipeDiversificationConfiguration", 0);
      v52 = [[FCNewsTabiRecipeDiversificationEndpoint alloc] initWithDictionary:v51];
      recipeDiversificationEndpoint = v9->_recipeDiversificationEndpoint;
      v9->_recipeDiversificationEndpoint = v52;

      v54 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"recipeTagSuggestionsConfiguration", 0);
      v55 = [[FCNewsTabiRecipeTagSuggestionsEndpoint alloc] initWithDictionary:v54];
      recipeTagSuggestionsEndpoint = v9->_recipeTagSuggestionsEndpoint;
      v9->_recipeTagSuggestionsEndpoint = v55;

      v57 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"smarterFetchConfiguration", 0);
      v58 = [[FCNewsTabiSmarterFetchEndpoint alloc] initWithDictionary:v57];
      smarterFetchEndpoint = v9->_smarterFetchEndpoint;
      v9->_smarterFetchEndpoint = v58;

      v60 = FCAppConfigurationDictionaryValueWithDefaultValue(v10, @"eventAggregationConfiguration", 0);
      v61 = [FCNewsTabiEventAggregationConfiguration alloc];
      v62 = v7;
      v63 = MEMORY[0x1E695DEC8];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __46__FCNewsTabiConfiguration_initWithDictionary___block_invoke_3;
      v83[3] = &unk_1E7C36D40;
      v64 = v9;
      v84 = v64;
      v65 = [v63 fc_array:v83];
      v66 = [(FCNewsTabiEventAggregationConfiguration *)v61 initWithDictionary:v60 outputs:v65];
      eventAggregationConfiguration = v64->_eventAggregationConfiguration;
      v64->_eventAggregationConfiguration = v66;

      v7 = v62;
    }

    self = v9;

    v68 = self;
  }

  else
  {
    v68 = 0;
  }

  return v68;
}

uint64_t __46__FCNewsTabiConfiguration_initWithDictionary___block_invoke_2(uint64_t a1)
{
  result = FCAppConfigurationIntegerValue(*(a1 + 32), @"mlComputeUnits", 0);
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

void __46__FCNewsTabiConfiguration_initWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  v5 = [v3 eventAggregationOutputs];
  [v4 fc_safelyAddObject:v5];

  v6 = [*(*(a1 + 32) + 96) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v6];

  v7 = [*(*(a1 + 32) + 104) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v7];

  v8 = [*(*(a1 + 32) + 112) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v8];

  v9 = [*(*(a1 + 32) + 120) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v9];

  v10 = [*(*(a1 + 32) + 128) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v10];

  v11 = [*(*(a1 + 32) + 136) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v11];

  v12 = [*(*(a1 + 32) + 144) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v12];

  v13 = [*(*(a1 + 32) + 152) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v13];

  v14 = [*(*(a1 + 32) + 160) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v14];

  v15 = [*(*(a1 + 32) + 168) eventAggregationOutputs];
  [v4 fc_safelyAddObject:v15];
}

- (FCNewsTabiChannelPickerSuggestionsConfiguration)channelPickerSuggestionsConfiguration
{
  v3 = [(FCNewsTabiConfiguration *)self channelPickerSuggestionsEndpoint];
  v4 = [v3 configuration];
  channelPickerSuggestionsConfiguration = v4;
  if (!v4)
  {
    channelPickerSuggestionsConfiguration = self->_channelPickerSuggestionsConfiguration;
  }

  v6 = channelPickerSuggestionsConfiguration;

  return channelPickerSuggestionsConfiguration;
}

- (FCNewsTabiFeedPersonalizationConfiguration)feedPersonalizationConfiguration
{
  v3 = [(FCNewsTabiConfiguration *)self feedPersonalizationEndpoint];
  v4 = [v3 configuration];
  feedPersonalizationConfiguration = v4;
  if (!v4)
  {
    feedPersonalizationConfiguration = self->_feedPersonalizationConfiguration;
  }

  v6 = feedPersonalizationConfiguration;

  return feedPersonalizationConfiguration;
}

- (FCNewsTabiMyMagazinesConfiguration)myMagazinesConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self myMagazinesEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiNotificationScoringConfiguration)notificationScoringConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self notificationScoringEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiPersonalizedPaywallsConfiguration)personalizedPaywallsConfiguration
{
  v3 = [(FCNewsTabiConfiguration *)self personalizedPaywallsEndpoint];
  v4 = [v3 configuration];
  personalizedPaywallsConfiguration = v4;
  if (!v4)
  {
    personalizedPaywallsConfiguration = self->_personalizedPaywallsConfiguration;
  }

  v6 = personalizedPaywallsConfiguration;

  return personalizedPaywallsConfiguration;
}

- (FCNewsTabiRecommendedIssuesConfiguration)recommendedIssuesConfiguration
{
  v3 = [(FCNewsTabiConfiguration *)self recommendedIssuesEndpoint];
  v4 = [v3 configuration];
  recommendedIssuesConfiguration = v4;
  if (!v4)
  {
    recommendedIssuesConfiguration = self->_recommendedIssuesConfiguration;
  }

  v6 = recommendedIssuesConfiguration;

  return recommendedIssuesConfiguration;
}

- (FCNewsTabiRecommendedTagsConfiguration)recommendedTagsConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self recommendedTagsEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiTagCohortMembershipConfiguration)tagCohortMembershipConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self tagCohortMembershipEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiTagScoringConfiguration)tagScoringConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self tagScoringEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiTagSuggestionsConfiguration)tagSuggestionsConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self tagSuggestionsEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiRecipeScoringConfiguration)recipeScoringConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self recipeScoringEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiRecipeDiversificationConfiguration)recipeDiversificationConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self recipeDiversificationEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiRecipeTagSuggestionsConfiguration)recipeTagSuggestionsConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self recipeTagSuggestionsEndpoint];
  v3 = [v2 configuration];

  return v3;
}

- (FCNewsTabiSmarterFetchConfiguration)smarterFetchConfiguration
{
  v2 = [(FCNewsTabiConfiguration *)self smarterFetchEndpoint];
  v3 = [v2 configuration];

  return v3;
}

@end