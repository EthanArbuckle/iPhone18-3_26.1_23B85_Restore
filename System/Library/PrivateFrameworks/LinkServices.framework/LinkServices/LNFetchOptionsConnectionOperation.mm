@interface LNFetchOptionsConnectionOperation
- (LNFetchOptionsConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action actionMetadata:(id)metadata parameterMetadata:(id)parameterMetadata optionsProviderReference:(id)reference searchTerm:(id)term localeIdentifier:(id)identifier queue:(id)self0 completionHandler:(id)self1;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchOptionsConnectionOperation

- (void)start
{
  v25 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = LNFetchOptionsConnectionOperation;
  [(LNConnectionOperation *)&v18 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    actionMetadata = [(LNFetchOptionsConnectionOperation *)self actionMetadata];
    identifier = [actionMetadata identifier];
    parameterMetadata = [(LNFetchOptionsConnectionOperation *)self parameterMetadata];
    name = [parameterMetadata name];
    searchTerm = [(LNFetchOptionsConnectionOperation *)self searchTerm];
    *buf = 138412802;
    v20 = identifier;
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = searchTerm;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching options for action %@, parameter: %@, searchTerm: %@", buf, 0x20u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  action = [(LNFetchOptionsConnectionOperation *)self action];
  actionMetadata2 = [(LNFetchOptionsConnectionOperation *)self actionMetadata];
  parameterMetadata2 = [(LNFetchOptionsConnectionOperation *)self parameterMetadata];
  optionsProviderReference = [(LNFetchOptionsConnectionOperation *)self optionsProviderReference];
  searchTerm2 = [(LNFetchOptionsConnectionOperation *)self searchTerm];
  localeIdentifier = [(LNFetchOptionsConnectionOperation *)self localeIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__LNFetchOptionsConnectionOperation_start__block_invoke;
  v17[3] = &unk_1E74B1F28;
  v17[4] = self;
  [connectionInterface fetchOptionsForAction:action actionMetadata:actionMetadata2 parameterMetadata:parameterMetadata2 optionsProviderReference:optionsProviderReference searchTerm:searchTerm2 localeIdentifier:localeIdentifier completionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchOptionsConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    result = [(LNFetchOptionsConnectionOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:result error:errorCopy];

    completionHandler2 = [(LNFetchOptionsConnectionOperation *)self completionHandler];
    result2 = [(LNFetchOptionsConnectionOperation *)self result];
    (completionHandler2)[2](completionHandler2, result2, v7);

    [(LNFetchOptionsConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchOptionsConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

void __42__LNFetchOptionsConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchOptionsConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action actionMetadata:(id)metadata parameterMetadata:(id)parameterMetadata optionsProviderReference:(id)reference searchTerm:(id)term localeIdentifier:(id)identifier queue:(id)self0 completionHandler:(id)self1
{
  interfaceCopy = interface;
  actionCopy = action;
  obj = metadata;
  metadataCopy = metadata;
  parameterMetadataCopy = parameterMetadata;
  parameterMetadataCopy2 = parameterMetadata;
  referenceCopy = reference;
  referenceCopy2 = reference;
  termCopy = term;
  termCopy2 = term;
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  if (metadataCopy)
  {
    if (parameterMetadataCopy2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"actionMetadata"}];

    if (parameterMetadataCopy2)
    {
LABEL_3:
      if (identifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"parameterMetadata"}];

  if (identifierCopy)
  {
LABEL_4:
    if (interfaceCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (handlerCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier"}];

  if (!interfaceCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (handlerCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsConnectionOperation.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_6:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  systemProtocols = [metadataCopy systemProtocols];
  v43.receiver = self;
  v43.super_class = LNFetchOptionsConnectionOperation;
  v24 = [(LNRuntimeAssertionsTakingConnectionOperation *)&v43 initWithIdentifier:uUID connectionInterface:interfaceCopy systemProtocols:systemProtocols priority:1 queue:queueCopy activity:&__block_literal_global_12236];

  if (v24)
  {
    objc_storeStrong(&v24->_action, action);
    objc_storeStrong(&v24->_actionMetadata, obj);
    objc_storeStrong(&v24->_parameterMetadata, parameterMetadataCopy);
    objc_storeStrong(&v24->_optionsProviderReference, referenceCopy);
    objc_storeStrong(&v24->_searchTerm, termCopy);
    objc_storeStrong(&v24->_localeIdentifier, identifier);
    v25 = _Block_copy(handlerCopy);
    completionHandler = v24->_completionHandler;
    v24->_completionHandler = v25;

    v27 = v24;
  }

  return v24;
}

os_activity_t __182__LNFetchOptionsConnectionOperation_initWithConnectionInterface_action_actionMetadata_parameterMetadata_optionsProviderReference_searchTerm_localeIdentifier_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch options", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end