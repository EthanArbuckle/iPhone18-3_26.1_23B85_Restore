@interface LNFetchStructuredDataConnectionOperation
- (LNFetchStructuredDataConnectionOperation)initWithConnectionInterface:(id)a3 typeIdentifier:(int64_t)a4 entityIdentifiers:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchStructuredDataConnectionOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchStructuredDataConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchStructuredDataConnectionOperation *)self entityIdentifiersToStructuredData];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchStructuredDataConnectionOperation *)self completionHandler];
    v9 = [(LNFetchStructuredDataConnectionOperation *)self entityIdentifiersToStructuredData];
    (v8)[2](v8, v9, v7);

    [(LNFetchStructuredDataConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchStructuredDataConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
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

  v4 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5 = [(LNFetchStructuredDataConnectionOperation *)self typeIdentifier];
  v6 = [(LNFetchStructuredDataConnectionOperation *)self entityIdentifiers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__LNFetchStructuredDataConnectionOperation_start__block_invoke;
  v7[3] = &unk_1E74B16F8;
  v7[4] = self;
  [v4 fetchStructuredDataWithTypeIdentifier:v5 forEntityIdentifiers:v6 completionHandler:v7];
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

- (LNFetchStructuredDataConnectionOperation)initWithConnectionInterface:(id)a3 typeIdentifier:(int64_t)a4 entityIdentifiers:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LNFetchStructuredDataConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"entityIdentifiers"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNFetchStructuredDataConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"LNFetchStructuredDataConnectionOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v26.receiver = self;
  v26.super_class = LNFetchStructuredDataConnectionOperation;
  v18 = [(LNInterfaceConnectionOperation *)&v26 initWithIdentifier:v17 connectionInterface:v13 priority:2 queue:v15 activity:&__block_literal_global_5165];

  if (v18)
  {
    v18->_typeIdentifier = a4;
    objc_storeStrong(&v18->_entityIdentifiers, a5);
    v19 = [v16 copy];
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