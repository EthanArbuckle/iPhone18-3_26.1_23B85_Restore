@interface ICAccountPassphraseManager
- (BOOL)removePassphrase;
- (BOOL)setPassphrase:(id)passphrase hint:(id)hint;
- (BOOL)setPassphrase:(id)passphrase hint:(id)hint isReset:(BOOL)reset;
- (ICAccountPassphraseManager)initWithAccount:(id)account;
- (UIWindow)window;
- (void)applicationDidEnterBackground:(id)background;
- (void)changePassphrase:(id)passphrase toPassphrase:(id)toPassphrase hint:(id)hint completion:(id)completion;
- (void)removePassphrase;
- (void)updateDivergedNotesFromPassphrase:(id)passphrase toAccountPassphrase:(id)accountPassphrase completion:(id)completion;
- (void)updateDivergedNotesWithConfiguration:(id)configuration completion:(id)completion;
@end

@implementation ICAccountPassphraseManager

- (ICAccountPassphraseManager)initWithAccount:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = ICAccountPassphraseManager;
  v6 = [(ICAccountPassphraseManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v7;
}

- (BOOL)setPassphrase:(id)passphrase hint:(id)hint
{
  hintCopy = hint;
  passphraseCopy = passphrase;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ICAccountPassphraseManager *)self setPassphrase:hintCopy hint:v8];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *MEMORY[0x1E69B73C0];
  account = [(ICAccountPassphraseManager *)self account];
  [defaultCenter postNotificationName:v10 object:account];

  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  crossProcessChangeCoordinator = [mEMORY[0x1E69B7800] crossProcessChangeCoordinator];
  [crossProcessChangeCoordinator postCrossProcessNotificationName:v10];

  LOBYTE(mEMORY[0x1E69B7800]) = [(ICAccountPassphraseManager *)self setPassphrase:passphraseCopy hint:hintCopy isReset:1];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = *MEMORY[0x1E69B73A0];
  account2 = [(ICAccountPassphraseManager *)self account];
  [defaultCenter2 postNotificationName:v15 object:account2];

  mEMORY[0x1E69B7800]2 = [MEMORY[0x1E69B7800] sharedContext];
  crossProcessChangeCoordinator2 = [mEMORY[0x1E69B7800]2 crossProcessChangeCoordinator];
  [crossProcessChangeCoordinator2 postCrossProcessNotificationName:v15];

  return mEMORY[0x1E69B7800];
}

- (BOOL)setPassphrase:(id)passphrase hint:(id)hint isReset:(BOOL)reset
{
  resetCopy = reset;
  passphraseCopy = passphrase;
  hintCopy = hint;
  account = [(ICAccountPassphraseManager *)self account];
  cryptoStrategy = [account cryptoStrategy];
  hasPassphraseSet = [cryptoStrategy hasPassphraseSet];

  mEMORY[0x1E69B7718] = [MEMORY[0x1E69B7718] sharedController];
  [mEMORY[0x1E69B7718] cancelAndWaitWithReason:@"Setting passphrase"];

  account2 = [(ICAccountPassphraseManager *)self account];
  LODWORD(cryptoStrategy) = [account2 isPassphraseCorrect:passphraseCopy];

  if (cryptoStrategy)
  {
    managedObjectContext = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountPassphraseManager setPassphrase:? hint:? isReset:?];
    }

    v16 = 1;
LABEL_13:
    account5 = managedObjectContext;
    goto LABEL_18;
  }

  account3 = [(ICAccountPassphraseManager *)self account];
  cryptoStrategy2 = [account3 cryptoStrategy];
  v19 = [cryptoStrategy2 setPassphrase:passphraseCopy hint:hintCopy];

  if ((v19 & 1) == 0)
  {
    managedObjectContext = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
    {
      [ICAccountPassphraseManager setPassphrase:managedObjectContext hint:? isReset:?];
    }

    v16 = 0;
    goto LABEL_13;
  }

  v20 = os_log_create("com.apple.notes", "Analytics");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (hasPassphraseSet)
  {
    if (v21)
    {
      [ICAccountPassphraseManager setPassphrase:resetCopy hint:? isReset:?];
    }

    [MEMORY[0x1E69B7780] incrementRecentPasswordChangeCountAsReset:resetCopy];
  }

  else
  {
    if (v21)
    {
      [ICAccountPassphraseManager setPassphrase:? hint:? isReset:?];
    }
  }

  mEMORY[0x1E69B7850] = [MEMORY[0x1E69B7850] sharedController];
  account4 = [(ICAccountPassphraseManager *)self account];
  [mEMORY[0x1E69B7850] enrollInReaskForAccount:account4];

  account5 = [(ICAccountPassphraseManager *)self account];
  managedObjectContext = [account5 managedObjectContext];
  v16 = [managedObjectContext ic_saveWithLogDescription:@"Set account passphrase"];
LABEL_18:

  return v16;
}

- (void)changePassphrase:(id)passphrase toPassphrase:(id)toPassphrase hint:(id)hint completion:(id)completion
{
  v61 = *MEMORY[0x1E69E9840];
  passphraseCopy = passphrase;
  toPassphraseCopy = toPassphrase;
  hintCopy = hint;
  completionCopy = completion;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    account = [(ICAccountPassphraseManager *)self account];
    shortLoggingDescription = [account shortLoggingDescription];
    v46 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(passphraseCopy, "length") != 0}];
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(hintCopy, "length") != 0}];
    *location = 138413314;
    *&location[4] = shortLoggingDescription;
    v53 = 2112;
    v54 = v46;
    v55 = 2112;
    v57 = 2080;
    v56 = v47;
    v58 = "[ICAccountPassphraseManager changePassphrase:toPassphrase:hint:completion:]";
    v59 = 1024;
    v60 = 104;
    _os_log_debug_impl(&dword_1D4171000, v13, OS_LOG_TYPE_DEBUG, "Changing passphrase for account… {account: %@, hasDivergedKey: %@, hasHint: %@}%s:%d", location, 0x30u);
  }

  window = [(ICAccountPassphraseManager *)self window];
  v15 = window == 0;

  if (v15)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.window) != nil)" functionName:"-[ICAccountPassphraseManager changePassphrase:toPassphrase:hint:completion:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.window"}];
  }

  if (passphraseCopy && (-[ICAccountPassphraseManager account](self, "account"), v16 = objc_claimAutoreleasedReturnValue(), [v16 cryptoStrategy], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "authenticateWithPassphrase:", passphraseCopy), v17, v16, (v18 & 1) == 0))
  {
    v38 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountPassphraseManager changePassphrase:? toPassphrase:? hint:? completion:?];
    }

    if (completionCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    account2 = [(ICAccountPassphraseManager *)self account];
    isAuthenticated = [account2 isAuthenticated];

    if (isAuthenticated)
    {
      v21 = objc_alloc_init(MEMORY[0x1E69B7720]);
      [v21 setPassphrase:toPassphraseCopy];
      [v21 setDivergedPassphrase:passphraseCopy];
      mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
      account3 = [(ICAccountPassphraseManager *)self account];
      identifier = [account3 identifier];
      v25 = [mEMORY[0x1E69B76D0] cachedMainKeyForIdentifier:identifier];
      [v21 setDivergedV1MainKey:v25];

      mEMORY[0x1E69B76D0]2 = [MEMORY[0x1E69B76D0] sharedState];
      account4 = [(ICAccountPassphraseManager *)self account];
      accountDataCreateIfNecessary = [account4 accountDataCreateIfNecessary];
      identifier2 = [accountDataCreateIfNecessary identifier];
      v30 = [mEMORY[0x1E69B76D0]2 cachedMainKeyForIdentifier:identifier2];
      [v21 setDivergedV1NeoMainKey:v30];

      [v21 setIncludeAllAuthenticatedObjects:1];
      [v21 setUserInitiated:1];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      account5 = [(ICAccountPassphraseManager *)self account];
      v33 = *MEMORY[0x1E69B73C0];
      [defaultCenter postNotificationName:*MEMORY[0x1E69B73C0] object:account5];

      mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
      crossProcessChangeCoordinator = [mEMORY[0x1E69B7800] crossProcessChangeCoordinator];
      [crossProcessChangeCoordinator postCrossProcessNotificationName:v33];

      if ([(ICAccountPassphraseManager *)self setPassphrase:toPassphraseCopy hint:hintCopy isReset:0])
      {
        account6 = [(ICAccountPassphraseManager *)self account];
        objc_initWeak(location, account6);

        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __76__ICAccountPassphraseManager_changePassphrase_toPassphrase_hint_completion___block_invoke;
        v49[3] = &unk_1E846D848;
        objc_copyWeak(&v51, location);
        v50 = completionCopy;
        [(ICAccountPassphraseManager *)self updateDivergedNotesWithConfiguration:v21 completion:v49];

        objc_destroyWeak(&v51);
        objc_destroyWeak(location);
      }

      else
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        account7 = [(ICAccountPassphraseManager *)self account];
        v41 = *MEMORY[0x1E69B73A0];
        [defaultCenter2 postNotificationName:*MEMORY[0x1E69B73A0] object:account7];

        mEMORY[0x1E69B7800]2 = [MEMORY[0x1E69B7800] sharedContext];
        crossProcessChangeCoordinator2 = [mEMORY[0x1E69B7800]2 crossProcessChangeCoordinator];
        [crossProcessChangeCoordinator2 postCrossProcessNotificationName:v41];

        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0);
        }
      }

      goto LABEL_21;
    }

    v37 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountPassphraseManager changePassphrase:? toPassphrase:? hint:? completion:?];
    }

    if (completionCopy)
    {
LABEL_13:
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

LABEL_21:
}

uint64_t __76__ICAccountPassphraseManager_changePassphrase_toPassphrase_hint_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69B73A0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v2 postNotificationName:v3 object:WeakRetained];

  v5 = [MEMORY[0x1E69B7800] sharedContext];
  v6 = [v5 crossProcessChangeCoordinator];
  [v6 postCrossProcessNotificationName:v3];

  result = *(a1 + 32);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (BOOL)removePassphrase
{
  v3 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICAccountPassphraseManager *)self removePassphrase];
  }

  mEMORY[0x1E69B7718] = [MEMORY[0x1E69B7718] sharedController];
  [mEMORY[0x1E69B7718] cancelAndWaitWithReason:@"Removing passphrase"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69B73C0];
  account = [(ICAccountPassphraseManager *)self account];
  [defaultCenter postNotificationName:v6 object:account];

  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  crossProcessChangeCoordinator = [mEMORY[0x1E69B7800] crossProcessChangeCoordinator];
  [crossProcessChangeCoordinator postCrossProcessNotificationName:v6];

  account2 = [(ICAccountPassphraseManager *)self account];
  cryptoStrategy = [account2 cryptoStrategy];
  [cryptoStrategy removePassphrase];

  account3 = [(ICAccountPassphraseManager *)self account];
  managedObjectContext = [account3 managedObjectContext];
  LOBYTE(account2) = [managedObjectContext ic_saveWithLogDescription:@"Removed account passphrase"];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = *MEMORY[0x1E69B73A0];
  account4 = [(ICAccountPassphraseManager *)self account];
  [defaultCenter2 postNotificationName:v15 object:account4];

  mEMORY[0x1E69B7800]2 = [MEMORY[0x1E69B7800] sharedContext];
  crossProcessChangeCoordinator2 = [mEMORY[0x1E69B7800]2 crossProcessChangeCoordinator];
  [crossProcessChangeCoordinator2 postCrossProcessNotificationName:v15];

  return account2;
}

- (void)updateDivergedNotesFromPassphrase:(id)passphrase toAccountPassphrase:(id)accountPassphrase completion:(id)completion
{
  passphraseCopy = passphrase;
  accountPassphraseCopy = accountPassphrase;
  completionCopy = completion;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICAccountPassphraseManager updateDivergedNotesFromPassphrase:? toAccountPassphrase:? completion:?];
  }

  window = [(ICAccountPassphraseManager *)self window];

  if (!window)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.window) != nil)" functionName:"-[ICAccountPassphraseManager updateDivergedNotesFromPassphrase:toAccountPassphrase:completion:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.window"}];
  }

  account = [(ICAccountPassphraseManager *)self account];
  cryptoStrategy = [account cryptoStrategy];
  v15 = [cryptoStrategy authenticateWithPassphrase:accountPassphraseCopy];

  if (v15)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E69B73C0];
    account2 = [(ICAccountPassphraseManager *)self account];
    [defaultCenter postNotificationName:v17 object:account2];

    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    crossProcessChangeCoordinator = [mEMORY[0x1E69B7800] crossProcessChangeCoordinator];
    [crossProcessChangeCoordinator postCrossProcessNotificationName:v17];

    v21 = objc_alloc_init(MEMORY[0x1E69B7720]);
    [v21 setPassphrase:accountPassphraseCopy];
    [v21 setDivergedPassphrase:passphraseCopy];
    [v21 setIncludeAllAuthenticatedObjects:1];
    [v21 setUserInitiated:1];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__ICAccountPassphraseManager_updateDivergedNotesFromPassphrase_toAccountPassphrase_completion___block_invoke;
    v23[3] = &unk_1E846C850;
    v23[4] = self;
    v24 = completionCopy;
    [(ICAccountPassphraseManager *)self updateDivergedNotesWithConfiguration:v21 completion:v23];
  }

  else
  {
    v22 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountPassphraseManager updateDivergedNotesFromPassphrase:? toAccountPassphrase:? completion:?];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

uint64_t __95__ICAccountPassphraseManager_updateDivergedNotesFromPassphrase_toAccountPassphrase_completion___block_invoke(uint64_t a1)
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

- (void)updateDivergedNotesWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = *MEMORY[0x1E69DDA98];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 beginBackgroundTaskWithName:v10 expirationHandler:&__block_literal_global_73];

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  account = [(ICAccountPassphraseManager *)self account];
  objectID = [account objectID];

  v14 = [ICLongRunningTaskController alloc];
  window = [(ICAccountPassphraseManager *)self window];
  v16 = [(ICLongRunningTaskController *)v14 initWithWindow:window intervalBeforeOpeningProgressDialog:1.0];

  v17 = __ICLocalizedFrameworkString_impl(@"Changing Password…", @"Changing Password…", 0, 1);
  [(ICLongRunningTaskController *)v16 setProgressString:v17];

  [(ICLongRunningTaskController *)v16 setIndeterminate:1];
  [(ICLongRunningTaskController *)v16 setShouldShowCircularProgress:1];
  window2 = [(ICAccountPassphraseManager *)self window];
  rootViewController = [window2 rootViewController];
  ic_topViewController = [rootViewController ic_topViewController];
  [(ICLongRunningTaskController *)v16 setViewControllerToPresentFrom:ic_topViewController];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __78__ICAccountPassphraseManager_updateDivergedNotesWithConfiguration_completion___block_invoke_43;
  v28[3] = &unk_1E846D870;
  v31 = v32;
  v21 = objectID;
  v29 = v21;
  v22 = configurationCopy;
  v30 = v22;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __78__ICAccountPassphraseManager_updateDivergedNotesWithConfiguration_completion___block_invoke_2;
  v24[3] = &unk_1E846D898;
  v27 = v11;
  v23 = completionCopy;
  v25 = v23;
  v26 = v32;
  [(ICLongRunningTaskController *)v16 startTask:v28 completionBlock:v24];

  _Block_object_dispose(v32, 8);
}

void __78__ICAccountPassphraseManager_updateDivergedNotesWithConfiguration_completion___block_invoke()
{
  v0 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __78__ICAccountPassphraseManager_updateDivergedNotesWithConfiguration_completion___block_invoke_cold_1(v0);
  }
}

void __78__ICAccountPassphraseManager_updateDivergedNotesWithConfiguration_completion___block_invoke_43(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69B7718];
  v4 = a2;
  v5 = [v3 sharedController];
  LOBYTE(v3) = [v5 convergeNotesInAccountWithID:a1[4] configuration:a1[5] progress:v4];

  *(*(a1[6] + 8) + 24) = v3;
}

uint64_t __78__ICAccountPassphraseManager_updateDivergedNotesWithConfiguration_completion___block_invoke_2(uint64_t a1)
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

- (void)applicationDidEnterBackground:(id)background
{
  v3 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v3, &__block_literal_global_46);
}

void __60__ICAccountPassphraseManager_applicationDidEnterBackground___block_invoke()
{
  v0 = [MEMORY[0x1E69B7718] sharedController];
  [v0 cancelAndWaitWithReason:@"Application entered background"];
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (void)setPassphrase:(NSObject *)a3 hint:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a1 account];
  v6 = [v5 shortLoggingDescription];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "length") != 0}];
  v8 = 138413058;
  v9 = v6;
  v10 = 2112;
  v12 = 2080;
  v11 = v7;
  v13 = "[ICAccountPassphraseManager setPassphrase:hint:]";
  v14 = 1024;
  v15 = 45;
  _os_log_debug_impl(&dword_1D4171000, a3, OS_LOG_TYPE_DEBUG, "Setting passphrase for account… {account: %@, hasHint: %@}%s:%d", &v8, 0x26u);
}

- (void)setPassphrase:(void *)a1 hint:(NSObject *)a2 isReset:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 account];
  v4 = [v3 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Cannot set passphrase for account {account: %@}", v5, 0xCu);
}

- (void)setPassphrase:(void *)a1 hint:isReset:.cold.2(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)setPassphrase:(void *)a1 hint:(char)a2 isReset:.cold.3(void *a1, char a2)
{
  v3 = [a1 account];
  v4 = [v3 shortLoggingDescription];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:a2 & 1];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)setPassphrase:(void *)a1 hint:isReset:.cold.4(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)changePassphrase:(void *)a1 toPassphrase:hint:completion:.cold.1(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_3(&dword_1D4171000, v3, v4, "Not setting passphrase because diverged passphrase does not authenticate account {account: %@}", v5, v6, v7, v8, v9);
}

- (void)changePassphrase:(void *)a1 toPassphrase:hint:completion:.cold.2(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_3(&dword_1D4171000, v3, v4, "Not setting passphrase because account is not authenticated {account: %@}", v5, v6, v7, v8, v9);
}

- (void)removePassphrase
{
  account = [self account];
  shortLoggingDescription = [account shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)updateDivergedNotesFromPassphrase:(void *)a1 toAccountPassphrase:completion:.cold.1(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)updateDivergedNotesFromPassphrase:(void *)a1 toAccountPassphrase:completion:.cold.2(void *a1)
{
  v1 = [a1 account];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end