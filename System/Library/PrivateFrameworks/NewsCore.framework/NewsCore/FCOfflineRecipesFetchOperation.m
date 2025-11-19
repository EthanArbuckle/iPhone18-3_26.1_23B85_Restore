@interface FCOfflineRecipesFetchOperation
- (BOOL)validateOperation;
- (FCOfflineRecipesFetchOperation)init;
- (FCOfflineRecipesFetchOperation)initWithContext:(id)a3 recipeID:(id)a4;
- (FCOfflineRecipesFetchOperation)initWithContext:(id)a3 recipeIDs:(id)a4;
- (void)_handleArchive:(void *)a1;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCOfflineRecipesFetchOperation

- (FCOfflineRecipesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCOfflineRecipesFetchOperation init]";
    v10 = 2080;
    v11 = "FCOfflineRecipesFetchOperation.m";
    v12 = 1024;
    v13 = 72;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCOfflineRecipesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCOfflineRecipesFetchOperation)initWithContext:(id)a3 recipeIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = FCOfflineRecipesFetchOperation;
  v9 = [(FCOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    v11 = [v8 copy];
    recipeIDs = v10->_recipeIDs;
    v10->_recipeIDs = v11;

    v13 = objc_alloc_init(FCThreadSafeMutableArray);
    resultInterestTokens = v10->_resultInterestTokens;
    v10->_resultInterestTokens = v13;
  }

  return v10;
}

- (FCOfflineRecipesFetchOperation)initWithContext:(id)a3 recipeID:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(FCOfflineRecipesFetchOperation *)self initWithContext:v8 recipeIDs:v9, v13, v14];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  if (self && self->_context)
  {
    v3 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline recipe fetch operation requires a context"];
      v9 = 136315906;
      v10 = "[FCOfflineRecipesFetchOperation validateOperation]";
      v11 = 2080;
      v12 = "FCOfflineRecipesFetchOperation.m";
      v13 = 1024;
      v14 = 100;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
    }

    v3 = 0;
    if (!self)
    {
      goto LABEL_9;
    }
  }

  if (self->_recipeIDs)
  {
    v4 = 1;
    goto LABEL_12;
  }

LABEL_9:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline recipe fetch operation requires recipeIDs"];
    v9 = 136315906;
    v10 = "[FCOfflineRecipesFetchOperation validateOperation]";
    v11 = 2080;
    v12 = "FCOfflineRecipesFetchOperation.m";
    v13 = 1024;
    v14 = 104;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  v4 = 0;
LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
  return v4 & v3;
}

- (void)prepareOperation
{
  if (![(FCOfflineRecipesFetchOperation *)self maxBatchSize])
  {
    [(FCOfflineRecipesFetchOperation *)self setMaxBatchSize:20];
  }

  if (self)
  {
    context = self->_context;
  }

  else
  {
    context = 0;
  }

  v6 = [(FCContentContext *)context appConfigurationManager];
  v4 = [v6 possiblyUnfetchedAppConfiguration];
  v5 = [v4 offlineDownloadsConfig];
  if (self)
  {
    objc_storeStrong(&self->_config, v5);
  }
}

- (void)performOperation
{
  v37 = *MEMORY[0x1E69E9840];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__44;
  v27[4] = __Block_byref_object_dispose__44;
  v28 = 0;
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FCOperation *)self shortOperationDescription];
    if ([(FCOfflineRecipesFetchOperation *)self cachedOnly])
    {
      v5 = @"lookup cached";
    }

    else
    {
      v5 = @"fetch";
    }

    if (self)
    {
      v6 = self->_recipeIDs;
      config = self->_config;
      v8 = v6;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      config = 0;
    }

    v9 = config;
    v10 = [(FCOfflineDownloadsConfiguration *)v9 useSmallestRecipeThumbnails];
    v11 = @"normal";
    *buf = 138544130;
    v30 = v4;
    v31 = 2114;
    if (v10)
    {
      v11 = @"small";
    }

    v32 = v5;
    v33 = 2114;
    v34 = v6;
    v35 = 2114;
    v36 = v11;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will %{public}@ recipe ids=%{public}@, thumbnail variant=%{public}@", buf, 0x2Au);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__FCOfflineRecipesFetchOperation_performOperation__block_invoke;
  v26[3] = &unk_1E7C396C0;
  v26[4] = self;
  v12 = [MEMORY[0x1E69B68F8] firstly:v26];
  v13 = zalgo();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __50__FCOfflineRecipesFetchOperation_performOperation__block_invoke_2;
  v25[3] = &unk_1E7C417C8;
  v25[4] = self;
  v25[5] = v27;
  v14 = [v12 thenOn:v13 then:v25];
  v15 = zalgo();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__FCOfflineRecipesFetchOperation_performOperation__block_invoke_3;
  v24[3] = &unk_1E7C403B0;
  v24[4] = self;
  v24[5] = v27;
  v16 = [v14 thenOn:v15 then:v24];
  v17 = zalgo();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__FCOfflineRecipesFetchOperation_performOperation__block_invoke_4;
  v23[3] = &unk_1E7C403D8;
  v23[4] = self;
  v18 = [v16 thenOn:v17 then:v23];
  v19 = zalgo();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __50__FCOfflineRecipesFetchOperation_performOperation__block_invoke_5;
  v22[3] = &unk_1E7C36E50;
  v22[4] = self;
  v20 = [v18 errorOn:v19 error:v22];

  _Block_object_dispose(v27, 8);
  v21 = *MEMORY[0x1E69E9840];
}

id *__50__FCOfflineRecipesFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedOnly];
  v3 = *(a1 + 32);
  if (v2)
  {
    if (v3)
    {
      v4 = v3[54];
      v5 = [v4 internalContentContext];
      v6 = [v5 recipeRecordSource];
      v7 = v3[55];
      v8 = [v6 cachedRecordsWithIDs:v7];

      v9 = v3[55];
      v10 = [v9 count];
      v11 = [v8 count];

      if (v10 == v11)
      {
        v12 = [v8 interestTokensByID];
        v13 = [v12 allValues];
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __61__FCOfflineRecipesFetchOperation__promiseCachedRecipeRecords__block_invoke_36;
        v24 = &unk_1E7C40400;
        v25 = v3;
        [v13 enumerateObjectsUsingBlock:&v21];

        v14 = [v8 allRecords];
        v15 = [v14 fc_arrayByTransformingWithBlock:&__block_literal_global_94];

        v16 = [FCContentArchive archiveWithChildArchives:v15];
        [(FCOfflineRecipesFetchOperation *)v3 _handleArchive:v16];

        v17 = objc_alloc(MEMORY[0x1E69B68F8]);
        v18 = [v8 allRecords];
        v3 = [v17 initWithValue:v18];
      }

      else
      {
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __61__FCOfflineRecipesFetchOperation__promiseCachedRecipeRecords__block_invoke;
        v24 = &unk_1E7C417F0;
        v25 = v8;
        v26 = v3;
        v27 = v10 - v11;
        v3 = __61__FCOfflineRecipesFetchOperation__promiseCachedRecipeRecords__block_invoke(&v21);
      }
    }
  }

  else if (v3)
  {
    v19 = objc_alloc(MEMORY[0x1E69B68F8]);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke;
    v24 = &unk_1E7C39ED0;
    v25 = v3;
    v3 = [v19 initWithResolver:&v21];
  }

  return v3;
}

id __50__FCOfflineRecipesFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69B68F8]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke;
    v10[3] = &unk_1E7C3B310;
    v11 = v6;
    v12 = v5;
    v8 = [v7 initWithResolver:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __50__FCOfflineRecipesFetchOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke;
    v6[3] = &unk_1E7C3B310;
    v7 = v2;
    v8 = v1;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(FCOfflineRecipesFetchOperation *)self fetchCompletionQueue];

  v6 = [(FCOfflineRecipesFetchOperation *)self fetchCompletionHandler];

  if (v5)
  {
    if (v6)
    {
      v7 = [(FCOfflineRecipesFetchOperation *)self fetchCompletionQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__FCOfflineRecipesFetchOperation_operationWillFinishWithError___block_invoke;
      v12[3] = &unk_1E7C36C58;
      v12[4] = self;
      v13 = v4;
      dispatch_async(v7, v12);
    }
  }

  else if (v6)
  {
    v8 = [(FCOfflineRecipesFetchOperation *)self fetchCompletionHandler];
    if (self)
    {
      resultInterestTokens = self->_resultInterestTokens;
    }

    else
    {
      resultInterestTokens = 0;
    }

    v10 = resultInterestTokens;
    v11 = [(FCThreadSafeMutableArray *)v10 readOnlyArray];
    (v8)[2](v8, v11, v4);
  }
}

void __63__FCOfflineRecipesFetchOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) fetchCompletionHandler];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[57];
  }

  v3 = v2;
  v4 = [v3 readOnlyArray];
  v5[2](v5, v4, *(a1 + 40));
}

id __61__FCOfflineRecipesFetchOperation__promiseCachedRecipeRecords__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) allRecordIDs];
  v4 = [v2 setWithArray:v3];

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 440);
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v8 = [v7 fc_setByMinusingSet:v4];

  v9 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 40);
    v16 = v9;
    v17 = [v15 shortOperationDescription];
    v18 = *(a1 + 48);
    v19 = [v8 allObjects];
    v20 = [v19 fc_subarrayWithMaxCount:3];
    v21 = 138543874;
    v22 = v17;
    v23 = 2048;
    v24 = v18;
    v25 = 2114;
    v26 = v20;
    _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "%{public}@ missing too many recipes, missing=%lu, sample=%{public}@", &v21, 0x20u);
  }

  v10 = objc_alloc(MEMORY[0x1E69B68F8]);
  v11 = [MEMORY[0x1E696ABC0] fc_notCachedErrorWithMissingObjects:v8];
  v12 = [v10 initWithError:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __61__FCOfflineRecipesFetchOperation__promiseCachedRecipeRecords__block_invoke_36(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 456) addObject:a2];
    }
  }

  return result;
}

- (void)_handleArchive:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = [a1 archiveQueue];

    v6 = [a1 archiveHandler];

    if (v5)
    {
      if (v6)
      {
        v7 = [a1 archiveQueue];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __49__FCOfflineRecipesFetchOperation__handleArchive___block_invoke_2;
        v9[3] = &unk_1E7C36C58;
        v9[4] = a1;
        v10 = v4;
        dispatch_async(v7, v9);
      }
    }

    else if (v6)
    {
      v8 = [a1 archiveHandler];
      (v8)[2](v8, v4);
    }
  }
}

void __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCCKContentBatchedFetchRecordsOperation);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 432);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 internalContentContext];
  v11 = [v10 contentDatabase];
  [(FCCKContentBatchedFetchRecordsOperation *)v7 setDatabase:v11];

  v12 = [*(a1 + 32) maxBatchSize];
  if (v7)
  {
    v7->_maxBatchSize = v12;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 432);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 internalContentContext];
  v16 = [v15 recipeRecordSource];
  v18 = [v16 desiredKeys];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v17, v18, 384);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 440);
  }

  else
  {
    v20 = 0;
  }

  v22 = [v20 fc_arrayByTransformingWithBlock:&__block_literal_global_43_1];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v21, v22, 376);
  }

  v23 = objc_opt_new();
  v24 = objc_opt_new();
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke_3;
  newValue[3] = &unk_1E7C38B88;
  v25 = v23;
  v42 = v25;
  v43 = v24;
  v27 = v24;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v26, newValue, 416);
  }

  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke_4;
  v36 = &unk_1E7C41838;
  v28 = *(a1 + 32);
  v37 = v25;
  v38 = v28;
  v39 = v6;
  v40 = v5;
  v29 = v5;
  v30 = v25;
  v32 = v6;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v31, &v33, 424);
  }

  [*(a1 + 32) associateChildOperation:{v7, v33, v34, v35, v36}];
  [(FCOperation *)v7 start];
}

id __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 fc_initSafeWithRecordName:v3];

  return v5;
}

void __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = 32;
    v11 = v7;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = 40;
    v11 = v8;
  }

  [*(a1 + v10) setObject:v11 forKey:v12];
LABEL_6:
}

void __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke_5;
    v16 = &unk_1E7C37778;
    v18 = *(a1 + 48);
    v17 = v3;
    v18[2](v18, v17);

    v4 = v18;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [*(a1 + 32) allValues];
    v7 = [*(a1 + 40) maxBatchSize];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke_6;
    v11[3] = &unk_1E7C39308;
    v11[4] = *(a1 + 40);
    v12 = v5;
    v4 = v5;
    [v6 fc_visitSubarraysWithMaxCount:v7 block:v11];

    (*(*(a1 + 56) + 16))(*(a1 + 56), v4, v8, v9, v10);
  }
}

void __62__FCOfflineRecipesFetchOperation__promiseFetchedRecipeRecords__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 432);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  v6 = [v4 internalContentContext];
  v7 = [v6 recipeRecordSource];
  v14 = [v7 convertRecords:v5];

  v8 = [v14 allRecords];
  v9 = [v8 fc_arrayByTransformingWithBlock:&__block_literal_global_49_2];

  v10 = *(a1 + 32);
  v11 = [FCContentArchive archiveWithChildArchives:v9];
  [(FCOfflineRecipesFetchOperation *)v10 _handleArchive:v11];

  v12 = *(a1 + 40);
  v13 = [v14 allRecords];
  [v12 addObjectsFromArray:v13];
}

void __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke_2;
  v23[3] = &unk_1E7C3B110;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v24 = v8;
  v25 = v9;
  v10 = [v7 fc_array:v23];
  v11 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v10];
  [(FCOperation *)v11 setPurpose:@"offlineDownload"];
  if ([*(a1 + 40) cachedOnly])
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [(FCFetchOperation *)v11 setCachePolicy:v12];
  -[FCFetchOperation setCanSendFetchCompletionSynchronously:](v11, "setCanSendFetchCompletionSynchronously:", [*(a1 + 40) cachedOnly]);
  -[FCAssetsFetchOperation setMaxConcurrentFetchCount:](v11, "setMaxConcurrentFetchCount:", [*(a1 + 40) maxBatchSize]);
  [(FCFetchOperation *)v11 setShouldFailOnMissingObjects:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke_3;
  v22[3] = &unk_1E7C40478;
  v22[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v11 setInterestTokenHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke_4;
  v21[3] = &unk_1E7C404A0;
  v21[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v11 setArchiveHandler:v21];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke_5;
  v18 = &unk_1E7C404C8;
  v19 = v5;
  v20 = v6;
  v13 = v6;
  v14 = v5;
  [(FCFetchOperation *)v11 setFetchCompletionBlock:&v15];
  [*(a1 + 40) associateChildOperation:{v11, v15, v16, v17, v18}];
  [(FCOperation *)v11 start];
}

void __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        if (v9)
        {
          v10 = v9[56];
          v9 = v9[54];
        }

        else
        {
          v10 = 0;
        }

        v11 = v9;
        v12 = v10;
        v13 = [v11 assetManager];
        v14 = FCOfflineThumbnailAssetHandlesForRecipeRecord(v8, v12, v13);

        [v3 addObjectsFromArray:v14];
        ++v7;
      }

      while (v5 != v7);
      v15 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      v5 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 456) addObject:a2];
    }
  }

  return result;
}

void __69__FCOfflineRecipesFetchOperation__promiseThumbnailsForRecipeRecords___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v4 = *(a1 + 40);
    [v3 error];
  }

  else
  {
    v4 = *(a1 + 32);
    [v3 fetchedObject];
  }
  v5 = ;

  (*(v4 + 16))(v4, v5);
}

void __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke_2;
  v18[3] = &unk_1E7C41860;
  v7 = *(a1 + 32);
  v18[4] = *(a1 + 40);
  v8 = [v7 fc_arrayByTransformingWithBlock:v18];
  v9 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v8];
  [(FCOperation *)v9 setPurpose:@"offlineDownload"];
  if ([*(a1 + 40) cachedOnly])
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [(FCFetchOperation *)v9 setCachePolicy:v10];
  -[FCAssetsFetchOperation setMaxConcurrentFetchCount:](v9, "setMaxConcurrentFetchCount:", [*(a1 + 40) maxBatchSize]);
  -[FCFetchOperation setCanSendFetchCompletionSynchronously:](v9, "setCanSendFetchCompletionSynchronously:", [*(a1 + 40) cachedOnly]);
  [(FCFetchOperation *)v9 setShouldFailOnMissingObjects:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke_3;
  v17[3] = &unk_1E7C40478;
  v17[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v9 setInterestTokenHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke_4;
  v16[3] = &unk_1E7C404A0;
  v16[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v9 setArchiveHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke_5;
  v13[3] = &unk_1E7C404C8;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [(FCFetchOperation *)v9 setFetchCompletionBlock:v13];
  [*(a1 + 40) associateChildOperation:v9];
  [(FCOperation *)v9 start];
}

id __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 432);
  }

  else
  {
    v3 = 0;
  }

  v4 = a2;
  v5 = [v3 assetManager];
  v6 = [v4 generateContentAssetHandleWithAssetManager:v5];

  return v6;
}

uint64_t __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 456) addObject:a2];
    }
  }

  return result;
}

void __66__FCOfflineRecipesFetchOperation__promiseContentsForRecipRecords___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v4 = *(a1 + 40);
    [v3 error];
  }

  else
  {
    v4 = *(a1 + 32);
    [v3 fetchedObject];
  }
  v5 = ;

  (*(v4 + 16))(v4, v5);
}

void __49__FCOfflineRecipesFetchOperation__handleArchive___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) archiveHandler];
  v2[2](v2, *(a1 + 40));
}

@end