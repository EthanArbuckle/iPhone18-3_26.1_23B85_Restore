@interface SFDialogController
+ (void)applicationDidEnterBackground;
- ($74EE3C8A9A83D7DA9DE4D87A9C9037E2)_currentSlot;
- (SFDialogController)init;
- (SFDialogControllerDelegate)delegate;
- (SFDialogViewControllerPresenting)viewControllerPresenter;
- (SFDialogViewPresenting)dialogPresenter;
- (id)_initWithDialogManager:(id)manager;
- (int)_currentWebProcessID;
- (int64_t)_presentDialog:(id)dialog forWebProcessID:(int)d withAdditionalAnimations:(id)animations;
- (void)_dismissCurrentDialogWithResponse:(id)response;
- (void)_dismissDialogWithAdditionalAnimations:(id)animations;
- (void)adjustContentOffsetToPreventTapjackking;
- (void)cancelPresentedDialogIfNeeded;
- (void)dialogView:(id)view didSelectActionAtIndex:(unint64_t)index withInputText:(id)text passwordText:(id)passwordText;
- (void)owningTabWillClose;
- (void)owningWebViewDidChangeProcessID;
- (void)owningWebViewDidCommitNavigationWithURL:(id)l;
- (void)owningWebViewWillBecomeActive;
- (void)owningWebViewWillNavigate;
- (void)presentDialog:(id)dialog animateAlongsidePresentation:(id)presentation dismissal:(id)dismissal;
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
  _currentSlot = [(SFDialogController *)self _currentSlot];

  [(WBSTabDialogManager *)dialogManager presentNextDialogForSlot:_currentSlot, v3];
}

- ($74EE3C8A9A83D7DA9DE4D87A9C9037E2)_currentSlot
{
  _currentWebProcessID = [(SFDialogController *)self _currentWebProcessID];
  _tabID = [(SFDialogController *)self _tabID];
  v5 = _currentWebProcessID;
  result.var1 = _tabID;
  result.var0 = v5;
  return result;
}

- (int)_currentWebProcessID
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_dialogPresenter);
  LODWORD(selfCopy) = [WeakRetained webProcessIDForDialogController:selfCopy];

  return selfCopy;
}

- (void)owningWebViewWillBecomeActive
{
  dialogManager = self->_dialogManager;
  _currentSlot = [(SFDialogController *)self _currentSlot];

  [(WBSTabDialogManager *)dialogManager presentNextDialogForSlot:_currentSlot, v3];
}

- (void)owningTabWillClose
{
  dialogManager = self->_dialogManager;
  _tabID = [(SFDialogController *)self _tabID];
  tabClosedContext = [MEMORY[0x1E69C9090] tabClosedContext];
  [(WBSTabDialogManager *)dialogManager cancelAllDialogsForTabID:_tabID context:tabClosedContext];
}

- (id)_initWithDialogManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = SFDialogController;
  v6 = [(SFDialogController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogManager, manager);
    v8 = v7;
  }

  return v7;
}

- (void)presentDialog:(id)dialog animateAlongsidePresentation:(id)presentation dismissal:(id)dismissal
{
  dialogCopy = dialog;
  presentationCopy = presentation;
  dismissalCopy = dismissal;
  _currentWebProcessID = [(SFDialogController *)self _currentWebProcessID];
  if (_currentWebProcessID)
  {
    v12 = _currentWebProcessID;
    objc_initWeak(location, self);
    objc_initWeak(&from, self->_dialogManager);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__SFDialogController_presentDialog_animateAlongsidePresentation_dismissal___block_invoke;
    aBlock[3] = &unk_1E721F1C8;
    objc_copyWeak(&v32, location);
    v13 = dialogCopy;
    v30 = v13;
    v33 = v12;
    v31 = presentationCopy;
    v14 = _Block_copy(aBlock);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__SFDialogController_presentDialog_animateAlongsidePresentation_dismissal___block_invoke_2;
    v24[3] = &unk_1E721F1F0;
    objc_copyWeak(&v27, location);
    objc_copyWeak(&v28, &from);
    v26 = dismissalCopy;
    v15 = v13;
    v25 = v15;
    v16 = _Block_copy(v24);
    v23 = v14;
    v17 = [MEMORY[0x1E69C9088] tabDialogWithPresentationBlock:v14 dismissalBlock:v16];
    [v17 setBlocksWebProcessUntilDismissed:{objc_msgSend(v15, "completionHandlerBlocksWebProcess")}];
    array = [MEMORY[0x1E695DF70] array];
    if (([v15 canceledOnProvisionalNavigation] & 1) == 0)
    {
      provisionalNavigationExemption = [MEMORY[0x1E69C9098] provisionalNavigationExemption];
      [array addObject:provisionalNavigationExemption];
    }

    if (([v15 canceledOnCommittedNavigation] & 1) == 0)
    {
      committedNavigationExemption = [MEMORY[0x1E69C9098] committedNavigationExemption];
      [array addObject:committedNavigationExemption];
    }

    if (([v15 canceledOnApplicationBackground] & 1) == 0)
    {
      v21 = [objc_alloc(MEMORY[0x1E69C9098]) initWithCancellationHandler:&__block_literal_global_62];
      [array addObject:v21];
    }

    additionalCancellationExemptions = [v15 additionalCancellationExemptions];
    [array addObjectsFromArray:additionalCancellationExemptions];

    [v17 setCancellationExemptions:array];
    [(WBSTabDialogManager *)self->_dialogManager enqueueOrPresentDialog:v17 inSlot:v12, [(SFDialogController *)self _tabID]];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    [dialogCopy completeWithResponse:0];
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
  _tabID = [(SFDialogController *)self _tabID];
  tabClosedContext = [MEMORY[0x1E69C9090] tabClosedContext];
  [(WBSTabDialogManager *)dialogManager cancelAllDialogsForTabID:_tabID context:tabClosedContext];
}

- (void)owningWebViewWillNavigate
{
  _currentSlot = [(SFDialogController *)self _currentSlot];
  v5 = v4;
  [(WBSTabDialogManager *)self->_dialogManager cancelAllDialogsBlockingSlot:_currentSlot, v4];
  dialogManager = self->_dialogManager;
  provisionalNavigationContext = [MEMORY[0x1E69C9090] provisionalNavigationContext];
  [(WBSTabDialogManager *)dialogManager cancelAllDialogsForTabID:v5 context:provisionalNavigationContext];
}

- (void)owningWebViewDidCommitNavigationWithURL:(id)l
{
  lCopy = l;
  _currentSlot = [(SFDialogController *)self _currentSlot];
  v7 = v6;
  [(WBSTabDialogManager *)self->_dialogManager cancelAllDialogsBlockingSlot:_currentSlot, v6];
  dialogManager = self->_dialogManager;
  v9 = [MEMORY[0x1E69C9090] committedNavigationContextWithURL:lCopy];

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

- (int64_t)_presentDialog:(id)dialog forWebProcessID:(int)d withAdditionalAnimations:(id)animations
{
  dialogCopy = dialog;
  animationsCopy = animations;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [WeakRetained dialogController:self presentationPolicyForDialog:dialogCopy];
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
      objc_storeStrong(&self->_presentedDialog, dialog);
      self->_webProcessID = d;
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained dialogController:self willPresentDialog:dialogCopy];
      }

      presentationStyle = [dialogCopy presentationStyle];
      if (presentationStyle == 1)
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __78__SFDialogController__presentDialog_forWebProcessID_withAdditionalAnimations___block_invoke;
        v25 = &unk_1E721F238;
        objc_copyWeak(&v26, &location);
        v17 = [dialogCopy newViewControllerRepresentationWithCompletionHandler:&v22];
        dialogViewController = self->_dialogViewController;
        self->_dialogViewController = v17;

        v19 = objc_loadWeakRetained(&self->_viewControllerPresenter);
        [v19 dialogController:self presentViewController:self->_dialogViewController withAdditionalAnimations:{animationsCopy, v22, v23, v24, v25}];

        objc_destroyWeak(&v26);
      }

      else if (!presentationStyle)
      {
        newDialogViewRepresentation = [dialogCopy newDialogViewRepresentation];
        dialogView = self->_dialogView;
        self->_dialogView = newDialogViewRepresentation;

        [(SFDialogView *)self->_dialogView setDelegate:self];
        v16 = objc_loadWeakRetained(&self->_dialogPresenter);
        [v16 presentDialogView:self->_dialogView withAdditionalAnimations:animationsCopy forDialogController:self];
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

- (void)_dismissDialogWithAdditionalAnimations:(id)animations
{
  animationsCopy = animations;
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
      [WeakRetained dismissDialogView:v7 withAdditionalAnimations:animationsCopy forDialogController:self];
    }

    if (v9)
    {
      presentingViewController = [(UIViewController *)v9 presentingViewController];

      if (!presentingViewController)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXTabDialogs();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SFDialogController _dismissDialogWithAdditionalAnimations:v13];
        }
      }

      v14 = objc_loadWeakRetained(&self->_viewControllerPresenter);
      [v14 dialogController:self dismissViewController:v9 withAdditionalAnimations:animationsCopy];
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [v15 dialogController:self didDismissDialog:v5];
    }
  }
}

- (void)_dismissCurrentDialogWithResponse:(id)response
{
  dialogManager = self->_dialogManager;
  responseCopy = response;
  [(WBSTabDialogManager *)dialogManager dismissCurrentDialogForTabID:[(SFDialogController *)self _tabID] withResponse:responseCopy];
}

- (void)dialogView:(id)view didSelectActionAtIndex:(unint64_t)index withInputText:(id)text passwordText:(id)passwordText
{
  textCopy = text;
  passwordTextCopy = passwordText;
  v10 = MEMORY[0x1E695DF90];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v12 = [v10 dictionaryWithObject:v11 forKey:@"selectedActionIndex"];

  if (textCopy)
  {
    [v12 setObject:textCopy forKeyedSubscript:@"text"];
  }

  if (passwordTextCopy)
  {
    [v12 setObject:passwordTextCopy forKeyedSubscript:@"password"];
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