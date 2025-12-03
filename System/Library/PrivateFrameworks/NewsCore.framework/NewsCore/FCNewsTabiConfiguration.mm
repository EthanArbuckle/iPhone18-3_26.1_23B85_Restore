@interface FCNewsTabiConfiguration
- (FCNewsTabiChannelPickerSuggestionsConfiguration)channelPickerSuggestionsConfiguration;
- (FCNewsTabiConfiguration)init;
- (FCNewsTabiConfiguration)initWithDictionary:(id)dictionary;
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
    channelPickerSuggestionsConfiguration = [(FCNewsTabiConfiguration *)self channelPickerSuggestionsConfiguration];
    indentedDescription = [channelPickerSuggestionsConfiguration indentedDescription];
    [v3 appendFormat:@"\n\tchannelPickerSuggestionsConfiguration: %@;", indentedDescription];

    eventAggregationConfiguration = [(FCNewsTabiConfiguration *)self eventAggregationConfiguration];
    indentedDescription2 = [eventAggregationConfiguration indentedDescription];
    [v3 appendFormat:@"\n\teventAggregationConfiguration: %@;", indentedDescription2];

    feedPersonalizationConfiguration = [(FCNewsTabiConfiguration *)self feedPersonalizationConfiguration];
    indentedDescription3 = [feedPersonalizationConfiguration indentedDescription];
    [v3 appendFormat:@"\n\tfeedPersonalizationConfiguration: %@;", indentedDescription3];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCNewsTabiConfiguration mlComputeUnits](self, "mlComputeUnits")}];
    [v3 appendFormat:@"\n\tmlComputeUnits: %@;", v10];

    myMagazinesConfiguration = [(FCNewsTabiConfiguration *)self myMagazinesConfiguration];
    indentedDescription4 = [myMagazinesConfiguration indentedDescription];
    [v3 appendFormat:@"\n\tmyMagazinesConfiguration: %@;", indentedDescription4];

    notificationScoringConfiguration = [(FCNewsTabiConfiguration *)self notificationScoringConfiguration];
    indentedDescription5 = [notificationScoringConfiguration indentedDescription];
    [v3 appendFormat:@"\n\tnotificationScoringConfiguration: %@;", indentedDescription5];

    packageAssetIDs = [(FCNewsTabiConfiguration *)self packageAssetIDs];
    indentedDescription6 = [packageAssetIDs indentedDescription];
    [v3 appendFormat:@"\n\tpackageAssetIDs: %@;", indentedDescription6];

    personalizedPaywallsConfiguration = [(FCNewsTabiConfiguration *)self personalizedPaywallsConfiguration];
    indentedDescription7 = [personalizedPaywallsConfiguration indentedDescription];
    [v3 appendFormat:@"\n\tpersonalizedPaywallsConfiguration: %@;", indentedDescription7];

    recommendedTagsConfiguration = [(FCNewsTabiConfiguration *)self recommendedTagsConfiguration];
    indentedDescription8 = [recommendedTagsConfiguration indentedDescription];
    [v3 appendFormat:@"\n\trecommendedTagsConfiguration: %@;", indentedDescription8];

    recommendedIssuesConfiguration = [(FCNewsTabiConfiguration *)self recommendedIssuesConfiguration];
    indentedDescription9 = [recommendedIssuesConfiguration indentedDescription];
    [v3 appendFormat:@"\n\trecommendedIssuesConfiguration: %@;", indentedDescription9];

    tagCohortMembershipConfiguration = [(FCNewsTabiConfiguration *)self tagCohortMembershipConfiguration];
    indentedDescription10 = [tagCohortMembershipConfiguration indentedDescription];
    [v3 appendFormat:@"\n\ttagCohortMembershipConfiguration: %@;", indentedDescription10];

    tagScoringConfiguration = [(FCNewsTabiConfiguration *)self tagScoringConfiguration];
    indentedDescription11 = [tagScoringConfiguration indentedDescription];
    [v3 appendFormat:@"\n\ttagScoringConfiguration: %@;", indentedDescription11];

    tagSuggestionsConfiguration = [(FCNewsTabiConfiguration *)self tagSuggestionsConfiguration];
    indentedDescription12 = [tagSuggestionsConfiguration indentedDescription];
    [v3 appendFormat:@"\n\ttagSuggestionsConfiguration: %@;", indentedDescription12];

    unloadGraphOnBackgroundConfiguration = [(FCNewsTabiConfiguration *)self unloadGraphOnBackgroundConfiguration];
    indentedDescription13 = [unloadGraphOnBackgroundConfiguration indentedDescription];
    [v3 appendFormat:@"\n\tunloadGraphOnBackgroundConfiguration: %@;", indentedDescription13];

    recipeScoringConfiguration = [(FCNewsTabiConfiguration *)self recipeScoringConfiguration];
    indentedDescription14 = [recipeScoringConfiguration indentedDescription];
    [v3 appendFormat:@"\n\trecipeScoringConfiguration: %@;", indentedDescription14];

    recipeDiversificationConfiguration = [(FCNewsTabiConfiguration *)self recipeDiversificationConfiguration];
    indentedDescription15 = [recipeDiversificationConfiguration indentedDescription];
    [v3 appendFormat:@"\n\trecipeDiversificationConfiguration: %@;", indentedDescription15];

    recipeTagSuggestionsConfiguration = [(FCNewsTabiConfiguration *)self recipeTagSuggestionsConfiguration];
    indentedDescription16 = [recipeTagSuggestionsConfiguration indentedDescription];
    [v3 appendFormat:@"\n\trecipeTagSuggestionsConfiguration: %@;", indentedDescription16];

    smarterFetchConfiguration = [(FCNewsTabiConfiguration *)self smarterFetchConfiguration];
    v38 = @"\n\tsmarterFetchConfiguration: %@;";
  }

  else
  {
    adSegmentsEndpoint = [(FCNewsTabiConfiguration *)self adSegmentsEndpoint];
    indentedDescription17 = [adSegmentsEndpoint indentedDescription];
    [v3 appendFormat:@"\n\tadSegmentsEndpoint: %@;", indentedDescription17];

    channelPickerSuggestionsEndpoint = [(FCNewsTabiConfiguration *)self channelPickerSuggestionsEndpoint];
    indentedDescription18 = [channelPickerSuggestionsEndpoint indentedDescription];
    [v3 appendFormat:@"\n\tchannelPickerSuggestionsEndpoint: %@;", indentedDescription18];

    eventAggregationConfiguration2 = [(FCNewsTabiConfiguration *)self eventAggregationConfiguration];
    indentedDescription19 = [eventAggregationConfiguration2 indentedDescription];
    [v3 appendFormat:@"\n\teventAggregationConfiguration: %@;", indentedDescription19];

    feedPersonalizationEndpoint = [(FCNewsTabiConfiguration *)self feedPersonalizationEndpoint];
    indentedDescription20 = [feedPersonalizationEndpoint indentedDescription];
    [v3 appendFormat:@"\n\tfeedPersonalizationEndpoint: %@;", indentedDescription20];

    v47 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FCNewsTabiConfiguration mlComputeUnits](self, "mlComputeUnits")}];
    [v3 appendFormat:@"\n\tmlComputeUnits: %@;", v47];

    myMagazinesEndpoint = [(FCNewsTabiConfiguration *)self myMagazinesEndpoint];
    indentedDescription21 = [myMagazinesEndpoint indentedDescription];
    [v3 appendFormat:@"\n\tmyMagazinesEndpoint: %@;", indentedDescription21];

    notificationScoringEndpoint = [(FCNewsTabiConfiguration *)self notificationScoringEndpoint];
    indentedDescription22 = [notificationScoringEndpoint indentedDescription];
    [v3 appendFormat:@"\n\tnotificationScoringEndpoint: %@;", indentedDescription22];

    packageAssetIDs2 = [(FCNewsTabiConfiguration *)self packageAssetIDs];
    indentedDescription23 = [packageAssetIDs2 indentedDescription];
    [v3 appendFormat:@"\n\tpackageAssetIDs: %@;", indentedDescription23];

    personalizedPaywallsEndpoint = [(FCNewsTabiConfiguration *)self personalizedPaywallsEndpoint];
    indentedDescription24 = [personalizedPaywallsEndpoint indentedDescription];
    [v3 appendFormat:@"\n\tpersonalizedPaywallsEndpoint: %@;", indentedDescription24];

    recommendedIssuesEndpoint = [(FCNewsTabiConfiguration *)self recommendedIssuesEndpoint];
    indentedDescription25 = [recommendedIssuesEndpoint indentedDescription];
    [v3 appendFormat:@"\n\trecommendedIssuesEndpoint: %@;", indentedDescription25];

    recommendedTagsEndpoint = [(FCNewsTabiConfiguration *)self recommendedTagsEndpoint];
    indentedDescription26 = [recommendedTagsEndpoint indentedDescription];
    [v3 appendFormat:@"\n\trecommendedTagsEndpoint: %@;", indentedDescription26];

    tagCohortMembershipEndpoint = [(FCNewsTabiConfiguration *)self tagCohortMembershipEndpoint];
    indentedDescription27 = [tagCohortMembershipEndpoint indentedDescription];
    [v3 appendFormat:@"\n\ttagCohortMembershipEndpoint: %@;", indentedDescription27];

    tagScoringEndpoint = [(FCNewsTabiConfiguration *)self tagScoringEndpoint];
    indentedDescription28 = [tagScoringEndpoint indentedDescription];
    [v3 appendFormat:@"\n\ttagScoringEndpoint: %@;", indentedDescription28];

    tagSuggestionsEndpoint = [(FCNewsTabiConfiguration *)self tagSuggestionsEndpoint];
    indentedDescription29 = [tagSuggestionsEndpoint indentedDescription];
    [v3 appendFormat:@"\n\ttagSuggestionsEndpoint: %@;", indentedDescription29];

    unloadGraphOnBackgroundConfiguration2 = [(FCNewsTabiConfiguration *)self unloadGraphOnBackgroundConfiguration];
    indentedDescription30 = [unloadGraphOnBackgroundConfiguration2 indentedDescription];
    [v3 appendFormat:@"\n\tunloadGraphOnBackgroundConfiguration: %@;", indentedDescription30];

    recipeScoringEndpoint = [(FCNewsTabiConfiguration *)self recipeScoringEndpoint];
    indentedDescription31 = [recipeScoringEndpoint indentedDescription];
    [v3 appendFormat:@"\n\trecipeScoringEndpoint: %@;", indentedDescription31];

    recipeDiversificationEndpoint = [(FCNewsTabiConfiguration *)self recipeDiversificationEndpoint];
    indentedDescription32 = [recipeDiversificationEndpoint indentedDescription];
    [v3 appendFormat:@"\n\trecipeDiversificationEndpoint: %@;", indentedDescription32];

    recipeTagSuggestionsEndpoint = [(FCNewsTabiConfiguration *)self recipeTagSuggestionsEndpoint];
    indentedDescription33 = [recipeTagSuggestionsEndpoint indentedDescription];
    [v3 appendFormat:@"\n\trecipeTagSuggestionsEndpoint: %@;", indentedDescription33];

    smarterFetchConfiguration = [(FCNewsTabiConfiguration *)self smarterFetchEndpoint];
    v38 = @"\n\tsmarterFetchEndpoint: %@;";
  }

  indentedDescription34 = [smarterFetchConfiguration indentedDescription];
  [v3 appendFormat:v38, indentedDescription34];

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

- (FCNewsTabiConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v7 = dictionaryCopy;
    v90.receiver = self;
    v90.super_class = FCNewsTabiConfiguration;
    v8 = [(FCNewsTabiConfiguration *)&v90 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_dictionary, dictionary);
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  channelPickerSuggestionsEndpoint = [(FCNewsTabiConfiguration *)self channelPickerSuggestionsEndpoint];
  configuration = [channelPickerSuggestionsEndpoint configuration];
  channelPickerSuggestionsConfiguration = configuration;
  if (!configuration)
  {
    channelPickerSuggestionsConfiguration = self->_channelPickerSuggestionsConfiguration;
  }

  v6 = channelPickerSuggestionsConfiguration;

  return channelPickerSuggestionsConfiguration;
}

- (FCNewsTabiFeedPersonalizationConfiguration)feedPersonalizationConfiguration
{
  feedPersonalizationEndpoint = [(FCNewsTabiConfiguration *)self feedPersonalizationEndpoint];
  configuration = [feedPersonalizationEndpoint configuration];
  feedPersonalizationConfiguration = configuration;
  if (!configuration)
  {
    feedPersonalizationConfiguration = self->_feedPersonalizationConfiguration;
  }

  v6 = feedPersonalizationConfiguration;

  return feedPersonalizationConfiguration;
}

- (FCNewsTabiMyMagazinesConfiguration)myMagazinesConfiguration
{
  myMagazinesEndpoint = [(FCNewsTabiConfiguration *)self myMagazinesEndpoint];
  configuration = [myMagazinesEndpoint configuration];

  return configuration;
}

- (FCNewsTabiNotificationScoringConfiguration)notificationScoringConfiguration
{
  notificationScoringEndpoint = [(FCNewsTabiConfiguration *)self notificationScoringEndpoint];
  configuration = [notificationScoringEndpoint configuration];

  return configuration;
}

- (FCNewsTabiPersonalizedPaywallsConfiguration)personalizedPaywallsConfiguration
{
  personalizedPaywallsEndpoint = [(FCNewsTabiConfiguration *)self personalizedPaywallsEndpoint];
  configuration = [personalizedPaywallsEndpoint configuration];
  personalizedPaywallsConfiguration = configuration;
  if (!configuration)
  {
    personalizedPaywallsConfiguration = self->_personalizedPaywallsConfiguration;
  }

  v6 = personalizedPaywallsConfiguration;

  return personalizedPaywallsConfiguration;
}

- (FCNewsTabiRecommendedIssuesConfiguration)recommendedIssuesConfiguration
{
  recommendedIssuesEndpoint = [(FCNewsTabiConfiguration *)self recommendedIssuesEndpoint];
  configuration = [recommendedIssuesEndpoint configuration];
  recommendedIssuesConfiguration = configuration;
  if (!configuration)
  {
    recommendedIssuesConfiguration = self->_recommendedIssuesConfiguration;
  }

  v6 = recommendedIssuesConfiguration;

  return recommendedIssuesConfiguration;
}

- (FCNewsTabiRecommendedTagsConfiguration)recommendedTagsConfiguration
{
  recommendedTagsEndpoint = [(FCNewsTabiConfiguration *)self recommendedTagsEndpoint];
  configuration = [recommendedTagsEndpoint configuration];

  return configuration;
}

- (FCNewsTabiTagCohortMembershipConfiguration)tagCohortMembershipConfiguration
{
  tagCohortMembershipEndpoint = [(FCNewsTabiConfiguration *)self tagCohortMembershipEndpoint];
  configuration = [tagCohortMembershipEndpoint configuration];

  return configuration;
}

- (FCNewsTabiTagScoringConfiguration)tagScoringConfiguration
{
  tagScoringEndpoint = [(FCNewsTabiConfiguration *)self tagScoringEndpoint];
  configuration = [tagScoringEndpoint configuration];

  return configuration;
}

- (FCNewsTabiTagSuggestionsConfiguration)tagSuggestionsConfiguration
{
  tagSuggestionsEndpoint = [(FCNewsTabiConfiguration *)self tagSuggestionsEndpoint];
  configuration = [tagSuggestionsEndpoint configuration];

  return configuration;
}

- (FCNewsTabiRecipeScoringConfiguration)recipeScoringConfiguration
{
  recipeScoringEndpoint = [(FCNewsTabiConfiguration *)self recipeScoringEndpoint];
  configuration = [recipeScoringEndpoint configuration];

  return configuration;
}

- (FCNewsTabiRecipeDiversificationConfiguration)recipeDiversificationConfiguration
{
  recipeDiversificationEndpoint = [(FCNewsTabiConfiguration *)self recipeDiversificationEndpoint];
  configuration = [recipeDiversificationEndpoint configuration];

  return configuration;
}

- (FCNewsTabiRecipeTagSuggestionsConfiguration)recipeTagSuggestionsConfiguration
{
  recipeTagSuggestionsEndpoint = [(FCNewsTabiConfiguration *)self recipeTagSuggestionsEndpoint];
  configuration = [recipeTagSuggestionsEndpoint configuration];

  return configuration;
}

- (FCNewsTabiSmarterFetchConfiguration)smarterFetchConfiguration
{
  smarterFetchEndpoint = [(FCNewsTabiConfiguration *)self smarterFetchEndpoint];
  configuration = [smarterFetchEndpoint configuration];

  return configuration;
}

@end