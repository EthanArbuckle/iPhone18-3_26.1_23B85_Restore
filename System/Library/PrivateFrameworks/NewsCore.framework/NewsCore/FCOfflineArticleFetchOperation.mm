@interface FCOfflineArticleFetchOperation
- (BOOL)validateOperation;
- (FCOfflineArticleFetchOperation)initWithContext:(id)context ANFHelper:(id)helper articleID:(id)d;
- (void)_handleArchive:(void *)archive;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCOfflineArticleFetchOperation

- (FCOfflineArticleFetchOperation)initWithContext:(id)context ANFHelper:(id)helper articleID:(id)d
{
  contextCopy = context;
  helperCopy = helper;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = FCOfflineArticleFetchOperation;
  v12 = [(FCOperation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_ANFHelper, helper);
    v14 = [dCopy copy];
    articleID = v13->_articleID;
    v13->_articleID = v14;

    v16 = objc_alloc_init(FCThreadSafeMutableArray);
    resultInterestTokens = v13->_resultInterestTokens;
    v13->_resultInterestTokens = v16;
  }

  return v13;
}

- (BOOL)validateOperation
{
  v19 = *MEMORY[0x1E69E9840];
  if (self && self->_context)
  {
    v3 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline article fetch operation requires a context"];
      v11 = 136315906;
      v12 = "[FCOfflineArticleFetchOperation validateOperation]";
      v13 = 2080;
      v14 = "FCOfflineArticleFetchOperation.m";
      v15 = 1024;
      v16 = 82;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }

    v3 = 0;
    if (!self)
    {
LABEL_9:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline article fetch operation requires a flint helper"];
        v11 = 136315906;
        v12 = "[FCOfflineArticleFetchOperation validateOperation]";
        v13 = 2080;
        v14 = "FCOfflineArticleFetchOperation.m";
        v15 = 1024;
        v16 = 86;
        v17 = 2114;
        v18 = v9;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
      }

      v4 = 0;
      if (!self)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  if (!self->_ANFHelper)
  {
    goto LABEL_9;
  }

  v4 = 1;
LABEL_12:
  if (self->_articleID)
  {
    v5 = 1;
    goto LABEL_17;
  }

LABEL_14:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline article fetch operation requires an article ID"];
    v11 = 136315906;
    v12 = "[FCOfflineArticleFetchOperation validateOperation]";
    v13 = 2080;
    v14 = "FCOfflineArticleFetchOperation.m";
    v15 = 1024;
    v16 = 90;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  v5 = 0;
LABEL_17:
  v6 = *MEMORY[0x1E69E9840];
  return v5 & v4 & v3;
}

- (void)prepareOperation
{
  selfCopy = self;
  if (self)
  {
    self = self->_context;
  }

  appConfigurationManager = [(FCOfflineArticleFetchOperation *)self appConfigurationManager];
  possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];
  offlineDownloadsConfig = [possiblyUnfetchedAppConfiguration offlineDownloadsConfig];
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_config, offlineDownloadsConfig);
  }
}

- (void)performOperation
{
  v45 = *MEMORY[0x1E69E9840];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__73;
  v33[4] = __Block_byref_object_dispose__73;
  v34 = 0;
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    if ([(FCOfflineArticleFetchOperation *)self cachedOnly])
    {
      v5 = @"lookup cached";
    }

    else
    {
      v5 = @"fetch";
    }

    if (self)
    {
      v6 = self->_articleID;
      config = self->_config;
      v25 = v6;
    }

    else
    {
      v6 = 0;
      v25 = 0;
      config = 0;
    }

    v8 = config;
    if ([(FCOfflineDownloadsConfiguration *)v8 useSmallestArticleThumbnails])
    {
      v9 = @"small";
    }

    else
    {
      v9 = @"normal";
    }

    if (self)
    {
      v10 = self->_config;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    useSmallestArticleImages = [(FCOfflineDownloadsConfiguration *)v11 useSmallestArticleImages];
    *buf = 138544386;
    if (useSmallestArticleImages)
    {
      v13 = @"small";
    }

    else
    {
      v13 = @"normal";
    }

    v36 = shortOperationDescription;
    v37 = 2114;
    v38 = v5;
    v39 = 2114;
    v40 = v6;
    v41 = 2114;
    v42 = v9;
    v43 = 2114;
    v44 = v13;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will %{public}@ article id=%{public}@, thumbnail variant=%{public}@, image variant=%{public}@", buf, 0x34u);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __50__FCOfflineArticleFetchOperation_performOperation__block_invoke;
  v32[3] = &unk_1E7C396C0;
  v32[4] = self;
  v26 = [MEMORY[0x1E69B68F8] firstly:v32];
  v14 = zalgo();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __50__FCOfflineArticleFetchOperation_performOperation__block_invoke_2;
  v31[3] = &unk_1E7C45510;
  v31[4] = self;
  v31[5] = v33;
  v15 = [v26 thenOn:v14 then:v31];
  v16 = zalgo();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __50__FCOfflineArticleFetchOperation_performOperation__block_invoke_3;
  v30[3] = &unk_1E7C45538;
  v30[4] = self;
  v30[5] = v33;
  v17 = [v15 thenOn:v16 then:v30];
  v18 = zalgo();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __50__FCOfflineArticleFetchOperation_performOperation__block_invoke_4;
  v29[3] = &unk_1E7C45538;
  v29[4] = self;
  v29[5] = v33;
  v19 = [v17 thenOn:v18 then:v29];
  v20 = zalgo();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__FCOfflineArticleFetchOperation_performOperation__block_invoke_5;
  v28[3] = &unk_1E7C403D8;
  v28[4] = self;
  v21 = [v19 thenOn:v20 then:v28];
  v22 = zalgo();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __50__FCOfflineArticleFetchOperation_performOperation__block_invoke_6;
  v27[3] = &unk_1E7C36E50;
  v27[4] = self;
  v23 = [v21 errorOn:v22 error:v27];

  _Block_object_dispose(v33, 8);
  v24 = *MEMORY[0x1E69E9840];
}

id __50__FCOfflineArticleFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E69B68F8]);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke;
    v5[3] = &unk_1E7C39ED0;
    v5[4] = v1;
    v3 = [v2 initWithResolver:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__FCOfflineArticleFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = v6;
  if (v5)
  {
    if ([v6 contentType] == 2)
    {
      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__FCOfflineArticleFetchOperation__promiseANFForHeadline___block_invoke_2;
      v15[3] = &unk_1E7C3B310;
      v15[4] = v5;
      v16 = v7;
      v9 = [v8 initWithResolver:v15];
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v17[0] = *MEMORY[0x1E696A578];
      v15[0] = @"Offline downloads are only supported for ANF articles.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v17 count:1];
      v12 = [v10 errorWithDomain:@"FCErrorDomain" code:42 userInfo:v11];

      v9 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithError:v12];
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

id __50__FCOfflineArticleFetchOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    if ([*(v1 + 448) automaticRecipeDownloadsEnabled])
    {
      v3 = [v2 recipeIDs];
      v4 = [v3 count];

      v5 = objc_alloc(MEMORY[0x1E69B68F8]);
      if (v4)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __61__FCOfflineArticleFetchOperation__promiseRecipesForHeadline___block_invoke_3;
        v9[3] = &unk_1E7C3B310;
        v9[4] = v1;
        v10 = v2;
        v6 = [v5 initWithResolver:v9];

        goto LABEL_7;
      }
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E69B68F8]);
    }

    v7 = objc_opt_new();
    v6 = [v5 initWithValue:v7];
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

id __50__FCOfflineArticleFetchOperation_performOperation__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(*(*(a1 + 40) + 8) + 40) parentIssue];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
      v5 = objc_alloc(MEMORY[0x1E69B68F8]);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __64__FCOfflineArticleFetchOperation__promiseIssueCoverForHeadline___block_invoke_2;
      v11[3] = &unk_1E7C3B310;
      v12 = v4;
      v13 = v1;
      v6 = v4;
      v7 = [v5 initWithResolver:v11];
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v9 = objc_opt_new();
      v7 = [v8 initWithValue:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionQueue = [(FCOfflineArticleFetchOperation *)self fetchCompletionQueue];

  fetchCompletionHandler = [(FCOfflineArticleFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionQueue)
  {
    if (fetchCompletionHandler)
    {
      fetchCompletionQueue2 = [(FCOfflineArticleFetchOperation *)self fetchCompletionQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__FCOfflineArticleFetchOperation_operationWillFinishWithError___block_invoke;
      v12[3] = &unk_1E7C36C58;
      v12[4] = self;
      v13 = errorCopy;
      dispatch_async(fetchCompletionQueue2, v12);
    }
  }

  else if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCOfflineArticleFetchOperation *)self fetchCompletionHandler];
    if (self)
    {
      resultInterestTokens = self->_resultInterestTokens;
    }

    else
    {
      resultInterestTokens = 0;
    }

    v10 = resultInterestTokens;
    readOnlyArray = [(FCThreadSafeMutableArray *)v10 readOnlyArray];
    (fetchCompletionHandler2)[2](fetchCompletionHandler2, readOnlyArray, errorCopy);
  }
}

void __63__FCOfflineArticleFetchOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
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

void __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [FCArticleHeadlinesFetchOperation alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8[53];
    v8 = v8[55];
  }

  else
  {
    v9 = 0;
  }

  v27[0] = v8;
  v10 = MEMORY[0x1E695DEC8];
  v11 = v8;
  v12 = v9;
  v13 = [v10 arrayWithObjects:v27 count:1];
  v14 = [(FCArticleHeadlinesFetchOperation *)v7 initWithContext:v12 articleIDs:v13 ignoreCacheForArticleIDs:0];

  [(FCFetchOperation *)v14 setShouldFailOnMissingObjects:1];
  if ([*(a1 + 32) cachedOnly])
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [(FCFetchOperation *)v14 setCachePolicy:v15];
  -[FCFetchOperation setCanSendFetchCompletionSynchronously:](v14, "setCanSendFetchCompletionSynchronously:", [*(a1 + 32) cachedOnly]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke_2;
  v26[3] = &unk_1E7C40478;
  v26[4] = *(a1 + 32);
  [(FCArticleHeadlinesFetchOperation *)v14 setInterestTokenHandler:v26];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke_3;
  v22 = &unk_1E7C3B740;
  v23 = *(a1 + 32);
  v24 = v6;
  v25 = v5;
  v16 = v5;
  v17 = v6;
  [(FCFetchOperation *)v14 setFetchCompletionBlock:&v19];
  [*(a1 + 32) associateChildOperation:{v14, v19, v20, v21, v22, v23}];
  [(FCOperation *)v14 start];

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke_2(uint64_t result, uint64_t a2)
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

void __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke_4;
    v15[3] = &unk_1E7C39F98;
    v16 = v3;
    v4 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = v4;
    __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke_4(v15);
  }

  else
  {
    v5 = [v3 fetchedObject];
    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      if ([v6 conformsToProtocol:&unk_1F2E828A8])
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

    v10 = *(a1 + 32);
    v11 = [v9 contentArchive];
    [(FCOfflineArticleFetchOperation *)v10 _handleArchive:v11];

    v12 = *(a1 + 48);
    v13 = [v3 fetchedObject];
    v14 = [v13 firstObject];
    (*(v12 + 16))(v12, v14);
  }
}

void __50__FCOfflineArticleFetchOperation__promiseHeadline__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  v3 = *(a1 + 48);
  if (v2 == 2)
  {
    v6 = MEMORY[0x1E696ABC0];
    v8 = [*(a1 + 32) missingObjectDescriptions];
    v5 = [v6 fc_notCachedErrorWithMissingObjects:?];
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v4 = MEMORY[0x1E696ABC0];
    v8 = [*(a1 + 40) errorUserInfo];
    v5 = [v4 fc_operationCancelledErrorWithAdditionalUserInfo:?];
LABEL_5:
    v7 = v5;
    (*(v3 + 16))(v3, v5);

    goto LABEL_7;
  }

  v8 = [*(a1 + 32) error];
  (*(v3 + 16))(v3);
LABEL_7:
}

- (void)_handleArchive:(void *)archive
{
  v3 = a2;
  v4 = v3;
  if (archive && v3)
  {
    archiveQueue = [archive archiveQueue];

    archiveHandler = [archive archiveHandler];

    if (archiveQueue)
    {
      if (archiveHandler)
      {
        archiveQueue2 = [archive archiveQueue];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __49__FCOfflineArticleFetchOperation__handleArchive___block_invoke_2;
        v9[3] = &unk_1E7C36C58;
        v9[4] = archive;
        v10 = v4;
        dispatch_async(archiveQueue2, v9);
      }
    }

    else if (archiveHandler)
    {
      archiveHandler2 = [archive archiveHandler];
      (archiveHandler2)[2](archiveHandler2, v4);
    }
  }
}

void __57__FCOfflineArticleFetchOperation__promiseANFForHeadline___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [FCOfflineANFArticlesFetchOperation alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8[53];
    v10 = v8[56];
    v8 = v8[54];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v31[0] = *(a1 + 40);
  v11 = MEMORY[0x1E695DEC8];
  v12 = v8;
  v13 = v10;
  v14 = v9;
  v15 = [v11 arrayWithObjects:v31 count:1];
  v16 = [(FCOfflineANFArticlesFetchOperation *)&v7->super.super.super.isa initWithContext:v14 config:v13 ANFHelper:v12 headlines:v15];

  if (v16)
  {
    v16[47] = 20;
    *(v16 + 368) = [*(a1 + 32) cachedOnly];
  }

  else
  {
    [*(a1 + 32) cachedOnly];
  }

  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __57__FCOfflineArticleFetchOperation__promiseANFForHeadline___block_invoke_3;
  newValue[3] = &unk_1E7C40478;
  v18 = *(a1 + 32);
  newValue[4] = v18;
  if (v16)
  {
    objc_setProperty_nonatomic_copy(v16, v17, newValue, 400);
    v18 = *(a1 + 32);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __57__FCOfflineArticleFetchOperation__promiseANFForHeadline___block_invoke_4;
  v29[3] = &unk_1E7C404A0;
  v29[4] = v18;
  if (v16)
  {
    objc_setProperty_nonatomic_copy(v16, v17, v29, 408);
  }

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __57__FCOfflineArticleFetchOperation__promiseANFForHeadline___block_invoke_5;
  v26 = &unk_1E7C3F590;
  v27 = v6;
  v28 = v5;
  v19 = v5;
  v21 = v6;
  if (v16)
  {
    objc_setProperty_nonatomic_copy(v16, v20, &v23, 424);
  }

  [*(a1 + 32) associateChildOperation:{v16, v23, v24, v25, v26}];
  [v16 start];

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __57__FCOfflineArticleFetchOperation__promiseANFForHeadline___block_invoke_3(uint64_t result, uint64_t a2)
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

void __57__FCOfflineArticleFetchOperation__promiseANFForHeadline___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = *(a1 + 32);
    v6 = v3;
    v7[2](v7, v6);
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = objc_opt_new();
    (*(v4 + 16))(v4, v5);
  }
}

void __61__FCOfflineArticleFetchOperation__promiseRecipesForHeadline___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [FCOfflineRecipesFetchOperation alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[53];
  }

  v9 = *(a1 + 40);
  v10 = v8;
  v11 = [v9 recipeIDs];
  v12 = [(FCOfflineRecipesFetchOperation *)v7 initWithContext:v10 recipeIDs:v11];

  [(FCOfflineRecipesFetchOperation *)v12 setMaxBatchSize:20];
  -[FCOfflineRecipesFetchOperation setCachedOnly:](v12, "setCachedOnly:", [*(a1 + 32) cachedOnly]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__FCOfflineArticleFetchOperation__promiseRecipesForHeadline___block_invoke_4;
  v22[3] = &unk_1E7C404A0;
  v22[4] = *(a1 + 32);
  [(FCOfflineRecipesFetchOperation *)v12 setArchiveHandler:v22];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __61__FCOfflineArticleFetchOperation__promiseRecipesForHeadline___block_invoke_5;
  v18 = &unk_1E7C45560;
  v19 = *(a1 + 32);
  v20 = v6;
  v21 = v5;
  v13 = v5;
  v14 = v6;
  [(FCOfflineRecipesFetchOperation *)v12 setFetchCompletionHandler:&v15];
  [*(a1 + 32) associateChildOperation:{v12, v15, v16, v17, v18, v19}];
  [(FCOperation *)v12 start];
}

void __61__FCOfflineArticleFetchOperation__promiseRecipesForHeadline___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v11 = *(a1 + 40);
    v10 = v6;
    v11[2](v11, v10);
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        [*(v7 + 456) addObject:v5];
      }
    }

    v8 = *(a1 + 48);
    v9 = objc_opt_new();
    (*(v8 + 16))(v8, v9);
  }
}

void __64__FCOfflineArticleFetchOperation__promiseIssueCoverForHeadline___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [FCAssetsFetchOperation alloc];
  v8 = [*(a1 + 32) coverImageAssetHandle];
  v9 = [(FCAssetsFetchOperation *)v7 initWithAssetHandle:v8];

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
  -[FCFetchOperation setCanSendFetchCompletionSynchronously:](v9, "setCanSendFetchCompletionSynchronously:", [*(a1 + 40) cachedOnly]);
  [(FCFetchOperation *)v9 setShouldFailOnMissingObjects:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__FCOfflineArticleFetchOperation__promiseIssueCoverForHeadline___block_invoke_3;
  v20[3] = &unk_1E7C40478;
  v20[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v9 setInterestTokenHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__FCOfflineArticleFetchOperation__promiseIssueCoverForHeadline___block_invoke_4;
  v19[3] = &unk_1E7C404A0;
  v19[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v9 setArchiveHandler:v19];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __64__FCOfflineArticleFetchOperation__promiseIssueCoverForHeadline___block_invoke_5;
  v16 = &unk_1E7C404C8;
  v17 = v5;
  v18 = v6;
  v11 = v6;
  v12 = v5;
  [(FCFetchOperation *)v9 setFetchCompletionBlock:&v13];
  [*(a1 + 40) associateChildOperation:{v9, v13, v14, v15, v16}];
  [(FCOperation *)v9 start];
}

uint64_t __64__FCOfflineArticleFetchOperation__promiseIssueCoverForHeadline___block_invoke_3(uint64_t result, uint64_t a2)
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

void __64__FCOfflineArticleFetchOperation__promiseIssueCoverForHeadline___block_invoke_5(uint64_t a1, void *a2)
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

void __49__FCOfflineArticleFetchOperation__handleArchive___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) archiveHandler];
  v2[2](v2, *(a1 + 40));
}

@end