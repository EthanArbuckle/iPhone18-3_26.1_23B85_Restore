@interface FCDraftIssuesFetchOperation
- (BOOL)validateOperation;
- (FCDraftIssuesFetchOperation)init;
- (FCDraftIssuesFetchOperation)initWithContext:(id)context issueListID:(id)d;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCDraftIssuesFetchOperation

- (FCDraftIssuesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCDraftIssuesFetchOperation init]";
    v10 = 2080;
    v11 = "FCDraftIssuesFetchOperation.m";
    v12 = 1024;
    v13 = 38;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCDraftIssuesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCDraftIssuesFetchOperation)initWithContext:(id)context issueListID:(id)d
{
  contextCopy = context;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = FCDraftIssuesFetchOperation;
  v9 = [(FCOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_issueListID, d);
  }

  return v10;
}

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  context = [(FCDraftIssuesFetchOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"issues fetch operation requires a context"];
    v10 = 136315906;
    v11 = "[FCDraftIssuesFetchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCDraftIssuesFetchOperation.m";
    v14 = 1024;
    v15 = 59;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  issueListID = [(FCDraftIssuesFetchOperation *)self issueListID];

  if (!issueListID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fetch operation requires issue list ID"];
    v10 = 136315906;
    v11 = "[FCDraftIssuesFetchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCDraftIssuesFetchOperation.m";
    v14 = 1024;
    v15 = 63;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  if (context)
  {
    v5 = issueListID == 0;
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
  v11[1] = *MEMORY[0x1E69E9840];
  context = [(FCDraftIssuesFetchOperation *)self context];
  internalContentContext = [context internalContentContext];
  issueListRecordSource = [internalContentContext issueListRecordSource];

  issueListID = [(FCDraftIssuesFetchOperation *)self issueListID];
  v11[0] = issueListID;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [issueListRecordSource fetchOperationForRecordsWithIDs:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__FCDraftIssuesFetchOperation_performOperation__block_invoke;
  v10[3] = &unk_1E7C3EF70;
  v10[4] = self;
  [v8 setFetchCompletionBlock:v10];
  [(FCOperation *)self associateChildOperation:v8];
  [v8 start];

  v9 = *MEMORY[0x1E69E9840];
}

void __47__FCDraftIssuesFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchedObject];
  v5 = [v4 onlyRecord];
  v6 = [v5 issueIDs];

  if (v6)
  {
    v7 = [FCIssuesFetchOperation alloc];
    v8 = [*(a1 + 32) context];
    v9 = [(FCIssuesFetchOperation *)v7 initWithContext:v8 issueIDs:v6];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__FCDraftIssuesFetchOperation_performOperation__block_invoke_3;
    v11[3] = &unk_1E7C37750;
    v11[4] = *(a1 + 32);
    [(FCIssuesFetchOperation *)v9 setFetchCompletionHandler:v11];
    [*(a1 + 32) associateChildOperation:v9];
    [(FCOperation *)v9 start];
  }

  else
  {
    v11[5] = MEMORY[0x1E69E9820];
    v11[6] = 3221225472;
    v11[7] = __47__FCDraftIssuesFetchOperation_performOperation__block_invoke_2;
    v11[8] = &unk_1E7C36C58;
    v12 = *(a1 + 32);
    v13 = v3;
    v10 = [v13 error];
    [v12 finishedPerformingOperationWithError:v10];
  }
}

void __47__FCDraftIssuesFetchOperation_performOperation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) error];
  [v1 finishedPerformingOperationWithError:v2];
}

void __47__FCDraftIssuesFetchOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = *(a1 + 32);
    v9 = v5;
    [v8 finishedPerformingOperationWithError:{v9, v7, 3221225472, __47__FCDraftIssuesFetchOperation_performOperation__block_invoke_4, &unk_1E7C36C58, v8}];
  }

  else
  {
    [*(a1 + 32) setResultIssues:a2];
    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionHandler = [(FCDraftIssuesFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCDraftIssuesFetchOperation *)self fetchCompletionHandler];
    resultIssues = [(FCDraftIssuesFetchOperation *)self resultIssues];
    (fetchCompletionHandler2)[2](fetchCompletionHandler2, resultIssues, errorCopy);
  }
}

@end