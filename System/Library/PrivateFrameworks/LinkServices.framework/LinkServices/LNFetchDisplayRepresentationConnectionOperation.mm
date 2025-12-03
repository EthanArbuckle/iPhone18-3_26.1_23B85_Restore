@interface LNFetchDisplayRepresentationConnectionOperation
- (LNFetchDisplayRepresentationConnectionOperation)initWithConnectionInterface:(id)interface actions:(id)actions queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchDisplayRepresentationConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchDisplayRepresentationConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    results = [(LNFetchDisplayRepresentationConnectionOperation *)self results];
    v7 = [(LNConnectionOperation *)self validatingResult:results error:errorCopy];

    completionHandler2 = [(LNFetchDisplayRepresentationConnectionOperation *)self completionHandler];
    results2 = [(LNFetchDisplayRepresentationConnectionOperation *)self results];
    (completionHandler2)[2](completionHandler2, results2, v7);

    [(LNFetchDisplayRepresentationConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchDisplayRepresentationConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v8.receiver = self;
  v8.super_class = LNFetchDisplayRepresentationConnectionOperation;
  [(LNConnectionOperation *)&v8 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching display representations", buf, 2u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  actions = [(LNFetchDisplayRepresentationConnectionOperation *)self actions];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__LNFetchDisplayRepresentationConnectionOperation_start__block_invoke;
  v6[3] = &unk_1E74B1F78;
  v6[4] = self;
  [connectionInterface fetchDisplayRepresentationForActions:actions completionHandler:v6];
}

void __56__LNFetchDisplayRepresentationConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResults:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchDisplayRepresentationConnectionOperation)initWithConnectionInterface:(id)interface actions:(id)actions queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  actionsCopy = actions;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (actionsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchDisplayRepresentationConnectionOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"actions"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchDisplayRepresentationConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!actionsCopy)
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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNFetchDisplayRepresentationConnectionOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNFetchDisplayRepresentationConnectionOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_4567];

  if (v16)
  {
    objc_storeStrong(&v16->_actions, actions);
    v17 = _Block_copy(handlerCopy);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    v19 = v16;
  }

  return v16;
}

os_activity_t __111__LNFetchDisplayRepresentationConnectionOperation_initWithConnectionInterface_actions_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch display representation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end