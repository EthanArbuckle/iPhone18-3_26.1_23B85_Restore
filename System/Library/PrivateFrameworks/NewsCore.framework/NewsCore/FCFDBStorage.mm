@interface FCFDBStorage
- (FCFDBStorage)initWithFileURL:(id)a3 options:(int64_t)a4;
- (FCFDBStorage)initWithFileURL:(id)a3 options:(int64_t)a4 pruningPolicy:(id)a5;
- (FCFDBStorage)initWithPath:(id)a3 options:(int64_t)a4 pruningPolicy:(id)a5;
- (id)_pruneFeedsIfNeeded:(id)a3;
- (id)feedForFeedID:(id)a3;
- (id)feedItemsForFeedIDs:(id)a3 feedRange:(id)a4 feature:(id)a5 maxCountByFeed:(id)a6 totalMaxCount:(unint64_t)a7;
- (id)feedsForFeedIDs:(id)a3;
- (int64_t)_feedLookupIDForFeedID:(id)a3;
- (void)accessWithBlock:(id)a3;
- (void)flushChanges;
- (void)insertFeedItems:(id)a3;
- (void)updateFeedID:(id)a3 refreshedFromOrder:(unint64_t)a4 refreshedToOrder:(unint64_t)a5 fetchedRange:(id)a6;
@end

@implementation FCFDBStorage

- (FCFDBStorage)initWithPath:(id)a3 options:(int64_t)a4 pruningPolicy:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v38.receiver = self;
  v38.super_class = FCFDBStorage;
  v10 = [(FCFDBStorage *)&v38 init];
  if (v10)
  {
    v11 = [[FCFDBConnection alloc] initWithPath:v8];
    if (v11)
    {
      v12 = *(v10 + 4);
      *(v10 + 4) = v11;
      v13 = v11;

      *(v10 + 1) = a4;
      v14 = [v8 copy];
      v15 = *(v10 + 2);
      *(v10 + 2) = v14;

      objc_storeStrong(v10 + 3, a5);
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
        v40 = v8;
        _os_log_error_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_ERROR, "failed to establish connection to SQL database at path=%{public}@", buf, 0xCu);
      }

      v31 = v10;
      v10 = 0;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

- (FCFDBStorage)initWithFileURL:(id)a3 options:(int64_t)a4
{
  v6 = [a3 path];
  v7 = [(FCFDBStorage *)self initWithPath:v6 options:a4 pruningPolicy:0];

  return v7;
}

- (FCFDBStorage)initWithFileURL:(id)a3 options:(int64_t)a4 pruningPolicy:(id)a5
{
  v8 = a5;
  v9 = [a3 path];
  v10 = [(FCFDBStorage *)self initWithPath:v9 options:a4 pruningPolicy:v8];

  return v10;
}

- (id)feedForFeedID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCFDBStorage *)self cachedFeeds];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v12[0] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(FCFDBStorage *)self feedsForFeedIDs:v8];
    v7 = [v9 objectForKey:v4];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)accessWithBlock:(id)a3
{
  v4 = a3;
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
  v5 = [(FCFDBStorage *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__FCFDBStorage_accessWithBlock___block_invoke;
  block[3] = &unk_1E7C44288;
  v6 = v4;
  block[4] = self;
  v10 = v6;
  v11 = &v29;
  v12 = &v23;
  v13 = &v17;
  v14 = v15;
  dispatch_sync(v5, block);

  if ([v30[5] count] || objc_msgSend(v24[5], "count") || objc_msgSend(v18[5], "count"))
  {
    v7 = [(FCFDBStorage *)self saveQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__FCFDBStorage_accessWithBlock___block_invoke_2;
    v8[3] = &unk_1E7C442B0;
    v8[4] = self;
    v8[5] = &v17;
    v8[6] = v15;
    v8[7] = &v29;
    v8[8] = &v23;
    dispatch_async(v7, v8);
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

- (id)feedsForFeedIDs:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v6 = [(FCFDBStorage *)self cachedFeeds];
  v7 = [v4 fc_arrayByRemovingKeysInDictionary:v6];

  if ([v7 count])
  {
    v8 = [(FCFDBStorage *)self readDBConnection];
    v9 = [v8 selectFeedsWithFeedIDs:v7];

    v10 = [(FCFDBStorage *)self _pruneFeedsIfNeeded:v9];
    v11 = [(FCFDBStorage *)self cachedFeeds];
    [v11 addEntriesFromDictionary:v10];

    v12 = [v7 fc_arrayByRemovingKeysInDictionary:v10];
    if ([v12 count])
    {
      v32 = v4;
      v13 = [(FCFDBStorage *)self lastFeedLookupID];
      v31 = v9;
      if (v13)
      {
        [(FCFDBStorage *)self setLastFeedLookupID:v13];
      }

      else
      {
        v14 = [(FCFDBStorage *)self readDBConnection];
        -[FCFDBStorage setLastFeedLookupID:](self, "setLastFeedLookupID:", [v14 selectMaxFeedLookupID]);
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
            v22 = [(FCFDBStorage *)self cachedFeeds];
            [v22 setObject:v21 forKey:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v17);
      }

      v23 = [(FCFDBStorage *)self modifiedFeedIDs];
      [v23 addObjectsFromArray:v15];

      v9 = v31;
      v4 = v32;
      v12 = v29;
      v10 = v30;
    }
  }

  v24 = [(FCFDBStorage *)self cachedFeeds:v29];
  v25 = [v24 fc_subdictionaryForKeys:v4];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)feedItemsForFeedIDs:(id)a3 feedRange:(id)a4 feature:(id)a5 maxCountByFeed:(id)a6 totalMaxCount:(unint64_t)a7
{
  v67 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
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
  v17 = [v12 fc_arrayByTransformingWithBlock:v58];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_2;
  v57[3] = &unk_1E7C442D8;
  v57[4] = self;
  v18 = [v15 fc_dictionaryByTransformingKeysWithBlock:v57];
  v19 = [(FCFDBStorage *)self readDBConnection];
  v43 = v18;
  v44 = v17;
  v45 = a7;
  v20 = [v19 selectFeedItemIDsWithFeedLookupIDs:v17 feedRange:v13 feature:v14 maxCountByFeedLookupID:v18 totalMaxCount:a7];

  v21 = MEMORY[0x1E695DEC8];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_3;
  v53[3] = &unk_1E7C3B1F8;
  v41 = v12;
  v54 = v41;
  v55 = self;
  v22 = v13;
  v56 = v22;
  v23 = [v21 fc_array:v53];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_5;
  v48[3] = &unk_1E7C44328;
  v24 = v15;
  v49 = v24;
  v25 = v23;
  v50 = v25;
  v26 = v20;
  v51 = v26;
  v52 = self;
  v27 = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_5(v48);
  v28 = [v27 allObjects];
  v29 = [(FCFDBStorage *)self cachedFeedItems];
  v30 = [v28 fc_arrayByRemovingKeysInDictionary:v29];

  if ([v30 count])
  {
    v31 = [(FCFDBStorage *)self readDBConnection];
    v32 = [v31 selectFeedItemsWithIDs:v30];

    v33 = [(FCFDBStorage *)self cachedFeedItems];
    [v33 addEntriesFromDictionary:v32];
  }

  v34 = [(FCFDBStorage *)self cachedFeedItems];
  v35 = [v27 allObjects];
  v36 = [v34 nf_mutableObjectsForKeysWithoutMarker:v35];

  if (v14)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __83__FCFDBStorage_feedItemsForFeedIDs_feedRange_feature_maxCountByFeed_totalMaxCount___block_invoke_9;
    v46[3] = &unk_1E7C44350;
    v47 = v14;
    v37 = [v36 indexesOfObjectsPassingTest:v46];
    [v36 removeObjectsAtIndexes:v37];
  }

  [v36 sortUsingSelector:sel_compareOrderDescending_];
  if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
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

- (void)insertFeedItems:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v26 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
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
        v11 = [v10 feedID];
        v12 = [(FCFDBStorage *)self _feedLookupIDForFeedID:v11];

        v13 = [v10 order];
        v14 = [(FCFDBStorage *)self cachedFeedItemOrders];
        v15 = [v10 feedID];
        v16 = [v14 objectForKey:v15];

        if (!v16)
        {
          v16 = [MEMORY[0x1E696AD50] indexSet];
          v17 = [(FCFDBStorage *)self cachedFeedItemOrders];
          v18 = [v10 feedID];
          [v17 setObject:v16 forKey:v18];
        }

        [v16 addIndex:{objc_msgSend(v10, "order")}];
        v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v12 | (v13 << 20)];
        [v26 setObject:v10 forKey:v19];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v20 = [(FCFDBStorage *)self cachedFeedItems];
  [v20 addEntriesFromDictionary:v26];

  v21 = [(FCFDBStorage *)self modifiedFeedItemIDs];
  v22 = [v26 allKeys];
  [v21 addObjectsFromArray:v22];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)updateFeedID:(id)a3 refreshedFromOrder:(unint64_t)a4 refreshedToOrder:(unint64_t)a5 fetchedRange:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
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

  v13 = [(FCFDBStorage *)self feedForFeedID:v10];
  v14 = [v13 copyWithRefreshedFromOrder:a4 refreshedToOrder:a5 newlyFetchedRange:v11];
  v15 = [(FCFDBStorage *)self cachedFeeds];
  [v15 setObject:v14 forKey:v10];

  v16 = [(FCFDBStorage *)self modifiedFeedIDs];
  [v16 addObject:v10];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)flushChanges
{
  v2 = [(FCFDBStorage *)self saveQueue];
  dispatch_sync(v2, &__block_literal_global_43_2);
}

- (int64_t)_feedLookupIDForFeedID:(id)a3
{
  v3 = [(FCFDBStorage *)self feedForFeedID:a3];
  v4 = [v3 feedLookupID];

  return v4;
}

- (id)_pruneFeedsIfNeeded:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v8 = [(FCFDBStorage *)self pruningPolicy];
    v9 = [v8 feedRangeToPrune];

    if (v9)
    {
      v6 = v9;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v26 = v4;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v43 count:16];
      if (v11)
      {
        v12 = v11;
        v27 = self;
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
              v20 = [(FCFDBStorage *)v27 modifiedFeedIDs];
              [v20 addObject:v16];

              v21 = [(FCFDBStorage *)v27 prunedFeedIDs];
              [v21 addObject:v16];

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

      v4 = v26;
    }

    else
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __36__FCFDBStorage__pruneFeedsIfNeeded___block_invoke_2;
      v36 = &unk_1E7C36F98;
      v37 = v4;
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
    v42 = v4;
    v6 = v42;
    v7 = v6;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

@end