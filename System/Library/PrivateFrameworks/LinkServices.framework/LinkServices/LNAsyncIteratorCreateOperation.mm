@interface LNAsyncIteratorCreateOperation
- (LNAsyncIteratorCreateOperation)initWithConnectionInterface:(id)a3 sequence:(id)a4 options:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNAsyncIteratorCreateOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNAsyncIteratorCreateOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNAsyncIteratorCreateOperation *)self iteratorReference];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNAsyncIteratorCreateOperation *)self completionHandler];
    v9 = [(LNAsyncIteratorCreateOperation *)self iteratorReference];
    (v8)[2](v8, v9, v7);

    [(LNAsyncIteratorCreateOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNAsyncIteratorCreateOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = LNAsyncIteratorCreateOperation;
  [(LNConnectionOperation *)&v11 start];
  v3 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNAsyncIteratorCreateOperation *)self sequence];
    v5 = [(LNAsyncIteratorCreateOperation *)self options];
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Creating AsyncIterator for sequence: %@, with options: %@", buf, 0x16u);
  }

  v6 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v7 = [(LNAsyncIteratorCreateOperation *)self sequence];
  v8 = [(LNAsyncIteratorCreateOperation *)self options];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__LNAsyncIteratorCreateOperation_start__block_invoke;
  v10[3] = &unk_1E74B08A8;
  v10[4] = self;
  [v6 createAsyncIteratorForSequence:v7 options:v8 completionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __39__LNAsyncIteratorCreateOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setIteratorReference:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNAsyncIteratorCreateOperation)initWithConnectionInterface:(id)a3 sequence:(id)a4 options:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorCreateOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

LABEL_10:
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorCreateOperation.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"options"}];

      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorCreateOperation.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"sequence"}];

  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v17)
  {
    goto LABEL_5;
  }

LABEL_11:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"LNAsyncIteratorCreateOperation.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  v18 = [MEMORY[0x1E696AFB0] UUID];
  v28.receiver = self;
  v28.super_class = LNAsyncIteratorCreateOperation;
  v19 = [(LNInterfaceConnectionOperation *)&v28 initWithIdentifier:v18 connectionInterface:v13 priority:1 queue:v16 activity:&__block_literal_global];

  if (v19)
  {
    objc_storeStrong(&v19->_sequence, a4);
    objc_storeStrong(&v19->_options, a5);
    v20 = _Block_copy(v17);
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v20;

    v22 = v19;
  }

  return v19;
}

os_activity_t __103__LNAsyncIteratorCreateOperation_initWithConnectionInterface_sequence_options_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:create asyncsequence iterator", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end