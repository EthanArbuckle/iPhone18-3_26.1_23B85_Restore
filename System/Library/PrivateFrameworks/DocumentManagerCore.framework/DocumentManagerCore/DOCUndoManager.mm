@interface DOCUndoManager
+ (DOCUndoManager)shared;
- (BOOL)isActionOperation:(id)a3;
- (BOOL)processSupportsUndoingActions;
- (DOCUndoManager)init;
- (void)dealloc;
- (void)didPerformUndoableOperation;
- (void)registerUndoOperationForSender:(id)a3;
- (void)startUndoNotificationsObservation;
- (void)stopUndoNotificationsObservation;
@end

@implementation DOCUndoManager

+ (DOCUndoManager)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[DOCUndoManager shared];
  }

  v3 = shared_undoManager;

  return v3;
}

uint64_t __24__DOCUndoManager_shared__block_invoke()
{
  v0 = objc_alloc_init(DOCUndoManager);
  v1 = shared_undoManager;
  shared_undoManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (DOCUndoManager)init
{
  v5.receiver = self;
  v5.super_class = DOCUndoManager;
  v2 = [(DOCUndoManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DOCUndoManager *)v2 setGroupsByEvent:0];
    [(DOCUndoManager *)v3 startUndoNotificationsObservation];
  }

  return v3;
}

- (void)dealloc
{
  [(DOCUndoManager *)self stopUndoNotificationsObservation];
  v3.receiver = self;
  v3.super_class = DOCUndoManager;
  [(DOCUndoManager *)&v3 dealloc];
}

- (void)startUndoNotificationsObservation
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_didPerformUndoableOperation name:*MEMORY[0x277CCA808] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_didPerformUndoableOperation name:*MEMORY[0x277CCA810] object:0];
}

- (void)stopUndoNotificationsObservation
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
}

- (void)didPerformUndoableOperation
{
  if ([(DOCUndoManager *)self shouldRemoveAllActions])
  {
    [(DOCUndoManager *)self setShouldRemoveAllActions:0];

    [(DOCUndoManager *)self removeAllActions];
  }
}

- (void)registerUndoOperationForSender:(id)a3
{
  v4 = a3;
  if ([(DOCUndoManager *)self processSupportsUndoingActions])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__DOCUndoManager_registerUndoOperationForSender___block_invoke;
    v5[3] = &unk_278F9B430;
    v5[4] = self;
    v6 = v4;
    DOCRunInMainThread(v5);
  }
}

void __49__DOCUndoManager_registerUndoOperationForSender___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  [*(a1 + 32) beginUndoGrouping];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__DOCUndoManager_registerUndoOperationForSender___block_invoke_2;
  v5[3] = &unk_278F9C0A0;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  [v2 registerUndoWithTarget:v3 handler:v5];
  v4 = [*(a1 + 40) actionNameForUndoing];
  if (v4)
  {
    [*(a1 + 32) setActionName:v4];
  }

  [*(a1 + 32) endUndoGrouping];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__DOCUndoManager_registerUndoOperationForSender___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    v5 = [v4 operationForUndoing];
    if (v5)
    {
      if ([WeakRetained isActionOperation:v5])
      {
        if ([WeakRetained isActionOperation:*v3])
        {
          [*v3 itemManager];
        }

        else
        {
          [MEMORY[0x277CC6408] defaultManager];
        }
        v6 = ;
        [v6 scheduleAction:v5];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v5 schedule];
      }

      else
      {
        v7 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v7 = docLogHandle;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __49__DOCUndoManager_registerUndoOperationForSender___block_invoke_2_cold_1(v3, v5, v7);
        }
      }
    }

    else
    {
      [WeakRetained setShouldRemoveAllActions:1];
    }
  }
}

- (BOOL)isActionOperation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)processSupportsUndoingActions
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  LOBYTE(v2) = [&unk_285C77F10 containsObject:v3];
  return v2;
}

void __49__DOCUndoManager_registerUndoOperationForSender___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  v4 = *MEMORY[0x277D85DE8];
}

@end