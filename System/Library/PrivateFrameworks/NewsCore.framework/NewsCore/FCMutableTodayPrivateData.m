@interface FCMutableTodayPrivateData
- (FCMutableTodayPrivateData)init;
- (FCMutableTodayPrivateData)initWithDictionary:(id)a3;
- (void)_deleteObjectsForOldKeys;
- (void)setAutoFavoriteTagIDs:(id)a3;
- (void)setBundleSubscription:(id)a3;
- (void)setDerivedPersonalizationData:(id)a3;
- (void)setGroupableTagIDs:(id)a3;
- (void)setLocalNewsTagID:(id)a3;
- (void)setMutedTagIDs:(id)a3;
- (void)setPurchasedTagIDs:(id)a3;
- (void)setRankedAllSubscribedTagIDs:(id)a3;
- (void)setRankedAllSubscriptionDates:(id)a3;
- (void)setRecentlyReadHistoryItems:(id)a3;
- (void)setRecentlySeenHistoryItems:(id)a3;
- (void)setUserEmbeddingData:(id)a3;
@end

@implementation FCMutableTodayPrivateData

- (void)_deleteObjectsForOldKeys
{
  v5[7] = *MEMORY[0x1E69E9840];
  v2 = [(FCTodayPrivateData *)self dictionary];
  v5[0] = @"FCTodayWidgetDropboxDataRecentlyReadArticlesDataDictionaryKey";
  v5[1] = @"FCTodayWidgetPrivateDataRecentlySeenArticlesDataDictionaryKey2";
  v5[2] = @"FCTodayWidgetPrivateDataRecentlyReadHistoryItemsDataDictionaryKey";
  v5[3] = @"FCTodayWidgetDropboxDataFeldsparIDDictionaryKey";
  v5[4] = @"FCTodayPrivateDataBundleSubscriptionStateDictionaryKey";
  v5[5] = @"FCTodayPrivateDataBundleIAPDictionaryKey";
  v5[6] = @"FCTodayPrivateDataAutoFavoriteTagIDsDataDictionaryKey";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  [v2 removeObjectsForKeys:v3];

  v4 = *MEMORY[0x1E69E9840];
}

- (FCMutableTodayPrivateData)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCMutableTodayPrivateData init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedTodayDropbox.m";
    v12 = 1024;
    v13 = 245;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCMutableTodayPrivateData init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCMutableTodayPrivateData)initWithDictionary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dictionary"];
    *buf = 136315906;
    v12 = "[FCMutableTodayPrivateData initWithDictionary:]";
    v13 = 2080;
    v14 = "FCFileCoordinatedTodayDropbox.m";
    v15 = 1024;
    v16 = 250;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCMutableTodayPrivateData;
  v5 = [(FCTodayPrivateData *)&v10 initWithDictionary:v4];
  v6 = v5;
  if (v5)
  {
    [(FCMutableTodayPrivateData *)v5 _deleteObjectsForOldKeys];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)setDerivedPersonalizationData:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetDropboxDataDerivedPersonalizationDataDictionaryKey"];
}

- (void)setLocalNewsTagID:(id)a3
{
  v4 = a3;
  v5 = [(FCTodayPrivateData *)self dictionary];
  [v5 fc_safelySetObjectAllowingNil:v4 forKey:@"FCTodayPrivateDataLocalNewsTagIDDataDictionaryKey"];
}

- (void)setMutedTagIDs:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetDropboxDataMutedTagIDsDataDictionaryKey"];
}

- (void)setAutoFavoriteTagIDs:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayPrivateDataAutoFavoriteTagIDsDataDictionaryKey2"];
}

- (void)setGroupableTagIDs:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayPrivateDataGroupableTagIDsDataDictionaryKey"];
}

- (void)setPurchasedTagIDs:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetDropboxDataPurchasedTagIDsDataDictionaryKey"];
}

- (void)setRankedAllSubscribedTagIDs:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetDropboxDataRankedSubscribedTagIDsDataDictionaryKey"];
}

- (void)setRankedAllSubscriptionDates:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayPrivateDataRankedAllSubscriptionDatesDataDictionaryKey"];
}

- (void)setRecentlyReadHistoryItems:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetPrivateDataRecentlyReadHistoryItemsDataDictionaryKey2"];
}

- (void)setRecentlySeenHistoryItems:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayWidgetPrivateDataRecentlySeenHistoryItemsDataDictionaryKey"];
}

- (void)setBundleSubscription:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 setObject:v5 forKey:@"FCTodayPrivateDataBundleSubscriptionDataDictionaryKey"];
}

- (void)setUserEmbeddingData:(id)a3
{
  v4 = a3;
  v6 = [(FCTodayPrivateData *)self dictionary];
  v5 = [v4 copy];

  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCTodayPrivateDataUserEmbeddingDataDictionaryKey"];
}

@end