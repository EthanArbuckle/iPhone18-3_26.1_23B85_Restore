@interface FCIssueHeadlinesFetchOperation
- (BOOL)validateOperation;
- (FCIssueHeadlinesFetchOperation)init;
- (FCIssueHeadlinesFetchOperation)initWithContext:(id)context issueIDs:(id)ds;
- (FCIssueHeadlinesFetchOperation)initWithContext:(id)context issues:(id)issues;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCIssueHeadlinesFetchOperation

- (FCIssueHeadlinesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCIssueHeadlinesFetchOperation init]";
    v10 = 2080;
    v11 = "FCIssueHeadlinesFetchOperation.m";
    v12 = 1024;
    v13 = 47;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssueHeadlinesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCIssueHeadlinesFetchOperation)initWithContext:(id)context issueIDs:(id)ds
{
  contextCopy = context;
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = FCIssueHeadlinesFetchOperation;
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

- (FCIssueHeadlinesFetchOperation)initWithContext:(id)context issues:(id)issues
{
  contextCopy = context;
  v7 = [issues fc_arrayByTransformingWithBlock:&__block_literal_global_102];
  v8 = [(FCIssueHeadlinesFetchOperation *)self initWithContext:contextCopy issueIDs:v7];

  return v8;
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
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"channel issues fetch operation requires a context"];
      v9 = 136315906;
      v10 = "[FCIssueHeadlinesFetchOperation validateOperation]";
      v11 = 2080;
      v12 = "FCIssueHeadlinesFetchOperation.m";
      v13 = 1024;
      v14 = 76;
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

  if (self->_issueIDs)
  {
    v4 = 1;
    goto LABEL_12;
  }

LABEL_9:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"issues headlines fetch operation requires issue IDs"];
    v9 = 136315906;
    v10 = "[FCIssueHeadlinesFetchOperation validateOperation]";
    v11 = 2080;
    v12 = "FCIssueHeadlinesFetchOperation.m";
    v13 = 1024;
    v14 = 80;
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
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__50;
  v14[4] = __Block_byref_object_dispose__50;
  v15 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke;
  v13[3] = &unk_1E7C396C0;
  v13[4] = self;
  v3 = [MEMORY[0x1E69B68F8] firstly:v13];
  v4 = zalgo();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_2;
  v12[3] = &unk_1E7C41FF0;
  v12[4] = self;
  v12[5] = v14;
  v5 = [v3 thenOn:v4 then:v12];
  v6 = zalgo();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_3;
  v11[3] = &unk_1E7C42040;
  v11[4] = self;
  v11[5] = v14;
  v7 = [v5 thenOn:v6 then:v11];
  v8 = zalgo();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_8;
  v10[3] = &unk_1E7C36E50;
  v10[4] = self;
  v9 = [v7 errorOn:v8 error:v10];

  _Block_object_dispose(v14, 8);
}

id __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(v1 + 384) configurationManager];
    v3 = FCCoreConfigurationPromise(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69B68F8]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__FCIssueHeadlinesFetchOperation__promiseHeldRecordsByType__block_invoke;
    v8[3] = &unk_1E7C39ED0;
    v8[4] = v5;
    v5 = [v6 initWithResolver:v8];
  }

  return v5;
}

uint64_t __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v57[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:&unk_1F2E70620];
  v5 = [v3 objectForKeyedSubscript:&unk_1F2E70638];
  v6 = [v3 objectForKeyedSubscript:&unk_1F2E70650];

  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[48];
  }

  v8 = v7;
  v9 = [v8 tagController];
  v10 = [v9 channelsForTagRecords:v6];

  v11 = *(a1 + 32);
  v12 = *(*(*(a1 + 40) + 8) + 40);
  v47 = v6;
  if (v11)
  {
    v11 = v11[48];
  }

  v13 = v11;
  v14 = [v13 assetManager];
  v15 = MEMORY[0x1E695DFD8];
  v16 = [v5 allRecordIDs];
  v17 = [v15 setWithArray:v16];
  v46 = FCHeadlinesByArticleIDFromHeldRecords(v12, v14, v17, v5, v10, v4, 1, 1);

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_22;
  v54[3] = &unk_1E7C3B1B0;
  v18 = v10;
  v19 = *(a1 + 32);
  v45 = v18;
  v55 = v18;
  v56 = v19;
  v43 = [v4 transformRecordsByIDWithBlock:v54];
  v20 = [FCMultiAccessChecker alloc];
  v21 = objc_opt_new();
  v57[0] = v21;
  v22 = [FCStorefrontAccessChecker alloc];
  v23 = *(a1 + 32);
  v24 = v5;
  v25 = v4;
  if (v23)
  {
    v23 = v23[48];
  }

  v26 = v23;
  v27 = [v26 privateChannelMembershipController];
  v28 = [(FCStorefrontAccessChecker *)v22 initWithPrivateChannelMembershipController:v27];
  v57[1] = v28;
  v29 = objc_opt_new();
  v57[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
  v31 = [(FCMultiAccessChecker *)v20 initWithAccessCheckers:v30];

  v32 = *(a1 + 32);
  if (v32)
  {
    v33 = *(v32 + 384);
  }

  else
  {
    v33 = 0;
  }

  v34 = [v33 networkReachability];
  v35 = [v34 offlineReason];

  if (v35)
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_3_34;
    v51[3] = &unk_1E7C382E8;
    v51[4] = *(a1 + 32);
    v52 = v44;
    v53 = v46;
    if (__50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_3_34(v51))
    {
      v36 = [MEMORY[0x1E696ABC0] fc_offlineErrorWithReason:v35];
      [*(a1 + 32) finishedPerformingOperationWithError:v36];

      v37 = v52;
      goto LABEL_16;
    }
  }

  v38 = [v44 allValues];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_6;
  v48[3] = &unk_1E7C42018;
  v49 = v46;
  v50 = v31;
  v39 = [v38 fc_dictionaryWithValueBlock:v48];
  v40 = *(a1 + 32);
  if (v40)
  {
    objc_storeStrong((v40 + 400), v39);
  }

  [*(a1 + 32) finishedPerformingOperationWithError:0];
  v37 = v49;
LABEL_16:

  v41 = *MEMORY[0x1E69E9840];
  return 0;
}

FCIssue *__50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_22(uint64_t a1, void *a2, void *a3)
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
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 384);
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 assetManager];
    v15 = [(FCIssue *)v11 initWithIssueRecord:v5 assetManager:v14 interestToken:v6 sourceChannel:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_3_34(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[49];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v19 = *v25;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 40) objectForKey:*(*(&v24 + 1) + 8 * i)];
        if (!v8)
        {
LABEL_21:
          v16 = 1;
          goto LABEL_23;
        }

        v9 = v8;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v9 allArticleIDs];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(a1 + 48) objectForKey:*(*(&v20 + 1) + 8 * j)];

              if (!v15)
              {

                goto LABEL_21;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v16 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_23:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

id __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 allArticleIDs];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_7;
  v6[3] = &unk_1E7C373E0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = [v3 fc_arrayByTransformingWithBlock:v6];

  return v4;
}

void *__50__FCIssueHeadlinesFetchOperation_performOperation__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v3)
  {
    if ([*(a1 + 40) hasAccessToItem:v3 blockedReason:0 error:0])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionHandler = [(FCIssueHeadlinesFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCIssueHeadlinesFetchOperation *)self fetchCompletionHandler];
    v6 = fetchCompletionHandler2;
    if (self)
    {
      resultHeadlinesByIssue = self->_resultHeadlinesByIssue;
    }

    else
    {
      resultHeadlinesByIssue = 0;
    }

    (*(fetchCompletionHandler2 + 16))(fetchCompletionHandler2, resultHeadlinesByIssue, errorCopy);
  }
}

void __59__FCIssueHeadlinesFetchOperation__promiseHeldRecordsByType__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCRecordChainFetchOperation);
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 384);
  }

  else
  {
    v10 = 0;
  }

  [(FCRecordChainFetchOperation *)v7 setContext:v10];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 392);
  }

  else
  {
    v12 = 0;
  }

  [(FCRecordChainFetchOperation *)v8 setTopLevelRecordIDs:v12];
  v29[0] = @"Issue";
  v28 = @"allArticleIDs";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v30[0] = v13;
  v29[1] = @"Article";
  v27 = @"sourceChannelTagID";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v29[2] = @"Tag";
  v30[1] = v14;
  v30[2] = MEMORY[0x1E695E0F0];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  [(FCRecordChainFetchOperation *)v8 setLinkKeysByRecordType:v15];

  v16 = [*(a1 + 32) cachePolicy];

  if (v16)
  {
    v25 = @"Issue";
    v17 = [*(a1 + 32) cachePolicy];
    v26 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [(FCRecordChainFetchOperation *)v8 setCachePoliciesByRecordType:v18];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__FCIssueHeadlinesFetchOperation__promiseHeldRecordsByType__block_invoke_2;
  v22[3] = &unk_1E7C3EF48;
  v23 = v5;
  v24 = v6;
  v19 = v6;
  v20 = v5;
  [(FCRecordChainFetchOperation *)v8 setRecordChainCompletionHandler:v22];
  [*(a1 + 32) associateChildOperation:v8];
  [(FCOperation *)v8 start];

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __59__FCIssueHeadlinesFetchOperation__promiseHeldRecordsByType__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

@end