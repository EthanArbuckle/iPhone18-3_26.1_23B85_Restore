@interface DCLongRunningTaskController
- (DCLongRunningTaskController)init;
- (DCLongRunningTaskController)initWithWindow:(id)window intervalBeforeOpeningProgressDialog:(double)dialog;
- (void)closeProgressDialog;
- (void)completeTaskIfNecessary;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openProgressDialog;
- (void)startTask:(id)task completionBlock:(id)block;
- (void)updateProgress;
- (void)willDismissProgressViewController:(id)controller;
@end

@implementation DCLongRunningTaskController

- (DCLongRunningTaskController)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Use -initWithWindow:intervalBeforeOpeningProgressDialog: instead"];

  return 0;
}

- (DCLongRunningTaskController)initWithWindow:(id)window intervalBeforeOpeningProgressDialog:(double)dialog
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = DCLongRunningTaskController;
  v7 = [(DCLongRunningTaskController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(DCLongRunningTaskController *)v7 setIntervalBeforeOpeningProgressDialog:dialog];
    [(DCLongRunningTaskController *)v8 setWindow:windowCopy];
  }

  return v8;
}

- (void)startTask:(id)task completionBlock:(id)block
{
  taskCopy = task;
  blockCopy = block;
  [(DCLongRunningTaskController *)self setKeepAlive:self];
  [(DCLongRunningTaskController *)self setCompletionBlock:blockCopy];

  v8 = [objc_alloc(MEMORY[0x277CCAC48]) initWithParent:0 userInfo:0];
  [(DCLongRunningTaskController *)self setProgress:v8];

  progress = [(DCLongRunningTaskController *)self progress];
  [progress addObserver:self forKeyPath:@"fractionCompleted" options:0 context:DCLongRunningTaskControllerKVOContext];

  v10 = dispatch_semaphore_create(0);
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DCLongRunningTaskController_startTask_completionBlock___block_invoke;
  block[3] = &unk_278F93128;
  v12 = taskCopy;
  v21 = v12;
  block[4] = self;
  v13 = v10;
  v20 = v13;
  dispatch_async(v11, block);

  [(DCLongRunningTaskController *)self intervalBeforeOpeningProgressDialog];
  v15 = dispatch_time(0, (v14 * 1000000000.0));
  if (dispatch_semaphore_wait(v13, v15))
  {
    progress2 = [(DCLongRunningTaskController *)self progress];
    totalUnitCount = [progress2 totalUnitCount];

    if (totalUnitCount != 1)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(DCLongRunningTaskController *)self setOpenProgressDate:date];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (DCLongRunningTaskControllerKVOContext == context)
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
    [(DCLongRunningTaskController *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)completeTaskIfNecessary
{
  completionBlock = [(DCLongRunningTaskController *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(DCLongRunningTaskController *)self completionBlock];
    (completionBlock2)[2](completionBlock2, [(DCLongRunningTaskController *)self isCancelled]);

    [(DCLongRunningTaskController *)self setCompletionBlock:0];
  }

  progress = [(DCLongRunningTaskController *)self progress];

  if (progress)
  {
    openProgressDate = [(DCLongRunningTaskController *)self openProgressDate];

    if (openProgressDate)
    {
      date = [MEMORY[0x277CBEAA8] date];
      openProgressDate2 = [(DCLongRunningTaskController *)self openProgressDate];
      [date timeIntervalSinceDate:openProgressDate2];
      v10 = v9;

      if (v10 < 0.5)
      {
        [MEMORY[0x277CCACC8] sleepForTimeInterval:0.5 - v10];
      }

      [(DCLongRunningTaskController *)self closeProgressDialog];
      [(DCLongRunningTaskController *)self setOpenProgressDate:0];
    }

    progress2 = [(DCLongRunningTaskController *)self progress];
    [progress2 removeObserver:self forKeyPath:@"fractionCompleted"];

    [(DCLongRunningTaskController *)self setProgress:0];
  }

  [(DCLongRunningTaskController *)self setKeepAlive:0];
}

- (void)updateProgress
{
  progress = [(DCLongRunningTaskController *)self progress];
  totalUnitCount = [progress totalUnitCount];

  if (totalUnitCount >= 1)
  {
    updateProgressUIBlock = [(DCLongRunningTaskController *)self updateProgressUIBlock];

    if (updateProgressUIBlock)
    {
      progressToStringTransformer = [(DCLongRunningTaskController *)self progressToStringTransformer];

      if (progressToStringTransformer)
      {
        progress2 = [(DCLongRunningTaskController *)self progress];
        completedUnitCount = [progress2 completedUnitCount];

        if (completedUnitCount + 1 < totalUnitCount)
        {
          v9 = completedUnitCount + 1;
        }

        else
        {
          v9 = totalUnitCount;
        }

        progressToStringTransformer2 = [(DCLongRunningTaskController *)self progressToStringTransformer];
        v11 = progressToStringTransformer2[2](progressToStringTransformer2, v9, totalUnitCount);
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

      updateProgressUIBlock2 = [(DCLongRunningTaskController *)self updateProgressUIBlock];
      progress3 = [(DCLongRunningTaskController *)self progress];
      [progress3 fractionCompleted];
      (updateProgressUIBlock2)[2](updateProgressUIBlock2, v11);

      date = [MEMORY[0x277CBEAA8] date];
      lastAccessibilityAnnouncementDate = [(DCLongRunningTaskController *)self lastAccessibilityAnnouncementDate];
      if (lastAccessibilityAnnouncementDate)
      {
        v17 = lastAccessibilityAnnouncementDate;
        lastAccessibilityAnnouncementDate2 = [(DCLongRunningTaskController *)self lastAccessibilityAnnouncementDate];
        [date timeIntervalSinceDate:lastAccessibilityAnnouncementDate2];
        v20 = v19;

        if (v20 > 3.0)
        {
          progress4 = [(DCLongRunningTaskController *)self progress];
          [progress4 fractionCompleted];
          v23 = (v22 * 100.0);

          v24 = [DCLocalization localizedStringForKey:@"%lu%% complete" value:@"%lu%% complete" table:@"Localizable"];
          v25 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v24, v23];
          DCAccessibilityPostHighPriorityAnnouncementNotification(0, v25);
          [(DCLongRunningTaskController *)self setLastAccessibilityAnnouncementDate:date];
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
    progressViewController = [(DCLongRunningTaskController *)self progressViewController];
    view = [progressViewController view];

    progress = [(DCLongRunningTaskController *)self progress];
    progressViewController2 = [(DCLongRunningTaskController *)self progressViewController];
    [progressViewController2 setObservedProgress:progress];
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
  progressViewController3 = [(DCLongRunningTaskController *)self progressViewController];
  [v3 setContentViewController:progressViewController3];

  progressViewController4 = [(DCLongRunningTaskController *)self progressViewController];
  view2 = [progressViewController4 view];

  [(DCLongRunningTaskController *)self updateProgress];
  [(DCLongRunningTaskController *)self setProgressViewControllerDidFinishPresenting:0];
  [(DCLongRunningTaskController *)self setShouldDismissProgressViewController:0];
  viewControllerToPresentFrom = [(DCLongRunningTaskController *)self viewControllerToPresentFrom];
  v17 = viewControllerToPresentFrom;
  if (viewControllerToPresentFrom)
  {
    rootViewController = viewControllerToPresentFrom;
  }

  else
  {
    window = [(DCLongRunningTaskController *)self window];
    rootViewController = [window rootViewController];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__DCLongRunningTaskController_openProgressDialog__block_invoke_3;
  v21[3] = &unk_278F92DE8;
  v21[4] = self;
  v22 = rootViewController;
  v20 = rootViewController;
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
  progressViewController = [(DCLongRunningTaskController *)self progressViewController];

  if (progressViewController)
  {
    progressViewController2 = [(DCLongRunningTaskController *)self progressViewController];
    [progressViewController2 setProgressDelegate:0];

    progressViewController3 = [(DCLongRunningTaskController *)self progressViewController];
    presentingViewController = [progressViewController3 presentingViewController];

    [(DCLongRunningTaskController *)self setProgressViewController:0];
    if ([(DCLongRunningTaskController *)self progressViewControllerDidFinishPresenting])
    {
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(DCLongRunningTaskController *)self setShouldDismissProgressViewController:1];
    }
  }
}

- (void)willDismissProgressViewController:(id)controller
{
  progress = [(DCLongRunningTaskController *)self progress];
  [progress cancel];
}

@end