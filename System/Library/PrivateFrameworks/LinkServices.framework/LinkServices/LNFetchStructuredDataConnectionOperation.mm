@interface LNFetchStructuredDataConnectionOperation
- (LNFetchStructuredDataConnectionOperation)initWithConnectionInterface:(id)interface typeIdentifier:(int64_t)identifier entityIdentifiers:(id)identifiers queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchStructuredDataConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchStructuredDataConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    entityIdentifiersToStructuredData = [(LNFetchStructuredDataConnectionOperation *)self entityIdentifiersToStructuredData];
    v7 = [(LNConnectionOperation *)self validatingResult:entityIdentifiersToStructuredData error:errorCopy];

    completionHandler2 = [(LNFetchStructuredDataConnectionOperation *)self completionHandler];
    entityIdentifiersToStructuredData2 = [(LNFetchStructuredDataConnectionOperation *)self entityIdentifiersToStructuredData];
    (completionHandler2)[2](completionHandler2, entityIdentifiersToStructuredData2, v7);

    [(LNFetchStructuredDataConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchStructuredDataConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v9.receiver = self;
  v9.super_class = LNFetchStructuredDataConnectionOperation;
  [(LNConnectionOperation *)&v9 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching structured data from entities", buf, 2u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  typeIdentifier = [(LNFetchStructuredDataConnectionOperation *)self typeIdentifier];
  entityIdentifiers = [(LNFetchStructuredDataConnectionOperation *)self entityIdentifiers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__LNFetchStructuredDataConnectionOperation_start__block_invoke;
  v7[3] = &unk_1E74B16F8;
  v7[4] = self;
  [connectionInterface fetchStructuredDataWithTypeIdentifier:typeIdentifier forEntityIdentifiers:entityIdentifiers completionHandler:v7];
}

void __49__LNFetchStructuredDataConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setEntityIdentifiersToStructuredData:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchStructuredDataConnectionOperation)initWithConnectionInterface:(id)interface typeIdentifier:(int64_t)identifier entityIdentifiers:(id)identifiers queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  identifiersCopy = identifiers;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (identifiersCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchStructuredDataConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"entityIdentifiers"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchStructuredDataConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!identifiersCopy)
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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNFetchStructuredDataConnectionOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v26.receiver = self;
  v26.super_class = LNFetchStructuredDataConnectionOperation;
  v18 = [(LNInterfaceConnectionOperation *)&v26 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:2 queue:queueCopy activity:&__block_literal_global_5165];

  if (v18)
  {
    v18->_typeIdentifier = identifier;
    objc_storeStrong(&v18->_entityIdentifiers, identifiers);
    v19 = [handlerCopy copy];
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;

    v21 = v18;
  }

  return v18;
}

os_activity_t __129__LNFetchStructuredDataConnectionOperation_initWithConnectionInterface_typeIdentifier_entityIdentifiers_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch structured data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end