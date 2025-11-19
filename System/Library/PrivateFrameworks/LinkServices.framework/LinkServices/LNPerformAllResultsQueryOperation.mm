@interface LNPerformAllResultsQueryOperation
- (LNPerformAllResultsQueryOperation)initWithConnectionInterface:(id)a3 entityMangledTypeName:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNPerformAllResultsQueryOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNPerformAllResultsQueryOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNPerformAllResultsQueryOperation *)self output];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNPerformAllResultsQueryOperation *)self completionHandler];
    v9 = [(LNPerformAllResultsQueryOperation *)self output];
    (v8)[2](v8, v9, v7);

    [(LNPerformAllResultsQueryOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNPerformAllResultsQueryOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v6.receiver = self;
  v6.super_class = LNPerformAllResultsQueryOperation;
  [(LNConnectionOperation *)&v6 start];
  v3 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v4 = [(LNPerformAllResultsQueryOperation *)self entityMangledTypeName];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__LNPerformAllResultsQueryOperation_start__block_invoke;
  v5[3] = &unk_1E74B1F50;
  v5[4] = self;
  [v3 performAllEntitiesQueryWithEntityMangledTypeName:v4 completionHandler:v5];
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

- (LNPerformAllResultsQueryOperation)initWithConnectionInterface:(id)a3 entityMangledTypeName:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"LNPerformAllResultsQueryOperation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"entityMangledTypeName"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"LNPerformAllResultsQueryOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"LNPerformAllResultsQueryOperation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v27.receiver = self;
  v27.super_class = LNPerformAllResultsQueryOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v27 initWithIdentifier:v15 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_12307];

  if (v16)
  {
    entityType = v16->_entityType;
    v16->_entityType = 0;

    v18 = [v12 copy];
    entityMangledTypeName = v16->_entityMangledTypeName;
    v16->_entityMangledTypeName = v18;

    v20 = [v14 copy];
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