@interface ICPasswordUtilities
+ (BOOL)deviceHasPasscode;
+ (ICPasswordUtilities)sharedInstance;
+ (id)imageForCurrentDecryptedStatusForNote:(id)a3;
- (void)accessibilityAnnounceAuthSuccessForIntent:(unint64_t)a3 withNote:(id)a4;
- (void)showChangePasswordDialogueFromDisplayWindow:(id)a3 account:(id)a4 completionHandler:(id)a5;
- (void)showPasswordSetUpSheetForAccount:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5;
- (void)showUpdateDivergedPasswordForAccountPassword:(id)a3 oldPassword:(id)a4 account:(id)a5 displayWindow:(id)a6;
@end

@implementation ICPasswordUtilities

+ (ICPasswordUtilities)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ICPasswordUtilities sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __37__ICPasswordUtilities_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ICPasswordUtilities);
  sharedInstance_instance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)imageForCurrentDecryptedStatusForNote:(id)a3
{
  if ([a3 isAuthenticated])
  {
    v3 = @"lock.open.fill";
  }

  else
  {
    v3 = @"lock.fill";
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];

  return v4;
}

+ (BOOL)deviceHasPasscode
{
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v5 = 0;
  v3 = [v2 canEvaluatePolicy:2 error:&v5];

  return v3;
}

- (void)showChangePasswordDialogueFromDisplayWindow:(id)a3 account:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 hasPassphraseSet])
  {
    v11 = [(ICPasswordUtilities *)self displayedSheet];

    if (!v11)
    {
      v12 = [ICPasswordChangeViewController alloc];
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = [(ICPasswordChangeViewController *)v12 initWithNibName:0 bundle:v13];

      v15 = [(ICPasswordChangeViewController *)v14 view];
      [(ICPasswordChangeViewController *)v14 setUpForChangePasswordWithAccount:v9 didAuthenticateWithBiometrics:0];
      v16 = [(UIViewController *)v14 ic_embedInNavigationControllerForModalPresentation];
      v17 = [v8 rootViewController];
      v18 = [v17 ic_topViewController];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __93__ICPasswordUtilities_showChangePasswordDialogueFromDisplayWindow_account_completionHandler___block_invoke;
      v19[3] = &unk_1E846AFD0;
      v22 = v10;
      v20 = v9;
      v21 = self;
      [v18 presentViewController:v16 animated:1 completion:v19];
    }
  }

  else
  {
    [(ICPasswordUtilities *)self showPasswordSetUpSheetForAccount:v9 displayWindow:v8 completionHandler:v10];
  }
}

uint64_t __93__ICPasswordUtilities_showChangePasswordDialogueFromDisplayWindow_account_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if ([*(a1 + 32) isAuthenticated])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 40);

  return [v4 setDisplayedSheet:0];
}

- (void)showPasswordSetUpSheetForAccount:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICPasswordUtilities *)self displayedSheet];

  if (!v11)
  {
    v12 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICPasswordUtilities showPasswordSetUpSheetForAccount:v8 displayWindow:? completionHandler:?];
    }

    v13 = [ICPasswordChangeViewController alloc];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__ICPasswordUtilities_showPasswordSetUpSheetForAccount_displayWindow_completionHandler___block_invoke;
    v22[3] = &unk_1E846E500;
    v14 = v8;
    v23 = v14;
    v24 = self;
    v25 = v10;
    v15 = [(ICPasswordChangeViewController *)v13 initWithCompletionHandler:v22];
    v16 = [(ICPasswordChangeViewController *)v15 view];
    [(ICPasswordChangeViewController *)v15 setUpForAddingPasswordWithAccount:v14];
    v17 = [(UIViewController *)v15 ic_embedInNavigationControllerForModalPresentation];
    [v17 setModalPresentationCapturesStatusBarAppearance:1];
    v18 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v14 shortLoggingDescription];
      *buf = 138412802;
      v27 = v15;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v17;
      _os_log_debug_impl(&dword_1D4171000, v18, OS_LOG_TYPE_DEBUG, "Presenting passwordSetupViewController %@ for account %@ through navigation controller %@", buf, 0x20u);
    }

    v19 = [v9 rootViewController];
    v20 = [v19 ic_topViewController];
    [v20 presentViewController:v17 animated:1 completion:0];
  }
}

void __88__ICPasswordUtilities_showPasswordSetUpSheetForAccount_displayWindow_completionHandler___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __88__ICPasswordUtilities_showPasswordSetUpSheetForAccount_displayWindow_completionHandler___block_invoke_cold_1(a1);
  }

  [*(a1 + 40) setDisplayedSheet:0];
  v3 = *(a1 + 48);
  dispatchMainAfterDelay();
}

uint64_t __88__ICPasswordUtilities_showPasswordSetUpSheetForAccount_displayWindow_completionHandler___block_invoke_20(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)showUpdateDivergedPasswordForAccountPassword:(id)a3 oldPassword:(id)a4 account:(id)a5 displayWindow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(ICPasswordUtilities *)self isShowingDivergedDialogue])
  {
    v14 = [MEMORY[0x1E69B76D0] sharedState];
    v15 = [v14 authenticateObject:v12 withPassphrase:v10];

    if (v15)
    {
      objc_initWeak(&location, self);
      v16 = +[ICAuthenticationAlert updateDivergedCustomPasswordNotesActionAlert];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __102__ICPasswordUtilities_showUpdateDivergedPasswordForAccountPassword_oldPassword_account_displayWindow___block_invoke;
      v22[3] = &unk_1E846E528;
      v23 = v12;
      v24 = v11;
      v25 = v10;
      objc_copyWeak(&v26, &location);
      [v16 setActionHandler:v22];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __102__ICPasswordUtilities_showUpdateDivergedPasswordForAccountPassword_oldPassword_account_displayWindow___block_invoke_3;
      v20 = &unk_1E846E550;
      objc_copyWeak(&v21, &location);
      [v16 setDismissHandler:&v17];
      [v16 presentInWindow:v13 completionHandler:{0, v17, v18, v19, v20}];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v26);

      objc_destroyWeak(&location);
    }
  }
}

void __102__ICPasswordUtilities_showUpdateDivergedPasswordForAccountPassword_oldPassword_account_displayWindow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ICAccountPassphraseManager alloc] initWithAccount:*(a1 + 32)];
  [(ICAccountPassphraseManager *)v4 setWindow:v3];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__ICPasswordUtilities_showUpdateDivergedPasswordForAccountPassword_oldPassword_account_displayWindow___block_invoke_2;
  v7[3] = &unk_1E846DEF8;
  objc_copyWeak(&v8, (a1 + 56));
  [(ICAccountPassphraseManager *)v4 updateDivergedNotesFromPassphrase:v5 toAccountPassphrase:v6 completion:v7];
  objc_destroyWeak(&v8);
}

void __102__ICPasswordUtilities_showUpdateDivergedPasswordForAccountPassword_oldPassword_account_displayWindow___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsShowingDivergedDialogue:0];
}

void __102__ICPasswordUtilities_showUpdateDivergedPasswordForAccountPassword_oldPassword_account_displayWindow___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsShowingDivergedDialogue:0];
}

- (void)accessibilityAnnounceAuthSuccessForIntent:(unint64_t)a3 withNote:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = __ICLocalizedFrameworkString_impl(@"Notes Unlocked", @"Notes Unlocked", 0, 1);
  }

  if ([v6 length])
  {
    v7 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__ICPasswordUtilities_accessibilityAnnounceAuthSuccessForIntent_withNote___block_invoke;
    block[3] = &unk_1E8468BA0;
    v9 = v6;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }
}

- (void)showPasswordSetUpSheetForAccount:(void *)a1 displayWindow:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_0_2(&dword_1D4171000, v2, v3, "Sheet hasn't displayed, displaying it for account %@", v4, v5, v6, v7, 2u);
}

void __88__ICPasswordUtilities_showPasswordSetUpSheetForAccount_displayWindow_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortLoggingDescription];
  OUTLINED_FUNCTION_0_2(&dword_1D4171000, v2, v3, "Completion handler for passwordSetupViewController is triggered for account %@", v4, v5, v6, v7, 2u);
}

@end