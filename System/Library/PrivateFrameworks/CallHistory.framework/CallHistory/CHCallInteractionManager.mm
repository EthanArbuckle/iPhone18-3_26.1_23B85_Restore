@interface CHCallInteractionManager
- (CHCallInteractionManager)init;
- (CHCallInteractionManager)initWithDataSource:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)callInteractionsDidChangeForDataSource:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation CHCallInteractionManager

- (CHCallInteractionManager)init
{
  v3 = objc_alloc_init(CHCallInteractionInProcessDataSource);
  v4 = [(CHCallInteractionManager *)self initWithDataSource:v3];

  return v4;
}

- (CHCallInteractionManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CHCallInteractionManager;
  v6 = [(CHCallInteractionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    [(CHCallInteractionDataSource *)v7->_dataSource setDelegate:v7];
    v8 = objc_alloc_init(CHDelegateController);
    delegateController = v7->_delegateController;
    v7->_delegateController = v8;
  }

  return v7;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CHCallInteractionManager *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CHCallInteractionManager *)self delegateController];
  [v5 removeDelegate:v4];
}

- (void)callInteractionsDidChangeForDataSource:(id)a3
{
  v4 = [(CHCallInteractionManager *)self delegateController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__CHCallInteractionManager_callInteractionsDidChangeForDataSource___block_invoke;
  v5[3] = &unk_1E81DCD40;
  v5[4] = self;
  [v4 enumerateDelegatesUsingBlock:v5];
}

void __67__CHCallInteractionManager_callInteractionsDidChangeForDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__CHCallInteractionManager_callInteractionsDidChangeForDataSource___block_invoke_2;
    v9[3] = &unk_1E81DBE38;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    dispatch_async(v6, v9);
  }
}

@end