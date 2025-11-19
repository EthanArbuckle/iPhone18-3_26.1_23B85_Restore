@interface FCAudioPlaylist
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4;
+ (void)populateLocalStoreClassRegistry:(id)a3;
- (BOOL)containsArticleID:(id)a3;
- (FCAudioPlaylist)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5;
- (NSArray)articleIDs;
- (id)_itemWithArticleID:(uint64_t)a1;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3;
- (id)dateAddedForArticleID:(id)a3;
- (id)localStoreMigrator;
- (id)recordsForRestoringZoneName:(id)a3;
- (void)_modifyWithInsertedOrChangedItems:(void *)a3 removedArticleIDs:;
- (void)_regenerateOrderedArticleIDs;
- (void)addObserver:(id)a3;
- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4;
- (void)insertArticleID:(id)a3 atIndex:(unint64_t)a4;
- (void)loadLocalCachesFromStore;
- (void)removeArticleID:(id)a3;
- (void)removeObserver:(id)a3;
- (void)save;
@end

@implementation FCAudioPlaylist

- (id)localStoreMigrator
{
  v2 = objc_alloc_init(FCAudioPlaylistMigrator);

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
  v3[2] = __43__FCAudioPlaylist_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v3];
}

void __43__FCAudioPlaylist_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  obj = [MEMORY[0x1E695DF90] dictionary];
  v2 = [*(a1 + 32) localStore];
  [v2 addAllEntriesToDictionary:obj];

  v3 = *(a1 + 32);
  v4 = [objc_opt_class() internalLocalStoreKeys];
  v5 = [v4 allObjects];
  [obj removeObjectsForKeys:v5];

  v6 = *(a1 + 32);
  if (v6)
  {
    objc_storeStrong((v6 + 88), obj);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  [(FCAudioPlaylist *)v7 _regenerateOrderedArticleIDs];
}

- (void)_regenerateOrderedArticleIDs
{
  if (a1)
  {
    v2 = [*(a1 + 88) allValues];
    v6 = [v2 sortedArrayUsingComparator:&__block_literal_global_30_1];

    v3 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_33_1];
    v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v3];
    v5 = *(a1 + 96);
    *(a1 + 96) = v4;
  }
}

- (FCAudioPlaylist)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5
{
  v9.receiver = self;
  v9.super_class = FCAudioPlaylist;
  v5 = [(FCPrivateDataController *)&v9 initWithContext:a3 pushNotificationCenter:a4 storeDirectory:a5];
  if (v5)
  {
    v6 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v5->_itemsLock;
    v5->_itemsLock = v6;
  }

  return v5;
}

+ (id)backingRecordZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"AudioPlaylist" ownerName:*MEMORY[0x1E695B728]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 allKeys];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __72__FCAudioPlaylist_commandsToMergeLocalDataToCloud_privateDataDirectory___block_invoke;
  v17 = &unk_1E7C42840;
  v18 = v5;
  v19 = a1;
  v7 = v5;
  v8 = [v6 fc_arrayByTransformingWithBlock:&v14];

  v9 = [FCModifyAudioPlaylistCommand alloc];
  v10 = [(FCModifyAudioPlaylistCommand *)v9 initWithItems:v8 merge:1, v14, v15, v16, v17];
  v20[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __72__FCAudioPlaylist_commandsToMergeLocalDataToCloud_privateDataDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 40) isLocalStoreKeyInternal:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  return v4;
}

- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [objc_alloc(MEMORY[0x1E69B6D18]) initWithCKRecord:*(*(&v31 + 1) + 8 * i)];
        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      v20 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (self)
        {
          itemsByID = self->_itemsByID;
        }

        else
        {
          itemsByID = 0;
        }

        v22 = [(NSMutableDictionary *)itemsByID objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v20)];
        v23 = [v22 articleID];

        if (v23)
        {
          v24 = [v22 articleID];
          [v9 addObject:v24];
        }

        ++v20;
      }

      while (v18 != v20);
      v25 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      v18 = v25;
    }

    while (v25);
  }

  [(FCAudioPlaylist *)&self->super.super.isa _modifyWithInsertedOrChangedItems:v8 removedArticleIDs:v9];
  v26 = *MEMORY[0x1E69E9840];
}

- (void)_modifyWithInsertedOrChangedItems:(void *)a3 removedArticleIDs:
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v32 = a3;
  if (a1 && ([v5 count] || objc_msgSend(v32, "count")))
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = v7;
      v10 = *v42;
      do
      {
        v11 = 0;
        do
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v41 + 1) + 8 * v11);
          v13 = a1[11];
          v14 = [v12 identifier];
          [v13 setObject:v12 forKeyedSubscript:v14];

          v15 = [a1 localStore];
          v16 = [v12 identifier];
          [v15 setObject:v12 forKeyedSubscript:v16];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v9);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = v32;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        v21 = 0;
        do
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [MEMORY[0x1E69B6D18] identifierFromArticleID:{*(*(&v37 + 1) + 8 * v21), v31}];
          v23 = [a1[11] objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [a1 localStore];
            [v24 removeObjectForKey:v22];

            [a1[11] removeObjectForKey:v22];
            v8 = 1;
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v19);
    }

    v5 = v31;
    if (v8)
    {
      [(FCAudioPlaylist *)a1 _regenerateOrderedArticleIDs];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v25 = [a1 observers];
      v26 = [v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v34;
        do
        {
          v29 = 0;
          do
          {
            if (*v34 != v28)
            {
              objc_enumerationMutation(v25);
            }

            [*(*(&v33 + 1) + 8 * v29++) audioPlaylistDidChange:{a1, v31}];
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
        }

        while (v27);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3
{
  if (self)
  {
    self = self->_itemsByID;
  }

  return [(FCAudioPlaylist *)self allKeys];
}

+ (void)populateLocalStoreClassRegistry:(id)a3
{
  v3 = a3;
  [v3 registerClass:objc_opt_class()];
}

- (id)recordsForRestoringZoneName:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__54;
  v14 = __Block_byref_object_dispose__54;
  v15 = 0;
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
  v9[2] = __47__FCAudioPlaylist_recordsForRestoringZoneName___block_invoke;
  v9[3] = &unk_1E7C37160;
  v9[4] = self;
  v9[5] = &v10;
  [(FCMTWriterLock *)v6 performReadSync:v9];

  v7 = [v11[5] fc_arrayByTransformingWithBlock:&__block_literal_global_112];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __47__FCAudioPlaylist_recordsForRestoringZoneName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (NSArray)articleIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__54;
  v12 = __Block_byref_object_dispose__54;
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
  v7[2] = __29__FCAudioPlaylist_articleIDs__block_invoke;
  v7[3] = &unk_1E7C37160;
  v7[4] = self;
  v7[5] = &v8;
  [(FCMTWriterLock *)v4 performReadSync:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __29__FCAudioPlaylist_articleIDs__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v7 = [v3 array];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)containsArticleID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
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
  v10[2] = __37__FCAudioPlaylist_containsArticleID___block_invoke;
  v10[3] = &unk_1E7C37138;
  v12 = &v13;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  [(FCMTWriterLock *)v6 performReadSync:v10];

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __37__FCAudioPlaylist_containsArticleID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = a1[5];
  v4 = v2;
  *(*(a1[6] + 8) + 24) = [v4 containsObject:v3];
}

- (id)dateAddedForArticleID:(id)a3
{
  v4 = a3;
  if ([(FCAudioPlaylist *)self containsArticleID:v4])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__54;
    v16 = __Block_byref_object_dispose__54;
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
    v9[2] = __41__FCAudioPlaylist_dateAddedForArticleID___block_invoke_2;
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
    v7 = 0;
  }

  return v7;
}

void __41__FCAudioPlaylist_dateAddedForArticleID___block_invoke_2(uint64_t *a1)
{
  v7 = [(FCAudioPlaylist *)a1[4] _itemWithArticleID:?];
  if ([v7 hasDateAdded])
  {
    v2 = MEMORY[0x1E695DF00];
    v3 = [v7 dateAdded];
    v4 = [v2 dateWithPBDate:v3];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)_itemWithArticleID:(uint64_t)a1
{
  if (a1)
  {
    v3 = MEMORY[0x1E69B6D18];
    v4 = *(a1 + 88);
    v5 = [v3 identifierFromArticleID:a2];
    v6 = [v4 objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)insertArticleID:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
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
  v9[2] = __43__FCAudioPlaylist_insertArticleID_atIndex___block_invoke;
  v9[3] = &unk_1E7C393F8;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(FCMTWriterLock *)itemsLock performWriteSync:v9];
}

void __43__FCAudioPlaylist_insertArticleID_atIndex___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69B6D18]);
    v6 = [MEMORY[0x1E69B6D18] identifierFromArticleID:*(a1 + 40)];
    [v5 setIdentifier:v6];

    [v5 setArticleID:*(a1 + 40)];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [v7 pbDate];
    [v5 setDateAdded:v8];

    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = v9[11];
    }

    v10 = v9;
    v11 = [v5 identifier];
    [v10 setObject:v5 forKeyedSubscript:v11];
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 88);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 count];
  if (v12 >= v15 - 1)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = v12;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 96);
  }

  else
  {
    v18 = 0;
  }

  v19 = [v18 mutableCopy];
  v20 = MEMORY[0x1E695DEC8];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __43__FCAudioPlaylist_insertArticleID_atIndex___block_invoke_2;
  v40[3] = &unk_1E7C42868;
  v21 = v19;
  v41 = v21;
  v22 = *(a1 + 40);
  v45 = v16;
  v23 = *(a1 + 32);
  v42 = v22;
  v43 = v23;
  v24 = v5;
  v44 = v24;
  v25 = [v20 fc_array:v40];
  v26 = [[FCTagSubscriptionOrderAssigner alloc] initWithInitialOrder:1000000000000000 orderSpacing:?];
  v27 = [(FCTagSubscriptionOrderAssigner *)v26 assignOrderToTagSubscriptions:v25];
  [(FCAudioPlaylist *)*(a1 + 32) _modifyWithInsertedOrChangedItems:v27 removedArticleIDs:0];
  v28 = FCAudioLog;
  if (os_log_type_enabled(FCAudioLog, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v24;
    v39 = v21;
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = v16;
    if (v29)
    {
      v29 = v29[12];
    }

    v32 = v29;
    v33 = v28;
    v34 = [v32 array];
    v35 = [v34 fc_subarrayWithMaxCount:2];
    *buf = 138543874;
    v47 = v30;
    v48 = 2048;
    v49 = v31;
    v50 = 2114;
    v51 = v35;
    _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "did insert %{public}@ into playlist at index=%lu, playlist=%{public}@, ...", buf, 0x20u);

    v24 = v38;
    v21 = v39;
  }

  v36 = [[FCModifyAudioPlaylistCommand alloc] initWithItems:v27 merge:0];
  [*(a1 + 32) addCommandToCommandQueue:v36];

  v37 = *MEMORY[0x1E69E9840];
}

void __43__FCAudioPlaylist_insertArticleID_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  [*(a1 + 32) removeObject:*(a1 + 40)];
  [*(a1 + 32) insertObject:*(a1 + 40) atIndex:*(a1 + 64)];
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = [*(a1 + 32) objectAtIndex:v3 - 1];
    v5 = [(FCAudioPlaylist *)*(a1 + 48) _itemWithArticleID:v4];
    [v10 addObject:v5];
  }

  v6 = [*(a1 + 56) copyWithOrder:0];
  [v10 addObject:v6];
  v7 = *(a1 + 64) + 1;
  if (v7 != [*(a1 + 32) count])
  {
    v8 = [*(a1 + 32) objectAtIndex:*(a1 + 64) + 1];
    v9 = [(FCAudioPlaylist *)*(a1 + 48) _itemWithArticleID:v8];
    [v10 addObject:v9];
  }
}

- (void)removeArticleID:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__FCAudioPlaylist_removeArticleID___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(FCMTWriterLock *)itemsLock performWriteSync:v7];
}

void __35__FCAudioPlaylist_removeArticleID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(FCAudioPlaylist *)v2 _modifyWithInsertedOrChangedItems:v3 removedArticleIDs:?];

  v4 = [[FCRemoveFromAudioPlaylistCommand alloc] initWithArticleID:*(a1 + 40)];
  [*(a1 + 32) addCommandToCommandQueue:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCAudioPlaylist;
  [(FCPrivateDataController *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCAudioPlaylist;
  [(FCPrivateDataController *)&v3 removeObserver:a3];
}

- (void)save
{
  v2 = [(FCPrivateDataController *)self localStore];
  [v2 save];
}

uint64_t __47__FCAudioPlaylist__regenerateOrderedArticleIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 order];
  v7 = [v5 order];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
    if (!v9)
    {
LABEL_9:
      v10 = [v4 articleID];
      v11 = [v5 articleID];
      v9 = [v10 compare:v11];
    }
  }

  else
  {
    if (v6)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (!(v6 | v7))
    {
      goto LABEL_9;
    }
  }

  return v9;
}

@end