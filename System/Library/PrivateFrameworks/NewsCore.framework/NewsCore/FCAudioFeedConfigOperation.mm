@interface FCAudioFeedConfigOperation
- (BOOL)validateOperation;
- (FCAudioFeedConfigOperation)init;
- (FCAudioFeedConfigOperation)initWithContext:(id)context;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCAudioFeedConfigOperation

- (FCAudioFeedConfigOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAudioFeedConfigOperation init]";
    v10 = 2080;
    v11 = "FCAudioFeedConfigOperation.m";
    v12 = 1024;
    v13 = 39;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAudioFeedConfigOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAudioFeedConfigOperation)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FCAudioFeedConfigOperation;
  v6 = [(FCOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
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
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"audio feed config operation requires a context"];
      v6 = 136315906;
      v7 = "[FCAudioFeedConfigOperation validateOperation]";
      v8 = 2080;
      v9 = "FCAudioFeedConfigOperation.m";
      v10 = 1024;
      v11 = 58;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);

      LOBYTE(v2) = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)performOperation
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__FCAudioFeedConfigOperation_performOperation__block_invoke;
  v13[3] = &unk_1E7C396C0;
  v13[4] = self;
  v3 = [MEMORY[0x1E69B68F8] firstly:v13];
  v4 = zalgo();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__FCAudioFeedConfigOperation_performOperation__block_invoke_2;
  v12[3] = &unk_1E7C3B298;
  v12[4] = self;
  v5 = [v3 thenOn:v4 then:v12];
  v6 = zalgo();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__FCAudioFeedConfigOperation_performOperation__block_invoke_3;
  v11[3] = &unk_1E7C3EF20;
  v11[4] = self;
  v7 = [v5 thenOn:v6 then:v11];
  v8 = zalgo();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__FCAudioFeedConfigOperation_performOperation__block_invoke_4;
  v10[3] = &unk_1E7C36E50;
  v10[4] = self;
  v9 = [v7 errorOn:v8 error:v10];
}

id __46__FCAudioFeedConfigOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(v1 + 376) configurationManager];
    v3 = FCCoreConfigurationPromise(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __46__FCAudioFeedConfigOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = objc_alloc(MEMORY[0x1E69B68F8]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__FCAudioFeedConfigOperation__promiseAudioConfigsWithConfig___block_invoke;
    v7[3] = &unk_1E7C3B310;
    v7[4] = v2;
    v8 = v3;
    v5 = [v4 initWithResolver:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __46__FCAudioFeedConfigOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 first];
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_storeStrong((v5 + 384), v4);
  }

  v6 = [v3 second];

  v7 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong((v7 + 392), v6);
  }

  [*(a1 + 32) finishedPerformingOperationWithError:0];
  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionHandler = [(FCAudioFeedConfigOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCAudioFeedConfigOperation *)self fetchCompletionHandler];
    if (self)
    {
      v6 = self->_resultFeedConfig;
      resultLegacyConfig = self->_resultLegacyConfig;
    }

    else
    {
      v6 = 0;
      resultLegacyConfig = 0;
    }

    (fetchCompletionHandler2)[2](fetchCompletionHandler2, v6, resultLegacyConfig, errorCopy);
  }
}

void __61__FCAudioFeedConfigOperation__promiseAudioConfigsWithConfig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCRecordChainFetchOperation);
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 376);
  }

  else
  {
    v10 = 0;
  }

  [(FCRecordChainFetchOperation *)v7 setContext:v10];
  v11 = [*(a1 + 40) audioConfigRecordID];
  v32[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [(FCRecordChainFetchOperation *)v8 setTopLevelRecordIDs:v12];

  v30[0] = @"AudioConfig";
  v29[0] = @"curatedArticleIDs";
  v29[1] = @"dailyBriefingArticleID";
  v29[2] = @"heroArticleIDs";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v31[0] = v13;
  v30[1] = @"ArticleList";
  v28 = @"articleIDs";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v31[1] = v14;
  v30[2] = @"Article";
  v27[0] = @"sourceChannelTagID";
  v27[1] = @"parentIssueID";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v31[2] = v15;
  v31[3] = MEMORY[0x1E695E0F0];
  v30[3] = @"Tag";
  v30[4] = @"Issue";
  v31[4] = MEMORY[0x1E695E0F0];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5];
  [(FCRecordChainFetchOperation *)v8 setLinkKeysByRecordType:v16];

  v25 = @"AudioConfig";
  v17 = [FCCachePolicy cachePolicyWithSoftMaxAge:300.0];
  v26 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [(FCRecordChainFetchOperation *)v8 setCachePoliciesByRecordType:v18];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__FCAudioFeedConfigOperation__promiseAudioConfigsWithConfig___block_invoke_2;
  v22[3] = &unk_1E7C3EF48;
  v23 = v6;
  v24 = v5;
  v19 = v5;
  v20 = v6;
  [(FCRecordChainFetchOperation *)v8 setRecordChainCompletionHandler:v22];
  [*(a1 + 32) associateChildOperation:v8];
  [(FCOperation *)v8 start];

  v21 = *MEMORY[0x1E69E9840];
}

void __61__FCAudioFeedConfigOperation__promiseAudioConfigsWithConfig___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __61__FCAudioFeedConfigOperation__promiseAudioConfigsWithConfig___block_invoke_3;
    v17 = &unk_1E7C37778;
    v19 = *(a1 + 32);
    v18 = v5;
    v19[2](v19, v18);

    v6 = v19;
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:&unk_1F2E70350];
    v7 = [v6 onlyRecord];
    v8 = [v7 feedConfiguration];
    v9 = [v7 configuration];
    if ([v8 length])
    {
      v10 = *(a1 + 40);
      v11 = [FCPair pairWithFirst:v8 second:v9];
      (*(v10 + 16))(v10, v11);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __61__FCAudioFeedConfigOperation__promiseAudioConfigsWithConfig___block_invoke_20;
      v12[3] = &unk_1E7C379C8;
      v13 = *(a1 + 32);
      __61__FCAudioFeedConfigOperation__promiseAudioConfigsWithConfig___block_invoke_20(v12);
    }
  }
}

void __61__FCAudioFeedConfigOperation__promiseAudioConfigsWithConfig___block_invoke_20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_notAvailableError];
  (*(v1 + 16))(v1, v2);
}

@end