@interface FCGlobalCuratedESLArticlesOperation
- (FCGlobalCuratedESLArticlesOperation)init;
- (FCGlobalCuratedESLArticlesOperation)initWithContext:(id)a3 configuration:(id)a4 contentVariantProvider:(id)a5;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCGlobalCuratedESLArticlesOperation

- (FCGlobalCuratedESLArticlesOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCGlobalCuratedESLArticlesOperation init]";
    v10 = 2080;
    v11 = "FCGlobalCuratedESLArticlesOperation.m";
    v12 = 1024;
    v13 = 45;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCGlobalCuratedESLArticlesOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCGlobalCuratedESLArticlesOperation)initWithContext:(id)a3 configuration:(id)a4 contentVariantProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = FCGlobalCuratedESLArticlesOperation;
  v12 = [(FCOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_configuration, a4);
    objc_storeStrong(&v13->_contentVariantProvider, a5);
    v14 = [MEMORY[0x1E695DEC8] array];
    networkEvents = v13->_networkEvents;
    v13->_networkEvents = v14;
  }

  return v13;
}

- (void)prepareOperation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__FCGlobalCuratedESLArticlesOperation_prepareOperation__block_invoke;
  v4[3] = &unk_1E7C3B578;
  v4[4] = self;
  v3 = __55__FCGlobalCuratedESLArticlesOperation_prepareOperation__block_invoke(v4);
  if (self)
  {
    objc_storeStrong(&self->_evergreenArticleListIDs, v3);
  }
}

id __55__FCGlobalCuratedESLArticlesOperation_prepareOperation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 408);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 preferredContentVariant];
  if (v4 == 1)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 400);
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 400);
      }

      else
      {
        v12 = 0;
      }

      v4 = [v12 paidGlobalESLArticleListIDs];
      goto LABEL_18;
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_18;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 400);
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        v8 = *(v7 + 400);
      }

      else
      {
        v8 = 0;
      }

      v4 = [v8 freeGlobalESLArticleListIDs];
      goto LABEL_18;
    }
  }

  v4 = 0;
LABEL_18:

  return v4;
}

- (void)performOperation
{
  v2 = self;
  v29 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_evergreenArticleListIDs;
  }

  if ([(FCGlobalCuratedESLArticlesOperation *)self count])
  {
    v3 = FCOperationLog;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(FCOperation *)v2 shortOperationDescription];
      v5 = v4;
      if (v2)
      {
        evergreenArticleListIDs = v2->_evergreenArticleListIDs;
      }

      else
      {
        evergreenArticleListIDs = 0;
      }

      *buf = 138543618;
      v26 = v4;
      v27 = 2114;
      v28 = evergreenArticleListIDs;
      _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch from article list IDs: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc_init(FCCKBatchedMultiFetchQueryOperation);
    if (v2)
    {
      context = v2->_context;
    }

    else
    {
      context = 0;
    }

    v9 = [(FCContentContext *)context internalContentContext];
    v10 = [v9 contentDatabase];
    [(FCCKBatchedMultiFetchQueryOperation *)v7 setDatabase:v10];

    v12 = +[FCEdgeCacheHint edgeCacheHintForEvergreenArticles];
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v11, v12, 424);
    }

    if (v2)
    {
      v13 = v2->_evergreenArticleListIDs;
    }

    else
    {
      v13 = 0;
    }

    [(FCCKBatchedMultiFetchQueryOperation *)v7 setRecordIDs:v13];
    if (v7)
    {
      v7->_maxBatchSize = 1;
      IsMemoryConstrained = FCProcessIsMemoryConstrained();
      v15 = 1;
      if (!IsMemoryConstrained)
      {
        v15 = -1;
      }

      v7->_maxParallelBatches = v15;
      v7->_optimizationPolicy = FCProcessIsMemoryConstrained();
    }

    else
    {
      FCProcessIsMemoryConstrained();
      FCProcessIsMemoryConstrained();
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke_18;
    v23[3] = &unk_1E7C36D40;
    v23[4] = v2;
    v16 = [MEMORY[0x1E695DEC8] fc_array:v23];
    [(FCCKBatchedMultiFetchQueryOperation *)v7 setRecordSpecs:v16];

    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke_2;
    newValue[3] = &unk_1E7C36D68;
    newValue[4] = v2;
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v17, newValue, 448);
    }

    objc_initWeak(buf, v7);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke_4;
    v20[3] = &unk_1E7C406A0;
    v20[4] = v2;
    objc_copyWeak(&v21, buf);
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v18, v20, 464);
    }

    [(FCOperation *)v2 associateChildOperation:v7];
    [(FCOperation *)v7 start];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke;
    v24[3] = &unk_1E7C36EA0;
    v24[4] = v2;
    __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke(v24);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will end early because there are no article list IDs", &v8, 0xCu);
  }

  result = [*(a1 + 32) finishedPerformingOperationWithError:0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke_18(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, @"ArticleList", 16);
    objc_setProperty_nonatomic_copy(v6, v7, MEMORY[0x1E695E0F0], 24);
  }

  v23[0] = @"articleIDs";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v8, v9, 32);
  }

  [v3 addObject:v6];
  v10 = objc_opt_new();
  v12 = v10;
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v11, @"Article", 16);
  }

  v13 = MEMORY[0x1E69B6E30];
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 392);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 internalContentContext];
  v17 = [v16 articleRecordSource];
  v18 = [v13 keysForArticleRecordWithRecordSource:v17];
  v20 = v18;
  if (v12)
  {
    objc_setProperty_nonatomic_copy(v12, v19, v18, 24);

    objc_setProperty_nonatomic_copy(v12, v21, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v12];

  v22 = *MEMORY[0x1E69E9840];
}

void __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E69B6E30];
  v7 = [v20 recordType];
  LODWORD(v6) = [v6 canCreateFromCKRecordType:v7];

  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = [v5 fc_onlyObject];
    if (v8)
    {
      v10 = MEMORY[0x1E69B6E30];
      v11 = *(v8 + 392);
      v12 = v9;
      v13 = v20;
      v14 = [v11 contentStoreFrontID];
      v15 = [*(v8 + 392) internalContentContext];
      v16 = [v15 articleRecordSource];
      v17 = [v10 feedItemFromCKRecord:v13 storefrontID:v14 recordSource:v16];

      [v17 markAsEvergreen];
      [v17 addSurfacedByArticleListID:v12];
    }

    else
    {
      v17 = 0;
    }

    v18 = [*(a1 + 32) feedItemHandler];

    if (v18)
    {
      v19 = [*(a1 + 32) feedItemHandler];
      (v19)[2](v19, v17);
    }
  }
}

void __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = *(a1 + 32);
    v11 = v4;
    [v10 finishedPerformingOperationWithError:{v11, v9, 3221225472, __55__FCGlobalCuratedESLArticlesOperation_performOperation__block_invoke_5, &unk_1E7C36C58, v10}];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [(FCCKBatchedMultiFetchQueryOperation *)WeakRetained networkEvents];
    v8 = *(a1 + 32);
    if (v8)
    {
      objc_storeStrong((v8 + 384), v7);
    }

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  v6 = a3;
  v4 = [(FCGlobalCuratedESLArticlesOperation *)self completionHandler];

  if (v4)
  {
    v5 = [(FCGlobalCuratedESLArticlesOperation *)self completionHandler];
    (v5)[2](v5, v6);
  }
}

@end