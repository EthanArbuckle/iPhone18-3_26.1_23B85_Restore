@interface LNPerformSuggestedResultsQueryOperation
- (LNPerformSuggestedResultsQueryOperation)initWithConnectionInterface:(id)a3 entityMangledTypeName:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (LNPerformSuggestedResultsQueryOperation)initWithConnectionInterface:(id)a3 entityType:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNPerformSuggestedResultsQueryOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNPerformSuggestedResultsQueryOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNPerformSuggestedResultsQueryOperation *)self output];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNPerformSuggestedResultsQueryOperation *)self completionHandler];
    v9 = [(LNPerformSuggestedResultsQueryOperation *)self output];
    (v8)[2](v8, v9, v7);

    [(LNPerformSuggestedResultsQueryOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNPerformSuggestedResultsQueryOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v8.receiver = self;
  v8.super_class = LNPerformSuggestedResultsQueryOperation;
  [(LNConnectionOperation *)&v8 start];
  v3 = [(LNPerformSuggestedResultsQueryOperation *)self entityMangledTypeName];

  v4 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  if (v3)
  {
    v5 = [(LNPerformSuggestedResultsQueryOperation *)self entityMangledTypeName];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__LNPerformSuggestedResultsQueryOperation_start__block_invoke;
    v7[3] = &unk_1E74B1F50;
    v7[4] = self;
    [v4 performSuggestedEntitiesQueryWithEntityMangledTypeName:v5 completionHandler:v7];
  }

  else
  {
    v5 = [(LNPerformSuggestedResultsQueryOperation *)self entityType];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__LNPerformSuggestedResultsQueryOperation_start__block_invoke_2;
    v6[3] = &unk_1E74B1F50;
    v6[4] = self;
    [v4 performSuggestedResultsQueryWithEntityType:v5 completionHandler:v6];
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

- (LNPerformSuggestedResultsQueryOperation)initWithConnectionInterface:(id)a3 entityType:(id)a4 queue:(id)a5 completionHandler:(id)a6
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
    [v25 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"entityType"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

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
  [v26 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v27.receiver = self;
  v27.super_class = LNPerformSuggestedResultsQueryOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v27 initWithIdentifier:v15 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_25];

  if (v16)
  {
    v17 = [v12 copy];
    entityType = v16->_entityType;
    v16->_entityType = v17;

    entityMangledTypeName = v16->_entityMangledTypeName;
    v16->_entityMangledTypeName = 0;

    v20 = [v14 copy];
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

- (LNPerformSuggestedResultsQueryOperation)initWithConnectionInterface:(id)a3 entityMangledTypeName:(id)a4 queue:(id)a5 completionHandler:(id)a6
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
    [v25 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"entityMangledTypeName"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

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
  [v26 handleFailureInMethod:a2 object:self file:@"LNPerformSuggestedResultsQueryOperation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v27.receiver = self;
  v27.super_class = LNPerformSuggestedResultsQueryOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v27 initWithIdentifier:v15 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_11088];

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

os_activity_t __117__LNPerformSuggestedResultsQueryOperation_initWithConnectionInterface_entityMangledTypeName_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:suggested results query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end