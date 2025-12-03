@interface DKDiagnosticController
- (BOOL)isCancelled;
- (DKDiagnosticController)init;
- (void)beginRequestWithDiagnosticContext:(id)context;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCancelled:(BOOL)cancelled;
- (void)setFinished:(BOOL)finished;
- (void)setProgress:(id)progress;
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

- (void)beginRequestWithExtensionContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DKDiagnosticController beginRequestWithExtensionContext:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  [(DKDiagnosticController *)self setContext:contextCopy];
  v6 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticController *)self setProgress:v6];

  v7 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticController *)self setResult:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)beginRequestWithDiagnosticContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[DKDiagnosticController beginRequestWithDiagnosticContext:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  [(DKDiagnosticController *)self setIsXPC:1];
  [(DKDiagnosticController *)self setContext:contextCopy];

  v6 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticController *)self setProgress:v6];

  v7 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticController *)self setResult:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFinished:(BOOL)finished
{
  finishedCopy = finished;
  finishedLock = [(DKDiagnosticController *)self finishedLock];
  [finishedLock lock];

  if (!finishedCopy || self->_finished)
  {
    finishedLock2 = [(DKDiagnosticController *)self finishedLock];
    [finishedLock2 unlock];
  }

  else
  {
    self->_finished = finishedCopy;
    finishedLock3 = [(DKDiagnosticController *)self finishedLock];
    [finishedLock3 unlock];

    self->_finished = finishedCopy;
    if ([(DKDiagnosticController *)self isSetup]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(DKDiagnosticController *)self teardown];
    }

    result = [(DKDiagnosticController *)self result];
    [DKUtilities moveFilesToSharedContainerInMutableResult:result];

    if (![(DKDiagnosticController *)self isXPC])
    {
      result2 = [(DKDiagnosticController *)self result];
      files = [result2 files];
      context = [(DKDiagnosticController *)self context];
      v11 = context;
      if (context)
      {
        [context auditToken];
      }

      else
      {
        memset(v19, 0, sizeof(v19));
      }

      v12 = [DKSandboxExtension issueSandboxExtensionsForFiles:files toAuditToken:v19];
      result3 = [(DKDiagnosticController *)self result];
      [result3 setFileSandboxTokens:v12];
    }

    context2 = [(DKDiagnosticController *)self context];
    result4 = [(DKDiagnosticController *)self result];
    v16 = [result4 copy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__DKDiagnosticController_setFinished___block_invoke;
    v18[3] = &unk_278F6C050;
    v18[4] = self;
    [context2 completeWithDiagnosticResult:v16 completion:v18];
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

- (void)setCancelled:(BOOL)cancelled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = cancelled;
  objc_sync_exit(obj);
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  objc_sync_exit(selfCopy);

  return cancelled;
}

- (void)setProgress:(id)progress
{
  objc_storeStrong(&self->_progress, progress);
  progressCopy = progress;
  [progressCopy addObserver:self forKeyPath:@"fractionCompleted" options:1 context:ProgressObserverContext_2];
  [progressCopy addObserver:self forKeyPath:@"totalUnitCount" options:1 context:ProgressObserverContext_2];
  [progressCopy addObserver:self forKeyPath:@"indeterminate" options:1 context:ProgressObserverContext_2];
  [progressCopy addObserver:self forKeyPath:@"userInfo.NSProgressEstimatedTimeRemainingKey" options:1 context:ProgressObserverContext_2];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (ProgressObserverContext_2 == context)
  {
    v7 = [DKDiagnosticProgress alloc];
    progress = [(DKDiagnosticController *)self progress];
    v12 = [(DKDiagnosticProgress *)v7 initWithProgress:progress];

    context = [(DKDiagnosticController *)self context];
    context2 = [(DKDiagnosticController *)self context];
    testID = [context2 testID];
    [context updateProgress:v12 forTest:testID];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DKDiagnosticController;
    [(DKDiagnosticController *)&v13 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end