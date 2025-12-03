@interface SFAcceptSharedTabGroupInProfileDialogController
+ (void)presentDialogInScene:(id)scene forSharedTabGroupWithTitle:(id)title tabGroupManager:(id)manager completionHandler:(id)handler;
- (id)_actionToOpenInProfile:(id)profile;
- (id)_initWithScene:(id)scene sharedTabGroupTitle:(id)title tabGroupManager:(id)manager completionHandler:(id)handler;
- (id)_makeDialog;
- (id)_presentationViewController;
- (void)_presentDialog;
- (void)_showAllProfilesDialog;
- (void)cancel;
- (void)dialogController:(id)controller dismissViewController:(id)viewController withAdditionalAnimations:(id)animations;
- (void)dialogController:(id)controller presentViewController:(id)viewController withAdditionalAnimations:(id)animations;
- (void)selectProfile;
@end

@implementation SFAcceptSharedTabGroupInProfileDialogController

+ (void)presentDialogInScene:(id)scene forSharedTabGroupWithTitle:(id)title tabGroupManager:(id)manager completionHandler:(id)handler
{
  sceneCopy = scene;
  titleCopy = title;
  managerCopy = manager;
  handlerCopy = handler;
  if ([managerCopy hasMultipleProfiles])
  {
    v13 = [[self alloc] _initWithScene:sceneCopy sharedTabGroupTitle:titleCopy tabGroupManager:managerCopy completionHandler:handlerCopy];
    v14 = _currentDialogController;
    _currentDialogController = v13;

    [_currentDialogController _presentDialog];
  }

  else
  {
    handlerCopy[2](handlerCopy, *MEMORY[0x1E69C8B58]);
  }
}

- (id)_initWithScene:(id)scene sharedTabGroupTitle:(id)title tabGroupManager:(id)manager completionHandler:(id)handler
{
  sceneCopy = scene;
  titleCopy = title;
  managerCopy = manager;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = SFAcceptSharedTabGroupInProfileDialogController;
  v15 = [(SFAcceptSharedTabGroupInProfileDialogController *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_windowScene, scene);
    v17 = [titleCopy copy];
    sharedTabGroupTitle = v16->_sharedTabGroupTitle;
    v16->_sharedTabGroupTitle = v17;

    objc_storeStrong(&v16->_tabGroupManager, manager);
    v19 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v19;

    v21 = v16;
  }

  return v16;
}

- (void)_presentDialog
{
  _makeDialog = [(SFAcceptSharedTabGroupInProfileDialogController *)self _makeDialog];
  dialog = self->_dialog;
  self->_dialog = _makeDialog;

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

  profiles = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  array = [MEMORY[0x1E695DF70] array];
  v10 = [profiles objectAtIndexedSubscript:0];
  v11 = [(SFAcceptSharedTabGroupInProfileDialogController *)self _actionToOpenInProfile:v10];
  [array addObject:v11];

  if ([profiles count] > 3)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = _WBSLocalizedString();
    v20 = [v18 stringWithFormat:v19, self->_sharedTabGroupTitle];
    v21 = [SFDialogAction actionWithTitle:v20 activatingKeyboardShortcut:0 type:0];
    [array addObject:v21];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [profiles subarrayWithRange:{1, objc_msgSend(profiles, "count") - 1}];
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
          [array addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }
  }

  v22 = _WBSLocalizedString();
  v23 = [SFDialogAction actionWithTitle:v22 activatingKeyboardShortcut:1 type:1];
  [array addObject:v23];

  [(SFBasicDialog *)v3 setActions:array];
  [(SFBasicDialog *)v3 setPresentationStyle:1];
  [(SFBasicDialog *)v3 setAlertControllerPresentsAsActionSheet:0];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__SFAcceptSharedTabGroupInProfileDialogController__makeDialog__block_invoke;
  v27[3] = &unk_1E721E830;
  v27[4] = self;
  v28 = array;
  v29 = profiles;
  v24 = profiles;
  v25 = array;
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

- (id)_actionToOpenInProfile:(id)profile
{
  v4 = MEMORY[0x1E696AEC0];
  profileCopy = profile;
  v6 = _WBSLocalizedString();
  sharedTabGroupTitle = self->_sharedTabGroupTitle;
  title = [profileCopy title];
  v9 = [v4 stringWithFormat:v6, sharedTabGroupTitle, title];

  identifier = [profileCopy identifier];

  v11 = [identifier isEqualToString:*MEMORY[0x1E69C8B58]];
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

  profiles = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  [(_SFProfileSelectionTableViewController *)self->_selectionViewController setProfiles:profiles];

  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = _WBSLocalizedString();
  v17 = [v7 initWithTitle:v8 style:2 target:self action:sel_selectProfile];

  v9 = objc_alloc(MEMORY[0x1E69DC708]);
  v10 = _WBSLocalizedString();
  v11 = [v9 initWithTitle:v10 style:0 target:self action:sel_cancel];

  navigationItem = [(_SFProfileSelectionTableViewController *)self->_selectionViewController navigationItem];
  [navigationItem setRightBarButtonItem:v17];

  navigationItem2 = [(_SFProfileSelectionTableViewController *)self->_selectionViewController navigationItem];
  [navigationItem2 setLeftBarButtonItem:v11];

  v14 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_selectionViewController];
  navigationController = self->_navigationController;
  self->_navigationController = v14;

  [(UINavigationController *)self->_navigationController setModalPresentationStyle:2];
  _presentationViewController = [(SFAcceptSharedTabGroupInProfileDialogController *)self _presentationViewController];
  [_presentationViewController presentViewController:self->_navigationController animated:1 completion:0];
}

- (void)selectProfile
{
  presentingViewController = [(UINavigationController *)self->_navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:self->_navigationController != 0 completion:&__block_literal_global_46];

  completionHandler = self->_completionHandler;
  selectedProfile = [(_SFProfileSelectionTableViewController *)self->_selectionViewController selectedProfile];
  identifier = [selectedProfile identifier];
  completionHandler[2](completionHandler, identifier);

  v7 = _currentDialogController;
  _currentDialogController = 0;
}

- (void)cancel
{
  presentingViewController = [(UINavigationController *)self->_navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:self->_navigationController != 0 completion:&__block_literal_global_36];

  (*(self->_completionHandler + 2))();
  v4 = _currentDialogController;
  _currentDialogController = 0;
}

- (id)_presentationViewController
{
  keyWindow = [(UIWindowScene *)self->_windowScene keyWindow];
  rootViewController = [keyWindow rootViewController];

  presentedViewController = [rootViewController presentedViewController];
  if (presentedViewController)
  {
    v8PresentedViewController = presentedViewController;
    while (1)
    {
      presentedViewController2 = [rootViewController presentedViewController];
      isBeingDismissed = [presentedViewController2 isBeingDismissed];

      if (isBeingDismissed)
      {
        break;
      }

      presentedViewController3 = [rootViewController presentedViewController];

      v8PresentedViewController = [presentedViewController3 presentedViewController];
      rootViewController = presentedViewController3;
      if (!v8PresentedViewController)
      {
        goto LABEL_7;
      }
    }
  }

  presentedViewController3 = rootViewController;
LABEL_7:

  return presentedViewController3;
}

- (void)dialogController:(id)controller presentViewController:(id)viewController withAdditionalAnimations:(id)animations
{
  animationsCopy = animations;
  viewControllerCopy = viewController;
  _presentationViewController = [(SFAcceptSharedTabGroupInProfileDialogController *)self _presentationViewController];
  [_presentationViewController presentViewController:viewControllerCopy animated:1 completion:0];
  [viewControllerCopy _sf_animateAlongsideTransitionOrPerform:animationsCopy];
}

- (void)dialogController:(id)controller dismissViewController:(id)viewController withAdditionalAnimations:(id)animations
{
  animationsCopy = animations;
  viewControllerCopy = viewController;
  presentingViewController = [viewControllerCopy presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  [viewControllerCopy _sf_animateAlongsideTransitionOrPerform:animationsCopy];
}

@end