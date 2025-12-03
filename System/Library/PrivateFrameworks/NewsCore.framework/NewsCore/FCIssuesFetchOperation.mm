@interface FCIssuesFetchOperation
- (BOOL)validateOperation;
- (FCIssuesFetchOperation)init;
- (FCIssuesFetchOperation)initWithContext:(id)context issueIDs:(id)ds;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCIssuesFetchOperation

- (FCIssuesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCIssuesFetchOperation init]";
    v10 = 2080;
    v11 = "FCIssuesFetchOperation.m";
    v12 = 1024;
    v13 = 39;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssuesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCIssuesFetchOperation)initWithContext:(id)context issueIDs:(id)ds
{
  contextCopy = context;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = FCIssuesFetchOperation;
  v9 = [(FCOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    v11 = [dsCopy copy];
    issueIDs = v10->_issueIDs;
    v10->_issueIDs = v11;
  }

  return v10;
}

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  context = [(FCIssuesFetchOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"issues fetch operation requires a context"];
    v10 = 136315906;
    v11 = "[FCIssuesFetchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCIssuesFetchOperation.m";
    v14 = 1024;
    v15 = 60;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  issueIDs = [(FCIssuesFetchOperation *)self issueIDs];

  if (!issueIDs && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"issues fetch operation requires issue IDs"];
    v10 = 136315906;
    v11 = "[FCIssuesFetchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCIssuesFetchOperation.m";
    v14 = 1024;
    v15 = 64;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  if (context)
  {
    v5 = issueIDs == 0;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(FCRecordChainFetchOperation);
  context = [(FCIssuesFetchOperation *)self context];
  [(FCRecordChainFetchOperation *)v3 setContext:context];

  issueIDs = [(FCIssuesFetchOperation *)self issueIDs];
  [(FCRecordChainFetchOperation *)v3 setTopLevelRecordIDs:issueIDs];

  v16[0] = @"Issue";
  v15 = @"channelTagID";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v16[1] = @"Tag";
  v17[0] = v6;
  v17[1] = MEMORY[0x1E695E0F0];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(FCRecordChainFetchOperation *)v3 setLinkKeysByRecordType:v7];

  cachePolicy = [(FCIssuesFetchOperation *)self cachePolicy];

  if (cachePolicy)
  {
    v13 = @"Issue";
    cachePolicy2 = [(FCIssuesFetchOperation *)self cachePolicy];
    v14 = cachePolicy2;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [(FCRecordChainFetchOperation *)v3 setCachePoliciesByRecordType:v10];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__FCIssuesFetchOperation_performOperation__block_invoke;
  v12[3] = &unk_1E7C39358;
  v12[4] = self;
  [(FCRecordChainFetchOperation *)v3 setRecordChainCompletionHandler:v12];
  [(FCOperation *)self associateChildOperation:v3];
  [(FCOperation *)v3 start];

  v11 = *MEMORY[0x1E69E9840];
}

void __42__FCIssuesFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __42__FCIssuesFetchOperation_performOperation__block_invoke_2;
    v31 = &unk_1E7C36C58;
    v32 = *(a1 + 32);
    v33 = v6;
    [v32 finishedPerformingOperationWithError:v33];
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E70E90];
    if ([v8 count])
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __42__FCIssuesFetchOperation_performOperation__block_invoke_2_18;
      v26[3] = &unk_1E7C3FF08;
      v26[4] = *(a1 + 32);
      v9 = [v8 heldRecordsPassingTest:v26];
      if ([v9 count])
      {
        v10 = [v5 objectForKeyedSubscript:&unk_1F2E70EA8];
        v11 = [*(a1 + 32) context];
        v12 = [v11 tagController];
        v13 = [v12 channelsForTagRecords:v10];

        v14 = [*(a1 + 32) issueIDs];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __42__FCIssuesFetchOperation_performOperation__block_invoke_23;
        v21[3] = &unk_1E7C3B1B0;
        v15 = v13;
        v16 = *(a1 + 32);
        v22 = v15;
        v23 = v16;
        v17 = [v9 transformRecordsInOrder:v14 withBlock:v21];
        [*(a1 + 32) setResultIssues:v17];

        v18 = [*(a1 + 32) interestTokenHandler];

        if (v18)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __42__FCIssuesFetchOperation_performOperation__block_invoke_3_28;
          aBlock[3] = &unk_1E7C40428;
          aBlock[4] = *(a1 + 32);
          v19 = _Block_copy(aBlock);
          v19[2](v19, v8);
          v19[2](v19, v10);
        }

        [*(a1 + 32) finishedPerformingOperationWithError:0];
      }

      else
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __42__FCIssuesFetchOperation_performOperation__block_invoke_3;
        v24[3] = &unk_1E7C36C58;
        v24[4] = *(a1 + 32);
        v25 = v8;
        __42__FCIssuesFetchOperation_performOperation__block_invoke_3(v24);
      }
    }

    else
    {
      v26[5] = MEMORY[0x1E69E9820];
      v26[6] = 3221225472;
      v26[7] = __42__FCIssuesFetchOperation_performOperation__block_invoke_17;
      v26[8] = &unk_1E7C36EA0;
      v27 = *(a1 + 32);
      [v27 setResultIssues:MEMORY[0x1E695E0F0]];
      [v27 finishedPerformingOperationWithError:0];
    }
  }
}

uint64_t __42__FCIssuesFetchOperation_performOperation__block_invoke_17(uint64_t a1)
{
  [*(a1 + 32) setResultIssues:MEMORY[0x1E695E0F0]];
  v2 = *(a1 + 32);

  return [v2 finishedPerformingOperationWithError:0];
}

uint64_t __42__FCIssuesFetchOperation_performOperation__block_invoke_2_18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 contentStoreFrontID];
  v6 = [v3 isAllowedInStorefront:v5];

  return v6;
}

void __42__FCIssuesFetchOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) allRecordIDs];
  v3 = [v1 fc_blockedInCurrentStorefrontErrorWithIdentifiers:v4];
  [v2 finishedPerformingOperationWithError:v3];
}

FCIssue *__42__FCIssuesFetchOperation_performOperation__block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 channelTagID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = v9;
    v11 = [FCIssue alloc];
    v12 = [*(a1 + 40) context];
    v13 = [v12 assetManager];
    v14 = [(FCIssue *)v11 initWithIssueRecord:v5 assetManager:v13 interestToken:v6 sourceChannel:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __42__FCIssuesFetchOperation_performOperation__block_invoke_3_28(uint64_t a1, void *a2)
{
  v3 = [a2 interestTokensByID];
  v4 = [v3 allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__FCIssuesFetchOperation_performOperation__block_invoke_4;
  v5[3] = &unk_1E7C40400;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __42__FCIssuesFetchOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 interestTokenHandler];
  v4[2](v4, v3);
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionHandler = [(FCIssuesFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCIssuesFetchOperation *)self fetchCompletionHandler];
    resultIssues = [(FCIssuesFetchOperation *)self resultIssues];
    (fetchCompletionHandler2)[2](fetchCompletionHandler2, resultIssues, errorCopy);
  }
}

@end