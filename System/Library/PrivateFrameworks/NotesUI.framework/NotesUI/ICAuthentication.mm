@interface ICAuthentication
+ (ICAuthentication)shared;
- (BOOL)isAuthenticating;
- (void)authenticateBiometricsWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler;
- (void)authenticateCloudPasswordWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler;
- (void)authenticateCustomPasswordWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler;
- (void)authenticateDevicePasswordWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler;
- (void)authenticateWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler;
- (void)didAuthenticateBiometricsWithPrompt:(id)prompt error:(id)error displayWindow:(id)window completionHandler:(id)handler;
- (void)didAuthenticateCloudPasswordWithPrompt:(id)prompt result:(unint64_t)result displayWindow:(id)window completionHandler:(id)handler;
- (void)didAuthenticateCustomPasswordWithPrompt:(id)prompt result:(unint64_t)result displayWindow:(id)window completionHandler:(id)handler;
- (void)didAuthenticateDevicePasswordWithPrompt:(id)prompt error:(id)error displayWindow:(id)window completionHandler:(id)handler;
- (void)didAuthenticateWithPrompt:(id)prompt result:(unint64_t)result displayWindow:(id)window completionHandler:(id)handler;
- (void)setBiometricsEnabled:(BOOL)enabled account:(id)account;
- (void)setCustomPasswordWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler;
- (void)updateUserRecordForAccount:(id)account completionHandler:(id)handler;
@end

@implementation ICAuthentication

+ (ICAuthentication)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[ICAuthentication shared];
  }

  v3 = shared_shared_0;

  return v3;
}

uint64_t __26__ICAuthentication_shared__block_invoke()
{
  v0 = objc_alloc_init(ICAuthentication);
  shared_shared_0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (BOOL)isAuthenticating
{
  currentAuthenticationController = [(ICAuthentication *)self currentAuthenticationController];
  v3 = currentAuthenticationController != 0;

  return v3;
}

- (void)authenticateWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  windowCopy = window;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = promptCopy;
    v30 = 2080;
    v31 = "[ICAuthentication authenticateWithPrompt:displayWindow:completionHandler:]";
    v32 = 1024;
    v33 = 124;
    _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "Authenticating… {prompt: %@}%s:%d", buf, 0x1Cu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication authenticateWithPrompt:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (![(ICAuthentication *)self isAuthenticating])
  {
    account = [promptCopy account];
    accountDataCreateIfNecessary = [account accountDataCreateIfNecessary];

    [accountDataCreateIfNecessary updateSupportsV1Neo:0];
    if ([promptCopy needsUserRecordUpdate] && objc_msgSend(promptCopy, "updatesUserRecordIfNeeded"))
    {
      account2 = [promptCopy account];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __75__ICAuthentication_authenticateWithPrompt_displayWindow_completionHandler___block_invoke;
      v23[3] = &unk_1E846C800;
      v24 = promptCopy;
      selfCopy = self;
      v26 = windowCopy;
      v27 = handlerCopy;
      [(ICAuthentication *)self updateUserRecordForAccount:account2 completionHandler:v23];

LABEL_35:
      goto LABEL_36;
    }

    authenticationAction = [promptCopy authenticationAction];
    switch(authenticationAction)
    {
      case 3:
        [(ICAuthentication *)self setCustomPasswordWithPrompt:promptCopy displayWindow:windowCopy completionHandler:handlerCopy];
        goto LABEL_35;
      case 1:
        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [ICAuthentication authenticateWithPrompt:displayWindow:completionHandler:];
        }

        break;
      case 0:
        v17 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [ICAuthentication authenticateWithPrompt:displayWindow:completionHandler:];
        }

        selfCopy3 = self;
        v19 = promptCopy;
        v20 = 2;
        goto LABEL_21;
      default:
        authenticationMechanism = [promptCopy authenticationMechanism];
        if (authenticationMechanism > 3)
        {
          switch(authenticationMechanism)
          {
            case 4:
              [(ICAuthentication *)self authenticateCustomPasswordWithPrompt:promptCopy displayWindow:windowCopy completionHandler:handlerCopy];
              break;
            case 5:
              [(ICAuthentication *)self authenticateDevicePasswordWithPrompt:promptCopy displayWindow:windowCopy completionHandler:handlerCopy];
              break;
            case 6:
              [(ICAuthentication *)self authenticateCloudPasswordWithPrompt:promptCopy displayWindow:windowCopy completionHandler:handlerCopy];
              break;
          }

          goto LABEL_35;
        }

        if ((authenticationMechanism - 1) < 3)
        {
          [(ICAuthentication *)self authenticateBiometricsWithPrompt:promptCopy displayWindow:windowCopy completionHandler:handlerCopy];
          goto LABEL_35;
        }

        if (authenticationMechanism)
        {
          goto LABEL_35;
        }

        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ICAuthentication authenticateWithPrompt:displayWindow:completionHandler:];
        }

        break;
    }

    selfCopy3 = self;
    v19 = promptCopy;
    v20 = 1;
LABEL_21:
    [(ICAuthentication *)selfCopy3 didAuthenticateWithPrompt:v19 result:v20 displayWindow:windowCopy completionHandler:handlerCopy];
    goto LABEL_35;
  }

  v12 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ICAuthentication authenticateWithPrompt:displayWindow:completionHandler:];
  }

  [(ICAuthentication *)self didAuthenticateWithPrompt:promptCopy result:0 displayWindow:windowCopy completionHandler:handlerCopy];
LABEL_36:
}

uint64_t __75__ICAuthentication_authenticateWithPrompt_displayWindow_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUpdatesUserRecordIfNeeded:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 authenticateWithPrompt:v3 displayWindow:v4 completionHandler:v5];
}

- (void)didAuthenticateWithPrompt:(id)prompt result:(unint64_t)result displayWindow:(id)window completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  windowCopy = window;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Cancel";
    if (result == 1)
    {
      v14 = @"Failure";
    }

    *buf = 138413058;
    v32 = promptCopy;
    if (result == 2)
    {
      v14 = @"Success";
    }

    v33 = 2112;
    v34 = v14;
    v35 = 2080;
    v36 = "[ICAuthentication didAuthenticateWithPrompt:result:displayWindow:completionHandler:]";
    v37 = 1024;
    v38 = 200;
    v15 = v14;
    _os_log_impl(&dword_1D4171000, v13, OS_LOG_TYPE_DEFAULT, "Authenticated with prompt {prompt: %@, result: %@}%s:%d", buf, 0x26u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication didAuthenticateWithPrompt:result:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (result == 1)
  {
    if (![promptCopy allowsAlternativeAuthentication] || (objc_msgSend(promptCopy, "usesAlternativeAuthenticationIfAvailable") & 1) != 0)
    {
      failureAlerts = [promptCopy failureAlerts];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __85__ICAuthentication_didAuthenticateWithPrompt_result_displayWindow_completionHandler___block_invoke_2;
      v25[3] = &unk_1E846D920;
      v26 = handlerCopy;
      v27 = 1;
      [ICAuthenticationAlert presentAlertsIfNeeded:failureAlerts window:windowCopy completionHandler:v25];

      goto LABEL_28;
    }

    v24 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthentication didAuthenticateWithPrompt:result:displayWindow:completionHandler:];
    }

    [promptCopy setUsesAlternativeAuthenticationIfAvailable:1];
    goto LABEL_27;
  }

  if (result == 2)
  {
    if (![promptCopy needsSecondaryAuthentication] || (objc_msgSend(promptCopy, "usesSecondaryAuthenticationIfAvailable") & 1) != 0)
    {
      objc_opt_class();
      object = [promptCopy object];
      v17 = ICDynamicCast();

      if (v17)
      {
        v18 = +[ICPasswordUtilities sharedInstance];
        [v18 accessibilityAnnounceAuthSuccessForIntent:objc_msgSend(promptCopy withNote:{"intent"), v17}];

        mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
        [mEMORY[0x1E69B76D0] addMainKeyToKeychainForObject:v17];
      }

      v20 = +[ICAttachmentPreviewGenerator sharedGenerator];
      [v20 generatePreviewsIfNeeded];

      successAlerts = [promptCopy successAlerts];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __85__ICAuthentication_didAuthenticateWithPrompt_result_displayWindow_completionHandler___block_invoke;
      v28[3] = &unk_1E846D920;
      v29 = handlerCopy;
      v30 = 2;
      [ICAuthenticationAlert presentAlertsIfNeeded:successAlerts window:windowCopy completionHandler:v28];

      goto LABEL_28;
    }

    v23 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthentication didAuthenticateWithPrompt:result:displayWindow:completionHandler:];
    }

    [promptCopy setUsesSecondaryAuthenticationIfAvailable:1];
LABEL_27:
    [(ICAuthentication *)self authenticateWithPrompt:promptCopy displayWindow:windowCopy completionHandler:handlerCopy];
    goto LABEL_28;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, result);
  }

LABEL_28:
}

uint64_t __85__ICAuthentication_didAuthenticateWithPrompt_result_displayWindow_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __85__ICAuthentication_didAuthenticateWithPrompt_result_displayWindow_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)authenticateBiometricsWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  windowCopy = window;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = promptCopy;
    v35 = 2080;
    v36 = "[ICAuthentication authenticateBiometricsWithPrompt:displayWindow:completionHandler:]";
    v37 = 1024;
    v38 = 264;
    _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "Authenticating biometrics… {prompt: %@}%s:%d", buf, 0x1Cu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication authenticateBiometricsWithPrompt:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v31[0] = &unk_1F4FC4098;
  v12 = __ICLocalizedFrameworkString_impl(@"Notes", @"Notes", 0, 1);
  v32[0] = v12;
  v31[1] = &unk_1F4FC40B0;
  reason = [promptCopy reason];
  v14 = reason;
  if (reason)
  {
    v15 = reason;
  }

  else
  {
    v15 = &stru_1F4F94F00;
  }

  v32[1] = v15;
  v31[2] = &unk_1F4FC40C8;
  fallbackButtonTitle = [promptCopy fallbackButtonTitle];
  v17 = fallbackButtonTitle;
  if (fallbackButtonTitle)
  {
    v18 = fallbackButtonTitle;
  }

  else
  {
    v18 = &stru_1F4F94F00;
  }

  v32[2] = v18;
  v32[3] = &unk_1F4FC40F8;
  v31[3] = &unk_1F4FC40E0;
  v31[4] = &unk_1F4FC4110;
  tintColor = [windowCopy tintColor];
  tintColor2 = tintColor;
  if (!tintColor)
  {
    tintColor2 = [MEMORY[0x1E69DC888] tintColor];
  }

  v31[5] = &unk_1F4FC4128;
  v32[4] = tintColor2;
  v32[5] = MEMORY[0x1E695E118];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:6];
  if (!tintColor)
  {
  }

  v22 = objc_alloc_init(MEMORY[0x1E696EE50]);
  [(ICAuthentication *)self setCurrentAuthenticationController:v22];
  biometricsPolicy = [MEMORY[0x1E69B77C8] biometricsPolicy];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __85__ICAuthentication_authenticateBiometricsWithPrompt_displayWindow_completionHandler___block_invoke;
  v27[3] = &unk_1E846D948;
  v27[4] = self;
  v28 = promptCopy;
  v29 = windowCopy;
  v30 = handlerCopy;
  v24 = handlerCopy;
  v25 = windowCopy;
  v26 = promptCopy;
  [v22 evaluatePolicy:biometricsPolicy options:v21 reply:v27];
}

void __85__ICAuthentication_authenticateBiometricsWithPrompt_displayWindow_completionHandler___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v5 = v4;
  performBlockOnMainThread();
}

- (void)didAuthenticateBiometricsWithPrompt:(id)prompt error:(id)error displayWindow:(id)window completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  errorCopy = error;
  windowCopy = window;
  handlerCopy = handler;
  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138413058;
    v32 = promptCopy;
    v33 = 2112;
    v34 = errorCopy;
    v35 = 2080;
    v36 = "[ICAuthentication didAuthenticateBiometricsWithPrompt:error:displayWindow:completionHandler:]";
    v37 = 1024;
    v38 = 315;
    _os_log_impl(&dword_1D4171000, v14, OS_LOG_TYPE_DEFAULT, "Authenticated biometrics with prompt {prompt: %@, error: %@}%s:%d", &v31, 0x26u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication didAuthenticateBiometricsWithPrompt:error:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (![(ICAuthentication *)self isAuthenticating])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.isAuthenticating" functionName:"-[ICAuthentication didAuthenticateBiometricsWithPrompt:error:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Authenticated biometrics while not currently authenticating"];
  }

  [(ICAuthentication *)self setCurrentAuthenticationController:0];
  if ([errorCopy code] != -2 && objc_msgSend(errorCopy, "code") != -4)
  {
    if (errorCopy && [errorCopy code] != -5)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"ICAuthenticationAuthenticateBiometricsAttemptDidFail" object:self];
    }

    if ([errorCopy code] == -3 || objc_msgSend(errorCopy, "code") == -8)
    {
      v19 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [ICAuthentication didAuthenticateBiometricsWithPrompt:error:displayWindow:completionHandler:];
      }

      [promptCopy setUsesBiometricAuthenticationIfAvailable:0];
      if ([promptCopy authenticationAction] == 2)
      {
LABEL_20:
        [(ICAuthentication *)self authenticateWithPrompt:promptCopy displayWindow:windowCopy completionHandler:handlerCopy];
        goto LABEL_11;
      }

LABEL_39:
      selfCopy3 = self;
      v16 = promptCopy;
      v17 = 1;
      goto LABEL_10;
    }

    if (errorCopy && [errorCopy code] != -5)
    {
      goto LABEL_39;
    }

    if ([promptCopy unlocksNotes])
    {
      v20 = MEMORY[0x1E69B7728];
      authenticationObject = [promptCopy authenticationObject];
      LODWORD(v20) = [v20 shouldAuthenticateWithCustomPasswordForObject:authenticationObject];

      if (!v20)
      {
        v26 = MEMORY[0x1E69B7728];
        authenticationObject2 = [promptCopy authenticationObject];
        LODWORD(v26) = [v26 shouldAuthenticateWithDevicePasswordForObject:authenticationObject2];

        if (!v26)
        {
          v30 = os_log_create("com.apple.notes", "Crypto");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [ICAuthentication didAuthenticateBiometricsWithPrompt:error:displayWindow:completionHandler:];
          }

          goto LABEL_39;
        }

        v25 = MEMORY[0x1E69B76D0];
        goto LABEL_31;
      }

      mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
      authenticationObject3 = [promptCopy authenticationObject];
      v24 = [mEMORY[0x1E69B76D0] authenticateObjectWithKeychain:authenticationObject3];

      if ((v24 & 1) == 0)
      {
        v29 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [ICAuthentication didAuthenticateBiometricsWithPrompt:error:displayWindow:completionHandler:];
        }

        [promptCopy setUsesBiometricAuthenticationIfAvailable:0];
        goto LABEL_20;
      }

      if ([promptCopy needsSecondaryAuthentication] && objc_msgSend(promptCopy, "secondaryAuthenticationMode") == 2)
      {
        [promptCopy setUsesSecondaryAuthenticationIfAvailable:1];
        v25 = MEMORY[0x1E69B76D0];
LABEL_31:
        sharedState = [v25 sharedState];
        [sharedState authenticateWithDevicePassword];
      }
    }

    selfCopy3 = self;
    v16 = promptCopy;
    v17 = 2;
    goto LABEL_10;
  }

  selfCopy3 = self;
  v16 = promptCopy;
  v17 = 0;
LABEL_10:
  [(ICAuthentication *)selfCopy3 didAuthenticateWithPrompt:v16 result:v17 displayWindow:windowCopy completionHandler:handlerCopy];
LABEL_11:
}

- (void)setBiometricsEnabled:(BOOL)enabled account:(id)account
{
  enabledCopy = enabled;
  accountCopy = account;
  mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
  [mEMORY[0x1E69B76D0] setBiometricsEnabled:enabledCopy forAccount:accountCopy];

  mEMORY[0x1E69B76D0]2 = [MEMORY[0x1E69B76D0] sharedState];
  v7 = mEMORY[0x1E69B76D0]2;
  if (enabledCopy)
  {
    [mEMORY[0x1E69B76D0]2 addMainKeyToKeychainForObject:accountCopy];
  }

  else
  {
    [mEMORY[0x1E69B76D0]2 removeMainKeysFromKeychainForAccount:accountCopy];
  }
}

- (void)authenticateCustomPasswordWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  windowCopy = window;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = promptCopy;
    v22 = 2080;
    v23 = "[ICAuthentication authenticateCustomPasswordWithPrompt:displayWindow:completionHandler:]";
    v24 = 1024;
    v25 = 411;
    _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "Authenticating custom password with prompt {prompt: %@}%s:%d", buf, 0x1Cu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication authenticateCustomPasswordWithPrompt:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v12 = [[ICPasswordEntryAlertController alloc] initWithDisplayWindow:windowCopy];
  [(ICAuthentication *)self setCurrentAuthenticationController:v12];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__ICAuthentication_authenticateCustomPasswordWithPrompt_displayWindow_completionHandler___block_invoke;
  v16[3] = &unk_1E846D970;
  v16[4] = self;
  v17 = promptCopy;
  v18 = windowCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = windowCopy;
  v15 = promptCopy;
  [(ICPasswordEntryAlertController *)v12 authenticateWithPrompt:v15 completionHandler:v16];
}

- (void)didAuthenticateCustomPasswordWithPrompt:(id)prompt result:(unint64_t)result displayWindow:(id)window completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  windowCopy = window;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Cancel";
    if (result == 1)
    {
      v14 = @"Failure";
    }

    *v16 = 138413058;
    *&v16[4] = promptCopy;
    if (result == 2)
    {
      v14 = @"Success";
    }

    *&v16[12] = 2112;
    *&v16[14] = v14;
    *&v16[22] = 2080;
    v17 = "[ICAuthentication didAuthenticateCustomPasswordWithPrompt:result:displayWindow:completionHandler:]";
    LOWORD(v18) = 1024;
    *(&v18 + 2) = 443;
    v15 = v14;
    _os_log_impl(&dword_1D4171000, v13, OS_LOG_TYPE_DEFAULT, "Authenticated custom password with prompt {prompt: %@, result: %@}%s:%d", v16, 0x26u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication didAuthenticateCustomPasswordWithPrompt:result:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (![(ICAuthentication *)self isAuthenticating:*v16])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.isAuthenticating" functionName:"-[ICAuthentication didAuthenticateCustomPasswordWithPrompt:result:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Authenticated custom password while not currently authenticating"];
  }

  [(ICAuthentication *)self setCurrentAuthenticationController:0];
  [(ICAuthentication *)self didAuthenticateWithPrompt:promptCopy result:result displayWindow:windowCopy completionHandler:handlerCopy];
}

- (void)authenticateDevicePasswordWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  windowCopy = window;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = promptCopy;
    v29 = 2080;
    v30 = "[ICAuthentication authenticateDevicePasswordWithPrompt:displayWindow:completionHandler:]";
    v31 = 1024;
    v32 = 465;
    _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "Authenticating device password… {prompt: %@}%s:%d", buf, 0x1Cu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication authenticateDevicePasswordWithPrompt:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v25[0] = &unk_1F4FC4098;
  v12 = __ICLocalizedFrameworkString_impl(@"Notes", @"Notes", 0, 1);
  v25[1] = &unk_1F4FC40B0;
  v26[0] = v12;
  reason = [promptCopy reason];
  v14 = reason;
  v15 = &stru_1F4F94F00;
  if (reason)
  {
    v15 = reason;
  }

  v26[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v17 = objc_alloc_init(MEMORY[0x1E696EE50]);
  [(ICAuthentication *)self setCurrentAuthenticationController:v17];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89__ICAuthentication_authenticateDevicePasswordWithPrompt_displayWindow_completionHandler___block_invoke;
  v21[3] = &unk_1E846D948;
  v21[4] = self;
  v22 = promptCopy;
  v23 = windowCopy;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = windowCopy;
  v20 = promptCopy;
  [v17 evaluatePolicy:1007 options:v16 reply:v21];
}

void __89__ICAuthentication_authenticateDevicePasswordWithPrompt_displayWindow_completionHandler___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v5 = v4;
  performBlockOnMainThread();
}

- (void)didAuthenticateDevicePasswordWithPrompt:(id)prompt error:(id)error displayWindow:(id)window completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  errorCopy = error;
  windowCopy = window;
  handlerCopy = handler;
  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138413058;
    v18 = promptCopy;
    v19 = 2112;
    v20 = errorCopy;
    v21 = 2080;
    v22 = "[ICAuthentication didAuthenticateDevicePasswordWithPrompt:error:displayWindow:completionHandler:]";
    v23 = 1024;
    v24 = 519;
    _os_log_impl(&dword_1D4171000, v14, OS_LOG_TYPE_DEFAULT, "Authenticated device password with prompt {prompt: %@, error: %@}%s:%d", &v17, 0x26u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication didAuthenticateDevicePasswordWithPrompt:error:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (![(ICAuthentication *)self isAuthenticating])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.isAuthenticating" functionName:"-[ICAuthentication didAuthenticateDevicePasswordWithPrompt:error:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Authenticated device password while not currently authenticating"];
  }

  [(ICAuthentication *)self setCurrentAuthenticationController:0];
  if ([errorCopy code] == -2 || objc_msgSend(errorCopy, "code") == -4)
  {
    v15 = 0;
  }

  else if (errorCopy && [errorCopy code] != -5)
  {
    v15 = 1;
  }

  else
  {
    if ([promptCopy unlocksNotes])
    {
      mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
      [mEMORY[0x1E69B76D0] authenticateWithDevicePassword];
    }

    v15 = 2;
  }

  [(ICAuthentication *)self didAuthenticateWithPrompt:promptCopy result:v15 displayWindow:windowCopy completionHandler:handlerCopy];
}

- (void)authenticateCloudPasswordWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  windowCopy = window;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v40 = promptCopy;
    v41 = 2080;
    v42 = "[ICAuthentication authenticateCloudPasswordWithPrompt:displayWindow:completionHandler:]";
    v43 = 1024;
    v44 = 552;
    _os_log_impl(&dword_1D4171000, v10, OS_LOG_TYPE_DEFAULT, "Authenticating cloud password… {prompt: %@}%s:%d", buf, 0x1Cu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication authenticateCloudPasswordWithPrompt:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v11 = objc_alloc_init(MEMORY[0x1E698DE80]);
  rootViewController = [windowCopy rootViewController];
  [v11 setPresentingViewController:rootViewController];

  mEMORY[0x1E69B7A28] = [MEMORY[0x1E69B7A28] sharedInstance];
  accountStore = [mEMORY[0x1E69B7A28] accountStore];
  account = [promptCopy account];
  identifier = [account identifier];
  v17 = [accountStore accountWithIdentifier:identifier];
  username = [v17 username];
  [v11 setUsername:username];

  [v11 setIsUsernameEditable:0];
  [v11 setServiceType:1];
  reason = [promptCopy reason];
  v20 = reason;
  if (reason)
  {
    v21 = reason;
  }

  else
  {
    v21 = &stru_1F4F94F00;
  }

  [v11 setReason:v21];

  v22 = __ICLocalizedFrameworkString_impl(@"OK", @"OK", 0, 1);
  [v11 setDefaultButtonString:v22];

  v23 = *MEMORY[0x1E698C248];
  v38[0] = *MEMORY[0x1E698C240];
  v38[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [v11 setServiceIdentifiers:v24];

  [v11 setIsEphemeral:1];
  title = [promptCopy title];
  v26 = title;
  if (title)
  {
    v27 = title;
  }

  else
  {
    v27 = &stru_1F4F94F00;
  }

  [v11 setTitle:v27];

  v28 = __ICLocalizedFrameworkString_impl(@"Cancel", @"Cancel", 0, 1);
  [v11 setCancelButtonString:v28];

  [v11 setAuthenticationType:2];
  [v11 setShouldPromptForPasswordOnly:1];
  [v11 setShouldUpdatePersistentServiceTokens:1];
  v29 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  [(ICAuthentication *)self setCurrentAuthenticationController:v29];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __88__ICAuthentication_authenticateCloudPasswordWithPrompt_displayWindow_completionHandler___block_invoke;
  v34[3] = &unk_1E846D948;
  v34[4] = self;
  v35 = promptCopy;
  v36 = windowCopy;
  v37 = handlerCopy;
  v30 = handlerCopy;
  v31 = windowCopy;
  v32 = promptCopy;
  [v29 authenticateWithContext:v11 completion:v34];
}

void __88__ICAuthentication_authenticateCloudPasswordWithPrompt_displayWindow_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v8;
  v9 = v4;
  performBlockOnMainThread();
}

uint64_t __88__ICAuthentication_authenticateCloudPasswordWithPrompt_displayWindow_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 code];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];
    v8 = v3 != -7003;
  }

  else
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];
    v8 = 2;
  }

  return [v4 didAuthenticateCloudPasswordWithPrompt:v5 result:v8 displayWindow:v6 completionHandler:v7];
}

- (void)didAuthenticateCloudPasswordWithPrompt:(id)prompt result:(unint64_t)result displayWindow:(id)window completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  handlerCopy = handler;
  windowCopy = window;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Cancel";
    if (result == 1)
    {
      v14 = @"Failure";
    }

    if (result == 2)
    {
      v14 = @"Success";
    }

    v15 = v14;
    v16 = 138413058;
    v17 = promptCopy;
    v18 = 2112;
    v19 = v15;
    v20 = 2080;
    v21 = "[ICAuthentication didAuthenticateCloudPasswordWithPrompt:result:displayWindow:completionHandler:]";
    v22 = 1024;
    v23 = 601;
    _os_log_impl(&dword_1D4171000, v13, OS_LOG_TYPE_DEFAULT, "Authenticated cloud password with prompt {prompt: %@, result: %@}%s:%d", &v16, 0x26u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication didAuthenticateCloudPasswordWithPrompt:result:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (![(ICAuthentication *)self isAuthenticating])
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.isAuthenticating" functionName:"-[ICAuthentication didAuthenticateCloudPasswordWithPrompt:result:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Authenticated cloud password while not currently authenticating"];
  }

  [(ICAuthentication *)self setCurrentAuthenticationController:0];
  [(ICAuthentication *)self didAuthenticateWithPrompt:promptCopy result:result displayWindow:windowCopy completionHandler:handlerCopy];
}

- (void)setCustomPasswordWithPrompt:(id)prompt displayWindow:(id)window completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  windowCopy = window;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = promptCopy;
    v23 = 2080;
    v24 = "[ICAuthentication setCustomPasswordWithPrompt:displayWindow:completionHandler:]";
    v25 = 1024;
    v26 = 617;
    _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "Setting custom password with prompt {prompt: %@}%s:%d", buf, 0x1Cu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication setCustomPasswordWithPrompt:displayWindow:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v12 = +[ICPasswordUtilities sharedInstance];
  account = [promptCopy account];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__ICAuthentication_setCustomPasswordWithPrompt_displayWindow_completionHandler___block_invoke;
  v17[3] = &unk_1E846D970;
  v17[4] = self;
  v18 = promptCopy;
  v19 = windowCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = windowCopy;
  v16 = promptCopy;
  [v12 showPasswordSetUpSheetForAccount:account displayWindow:v15 completionHandler:v17];
}

- (void)updateUserRecordForAccount:(id)account completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  handlerCopy = handler;
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    objectID = [accountCopy objectID];
    *buf = 138412802;
    v17 = objectID;
    v18 = 2080;
    v19 = "[ICAuthentication updateUserRecordForAccount:completionHandler:]";
    v20 = 1024;
    v21 = 630;
    _os_log_impl(&dword_1D4171000, v7, OS_LOG_TYPE_DEFAULT, "Authenticating for iCloud account without passphrase — manually fetching user record… {accountID: %@}%s:%d", buf, 0x1Cu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthentication updateUserRecordForAccount:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  mEMORY[0x1E69B76F0] = [MEMORY[0x1E69B76F0] sharedContext];
  identifier = [accountCopy identifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__ICAuthentication_updateUserRecordForAccount_completionHandler___block_invoke;
  v13[3] = &unk_1E846D998;
  v14 = accountCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = accountCopy;
  [mEMORY[0x1E69B76F0] fetchUserRecordWithAccountID:identifier completionHandler:v13];
}

void __65__ICAuthentication_updateUserRecordForAccount_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v3;
  performBlockOnMainThread();
}

uint64_t __65__ICAuthentication_updateUserRecordForAccount_completionHandler___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 40) objectID];
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1D4171000, v2, OS_LOG_TYPE_INFO, "Updated user record while authenticating {accountID: %@}", &v9, 0xCu);
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v4 identifier];
    [v4 objectWasFetchedFromCloudWithRecord:v5 accountID:v6];

    v7 = [*(a1 + 40) managedObjectContext];
    [v7 ic_save];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end