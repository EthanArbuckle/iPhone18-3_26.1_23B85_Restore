@interface NTForYouRequest
- (NTForYouRequest)init;
- (NTForYouRequest)initWithForYouTodaySectionSpecificConfig:(id)a3 appConfiguration:(id)a4 topStoriesChannelID:(id)a5 localNewsTagID:(id)a6 hiddenFeedIDs:(id)a7 allowPaidBundleFeed:(BOOL)a8 mutedTagIDs:(id)a9 purchasedTagIDs:(id)a10 rankedAllSubscribedTagIDs:(id)a11 bundleSubscriptionProvider:(id)a12 throttlingIdentifier:(id)a13;
@end

@implementation NTForYouRequest

- (NTForYouRequest)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTForYouRequest init]";
    v10 = 2080;
    v11 = "NTForYouRequest.m";
    v12 = 1024;
    v13 = 16;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTForYouRequest init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTForYouRequest)initWithForYouTodaySectionSpecificConfig:(id)a3 appConfiguration:(id)a4 topStoriesChannelID:(id)a5 localNewsTagID:(id)a6 hiddenFeedIDs:(id)a7 allowPaidBundleFeed:(BOOL)a8 mutedTagIDs:(id)a9 purchasedTagIDs:(id)a10 rankedAllSubscribedTagIDs:(id)a11 bundleSubscriptionProvider:(id)a12 throttlingIdentifier:(id)a13
{
  v17 = a3;
  v49 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
    if (v20)
    {
      goto LABEL_6;
    }
  }

  else if (v20)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
  }

LABEL_6:
  if (!v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
    if (v22)
    {
      goto LABEL_11;
    }
  }

  else if (v22)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
  }

LABEL_11:
  if (!v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
    if (v25)
    {
      goto LABEL_16;
    }
  }

  else if (v25)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
  }

LABEL_16:
  v50.receiver = self;
  v50.super_class = NTForYouRequest;
  v26 = [(NTForYouRequest *)&v50 init];
  if (v26)
  {
    v48 = v24;
    v27 = [v18 copy];
    topStoriesChannelID = v26->_topStoriesChannelID;
    v26->_topStoriesChannelID = v27;

    v29 = [v19 copy];
    localNewsTagID = v26->_localNewsTagID;
    v26->_localNewsTagID = v29;

    v31 = [v20 copy];
    hiddenFeedIDs = v26->_hiddenFeedIDs;
    v26->_hiddenFeedIDs = v31;

    v26->_allowPaidBundleFeed = a8;
    v33 = [v21 copy];
    mutedTagIDs = v26->_mutedTagIDs;
    v26->_mutedTagIDs = v33;

    v35 = [v22 copy];
    purchasedTagIDs = v26->_purchasedTagIDs;
    v26->_purchasedTagIDs = v35;

    v37 = [v23 fc_subarrayWithMaxCount:{objc_msgSend(v17, "subscriptionsFetchCount")}];
    rankedSubscribedTagIDs = v26->_rankedSubscribedTagIDs;
    v26->_rankedSubscribedTagIDs = v37;

    objc_storeStrong(&v26->_bundleSubscriptionProvider, a12);
    v26->_cutoffTime = [v17 cutoffTime];
    v26->_headlinesPerFeedFetchCount = [v17 headlinesPerFeedFetchCount];
    v26->_feedMaxCount = [v17 feedMaxCount];
    v26->_feedItemMaxCount = [v17 feedItemMaxCount];
    v26->_subscriptionsMinCount = [v17 subscriptionsMinCount];
    v39 = [v17 fetchingBin];
    v40 = v39 == 1;
    if (v39 == 2)
    {
      v40 = 2;
    }

    v26->_fetchingBin = v40;
    v41 = [v25 copy];
    throttlingIdentifier = v26->_throttlingIdentifier;
    v26->_throttlingIdentifier = v41;

    v43 = [v49 widgetForYouBackgroundMinimumUpdateInterval];
    if ([v17 hasMinimumUpdateInterval])
    {
      v44 = [v17 minimumUpdateInterval];
    }

    else
    {
      v44 = v43;
    }

    v26->_minimumUpdateInterval = v44;
    v24 = v48;
  }

  return v26;
}

- (void)initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "forYouTodaySectionSpecificConfig", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "hiddenFeedIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "mutedTagIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "purchasedTagIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "rankedAllSubscribedTagIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "throttlingIdentifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end