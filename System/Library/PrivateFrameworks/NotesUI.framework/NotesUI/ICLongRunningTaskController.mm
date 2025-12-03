@interface ICLongRunningTaskController
- (ICLongRunningTaskController)initWithWindow:(id)window intervalBeforeOpeningProgressDialog:(double)dialog;
- (void)closeProgressDialog;
- (void)completeTaskIfNecessary;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openProgressDialog;
- (void)startTask:(id)task completionBlock:(id)block;
- (void)updateProgress;
- (void)willDismissProgressViewController:(id)controller;
@end

@implementation ICLongRunningTaskController

- (ICLongRunningTaskController)initWithWindow:(id)window intervalBeforeOpeningProgressDialog:(double)dialog
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = ICLongRunningTaskController;
  v7 = [(ICLongRunningTaskController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICLongRunningTaskController *)v7 setIntervalBeforeOpeningProgressDialog:dialog];
    [(ICLongRunningTaskController *)v8 setWindow:windowCopy];
  }

  return v8;
}

- (void)startTask:(id)task completionBlock:(id)block
{
  taskCopy = task;
  blockCopy = block;
  [(ICLongRunningTaskController *)self setKeepAlive:self];
  [(ICLongRunningTaskController *)self setCompletionBlock:blockCopy];

  v8 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:0];
  [(ICLongRunningTaskController *)self setProgress:v8];

  progress = [(ICLongRunningTaskController *)self progress];
  [progress ic_addObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_0];

  v10 = dispatch_semaphore_create(0);
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICLongRunningTaskController_startTask_completionBlock___block_invoke;
  block[3] = &unk_1E846AFD0;
  v12 = taskCopy;
  v21 = v12;
  block[4] = self;
  v13 = v10;
  v20 = v13;
  dispatch_async(v11, block);

  [(ICLongRunningTaskController *)self intervalBeforeOpeningProgressDialog];
  v15 = dispatch_time(0, (v14 * 1000000000.0));
  if (dispatch_semaphore_wait(v13, v15))
  {
    progress2 = [(ICLongRunningTaskController *)self progress];
    if ([progress2 totalUnitCount] == 1)
    {
      allowSingleUnitProgress = [(ICLongRunningTaskController *)self allowSingleUnitProgress];

      if (!allowSingleUnitProgress)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    date = [MEMORY[0x1E695DF00] date];
    [(ICLongRunningTaskController *)self setOpenProgressDate:date];

    [(ICLongRunningTaskController *)self openProgressDialog];
  }

LABEL_7:
}

void __57__ICLongRunningTaskController_startTask_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) progress];
  (*(v2 + 16))(v2, v3);

  dispatch_semaphore_signal(*(a1 + 40));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICLongRunningTaskController_startTask_completionBlock___block_invoke_2;
  block[3] = &unk_1E8468BA0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICLongRunningTaskController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/Utilities/ICLongRunningTaskController.m"]& 1) != 0)
  {
    v13 = [(ICLongRunningTaskController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_0 && (v13 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__ICLongRunningTaskController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E8468BA0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICLongRunningTaskController;
    [(ICLongRunningTaskController *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)completeTaskIfNecessary
{
  progress = [(ICLongRunningTaskController *)self progress];

  if (progress)
  {
    openProgressDate = [(ICLongRunningTaskController *)self openProgressDate];

    if (openProgressDate)
    {
      date = [MEMORY[0x1E695DF00] date];
      openProgressDate2 = [(ICLongRunningTaskController *)self openProgressDate];
      [date timeIntervalSinceDate:openProgressDate2];
      v8 = v7;

      if (v8 < 0.5)
      {
        [MEMORY[0x1E696AF00] sleepForTimeInterval:0.5 - v8];
      }

      [(ICLongRunningTaskController *)self closeProgressDialog];
      [(ICLongRunningTaskController *)self setOpenProgressDate:0];
    }

    else
    {
      completionBlock = [(ICLongRunningTaskController *)self completionBlock];

      if (completionBlock)
      {
        completionBlock2 = [(ICLongRunningTaskController *)self completionBlock];
        progress2 = [(ICLongRunningTaskController *)self progress];
        (completionBlock2)[2](completionBlock2, progress2);

        [(ICLongRunningTaskController *)self setCompletionBlock:0];
      }
    }

    progress3 = [(ICLongRunningTaskController *)self progress];
    [progress3 ic_removeObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_0];

    [(ICLongRunningTaskController *)self setProgress:0];
  }

  else
  {
    completionBlock3 = [(ICLongRunningTaskController *)self completionBlock];

    if (completionBlock3)
    {
      completionBlock4 = [(ICLongRunningTaskController *)self completionBlock];
      completionBlock4[2](completionBlock4, 0);

      [(ICLongRunningTaskController *)self setCompletionBlock:0];
    }
  }

  [(ICLongRunningTaskController *)self setKeepAlive:0];
}

- (void)updateProgress
{
  progress = [(ICLongRunningTaskController *)self progress];
  totalUnitCount = [progress totalUnitCount];

  if (totalUnitCount)
  {
    updateProgressUIBlock = [(ICLongRunningTaskController *)self updateProgressUIBlock];

    if (updateProgressUIBlock)
    {
      progressStringBlock = [(ICLongRunningTaskController *)self progressStringBlock];

      if (progressStringBlock)
      {
        progress2 = [(ICLongRunningTaskController *)self progress];
        completedUnitCount = [progress2 completedUnitCount];

        if (completedUnitCount + 1 < totalUnitCount)
        {
          v9 = completedUnitCount + 1;
        }

        else
        {
          v9 = totalUnitCount;
        }

        progressStringBlock2 = [(ICLongRunningTaskController *)self progressStringBlock];
        progressString2 = progressStringBlock2[2](progressStringBlock2, v9, totalUnitCount);
      }

      else
      {
        progressString = [(ICLongRunningTaskController *)self progressString];

        if (progressString)
        {
          progressString2 = [(ICLongRunningTaskController *)self progressString];
        }

        else
        {
          v19 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [(ICLongRunningTaskController *)v19 updateProgress];
          }

          progressString2 = &stru_1F4F94F00;
        }
      }

      updateProgressUIBlock2 = [(ICLongRunningTaskController *)self updateProgressUIBlock];
      progress3 = [(ICLongRunningTaskController *)self progress];
      [progress3 fractionCompleted];
      (updateProgressUIBlock2)[2](updateProgressUIBlock2, progressString2);

      date = [MEMORY[0x1E695DF00] date];
      lastAccessibilityAnnouncementDate = [(ICLongRunningTaskController *)self lastAccessibilityAnnouncementDate];
      if (lastAccessibilityAnnouncementDate)
      {
        v24 = lastAccessibilityAnnouncementDate;
        lastAccessibilityAnnouncementDate2 = [(ICLongRunningTaskController *)self lastAccessibilityAnnouncementDate];
        [date timeIntervalSinceDate:lastAccessibilityAnnouncementDate2];
        v27 = v26;

        if (v27 > 3.0)
        {
          progress4 = [(ICLongRunningTaskController *)self progress];
          [progress4 fractionCompleted];
          v30 = (v29 * 100.0);

          v31 = __ICLocalizedFrameworkString_impl(@"%lu%% complete", @"%lu%% complete", 0, 1);
          v32 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v31, v30];
          ICAccessibilityPostHighPriorityAnnouncementNotification(0, v32);
          [(ICLongRunningTaskController *)self setLastAccessibilityAnnouncementDate:date];
        }
      }
    }
  }

  else
  {
    if (![(ICLongRunningTaskController *)self isIndeterminate])
    {
      return;
    }

    progressString3 = [(ICLongRunningTaskController *)self progressString];
    if (progressString3)
    {
    }

    else
    {
      progressStringBlock3 = [(ICLongRunningTaskController *)self progressStringBlock];

      if (!progressStringBlock3)
      {
        return;
      }
    }

    progressStringBlock4 = [(ICLongRunningTaskController *)self progressStringBlock];

    if (progressStringBlock4)
    {
      progressStringBlock5 = [(ICLongRunningTaskController *)self progressStringBlock];
      v35 = progressStringBlock5[2](progressStringBlock5, 0, 0);
    }

    else
    {
      progressString4 = [(ICLongRunningTaskController *)self progressString];

      if (progressString4)
      {
        progressString5 = [(ICLongRunningTaskController *)self progressString];
      }

      else
      {
        progressString5 = &stru_1F4F94F00;
      }

      v35 = progressString5;
    }

    updateProgressUIBlock3 = [(ICLongRunningTaskController *)self updateProgressUIBlock];

    if (updateProgressUIBlock3)
    {
      updateProgressUIBlock4 = [(ICLongRunningTaskController *)self updateProgressUIBlock];
      updateProgressUIBlock4[2](updateProgressUIBlock4, v35, 0.0);
    }

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)openProgressDialog
{
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:1];
  v4 = [[ICProgressViewController alloc] initWithDelegate:self];
  [(ICLongRunningTaskController *)self setProgressViewController:v4];
  if ([(ICLongRunningTaskController *)self shouldShowCircularProgress])
  {
    progressViewController = [(ICLongRunningTaskController *)self progressViewController];
    view = [progressViewController view];

    progress = [(ICLongRunningTaskController *)self progress];
    progressViewController2 = [(ICLongRunningTaskController *)self progressViewController];
    [progressViewController2 setObservedProgress:progress];
  }

  if ([(ICLongRunningTaskController *)self shouldShowCancelButton])
  {
    objc_initWeak(&location, self);
    v9 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
    customCancelButtonTitle = [(ICLongRunningTaskController *)self customCancelButtonTitle];

    if (customCancelButtonTitle)
    {
      customCancelButtonTitle2 = [(ICLongRunningTaskController *)self customCancelButtonTitle];

      v9 = customCancelButtonTitle2;
    }

    v12 = MEMORY[0x1E69DC648];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __49__ICLongRunningTaskController_openProgressDialog__block_invoke;
    v26[3] = &unk_1E846AFF8;
    objc_copyWeak(&v27, &location);
    v13 = [v12 actionWithTitle:v9 style:1 handler:v26];
    [v3 addAction:v13];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__ICLongRunningTaskController_openProgressDialog__block_invoke_2;
  v24[3] = &unk_1E846B020;
  v14 = v4;
  v25 = v14;
  [(ICLongRunningTaskController *)self setUpdateProgressUIBlock:v24];
  progressViewController3 = [(ICLongRunningTaskController *)self progressViewController];
  [v3 setContentViewController:progressViewController3];

  progressViewController4 = [(ICLongRunningTaskController *)self progressViewController];
  view2 = [progressViewController4 view];

  [(ICLongRunningTaskController *)self updateProgress];
  [(ICLongRunningTaskController *)self setProgressViewControllerDidFinishPresenting:0];
  [(ICLongRunningTaskController *)self setShouldDismissProgressViewController:0];
  viewControllerToPresentFrom = [(ICLongRunningTaskController *)self viewControllerToPresentFrom];
  if (viewControllerToPresentFrom)
  {
    rootViewController = viewControllerToPresentFrom;
  }

  else
  {
    window = [(ICLongRunningTaskController *)self window];
    rootViewController = [window rootViewController];

    if (!rootViewController)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"viewControllerToPresentFrom" functionName:"-[ICLongRunningTaskController openProgressDialog]" simulateCrash:1 showAlert:0 format:@"No view controller to present progress UI from."];
    }
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__ICLongRunningTaskController_openProgressDialog__block_invoke_3;
  v22[3] = &unk_1E8468F80;
  v22[4] = self;
  v23 = rootViewController;
  v21 = rootViewController;
  [v21 presentViewController:v3 animated:1 completion:v22];
}

void __49__ICLongRunningTaskController_openProgressDialog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsCancelled:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 progress];
  [v4 cancel];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 closeProgressDialog];
}

void __49__ICLongRunningTaskController_openProgressDialog__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 label];
  [v4 setText:v3];
}

uint64_t __49__ICLongRunningTaskController_openProgressDialog__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setProgressViewControllerDidFinishPresenting:1];
  result = [*(a1 + 32) shouldDismissProgressViewController];
  if (result)
  {
    [*(a1 + 32) setShouldDismissProgressViewController:0];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __49__ICLongRunningTaskController_openProgressDialog__block_invoke_4;
    v4[3] = &unk_1E8468BA0;
    v3 = *(a1 + 40);
    v4[4] = *(a1 + 32);
    return [v3 dismissViewControllerAnimated:1 completion:v4];
  }

  return result;
}

void __49__ICLongRunningTaskController_openProgressDialog__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) completionBlock];
    v4 = [*(a1 + 32) progress];
    (v3)[2](v3, v4);

    v5 = *(a1 + 32);

    [v5 setCompletionBlock:0];
  }
}

- (void)closeProgressDialog
{
  progressViewController = [(ICLongRunningTaskController *)self progressViewController];

  if (progressViewController)
  {
    progressViewController2 = [(ICLongRunningTaskController *)self progressViewController];
    [progressViewController2 setProgressDelegate:0];

    progressViewController3 = [(ICLongRunningTaskController *)self progressViewController];
    presentingViewController = [progressViewController3 presentingViewController];

    [(ICLongRunningTaskController *)self setProgressViewController:0];
    viewControllerToPresentFrom = [(ICLongRunningTaskController *)self viewControllerToPresentFrom];
    v8 = viewControllerToPresentFrom;
    if (viewControllerToPresentFrom)
    {
      rootViewController = viewControllerToPresentFrom;
    }

    else
    {
      window = [(ICLongRunningTaskController *)self window];
      rootViewController = [window rootViewController];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__ICLongRunningTaskController_closeProgressDialog__block_invoke;
    aBlock[3] = &unk_1E8468BA0;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (rootViewController)
    {
      if (presentingViewController)
      {
        [presentingViewController dismissViewControllerAnimated:1 completion:v11];
      }

      else
      {
        [(ICLongRunningTaskController *)self setShouldDismissProgressViewController:1];
      }
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

void __50__ICLongRunningTaskController_closeProgressDialog__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) completionBlock];
    v4 = [*(a1 + 32) progress];
    (v3)[2](v3, v4);

    v5 = *(a1 + 32);

    [v5 setCompletionBlock:0];
  }
}

- (void)willDismissProgressViewController:(id)controller
{
  progress = [(ICLongRunningTaskController *)self progress];
  [progress cancel];
}

@end