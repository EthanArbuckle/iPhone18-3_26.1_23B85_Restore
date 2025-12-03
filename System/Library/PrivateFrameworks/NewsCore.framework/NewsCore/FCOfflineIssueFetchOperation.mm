@interface FCOfflineIssueFetchOperation
- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after;
- (BOOL)validateOperation;
- (FCOfflineIssueFetchOperation)init;
- (FCOfflineIssueFetchOperation)initWithContext:(id)context ANFHelper:(id)helper issue:(id)issue;
- (FCOfflineIssueFetchOperation)initWithContext:(id)context ANFHelper:(id)helper issueID:(id)d;
- (id)_itemIdentifiersForKey:(void *)key fromMetadataJSONData:;
- (id)_promiseANFArticlesForArticleIDs:(void *)ds withDownloadProgressMin:(void *)min downloadProgressMax:(double)max;
- (void)_handleArchive:(void *)archive;
- (void)_updateProgress:(double *)progress;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)resetForRetry;
@end

@implementation FCOfflineIssueFetchOperation

- (FCOfflineIssueFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCOfflineIssueFetchOperation init]";
    v10 = 2080;
    v11 = "FCOfflineIssueFetchOperation.m";
    v12 = 1024;
    v13 = 81;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCOfflineIssueFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCOfflineIssueFetchOperation)initWithContext:(id)context ANFHelper:(id)helper issueID:(id)d
{
  contextCopy = context;
  helperCopy = helper;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = FCOfflineIssueFetchOperation;
  v12 = [(FCOperation *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_ANFHelper, helper);
    v14 = [dCopy copy];
    issueID = v13->_issueID;
    v13->_issueID = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    recipeIDs = v13->_recipeIDs;
    v13->_recipeIDs = v16;

    v18 = objc_alloc_init(FCThreadSafeMutableArray);
    resultInterestTokens = v13->_resultInterestTokens;
    v13->_resultInterestTokens = v18;
  }

  return v13;
}

- (FCOfflineIssueFetchOperation)initWithContext:(id)context ANFHelper:(id)helper issue:(id)issue
{
  helperCopy = helper;
  contextCopy = context;
  identifier = [issue identifier];
  v11 = [(FCOfflineIssueFetchOperation *)self initWithContext:contextCopy ANFHelper:helperCopy issueID:identifier];

  return v11;
}

- (BOOL)validateOperation
{
  v14 = *MEMORY[0x1E69E9840];
  if (self && self->_context)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline issue fetch operation requires a context"];
      v6 = 136315906;
      v7 = "[FCOfflineIssueFetchOperation validateOperation]";
      v8 = 2080;
      v9 = "FCOfflineIssueFetchOperation.m";
      v10 = 1024;
      v11 = 113;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);

      LOBYTE(v2) = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)prepareOperation
{
  selfCopy = self;
  if (self)
  {
    self = self->_context;
  }

  appConfigurationManager = [(FCOfflineIssueFetchOperation *)self appConfigurationManager];
  possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];
  offlineDownloadsConfig = [possiblyUnfetchedAppConfiguration offlineDownloadsConfig];
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_config, offlineDownloadsConfig);
  }
}

- (void)performOperation
{
  v48 = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__88;
  v36[4] = __Block_byref_object_dispose__88;
  v37 = 0;
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    if ([(FCOfflineIssueFetchOperation *)self cachedOnly])
    {
      v5 = @"lookup cached";
    }

    else
    {
      v5 = @"fetch";
    }

    if (self)
    {
      v6 = self->_issueID;
      config = self->_config;
      v27 = v6;
    }

    else
    {
      v6 = 0;
      v27 = 0;
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

    v39 = shortOperationDescription;
    v40 = 2114;
    v41 = v5;
    v42 = 2114;
    v43 = v6;
    v44 = 2114;
    v45 = v9;
    v46 = 2114;
    v47 = v13;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will %{public}@ issue id=%{public}@, thumbnail variant=%{public}@, image variant=%{public}@", buf, 0x34u);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __48__FCOfflineIssueFetchOperation_performOperation__block_invoke;
  v35[3] = &unk_1E7C396C0;
  v35[4] = self;
  v28 = [MEMORY[0x1E69B68F8] firstly:v35];
  v26 = zalgo();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_2;
  v34[3] = &unk_1E7C474A8;
  v34[4] = self;
  v34[5] = v36;
  v25 = [v28 thenOn:v26 then:v34];
  v14 = zalgo();
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_3;
  v33[3] = &unk_1E7C474D0;
  v33[4] = self;
  v33[5] = v36;
  v15 = [v25 thenOn:v14 then:v33];
  v16 = zalgo();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_4;
  v32[3] = &unk_1E7C474D0;
  v32[4] = self;
  v32[5] = v36;
  v17 = [v15 thenOn:v16 then:v32];
  v18 = zalgo();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_27;
  v31[3] = &unk_1E7C45538;
  v31[4] = self;
  v31[5] = v36;
  v19 = [v17 thenOn:v18 then:v31];
  v20 = zalgo();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_2_29;
  v30[3] = &unk_1E7C403D8;
  v30[4] = self;
  v21 = [v19 thenOn:v20 then:v30];
  v22 = zalgo();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_3_30;
  v29[3] = &unk_1E7C36E50;
  v29[4] = self;
  v23 = [v21 errorOn:v22 error:v29];

  _Block_object_dispose(v36, 8);
  v24 = *MEMORY[0x1E69E9840];
}

id __48__FCOfflineIssueFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E69B68F8]);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__FCOfflineIssueFetchOperation__promiseIssue__block_invoke;
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

id __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = v4;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69B68F8]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke;
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

id __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__FCOfflineIssueFetchOperation__promiseCoverImageForIssue___block_invoke;
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

id __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_4(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [*(*(*(a1 + 40) + 8) + 40) type];
  if (v3 == 1)
  {
    v20 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = [v21 shortOperationDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ will download PDF pages", &buf, 0xCu);
    }

    v24 = *(a1 + 32);
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (!v24)
    {
      v1 = 0;
      goto LABEL_15;
    }

    v25 = objc_alloc(MEMORY[0x1E69B68F8]);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v32 = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke;
    v33 = &unk_1E7C3B310;
    v34 = v12;
    v35 = v24;
    v26 = [v25 initWithResolver:&buf];
    goto LABEL_13;
  }

  if (v3)
  {
    goto LABEL_16;
  }

  v4 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will download ANF pages", &buf, 0xCu);
  }

  v8 = [*(*(*(a1 + 40) + 8) + 40) metadataJSONAssetHandle];
  v9 = [v8 dataProvider];

  v1 = *(a1 + 32);
  v10 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    v11 = v10;
    v12 = v11;
    if (!v1)
    {
LABEL_15:

      goto LABEL_16;
    }

    v13 = [v11 metadataJSONAssetHandle];
    v14 = [v13 dataProvider];

    if (v14)
    {
      v15 = MEMORY[0x1E69B68F8];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v32 = __57__FCOfflineIssueFetchOperation__promiseANFPagesForIssue___block_invoke_2;
      v33 = &unk_1E7C3AE08;
      v34 = v1;
      v16 = v12;
      v35 = v16;
      v17 = [v15 firstly:&buf];
      v18 = zalgo();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __57__FCOfflineIssueFetchOperation__promiseANFPagesForIssue___block_invoke_3;
      v29[3] = &unk_1E7C47520;
      v29[4] = v1;
      v30 = v16;
      v1 = [v17 thenOn:v18 then:v29];

      v19 = v35;
LABEL_14:

      goto LABEL_15;
    }

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v32 = __57__FCOfflineIssueFetchOperation__promiseANFPagesForIssue___block_invoke;
    v33 = &unk_1E7C396C0;
    v34 = v12;
    v26 = __57__FCOfflineIssueFetchOperation__promiseANFPagesForIssue___block_invoke(&buf);
LABEL_13:
    v1 = v26;
    v19 = v34;
    goto LABEL_14;
  }

  if (v1)
  {
    v12 = [v10 allArticleIDs];
    v1 = [FCOfflineIssueFetchOperation _promiseANFArticlesForArticleIDs:v1 withDownloadProgressMin:v12 downloadProgressMax:1.0];
    goto LABEL_15;
  }

LABEL_16:
  v27 = *MEMORY[0x1E69E9840];

  return v1;
}

id __48__FCOfflineIssueFetchOperation_performOperation__block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    if ([*(v1 + 448) automaticRecipeDownloadsEnabled])
    {
      v3 = [*(v1 + 456) count];
      v4 = objc_alloc(MEMORY[0x1E69B68F8]);
      v5 = v4;
      if (v3)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __56__FCOfflineIssueFetchOperation__promiseRecipesForIssue___block_invoke_3;
        v9[3] = &unk_1E7C39ED0;
        v9[4] = v1;
        v6 = [v4 initWithResolver:v9];
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

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [(FCOfflineIssueFetchOperation *)self _updateProgress:?];
  }

  fetchCompletionQueue = [(FCOfflineIssueFetchOperation *)self fetchCompletionQueue];

  fetchCompletionHandler = [(FCOfflineIssueFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionQueue)
  {
    if (fetchCompletionHandler)
    {
      fetchCompletionQueue2 = [(FCOfflineIssueFetchOperation *)self fetchCompletionQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __61__FCOfflineIssueFetchOperation_operationWillFinishWithError___block_invoke;
      v12[3] = &unk_1E7C36C58;
      v12[4] = self;
      v13 = errorCopy;
      dispatch_async(fetchCompletionQueue2, v12);
    }
  }

  else if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCOfflineIssueFetchOperation *)self fetchCompletionHandler];
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

- (void)_updateProgress:(double *)progress
{
  v18 = *MEMORY[0x1E69E9840];
  if (progress && ([progress isFinished] & 1) == 0)
  {
    if (progress[59] > a2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fetch progress should never go backward"];
      *buf = 136315906;
      v11 = "[FCOfflineIssueFetchOperation _updateProgress:]";
      v12 = 2080;
      v13 = "FCOfflineIssueFetchOperation.m";
      v14 = 1024;
      v15 = 696;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    progress[59] = a2;
    progressQueue = [progress progressQueue];

    progressHandler = [progress progressHandler];

    if (progressQueue)
    {
      if (progressHandler)
      {
        progressQueue2 = [progress progressQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48__FCOfflineIssueFetchOperation__updateProgress___block_invoke_120;
        block[3] = &unk_1E7C36EA0;
        block[4] = progress;
        dispatch_async(progressQueue2, block);
LABEL_11:
      }
    }

    else if (progressHandler)
    {
      progressQueue2 = [progress progressHandler];
      (*(progressQueue2 + 16))(progress[59]);
      goto LABEL_11;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __61__FCOfflineIssueFetchOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) fetchCompletionHandler];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[58];
  }

  v3 = v2;
  v4 = [v3 readOnlyArray];
  v5[2](v5, v4, *(a1 + 40));
}

- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after
{
  errorCopy = error;
  if ([(FCOfflineIssueFetchOperation *)self cachedOnly])
  {
    goto LABEL_6;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:@"FCErrorDomain"])
  {

    goto LABEL_6;
  }

  code = [errorCopy code];

  if (code != 21)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  *after = objc_opt_new();
  v9 = 1;
LABEL_7:

  return v9;
}

- (void)resetForRetry
{
  v3 = +[FCCachePolicy ignoreCacheCachePolicy];
  v4 = v3;
  if (self)
  {
    v5 = v3;
    objc_storeStrong(&self->_issueRecordCachePolicy, v3);
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

void __45__FCOfflineIssueFetchOperation__promiseIssue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [FCIssuesFetchOperation alloc];
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

  v29[0] = v8;
  v10 = MEMORY[0x1E695DEC8];
  v11 = v8;
  v12 = v9;
  v13 = [v10 arrayWithObjects:v29 count:1];
  v14 = [(FCIssuesFetchOperation *)v7 initWithContext:v12 issueIDs:v13];

  if ([*(a1 + 32) cachedOnly])
  {
    v15 = +[FCCachePolicy cachedOnlyCachePolicy];
    [(FCIssuesFetchOperation *)v14 setCachePolicy:v15];
  }

  else
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = *(v16 + 480);
    }

    else
    {
      v17 = 0;
    }

    [(FCIssuesFetchOperation *)v14 setCachePolicy:v17];
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __45__FCOfflineIssueFetchOperation__promiseIssue__block_invoke_2;
  v28[3] = &unk_1E7C40478;
  v28[4] = *(a1 + 32);
  [(FCIssuesFetchOperation *)v14 setInterestTokenHandler:v28];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __45__FCOfflineIssueFetchOperation__promiseIssue__block_invoke_3;
  v24 = &unk_1E7C474F8;
  v25 = *(a1 + 32);
  v26 = v6;
  v27 = v5;
  v18 = v5;
  v19 = v6;
  [(FCIssuesFetchOperation *)v14 setFetchCompletionHandler:&v21];
  [*(a1 + 32) associateChildOperation:{v14, v21, v22, v23, v24, v25}];
  [(FCOperation *)v14 start];

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __45__FCOfflineIssueFetchOperation__promiseIssue__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 464) addObject:a2];
    }
  }

  return result;
}

void __45__FCOfflineIssueFetchOperation__promiseIssue__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v13 = *(a1 + 40);
    v12 = v6;
    v13[2](v13, v12);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v5 firstObject];
    v9 = [v8 contentArchive];
    [(FCOfflineIssueFetchOperation *)v7 _handleArchive:v9];

    v10 = *(a1 + 48);
    v11 = [v5 firstObject];
    (*(v10 + 16))(v10, v11);
  }
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
        v9[2] = __47__FCOfflineIssueFetchOperation__handleArchive___block_invoke_2;
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

void __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) metadataJSONAssetHandle];

  if (v7)
  {
    v8 = [FCAssetsFetchOperation alloc];
    v9 = [*(a1 + 32) metadataJSONAssetHandle];
    v10 = [(FCAssetsFetchOperation *)v8 initWithAssetHandle:v9];

    [(FCOperation *)v10 setPurpose:@"offlineDownload"];
    if ([*(a1 + 40) cachedOnly])
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    [(FCFetchOperation *)v10 setCachePolicy:v11];
    -[FCFetchOperation setCanSendFetchCompletionSynchronously:](v10, "setCanSendFetchCompletionSynchronously:", [*(a1 + 40) cachedOnly]);
    [(FCAssetsFetchOperation *)v10 setMaxConcurrentFetchCount:20];
    [(FCFetchOperation *)v10 setShouldFailOnMissingObjects:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke_48;
    v20[3] = &unk_1E7C40478;
    v20[4] = *(a1 + 40);
    [(FCAssetsFetchOperation *)v10 setInterestTokenHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke_2_49;
    v19[3] = &unk_1E7C404A0;
    v19[4] = *(a1 + 40);
    [(FCAssetsFetchOperation *)v10 setArchiveHandler:v19];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke_3;
    v16 = &unk_1E7C404C8;
    v17 = v5;
    v18 = v6;
    v12 = v6;
    [(FCFetchOperation *)v10 setFetchCompletionBlock:&v13];
    [*(a1 + 40) associateChildOperation:{v10, v13, v14, v15, v16}];
    [(FCOperation *)v10 start];
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke_2;
    v21[3] = &unk_1E7C37BC0;
    v22 = *(a1 + 32);
    v23 = v6;
    v10 = v6;
    __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke_2(v21);

    v12 = v22;
  }
}

void __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [*(a1 + 32) identifier];
    v7 = [v5 initWithFormat:@"An issue is missing its metadata JSON asset handle, issueID=%@", v6];
    *buf = 136315906;
    v9 = "[FCOfflineIssueFetchOperation _promiseMetadataForIssue:]_block_invoke_2";
    v10 = 2080;
    v11 = "FCOfflineIssueFetchOperation.m";
    v12 = 1024;
    v13 = 246;
    v14 = 2114;
    v15 = v7;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingIssueMetadata) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] fc_missingAssetErrorWithAssetHandles:MEMORY[0x1E695E0F0]];
  (*(v2 + 16))(v2, v3);

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke_48(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 464) addObject:a2];
    }
  }

  return result;
}

void __57__FCOfflineIssueFetchOperation__promiseMetadataForIssue___block_invoke_3(uint64_t a1, void *a2)
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

void __59__FCOfflineIssueFetchOperation__promiseCoverImageForIssue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [FCAssetsFetchOperation alloc];
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 448);
  }

  v10 = FCOfflineThumbnailAssetHandlesForIssue(*(a1 + 32));
  v11 = [(FCAssetsFetchOperation *)v7 initWithAssetHandles:v10];

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
  [(FCAssetsFetchOperation *)v11 setMaxConcurrentFetchCount:20];
  [(FCFetchOperation *)v11 setShouldFailOnMissingObjects:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__FCOfflineIssueFetchOperation__promiseCoverImageForIssue___block_invoke_2;
  v22[3] = &unk_1E7C40478;
  v22[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v11 setInterestTokenHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__FCOfflineIssueFetchOperation__promiseCoverImageForIssue___block_invoke_3;
  v21[3] = &unk_1E7C404A0;
  v21[4] = *(a1 + 40);
  [(FCAssetsFetchOperation *)v11 setArchiveHandler:v21];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __59__FCOfflineIssueFetchOperation__promiseCoverImageForIssue___block_invoke_4;
  v18 = &unk_1E7C404C8;
  v19 = v5;
  v20 = v6;
  v13 = v6;
  v14 = v5;
  [(FCFetchOperation *)v11 setFetchCompletionBlock:&v15];
  [*(a1 + 40) associateChildOperation:{v11, v15, v16, v17, v18}];
  [(FCOperation *)v11 start];
}

uint64_t __59__FCOfflineIssueFetchOperation__promiseCoverImageForIssue___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 464) addObject:a2];
    }
  }

  return result;
}

void __59__FCOfflineIssueFetchOperation__promiseCoverImageForIssue___block_invoke_4(uint64_t a1, void *a2)
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

void __56__FCOfflineIssueFetchOperation__promiseRecipesForIssue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [FCOfflineRecipesFetchOperation alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8[53];
    v8 = v8[57];
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  v12 = [v10 allObjects];
  v13 = [(FCOfflineRecipesFetchOperation *)v7 initWithContext:v11 recipeIDs:v12];

  [(FCOfflineRecipesFetchOperation *)v13 setMaxBatchSize:20];
  -[FCOfflineRecipesFetchOperation setCachedOnly:](v13, "setCachedOnly:", [*(a1 + 32) cachedOnly]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__FCOfflineIssueFetchOperation__promiseRecipesForIssue___block_invoke_4;
  v23[3] = &unk_1E7C404A0;
  v23[4] = *(a1 + 32);
  [(FCOfflineRecipesFetchOperation *)v13 setArchiveHandler:v23];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __56__FCOfflineIssueFetchOperation__promiseRecipesForIssue___block_invoke_5;
  v19 = &unk_1E7C45560;
  v20 = *(a1 + 32);
  v21 = v6;
  v22 = v5;
  v14 = v5;
  v15 = v6;
  [(FCOfflineRecipesFetchOperation *)v13 setFetchCompletionHandler:&v16];
  [*(a1 + 32) associateChildOperation:{v13, v16, v17, v18, v19, v20}];
  [(FCOperation *)v13 start];
}

void __56__FCOfflineIssueFetchOperation__promiseRecipesForIssue___block_invoke_5(uint64_t a1, void *a2, void *a3)
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
        [*(v7 + 464) addObject:v5];
      }
    }

    v8 = *(a1 + 48);
    v9 = objc_opt_new();
    (*(v8 + 16))(v8, v9);
  }
}

- (id)_promiseANFArticlesForArticleIDs:(void *)ds withDownloadProgressMin:(void *)min downloadProgressMax:(double)max
{
  minCopy = min;
  if (ds)
  {
    v6 = objc_alloc(MEMORY[0x1E69B68F8]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke;
    v8[3] = &unk_1E7C47598;
    v8[4] = ds;
    v9 = minCopy;
    v10 = 0;
    maxCopy = max;
    ds = [v6 initWithResolver:v8];
  }

  return ds;
}

id __57__FCOfflineIssueFetchOperation__promiseANFPagesForIssue___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69B68F8]);
  v3 = MEMORY[0x1E696ABC0];
  v4 = [*(a1 + 32) metadataJSONAssetHandle];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [v3 fc_missingAssetErrorWithAssetHandles:v5];
  v7 = [v2 initWithError:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __57__FCOfflineIssueFetchOperation__promiseANFPagesForIssue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) metadataJSONAssetHandle];
  v4 = [v3 dataProvider];
  v5 = [v4 data];
  v6 = [(FCOfflineIssueFetchOperation *)v2 _itemIdentifiersForKey:v5 fromMetadataJSONData:?];

  v7 = [FCOfflineIssueFetchOperation _promiseANFArticlesForArticleIDs:v6 withDownloadProgressMin:0.9 downloadProgressMax:?];

  return v7;
}

- (id)_itemIdentifiersForKey:(void *)key fromMetadataJSONData:
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  keyCopy = key;
  v7 = keyCopy;
  if (self)
  {
    if (keyCopy)
    {
      array = [MEMORY[0x1E695DF70] array];
      v9 = objc_autoreleasePoolPush();
      objc_opt_class();
      v44 = 0;
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v44];
      v11 = v44;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
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

      v14 = v12;

      if (v14)
      {
        v37 = v11;
        v15 = v14;
        objc_opt_class();
        v16 = [v15 objectForKeyedSubscript:@"items"];
        if (v16)
        {
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v19 = v17;

        if (v19)
        {
          v34 = v15;
          v35 = v9;
          v36 = v7;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v33 = v19;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v38 objects:v45 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v39;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v39 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v38 + 1) + 8 * i);
                objc_opt_class();
                if (v25)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v26 = v25;
                  }

                  else
                  {
                    v26 = 0;
                  }
                }

                else
                {
                  v26 = 0;
                }

                v27 = v26;
                objc_opt_class();
                v28 = [v27 objectForKeyedSubscript:v5];
                if (v28)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v29 = v28;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v29 = 0;
                }

                v30 = v29;

                [array fc_safelyAddObject:v30];
              }

              v22 = [v20 countByEnumeratingWithState:&v38 objects:v45 count:16];
            }

            while (v22);
          }

          v9 = v35;
          v7 = v36;
          v19 = v33;
          v15 = v34;
        }

        objc_autoreleasePoolPop(v9);
        v13 = array;
      }

      else
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __76__FCOfflineIssueFetchOperation__itemIdentifiersForKey_fromMetadataJSONData___block_invoke_2;
        v42[3] = &unk_1E7C3C728;
        v42[4] = self;
        v43 = v11;
        v18 = v11;
        v13 = __76__FCOfflineIssueFetchOperation__itemIdentifiersForKey_fromMetadataJSONData___block_invoke_2(v42);

        objc_autoreleasePoolPop(v9);
      }
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v13 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v13;
}

id __57__FCOfflineIssueFetchOperation__promiseANFPagesForIssue___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke;
    v6[3] = &unk_1E7C47598;
    v7 = v2;
    v8 = v1;
    v9 = xmmword_1B681B7E0;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [FCOfflineANFArticlesFetchOperation alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8[53];
    v10 = v8[56];
    v11 = v8[54];
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = 0;
  }

  v12 = *(a1 + 40);
  v13 = v10;
  v14 = v9;
  v15 = [(FCOfflineANFArticlesFetchOperation *)&v7->super.super.super.isa initWithContext:v14 config:v13 ANFHelper:v11 articleIDs:v12];

  if (v15)
  {
    v15[48] = 2;
    v15[47] = 20;
    *(v15 + 368) = [*(a1 + 32) cachedOnly];
  }

  else
  {
    [*(a1 + 32) cachedOnly];
  }

  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke_2;
  newValue[3] = &unk_1E7C40478;
  v17 = *(a1 + 32);
  newValue[4] = v17;
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v16, newValue, 400);
    v17 = *(a1 + 32);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke_3;
  v30[3] = &unk_1E7C404A0;
  v30[4] = v17;
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v16, v30, 408);
    v17 = *(a1 + 32);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke_4;
  v29[3] = &unk_1E7C47548;
  v29[4] = v17;
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v16, v29, 416);
    v17 = *(a1 + 32);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke_5;
  v27[3] = &unk_1E7C47570;
  v28 = *(a1 + 48);
  v27[4] = v17;
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v16, v27, 392);
  }

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke_6;
  v24 = &unk_1E7C3F590;
  v25 = v6;
  v26 = v5;
  v18 = v5;
  v20 = v6;
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v19, &v21, 424);
  }

  [*(a1 + 32) associateChildOperation:{v15, v21, v22, v23, v24}];
  [v15 start];
}

uint64_t __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 464) addObject:a2];
    }
  }

  return result;
}

void __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v9 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = [v9 recipeIDs];

    if (v6)
    {
      v7 = *(v4 + 456);
      v8 = [v9 recipeIDs];
      [v7 addObjectsFromArray:v8];
    }
  }
}

void __109__FCOfflineIssueFetchOperation__promiseANFArticlesForArticleIDs_withDownloadProgressMin_downloadProgressMax___block_invoke_6(uint64_t a1, void *a2)
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

void __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) metadataJSONAssetHandle];
  v8 = [v7 dataProvider];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) metadataJSONAssetHandle];
    v11 = [v10 dataProvider];
    v12 = [v11 data];
    v13 = [(FCOfflineIssueFetchOperation *)v9 _itemIdentifiersForKey:v12 fromMetadataJSONData:?];

    v14 = [FCResourcesFetchOperation alloc];
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = *(v15 + 424);
    }

    else
    {
      v16 = 0;
    }

    v17 = [(FCResourcesFetchOperation *)v14 initWithContext:v16 resourceIDs:v13 downloadAssets:1];
    [(FCOperation *)v17 setPurpose:@"offlineDownload"];
    [(FCResourcesFetchOperation *)v17 setMaxConcurrentFetchCount:20];
    [(FCFetchOperation *)v17 setShouldFailOnMissingObjects:1];
    if ([*(a1 + 40) cachedOnly])
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }

    [(FCFetchOperation *)v17 setCachePolicy:v18];
    -[FCFetchOperation setCanSendFetchCompletionSynchronously:](v17, "setCanSendFetchCompletionSynchronously:", [*(a1 + 40) cachedOnly]);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_3;
    v30[3] = &unk_1E7C40478;
    v30[4] = *(a1 + 40);
    [(FCResourcesFetchOperation *)v17 setInterestTokenHandler:v30];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_4;
    v29[3] = &unk_1E7C404A0;
    v29[4] = *(a1 + 40);
    [(FCResourcesFetchOperation *)v17 setArchiveHandler:v29];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_5;
    v27[3] = &unk_1E7C47570;
    v28 = *(a1 + 48);
    v27[4] = *(a1 + 40);
    [(FCResourcesFetchOperation *)v17 setProgressHandler:v27];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_6;
    v23 = &unk_1E7C475C0;
    v25 = v5;
    v26 = v6;
    v24 = *(a1 + 40);
    v19 = v6;
    [(FCFetchOperation *)v17 setFetchCompletionBlock:&v20];
    [*(a1 + 40) associateChildOperation:{v17, v20, v21, v22, v23, v24}];
    [(FCOperation *)v17 start];
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_2;
    v31[3] = &unk_1E7C37778;
    v33 = v6;
    v32 = *(a1 + 32);
    v13 = v6;
    __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_2(v31);

    v17 = v33;
  }
}

void __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) metadataJSONAssetHandle];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v1 fc_missingAssetErrorWithAssetHandles:v4];
  (*(v2 + 16))(v2, v5);

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 464) addObject:a2];
    }
  }

  return result;
}

void __107__FCOfflineIssueFetchOperation__promiseReplicaAdPagesForIssue_withDownloadProgressMin_downloadProgressMax___block_invoke_6(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 status];
  if (v3 == 1)
  {
    v5 = *(a1 + 48);
    v6 = MEMORY[0x1E696ABC0];
    v7 = [*(a1 + 32) errorUserInfo];
    v8 = [v6 fc_operationCancelledErrorWithAdditionalUserInfo:v7];
    (*(v5 + 16))(v5, v8);
  }

  else
  {
    if (v3)
    {
      v4 = *(a1 + 48);
      [v9 error];
    }

    else
    {
      v4 = *(a1 + 40);
      [v9 fetchedObject];
    }
    v7 = ;
    (*(v4 + 16))(v4, v7);
  }
}

void __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v139 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) metadataJSONAssetHandle];
  v8 = [v7 dataProvider];

  if (v8)
  {
    v95 = v5;
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) metadataJSONAssetHandle];
    v11 = [v10 dataProvider];
    v12 = [v11 data];
    v93 = v12;
    v94 = v6;
    if (v9)
    {
      v13 = v12;
      if (v12)
      {
        v91 = v11;
        v92 = v10;
        objc_opt_class();
        v132 = 0;
        v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v13 options:0 error:&v132];
        v15 = v132;
        if (v14)
        {
          if (objc_opt_isKindOfClass())
          {
            v16 = v14;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = v16;

        v90 = v18;
        if (!v18)
        {
          v137[0] = MEMORY[0x1E69E9820];
          v137[1] = 3221225472;
          v137[2] = __65__FCOfflineIssueFetchOperation__resourceIDsFromMetadataJSONData___block_invoke_2;
          v137[3] = &unk_1E7C3C728;
          v137[4] = v9;
          v138 = v15;
          v17 = __65__FCOfflineIssueFetchOperation__resourceIDsFromMetadataJSONData___block_invoke_2(v137);

          v5 = v95;
          v11 = v91;
          v10 = v92;
LABEL_92:

LABEL_93:
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 3221225472;
          v120[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_3;
          v120[3] = &unk_1E7C40F48;
          v120[4] = *(a1 + 40);
          [v17 fc_arrayByTransformingWithBlock:v120];
          v65 = v64 = a1;
          v66 = [v65 fc_setByTransformingWithBlock:&__block_literal_global_74];
          if ([v66 count])
          {
            if (![*(v64 + 40) cachedOnly])
            {
              if (!*(v64 + 40))
              {
                goto LABEL_106;
              }

              v68 = v64;
              v69 = [*(v64 + 32) issueRecord];
              v70 = [v69 pdfResourceArchiveURL];

              if (v70)
              {
                v71 = [MEMORY[0x1E695DFF8] URLWithString:v70];
              }

              else
              {
                v71 = 0;
              }

              v64 = v68;
              if (v71)
              {
                v72 = [FCResourceArchiveFetchOperation alloc];
                v73 = *(v68 + 40);
                if (v73)
                {
                  v74 = *(v73 + 424);
                }

                else
                {
                  v74 = 0;
                }

                v75 = [(FCResourceArchiveFetchOperation *)v72 initWithArchiveURL:v71 context:v74];
                [(FCResourceArchiveFetchOperation *)v75 setMaxConcurrentFetchCount:20];
                v113[0] = MEMORY[0x1E69E9820];
                v113[1] = 3221225472;
                v113[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_3_79;
                v113[3] = &unk_1E7C40478;
                v76 = v68;
                v113[4] = *(v68 + 40);
                [(FCResourceArchiveFetchOperation *)v75 setInterestTokenHandler:v113];
                v112[0] = MEMORY[0x1E69E9820];
                v112[1] = 3221225472;
                v112[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_4_80;
                v112[3] = &unk_1E7C404A0;
                v112[4] = *(v68 + 40);
                [(FCResourceArchiveFetchOperation *)v75 setArchiveHandler:v112];
                v111[0] = MEMORY[0x1E69E9820];
                v111[1] = 3221225472;
                v111[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_5_81;
                v111[3] = &unk_1E7C3B810;
                v111[4] = *(v68 + 40);
                [(FCResourceArchiveFetchOperation *)v75 setProgressHandler:v111];
                v108[0] = MEMORY[0x1E69E9820];
                v108[1] = 3221225472;
                v108[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_6;
                v108[3] = &unk_1E7C42428;
                v77 = &v109;
                v109 = v94;
                v78 = &v110;
                v110 = v95;
                [(FCResourceArchiveFetchOperation *)v75 setFetchCompletionHandler:v108];
                [*(v76 + 40) associateChildOperation:v75];
                [(FCOperation *)v75 start];
              }

              else
              {
LABEL_106:
                v79 = [FCResourcesFetchOperation alloc];
                v80 = v64;
                v81 = *(v64 + 40);
                if (v81)
                {
                  v82 = *(v81 + 424);
                }

                else
                {
                  v82 = 0;
                }

                v75 = [(FCResourcesFetchOperation *)v79 initWithContext:v82 resourceIDs:v17 downloadAssets:1];
                [(FCOperation *)v75 setPurpose:@"offlineDownload"];
                [(FCResourceArchiveFetchOperation *)v75 setMaxConcurrentFetchCount:20];
                [(FCResourceArchiveFetchOperation *)v75 setShouldFailOnMissingObjects:1];
                v107[0] = MEMORY[0x1E69E9820];
                v107[1] = 3221225472;
                v107[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_8;
                v107[3] = &unk_1E7C40478;
                v107[4] = *(v80 + 40);
                [(FCResourceArchiveFetchOperation *)v75 setInterestTokenHandler:v107];
                v106[0] = MEMORY[0x1E69E9820];
                v106[1] = 3221225472;
                v106[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_9;
                v106[3] = &unk_1E7C404A0;
                v106[4] = *(v80 + 40);
                [(FCResourceArchiveFetchOperation *)v75 setArchiveHandler:v106];
                v105[0] = MEMORY[0x1E69E9820];
                v105[1] = 3221225472;
                v105[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_10;
                v105[3] = &unk_1E7C3B810;
                v105[4] = *(v80 + 40);
                [(FCResourceArchiveFetchOperation *)v75 setProgressHandler:v105];
                v102[0] = MEMORY[0x1E69E9820];
                v102[1] = 3221225472;
                v102[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_11;
                v102[3] = &unk_1E7C475C0;
                v77 = &v103;
                v103 = v95;
                v78 = &v104;
                v83 = v94;
                v84 = *(v80 + 40);
                v104 = v83;
                v102[4] = v84;
                [(FCResourceArchiveFetchOperation *)v75 setFetchCompletionBlock:v102];
                [*(v80 + 40) associateChildOperation:v75];
                [(FCOperation *)v75 start];
                v71 = 0;
              }

              v5 = v95;
              goto LABEL_110;
            }

            v114[0] = MEMORY[0x1E69E9820];
            v114[1] = 3221225472;
            v114[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_2_77;
            v114[3] = &unk_1E7C37778;
            v116 = v94;
            v115 = v66;
            __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_2_77(v114);

            v67 = v116;
          }

          else
          {
            v117[0] = MEMORY[0x1E69E9820];
            v117[1] = 3221225472;
            v117[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_5;
            v117[3] = &unk_1E7C38FF0;
            v117[4] = *(v64 + 40);
            v118 = v65;
            v119 = v5;
            __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_5(v117);

            v67 = v118;
          }

LABEL_110:
          v6 = v94;
          goto LABEL_111;
        }

        v87 = v15;
        v19 = v18;
        v17 = [MEMORY[0x1E695DF70] array];
        objc_opt_class();
        v89 = v19;
        v20 = [v19 objectForKeyedSubscript:@"pages"];
        if (v20)
        {
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v5 = v95;
        v22 = v21;

        v23 = v22;
        v11 = v91;
        v10 = v92;
        v88 = a1;
        v86 = v23;
        if (v23)
        {
          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          obj = v23;
          v24 = [obj countByEnumeratingWithState:&v133 objects:v137 count:16];
          if (!v24)
          {
LABEL_91:

            v15 = v87;
            a1 = v88;
            goto LABEL_92;
          }

          v25 = v24;
          v26 = *v134;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v134 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v133 + 1) + 8 * i);
              objc_opt_class();
              if (v28)
              {
                if (objc_opt_isKindOfClass())
                {
                  v29 = v28;
                }

                else
                {
                  v29 = 0;
                }
              }

              else
              {
                v29 = 0;
              }

              v30 = v29;
              objc_opt_class();
              v31 = [v30 objectForKeyedSubscript:@"pageAsset"];
              if (v31)
              {
                if (objc_opt_isKindOfClass())
                {
                  v32 = v31;
                }

                else
                {
                  v32 = 0;
                }
              }

              else
              {
                v32 = 0;
              }

              v33 = v32;

              [v17 fc_safelyAddObject:v33];
              objc_opt_class();
              v34 = [v30 objectForKeyedSubscript:@"thumbnailAssetLQ"];
              if (v34)
              {
                if (objc_opt_isKindOfClass())
                {
                  v35 = v34;
                }

                else
                {
                  v35 = 0;
                }
              }

              else
              {
                v35 = 0;
              }

              v36 = v35;

              [v17 fc_safelyAddObject:v36];
            }

            v25 = [obj countByEnumeratingWithState:&v133 objects:v137 count:16];
          }

          while (v25);
        }

        else
        {
          objc_opt_class();
          v37 = [v89 objectForKeyedSubscript:@"content"];
          if (v37)
          {
            if (objc_opt_isKindOfClass())
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }
          }

          else
          {
            v38 = 0;
          }

          v39 = v38;

          objc_opt_class();
          obj = v39;
          v40 = [v39 objectForKeyedSubscript:@"pageLayouts"];
          if (v40)
          {
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;

          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v96 = [v42 allValues];
          v99 = [v96 countByEnumeratingWithState:&v128 objects:v137 count:16];
          if (v99)
          {
            v98 = *v129;
            do
            {
              v43 = 0;
              do
              {
                if (*v129 != v98)
                {
                  objc_enumerationMutation(v96);
                }

                v101 = v43;
                v44 = *(*(&v128 + 1) + 8 * v43);
                objc_opt_class();
                if (v44)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v45 = v44;
                  }

                  else
                  {
                    v45 = 0;
                  }
                }

                else
                {
                  v45 = 0;
                }

                v46 = v17;
                v47 = v45;
                objc_opt_class();
                v100 = v47;
                v48 = [v47 objectForKeyedSubscript:@"pdfOverlays"];
                if (v48)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v49 = v48;
                  }

                  else
                  {
                    v49 = 0;
                  }
                }

                else
                {
                  v49 = 0;
                }

                v50 = v49;

                v126 = 0u;
                v127 = 0u;
                v124 = 0u;
                v125 = 0u;
                v51 = v50;
                v52 = [v51 countByEnumeratingWithState:&v124 objects:&v133 count:16];
                if (v52)
                {
                  v53 = v52;
                  v54 = *v125;
                  do
                  {
                    for (j = 0; j != v53; ++j)
                    {
                      if (*v125 != v54)
                      {
                        objc_enumerationMutation(v51);
                      }

                      v56 = *(*(&v124 + 1) + 8 * j);
                      objc_opt_class();
                      if (v56)
                      {
                        if (objc_opt_isKindOfClass())
                        {
                          v57 = v56;
                        }

                        else
                        {
                          v57 = 0;
                        }
                      }

                      else
                      {
                        v57 = 0;
                      }

                      v58 = v57;
                      objc_opt_class();
                      v59 = [v58 objectForKeyedSubscript:@"url"];
                      if (v59)
                      {
                        if (objc_opt_isKindOfClass())
                        {
                          v60 = v59;
                        }

                        else
                        {
                          v60 = 0;
                        }
                      }

                      else
                      {
                        v60 = 0;
                      }

                      v61 = v60;

                      if (v61)
                      {
                        v62 = [MEMORY[0x1E695DFF8] URLWithString:v61];
                        v63 = [v62 host];

                        [v46 fc_safelyAddObject:v63];
                      }
                    }

                    v53 = [v51 countByEnumeratingWithState:&v124 objects:&v133 count:16];
                  }

                  while (v53);
                }

                v43 = v101 + 1;
                v17 = v46;
              }

              while (v101 + 1 != v99);
              v99 = [v96 countByEnumeratingWithState:&v128 objects:v137 count:16];
            }

            while (v99);
          }
        }

        v5 = v95;
        v11 = v91;
        v10 = v92;
        goto LABEL_91;
      }

      v17 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v17 = 0;
    }

    v5 = v95;
    goto LABEL_93;
  }

  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_2;
  v121[3] = &unk_1E7C37778;
  v123 = v6;
  v122 = *(a1 + 32);
  __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_2(v121);

  v17 = v123;
LABEL_111:

  v85 = *MEMORY[0x1E69E9840];
}

void __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E696ABC0];
  v2 = MEMORY[0x1E695DEC8];
  v3 = *(a1 + 40);
  v6 = [*(a1 + 32) metadataJSONAssetHandle];
  v4 = [v2 arrayWithObjects:{v6, 0}];
  v5 = [v1 fc_missingAssetErrorWithAssetHandles:v4];
  (*(v3 + 16))(v3, v5);
}

FCResource *__57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCResource alloc];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 424);
  }

  else
  {
    v6 = 0;
  }

  v7 = [(FCResource *)v4 initWithPermanentURLForResourceID:v3 cacheLifetimeHint:0 contentContext:v6];

  return v7;
}

id __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOnDisk])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 resourceID];
  }

  return v3;
}

uint64_t __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_5(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ already has all PDF pages in the cache", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_75;
  v12[3] = &unk_1E7C43510;
  v6 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v12];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) contentArchive];
  [(FCOfflineIssueFetchOperation *)v7 _handleArchive:v8];

  v9 = *(a1 + 40);
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_75(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 assetHandle];
  v8 = v3;
  if (v3)
  {
    v4 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v2)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [*(v2 + 464) addObject:v5];
  }
}

void __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_2_77(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] fc_notCachedErrorWithMissingObjects:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

uint64_t __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_3_79(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 464) addObject:a2];
    }
  }

  return result;
}

void __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v6 = *(a1 + 32);
    v5 = v4;
    v6[2](v6, v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 464) addObject:a2];
    }
  }

  return result;
}

void __57__FCOfflineIssueFetchOperation__promisePDFPagesForIssue___block_invoke_11(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 status];
  if (v3 == 1)
  {
    v5 = *(a1 + 48);
    v6 = MEMORY[0x1E696ABC0];
    v7 = [*(a1 + 32) errorUserInfo];
    v8 = [v6 fc_operationCancelledErrorWithAdditionalUserInfo:v7];
    (*(v5 + 16))(v5, v8);
  }

  else
  {
    if (v3)
    {
      v4 = *(a1 + 48);
      [v9 error];
    }

    else
    {
      v4 = *(a1 + 40);
      [v9 fetchedObject];
    }
    v7 = ;
    (*(v4 + 16))(v4, v7);
  }
}

uint64_t __76__FCOfflineIssueFetchOperation__itemIdentifiersForKey_fromMetadataJSONData___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 shortOperationDescription];
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "%{public}@ error occurred trying to parse issue metadata JSON: %{public}@", &v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return MEMORY[0x1E695E0F0];
}

uint64_t __65__FCOfflineIssueFetchOperation__resourceIDsFromMetadataJSONData___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 shortOperationDescription];
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "%{public}@ error occurred trying to parse issue metadata JSON: %{public}@", &v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return MEMORY[0x1E695E0F0];
}

void __48__FCOfflineIssueFetchOperation__updateProgress___block_invoke_120(uint64_t a1)
{
  v2 = [*(a1 + 32) progressHandler];
  v4 = *(a1 + 32);
  if (v4)
  {
    v3.n128_u64[0] = *(v4 + 472);
  }

  else
  {
    v3.n128_u64[0] = 0;
  }

  v5 = v2;
  (*(v2 + 16))(v3);
}

void __47__FCOfflineIssueFetchOperation__handleArchive___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) archiveHandler];
  v2[2](v2, *(a1 + 40));
}

@end