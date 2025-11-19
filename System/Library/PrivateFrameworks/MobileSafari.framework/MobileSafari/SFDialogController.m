@interface SFDialogController
+ (void)applicationDidEnterBackground;
- ($74EE3C8A9A83D7DA9DE4D87A9C9037E2)_currentSlot;
- (SFDialogController)init;
- (SFDialogControllerDelegate)delegate;
- (SFDialogViewControllerPresenting)viewControllerPresenter;
- (SFDialogViewPresenting)dialogPresenter;
- (id)_initWithDialogManager:(id)a3;
- (int)_currentWebProcessID;
- (int64_t)_presentDialog:(id)a3 forWebProcessID:(int)a4 withAdditionalAnimations:(id)a5;
- (void)_dismissCurrentDialogWithResponse:(id)a3;
- (void)_dismissDialogWithAdditionalAnimations:(id)a3;
- (void)adjustContentOffsetToPreventTapjackking;
- (void)cancelPresentedDialogIfNeeded;
- (void)dialogView:(id)a3 didSelectActionAtIndex:(unint64_t)a4 withInputText:(id)a5 passwordText:(id)a6;
- (void)owningTabWillClose;
- (void)owningWebViewDidChangeProcessID;
- (void)owningWebViewDidCommitNavigationWithURL:(id)a3;
- (void)owningWebViewWillBecomeActive;
- (void)owningWebViewWillNavigate;
- (void)presentDialog:(id)a3 animateAlongsidePresentation:(id)a4 dismissal:(id)a5;
- (void)presentNextDialogIfNeeded;
@end

@implementation SFDialogController

- (SFDialogController)init
{
  if (!defaultDialogManager)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C90A0]);
    v4 = defaultDialogManager;
    defaultDialogManager = v3;
  }

  return [(SFDialogController *)self _initWithDialogManager:?];
}

- (void)cancelPresentedDialogIfNeeded
{
  if (self->_presentedDialog)
  {
    [(SFDialogController *)self _dismissCurrentDialogWithResponse:0];
  }
}

- (void)presentNextDialogIfNeeded
{
  dialogManager = self->_dialogManager;
  v4 = [(SFDialogController *)self _currentSlot];

  [(WBSTabDialogManager *)dialogManager presentNextDialogForSlot:v4, v3];
}

- ($74EE3C8A9A83D7DA9DE4D87A9C9037E2)_currentSlot
{
  v3 = [(SFDialogController *)self _currentWebProcessID];
  v4 = [(SFDialogController *)self _tabID];
  v5 = v3;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (int)_currentWebProcessID
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
  LODWORD(v2) = [WeakRetained webProcessIDForDialogController:v2];

  return v2;
}

- (void)owningWebViewWillBecomeActive
{
  dialogManager = self->_dialogManager;
  v4 = [(SFDialogController *)self _currentSlot];

  [(WBSTabDialogManager *)dialogManager presentNextDialogForSlot:v4, v3];
}

- (void)owningTabWillClose
{
  dialogManager = self->_dialogManager;
  v3 = [(SFDialogController *)self _tabID];
  v4 = [MEMORY[0x1E69C9090] tabClosedContext];
  [(WBSTabDialogManager *)dialogManager cancelAllDialogsForTabID:v3 context:v4];
}

- (id)_initWithDialogManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFDialogController;
  v6 = [(SFDialogController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogManager, a3);
    v8 = v7;
  }

  return v7;
}

- (void)presentDialog:(id)a3 animateAlongsidePresentation:(id)a4 dismissal:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SFDialogController *)self _currentWebProcessID];
  if (v11)
  {
    v12 = v11;
    objc_initWeak(location, self);
    objc_initWeak(&from, self->_dialogManager);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__SFDialogController_presentDialog_animateAlongsidePresentation_dismissal___block_invoke;
    aBlock[3] = &unk_1E721F1C8;
    objc_copyWeak(&v32, location);
    v13 = v8;
    v30 = v13;
    v33 = v12;
    v31 = v9;
    v14 = _Block_copy(aBlock);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__SFDialogController_presentDialog_animateAlongsidePresentation_dismissal___block_invoke_2;
    v24[3] = &unk_1E721F1F0;
    objc_copyWeak(&v27, location);
    objc_copyWeak(&v28, &from);
    v26 = v10;
    v15 = v13;
    v25 = v15;
    v16 = _Block_copy(v24);
    v23 = v14;
    v17 = [MEMORY[0x1E69C9088] tabDialogWithPresentationBlock:v14 dismissalBlock:v16];
    [v17 setBlocksWebProcessUntilDismissed:{objc_msgSend(v15, "completionHandlerBlocksWebProcess")}];
    v18 = [MEMORY[0x1E695DF70] array];
    if (([v15 canceledOnProvisionalNavigation] & 1) == 0)
    {
      v19 = [MEMORY[0x1E69C9098] provisionalNavigationExemption];
      [v18 addObject:v19];
    }

    if (([v15 canceledOnCommittedNavigation] & 1) == 0)
    {
      v20 = [MEMORY[0x1E69C9098] committedNavigationExemption];
      [v18 addObject:v20];
    }

    if (([v15 canceledOnApplicationBackground] & 1) == 0)
    {
      v21 = [objc_alloc(MEMORY[0x1E69C9098]) initWithCancellationHandler:&__block_literal_global_62];
      [v18 addObject:v21];
    }

    v22 = [v15 additionalCancellationExemptions];
    [v18 addObjectsFromArray:v22];

    [v17 setCancellationExemptions:v18];
    [(WBSTabDialogManager *)self->_dialogManager enqueueOrPresentDialog:v17 inSlot:v12, [(SFDialogController *)self _tabID]];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    [v8 completeWithResponse:0];
  }
}

uint64_t __75__SFDialogController_presentDialog_animateAlongsidePresentation_dismissal___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _presentDialog:*(a1 + 32) forWebProcessID:*(a1 + 56) withAdditionalAnimations:*(a1 + 40)];

  return v3;
}

void __75__SFDialogController_presentDialog_animateAlongsidePresentation_dismissal___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = objc_loadWeakRetained((a1 + 56));
  if (a3)
  {
    [WeakRetained _dismissDialogWithAdditionalAnimations:*(a1 + 40)];
  }

  [*(a1 + 32) completeWithResponse:v9];
  v7 = [WeakRetained _currentSlot];
  [v6 presentNextDialogForSlot:{v7, v8}];
}

uint64_t __75__SFDialogController_presentDialog_animateAlongsidePresentation_dismissal___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 reason];
  v3 = [v2 isEqualToString:@"SFTabDialogCancellationReasonApplicationBackground"];

  return v3;
}

- (void)owningWebViewDidChangeProcessID
{
  dialogManager = self->_dialogManager;
  v3 = [(SFDialogController *)self _tabID];
  v4 = [MEMORY[0x1E69C9090] tabClosedContext];
  [(WBSTabDialogManager *)dialogManager cancelAllDialogsForTabID:v3 context:v4];
}

- (void)owningWebViewWillNavigate
{
  v3 = [(SFDialogController *)self _currentSlot];
  v5 = v4;
  [(WBSTabDialogManager *)self->_dialogManager cancelAllDialogsBlockingSlot:v3, v4];
  dialogManager = self->_dialogManager;
  v7 = [MEMORY[0x1E69C9090] provisionalNavigationContext];
  [(WBSTabDialogManager *)dialogManager cancelAllDialogsForTabID:v5 context:v7];
}

- (void)owningWebViewDidCommitNavigationWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SFDialogController *)self _currentSlot];
  v7 = v6;
  [(WBSTabDialogManager *)self->_dialogManager cancelAllDialogsBlockingSlot:v5, v6];
  dialogManager = self->_dialogManager;
  v9 = [MEMORY[0x1E69C9090] committedNavigationContextWithURL:v4];

  [(WBSTabDialogManager *)dialogManager cancelAllDialogsForTabID:v7 context:v9];
}

+ (void)applicationDidEnterBackground
{
  v2 = defaultDialogManager;
  v3 = [MEMORY[0x1E69C9090] cancellationContextWithReason:@"SFTabDialogCancellationReasonApplicationBackground" userInfo:0];
  [v2 cancelAllDialogsWithContext:v3];
}

- (void)adjustContentOffsetToPreventTapjackking
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    dialogView = self->_dialogView;
    [WeakRetained getLastWindowTapLocation];
    [(SFDialogView *)dialogView jitterDialogWithAcceptFromTap:?];
  }
}

- (int64_t)_presentDialog:(id)a3 forWebProcessID:(int)a4 withAdditionalAnimations:(id)a5
{
  v9 = a3;
  v10 = a5;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [WeakRetained dialogController:self presentationPolicyForDialog:v9];
  switch(v12)
  {
    case 2:
      v20 = 1;
      goto LABEL_13;
    case 1:
      [(WBSTabDialogManager *)self->_dialogManager cancelAllDialogsForTabID:[(SFDialogController *)self _tabID]];
      break;
    case 0:
LABEL_5:
      objc_storeStrong(&self->_presentedDialog, a3);
      self->_webProcessID = a4;
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained dialogController:self willPresentDialog:v9];
      }

      v13 = [v9 presentationStyle];
      if (v13 == 1)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __78__SFDialogController__presentDialog_forWebProcessID_withAdditionalAnimations___block_invoke;
        v25 = &unk_1E721F238;
        objc_copyWeak(&v26, &location);
        v17 = [v9 newViewControllerRepresentationWithCompletionHandler:&v22];
        dialogViewController = self->_dialogViewController;
        self->_dialogViewController = v17;

        v19 = objc_loadWeakRetained(&self->_viewControllerPresenter);
        [v19 dialogController:self presentViewController:self->_dialogViewController withAdditionalAnimations:{v10, v22, v23, v24, v25}];

        objc_destroyWeak(&v26);
      }

      else if (!v13)
      {
        v14 = [v9 newDialogViewRepresentation];
        dialogView = self->_dialogView;
        self->_dialogView = v14;

        [(SFDialogView *)self->_dialogView setDelegate:self];
        v16 = objc_loadWeakRetained(&self->_dialogPresenter);
        [v16 presentDialogView:self->_dialogView withAdditionalAnimations:v10 forDialogController:self];
      }

      break;
  }

  v20 = 0;
LABEL_13:

  objc_destroyWeak(&location);
  return v20;
}

void __78__SFDialogController__presentDialog_forWebProcessID_withAdditionalAnimations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissCurrentDialogWithResponse:v3];
}

- (void)_dismissDialogWithAdditionalAnimations:(id)a3
{
  v4 = a3;
  if ([(SFDialogController *)self _isPresentingDialog])
  {
    v5 = self->_presentedDialog;
    presentedDialog = self->_presentedDialog;
    self->_presentedDialog = 0;

    v7 = self->_dialogView;
    dialogView = self->_dialogView;
    self->_dialogView = 0;

    v9 = self->_dialogViewController;
    dialogViewController = self->_dialogViewController;
    self->_dialogViewController = 0;

    self->_webProcessID = 0;
    if (v7)
    {
      [(SFDialogView *)v7 setDelegate:0];
      WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
      [WeakRetained dismissDialogView:v7 withAdditionalAnimations:v4 forDialogController:self];
    }

    if (v9)
    {
      v12 = [(UIViewController *)v9 presentingViewController];

      if (!v12)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXTabDialogs();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SFDialogController _dismissDialogWithAdditionalAnimations:v13];
        }
      }

      v14 = objc_loadWeakRetained(&self->_viewControllerPresenter);
      [v14 dialogController:self dismissViewController:v9 withAdditionalAnimations:v4];
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [v15 dialogController:self didDismissDialog:v5];
    }
  }
}

- (void)_dismissCurrentDialogWithResponse:(id)a3
{
  dialogManager = self->_dialogManager;
  v5 = a3;
  [(WBSTabDialogManager *)dialogManager dismissCurrentDialogForTabID:[(SFDialogController *)self _tabID] withResponse:v5];
}

- (void)dialogView:(id)a3 didSelectActionAtIndex:(unint64_t)a4 withInputText:(id)a5 passwordText:(id)a6
{
  v13 = a5;
  v9 = a6;
  v10 = MEMORY[0x1E695DF90];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v12 = [v10 dictionaryWithObject:v11 forKey:@"selectedActionIndex"];

  if (v13)
  {
    [v12 setObject:v13 forKeyedSubscript:@"text"];
  }

  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:@"password"];
  }

  [(SFDialogController *)self _dismissCurrentDialogWithResponse:v12];
}

- (SFDialogControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFDialogViewPresenting)dialogPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);

  return WeakRetained;
}

- (SFDialogViewControllerPresenting)viewControllerPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerPresenter);

  return WeakRetained;
}

- (void)_dismissDialogWithAdditionalAnimations:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = 138543618;
  v3 = objc_opt_class();
  v4 = 2114;
  v5 = objc_opt_class();
  _os_log_error_impl(&dword_18B7AC000, v1, OS_LOG_TYPE_ERROR, "Dialog %{public}@'s view controller %{public}@ was dismissed out of band of the SFDialogController", &v2, 0x16u);
}

@end