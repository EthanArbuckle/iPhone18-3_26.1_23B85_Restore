@interface DKDiagnosticController
- (BOOL)isCancelled;
- (DKDiagnosticController)init;
- (void)beginRequestWithDiagnosticContext:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCancelled:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)setProgress:(id)a3;
@end

@implementation DKDiagnosticController

- (DKDiagnosticController)init
{
  v9.receiver = self;
  v9.super_class = DKDiagnosticController;
  v2 = [(DKDiagnosticController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_setup = 0;
    *&v2->_finished = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    finishedLock = v3->_finishedLock;
    v3->_finishedLock = v4;

    v3->_isXPC = 0;
    v6 = objc_alloc_init(MEMORY[0x277CCAC48]);
    progress = v3->_progress;
    v3->_progress = v6;
  }

  return v3;
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DKDiagnosticController beginRequestWithExtensionContext:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  [(DKDiagnosticController *)self setContext:v4];
  v6 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticController *)self setProgress:v6];

  v7 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticController *)self setResult:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)beginRequestWithDiagnosticContext:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DKDiagnosticController beginRequestWithDiagnosticContext:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  [(DKDiagnosticController *)self setIsXPC:1];
  [(DKDiagnosticController *)self setContext:v4];

  v6 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticController *)self setProgress:v6];

  v7 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticController *)self setResult:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFinished:(BOOL)a3
{
  v3 = a3;
  v5 = [(DKDiagnosticController *)self finishedLock];
  [v5 lock];

  if (!v3 || self->_finished)
  {
    v17 = [(DKDiagnosticController *)self finishedLock];
    [v17 unlock];
  }

  else
  {
    self->_finished = v3;
    v6 = [(DKDiagnosticController *)self finishedLock];
    [v6 unlock];

    self->_finished = v3;
    if ([(DKDiagnosticController *)self isSetup]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(DKDiagnosticController *)self teardown];
    }

    v7 = [(DKDiagnosticController *)self result];
    [DKUtilities moveFilesToSharedContainerInMutableResult:v7];

    if (![(DKDiagnosticController *)self isXPC])
    {
      v8 = [(DKDiagnosticController *)self result];
      v9 = [v8 files];
      v10 = [(DKDiagnosticController *)self context];
      v11 = v10;
      if (v10)
      {
        [v10 auditToken];
      }

      else
      {
        memset(v19, 0, sizeof(v19));
      }

      v12 = [DKSandboxExtension issueSandboxExtensionsForFiles:v9 toAuditToken:v19];
      v13 = [(DKDiagnosticController *)self result];
      [v13 setFileSandboxTokens:v12];
    }

    v14 = [(DKDiagnosticController *)self context];
    v15 = [(DKDiagnosticController *)self result];
    v16 = [v15 copy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__DKDiagnosticController_setFinished___block_invoke;
    v18[3] = &unk_278F6C050;
    v18[4] = self;
    [v14 completeWithDiagnosticResult:v16 completion:v18];
  }
}

void __38__DKDiagnosticController_setFinished___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isXPC] & 1) == 0)
  {
    v2 = [*(a1 + 32) context];
    [v2 completeRequestReturningItems:MEMORY[0x277CBEBF8] completionHandler:0];
  }
}

- (void)setCancelled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = a3;
  objc_sync_exit(obj);
}

- (BOOL)isCancelled
{
  v2 = self;
  objc_sync_enter(v2);
  cancelled = v2->_cancelled;
  objc_sync_exit(v2);

  return cancelled;
}

- (void)setProgress:(id)a3
{
  objc_storeStrong(&self->_progress, a3);
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"fractionCompleted" options:1 context:ProgressObserverContext_2];
  [v5 addObserver:self forKeyPath:@"totalUnitCount" options:1 context:ProgressObserverContext_2];
  [v5 addObserver:self forKeyPath:@"indeterminate" options:1 context:ProgressObserverContext_2];
  [v5 addObserver:self forKeyPath:@"userInfo.NSProgressEstimatedTimeRemainingKey" options:1 context:ProgressObserverContext_2];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (ProgressObserverContext_2 == a6)
  {
    v7 = [DKDiagnosticProgress alloc];
    v8 = [(DKDiagnosticController *)self progress];
    v12 = [(DKDiagnosticProgress *)v7 initWithProgress:v8];

    v9 = [(DKDiagnosticController *)self context];
    v10 = [(DKDiagnosticController *)self context];
    v11 = [v10 testID];
    [v9 updateProgress:v12 forTest:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DKDiagnosticController;
    [(DKDiagnosticController *)&v13 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end