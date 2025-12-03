@interface NTForYouSectionFetchDescriptor
- (NTForYouSectionFetchDescriptor)init;
- (NTForYouSectionFetchDescriptor)initWithForYouConfiguration:(id)configuration appConfiguration:(id)appConfiguration topStoriesChannelID:(id)d localNewsTagID:(id)iD hiddenFeedIDs:(id)ds allowPaidBundleFeed:(BOOL)feed mutedTagIDs:(id)iDs purchasedTagIDs:(id)self0 rankedAllSubscribedTagIDs:(id)self1 bundleSubscriptionProvider:(id)self2 groupingService:(id)self3;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer;
- (void)configureCatchUpOperationWithFetchRequest:(id)request;
@end

@implementation NTForYouSectionFetchDescriptor

- (NTForYouSectionFetchDescriptor)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTForYouSectionFetchDescriptor init]";
    v10 = 2080;
    v11 = "NTForYouSectionFetchDescriptor.m";
    v12 = 1024;
    v13 = 33;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTForYouSectionFetchDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTForYouSectionFetchDescriptor)initWithForYouConfiguration:(id)configuration appConfiguration:(id)appConfiguration topStoriesChannelID:(id)d localNewsTagID:(id)iD hiddenFeedIDs:(id)ds allowPaidBundleFeed:(BOOL)feed mutedTagIDs:(id)iDs purchasedTagIDs:(id)self0 rankedAllSubscribedTagIDs:(id)self1 bundleSubscriptionProvider:(id)self2 groupingService:(id)self3
{
  feedCopy = feed;
  configurationCopy = configuration;
  appConfigurationCopy = appConfiguration;
  dCopy = d;
  iDCopy = iD;
  dsCopy = ds;
  iDsCopy = iDs;
  tagIDsCopy = tagIDs;
  subscribedTagIDsCopy = subscribedTagIDs;
  providerCopy = provider;
  v26 = configurationCopy;
  serviceCopy = service;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
  }

  if (!appConfigurationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
    if (dsCopy)
    {
      goto LABEL_9;
    }
  }

  else if (dsCopy)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
  }

LABEL_9:
  if (!iDsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
    if (tagIDsCopy)
    {
      goto LABEL_14;
    }
  }

  else if (tagIDsCopy)
  {
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
  }

LABEL_14:
  if (!subscribedTagIDsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
  }

  v36.receiver = self;
  v36.super_class = NTForYouSectionFetchDescriptor;
  v27 = [(NTForYouSectionFetchDescriptor *)&v36 init];
  if (v27)
  {
    v28 = [[NTForYouRequest alloc] initWithForYouTodaySectionSpecificConfig:v26 appConfiguration:appConfigurationCopy topStoriesChannelID:dCopy localNewsTagID:iDCopy hiddenFeedIDs:dsCopy allowPaidBundleFeed:feedCopy mutedTagIDs:iDsCopy purchasedTagIDs:tagIDsCopy rankedAllSubscribedTagIDs:subscribedTagIDsCopy bundleSubscriptionProvider:providerCopy throttlingIdentifier:&stru_286D90198];
    forYouRequest = v27->_forYouRequest;
    v27->_forYouRequest = v28;

    v27->_localNewsPromotionIndex = [v26 localNewsPromotionIndex];
    v30 = [iDCopy copy];
    localNewsTagID = v27->_localNewsTagID;
    v27->_localNewsTagID = v30;

    objc_storeStrong(&v27->_groupingService, service);
  }

  return v27;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)request
{
  requestCopy = request;
  forYouRequest = [(NTForYouSectionFetchDescriptor *)self forYouRequest];
  [requestCopy setForYouRequest:forYouRequest];

  [requestCopy setForYouEnabled:1];
  v6 = NewsCoreUserDefaults();
  [requestCopy setForYouSource:{objc_msgSend(v6, "integerForKey:", *MEMORY[0x277D30D68])}];
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)personalizer
{
  v3 = [MEMORY[0x277D31038] transformationWithPersonalizer:personalizer configurationSet:16];
  v4 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v3];

  return v4;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)personalizer limit:(unint64_t)limit priorFeedItems:(id)items
{
  itemsCopy = items;
  personalizerCopy = personalizer;
  v10 = [itemsCopy fc_arrayByTransformingWithBlock:&__block_literal_global_2];
  v11 = [[NTFeedTransformationIncrementalPersonalizedDiversifiedLimit alloc] initWithFunctionProvider:personalizerCopy limit:limit priorFeedItems:v10];

  v12 = v11;
  groupingService = [(NTForYouSectionFetchDescriptor *)self groupingService];

  v14 = v12;
  if (groupingService)
  {
    v15 = [NTBestOfSectionTransformation alloc];
    groupingService2 = [(NTForYouSectionFetchDescriptor *)self groupingService];
    v14 = [(NTBestOfSectionTransformation *)v15 initWithGroupingService:groupingService2 limit:limit fallbackTransformation:v12];
  }

  v17 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v14];
  localNewsPromotionIndex = [(NTForYouSectionFetchDescriptor *)self localNewsPromotionIndex];
  v19 = [itemsCopy count];

  v20 = localNewsPromotionIndex - v19;
  if (localNewsPromotionIndex >= v19)
  {
    v22 = [NTLocalNewsPromotionTransformation alloc];
    localNewsTagID = [(NTForYouSectionFetchDescriptor *)self localNewsTagID];
    v21 = [(NTLocalNewsPromotionTransformation *)v22 initWithLocalNewsTagID:localNewsTagID localNewsPromotionIndex:v20 baseTransformation:v17];
  }

  else
  {
    v21 = v17;
  }

  return v21;
}

- (void)initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "forYouConfiguration", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appConfiguration", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "hiddenFeedIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "mutedTagIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "purchasedTagIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "rankedAllSubscribedTagIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end