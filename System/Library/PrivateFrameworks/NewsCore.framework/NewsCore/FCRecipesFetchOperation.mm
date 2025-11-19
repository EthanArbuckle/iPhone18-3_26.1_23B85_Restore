@interface FCRecipesFetchOperation
- (BOOL)validateOperation;
- (FCRecipesFetchOperation)initWithContext:(id)a3 accessChecker:(id)a4 tagController:(id)a5 recipeIDs:(id)a6 recipeListIDs:(id)a7;
- (id)_filterInaccessibleRecipes:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCRecipesFetchOperation

- (FCRecipesFetchOperation)initWithContext:(id)a3 accessChecker:(id)a4 tagController:(id)a5 recipeIDs:(id)a6 recipeListIDs:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context"];
    *buf = 136315906;
    v33 = "[FCRecipesFetchOperation initWithContext:accessChecker:tagController:recipeIDs:recipeListIDs:]";
    v34 = 2080;
    v35 = "FCRecipesFetchOperation.m";
    v36 = 1024;
    v37 = 49;
    v38 = 2114;
    v39 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagController"];
    *buf = 136315906;
    v33 = "[FCRecipesFetchOperation initWithContext:accessChecker:tagController:recipeIDs:recipeListIDs:]";
    v34 = 2080;
    v35 = "FCRecipesFetchOperation.m";
    v36 = 1024;
    v37 = 50;
    v38 = 2114;
    v39 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recipeIDs"];
    *buf = 136315906;
    v33 = "[FCRecipesFetchOperation initWithContext:accessChecker:tagController:recipeIDs:recipeListIDs:]";
    v34 = 2080;
    v35 = "FCRecipesFetchOperation.m";
    v36 = 1024;
    v37 = 51;
    v38 = 2114;
    v39 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v31.receiver = self;
  v31.super_class = FCRecipesFetchOperation;
  v18 = [(FCOperation *)&v31 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_context, a3);
    objc_storeStrong(&v19->_accessChecker, a4);
    objc_storeStrong(&v19->_tagController, a5);
    v20 = [v16 copy];
    recipeIDs = v19->_recipeIDs;
    v19->_recipeIDs = v20;

    v22 = [v17 copy];
    recipeListIDs = v19->_recipeListIDs;
    v19->_recipeListIDs = v22;

    v24 = [v13 news_core_ConfigurationManager];
    appConfigurationManager = v19->_appConfigurationManager;
    v19->_appConfigurationManager = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)validateOperation
{
  if (self)
  {
    recipeIDs = self->_recipeIDs;
    v4 = self->_context != 0;
  }

  else
  {
    v4 = 0;
    recipeIDs = 0;
  }

  v5 = recipeIDs;
  if ([(NSArray *)v5 count])
  {
    v6 = 1;
  }

  else
  {
    if (self)
    {
      recipeListIDs = self->_recipeListIDs;
    }

    else
    {
      recipeListIDs = 0;
    }

    v6 = [(NSArray *)recipeListIDs count]!= 0;
  }

  return v4 && v6;
}

- (void)performOperation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FCOperation *)self shortOperationDescription];
    if (self)
    {
      recipeIDs = self->_recipeIDs;
    }

    else
    {
      recipeIDs = 0;
    }

    v6 = recipeIDs;
    v7 = [(NSArray *)v6 count];
    if (self)
    {
      recipeListIDs = self->_recipeListIDs;
    }

    else
    {
      recipeListIDs = 0;
    }

    v9 = recipeListIDs;
    *buf = 138543874;
    v27 = v4;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = [(NSArray *)v9 count];
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch recipes for recipeIDs:%lu recipeListIDs:%lu", buf, 0x20u);
  }

  v10 = objc_alloc_init(FCRecordChainFetchOperation);
  v11 = MEMORY[0x1E695DEC8];
  if (self)
  {
    v12 = self->_recipeIDs;
    v13 = [v11 fc_arrayByAddingObjectsFromArray:v12 toArray:self->_recipeListIDs];
    [(FCRecordChainFetchOperation *)v10 setTopLevelRecordIDs:v13];

    context = self->_context;
  }

  else
  {
    v20 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:0 toArray:0];
    [(FCRecordChainFetchOperation *)v10 setTopLevelRecordIDs:v20];

    context = 0;
  }

  [(FCRecordChainFetchOperation *)v10 setContext:context];
  v15 = [(FCRecipesFetchOperation *)self cachePolicy];
  [(FCRecordChainFetchOperation *)v10 setCachePolicy:v15];

  v24[0] = @"Recipe";
  v23[0] = @"sourceChannelTagID";
  v23[1] = @"articleIDs";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v25[0] = v16;
  v25[1] = MEMORY[0x1E695E0F0];
  v24[1] = @"Tag";
  v24[2] = @"Article";
  v25[2] = MEMORY[0x1E695E0F0];
  v24[3] = @"RecipeList";
  v22 = @"recipeIDs";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v25[3] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  [(FCRecordChainFetchOperation *)v10 setLinkKeysByRecordType:v18];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__FCRecipesFetchOperation_performOperation__block_invoke;
  v21[3] = &unk_1E7C39358;
  v21[4] = self;
  [(FCRecordChainFetchOperation *)v10 setRecordChainCompletionHandler:v21];
  [(FCOperation *)self associateChildOperation:v10];
  [(FCOperation *)v10 start];

  v19 = *MEMORY[0x1E69E9840];
}

void __43__FCRecipesFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    aBlock[5] = MEMORY[0x1E69E9820];
    aBlock[6] = 3221225472;
    aBlock[7] = __43__FCRecipesFetchOperation_performOperation__block_invoke_2;
    aBlock[8] = &unk_1E7C36C58;
    v63 = *(a1 + 32);
    v64 = v6;
    [v63 finishedPerformingOperationWithError:v64];
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E707B8];
    v9 = [v5 objectForKeyedSubscript:&unk_1F2E707D0];
    v55 = [v5 objectForKeyedSubscript:&unk_1F2E707E8];
    v10 = [v5 objectForKeyedSubscript:&unk_1F2E70800];
    v11 = FCOperationLog;
    v57 = v10;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 shortOperationDescription];
      v15 = [v9 count];
      v16 = v8;
      v17 = [v8 count];
      v18 = v9;
      v19 = [v55 count];
      v20 = [v57 count];
      *buf = 138544386;
      v21 = @"YES";
      v66 = v14;
      v67 = 2048;
      if (!v20)
      {
        v21 = @"NO";
      }

      v68 = v15;
      v69 = 2048;
      v70 = v17;
      v8 = v16;
      v71 = 2048;
      v72 = v19;
      v9 = v18;
      v10 = v57;
      v73 = 2114;
      v74 = v21;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ received recipeRecords:%lu recipeListRecords:%lu articleRecords:%lu sourceChannelFetched:%{public}@", buf, 0x34u);
    }

    v22 = [*(a1 + 32) interestTokenHandler];

    if (v22)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__FCRecipesFetchOperation_performOperation__block_invoke_22;
      aBlock[3] = &unk_1E7C40428;
      aBlock[4] = *(a1 + 32);
      v23 = _Block_copy(aBlock);
      v23[2](v23, v9);
      v23[2](v23, v10);
    }

    v24 = [v8 transformRecordsWithBlock:&__block_literal_global_128];
    v25 = *(a1 + 32);
    if (v25)
    {
      objc_storeStrong((v25 + 440), v24);
    }

    v26 = *(a1 + 32);
    if (v26)
    {
      v26 = v26[49];
    }

    v27 = v26;
    v28 = [v27 tagController];
    v29 = [v28 channelsForTagRecords:v10];

    v30 = *(a1 + 32);
    if (v30)
    {
      v31 = *(v30 + 440);
    }

    else
    {
      v31 = 0;
    }

    v32 = [v31 fc_arrayByTransformingWithBlock:&__block_literal_global_30_2];
    v33 = [v32 fc_arrayByFlattening];

    v34 = *(a1 + 32);
    if (v34)
    {
      v35 = *(v34 + 416);
    }

    else
    {
      v35 = 0;
    }

    v54 = v33;
    v36 = [v35 arrayByAddingObjectsFromArray:v33];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __43__FCRecipesFetchOperation_performOperation__block_invoke_5;
    v58[3] = &unk_1E7C44010;
    v37 = v29;
    v38 = *(a1 + 32);
    v59 = v37;
    v60 = v38;
    v39 = v55;
    v61 = v39;
    v56 = v36;
    v40 = [v9 transformRecordsInOrder:v36 withBlock:v58];
    v41 = [*(a1 + 32) _filterInaccessibleRecipes:v40];
    v42 = *(a1 + 32);
    if (v42)
    {
      objc_storeStrong((v42 + 448), v41);
    }

    v43 = FCOperationLog;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [*(a1 + 32) shortOperationDescription];
      v52 = v9;
      v44 = *(a1 + 32);
      v53 = v8;
      if (v44)
      {
        v44 = v44[56];
      }

      v45 = v44;
      v46 = [v45 count];
      v47 = *(a1 + 32);
      if (v47)
      {
        v47 = v47[55];
      }

      v48 = v47;
      v49 = [v48 count];
      *buf = 138543874;
      v66 = v51;
      v67 = 2048;
      v68 = v46;
      v69 = 2048;
      v70 = v49;
      _os_log_impl(&dword_1B63EF000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ result contains %lu recipes and %lu recipe lists", buf, 0x20u);

      v9 = v52;
      v8 = v53;
    }

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }

  v50 = *MEMORY[0x1E69E9840];
}

void __43__FCRecipesFetchOperation_performOperation__block_invoke_22(uint64_t a1, void *a2)
{
  v3 = [a2 interestTokensByID];
  v4 = [v3 allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__FCRecipesFetchOperation_performOperation__block_invoke_2_23;
  v5[3] = &unk_1E7C40400;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __43__FCRecipesFetchOperation_performOperation__block_invoke_2_23(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 interestTokenHandler];
  v4[2](v4, v3);
}

FCRecipeList *__43__FCRecipesFetchOperation_performOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[FCRecipeList alloc] initWithRecipeListRecord:v5 interestToken:v4];

  return v6;
}

FCRecipe *__43__FCRecipesFetchOperation_performOperation__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 sourceChannelTagID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v37 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1 + 40);
      v39 = v37;
      v40 = [v38 shortOperationDescription];
      v41 = [v5 base];
      v42 = [v41 identifier];
      v43 = [v5 sourceChannelTagID];
      *buf = 138543874;
      v63 = v40;
      v64 = 2114;
      v65 = v42;
      v66 = 2114;
      v67 = v43;
      _os_log_error_impl(&dword_1B63EF000, v39, OS_LOG_TYPE_ERROR, "%{public}@ discarding recipe %{public}@ because source channel was not found. sourceTag=%{public}@", buf, 0x20u);
LABEL_21:
    }

LABEL_22:
    v36 = 0;
    goto LABEL_23;
  }

  if (([v9 allowsRecipes] & 1) == 0)
  {
    v44 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 40);
      v39 = v44;
      v40 = [v45 shortOperationDescription];
      v41 = [v5 base];
      v42 = [v41 identifier];
      v43 = [v9 identifier];
      *buf = 138543874;
      v63 = v40;
      v64 = 2114;
      v65 = v42;
      v66 = 2114;
      v67 = v43;
      _os_log_impl(&dword_1B63EF000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ discarding recipe %{public}@ because source channel=%{public}@ does not allow recipes", buf, 0x20u);
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10 = v10[49];
  }

  v11 = v10;
  v12 = [v11 configurationManager];
  v13 = [v12 configuration];
  v14 = *(a1 + 40);
  v59 = v6;
  if (v14)
  {
    v14 = v14[49];
  }

  v15 = v14;
  v16 = [v15 assetManager];
  v17 = MEMORY[0x1E695DFD8];
  v18 = [v5 articleIDs];
  v19 = [v17 setWithArray:v18];
  v61 = FCHeadlinesByArticleIDFromHeldRecords(v13, v16, v19, *(a1 + 48), *(a1 + 32), 0, 1, 0);

  v20 = [v5 articleIDs];
  v21 = [v20 count];

  if (!v21)
  {
    v22 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
    {
      v54 = *(a1 + 40);
      v55 = v22;
      v56 = [v54 shortOperationDescription];
      v57 = [v5 base];
      v58 = [v57 identifier];
      *buf = 138543618;
      v63 = v56;
      v64 = 2114;
      v65 = v58;
      _os_log_error_impl(&dword_1B63EF000, v55, OS_LOG_TYPE_ERROR, "%{public}@ recipe %{public}@ has no associated articles; all recipes should have at least 1 article", buf, 0x16u);
    }
  }

  v23 = [v5 articleIDs];
  v24 = [v23 count];
  v25 = [v61 count];

  v26 = v24 == v25;
  v6 = v60;
  v27 = &OBJC_IVAR___FCArticleHeadline__bundlePaid;
  v28 = v61;
  if (!v26)
  {
    v29 = [v61 allKeys];
    v30 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
    {
      v48 = *(a1 + 40);
      v49 = v30;
      v50 = [v48 shortOperationDescription];
      v51 = [v5 base];
      v52 = [v51 identifier];
      v53 = [v5 articleIDs];
      *buf = 138544130;
      v63 = v50;
      v64 = 2114;
      v65 = v52;
      v66 = 2114;
      v67 = v53;
      v68 = 2114;
      v69 = v29;
      _os_log_error_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_ERROR, "%{public}@ recipe %{public}@ fetched mismatch count of associated articles, record=%{public}@, fetched=%{public}@", buf, 0x2Au);

      v27 = &OBJC_IVAR___FCArticleHeadline__bundlePaid;
      v28 = v61;
    }
  }

  v31 = [FCRecipe alloc];
  v32 = [v28 allValues];
  v33 = *(a1 + 40);
  if (v33)
  {
    v34 = *(v33 + v27[202]);
  }

  else
  {
    v34 = 0;
  }

  v35 = [v34 assetManager];
  v36 = [(FCRecipe *)v31 initWithRecipeRecord:v5 sourceChannel:v9 articles:v32 assetManager:v35 interestToken:v60];

LABEL_23:
  v46 = *MEMORY[0x1E69E9840];

  return v36;
}

- (void)operationWillFinishWithError:(id)a3
{
  v10 = a3;
  v4 = [FCRecipesFetchOperationResult alloc];
  if (self)
  {
    v5 = self->_resultRecipes;
    resultRecipeLists = self->_resultRecipeLists;
  }

  else
  {
    v5 = 0;
    resultRecipeLists = 0;
  }

  v7 = [(FCRecipesFetchOperationResult *)v4 initWithRecipes:v5 recipeLists:resultRecipeLists];

  v8 = [(FCRecipesFetchOperation *)self fetchCompletionHandler];

  if (v8)
  {
    v9 = [(FCRecipesFetchOperation *)self fetchCompletionHandler];
    (v9)[2](v9, v7, v10);
  }
}

- (id)_filterInaccessibleRecipes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self && self->_accessChecker)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__FCRecipesFetchOperation__filterInaccessibleRecipes___block_invoke;
    v9[3] = &unk_1E7C44038;
    v9[4] = self;
    v6 = [v4 fc_arrayOfObjectsPassingTest:v9];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

uint64_t __54__FCRecipesFetchOperation__filterInaccessibleRecipes___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 400);
  }

  else
  {
    v3 = 0;
  }

  return [v3 hasAccessToItem:a2 blockedReason:&v5 error:0];
}

@end