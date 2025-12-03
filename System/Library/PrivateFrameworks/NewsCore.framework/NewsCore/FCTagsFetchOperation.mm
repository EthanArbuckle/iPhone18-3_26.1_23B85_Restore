@interface FCTagsFetchOperation
- (FCTagsFetchOperation)initWithTagIDs:(id)ds tagRecordSource:(id)source assetManager:(id)manager configuration:(id)configuration delegate:(id)delegate;
- (id)completeFetchOperation;
- (id)fetchChildTagRecordsWithCompletion:(id)completion;
- (id)fetchParentTagRecordsWithCompletion:(id)completion;
- (id)fetchTagRecordsWithCompletion:(id)completion;
- (void)customizeChildOperation:(id)operation forFetchStep:(SEL)step;
@end

@implementation FCTagsFetchOperation

- (id)completeFetchOperation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self)
  {
    heldTagRecords = self->_heldTagRecords;
  }

  else
  {
    heldTagRecords = 0;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__FCTagsFetchOperation_completeFetchOperation__block_invoke;
  v22[3] = &unk_1E7C37B48;
  v22[4] = self;
  v5 = dictionary;
  v23 = v5;
  [(FCHeldRecords *)heldTagRecords enumerateRecordsAndInterestTokensWithBlock:v22];
  if (self)
  {
    heldParentTagRecords = self->_heldParentTagRecords;
  }

  else
  {
    heldParentTagRecords = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__FCTagsFetchOperation_completeFetchOperation__block_invoke_2;
  v20[3] = &unk_1E7C37B48;
  v20[4] = self;
  v7 = v5;
  v21 = v7;
  [(FCHeldRecords *)heldParentTagRecords enumerateRecordsAndInterestTokensWithBlock:v20];
  if (self)
  {
    heldChildTagRecords = self->_heldChildTagRecords;
  }

  else
  {
    heldChildTagRecords = 0;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __46__FCTagsFetchOperation_completeFetchOperation__block_invoke_3;
  v17 = &unk_1E7C37B48;
  selfCopy = self;
  v9 = v7;
  v19 = v9;
  [(FCHeldRecords *)heldChildTagRecords enumerateRecordsAndInterestTokensWithBlock:&v14];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      allValues = [v9 allValues];
      [WeakRetained tagsFetchOperation:self didFetchTags:allValues];
    }
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = v9;

  return v9;
}

void __46__FCTagsFetchOperation_completeFetchOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [FCTag alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[65];
  }

  v8 = v7;
  v9 = [v16 base];
  v10 = [v9 identifier];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[66];
  }

  v12 = v11;
  v13 = [(FCTag *)v6 initWithTagRecord:v16 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, v12)];

  v14 = *(a1 + 40);
  v15 = [(FCTag *)v13 identifier];
  [v14 setObject:v13 forKey:v15];
}

- (FCTagsFetchOperation)initWithTagIDs:(id)ds tagRecordSource:(id)source assetManager:(id)manager configuration:(id)configuration delegate:(id)delegate
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  sourceCopy = source;
  managerCopy = manager;
  configurationCopy = configuration;
  delegateCopy = delegate;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs"];
    *buf = 136315906;
    v29 = "[FCTagsFetchOperation initWithTagIDs:tagRecordSource:assetManager:configuration:delegate:]";
    v30 = 2080;
    v31 = "FCTagsFetchOperation.m";
    v32 = 1024;
    v33 = 45;
    v34 = 2114;
    v35 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v29 = "[FCTagsFetchOperation initWithTagIDs:tagRecordSource:assetManager:configuration:delegate:]";
    v30 = 2080;
    v31 = "FCTagsFetchOperation.m";
    v32 = 1024;
    v33 = 46;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!sourceCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagRecordSource"];
    *buf = 136315906;
    v29 = "[FCTagsFetchOperation initWithTagIDs:tagRecordSource:assetManager:configuration:delegate:]";
    v30 = 2080;
    v31 = "FCTagsFetchOperation.m";
    v32 = 1024;
    v33 = 47;
    v34 = 2114;
    v35 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v27.receiver = self;
  v27.super_class = FCTagsFetchOperation;
  v17 = [(FCMultiStepFetchOperation *)&v27 init];
  if (v17)
  {
    v18 = [dsCopy copy];
    tagIDs = v17->_tagIDs;
    v17->_tagIDs = v18;

    objc_storeStrong(&v17->_assetManager, manager);
    objc_storeStrong(&v17->_tagRecordSource, source);
    objc_storeWeak(&v17->_delegate, delegateCopy);
    v20 = [configurationCopy copy];
    configuration = v17->_configuration;
    v17->_configuration = v20;

    [(FCMultiStepFetchOperation *)v17 addFetchStep:sel_fetchTagRecordsWithCompletion_];
    [(FCMultiStepFetchOperation *)v17 addFetchStep:sel_fetchParentTagRecordsWithCompletion_];
    [(FCMultiStepFetchOperation *)v17 addFetchStep:sel_fetchChildTagRecordsWithCompletion_];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)customizeChildOperation:(id)operation forFetchStep:(SEL)step
{
  operationCopy = operation;
  v7.receiver = self;
  v7.super_class = FCTagsFetchOperation;
  [(FCMultiStepFetchOperation *)&v7 customizeChildOperation:operationCopy forFetchStep:step];
  if (sel_fetchTagRecordsWithCompletion_ == step && [(FCTagsFetchOperation *)self overrideTargetsCachePolicy])
  {
    [operationCopy setCachePolicy:{-[FCTagsFetchOperation targetsCachePolicy](self, "targetsCachePolicy")}];
    [(FCTagsFetchOperation *)self targetsMaximumCachedAge];
LABEL_7:
    [operationCopy setMaximumCachedAge:?];
    goto LABEL_8;
  }

  if (sel_fetchChildTagRecordsWithCompletion_ == step && [(FCTagsFetchOperation *)self overrideChildrenCachePolicy])
  {
    [operationCopy setCachePolicy:{-[FCTagsFetchOperation childrenCachePolicy](self, "childrenCachePolicy")}];
    [(FCTagsFetchOperation *)self childrenMaximumCachedAge];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)fetchTagRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    v5 = self->_tagRecordSource;
    tagIDs = self->_tagIDs;
  }

  else
  {
    v5 = 0;
    tagIDs = 0;
  }

  v7 = [(FCRecordSource *)v5 fetchOperationForRecordsWithIDs:tagIDs];

  [v7 setCachePolicy:{-[FCFetchOperation cachePolicy](self, "cachePolicy")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__FCTagsFetchOperation_fetchTagRecordsWithCompletion___block_invoke;
  v10[3] = &unk_1E7C37B98;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  [v7 setFetchCompletionBlock:v10];

  return v7;
}

void __54__FCTagsFetchOperation_fetchTagRecordsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 fetchedObject];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 488), v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchParentTagRecordsWithCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  if ([(FCTagsFetchOperation *)self includeParents])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    if (self)
    {
      heldTagRecords = self->_heldTagRecords;
    }

    else
    {
      heldTagRecords = 0;
    }

    allRecords = [(FCHeldRecords *)heldTagRecords allRecords];
    v8 = [allRecords countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(allRecords);
          }

          parentID = [*(*(&v20 + 1) + 8 * i) parentID];
          if (parentID)
          {
            [array addObject:parentID];
          }
        }

        v9 = [allRecords countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  if ([array count])
  {
    if (self)
    {
      tagRecordSource = self->_tagRecordSource;
    }

    else
    {
      tagRecordSource = 0;
    }

    v14 = [(FCRecordSource *)tagRecordSource fetchOperationForRecordsWithIDs:array];
    [v14 setCachePolicy:{-[FCFetchOperation cachePolicy](self, "cachePolicy")}];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__FCTagsFetchOperation_fetchParentTagRecordsWithCompletion___block_invoke;
    v18[3] = &unk_1E7C37B98;
    v18[4] = self;
    v19 = completionCopy;
    [v14 setFetchCompletionBlock:v18];
    v15 = v14;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __60__FCTagsFetchOperation_fetchParentTagRecordsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 fetchedObject];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 496), v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchChildTagRecordsWithCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  if ([(FCTagsFetchOperation *)self includeChildren])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    if (self)
    {
      heldTagRecords = self->_heldTagRecords;
    }

    else
    {
      heldTagRecords = 0;
    }

    allRecords = [(FCHeldRecords *)heldTagRecords allRecords];
    v8 = [allRecords countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(allRecords);
          }

          channelSectionIDs = [*(*(&v20 + 1) + 8 * i) channelSectionIDs];
          [array addObjectsFromArray:channelSectionIDs];
        }

        v9 = [allRecords countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  if ([array count])
  {
    if (self)
    {
      tagRecordSource = self->_tagRecordSource;
    }

    else
    {
      tagRecordSource = 0;
    }

    v14 = [(FCRecordSource *)tagRecordSource fetchOperationForRecordsWithIDs:array];
    [v14 setCachePolicy:{-[FCFetchOperation cachePolicy](self, "cachePolicy")}];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__FCTagsFetchOperation_fetchChildTagRecordsWithCompletion___block_invoke;
    v18[3] = &unk_1E7C37B98;
    v18[4] = self;
    v19 = completionCopy;
    [v14 setFetchCompletionBlock:v18];
    v15 = v14;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __59__FCTagsFetchOperation_fetchChildTagRecordsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 fetchedObject];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 504), v3);
  }

  (*(*(a1 + 40) + 16))();
}

void __46__FCTagsFetchOperation_completeFetchOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [FCTag alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[65];
  }

  v8 = v7;
  v9 = [v16 base];
  v10 = [v9 identifier];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[66];
  }

  v12 = v11;
  v13 = [(FCTag *)v6 initWithTagRecord:v16 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, v12)];

  v14 = *(a1 + 40);
  v15 = [(FCTag *)v13 identifier];
  [v14 setObject:v13 forKey:v15];
}

void __46__FCTagsFetchOperation_completeFetchOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [FCTag alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[65];
  }

  v8 = v7;
  v9 = [v16 base];
  v10 = [v9 identifier];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[66];
  }

  v12 = v11;
  v13 = [(FCTag *)v6 initWithTagRecord:v16 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, v12)];

  v14 = *(a1 + 40);
  v15 = [(FCTag *)v13 identifier];
  [v14 setObject:v13 forKey:v15];
}

@end