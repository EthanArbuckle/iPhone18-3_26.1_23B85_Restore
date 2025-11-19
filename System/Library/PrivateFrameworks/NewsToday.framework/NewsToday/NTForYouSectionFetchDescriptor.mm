@interface NTForYouSectionFetchDescriptor
- (NTForYouSectionFetchDescriptor)init;
- (NTForYouSectionFetchDescriptor)initWithForYouConfiguration:(id)a3 appConfiguration:(id)a4 topStoriesChannelID:(id)a5 localNewsTagID:(id)a6 hiddenFeedIDs:(id)a7 allowPaidBundleFeed:(BOOL)a8 mutedTagIDs:(id)a9 purchasedTagIDs:(id)a10 rankedAllSubscribedTagIDs:(id)a11 bundleSubscriptionProvider:(id)a12 groupingService:(id)a13;
- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5;
- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3;
- (void)configureCatchUpOperationWithFetchRequest:(id)a3;
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

- (NTForYouSectionFetchDescriptor)initWithForYouConfiguration:(id)a3 appConfiguration:(id)a4 topStoriesChannelID:(id)a5 localNewsTagID:(id)a6 hiddenFeedIDs:(id)a7 allowPaidBundleFeed:(BOOL)a8 mutedTagIDs:(id)a9 purchasedTagIDs:(id)a10 rankedAllSubscribedTagIDs:(id)a11 bundleSubscriptionProvider:(id)a12 groupingService:(id)a13
{
  v33 = a8;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = v17;
  v35 = a13;
  if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
  }

  if (!v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else if (v21)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
  }

LABEL_9:
  if (!v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
    if (v23)
    {
      goto LABEL_14;
    }
  }

  else if (v23)
  {
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
  }

LABEL_14:
  if (!v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouSectionFetchDescriptor initWithForYouConfiguration:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:groupingService:];
  }

  v36.receiver = self;
  v36.super_class = NTForYouSectionFetchDescriptor;
  v27 = [(NTForYouSectionFetchDescriptor *)&v36 init];
  if (v27)
  {
    v28 = [[NTForYouRequest alloc] initWithForYouTodaySectionSpecificConfig:v26 appConfiguration:v18 topStoriesChannelID:v19 localNewsTagID:v20 hiddenFeedIDs:v21 allowPaidBundleFeed:v33 mutedTagIDs:v22 purchasedTagIDs:v23 rankedAllSubscribedTagIDs:v24 bundleSubscriptionProvider:v25 throttlingIdentifier:&stru_286D90198];
    forYouRequest = v27->_forYouRequest;
    v27->_forYouRequest = v28;

    v27->_localNewsPromotionIndex = [v26 localNewsPromotionIndex];
    v30 = [v20 copy];
    localNewsTagID = v27->_localNewsTagID;
    v27->_localNewsTagID = v30;

    objc_storeStrong(&v27->_groupingService, a13);
  }

  return v27;
}

- (void)configureCatchUpOperationWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [(NTForYouSectionFetchDescriptor *)self forYouRequest];
  [v4 setForYouRequest:v5];

  [v4 setForYouEnabled:1];
  v6 = NewsCoreUserDefaults();
  [v4 setForYouSource:{objc_msgSend(v6, "integerForKey:", *MEMORY[0x277D30D68])}];
}

- (id)incrementalSortTransformationWithFeedPersonalizer:(id)a3
{
  v3 = [MEMORY[0x277D31038] transformationWithPersonalizer:a3 configurationSet:16];
  v4 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v3];

  return v4;
}

- (id)incrementalLimitTransformationWithFeedPersonalizer:(id)a3 limit:(unint64_t)a4 priorFeedItems:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v8 fc_arrayByTransformingWithBlock:&__block_literal_global_2];
  v11 = [[NTFeedTransformationIncrementalPersonalizedDiversifiedLimit alloc] initWithFunctionProvider:v9 limit:a4 priorFeedItems:v10];

  v12 = v11;
  v13 = [(NTForYouSectionFetchDescriptor *)self groupingService];

  v14 = v12;
  if (v13)
  {
    v15 = [NTBestOfSectionTransformation alloc];
    v16 = [(NTForYouSectionFetchDescriptor *)self groupingService];
    v14 = [(NTBestOfSectionTransformation *)v15 initWithGroupingService:v16 limit:a4 fallbackTransformation:v12];
  }

  v17 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v14];
  v18 = [(NTForYouSectionFetchDescriptor *)self localNewsPromotionIndex];
  v19 = [v8 count];

  v20 = v18 - v19;
  if (v18 >= v19)
  {
    v22 = [NTLocalNewsPromotionTransformation alloc];
    v23 = [(NTForYouSectionFetchDescriptor *)self localNewsTagID];
    v21 = [(NTLocalNewsPromotionTransformation *)v22 initWithLocalNewsTagID:v23 localNewsPromotionIndex:v20 baseTransformation:v17];
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