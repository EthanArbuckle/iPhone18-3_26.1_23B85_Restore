@interface ICAccountPassphraseManager
- (BOOL)removePassphrase;
- (BOOL)setPassphrase:(id)a3 hint:(id)a4;
- (BOOL)setPassphrase:(id)a3 hint:(id)a4 isReset:(BOOL)a5;
- (ICAccountPassphraseManager)initWithAccount:(id)a3;
- (UIWindow)window;
- (void)applicationDidEnterBackground:(id)a3;
- (void)changePassphrase:(id)a3 toPassphrase:(id)a4 hint:(id)a5 completion:(id)a6;
- (void)removePassphrase;
- (void)updateDivergedNotesFromPassphrase:(id)a3 toAccountPassphrase:(id)a4 completion:(id)a5;
- (void)updateDivergedNotesWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation ICAccountPassphraseManager

- (ICAccountPassphraseManager)initWithAccount:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ICAccountPassphraseManager;
  v6 = [(ICAccountPassphraseManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v7 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v7;
}

- (BOOL)setPassphrase:(id)a3 hint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ICAccountPassphraseManager *)self setPassphrase:v6 hint:v8];
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *MEMORY[0x1E69B73C0];
  v11 = [(ICAccountPassphraseManager *)self account];
  [v9 postNotificationName:v10 object:v11];

  v12 = [MEMORY[0x1E69B7800] sharedContext];
  v13 = [v12 crossProcessChangeCoordinator];
  [v13 postCrossProcessNotificationName:v10];

  LOBYTE(v12) = [(ICAccountPassphraseManager *)self setPassphrase:v7 hint:v6 isReset:1];
  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = *MEMORY[0x1E69B73A0];
  v16 = [(ICAccountPassphraseManager *)self account];
  [v14 postNotificationName:v15 object:v16];

  v17 = [MEMORY[0x1E69B7800] sharedContext];
  v18 = [v17 crossProcessChangeCoordinator];
  [v18 postCrossProcessNotificationName:v15];

  return v12;
}

- (BOOL)setPassphrase:(id)a3 hint:(id)a4 isReset:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(ICAccountPassphraseManager *)self account];
  v11 = [v10 cryptoStrategy];
  v12 = [v11 hasPassphraseSet];

  v13 = [MEMORY[0x1E69B7718] sharedController];
  [v13 cancelAndWaitWithReason:@"Setting passphrase"];

  v14 = [(ICAccountPassphraseManager *)self account];
  LODWORD(v11) = [v14 isPassphraseCorrect:v8];

  if (v11)
  {
    v15 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountPassphraseManager setPassphrase:? hint:? isReset:?];
    }

    v16 = 1;
LABEL_13:
    v22 = v15;
    goto LABEL_18;
  }

  v17 = [(ICAccountPassphraseManager *)self account];
  v18 = [v17 cryptoStrategy];
  v19 = [v18 setPassphrase:v8 hint:v9];

  if ((v19 & 1) == 0)
  {
    v15 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ICAccountPassphraseManager setPassphrase:v15 hint:? isReset:?];
    }

    v16 = 0;
    goto LABEL_13;
  }

  v20 = os_log_create("com.apple.notes", "Analytics");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v21)
    {
      [ICAccountPassphraseManager setPassphrase:v5 hint:? isReset:?];
    }

    [MEMORY[0x1E69B7780] incrementRecentPasswordChangeCountAsReset:v5];
  }

  else
  {
    if (v21)
    {
      [ICAccountPassphraseManager setPassphrase:? hint:? isReset:?];
    }
  }

  v23 = [MEMORY[0x1E69B7850] sharedController];
  v24 = [(ICAccountPassphraseManager *)self account];
  [v23 enrollInReaskForAccount:v24];

  v22 = [(ICAccountPassphraseManager *)self account];
  v15 = [v22 managedObjectContext];
  v16 = [v15 ic_saveWithLogDescription:@"Set account passphrase"];
LABEL_18:

  return v16;
}

- (void)changePassphrase:(id)a3 toPassphrase:(id)a4 hint:(id)a5 completion:(id)a6
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v48 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v44 = [(ICAccountPassphraseManager *)self account];
    v45 = [v44 shortLoggingDescription];
    v46 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "length") != 0}];
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v48, "length") != 0}];
    *location = 138413314;
    *&location[4] = v45;
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

  v14 = [(ICAccountPassphraseManager *)self window];
  v15 = v14 == 0;

  if (v15)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.window) != nil)" functionName:"-[ICAccountPassphraseManager changePassphrase:toPassphrase:hint:completion:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.window"}];
  }

  if (v10 && (-[ICAccountPassphraseManager account](self, "account"), v16 = objc_claimAutoreleasedReturnValue(), [v16 cryptoStrategy], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "authenticateWithPassphrase:", v10), v17, v16, (v18 & 1) == 0))
  {
    v38 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountPassphraseManager changePassphrase:? toPassphrase:? hint:? completion:?];
    }

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = [(ICAccountPassphraseManager *)self account];
    v20 = [v19 isAuthenticated];

    if (v20)
    {
      v21 = objc_alloc_init(MEMORY[0x1E69B7720]);
      [v21 setPassphrase:v11];
      [v21 setDivergedPassphrase:v10];
      v22 = [MEMORY[0x1E69B76D0] sharedState];
      v23 = [(ICAccountPassphraseManager *)self account];
      v24 = [v23 identifier];
      v25 = [v22 cachedMainKeyForIdentifier:v24];
      [v21 setDivergedV1MainKey:v25];

      v26 = [MEMORY[0x1E69B76D0] sharedState];
      v27 = [(ICAccountPassphraseManager *)self account];
      v28 = [v27 accountDataCreateIfNecessary];
      v29 = [v28 identifier];
      v30 = [v26 cachedMainKeyForIdentifier:v29];
      [v21 setDivergedV1NeoMainKey:v30];

      [v21 setIncludeAllAuthenticatedObjects:1];
      [v21 setUserInitiated:1];
      v31 = [MEMORY[0x1E696AD88] defaultCenter];
      v32 = [(ICAccountPassphraseManager *)self account];
      v33 = *MEMORY[0x1E69B73C0];
      [v31 postNotificationName:*MEMORY[0x1E69B73C0] object:v32];

      v34 = [MEMORY[0x1E69B7800] sharedContext];
      v35 = [v34 crossProcessChangeCoordinator];
      [v35 postCrossProcessNotificationName:v33];

      if ([(ICAccountPassphraseManager *)self setPassphrase:v11 hint:v48 isReset:0])
      {
        v36 = [(ICAccountPassphraseManager *)self account];
        objc_initWeak(location, v36);

        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __76__ICAccountPassphraseManager_changePassphrase_toPassphrase_hint_completion___block_invoke;
        v49[3] = &unk_1E846D848;
        objc_copyWeak(&v51, location);
        v50 = v12;
        [(ICAccountPassphraseManager *)self updateDivergedNotesWithConfiguration:v21 completion:v49];

        objc_destroyWeak(&v51);
        objc_destroyWeak(location);
      }

      else
      {
        v39 = [MEMORY[0x1E696AD88] defaultCenter];
        v40 = [(ICAccountPassphraseManager *)self account];
        v41 = *MEMORY[0x1E69B73A0];
        [v39 postNotificationName:*MEMORY[0x1E69B73A0] object:v40];

        v42 = [MEMORY[0x1E69B7800] sharedContext];
        v43 = [v42 crossProcessChangeCoordinator];
        [v43 postCrossProcessNotificationName:v41];

        if (v12)
        {
          (*(v12 + 2))(v12, 0);
        }
      }

      goto LABEL_21;
    }

    v37 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountPassphraseManager changePassphrase:? toPassphrase:? hint:? completion:?];
    }

    if (v12)
    {
LABEL_13:
      (*(v12 + 2))(v12, 0);
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

  v4 = [MEMORY[0x1E69B7718] sharedController];
  [v4 cancelAndWaitWithReason:@"Removing passphrase"];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69B73C0];
  v7 = [(ICAccountPassphraseManager *)self account];
  [v5 postNotificationName:v6 object:v7];

  v8 = [MEMORY[0x1E69B7800] sharedContext];
  v9 = [v8 crossProcessChangeCoordinator];
  [v9 postCrossProcessNotificationName:v6];

  v10 = [(ICAccountPassphraseManager *)self account];
  v11 = [v10 cryptoStrategy];
  [v11 removePassphrase];

  v12 = [(ICAccountPassphraseManager *)self account];
  v13 = [v12 managedObjectContext];
  LOBYTE(v10) = [v13 ic_saveWithLogDescription:@"Removed account passphrase"];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = *MEMORY[0x1E69B73A0];
  v16 = [(ICAccountPassphraseManager *)self account];
  [v14 postNotificationName:v15 object:v16];

  v17 = [MEMORY[0x1E69B7800] sharedContext];
  v18 = [v17 crossProcessChangeCoordinator];
  [v18 postCrossProcessNotificationName:v15];

  return v10;
}

- (void)updateDivergedNotesFromPassphrase:(id)a3 toAccountPassphrase:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICAccountPassphraseManager updateDivergedNotesFromPassphrase:? toAccountPassphrase:? completion:?];
  }

  v12 = [(ICAccountPassphraseManager *)self window];

  if (!v12)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.window) != nil)" functionName:"-[ICAccountPassphraseManager updateDivergedNotesFromPassphrase:toAccountPassphrase:completion:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.window"}];
  }

  v13 = [(ICAccountPassphraseManager *)self account];
  v14 = [v13 cryptoStrategy];
  v15 = [v14 authenticateWithPassphrase:v9];

  if (v15)
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E69B73C0];
    v18 = [(ICAccountPassphraseManager *)self account];
    [v16 postNotificationName:v17 object:v18];

    v19 = [MEMORY[0x1E69B7800] sharedContext];
    v20 = [v19 crossProcessChangeCoordinator];
    [v20 postCrossProcessNotificationName:v17];

    v21 = objc_alloc_init(MEMORY[0x1E69B7720]);
    [v21 setPassphrase:v9];
    [v21 setDivergedPassphrase:v8];
    [v21 setIncludeAllAuthenticatedObjects:1];
    [v21 setUserInitiated:1];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__ICAccountPassphraseManager_updateDivergedNotesFromPassphrase_toAccountPassphrase_completion___block_invoke;
    v23[3] = &unk_1E846C850;
    v23[4] = self;
    v24 = v10;
    [(ICAccountPassphraseManager *)self updateDivergedNotesWithConfiguration:v21 completion:v23];
  }

  else
  {
    v22 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ICAccountPassphraseManager updateDivergedNotesFromPassphrase:? toAccountPassphrase:? completion:?];
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0);
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

- (void)updateDivergedNotesWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E69DDA98];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 beginBackgroundTaskWithName:v10 expirationHandler:&__block_literal_global_73];

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v12 = [(ICAccountPassphraseManager *)self account];
  v13 = [v12 objectID];

  v14 = [ICLongRunningTaskController alloc];
  v15 = [(ICAccountPassphraseManager *)self window];
  v16 = [(ICLongRunningTaskController *)v14 initWithWindow:v15 intervalBeforeOpeningProgressDialog:1.0];

  v17 = __ICLocalizedFrameworkString_impl(@"Changing Password…", @"Changing Password…", 0, 1);
  [(ICLongRunningTaskController *)v16 setProgressString:v17];

  [(ICLongRunningTaskController *)v16 setIndeterminate:1];
  [(ICLongRunningTaskController *)v16 setShouldShowCircularProgress:1];
  v18 = [(ICAccountPassphraseManager *)self window];
  v19 = [v18 rootViewController];
  v20 = [v19 ic_topViewController];
  [(ICLongRunningTaskController *)v16 setViewControllerToPresentFrom:v20];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __78__ICAccountPassphraseManager_updateDivergedNotesWithConfiguration_completion___block_invoke_43;
  v28[3] = &unk_1E846D870;
  v31 = v32;
  v21 = v13;
  v29 = v21;
  v22 = v6;
  v30 = v22;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __78__ICAccountPassphraseManager_updateDivergedNotesWithConfiguration_completion___block_invoke_2;
  v24[3] = &unk_1E846D898;
  v27 = v11;
  v23 = v7;
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

- (void)applicationDidEnterBackground:(id)a3
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
  v1 = [a1 account];
  v2 = [v1 shortLoggingDescription];
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