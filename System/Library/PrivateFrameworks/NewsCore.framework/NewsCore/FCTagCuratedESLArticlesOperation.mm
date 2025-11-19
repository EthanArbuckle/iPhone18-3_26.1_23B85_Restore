@interface FCTagCuratedESLArticlesOperation
- (FCTagCuratedESLArticlesOperation)init;
- (FCTagCuratedESLArticlesOperation)initWithTags:(id)a3 context:(id)a4 configuration:(id)a5 bundleSubscriptionManager:(id)a6;
- (id)_feedItemFromArticleRecord:(void *)a3 articleListIDsByArticleID:;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCTagCuratedESLArticlesOperation

- (FCTagCuratedESLArticlesOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTagCuratedESLArticlesOperation init]";
    v10 = 2080;
    v11 = "FCTagCuratedESLArticlesOperation.m";
    v12 = 1024;
    v13 = 49;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTagCuratedESLArticlesOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTagCuratedESLArticlesOperation)initWithTags:(id)a3 context:(id)a4 configuration:(id)a5 bundleSubscriptionManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = FCTagCuratedESLArticlesOperation;
  v14 = [(FCOperation *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    tags = v14->_tags;
    v14->_tags = v15;

    objc_storeStrong(&v14->_context, a4);
    objc_storeStrong(&v14->_configuration, a5);
    objc_storeStrong(&v14->_bundleSubscriptionManager, a6);
    v17 = [MEMORY[0x1E695DEC8] array];
    networkEvents = v14->_networkEvents;
    v14->_networkEvents = v17;
  }

  return v14;
}

- (void)prepareOperation
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__FCTagCuratedESLArticlesOperation_prepareOperation__block_invoke;
  v10[3] = &unk_1E7C371A8;
  v10[4] = self;
  v3 = __52__FCTagCuratedESLArticlesOperation_prepareOperation__block_invoke(v10);
  if ([v3 length])
  {
    if (self)
    {
      tags = self->_tags;
    }

    else
    {
      tags = 0;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__FCTagCuratedESLArticlesOperation_prepareOperation__block_invoke_16;
    v7[3] = &unk_1E7C39958;
    v8 = v3;
    v5 = tags;
    v6 = [(NSArray *)v5 fc_arrayByTransformingWithBlock:v7];
    if (self)
    {
      objc_storeStrong(&self->_evergreenArticleListIDs, v6);
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__FCTagCuratedESLArticlesOperation_prepareOperation__block_invoke_4;
    v9[3] = &unk_1E7C36EA0;
    v9[4] = self;
    __52__FCTagCuratedESLArticlesOperation_prepareOperation__block_invoke_4(v9);
  }
}

id __52__FCTagCuratedESLArticlesOperation_prepareOperation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[52];
  }

  v3 = v2;
  v4 = [v3 cachedSubscription];
  v5 = objc_getAssociatedObject(v4, (v4 + 1));
  v6 = [v5 unsignedIntegerValue];
  v7 = v6;
  v8 = objc_getAssociatedObject(v4, ~v6);
  v9 = [v8 unsignedIntegerValue] ^ v7;

  v10 = *(a1 + 32);
  if (v9)
  {
    if (v10)
    {
      v15 = *(v10 + 408);
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v17 = *(v16 + 408);
      }

      else
      {
        v17 = 0;
      }

      v14 = [v17 paidTagESLArticleListIDPrefix];
      goto LABEL_17;
    }
  }

  else
  {
    if (v10)
    {
      v11 = *(v10 + 408);
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 408);
      }

      else
      {
        v13 = 0;
      }

      v14 = [v13 freeTagESLArticleListIDPrefix];
      goto LABEL_17;
    }
  }

  v14 = 0;
LABEL_17:

  return v14;
}

void __52__FCTagCuratedESLArticlesOperation_prepareOperation__block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ found no prefix for per-tag ESL article lists", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __52__FCTagCuratedESLArticlesOperation_prepareOperation__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasEvergreenArticleList])
  {
    v4 = *(a1 + 32);
    v5 = [v3 identifier];
    v6 = [v4 stringByAppendingString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performOperation
{
  v46 = *MEMORY[0x1E69E9840];
  if (FCProcessIsMemoryConstrained())
  {
    if (self)
    {
      v3 = objc_alloc_init(FCCKContentBatchedFetchRecordsOperation);
      v4 = [(FCContentContext *)self->_context internalContentContext];
      v5 = [v4 contentDatabase];
      [(FCCKContentBatchedFetchRecordsOperation *)v3 setDatabase:v5];

      v7 = [(NSArray *)self->_evergreenArticleListIDs fc_arrayByTransformingWithBlock:&__block_literal_global_40];
      if (v3)
      {
        objc_setProperty_nonatomic_copy(v3, v6, v7, 376);
      }

      v44[0] = @"articleIDs";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
      if (v3)
      {
        objc_setProperty_nonatomic_copy(v3, v8, v9, 384);
      }

      v10 = objc_opt_new();
      v11 = objc_opt_new();
      newValue = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_2;
      v35 = &unk_1E7C38B88;
      v12 = v11;
      v36 = v12;
      v14 = v10;
      v37 = v14;
      if (v3)
      {
        objc_setProperty_nonatomic_copy(v3, v13, &newValue, 416);
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_6;
      v40 = &unk_1E7C36E78;
      v41 = self;
      v42 = v14;
      v43[0] = v12;
      v15 = v12;
      v17 = v14;
      if (v3)
      {
        objc_setProperty_nonatomic_copy(v3, v16, buf, 424);
      }

      [(FCOperation *)self associateChildOperation:v3];
      [(FCOperation *)v3 start];
    }
  }

  else if (self)
  {
    if ([(NSArray *)self->_evergreenArticleListIDs count])
    {
      v18 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [(FCOperation *)self shortOperationDescription];
        evergreenArticleListIDs = self->_evergreenArticleListIDs;
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2114;
        *&buf[14] = evergreenArticleListIDs;
        _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch from article list IDs: %{public}@", buf, 0x16u);
      }

      v22 = objc_alloc_init(FCCKBatchedMultiFetchQueryOperation);
      v23 = [(FCContentContext *)self->_context internalContentContext];
      v24 = [v23 contentDatabase];
      [(FCCKBatchedMultiFetchQueryOperation *)v22 setDatabase:v24];

      [(FCCKBatchedMultiFetchQueryOperation *)v22 setRecordIDs:?];
      newValue = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_22;
      v35 = &unk_1E7C36D40;
      v36 = self;
      v25 = [MEMORY[0x1E695DEC8] fc_array:&newValue];
      [(FCCKBatchedMultiFetchQueryOperation *)v22 setRecordSpecs:v25];

      v26 = objc_opt_new();
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_2;
      v44[3] = &unk_1E7C36D68;
      v28 = v26;
      v45 = v28;
      if (v22)
      {
        objc_setProperty_nonatomic_copy(v22, v27, v44, 448);
      }

      objc_initWeak(&location, v22);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_3;
      v40 = &unk_1E7C399A8;
      v41 = self;
      v29 = v28;
      v42 = v29;
      objc_copyWeak(v43, &location);
      if (v22)
      {
        objc_setProperty_nonatomic_copy(v22, v30, buf, 464);
      }

      [(FCOperation *)self associateChildOperation:v22];
      [(FCOperation *)v22 start];
      objc_destroyWeak(v43);

      objc_destroyWeak(&location);
    }

    else
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke;
      v40 = &unk_1E7C36EA0;
      v41 = self;
      __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke(buf);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)a3
{
  v6 = a3;
  v4 = [(FCTagCuratedESLArticlesOperation *)self completionHandler];

  if (v4)
  {
    v5 = [(FCTagCuratedESLArticlesOperation *)self completionHandler];
    (v5)[2](v5, v6);
  }
}

uint64_t __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke(uint64_t a1)
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

void __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_22(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, @"ArticleList", 16);
  }

  v25[0] = @"articleIDs";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v7, v8, 24);
  }

  v24 = @"articleIDs";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v9, v10, 32);
  }

  [v3 addObject:v6];
  v11 = objc_opt_new();
  v13 = v11;
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v12, @"Article", 16);
  }

  v14 = MEMORY[0x1E69B6E30];
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 400);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 internalContentContext];
  v18 = [v17 articleRecordSource];
  v19 = [v14 keysForArticleRecordWithRecordSource:v18];
  v21 = v19;
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v20, v19, 24);

    objc_setProperty_nonatomic_copy(v13, v22, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v13];

  v23 = *MEMORY[0x1E69E9840];
}

void __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_3(id *a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_4;
    v40 = &unk_1E7C36C58;
    v41 = a1[4];
    v42 = v4;
    [v41 finishedPerformingOperationWithError:v42];
  }

  else
  {
    v6 = [a1[5] readOnlyArray];
    v7 = [v6 fc_arrayOfObjectsPassingTest:&__block_literal_global_30_0];
    v8 = MEMORY[0x1E695DF20];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_6;
    v35[3] = &unk_1E7C36EC8;
    v9 = v7;
    v36 = v9;
    v10 = [v8 fc_dictionary:v35];
    v11 = [v6 fc_arrayOfObjectsPassingTest:&__block_literal_global_34];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_8;
    v33[3] = &unk_1E7C39980;
    v33[4] = a1[4];
    v12 = v10;
    v34 = v12;
    v13 = [v11 fc_arrayByTransformingWithBlock:v33];
    v14 = [a1[4] feedItemHandler];

    if (v14)
    {
      v26 = v11;
      v27 = v9;
      v28 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v43 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [a1[4] feedItemHandler];
            v21[2](v21, v20);
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v43 count:16];
        }

        while (v17);
      }

      v9 = v27;
      v6 = v28;
      v11 = v26;
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v23 = [(FCCKBatchedMultiFetchQueryOperation *)WeakRetained networkEvents];
    v24 = a1[4];
    if (v24)
    {
      objc_storeStrong(v24 + 48, v23);
    }

    [a1[4] finishedPerformingOperationWithError:0];
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"ArticleList"];

  return v3;
}

void __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_6(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 recordID];
        v10 = [v9 recordName];

        objc_opt_class();
        v11 = [v8 objectForKeyedSubscript:@"articleIDs"];
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

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v22;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v22 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [v3 setObject:v10 forKeyedSubscript:*(*(&v21 + 1) + 8 * j)];
            }

            v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v16);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __70__FCTagCuratedESLArticlesOperation__performOperationWithSingleRequest__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Article"];

  return v3;
}

- (id)_feedItemFromArticleRecord:(void *)a3 articleListIDsByArticleID:
{
  v5 = a3;
  if (a1)
  {
    v6 = MEMORY[0x1E69B6E30];
    v7 = a1[50];
    v8 = a2;
    v9 = [v7 contentStoreFrontID];
    v10 = [a1[50] internalContentContext];
    v11 = [v10 articleRecordSource];
    a1 = [v6 feedItemFromCKRecord:v8 storefrontID:v9 recordSource:v11];

    if (a1)
    {
      [a1 markAsEvergreen];
      v12 = [a1 articleID];
      v13 = [v5 objectForKeyedSubscript:v12];
      [a1 addSurfacedByArticleListID:v13];
    }
  }

  return a1;
}

id __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 fc_initSafeWithRecordName:v3];

  return v5;
}

void __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 recordID];
    v6 = [v5 recordName];

    objc_opt_class();
    v7 = [v4 objectForKeyedSubscript:@"articleIDs"];

    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_4;
    v13[3] = &unk_1E7C399F8;
    v10 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = v9;
    v16 = v6;
    v11 = v6;
    v12 = v9;
    [v10 readWriteWithAccessor:v13];
  }
}

void __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_5;
  v6[3] = &unk_1E7C399D0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 readWriteWithAccessor:v6];
}

void __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_5(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v3 addObject:{v9, v11}];
        [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_6(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_7;
    v27 = &unk_1E7C36C58;
    v28 = *(a1 + 32);
    v29 = v3;
    [v28 finishedPerformingOperationWithError:v29];
  }

  else
  {
    v5 = objc_alloc_init(FCCKContentBatchedFetchRecordsOperation);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 400);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 internalContentContext];
    v9 = [v8 contentDatabase];
    [(FCCKContentBatchedFetchRecordsOperation *)v5 setDatabase:v9];

    v10 = [*(a1 + 40) readOnlySet];
    v12 = [v10 fc_arrayByTransformingWithBlock:&__block_literal_global_49_1];
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v11, v12, 376);
    }

    v30[0] = @"articleIDs";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v15 = v13;
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v14, v13, 384);

      v5->_maxParallelBatches = 1;
      v5->_optimizationPolicy = 0;
    }

    else
    {
    }

    v16 = [*(a1 + 48) readOnlyDictionary];
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_9;
    newValue[3] = &unk_1E7C38B88;
    newValue[4] = *(a1 + 32);
    v23 = v16;
    v18 = v16;
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v17, newValue, 416);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_11;
    v21[3] = &unk_1E7C36E50;
    v19 = *(a1 + 32);
    v21[4] = v19;
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, v17, v21, 424);
      v19 = *(a1 + 32);
    }

    [v19 associateChildOperation:v5];
    [(FCOperation *)v5 start];
  }

  v20 = *MEMORY[0x1E69E9840];
}

id __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 fc_initSafeWithRecordName:v3];

  return v5;
}

void __66__FCTagCuratedESLArticlesOperation__performOperationWithStreaming__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v6 = [(FCTagCuratedESLArticlesOperation *)*(a1 + 32) _feedItemFromArticleRecord:a3 articleListIDsByArticleID:*(a1 + 40)];
    v4 = [*(a1 + 32) feedItemHandler];

    if (v4)
    {
      v5 = [*(a1 + 32) feedItemHandler];
      (v5)[2](v5, v6);
    }
  }
}

@end