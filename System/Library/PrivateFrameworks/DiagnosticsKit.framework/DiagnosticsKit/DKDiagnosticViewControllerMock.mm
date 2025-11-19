@interface DKDiagnosticViewControllerMock
- (BOOL)isCancelled;
- (DKDiagnosticViewControllerMock)init;
- (void)beginRequestWithInputsClass:(Class)a3 predicates:(id)a4 specifications:(id)a5 parameters:(id)a6 completion:(id)a7;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCancelled:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)setProgress:(id)a3;
@end

@implementation DKDiagnosticViewControllerMock

- (DKDiagnosticViewControllerMock)init
{
  v9.receiver = self;
  v9.super_class = DKDiagnosticViewControllerMock;
  v2 = [(DKDiagnosticViewControllerMock *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_cancelled = 0;
    v2->_setup = 0;
    v2->_finished = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    finishedLock = v3->_finishedLock;
    v3->_finishedLock = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCAC48]);
    progress = v3->_progress;
    v3->_progress = v6;
  }

  return v3;
}

- (void)beginRequestWithInputsClass:(Class)a3 predicates:(id)a4 specifications:(id)a5 parameters:(id)a6 completion:(id)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a7 copy];
  [(DKDiagnosticViewControllerMock *)self setCompletion:v15];

  v16 = objc_opt_new();
  [(DKDiagnosticViewControllerMock *)self setContext:v16];

  v17 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticViewControllerMock *)self setProgress:v17];

  v18 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticViewControllerMock *)self setResult:v18];

  [(DKDiagnosticViewControllerMock *)self setInputsClass:a3];
  v20 = [DKUtilities inputsForDiagnostic:self predicates:v14 specifications:v13 parameters:v12];

  if (![(DKDiagnosticViewControllerMock *)self isFinished])
  {
    [(DKDiagnosticViewControllerMock *)self setSetup:1];
    if (objc_opt_respondsToSelector())
    {
      v19 = [(DKDiagnosticViewControllerMock *)self context];
      [(DKDiagnosticViewControllerMock *)self setupWithInputs:v20 responder:v19];
    }

    if (![(DKDiagnosticViewControllerMock *)self isFinished])
    {
      [(DKDiagnosticViewControllerMock *)self start];
    }
  }
}

- (void)setFinished:(BOOL)a3
{
  v3 = a3;
  v5 = [(DKDiagnosticViewControllerMock *)self finishedLock];
  [v5 lock];

  if (!v3 || self->_finished)
  {
    v7 = [(DKDiagnosticViewControllerMock *)self finishedLock];
    [v7 unlock];
  }

  else
  {
    self->_finished = v3;
    v6 = [(DKDiagnosticViewControllerMock *)self finishedLock];
    [v6 unlock];

    if ([(DKDiagnosticViewControllerMock *)self isSetup]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(DKDiagnosticViewControllerMock *)self teardown];
    }

    v7 = [(DKDiagnosticViewControllerMock *)self completion];
    v7[2]();
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
  [v5 addObserver:self forKeyPath:@"fractionCompleted" options:1 context:ProgressObserverContext];
  [v5 addObserver:self forKeyPath:@"totalUnitCount" options:1 context:ProgressObserverContext];
  [v5 addObserver:self forKeyPath:@"indeterminate" options:1 context:ProgressObserverContext];
  [v5 addObserver:self forKeyPath:@"userInfo.NSProgressEstimatedTimeRemainingKey" options:1 context:ProgressObserverContext];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (ProgressObserverContext == a6)
  {
    v7 = [DKDiagnosticProgress alloc];
    v8 = [(DKDiagnosticViewControllerMock *)self progress];
    v10 = [(DKDiagnosticProgress *)v7 initWithProgress:v8];

    v9 = [(DKDiagnosticViewControllerMock *)self context];
    [v9 updateProgress:v10 forTest:&unk_285B92858];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DKDiagnosticViewControllerMock;
    [(DKDiagnosticViewControllerMock *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end