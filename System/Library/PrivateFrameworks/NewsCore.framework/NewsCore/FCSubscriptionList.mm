@interface FCSubscriptionList
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4;
+ (id)desiredKeys;
+ (id)subscriptionIDForTagID:(id)a3 type:(unint64_t)a4;
- (BOOL)addSubscriptionForTagID:(id)a3 type:(unint64_t)a4 origin:(unint64_t)a5 groupID:(id)a6 notificationsEnabled:(BOOL)a7;
- (BOOL)appendSubscriptionForTagID:(id)a3 type:(unint64_t)a4;
- (BOOL)canAddSubscription;
- (BOOL)canHelpRestoreZoneName:(id)a3;
- (BOOL)hasAutoFavoriteSubscriptionForTagID:(id)a3;
- (BOOL)hasIgnoredSubscriptionForTagID:(id)a3;
- (BOOL)hasMutedSubscriptionForTagID:(id)a3;
- (BOOL)hasNotificationsEnabledForTagID:(id)a3;
- (BOOL)hasSubscriptionForTagID:(id)a3;
- (BOOL)moveSubscriptionForTagID:(id)a3 toIndex:(unint64_t)a4;
- (BOOL)setNotificationsEnabled:(BOOL)a3 forTagID:(id)a4;
- (FCSubscriptionList)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5;
- (NSArray)rankedAllSubscribedTagIDs;
- (NSDictionary)subscriptionsBySubscriptionID;
- (NSOrderedSet)orderedSubscribedTagIDs;
- (NSSet)allSubscribedTagIDs;
- (NSSet)autoFavoriteTagIDs;
- (NSSet)groupableTagIDs;
- (NSSet)ignoredTagIDs;
- (NSSet)mutedTagIDs;
- (NSSet)subscribedTagIDs;
- (id)_reconcileSubscriptions:(uint64_t)a1;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3;
- (id)recordsForRestoringZoneName:(id)a3;
- (id)subscriptionForTagID:(id)a3 type:(unint64_t)a4;
- (id)subscriptionForTagIDOfAnyType:(id)a3;
- (id)subscriptionsForType:(unint64_t)a3;
- (void)_localAddSubscriptions:(void *)a3 changeSubscriptions:(void *)a4 removeSubscriptions:;
- (void)_modifyRemoteSubscriptions:(void *)a1;
- (void)_newSubscriptionOrder;
- (void)_regenerateSortedSubscriptions;
- (void)addObserver:(id)a3;
- (void)addSubscriptionsForTagIDs:(id)a3 typeProvider:(id)a4 originProvider:(id)a5 completion:(id)a6;
- (void)assignOrderToTagSubscriptionsIfNeeded;
- (void)handleSyncDidResetLocalDataForRecordZoneWithID:(id)a3;
- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4;
- (void)loadLocalCachesFromStore;
- (void)removeObserver:(id)a3;
- (void)removeSubscriptionForTagID:(id)a3 type:(unint64_t)a4;
- (void)removeSubscriptionsForTagIDs:(id)a3 typeProvider:(id)a4 completion:(id)a5;
- (void)reorderSubscriptionOrderForOrderedIdentifiers:(id)a3;
- (void)setMutableSubscriptionsBySubscriptionID:(uint64_t)a1;
@end

@implementation FCSubscriptionList

- (void)loadLocalCachesFromStore
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [(FCPrivateDataController *)self localStore];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        if (([objc_opt_class() isLocalStoreKeyInternal:v9] & 1) == 0)
        {
          v10 = v9;
          objc_opt_class();
          v11 = [v3 objectForKey:v10];
          if (v11)
          {
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13 && ([v13 allKeys], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
          {
            v16 = [FCSubscription subscriptionWithSubscriptionID:v10 dictionaryRepresentation:v13];
            v17 = v16;
            if (v16 && v10 && ([v16 isDeprecated] & 1) == 0)
            {
              [v27 setObject:v17 forKey:v10];
            }
          }

          else
          {
            v18 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              v19 = v18;
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              *buf = 138543618;
              v35 = v21;
              v36 = 2114;
              v37 = v10;
              _os_log_error_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_ERROR, "ERROR: %{public}@ is not a valid dictionary for key %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v6);
  }

  v22 = [v27 allValues];
  v23 = [(FCSubscriptionList *)self _reconcileSubscriptions:v22];

  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__FCSubscriptionList_loadLocalCachesFromStore__block_invoke;
  v28[3] = &unk_1E7C36C58;
  v28[4] = self;
  v29 = v23;
  v25 = v23;
  [(FCMTWriterLock *)itemsLock performWriteSync:v28];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_regenerateSortedSubscriptions
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_28;
  }

  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  self = a1;
  v7 = a1[18];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = v7;
  v8 = [v7 allValues];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  v11 = *v35;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v35 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v34 + 1) + 8 * i);
      v14 = [v13 subscriptionType];
      if (v14 > 2)
      {
        switch(v14)
        {
          case 3:
            v15 = [v13 tagID];
            v16 = v4;
            break;
          case 4:
            v15 = [v13 tagID];
            v16 = v5;
            break;
          case 5:
            v15 = [v13 tagID];
            v16 = v6;
            break;
          default:
            continue;
        }

        goto LABEL_21;
      }

      if (!v14)
      {
        v15 = [v13 tagID];
        v16 = v2;
LABEL_21:
        [v16 addObject:v15];
        goto LABEL_22;
      }

      if (v14 != 1)
      {
        if (v14 != 2)
        {
          continue;
        }

        v15 = [v13 tagID];
        v16 = v3;
        goto LABEL_21;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        continue;
      }

      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pending subscriptions are deprecated and should be filtered when loading from the cache"];
      *buf = 136315906;
      v39 = "[FCSubscriptionList _regenerateSortedSubscriptions]";
      v40 = 2080;
      v41 = "FCSubscriptionList.m";
      v42 = 1024;
      LODWORD(v43[0]) = 1277;
      WORD2(v43[0]) = 2114;
      *(v43 + 6) = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_22:
    }

    v10 = [v8 countByEnumeratingWithState:&v34 objects:v44 count:16];
  }

  while (v10);
LABEL_25:

  v17 = FCSubscriptionListLog;
  if (os_log_type_enabled(FCSubscriptionListLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = v2;
    v40 = 2112;
    v41 = v4;
    v42 = 2112;
    v43[0] = v3;
    _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "subscribedTagIDs: %@ autoFavoriteTagIDs: %@ mutedTagIDs: %@", buf, 0x20u);
  }

  v19 = v2;
  objc_setProperty_nonatomic_copy(self, v18, v2, 104);
  v20 = [v2 allObjects];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52__FCSubscriptionList__regenerateSortedSubscriptions__block_invoke;
  v32[3] = &unk_1E7C3F390;
  v33 = v30;
  v21 = v30;
  v22 = [v20 sortedArrayUsingComparator:v32];

  v23 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v22];
  objc_setProperty_nonatomic_copy(self, v24, v23, 96);

  objc_setProperty_nonatomic_copy(self, v25, v3, 112);
  objc_setProperty_nonatomic_copy(self, v26, v4, 120);
  objc_setProperty_nonatomic_copy(self, v27, v5, 128);
  objc_setProperty_nonatomic_copy(self, v28, v6, 136);

LABEL_28:
  v29 = *MEMORY[0x1E69E9840];
}

void __46__FCSubscriptionList_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  [(FCSubscriptionList *)*(a1 + 32) setMutableSubscriptionsBySubscriptionID:?];
  v2 = *(a1 + 32);

  [(FCSubscriptionList *)v2 _regenerateSortedSubscriptions];
}

void __38__FCSubscriptionList_subscribedTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 104);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSSet)subscribedTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__FCSubscriptionList_subscribedTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSSet)mutedTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__FCSubscriptionList_mutedTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__FCSubscriptionList_mutedTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSSet)autoFavoriteTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FCSubscriptionList_autoFavoriteTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__FCSubscriptionList_autoFavoriteTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSDictionary)subscriptionsBySubscriptionID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__FCSubscriptionList_subscriptionsBySubscriptionID__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __51__FCSubscriptionList_subscriptionsBySubscriptionID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[18];
  }

  v6 = v2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)assignOrderToTagSubscriptionsIfNeeded
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(FCSubscriptionList *)self subscriptionsBySubscriptionID];
  v4 = [v3 allValues];
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_91];

  v6 = [(FCSubscriptionList *)self subscribedTagRanker];

  if (v6)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __59__FCSubscriptionList_assignOrderToTagSubscriptionsIfNeeded__block_invoke_2;
    v18 = &unk_1E7C3C550;
    v19 = self;
    v7 = v5;
    v8 = &v15;
    if (self)
    {
      if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        v13 = [v12 initWithFormat:@"Invalid parameter not satisfying %s", "tagSubscriptions", v15, v16, v17, v18, v19];
        *buf = 136315906;
        *&buf[4] = "[FCSubscriptionList _assignOrderToTagSubscriptions:withCompletion:]";
        *&buf[12] = 2080;
        *&buf[14] = "FCSubscriptionList.m";
        *&buf[22] = 1024;
        LODWORD(v21) = 937;
        WORD2(v21) = 2114;
        *(&v21 + 6) = v13;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v9 = [(FCSubscriptionList *)self subscribedTagRanker];
      if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "tagRanker"];
        *buf = 136315906;
        *&buf[4] = "[FCSubscriptionList _assignOrderToTagSubscriptions:withCompletion:]";
        *&buf[12] = 2080;
        *&buf[14] = "FCSubscriptionList.m";
        *&buf[22] = 1024;
        LODWORD(v21) = 941;
        WORD2(v21) = 2114;
        *(&v21 + 6) = v14;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke;
      *&v21 = &unk_1E7C38FF0;
      *(&v21 + 1) = v9;
      v22 = v7;
      v23 = v8;
      v10 = v9;
      [FCTaskScheduler scheduleLowPriorityBlock:buf];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSOrderedSet)orderedSubscribedTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__FCSubscriptionList_orderedSubscribedTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __45__FCSubscriptionList_orderedSubscribedTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSSet)groupableTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__FCSubscriptionList_groupableTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __37__FCSubscriptionList_groupableTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 128);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (NSSet)ignoredTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__FCSubscriptionList_ignoredTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __35__FCSubscriptionList_ignoredTagIDs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 136);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (FCSubscriptionList)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5
{
  v9.receiver = self;
  v9.super_class = FCSubscriptionList;
  v5 = [(FCPrivateDataController *)&v9 initWithContext:a3 pushNotificationCenter:a4 storeDirectory:a5];
  if (v5)
  {
    v6 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v5->_itemsLock;
    v5->_itemsLock = v6;
  }

  return v5;
}

void __59__FCSubscriptionList_assignOrderToTagSubscriptionsIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [(FCSubscriptionList *)v3 _localAddSubscriptions:v4 changeSubscriptions:0 removeSubscriptions:?];
  [(FCSubscriptionList *)*(a1 + 32) _modifyRemoteSubscriptions:v4];
}

- (void)_localAddSubscriptions:(void *)a3 changeSubscriptions:(void *)a4 removeSubscriptions:
{
  v114 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v71 = objc_opt_new();
    v70 = objc_opt_new();
    v69 = objc_opt_new();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v67 = [MEMORY[0x1E695DFA8] setWithArray:v10];
    v11 = [a1 localStore];
    v12 = [a1[18] mutableCopy];
    v13 = [MEMORY[0x1E695DF70] array];
    [v13 addObjectsFromArray:v7];
    [v13 addObjectsFromArray:v8];
    v14 = [v13 fc_setByTransformingWithBlock:&__block_literal_global_79_0];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_2;
    v99[3] = &unk_1E7C41320;
    v15 = v14;
    v100 = v15;
    v16 = v13;
    v101 = v16;
    [v12 enumerateKeysAndObjectsUsingBlock:v99];
    v61 = v16;
    v17 = [(FCSubscriptionList *)a1 _reconcileSubscriptions:v16];
    v62 = v9;
    if ([v9 count])
    {
      v18 = [v9 fc_setByTransformingWithBlock:&__block_literal_global_82_0];
      v19 = [v18 mutableCopy];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFA8] set];
    }

    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_4;
    v95[3] = &unk_1E7C41348;
    v60 = v15;
    v96 = v60;
    v20 = v17;
    v97 = v20;
    v58 = v19;
    v98 = v58;
    [v12 enumerateKeysAndObjectsUsingBlock:v95];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_5;
    aBlock[3] = &unk_1E7C41370;
    aBlock[4] = a1;
    v59 = v20;
    v92 = v59;
    v65 = v11;
    v93 = v65;
    v72 = v12;
    v94 = v72;
    v21 = _Block_copy(aBlock);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v64 = v7;
    v22 = v7;
    v23 = [v22 countByEnumeratingWithState:&v87 objects:v113 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v88;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v88 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v87 + 1) + 8 * i);
          if (v21[2](v21, v27))
          {
            [v71 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v87 objects:v113 count:16];
      }

      while (v24);
    }

    v66 = a1;

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v63 = v8;
    obj = v8;
    v28 = [obj countByEnumeratingWithState:&v83 objects:v112 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v84;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v84 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v83 + 1) + 8 * j);
          v33 = [v32 subscriptionID];
          v34 = [v72 objectForKeyedSubscript:v33];

          if (!v34 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "existingSubscription"];
            *buf = 136315906;
            v105 = "[FCSubscriptionList _localAddSubscriptions:changeSubscriptions:removeSubscriptions:]";
            v106 = 2080;
            v107 = "FCSubscriptionList.m";
            v108 = 1024;
            v109 = 1194;
            v110 = 2114;
            v111 = v39;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v35 = MEMORY[0x1E69E58C0];
          v36 = [v34 order];
          v37 = [v32 order];
          v38 = [v35 nf_object:v36 isEqualToObject:v37];

          if ((v21)[2](v21, v32))
          {
            [v70 addObject:v32];
            if ((v38 & 1) == 0)
            {
              [v69 addObject:v32];
            }
          }
        }

        v29 = [obj countByEnumeratingWithState:&v83 objects:v112 count:16];
      }

      while (v29);
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v40 = v58;
    v41 = [v40 countByEnumeratingWithState:&v79 objects:v103 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v80;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v80 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v79 + 1) + 8 * k);
          v46 = [v72 objectForKeyedSubscript:v45];
          if (v46)
          {
            [v67 addObject:v46];
          }

          [v65 removeObjectForKey:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v79 objects:v103 count:16];
      }

      while (v42);
    }

    if ([v40 count])
    {
      v47 = [v40 allObjects];
      [v72 removeObjectsForKeys:v47];
    }

    v48 = v66[19];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_85;
    v77[3] = &unk_1E7C36C58;
    v77[4] = v66;
    v49 = v72;
    v78 = v49;
    [v48 performWriteSync:v77];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v50 = [v66 observers];
    v51 = [v50 copy];

    v52 = [v51 countByEnumeratingWithState:&v73 objects:v102 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v74;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v74 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v73 + 1) + 8 * m);
          if (objc_opt_respondsToSelector())
          {
            [v56 subscriptionList:v66 didAddSubscriptions:v71 changeSubscriptions:v70 moveSubscriptions:v69 removeSubscriptions:v67];
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v73 objects:v102 count:16];
      }

      while (v53);
    }

    v8 = v63;
    v7 = v64;
    v9 = v62;
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (void)_modifyRemoteSubscriptions:(void *)a1
{
  v4 = a2;
  if (a1 && [v4 count])
  {
    v3 = [[FCModifySubscriptionsCommand alloc] initWithSubscriptions:v4 merge:0];
    [a1 addCommandToCommandQueue:v3];
  }
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCSubscriptionList;
  [(FCPrivateDataController *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCSubscriptionList;
  [(FCPrivateDataController *)&v3 removeObserver:a3];
}

- (id)_reconcileSubscriptions:(uint64_t)a1
{
  if (a1)
  {
    v2 = [a2 fc_dictionaryOfSortedObjectsWithKeyBlock:&__block_literal_global_95];
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__FCSubscriptionList__reconcileSubscriptions___block_invoke_2;
    v6[3] = &unk_1E7C3F720;
    v4 = v3;
    v7 = v4;
    [v2 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMutableSubscriptionsBySubscriptionID:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

+ (id)desiredKeys
{
  v5[10] = *MEMORY[0x1E69E9840];
  v5[0] = @"subscriptionType";
  v5[1] = @"subscriptionOrder";
  v5[2] = @"subscriptionOrigin";
  v5[3] = @"dateAdded";
  v5[4] = @"tagID";
  v5[5] = @"groupID";
  v5[6] = @"url";
  v5[7] = @"title";
  v5[8] = @"pollingURL";
  v5[9] = @"notificationsEnabled";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:10];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4
{
  v125 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v84 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v7 = [(FCPrivateDataController *)self observers];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v109 objects:v116 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v110;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v110 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v109 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 subscriptionListWillStartSyncingRemoteChanges:self];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v109 objects:v116 count:16];
    }

    while (v10);
  }

  v88 = objc_opt_new();
  v87 = objc_opt_new();
  v90 = objc_opt_new();
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v6;
  v93 = [obj countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v93)
  {
    v92 = *v106;
    v91 = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v106 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v105 + 1) + 8 * v14);
        v16 = v15;
        if (!self)
        {
          v40 = 0;
LABEL_59:

          goto LABEL_61;
        }

        v17 = [v15 objectForKeyedSubscript:@"subscriptionType"];
        v18 = [v16 objectForKeyedSubscript:@"subscriptionOrder"];
        v19 = [v16 objectForKeyedSubscript:@"subscriptionOrigin"];
        v20 = FCSubscriptionOriginFromFCCKSubscriptionOrigin([v19 unsignedIntegerValue]);
        v21 = [v16 recordID];
        v22 = [v21 recordName];

        if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing subscription type from record: %@", v16];
          *buf = 136315906;
          v118 = "[FCSubscriptionList _subscriptionFromRecord:]";
          v119 = 2080;
          v120 = "FCSubscriptionList.m";
          v121 = 1024;
          v122 = 992;
          v123 = 2114;
          v124 = v56;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v23 = [v16 objectForKeyedSubscript:@"dateAdded"];
        v24 = v23;
        v95 = v19;
        v96 = v18;
        v25 = v22;
        if (v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = [v16 creationDate];
        }

        v94 = v26;

        v27 = [v16 recordID];
        v28 = [v27 zoneID];
        v29 = [v28 zoneName];
        v30 = [v29 isEqualToString:@"SensitiveSubscriptions"];

        if ([v17 isEqualToString:@"tag"])
        {
          v31 = [v16 objectForKeyedSubscript:@"tagID"];
          v32 = [v31 length];

          if (v32)
          {
            v33 = [v16 objectForKeyedSubscript:@"tagID"];
            v34 = [v16 objectForKeyedSubscript:@"notificationsEnabled"];
            v81 = v30;
            LOBYTE(v80) = [v34 BOOLValue];
            v35 = v94;
            v36 = v25;
            v37 = v96;
            [FCSubscription subscriptionWithSubscriptionID:v25 tagID:v33 type:0 order:v96 origin:v20 groupID:0 dateAdded:v94 notificationsEnabled:v80 zone:v81];
            v40 = LABEL_28:;

            goto LABEL_39;
          }
        }

        else if ([v17 isEqualToString:@"mutedTag"])
        {
          v38 = [v16 objectForKeyedSubscript:@"tagID"];
          v39 = [v38 length];

          if (v39)
          {
            v33 = [v16 objectForKeyedSubscript:@"tagID"];
            v34 = [v16 objectForKeyedSubscript:@"groupID"];
            v82 = v30;
            LOBYTE(v80) = 0;
            v35 = v94;
            v36 = v25;
            v37 = v96;
            [FCSubscription subscriptionWithSubscriptionID:v25 tagID:v33 type:2 order:v96 origin:v20 groupID:v34 dateAdded:v94 notificationsEnabled:v80 zone:v82];
            goto LABEL_28;
          }
        }

        else if ([v17 isEqualToString:@"autoFavoriteTag"])
        {
          v41 = [v16 objectForKeyedSubscript:@"tagID"];
          v42 = [v41 length];

          if (v42)
          {
            v33 = [v16 objectForKeyedSubscript:@"tagID"];
            v83 = v30;
            LOBYTE(v80) = 0;
            v35 = v94;
            v79 = v94;
            v36 = v25;
            v43 = v25;
            v44 = v33;
            v45 = 3;
            goto LABEL_38;
          }
        }

        else if ([v17 isEqualToString:@"groupableTag"])
        {
          v46 = [v16 objectForKeyedSubscript:@"tagID"];
          v47 = [v46 length];

          if (v47)
          {
            v33 = [v16 objectForKeyedSubscript:@"tagID"];
            v83 = v30;
            LOBYTE(v80) = 0;
            v35 = v94;
            v79 = v94;
            v36 = v25;
            v43 = v25;
            v44 = v33;
            v45 = 4;
            goto LABEL_38;
          }
        }

        else if ([v17 isEqualToString:@"ignoredTag"])
        {
          v48 = [v16 objectForKeyedSubscript:@"tagID"];
          v49 = [v48 length];

          if (v49)
          {
            v33 = [v16 objectForKeyedSubscript:@"tagID"];
            v83 = v30;
            LOBYTE(v80) = 0;
            v35 = v94;
            v79 = v94;
            v36 = v25;
            v43 = v25;
            v44 = v33;
            v45 = 5;
LABEL_38:
            v37 = v96;
            v40 = [FCSubscription subscriptionWithSubscriptionID:v43 tagID:v44 type:v45 order:v96 origin:v20 groupID:0 dateAdded:v79 notificationsEnabled:v80 zone:v83];
LABEL_39:

LABEL_40:
            v50 = v95;
            goto LABEL_53;
          }
        }

        else
        {
          if (![v17 isEqualToString:@"pending"])
          {
            v57 = FCSubscriptionListLog;
            v36 = v25;
            if (os_log_type_enabled(FCSubscriptionListLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v118 = v17;
              v119 = 2112;
              v120 = v16;
              _os_log_impl(&dword_1B63EF000, v57, OS_LOG_TYPE_DEFAULT, "ignoring unrecognized subscription type '%{public}@' from record: %@", buf, 0x16u);
            }

            v40 = 0;
            v50 = v95;
            v37 = v96;
            goto LABEL_52;
          }

          v51 = [v16 objectForKeyedSubscript:@"pollingURL"];
          v52 = [v16 objectForKeyedSubscript:@"url"];
          if ([v51 length] && objc_msgSend(v52, "length"))
          {
            [MEMORY[0x1E695DFF8] URLWithString:v51];
            v53 = v86 = v51;
            [MEMORY[0x1E695DFF8] URLWithString:v52];
            v54 = v85 = v52;
            v55 = [v16 objectForKeyedSubscript:@"title"];
            v36 = v25;
            v35 = v94;
            v40 = [FCSubscription pendingSubscriptionWithSubscriptionID:v25 url:v54 title:v55 pollingURL:v53 dateAdded:v94];

            v37 = v96;
            goto LABEL_40;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"subscription record is missing metadata: %@", v16];
          *buf = 136315906;
          v118 = "[FCSubscriptionList _subscriptionFromRecord:]";
          v119 = 2080;
          v120 = "FCSubscriptionList.m";
          v121 = 1024;
          v122 = 1103;
          v123 = 2114;
          v124 = v61;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v40 = 0;
        v50 = v95;
        v37 = v96;
        v36 = v25;
LABEL_52:
        v35 = v94;
LABEL_53:

        if (v40)
        {
          self = v91;
          if ([v40 isDeprecated])
          {
            goto LABEL_61;
          }

          v58 = [v16 recordID];
          v16 = [v58 recordName];

          v59 = [(NSMutableDictionary *)v91->_mutableSubscriptionsBySubscriptionID objectForKey:v16];
          if (v59)
          {
            v60 = v87;
          }

          else
          {
            v60 = v88;
          }

          [v60 addObject:v40];

          goto LABEL_59;
        }

        self = v91;
LABEL_61:

        ++v14;
      }

      while (v93 != v14);
      v62 = [obj countByEnumeratingWithState:&v105 objects:v115 count:16];
      v93 = v62;
    }

    while (v62);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v63 = v84;
  v64 = [v63 countByEnumeratingWithState:&v101 objects:v114 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v102;
    do
    {
      v67 = 0;
      do
      {
        if (*v102 != v66)
        {
          objc_enumerationMutation(v63);
        }

        if (self)
        {
          mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
        }

        else
        {
          mutableSubscriptionsBySubscriptionID = 0;
        }

        v69 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID objectForKey:*(*(&v101 + 1) + 8 * v67)];
        if (v69)
        {
          [v90 addObject:v69];
        }

        ++v67;
      }

      while (v65 != v67);
      v70 = [v63 countByEnumeratingWithState:&v101 objects:v114 count:16];
      v65 = v70;
    }

    while (v70);
  }

  [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v88 changeSubscriptions:v87 removeSubscriptions:v90];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v71 = [(FCPrivateDataController *)self observers];
  v72 = [v71 copy];

  v73 = [v72 countByEnumeratingWithState:&v97 objects:v113 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v98;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v98 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v97 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v77 subscriptionListDidStopSyncingRemoteChanges:self];
        }
      }

      v74 = [v72 countByEnumeratingWithState:&v97 objects:v113 count:16];
    }

    while (v74);
  }

  v78 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  v6 = [v5 zoneName];

  v7 = [v6 isEqualToString:@"Subscriptions"];
  if (self)
  {
    mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
  }

  else
  {
    mutableSubscriptionsBySubscriptionID = 0;
  }

  v9 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID allValues];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__FCSubscriptionList_allKnownRecordNamesWithinRecordZoneWithID___block_invoke;
  v12[3] = &__block_descriptor_40_e34___NSString_16__0__FCSubscription_8l;
  v12[4] = v7 ^ 1u;
  v10 = [v9 fc_arrayByTransformingWithBlock:v12];

  return v10;
}

id __64__FCSubscriptionList_allKnownRecordNamesWithinRecordZoneWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 zone] == *(a1 + 32))
  {
    v4 = [v3 subscriptionID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleSyncDidResetLocalDataForRecordZoneWithID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 zoneName];
  if (([v5 isEqualToString:@"Subscriptions"] & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v6 = [(FCSubscriptionList *)self allKnownRecordNamesWithinRecordZoneWithID:v4];
  v7 = [v6 count];

  if (!v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(FCPrivateDataController *)self observers];
    v5 = [v8 copy];

    v9 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 subscriptionListDidResetToEmpty:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    goto LABEL_12;
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)backingRecordZoneIDs
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = *MEMORY[0x1E695B728];
  v4 = [v2 initWithZoneName:@"Subscriptions" ownerName:*MEMORY[0x1E695B728]];
  v9[0] = v4;
  v5 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:@"SensitiveSubscriptions" ownerName:v3];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v30;
    *&v8 = 138543618;
    v26 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        if (([a1 isLocalStoreKeyInternal:{v12, v26}] & 1) == 0)
        {
          objc_opt_class();
          v13 = [v5 objectForKey:v12];
          if (v13)
          {
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15)
          {
            v16 = [FCSubscription subscriptionWithSubscriptionID:v12 dictionaryRepresentation:v15];
            v17 = v16;
            if (v16 && ([v16 isDeprecated]& 1) == 0)
            {
              [v28 addObject:v17];
            }

LABEL_16:
          }

          else
          {
            v18 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              log = v18;
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              *buf = v26;
              v35 = v20;
              v36 = 2114;
              v37 = v12;
              v17 = log;
              _os_log_error_impl(&dword_1B63EF000, log, OS_LOG_TYPE_ERROR, "ERROR: %{public}@ is not a dictionary for key %{public}@", buf, 0x16u);

              goto LABEL_16;
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v21 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
      v9 = v21;
    }

    while (v21);
  }

  v22 = [[FCModifySubscriptionsCommand alloc] initWithSubscriptions:v28 merge:1];
  v33 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BOOL)canHelpRestoreZoneName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Subscriptions"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SensitiveSubscriptions"];
  }

  return v4;
}

- (id)recordsForRestoringZoneName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__42;
  v16 = __Block_byref_object_dispose__42;
  v17 = 0;
  if ([v4 isEqualToString:@"Subscriptions"])
  {
    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v6 = itemsLock;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__FCSubscriptionList_recordsForRestoringZoneName___block_invoke;
    v11[3] = &unk_1E7C37160;
    v11[4] = self;
    v11[5] = &v12;
    [(FCMTWriterLock *)v6 performReadSync:v11];
  }

  else
  {
    if (![v4 isEqualToString:@"SensitiveSubscriptions"])
    {
      goto LABEL_10;
    }

    if (self)
    {
      v7 = self->_itemsLock;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__FCSubscriptionList_recordsForRestoringZoneName___block_invoke_3;
    v10[3] = &unk_1E7C37160;
    v10[4] = self;
    v10[5] = &v12;
    [(FCMTWriterLock *)v6 performReadSync:v10];
  }

LABEL_10:
  v8 = [v13[5] fc_arrayByTransformingWithBlock:&__block_literal_global_34_0];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __50__FCSubscriptionList_recordsForRestoringZoneName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[18];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 fc_arrayOfObjectsPassingTest:&__block_literal_global_29];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __50__FCSubscriptionList_recordsForRestoringZoneName___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[18];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 fc_arrayOfObjectsPassingTest:&__block_literal_global_31];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)subscriptionIDForTagID:(id)a3 type:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4 <= 2)
  {
    if (!a4)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", @"tag", v5, @"subscription"];
      goto LABEL_12;
    }

    if (a4 == 2)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = FCCKSubscriptionTypeMutedTag;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a4)
    {
      case 3uLL:
        v6 = MEMORY[0x1E696AEC0];
        v7 = FCCKSubscriptionTypeAutoFavoriteTag;
        goto LABEL_11;
      case 4uLL:
        v6 = MEMORY[0x1E696AEC0];
        v7 = FCCKSubscriptionTypeGroupableTag;
        goto LABEL_11;
      case 5uLL:
        v6 = MEMORY[0x1E696AEC0];
        v7 = FCCKSubscriptionTypeIgnoredTag;
LABEL_11:
        [v6 stringWithFormat:@"%@-%@", *v7, v5, v12];
        v8 = LABEL_12:;
        goto LABEL_13;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported Tag Type"];
    *buf = 136315906;
    v14 = "+[FCSubscriptionList subscriptionIDForTagID:type:]";
    v15 = 2080;
    v16 = "FCSubscriptionList.m";
    v17 = 1024;
    v18 = 391;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = 0;
LABEL_13:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __116__FCSubscriptionList_addSubscriptionsForTagIDs_typeProvider_originProvider_groupID_notificationsEnabled_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [FCSubscriptionList subscriptionIDForTagID:v18 type:(*(*(a1 + 64) + 16))()];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKey:v3];

  if (v6)
  {
    [*(a1 + 56) addObject:v18];
  }

  else
  {
    v7 = (*(*(a1 + 64) + 16))();
    v8 = [(FCSubscriptionList *)*(a1 + 32) _newSubscriptionOrder];
    v9 = (*(*(a1 + 72) + 16))();
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = v11;
    v13 = *(a1 + 80);
    v15 = (v7 - 3) < 3 && *(a1 + 32) != 0;
    LOBYTE(v17) = *(a1 + 80);
    v16 = [FCSubscription subscriptionWithSubscriptionID:v3 tagID:v18 type:v7 order:v8 origin:v9 groupID:v10 dateAdded:v11 notificationsEnabled:v17 zone:v15];

    [*(a1 + 48) addObject:v16];
  }
}

- (void)_newSubscriptionOrder
{
  if (result)
  {
    v1 = result;
    v2 = -1000000000000000;
    v3 = MEMORY[0x1E696AD98];
    v4 = [result orderedSubscribedTagIDs];
    v5 = [v4 firstObject];

    if (v5)
    {
      v6 = [FCSubscriptionList subscriptionIDForTagID:v5 type:0];
      if (v6)
      {
        v7 = v6;
        v8 = [v1 subscriptionsBySubscriptionID];
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 order];
        v11 = [v10 longLongValue];

        v2 = v11 - 1000000000000000;
      }
    }

    [v3 numberWithLongLong:v2];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (BOOL)addSubscriptionForTagID:(id)a3 type:(unint64_t)a4 origin:(unint64_t)a5 groupID:(id)a6 notificationsEnabled:(BOOL)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v33 = "[FCSubscriptionList addSubscriptionForTagID:type:origin:groupID:notificationsEnabled:]";
    v34 = 2080;
    v35 = "FCSubscriptionList.m";
    v36 = 1024;
    v37 = 450;
    v38 = 2114;
    v39 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v14 = [FCSubscriptionList subscriptionIDForTagID:v12 type:a4];
  if (self)
  {
    mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
  }

  else
  {
    mutableSubscriptionsBySubscriptionID = 0;
  }

  v16 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID objectForKey:v14];

  if (!v16)
  {
    v17 = [(FCSubscriptionList *)self _newSubscriptionOrder];
    v18 = [MEMORY[0x1E695DF00] date];
    v19 = a5;
    v20 = v18;
    if (self)
    {
      v21 = a4 - 3 >= 3;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v21;
    LOBYTE(v29) = a7;
    v23 = [FCSubscription subscriptionWithSubscriptionID:v14 tagID:v12 type:a4 order:v17 origin:v19 groupID:v13 dateAdded:v18 notificationsEnabled:v29 zone:v22];

    v31 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v24 changeSubscriptions:0 removeSubscriptions:0];

    v30 = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v25];
  }

  v26 = *MEMORY[0x1E69E9840];
  return v16 == 0;
}

- (void)addSubscriptionsForTagIDs:(id)a3 typeProvider:(id)a4 originProvider:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self)
  {
    v13 = a3;
    v14 = objc_opt_new();
    [MEMORY[0x1E696AF00] isMainThread];
    if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCSubscriptionList addSubscriptionsForTagIDs:typeProvider:originProvider:groupID:notificationsEnabled:completion:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCSubscriptionList.m";
      *&buf[22] = 1024;
      LODWORD(v21) = 406;
      WORD2(v21) = 2114;
      *(&v21 + 6) = v19;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v15 = objc_opt_new();
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __116__FCSubscriptionList_addSubscriptionsForTagIDs_typeProvider_originProvider_groupID_notificationsEnabled_completion___block_invoke;
    *&v21 = &unk_1E7C41230;
    v25 = v10;
    *(&v21 + 1) = self;
    v26 = v11;
    v22 = 0;
    v27 = 0;
    v16 = v15;
    v23 = v16;
    v17 = v14;
    v24 = v17;
    [v13 enumerateObjectsUsingBlock:buf];

    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v16 changeSubscriptions:0 removeSubscriptions:0];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v16];
    if (v12)
    {
      v12[2](v12, v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)appendSubscriptionForTagID:(id)a3 type:(unint64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v35 = "[FCSubscriptionList appendSubscriptionForTagID:type:]";
    v36 = 2080;
    v37 = "FCSubscriptionList.m";
    v38 = 1024;
    v39 = 513;
    v40 = 2114;
    v41 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [FCSubscriptionList subscriptionIDForTagID:v6 type:a4];
  if (self)
  {
    mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
  }

  else
  {
    mutableSubscriptionsBySubscriptionID = 0;
  }

  v9 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID objectForKey:v7];

  if (!v9)
  {
    if (self)
    {
      v10 = 1000000000000000;
      v31 = MEMORY[0x1E696AD98];
      v11 = [(FCSubscriptionList *)self orderedSubscribedTagIDs];
      v12 = [v11 lastObject];

      if (v12)
      {
        v13 = [FCSubscriptionList subscriptionIDForTagID:v12 type:0];
        if (v13)
        {
          v14 = v13;
          v30 = [(FCSubscriptionList *)self subscriptionsBySubscriptionID];
          v15 = [v30 objectForKeyedSubscript:v14];
          v16 = [v15 order];
          v29 = [v16 longLongValue];

          v10 = v29 + 1000000000000000;
        }
      }

      v17 = [v31 numberWithLongLong:v10];
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x1E695DF00] date];
    v19 = v18;
    if (self)
    {
      v20 = a4 - 3 >= 3;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    LOBYTE(v28) = 0;
    v22 = [FCSubscription subscriptionWithSubscriptionID:v7 tagID:v6 type:a4 order:v17 origin:0 groupID:0 dateAdded:v18 notificationsEnabled:v28 zone:v21];

    v33 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v23 changeSubscriptions:0 removeSubscriptions:0];

    v32 = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v24];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

- (void)removeSubscriptionsForTagIDs:(id)a3 typeProvider:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E696AF00];
  v11 = a3;
  [v10 isMainThread];
  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
    *buf = 136315906;
    v25 = "[FCSubscriptionList removeSubscriptionsForTagIDs:typeProvider:completion:]";
    v26 = 2080;
    v27 = "FCSubscriptionList.m";
    v28 = 1024;
    v29 = 541;
    v30 = 2114;
    v31 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v12 = objc_opt_new();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__FCSubscriptionList_removeSubscriptionsForTagIDs_typeProvider_completion___block_invoke;
  v21[3] = &unk_1E7C41258;
  v23 = v8;
  v21[4] = self;
  v13 = v12;
  v22 = v13;
  v14 = v8;
  v15 = [v11 fc_arrayByTransformingWithBlock:v21];

  if ([v15 count])
  {
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:0 changeSubscriptions:v15 removeSubscriptions:?];
    v16 = v15;
    v17 = v16;
    if (self && [v16 count])
    {
      v18 = [[FCRemoveSubscriptionsCommand alloc] initWithSubscriptions:v17];
      [(FCPrivateDataController *)self addCommandToCommandQueue:v18];
    }
  }

  if (v9)
  {
    v9[2](v9, v13);
  }

  v19 = *MEMORY[0x1E69E9840];
}

id __75__FCSubscriptionList_removeSubscriptionsForTagIDs_typeProvider_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCSubscriptionList subscriptionIDForTagID:v3 type:(*(*(a1 + 48) + 16))()];
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 144);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 objectForKey:v4];
  }

  else
  {
    [*(a1 + 40) addObject:v3];
    v7 = 0;
  }

  return v7;
}

- (void)removeSubscriptionForTagID:(id)a3 type:(unint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v6)
  {
    v7 = [FCSubscriptionList subscriptionIDForTagID:v6 type:a4];
    if (self)
    {
      mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
    }

    else
    {
      mutableSubscriptionsBySubscriptionID = 0;
    }

    v9 = mutableSubscriptionsBySubscriptionID;
    v10 = [(NSMutableDictionary *)v9 objectForKey:v7];

    if (v10)
    {
      v16 = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:0 changeSubscriptions:v11 removeSubscriptions:?];

      if (self)
      {
        v12 = v10;
        v13 = [[FCRemoveSubscriptionsCommand alloc] initWithSubscription:v12];

        [(FCPrivateDataController *)self addCommandToCommandQueue:v13];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v18 = "[FCSubscriptionList removeSubscriptionForTagID:type:]";
    v19 = 2080;
    v20 = "FCSubscriptionList.m";
    v21 = 1024;
    v22 = 575;
    v23 = 2114;
    v24 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NSArray)rankedAllSubscribedTagIDs
{
  v3 = [(FCSubscriptionList *)self subscribedTagRanker];
  v4 = [(FCSubscriptionList *)self allSubscribedTagIDs];
  v5 = [v4 allObjects];
  v6 = [v3 rankTagIDsDescending:v5];

  return v6;
}

- (id)subscriptionsForType:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    if (!a3)
    {
      v3 = [(FCSubscriptionList *)self subscribedTagIDs];
      goto LABEL_15;
    }

    if (a3 == 2)
    {
      v3 = [(FCSubscriptionList *)self mutedTagIDs];
      goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 3uLL:
        v3 = [(FCSubscriptionList *)self autoFavoriteTagIDs];
        goto LABEL_15;
      case 4uLL:
        v3 = [(FCSubscriptionList *)self groupableTagIDs];
        goto LABEL_15;
      case 5uLL:
        v3 = [(FCSubscriptionList *)self ignoredTagIDs];
        goto LABEL_15;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported Tag Type"];
    v7 = 136315906;
    v8 = "[FCSubscriptionList subscriptionsForType:]";
    v9 = 2080;
    v10 = "FCSubscriptionList.m";
    v11 = 1024;
    v12 = 667;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
  }

  v3 = 0;
LABEL_15:
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)canAddSubscription
{
  v2 = [(FCSubscriptionList *)self subscribedTagIDs];
  v3 = [v2 count] < 0xFA;

  return v3;
}

- (BOOL)hasSubscriptionForTagID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v11 = "[FCSubscriptionList hasSubscriptionForTagID:]";
    v12 = 2080;
    v13 = "FCSubscriptionList.m";
    v14 = 1024;
    v15 = 681;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCSubscriptionList *)self subscribedTagIDs];
  v6 = [v5 containsObject:v4];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)subscriptionForTagID:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [FCSubscriptionList subscriptionIDForTagID:v6 type:a4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__42;
  v20 = __Block_byref_object_dispose__42;
  v21 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v9 = itemsLock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__FCSubscriptionList_subscriptionForTagID_type___block_invoke;
  v13[3] = &unk_1E7C37138;
  v15 = &v16;
  v13[4] = self;
  v10 = v7;
  v14 = v10;
  [(FCMTWriterLock *)v9 performReadSync:v13];

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __48__FCSubscriptionList_subscriptionForTagID_type___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[18];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKeyedSubscript:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)subscriptionForTagIDOfAnyType:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__42;
  v18 = __Block_byref_object_dispose__42;
  v19 = 0;
  if (v4)
  {
    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v6 = itemsLock;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__FCSubscriptionList_subscriptionForTagIDOfAnyType___block_invoke;
    v10[3] = &unk_1E7C412A8;
    v12 = self;
    v13 = &v14;
    v11 = v4;
    [(FCMTWriterLock *)v6 performReadSync:v10];

    v7 = v15[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __52__FCSubscriptionList_subscriptionForTagIDOfAnyType___block_invoke(uint64_t a1)
{
  v2 = FCSubscriptionTypes();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__FCSubscriptionList_subscriptionForTagIDOfAnyType___block_invoke_2;
  v3[3] = &unk_1E7C41280;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __52__FCSubscriptionList_subscriptionForTagIDOfAnyType___block_invoke_2(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v11 = +[FCSubscriptionList subscriptionIDForTagID:type:](FCSubscriptionList, "subscriptionIDForTagID:type:", a1[4], [a2 unsignedIntegerValue]);
  v6 = a1[5];
  if (v6)
  {
    v6 = v6[18];
  }

  v7 = v6;
  v8 = [v7 objectForKeyedSubscript:v11];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a4 = *(*(a1[6] + 8) + 40) != 0;
}

- (NSSet)allSubscribedTagIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42;
  v12 = __Block_byref_object_dispose__42;
  v13 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v4 = itemsLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__FCSubscriptionList_allSubscribedTagIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __41__FCSubscriptionList_allSubscribedTagIDs__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__FCSubscriptionList_allSubscribedTagIDs__block_invoke_2;
  v5[3] = &unk_1E7C371F8;
  v5[4] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] fc_set:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __41__FCSubscriptionList_allSubscribedTagIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 104);
    if (v4)
    {
      [v8 unionSet:v4];
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 120);
      if (v6)
      {
        v7 = v6;
        [v8 unionSet:v6];
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)hasNotificationsEnabledForTagID:(id)a3
{
  v3 = [(FCSubscriptionList *)self subscriptionForTagID:a3];
  v4 = [v3 notificationsEnabled];

  return v4;
}

- (BOOL)setNotificationsEnabled:(BOOL)a3 forTagID:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v6)
  {
    v7 = [FCSubscriptionList subscriptionIDForTagID:v6 type:0];
    if (self)
    {
      mutableSubscriptionsBySubscriptionID = self->_mutableSubscriptionsBySubscriptionID;
    }

    else
    {
      mutableSubscriptionsBySubscriptionID = 0;
    }

    v9 = [(NSMutableDictionary *)mutableSubscriptionsBySubscriptionID objectForKey:v7];
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      v12 = [v9 subscriptionID];
      v13 = [v10 tagID];
      v14 = [v10 order];
      v25 = v7;
      v15 = [v10 subscriptionOrigin];
      [v10 dateAdded];
      v16 = v24 = v11;
      LOBYTE(v23) = a3;
      v17 = [FCSubscription subscriptionWithSubscriptionID:v12 tagID:v13 type:0 order:v14 origin:v15 groupID:0 dateAdded:v16 notificationsEnabled:v23 zone:0];

      v27 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v18 changeSubscriptions:0 removeSubscriptions:?];

      v26 = v17;
      v11 = v24;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v19];

      v7 = v25;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
      *buf = 136315906;
      v29 = "[FCSubscriptionList setNotificationsEnabled:forTagID:]";
      v30 = 2080;
      v31 = "FCSubscriptionList.m";
      v32 = 1024;
      v33 = 756;
      v34 = 2114;
      v35 = v22;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v11 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasMutedSubscriptionForTagID:(id)a3
{
  v4 = a3;
  v5 = [(FCSubscriptionList *)self mutedTagIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)hasIgnoredSubscriptionForTagID:(id)a3
{
  v4 = a3;
  v5 = [(FCSubscriptionList *)self ignoredTagIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)hasAutoFavoriteSubscriptionForTagID:(id)a3
{
  v4 = a3;
  v5 = [(FCSubscriptionList *)self autoFavoriteTagIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)moveSubscriptionForTagID:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCSubscriptionList *)self subscribedTagIDs];
  v8 = [v7 count];

  if (v6)
  {
    v9 = v8 > a4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v10)
  {
    v11 = [(FCSubscriptionList *)self orderedSubscribedTagIDs];
    v12 = [v11 mutableCopy];

    v13 = MEMORY[0x1E695DEC8];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__FCSubscriptionList_moveSubscriptionForTagID_toIndex___block_invoke;
    v19[3] = &unk_1E7C412D0;
    v20 = v12;
    v22 = self;
    v23 = a4;
    v21 = v6;
    v14 = v12;
    v15 = [v13 fc_array:v19];
    v16 = [[FCTagSubscriptionOrderAssigner alloc] initWithInitialOrder:1000000000000000 orderSpacing:?];
    v17 = [(FCTagSubscriptionOrderAssigner *)v16 assignOrderToTagSubscriptions:v15];
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v17 changeSubscriptions:0 removeSubscriptions:?];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v17];
  }

  return v10;
}

void __55__FCSubscriptionList_moveSubscriptionForTagID_toIndex___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [*(a1 + 32) removeObject:*(a1 + 40)];
  [*(a1 + 32) insertObject:*(a1 + 40) atIndex:*(a1 + 56)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = [*(a1 + 32) objectAtIndex:v3 - 1];
    v5 = [*(a1 + 48) subscriptionForTagID:v4];
    [v11 addObject:v5];
  }

  v6 = [*(a1 + 48) subscriptionForTagID:*(a1 + 40)];
  v7 = [v6 copyWithOrder:0];
  [v11 addObject:v7];
  v8 = *(a1 + 56) + 1;
  if (v8 != [*(a1 + 32) count])
  {
    v9 = [*(a1 + 32) objectAtIndex:*(a1 + 56) + 1];
    v10 = [*(a1 + 48) subscriptionForTagID:v9];
    [v11 addObject:v10];
  }
}

- (void)reorderSubscriptionOrderForOrderedIdentifiers:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__FCSubscriptionList_reorderSubscriptionOrderForOrderedIdentifiers___block_invoke;
  v15[3] = &unk_1E7C412F8;
  v15[4] = self;
  v5 = [v4 fc_arrayByTransformingWithBlock:v15];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v9 order];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      v12 = [v10 isEqualToNumber:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        v14 = [v9 copyWithOrder:v13];

        [v6 addObject:v14];
      }

      ++v8;
      v7 += 1000000000000000;
    }

    while (v8 < [v5 count]);
  }

  if ([v6 count])
  {
    [(FCSubscriptionList *)&self->super.super.isa _localAddSubscriptions:v6 changeSubscriptions:0 removeSubscriptions:?];
    [(FCSubscriptionList *)self _modifyRemoteSubscriptions:v6];
  }
}

void __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke_2;
  v3[3] = &unk_1E7C38FF0;
  v4 = v2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v4 prepareForUseWithCompletionHandler:v3];
}

void __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke_2(void **a1)
{
  v2 = [[FCTagSubscriptionSorter alloc] initWithTagRanker:?];
  v3 = [(FCTagSubscriptionSorter *)v2 sortTagSubscriptions:?];
  v4 = [[FCTagSubscriptionOrderAssigner alloc] initWithInitialOrder:1000000000000000 orderSpacing:?];
  v5 = [(FCTagSubscriptionOrderAssigner *)v4 assignOrderToTagSubscriptions:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__FCSubscriptionList__assignOrderToTagSubscriptions_withCompletion___block_invoke_3;
  v8[3] = &unk_1E7C37778;
  v6 = a1[6];
  v9 = v5;
  v10 = v6;
  v7 = v5;
  FCPerformBlockOnMainThread(v8);
}

void __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7 = v4;
  v6 = [v4 tagID];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    [*(a1 + 40) addObject:v7];
  }
}

void __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v5 tagID];
  if ([v6 containsObject:v7])
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:v10];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = *(a1 + 48);
    v7 = [v5 subscriptionID];
    [v9 addObject:v7];
  }

LABEL_5:
}

uint64_t __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dictionaryRepresentation];
  v5 = [v3 subscriptionID];
  if ([v3 subscriptionType] == 1)
  {
    goto LABEL_5;
  }

  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = [v3 tagID];
  v9 = [v7 subscriptionIDForTagID:v8 type:{objc_msgSend(v3, "subscriptionType")}];
  v10 = [v5 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 40);
  v12 = [v3 subscriptionID];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (v13)
  {
    [*(a1 + 48) setObject:v4 forKeyedSubscript:v5];
    [*(a1 + 56) setObject:v3 forKeyedSubscript:v5];
    v14 = 1;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

void __85__FCSubscriptionList__localAddSubscriptions_changeSubscriptions_removeSubscriptions___block_invoke_85(uint64_t a1)
{
  [(FCSubscriptionList *)*(a1 + 32) setMutableSubscriptionsBySubscriptionID:?];
  v2 = *(a1 + 32);

  [(FCSubscriptionList *)v2 _regenerateSortedSubscriptions];
}

uint64_t __52__FCSubscriptionList__regenerateSortedSubscriptions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [FCSubscriptionList subscriptionIDForTagID:a2 type:0];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = *(a1 + 32);
  v10 = [FCSubscriptionList subscriptionIDForTagID:v6 type:0];

  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [v8 order];
  v13 = [v11 order];
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (v12)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v17 = [v12 compare:v13];
    v16 = v17;
    if (!v17)
    {
      v18 = [v8 tagID];
      v19 = [v11 tagID];
      v16 = [v18 compare:v19];
    }
  }

  return v16;
}

void __46__FCSubscriptionList__reconcileSubscriptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 sortedArrayUsingSelector:sel_comparePriority_];
  v4 = [v7 firstObject];
  v5 = *(a1 + 32);
  v6 = [v4 subscriptionID];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

id __60__FCSubscriptionList_configureKeyValueStoreForJSONHandling___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 isEqualToString:@"subscriptionOrigin"];

  if (v8)
  {
    v9 = NSStringFromFCSubscriptionOrigin([v5 unsignedIntegerValue]);
  }

  else
  {
    objc_opt_class();
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v4;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 isEqualToString:@"subscriptionType"];

    if (v12)
    {
      v9 = NSStringFromFCSubscriptionType([v5 unsignedIntegerValue]);
    }

    else
    {
      v9 = v5;
    }
  }

  v13 = v9;

  return v13;
}

@end