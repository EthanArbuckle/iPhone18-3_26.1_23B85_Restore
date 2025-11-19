@interface SFDialog
+ (id)_appLinkRedirectDialogWithMessage:(id)a3 completionHandler:(id)a4;
+ (id)_dialogWithTitle:(id)a3 message:(id)a4 acceptAction:(id)a5 secondaryAction:(id)a6 cancelAction:(id)a7 applicationModal:(BOOL)a8 completionHandler:(id)a9;
+ (id)_dialogWithTitle:(id)a3 message:(id)a4 primaryAction:(id)a5 secondaryAction:(id)a6 applicationModal:(BOOL)a7 completionHandler:(id)a8;
+ (id)authenticationDialogWithAuthenticationChallenge:(id)a3 committedURL:(id)a4 completionHandler:(id)a5;
+ (id)blockedPopupWindowDialogWithCompletionHandler:(id)a3;
+ (id)continuePrintingDialogWithTitle:(id)a3 message:(id)a4 applicationModal:(BOOL)a5 completionHandler:(id)a6;
+ (id)dialogWithWebUIAlert:(id)a3 completionHandler:(id)a4;
+ (id)formSubmissionDialogWithMessage:(id)a3 completionHandler:(id)a4;
+ (id)genericErrorDialogWithTitle:(id)a3 message:(id)a4 applicationModal:(BOOL)a5;
+ (id)increaseDatabaseQuotaDialogForOrigin:(id)a3 newQuota:(int64_t)a4 completionHandler:(id)a5;
+ (id)javaScriptAlertDialogWithMessage:(id)a3 completionHandler:(id)a4;
+ (id)javaScriptConfirmDialogWithMessage:(id)a3 completionHandler:(id)a4;
+ (id)javaScriptPromptDialogWithMessage:(id)a3 defaultText:(id)a4 completionHandler:(id)a5;
+ (id)noFeedAppDialogWithCompletionHandler:(id)a3;
+ (id)pageLoadErrorWithMessage:(id)a3;
+ (id)permanentlyAcceptCertificateDialogWithAcceptanceHandler:(id)a3;
+ (id)printBlockedDialogWithCompletionHandler:(id)a3;
+ (id)redirectDialogWithMessage:(id)a3 completionHandler:(id)a4;
+ (id)requestStorageAccessDialogForDomain:(id)a3 underCurrentDomain:(id)a4 extensionsController:(id)a5 completionHandler:(id)a6;
+ (id)telephonyNavigationDialogWithCompletionHandler:(id)a3;
+ (id)userMediaPermissionDialogWithHost:(id)a3 permissions:(unint64_t)a4 completionHandler:(id)a5;
+ (id)webExtensionAlwaysAllowDialogWithExtension:(id)a3 domains:(id)a4 includeDenyButton:(BOOL)a5 completionHandler:(id)a6;
+ (id)webExtensionDisabledBecauseItRequestsAdditionalPermissionsDialogForExtension:(id)a3 completionHandler:(id)a4;
+ (id)webExtensionPermissionDialogWithExtension:(id)a3 domains:(id)a4 showMoreOptionsForAlwaysAllow:(BOOL)a5 includeDenyButton:(BOOL)a6 completionHandler:(id)a7;
+ (id)websiteLocationDialogForURL:(id)a3 originUserVisibleName:(id)a4 preciseLocation:(BOOL)a5 browserPersona:(int64_t)a6 completionHandler:(id)a7;
- (SFDialogController)dialogController;
- (void)completeWithResponse:(id)a3;
@end

@implementation SFDialog

- (void)completeWithResponse:(id)a3
{
  if (self->_completed)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXTabDialogs();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFDialog completeWithResponse:v4];
    }
  }

  else
  {
    self->_completed = 1;

    [(SFDialog *)self didCompleteWithResponse:a3];
  }
}

+ (id)authenticationDialogWithAuthenticationChallenge:(id)a3 committedURL:(id)a4 completionHandler:(id)a5
{
  v32[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 failureResponse];
  v11 = [v10 URL];

  v12 = objc_alloc_init(SFBasicDialog);
  v13 = MEMORY[0x1E696AEC0];
  v14 = _WBSLocalizedString();
  v15 = [v11 safari_userVisibleHost];
  v16 = [v13 stringWithFormat:v14, v15];
  [(SFBasicDialog *)v12 setTitle:v16];

  v17 = [v9 protectionSpace];

  v18 = [v17 protocol];
  [v18 isEqualToString:*MEMORY[0x1E696A9B0]];
  v19 = _WBSLocalizedString();
  [(SFBasicDialog *)v12 setMessage:v19];

  v20 = _WBSLocalizedString();
  [(SFBasicDialog *)v12 setTextPlaceholder:v20];

  v21 = _WBSLocalizedString();
  [(SFBasicDialog *)v12 setPasswordPlaceholder:v21];

  v22 = _WBSLocalizedString();
  v23 = [SFDialogAction actionWithTitle:v22 activatingKeyboardShortcut:2 type:0];
  v32[0] = v23;
  v24 = _WBSLocalizedString();
  v25 = [SFDialogAction actionWithTitle:v24 activatingKeyboardShortcut:1 type:1];
  v32[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [(SFBasicDialog *)v12 setActions:v26];

  if (v7)
  {
    v27 = [v7 safari_hasSameOriginAsURL:v11] ^ 1;
  }

  else
  {
    v27 = 0;
  }

  [(SFBasicDialog *)v12 setShouldHideWebContent:v27];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __91__SFDialog_authenticationDialogWithAuthenticationChallenge_committedURL_completionHandler___block_invoke;
  v30[3] = &unk_1E721DAD8;
  v31 = v8;
  v28 = v8;
  [(SFBasicDialog *)v12 setCompletionHandler:v30];

  return v12;
}

void __91__SFDialog_authenticationDialogWithAuthenticationChallenge_committedURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL || a2 == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = &stru_1EFF36230;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1EFF36230;
    }

    v10 = [MEMORY[0x1E696AF30] safari_credentialWithUser:v8 password:v9 persistence:1];
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)javaScriptAlertDialogWithMessage:(id)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SFBasicDialog);
  v8 = v5;
  if ([v8 length] > 0x7D0)
  {
    v9 = [v8 substringToIndex:2000];
  }

  else
  {
    v9 = [v8 copy];
  }

  v10 = v9;

  [(SFBasicDialog *)v7 setMessage:v10];
  v11 = _WBSLocalizedString();
  v12 = [SFDialogAction actionWithTitle:v11 activatingKeyboardShortcut:1 type:1];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(SFBasicDialog *)v7 setActions:v13];

  [(SFBasicDialog *)v7 setCompletionHandlerBlocksWebProcess:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__SFDialog_javaScriptAlertDialogWithMessage_completionHandler___block_invoke;
  v16[3] = &unk_1E721DAD8;
  v17 = v6;
  v14 = v6;
  [(SFBasicDialog *)v7 setCompletionHandler:v16];

  return v7;
}

+ (id)javaScriptConfirmDialogWithMessage:(id)a3 completionHandler:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SFBasicDialog);
  v8 = v5;
  if ([v8 length] > 0x7D0)
  {
    v9 = [v8 substringToIndex:2000];
  }

  else
  {
    v9 = [v8 copy];
  }

  v10 = v9;

  [(SFBasicDialog *)v7 setMessage:v10];
  v11 = _WBSLocalizedString();
  v12 = [SFDialogAction actionWithTitle:v11 activatingKeyboardShortcut:2 type:0];
  v20[0] = v12;
  v13 = _WBSLocalizedString();
  v14 = [SFDialogAction actionWithTitle:v13 activatingKeyboardShortcut:1 type:1];
  v20[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [(SFBasicDialog *)v7 setActions:v15];

  [(SFBasicDialog *)v7 setCompletionHandlerBlocksWebProcess:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__SFDialog_javaScriptConfirmDialogWithMessage_completionHandler___block_invoke;
  v18[3] = &unk_1E721DAD8;
  v19 = v6;
  v16 = v6;
  [(SFBasicDialog *)v7 setCompletionHandler:v18];

  return v7;
}

+ (id)javaScriptPromptDialogWithMessage:(id)a3 defaultText:(id)a4 completionHandler:(id)a5
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(SFBasicDialog);
  v11 = v7;
  if ([v11 length] > 0x7D0)
  {
    v12 = [v11 substringToIndex:2000];
  }

  else
  {
    v12 = [v11 copy];
  }

  v13 = v12;

  [(SFBasicDialog *)v10 setMessage:v13];
  v14 = v8;
  if ([v14 length] > 0x3E8)
  {
    v15 = [v14 substringToIndex:1000];
  }

  else
  {
    v15 = [v14 copy];
  }

  v16 = v15;

  [(SFBasicDialog *)v10 setDefaultText:v16];
  v17 = _WBSLocalizedString();
  v18 = [SFDialogAction actionWithTitle:v17 activatingKeyboardShortcut:2 type:0];
  v26[0] = v18;
  v19 = _WBSLocalizedString();
  v20 = [SFDialogAction actionWithTitle:v19 activatingKeyboardShortcut:1 type:1];
  v26[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  [(SFBasicDialog *)v10 setActions:v21];

  [(SFBasicDialog *)v10 setCompletionHandlerBlocksWebProcess:1];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __76__SFDialog_javaScriptPromptDialogWithMessage_defaultText_completionHandler___block_invoke;
  v24[3] = &unk_1E721DAD8;
  v25 = v9;
  v22 = v9;
  [(SFBasicDialog *)v10 setCompletionHandler:v24];

  return v10;
}

uint64_t __76__SFDialog_javaScriptPromptDialogWithMessage_defaultText_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    a3 = 0;
  }

  return (*(v3 + 16))(v3, a3);
}

+ (id)telephonyNavigationDialogWithCompletionHandler:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(SFBasicDialog);
  v5 = _WBSLocalizedString();
  [(SFBasicDialog *)v4 setMessage:v5];

  v6 = _WBSLocalizedString();
  v7 = [SFDialogAction actionWithTitle:v6 activatingKeyboardShortcut:2 type:0];
  v15[0] = v7;
  v8 = _WBSLocalizedString();
  v9 = [SFDialogAction actionWithTitle:v8 activatingKeyboardShortcut:1 type:1];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [(SFBasicDialog *)v4 setActions:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__SFDialog_telephonyNavigationDialogWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E721DAD8;
  v14 = v3;
  v11 = v3;
  [(SFBasicDialog *)v4 setCompletionHandler:v13];

  return v4;
}

+ (id)dialogWithWebUIAlert:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SFWebUIDialog alloc] initWithAlert:v6 completionHandler:v5];

  return v7;
}

+ (id)_dialogWithTitle:(id)a3 message:(id)a4 primaryAction:(id)a5 secondaryAction:(id)a6 applicationModal:(BOOL)a7 completionHandler:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = v18;
  if (v18)
  {
    aBlock = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __102__SFDialog__dialogWithTitle_message_primaryAction_secondaryAction_applicationModal_completionHandler___block_invoke;
    v26 = &unk_1E721DB00;
    v27 = v18;
    v20 = _Block_copy(&aBlock);
  }

  else
  {
    v20 = 0;
  }

  v21 = [a1 _dialogWithTitle:v14 message:v15 acceptAction:v16 secondaryAction:0 cancelAction:v17 applicationModal:v9 completionHandler:{v20, aBlock, v24, v25, v26}];

  return v21;
}

+ (id)_dialogWithTitle:(id)a3 message:(id)a4 acceptAction:(id)a5 secondaryAction:(id)a6 cancelAction:(id)a7 applicationModal:(BOOL)a8 completionHandler:(id)a9
{
  v9 = a8;
  v14 = a6;
  v15 = a7;
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(SFBasicDialog);
  v21 = v20;
  if (v9)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  [(SFBasicDialog *)v20 setTitle:v22];

  [(SFBasicDialog *)v21 setMessage:v18];
  v23 = MEMORY[0x1E695DF70];
  v24 = [SFDialogAction actionWithTitle:v17 activatingKeyboardShortcut:2 type:0];

  v25 = [v23 arrayWithObject:v24];

  if (v14)
  {
    v26 = [SFDialogAction actionWithTitle:v14 activatingKeyboardShortcut:3 type:1];
    [v25 addObject:v26];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __114__SFDialog__dialogWithTitle_message_acceptAction_secondaryAction_cancelAction_applicationModal_completionHandler___block_invoke;
  v30[3] = &unk_1E721DAD8;
  v27 = v16;
  v31 = v27;
  [(SFBasicDialog *)v21 setCompletionHandler:v30];
  if (v15)
  {
    v28 = [SFDialogAction actionWithTitle:v15 activatingKeyboardShortcut:1 type:1];
    [v25 addObject:v28];
  }

  [(SFBasicDialog *)v21 setActions:v25];
  [(SFBasicDialog *)v21 setPresentationStyle:v9];

  return v21;
}

uint64_t __114__SFDialog__dialogWithTitle_message_acceptAction_secondaryAction_cancelAction_applicationModal_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)formSubmissionDialogWithMessage:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _WBSLocalizedString();
  v8 = _WBSLocalizedString();
  v9 = [SFDialog _dialogWithTitle:v6 message:0 primaryAction:v7 secondaryAction:v8 applicationModal:1 completionHandler:v5];

  return v9;
}

+ (id)noFeedAppDialogWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  v8 = [SFDialog _dialogWithTitle:v5 message:v4 primaryAction:v6 secondaryAction:v7 applicationModal:1 completionHandler:v3];

  return v8;
}

+ (id)redirectDialogWithMessage:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _WBSLocalizedString();
  v8 = _WBSLocalizedString();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__SFDialog_redirectDialogWithMessage_completionHandler___block_invoke;
  v12[3] = &unk_1E721BA70;
  v13 = v5;
  v9 = v5;
  v10 = [SFDialog _dialogWithTitle:0 message:v6 primaryAction:v7 secondaryAction:v8 applicationModal:0 completionHandler:v12];

  return v10;
}

uint64_t __56__SFDialog_redirectDialogWithMessage_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return (*(v2 + 16))(v2, v3);
}

+ (id)_appLinkRedirectDialogWithMessage:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _WBSLocalizedString();
  v8 = _WBSLocalizedString();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__SFDialog__appLinkRedirectDialogWithMessage_completionHandler___block_invoke;
  v12[3] = &unk_1E721DB00;
  v13 = v5;
  v9 = v5;
  v10 = [SFDialog _dialogWithTitle:0 message:v6 acceptAction:v7 secondaryAction:0 cancelAction:v8 applicationModal:0 completionHandler:v12];

  return v10;
}

uint64_t __64__SFDialog__appLinkRedirectDialogWithMessage_completionHandler___block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 >= 2)
  {
    a2 = 2;
  }

  return (*(v2 + 16))(v2, a2);
}

+ (id)continuePrintingDialogWithTitle:(id)a3 message:(id)a4 applicationModal:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = _WBSLocalizedString();
  v13 = _WBSLocalizedString();
  v14 = [SFDialog _dialogWithTitle:v11 message:v10 primaryAction:v12 secondaryAction:v13 applicationModal:v6 completionHandler:v9];

  return v14;
}

+ (id)printBlockedDialogWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = _WBSLocalizedString();
  v7 = [SFDialog _dialogWithTitle:0 message:v4 primaryAction:v5 secondaryAction:v6 applicationModal:0 completionHandler:v3];

  return v7;
}

+ (id)genericErrorDialogWithTitle:(id)a3 message:(id)a4 applicationModal:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = _WBSLocalizedString();
  v10 = [SFDialog _dialogWithTitle:v8 message:v7 primaryAction:v9 secondaryAction:0 applicationModal:v5 completionHandler:0];

  return v10;
}

+ (id)pageLoadErrorWithMessage:(id)a3
{
  v3 = a3;
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = [SFDialog _dialogWithTitle:v4 message:v3 primaryAction:v5 secondaryAction:0 applicationModal:0 completionHandler:0];

  return v6;
}

+ (id)userMediaPermissionDialogWithHost:(id)a3 permissions:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  switch(a4)
  {
    case 1uLL:
      v10 = MEMORY[0x1E696AEC0];
      goto LABEL_7;
    case 2uLL:
      v10 = MEMORY[0x1E696AEC0];
      goto LABEL_7;
    case 3uLL:
      v10 = MEMORY[0x1E696AEC0];
LABEL_7:
      v11 = _WBSLocalizedString();
      v12 = [v10 stringWithFormat:v11, v8];

      goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v13 = _WBSLocalizedString();
  v14 = _WBSLocalizedString();
  v15 = [a1 _dialogWithTitle:v12 message:0 primaryAction:v13 secondaryAction:v14 applicationModal:1 completionHandler:v9];

  return v15;
}

+ (id)blockedPopupWindowDialogWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _WBSLocalizedString();
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  v8 = [a1 _dialogWithTitle:0 message:v5 primaryAction:v6 secondaryAction:v7 applicationModal:0 completionHandler:v4];

  [v8 setCompletionHandlerBlocksWebProcess:1];

  return v8;
}

+ (id)permanentlyAcceptCertificateDialogWithAcceptanceHandler:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(SFBasicDialog);
  v5 = [MEMORY[0x1E69C8EE8] permanentAcceptanceConfirmationTitle];
  [(SFBasicDialog *)v4 setTitle:v5];

  v6 = [MEMORY[0x1E69C8EE8] permanentAcceptanceConfirmationButtonTitle];
  v7 = [SFDialogAction actionWithTitle:v6 activatingKeyboardShortcut:0 type:2];
  v18[0] = v7;
  v8 = _WBSLocalizedString();
  v9 = [SFDialogAction actionWithTitle:v8 activatingKeyboardShortcut:1 type:1];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [(SFBasicDialog *)v4 setActions:v10];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __68__SFDialog_permanentlyAcceptCertificateDialogWithAcceptanceHandler___block_invoke;
  v16 = &unk_1E721DAD8;
  v17 = v3;
  v11 = v3;
  [(SFBasicDialog *)v4 setCompletionHandler:&v13];
  [(SFBasicDialog *)v4 setPresentationStyle:1, v13, v14, v15, v16];
  [(SFBasicDialog *)v4 setAlertControllerPresentsAsActionSheet:_SFDeviceIsPad() ^ 1];

  return v4;
}

uint64_t __68__SFDialog_permanentlyAcceptCertificateDialogWithAcceptanceHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

+ (id)requestStorageAccessDialogForDomain:(id)a3 underCurrentDomain:(id)a4 extensionsController:(id)a5 completionHandler:(id)a6
{
  v35[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31 = a6;
  v12 = objc_alloc_init(SFBasicDialog);
  v13 = [v11 webExtensionForBaseURIHost:v9];
  v32 = v13;
  if (v13)
  {
    v14 = [v13 displayName];

    v9 = v14;
  }

  v15 = [v11 webExtensionForBaseURIHost:v10];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 displayName];

    v10 = v17;
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = _WBSLocalizedString();
  v20 = [v18 stringWithFormat:v19, v9, v10];
  [(SFBasicDialog *)v12 setTitle:v20];

  v21 = MEMORY[0x1E696AEC0];
  v22 = _WBSLocalizedString();
  v23 = [v21 stringWithFormat:v22, v9];
  [(SFBasicDialog *)v12 setMessage:v23];

  v24 = _WBSLocalizedString();
  v25 = [SFDialogAction actionWithTitle:v24 activatingKeyboardShortcut:1 type:1];
  v35[0] = v25;
  v26 = _WBSLocalizedString();
  v27 = [SFDialogAction actionWithTitle:v26 activatingKeyboardShortcut:2 type:0];
  v35[1] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  [(SFBasicDialog *)v12 setActions:v28];

  [(SFBasicDialog *)v12 setPresentationStyle:1];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __106__SFDialog_requestStorageAccessDialogForDomain_underCurrentDomain_extensionsController_completionHandler___block_invoke;
  v33[3] = &unk_1E721DAD8;
  v34 = v31;
  v29 = v31;
  [(SFBasicDialog *)v12 setCompletionHandler:v33];

  return v12;
}

uint64_t __106__SFDialog_requestStorageAccessDialogForDomain_underCurrentDomain_extensionsController_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 1);
  }

  return result;
}

+ (id)increaseDatabaseQuotaDialogForOrigin:(id)a3 newQuota:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E695DFF8];
  v9 = a5;
  v10 = [v8 URLWithString:v7];
  if ([v10 safari_isSafariWebExtensionURL])
  {
    v11 = [v10 safari_userVisibleHostOrExtensionDisplayName];

    v7 = v11;
  }

  v12 = [MEMORY[0x1E696AAF0] stringFromByteCount:a4 countStyle:3];
  v13 = MEMORY[0x1E696AEC0];
  v14 = _WBSLocalizedString();
  v15 = [MEMORY[0x1E69DC938] currentDevice];
  v16 = [v15 localizedModel];
  v17 = [v13 stringWithFormat:v14, v7, v12, v16];

  v18 = _WBSLocalizedString();
  v19 = _WBSLocalizedString();
  v20 = _WBSLocalizedString();
  v21 = [SFDialog _dialogWithTitle:v18 message:v17 primaryAction:v20 secondaryAction:v19 applicationModal:1 completionHandler:v9];

  return v21;
}

+ (id)websiteLocationDialogForURL:(id)a3 originUserVisibleName:(id)a4 preciseLocation:(BOOL)a5 browserPersona:(int64_t)a6 completionHandler:(id)a7
{
  v41 = a5;
  v45[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a7;
  v12 = [v9 safari_userVisibleHostWithoutWWWSubdomain];
  v42 = v10;
  if (![v12 length])
  {
    v13 = v10;

    v12 = v13;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = _WBSLocalizedString();
  v16 = [v14 stringWithFormat:v15, v12];

  v17 = MEMORY[0x1E696AEC0];
  v18 = _WBSLocalizedString();
  v19 = [v17 stringWithFormat:v18, v12];

  v40 = v9;
  if ([v9 safari_isSafariWebExtensionURL])
  {
    v20 = [v9 safari_userVisibleHostOrExtensionDisplayName];

    v21 = MEMORY[0x1E696AEC0];
    v22 = _WBSLocalizedString();
    v23 = [v21 stringWithFormat:v22];

    v24 = MEMORY[0x1E696AEC0];
    v25 = _WBSLocalizedString();
    v26 = [v24 stringWithFormat:v25];

    v19 = v26;
    v16 = v23;
    v12 = v20;
  }

  v27 = MEMORY[0x1E696AEC0];
  v28 = _WBSLocalizedString();
  v39 = [v27 stringWithFormat:v28, v12];

  v29 = _WBSLocalizedString();
  v30 = _WBSLocalizedString();
  v31 = objc_alloc_init(SFBasicDialog);
  [(SFBasicDialog *)v31 setTitle:v39];
  if (v41)
  {
    v32 = v16;
  }

  else
  {
    v32 = v19;
  }

  [(SFBasicDialog *)v31 setMessage:v32];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __111__SFDialog_websiteLocationDialogForURL_originUserVisibleName_preciseLocation_browserPersona_completionHandler___block_invoke;
  v43[3] = &unk_1E721DAD8;
  v44 = v11;
  v33 = v11;
  [(SFBasicDialog *)v31 setCompletionHandler:v43];
  v34 = [SFDialogAction actionWithTitle:v30 activatingKeyboardShortcut:1 type:0];
  v45[0] = v34;
  v35 = [SFDialogAction actionWithTitle:v29 activatingKeyboardShortcut:2 type:0];
  v45[1] = v35;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v37 = v36 = v16;
  [(SFBasicDialog *)v31 setActions:v37];

  [(SFBasicDialog *)v31 setPresentationStyle:1];

  return v31;
}

uint64_t __111__SFDialog_websiteLocationDialogForURL_originUserVisibleName_preciseLocation_browserPersona_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 1);
  }

  return result;
}

+ (id)webExtensionPermissionDialogWithExtension:(id)a3 domains:(id)a4 showMoreOptionsForAlwaysAllow:(BOOL)a5 includeDenyButton:(BOOL)a6 completionHandler:(id)a7
{
  v40[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [v10 displayShortName];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke;
  v37[3] = &unk_1E721DB28;
  v14 = v11;
  v38 = v14;
  v30 = v13;
  v39 = v30;
  v15 = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke(v37);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke_2;
  v34[3] = &unk_1E721DB28;
  v28 = v14;
  v35 = v28;
  v27 = v10;
  v36 = v27;
  v16 = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke_2(v34);
  v17 = objc_alloc_init(SFBasicDialog);
  [(SFBasicDialog *)v17 setPresentationStyle:1];
  v29 = v15;
  [(SFBasicDialog *)v17 setTitle:v15];
  [(SFBasicDialog *)v17 setMessage:v16];
  LOBYTE(v10) = a6;
  v18 = _WBSLocalizedString();
  v19 = [SFDialogAction actionWithTitle:v18 activatingKeyboardShortcut:1 type:1];

  v20 = _WBSLocalizedString();
  v21 = _WBSLocalizedString();
  v22 = [SFDialogAction actionWithTitle:v21 activatingKeyboardShortcut:2 type:0 isPreferredAction:1];
  v40[0] = v22;
  v23 = [SFDialogAction actionWithTitle:v20 activatingKeyboardShortcut:3 type:0];
  v40[1] = v23;
  v40[2] = v19;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  [(SFBasicDialog *)v17 setActions:v24];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke_3;
  v31[3] = &unk_1E721DB50;
  v33 = v10;
  v32 = v12;
  v25 = v12;
  [(SFBasicDialog *)v17 setCompletionHandler:v31];
  [(SFBasicDialog *)v17 setCompletionHandlerBlocksWebProcess:1];

  return v17;
}

id __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2 == 3)
  {
    v12 = MEMORY[0x1E696AEC0];
    v4 = _WBSLocalizedString();
    v13 = *(a1 + 40);
    v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v10 = [*(a1 + 32) objectAtIndexedSubscript:1];
    v14 = [*(a1 + 32) objectAtIndexedSubscript:2];
    v7 = [v12 localizedStringWithFormat:v4, v13, v6, v10, v14];
  }

  else
  {
    if (v2 == 2)
    {
      v8 = MEMORY[0x1E696AEC0];
      v4 = _WBSLocalizedString();
      v9 = *(a1 + 40);
      v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v10 = [*(a1 + 32) objectAtIndexedSubscript:1];
      v11 = [v8 stringWithFormat:v4, v9, v6, v10];
    }

    else
    {
      if (v2 == 1)
      {
        v3 = MEMORY[0x1E696AEC0];
        v4 = _WBSLocalizedString();
        v5 = *(a1 + 40);
        v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
        v7 = [v3 stringWithFormat:v4, v5, v6];
        goto LABEL_10;
      }

      v15 = [*(a1 + 32) count] - 2;
      v16 = MEMORY[0x1E696AEC0];
      v4 = _WBSLocalizedString();
      v17 = *(a1 + 40);
      v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v10 = [*(a1 + 32) objectAtIndexedSubscript:1];
      v11 = [v16 localizedStringWithFormat:v4, v17, v6, v10, v15];
    }

    v7 = v11;
  }

LABEL_10:

  return v7;
}

id __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if ((v2 - 2) < 2)
  {
    if ([*(a1 + 40) hasAbilityToInjectContentIntoWebpages])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
    if ([*(a1 + 40) hasAbilityToInjectContentIntoWebpages])
    {
      goto LABEL_12;
    }

LABEL_7:
    [*(a1 + 40) hasDeclarativeNetRequestHostAccessPermission];
LABEL_12:
    v4 = _WBSLocalizedString();
    goto LABEL_14;
  }

  if (![*(a1 + 40) hasAbilityToInjectContentIntoWebpages])
  {
    [*(a1 + 40) hasDeclarativeNetRequestHostAccessPermission];
  }

  v3 = MEMORY[0x1E696AD60];
  v5 = _WBSLocalizedString();
  v4 = [v3 stringWithString:v5];

  [v4 appendString:@"\n"];
  v6 = [*(a1 + 32) componentsJoinedByString:@"\n"];
  [v4 appendString:v6];

LABEL_14:

  return v4;
}

void __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  if (a2 <= 1)
  {
    if (!a2 || a2 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    __break(0xC471u);
    return;
  }

  if (a2 != 2 && a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();
}

+ (id)webExtensionAlwaysAllowDialogWithExtension:(id)a3 domains:(id)a4 includeDenyButton:(BOOL)a5 completionHandler:(id)a6
{
  v31[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = a4;
  v12 = objc_alloc_init(SFBasicDialog);
  v13 = [v9 displayShortName];
  [(SFBasicDialog *)v12 setPresentationStyle:1];
  v14 = MEMORY[0x1E696AEC0];
  v15 = _WBSLocalizedString();
  v27 = v13;
  v16 = [v14 stringWithFormat:v15, v13];
  [(SFBasicDialog *)v12 setTitle:v16];

  if (![v9 hasAbilityToInjectContentIntoWebpages])
  {
    [v9 hasDeclarativeNetRequestHostAccessPermission];
  }

  v17 = _WBSLocalizedString();
  [(SFBasicDialog *)v12 setMessage:v17];

  v18 = _WBSLocalizedString();
  v19 = [SFDialogAction actionWithTitle:v18 activatingKeyboardShortcut:1 type:0];

  [v11 count];
  v20 = _WBSLocalizedString();
  v21 = [SFDialogAction actionWithTitle:v20 activatingKeyboardShortcut:2 type:0];
  v31[0] = v21;
  v22 = _WBSLocalizedString();
  v23 = [SFDialogAction actionWithTitle:v22 activatingKeyboardShortcut:3 type:0];
  v31[1] = v23;
  v31[2] = v19;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  [(SFBasicDialog *)v12 setActions:v24];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __99__SFDialog_webExtensionAlwaysAllowDialogWithExtension_domains_includeDenyButton_completionHandler___block_invoke;
  v28[3] = &unk_1E721DB50;
  v29 = v10;
  v30 = a5;
  v25 = v10;
  [(SFBasicDialog *)v12 setCompletionHandler:v28];
  [(SFBasicDialog *)v12 setCompletionHandlerBlocksWebProcess:1];

  return v12;
}

void __99__SFDialog_webExtensionAlwaysAllowDialogWithExtension_domains_includeDenyButton_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v8 = *(*(a1 + 32) + 16);
      goto LABEL_10;
    }

    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = *(*(a1 + 32) + 16);
      goto LABEL_10;
    }

LABEL_13:
    __break(0xC471u);
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v8 = *(*(a1 + 32) + 16);
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v8 = *(*(a1 + 32) + 16);
LABEL_10:
  v8();
}

+ (id)webExtensionDisabledBecauseItRequestsAdditionalPermissionsDialogForExtension:(id)a3 completionHandler:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SFBasicDialog);
  [(SFBasicDialog *)v7 setPresentationStyle:1];
  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  v10 = [v8 stringWithFormat:v9, v6];

  [(SFBasicDialog *)v7 setTitle:v10];
  v11 = _WBSLocalizedString();
  [(SFBasicDialog *)v7 setMessage:v11];

  v12 = _WBSLocalizedString();
  v13 = [SFDialogAction actionWithTitle:v12 activatingKeyboardShortcut:3 type:0];
  v21[0] = v13;
  v14 = _WBSLocalizedString();
  v15 = [SFDialogAction actionWithTitle:v14 activatingKeyboardShortcut:2 type:0];
  v21[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [(SFBasicDialog *)v7 setActions:v16];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __107__SFDialog_webExtensionDisabledBecauseItRequestsAdditionalPermissionsDialogForExtension_completionHandler___block_invoke;
  v19[3] = &unk_1E721DAD8;
  v20 = v5;
  v17 = v5;
  [(SFBasicDialog *)v7 setCompletionHandler:v19];

  return v7;
}

void __107__SFDialog_webExtensionDisabledBecauseItRequestsAdditionalPermissionsDialogForExtension_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  if (!a2 || a2 == 0x7FFFFFFFFFFFFFFFLL || a2 == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    __break(0xC471u);
  }
}

- (SFDialogController)dialogController
{
  WeakRetained = objc_loadWeakRetained(&self->_dialogController);

  return WeakRetained;
}

@end