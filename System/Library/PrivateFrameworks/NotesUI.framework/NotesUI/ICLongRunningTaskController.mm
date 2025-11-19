@interface ICLongRunningTaskController
- (ICLongRunningTaskController)initWithWindow:(id)a3 intervalBeforeOpeningProgressDialog:(double)a4;
- (void)closeProgressDialog;
- (void)completeTaskIfNecessary;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openProgressDialog;
- (void)startTask:(id)a3 completionBlock:(id)a4;
- (void)updateProgress;
- (void)willDismissProgressViewController:(id)a3;
@end

@implementation ICLongRunningTaskController

- (ICLongRunningTaskController)initWithWindow:(id)a3 intervalBeforeOpeningProgressDialog:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = ICLongRunningTaskController;
  v7 = [(ICLongRunningTaskController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICLongRunningTaskController *)v7 setIntervalBeforeOpeningProgressDialog:a4];
    [(ICLongRunningTaskController *)v8 setWindow:v6];
  }

  return v8;
}

- (void)startTask:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ICLongRunningTaskController *)self setKeepAlive:self];
  [(ICLongRunningTaskController *)self setCompletionBlock:v7];

  v8 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:0];
  [(ICLongRunningTaskController *)self setProgress:v8];

  v9 = [(ICLongRunningTaskController *)self progress];
  [v9 ic_addObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_0];

  v10 = dispatch_semaphore_create(0);
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICLongRunningTaskController_startTask_completionBlock___block_invoke;
  block[3] = &unk_1E846AFD0;
  v12 = v6;
  v21 = v12;
  block[4] = self;
  v13 = v10;
  v20 = v13;
  dispatch_async(v11, block);

  [(ICLongRunningTaskController *)self intervalBeforeOpeningProgressDialog];
  v15 = dispatch_time(0, (v14 * 1000000000.0));
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [(ICLongRunningTaskController *)self progress];
    if ([v16 totalUnitCount] == 1)
    {
      v17 = [(ICLongRunningTaskController *)self allowSingleUnitProgress];

      if (!v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v18 = [MEMORY[0x1E695DF00] date];
    [(ICLongRunningTaskController *)self setOpenProgressDate:v18];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICLongRunningTaskController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/Utilities/ICLongRunningTaskController.m"]& 1) != 0)
  {
    v13 = [(ICLongRunningTaskController *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == &compoundliteral_0 && (v13 & 1) == 0)
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
    [(ICLongRunningTaskController *)&v15 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (void)completeTaskIfNecessary
{
  v3 = [(ICLongRunningTaskController *)self progress];

  if (v3)
  {
    v4 = [(ICLongRunningTaskController *)self openProgressDate];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DF00] date];
      v6 = [(ICLongRunningTaskController *)self openProgressDate];
      [v5 timeIntervalSinceDate:v6];
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
      v11 = [(ICLongRunningTaskController *)self completionBlock];

      if (v11)
      {
        v12 = [(ICLongRunningTaskController *)self completionBlock];
        v13 = [(ICLongRunningTaskController *)self progress];
        (v12)[2](v12, v13);

        [(ICLongRunningTaskController *)self setCompletionBlock:0];
      }
    }

    v14 = [(ICLongRunningTaskController *)self progress];
    [v14 ic_removeObserver:self forKeyPath:@"fractionCompleted" context:&compoundliteral_0];

    [(ICLongRunningTaskController *)self setProgress:0];
  }

  else
  {
    v9 = [(ICLongRunningTaskController *)self completionBlock];

    if (v9)
    {
      v10 = [(ICLongRunningTaskController *)self completionBlock];
      v10[2](v10, 0);

      [(ICLongRunningTaskController *)self setCompletionBlock:0];
    }
  }

  [(ICLongRunningTaskController *)self setKeepAlive:0];
}

- (void)updateProgress
{
  v3 = [(ICLongRunningTaskController *)self progress];
  v4 = [v3 totalUnitCount];

  if (v4)
  {
    v5 = [(ICLongRunningTaskController *)self updateProgressUIBlock];

    if (v5)
    {
      v6 = [(ICLongRunningTaskController *)self progressStringBlock];

      if (v6)
      {
        v7 = [(ICLongRunningTaskController *)self progress];
        v8 = [v7 completedUnitCount];

        if (v8 + 1 < v4)
        {
          v9 = v8 + 1;
        }

        else
        {
          v9 = v4;
        }

        v10 = [(ICLongRunningTaskController *)self progressStringBlock];
        v11 = v10[2](v10, v9, v4);
      }

      else
      {
        v13 = [(ICLongRunningTaskController *)self progressString];

        if (v13)
        {
          v11 = [(ICLongRunningTaskController *)self progressString];
        }

        else
        {
          v19 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [(ICLongRunningTaskController *)v19 updateProgress];
          }

          v11 = &stru_1F4F94F00;
        }
      }

      v20 = [(ICLongRunningTaskController *)self updateProgressUIBlock];
      v21 = [(ICLongRunningTaskController *)self progress];
      [v21 fractionCompleted];
      (v20)[2](v20, v11);

      v22 = [MEMORY[0x1E695DF00] date];
      v23 = [(ICLongRunningTaskController *)self lastAccessibilityAnnouncementDate];
      if (v23)
      {
        v24 = v23;
        v25 = [(ICLongRunningTaskController *)self lastAccessibilityAnnouncementDate];
        [v22 timeIntervalSinceDate:v25];
        v27 = v26;

        if (v27 > 3.0)
        {
          v28 = [(ICLongRunningTaskController *)self progress];
          [v28 fractionCompleted];
          v30 = (v29 * 100.0);

          v31 = __ICLocalizedFrameworkString_impl(@"%lu%% complete", @"%lu%% complete", 0, 1);
          v32 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v31, v30];
          ICAccessibilityPostHighPriorityAnnouncementNotification(0, v32);
          [(ICLongRunningTaskController *)self setLastAccessibilityAnnouncementDate:v22];
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

    v12 = [(ICLongRunningTaskController *)self progressString];
    if (v12)
    {
    }

    else
    {
      v14 = [(ICLongRunningTaskController *)self progressStringBlock];

      if (!v14)
      {
        return;
      }
    }

    v15 = [(ICLongRunningTaskController *)self progressStringBlock];

    if (v15)
    {
      v16 = [(ICLongRunningTaskController *)self progressStringBlock];
      v35 = v16[2](v16, 0, 0);
    }

    else
    {
      v17 = [(ICLongRunningTaskController *)self progressString];

      if (v17)
      {
        v18 = [(ICLongRunningTaskController *)self progressString];
      }

      else
      {
        v18 = &stru_1F4F94F00;
      }

      v35 = v18;
    }

    v33 = [(ICLongRunningTaskController *)self updateProgressUIBlock];

    if (v33)
    {
      v34 = [(ICLongRunningTaskController *)self updateProgressUIBlock];
      v34[2](v34, v35, 0.0);
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
    v5 = [(ICLongRunningTaskController *)self progressViewController];
    v6 = [v5 view];

    v7 = [(ICLongRunningTaskController *)self progress];
    v8 = [(ICLongRunningTaskController *)self progressViewController];
    [v8 setObservedProgress:v7];
  }

  if ([(ICLongRunningTaskController *)self shouldShowCancelButton])
  {
    objc_initWeak(&location, self);
    v9 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
    v10 = [(ICLongRunningTaskController *)self customCancelButtonTitle];

    if (v10)
    {
      v11 = [(ICLongRunningTaskController *)self customCancelButtonTitle];

      v9 = v11;
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
  v15 = [(ICLongRunningTaskController *)self progressViewController];
  [v3 setContentViewController:v15];

  v16 = [(ICLongRunningTaskController *)self progressViewController];
  v17 = [v16 view];

  [(ICLongRunningTaskController *)self updateProgress];
  [(ICLongRunningTaskController *)self setProgressViewControllerDidFinishPresenting:0];
  [(ICLongRunningTaskController *)self setShouldDismissProgressViewController:0];
  v18 = [(ICLongRunningTaskController *)self viewControllerToPresentFrom];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v20 = [(ICLongRunningTaskController *)self window];
    v19 = [v20 rootViewController];

    if (!v19)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"viewControllerToPresentFrom" functionName:"-[ICLongRunningTaskController openProgressDialog]" simulateCrash:1 showAlert:0 format:@"No view controller to present progress UI from."];
    }
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__ICLongRunningTaskController_openProgressDialog__block_invoke_3;
  v22[3] = &unk_1E8468F80;
  v22[4] = self;
  v23 = v19;
  v21 = v19;
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
  v3 = [(ICLongRunningTaskController *)self progressViewController];

  if (v3)
  {
    v4 = [(ICLongRunningTaskController *)self progressViewController];
    [v4 setProgressDelegate:0];

    v5 = [(ICLongRunningTaskController *)self progressViewController];
    v6 = [v5 presentingViewController];

    [(ICLongRunningTaskController *)self setProgressViewController:0];
    v7 = [(ICLongRunningTaskController *)self viewControllerToPresentFrom];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = [(ICLongRunningTaskController *)self window];
      v9 = [v10 rootViewController];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__ICLongRunningTaskController_closeProgressDialog__block_invoke;
    aBlock[3] = &unk_1E8468BA0;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (v9)
    {
      if (v6)
      {
        [v6 dismissViewControllerAnimated:1 completion:v11];
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

- (void)willDismissProgressViewController:(id)a3
{
  v3 = [(ICLongRunningTaskController *)self progress];
  [v3 cancel];
}

@end