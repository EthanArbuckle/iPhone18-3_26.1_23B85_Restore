@interface ICPasswordEntryAlertController
- (ICPasswordEntryAlertController)initWithDisplayWindow:(id)a3;
- (id)passwordAlertControllerWithPrompt:(id)a3 passwordHandler:(id)a4 forgotHandler:(id)a5 cancelHandler:(id)a6;
- (void)authenticateWithPrompt:(id)a3 completionHandler:(id)a4;
- (void)didAuthenticateWithPassword:(id)a3 prompt:(id)a4 completionHandler:(id)a5;
@end

@implementation ICPasswordEntryAlertController

- (ICPasswordEntryAlertController)initWithDisplayWindow:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICPasswordEntryAlertController;
  v6 = [(ICPasswordEntryAlertController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayWindow, a3);
  }

  return v7;
}

- (void)authenticateWithPrompt:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICPasswordEntryAlertController *)self isAuthenticating])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICPasswordEntryAlertController authenticateWithPrompt:completionHandler:]" simulateCrash:1 showAlert:0 format:@"This is a one-shot object — you can only call the authentication method once"];
    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    [(ICPasswordEntryAlertController *)self setAuthenticating:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke;
    v21[3] = &unk_1E8469B10;
    v21[4] = self;
    v22 = v6;
    v23 = v7;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke_2;
    v17[3] = &unk_1E8469B60;
    v18 = v22;
    v19 = self;
    v20 = v23;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke_5;
    v15[3] = &unk_1E84690D0;
    v16 = v20;
    v8 = [(ICPasswordEntryAlertController *)self passwordAlertControllerWithPrompt:v18 passwordHandler:v21 forgotHandler:v17 cancelHandler:v15];
    v9 = [(ICPasswordEntryAlertController *)self displayWindow];
    v10 = [v9 rootViewController];
    v11 = [v10 presentedViewController];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = [(ICPasswordEntryAlertController *)self displayWindow];
      v13 = [v14 rootViewController];
    }

    [v13 presentViewController:v8 animated:1 completion:0];
  }
}

void __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke_2(id *a1)
{
  if ([a1[4] intent] == 4)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = *(v2 + 2);

      v3();
    }
  }

  else if ([a1[4] intent] == 7)
  {
    v4 = +[ICAuthenticationAlert forgotCustomPasswordSwitchAnywayConfirmationAlert];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke_3;
    v11[3] = &unk_1E8469B38;
    v12 = a1[6];
    [v4 setActionHandler:v11];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke_4;
    v9 = &unk_1E8469B38;
    v10 = a1[6];
    [v4 setDismissHandler:&v6];
    v5 = [a1[5] displayWindow];
    [v4 presentInWindow:v5 completionHandler:0];
  }
}

uint64_t __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

uint64_t __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __75__ICPasswordEntryAlertController_authenticateWithPrompt_completionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)didAuthenticateWithPassword:(id)a3 prompt:(id)a4 completionHandler:(id)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 account];
  v12 = [v11 isPassphraseCorrect:v8];

  v13 = [v9 authenticationObject];
  v14 = [v13 isPassphraseCorrect:v8];

  v15 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v55 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v53 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICPasswordEntryAlertController numberOfFailedAttempts](self, "numberOfFailedAttempts")}];
    [MEMORY[0x1E696AD98] numberWithBool:{-[ICPasswordEntryAlertController isPasswordDiverged](self, "isPasswordDiverged")}];
    *buf = 138413570;
    v70 = v55;
    v71 = 2112;
    v72 = v53;
    v73 = 2112;
    v74 = v51;
    v75 = 2112;
    v76 = v77 = 2080;
    v52 = v76;
    v78 = "[ICPasswordEntryAlertController didAuthenticateWithPassword:prompt:completionHandler:]";
    v79 = 1024;
    v80 = 88;
    _os_log_debug_impl(&dword_1D4171000, v15, OS_LOG_TYPE_DEBUG, "Authenticated with custom password {isCorrectForAccount: %@, isCorrectForObject: %@, #failedAttempts: %@, isPasswordDiverged: %@}%s:%d", buf, 0x3Au);
  }

  if (v14 && ([MEMORY[0x1E69B76D0] sharedState], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "authenticationObject"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "authenticateObject:withPassphrase:", v17, v8), v17, v16, v18))
  {
    if ([(ICPasswordEntryAlertController *)self isPasswordDiverged])
    {
      v19 = +[ICPasswordUtilities sharedInstance];
      v20 = [(ICPasswordEntryAlertController *)self divergedAccountPassword];
      v21 = [v9 account];
      v22 = [(ICPasswordEntryAlertController *)self displayWindow];
      [v19 showUpdateDivergedPasswordForAccountPassword:v20 oldPassword:v8 account:v21 displayWindow:v22];
    }

    if ([v9 intent] == 7)
    {
      v23 = [ICLongRunningTaskController alloc];
      v24 = [(ICPasswordEntryAlertController *)self displayWindow];
      v25 = [(ICLongRunningTaskController *)v23 initWithWindow:v24 intervalBeforeOpeningProgressDialog:1.0];

      [(ICLongRunningTaskController *)v25 setIndeterminate:1];
      [(ICLongRunningTaskController *)v25 setShouldShowCircularProgress:1];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke;
      v66[3] = &unk_1E8469148;
      v67 = v9;
      v68 = v8;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_3;
      v64[3] = &unk_1E8469B88;
      v65 = v10;
      [(ICLongRunningTaskController *)v25 startTask:v66 completionBlock:v64];
    }

    else if ([v9 intent] == 1 && (objc_msgSend(v9, "note"), v47 = objc_claimAutoreleasedReturnValue(), v47, v47))
    {
      v48 = +[ICAuthenticationAlert updateDivergedCustomPasswordAttachmentsActionAlert];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_4;
      v60[3] = &unk_1E8469BD8;
      v61 = v9;
      v62 = v8;
      v49 = v10;
      v63 = v49;
      [v48 setActionHandler:v60];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_6;
      v58[3] = &unk_1E8469B38;
      v59 = v49;
      [v48 setDismissHandler:v58];
      v50 = [(ICPasswordEntryAlertController *)self displayWindow];
      [v48 presentInWindow:v50 completionHandler:0];
    }

    else if (v10)
    {
      (*(v10 + 2))(v10, 2);
    }
  }

  else
  {
    [(ICPasswordEntryAlertController *)self setNumberOfFailedAttempts:[(ICPasswordEntryAlertController *)self numberOfFailedAttempts]+ 1];
    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 postNotificationName:@"ICPasswordEntryAlertControllerAttemptDidFailNotification" object:self];

    if (![v9 intent])
    {
      if (v12)
      {
        [(ICPasswordEntryAlertController *)self setDivergedAccountPassword:v8];
      }

      [(ICPasswordEntryAlertController *)self setPasswordDiverged:v12 | [(ICPasswordEntryAlertController *)self isPasswordDiverged]];
      v27 = MEMORY[0x1E69B7658];
      v28 = [MEMORY[0x1E69B7800] sharedContext];
      v29 = [v28 managedObjectContext];
      v30 = [v27 allActiveAccountsInContext:v29];
      v31 = ([v30 count] < 2) | v12;

      if ((v31 & 1) == 0)
      {
        v32 = [v9 account];
        v33 = [v32 accountName];
        v54 = [v33 ic_trimmedString];

        v34 = MEMORY[0x1E69B7658];
        v35 = [MEMORY[0x1E69B7800] sharedContext];
        v36 = [v35 managedObjectContext];
        v37 = [v34 allActiveAccountsInContext:v36];
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_7;
        v56[3] = &unk_1E8469C00;
        v57 = v8;
        v38 = [v37 ic_objectPassingTest:v56];

        v39 = [v38 accountName];
        v40 = [v39 ic_trimmedString];

        v41 = [v9 account];
        v42 = [v41 cryptoStrategy];
        v43 = [v9 object];
        v44 = [v42 hasSameKeyAsObject:v43];

        if (!v38 || !v44 || ![v54 length] || (v45 = objc_msgSend(v40, "length"), v46 = v40, !v45))
        {
          v46 = 0;
        }

        [(ICPasswordEntryAlertController *)self setWrongAccountName:v46];
      }
    }

    [(ICPasswordEntryAlertController *)self setAuthenticating:0];
    [(ICPasswordEntryAlertController *)self authenticateWithPrompt:v9 completionHandler:v10];
  }
}

void __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B7800] sharedContext];
  v3 = [v2 workerManagedObjectContext];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8468D98;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  [v4 performBlockAndWait:v5];
}

void __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) account];
  v4 = [v3 objectID];
  v5 = [v2 objectWithID:v4];
  v7 = ICCheckedDynamicCast();

  v6 = [MEMORY[0x1E69B76D0] sharedState];
  [v6 authenticateAllNotesInAccount:v7 withPassphrase:*(a1 + 48)];
}

uint64_t __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

void __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICNoteLockManager alloc];
  v5 = [*(a1 + 32) note];
  v6 = [(ICNoteLockManager *)v4 initWithNote:v5];

  [(ICNoteLockManager *)v6 setWindow:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_5;
  v8[3] = &unk_1E8469BB0;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  [(ICNoteLockManager *)v6 updateDivergedAttachmentsWithPassphrase:v7 completion:v8];
}

uint64_t __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_5(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

uint64_t __87__ICPasswordEntryAlertController_didAuthenticateWithPassword_prompt_completionHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (id)passwordAlertControllerWithPrompt:(id)a3 passwordHandler:(id)a4 forgotHandler:(id)a5 cancelHandler:(id)a6
{
  v10 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v11 = [v10 account];
  v12 = [v11 accountName];
  v46 = [v12 ic_trimmedString];

  v13 = [v10 title];
  v14 = [v10 reason];
  if ([v10 intent] == 7)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (![v10 intent])
  {
    v37 = [(ICPasswordEntryAlertController *)self wrongAccountName];
    if ([v37 length])
    {
      v38 = [v46 length];

      if (v38)
      {
        v39 = __ICLocalizedFrameworkString_impl(@"Wrong Password", @"Wrong Password", 0, 1);

        v40 = __ICLocalizedFrameworkString_impl(@"You’ve entered your “%@” password. Enter your “%@” password.", @"You’ve entered your “%@” password. Enter your “%@” password.", 0, 1);
        v41 = MEMORY[0x1E696AEC0];
        v42 = [(ICPasswordEntryAlertController *)self wrongAccountName];
        v17 = [v41 localizedStringWithFormat:v40, v42, v46];

        v14 = v40;
        v13 = v39;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if ([(ICPasswordEntryAlertController *)self isPasswordDiverged])
  {
    v16 = @"That’s not the correct password for this note. Try a different password.";
LABEL_9:
    v17 = __ICLocalizedFrameworkString_impl(v16, v16, 0, 1);
LABEL_10:

    v14 = v17;
    goto LABEL_11;
  }

  if ([(ICPasswordEntryAlertController *)self numberOfFailedAttempts])
  {
    v16 = @"That’s not the correct password. Please try again.";
    goto LABEL_9;
  }

LABEL_11:
  if ([(ICPasswordEntryAlertController *)self isPasswordDiverged]|| [(ICPasswordEntryAlertController *)self numberOfFailedAttempts]>= v15)
  {
    v19 = [v10 authenticationObject];
    v20 = [v19 passwordHint];

    if ([v20 length])
    {
      v21 = __ICLocalizedFrameworkString_impl(@"Hint: %@", @"Hint: %@", 0, 1);
      v22 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v21, v20];
      v23 = [v14 stringByAppendingFormat:@"\n\n%@", v22];

      v14 = v23;
    }

    v18 = v45;
  }

  else
  {
    v18 = v45;
  }

  v24 = [ICAlertController alertControllerWithTitle:v13 message:v14 preferredStyle:1];
  [v24 setCanAppearAbovePasswordEntryView:1];
  [v24 setDismissWithoutActionBlock:v18];
  objc_initWeak(location, v24);
  [v24 addTextFieldWithConfigurationHandler:&__block_literal_global_15];
  if (-[ICPasswordEntryAlertController numberOfFailedAttempts](self, "numberOfFailedAttempts") >= v15 && [v10 intent] == 7)
  {
    v25 = MEMORY[0x1E69DC648];
    v26 = __ICLocalizedFrameworkString_impl(@"Forgot Password", @"Forgot Password", 0, 1);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __112__ICPasswordEntryAlertController_passwordAlertControllerWithPrompt_passwordHandler_forgotHandler_cancelHandler___block_invoke_2;
    v53[3] = &unk_1E8469C48;
    objc_copyWeak(&v55, location);
    v54 = v44;
    v27 = [v25 actionWithTitle:v26 style:0 handler:v53];

    [v24 addAction:v27];
    objc_destroyWeak(&v55);
    v18 = v45;
  }

  v28 = MEMORY[0x1E69DC648];
  v29 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __112__ICPasswordEntryAlertController_passwordAlertControllerWithPrompt_passwordHandler_forgotHandler_cancelHandler___block_invoke_3;
  v50[3] = &unk_1E8469C48;
  objc_copyWeak(&v52, location);
  v30 = v18;
  v51 = v30;
  v31 = [v28 actionWithTitle:v29 style:1 handler:v50];

  [v24 addAction:v31];
  v32 = MEMORY[0x1E69DC648];
  v33 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __112__ICPasswordEntryAlertController_passwordAlertControllerWithPrompt_passwordHandler_forgotHandler_cancelHandler___block_invoke_4;
  v47[3] = &unk_1E8469C48;
  objc_copyWeak(&v49, location);
  v34 = v43;
  v48 = v34;
  v35 = [v32 actionWithTitle:v33 style:0 handler:v47];

  [v24 addAction:v35];
  objc_destroyWeak(&v49);

  objc_destroyWeak(&v52);
  objc_destroyWeak(location);

  return v24;
}

void __112__ICPasswordEntryAlertController_passwordAlertControllerWithPrompt_passwordHandler_forgotHandler_cancelHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = __ICLocalizedFrameworkString_impl(@"Password", @"Password", 0, 1);
  [v3 setPlaceholder:v2];

  [v3 setTextContentType:*MEMORY[0x1E69DE528]];
  [v3 setSecureTextEntry:1];
}

uint64_t __112__ICPasswordEntryAlertController_passwordAlertControllerWithPrompt_passwordHandler_forgotHandler_cancelHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDidPerformAction:1];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __112__ICPasswordEntryAlertController_passwordAlertControllerWithPrompt_passwordHandler_forgotHandler_cancelHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDidPerformAction:1];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __112__ICPasswordEntryAlertController_passwordAlertControllerWithPrompt_passwordHandler_forgotHandler_cancelHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDidPerformAction:1];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 textFields];
  v5 = [v4 firstObject];
  v7 = [v5 text];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

@end