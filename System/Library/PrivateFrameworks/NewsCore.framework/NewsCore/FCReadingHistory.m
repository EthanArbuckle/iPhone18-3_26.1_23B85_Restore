@interface FCReadingHistory
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4;
+ (void)populateLocalStoreClassRegistry:(id)a3;
- (BOOL)hasArticleBeenConsumed:(id)a3;
- (BOOL)hasArticleBeenMarkedAsOffensive:(id)a3;
- (BOOL)hasArticleBeenRead:(id)a3;
- (BOOL)hasArticleBeenReadMoreThanThreshold:(id)a3;
- (BOOL)hasArticleBeenRemovedFromAudio:(id)a3;
- (BOOL)hasArticleBeenSeen:(id)a3;
- (BOOL)hasArticleBeenVisited:(id)a3;
- (BOOL)hasArticleCompletedListening:(id)a3;
- (BOOL)hasArticleCompletedReading:(id)a3;
- (BOOL)markArticle:(id)a3 withCompletedListening:(BOOL)a4;
- (BOOL)markArticle:(id)a3 withCompletedReading:(BOOL)a4;
- (BOOL)markArticle:(id)a3 withLikingStatus:(unint64_t)a4;
- (BOOL)markArticle:(id)a3 withRemovedFromAudio:(BOOL)a4;
- (BOOL)markArticleAsReadWithArticleID:(id)a3 articleVersion:(int64_t)a4 readDate:(id)a5;
- (BOOL)markArticleAsSeenWithArticleID:(id)a3 articleVersion:(int64_t)a4 seenDate:(id)a5;
- (BOOL)markArticleAsSeenWithHeadline:(id)a3;
- (BOOL)markArticleAsSeenWithHeadline:(id)a3 rememberForever:(BOOL)a4;
- (BOOL)toggleArticleHasBeenMarkedAsOffensive:(id)a3;
- (BOOL)toggleDislikeForArticleWithID:(id)a3;
- (BOOL)toggleLikeForArticleWithID:(id)a3;
- (FCReadingHistory)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5;
- (NSArray)readingHistoryItems;
- (NSArray)sortedListenedArticleIDs;
- (NSArray)sortedVisitedArticleIDs;
- (NSDictionary)readingHistoryItemsByArticleID;
- (NSSet)allConsumedArticleIDs;
- (NSSet)allDislikedArticleIDs;
- (NSSet)allLikedArticleIDs;
- (NSSet)allReadArticleIDs;
- (NSSet)allSeenArticleIDs;
- (double)listeningProgressFor:(id)a3;
- (id)_markHistoryItemsAsSeenWithItemExposures:(int)a3 rememberForever:;
- (id)_readingHistoryItemForArticleID:(uint64_t)a1;
- (id)_sortedReadingHistoryItemsWithMaxCount:(void *)a1;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3;
- (id)consumedArticleIDsForTagID:(id)a3 fromTime:(id)a4;
- (id)firstSeenDateFor:(id)a3;
- (id)historyItemsByArticleIDForArticleIDs:(id)a3;
- (id)historyItemsForArticleIDs:(id)a3;
- (id)lastListenedFor:(id)a3;
- (id)lastVisitedDateForArticleID:(id)a3;
- (id)listeningProgressSavedDateFor:(id)a3;
- (id)localStoreMigrator;
- (id)markArticlesAsSeenWithHeadlines:(int)a3 rememberForever:;
- (id)mostRecentlyCompletedListeningArticlesWithMaxCount:(unint64_t)a3;
- (id)readDateFor:(id)a3;
- (id)readingPositionJSONFor:(id)a3;
- (id)readingPositionSavedDateFor:(id)a3;
- (id)recordsForRestoringZoneName:(id)a3;
- (id)sortedVisitedArticleIDsSatisfying:(id)a3;
- (int64_t)listenedCountFor:(id)a3;
- (unint64_t)likingStatusForArticleID:(id)a3;
- (void)_addHistoryItems:(uint64_t)a1 addToStore:(void *)a2;
- (void)_cacheHistoryItemByArticleID:(uint64_t)a1;
- (void)_markArticle:(uint64_t)a3 withLikingStatus:;
- (void)_markArticleAsSeenWithArticleID:(int)a3 rememberForever:(uint64_t)a4 articleVersion:(void *)a5 seenDate:(void *)a6 firstSeenDate:(void *)a7 historyItem:(uint64_t *)a8 modifiedHistoryFeaturesOut:;
- (void)_modifyHistoryForArticleID:(void *)a3 withBlock:;
- (void)addObserver:(id)a3;
- (void)clearHistory;
- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4;
- (void)loadLocalCachesFromStore;
- (void)markArticle:(id)a3 asArticleConsumed:(BOOL)a4 sourceChannelTagID:(id)a5;
- (void)markArticle:(id)a3 asOffensive:(BOOL)a4;
- (void)markArticle:(id)a3 withLastListened:(id)a4;
- (void)markArticle:(id)a3 withListeningProgress:(double)a4;
- (void)markArticle:(id)a3 withReadingPositionJSON:(id)a4;
- (void)markArticleAsReadWithHeadline:(id)a3 fromGroupType:(int64_t)a4 swipedToArticle:(BOOL)a5 onScreenChecker:(id)a6;
- (void)removeArticleFromHistory:(id)a3;
- (void)removeObserver:(id)a3;
- (void)willAccessArticleIDs:(id)a3;
@end

@implementation FCReadingHistory

- (id)localStoreMigrator
{
  v2 = objc_alloc_init(FCReadingHistoryMigrator);

  return v2;
}

- (void)loadLocalCachesFromStore
{
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__FCReadingHistory_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v3];
}

void __44__FCReadingHistory_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) localStore];
  [v3 addAllEntriesToDictionary:v2];

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() internalLocalStoreKeys];
  v6 = [v5 allObjects];
  [v2 removeObjectsForKeys:v6];

  if (([*(a1 + 32) isSyncingEnabled] & 1) == 0)
  {
    v7 = [v2 count];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v8 = [v2 allValues];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__FCReadingHistory_loadLocalCachesFromStore__block_invoke_2;
    v18[3] = &unk_1E7C37398;
    v18[4] = *(a1 + 32);
    v19 = v2;
    v20 = &v21;
    FCVisitLocallyPrunableHistoryItems(v8, v18);

    if (v22[3])
    {
      v9 = FCPrivateDataLog;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = v22[3];
        *buf = 138543874;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        v29 = 2048;
        v30 = v7;
        _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ pruned %lu of %lu history items", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    objc_storeStrong((v14 + 96), v2);
  }

  v15 = [MEMORY[0x1E695DF90] dictionary];
  v16 = *(a1 + 32);
  if (v16)
  {
    objc_storeStrong((v16 + 104), v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __38__FCReadingHistory_allLikedArticleIDs__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 articleLikingStatus] == 1)
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSSet)allLikedArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__FCReadingHistory_allLikedArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (NSSet)allDislikedArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__FCReadingHistory_allDislikedArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __41__FCReadingHistory_allDislikedArticleIDs__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 articleLikingStatus] == 2)
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSArray)sortedVisitedArticleIDs
{
  v2 = [(FCReadingHistory *)self _sortedReadingHistoryItemsWithMaxCount:?];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_61_0];

  return v3;
}

- (NSArray)readingHistoryItems
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
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
  v7[2] = __39__FCReadingHistory_readingHistoryItems__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__FCReadingHistory_readingHistoryItems__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
}

- (FCReadingHistory)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5
{
  v9.receiver = self;
  v9.super_class = FCReadingHistory;
  v5 = [(FCPrivateDataController *)&v9 initWithContext:a3 pushNotificationCenter:a4 storeDirectory:a5];
  if (v5)
  {
    v6 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v5->_itemsLock;
    v5->_itemsLock = v6;
  }

  return v5;
}

- (void)_addHistoryItems:(uint64_t)a1 addToStore:(void *)a2
{
  v3 = a2;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v3)
  {
    v4 = *(a1 + 112);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__FCReadingHistory__addHistoryItems_addToStore___block_invoke;
    v5[3] = &unk_1E7C37678;
    v5[4] = a1;
    v7 = 1;
    v6 = v3;
    [v4 performWriteSync:v5];
  }
}

FCItemExposure *__91__FCReadingHistory_syncReadingHistoryItemRecords_deletedArticleIDs_didRemoveLastVisitedAt___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [FCItemExposure alloc];
  v4 = v2;
  v5 = v4;
  if (v3)
  {
    if ([v4 hasArticleBeenSeen])
    {
      v6 = [MEMORY[0x1E695DF00] date];
      v7 = [v5 articleID];
      v8 = [v5 firstSeenAt];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      v11 = [v5 firstSeenAtOfMaxVersionSeen];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v6;
      }

      v14 = [v5 maxVersionSeen];
      v15 = [v5 firstSeenAtOfMaxVersionSeen];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v6;
      }

      v3 = [(FCItemExposure *)v3 initWithItemID:v7 firstExposedAt:v10 lastExposedAt:v13 maxExposedVersion:v14 maxExposedVersionFirstExposedAt:v17];

      v18 = v3;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __44__FCReadingHistory_loadLocalCachesFromStore__block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 localStore];
  v6 = [v4 identifier];
  [v5 removeObjectForKey:v6];

  v7 = a1[5];
  v8 = [v4 identifier];

  [v7 removeObjectForKey:v8];
  ++*(*(a1[6] + 8) + 24);
}

+ (id)backingRecordZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"ReadingHistory" ownerName:*MEMORY[0x1E695B728]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)populateLocalStoreClassRegistry:(id)a3
{
  v3 = a3;
  [v3 registerClass:objc_opt_class()];
}

+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (([a1 isLocalStoreKeyInternal:v12] & 1) == 0)
        {
          v13 = [v5 objectForKeyedSubscript:v12];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = [[FCModifyHistoryCommand alloc] initWithHistoryItems:v6 merge:1];
  v22 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4
{
  v238 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = v7;
  v9 = "bly";
  v174 = v8;
  if (self)
  {
    v10 = v8;
    [MEMORY[0x1E696AF00] isMainThread];
    if ([v10 count])
    {
      v11 = MEMORY[0x1E695DFA8];
      v12 = [(NSMutableDictionary *)self->_itemsByIdentifier allKeys];
      v13 = [v11 setWithArray:v12];

      [v13 fc_removeObjectsFromArray:v10];
      v14 = [(FCPrivateDataController *)self recordNamesPendingSaveToCloud];
      [v13 fc_removeObjectsFromArray:v14];

      v15 = [v13 count];
      v172 = v15 == 0;
      v16 = FCPrivateDataLog;
      v17 = os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v18 = v16;
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v20;
          _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ detected a likely remote pruning of seen items", &buf, 0xCu);
        }

        v21 = [MEMORY[0x1E695DF00] fc_dateWithTimeIntervalBeforeNow:864000.0];
        v22 = MEMORY[0x1E695DFD8];
        v23 = [(FCReadingHistory *)self articleExposureRegistry];
        v24 = [v23 subsetOfItemIDs:v174 accessedSinceDate:v21];
        v25 = [v22 setWithArray:v24];

        v26 = [MEMORY[0x1E695DF70] array];
        v27 = [MEMORY[0x1E695DF70] array];
        itemsLock = self->_itemsLock;
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v224 = __67__FCReadingHistory__preprocessSyncedDeletions_didUserClearHistory___block_invoke_135;
        v225 = &unk_1E7C376C8;
        v226 = v174;
        v227 = self;
        v29 = v25;
        v228 = v29;
        v30 = v27;
        v229 = v30;
        v31 = v26;
        v230 = v31;
        [(FCMTWriterLock *)itemsLock performReadSync:&buf];
        if ([v30 count])
        {
          v32 = FCPrivateDataLog;
          if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = [v30 count];
            *v231 = 138543618;
            *&v231[4] = v35;
            *&v231[12] = 2048;
            *&v231[14] = v36;
            _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ will resurrect %lu history items after server-side pruning", v231, 0x16u);
          }

          v37 = [[FCModifyHistoryCommand alloc] initWithHistoryItems:v30 merge:0];
          [(FCPrivateDataController *)self addCommandToCommandQueue:v37];
        }

        v38 = v230;
        v39 = v31;

        v9 = "PrivateDataAssembly" + 16;
      }

      else
      {
        if (v17)
        {
          v40 = v16;
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v42;
          _os_log_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ detected a likely remote clearing of history", &buf, 0xCu);
        }

        v39 = v174;
      }
    }

    else
    {
      v172 = 0;
      v39 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v172 = 0;
    v39 = 0;
  }

  v183 = objc_opt_new();
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  obj = v6;
  v43 = [obj countByEnumeratingWithState:&v212 objects:v222 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v213;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v213 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v212 + 1) + 8 * i);
        v48 = [v47 recordType];
        v49 = [v48 isEqualToString:@"ReadingHistoryItem"];

        if (v49)
        {
          [v183 addObject:v47];
        }
      }

      v44 = [obj countByEnumeratingWithState:&v212 objects:v222 count:16];
    }

    while (v44);
  }

  v185 = objc_opt_new();
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v181 = v39;
  v50 = [v181 countByEnumeratingWithState:&v208 objects:v221 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v209;
    v53 = *(v9 + 109);
    do
    {
      v54 = 0;
      do
      {
        if (*v209 != v52)
        {
          objc_enumerationMutation(v181);
        }

        v55 = *(*(&v208 + 1) + 8 * v54);
        if (self)
        {
          itemsByIdentifier = self->_itemsByIdentifier;
        }

        else
        {
          itemsByIdentifier = 0;
        }

        v57 = [(NSMutableDictionary *)itemsByIdentifier objectForKeyedSubscript:*(*(&v208 + 1) + 8 * v54)];
        v58 = [v57 articleID];

        if (v58)
        {
          v59 = [v57 articleID];
          [v185 addObject:v59];
        }

        v60 = [v57 articleID];
        v61 = v55;
        v62 = v60;
        if (self)
        {
          [MEMORY[0x1E696AF00] isMainThread];
          if (!v61 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "itemID != nil"];
            *v231 = 136315906;
            *&v231[4] = "[FCReadingHistory _removeHistoryItemWithItemID:articleID:]";
            *&v231[12] = 2080;
            *&v231[14] = "FCReadingHistory.m";
            *&v231[22] = 1024;
            *&v231[24] = 1704;
            *&v231[28] = 2114;
            *&v231[30] = v64;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v231, 0x26u);
          }

          v63 = self->_itemsLock;
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = v53;
          v224 = __59__FCReadingHistory__removeHistoryItemWithItemID_articleID___block_invoke;
          v225 = &unk_1E7C376A0;
          v226 = v61;
          v227 = self;
          v228 = v62;
          [(FCMTWriterLock *)v63 performWriteSync:&buf];
        }

        ++v54;
      }

      while (v51 != v54);
      v65 = [v181 countByEnumeratingWithState:&v208 objects:v221 count:16];
      v51 = v65;
    }

    while (v65);
  }

  v66 = v183;
  v175 = v185;
  v173 = v66;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v179 = objc_opt_new();
    v178 = objc_opt_new();
    v177 = objc_opt_new();
    v67 = objc_opt_new();
    memset(v231, 0, sizeof(v231));
    v232 = 0u;
    v180 = v66;
    v68 = [v180 countByEnumeratingWithState:v231 objects:&buf count:16];
    v176 = v67;
    if (v68)
    {
      v69 = v68;
      v70 = 0;
      v186 = **&v231[16];
      v71 = 0x1E69B6000uLL;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (**&v231[16] != v186)
          {
            objc_enumerationMutation(v180);
          }

          v73 = *(v71 + 3960);
          v74 = *(*&v231[8] + 8 * j);
          objc_opt_self();
          if (!v74 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "record != nil"];
            *v233 = 136315906;
            *&v233[4] = "+[NTPBReadingHistoryItem(FCReadingHistory) readingHistoryItemWithCKRecord:]";
            *&v233[12] = 2080;
            *&v233[14] = "FCReadingHistory.m";
            v234 = 1024;
            v235 = 1886;
            v236 = 2114;
            v237 = v113;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v233, 0x26u);
          }

          v75 = objc_alloc_init(*(v71 + 3960));
          v76 = [v74 objectForKeyedSubscript:@"articleID"];
          [v75 setArticleID:v76];

          v77 = [v74 objectForKeyedSubscript:@"sourceChannelTagID"];
          [v75 setSourceChannelTagID:v77];

          v78 = [v74 objectForKeyedSubscript:@"deviceID"];
          [v75 setDeviceID:v78];

          v79 = [v74 objectForKeyedSubscript:@"lastVisited"];
          [v75 setLastVisitedAt:v79];

          v80 = [v74 objectForKeyedSubscript:@"articleRead"];
          [v75 setHasArticleBeenRead:{objc_msgSend(v80, "BOOLValue")}];

          v81 = [v74 objectForKeyedSubscript:@"articleSeen"];
          [v75 setHasArticleBeenSeen:{objc_msgSend(v81, "BOOLValue")}];

          v82 = [v74 objectForKeyedSubscript:@"articleConsumed"];
          [v75 setHasArticleBeenConsumed:{objc_msgSend(v82, "BOOLValue")}];

          v83 = [v74 objectForKeyedSubscript:@"offensive"];
          [v75 setHasArticleBeenMarkedOffensive:{objc_msgSend(v83, "BOOLValue")}];

          v84 = [v74 objectForKeyedSubscript:@"removedFromAudio"];
          [v75 setHasArticleBeenRemovedFromAudio:{objc_msgSend(v84, "BOOLValue")}];

          v85 = [v74 objectForKeyedSubscript:@"completedListening"];
          [v75 setHasArticleCompletedListening:{objc_msgSend(v85, "BOOLValue")}];

          v86 = [v74 objectForKeyedSubscript:@"completedReading"];
          [v75 setHasArticleCompletedReading:{objc_msgSend(v86, "BOOLValue")}];

          v87 = [v74 objectForKeyedSubscript:@"listenedCount"];
          [v75 setListenedCount:{objc_msgSend(v87, "intValue")}];

          v88 = [v74 objectForKeyedSubscript:@"listeningProgress"];
          [v88 doubleValue];
          [v75 setListeningProgress:?];

          v89 = [v74 objectForKeyedSubscript:@"listeningProgressLastSaved"];
          [v75 setListeningProgressSavedAt:v89];

          v90 = [v74 objectForKeyedSubscript:@"lastListened"];
          [v75 setLastListenedAt:v90];

          v91 = [v74 objectForKeyedSubscript:@"readingPosition"];
          [v75 setReadingPosition:v91];

          v92 = [v74 objectForKeyedSubscript:@"readingPositionLastSaved"];
          [v75 setReadingPositionSavedAt:v92];

          v93 = [v74 objectForKeyedSubscript:@"readCount"];
          [v75 setReadCount:{objc_msgSend(v93, "intValue")}];

          v94 = [v74 objectForKeyedSubscript:@"pruningDisabled"];
          [v75 setPruningDisabled:{objc_msgSend(v94, "BOOLValue")}];

          v95 = [v74 objectForKeyedSubscript:@"liked"];
          v96 = [v95 BOOLValue];

          if (v96)
          {
            [v75 setArticleLikingStatus:1];
          }

          v97 = [v74 objectForKeyedSubscript:@"disliked"];
          v98 = [v97 BOOLValue];

          if (v98)
          {
            [v75 setArticleLikingStatus:2];
          }

          if ([v75 hasArticleBeenSeen])
          {
            v99 = [v75 lastVisitedDate];
            if (v99)
            {
              [v75 setFirstSeenDate:v99];
            }

            else
            {
              v100 = [v75 lastListened];
              if (v100)
              {
                [v75 setFirstSeenDate:v100];
              }

              else
              {
                [v74 creationDate];
                v102 = v101 = v70;
                v103 = [v102 pbDate];
                [v75 setFirstSeenDate:v103];

                v70 = v101;
                v67 = v176;
              }
            }

            v104 = [v75 firstSeenDate];
            [v75 setFirstSeenDateOfMaxVersionSeen:v104];

            v71 = 0x1E69B6000;
          }

          v105 = [v75 articleID];
          if (v105)
          {
            v106 = [(NSMutableDictionary *)self->_itemsByArticleID objectForKeyedSubscript:v105];
            v107 = v106;
            if (v106)
            {
              v108 = [v106 lastVisitedAt];
              if (v108)
              {
                v109 = v108;
                v110 = [v75 lastVisitedAt];

                if (v110)
                {
                  v111 = 0;
                }

                else
                {
                  [v177 addObject:v105];
                  v111 = 1;
                }

                v71 = 0x1E69B6000;
              }

              else
              {
                v111 = 0;
              }

              v70 = v70 | v111;
              v112 = v179;
            }

            else
            {
              v112 = v178;
            }

            [v112 addObject:v105];
            [v67 addObject:v75];
          }
        }

        v69 = [v180 countByEnumeratingWithState:v231 objects:&buf count:16];
      }

      while (v69);
    }

    else
    {
      LOBYTE(v70) = 0;
    }

    v114 = v70;

    [FCReadingHistory _addHistoryItems:v67 addToStore:?];
    v115 = [v67 fc_arrayByTransformingWithBlock:&__block_literal_global_3];
    v116 = [FCReadingHistorySyncResults alloc];
    if (v175)
    {
      v117 = v175;
    }

    else
    {
      v117 = MEMORY[0x1E695E0F0];
    }

    v118 = [v177 arrayByAddingObjectsFromArray:v117];
    v119 = v179;
    v120 = v118;
    v121 = v178;
    v122 = v115;
    if (v116)
    {
      *v233 = v116;
      *&v233[8] = FCReadingHistorySyncResults;
      v123 = objc_msgSendSuper2(v233, sel_init);
      v116 = v123;
      if (v123)
      {
        objc_storeStrong(&v123->_modifiedArticleIDs, v179);
        objc_storeStrong(&v116->_deletedArticleIDs, v118);
        objc_storeStrong(&v116->_newlyCreatedArticleIDs, v178);
        objc_storeStrong(&v116->_articleExposures, v115);
      }
    }
  }

  else
  {
    v114 = 0;
    v116 = 0;
  }

  if (v116)
  {
    modifiedArticleIDs = v116->_modifiedArticleIDs;
  }

  else
  {
    modifiedArticleIDs = 0;
  }

  v184 = modifiedArticleIDs;
  v187 = [(NSArray *)v184 arrayByAddingObjectsFromArray:v175];
  if (v116)
  {
    newlyCreatedArticleIDs = v116->_newlyCreatedArticleIDs;
  }

  else
  {
    newlyCreatedArticleIDs = 0;
  }

  v126 = newlyCreatedArticleIDs;
  v127 = [(FCReadingHistory *)self articleExposureRegistry];
  v128 = v127;
  if (v116)
  {
    articleExposures = v116->_articleExposures;
  }

  else
  {
    articleExposures = 0;
  }

  [v127 registerExposures:articleExposures];

  if ((v114 & 1) != 0 || [v175 count])
  {
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v130 = [(FCPrivateDataController *)self observers];
    v131 = [v130 copy];

    v132 = [v131 countByEnumeratingWithState:&v204 objects:v220 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v205;
      do
      {
        v135 = 0;
        do
        {
          if (*v205 != v134)
          {
            objc_enumerationMutation(v131);
          }

          v136 = *(*(&v204 + 1) + 8 * v135);
          if (objc_opt_respondsToSelector())
          {
            if (v116)
            {
              deletedArticleIDs = v116->_deletedArticleIDs;
            }

            else
            {
              deletedArticleIDs = 0;
            }

            [v136 readingHistory:self didRemoveArticlesWithIDs:deletedArticleIDs];
          }

          ++v135;
        }

        while (v133 != v135);
        v138 = [v131 countByEnumeratingWithState:&v204 objects:v220 count:16];
        v133 = v138;
      }

      while (v138);
    }
  }

  if ([(NSArray *)v126 count])
  {
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v139 = [(FCPrivateDataController *)self observers];
    v140 = [v139 copy];

    v141 = [v140 countByEnumeratingWithState:&v200 objects:v219 count:16];
    if (v141)
    {
      v142 = v141;
      v143 = *v201;
      do
      {
        for (k = 0; k != v142; ++k)
        {
          if (*v201 != v143)
          {
            objc_enumerationMutation(v140);
          }

          v145 = *(*(&v200 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v145 readingHistory:self didAddArticlesWithIDs:v126];
          }
        }

        v142 = [v140 countByEnumeratingWithState:&v200 objects:v219 count:16];
      }

      while (v142);
    }
  }

  if ([v187 count])
  {
    v146 = objc_opt_new();
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v147 = v187;
    v148 = [v147 countByEnumeratingWithState:&v196 objects:v218 count:16];
    if (v148)
    {
      v149 = v148;
      v150 = *v197;
      do
      {
        for (m = 0; m != v149; ++m)
        {
          if (*v197 != v150)
          {
            objc_enumerationMutation(v147);
          }

          [v146 setObject:&unk_1F2E6FB70 forKeyedSubscript:*(*(&v196 + 1) + 8 * m)];
        }

        v149 = [v147 countByEnumeratingWithState:&v196 objects:v218 count:16];
      }

      while (v149);
    }

    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v152 = [(FCPrivateDataController *)self observers];
    v153 = [v152 copy];

    v154 = [v153 countByEnumeratingWithState:&v192 objects:v217 count:16];
    if (v154)
    {
      v155 = v154;
      v156 = *v193;
      do
      {
        for (n = 0; n != v155; ++n)
        {
          if (*v193 != v156)
          {
            objc_enumerationMutation(v153);
          }

          v158 = *(*(&v192 + 1) + 8 * n);
          if (objc_opt_respondsToSelector())
          {
            [v158 readingHistory:self didChangeFeaturesForArticles:v146];
          }
        }

        v155 = [v153 countByEnumeratingWithState:&v192 objects:v217 count:16];
      }

      while (v155);
    }
  }

  if (v172)
  {
    v159 = [(FCPrivateDataController *)self context];
    v160 = [v159 personalizationData];
    [v160 markAsDirty];

    v161 = [(FCPrivateDataController *)self context];
    v162 = [v161 userEventHistory];
    [v162 markAsDirty];

    v163 = [(FCReadingHistory *)self articleExposureRegistry];
    [v163 eraseAll];

    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v164 = [(FCPrivateDataController *)self observers];
    v165 = [v164 copy];

    v166 = [v165 countByEnumeratingWithState:&v188 objects:v216 count:16];
    if (v166)
    {
      v167 = v166;
      v168 = *v189;
      do
      {
        for (ii = 0; ii != v167; ++ii)
        {
          if (*v189 != v168)
          {
            objc_enumerationMutation(v165);
          }

          v170 = *(*(&v188 + 1) + 8 * ii);
          if (objc_opt_respondsToSelector())
          {
            [v170 readingHistoryLikelyClearedRemotely:self];
          }
        }

        v167 = [v165 countByEnumeratingWithState:&v188 objects:v216 count:16];
      }

      while (v167);
    }
  }

  v171 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsByIdentifier = self->_itemsByIdentifier;
  }

  else
  {
    itemsByIdentifier = 0;
  }

  return [(NSMutableDictionary *)itemsByIdentifier allKeys];
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCReadingHistory;
  [(FCPrivateDataController *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCReadingHistory;
  [(FCPrivateDataController *)&v3 removeObserver:a3];
}

- (id)recordsForRestoringZoneName:(id)a3
{
  v3 = [(FCReadingHistory *)self readingHistoryItems];
  v4 = _FCPruneHistoryForUpload(v3, &__block_literal_global_99, &__block_literal_global_11_1);
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_46_0];

  return v5;
}

- (id)historyItemsForArticleIDs:(id)a3
{
  v3 = [(FCReadingHistory *)self historyItemsByArticleIDForArticleIDs:a3];
  v4 = [v3 allValues];

  return v4;
}

- (id)historyItemsByArticleIDForArticleIDs:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v6 = itemsLock;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__FCReadingHistory_historyItemsByArticleIDForArticleIDs___block_invoke_50;
    v9[3] = &unk_1E7C37408;
    v9[4] = self;
    v10 = v4;
    v11 = &v12;
    [(FCMTWriterLock *)v6 performReadSync:v9];

    v7 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __57__FCReadingHistory_historyItemsByArticleIDForArticleIDs___block_invoke_50(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v4 = v2;
  v5 = [v4 fc_subdictionaryForKeys:v3];

  v6 = [v5 count];
  if (v6 == [a1[5] count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v5);
  }

  else
  {
    v7 = a1[5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__FCReadingHistory_historyItemsByArticleIDForArticleIDs___block_invoke_2;
    v13[3] = &unk_1E7C373E0;
    v8 = v5;
    v9 = a1[4];
    v14 = v8;
    v15 = v9;
    v10 = [v7 fc_dictionaryWithValueBlock:v13];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

id __57__FCReadingHistory_historyItemsByArticleIDForArticleIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = v5[12];
    }

    v6 = v5;
    v7 = FCHistoryItemIDFromArticleID(v3);
    v4 = [v6 objectForKeyedSubscript:v7];

    [(FCReadingHistory *)*(a1 + 40) _cacheHistoryItemByArticleID:v4];
  }

  return v4;
}

- (void)_cacheHistoryItemByArticleID:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v5 = *(a1 + 112);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_2;
      v10[3] = &unk_1E7C36C58;
      v10[4] = a1;
      v11 = v4;
      [v5 performWriteSync:v10];
      v6 = v11;
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_3;
      v7[3] = &unk_1E7C36C58;
      v8 = v4;
      v9 = a1;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
      v6 = v8;
    }
  }
}

- (id)_sortedReadingHistoryItemsWithMaxCount:(void *)a1
{
  if (a1)
  {
    v4 = [a1 context];
    v5 = [v4 bundleSubscriptionManager];
    v6 = [v5 bundleSubscription];
    v7 = objc_getAssociatedObject(v6, (v6 + 1));
    v8 = [v7 unsignedIntegerValue];
    v9 = v8;
    v10 = objc_getAssociatedObject(v6, ~v8);
    v11 = [v10 unsignedIntegerValue] ^ v9;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke;
    aBlock[3] = &__block_descriptor_33_e40___NSDate_16__0___FCReadingHistoryItem__8l;
    v24 = v11 & 1;
    v12 = _Block_copy(aBlock);
    v13 = [a1 readingHistoryItems];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke_2;
    v21[3] = &__block_descriptor_33_e32_B16__0___FCReadingHistoryItem__8l;
    v22 = v11 & 1;
    v14 = [v13 fc_arrayOfObjectsPassingTest:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke_3;
    v19[3] = &unk_1E7C374B8;
    v20 = v12;
    v15 = v12;
    v16 = [v14 sortedArrayUsingComparator:v19];
    v17 = [v16 fc_subarrayWithMaxCount:a2];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)mostRecentlyCompletedListeningArticlesWithMaxCount:(unint64_t)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastListenedAt" ascending:0];
  if (self)
  {
    v6 = &__block_literal_global_58;
    v7 = v5;
    v8 = [(FCReadingHistory *)self readingHistoryItems];
    v9 = [v8 fc_arrayOfObjectsPassingTest:&__block_literal_global_58];

    v15[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    v11 = [v9 sortedArrayUsingDescriptors:v10];
    v12 = [v11 fc_subarrayWithMaxCount:a3];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)sortedVisitedArticleIDsSatisfying:(id)a3
{
  v4 = a3;
  v5 = [(FCReadingHistory *)self _sortedReadingHistoryItemsWithMaxCount:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__FCReadingHistory_sortedVisitedArticleIDsSatisfying___block_invoke;
  v9[3] = &unk_1E7C37430;
  v10 = v4;
  v6 = v4;
  v7 = [v5 fc_arrayByTransformingWithBlock:v9];

  return v7;
}

id __54__FCReadingHistory_sortedVisitedArticleIDsSatisfying___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 articleID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)sortedListenedArticleIDs
{
  v2 = [(FCReadingHistory *)self readingHistoryItems];
  v3 = [v2 fc_arrayOfObjectsPassingTest:&__block_literal_global_63];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_66_0];
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_68_0];

  return v5;
}

BOOL __44__FCReadingHistory_sortedListenedArticleIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 lastListenedAt];
  v3 = v2 != 0;

  return v3;
}

uint64_t __44__FCReadingHistory_sortedListenedArticleIDs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastListenedAt];
  v6 = [v4 lastListenedAt];

  v7 = [v5 compare:v6];
  return v7;
}

id __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 lastVisitedAt];
  if (v4 == 1)
  {
    v6 = [v3 lastListenedAt];
    if ([v5 fc_isLaterThanOrEqualTo:v6])
    {
      [v3 lastVisitedAt];
    }

    else
    {
      [v3 lastListenedAt];
    }
    v7 = ;

    v5 = v7;
  }

  return v5;
}

BOOL __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 lastVisitedAt];
  v6 = v5;
  if (v4 == 1)
  {
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 lastListenedAt];
      v7 = v8 != 0;
    }
  }

  else
  {
    v7 = v5 != 0;
  }

  return v7;
}

uint64_t __59__FCReadingHistory__sortedReadingHistoryItemsWithMaxCount___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, a3);
  v9 = (*(*(a1 + 32) + 16))();

  v10 = [v8 compare:v9];
  return v10;
}

- (NSSet)allReadArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__FCReadingHistory_allReadArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __37__FCReadingHistory_allReadArticleIDs__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 hasArticleBeenRead])
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSSet)allSeenArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__FCReadingHistory_allSeenArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __37__FCReadingHistory_allSeenArticleIDs__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 hasArticleBeenSeen])
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSSet)allConsumedArticleIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__FCReadingHistory_allConsumedArticleIDs__block_invoke;
  v9[3] = &unk_1E7C36C58;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(FCMTWriterLock *)itemsLock performReadSync:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __41__FCReadingHistory_allConsumedArticleIDs__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 hasArticleBeenConsumed])
        {
          v10 = *(a1 + 40);
          v11 = [v9 articleID];
          [v10 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)readingHistoryItemsByArticleID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
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
  v7[2] = __50__FCReadingHistory_readingHistoryItemsByArticleID__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __50__FCReadingHistory_readingHistoryItemsByArticleID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v6 = v2;
  v3 = [v6 fc_dictionaryByTransformingKeysWithKeyAndValueBlock:&__block_literal_global_75];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)consumedArticleIDsForTagID:(id)a3 fromTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(FCReadingHistory *)self readingHistoryItems];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__FCReadingHistory_consumedArticleIDsForTagID_fromTime___block_invoke;
  v16[3] = &unk_1E7C37500;
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  [v9 enumerateObjectsUsingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __56__FCReadingHistory_consumedArticleIDsForTagID_fromTime___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  if ([v9 hasArticleBeenConsumed])
  {
    v3 = [v9 sourceChannelTagID];
    if (v3)
    {
      v4 = v3;
      v5 = [v9 sourceChannelTagID];
      if ([v5 isEqualToString:a1[4]])
      {
        v6 = [v9 lastVisitedAt];
        v7 = [v6 fc_isLaterThan:a1[5]];

        if (!v7)
        {
          goto LABEL_8;
        }

        v8 = a1[6];
        v4 = [v9 articleID];
        [v8 addObject:v4];
      }

      else
      {
      }
    }
  }

LABEL_8:
}

- (id)lastVisitedDateForArticleID:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 lastVisitedAt];

  return v4;
}

- (id)_readingHistoryItemForArticleID:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = 0;
    v6 = *(a1 + 112);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__FCReadingHistory__readingHistoryItemForArticleID___block_invoke_2;
    v8[3] = &unk_1E7C37138;
    v10 = &v11;
    v8[4] = a1;
    v9 = v4;
    [v6 performReadSync:v8];

    v5 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

- (BOOL)hasArticleBeenRead:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 hasArticleBeenRead];

  return v4;
}

- (BOOL)hasArticleBeenReadMoreThanThreshold:(id)a3
{
  v4 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v5 = [v4 readCount];
  v6 = [(FCPrivateDataController *)self context];
  v7 = [v6 appConfigurationManager];
  v8 = [v7 appConfiguration];
  LOBYTE(v5) = v5 > [v8 articleReadCountThreshold];

  return v5;
}

- (BOOL)hasArticleBeenVisited:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 lastVisitedAt];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)hasArticleBeenSeen:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 hasArticleBeenSeen];

  return v4;
}

- (BOOL)markArticleAsSeenWithHeadline:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v11 count:1];

    v7 = [(FCReadingHistory *)self markArticlesAsSeenWithHeadlines:v6 rememberForever:0];
    v8 = [v7 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)markArticlesAsSeenWithHeadlines:(int)a3 rememberForever:
{
  if (a1)
  {
    v5 = MEMORY[0x1E695DF00];
    v6 = a2;
    v7 = [v5 date];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__FCReadingHistory_markArticlesAsSeenWithHeadlines_rememberForever___block_invoke;
    v16[3] = &unk_1E7C37528;
    v17 = v7;
    v8 = v7;
    v9 = [v6 fc_arrayByTransformingWithBlock:v16];
    v10 = [(FCReadingHistory *)a1 _markHistoryItemsAsSeenWithItemExposures:v9 rememberForever:a3];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__FCReadingHistory_markArticlesAsSeenWithHeadlines_rememberForever___block_invoke_2;
    v14[3] = &unk_1E7C37550;
    v15 = v10;
    v11 = v10;
    v12 = [v6 fc_arrayOfObjectsPassingTest:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)markArticleAsSeenWithHeadline:(id)a3 rememberForever:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a4;
    v13 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a3;
    v8 = [v6 arrayWithObjects:&v13 count:1];

    v9 = [(FCReadingHistory *)self markArticlesAsSeenWithHeadlines:v8 rememberForever:v4];
    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)markArticleAsSeenWithArticleID:(id)a3 articleVersion:(int64_t)a4 seenDate:(id)a5
{
  v5 = 0;
  v16[1] = *MEMORY[0x1E69E9840];
  if (a3 && a5)
  {
    v9 = a5;
    v10 = a3;
    v11 = [[FCItemExposure alloc] initWithItemID:v10 exposedAt:v9 version:a4];

    v16[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = [(FCReadingHistory *)self _markHistoryItemsAsSeenWithItemExposures:v12 rememberForever:0];

    v5 = [v13 containsObject:v10];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_markHistoryItemsAsSeenWithItemExposures:(int)a3 rememberForever:
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v33 = [MEMORY[0x1E695DF70] array];
    v34 = [MEMORY[0x1E695DF90] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v42;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v41 + 1) + 8 * i);
          v10 = [v9 itemID];
          v11 = [(FCReadingHistory *)a1 _readingHistoryItemForArticleID:v10];
          v12 = [v11 mutableCopyWithZone:0];

          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E69B6F78]);
            v13 = [v9 itemID];
            [v12 setArticleID:v13];
          }

          v40 = 0;
          v14 = [v9 itemID];
          v15 = [v9 maxExposedVersion];
          v16 = [v9 maxExposedVersionFirstExposedAt];
          v17 = [v9 firstExposedAt];
          [(FCReadingHistory *)a1 _markArticleAsSeenWithArticleID:v14 rememberForever:a3 articleVersion:v15 seenDate:v16 firstSeenDate:v17 historyItem:v12 modifiedHistoryFeaturesOut:&v40];

          if (v40)
          {
            [v33 addObject:v12];
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v40];
            v19 = [v9 itemID];
            [v34 setObject:v18 forKey:v19];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v6);
    }

    [FCReadingHistory _addHistoryItems:a1 addToStore:v33];
    v20 = [a1 articleExposureRegistry];
    [v20 registerExposures:obj];

    v21 = [[FCModifyHistoryCommand alloc] initWithHistoryItems:v33 merge:0];
    [a1 addCommandToCommandQueue:v21];
    if ([v34 count])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v22 = [a1 observers];
      v23 = [v22 copy];

      v24 = [v23 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v37;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v36 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v28 readingHistory:a1 didChangeFeaturesForArticles:v34];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v25);
      }
    }

    a1 = [v33 fc_setByTransformingWithBlock:&__block_literal_global_89];

    v4 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];

  return a1;
}

FCItemExposure *__68__FCReadingHistory_markArticlesAsSeenWithHeadlines_rememberForever___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCItemExposure alloc];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = [v6 articleID];
    v8 = [v6 publisherArticleVersion];

    v9 = [(FCItemExposure *)v4 initWithItemID:v7 exposedAt:v5 version:v8];
    v4 = v9;
  }

  return v4;
}

uint64_t __68__FCReadingHistory_markArticlesAsSeenWithHeadlines_rememberForever___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 articleID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)_markArticleAsSeenWithArticleID:(int)a3 rememberForever:(uint64_t)a4 articleVersion:(void *)a5 seenDate:(void *)a6 firstSeenDate:(void *)a7 historyItem:(uint64_t *)a8 modifiedHistoryFeaturesOut:
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!a1)
  {
    goto LABEL_25;
  }

  v18 = MEMORY[0x1E696AF00];
  v19 = a2;
  [v18 isMainThread];
  if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID"];
    *buf = 136315906;
    v34 = "[FCReadingHistory _markArticleAsSeenWithArticleID:rememberForever:articleVersion:seenDate:firstSeenDate:historyItem:modifiedHistoryFeaturesOut:]";
    v35 = 2080;
    v36 = "FCReadingHistory.m";
    v37 = 1024;
    v38 = 982;
    v39 = 2114;
    v40 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v17)
    {
      goto LABEL_7;
    }
  }

  else if (v17)
  {
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item"];
    *buf = 136315906;
    v34 = "[FCReadingHistory _markArticleAsSeenWithArticleID:rememberForever:articleVersion:seenDate:firstSeenDate:historyItem:modifiedHistoryFeaturesOut:]";
    v35 = 2080;
    v36 = "FCReadingHistory.m";
    v37 = 1024;
    v38 = 983;
    v39 = 2114;
    v40 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_7:
  v20 = [v17 articleID];
  v21 = [v19 isEqualToString:v20];

  if ((v21 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "[articleID isEqualToString:item.articleID]"];
    *buf = 136315906;
    v34 = "[FCReadingHistory _markArticleAsSeenWithArticleID:rememberForever:articleVersion:seenDate:firstSeenDate:historyItem:modifiedHistoryFeaturesOut:]";
    v35 = 2080;
    v36 = "FCReadingHistory.m";
    v37 = 1024;
    v38 = 984;
    v39 = 2114;
    v40 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (a8)
    {
      goto LABEL_12;
    }
  }

  else if (a8)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "modifiedHistoryFeaturesOut"];
    *buf = 136315906;
    v34 = "[FCReadingHistory _markArticleAsSeenWithArticleID:rememberForever:articleVersion:seenDate:firstSeenDate:historyItem:modifiedHistoryFeaturesOut:]";
    v35 = 2080;
    v36 = "FCReadingHistory.m";
    v37 = 1024;
    v38 = 985;
    v39 = 2114;
    v40 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_12:
  v22 = [v17 hasArticleBeenSeen];
  if (!v22)
  {
    [v17 setHasArticleBeenSeen:1];
    v27 = 9;
LABEL_17:
    [v17 setFirstSeenAt:v16];
    if (a3)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v23 = [v17 firstSeenAt];
  if (!v23 || (v24 = v23, [v17 firstSeenAt], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v16, "fc_isEarlierThan:", v25), v25, v24, (v26 & 1) != 0))
  {
    v27 = 8;
    goto LABEL_17;
  }

  v27 = 0;
  if (a3)
  {
LABEL_18:
    if (([v17 isPruningDisabled] & 1) == 0)
    {
      [v17 setPruningDisabled:1];
      v27 |= 0x8000uLL;
    }
  }

LABEL_21:
  if (!v22 || [v17 maxVersionSeen] < a4)
  {
    [v17 setMaxVersionSeen:a4];
    [v17 setFirstSeenAtOfMaxVersionSeen:v15];
    v27 |= 0x90uLL;
  }

  *a8 = v27;
LABEL_25:

  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasArticleCompletedListening:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 hasArticleCompletedListening];

  return v4;
}

- (BOOL)markArticle:(id)a3 withCompletedListening:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCReadingHistory *)self hasArticleCompletedListening:v6]^ v4;
  if (v7 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__FCReadingHistory_markArticle_withCompletedListening___block_invoke;
    v9[3] = &__block_descriptor_33_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v10 = v4;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:v6 withBlock:v9];
  }

  return v7;
}

void __55__FCReadingHistory_markArticle_withCompletedListening___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) != [v5 hasArticleCompletedListening])
  {
    [v5 setHasArticleCompletedListening:?];
    *a3 = 0x2000;
  }
}

- (void)_modifyHistoryForArticleID:(void *)a3 withBlock:
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_24;
  }

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCReadingHistory _modifyHistoryForArticleID:withBlock:]";
      v38 = 2080;
      v39 = "FCReadingHistory.m";
      v40 = 1024;
      v41 = 1598;
      v42 = 2114;
      v43 = v24;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!v6)
  {
LABEL_21:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "modifyBlock != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCReadingHistory _modifyHistoryForArticleID:withBlock:]";
      v38 = 2080;
      v39 = "FCReadingHistory.m";
      v40 = 1024;
      v41 = 1599;
      v42 = 2114;
      v43 = v25;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

LABEL_23:
    [MEMORY[0x1E696AF00] isMainThread];
    goto LABEL_24;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  v8 = [(FCReadingHistory *)a1 _readingHistoryItemForArticleID:v5];
  v9 = [v8 mutableCopyWithZone:0];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69B6F78]);
    [v9 setArticleID:v5];
  }

  *buf = 0;
  (v7)[2](v7, v9, buf);
  v36 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [FCReadingHistory _addHistoryItems:a1 addToStore:v10];

  v11 = [FCModifyHistoryCommand alloc];
  v35 = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v13 = [(FCModifyHistoryCommand *)v11 initWithHistoryItems:v12 merge:0];

  [a1 addCommandToCommandQueue:v13];
  if (*buf)
  {
    v26 = v7;
    v27 = v5;
    v33 = v5;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v34 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = [a1 observers];
    v17 = [v16 copy];

    v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v22 readingHistory:a1 didChangeFeaturesForArticles:v15];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    v7 = v26;
    v5 = v27;
  }

LABEL_24:
  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasArticleCompletedReading:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 hasArticleCompletedReading];

  return v4;
}

- (BOOL)markArticle:(id)a3 withCompletedReading:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCReadingHistory *)self hasArticleCompletedReading:v6]^ v4;
  if (v7 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__FCReadingHistory_markArticle_withCompletedReading___block_invoke;
    v9[3] = &__block_descriptor_33_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v10 = v4;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:v6 withBlock:v9];
  }

  return v7;
}

void __53__FCReadingHistory_markArticle_withCompletedReading___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) != [v5 hasArticleCompletedReading])
  {
    [v5 setHasArticleCompletedReading:?];
    *a3 = 0x10000;
  }
}

- (BOOL)hasArticleBeenRemovedFromAudio:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 hasArticleBeenRemovedFromAudio];

  return v4;
}

- (BOOL)markArticle:(id)a3 withRemovedFromAudio:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCReadingHistory *)self hasArticleBeenRemovedFromAudio:v6]^ v4;
  if (v7 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__FCReadingHistory_markArticle_withRemovedFromAudio___block_invoke;
    v9[3] = &__block_descriptor_33_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v10 = v4;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:v6 withBlock:v9];
  }

  return v7;
}

void __53__FCReadingHistory_markArticle_withRemovedFromAudio___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) != [v5 hasArticleBeenRemovedFromAudio])
  {
    [v5 setHasArticleBeenRemovedFromAudio:?];
    *a3 = 0x20000;
  }
}

- (unint64_t)likingStatusForArticleID:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 articleLikingStatus];

  return v4;
}

- (BOOL)markArticle:(id)a3 withLikingStatus:(unint64_t)a4
{
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v7 = [(FCReadingHistory *)self likingStatusForArticleID:v6];
  if (v7 != a4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__FCReadingHistory_markArticle_withLikingStatus___block_invoke;
    v9[3] = &__block_descriptor_40_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v9[4] = a4;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:v6 withBlock:v9];
  }

  return v7 != a4;
}

void __49__FCReadingHistory_markArticle_withLikingStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([v5 articleLikingStatus] != *(a1 + 32))
  {
    [v5 setArticleLikingStatus:?];
    *a3 = 32;
  }
}

- (void)_markArticle:(uint64_t)a3 withLikingStatus:
{
  if (a1)
  {
    v5 = MEMORY[0x1E696AF00];
    v6 = a2;
    [v5 isMainThread];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__FCReadingHistory__markArticle_withLikingStatus___block_invoke;
    v7[3] = &__block_descriptor_40_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v7[4] = a3;
    [(FCReadingHistory *)a1 _modifyHistoryForArticleID:v6 withBlock:v7];
  }
}

uint64_t __50__FCReadingHistory__markArticle_withLikingStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 setArticleLikingStatus:*(a1 + 32)];
  *a3 = 32;
  return result;
}

- (BOOL)toggleLikeForArticleWithID:(id)a3
{
  v4 = a3;
  v5 = [(FCPrivateDataController *)self context];
  v6 = [v5 appConfigurationManager];
  v7 = [v6 appConfiguration];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = [(FCPrivateDataController *)self context];
  v10 = [v9 appConfigurationManager];
  v11 = [v10 appConfiguration];
  v12 = [v11 likeDislikeBehavior];

  if (v12 == 2)
  {
    goto LABEL_7;
  }

  if (v12 != 1)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v13 = [(FCReadingHistory *)self likingStatusForArticleID:v4];
  if (v13 == 2)
  {
    goto LABEL_7;
  }

  v14 = 0;
  if (v13 == 1)
  {
    v15 = 0;
    goto LABEL_8;
  }

  if (!v13)
  {
LABEL_7:
    v15 = 1;
    v14 = 1;
LABEL_8:
    [(FCReadingHistory *)self _markArticle:v4 withLikingStatus:v15];
  }

LABEL_10:

  return v14;
}

- (BOOL)toggleDislikeForArticleWithID:(id)a3
{
  v4 = a3;
  v5 = [(FCPrivateDataController *)self context];
  v6 = [v5 appConfigurationManager];
  v7 = [v6 appConfiguration];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(FCPrivateDataController *)self context];
    v10 = [v9 appConfigurationManager];
    v11 = [v10 appConfiguration];
    v12 = [v11 likeDislikeBehavior];

    if (v12 == 2)
    {
      v14 = 1;
LABEL_8:
      [(FCReadingHistory *)self _markArticle:v4 withLikingStatus:v12];
      goto LABEL_9;
    }

    if (v12 == 1)
    {
      v13 = [(FCReadingHistory *)self likingStatusForArticleID:v4];
      if (v13 >= 2)
      {
        v14 = 0;
        if (v13 != 2)
        {
          goto LABEL_9;
        }

        v12 = 0;
      }

      else
      {
        v14 = 1;
        v12 = 2;
      }

      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (BOOL)hasArticleBeenMarkedAsOffensive:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 hasArticleBeenMarkedOffensive];

  return v4;
}

- (BOOL)toggleArticleHasBeenMarkedAsOffensive:(id)a3
{
  v4 = a3;
  v5 = [(FCReadingHistory *)self hasArticleBeenMarkedAsOffensive:v4];
  v6 = v5;
  [(FCReadingHistory *)self markArticle:v4 asOffensive:!v5];

  return !v6;
}

- (void)markArticle:(id)a3 asOffensive:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if ([(FCReadingHistory *)self hasArticleBeenMarkedAsOffensive:v6]!= v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__FCReadingHistory_markArticle_asOffensive___block_invoke;
    v20[3] = &__block_descriptor_33_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
    v21 = v4;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:v6 withBlock:v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(FCPrivateDataController *)self observers];
    v8 = [v7 copy];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v22 = v6;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
            [v13 readingHistory:self didChangeOffensiveStateForArticlesWithIDs:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __44__FCReadingHistory_markArticle_asOffensive___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 32) != [v5 hasArticleBeenMarkedOffensive])
  {
    [v5 setHasArticleBeenMarkedOffensive:?];
    *a3 = 512;
  }
}

- (BOOL)hasArticleBeenConsumed:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 hasArticleBeenConsumed];

  return v4;
}

- (void)markArticle:(id)a3 asArticleConsumed:(BOOL)a4 sourceChannelTagID:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [MEMORY[0x1E696AF00] isMainThread];
  if ([(FCReadingHistory *)self hasArticleBeenConsumed:v8]!= v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__FCReadingHistory_markArticle_asArticleConsumed_sourceChannelTagID___block_invoke;
    v10[3] = &unk_1E7C375B8;
    v12 = v6;
    v11 = v9;
    [(FCReadingHistory *)self _modifyHistoryForArticleID:v8 withBlock:v10];
  }
}

void __69__FCReadingHistory_markArticle_asArticleConsumed_sourceChannelTagID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (*(a1 + 40) != [v6 hasArticleBeenConsumed])
  {
    [v6 setHasArticleBeenConsumed:?];
    if (*(a1 + 32))
    {
      v5 = FCDeviceIdentifierForVendor();
      [v6 setDeviceID:v5];
      [v6 setSourceChannelTagID:*(a1 + 32)];
    }

    *a3 = 256;
  }
}

- (BOOL)markArticleAsReadWithArticleID:(id)a3 articleVersion:(int64_t)a4 readDate:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__FCReadingHistory_markArticleAsReadWithArticleID_articleVersion_readDate___block_invoke;
  v17[3] = &unk_1E7C375E0;
  v10 = v9;
  v22 = a4;
  v18 = v10;
  v19 = self;
  v11 = v8;
  v20 = v11;
  v21 = &v23;
  [(FCReadingHistory *)self _modifyHistoryForArticleID:v11 withBlock:v17];
  v12 = [[FCItemExposure alloc] initWithItemID:v11 exposedAt:v10 version:a4];
  v13 = [(FCReadingHistory *)self articleExposureRegistry];
  v27[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v13 registerExposures:v14];

  LOBYTE(v13) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void __75__FCReadingHistory_markArticleAsReadWithArticleID_articleVersion_readDate___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v7 = a2;
  [v7 setLastVisitedAt:*(a1 + 32)];
  v5 = [v7 hasArticleBeenRead];
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    [v7 setHasArticleBeenRead:1];
    v6 = 6;
  }

  if ([v7 maxVersionRead] < *(a1 + 64))
  {
    [v7 setMaxVersionRead:?];
    v6 |= 0x40uLL;
  }

  [v7 setReadCount:{objc_msgSend(v7, "readCount") + 1}];
  [(FCReadingHistory *)*(a1 + 40) _markArticleAsSeenWithArticleID:0 rememberForever:*(a1 + 64) articleVersion:*(a1 + 32) seenDate:*(a1 + 32) firstSeenDate:v7 historyItem:a3 modifiedHistoryFeaturesOut:?];
  *a3 = v6 | 0x4000;
  *(*(*(a1 + 56) + 8) + 24) = v5 ^ 1;
}

- (void)markArticleAsReadWithHeadline:(id)a3 fromGroupType:(int64_t)a4 swipedToArticle:(BOOL)a5 onScreenChecker:(id)a6
{
  v31 = a5;
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = v8;
  v32 = v9;
  v11 = [v8 articleID];
  if (v11)
  {
    v12 = [v8 articleID];
    v13 = [v8 publisherArticleVersion];
    v14 = [MEMORY[0x1E695DF00] date];
    LODWORD(v13) = [(FCReadingHistory *)self markArticleAsReadWithArticleID:v12 articleVersion:v13 readDate:v14];

    if (v13)
    {
      v28 = v11;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = [(FCPrivateDataController *)self observers];
      v29 = v8;
      v16 = [v15 copy];

      v17 = v16;
      v18 = v16;
      v10 = v29;
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v23 readingHistory:self didAddHeadline:v10 fromGroupType:a4 swipedToArticle:v31 withOnScreenChecker:v32];
            }

            if (objc_opt_respondsToSelector())
            {
              v24 = [v10 articleID];
              v37 = v24;
              v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
              [v23 readingHistory:self didAddArticlesWithIDs:v25];

              v10 = v29;
            }
          }

          v20 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v20);
      }

      v11 = v28;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "articleID"];
    *buf = 136315906;
    v40 = "[FCReadingHistory markArticleAsReadWithHeadline:fromGroupType:swipedToArticle:onScreenChecker:]";
    v41 = 2080;
    v42 = "FCReadingHistory.m";
    v43 = 1024;
    v44 = 1273;
    v45 = 2114;
    v46 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)removeArticleFromHistory:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID"];
    *buf = 136315906;
    v24 = "[FCReadingHistory removeArticleFromHistory:]";
    v25 = 2080;
    v26 = "FCReadingHistory.m";
    v27 = 1024;
    v28 = 1306;
    v29 = 2114;
    v30 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:v4];

  if (v5)
  {
    [(FCReadingHistory *)self _modifyHistoryForArticleID:v4 withBlock:&__block_literal_global_116];
    v6 = [(FCReadingHistory *)self articleExposureRegistry];
    [v6 removeExposureForItemID:v4];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(FCPrivateDataController *)self observers];
    v8 = [v7 copy];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (v4)
          {
            v13 = *(*(&v17 + 1) + 8 * v12);
            if (objc_opt_respondsToSelector())
            {
              v21 = v4;
              v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
              [v13 readingHistory:self didRemoveArticlesWithIDs:v14];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __45__FCReadingHistory_removeArticleFromHistory___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = MEMORY[0x1E69E58C0];
  v13 = v4;
  v6 = [v4 lastVisitedAt];
  LOBYTE(v5) = [v5 nf_object:v6 isEqualToObject:0];

  v7 = 0;
  if ((v5 & 1) == 0)
  {
    [v13 setLastVisitedAt:0];
    v7 = 4;
  }

  v8 = MEMORY[0x1E69E58C0];
  v9 = [v13 readingPosition];
  LOBYTE(v8) = [v8 nf_object:v9 isEqualToObject:0];

  if ((v8 & 1) == 0)
  {
    [v13 setReadingPosition:0];
    v7 |= 0x1000uLL;
  }

  v10 = MEMORY[0x1E69E58C0];
  v11 = [v13 lastListenedAt];
  LOBYTE(v10) = [v10 nf_object:v11 isEqualToObject:0];

  if ((v10 & 1) == 0)
  {
    [v13 setLastListenedAt:0];
    v7 |= 0x800uLL;
  }

  [v13 listeningProgress];
  if (v12 != 0.0)
  {
    [v13 setListeningProgress:0.0];
    v7 |= 0x400uLL;
  }

  if ([v13 hasArticleBeenRead])
  {
    [v13 setHasArticleBeenRead:0];
    v7 |= 2uLL;
  }

  if ([v13 hasArticleBeenSeen])
  {
    [v13 setHasArticleBeenSeen:0];
    v7 |= 1uLL;
  }

  if ([v13 hasArticleCompletedListening])
  {
    [v13 setHasArticleCompletedListening:0];
    v7 |= 0x2000uLL;
  }

  if ([v13 hasArticleCompletedReading])
  {
    [v13 setHasArticleCompletedReading:0];
    v7 |= 0x10000uLL;
  }

  if ([v13 hasArticleBeenRemovedFromAudio])
  {
    [v13 setHasArticleBeenRemovedFromAudio:0];
    v7 |= 0x20000uLL;
  }

  *a3 = v7;
}

- (void)clearHistory
{
  v49 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsByIdentifier = self->_itemsByIdentifier;
  }

  else
  {
    itemsByIdentifier = 0;
  }

  v4 = [(NSMutableDictionary *)itemsByIdentifier allKeys];
  if ([v4 count])
  {
    if (self)
    {
      v5 = self->_itemsByIdentifier;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(NSMutableDictionary *)v5 allValues];
    v7 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_119];

    v8 = [(FCPrivateDataController *)self localStore];
    [v8 removeObjectsForKeys:v4];

    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __32__FCReadingHistory_clearHistory__block_invoke_2;
    v45[3] = &unk_1E7C36EA0;
    v45[4] = self;
    [(FCMTWriterLock *)itemsLock performWriteSync:v45];
    v31 = [[FCRemoveHistoryCommand alloc] initWithHistoryItemIDs:v4];
    [(FCPrivateDataController *)self addCommandToCommandQueue:?];
    v10 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 setObject:&unk_1F2E6FB70 forKeyedSubscript:*(*(&v41 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v13);
    }

    v32 = v4;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = [(FCPrivateDataController *)self observers];
    v17 = [v16 copy];

    v18 = [v17 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v37 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v22 readingHistory:self didChangeFeaturesForArticles:v10];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v19);
    }

    v4 = v32;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = [(FCPrivateDataController *)self observers];
  v24 = [v23 copy];

  v25 = [v24 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v33 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          [v29 readingHistoryDidClear:self];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __32__FCReadingHistory_clearHistory__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeAllObjects];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v5 = 0;
  }

  return [v5 removeAllObjects];
}

- (double)listeningProgressFor:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  [v3 listeningProgress];
  v5 = v4;

  return v5;
}

- (id)listeningProgressSavedDateFor:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 listeningProgressSavedAt];

  return v4;
}

- (id)firstSeenDateFor:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 firstSeenAt];

  return v4;
}

- (id)readDateFor:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 lastVisitedAt];

  return v4;
}

- (void)markArticle:(id)a3 withListeningProgress:(double)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__FCReadingHistory_markArticle_withListeningProgress___block_invoke;
  v4[3] = &__block_descriptor_40_e43_v24__0___FCMutableReadingHistoryItem__8_Q16l;
  *&v4[4] = a4;
  [(FCReadingHistory *)self _modifyHistoryForArticleID:a3 withBlock:v4];
}

void __54__FCReadingHistory_markArticle_withListeningProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  [v5 listeningProgress];
  if (v6 != v7 && vabdd_f64(v6, v7) >= fabs(v7 * 0.000000999999997))
  {
    [v9 setListeningProgress:*(a1 + 32)];
    v8 = [MEMORY[0x1E695DF00] date];
    [v9 setListeningProgressSavedAt:v8];

    *a3 = 1024;
  }
}

- (id)lastListenedFor:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 lastListenedAt];

  return v4;
}

- (void)markArticle:(id)a3 withLastListened:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__FCReadingHistory_markArticle_withLastListened___block_invoke;
  v8[3] = &unk_1E7C37628;
  v9 = v6;
  v7 = v6;
  [(FCReadingHistory *)self _modifyHistoryForArticleID:a3 withBlock:v8];
}

void __49__FCReadingHistory_markArticle_withLastListened___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E69E58C0];
  v7 = *(a1 + 32);
  v10 = v5;
  v8 = [v5 lastListenedAt];
  LOBYTE(v6) = [v6 nf_object:v7 isEqualToObject:v8];

  if (v6)
  {
    v9 = 0x40000;
  }

  else
  {
    [v10 setLastListenedAt:*(a1 + 32)];
    v9 = 264192;
  }

  [v10 setListenedCount:{objc_msgSend(v10, "listenedCount") + 1}];
  *a3 = v9;
}

- (int64_t)listenedCountFor:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 listenedCount];

  return v4;
}

- (id)readingPositionJSONFor:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 readingPosition];

  return v4;
}

- (id)readingPositionSavedDateFor:(id)a3
{
  v3 = [(FCReadingHistory *)self _readingHistoryItemForArticleID:a3];
  v4 = [v3 readingPositionSavedAt];

  return v4;
}

- (void)markArticle:(id)a3 withReadingPositionJSON:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__FCReadingHistory_markArticle_withReadingPositionJSON___block_invoke;
  v8[3] = &unk_1E7C37628;
  v9 = v6;
  v7 = v6;
  [(FCReadingHistory *)self _modifyHistoryForArticleID:a3 withBlock:v8];
}

void __56__FCReadingHistory_markArticle_withReadingPositionJSON___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E69E58C0];
  v7 = *(a1 + 32);
  v10 = v5;
  v8 = [v5 readingPosition];
  LOBYTE(v6) = [v6 nf_object:v7 isEqualToObject:v8];

  if ((v6 & 1) == 0)
  {
    [v10 setReadingPosition:*(a1 + 32)];
    v9 = [MEMORY[0x1E695DF00] date];
    [v10 setReadingPositionSavedAt:v9];

    *a3 = 4096;
  }
}

- (void)willAccessArticleIDs:(id)a3
{
  v4 = a3;
  v5 = [(FCReadingHistory *)self articleExposureRegistry];
  [v5 willAccessItemIDs:v4];
}

void __52__FCReadingHistory__readingHistoryItemForArticleID___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v4 = v2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = a1[4];
    if (v8)
    {
      v8 = v8[12];
    }

    v9 = a1[5];
    v10 = v8;
    v11 = FCHistoryItemIDFromArticleID(v9);
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = a1[4];
    v16 = *(*(a1[6] + 8) + 40);

    [(FCReadingHistory *)v15 _cacheHistoryItemByArticleID:v16];
  }
}

void __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v1 = v1[13];
  }

  v3 = v1;
  v4 = [v2 articleID];
  [v3 setObject:v2 forKeyedSubscript:v4];
}

void __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = v2[12];
  }

  v4 = v2;
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v3 == v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 112);
    }

    else
    {
      v8 = 0;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_4;
    v9[3] = &unk_1E7C36C58;
    v9[4] = v7;
    v10 = *(a1 + 32);
    [v8 performWriteSync:v9];
  }
}

void __49__FCReadingHistory__cacheHistoryItemByArticleID___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v1 = v1[13];
  }

  v3 = v1;
  v4 = [v2 articleID];
  [v3 setObject:v2 forKeyedSubscript:v4];
}

void __48__FCReadingHistory__addHistoryItems_addToStore___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__FCReadingHistory__addHistoryItems_addToStore___block_invoke_2;
  aBlock[3] = &unk_1E7C37650;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  if (*(a1 + 48) == 1)
  {
    v29 = [*(a1 + 32) localStore];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v35;
      do
      {
        v6 = 0;
        do
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = v2[2](v2, *(*(&v34 + 1) + 8 * v6));
          v8 = [v7 identifier];
          v9 = *(a1 + 32);
          if (v9)
          {
            v10 = *(v9 + 96);
          }

          else
          {
            v10 = 0;
          }

          [v10 setObject:v7 forKeyedSubscript:v8];
          v11 = *(a1 + 32);
          if (v11)
          {
            v11 = v11[13];
          }

          v12 = v11;
          v13 = [v7 articleID];
          [v12 setObject:v7 forKeyedSubscript:v13];

          [v29 setObject:v7 forKeyedSubscript:v8];
          ++v6;
        }

        while (v4 != v6);
        v14 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
        v4 = v14;
      }

      while (v14);
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = *(a1 + 40);
    v15 = [v29 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v29);
          }

          v19 = v2[2](v2, *(*(&v30 + 1) + 8 * v18));
          v20 = [v19 identifier];
          v21 = *(a1 + 32);
          if (v21)
          {
            v22 = *(v21 + 96);
          }

          else
          {
            v22 = 0;
          }

          [v22 setObject:v19 forKeyedSubscript:v20];
          v23 = *(a1 + 32);
          if (v23)
          {
            v23 = v23[13];
          }

          v24 = v23;
          v25 = [v19 articleID];
          [v24 setObject:v19 forKeyedSubscript:v25];

          ++v18;
        }

        while (v16 != v18);
        v26 = [v29 countByEnumeratingWithState:&v30 objects:v39 count:16];
        v16 = v26;
      }

      while (v26);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

id __48__FCReadingHistory__addHistoryItems_addToStore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[12];
  }

  v5 = v4;
  v6 = [v3 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = v3;
  if (v7)
  {
    v8 = [v3 mutableCopyWithZone:0];
    v9 = [v8 maxVersionRead];
    v10 = [v7 maxVersionRead];
    if (v9 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    [v8 setMaxVersionRead:v11];
    FCMergeHistoryItemSeenFields(v8, v7);
  }

  return v8;
}

void __59__FCReadingHistory__removeHistoryItemWithItemID_articleID___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 96);
    }

    else
    {
      v3 = 0;
    }

    [v3 removeObjectForKey:?];
    v4 = [*(a1 + 40) localStore];
    [v4 removeObjectForKey:*(a1 + 32)];
  }

  if (*(a1 + 48))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = 0;
    }

    [v6 removeObjectForKey:?];
  }
}

void __67__FCReadingHistory__preprocessSyncedDeletions_didUserClearHistory___block_invoke_135(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        if (v7)
        {
          v8 = *(v7 + 96);
        }

        else
        {
          v8 = 0;
        }

        v9 = [v8 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v5)];
        v10 = [v9 articleID];
        if (!v10)
        {
          goto LABEL_10;
        }

        v11 = v10;
        v12 = *(a1 + 48);
        v13 = [v9 articleID];
        LOBYTE(v12) = [v12 containsObject:v13];

        v14 = (a1 + 56);
        v15 = v9;
        if ((v12 & 1) == 0)
        {
LABEL_10:
          v14 = (a1 + 64);
          v15 = v6;
        }

        [*v14 addObject:v15];

        ++v5;
      }

      while (v3 != v5);
      v16 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      v3 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

id __58__FCReadingHistory_configureKeyValueStoreForJSONHandling___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 dictionaryRepresentation];

  return v5;
}

id __58__FCReadingHistory_configureKeyValueStoreForJSONHandling___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v8 = [v7 isEqualToString:@"flags"];
  if (v8)
  {
    v9 = MEMORY[0x1E695DF20];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__FCReadingHistory_configureKeyValueStoreForJSONHandling___block_invoke_3;
    v12[3] = &unk_1E7C36EC8;
    v13 = v4;
    v10 = v4;
    v4 = [v9 fc_dictionary:v12];
  }

  return v4;
}

void __58__FCReadingHistory_configureKeyValueStoreForJSONHandling___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 numberWithInt:{objc_msgSend(v4, "unsignedIntegerValue") & 1}];
  [v5 setObject:v6 forKeyedSubscript:@"hasBeenRead"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 1) & 1}];
  [v5 setObject:v7 forKeyedSubscript:@"hasBeenSeen"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 2) & 1}];
  [v5 setObject:v8 forKeyedSubscript:@"hasBeenMarkedOffensive"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 3) & 1}];
  [v5 setObject:v9 forKeyedSubscript:@"hasBeenLiked"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 4) & 1}];
  [v5 setObject:v10 forKeyedSubscript:@"hasBeenDisliked"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 5) & 1}];
  [v5 setObject:v11 forKeyedSubscript:@"hasBeenConsumed"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 6) & 1}];
  [v5 setObject:v12 forKeyedSubscript:@"hasCompletedListening"];

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 8) & 1}];
  [v5 setObject:v13 forKeyedSubscript:@"hasCompletedReading"];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(*(a1 + 32), "unsignedIntegerValue") >> 9) & 1}];
  [v5 setObject:v14 forKeyedSubscript:@"hasBeenRemovedFromAudio"];
}

@end