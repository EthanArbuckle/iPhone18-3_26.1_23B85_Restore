@interface FCAudioConfigurationOperation
- (BOOL)validateOperation;
- (FCAudioConfigurationOperation)init;
- (FCAudioConfigurationOperation)initWithContext:(id)context;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCAudioConfigurationOperation

- (FCAudioConfigurationOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAudioConfigurationOperation init]";
    v10 = 2080;
    v11 = "FCAudioConfigurationOperation.m";
    v12 = 1024;
    v13 = 36;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAudioConfigurationOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAudioConfigurationOperation)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FCAudioConfigurationOperation;
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
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"daily briefing fetch operation requires a context"];
      v6 = 136315906;
      v7 = "[FCAudioConfigurationOperation validateOperation]";
      v8 = 2080;
      v9 = "FCAudioConfigurationOperation.m";
      v10 = 1024;
      v11 = 55;
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
  v13[2] = __49__FCAudioConfigurationOperation_performOperation__block_invoke;
  v13[3] = &unk_1E7C396C0;
  v13[4] = self;
  v3 = [MEMORY[0x1E69B68F8] firstly:v13];
  v4 = zalgo();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__FCAudioConfigurationOperation_performOperation__block_invoke_2;
  v12[3] = &unk_1E7C3B298;
  v12[4] = self;
  v5 = [v3 thenOn:v4 then:v12];
  v6 = zalgo();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__FCAudioConfigurationOperation_performOperation__block_invoke_3;
  v11[3] = &unk_1E7C38D38;
  v11[4] = self;
  v7 = [v5 thenOn:v6 then:v11];
  v8 = zalgo();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__FCAudioConfigurationOperation_performOperation__block_invoke_4;
  v10[3] = &unk_1E7C36E50;
  v10[4] = self;
  v9 = [v7 errorOn:v8 error:v10];
}

id __49__FCAudioConfigurationOperation_performOperation__block_invoke(uint64_t a1)
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

id __49__FCAudioConfigurationOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = objc_alloc(MEMORY[0x1E69B68F8]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__FCAudioConfigurationOperation__promiseConfiguration___block_invoke;
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

uint64_t __49__FCAudioConfigurationOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((v2 + 384), a2);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  [v4 finishedPerformingOperationWithError:0];
  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    v5 = FCOperationLog;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      shortOperationDescription = [(FCOperation *)self shortOperationDescription];
      v7 = shortOperationDescription;
      if (self)
      {
        resultConfigString = self->_resultConfigString;
      }

      else
      {
        resultConfigString = 0;
      }

      v14 = 138543618;
      v15 = shortOperationDescription;
      v16 = 2114;
      v17 = resultConfigString;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with config %{public}@", &v14, 0x16u);
    }
  }

  fetchCompletionHandler = [(FCAudioConfigurationOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCAudioConfigurationOperation *)self fetchCompletionHandler];
    v11 = fetchCompletionHandler2;
    if (self)
    {
      v12 = self->_resultConfigString;
    }

    else
    {
      v12 = 0;
    }

    (*(fetchCompletionHandler2 + 16))(fetchCompletionHandler2, v12, errorCopy);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __55__FCAudioConfigurationOperation__promiseConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
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
  v29[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [(FCRecordChainFetchOperation *)v8 setTopLevelRecordIDs:v12];

  v27[0] = @"AudioConfig";
  v27[1] = @"ArticleList";
  v28[0] = MEMORY[0x1E695E0F0];
  v28[1] = MEMORY[0x1E695E0F0];
  v27[2] = @"Article";
  v27[3] = @"Tag";
  v28[2] = MEMORY[0x1E695E0F0];
  v28[3] = MEMORY[0x1E695E0F0];
  v27[4] = @"Issue";
  v28[4] = MEMORY[0x1E695E0F0];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];
  [(FCRecordChainFetchOperation *)v8 setLinkKeysByRecordType:v13];

  v25 = @"AudioConfig";
  v14 = [FCCachePolicy cachePolicyWithSoftMaxAge:3600.0];
  v26 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [(FCRecordChainFetchOperation *)v8 setCachePoliciesByRecordType:v15];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __55__FCAudioConfigurationOperation__promiseConfiguration___block_invoke_2;
  v22 = &unk_1E7C3EF48;
  v23 = v6;
  v24 = v5;
  v16 = v5;
  v17 = v6;
  [(FCRecordChainFetchOperation *)v8 setRecordChainCompletionHandler:&v19];
  [*(a1 + 32) associateChildOperation:{v8, v19, v20, v21, v22}];
  [(FCOperation *)v8 start];

  v18 = *MEMORY[0x1E69E9840];
}

void __55__FCAudioConfigurationOperation__promiseConfiguration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v11 = *(a1 + 32);
    v10 = v5;
    v11[2](v11, v10);
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:&unk_1F2E703B0];
    v7 = [v6 onlyRecord];
    v8 = *(a1 + 40);
    v9 = [v7 configuration];
    (*(v8 + 16))(v8, v9);
  }
}

@end