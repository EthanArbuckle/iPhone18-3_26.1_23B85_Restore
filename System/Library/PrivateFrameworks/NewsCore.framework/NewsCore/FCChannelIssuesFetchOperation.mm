@interface FCChannelIssuesFetchOperation
- (BOOL)validateOperation;
- (FCChannelIssuesFetchOperation)init;
- (FCChannelIssuesFetchOperation)initWithContext:(id)a3 channelIDs:(id)a4 issueSet:(int64_t)a5;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCChannelIssuesFetchOperation

- (FCChannelIssuesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCChannelIssuesFetchOperation init]";
    v10 = 2080;
    v11 = "FCChannelIssuesFetchOperation.m";
    v12 = 1024;
    v13 = 38;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCChannelIssuesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCChannelIssuesFetchOperation)initWithContext:(id)a3 channelIDs:(id)a4 issueSet:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = FCChannelIssuesFetchOperation;
  v11 = [(FCOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, a3);
    v13 = [v10 copy];
    channelIDs = v12->_channelIDs;
    v12->_channelIDs = v13;

    v12->_issueSet = a5;
  }

  return v12;
}

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(FCChannelIssuesFetchOperation *)self context];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"channel issues fetch operation requires a context"];
    v10 = 136315906;
    v11 = "[FCChannelIssuesFetchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCChannelIssuesFetchOperation.m";
    v14 = 1024;
    v15 = 61;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  v4 = [(FCChannelIssuesFetchOperation *)self channelIDs];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"channel issues fetch operation requires channel IDs"];
    v10 = 136315906;
    v11 = "[FCChannelIssuesFetchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCChannelIssuesFetchOperation.m";
    v14 = 1024;
    v15 = 65;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  if (v3)
  {
    v5 = v4 == 0;
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
  v21[3] = *MEMORY[0x1E69E9840];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__FCChannelIssuesFetchOperation_performOperation__block_invoke;
  v16[3] = &unk_1E7C3B578;
  v16[4] = self;
  v3 = __49__FCChannelIssuesFetchOperation_performOperation__block_invoke(v16);
  v4 = objc_alloc_init(FCRecordChainFetchOperation);
  v5 = [(FCChannelIssuesFetchOperation *)self context];
  [(FCRecordChainFetchOperation *)v4 setContext:v5];

  v6 = [(FCChannelIssuesFetchOperation *)self channelIDs];
  [(FCRecordChainFetchOperation *)v4 setTopLevelRecordIDs:v6];

  v21[0] = v3;
  v20[0] = @"Tag";
  v20[1] = @"IssueList";
  v19 = @"issueIDs";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v20[2] = @"Issue";
  v21[1] = v7;
  v21[2] = MEMORY[0x1E695E0F0];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  [(FCRecordChainFetchOperation *)v4 setLinkKeysByRecordType:v8];

  v9 = [(FCChannelIssuesFetchOperation *)self cachePolicy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [FCCachePolicy cachePolicyWithSoftMaxAge:300.0];
  }

  v12 = v11;

  v17[0] = @"Tag";
  v17[1] = @"IssueList";
  v18[0] = v12;
  v18[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [(FCRecordChainFetchOperation *)v4 setCachePoliciesByRecordType:v13];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__FCChannelIssuesFetchOperation_performOperation__block_invoke_2;
  v15[3] = &unk_1E7C39358;
  v15[4] = self;
  [(FCRecordChainFetchOperation *)v4 setRecordChainCompletionHandler:v15];
  [(FCOperation *)self associateChildOperation:v4];
  [(FCOperation *)v4 start];

  v14 = *MEMORY[0x1E69E9840];
}

id __49__FCChannelIssuesFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) issueSet];
  if (v1 == 1)
  {
    v7 = @"latestIssueIDs";
    v8 = @"archiveIssueListID";
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v7;
    v4 = 2;
  }

  else
  {
    if (v1)
    {
      goto LABEL_6;
    }

    v9[0] = @"latestIssueIDs";
    v2 = MEMORY[0x1E695DEC8];
    v3 = v9;
    v4 = 1;
  }

  v1 = [v2 arrayWithObjects:v3 count:{v4, v7, v8, v9[0]}];
LABEL_6:
  v5 = *MEMORY[0x1E69E9840];

  return v1;
}

void __49__FCChannelIssuesFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v29[5] = MEMORY[0x1E69E9820];
    v29[6] = 3221225472;
    v29[7] = __49__FCChannelIssuesFetchOperation_performOperation__block_invoke_3;
    v29[8] = &unk_1E7C36C58;
    v30 = *(a1 + 32);
    v31 = v6;
    [v30 finishedPerformingOperationWithError:v31];
    v8 = v31;
  }

  else
  {
    v22 = [v5 objectForKeyedSubscript:&unk_1F2E70770];
    v9 = [v5 objectForKeyedSubscript:&unk_1F2E70788];
    v10 = [v5 objectForKeyedSubscript:&unk_1F2E707A0];
    v11 = [*(a1 + 32) context];
    v12 = [v11 tagController];
    v13 = [v12 channelsForTagRecords:v22];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __49__FCChannelIssuesFetchOperation_performOperation__block_invoke_23;
    v29[3] = &unk_1E7C3FF08;
    v29[4] = *(a1 + 32);
    v14 = [v9 heldRecordsPassingTest:v29];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __49__FCChannelIssuesFetchOperation_performOperation__block_invoke_2_25;
    v26[3] = &unk_1E7C3B1B0;
    v15 = *(a1 + 32);
    v27 = v13;
    v28 = v15;
    v16 = v13;
    v17 = [v14 transformRecordsByIDWithBlock:v26];
    v18 = [v16 allValues];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __49__FCChannelIssuesFetchOperation_performOperation__block_invoke_4;
    v23[3] = &unk_1E7C43CF0;
    v23[4] = *(a1 + 32);
    v24 = v10;
    v25 = v17;
    v19 = v17;
    v20 = v10;
    v21 = [v18 fc_dictionaryWithValueBlock:v23];
    [*(a1 + 32) setResultIssuesByChannel:v21];

    [*(a1 + 32) finishedPerformingOperationWithError:0];
    v8 = v22;
  }
}

uint64_t __49__FCChannelIssuesFetchOperation_performOperation__block_invoke_23(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 contentStoreFrontID];
  v6 = [v3 isAllowedInStorefront:v5];

  return v6;
}

FCIssue *__49__FCChannelIssuesFetchOperation_performOperation__block_invoke_2_25(uint64_t a1, void *a2, void *a3)
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

id __49__FCChannelIssuesFetchOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DFA0] orderedSet];
  v5 = [*(a1 + 32) issueSet];
  if (v5 == 1)
  {
    v7 = [v3 currentIssueIDs];
    [v4 addObjectsFromArray:v7];

    v8 = *(a1 + 40);
    v9 = [v3 backIssuesListID];
    v6 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &stru_1F2DC7DC0;
    }

    v11 = [v8 recordWithID:v10];
    v12 = [v11 issueIDs];
    [v4 addObjectsFromArray:v12];
  }

  else
  {
    if (v5)
    {
      goto LABEL_9;
    }

    v6 = [v3 currentIssueIDs];
    [v4 addObjectsFromArray:v6];
  }

LABEL_9:
  v13 = *(a1 + 48);
  v14 = [v4 array];
  v15 = [v13 nf_objectsForKeysWithoutMarker:v14];

  return v15;
}

- (void)operationWillFinishWithError:(id)a3
{
  v7 = a3;
  v4 = [(FCChannelIssuesFetchOperation *)self fetchCompletionHandler];

  if (v4)
  {
    v5 = [(FCChannelIssuesFetchOperation *)self fetchCompletionHandler];
    v6 = [(FCChannelIssuesFetchOperation *)self resultIssuesByChannel];
    (v5)[2](v5, v6, v7);
  }
}

@end