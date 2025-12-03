@interface LNPerformAllResultsQueryOperation
- (LNPerformAllResultsQueryOperation)initWithConnectionInterface:(id)interface entityMangledTypeName:(id)name queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNPerformAllResultsQueryOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNPerformAllResultsQueryOperation *)self completionHandler];

  if (completionHandler)
  {
    output = [(LNPerformAllResultsQueryOperation *)self output];
    v7 = [(LNConnectionOperation *)self validatingResult:output error:errorCopy];

    completionHandler2 = [(LNPerformAllResultsQueryOperation *)self completionHandler];
    output2 = [(LNPerformAllResultsQueryOperation *)self output];
    (completionHandler2)[2](completionHandler2, output2, v7);

    [(LNPerformAllResultsQueryOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNPerformAllResultsQueryOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v6.receiver = self;
  v6.super_class = LNPerformAllResultsQueryOperation;
  [(LNConnectionOperation *)&v6 start];
  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  entityMangledTypeName = [(LNPerformAllResultsQueryOperation *)self entityMangledTypeName];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__LNPerformAllResultsQueryOperation_start__block_invoke;
  v5[3] = &unk_1E74B1F50;
  v5[4] = self;
  [connectionInterface performAllEntitiesQueryWithEntityMangledTypeName:entityMangledTypeName completionHandler:v5];
}

void __42__LNPerformAllResultsQueryOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setOutput:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNPerformAllResultsQueryOperation)initWithConnectionInterface:(id)interface entityMangledTypeName:(id)name queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  nameCopy = name;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPerformAllResultsQueryOperation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"entityMangledTypeName"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNPerformAllResultsQueryOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!nameCopy)
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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNPerformAllResultsQueryOperation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v27.receiver = self;
  v27.super_class = LNPerformAllResultsQueryOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v27 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_12307];

  if (v16)
  {
    entityType = v16->_entityType;
    v16->_entityType = 0;

    v18 = [nameCopy copy];
    entityMangledTypeName = v16->_entityMangledTypeName;
    v16->_entityMangledTypeName = v18;

    v20 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v20;

    v22 = v16;
  }

  return v16;
}

os_activity_t __111__LNPerformAllResultsQueryOperation_initWithConnectionInterface_entityMangledTypeName_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:entity all results query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end