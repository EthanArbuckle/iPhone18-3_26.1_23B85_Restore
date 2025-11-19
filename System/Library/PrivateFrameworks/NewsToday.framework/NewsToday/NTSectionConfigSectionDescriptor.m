@interface NTSectionConfigSectionDescriptor
- (NTSectionConfigSectionDescriptor)init;
- (NTSectionConfigSectionDescriptor)initWithSectionConfig:(id)a3 appConfiguration:(id)a4 topStoriesChannelID:(id)a5 hiddenFeedIDs:(id)a6 allowPaidBundleFeed:(BOOL)a7 todayData:(id)a8 supplementalFeedFilterOptions:(unint64_t)a9 groupingService:(id)a10;
- (id)assembleResultsWithCatchUpOperation:(id)a3;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3;
- (void)configureCatchUpOperationWithFetchRequest:(id)a3;
@end

@implementation NTSectionConfigSectionDescriptor

- (NTSectionConfigSectionDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTSectionConfigSectionDescriptor init]";
    v10 = 2080;
    v11 = "NTSectionConfigSectionDescriptor.m";
    v12 = 1024;
    v13 = 55;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTSectionConfigSectionDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTSectionConfigSectionDescriptor)initWithSectionConfig:(id)a3 appConfiguration:(id)a4 topStoriesChannelID:(id)a5 hiddenFeedIDs:(id)a6 allowPaidBundleFeed:(BOOL)a7 todayData:(id)a8 supplementalFeedFilterOptions:(unint64_t)a9 groupingService:(id)a10
{
  v11 = a7;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a10;
  if (!v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor initWithSectionConfig:appConfiguration:topStoriesChannelID:hiddenFeedIDs:allowPaidBundleFeed:todayData:supplementalFeedFilterOptions:groupingService:];
  }

  v108.receiver = self;
  v108.super_class = NTSectionConfigSectionDescriptor;
  v22 = [(NTSectionConfigSectionDescriptor *)&v108 init];
  if (v22)
  {
    v104 = v21;
    v107 = v20;
    v23 = [v16 identifier];
    v24 = [v23 copy];
    identifier = v22->_identifier;
    v22->_identifier = v24;

    v26 = [v16 subidentifier];
    v27 = [v26 copy];
    subidentifier = v22->_subidentifier;
    v22->_subidentifier = v27;

    v29 = [v16 personalizationFeatureID];
    v30 = [v29 copy];
    personalizationFeatureID = v22->_personalizationFeatureID;
    v22->_personalizationFeatureID = v30;

    v32 = [v16 name];
    v33 = [v32 copy];
    name = v22->_name;
    v22->_name = v33;

    v35 = [v16 compactName];
    v36 = [v35 copy];
    compactName = v22->_compactName;
    v22->_compactName = v36;

    v38 = [v16 referralBarName];
    v39 = [v38 copy];
    referralBarName = v22->_referralBarName;
    v22->_referralBarName = v39;

    v41 = [v16 nameColorLight];
    v42 = [v41 copy];
    nameColorLight = v22->_nameColorLight;
    v22->_nameColorLight = v42;

    v44 = [v16 nameColorDark];
    v45 = [v44 copy];
    nameColorDark = v22->_nameColorDark;
    v22->_nameColorDark = v45;

    v22->_cachedResultCutoffTime = [v16 cachedResultCutoffTime];
    v22->_fallbackOrder = [v16 fallbackOrder];
    v22->_minimumStoriesAllocation = [v16 minimumStoriesAllocation];
    v22->_maximumStoriesAllocation = [v16 maximumStoriesAllocation];
    v22->_readArticlesFilterMethod = [v16 readArticlesFilterMethod];
    v22->_seenArticlesFilterMethod = [v16 seenArticlesFilterMethod];
    v22->_seenArticlesMinimumTimeSinceFirstSeenToFilter = [v16 seenArticlesMinimumTimeSinceFirstSeenToFilter];
    v22->_supplementalIntraSectionFilterOptions = [v16 intraSectionFilteringOptions] | a9;
    v22->_supplementalInterSectionFilterOptions = [v16 interSectionFilteringOptions];
    v47 = [v16 groupActionTitle];
    actionTitle = v22->_actionTitle;
    v22->_actionTitle = v47;

    v49 = [v16 groupActionUrl];
    v105 = v18;
    v103 = v11;
    if (v49)
    {
      v50 = MEMORY[0x277CBEBC0];
      v51 = [v16 groupActionUrl];
      v52 = [v50 URLWithString:v51];
      actionURL = v22->_actionURL;
      v22->_actionURL = v52;
    }

    else
    {
      v51 = v22->_actionURL;
      v22->_actionURL = 0;
    }

    v22->_promotionCriterion = [v16 promotionCriterion];
    v54 = [v16 tagTodaySectionConfig];
    v55 = [v54 tagID];

    objc_storeStrong(&v22->_backingTagID, v55);
    v56 = [v16 groupNameActionUrl];
    if (v56)
    {
      v57 = MEMORY[0x277CBEBC0];
      v58 = [v16 groupNameActionUrl];
      v59 = [v57 URLWithString:v58];
    }

    else
    {
      v59 = 0;
    }

    v106 = v17;

    if (v55)
    {
      v60 = [MEMORY[0x277CBEBC0] fc_NewsURLForTagID:v55];
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = v60;
    }

    objc_storeStrong(&v22->_nameActionURL, v61);
    v62 = [v16 backgroundColorDark];
    backgroundColorDark = v22->_backgroundColorDark;
    v22->_backgroundColorDark = v62;

    v64 = [v16 backgroundColorLight];
    backgroundColorLight = v22->_backgroundColorLight;
    v22->_backgroundColorLight = v64;

    v22->_paywalledArticlesMaxCount = [v16 paywalledStoriesMaxCount];
    v66 = [v16 sectionType];
    v67 = 0;
    if (v66 > 3)
    {
      switch(v66)
      {
        case 4:
          v76 = [NTPersonalizedSectionFetchDescriptor alloc];
          v69 = [v16 personalizedTodaySectionConfig];
          v77 = v76;
          v20 = v107;
          v70 = [(NTPersonalizedSectionFetchDescriptor *)v77 initWithPersonalizedConfiguration:v69];
          goto LABEL_32;
        case 5:
          v81 = [NTItemsSectionFetchDescriptor alloc];
          v69 = [v16 itemsTodaySectionConfig];
          v82 = v81;
          v20 = v107;
          v70 = [(NTItemsSectionFetchDescriptor *)v82 initWithItemsConfiguration:v69];
          goto LABEL_32;
        case 6:
          v71 = [v20 purchasedTagIDs];
          v72 = v71;
          v73 = v19;
          if (v71)
          {
            v74 = v71;
          }

          else
          {
            v74 = objc_opt_new();
          }

          v69 = v74;

          v86 = [NTTagSectionFetchDescriptor alloc];
          v87 = [v16 tagTodaySectionConfig];
          v88 = v86;
          v20 = v107;
          v67 = [(NTTagSectionFetchDescriptor *)v88 initWithTagConfiguration:v87 appConfiguration:v106 purchasedTagIDs:v69 bundleSubscriptionProvider:v107];

          v19 = v73;
          goto LABEL_33;
      }
    }

    else
    {
      switch(v66)
      {
        case 0:
          v75 = [NTArticleListSectionFetchDescriptor alloc];
          v69 = [v16 articleListTodaySectionConfig];
          v70 = [(NTArticleListSectionFetchDescriptor *)v75 initWithArticleListConfiguration:v69];
          goto LABEL_32;
        case 1:
          v69 = [v20 localNewsTagID];
          v78 = [v20 mutedTagIDs];
          v79 = v78;
          if (v78)
          {
            v80 = v78;
          }

          else
          {
            v80 = objc_opt_new();
          }

          v101 = v80;

          v89 = [v20 purchasedTagIDs];
          v90 = v89;
          if (v89)
          {
            v91 = v89;
          }

          else
          {
            v91 = objc_opt_new();
          }

          v100 = v91;

          v92 = [v20 rankedAllSubscribedTagIDs];
          v93 = v92;
          if (v92)
          {
            v94 = v92;
          }

          else
          {
            v94 = objc_opt_new();
          }

          v95 = v94;
          v99 = v94;

          v98 = [NTForYouSectionFetchDescriptor alloc];
          v97 = [v16 forYouTodaySectionConfig];
          [MEMORY[0x277CBEB98] setWithArray:v19];
          v96 = v102 = v19;
          v67 = [(NTForYouSectionFetchDescriptor *)v98 initWithForYouConfiguration:v97 appConfiguration:v106 topStoriesChannelID:v105 localNewsTagID:v69 hiddenFeedIDs:v96 allowPaidBundleFeed:v103 mutedTagIDs:v101 purchasedTagIDs:v100 rankedAllSubscribedTagIDs:v95 bundleSubscriptionProvider:v20 groupingService:v104];

          v19 = v102;
          goto LABEL_33;
        case 3:
          v68 = [NTArticleIDsSectionFetchDescriptor alloc];
          v69 = [v16 articleIDsTodaySectionConfig];
          v70 = [(NTArticleIDsSectionFetchDescriptor *)v68 initWithArticleIDsConfiguration:v69];
LABEL_32:
          v67 = v70;
LABEL_33:

          break;
      }
    }

    v83 = [(NTForYouSectionFetchDescriptor *)v67 copy];
    fetchDescriptor = v22->_fetchDescriptor;
    v22->_fetchDescriptor = v83;

    v18 = v105;
    v17 = v106;
    v21 = v104;
  }

  return v22;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor configureCatchUpOperationWithFetchRequest:];
  }

  v5 = [(NTSectionConfigSectionDescriptor *)self fetchDescriptor];
  [v5 configureCatchUpOperationWithFetchRequest:v4];
}

- (id)assembleResultsWithCatchUpOperation:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor assembleResultsWithCatchUpOperation:];
  }

  v5 = [(NTSectionConfigSectionDescriptor *)self fetchDescriptor];
  v6 = [v5 assembleResultsWithCatchUpOperation:v4];

  return v6;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor incrementalSortTransformationWithFeedPersonalizer:];
  }

  v5 = [(NTSectionConfigSectionDescriptor *)self fetchDescriptor];
  v6 = [v5 incrementalSortTransformationWithFeedPersonalizer:v4];

  return v6;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor incrementalLimitTransformationWithFeedPersonalizer:limit:priorFeedItems:];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor incrementalLimitTransformationWithFeedPersonalizer:limit:priorFeedItems:];
  }

LABEL_6:
  v10 = [(NTSectionConfigSectionDescriptor *)self fetchDescriptor];
  v11 = [v10 incrementalLimitTransformationWithFeedPersonalizer:v8 limit:a4 priorFeedItems:v9];

  return v11;
}

- (void)initWithSectionConfig:appConfiguration:topStoriesChannelID:hiddenFeedIDs:allowPaidBundleFeed:todayData:supplementalFeedFilterOptions:groupingService:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionConfig", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)configureCatchUpOperationWithFetchRequest:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "catchUpOperation", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)assembleResultsWithCatchUpOperation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "catchUpOperation", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)incrementalSortTransformationWithFeedPersonalizer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedPersonalizer", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)incrementalLimitTransformationWithFeedPersonalizer:limit:priorFeedItems:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedPersonalizer", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)incrementalLimitTransformationWithFeedPersonalizer:limit:priorFeedItems:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "priorFeedItems", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end