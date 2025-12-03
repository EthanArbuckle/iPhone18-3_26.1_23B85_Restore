@interface LNFetchActionOutputValueOperation
- (LNFetchActionOutputValueOperation)initWithConnectionInterface:(id)interface actionOutput:(id)output queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchActionOutputValueOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchActionOutputValueOperation *)self completionHandler];

  if (completionHandler)
  {
    value = [(LNFetchActionOutputValueOperation *)self value];
    v7 = [(LNConnectionOperation *)self validatingResult:value error:errorCopy];

    completionHandler2 = [(LNFetchActionOutputValueOperation *)self completionHandler];
    value2 = [(LNFetchActionOutputValueOperation *)self value];
    (completionHandler2)[2](completionHandler2, value2, v7);

    [(LNFetchActionOutputValueOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchActionOutputValueOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v17 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = LNFetchActionOutputValueOperation;
  [(LNConnectionOperation *)&v12 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    actionOutput = [(LNFetchActionOutputValueOperation *)self actionOutput];
    identifier = [actionOutput identifier];
    identifier2 = [(LNConnectionOperation *)self identifier];
    *buf = 138543618;
    v14 = identifier;
    v15 = 2114;
    v16 = identifier2;
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  actionOutput2 = [(LNFetchActionOutputValueOperation *)self actionOutput];
  identifier3 = [actionOutput2 identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__LNFetchActionOutputValueOperation_start__block_invoke;
  v11[3] = &unk_1E74B1010;
  v11[4] = self;
  [connectionInterface fetchActionOutputValueWithIdentifier:identifier3 completionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __42__LNFetchActionOutputValueOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setValue:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchActionOutputValueOperation)initWithConnectionInterface:(id)interface actionOutput:(id)output queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  outputCopy = output;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (outputCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchActionOutputValueOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"actionOutput"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchActionOutputValueOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!outputCopy)
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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNFetchActionOutputValueOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNFetchActionOutputValueOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_4505];

  if (v16)
  {
    objc_storeStrong(&v16->_actionOutput, output);
    v17 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = v16;
  }

  return v16;
}

os_activity_t __102__LNFetchActionOutputValueOperation_initWithConnectionInterface_actionOutput_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch action output value", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end