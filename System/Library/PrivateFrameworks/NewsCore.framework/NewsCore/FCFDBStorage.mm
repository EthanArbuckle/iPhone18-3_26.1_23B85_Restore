@interface FCFDBStorage
- (FCFDBStorage)initWithFileURL:(id)l options:(int64_t)options;
- (FCFDBStorage)initWithFileURL:(id)l options:(int64_t)options pruningPolicy:(id)policy;
- (FCFDBStorage)initWithPath:(id)path options:(int64_t)options pruningPolicy:(id)policy;
- (id)_pruneFeedsIfNeeded:(id)needed;
- (id)feedForFeedID:(id)d;
- (id)feedItemsForFeedIDs:(id)ds feedRange:(id)range feature:(id)feature maxCountByFeed:(id)feed totalMaxCount:(unint64_t)count;
- (id)feedsForFeedIDs:(id)ds;
- (int64_t)_feedLookupIDForFeedID:(id)d;
- (void)accessWithBlock:(id)block;
- (void)flushChanges;
- (void)insertFeedItems:(id)items;
- (void)updateFeedID:(id)d refreshedFromOrder:(unint64_t)order refreshedToOrder:(unint64_t)toOrder fetchedRange:(id)range;
@end

@implementation FCFDBStorage

- (FCFDBStorage)initWithPath:(id)path options:(int64_t)options pruningPolicy:(id)policy
{
  v41 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  policyCopy = policy;
  v38.receiver = self;
  v38.super_class = FCFDBStorage;
  v10 = [(FCFDBStorage *)&v38 init];
  if (v10)
  {
    v11 = [[FCFDBConnection alloc] initWithPath:pathCopy];
    if (v11)
    {
      v12 = *(v10 + 4);
      *(v10 + 4) = v11;
      v13 = v11;

      *(v10 + 1) = options;
      v14 = [pathCopy copy];
      v15 = *(v10 + 2);
      *(v10 + 2) = v14;

      objc_storeStrong(v10 + 3, policy);
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create("FCFDBStorage.access", v16);
      v18 = *(v10 + 5);
      *(v10 + 5) = v17;

      dispatch_queue_set_specific(*(v10 + 5), FCFDBStorageAccessQueueUnique, FCFDBStorageAccessQueueUnique, 0);
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = *(v10 + 6);
      *(v10 + 6) = v19;

      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = *(v10 + 7);
      *(v10 + 7) = v21;

      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = *(v10 + 8);
      *(v10 + 8) = v23;

      v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v26 = *(v10 + 10);
      *(v10 + 10) = v25;

      v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v28 = *(v10 + 11);
      *(v10 + 11) = v27;

      v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v30 = *(v10 + 12);
      *(v10 + 12) = v29;

      v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v32 = dispatch_queue_attr_make_with_qos_class(v31, QOS_CLASS_BACKGROUND, 0);
      v33 = dispatch_queue_create("FCFDBStorage.slowSave", v32);
      v34 = *(v10 + 13);
      *(v10 + 13) = v33;
    }

    else
    {
      v35 = FCFeedDatabaseLog;
      if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = pathCopy;
        _os_log_error_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_ERROR, "failed to establish connection to SQL database at path=%{public}@", buf, 0xCu);
      }

      v31 = v10;
      v10 = 0;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

- (FCFDBStorage)initWithFileURL:(id)l options:(int64_t)options
{
  path = [l path];
  v7 = [(FCFDBStorage *)self initWithPath:path options:options pruningPolicy:0];

  return v7;
}

- (FCFDBStorage)initWithFileURL:(id)l options:(int64_t)options pruningPolicy:(id)policy
{
  policyCopy = policy;
  path = [l path];
  v10 = [(FCFDBStorage *)self initWithPath:path options:options pruningPolicy:policyCopy];

  return v10;
}

- (id)feedForFeedID:(id)d
{
  v12[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  cachedFeeds = [(FCFDBStorage *)self cachedFeeds];
  v6 = [cachedFeeds objectForKey:dCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v12[0] = dCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(FCFDBStorage *)self feedsForFeedIDs:v8];
    v7 = [v9 objectForKey:dCopy];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)accessWithBlock:(id)block
{
  blockCopy = block;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__61;
  v33 = __Block_byref_object_dispose__61;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__61;
  v27 = __Block_byref_object_dispose__61;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__61;
  v21 = __Block_byref_object_dispose__61;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__61;
  v15[4] = __Block_byref_object_dispose__61;
  v16 = 0;
  accessQueue = [(FCFDBStorage *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__FCFDBStorage_accessWithBlock___block_invoke;
  block[3] = &unk_1E7C44288;
  v6 = blockCopy;
  block[4] = self;
  v10 = v6;
  v11 = &v29;
  v12 = &v23;
  v13 = &v17;
  v14 = v15;
  dispatch_sync(accessQueue, block);

  if ([v30[5] count] || objc_msgSend(v24[5], "count") || objc_msgSend(v18[5], "count"))
  {
    saveQueue = [(FCFDBStorage *)self saveQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__FCFDBStorage_accessWithBlock___block_invoke_2;
    v8[3] = &unk_1E7C442B0;
    v8[4] = self;
    v8[5] = &v17;
    v8[6] = v15;
    v8[7] = &v29;
    v8[8] = &v23;
    dispatch_async(saveQueue, v8);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

void __32__FCFDBStorage_accessWithBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) cachedFeeds];
  v3 = [*(a1 + 32) modifiedFeedIDs];
  v4 = [v3 allObjects];
  v5 = [v2 nf_objectsForKeysWithoutMarker:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) cachedFeeds];
  v9 = [*(a1 + 32) prunedFeedIDs];
  v10 = [v9 allObjects];
  v11 = [v8 nf_objectsForKeysWithoutMarker:v10];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) cachedFeedItems];
  v15 = [*(a1 + 32) modifiedFeedItemIDs];
  v16 = [v15 allObjects];
  v17 = [v14 nf_objectsForKeysWithoutMarker:v16];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(a1 + 32) cachedFeeds];
  v21 = [v20 copy];
  v22 = *(*(a1 + 72) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = [*(a1 + 32) modifiedFeedIDs];
  [v24 removeAllObjects];

  v25 = [*(a1 + 32) prunedFeedIDs];
  [v25 removeAllObjects];

  v26 = [*(a1 + 32) modifiedFeedItemIDs];
  [v26 removeAllObjects];
}

void __32__FCFDBStorage_accessWithBlock___block_invoke_2(uint64_t a1)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69C7548]);
  v3 = [MEMORY[0x1E69C7640] currentProcess];
  v4 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
  v44[0] = v4;
  v5 = [MEMORY[0x1E69C7530] attributeWithCompletionPolicy:1];
  v44[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v7 = [v2 initWithExplanation:@"News feed item storage write" target:v3 attributes:v6];

  [v7 acquireWithError:0];
  v8 = [*(a1 + 32) writeDBConnection];

  if (!v8)
  {
    v9 = [FCFDBConnection alloc];
    v10 = [*(a1 + 32) path];
    v11 = [(FCFDBConnection *)v9 initWithPath:v10];
    [*(a1 + 32) setWriteDBConnection:v11];
  }

  v12 = [*(a1 + 32) writeDBConnection];
  [v12 beginTransaction];

  v13 = [*(a1 + 32) writeDBConnection];
  [v13 insertIndexesForFeedItems:*(*(*(a1 + 40) + 8) + 40) knownFeedsByID:*(*(*(a1 + 48) + 8) + 40)];

  v14 = [*(a1 + 32) writeDBConnection];
  [v14 insertFeedItems:*(*(*(a1 + 40) + 8) + 40) knownFeedsByID:*(*(*(a1 + 48) + 8) + 40)];

  v15 = [*(a1 + 32) writeDBConnection];
  [v15 insertFeeds:*(*(*(a1 + 56) + 8) + 40)];

  if (([*(a1 + 32) options] & 2) != 0)
  {
    v16 = [*(a1 + 32) writeDBConnection];
    [v16 insertFeatureIndexesForFeedItems:*(*(*(a1 + 40) + 8) + 40) knownFeedsByID:*(*(*(a1 + 48) + 8) + 40)];
  }

  if (([*(a1 + 32) options] & 4) != 0 && objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "count"))
  {
    v34 = v7;
    v37 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = *(*(*(a1 + 64) + 8) + 40);
    v17 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v36 = *v39;
      do
      {
        v19 = 0;
        do
        {
          if (*v39 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v38 + 1) + 8 * v19);
          v21 = [*(a1 + 32) writeDBConnection];
          [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v20, "feedLookupID")}];
          v23 = v22 = a1;
          v42 = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
          v25 = [v20 trailingEmptyRegion];
          v26 = [v21 selectFeedItemIDsWithFeedLookupIDs:v24 feedRange:v25 feature:0 maxCountByFeedLookupID:0 totalMaxCount:0];

          a1 = v22;
          [v37 addObjectsFromArray:v26];
          v27 = [*(v22 + 32) writeDBConnection];
          v28 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v20, "feedLookupID")}];
          v29 = [v20 trailingEmptyRegion];
          [v27 deleteFeedItemIndexesFromFeedLookupID:v28 feedRange:v29];

          ++v19;
        }

        while (v18 != v19);
        v18 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v18);
    }

    v30 = [*(a1 + 32) writeDBConnection];
    [v30 deleteFeedItemsWithIDs:v37];

    v31 = [*(a1 + 32) writeDBConnection];
    [v31 incrementalVacuum];

    v7 = v34;
  }

  v32 = [*(a1 + 32) writeDBConnection];
  [v32 commitTransaction];

  [v7 invalidateWithError:0];
  v33 = *MEMORY[0x1E69E9840];
}

- (id)feedsForFeedIDs:(id)ds
{
  v46 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    *buf = 136315906;
    v39 = "[FCFDBStorage feedsForFeedIDs:]";
    v40 = 2080;
    v41 = "FCFDBStorage.m";
    v42 = 1024;
    v43 = 209;
    v44 = 2114;
    v45 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  cachedFeeds = [(FCFDBStorage *)self cachedFeeds];
  v7 = [dsCopy fc_arrayByRemovingKeysInDictionary:cachedFeeds];

  if ([v7 count])
  {
    readDBConnection = [(FCFDBStorage *)self readDBConnection];
    v9 = [readDBConnection selectFeedsWithFeedIDs:v7];

    v10 = [(FCFDBStorage *)self _pruneFeedsIfNeeded:v9];
    cachedFeeds2 = [(FCFDBStorage *)self cachedFeeds];
    [cachedFeeds2 addEntriesFromDictionary:v10];

    v12 = [v7 fc_arrayByRemovingKeysInDictionary:v10];
    if ([v12 count])
    {
      v32 = dsCopy;
      lastFeedLookupID = [(FCFDBStorage *)self lastFeedLookupID];
      v31 = v9;
      if (lastFeedLookupID)
      {
        [(FCFDBStorage *)self setLastFeedLookupID:lastFeedLookupID];
      }

      else
      {
        readDBConnection2 = [(FCFDBStorage *)self readDBConnection];
        -[FCFDBStorage setLastFeedLookupID:](self, "setLastFeedLookupID:", [readDBConnection2 selectMaxFeedLookupID]);
      }

      v29 = v12;
      v30 = v10;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            [(FCFDBStorage *)self setLastFeedLookupID:[(FCFDBStorage *)self lastFeedLookupID:v29]+ 1];
            v21 = [[FCFDBFeed alloc] initWithFeedID:v20 feedLookupID:[(FCFDBStorage *)self lastFeedLookupID]];
            cachedFeeds3 = [(FCFDBStorage *)self cachedFeeds];
            [cachedFeeds3 setObject:v21 forKey:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v17);
      }

      modifiedFeedIDs = [(FCFDBStorage *)self modifiedFeedIDs];
      [modifiedFeedIDs addObjectsFromArray:v15];

      v9 = v31;
      dsCopy = v32;
      v12 = v29;
      v10 = v30;
    }
  }

  v24 = [(FCFDBStorage *)self cachedFeeds:v29];
  v25 = [v24 fc_subdictionaryForKeys:dsCopy];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)feedItemsForFeedIDs:(id)ds feedRange:(id)range feature:(id)feature maxCountByFeed:(id)feed totalMaxCount:(unint64_t)count
{
  v67 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  rangeCopy = range;
  featureCopy = feature;
  feedCopy = feed;
  v16 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    *buf = 136315906;
    v60 = "[FCFDBStorage feedItemsForFeedIDs:feedRange:feature:maxCountByFeed:totalMaxCount:]";
    v61 = 2080;
    v62 = "FCFDBStorage.m";
    v63 = 1024;
    v64 = 243;
    v65 = 2114;
    v66 = v40;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke;
  v58[3] = &unk_1E7C38D38;
  v58[4] = self;
  v17 = [dsCopy fc_arrayByTransformingWithBlock:v58];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_2;
  v57[3] = &unk_1E7C442D8;
  v57[4] = self;
  v18 = [feedCopy fc_dictionaryByTransformingKeysWithBlock:v57];
  readDBConnection = [(FCFDBStorage *)self readDBConnection];
  v43 = v18;
  v44 = v17;
  countCopy = count;
  v20 = [readDBConnection selectFeedItemIDsWithFeedLookupIDs:v17 feedRange:rangeCopy feature:featureCopy maxCountByFeedLookupID:v18 totalMaxCount:count];

  v21 = MEMORY[0x1E695DEC8];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_3;
  v53[3] = &unk_1E7C3B1F8;
  v41 = dsCopy;
  v54 = v41;
  selfCopy = self;
  v22 = rangeCopy;
  v56 = v22;
  v23 = [v21 fc_array:v53];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_5;
  v48[3] = &unk_1E7C44328;
  v24 = feedCopy;
  v49 = v24;
  v25 = v23;
  v50 = v25;
  v26 = v20;
  v51 = v26;
  selfCopy2 = self;
  v27 = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_5(v48);
  allObjects = [v27 allObjects];
  cachedFeedItems = [(FCFDBStorage *)self cachedFeedItems];
  v30 = [allObjects fc_arrayByRemovingKeysInDictionary:cachedFeedItems];

  if ([v30 count])
  {
    readDBConnection2 = [(FCFDBStorage *)self readDBConnection];
    v32 = [readDBConnection2 selectFeedItemsWithIDs:v30];

    cachedFeedItems2 = [(FCFDBStorage *)self cachedFeedItems];
    [cachedFeedItems2 addEntriesFromDictionary:v32];
  }

  cachedFeedItems3 = [(FCFDBStorage *)self cachedFeedItems];
  allObjects2 = [v27 allObjects];
  v36 = [cachedFeedItems3 nf_mutableObjectsForKeysWithoutMarker:allObjects2];

  if (featureCopy)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_9;
    v46[3] = &unk_1E7C44350;
    v47 = featureCopy;
    v37 = [v36 indexesOfObjectsPassingTest:v46];
    [v36 removeObjectsAtIndexes:v37];
  }

  [v36 sortUsingSelector:sel_compareOrderDescending_];
  if (countCopy - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v36 fc_trimToMaxCount:?];
  }

  v38 = *MEMORY[0x1E69E9840];

  return v36;
}

uint64_t __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) _feedLookupIDForFeedID:a2];

  return [v2 numberWithLongLong:v3];
}

uint64_t __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) _feedLookupIDForFeedID:a2];

  return [v2 numberWithLongLong:v3];
}

void __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_3(id *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [a1[5] _feedLookupIDForFeedID:v8];
        v10 = [a1[5] cachedFeedItemOrders];
        v11 = [v10 objectForKey:v8];

        v12 = [a1[6] nsRange];
        v14 = v13;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_4;
        v17[3] = &unk_1E7C44300;
        v18 = v3;
        v19 = v9;
        [v11 enumerateIndexesInRange:v12 options:v14 usingBlock:{0, v17}];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40) | (a2 << 20)];
  [v2 addObject:v3];
}

id __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_5(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v17 = [MEMORY[0x1E695DFA8] set];
    v2 = [MEMORY[0x1E695DFA0] orderedSet];
    [v2 addObjectsFromArray:*(a1 + 48)];
    [v2 addObjectsFromArray:*(a1 + 40)];
    [v2 sortUsingComparator:&__block_literal_global_131];
    v3 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_8;
    v22[3] = &unk_1E7C442D8;
    v22[4] = *(a1 + 56);
    v4 = [v3 fc_dictionaryByTransformingKeysWithBlock:v22];
    v5 = [MEMORY[0x1E696AB50] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v11, "unsignedLongLongValue") & 0xFFFFF}];
          v13 = [v4 objectForKeyedSubscript:v12];
          if (!v13 || (v14 = [v5 countForObject:v12], v14 < objc_msgSend(v13, "unsignedIntegerValue")))
          {
            [v17 addObject:v11];
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_6;
    v23[3] = &unk_1E7C397D0;
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v17 = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_6(v23);

    v6 = v24;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v17;
}

id __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:*(a1 + 32) toArray:*(a1 + 40)];
  v3 = [v1 setWithArray:v2];

  return v3;
}

uint64_t __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) _feedLookupIDForFeedID:a2];

  return [v2 numberWithLongLong:v3];
}

- (void)insertFeedItems:(id)items
{
  v40 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    *buf = 136315906;
    v33 = "[FCFDBStorage insertFeedItems:]";
    v34 = 2080;
    v35 = "FCFDBStorage.m";
    v36 = 1024;
    v37 = 343;
    v38 = 2114;
    v39 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = itemsCopy;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        feedID = [v10 feedID];
        v12 = [(FCFDBStorage *)self _feedLookupIDForFeedID:feedID];

        order = [v10 order];
        cachedFeedItemOrders = [(FCFDBStorage *)self cachedFeedItemOrders];
        feedID2 = [v10 feedID];
        indexSet = [cachedFeedItemOrders objectForKey:feedID2];

        if (!indexSet)
        {
          indexSet = [MEMORY[0x1E696AD50] indexSet];
          cachedFeedItemOrders2 = [(FCFDBStorage *)self cachedFeedItemOrders];
          feedID3 = [v10 feedID];
          [cachedFeedItemOrders2 setObject:indexSet forKey:feedID3];
        }

        [indexSet addIndex:{objc_msgSend(v10, "order")}];
        v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v12 | (order << 20)];
        [dictionary setObject:v10 forKey:v19];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  cachedFeedItems = [(FCFDBStorage *)self cachedFeedItems];
  [cachedFeedItems addEntriesFromDictionary:dictionary];

  modifiedFeedItemIDs = [(FCFDBStorage *)self modifiedFeedItemIDs];
  allKeys = [dictionary allKeys];
  [modifiedFeedItemIDs addObjectsFromArray:allKeys];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)updateFeedID:(id)d refreshedFromOrder:(unint64_t)order refreshedToOrder:(unint64_t)toOrder fetchedRange:(id)range
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  rangeCopy = range;
  v12 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    v19 = 136315906;
    v20 = "[FCFDBStorage updateFeedID:refreshedFromOrder:refreshedToOrder:fetchedRange:]";
    v21 = 2080;
    v22 = "FCFDBStorage.m";
    v23 = 1024;
    v24 = 374;
    v25 = 2114;
    v26 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v19, 0x26u);
  }

  v13 = [(FCFDBStorage *)self feedForFeedID:dCopy];
  v14 = [v13 copyWithRefreshedFromOrder:order refreshedToOrder:toOrder newlyFetchedRange:rangeCopy];
  cachedFeeds = [(FCFDBStorage *)self cachedFeeds];
  [cachedFeeds setObject:v14 forKey:dCopy];

  modifiedFeedIDs = [(FCFDBStorage *)self modifiedFeedIDs];
  [modifiedFeedIDs addObject:dCopy];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)flushChanges
{
  saveQueue = [(FCFDBStorage *)self saveQueue];
  dispatch_sync(saveQueue, &__block_literal_global_43_2);
}

- (int64_t)_feedLookupIDForFeedID:(id)d
{
  v3 = [(FCFDBStorage *)self feedForFeedID:d];
  feedLookupID = [v3 feedLookupID];

  return feedLookupID;
}

- (id)_pruneFeedsIfNeeded:(id)needed
{
  v52 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v5 = FCFDBStorageAccessQueueUnique;
  if (dispatch_get_specific(FCFDBStorageAccessQueueUnique) != v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing fdb storage outside the access queue"];
    *buf = 136315906;
    v45 = "[FCFDBStorage _pruneFeedsIfNeeded:]";
    v46 = 2080;
    v47 = "FCFDBStorage.m";
    v48 = 1024;
    v49 = 401;
    v50 = 2114;
    v51 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (([(FCFDBStorage *)self options]& 4) != 0)
  {
    pruningPolicy = [(FCFDBStorage *)self pruningPolicy];
    feedRangeToPrune = [pruningPolicy feedRangeToPrune];

    if (feedRangeToPrune)
    {
      v6 = feedRangeToPrune;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v26 = neededCopy;
      v10 = neededCopy;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v43 count:16];
      if (v11)
      {
        v12 = v11;
        selfCopy = self;
        v13 = 0;
        v14 = *v30;
        do
        {
          v15 = 0;
          v28 = v12;
          do
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v29 + 1) + 8 * v15);
            v17 = [v10 objectForKey:v16];
            if ([v17 hasFetchedRangesInRange:v6])
            {
              if (!v13)
              {
                v13 = [v10 mutableCopy];
              }

              v18 = v6;
              v19 = [v17 copyWithoutFetchedRange:v6];
              [v13 setObject:v19 forKey:v16];
              modifiedFeedIDs = [(FCFDBStorage *)selfCopy modifiedFeedIDs];
              [modifiedFeedIDs addObject:v16];

              prunedFeedIDs = [(FCFDBStorage *)selfCopy prunedFeedIDs];
              [prunedFeedIDs addObject:v16];

              v6 = v18;
              v12 = v28;
            }

            ++v15;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v29 objects:v43 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v22 = v13;
      }

      else
      {
        v22 = v10;
      }

      v7 = v22;

      neededCopy = v26;
    }

    else
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __36__FCFDBStorage__pruneFeedsIfNeeded___block_invoke_2;
      v36 = &unk_1E7C36F98;
      v37 = neededCopy;
      v7 = v37;

      v6 = 0;
    }
  }

  else
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __36__FCFDBStorage__pruneFeedsIfNeeded___block_invoke;
    v41 = &unk_1E7C36F98;
    v42 = neededCopy;
    v6 = v42;
    v7 = v6;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

@end