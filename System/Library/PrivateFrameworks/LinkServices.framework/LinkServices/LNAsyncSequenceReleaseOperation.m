@interface LNAsyncSequenceReleaseOperation
- (LNAsyncSequenceReleaseOperation)initWithConnectionInterface:(id)a3 sequence:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNAsyncSequenceReleaseOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNAsyncSequenceReleaseOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNAsyncSequenceReleaseOperation *)self completionHandler];
    (v6)[2](v6, v4);

    [(LNAsyncSequenceReleaseOperation *)self setCompletionHandler:0];
  }

  v7.receiver = self;
  v7.super_class = LNAsyncSequenceReleaseOperation;
  [(LNConnectionOperation *)&v7 finishWithError:v4];
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = LNAsyncSequenceReleaseOperation;
  [(LNConnectionOperation *)&v9 start];
  v3 = getLNLogCategoryExecution();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNAsyncSequenceReleaseOperation *)self sequence];
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Releasing sequence: %@", buf, 0xCu);
  }

  v5 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v6 = [(LNAsyncSequenceReleaseOperation *)self sequence];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__LNAsyncSequenceReleaseOperation_start__block_invoke;
  v8[3] = &unk_1E74B1B90;
  v8[4] = self;
  [v5 releaseAsyncSequence:v6 completionHandler:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __40__LNAsyncSequenceReleaseOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  os_activity_scope_enter(v4, &v5);

  [*(a1 + 32) finishWithError:v3];
  os_activity_scope_leave(&v5);
}

- (LNAsyncSequenceReleaseOperation)initWithConnectionInterface:(id)a3 sequence:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceReleaseOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"sequence"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceReleaseOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceReleaseOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNAsyncSequenceReleaseOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:v15 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_5354];

  if (v16)
  {
    objc_storeStrong(&v16->_sequence, a4);
    v17 = _Block_copy(v14);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = v16;
  }

  return v16;
}

os_activity_t __96__LNAsyncSequenceReleaseOperation_initWithConnectionInterface_sequence_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:release asyncsequence", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end