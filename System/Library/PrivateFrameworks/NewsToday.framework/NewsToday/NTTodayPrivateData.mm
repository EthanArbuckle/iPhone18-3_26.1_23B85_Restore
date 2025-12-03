@interface NTTodayPrivateData
- (NTTodayPrivateData)init;
- (NTTodayPrivateData)initWithDerivedPersonalizationData:(id)data localNewsTagID:(id)d mutedTagIDs:(id)ds autoFavoriteTagIDs:(id)iDs purchasedTagIDs:(id)tagIDs groupableTagIDs:(id)groupableTagIDs rankedAllSubscribedTagIDs:(id)subscribedTagIDs rankedAllSubscriptionDates:(id)self0 recentlySeenHistoryItems:(id)self1 recentlyReadHistoryItems:(id)self2 onboardingVersion:(id)self3 bundleSubscription:(id)self4 userEmbeddingData:(id)self5;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)prepareForUseWithCompletion:(id)completion;
@end

@implementation NTTodayPrivateData

- (NTTodayPrivateData)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTTodayPrivateData init]";
    v10 = 2080;
    v11 = "NTTodayPrivateData.m";
    v12 = 1024;
    v13 = 15;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTTodayPrivateData init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTTodayPrivateData)initWithDerivedPersonalizationData:(id)data localNewsTagID:(id)d mutedTagIDs:(id)ds autoFavoriteTagIDs:(id)iDs purchasedTagIDs:(id)tagIDs groupableTagIDs:(id)groupableTagIDs rankedAllSubscribedTagIDs:(id)subscribedTagIDs rankedAllSubscriptionDates:(id)self0 recentlySeenHistoryItems:(id)self1 recentlyReadHistoryItems:(id)self2 onboardingVersion:(id)self3 bundleSubscription:(id)self4 userEmbeddingData:(id)self5
{
  dataCopy = data;
  dCopy = d;
  dsCopy = ds;
  iDsCopy = iDs;
  tagIDsCopy = tagIDs;
  groupableTagIDsCopy = groupableTagIDs;
  v24 = dCopy;
  subscribedTagIDsCopy = subscribedTagIDs;
  v25 = dsCopy;
  datesCopy = dates;
  itemsCopy = items;
  v27 = iDsCopy;
  historyItemsCopy = historyItems;
  versionCopy = version;
  subscriptionCopy = subscription;
  embeddingDataCopy = embeddingData;
  v65.receiver = self;
  v65.super_class = NTTodayPrivateData;
  v32 = [(NTTodayPrivateData *)&v65 init];
  if (v32)
  {
    v33 = [dataCopy copy];
    derivedPersonalizationData = v32->_derivedPersonalizationData;
    v32->_derivedPersonalizationData = v33;

    v35 = [v24 copy];
    localNewsTagID = v32->_localNewsTagID;
    v32->_localNewsTagID = v35;

    v37 = [v25 copy];
    mutedTagIDs = v32->_mutedTagIDs;
    v32->_mutedTagIDs = v37;

    v39 = [v27 copy];
    autoFavoriteTagIDs = v32->_autoFavoriteTagIDs;
    v32->_autoFavoriteTagIDs = v39;

    v41 = [tagIDsCopy copy];
    purchasedTagIDs = v32->_purchasedTagIDs;
    v32->_purchasedTagIDs = v41;

    v43 = [groupableTagIDsCopy copy];
    groupableTagIDs = v32->_groupableTagIDs;
    v32->_groupableTagIDs = v43;

    v45 = [subscribedTagIDsCopy copy];
    rankedAllSubscribedTagIDs = v32->_rankedAllSubscribedTagIDs;
    v32->_rankedAllSubscribedTagIDs = v45;

    v47 = [datesCopy copy];
    rankedAllSubscriptionDates = v32->_rankedAllSubscriptionDates;
    v32->_rankedAllSubscriptionDates = v47;

    v49 = [itemsCopy copy];
    recentlySeenHistoryItems = v32->_recentlySeenHistoryItems;
    v32->_recentlySeenHistoryItems = v49;

    v51 = [historyItemsCopy copy];
    recentlyReadHistoryItems = v32->_recentlyReadHistoryItems;
    v32->_recentlyReadHistoryItems = v51;

    v53 = [versionCopy copy];
    onboardingVersion = v32->_onboardingVersion;
    v32->_onboardingVersion = v53;

    v55 = [subscriptionCopy copy];
    bundleSubscription = v32->_bundleSubscription;
    v32->_bundleSubscription = v55;

    v57 = [embeddingDataCopy copy];
    userEmbeddingData = v32->_userEmbeddingData;
    v32->_userEmbeddingData = v57;
  }

  return v32;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v10 = "[NTTodayPrivateData mutableCopyWithZone:]";
    v11 = 2080;
    v12 = "NTTodayPrivateData.m";
    v13 = 1024;
    v14 = 74;
    v15 = 2114;
    v16 = v3;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTTodayPrivateData mutableCopyWithZone:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)prepareForUseWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end