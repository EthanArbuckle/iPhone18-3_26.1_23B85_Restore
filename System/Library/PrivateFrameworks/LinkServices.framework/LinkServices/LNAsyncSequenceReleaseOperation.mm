@interface LNAsyncSequenceReleaseOperation
- (LNAsyncSequenceReleaseOperation)initWithConnectionInterface:(id)interface sequence:(id)sequence queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNAsyncSequenceReleaseOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNAsyncSequenceReleaseOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(LNAsyncSequenceReleaseOperation *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);

    [(LNAsyncSequenceReleaseOperation *)self setCompletionHandler:0];
  }

  v7.receiver = self;
  v7.super_class = LNAsyncSequenceReleaseOperation;
  [(LNConnectionOperation *)&v7 finishWithError:errorCopy];
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
    sequence = [(LNAsyncSequenceReleaseOperation *)self sequence];
    *buf = 138412290;
    v11 = sequence;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Releasing sequence: %@", buf, 0xCu);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  sequence2 = [(LNAsyncSequenceReleaseOperation *)self sequence];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__LNAsyncSequenceReleaseOperation_start__block_invoke;
  v8[3] = &unk_1E74B1B90;
  v8[4] = self;
  [connectionInterface releaseAsyncSequence:sequence2 completionHandler:v8];

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

- (LNAsyncSequenceReleaseOperation)initWithConnectionInterface:(id)interface sequence:(id)sequence queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  sequenceCopy = sequence;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (sequenceCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceReleaseOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"sequence"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceReleaseOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!sequenceCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAsyncSequenceReleaseOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNAsyncSequenceReleaseOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_5354];

  if (v16)
  {
    objc_storeStrong(&v16->_sequence, sequence);
    v17 = _Block_copy(handlerCopy);
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