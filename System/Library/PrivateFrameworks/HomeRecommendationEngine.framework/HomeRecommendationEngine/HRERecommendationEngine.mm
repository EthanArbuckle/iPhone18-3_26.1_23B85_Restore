@interface HRERecommendationEngine
- (HRERecommendationEngine)init;
- (NSArray)templates;
- (id)_sourcesEnabledWithOptions:(unint64_t)options;
- (id)generateRecommendationsForServiceLikeItems:(id)items accessoryTypeGroup:(id)group inHome:(id)home options:(unint64_t)options;
- (void)setTemplates:(id)templates;
@end

@implementation HRERecommendationEngine

- (HRERecommendationEngine)init
{
  v12.receiver = self;
  v12.super_class = HRERecommendationEngine;
  v2 = [(HRERecommendationEngine *)&v12 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(HRERecommendationEngine *)v2 setRecommendationSources:array];

    v4 = +[HRETemplateRecommendationGenerator allAvailableTemplates];
    v5 = [[HRETemplateRecommendationGenerator alloc] initWithTemplates:v4];
    [(HRERecommendationEngine *)v2 setTemplateSource:v5];

    recommendationSources = [(HRERecommendationEngine *)v2 recommendationSources];
    templateSource = [(HRERecommendationEngine *)v2 templateSource];
    [recommendationSources addObject:templateSource];

    recommendationSources2 = [(HRERecommendationEngine *)v2 recommendationSources];
    v9 = objc_alloc_init(HREActionSetDerivingRecommendationGenerator);
    [recommendationSources2 addObject:v9];

    v10 = objc_alloc_init(HRERankConfidenceController);
    [(HRERecommendationEngine *)v2 setRankingController:v10];
  }

  return v2;
}

- (id)generateRecommendationsForServiceLikeItems:(id)items accessoryTypeGroup:(id)group inHome:(id)home options:(unint64_t)options
{
  v46 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  groupCopy = group;
  homeCopy = home;
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    name = [homeCopy name];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    *buf = 138413058;
    v39 = name;
    v40 = 2112;
    v41 = uniqueIdentifier;
    v42 = 2048;
    optionsCopy = options;
    v44 = 2112;
    v45 = itemsCopy;
    _os_log_impl(&dword_2543E2000, v13, OS_LOG_TYPE_DEFAULT, "Generating recommendations in home: <%@, %@>, options: %lu, serviceLikeItems: %@", buf, 0x2Au);
  }

  if ([homeCopy hf_currentUserIsRestrictedGuest])
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      currentUser = [homeCopy currentUser];
      hf_prettyDescription = [currentUser hf_prettyDescription];
      *buf = 136315394;
      v39 = "[HRERecommendationEngine generateRecommendationsForServiceLikeItems:accessoryTypeGroup:inHome:options:]";
      v40 = 2112;
      v41 = hf_prettyDescription;
      _os_log_impl(&dword_2543E2000, v16, OS_LOG_TYPE_DEFAULT, "(%s) Restricted guest should NOT get any recommendations. currentUser = %@", buf, 0x16u);
    }

    v19 = MEMORY[0x277D2C900];
    v20 = objc_opt_new();
    v21 = [v19 futureWithResult:v20];
  }

  else
  {
    v22 = [(HRERecommendationEngine *)self _sourcesEnabledWithOptions:options];
    recommendationSources = [(HRERecommendationEngine *)self recommendationSources];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke;
    v36[3] = &unk_279777098;
    v37 = v22;
    v20 = v22;
    [recommendationSources na_each:v36];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_6;
    v31[3] = &unk_2797770C0;
    v32 = homeCopy;
    v33 = itemsCopy;
    v34 = groupCopy;
    optionsCopy2 = options;
    v24 = [v20 na_map:v31];
    v25 = [MEMORY[0x277D2C900] combineAllFutures:v24];
    v26 = [v25 flatMap:&__block_literal_global_11];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_3;
    v30[3] = &unk_279777108;
    v30[4] = self;
    v21 = [v26 flatMap:v30];
    v27 = [v21 addCompletionBlock:&__block_literal_global_13];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

void __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2543E2000, v4, OS_LOG_TYPE_DEFAULT, "%@ is disabled", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

id __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v3 = MEMORY[0x277D2C900];
  v4 = [v2 na_setByFlattening];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

id __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 rankingController];
  v6 = [v5 rankRecommendationsFromSet:v4];

  v7 = [v2 futureWithResult:v6];

  return v7;
}

void __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2543E2000, v7, OS_LOG_TYPE_DEFAULT, "Generated recommendations:", &v13, 2u);
    }

    [v4 na_each:&__block_literal_global_17];
    v8 = HFLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    LOWORD(v13) = 0;
    v9 = "Finished generating recommendations";
    v10 = v8;
    v11 = 2;
    goto LABEL_9;
  }

  if (v5)
  {
    v8 = HFLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      goto LABEL_11;
    }

    v13 = 138412290;
    v14 = v6;
    v9 = "Failed to generate recommendations with error: %@";
    v10 = v8;
    v11 = 12;
LABEL_9:
    _os_log_impl(&dword_2543E2000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    goto LABEL_10;
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

void __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_14(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_2543E2000, v3, OS_LOG_TYPE_DEFAULT, "\t\t%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (NSArray)templates
{
  templateSource = [(HRERecommendationEngine *)self templateSource];
  templates = [templateSource templates];

  return templates;
}

- (void)setTemplates:(id)templates
{
  templatesCopy = templates;
  templateSource = [(HRERecommendationEngine *)self templateSource];
  [templateSource setTemplates:templatesCopy];
}

- (id)_sourcesEnabledWithOptions:(unint64_t)options
{
  recommendationSources = [(HRERecommendationEngine *)self recommendationSources];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HRERecommendationEngine__sourcesEnabledWithOptions___block_invoke;
  v7[3] = &__block_descriptor_40_e35_B16__0___HRERecommendationSource__8l;
  v7[4] = options;
  v5 = [recommendationSources na_filter:v7];

  return v5;
}

@end