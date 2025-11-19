@interface FCReadingList
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4;
- (BOOL)isArticleOnReadingList:(id)a3;
- (BOOL)shouldHideHeadline:(id)a3;
- (FCReadingList)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5;
- (id)_allEntriesInReadingList;
- (id)_readingListEntryForArticleID:(id *)a1;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3;
- (id)allNonConsumedArticleIDs;
- (id)allNonConsumedArticleIDsIntersectingSet:(id)a3;
- (id)allSortedArticleIDsInReadingList;
- (id)dateArticleWasAdded:(id)a3;
- (id)recordsForRestoringZoneName:(id)a3;
- (unint64_t)countOfAllArticlesSavedOutsideOfNewsSince:(id)a3;
- (void)_addedArticleIDs:(void *)a3 removedArticleIDs:(uint64_t)a4 eventInitiationLevel:;
- (void)addArticleToReadingList:(id)a3 eventInitiationLevel:(int64_t)a4 origin:(unint64_t)a5;
- (void)addObserver:(id)a3;
- (void)clearArticlesFromReadingList;
- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4;
- (void)loadLocalCachesFromStore;
- (void)removeArticleFromReadingList:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation FCReadingList

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
  v3[2] = __41__FCReadingList_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v3];
}

void __41__FCReadingList_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong((v3 + 88), v2);
  }

  v4 = [*(a1 + 32) localStore];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v9 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = *(a1 + 32);
        if (([objc_opt_class() isLocalStoreKeyInternal:v11] & 1) == 0)
        {
          v13 = *(v9 + 3872);
          objc_opt_class();
          v14 = [v4 objectForKey:v11];
          if (v14)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16)
          {
            v17 = [[FCReadingListEntry alloc] initWithEntryID:v11 dictionaryRepresentation:v16];
            if (v17)
            {
              v18 = *(a1 + 32);
              if (v18)
              {
                v18 = v18[11];
              }

              v19 = v18;
              v20 = v17[2];
              [v19 setObject:v17 forKey:v20];

              v9 = 0x1E695D000;
            }
          }

          else
          {
            v21 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              *buf = 138412546;
              v31 = v24;
              v32 = 2114;
              v33 = v11;
              _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "ERROR: Object of type %@ is not dictionary for key %{public}@", buf, 0x16u);

              v9 = 0x1E695D000;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (FCReadingList)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = FCReadingList;
  v10 = [(FCPrivateDataController *)&v17 initWithContext:v9 pushNotificationCenter:a4 storeDirectory:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_cloudContext, a3);
    v12 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v11->_itemsLock;
    v11->_itemsLock = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    entriesByArticleID = v11->_entriesByArticleID;
    v11->_entriesByArticleID = v14;
  }

  return v11;
}

- (BOOL)shouldHideHeadline:(id)a3
{
  v4 = a3;
  if ([v4 isDeleted])
  {
    v5 = [v4 articleID];
    v6 = ![(FCReadingList *)self isArticleOnReadingList:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isArticleOnReadingList:(id)a3
{
  v3 = [(FCReadingList *)&self->super.super.isa _readingListEntryForArticleID:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_readingListEntryForArticleID:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__27;
    v15 = __Block_byref_object_dispose__27;
    v16 = 0;
    if (v3)
    {
      v5 = a1[13];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __47__FCReadingList__readingListEntryForArticleID___block_invoke;
      v8[3] = &unk_1E7C37138;
      v10 = &v11;
      v8[4] = a1;
      v9 = v4;
      [v5 performReadSync:v8];

      v6 = v12[5];
    }

    else
    {
      v6 = 0;
    }

    a1 = v6;
    _Block_object_dispose(&v11, 8);
  }

  return a1;
}

- (void)addArticleToReadingList:(id)a3 eventInitiationLevel:(int64_t)a4 origin:(unint64_t)a5
{
  v38[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v8)
  {
    v9 = [FCReadingListEntry alloc];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rl-%@", v8];
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [(FCReadingListEntry *)&v9->super.isa initWithEntryID:v10 articleID:v8 dateAdded:v11 origin:a5];

    if (v12)
    {
      v38[0] = @"articleID";
      v13 = v12[2];
      *buf = v13;
      v38[1] = @"dateAdded";
      v14 = v12[3];
      *&buf[8] = v14;
      v38[2] = @"origin";
      if (v12[4] - 1 >= 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12[4];
      }

      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
      *&buf[16] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v38 count:3];

      if (self)
      {
        itemsLock = self->_itemsLock;
      }

      else
      {
        itemsLock = 0;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __69__FCReadingList_addArticleToReadingList_eventInitiationLevel_origin___block_invoke;
      v29[3] = &unk_1E7C376A0;
      v29[4] = self;
      v19 = v12;
      v30 = v19;
      v20 = v8;
      v31 = v20;
      [(FCMTWriterLock *)itemsLock performWriteSync:v29];
      v21 = [(FCPrivateDataController *)self localStore];
      v22 = v19[1];
      [v21 setObject:v17 forKey:v22];

      v33 = v20;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      [(FCReadingList *)self _addedArticleIDs:v23 removedArticleIDs:MEMORY[0x1E695E0F0] eventInitiationLevel:a4];

      v24 = [FCModifyReadingListCommand alloc];
      v32 = v19;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v26 = [(FCModifyReadingListCommand *)v24 initWithReadingListEntries:v25 merge:0];

      [(FCPrivateDataController *)self addCommandToCommandQueue:v26];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      *&buf[4] = "[FCReadingList addArticleToReadingList:eventInitiationLevel:origin:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCReadingList.m";
      *&buf[22] = 1024;
      v35 = 95;
      v36 = 2114;
      v37 = v28;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCReadingList addArticleToReadingList:eventInitiationLevel:origin:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCReadingList.m";
    *&buf[22] = 1024;
    v35 = 87;
    v36 = 2114;
    v37 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_13:
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __69__FCReadingList_addArticleToReadingList_eventInitiationLevel_origin___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[11];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

- (void)_addedArticleIDs:(void *)a3 removedArticleIDs:(uint64_t)a4 eventInitiationLevel:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_15;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "addedArticleIDs"];
    *buf = 136315906;
    v24 = "[FCReadingList _addedArticleIDs:removedArticleIDs:eventInitiationLevel:]";
    v25 = 2080;
    v26 = "FCReadingList.m";
    v27 = 1024;
    v28 = 442;
    v29 = 2114;
    v30 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v8)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "removedArticleIDs"];
        *buf = 136315906;
        v24 = "[FCReadingList _addedArticleIDs:removedArticleIDs:eventInitiationLevel:]";
        v25 = 2080;
        v26 = "FCReadingList.m";
        v27 = 1024;
        v28 = 443;
        v29 = 2114;
        v30 = v17;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v8)
  {
    goto LABEL_5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [a1 observers];
  v10 = [v9 copy];

  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v18 + 1) + 8 * v14++) readingList:a1 didAddArticles:v7 removeArticles:v8 eventInitiationLevel:a4];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

LABEL_15:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeArticleFromReadingList:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    if (self)
    {
      entriesByArticleID = self->_entriesByArticleID;
    }

    else
    {
      entriesByArticleID = 0;
    }

    v6 = [(NSMutableDictionary *)entriesByArticleID objectForKey:v4];
    if (v6)
    {
      if (self)
      {
        itemsLock = self->_itemsLock;
      }

      else
      {
        itemsLock = 0;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __46__FCReadingList_removeArticleFromReadingList___block_invoke;
      v15[3] = &unk_1E7C36C58;
      v15[4] = self;
      v8 = v4;
      v16 = v8;
      [(FCMTWriterLock *)itemsLock performWriteSync:v15];
      v9 = v6[1];
      v10 = [(FCPrivateDataController *)self localStore];
      [v10 removeObjectForKey:v9];

      v17 = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      [(FCReadingList *)self _addedArticleIDs:v11 removedArticleIDs:0 eventInitiationLevel:?];

      v12 = [[FCRemoveFromReadingListCommand alloc] initWithEntryID:v9];
      [(FCPrivateDataController *)self addCommandToCommandQueue:v12];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      v19 = "[FCReadingList removeArticleFromReadingList:]";
      v20 = 2080;
      v21 = "FCReadingList.m";
      v22 = 1024;
      v23 = 121;
      v24 = 2114;
      v25 = v14;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v19 = "[FCReadingList removeArticleFromReadingList:]";
    v20 = 2080;
    v21 = "FCReadingList.m";
    v22 = 1024;
    v23 = 117;
    v24 = 2114;
    v25 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_12:
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __46__FCReadingList_removeArticleFromReadingList___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  return [v1 removeObjectForKey:*(a1 + 40)];
}

- (void)clearArticlesFromReadingList
{
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = [(FCReadingList *)&self->super.super.isa _allEntriesInReadingList];
  if ([v3 count])
  {
    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__FCReadingList_clearArticlesFromReadingList__block_invoke;
    v15[3] = &unk_1E7C36EA0;
    v15[4] = self;
    [(FCMTWriterLock *)itemsLock performWriteSync:v15];
    v5 = [MEMORY[0x1E695DF70] array];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__FCReadingList_clearArticlesFromReadingList__block_invoke_2;
    v13[3] = &unk_1E7C3C280;
    v14 = v5;
    v6 = v5;
    [v3 enumerateObjectsUsingBlock:v13];
    v7 = [(FCPrivateDataController *)self localStore];
    [v7 removeObjectsForKeys:v6];

    v8 = [[FCRemoveFromReadingListCommand alloc] initWithEntryIDs:v6];
    [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
    v9 = [MEMORY[0x1E695DF70] array];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__FCReadingList_clearArticlesFromReadingList__block_invoke_3;
    v11[3] = &unk_1E7C3C280;
    v12 = v9;
    v10 = v9;
    [v3 enumerateObjectsUsingBlock:v11];
    [(FCReadingList *)self _addedArticleIDs:v10 removedArticleIDs:0 eventInitiationLevel:?];
  }
}

- (id)_allEntriesInReadingList
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__27;
    v9 = __Block_byref_object_dispose__27;
    v10 = 0;
    v2 = a1[13];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __41__FCReadingList__allEntriesInReadingList__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = v1;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

uint64_t __45__FCReadingList_clearArticlesFromReadingList__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return [v2 removeAllObjects];
}

void __45__FCReadingList_clearArticlesFromReadingList__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 addObject:v4];
}

void __45__FCReadingList_clearArticlesFromReadingList__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 addObject:v4];
}

- (id)dateArticleWasAdded:(id)a3
{
  v3 = [(FCReadingList *)&self->super.super.isa _readingListEntryForArticleID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)allSortedArticleIDsInReadingList
{
  if (self)
  {
    v2 = [(FCReadingList *)&self->super.super.isa _allEntriesInReadingList];
    v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_51_0];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 fc_arrayByTransformingWithBlock:&__block_literal_global_38];

  return v4;
}

uint64_t __49__FCReadingList_allSortedArticleIDsInReadingList__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 16);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)countOfAllArticlesSavedOutsideOfNewsSince:(id)a3
{
  v4 = a3;
  v5 = [(FCReadingList *)&self->super.super.isa _allEntriesInReadingList];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__FCReadingList_countOfAllArticlesSavedOutsideOfNewsSince___block_invoke;
  v9[3] = &unk_1E7C3C2C8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 fc_countOfObjectsPassingTest:v9];

  return v7;
}

uint64_t __59__FCReadingList_countOfAllArticlesSavedOutsideOfNewsSince___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && v3[4])
  {
    v5 = v3[3];
    v6 = [v5 fc_isLaterThan:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allNonConsumedArticleIDs
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(FCReadingList *)&self->super.super.isa _allEntriesInReadingList];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_28];
  v6 = [(FCCloudContext *)self->_cloudContext readingHistory];
  v7 = [v6 allConsumedArticleIDs];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        if (v13)
        {
          v14 = *(v13 + 16);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = [v7 containsObject:{v15, v22}];

        if ((v16 & 1) == 0)
        {
          if (v13)
          {
            v17 = *(v13 + 16);
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          [v3 addObject:v18];
        }

        ++v12;
      }

      while (v10 != v12);
      v19 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v10 = v19;
    }

    while (v19);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __41__FCReadingList_allNonConsumedArticleIDs__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (a3)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    v7 = v4[3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v6 compare:v8];
  return v9;
}

- (id)allNonConsumedArticleIDsIntersectingSet:(id)a3
{
  v4 = a3;
  v5 = [(FCReadingList *)self allNonConsumedArticleIDs];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__FCReadingList_allNonConsumedArticleIDsIntersectingSet___block_invoke;
  v9[3] = &unk_1E7C38B40;
  v10 = v4;
  v6 = v4;
  v7 = [v5 fc_arrayOfObjectsPassingTest:v9];

  return v7;
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCReadingList;
  [(FCPrivateDataController *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCReadingList;
  [(FCPrivateDataController *)&v3 removeObserver:a3];
}

- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = [(FCPrivateDataController *)self localStore];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__FCReadingList_handleSyncWithChangedRecords_deletedRecordNames___block_invoke;
  v17[3] = &unk_1E7C3C310;
  v18 = v6;
  v19 = v8;
  v20 = self;
  v21 = v9;
  v22 = v7;
  v23 = v10;
  v12 = v10;
  v13 = v7;
  v14 = v9;
  v15 = v8;
  v16 = v6;
  [(FCMTWriterLock *)itemsLock performWriteSync:v17];
  [(FCReadingList *)self _addedArticleIDs:v14 removedArticleIDs:v12 eventInitiationLevel:1];
}

void __65__FCReadingList_handleSyncWithChangedRecords_deletedRecordNames___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = *(a1 + 32);
  v41 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
  if (v41)
  {
    v40 = *v47;
    *&v2 = 136315906;
    v38 = v2;
    do
    {
      v3 = 0;
      do
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v46 + 1) + 8 * v3);
        v5 = [v4 recordID];
        v6 = [v5 recordName];

        v7 = [*(a1 + 40) objectForKey:v6];
        v8 = [v4 objectForKeyedSubscript:@"articleID"];
        v9 = [v4 objectForKeyedSubscript:@"dateAdded"];
        v10 = [v4 objectForKeyedSubscript:@"origin"];
        v11 = v10;
        v12 = &unk_1F2E70260;
        if (v10)
        {
          v12 = v10;
        }

        v13 = v12;

        if (v7)
        {
          v14 = [v7 mutableCopy];
          v15 = v14;
          if (v8)
          {
            [v14 setObject:v8 forKeyedSubscript:@"articleID"];
          }

          if (v9)
          {
            [v15 setObject:v9 forKeyedSubscript:@"dateAdded"];
          }

          [v15 setObject:v13 forKeyedSubscript:@"origin"];
          [*(a1 + 40) setObject:v15 forKey:v6];
          if (v8)
          {
            v16 = [[FCReadingListEntry alloc] initWithEntryID:v6 dictionaryRepresentation:v15];
            v17 = *(a1 + 48);
            if (v17)
            {
              v18 = *(v17 + 88);
            }

            else
            {
              v18 = 0;
            }

            [v18 setObject:v16 forKey:v8];
          }

          goto LABEL_17;
        }

        if (v8)
        {
          if (v9)
          {
            v51[0] = @"articleID";
            v51[1] = @"dateAdded";
            v52[0] = v8;
            v52[1] = v9;
            v51[2] = @"origin";
            v52[2] = v13;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
            v20 = [[FCReadingListEntry alloc] initWithEntryID:v6 dictionaryRepresentation:v19];
            v21 = *(a1 + 48);
            if (v21)
            {
              v22 = *(v21 + 88);
            }

            else
            {
              v22 = 0;
            }

            [v22 setObject:v20 forKey:v8];
            [*(a1 + 40) setObject:v19 forKey:v6];
            [*(a1 + 56) addObject:v8];

            goto LABEL_18;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a reading list entry without an article ID"];
            *buf = v38;
            v54 = "[FCReadingList handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke";
            v55 = 2080;
            v56 = "FCReadingList.m";
            v57 = 1024;
            v58 = 284;
            v59 = 2114;
            v60 = v23;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          if (v9)
          {
            goto LABEL_18;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a reading list entry without a date added"];
          *buf = v38;
          v54 = "[FCReadingList handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke";
          v55 = 2080;
          v56 = "FCReadingList.m";
          v57 = 1024;
          v58 = 285;
          v59 = 2114;
          v60 = v15;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_17:
        }

LABEL_18:

        ++v3;
      }

      while (v41 != v3);
      v24 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
      v41 = v24;
    }

    while (v24);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = *(a1 + 64);
  v26 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      v29 = 0;
      do
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v42 + 1) + 8 * v29);
        v31 = [*(a1 + 40) objectForKey:v30];
        v32 = v31;
        if (v31)
        {
          v33 = [v31 objectForKeyedSubscript:@"articleID"];
          v34 = *(a1 + 48);
          if (v34)
          {
            v35 = *(v34 + 88);
          }

          else
          {
            v35 = 0;
          }

          [v35 removeObjectForKey:v33];
          [*(a1 + 40) removeObjectForKey:v30];
          [*(a1 + 72) addObject:v33];
        }

        ++v29;
      }

      while (v27 != v29);
      v36 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
      v27 = v36;
    }

    while (v36);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    entriesByArticleID = self->_entriesByArticleID;
  }

  else
  {
    entriesByArticleID = 0;
  }

  v5 = [(NSMutableDictionary *)entriesByArticleID allValues];
  v6 = [v5 fc_arrayByTransformingWithBlock:&__block_literal_global_43_0];

  return v6;
}

uint64_t __59__FCReadingList_allKnownRecordNamesWithinRecordZoneWithID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

+ (id)backingRecordZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"ReadingList" ownerName:*MEMORY[0x1E695B728]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (([a1 isLocalStoreKeyInternal:v12] & 1) == 0)
        {
          v13 = [v5 objectForKey:v12];
          v14 = [[FCReadingListEntry alloc] initWithEntryID:v12 dictionaryRepresentation:v13];
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [[FCModifyReadingListCommand alloc] initWithReadingListEntries:v6 merge:1];
  v23 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)recordsForRestoringZoneName:(id)a3
{
  v3 = [(FCReadingList *)&self->super.super.isa _allEntriesInReadingList];
  v4 = [v3 fc_arrayByTransformingWithBlock:&__block_literal_global_47];

  return v4;
}

void __47__FCReadingList__readingListEntryForArticleID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __41__FCReadingList__allEntriesInReadingList__block_invoke(uint64_t a1)
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

uint64_t __47__FCReadingList__allSortedEntriesInReadingList__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (a3)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    v7 = v4[3];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v6 compare:v8];
  return v9;
}

@end