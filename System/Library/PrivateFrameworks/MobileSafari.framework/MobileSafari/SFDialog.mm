@interface SFDialog
+ (id)_appLinkRedirectDialogWithMessage:(id)message completionHandler:(id)handler;
+ (id)_dialogWithTitle:(id)title message:(id)message acceptAction:(id)action secondaryAction:(id)secondaryAction cancelAction:(id)cancelAction applicationModal:(BOOL)modal completionHandler:(id)handler;
+ (id)_dialogWithTitle:(id)title message:(id)message primaryAction:(id)action secondaryAction:(id)secondaryAction applicationModal:(BOOL)modal completionHandler:(id)handler;
+ (id)authenticationDialogWithAuthenticationChallenge:(id)challenge committedURL:(id)l completionHandler:(id)handler;
+ (id)blockedPopupWindowDialogWithCompletionHandler:(id)handler;
+ (id)continuePrintingDialogWithTitle:(id)title message:(id)message applicationModal:(BOOL)modal completionHandler:(id)handler;
+ (id)dialogWithWebUIAlert:(id)alert completionHandler:(id)handler;
+ (id)formSubmissionDialogWithMessage:(id)message completionHandler:(id)handler;
+ (id)genericErrorDialogWithTitle:(id)title message:(id)message applicationModal:(BOOL)modal;
+ (id)increaseDatabaseQuotaDialogForOrigin:(id)origin newQuota:(int64_t)quota completionHandler:(id)handler;
+ (id)javaScriptAlertDialogWithMessage:(id)message completionHandler:(id)handler;
+ (id)javaScriptConfirmDialogWithMessage:(id)message completionHandler:(id)handler;
+ (id)javaScriptPromptDialogWithMessage:(id)message defaultText:(id)text completionHandler:(id)handler;
+ (id)noFeedAppDialogWithCompletionHandler:(id)handler;
+ (id)pageLoadErrorWithMessage:(id)message;
+ (id)permanentlyAcceptCertificateDialogWithAcceptanceHandler:(id)handler;
+ (id)printBlockedDialogWithCompletionHandler:(id)handler;
+ (id)redirectDialogWithMessage:(id)message completionHandler:(id)handler;
+ (id)requestStorageAccessDialogForDomain:(id)domain underCurrentDomain:(id)currentDomain extensionsController:(id)controller completionHandler:(id)handler;
+ (id)telephonyNavigationDialogWithCompletionHandler:(id)handler;
+ (id)userMediaPermissionDialogWithHost:(id)host permissions:(unint64_t)permissions completionHandler:(id)handler;
+ (id)webExtensionAlwaysAllowDialogWithExtension:(id)extension domains:(id)domains includeDenyButton:(BOOL)button completionHandler:(id)handler;
+ (id)webExtensionDisabledBecauseItRequestsAdditionalPermissionsDialogForExtension:(id)extension completionHandler:(id)handler;
+ (id)webExtensionPermissionDialogWithExtension:(id)extension domains:(id)domains showMoreOptionsForAlwaysAllow:(BOOL)allow includeDenyButton:(BOOL)button completionHandler:(id)handler;
+ (id)websiteLocationDialogForURL:(id)l originUserVisibleName:(id)name preciseLocation:(BOOL)location browserPersona:(int64_t)persona completionHandler:(id)handler;
- (SFDialogController)dialogController;
- (void)completeWithResponse:(id)response;
@end

@implementation SFDialog

- (void)completeWithResponse:(id)response
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

    [(SFDialog *)self didCompleteWithResponse:response];
  }
}

+ (id)authenticationDialogWithAuthenticationChallenge:(id)challenge committedURL:(id)l completionHandler:(id)handler
{
  v32[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  challengeCopy = challenge;
  failureResponse = [challengeCopy failureResponse];
  v11 = [failureResponse URL];

  v12 = objc_alloc_init(SFBasicDialog);
  v13 = MEMORY[0x1E696AEC0];
  v14 = _WBSLocalizedString();
  safari_userVisibleHost = [v11 safari_userVisibleHost];
  v16 = [v13 stringWithFormat:v14, safari_userVisibleHost];
  [(SFBasicDialog *)v12 setTitle:v16];

  protectionSpace = [challengeCopy protectionSpace];

  protocol = [protectionSpace protocol];
  [protocol isEqualToString:*MEMORY[0x1E696A9B0]];
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

  if (lCopy)
  {
    v27 = [lCopy safari_hasSameOriginAsURL:v11] ^ 1;
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
  v31 = handlerCopy;
  v28 = handlerCopy;
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

+ (id)javaScriptAlertDialogWithMessage:(id)message completionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  v7 = objc_alloc_init(SFBasicDialog);
  v8 = messageCopy;
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
  v17 = handlerCopy;
  v14 = handlerCopy;
  [(SFBasicDialog *)v7 setCompletionHandler:v16];

  return v7;
}

+ (id)javaScriptConfirmDialogWithMessage:(id)message completionHandler:(id)handler
{
  v20[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  v7 = objc_alloc_init(SFBasicDialog);
  v8 = messageCopy;
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
  v19 = handlerCopy;
  v16 = handlerCopy;
  [(SFBasicDialog *)v7 setCompletionHandler:v18];

  return v7;
}

+ (id)javaScriptPromptDialogWithMessage:(id)message defaultText:(id)text completionHandler:(id)handler
{
  v26[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  textCopy = text;
  handlerCopy = handler;
  v10 = objc_alloc_init(SFBasicDialog);
  v11 = messageCopy;
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
  v14 = textCopy;
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
  v25 = handlerCopy;
  v22 = handlerCopy;
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

+ (id)telephonyNavigationDialogWithCompletionHandler:(id)handler
{
  v15[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
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
  v14 = handlerCopy;
  v11 = handlerCopy;
  [(SFBasicDialog *)v4 setCompletionHandler:v13];

  return v4;
}

+ (id)dialogWithWebUIAlert:(id)alert completionHandler:(id)handler
{
  handlerCopy = handler;
  alertCopy = alert;
  v7 = [[SFWebUIDialog alloc] initWithAlert:alertCopy completionHandler:handlerCopy];

  return v7;
}

+ (id)_dialogWithTitle:(id)title message:(id)message primaryAction:(id)action secondaryAction:(id)secondaryAction applicationModal:(BOOL)modal completionHandler:(id)handler
{
  modalCopy = modal;
  titleCopy = title;
  messageCopy = message;
  actionCopy = action;
  secondaryActionCopy = secondaryAction;
  handlerCopy = handler;
  v19 = handlerCopy;
  if (handlerCopy)
  {
    aBlock = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __102__SFDialog__dialogWithTitle_message_primaryAction_secondaryAction_applicationModal_completionHandler___block_invoke;
    v26 = &unk_1E721DB00;
    v27 = handlerCopy;
    v20 = _Block_copy(&aBlock);
  }

  else
  {
    v20 = 0;
  }

  v21 = [self _dialogWithTitle:titleCopy message:messageCopy acceptAction:actionCopy secondaryAction:0 cancelAction:secondaryActionCopy applicationModal:modalCopy completionHandler:{v20, aBlock, v24, v25, v26}];

  return v21;
}

+ (id)_dialogWithTitle:(id)title message:(id)message acceptAction:(id)action secondaryAction:(id)secondaryAction cancelAction:(id)cancelAction applicationModal:(BOOL)modal completionHandler:(id)handler
{
  modalCopy = modal;
  secondaryActionCopy = secondaryAction;
  cancelActionCopy = cancelAction;
  handlerCopy = handler;
  actionCopy = action;
  messageCopy = message;
  titleCopy = title;
  v20 = objc_alloc_init(SFBasicDialog);
  v21 = v20;
  if (modalCopy)
  {
    v22 = titleCopy;
  }

  else
  {
    v22 = 0;
  }

  [(SFBasicDialog *)v20 setTitle:v22];

  [(SFBasicDialog *)v21 setMessage:messageCopy];
  v23 = MEMORY[0x1E695DF70];
  v24 = [SFDialogAction actionWithTitle:actionCopy activatingKeyboardShortcut:2 type:0];

  v25 = [v23 arrayWithObject:v24];

  if (secondaryActionCopy)
  {
    v26 = [SFDialogAction actionWithTitle:secondaryActionCopy activatingKeyboardShortcut:3 type:1];
    [v25 addObject:v26];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __114__SFDialog__dialogWithTitle_message_acceptAction_secondaryAction_cancelAction_applicationModal_completionHandler___block_invoke;
  v30[3] = &unk_1E721DAD8;
  v27 = handlerCopy;
  v31 = v27;
  [(SFBasicDialog *)v21 setCompletionHandler:v30];
  if (cancelActionCopy)
  {
    v28 = [SFDialogAction actionWithTitle:cancelActionCopy activatingKeyboardShortcut:1 type:1];
    [v25 addObject:v28];
  }

  [(SFBasicDialog *)v21 setActions:v25];
  [(SFBasicDialog *)v21 setPresentationStyle:modalCopy];

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

+ (id)formSubmissionDialogWithMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v7 = _WBSLocalizedString();
  v8 = _WBSLocalizedString();
  v9 = [SFDialog _dialogWithTitle:messageCopy message:0 primaryAction:v7 secondaryAction:v8 applicationModal:1 completionHandler:handlerCopy];

  return v9;
}

+ (id)noFeedAppDialogWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  v8 = [SFDialog _dialogWithTitle:v5 message:v4 primaryAction:v6 secondaryAction:v7 applicationModal:1 completionHandler:handlerCopy];

  return v8;
}

+ (id)redirectDialogWithMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v7 = _WBSLocalizedString();
  v8 = _WBSLocalizedString();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__SFDialog_redirectDialogWithMessage_completionHandler___block_invoke;
  v12[3] = &unk_1E721BA70;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [SFDialog _dialogWithTitle:0 message:messageCopy primaryAction:v7 secondaryAction:v8 applicationModal:0 completionHandler:v12];

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

+ (id)_appLinkRedirectDialogWithMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v7 = _WBSLocalizedString();
  v8 = _WBSLocalizedString();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__SFDialog__appLinkRedirectDialogWithMessage_completionHandler___block_invoke;
  v12[3] = &unk_1E721DB00;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [SFDialog _dialogWithTitle:0 message:messageCopy acceptAction:v7 secondaryAction:0 cancelAction:v8 applicationModal:0 completionHandler:v12];

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

+ (id)continuePrintingDialogWithTitle:(id)title message:(id)message applicationModal:(BOOL)modal completionHandler:(id)handler
{
  modalCopy = modal;
  handlerCopy = handler;
  messageCopy = message;
  titleCopy = title;
  v12 = _WBSLocalizedString();
  v13 = _WBSLocalizedString();
  v14 = [SFDialog _dialogWithTitle:titleCopy message:messageCopy primaryAction:v12 secondaryAction:v13 applicationModal:modalCopy completionHandler:handlerCopy];

  return v14;
}

+ (id)printBlockedDialogWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = _WBSLocalizedString();
  v7 = [SFDialog _dialogWithTitle:0 message:v4 primaryAction:v5 secondaryAction:v6 applicationModal:0 completionHandler:handlerCopy];

  return v7;
}

+ (id)genericErrorDialogWithTitle:(id)title message:(id)message applicationModal:(BOOL)modal
{
  modalCopy = modal;
  messageCopy = message;
  titleCopy = title;
  v9 = _WBSLocalizedString();
  v10 = [SFDialog _dialogWithTitle:titleCopy message:messageCopy primaryAction:v9 secondaryAction:0 applicationModal:modalCopy completionHandler:0];

  return v10;
}

+ (id)pageLoadErrorWithMessage:(id)message
{
  messageCopy = message;
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = [SFDialog _dialogWithTitle:v4 message:messageCopy primaryAction:v5 secondaryAction:0 applicationModal:0 completionHandler:0];

  return v6;
}

+ (id)userMediaPermissionDialogWithHost:(id)host permissions:(unint64_t)permissions completionHandler:(id)handler
{
  hostCopy = host;
  handlerCopy = handler;
  switch(permissions)
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
      hostCopy = [v10 stringWithFormat:v11, hostCopy];

      goto LABEL_9;
  }

  hostCopy = 0;
LABEL_9:
  v13 = _WBSLocalizedString();
  v14 = _WBSLocalizedString();
  v15 = [self _dialogWithTitle:hostCopy message:0 primaryAction:v13 secondaryAction:v14 applicationModal:1 completionHandler:handlerCopy];

  return v15;
}

+ (id)blockedPopupWindowDialogWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _WBSLocalizedString();
  v6 = _WBSLocalizedString();
  v7 = _WBSLocalizedString();
  v8 = [self _dialogWithTitle:0 message:v5 primaryAction:v6 secondaryAction:v7 applicationModal:0 completionHandler:handlerCopy];

  [v8 setCompletionHandlerBlocksWebProcess:1];

  return v8;
}

+ (id)permanentlyAcceptCertificateDialogWithAcceptanceHandler:(id)handler
{
  v18[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v4 = objc_alloc_init(SFBasicDialog);
  permanentAcceptanceConfirmationTitle = [MEMORY[0x1E69C8EE8] permanentAcceptanceConfirmationTitle];
  [(SFBasicDialog *)v4 setTitle:permanentAcceptanceConfirmationTitle];

  permanentAcceptanceConfirmationButtonTitle = [MEMORY[0x1E69C8EE8] permanentAcceptanceConfirmationButtonTitle];
  v7 = [SFDialogAction actionWithTitle:permanentAcceptanceConfirmationButtonTitle activatingKeyboardShortcut:0 type:2];
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
  v17 = handlerCopy;
  v11 = handlerCopy;
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

+ (id)requestStorageAccessDialogForDomain:(id)domain underCurrentDomain:(id)currentDomain extensionsController:(id)controller completionHandler:(id)handler
{
  v35[2] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  currentDomainCopy = currentDomain;
  controllerCopy = controller;
  handlerCopy = handler;
  v12 = objc_alloc_init(SFBasicDialog);
  v13 = [controllerCopy webExtensionForBaseURIHost:domainCopy];
  v32 = v13;
  if (v13)
  {
    displayName = [v13 displayName];

    domainCopy = displayName;
  }

  v15 = [controllerCopy webExtensionForBaseURIHost:currentDomainCopy];
  v16 = v15;
  if (v15)
  {
    displayName2 = [v15 displayName];

    currentDomainCopy = displayName2;
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = _WBSLocalizedString();
  currentDomainCopy = [v18 stringWithFormat:v19, domainCopy, currentDomainCopy];
  [(SFBasicDialog *)v12 setTitle:currentDomainCopy];

  v21 = MEMORY[0x1E696AEC0];
  v22 = _WBSLocalizedString();
  domainCopy = [v21 stringWithFormat:v22, domainCopy];
  [(SFBasicDialog *)v12 setMessage:domainCopy];

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
  v34 = handlerCopy;
  v29 = handlerCopy;
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

+ (id)increaseDatabaseQuotaDialogForOrigin:(id)origin newQuota:(int64_t)quota completionHandler:(id)handler
{
  originCopy = origin;
  v8 = MEMORY[0x1E695DFF8];
  handlerCopy = handler;
  v10 = [v8 URLWithString:originCopy];
  if ([v10 safari_isSafariWebExtensionURL])
  {
    safari_userVisibleHostOrExtensionDisplayName = [v10 safari_userVisibleHostOrExtensionDisplayName];

    originCopy = safari_userVisibleHostOrExtensionDisplayName;
  }

  v12 = [MEMORY[0x1E696AAF0] stringFromByteCount:quota countStyle:3];
  v13 = MEMORY[0x1E696AEC0];
  v14 = _WBSLocalizedString();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  localizedModel = [currentDevice localizedModel];
  v17 = [v13 stringWithFormat:v14, originCopy, v12, localizedModel];

  v18 = _WBSLocalizedString();
  v19 = _WBSLocalizedString();
  v20 = _WBSLocalizedString();
  v21 = [SFDialog _dialogWithTitle:v18 message:v17 primaryAction:v20 secondaryAction:v19 applicationModal:1 completionHandler:handlerCopy];

  return v21;
}

+ (id)websiteLocationDialogForURL:(id)l originUserVisibleName:(id)name preciseLocation:(BOOL)location browserPersona:(int64_t)persona completionHandler:(id)handler
{
  locationCopy = location;
  v45[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  nameCopy = name;
  handlerCopy = handler;
  safari_userVisibleHostWithoutWWWSubdomain = [lCopy safari_userVisibleHostWithoutWWWSubdomain];
  v42 = nameCopy;
  if (![safari_userVisibleHostWithoutWWWSubdomain length])
  {
    v13 = nameCopy;

    safari_userVisibleHostWithoutWWWSubdomain = v13;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = _WBSLocalizedString();
  v16 = [v14 stringWithFormat:v15, safari_userVisibleHostWithoutWWWSubdomain];

  v17 = MEMORY[0x1E696AEC0];
  v18 = _WBSLocalizedString();
  v19 = [v17 stringWithFormat:v18, safari_userVisibleHostWithoutWWWSubdomain];

  v40 = lCopy;
  if ([lCopy safari_isSafariWebExtensionURL])
  {
    safari_userVisibleHostOrExtensionDisplayName = [lCopy safari_userVisibleHostOrExtensionDisplayName];

    v21 = MEMORY[0x1E696AEC0];
    v22 = _WBSLocalizedString();
    v23 = [v21 stringWithFormat:v22];

    v24 = MEMORY[0x1E696AEC0];
    v25 = _WBSLocalizedString();
    v26 = [v24 stringWithFormat:v25];

    v19 = v26;
    v16 = v23;
    safari_userVisibleHostWithoutWWWSubdomain = safari_userVisibleHostOrExtensionDisplayName;
  }

  v27 = MEMORY[0x1E696AEC0];
  v28 = _WBSLocalizedString();
  v39 = [v27 stringWithFormat:v28, safari_userVisibleHostWithoutWWWSubdomain];

  v29 = _WBSLocalizedString();
  v30 = _WBSLocalizedString();
  v31 = objc_alloc_init(SFBasicDialog);
  [(SFBasicDialog *)v31 setTitle:v39];
  if (locationCopy)
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
  v44 = handlerCopy;
  v33 = handlerCopy;
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

+ (id)webExtensionPermissionDialogWithExtension:(id)extension domains:(id)domains showMoreOptionsForAlwaysAllow:(BOOL)allow includeDenyButton:(BOOL)button completionHandler:(id)handler
{
  v40[3] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  domainsCopy = domains;
  handlerCopy = handler;
  displayShortName = [extensionCopy displayShortName];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke;
  v37[3] = &unk_1E721DB28;
  v14 = domainsCopy;
  v38 = v14;
  v30 = displayShortName;
  v39 = v30;
  v15 = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke(v37);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke_2;
  v34[3] = &unk_1E721DB28;
  v28 = v14;
  v35 = v28;
  v27 = extensionCopy;
  v36 = v27;
  v16 = __128__SFDialog_webExtensionPermissionDialogWithExtension_domains_showMoreOptionsForAlwaysAllow_includeDenyButton_completionHandler___block_invoke_2(v34);
  v17 = objc_alloc_init(SFBasicDialog);
  [(SFBasicDialog *)v17 setPresentationStyle:1];
  v29 = v15;
  [(SFBasicDialog *)v17 setTitle:v15];
  [(SFBasicDialog *)v17 setMessage:v16];
  LOBYTE(extensionCopy) = button;
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
  v33 = extensionCopy;
  v32 = handlerCopy;
  v25 = handlerCopy;
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

+ (id)webExtensionAlwaysAllowDialogWithExtension:(id)extension domains:(id)domains includeDenyButton:(BOOL)button completionHandler:(id)handler
{
  v31[3] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  handlerCopy = handler;
  domainsCopy = domains;
  v12 = objc_alloc_init(SFBasicDialog);
  displayShortName = [extensionCopy displayShortName];
  [(SFBasicDialog *)v12 setPresentationStyle:1];
  v14 = MEMORY[0x1E696AEC0];
  v15 = _WBSLocalizedString();
  v27 = displayShortName;
  v16 = [v14 stringWithFormat:v15, displayShortName];
  [(SFBasicDialog *)v12 setTitle:v16];

  if (![extensionCopy hasAbilityToInjectContentIntoWebpages])
  {
    [extensionCopy hasDeclarativeNetRequestHostAccessPermission];
  }

  v17 = _WBSLocalizedString();
  [(SFBasicDialog *)v12 setMessage:v17];

  v18 = _WBSLocalizedString();
  v19 = [SFDialogAction actionWithTitle:v18 activatingKeyboardShortcut:1 type:0];

  [domainsCopy count];
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
  v29 = handlerCopy;
  buttonCopy = button;
  v25 = handlerCopy;
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

+ (id)webExtensionDisabledBecauseItRequestsAdditionalPermissionsDialogForExtension:(id)extension completionHandler:(id)handler
{
  v21[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  extensionCopy = extension;
  v7 = objc_alloc_init(SFBasicDialog);
  [(SFBasicDialog *)v7 setPresentationStyle:1];
  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  extensionCopy = [v8 stringWithFormat:v9, extensionCopy];

  [(SFBasicDialog *)v7 setTitle:extensionCopy];
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
  v20 = handlerCopy;
  v17 = handlerCopy;
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