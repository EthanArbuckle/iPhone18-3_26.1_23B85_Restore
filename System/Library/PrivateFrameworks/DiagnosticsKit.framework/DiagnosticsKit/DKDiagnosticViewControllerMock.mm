@interface DKDiagnosticViewControllerMock
- (BOOL)isCancelled;
- (DKDiagnosticViewControllerMock)init;
- (void)beginRequestWithInputsClass:(Class)class predicates:(id)predicates specifications:(id)specifications parameters:(id)parameters completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCancelled:(BOOL)cancelled;
- (void)setFinished:(BOOL)finished;
- (void)setProgress:(id)progress;
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

- (void)beginRequestWithInputsClass:(Class)class predicates:(id)predicates specifications:(id)specifications parameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  specificationsCopy = specifications;
  predicatesCopy = predicates;
  v15 = [completion copy];
  [(DKDiagnosticViewControllerMock *)self setCompletion:v15];

  v16 = objc_opt_new();
  [(DKDiagnosticViewControllerMock *)self setContext:v16];

  v17 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [(DKDiagnosticViewControllerMock *)self setProgress:v17];

  v18 = objc_alloc_init(DKMutableDiagnosticResult);
  [(DKDiagnosticViewControllerMock *)self setResult:v18];

  [(DKDiagnosticViewControllerMock *)self setInputsClass:class];
  v20 = [DKUtilities inputsForDiagnostic:self predicates:predicatesCopy specifications:specificationsCopy parameters:parametersCopy];

  if (![(DKDiagnosticViewControllerMock *)self isFinished])
  {
    [(DKDiagnosticViewControllerMock *)self setSetup:1];
    if (objc_opt_respondsToSelector())
    {
      context = [(DKDiagnosticViewControllerMock *)self context];
      [(DKDiagnosticViewControllerMock *)self setupWithInputs:v20 responder:context];
    }

    if (![(DKDiagnosticViewControllerMock *)self isFinished])
    {
      [(DKDiagnosticViewControllerMock *)self start];
    }
  }
}

- (void)setFinished:(BOOL)finished
{
  finishedCopy = finished;
  finishedLock = [(DKDiagnosticViewControllerMock *)self finishedLock];
  [finishedLock lock];

  if (!finishedCopy || self->_finished)
  {
    finishedLock2 = [(DKDiagnosticViewControllerMock *)self finishedLock];
    [finishedLock2 unlock];
  }

  else
  {
    self->_finished = finishedCopy;
    finishedLock3 = [(DKDiagnosticViewControllerMock *)self finishedLock];
    [finishedLock3 unlock];

    if ([(DKDiagnosticViewControllerMock *)self isSetup]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(DKDiagnosticViewControllerMock *)self teardown];
    }

    finishedLock2 = [(DKDiagnosticViewControllerMock *)self completion];
    finishedLock2[2]();
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
  [progressCopy addObserver:self forKeyPath:@"fractionCompleted" options:1 context:ProgressObserverContext];
  [progressCopy addObserver:self forKeyPath:@"totalUnitCount" options:1 context:ProgressObserverContext];
  [progressCopy addObserver:self forKeyPath:@"indeterminate" options:1 context:ProgressObserverContext];
  [progressCopy addObserver:self forKeyPath:@"userInfo.NSProgressEstimatedTimeRemainingKey" options:1 context:ProgressObserverContext];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (ProgressObserverContext == context)
  {
    v7 = [DKDiagnosticProgress alloc];
    progress = [(DKDiagnosticViewControllerMock *)self progress];
    v10 = [(DKDiagnosticProgress *)v7 initWithProgress:progress];

    context = [(DKDiagnosticViewControllerMock *)self context];
    [context updateProgress:v10 forTest:&unk_285B92858];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DKDiagnosticViewControllerMock;
    [(DKDiagnosticViewControllerMock *)&v11 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end