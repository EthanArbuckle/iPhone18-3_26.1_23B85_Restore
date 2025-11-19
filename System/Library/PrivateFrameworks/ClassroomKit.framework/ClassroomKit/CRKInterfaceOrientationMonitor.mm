@interface CRKInterfaceOrientationMonitor
- (CRKInterfaceOrientationMonitor)init;
- (id)makeUpdateHandler;
- (unint64_t)DMFInterfaceOrientationFromBSInterfaceOrientation:(int64_t)a3;
- (void)dealloc;
- (void)interfaceOrientationWithCompletion:(id)a3;
- (void)updateInterfaceOrientationWithBSOrientation:(int64_t)a3;
- (void)updateInterfaceOrientationWithDMFOrientation:(unint64_t)a3;
- (void)updateInterfaceOrientationWithNotification:(id)a3;
@end

@implementation CRKInterfaceOrientationMonitor

- (void)dealloc
{
  [(FBSOrientationObserver *)self->mObserver invalidate];
  v3.receiver = self;
  v3.super_class = CRKInterfaceOrientationMonitor;
  [(CRKInterfaceOrientationMonitor *)&v3 dealloc];
}

- (CRKInterfaceOrientationMonitor)init
{
  v10.receiver = self;
  v10.super_class = CRKInterfaceOrientationMonitor;
  v2 = [(CRKInterfaceOrientationMonitor *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_interfaceOrientation = 0;
    v4 = objc_opt_new();
    mCompletionBlocks = v3->mCompletionBlocks;
    v3->mCompletionBlocks = v4;

    v3->mIsWaitingForFirstUpdate = 1;
    v6 = [(CRKInterfaceOrientationMonitor *)v3 makeUpdateHandler];
    v7 = objc_opt_new();
    mObserver = v3->mObserver;
    v3->mObserver = v7;

    [(FBSOrientationObserver *)v3->mObserver setHandler:v6];
    [(FBSOrientationObserver *)v3->mObserver activeInterfaceOrientationWithCompletion:v6];
  }

  return v3;
}

- (id)makeUpdateHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__CRKInterfaceOrientationMonitor_makeUpdateHandler__block_invoke;
  v4[3] = &unk_278DC2100;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x245D3AAD0](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __51__CRKInterfaceOrientationMonitor_makeUpdateHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB88];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CRKInterfaceOrientationMonitor_makeUpdateHandler__block_invoke_2;
  v6[3] = &unk_278DC19F8;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [v4 cat_performBlockOnMainRunLoop:v6];

  objc_destroyWeak(&v8);
}

void __51__CRKInterfaceOrientationMonitor_makeUpdateHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateInterfaceOrientationWithNotification:*(a1 + 32)];
}

- (void)interfaceOrientationWithCompletion:(id)a3
{
  v7 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKInterfaceOrientationMonitor *)a2 interfaceOrientationWithCompletion:?];
  }

  if (!v7)
  {
    [(CRKInterfaceOrientationMonitor *)a2 interfaceOrientationWithCompletion:?];
  }

  if (self->mIsWaitingForFirstUpdate)
  {
    mCompletionBlocks = self->mCompletionBlocks;
    v6 = MEMORY[0x245D3AAD0]();
    [(NSMutableArray *)mCompletionBlocks addObject:v6];
  }

  else
  {
    v7[2](v7, [(CRKInterfaceOrientationMonitor *)self interfaceOrientation]);
  }
}

- (void)updateInterfaceOrientationWithNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(CRKInterfaceOrientationMonitor *)a2 updateInterfaceOrientationWithNotification:?];
  }

  -[CRKInterfaceOrientationMonitor updateInterfaceOrientationWithBSOrientation:](self, "updateInterfaceOrientationWithBSOrientation:", [v5 orientation]);
  if (self->mIsWaitingForFirstUpdate)
  {
    self->mIsWaitingForFirstUpdate = 0;
    v6 = [(NSMutableArray *)self->mCompletionBlocks copy];
    [(NSMutableArray *)self->mCompletionBlocks removeAllObjects];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11), [(CRKInterfaceOrientationMonitor *)self interfaceOrientation]);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)updateInterfaceOrientationWithBSOrientation:(int64_t)a3
{
  v4 = [(CRKInterfaceOrientationMonitor *)self DMFInterfaceOrientationFromBSInterfaceOrientation:a3];

  [(CRKInterfaceOrientationMonitor *)self updateInterfaceOrientationWithDMFOrientation:v4];
}

- (unint64_t)DMFInterfaceOrientationFromBSInterfaceOrientation:(int64_t)a3
{
  if (a3 < 5)
  {
    return qword_243616510[a3];
  }

  if (_CRKLogGeneral_onceToken_14 != -1)
  {
    [CRKInterfaceOrientationMonitor DMFInterfaceOrientationFromBSInterfaceOrientation:];
  }

  v5 = _CRKLogGeneral_logObj_14;
  if (os_log_type_enabled(_CRKLogGeneral_logObj_14, OS_LOG_TYPE_ERROR))
  {
    [(CRKInterfaceOrientationMonitor *)v5 DMFInterfaceOrientationFromBSInterfaceOrientation:a3];
  }

  return 0;
}

- (void)updateInterfaceOrientationWithDMFOrientation:(unint64_t)a3
{
  if ([(CRKInterfaceOrientationMonitor *)self interfaceOrientation]!= a3)
  {

    [(CRKInterfaceOrientationMonitor *)self setInterfaceOrientation:a3];
  }
}

- (void)interfaceOrientationWithCompletion:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKInterfaceOrientationMonitor.m" lineNumber:71 description:{@"%@ must be called from the main thread", v4}];
}

- (void)interfaceOrientationWithCompletion:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKInterfaceOrientationMonitor.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)updateInterfaceOrientationWithNotification:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKInterfaceOrientationMonitor.m" lineNumber:88 description:{@"%@ must be called from the main thread", v4}];
}

- (void)DMFInterfaceOrientationFromBSInterfaceOrientation:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&dword_243550000, v4, OS_LOG_TYPE_ERROR, "Unknown BSInterfaceOrientation: %{public}@", &v6, 0xCu);
}

@end