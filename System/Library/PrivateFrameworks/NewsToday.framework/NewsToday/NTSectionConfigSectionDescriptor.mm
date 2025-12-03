@interface NTSectionConfigSectionDescriptor
- (NTSectionConfigSectionDescriptor)init;
- (NTSectionConfigSectionDescriptor)initWithSectionConfig:(id)config appConfiguration:(id)configuration topStoriesChannelID:(id)d hiddenFeedIDs:(id)ds allowPaidBundleFeed:(BOOL)feed todayData:(id)data supplementalFeedFilterOptions:(unint64_t)options groupingService:(id)self0;
- (id)assembleResultsWithCatchUpOperation:(id)operation;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer;
- (void)configureCatchUpOperationWithFetchRequest:(id)request;
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

- (NTSectionConfigSectionDescriptor)initWithSectionConfig:(id)config appConfiguration:(id)configuration topStoriesChannelID:(id)d hiddenFeedIDs:(id)ds allowPaidBundleFeed:(BOOL)feed todayData:(id)data supplementalFeedFilterOptions:(unint64_t)options groupingService:(id)self0
{
  feedCopy = feed;
  configCopy = config;
  configurationCopy = configuration;
  dCopy = d;
  dsCopy = ds;
  dataCopy = data;
  serviceCopy = service;
  if (!configCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor initWithSectionConfig:appConfiguration:topStoriesChannelID:hiddenFeedIDs:allowPaidBundleFeed:todayData:supplementalFeedFilterOptions:groupingService:];
  }

  v108.receiver = self;
  v108.super_class = NTSectionConfigSectionDescriptor;
  v22 = [(NTSectionConfigSectionDescriptor *)&v108 init];
  if (v22)
  {
    v104 = serviceCopy;
    v107 = dataCopy;
    identifier = [configCopy identifier];
    v24 = [identifier copy];
    identifier = v22->_identifier;
    v22->_identifier = v24;

    subidentifier = [configCopy subidentifier];
    v27 = [subidentifier copy];
    subidentifier = v22->_subidentifier;
    v22->_subidentifier = v27;

    personalizationFeatureID = [configCopy personalizationFeatureID];
    v30 = [personalizationFeatureID copy];
    personalizationFeatureID = v22->_personalizationFeatureID;
    v22->_personalizationFeatureID = v30;

    name = [configCopy name];
    v33 = [name copy];
    name = v22->_name;
    v22->_name = v33;

    compactName = [configCopy compactName];
    v36 = [compactName copy];
    compactName = v22->_compactName;
    v22->_compactName = v36;

    referralBarName = [configCopy referralBarName];
    v39 = [referralBarName copy];
    referralBarName = v22->_referralBarName;
    v22->_referralBarName = v39;

    nameColorLight = [configCopy nameColorLight];
    v42 = [nameColorLight copy];
    nameColorLight = v22->_nameColorLight;
    v22->_nameColorLight = v42;

    nameColorDark = [configCopy nameColorDark];
    v45 = [nameColorDark copy];
    nameColorDark = v22->_nameColorDark;
    v22->_nameColorDark = v45;

    v22->_cachedResultCutoffTime = [configCopy cachedResultCutoffTime];
    v22->_fallbackOrder = [configCopy fallbackOrder];
    v22->_minimumStoriesAllocation = [configCopy minimumStoriesAllocation];
    v22->_maximumStoriesAllocation = [configCopy maximumStoriesAllocation];
    v22->_readArticlesFilterMethod = [configCopy readArticlesFilterMethod];
    v22->_seenArticlesFilterMethod = [configCopy seenArticlesFilterMethod];
    v22->_seenArticlesMinimumTimeSinceFirstSeenToFilter = [configCopy seenArticlesMinimumTimeSinceFirstSeenToFilter];
    v22->_supplementalIntraSectionFilterOptions = [configCopy intraSectionFilteringOptions] | options;
    v22->_supplementalInterSectionFilterOptions = [configCopy interSectionFilteringOptions];
    groupActionTitle = [configCopy groupActionTitle];
    actionTitle = v22->_actionTitle;
    v22->_actionTitle = groupActionTitle;

    groupActionUrl = [configCopy groupActionUrl];
    v105 = dCopy;
    v103 = feedCopy;
    if (groupActionUrl)
    {
      v50 = MEMORY[0x277CBEBC0];
      groupActionUrl2 = [configCopy groupActionUrl];
      v52 = [v50 URLWithString:groupActionUrl2];
      actionURL = v22->_actionURL;
      v22->_actionURL = v52;
    }

    else
    {
      groupActionUrl2 = v22->_actionURL;
      v22->_actionURL = 0;
    }

    v22->_promotionCriterion = [configCopy promotionCriterion];
    tagTodaySectionConfig = [configCopy tagTodaySectionConfig];
    tagID = [tagTodaySectionConfig tagID];

    objc_storeStrong(&v22->_backingTagID, tagID);
    groupNameActionUrl = [configCopy groupNameActionUrl];
    if (groupNameActionUrl)
    {
      v57 = MEMORY[0x277CBEBC0];
      groupNameActionUrl2 = [configCopy groupNameActionUrl];
      v59 = [v57 URLWithString:groupNameActionUrl2];
    }

    else
    {
      v59 = 0;
    }

    v106 = configurationCopy;

    if (tagID)
    {
      v60 = [MEMORY[0x277CBEBC0] fc_NewsURLForTagID:tagID];
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
    backgroundColorDark = [configCopy backgroundColorDark];
    backgroundColorDark = v22->_backgroundColorDark;
    v22->_backgroundColorDark = backgroundColorDark;

    backgroundColorLight = [configCopy backgroundColorLight];
    backgroundColorLight = v22->_backgroundColorLight;
    v22->_backgroundColorLight = backgroundColorLight;

    v22->_paywalledArticlesMaxCount = [configCopy paywalledStoriesMaxCount];
    sectionType = [configCopy sectionType];
    v67 = 0;
    if (sectionType > 3)
    {
      switch(sectionType)
      {
        case 4:
          v76 = [NTPersonalizedSectionFetchDescriptor alloc];
          personalizedTodaySectionConfig = [configCopy personalizedTodaySectionConfig];
          v77 = v76;
          dataCopy = v107;
          v70 = [(NTPersonalizedSectionFetchDescriptor *)v77 initWithPersonalizedConfiguration:personalizedTodaySectionConfig];
          goto LABEL_32;
        case 5:
          v81 = [NTItemsSectionFetchDescriptor alloc];
          personalizedTodaySectionConfig = [configCopy itemsTodaySectionConfig];
          v82 = v81;
          dataCopy = v107;
          v70 = [(NTItemsSectionFetchDescriptor *)v82 initWithItemsConfiguration:personalizedTodaySectionConfig];
          goto LABEL_32;
        case 6:
          purchasedTagIDs = [dataCopy purchasedTagIDs];
          v72 = purchasedTagIDs;
          v73 = dsCopy;
          if (purchasedTagIDs)
          {
            v74 = purchasedTagIDs;
          }

          else
          {
            v74 = objc_opt_new();
          }

          personalizedTodaySectionConfig = v74;

          v86 = [NTTagSectionFetchDescriptor alloc];
          tagTodaySectionConfig2 = [configCopy tagTodaySectionConfig];
          v88 = v86;
          dataCopy = v107;
          v67 = [(NTTagSectionFetchDescriptor *)v88 initWithTagConfiguration:tagTodaySectionConfig2 appConfiguration:v106 purchasedTagIDs:personalizedTodaySectionConfig bundleSubscriptionProvider:v107];

          dsCopy = v73;
          goto LABEL_33;
      }
    }

    else
    {
      switch(sectionType)
      {
        case 0:
          v75 = [NTArticleListSectionFetchDescriptor alloc];
          personalizedTodaySectionConfig = [configCopy articleListTodaySectionConfig];
          v70 = [(NTArticleListSectionFetchDescriptor *)v75 initWithArticleListConfiguration:personalizedTodaySectionConfig];
          goto LABEL_32;
        case 1:
          personalizedTodaySectionConfig = [dataCopy localNewsTagID];
          mutedTagIDs = [dataCopy mutedTagIDs];
          v79 = mutedTagIDs;
          if (mutedTagIDs)
          {
            v80 = mutedTagIDs;
          }

          else
          {
            v80 = objc_opt_new();
          }

          v101 = v80;

          purchasedTagIDs2 = [dataCopy purchasedTagIDs];
          v90 = purchasedTagIDs2;
          if (purchasedTagIDs2)
          {
            v91 = purchasedTagIDs2;
          }

          else
          {
            v91 = objc_opt_new();
          }

          v100 = v91;

          rankedAllSubscribedTagIDs = [dataCopy rankedAllSubscribedTagIDs];
          v93 = rankedAllSubscribedTagIDs;
          if (rankedAllSubscribedTagIDs)
          {
            v94 = rankedAllSubscribedTagIDs;
          }

          else
          {
            v94 = objc_opt_new();
          }

          v95 = v94;
          v99 = v94;

          v98 = [NTForYouSectionFetchDescriptor alloc];
          forYouTodaySectionConfig = [configCopy forYouTodaySectionConfig];
          [MEMORY[0x277CBEB98] setWithArray:dsCopy];
          v96 = v102 = dsCopy;
          v67 = [(NTForYouSectionFetchDescriptor *)v98 initWithForYouConfiguration:forYouTodaySectionConfig appConfiguration:v106 topStoriesChannelID:v105 localNewsTagID:personalizedTodaySectionConfig hiddenFeedIDs:v96 allowPaidBundleFeed:v103 mutedTagIDs:v101 purchasedTagIDs:v100 rankedAllSubscribedTagIDs:v95 bundleSubscriptionProvider:dataCopy groupingService:v104];

          dsCopy = v102;
          goto LABEL_33;
        case 3:
          v68 = [NTArticleIDsSectionFetchDescriptor alloc];
          personalizedTodaySectionConfig = [configCopy articleIDsTodaySectionConfig];
          v70 = [(NTArticleIDsSectionFetchDescriptor *)v68 initWithArticleIDsConfiguration:personalizedTodaySectionConfig];
LABEL_32:
          v67 = v70;
LABEL_33:

          break;
      }
    }

    v83 = [(NTForYouSectionFetchDescriptor *)v67 copy];
    fetchDescriptor = v22->_fetchDescriptor;
    v22->_fetchDescriptor = v83;

    dCopy = v105;
    configurationCopy = v106;
    serviceCopy = v104;
  }

  return v22;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor configureCatchUpOperationWithFetchRequest:];
  }

  fetchDescriptor = [(NTSectionConfigSectionDescriptor *)self fetchDescriptor];
  [fetchDescriptor configureCatchUpOperationWithFetchRequest:requestCopy];
}

- (id)assembleResultsWithCatchUpOperation:(id)operation
{
  operationCopy = operation;
  if (!operationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor assembleResultsWithCatchUpOperation:];
  }

  fetchDescriptor = [(NTSectionConfigSectionDescriptor *)self fetchDescriptor];
  v6 = [fetchDescriptor assembleResultsWithCatchUpOperation:operationCopy];

  return v6;
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer
{
  personalizerCopy = personalizer;
  if (!personalizerCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor incrementalSortTransformationWithFeedPersonalizer:];
  }

  fetchDescriptor = [(NTSectionConfigSectionDescriptor *)self fetchDescriptor];
  v6 = [fetchDescriptor incrementalSortTransformationWithFeedPersonalizer:personalizerCopy];

  return v6;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items
{
  personalizerCopy = personalizer;
  itemsCopy = items;
  if (!personalizerCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor incrementalLimitTransformationWithFeedPersonalizer:limit:priorFeedItems:];
    if (itemsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (itemsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionConfigSectionDescriptor incrementalLimitTransformationWithFeedPersonalizer:limit:priorFeedItems:];
  }

LABEL_6:
  fetchDescriptor = [(NTSectionConfigSectionDescriptor *)self fetchDescriptor];
  v11 = [fetchDescriptor incrementalLimitTransformationWithFeedPersonalizer:personalizerCopy limit:limit priorFeedItems:itemsCopy];

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