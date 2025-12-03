@interface FCTodayPrivateData
- (FCBundleSubscription)bundleSubscription;
- (FCDerivedPersonalizationData)derivedPersonalizationData;
- (FCTodayPrivateData)init;
- (FCTodayPrivateData)initWithDictionary:(id)dictionary;
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
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)prepareForUseWithCompletion:(id)completion;
@end

@implementation FCTodayPrivateData

- (NSSet)purchasedTagIDs
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayWidgetDropboxDataPurchasedTagIDsDataDictionaryKey"];

  return v3;
}

- (FCBundleSubscription)bundleSubscription
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayPrivateDataBundleSubscriptionDataDictionaryKey"];
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

- (FCTodayPrivateData)initWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (FCDerivedPersonalizationData)derivedPersonalizationData
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayWidgetDropboxDataDerivedPersonalizationDataDictionaryKey"];

  return v3;
}

- (NSString)localNewsTagID
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayPrivateDataLocalNewsTagIDDataDictionaryKey"];

  return v3;
}

- (NSSet)mutedTagIDs
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayWidgetDropboxDataMutedTagIDsDataDictionaryKey"];

  return v3;
}

- (NSArray)autoFavoriteTagIDs
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayPrivateDataAutoFavoriteTagIDsDataDictionaryKey2"];

  return v3;
}

- (NSArray)rankedAllSubscribedTagIDs
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayWidgetDropboxDataRankedSubscribedTagIDsDataDictionaryKey"];

  return v3;
}

- (NSArray)rankedAllSubscriptionDates
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayPrivateDataRankedAllSubscriptionDatesDataDictionaryKey"];

  return v3;
}

- (NSDictionary)recentlyReadHistoryItems
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayWidgetPrivateDataRecentlyReadHistoryItemsDataDictionaryKey2"];

  return v3;
}

- (NSArray)recentlySeenHistoryItems
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayWidgetPrivateDataRecentlySeenHistoryItemsDataDictionaryKey"];

  return v3;
}

- (NSNumber)onboardingVersion
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayPrivateDataOnboardingVersionDictionaryKey"];

  return v3;
}

- (NSData)userEmbeddingData
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayPrivateDataUserEmbeddingDataDictionaryKey"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [FCTodayPrivateData allocWithZone:?];
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v7 = [dictionary copyWithZone:zone];
  v8 = [(FCTodayPrivateData *)v5 initWithDictionary:v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [FCMutableTodayPrivateData allocWithZone:?];
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v7 = [dictionary mutableCopyWithZone:zone];
  v8 = [(FCMutableTodayPrivateData *)v5 initWithDictionary:v7];

  return v8;
}

- (NSSet)groupableTagIDs
{
  dictionary = [(FCTodayPrivateData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCTodayPrivateDataGroupableTagIDsDataDictionaryKey"];

  return v3;
}

- (void)prepareForUseWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end