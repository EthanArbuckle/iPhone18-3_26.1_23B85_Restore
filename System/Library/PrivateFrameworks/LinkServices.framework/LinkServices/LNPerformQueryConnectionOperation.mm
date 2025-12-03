@interface LNPerformQueryConnectionOperation
- (LNPerformQueryConnectionOperation)initWithConnectionInterface:(id)interface query:(id)query queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNPerformQueryConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNPerformQueryConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    output = [(LNPerformQueryConnectionOperation *)self output];
    v7 = [(LNConnectionOperation *)self validatingResult:output error:errorCopy];

    completionHandler2 = [(LNPerformQueryConnectionOperation *)self completionHandler];
    output2 = [(LNPerformQueryConnectionOperation *)self output];
    (completionHandler2)[2](completionHandler2, output2, v7);

    [(LNPerformQueryConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNPerformQueryConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v7.receiver = self;
  v7.super_class = LNPerformQueryConnectionOperation;
  [(LNConnectionOperation *)&v7 start];
  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  queryRequest = [(LNPerformQueryConnectionOperation *)self queryRequest];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__LNPerformQueryConnectionOperation_start__block_invoke;
  v6[3] = &unk_1E74B2730;
  v6[4] = self;
  v6[5] = a2;
  [connectionInterface performPropertyQuery:queryRequest completionHandler:v6];
}

void __42__LNPerformQueryConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((v5 == 0) != (v6 != 0))
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"LNPerformQueryConnectionOperation.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"(output && !error) || (error && !output)"}];
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &state);

  [*(a1 + 32) setOutput:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&state);
}

- (LNPerformQueryConnectionOperation)initWithConnectionInterface:(id)interface query:(id)query queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  queryCopy = query;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (queryCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPerformQueryConnectionOperation.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNPerformQueryConnectionOperation.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!queryCopy)
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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNPerformQueryConnectionOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNPerformQueryConnectionOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_4800];

  if (v16)
  {
    objc_storeStrong(&v16->_queryRequest, query);
    v17 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = v16;
  }

  return v16;
}

os_activity_t __95__LNPerformQueryConnectionOperation_initWithConnectionInterface_query_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:perform query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end