@interface SFAcceptSharedTabGroupInProfileDialogController
+ (void)presentDialogInScene:(id)a3 forSharedTabGroupWithTitle:(id)a4 tabGroupManager:(id)a5 completionHandler:(id)a6;
- (id)_actionToOpenInProfile:(id)a3;
- (id)_initWithScene:(id)a3 sharedTabGroupTitle:(id)a4 tabGroupManager:(id)a5 completionHandler:(id)a6;
- (id)_makeDialog;
- (id)_presentationViewController;
- (void)_presentDialog;
- (void)_showAllProfilesDialog;
- (void)cancel;
- (void)dialogController:(id)a3 dismissViewController:(id)a4 withAdditionalAnimations:(id)a5;
- (void)dialogController:(id)a3 presentViewController:(id)a4 withAdditionalAnimations:(id)a5;
- (void)selectProfile;
@end

@implementation SFAcceptSharedTabGroupInProfileDialogController

+ (void)presentDialogInScene:(id)a3 forSharedTabGroupWithTitle:(id)a4 tabGroupManager:(id)a5 completionHandler:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 hasMultipleProfiles])
  {
    v13 = [[a1 alloc] _initWithScene:v15 sharedTabGroupTitle:v10 tabGroupManager:v11 completionHandler:v12];
    v14 = _currentDialogController;
    _currentDialogController = v13;

    [_currentDialogController _presentDialog];
  }

  else
  {
    v12[2](v12, *MEMORY[0x1E69C8B58]);
  }
}

- (id)_initWithScene:(id)a3 sharedTabGroupTitle:(id)a4 tabGroupManager:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = SFAcceptSharedTabGroupInProfileDialogController;
  v15 = [(SFAcceptSharedTabGroupInProfileDialogController *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_windowScene, a3);
    v17 = [v12 copy];
    sharedTabGroupTitle = v16->_sharedTabGroupTitle;
    v16->_sharedTabGroupTitle = v17;

    objc_storeStrong(&v16->_tabGroupManager, a5);
    v19 = [v14 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v19;

    v21 = v16;
  }

  return v16;
}

- (void)_presentDialog
{
  v3 = [(SFAcceptSharedTabGroupInProfileDialogController *)self _makeDialog];
  dialog = self->_dialog;
  self->_dialog = v3;

  v5 = objc_alloc_init(SFDialogController);
  dialogController = self->_dialogController;
  self->_dialogController = v5;

  [(SFDialogController *)self->_dialogController setDelegate:self];
  [(SFDialogController *)self->_dialogController setDialogPresenter:self];
  [(SFDialogController *)self->_dialogController setViewControllerPresenter:self];
  v8 = self->_dialog;
  v7 = self->_dialogController;

  [(SFDialogController *)v7 presentDialog:v8];
}

- (id)_makeDialog
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SFBasicDialog);
  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  v6 = [v4 stringWithFormat:v5, self->_sharedTabGroupTitle];
  [(SFBasicDialog *)v3 setTitle:v6];

  v7 = _WBSLocalizedString();
  [(SFBasicDialog *)v3 setMessage:v7];

  v8 = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [v8 objectAtIndexedSubscript:0];
  v11 = [(SFAcceptSharedTabGroupInProfileDialogController *)self _actionToOpenInProfile:v10];
  [v9 addObject:v11];

  if ([v8 count] > 3)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = _WBSLocalizedString();
    v20 = [v18 stringWithFormat:v19, self->_sharedTabGroupTitle];
    v21 = [SFDialogAction actionWithTitle:v20 activatingKeyboardShortcut:0 type:0];
    [v9 addObject:v21];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(SFAcceptSharedTabGroupInProfileDialogController *)self _actionToOpenInProfile:*(*(&v30 + 1) + 8 * i)];
          [v9 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }
  }

  v22 = _WBSLocalizedString();
  v23 = [SFDialogAction actionWithTitle:v22 activatingKeyboardShortcut:1 type:1];
  [v9 addObject:v23];

  [(SFBasicDialog *)v3 setActions:v9];
  [(SFBasicDialog *)v3 setPresentationStyle:1];
  [(SFBasicDialog *)v3 setAlertControllerPresentsAsActionSheet:0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__SFAcceptSharedTabGroupInProfileDialogController__makeDialog__block_invoke;
  v27[3] = &unk_1E721E830;
  v27[4] = self;
  v28 = v9;
  v29 = v8;
  v24 = v8;
  v25 = v9;
  [(SFBasicDialog *)v3 setCompletionHandler:v27];

  return v3;
}

void __62__SFAcceptSharedTabGroupInProfileDialogController__makeDialog__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  if (!a2)
  {
    v8 = *(*(*(a1 + 32) + 32) + 16);
    goto LABEL_5;
  }

  if ([*(a1 + 40) count] - 1 == a2)
  {
    v8 = *(*(*(a1 + 32) + 32) + 16);
LABEL_5:
    v8();
LABEL_6:
    v9 = _currentDialogController;
    _currentDialogController = 0;

    goto LABEL_7;
  }

  v10 = [*(a1 + 48) count];
  v11 = *(a1 + 32);
  if (v10 <= 3)
  {
    v12 = v11[4];
    v13 = [*(a1 + 48) objectAtIndexedSubscript:a2];
    v14 = [v13 identifier];
    (*(v12 + 16))(v12, v14);

    goto LABEL_6;
  }

  [v11 _showAllProfilesDialog];
LABEL_7:
}

- (id)_actionToOpenInProfile:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = _WBSLocalizedString();
  sharedTabGroupTitle = self->_sharedTabGroupTitle;
  v8 = [v5 title];
  v9 = [v4 stringWithFormat:v6, sharedTabGroupTitle, v8];

  v10 = [v5 identifier];

  v11 = [v10 isEqualToString:*MEMORY[0x1E69C8B58]];
  if (v11)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = [SFDialogAction actionWithTitle:v9 activatingKeyboardShortcut:v12 type:0 isPreferredAction:v11];

  return v13;
}

- (void)_showAllProfilesDialog
{
  v3 = objc_alloc_init(_SFProfileSelectionTableViewController);
  selectionViewController = self->_selectionViewController;
  self->_selectionViewController = v3;

  v5 = _WBSLocalizedString();
  [(_SFProfileSelectionTableViewController *)self->_selectionViewController setTitle:v5];

  v6 = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  [(_SFProfileSelectionTableViewController *)self->_selectionViewController setProfiles:v6];

  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = _WBSLocalizedString();
  v17 = [v7 initWithTitle:v8 style:2 target:self action:sel_selectProfile];

  v9 = objc_alloc(MEMORY[0x1E69DC708]);
  v10 = _WBSLocalizedString();
  v11 = [v9 initWithTitle:v10 style:0 target:self action:sel_cancel];

  v12 = [(_SFProfileSelectionTableViewController *)self->_selectionViewController navigationItem];
  [v12 setRightBarButtonItem:v17];

  v13 = [(_SFProfileSelectionTableViewController *)self->_selectionViewController navigationItem];
  [v13 setLeftBarButtonItem:v11];

  v14 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_selectionViewController];
  navigationController = self->_navigationController;
  self->_navigationController = v14;

  [(UINavigationController *)self->_navigationController setModalPresentationStyle:2];
  v16 = [(SFAcceptSharedTabGroupInProfileDialogController *)self _presentationViewController];
  [v16 presentViewController:self->_navigationController animated:1 completion:0];
}

- (void)selectProfile
{
  v3 = [(UINavigationController *)self->_navigationController presentingViewController];
  [v3 dismissViewControllerAnimated:self->_navigationController != 0 completion:&__block_literal_global_46];

  completionHandler = self->_completionHandler;
  v5 = [(_SFProfileSelectionTableViewController *)self->_selectionViewController selectedProfile];
  v6 = [v5 identifier];
  completionHandler[2](completionHandler, v6);

  v7 = _currentDialogController;
  _currentDialogController = 0;
}

- (void)cancel
{
  v3 = [(UINavigationController *)self->_navigationController presentingViewController];
  [v3 dismissViewControllerAnimated:self->_navigationController != 0 completion:&__block_literal_global_36];

  (*(self->_completionHandler + 2))();
  v4 = _currentDialogController;
  _currentDialogController = 0;
}

- (id)_presentationViewController
{
  v2 = [(UIWindowScene *)self->_windowScene keyWindow];
  v3 = [v2 rootViewController];

  v4 = [v3 presentedViewController];
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      v6 = [v3 presentedViewController];
      v7 = [v6 isBeingDismissed];

      if (v7)
      {
        break;
      }

      v8 = [v3 presentedViewController];

      v5 = [v8 presentedViewController];
      v3 = v8;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

  v8 = v3;
LABEL_7:

  return v8;
}

- (void)dialogController:(id)a3 presentViewController:(id)a4 withAdditionalAnimations:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SFAcceptSharedTabGroupInProfileDialogController *)self _presentationViewController];
  [v9 presentViewController:v8 animated:1 completion:0];
  [v8 _sf_animateAlongsideTransitionOrPerform:v7];
}

- (void)dialogController:(id)a3 dismissViewController:(id)a4 withAdditionalAnimations:(id)a5
{
  v6 = a5;
  v8 = a4;
  v7 = [v8 presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  [v8 _sf_animateAlongsideTransitionOrPerform:v6];
}

@end