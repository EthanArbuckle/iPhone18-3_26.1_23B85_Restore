@interface DCLongRunningTaskController
- (DCLongRunningTaskController)init;
- (DCLongRunningTaskController)initWithWindow:(id)a3 intervalBeforeOpeningProgressDialog:(double)a4;
- (void)closeProgressDialog;
- (void)completeTaskIfNecessary;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openProgressDialog;
- (void)startTask:(id)a3 completionBlock:(id)a4;
- (void)updateProgress;
- (void)willDismissProgressViewController:(id)a3;
@end

@implementation DCLongRunningTaskController

- (DCLongRunningTaskController)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Use -initWithWindow:intervalBeforeOpeningProgressDialog: instead"];

  return 0;
}

- (DCLongRunningTaskController)initWithWindow:(id)a3 intervalBeforeOpeningProgressDialog:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = DCLongRunningTaskController;
  v7 = [(DCLongRunningTaskController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(DCLongRunningTaskController *)v7 setIntervalBeforeOpeningProgressDialog:a4];
    [(DCLongRunningTaskController *)v8 setWindow:v6];
  }

  return v8;
}

- (void)startTask:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(DCLongRunningTaskController *)self setKeepAlive:self];
  [(DCLongRunningTaskController *)self setCompletionBlock:v7];

  v8 = [objc_alloc(MEMORY[0x277CCAC48]) initWithParent:0 userInfo:0];
  [(DCLongRunningTaskController *)self setProgress:v8];

  v9 = [(DCLongRunningTaskController *)self progress];
  [v9 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:DCLongRunningTaskControllerKVOContext];

  v10 = dispatch_semaphore_create(0);
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DCLongRunningTaskController_startTask_completionBlock___block_invoke;
  block[3] = &unk_278F93128;
  v12 = v6;
  v21 = v12;
  block[4] = self;
  v13 = v10;
  v20 = v13;
  dispatch_async(v11, block);

  [(DCLongRunningTaskController *)self intervalBeforeOpeningProgressDialog];
  v15 = dispatch_time(0, (v14 * 1000000000.0));
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [(DCLongRunningTaskController *)self progress];
    v17 = [v16 totalUnitCount];

    if (v17 != 1)
    {
      v18 = [MEMORY[0x277CBEAA8] date];
      [(DCLongRunningTaskController *)self setOpenProgressDate:v18];

      [(DCLongRunningTaskController *)self openProgressDialog];
    }
  }
}

void __57__DCLongRunningTaskController_startTask_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) progress];
  (*(v2 + 16))(v2, v3);

  dispatch_semaphore_signal(*(a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DCLongRunningTaskController_startTask_completionBlock___block_invoke_2;
  block[3] = &unk_278F92C70;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (DCLongRunningTaskControllerKVOContext == a6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__DCLongRunningTaskController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_278F92C70;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DCLongRunningTaskController;
    [(DCLongRunningTaskController *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)completeTaskIfNecessary
{
  v3 = [(DCLongRunningTaskController *)self completionBlock];

  if (v3)
  {
    v4 = [(DCLongRunningTaskController *)self completionBlock];
    (v4)[2](v4, [(DCLongRunningTaskController *)self isCancelled]);

    [(DCLongRunningTaskController *)self setCompletionBlock:0];
  }

  v5 = [(DCLongRunningTaskController *)self progress];

  if (v5)
  {
    v6 = [(DCLongRunningTaskController *)self openProgressDate];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEAA8] date];
      v8 = [(DCLongRunningTaskController *)self openProgressDate];
      [v7 timeIntervalSinceDate:v8];
      v10 = v9;

      if (v10 < 0.5)
      {
        [MEMORY[0x277CCACC8] sleepForTimeInterval:0.5 - v10];
      }

      [(DCLongRunningTaskController *)self closeProgressDialog];
      [(DCLongRunningTaskController *)self setOpenProgressDate:0];
    }

    v11 = [(DCLongRunningTaskController *)self progress];
    [v11 removeObserver:self forKeyPath:@"fractionCompleted"];

    [(DCLongRunningTaskController *)self setProgress:0];
  }

  [(DCLongRunningTaskController *)self setKeepAlive:0];
}

- (void)updateProgress
{
  v3 = [(DCLongRunningTaskController *)self progress];
  v4 = [v3 totalUnitCount];

  if (v4 >= 1)
  {
    v5 = [(DCLongRunningTaskController *)self updateProgressUIBlock];

    if (v5)
    {
      v6 = [(DCLongRunningTaskController *)self progressToStringTransformer];

      if (v6)
      {
        v7 = [(DCLongRunningTaskController *)self progress];
        v8 = [v7 completedUnitCount];

        if (v8 + 1 < v4)
        {
          v9 = v8 + 1;
        }

        else
        {
          v9 = v4;
        }

        v10 = [(DCLongRunningTaskController *)self progressToStringTransformer];
        v11 = v10[2](v10, v9, v4);
      }

      else
      {
        v12 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_249253000, v12, OS_LOG_TYPE_DEFAULT, "Progress string transformer not set", buf, 2u);
        }

        v11 = &stru_285C55A80;
      }

      v13 = [(DCLongRunningTaskController *)self updateProgressUIBlock];
      v14 = [(DCLongRunningTaskController *)self progress];
      [v14 fractionCompleted];
      (v13)[2](v13, v11);

      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = [(DCLongRunningTaskController *)self lastAccessibilityAnnouncementDate];
      if (v16)
      {
        v17 = v16;
        v18 = [(DCLongRunningTaskController *)self lastAccessibilityAnnouncementDate];
        [v15 timeIntervalSinceDate:v18];
        v20 = v19;

        if (v20 > 3.0)
        {
          v21 = [(DCLongRunningTaskController *)self progress];
          [v21 fractionCompleted];
          v23 = (v22 * 100.0);

          v24 = [DCLocalization localizedStringForKey:@"%lu%% complete" value:@"%lu%% complete" table:@"Localizable"];
          v25 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v24, v23];
          DCAccessibilityPostHighPriorityAnnouncementNotification(0, v25);
          [(DCLongRunningTaskController *)self setLastAccessibilityAnnouncementDate:v15];
        }
      }
    }
  }
}

- (void)openProgressDialog
{
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
  v4 = [[DCProgressViewController alloc] initWithDelegate:self];
  [(DCLongRunningTaskController *)self setProgressViewController:v4];
  if ([(DCLongRunningTaskController *)self shouldShowCircularProgress])
  {
    v5 = [(DCLongRunningTaskController *)self progressViewController];
    v6 = [v5 view];

    v7 = [(DCLongRunningTaskController *)self progress];
    v8 = [(DCLongRunningTaskController *)self progressViewController];
    [v8 setObservedProgress:v7];
  }

  if ([(DCLongRunningTaskController *)self shouldShowCancelButton])
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D750F8];
    v10 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__DCLongRunningTaskController_openProgressDialog__block_invoke;
    v25[3] = &unk_278F93708;
    objc_copyWeak(&v26, &location);
    v11 = [v9 actionWithTitle:v10 style:1 handler:v25];
    [v3 addAction:v11];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __49__DCLongRunningTaskController_openProgressDialog__block_invoke_2;
  v23[3] = &unk_278F93730;
  v24 = v4;
  v12 = v4;
  [(DCLongRunningTaskController *)self setUpdateProgressUIBlock:v23];
  v13 = [(DCLongRunningTaskController *)self progressViewController];
  [v3 setContentViewController:v13];

  v14 = [(DCLongRunningTaskController *)self progressViewController];
  v15 = [v14 view];

  [(DCLongRunningTaskController *)self updateProgress];
  [(DCLongRunningTaskController *)self setProgressViewControllerDidFinishPresenting:0];
  [(DCLongRunningTaskController *)self setShouldDismissProgressViewController:0];
  v16 = [(DCLongRunningTaskController *)self viewControllerToPresentFrom];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = [(DCLongRunningTaskController *)self window];
    v18 = [v19 rootViewController];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__DCLongRunningTaskController_openProgressDialog__block_invoke_3;
  v21[3] = &unk_278F92DE8;
  v21[4] = self;
  v22 = v18;
  v20 = v18;
  [v20 presentViewController:v3 animated:1 completion:v21];
}

void __49__DCLongRunningTaskController_openProgressDialog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsCancelled:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 closeProgressDialog];
}

void __49__DCLongRunningTaskController_openProgressDialog__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 label];
  [v4 setText:v3];
}

uint64_t __49__DCLongRunningTaskController_openProgressDialog__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setProgressViewControllerDidFinishPresenting:1];
  result = [*(a1 + 32) shouldDismissProgressViewController];
  if (result)
  {
    [*(a1 + 32) setShouldDismissProgressViewController:0];
    v3 = *(a1 + 40);

    return [v3 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

- (void)closeProgressDialog
{
  v3 = [(DCLongRunningTaskController *)self progressViewController];

  if (v3)
  {
    v4 = [(DCLongRunningTaskController *)self progressViewController];
    [v4 setProgressDelegate:0];

    v5 = [(DCLongRunningTaskController *)self progressViewController];
    v6 = [v5 presentingViewController];

    [(DCLongRunningTaskController *)self setProgressViewController:0];
    if ([(DCLongRunningTaskController *)self progressViewControllerDidFinishPresenting])
    {
      [v6 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(DCLongRunningTaskController *)self setShouldDismissProgressViewController:1];
    }
  }
}

- (void)willDismissProgressViewController:(id)a3
{
  v3 = [(DCLongRunningTaskController *)self progress];
  [v3 cancel];
}

@end