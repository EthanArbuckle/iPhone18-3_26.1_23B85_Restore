@interface ICNoteLockManager
- (ICNoteLockManager)initWithNote:(id)note;
- (UIWindow)window;
- (void)addLockWithCompletionHandler:(id)handler;
- (void)removeLockWithCompletionHandler:(id)handler;
- (void)toggleLockWithCompletionHandler:(id)handler;
- (void)unsafelyToggleLockWithCompletionHandler:(id)handler;
- (void)updateDivergedAttachmentsWithConfiguration:(id)configuration completion:(id)completion;
- (void)updateDivergedAttachmentsWithPassphrase:(id)passphrase completion:(id)completion;
@end

@implementation ICNoteLockManager

- (ICNoteLockManager)initWithNote:(id)note
{
  noteCopy = note;
  v11.receiver = self;
  v11.super_class = ICNoteLockManager;
  v6 = [(ICNoteLockManager *)&v11 init];
  if (v6)
  {
    account = [noteCopy account];
    account = v6->_account;
    v6->_account = account;

    objc_storeStrong(&v6->_note, note);
    account2 = [(ICNoteLockManager *)v6 account];

    if (!account2)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.account) != nil)" functionName:"-[ICNoteLockManager initWithNote:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.account"}];
    }
  }

  return v6;
}

- (void)toggleLockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteLockManager toggleLockWithCompletionHandler:?];
  }

  note = [(ICNoteLockManager *)self note];
  isPasswordProtected = [note isPasswordProtected];

  if (isPasswordProtected)
  {
    [(ICNoteLockManager *)self removeLockWithCompletionHandler:handlerCopy];
  }

  else
  {
    [(ICNoteLockManager *)self addLockWithCompletionHandler:handlerCopy];
  }
}

- (void)addLockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteLockManager addLockWithCompletionHandler:?];
  }

  window = [(ICNoteLockManager *)self window];

  if (!window)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.window) != nil)" functionName:"-[ICNoteLockManager addLockWithCompletionHandler:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.window"}];
  }

  note = [(ICNoteLockManager *)self note];
  isPasswordProtected = [note isPasswordProtected];

  if (isPasswordProtected)
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteLockManager addLockWithCompletionHandler:v9];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    note2 = [(ICNoteLockManager *)self note];
    preventLockReason = [note2 preventLockReason];

    if (preventLockReason)
    {
      v12 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [ICNoteLockManager addLockWithCompletionHandler:?];
      }

      note3 = [(ICNoteLockManager *)self note];
      v14 = +[ICAuthenticationAlert cannotLockInfoAlertWithReason:](ICAuthenticationAlert, "cannotLockInfoAlertWithReason:", [note3 preventLockReason]);

      window2 = [(ICNoteLockManager *)self window];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke;
      v23[3] = &unk_1E84690D0;
      v24 = handlerCopy;
      [v14 presentInWindow:window2 completionHandler:v23];
    }

    else
    {
      objc_initWeak(&location, self);
      v16 = +[ICLockedNotesModeMigrator sharedMigrator];
      account = [(ICNoteLockManager *)self account];
      window3 = [(ICNoteLockManager *)self window];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke_2;
      v19[3] = &unk_1E846DE10;
      objc_copyWeak(&v21, &location);
      v20 = handlerCopy;
      [v16 presentLockedNotesMigrationPromptIfNeededForAccount:account window:window3 completionHandler:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (a2 && WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 account];
    v7 = [v6 resolvedLockedNotesMode];
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = v8;
    if (v7 == a2)
    {
      v10 = [v8 note];
      [ICAuthenticationPrompt promptForIntent:2 object:v10];
    }

    else
    {
      v10 = [v8 account];
      [ICAuthenticationPrompt promptForChangingMode:a2 account:v10];
    }
    v13 = ;

    v14 = +[ICAuthentication shared];
    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 window];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke_3;
    v18[3] = &unk_1E846DDE8;
    objc_copyWeak(&v21, (a1 + 40));
    v17 = v13;
    v19 = v17;
    v22 = a2;
    v20 = *(a1 + 32);
    [v14 authenticateWithPrompt:v17 displayWindow:v16 completionHandler:v18];

    objc_destroyWeak(&v21);
  }

  else
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 16);

      v12();
    }
  }
}

void __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2 == 2 && WeakRetained)
  {
    v6 = [*(a1 + 32) intent];

    if (v6 == 7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69B7788]);
      v8 = objc_loadWeakRetained((a1 + 48));
      v9 = [v8 account];
      v10 = [v9 accountData];
      [v7 setLockedNotesMode:{objc_msgSend(v10, "lockedNotesMode")}];

      v11 = MEMORY[0x1E69B77F0];
      v12 = objc_loadWeakRetained((a1 + 48));
      v13 = [v12 account];
      if ([v11 countOfVisiblePasswordProtectedNotesInAccount:v13])
      {
        v14 = 4;
      }

      else
      {
        v14 = 3;
      }

      [v7 setContextPath:v14];

      v15 = MEMORY[0x1E69B7780];
      v16 = objc_loadWeakRetained((a1 + 48));
      v17 = [v16 account];
      [v15 addRecentPasswordMode:v7 forAccount:v17];

      v18 = +[ICLockedNotesModeMigrator sharedMigrator];
      v19 = objc_loadWeakRetained((a1 + 48));
      v20 = [v19 account];
      v21 = *(a1 + 56);
      v22 = objc_loadWeakRetained((a1 + 48));
      v23 = [v22 window];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke_4;
      v28[3] = &unk_1E846DDC0;
      objc_copyWeak(&v30, (a1 + 48));
      v29 = *(a1 + 40);
      [v18 migrateLockedNotesInAccount:v20 toMode:v21 window:v23 completionHandler:v28];

      objc_destroyWeak(&v30);
      return;
    }
  }

  else
  {
  }

  v24 = objc_loadWeakRetained((a1 + 48));

  if (a2 == 2 && v24)
  {
    v27 = objc_loadWeakRetained((a1 + 48));
    [v27 unsafelyToggleLockWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = *(v25 + 16);

      v26();
    }
  }
}

void __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isCancelled] & 1) != 0 || !objc_msgSend(v3, "completedUnitCount"))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained unsafelyToggleLockWithCompletionHandler:*(a1 + 32)];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 account];
    v6 = [ICAuthenticationAlert switchedModeInfoAlertWithAccount:v5];

    v14[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 window];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke_5;
    v11[3] = &unk_1E846D350;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = *(a1 + 32);
    [ICAuthenticationAlert presentAlertsIfNeeded:v7 window:v9 completionHandler:v11];

    objc_destroyWeak(&v13);
  }
}

void __50__ICNoteLockManager_addLockWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained unsafelyToggleLockWithCompletionHandler:*(a1 + 32)];
}

- (void)removeLockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteLockManager removeLockWithCompletionHandler:?];
  }

  window = [(ICNoteLockManager *)self window];

  if (!window)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.window) != nil)" functionName:"-[ICNoteLockManager removeLockWithCompletionHandler:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.window"}];
  }

  note = [(ICNoteLockManager *)self note];
  isPasswordProtected = [note isPasswordProtected];

  if (isPasswordProtected)
  {
    objc_initWeak(&location, self);
    note2 = [(ICNoteLockManager *)self note];
    v10 = [ICAuthenticationPrompt promptForIntent:3 object:note2];

    v11 = +[ICAuthentication shared];
    window2 = [(ICNoteLockManager *)self window];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__ICNoteLockManager_removeLockWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E846DE38;
    objc_copyWeak(&v16, &location);
    v15 = handlerCopy;
    [v11 authenticateWithPrompt:v10 displayWindow:window2 completionHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteLockManager removeLockWithCompletionHandler:v13];
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

void __53__ICNoteLockManager_removeLockWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained unsafelyToggleLockWithCompletionHandler:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

- (void)unsafelyToggleLockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICNoteLockManagerWillToggleLock" object:self];

  note = [(ICNoteLockManager *)self note];
  [note persistPendingChangesRecursively];

  note2 = [(ICNoteLockManager *)self note];
  managedObjectContext = [note2 managedObjectContext];
  [managedObjectContext ic_saveWithLogDescription:@"Saving before toggling lock"];

  note3 = [(ICNoteLockManager *)self note];
  if ([note3 isPasswordProtected])
  {
    v10 = @"Removing Lock…";
  }

  else
  {
    v10 = @"Adding Lock…";
  }

  v11 = __ICLocalizedFrameworkString_impl(v10, v10, 0, 1);

  objc_initWeak(&location, self);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__71;
  v22[4] = __Block_byref_object_dispose__71;
  v23 = 0;
  v12 = [ICLongRunningTaskController alloc];
  window = [(ICNoteLockManager *)self window];
  v14 = [(ICLongRunningTaskController *)v12 initWithWindow:window intervalBeforeOpeningProgressDialog:1.0];

  [(ICLongRunningTaskController *)v14 setIndeterminate:1];
  [(ICLongRunningTaskController *)v14 setProgressString:v11];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__ICNoteLockManager_unsafelyToggleLockWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E846DE88;
  objc_copyWeak(&v21, &location);
  v20[4] = v22;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__ICNoteLockManager_unsafelyToggleLockWithCompletionHandler___block_invoke_3;
  v16[3] = &unk_1E846DEB0;
  objc_copyWeak(&v19, &location);
  v18 = v22;
  v15 = handlerCopy;
  v17 = v15;
  [(ICLongRunningTaskController *)v14 startTask:v20 completionBlock:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  _Block_object_dispose(v22, 8);
  objc_destroyWeak(&location);
}

void __61__ICNoteLockManager_unsafelyToggleLockWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69B7800] sharedContext];
  v5 = [v4 workerManagedObjectContext];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__ICNoteLockManager_unsafelyToggleLockWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E846DE60;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = v5;
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v6 performBlockAndWait:v8];

  objc_destroyWeak(&v11);
}

void __61__ICNoteLockManager_unsafelyToggleLockWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    objc_opt_class();
    v3 = *(a1 + 32);
    v4 = [v12 note];
    v5 = [v4 objectID];
    v6 = [v3 objectWithID:v5];
    v7 = ICCheckedDynamicCast();

    v8 = [MEMORY[0x1E69B77F0] duplicateNote:v7 isPasswordProtected:objc_msgSend(v7 removeOriginalNote:{"isPasswordProtected") ^ 1, 1}];
    v9 = [v8 objectID];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    WeakRetained = v12;
  }
}

void __61__ICNoteLockManager_unsafelyToggleLockWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      objc_opt_class();
      v3 = [WeakRetained note];
      v4 = [v3 managedObjectContext];
      v5 = [v4 objectWithID:*(*(*(a1 + 40) + 8) + 40)];
      v6 = ICCheckedDynamicCast();
      [WeakRetained setUpdatedNote:v6];
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __61__ICNoteLockManager_unsafelyToggleLockWithCompletionHandler___block_invoke_3_cold_1(WeakRetained, v7);
      }
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"ICNoteLockManagerDidToggleLock" object:WeakRetained];

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [WeakRetained updatedNote];
      if (v10)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      (*(v9 + 16))(v9, v11);
    }
  }
}

- (void)updateDivergedAttachmentsWithPassphrase:(id)passphrase completion:(id)completion
{
  passphraseCopy = passphrase;
  completionCopy = completion;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteLockManager updateDivergedAttachmentsWithPassphrase:? completion:?];
  }

  window = [(ICNoteLockManager *)self window];

  if (!window)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.window) != nil)" functionName:"-[ICNoteLockManager updateDivergedAttachmentsWithPassphrase:completion:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.window"}];
  }

  note = [(ICNoteLockManager *)self note];
  isAuthenticated = [note isAuthenticated];

  if (isAuthenticated)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E69B73C0];
    account = [(ICNoteLockManager *)self account];
    [defaultCenter postNotificationName:v13 object:account];

    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    crossProcessChangeCoordinator = [mEMORY[0x1E69B7800] crossProcessChangeCoordinator];
    [crossProcessChangeCoordinator postCrossProcessNotificationName:v13];

    v17 = objc_alloc_init(MEMORY[0x1E69B7720]);
    [v17 setDivergedPassphrase:passphraseCopy];
    [v17 setUserInitiated:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__ICNoteLockManager_updateDivergedAttachmentsWithPassphrase_completion___block_invoke;
    v19[3] = &unk_1E846C850;
    v19[4] = self;
    v20 = completionCopy;
    [(ICNoteLockManager *)self updateDivergedAttachmentsWithConfiguration:v17 completion:v19];
  }

  else
  {
    v18 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteLockManager updateDivergedAttachmentsWithPassphrase:? completion:?];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

uint64_t __72__ICNoteLockManager_updateDivergedAttachmentsWithPassphrase_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69B73A0];
  v4 = [*(a1 + 32) account];
  [v2 postNotificationName:v3 object:v4];

  v5 = [MEMORY[0x1E69B7800] sharedContext];
  v6 = [v5 crossProcessChangeCoordinator];
  [v6 postCrossProcessNotificationName:v3];

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)updateDivergedAttachmentsWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = *MEMORY[0x1E69DDA98];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 beginBackgroundTaskWithName:v10 expirationHandler:&__block_literal_global_83];

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v12 = [ICLongRunningTaskController alloc];
  window = [(ICNoteLockManager *)self window];
  v14 = [(ICLongRunningTaskController *)v12 initWithWindow:window intervalBeforeOpeningProgressDialog:1.0];

  v15 = __ICLocalizedFrameworkString_impl(@"Changing Password…", @"Changing Password…", 0, 1);
  [(ICLongRunningTaskController *)v14 setProgressString:v15];

  [(ICLongRunningTaskController *)v14 setIndeterminate:1];
  [(ICLongRunningTaskController *)v14 setShouldShowCircularProgress:1];
  window2 = [(ICNoteLockManager *)self window];
  rootViewController = [window2 rootViewController];
  ic_topViewController = [rootViewController ic_topViewController];
  [(ICLongRunningTaskController *)v14 setViewControllerToPresentFrom:ic_topViewController];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__ICNoteLockManager_updateDivergedAttachmentsWithConfiguration_completion___block_invoke_54;
  v25[3] = &unk_1E846D870;
  v27 = v28;
  v25[4] = self;
  v19 = configurationCopy;
  v26 = v19;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__ICNoteLockManager_updateDivergedAttachmentsWithConfiguration_completion___block_invoke_2;
  v21[3] = &unk_1E846D898;
  v24 = v11;
  v20 = completionCopy;
  v22 = v20;
  v23 = v28;
  [(ICLongRunningTaskController *)v14 startTask:v25 completionBlock:v21];

  _Block_object_dispose(v28, 8);
}

void __75__ICNoteLockManager_updateDivergedAttachmentsWithConfiguration_completion___block_invoke()
{
  v0 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __75__ICNoteLockManager_updateDivergedAttachmentsWithConfiguration_completion___block_invoke_cold_1(v0);
  }
}

void __75__ICNoteLockManager_updateDivergedAttachmentsWithConfiguration_completion___block_invoke_54(uint64_t a1)
{
  v4 = [MEMORY[0x1E69B7718] sharedController];
  v2 = [*(a1 + 32) note];
  v3 = [v2 objectID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 convergeAttachmentsInNoteWithID:v3 configuration:*(a1 + 40)];
}

uint64_t __75__ICNoteLockManager_updateDivergedAttachmentsWithConfiguration_completion___block_invoke_2(uint64_t a1)
{
  [*MEMORY[0x1E69DDA98] endBackgroundTask:*(a1 + 48)];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (void)toggleLockWithCompletionHandler:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 note];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)addLockWithCompletionHandler:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 note];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_4(&dword_1D4171000, v3, v4, "Adding lock to note… {note: %@}%s:%d", v5, v6, v7, v8, v9);
}

- (void)addLockWithCompletionHandler:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 note];
  v7 = NSStringFromNotePreventLockReason([v1 preventLockReason]);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)removeLockWithCompletionHandler:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 note];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_4(&dword_1D4171000, v3, v4, "Removing lock from note… {note: %@}%s:%d", v5, v6, v7, v8, v9);
}

void __61__ICNoteLockManager_unsafelyToggleLockWithCompletionHandler___block_invoke_3_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 note];
  v4 = [v3 shortLoggingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Cannot change lock for note {note: %@}", &v5, 0xCu);
}

- (void)updateDivergedAttachmentsWithPassphrase:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 note];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)updateDivergedAttachmentsWithPassphrase:(void *)a1 completion:.cold.2(void *a1)
{
  v1 = [a1 note];
  v7 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end