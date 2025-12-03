@interface FCOfflineANFArticlesFetchOperation
- (BOOL)validateOperation;
- (id)initWithContext:(void *)context config:(void *)config ANFHelper:(void *)helper articleIDs:;
- (id)initWithContext:(void *)context config:(void *)config ANFHelper:(void *)helper headlines:;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCOfflineANFArticlesFetchOperation

- (id)initWithContext:(void *)context config:(void *)config ANFHelper:(void *)helper articleIDs:
{
  v10 = a2;
  contextCopy = context;
  configCopy = config;
  helperCopy = helper;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = FCOfflineANFArticlesFetchOperation;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 54, a2);
      objc_storeStrong(self + 55, context);
      objc_storeStrong(self + 56, config);
      v15 = [helperCopy copy];
      v16 = self[57];
      self[57] = v15;
    }
  }

  return self;
}

- (id)initWithContext:(void *)context config:(void *)config ANFHelper:(void *)helper headlines:
{
  helperCopy = helper;
  if (self)
  {
    configCopy = config;
    contextCopy = context;
    v12 = a2;
    v13 = [helperCopy fc_arrayByTransformingWithBlock:&__block_literal_global_142];
    v14 = [(FCOfflineANFArticlesFetchOperation *)self initWithContext:v12 config:contextCopy ANFHelper:configCopy articleIDs:v13];

    if (v14)
    {
      v15 = [helperCopy copy];
      v16 = v14[58];
      v14[58] = v15;
    }

    self = v14;
  }

  return self;
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
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline ANF fetch operation requires a context"];
      v9 = 136315906;
      v10 = "[FCOfflineANFArticlesFetchOperation validateOperation]";
      v11 = 2080;
      v12 = "FCOfflineANFArticlesFetchOperation.m";
      v13 = 1024;
      v14 = 112;
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

  if (self->_ANFHelper)
  {
    v4 = 1;
    goto LABEL_12;
  }

LABEL_9:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline ANF fetch operation requires a flint helper"];
    v9 = 136315906;
    v10 = "[FCOfflineANFArticlesFetchOperation validateOperation]";
    v11 = 2080;
    v12 = "FCOfflineANFArticlesFetchOperation.m";
    v13 = 1024;
    v14 = 116;
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
  if (self)
  {
    if (!self->_maxBatchSize)
    {
      self->_maxBatchSize = -1;
    }
  }
}

- (void)performOperation
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__70;
  v20[4] = __Block_byref_object_dispose__70;
  v21 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke;
  v19[3] = &unk_1E7C396C0;
  v19[4] = self;
  v13 = [MEMORY[0x1E69B68F8] firstly:v19];
  v3 = zalgo();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke_2;
  v18[3] = &unk_1E7C403B0;
  v18[4] = self;
  v18[5] = v20;
  v4 = [v13 thenOn:v3 then:v18];
  v5 = zalgo();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke_24;
  v17[3] = &unk_1E7C403B0;
  v17[4] = self;
  v17[5] = v20;
  v6 = [v4 thenOn:v5 then:v17];
  v7 = zalgo();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke_2_25;
  v16[3] = &unk_1E7C403B0;
  v16[4] = self;
  v16[5] = v20;
  v8 = [v6 thenOn:v7 then:v16];
  v9 = zalgo();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke_3;
  v15[3] = &unk_1E7C3B2C0;
  v15[4] = self;
  v10 = [v8 thenOn:v9 then:v15];
  v11 = zalgo();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke_4;
  v14[3] = &unk_1E7C36E50;
  v14[4] = self;
  v12 = [v10 errorOn:v11 error:v14];

  _Block_object_dispose(v20, 8);
}

id __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 464);
    v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_28_2];

    v4 = [v3 count];
    if (v4 >= [*(v1 + 456) count])
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke_2;
      v16 = &unk_1E7C36F98;
      v17 = v3;
      v1 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:v17];
    }

    else
    {
      v5 = *(v1 + 392);
      if (v5)
      {
        (*(v5 + 16))(0.0);
      }

      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke_3;
      v16 = &unk_1E7C396C0;
      v17 = v1;
      v6 = [MEMORY[0x1E69B68F8] firstly:&v13];
      v7 = zalgo();
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke_4;
      v12[3] = &unk_1E7C3B2C0;
      v12[4] = v1;
      v8 = [v6 thenOn:v7 then:v12];
      v9 = zalgo();
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke_5;
      v11[3] = &unk_1E7C36E50;
      v11[4] = v1;
      v1 = [v8 errorOn:v9 error:v11];
    }
  }

  return v1;
}

id __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count] == 1)
  {
    v4 = [v3 fc_onlyObject];
    v5 = [FCDescription descriptionWithObject:v4];
    v6 = [v4 base];
    v7 = [v6 identifier];
    [v5 addField:@"id" object:v7];

    v8 = MEMORY[0x1E695DF00];
    v9 = [v4 base];
    v10 = [v9 modificationDate];
    v11 = [v8 dateWithPBDate:v10];
    [v5 addField:@"modificationDate" object:v11];

    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "backendArticleVersion")}];
    [v5 addField:@"backendVersion" object:v12];

    v13 = [v4 flintDocumentURL];
    [v5 addField:@"anfURL" object:v13];

    v14 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 shortOperationDescription];
      v18 = [v5 descriptionString];
      *v28 = 138543618;
      *&v28[4] = v17;
      *&v28[12] = 2114;
      *&v28[14] = v18;
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch contents of article record: %{public}@", v28, 0x16u);
    }
  }

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v3;
  v21 = v3;

  v22 = *(a1 + 32);
  v23 = *(*(*(a1 + 40) + 8) + 40);
  if (v22)
  {
    v24 = objc_alloc(MEMORY[0x1E69B68F8]);
    *v28 = MEMORY[0x1E69E9820];
    *&v28[8] = 3221225472;
    *&v28[16] = __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke;
    v29 = &unk_1E7C3B310;
    v30 = v23;
    v31 = v22;
    v25 = [v24 initWithResolver:v28];
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

id __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke;
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

id __54__FCOfflineANFArticlesFetchOperation_performOperation__block_invoke_2_25(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = a2;
  if (v3)
  {
    v6 = objc_alloc(MEMORY[0x1E69B68F8]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke;
    v9[3] = &unk_1E7C3B768;
    v10 = v4;
    v11 = v5;
    v12 = v3;
    v7 = [v6 initWithResolver:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)operationWillFinishWithError:(id)error
{
  fetchCompletionHandler = error;
  v5 = fetchCompletionHandler;
  if (self)
  {
    fetchCompletionHandler = self->_fetchCompletionHandler;
    if (fetchCompletionHandler)
    {
      v6 = v5;
      fetchCompletionHandler = fetchCompletionHandler[2]();
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](fetchCompletionHandler, v5);
}

id __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 articleRecord];

  return v5;
}

id __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke_2(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:*(a1 + 32)];

  return v1;
}

id __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 368))
    {
      v2 = *(v1 + 432);
      v3 = [v2 internalContentContext];
      v4 = [v3 articleRecordSource];
      v5 = *(v1 + 456);
      v6 = [v4 cachedRecordsWithIDs:v5];

      v7 = *(v1 + 456);
      v8 = [v7 count];
      v9 = [v6 count];

      if ((v8 - v9) <= *(v1 + 384))
      {
        if (*(v1 + 400))
        {
          v13 = [v6 interestTokensByID];
          v14 = [v13 allValues];
          v22 = MEMORY[0x1E69E9820];
          v23 = 3221225472;
          v24 = __66__FCOfflineANFArticlesFetchOperation__promiseCachedArticleRecords__block_invoke_54;
          v25 = &unk_1E7C40400;
          v26 = v1;
          [v14 enumerateObjectsUsingBlock:&v22];
        }

        if (*(v1 + 408))
        {
          v15 = [v6 allRecords];
          v16 = [v15 fc_arrayByTransformingWithBlock:&__block_literal_global_57_1];

          v17 = *(v1 + 408);
          v18 = v17;
          v19 = [FCContentArchive archiveWithChildArchives:v16];
          (v17)[2](v18, v19);
        }

        v20 = objc_alloc(MEMORY[0x1E69B68F8]);
        v11 = [v6 allRecords];
        v10 = [v20 initWithValue:v11];
      }

      else
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __66__FCOfflineANFArticlesFetchOperation__promiseCachedArticleRecords__block_invoke;
        v25 = &unk_1E7C417F0;
        v26 = v6;
        v27 = v1;
        v28 = v8 - v9;
        v10 = __66__FCOfflineANFArticlesFetchOperation__promiseCachedArticleRecords__block_invoke(&v22);
        v11 = v26;
      }
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E69B68F8]);
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke;
      v25 = &unk_1E7C39ED0;
      v26 = v1;
      v10 = [v12 initWithResolver:&v22];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 392);
    if (v5)
    {
      (*(v5 + 16))(0.05);
    }
  }

  return v3;
}

void __60__FCOfflineANFArticlesFetchOperation__promiseArticleRecords__block_invoke_5(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 shortOperationDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch article records", &v7, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke(uint64_t a1, void *a2, void *a3)
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

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 376);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = 0;
  if (v7)
  {
LABEL_5:
    v7->_maxBatchSize = v14;
    v13 = *(a1 + 32);
  }

LABEL_6:
  if (v13)
  {
    v15 = [*(v13 + 432) internalContentContext];
    v16 = [v15 articleRecordSource];
    v17 = [v16 desiredKeys];

    v18 = [v17 fc_arrayByRemovingObjectsPassingTest:&__block_literal_global_75_3];

    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = 0;
  if (v7)
  {
LABEL_8:
    objc_setProperty_nonatomic_copy(v7, v12, v18, 384);
  }

LABEL_9:

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 456);
  }

  else
  {
    v20 = 0;
  }

  v22 = [v20 fc_arrayByTransformingWithBlock:&__block_literal_global_34_2];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v21, v22, 376);
  }

  v23 = objc_opt_new();
  v24 = objc_opt_new();
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_3;
  newValue[3] = &unk_1E7C38B88;
  v25 = v23;
  v41 = v25;
  v42 = v24;
  v27 = v24;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v26, newValue, 416);
  }

  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_4;
  v35 = &unk_1E7C41838;
  v36 = *(a1 + 32);
  v37 = v25;
  v38 = v6;
  v39 = v5;
  v28 = v5;
  v29 = v25;
  v31 = v6;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v30, &v32, 424);
  }

  [*(a1 + 32) associateChildOperation:{v7, v32, v33, v34, v35, v36}];
  [(FCOperation *)v7 start];
}

id __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 fc_initSafeWithRecordName:v3];

  return v5;
}

void __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
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

void __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_5;
    v29 = &unk_1E7C37778;
    v31 = *(a1 + 48);
    v30 = v3;
    v31[2](v31, v30);

    v4 = v31;
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[57];
    }

    v6 = v5;
    v7 = [v6 count];
    v8 = [*(a1 + 40) count];

    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = *(v9 + 384);
    }

    if (v7 - v8 <= v9)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = [*(a1 + 40) allValues];
      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = *(v14 + 376);
      }

      else
      {
        v15 = 0;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_46;
      v19[3] = &unk_1E7C39308;
      v19[4] = v14;
      v20 = v12;
      v4 = v12;
      [v13 fc_visitSubarraysWithMaxCount:v15 block:v19];

      (*(*(a1 + 56) + 16))(*(a1 + 56), v4, v16, v17, v18);
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_6;
      v21[3] = &unk_1E7C44F10;
      v10 = *(a1 + 40);
      v11 = *(a1 + 32);
      v22 = v10;
      v23 = v11;
      v25 = v7 - v8;
      v24 = *(a1 + 48);
      __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_6(v21);

      v4 = v22;
    }
  }
}

void __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_6(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 fc_setByTransformingWithBlock:&__block_literal_global_41_2];

  v4 = MEMORY[0x1E695DFD8];
  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[57];
  }

  v6 = v5;
  v7 = [v4 setWithArray:v6];
  v8 = [v7 fc_setByMinusingSet:v3];

  v30 = @"FCErrorMissingObjectsDescriptionsKey";
  v31[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v10 = FCOperationLog;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = [*(a1 + 40) shortOperationDescription];
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = *(v18 + 384);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v8 allObjects];
    v21 = [v20 fc_subarrayWithMaxCount:3];
    v22 = 138544130;
    v23 = v16;
    v24 = 2048;
    v25 = v17;
    v26 = 2048;
    v27 = v19;
    v28 = 2114;
    v29 = v21;
    _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "%{public}@ missing too many articles, missing=%lu, max=%lu, sample=%{public}@", &v22, 0x2Au);
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v11 && (*(v11 + 368) & 1) != 0)
  {
    v13 = [MEMORY[0x1E696ABC0] fc_notCachedErrorWithMissingObjects:v8];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] fc_partialFailureErrorWithUserInfo:v9];
  }

  v14 = v13;
  (*(v12 + 16))(v12, v13);

  v15 = *MEMORY[0x1E69E9840];
}

void __67__FCOfflineANFArticlesFetchOperation__promiseFetchedArticleRecords__block_invoke_46(uint64_t a1, void *a2)
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
  v7 = [v6 articleRecordSource];
  v19 = [v7 convertRecords:v5];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 416);
    if (!v9 || (v10 = *(v8 + 456), [v19 enumerateRecordsAndInterestTokensInOrder:v10 withBlock:v9], v10, (v8 = *(a1 + 32)) != 0))
    {
      if (*(v8 + 408))
      {
        v11 = [v19 allRecords];
        v12 = [v11 fc_arrayByTransformingWithBlock:&__block_literal_global_50_2];

        v13 = *(a1 + 32);
        if (v13)
        {
          v14 = *(v13 + 408);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = [FCContentArchive archiveWithChildArchives:v12];
        (v14)[2](v15, v16);
      }
    }
  }

  v17 = *(a1 + 40);
  v18 = [v19 allRecords];
  [v17 addObjectsFromArray:v18];
}

id __66__FCOfflineANFArticlesFetchOperation__promiseCachedArticleRecords__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) allRecordIDs];
  v4 = [v2 setWithArray:v3];

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 456);
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v8 = [v7 fc_setByMinusingSet:v4];

  v9 = FCOperationLog;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = [*(a1 + 40) shortOperationDescription];
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    if (v16)
    {
      v18 = *(v16 + 384);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v8 allObjects];
    v20 = [v19 fc_subarrayWithMaxCount:3];
    v21 = 138544130;
    v22 = v15;
    v23 = 2048;
    v24 = v17;
    v25 = 2048;
    v26 = v18;
    v27 = 2114;
    v28 = v20;
    _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "%{public}@ missing too many articles, missing=%lu, max=%lu, sample=%{public}@", &v21, 0x2Au);
  }

  v10 = objc_alloc(MEMORY[0x1E69B68F8]);
  v11 = [MEMORY[0x1E696ABC0] fc_notCachedErrorWithMissingObjects:v8];
  v12 = [v10 initWithError:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __66__FCOfflineANFArticlesFetchOperation__promiseCachedArticleRecords__block_invoke_54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 400);
  }

  else
  {
    v2 = 0;
  }

  return (*(v2 + 16))();
}

void __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_2;
  v31[3] = &unk_1E7C3B110;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v32 = v8;
  v33 = v9;
  v10 = [v7 fc_array:v31];
  v11 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v10];
  [(FCOperation *)v11 setPurpose:@"offlineDownload"];
  [(FCFetchOperation *)v11 setShouldFailOnMissingObjects:1];
  v12 = *(a1 + 40);
  if (v12)
  {
    if (*(v12 + 368))
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  [(FCFetchOperation *)v11 setCachePolicy:v13];
  v14 = *(a1 + 40);
  if (v14)
  {
    LOBYTE(v14) = *(v14 + 368);
  }

  [(FCFetchOperation *)v11 setCanSendFetchCompletionSynchronously:v14 & 1];
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *(v15 + 376);
  }

  else
  {
    v16 = 0;
  }

  [(FCAssetsFetchOperation *)v11 setMaxConcurrentFetchCount:v16];
  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = *(v17 + 400);
  }

  else
  {
    v18 = 0;
  }

  [(FCAssetsFetchOperation *)v11 setInterestTokenHandler:v18];
  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = *(v19 + 408);
  }

  else
  {
    v20 = 0;
  }

  [(FCAssetsFetchOperation *)v11 setArchiveHandler:v20];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_3;
  v30[3] = &unk_1E7C3B810;
  v30[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v11 setProgressHandler:v30];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_4;
  v26 = &unk_1E7C3B740;
  v27 = *(a1 + 40);
  v28 = v6;
  v29 = v5;
  v21 = v5;
  v22 = v6;
  [(FCFetchOperation *)v11 setFetchCompletionBlock:&v23];
  [*(a1 + 40) associateChildOperation:{v11, v23, v24, v25, v26, v27}];
  [(FCOperation *)v11 start];
}

void __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_2(uint64_t a1, void *a2)
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
          v10 = v9[55];
          v9 = v9[54];
        }

        else
        {
          v10 = 0;
        }

        v11 = v9;
        v12 = v10;
        v13 = [v11 assetManager];
        v14 = FCOfflineThumbnailAssetHandlesForArticleRecord(v8, v12, v13);

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

void __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_3(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 392);
    if (v3)
    {
      v5 = v3;
      v3[2](a2 * 0.2 + 0.05);
    }
  }
}

void __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_5;
    v7[3] = &unk_1E7C39F98;
    v8 = v3;
    v4 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v4;
    __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_5(v7);
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [v3 fetchedObject];
    (*(v5 + 16))(v5, v6);
  }
}

void __75__FCOfflineANFArticlesFetchOperation__promiseThumbnailsFromArticleRecords___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) status] == 1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *(a1 + 48);
    v14 = [*(a1 + 40) errorUserInfo];
    v4 = [v2 fc_operationCancelledErrorWithAdditionalUserInfo:?];
    (*(v3 + 16))(v3, v4);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = v6;
      v12 = [v10 shortOperationDescription];
      v13 = [*(a1 + 32) missingObjectDescriptions];
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch thumbnails: %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) error];
    (*(v7 + 16))(v7, v8);

    v9 = *MEMORY[0x1E69E9840];
  }
}

void __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_2;
  v25[3] = &unk_1E7C44F38;
  v7 = *(a1 + 32);
  v25[4] = *(a1 + 40);
  v8 = [v7 fc_arrayByTransformingWithBlock:v25];
  v9 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v8];
  [(FCOperation *)v9 setPurpose:@"offlineDownload"];
  [(FCFetchOperation *)v9 setShouldFailOnMissingObjects:1];
  v10 = *(a1 + 40);
  if (v10)
  {
    if (*(v10 + 368))
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  [(FCFetchOperation *)v9 setCachePolicy:v11];
  v12 = *(a1 + 40);
  if (v12)
  {
    LOBYTE(v12) = *(v12 + 368);
  }

  [(FCFetchOperation *)v9 setCanSendFetchCompletionSynchronously:v12 & 1];
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = *(v13 + 376);
  }

  else
  {
    v14 = 0;
  }

  [(FCAssetsFetchOperation *)v9 setMaxConcurrentFetchCount:v14];
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *(v15 + 400);
  }

  else
  {
    v16 = 0;
  }

  [(FCAssetsFetchOperation *)v9 setInterestTokenHandler:v16];
  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = *(v17 + 408);
  }

  else
  {
    v18 = 0;
  }

  [(FCAssetsFetchOperation *)v9 setArchiveHandler:v18];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_3;
  v24[3] = &unk_1E7C3B810;
  v24[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v9 setProgressHandler:v24];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_4;
  v21[3] = &unk_1E7C3B740;
  v21[4] = *(a1 + 40);
  v22 = v6;
  v23 = v5;
  v19 = v5;
  v20 = v6;
  [(FCFetchOperation *)v9 setFetchCompletionBlock:v21];
  [*(a1 + 40) associateChildOperation:v9];
  [(FCOperation *)v9 start];
}

id __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_2(uint64_t a1, void *a2)
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
  v6 = [v4 generateFlintDocumentAssetHandleWithAssetManager:v5];

  return v6;
}

void __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_3(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 392);
    if (v3)
    {
      v5 = v3;
      v3[2](a2 * 0.2 + 0.05);
    }
  }
}

void __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_5;
    v7[3] = &unk_1E7C39F98;
    v8 = v3;
    v4 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v4;
    __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_5(v7);
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [v3 fetchedObject];
    (*(v5 + 16))(v5, v6);
  }
}

void __77__FCOfflineANFArticlesFetchOperation__promiseANFDocumentsFromArticleRecords___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) status] == 1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *(a1 + 48);
    v14 = [*(a1 + 40) errorUserInfo];
    v4 = [v2 fc_operationCancelledErrorWithAdditionalUserInfo:?];
    (*(v3 + 16))(v3, v4);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = v6;
      v12 = [v10 shortOperationDescription];
      v13 = [*(a1 + 32) missingObjectDescriptions];
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch ANF documents: %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) error];
    (*(v7 + 16))(v7, v8);

    v9 = *MEMORY[0x1E69E9840];
  }
}

void __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DFD8];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_2;
  v31[3] = &unk_1E7C399D0;
  v32 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v33 = v8;
  v34 = v9;
  v10 = [v7 fc_set:v31];
  v11 = [FCResourcesFetchOperation alloc];
  v12 = a1[6];
  if (v12)
  {
    v12 = v12[54];
  }

  v13 = v12;
  v14 = [v10 allObjects];
  v15 = [(FCResourcesFetchOperation *)v11 initWithContext:v13 resourceIDs:v14 downloadAssets:1];

  [(FCOperation *)v15 setPurpose:@"offlineDownload"];
  v16 = a1[6];
  if (v16)
  {
    v17 = v16[47];
  }

  else
  {
    v17 = 0;
  }

  [(FCResourcesFetchOperation *)v15 setMaxConcurrentFetchCount:v17];
  [(FCFetchOperation *)v15 setShouldFailOnMissingObjects:1];
  v18 = a1[6];
  if (v18)
  {
    if (v18[368])
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  [(FCFetchOperation *)v15 setCachePolicy:v19];
  v20 = a1[6];
  if (v20)
  {
    LOBYTE(v20) = v20[368];
  }

  [(FCFetchOperation *)v15 setCanSendFetchCompletionSynchronously:v20 & 1];
  v21 = a1[6];
  if (v21)
  {
    v22 = v21[50];
  }

  else
  {
    v22 = 0;
  }

  [(FCResourcesFetchOperation *)v15 setInterestTokenHandler:v22];
  v23 = a1[6];
  if (v23)
  {
    v24 = v23[51];
  }

  else
  {
    v24 = 0;
  }

  [(FCResourcesFetchOperation *)v15 setArchiveHandler:v24];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_70;
  v30[3] = &unk_1E7C3B810;
  v30[4] = a1[6];
  [(FCResourcesFetchOperation *)v15 setProgressHandler:v30];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_2_71;
  v27[3] = &unk_1E7C3B740;
  v27[4] = a1[6];
  v28 = v6;
  v29 = v5;
  v25 = v5;
  v26 = v6;
  [(FCFetchOperation *)v15 setFetchCompletionBlock:v27];
  [a1[6] associateChildOperation:v15];
  [(FCOperation *)v15 start];
}

void __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v6 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v35 + 1) + 8 * v7) flintFontResourceIDs];
        [v3 fc_safelyAddObjects:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v5);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = *(v24 + 40);
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v10)
  {
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 dataProvider];
        v16 = [v15 data];

        if (v16)
        {
          v17 = *(v24 + 48);
          if (v17)
          {
            v17 = v17[56];
          }

          v18 = v17;
          v19 = [v18 manifestFromANFDocumentData:v16];

          if (v19)
          {
            v20 = [v19 nonImageResourceIDs];
            [v3 fc_safelyAddObjects:v20];

            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_3;
            v29[3] = &unk_1E7C3C728;
            v29[4] = *(v24 + 48);
            v30 = v19;
            v21 = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_3(v29);
            v28[0] = 0;
            v28[1] = v28;
            v28[2] = 0x2020000000;
            v28[3] = 0;
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_65;
            v25[3] = &unk_1E7C44F88;
            v22 = *(v24 + 48);
            v27 = v28;
            v25[4] = v22;
            v26 = v3;
            [v21 enumerateObjectsUsingBlock:v25];

            _Block_object_dispose(v28, 8);
          }
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x1E69E9840];
}

id __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 440);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 useSmallestArticleImages])
  {
    v4 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 shortOperationDescription];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will download the smallest variant of each article image", &v11, 0xCu);
    }

    v8 = [*(a1 + 40) smallestImageResourceIDs];
  }

  else
  {
    v8 = [*(a1 + 40) optimalImageResourceIDs];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_65(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 440);
  }

  else
  {
    v9 = 0;
  }

  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7 >= [v9 maxImagesPerArticle])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_2_66;
    v11[3] = &unk_1E7C44F60;
    v10 = *(a1 + 48);
    v11[4] = *(a1 + 32);
    v11[5] = v10;
    v11[6] = a4;
    __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_2_66(v11);
  }

  else
  {
    [*(a1 + 40) addObject:v6];
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_2_66(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will limit the number of article images to %lld", &v8, 0x16u);
  }

  **(a1 + 48) = 1;
  v7 = *MEMORY[0x1E69E9840];
}

void __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_70(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 392);
    if (v3)
    {
      v5 = v3;
      v3[2](a2 * 0.75 + 0.25);
    }
  }
}

void __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_2_71(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_3_72;
    v7[3] = &unk_1E7C39F98;
    v8 = v3;
    v4 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v4;
    __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_3_72(v7);
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [v3 fetchedObject];
    (*(v5 + 16))(v5, v6);
  }
}

void __93__FCOfflineANFArticlesFetchOperation__promiseANFResourcesFromArticleRecords_anfAssetHandles___block_invoke_3_72(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) status] == 1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *(a1 + 48);
    v14 = [*(a1 + 40) errorUserInfo];
    v4 = [v2 fc_operationCancelledErrorWithAdditionalUserInfo:?];
    (*(v3 + 16))(v3, v4);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = v6;
      v12 = [v10 shortOperationDescription];
      v13 = [*(a1 + 32) missingObjectDescriptions];
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch ANF resources: %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) error];
    (*(v7 + 16))(v7, v8);

    v9 = *MEMORY[0x1E69E9840];
  }
}

@end