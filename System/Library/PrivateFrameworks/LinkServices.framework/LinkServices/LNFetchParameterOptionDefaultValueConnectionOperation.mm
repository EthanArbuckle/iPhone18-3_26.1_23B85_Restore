@interface LNFetchParameterOptionDefaultValueConnectionOperation
- (LNFetchParameterOptionDefaultValueConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action actionMetadata:(id)metadata parameterIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchParameterOptionDefaultValueConnectionOperation

- (void)start
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = LNFetchParameterOptionDefaultValueConnectionOperation;
  [(LNConnectionOperation *)&v13 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    actionMetadata = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self actionMetadata];
    identifier = [actionMetadata identifier];
    parameterIdentifier = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self parameterIdentifier];
    *buf = 138412546;
    v15 = identifier;
    v16 = 2112;
    v17 = parameterIdentifier;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching options default value for action %@ parameter %@", buf, 0x16u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  action = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self action];
  actionMetadata2 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self actionMetadata];
  parameterIdentifier2 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self parameterIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__LNFetchParameterOptionDefaultValueConnectionOperation_start__block_invoke;
  v12[3] = &unk_1E74B12C8;
  v12[4] = self;
  [connectionInterface fetchParameterOptionDefaultValueForAction:action actionMetadata:actionMetadata2 parameterIdentifier:parameterIdentifier2 completionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __62__LNFetchParameterOptionDefaultValueConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self completionHandler];
    result = [(LNFetchParameterOptionDefaultValueConnectionOperation *)self result];
    (completionHandler2)[2](completionHandler2, result, errorCopy);

    [(LNFetchParameterOptionDefaultValueConnectionOperation *)self setCompletionHandler:0];
  }

  v8.receiver = self;
  v8.super_class = LNFetchParameterOptionDefaultValueConnectionOperation;
  [(LNConnectionOperation *)&v8 finishWithError:errorCopy];
}

- (LNFetchParameterOptionDefaultValueConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action actionMetadata:(id)metadata parameterIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  actionCopy = action;
  metadataCopy = metadata;
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  if (metadataCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchParameterOptionDefaultValueConnectionOperation.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchParameterOptionDefaultValueConnectionOperation.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"actionMetadata"}];

  if (!identifierCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNFetchParameterOptionDefaultValueConnectionOperation.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  systemProtocols = [metadataCopy systemProtocols];
  v23 = systemProtocols;
  if (systemProtocols)
  {
    v24 = systemProtocols;
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  v39.receiver = self;
  v39.super_class = LNFetchParameterOptionDefaultValueConnectionOperation;
  v25 = [(LNRuntimeAssertionsTakingConnectionOperation *)&v39 initWithIdentifier:uUID connectionInterface:interfaceCopy systemProtocols:v24 priority:1 queue:queueCopy activity:&__block_literal_global_6118];

  if (v25)
  {
    v26 = [actionCopy copy];
    action = v25->_action;
    v25->_action = v26;

    v28 = [metadataCopy copy];
    actionMetadata = v25->_actionMetadata;
    v25->_actionMetadata = v28;

    v30 = [identifierCopy copy];
    parameterIdentifier = v25->_parameterIdentifier;
    v25->_parameterIdentifier = v30;

    v32 = [handlerCopy copy];
    completionHandler = v25->_completionHandler;
    v25->_completionHandler = v32;

    v34 = v25;
  }

  return v25;
}

os_activity_t __151__LNFetchParameterOptionDefaultValueConnectionOperation_initWithConnectionInterface_action_actionMetadata_parameterIdentifier_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch parameter option default value", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end