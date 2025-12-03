@interface ICLockNoteActivity
- (ICLockNoteActivity)initWithNote:(id)note presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)accessibilityLabel;
- (id)activityImage;
- (id)activityTitle;
- (void)accessibilityAnnounceToggledLock;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICLockNoteActivity

- (ICLockNoteActivity)initWithNote:(id)note presentingViewController:(id)controller
{
  noteCopy = note;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = ICLockNoteActivity;
  v8 = [(ICActivity *)&v17 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D36870]) initWithNote:noteCopy];
    lockManager = v8->_lockManager;
    v8->_lockManager = v9;

    view = [controllerCopy view];
    window = [view window];
    [(ICNoteLockManager *)v8->_lockManager setWindow:window];

    objc_storeWeak(&v8->_presentingViewController, controllerCopy);
    presentingViewController = [(ICLockNoteActivity *)v8 presentingViewController];
    view2 = [presentingViewController view];
    window2 = [view2 window];

    if (!window2)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.presentingViewController.view.window) != nil)" functionName:"-[ICLockNoteActivity initWithNote:presentingViewController:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.presentingViewController.view.window"}];
    }
  }

  return v8;
}

- (id)activityTitle
{
  lockManager = [(ICLockNoteActivity *)self lockManager];
  note = [lockManager note];
  isPasswordProtected = [note isPasswordProtected];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = mainBundle;
  if (isPasswordProtected)
  {
    v7 = @"Remove";
  }

  else
  {
    v7 = @"Lock";
  }

  v8 = [mainBundle localizedStringForKey:v7 value:&stru_282757698 table:0];

  return v8;
}

- (id)activityImage
{
  lockManager = [(ICLockNoteActivity *)self lockManager];
  note = [lockManager note];
  isPasswordProtected = [note isPasswordProtected];
  v5 = @"lock.fill";
  if (isPasswordProtected)
  {
    v5 = @"lock.slash.fill";
  }

  v6 = v5;

  v7 = [MEMORY[0x277D755B8] systemImageNamed:v6];

  return v7;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = completionCopy;
  dispatchMainAfterDelay();
}

void __52__ICLockNoteActivity_performActivityWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) lockManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__ICLockNoteActivity_performActivityWithCompletion___block_invoke_2;
  v3[3] = &unk_2781AF268;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 toggleLockWithCompletionHandler:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __52__ICLockNoteActivity_performActivityWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained lockManager];
  v4 = [v3 updatedNote];

  if (!v4)
  {
    v17 = *(a1 + 32);
    if (!v17)
    {
      return;
    }

    v18 = objc_loadWeakRetained((a1 + 40));
    v15 = [v18 activityType];
    (*(v17 + 16))(v17, 0, v15);
    goto LABEL_6;
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 presentingViewController];
  v7 = [v6 ic_viewControllerManager];
  v8 = [v7 noteEditorViewController];
  v18 = [v8 eventReporter];

  v9 = objc_loadWeakRetained((a1 + 40));
  [v18 pushContextPathDataWithContextPathEnum:{objc_msgSend(v9, "contextPathEnum")}];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 lockManager];
  v12 = [v11 updatedNote];
  [v18 submitPasswordProtectEventForModernNote:v12];

  [v18 popContextPathData];
  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 accessibilityAnnounceToggledLock];

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 activityType];
    (*(v14 + 16))(v14, 1, v16);

LABEL_6:
  }
}

- (id)accessibilityLabel
{
  lockManager = [(ICLockNoteActivity *)self lockManager];
  note = [lockManager note];
  isPasswordProtected = [note isPasswordProtected];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = mainBundle;
  if (isPasswordProtected)
  {
    v7 = @"Remove Lock";
  }

  else
  {
    v7 = @"Lock Note";
  }

  v8 = [mainBundle localizedStringForKey:v7 value:&stru_282757698 table:0];

  return v8;
}

- (void)accessibilityAnnounceToggledLock
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICLockNoteActivity_accessibilityAnnounceToggledLock__block_invoke;
  block[3] = &unk_2781ABCF8;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __54__ICLockNoteActivity_accessibilityAnnounceToggledLock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lockManager];
  v3 = [v2 updatedNote];
  v4 = [v3 isPasswordProtected];
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = v6;
  if (v4)
  {
    v8 = @"Added lock to %@";
  }

  else
  {
    v8 = @"Removed lock from %@";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_282757698 table:0];
  v10 = [*(a1 + 32) lockManager];
  v11 = [v10 updatedNote];
  v12 = [v11 title];
  v13 = [v5 localizedStringWithFormat:v9, v12];

  ICAccessibilityPostAnnouncementNotification();
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end