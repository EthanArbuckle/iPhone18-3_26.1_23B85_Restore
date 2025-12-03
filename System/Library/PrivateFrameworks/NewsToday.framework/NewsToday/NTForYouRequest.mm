@interface NTForYouRequest
- (NTForYouRequest)init;
- (NTForYouRequest)initWithForYouTodaySectionSpecificConfig:(id)config appConfiguration:(id)configuration topStoriesChannelID:(id)d localNewsTagID:(id)iD hiddenFeedIDs:(id)ds allowPaidBundleFeed:(BOOL)feed mutedTagIDs:(id)iDs purchasedTagIDs:(id)self0 rankedAllSubscribedTagIDs:(id)self1 bundleSubscriptionProvider:(id)self2 throttlingIdentifier:(id)self3;
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

- (NTForYouRequest)initWithForYouTodaySectionSpecificConfig:(id)config appConfiguration:(id)configuration topStoriesChannelID:(id)d localNewsTagID:(id)iD hiddenFeedIDs:(id)ds allowPaidBundleFeed:(BOOL)feed mutedTagIDs:(id)iDs purchasedTagIDs:(id)self0 rankedAllSubscribedTagIDs:(id)self1 bundleSubscriptionProvider:(id)self2 throttlingIdentifier:(id)self3
{
  configCopy = config;
  configurationCopy = configuration;
  dCopy = d;
  iDCopy = iD;
  dsCopy = ds;
  iDsCopy = iDs;
  tagIDsCopy = tagIDs;
  subscribedTagIDsCopy = subscribedTagIDs;
  providerCopy = provider;
  identifierCopy = identifier;
  if (!configCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
    if (dsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
  }

LABEL_6:
  if (!iDsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
    if (tagIDsCopy)
    {
      goto LABEL_11;
    }
  }

  else if (tagIDsCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
  }

LABEL_11:
  if (!subscribedTagIDsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTForYouRequest initWithForYouTodaySectionSpecificConfig:appConfiguration:topStoriesChannelID:localNewsTagID:hiddenFeedIDs:allowPaidBundleFeed:mutedTagIDs:purchasedTagIDs:rankedAllSubscribedTagIDs:bundleSubscriptionProvider:throttlingIdentifier:];
    if (identifierCopy)
    {
      goto LABEL_16;
    }
  }

  else if (identifierCopy)
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
    v48 = providerCopy;
    v27 = [dCopy copy];
    topStoriesChannelID = v26->_topStoriesChannelID;
    v26->_topStoriesChannelID = v27;

    v29 = [iDCopy copy];
    localNewsTagID = v26->_localNewsTagID;
    v26->_localNewsTagID = v29;

    v31 = [dsCopy copy];
    hiddenFeedIDs = v26->_hiddenFeedIDs;
    v26->_hiddenFeedIDs = v31;

    v26->_allowPaidBundleFeed = feed;
    v33 = [iDsCopy copy];
    mutedTagIDs = v26->_mutedTagIDs;
    v26->_mutedTagIDs = v33;

    v35 = [tagIDsCopy copy];
    purchasedTagIDs = v26->_purchasedTagIDs;
    v26->_purchasedTagIDs = v35;

    v37 = [subscribedTagIDsCopy fc_subarrayWithMaxCount:{objc_msgSend(configCopy, "subscriptionsFetchCount")}];
    rankedSubscribedTagIDs = v26->_rankedSubscribedTagIDs;
    v26->_rankedSubscribedTagIDs = v37;

    objc_storeStrong(&v26->_bundleSubscriptionProvider, provider);
    v26->_cutoffTime = [configCopy cutoffTime];
    v26->_headlinesPerFeedFetchCount = [configCopy headlinesPerFeedFetchCount];
    v26->_feedMaxCount = [configCopy feedMaxCount];
    v26->_feedItemMaxCount = [configCopy feedItemMaxCount];
    v26->_subscriptionsMinCount = [configCopy subscriptionsMinCount];
    fetchingBin = [configCopy fetchingBin];
    v40 = fetchingBin == 1;
    if (fetchingBin == 2)
    {
      v40 = 2;
    }

    v26->_fetchingBin = v40;
    v41 = [identifierCopy copy];
    throttlingIdentifier = v26->_throttlingIdentifier;
    v26->_throttlingIdentifier = v41;

    widgetForYouBackgroundMinimumUpdateInterval = [configurationCopy widgetForYouBackgroundMinimumUpdateInterval];
    if ([configCopy hasMinimumUpdateInterval])
    {
      minimumUpdateInterval = [configCopy minimumUpdateInterval];
    }

    else
    {
      minimumUpdateInterval = widgetForYouBackgroundMinimumUpdateInterval;
    }

    v26->_minimumUpdateInterval = minimumUpdateInterval;
    providerCopy = v48;
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