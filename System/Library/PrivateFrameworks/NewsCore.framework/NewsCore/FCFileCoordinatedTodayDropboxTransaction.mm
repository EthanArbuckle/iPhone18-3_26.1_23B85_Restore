@interface FCFileCoordinatedTodayDropboxTransaction
+ (id)collapsedTransactionOfTransactions:(id)a3;
+ (id)transactionOfIdentity;
+ (id)transactionToClearSeenArticles;
+ (id)transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:(id)a3 deletedArticleIDs:(id)a4;
+ (void)_mergeItem:(id)a3 intoItem:(id)a4;
- (FCFileCoordinatedTodayDropboxTransaction)init;
- (FCFileCoordinatedTodayDropboxTransaction)initWithTransactionType:(unint64_t)a3 insertedOrUpdatedHistoryItems:(id)a4 deletedArticleIDs:(id)a5;
- (id)todayPrivateDataAccessor;
- (void)_mergeItem:(id)a3 intoItem:(id)a4;
@end

@implementation FCFileCoordinatedTodayDropboxTransaction

+ (id)transactionOfIdentity
{
  v3 = objc_opt_new();
  v4 = [a1 transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:MEMORY[0x1E695E0F0] deletedArticleIDs:v3];

  return v4;
}

- (FCFileCoordinatedTodayDropboxTransaction)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedTodayDropboxTransaction init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedTodayDropbox.m";
    v12 = 1024;
    v13 = 363;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedTodayDropboxTransaction init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedTodayDropboxTransaction)initWithTransactionType:(unint64_t)a3 insertedOrUpdatedHistoryItems:(id)a4 deletedArticleIDs:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = FCFileCoordinatedTodayDropboxTransaction;
  v10 = [(FCFileCoordinatedTodayDropboxTransaction *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_transactionType = a3;
    v12 = [v8 copy];
    insertedOrUpdatedHistoryItems = v11->_insertedOrUpdatedHistoryItems;
    v11->_insertedOrUpdatedHistoryItems = v12;

    v14 = [v9 copy];
    deletedArticleIDs = v11->_deletedArticleIDs;
    v11->_deletedArticleIDs = v14;
  }

  return v11;
}

+ (id)transactionToClearSeenArticles
{
  v2 = [objc_alloc(objc_opt_class()) initWithTransactionType:1 insertedOrUpdatedHistoryItems:0 deletedArticleIDs:0];

  return v2;
}

+ (id)transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:(id)a3 deletedArticleIDs:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "insertedOrUpdatedHistoryItems"];
    *buf = 136315906;
    v13 = "+[FCFileCoordinatedTodayDropboxTransaction transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:deletedArticleIDs:]";
    v14 = 2080;
    v15 = "FCFileCoordinatedTodayDropbox.m";
    v16 = 1024;
    v17 = 394;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deletedArticleIDs"];
    *buf = 136315906;
    v13 = "+[FCFileCoordinatedTodayDropboxTransaction transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:deletedArticleIDs:]";
    v14 = 2080;
    v15 = "FCFileCoordinatedTodayDropbox.m";
    v16 = 1024;
    v17 = 395;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v7 = [objc_alloc(objc_opt_class()) initWithTransactionType:0 insertedOrUpdatedHistoryItems:v5 deletedArticleIDs:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)collapsedTransactionOfTransactions:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v56 = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v49 = v3;
  obj = [v3 copy];
  v5 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v66;
    v50 = *v66;
    do
    {
      v9 = 0;
      v51 = v6;
      do
      {
        if (*v66 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v65 + 1) + 8 * v9);
        v11 = [v10 transactionType];
        v12 = v11;
        if (v11)
        {
          if (v11 == 1)
          {
            [v56 removeAllObjects];
            [v7 removeAllObjects];
            [v4 removeAllObjects];
          }
        }

        else
        {
          v53 = v9;
          v13 = [v10 deletedArticleIDs];
          v14 = [v13 count];

          if (v14)
          {
            v15 = [v10 deletedArticleIDs];
            v16 = v15;
            if (v7)
            {
              [v7 unionSet:v15];

              v17 = [v10 deletedArticleIDs];
              [v56 minusSet:v17];

              v16 = [v10 deletedArticleIDs];
              v18 = [v16 allObjects];
              [v4 removeObjectsForKeys:v18];
            }

            else
            {
              v7 = [v15 mutableCopy];
            }
          }

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v19 = [v10 insertedOrUpdatedHistoryItems];
          v20 = [v19 countByEnumeratingWithState:&v61 objects:v78 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v62;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v62 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v61 + 1) + 8 * i);
                v25 = [v24 articleID];
                if (v25)
                {
                  [v7 removeObject:v25];
                  [v56 addObject:v25];
                  v26 = [v4 objectForKeyedSubscript:v25];
                  if (v26)
                  {
                    FCCheckedProtocolCast(&unk_1F2ECDE28, v26);
                    v27 = v4;
                    v29 = v28 = v7;
                    [a1 _mergeItem:v24 intoItem:v29];

                    v7 = v28;
                    v4 = v27;
                  }

                  else
                  {
                    [v4 setObject:v24 forKeyedSubscript:v25];
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v61 objects:v78 count:16];
            }

            while (v21);
          }

          v9 = v53;
          v12 = 0;
          v8 = v50;
          v6 = v51;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
    }

    while (v6);
    v54 = v12;
  }

  else
  {
    v7 = 0;
    v54 = 1;
  }

  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v56, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v31 = v56;
  v32 = [v31 countByEnumeratingWithState:&v57 objects:v77 count:16];
  v33 = v7;
  if (v32)
  {
    v34 = v32;
    v35 = *v58;
    v36 = MEMORY[0x1E69E9C10];
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v38 = [v4 objectForKeyedSubscript:*(*(&v57 + 1) + 8 * j)];
        if (v38)
        {
          [v30 addObject:v38];
        }

        else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "existingItem"];
          *buf = 136315906;
          v70 = "+[FCFileCoordinatedTodayDropboxTransaction collapsedTransactionOfTransactions:]";
          v71 = 2080;
          v72 = "FCFileCoordinatedTodayDropbox.m";
          v73 = 1024;
          v74 = 497;
          v75 = 2114;
          v76 = v39;
          _os_log_error_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          v7 = v33;
        }
      }

      v34 = [v31 countByEnumeratingWithState:&v57 objects:v77 count:16];
    }

    while (v34);
  }

  v40 = [v7 copy];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = [MEMORY[0x1E695DFD8] set];
  }

  v43 = v42;

  v44 = [FCFileCoordinatedTodayDropboxTransaction alloc];
  v45 = [v30 copy];
  v46 = [(FCFileCoordinatedTodayDropboxTransaction *)v44 initWithTransactionType:v54 insertedOrUpdatedHistoryItems:v45 deletedArticleIDs:v43];

  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

- (id)todayPrivateDataAccessor
{
  v3 = [(FCFileCoordinatedTodayDropboxTransaction *)self transactionType];
  if (v3 == 1)
  {
    v10 = &__block_literal_global_367;
  }

  else if (v3)
  {
    v10 = 0;
  }

  else
  {
    v4 = [(FCFileCoordinatedTodayDropboxTransaction *)self insertedOrUpdatedHistoryItems];
    v5 = [v4 copy];

    v6 = [(FCFileCoordinatedTodayDropboxTransaction *)self deletedArticleIDs];
    v7 = [v6 copy];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__FCFileCoordinatedTodayDropboxTransaction_todayPrivateDataAccessor__block_invoke;
    aBlock[3] = &unk_1E7C38DF8;
    v14 = v5;
    v15 = self;
    v16 = v7;
    v8 = v7;
    v9 = v5;
    v10 = _Block_copy(aBlock);
  }

  v11 = _Block_copy(v10);

  return v11;
}

void __68__FCFileCoordinatedTodayDropboxTransaction_todayPrivateDataAccessor__block_invoke(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DF70];
  v27 = v3;
  v5 = [v3 recentlySeenHistoryItems];
  v6 = [v4 arrayWithArray:v5];

  v7 = [a1[4] fc_setByTransformingWithBlock:&__block_literal_global_13];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__FCFileCoordinatedTodayDropboxTransaction_todayPrivateDataAccessor__block_invoke_3;
  v32[3] = &unk_1E7C37500;
  v25 = v7;
  v33 = v25;
  v10 = v8;
  v34 = v10;
  v11 = v9;
  v35 = v11;
  [v6 enumerateObjectsUsingBlock:v32];
  v26 = v6;
  v24 = v11;
  [v6 removeObjectsAtIndexes:v11];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = a1[4];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 articleID];
        v19 = [v10 objectForKeyedSubscript:v18];

        if (v19)
        {
          v20 = FCCheckedProtocolCast(&unk_1F2ECDE28, v17);
          [a1[5] _mergeItem:v19 intoItem:v20];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  [v26 addObjectsFromArray:a1[4]];
  v21 = [a1[6] allObjects];
  v22 = [v26 fc_arrayByRemovingObjectsInArray:v21];

  if ([v26 count] >= 0x65)
  {
    [v26 removeObjectsInRange:{0, objc_msgSend(v26, "count") - 100}];
  }

  [v27 setRecentlySeenHistoryItems:v26];

  v23 = *MEMORY[0x1E69E9840];
}

void __68__FCFileCoordinatedTodayDropboxTransaction_todayPrivateDataAccessor__block_invoke_3(id *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [v6 articleID];
  if ([a1[4] containsObject:v5])
  {
    [a1[5] setObject:v6 forKeyedSubscript:v5];
    [a1[6] addIndex:a3];
  }
}

- (void)_mergeItem:(id)a3 intoItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  [objc_opt_class() _mergeItem:v6 intoItem:v5];
}

+ (void)_mergeItem:(id)a3 intoItem:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "rightItem"];
    *buf = 136315906;
    v13 = "+[FCFileCoordinatedTodayDropboxTransaction _mergeItem:intoItem:]";
    v14 = 2080;
    v15 = "FCFileCoordinatedTodayDropbox.m";
    v16 = 1024;
    v17 = 600;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "leftItem"];
    *buf = 136315906;
    v13 = "+[FCFileCoordinatedTodayDropboxTransaction _mergeItem:intoItem:]";
    v14 = 2080;
    v15 = "FCFileCoordinatedTodayDropbox.m";
    v16 = 1024;
    v17 = 601;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v7 = FCCheckedProtocolCast(&unk_1F2ECDE28, v6);
  v8 = FCCheckedProtocolCast(&unk_1F2ECDCD8, v5);
  FCMergeHistoryItemSeenFields(v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

@end