@interface FCOfflineIssueList
- (BOOL)containsIssueID:(id)a3;
- (BOOL)everContainedIssueID:(id)a3;
- (FCOfflineIssueList)init;
- (FCOfflineIssueList)initWithStoreDirectoryFileURL:(id)a3 appActivityMonitor:(id)a4 backgroundTaskable:(id)a5;
- (NSArray)issueIDs;
- (NSArray)sortedIssueIDs;
- (id)dateAddedForIssueID:(id)a3;
- (id)dateRemovedForIssueID:(id)a3;
- (int64_t)sourceForIssueID:(id)a3;
- (void)addIssueID:(id)a3 source:(int64_t)a4;
- (void)addObserver:(id)a3;
- (void)removeAllIssues;
- (void)removeIssueIDs:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation FCOfflineIssueList

- (FCOfflineIssueList)init
{
  v3 = FCURLForContainerizedUserAccountDocumentDirectory(1);
  v4 = [(FCOfflineIssueList *)self initWithStoreDirectoryFileURL:v3];

  return v4;
}

- (FCOfflineIssueList)initWithStoreDirectoryFileURL:(id)a3 appActivityMonitor:(id)a4 backgroundTaskable:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storeDirectoryFileURL != nil"];
    *buf = 136315906;
    v24 = "[FCOfflineIssueList initWithStoreDirectoryFileURL:appActivityMonitor:backgroundTaskable:]";
    v25 = 2080;
    v26 = "FCOfflineIssueList.m";
    v27 = 1024;
    v28 = 50;
    v29 = 2114;
    v30 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v22.receiver = self;
  v22.super_class = FCOfflineIssueList;
  v11 = [(FCOfflineIssueList *)&v22 init];
  if (v11)
  {
    v12 = +[FCKeyValueStoreSavePolicy defaultPolicy];
    if (v9 && v10)
    {
      v13 = [FCKeyValueStoreSavePolicy appBackgroundPolicyWithActivityMonitor:v9 backgroundTaskable:v10];

      v12 = v13;
    }

    v14 = [v8 path];
    v15 = [[FCKeyValueStore alloc] initWithName:@"offline-issue-list" directory:v14 version:2 options:8 classRegistry:0 migrator:0 savePolicy:v12];
    localStore = v11->_localStore;
    v11->_localStore = v15;

    v17 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v11->_observers;
    v11->_observers = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)addIssueID:(id)a3 source:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    if (a4 == 2)
    {
      v7 = @"auto";
    }

    else if (a4)
    {
      v7 = @"manual";
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"issues should always be added from a known source"];
        *buf = 136315906;
        v21 = "[FCOfflineIssueList addIssueID:source:]";
        v22 = 2080;
        v23 = "FCOfflineIssueList.m";
        v24 = 1024;
        v25 = 92;
        v26 = 2114;
        v27 = v17;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v7 = @"unknown";
    }

    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v9 = [(FCKeyValueStore *)localStore objectForKey:v6];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = v12;

    [v13 setObject:v6 forKeyedSubscript:@"issueID"];
    [v13 setObject:v7 forKeyedSubscript:@"source"];
    v14 = [MEMORY[0x1E695DF00] date];
    [v13 setObject:v14 forKeyedSubscript:@"dateAdded"];

    if (self)
    {
      v15 = self->_localStore;
    }

    else
    {
      v15 = 0;
    }

    [(FCKeyValueStore *)v15 setObject:v13 forKey:v6];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__FCOfflineIssueList_addIssueID_source___block_invoke_36;
    v18[3] = &unk_1E7C36C58;
    v18[4] = self;
    v19 = v6;
    FCPerformBlockOnMainThread(v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __40__FCOfflineIssueList_addIssueID_source___block_invoke_36(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v18 = *(a1 + 40);
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        [v10 offlineIssueList:v11 didAddIssues:v12 removeIssues:v8];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsIssueID:(id)a3
{
  if (self)
  {
    self = self->_localStore;
  }

  v3 = [(FCOfflineIssueList *)self objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"dateRemoved"];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"dateRemoved"];
      v7 = [v4 objectForKeyedSubscript:@"dateAdded"];
      v8 = [v6 fc_isEarlierThan:v7];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)everContainedIssueID:(id)a3
{
  if (self)
  {
    self = self->_localStore;
  }

  return [(FCOfflineIssueList *)self containsObjectForKey:a3];
}

- (int64_t)sourceForIssueID:(id)a3
{
  if (self)
  {
    self = self->_localStore;
  }

  v3 = [(FCOfflineIssueList *)self objectForKey:a3];
  v4 = [v3 objectForKeyedSubscript:@"source"];
  if ([v4 isEqualToString:@"manual"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"auto"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dateAddedForIssueID:(id)a3
{
  if (self)
  {
    self = self->_localStore;
  }

  v3 = [(FCOfflineIssueList *)self objectForKey:a3];
  v4 = [v3 objectForKeyedSubscript:@"dateAdded"];

  return v4;
}

- (id)dateRemovedForIssueID:(id)a3
{
  if (self)
  {
    self = self->_localStore;
  }

  v3 = [(FCOfflineIssueList *)self objectForKey:a3];
  v4 = [v3 objectForKeyedSubscript:@"dateRemoved"];

  return v4;
}

- (NSArray)issueIDs
{
  if (self)
  {
    self = self->_localStore;
  }

  v2 = [(FCOfflineIssueList *)self keysOfEntriesPassingTest:&__block_literal_global_40_1];
  v3 = [v2 allObjects];

  return v3;
}

uint64_t __30__FCOfflineIssueList_issueIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"dateRemoved"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"dateRemoved"];
    v6 = [v3 objectForKeyedSubscript:@"dateAdded"];
    v7 = [v5 fc_isEarlierThan:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSArray)sortedIssueIDs
{
  if (self)
  {
    self = self->_localStore;
  }

  v2 = [(FCOfflineIssueList *)self allObjects];
  v3 = [v2 fc_arrayOfObjectsPassingTest:&__block_literal_global_43_3];

  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_46_1];
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_49_3];

  return v5;
}

uint64_t __36__FCOfflineIssueList_sortedIssueIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"dateRemoved"];
  if (v3)
  {
    v4 = [v2 objectForKeyedSubscript:@"dateRemoved"];
    v5 = [v2 objectForKeyedSubscript:@"dateAdded"];
    v6 = [v4 fc_isEarlierThan:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __36__FCOfflineIssueList_sortedIssueIDs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 objectForKeyedSubscript:@"dateAdded"];
  v6 = [v4 objectForKeyedSubscript:@"dateAdded"];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)removeIssueIDs:(id)a3
{
  v4 = a3;
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  [(FCKeyValueStore *)localStore updateObjectsForKeys:v4 withBlock:&__block_literal_global_52_0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__FCOfflineIssueList_removeIssueIDs___block_invoke_2;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  FCPerformBlockOnMainThread(v7);
}

id __37__FCOfflineIssueList_removeIssueIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E695DF00] date];
  [v2 setObject:v3 forKeyedSubscript:@"dateRemoved"];

  return v2;
}

void __37__FCOfflineIssueList_removeIssueIDs___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) offlineIssueList:*(a1 + 32) didAddIssues:v8 removeIssues:*(a1 + 40)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeAllIssues
{
  v3 = [(FCOfflineIssueList *)self issueIDs];
  [(FCOfflineIssueList *)self removeIssueIDs:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__FCOfflineIssueList_removeAllIssues__block_invoke;
  v5[3] = &unk_1E7C36C58;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  FCPerformBlockOnMainThread(v5);
}

void __37__FCOfflineIssueList_removeAllIssues__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) offlineIssueList:*(a1 + 32) didAddIssues:v8 removeIssues:*(a1 + 40)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    if (self)
    {
      observers = self->_observers;
    }

    else
    {
      observers = 0;
    }

    if ([(NSHashTable *)observers containsObject:v4]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", v4];
      *buf = 136315906;
      v11 = "[FCOfflineIssueList addObserver:]";
      v12 = 2080;
      v13 = "FCOfflineIssueList.m";
      v14 = 1024;
      v15 = 227;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (self)
      {
        goto LABEL_7;
      }
    }

    else if (self)
    {
LABEL_7:
      v6 = self->_observers;
LABEL_8:
      [(NSHashTable *)v6 addObject:v4];
      goto LABEL_11;
    }

    v6 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v11 = "[FCOfflineIssueList addObserver:]";
    v12 = 2080;
    v13 = "FCOfflineIssueList.m";
    v14 = 1024;
    v15 = 223;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    if (self)
    {
      observers = self->_observers;
    }

    else
    {
      observers = 0;
    }

    [(NSHashTable *)observers removeObject:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v9 = "[FCOfflineIssueList removeObserver:]";
    v10 = 2080;
    v11 = "FCOfflineIssueList.m";
    v12 = 1024;
    v13 = 236;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end