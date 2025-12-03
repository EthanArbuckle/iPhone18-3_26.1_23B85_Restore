@interface LNPerformSuggestedResultsQueryOperation
- (LNPerformSuggestedResultsQueryOperation)initWithConnectionInterface:(id)interface entityMangledTypeName:(id)name queue:(id)queue completionHandler:(id)handler;
- (LNPerformSuggestedResultsQueryOperation)initWithConnectionInterface:(id)interface entityType:(id)type queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNPerformSuggestedResultsQueryOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNPerformSuggestedResultsQueryOperation *)self completionHandler];

  if (completionHandler)
  {
    output = [(LNPerformSuggestedResultsQueryOperation *)self output];
    v7 = [(LNConnectionOperation *)self validatingResult:output error:errorCopy];

    completionHandler2 = [(LNPerformSuggestedResultsQueryOperation *)self completionHandler];
    output2 = [(LNPerformSuggestedResultsQueryOperation *)self output];
    (completionHandler2)[2](completionHandler2, output2, v7);

    [(LNPerformSuggestedResultsQueryOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNPerformSuggestedResultsQueryOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v8.receiver = self;
  v8.super_class = LNPerformSuggestedResultsQueryOperation;
  [(LNConnectionOperation *)&v8 start];
  entityMangledTypeName = [(LNPerformSuggestedResultsQueryOperation *)self entityMangledTypeName];

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  if (entityMangledTypeName)
  {
    entityMangledTypeName2 = [(LNPerformSuggestedResultsQueryOperation *)self entityMangledTypeName];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__LNPerformSuggestedResultsQueryOperation_start__block_invoke;
    v7[3] = &unk_1E74B1F50;
    v7[4] = self;
    [connectionInterface performSuggestedEntitiesQueryWithEntityMangledTypeName:entityMangledTypeName2 completionHandler:v7];
  }

  else
  {
    entityMangledTypeName2 = [(LNPerformSuggestedResultsQueryOperation *)self entityType];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__LNPerformSuggestedResultsQueryOperation_start__block_invoke_2;
    v6[3] = &unk_1E74B1F50;
    v6[4] = self;
    [connectionInterface performSuggestedResultsQueryWithEntityType:entityMangledTypeName2 completionHandler:v6];
  }
}

void __48__LNPerformSuggestedResultsQueryOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setOutput:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

void __48__LNPerformSuggestedResultsQueryOperation_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setOutput:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNPerformSuggestedResultsQueryOperation)initWithConnectionInterface:(id)interface entityType:(id)type queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  typeCopy = type;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"entityType"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!typeCopy)
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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v27.receiver = self;
  v27.super_class = LNPerformSuggestedResultsQueryOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v27 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_25];

  if (v16)
  {
    v17 = [typeCopy copy];
    entityType = v16->_entityType;
    v16->_entityType = v17;

    entityMangledTypeName = v16->_entityMangledTypeName;
    v16->_entityMangledTypeName = 0;

    v20 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v20;

    v22 = v16;
  }

  return v16;
}

os_activity_t __106__LNPerformSuggestedResultsQueryOperation_initWithConnectionInterface_entityType_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:suggested results query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

- (LNPerformSuggestedResultsQueryOperation)initWithConnectionInterface:(id)interface entityMangledTypeName:(id)name queue:(id)queue completionHandler:(id)handler
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"entityMangledTypeName"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v27.receiver = self;
  v27.super_class = LNPerformSuggestedResultsQueryOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v27 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_11088];

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

os_activity_t __117__LNPerformSuggestedResultsQueryOperation_initWithConnectionInterface_entityMangledTypeName_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:suggested results query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end