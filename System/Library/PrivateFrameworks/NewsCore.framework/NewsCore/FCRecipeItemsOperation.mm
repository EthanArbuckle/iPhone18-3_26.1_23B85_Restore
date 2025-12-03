@interface FCRecipeItemsOperation
- (FCRecipeItemsOperation)init;
- (FCRecipeItemsOperation)initWithContext:(id)context recipeListIDs:(id)ds;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCRecipeItemsOperation

- (FCRecipeItemsOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRecipeItemsOperation init]";
    v10 = 2080;
    v11 = "FCRecipeItemsOperation.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecipeItemsOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRecipeItemsOperation)initWithContext:(id)context recipeListIDs:(id)ds
{
  contextCopy = context;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = FCRecipeItemsOperation;
  v9 = [(FCOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_recipeListIDs, ds);
    array = [MEMORY[0x1E695DEC8] array];
    networkEvents = v10->_networkEvents;
    v10->_networkEvents = array;
  }

  return v10;
}

- (void)performOperation
{
  selfCopy = self;
  v29 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_recipeListIDs;
  }

  if ([(FCRecipeItemsOperation *)self count])
  {
    v3 = FCOperationLog;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      shortOperationDescription = [(FCOperation *)selfCopy shortOperationDescription];
      v5 = shortOperationDescription;
      if (selfCopy)
      {
        recipeListIDs = selfCopy->_recipeListIDs;
      }

      else
      {
        recipeListIDs = 0;
      }

      *buf = 138543618;
      v26 = shortOperationDescription;
      v27 = 2114;
      v28 = recipeListIDs;
      _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch from recipe list IDs: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc_init(FCCKBatchedMultiFetchQueryOperation);
    if (selfCopy)
    {
      context = selfCopy->_context;
    }

    else
    {
      context = 0;
    }

    internalContentContext = [(FCContentContext *)context internalContentContext];
    contentDatabase = [internalContentContext contentDatabase];
    [(FCCKBatchedMultiFetchQueryOperation *)v7 setDatabase:contentDatabase];

    v12 = +[FCEdgeCacheHint edgeCacheHintForRecipeLists];
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v11, v12, 424);
    }

    if (selfCopy)
    {
      v13 = selfCopy->_recipeListIDs;
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
    v23[2] = __42__FCRecipeItemsOperation_performOperation__block_invoke_10;
    v23[3] = &unk_1E7C36D40;
    v23[4] = selfCopy;
    v16 = [MEMORY[0x1E695DEC8] fc_array:v23];
    [(FCCKBatchedMultiFetchQueryOperation *)v7 setRecordSpecs:v16];

    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __42__FCRecipeItemsOperation_performOperation__block_invoke_2;
    newValue[3] = &unk_1E7C36D68;
    newValue[4] = selfCopy;
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v17, newValue, 448);
    }

    objc_initWeak(buf, v7);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__FCRecipeItemsOperation_performOperation__block_invoke_6;
    v20[3] = &unk_1E7C406A0;
    v20[4] = selfCopy;
    objc_copyWeak(&v21, buf);
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v18, v20, 464);
    }

    [(FCOperation *)selfCopy associateChildOperation:v7];
    [(FCOperation *)v7 start];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __42__FCRecipeItemsOperation_performOperation__block_invoke;
    v24[3] = &unk_1E7C36EA0;
    v24[4] = selfCopy;
    __42__FCRecipeItemsOperation_performOperation__block_invoke(v24);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __42__FCRecipeItemsOperation_performOperation__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will end early because there are no recipe list IDs", &v8, 0xCu);
  }

  result = [*(a1 + 32) finishedPerformingOperationWithError:0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __42__FCRecipeItemsOperation_performOperation__block_invoke_10(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, @"RecipeList", 16);
    objc_setProperty_nonatomic_copy(v6, v7, MEMORY[0x1E695E0F0], 24);
  }

  v21[0] = @"recipeIDs";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v8, v9, 32);
  }

  [v3 addObject:v6];
  v10 = objc_opt_new();
  v12 = v10;
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v11, @"Recipe", 16);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 400);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 recipeItemFactory];
  v16 = [v15 requiredRecipeKeys];
  v18 = v16;
  if (v12)
  {
    objc_setProperty_nonatomic_copy(v12, v17, v16, 24);

    objc_setProperty_nonatomic_copy(v12, v19, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v12];

  v20 = *MEMORY[0x1E69E9840];
}

void __42__FCRecipeItemsOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 fc_onlyObject];
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[50];
    }

    v8 = v7;
    v9 = [v8 recipeItemFactory];
    v10 = [v9 recipeItemFromCKRecord:v5 surfacedBy:v6 error:0];

    if (v10)
    {
      v11 = v10;
      v12 = [*(a1 + 32) recipeItemHandlerQueue];

      v13 = [*(a1 + 32) recipeItemHandler];

      if (v12)
      {
        if (v13)
        {
          v14 = [*(a1 + 32) recipeItemHandlerQueue];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __42__FCRecipeItemsOperation_performOperation__block_invoke_5;
          v16[3] = &unk_1E7C36C58;
          v16[4] = *(a1 + 32);
          v17 = v11;
          dispatch_async(v14, v16);
        }
      }

      else if (v13)
      {
        v15 = [*(a1 + 32) recipeItemHandler];
        (v15)[2](v15, v11);
      }
    }
  }
}

void __42__FCRecipeItemsOperation_performOperation__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) recipeItemHandler];
  v2[2](v2, *(a1 + 40));
}

void __42__FCRecipeItemsOperation_performOperation__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = *(a1 + 32);
    v11 = v4;
    [v10 finishedPerformingOperationWithError:{v11, v9, 3221225472, __42__FCRecipeItemsOperation_performOperation__block_invoke_7, &unk_1E7C36C58, v10}];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [(FCCKBatchedMultiFetchQueryOperation *)WeakRetained networkEvents];
    v8 = *(a1 + 32);
    if (v8)
    {
      objc_storeStrong((v8 + 392), v7);
    }

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(FCRecipeItemsOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(FCRecipeItemsOperation *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }
}

@end