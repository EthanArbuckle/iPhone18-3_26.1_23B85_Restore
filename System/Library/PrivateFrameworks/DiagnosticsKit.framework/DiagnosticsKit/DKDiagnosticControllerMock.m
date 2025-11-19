@interface DKDiagnosticControllerMock
- (BOOL)isCancelled;
- (DKDiagnosticControllerMock)init;
- (void)beginRequestWithInputsClass:(Class)a3 predicates:(id)a4 specifications:(id)a5 parameters:(id)a6 completion:(id)a7;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCancelled:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)setProgress:(id)a3;
@end

@implementation DKDiagnosticControllerMock

- (DKDiagnosticControllerMock)init
{
  v9.receiver = self;
  v9.super_class = DKDiagnosticControllerMock;
  v2 = [(DKDiagnosticControllerMock *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_setup = 0;
    *&v2->_finished = 0;
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
  [(DKDiagnosticControllerMock *)self setCompletion:v15];

  v16 = objc_opt_new();
  [(DKDiagnosticControllerMock *)self setContext:v16];

  v17 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticControllerMock *)self setProgress:v17];

  v18 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticControllerMock *)self setResult:v18];

  [(DKDiagnosticControllerMock *)self setInputsClass:a3];
  v20 = [DKUtilities inputsForDiagnostic:self predicates:v14 specifications:v13 parameters:v12];

  if (![(DKDiagnosticControllerMock *)self isFinished])
  {
    [(DKDiagnosticControllerMock *)self setSetup:1];
    if (objc_opt_respondsToSelector())
    {
      v19 = [(DKDiagnosticControllerMock *)self context];
      [(DKDiagnosticControllerMock *)self setupWithInputs:v20 responder:v19];
    }

    if (![(DKDiagnosticControllerMock *)self isFinished])
    {
      [(DKDiagnosticControllerMock *)self start];
    }
  }
}

- (void)setFinished:(BOOL)a3
{
  v3 = a3;
  v5 = [(DKDiagnosticControllerMock *)self finishedLock];
  [v5 lock];

  if (!v3 || self->_finished)
  {
    v7 = [(DKDiagnosticControllerMock *)self finishedLock];
    [v7 unlock];
  }

  else
  {
    self->_finished = v3;
    v6 = [(DKDiagnosticControllerMock *)self finishedLock];
    [v6 unlock];

    self->_finished = v3;
    if ([(DKDiagnosticControllerMock *)self isSetup]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(DKDiagnosticControllerMock *)self teardown];
    }

    v7 = [(DKDiagnosticControllerMock *)self completion];
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
  [v5 addObserver:self forKeyPath:@"fractionCompleted" options:1 context:ProgressObserverContext_1];
  [v5 addObserver:self forKeyPath:@"totalUnitCount" options:1 context:ProgressObserverContext_1];
  [v5 addObserver:self forKeyPath:@"indeterminate" options:1 context:ProgressObserverContext_1];
  [v5 addObserver:self forKeyPath:@"userInfo.NSProgressEstimatedTimeRemainingKey" options:1 context:ProgressObserverContext_1];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (ProgressObserverContext_1 == a6)
  {
    v7 = [DKDiagnosticProgress alloc];
    v8 = [(DKDiagnosticControllerMock *)self progress];
    v10 = [(DKDiagnosticProgress *)v7 initWithProgress:v8];

    v9 = [(DKDiagnosticControllerMock *)self context];
    [v9 updateProgress:v10 forTest:&unk_285B92888];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DKDiagnosticControllerMock;
    [(DKDiagnosticControllerMock *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end