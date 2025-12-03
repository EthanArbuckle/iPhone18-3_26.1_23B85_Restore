@interface FCOfflineAudioFetchOperation
- (BOOL)validateOperation;
- (FCOfflineAudioFetchOperation)initWithContext:(id)context articleID:(id)d;
- (void)_handleArchive:(void *)archive;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCOfflineAudioFetchOperation

- (FCOfflineAudioFetchOperation)initWithContext:(id)context articleID:(id)d
{
  contextCopy = context;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = FCOfflineAudioFetchOperation;
  v9 = [(FCOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    v11 = [dCopy copy];
    articleID = v10->_articleID;
    v10->_articleID = v11;

    v13 = objc_alloc_init(FCThreadSafeMutableArray);
    resultInterestTokens = v10->_resultInterestTokens;
    v10->_resultInterestTokens = v13;
  }

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
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline article fetch operation requires a context"];
      v9 = 136315906;
      v10 = "[FCOfflineAudioFetchOperation validateOperation]";
      v11 = 2080;
      v12 = "FCOfflineAudioFetchOperation.m";
      v13 = 1024;
      v14 = 65;
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

  if (self->_articleID)
  {
    v4 = 1;
    goto LABEL_12;
  }

LABEL_9:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"offline article fetch operation requires an article ID"];
    v9 = 136315906;
    v10 = "[FCOfflineAudioFetchOperation validateOperation]";
    v11 = 2080;
    v12 = "FCOfflineAudioFetchOperation.m";
    v13 = 1024;
    v14 = 69;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  v4 = 0;
LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
  return v4 & v3;
}

- (void)performOperation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    cachedOnly = [(FCOfflineAudioFetchOperation *)self cachedOnly];
    v6 = @"fetch";
    if (cachedOnly)
    {
      v6 = @"lookup cached";
    }

    if (self)
    {
      articleID = self->_articleID;
    }

    else
    {
      articleID = 0;
    }

    *buf = 138543874;
    v21 = shortOperationDescription;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = articleID;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will %{public}@ article id=%{public}@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__FCOfflineAudioFetchOperation_performOperation__block_invoke;
  v19[3] = &unk_1E7C396C0;
  v19[4] = self;
  v8 = [MEMORY[0x1E69B68F8] firstly:v19];
  v9 = zalgo();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__FCOfflineAudioFetchOperation_performOperation__block_invoke_2;
  v18[3] = &unk_1E7C37528;
  v18[4] = self;
  v10 = [v8 thenOn:v9 then:v18];
  v11 = zalgo();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__FCOfflineAudioFetchOperation_performOperation__block_invoke_3;
  v17[3] = &unk_1E7C403D8;
  v17[4] = self;
  v12 = [v10 thenOn:v11 then:v17];
  v13 = zalgo();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__FCOfflineAudioFetchOperation_performOperation__block_invoke_4;
  v16[3] = &unk_1E7C36E50;
  v16[4] = self;
  v14 = [v12 errorOn:v13 error:v16];

  v15 = *MEMORY[0x1E69E9840];
}

id __48__FCOfflineAudioFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E69B68F8]);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke;
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

id __48__FCOfflineAudioFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 narrativeTrack];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v6 = objc_alloc(MEMORY[0x1E69B68F8]);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__FCOfflineAudioFetchOperation__promiseNarrativeTrackForHeadline___block_invoke_2;
      v10[3] = &unk_1E7C3B310;
      v10[4] = v2;
      v11 = v5;
      v7 = v5;
      v8 = [v6 initWithResolver:v10];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionQueue = [(FCOfflineAudioFetchOperation *)self fetchCompletionQueue];

  fetchCompletionHandler = [(FCOfflineAudioFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionQueue)
  {
    if (fetchCompletionHandler)
    {
      fetchCompletionQueue2 = [(FCOfflineAudioFetchOperation *)self fetchCompletionQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __61__FCOfflineAudioFetchOperation_operationWillFinishWithError___block_invoke;
      v12[3] = &unk_1E7C36C58;
      v12[4] = self;
      v13 = errorCopy;
      dispatch_async(fetchCompletionQueue2, v12);
    }
  }

  else if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCOfflineAudioFetchOperation *)self fetchCompletionHandler];
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

void __61__FCOfflineAudioFetchOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) fetchCompletionHandler];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[55];
  }

  v3 = v2;
  v4 = [v3 readOnlyArray];
  v5[2](v5, v4, *(a1 + 40));
}

void __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [FCArticleHeadlinesFetchOperation alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8[53];
    v8 = v8[54];
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
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke_2;
  v26[3] = &unk_1E7C40478;
  v26[4] = *(a1 + 32);
  [(FCArticleHeadlinesFetchOperation *)v14 setInterestTokenHandler:v26];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke_3;
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

uint64_t __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 440) addObject:a2];
    }
  }

  return result;
}

void __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke_4;
    v15[3] = &unk_1E7C39F98;
    v16 = v3;
    v4 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = v4;
    __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke_4(v15);
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
    [(FCOfflineAudioFetchOperation *)v10 _handleArchive:v11];

    v12 = *(a1 + 48);
    v13 = [v3 fetchedObject];
    v14 = [v13 firstObject];
    (*(v12 + 16))(v12, v14);
  }
}

void __48__FCOfflineAudioFetchOperation__promiseHeadline__block_invoke_4(uint64_t a1)
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
        v9[2] = __47__FCOfflineAudioFetchOperation__handleArchive___block_invoke_2;
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

void __66__FCOfflineAudioFetchOperation__promiseNarrativeTrackForHeadline___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [FCAudioTrackFetchOperation alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 424);
  }

  else
  {
    v9 = 0;
  }

  v10 = [(FCAudioTrackFetchOperation *)v7 initWithContext:v9 audioTrack:*(a1 + 40)];
  -[FCAudioTrackFetchOperation setCachedOnly:](v10, "setCachedOnly:", [*(a1 + 32) cachedOnly]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__FCOfflineAudioFetchOperation__promiseNarrativeTrackForHeadline___block_invoke_3;
  v20[3] = &unk_1E7C40478;
  v20[4] = *(a1 + 32);
  [(FCAudioTrackFetchOperation *)v10 setInterestTokenHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__FCOfflineAudioFetchOperation__promiseNarrativeTrackForHeadline___block_invoke_4;
  v19[3] = &unk_1E7C404A0;
  v19[4] = *(a1 + 32);
  [(FCAudioTrackFetchOperation *)v10 setArchiveHandler:v19];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __66__FCOfflineAudioFetchOperation__promiseNarrativeTrackForHeadline___block_invoke_5;
  v16 = &unk_1E7C3F590;
  v17 = v6;
  v18 = v5;
  v11 = v5;
  v12 = v6;
  [(FCAudioTrackFetchOperation *)v10 setFetchCompletionHandler:&v13];
  [*(a1 + 32) associateChildOperation:{v10, v13, v14, v15, v16}];
  [(FCOperation *)v10 start];
}

uint64_t __66__FCOfflineAudioFetchOperation__promiseNarrativeTrackForHeadline___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if (v2)
    {
      return [*(v2 + 440) addObject:a2];
    }
  }

  return result;
}

void __66__FCOfflineAudioFetchOperation__promiseNarrativeTrackForHeadline___block_invoke_5(uint64_t a1, void *a2)
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

void __47__FCOfflineAudioFetchOperation__handleArchive___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) archiveHandler];
  v2[2](v2, *(a1 + 40));
}

@end