@interface NTTagSectionFetchDescriptor
- (NTTagSectionFetchDescriptor)init;
- (NTTagSectionFetchDescriptor)initWithTagConfiguration:(id)configuration appConfiguration:(id)appConfiguration purchasedTagIDs:(id)ds bundleSubscriptionProvider:(id)provider;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer;
- (void)configureCatchUpOperationWithFetchRequest:(id)request;
@end

@implementation NTTagSectionFetchDescriptor

- (NTTagSectionFetchDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTTagSectionFetchDescriptor init]";
    v10 = 2080;
    v11 = "NTTagSectionFetchDescriptor.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTTagSectionFetchDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTTagSectionFetchDescriptor)initWithTagConfiguration:(id)configuration appConfiguration:(id)appConfiguration purchasedTagIDs:(id)ds bundleSubscriptionProvider:(id)provider
{
  v32[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  appConfigurationCopy = appConfiguration;
  dsCopy = ds;
  providerCopy = provider;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTagSectionFetchDescriptor initWithTagConfiguration:appConfiguration:purchasedTagIDs:bundleSubscriptionProvider:];
    if (appConfigurationCopy)
    {
      goto LABEL_6;
    }
  }

  else if (appConfigurationCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTTagSectionFetchDescriptor initWithTagConfiguration:appConfiguration:purchasedTagIDs:bundleSubscriptionProvider:];
  }

LABEL_6:
  v31.receiver = self;
  v31.super_class = NTTagSectionFetchDescriptor;
  v14 = [(NTTagSectionFetchDescriptor *)&v31 init];
  if (v14)
  {
    tagID = [configurationCopy tagID];
    v16 = [[NTCatchUpOperationTagRequest alloc] initWithTagTodaySectionSpecificConfig:configurationCopy tagID:tagID];
    tagRequest = v14->_tagRequest;
    v14->_tagRequest = v16;

    v18 = objc_opt_new();
    [v18 setCutoffTime:{objc_msgSend(configurationCopy, "cutoffTime")}];
    [v18 setHeadlinesPerFeedFetchCount:{objc_msgSend(configurationCopy, "headlinesPerFeedFetchCount")}];
    [v18 setFeedMaxCount:0];
    [v18 setFeedItemMaxCount:0];
    [v18 setSubscriptionsFetchCount:1];
    [v18 setFetchingBin:{objc_msgSend(configurationCopy, "fetchingBin")}];
    v30 = appConfigurationCopy;
    v19 = [NTForYouRequest alloc];
    v20 = providerCopy;
    v21 = dsCopy;
    v22 = objc_opt_new();
    v23 = objc_opt_new();
    v32[0] = tagID;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v25 = v19;
    appConfigurationCopy = v30;
    v26 = [(NTForYouRequest *)v25 initWithForYouTodaySectionSpecificConfig:v18 appConfiguration:v30 topStoriesChannelID:0 localNewsTagID:0 hiddenFeedIDs:v22 allowPaidBundleFeed:0 mutedTagIDs:v23 purchasedTagIDs:v21 rankedAllSubscribedTagIDs:v24 bundleSubscriptionProvider:v20 throttlingIdentifier:tagID];
    forYouRequest = v14->_forYouRequest;
    v14->_forYouRequest = v26;

    dsCopy = v21;
    providerCopy = v20;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)request
{
  requestCopy = request;
  forYouRequest = [(NTTagSectionFetchDescriptor *)self forYouRequest];
  [requestCopy setForYouRequest:forYouRequest];

  [requestCopy setForYouEnabled:1];
  [requestCopy setForYouSource:1];
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer
{
  v3 = [MEMORY[0x277D31038] transformationWithPersonalizer:personalizer configurationSet:17];
  v4 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v3];

  return v4;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items
{
  personalizerCopy = personalizer;
  v8 = [items fc_arrayByTransformingWithBlock:&__block_literal_global_9];
  v9 = [[NTFeedTransformationIncrementalPersonalizedDiversifiedLimit alloc] initWithFunctionProvider:personalizerCopy limit:limit priorFeedItems:v8];

  v10 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v9];

  return v10;
}

- (void)initWithTagConfiguration:appConfiguration:purchasedTagIDs:bundleSubscriptionProvider:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "tagConfiguration"];
  *buf = 136315906;
  v3 = "[NTTagSectionFetchDescriptor initWithTagConfiguration:appConfiguration:purchasedTagIDs:bundleSubscriptionProvider:]";
  v4 = 2080;
  v5 = "NTTagSectionFetchDescriptor.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithTagConfiguration:appConfiguration:purchasedTagIDs:bundleSubscriptionProvider:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "appConfiguration"];
  *buf = 136315906;
  v3 = "[NTTagSectionFetchDescriptor initWithTagConfiguration:appConfiguration:purchasedTagIDs:bundleSubscriptionProvider:]";
  v4 = 2080;
  v5 = "NTTagSectionFetchDescriptor.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end