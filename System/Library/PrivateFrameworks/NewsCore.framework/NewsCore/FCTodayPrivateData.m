@interface FCTodayPrivateData
- (FCBundleSubscription)bundleSubscription;
- (FCDerivedPersonalizationData)derivedPersonalizationData;
- (FCTodayPrivateData)init;
- (FCTodayPrivateData)initWithDictionary:(id)a3;
- (NSArray)autoFavoriteTagIDs;
- (NSArray)rankedAllSubscribedTagIDs;
- (NSArray)rankedAllSubscriptionDates;
- (NSArray)recentlySeenHistoryItems;
- (NSData)userEmbeddingData;
- (NSDictionary)recentlyReadHistoryItems;
- (NSNumber)onboardingVersion;
- (NSSet)groupableTagIDs;
- (NSSet)mutedTagIDs;
- (NSSet)purchasedTagIDs;
- (NSString)localNewsTagID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)prepareForUseWithCompletion:(id)a3;
@end

@implementation FCTodayPrivateData

- (NSSet)purchasedTagIDs
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayWidgetDropboxDataPurchasedTagIDsDataDictionaryKey"];

  return v3;
}

- (FCBundleSubscription)bundleSubscription
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayPrivateDataBundleSubscriptionDataDictionaryKey"];
  v4 = [v3 copy];

  return v4;
}

- (FCTodayPrivateData)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTodayPrivateData init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedTodayDropbox.m";
    v12 = 1024;
    v13 = 139;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTodayPrivateData init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTodayPrivateData)initWithDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dictionary"];
    *buf = 136315906;
    v13 = "[FCTodayPrivateData initWithDictionary:]";
    v14 = 2080;
    v15 = "FCFileCoordinatedTodayDropbox.m";
    v16 = 1024;
    v17 = 144;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCTodayPrivateData;
  v6 = [(FCTodayPrivateData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (FCDerivedPersonalizationData)derivedPersonalizationData
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayWidgetDropboxDataDerivedPersonalizationDataDictionaryKey"];

  return v3;
}

- (NSString)localNewsTagID
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayPrivateDataLocalNewsTagIDDataDictionaryKey"];

  return v3;
}

- (NSSet)mutedTagIDs
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayWidgetDropboxDataMutedTagIDsDataDictionaryKey"];

  return v3;
}

- (NSArray)autoFavoriteTagIDs
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayPrivateDataAutoFavoriteTagIDsDataDictionaryKey2"];

  return v3;
}

- (NSArray)rankedAllSubscribedTagIDs
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayWidgetDropboxDataRankedSubscribedTagIDsDataDictionaryKey"];

  return v3;
}

- (NSArray)rankedAllSubscriptionDates
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayPrivateDataRankedAllSubscriptionDatesDataDictionaryKey"];

  return v3;
}

- (NSDictionary)recentlyReadHistoryItems
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayWidgetPrivateDataRecentlyReadHistoryItemsDataDictionaryKey2"];

  return v3;
}

- (NSArray)recentlySeenHistoryItems
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayWidgetPrivateDataRecentlySeenHistoryItemsDataDictionaryKey"];

  return v3;
}

- (NSNumber)onboardingVersion
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayPrivateDataOnboardingVersionDictionaryKey"];

  return v3;
}

- (NSData)userEmbeddingData
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayPrivateDataUserEmbeddingDataDictionaryKey"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [FCTodayPrivateData allocWithZone:?];
  v6 = [(FCTodayPrivateData *)self dictionary];
  v7 = [v6 copyWithZone:a3];
  v8 = [(FCTodayPrivateData *)v5 initWithDictionary:v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [FCMutableTodayPrivateData allocWithZone:?];
  v6 = [(FCTodayPrivateData *)self dictionary];
  v7 = [v6 mutableCopyWithZone:a3];
  v8 = [(FCMutableTodayPrivateData *)v5 initWithDictionary:v7];

  return v8;
}

- (NSSet)groupableTagIDs
{
  v2 = [(FCTodayPrivateData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCTodayPrivateDataGroupableTagIDsDataDictionaryKey"];

  return v3;
}

- (void)prepareForUseWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

@end