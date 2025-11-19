@interface ICAuthentication
+ (ICAuthentication)shared;
- (BOOL)isAuthenticating;
- (void)authenticateBiometricsWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5;
- (void)authenticateCloudPasswordWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5;
- (void)authenticateCustomPasswordWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5;
- (void)authenticateDevicePasswordWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5;
- (void)authenticateWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5;
- (void)didAuthenticateBiometricsWithPrompt:(id)a3 error:(id)a4 displayWindow:(id)a5 completionHandler:(id)a6;
- (void)didAuthenticateCloudPasswordWithPrompt:(id)a3 result:(unint64_t)a4 displayWindow:(id)a5 completionHandler:(id)a6;
- (void)didAuthenticateCustomPasswordWithPrompt:(id)a3 result:(unint64_t)a4 displayWindow:(id)a5 completionHandler:(id)a6;
- (void)didAuthenticateDevicePasswordWithPrompt:(id)a3 error:(id)a4 displayWindow:(id)a5 completionHandler:(id)a6;
- (void)didAuthenticateWithPrompt:(id)a3 result:(unint64_t)a4 displayWindow:(id)a5 completionHandler:(id)a6;
- (void)setBiometricsEnabled:(BOOL)a3 account:(id)a4;
- (void)setCustomPasswordWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5;
- (void)updateUserRecordForAccount:(id)a3 completionHandler:(id)a4;
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
  v2 = [(ICAuthentication *)self currentAuthenticationController];
  v3 = v2 != 0;

  return v3;
}

- (void)authenticateWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = v8;
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
    v13 = [v8 account];
    v14 = [v13 accountDataCreateIfNecessary];

    [v14 updateSupportsV1Neo:0];
    if ([v8 needsUserRecordUpdate] && objc_msgSend(v8, "updatesUserRecordIfNeeded"))
    {
      v15 = [v8 account];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __75__ICAuthentication_authenticateWithPrompt_displayWindow_completionHandler___block_invoke;
      v23[3] = &unk_1E846C800;
      v24 = v8;
      v25 = self;
      v26 = v9;
      v27 = v10;
      [(ICAuthentication *)self updateUserRecordForAccount:v15 completionHandler:v23];

LABEL_35:
      goto LABEL_36;
    }

    v16 = [v8 authenticationAction];
    switch(v16)
    {
      case 3:
        [(ICAuthentication *)self setCustomPasswordWithPrompt:v8 displayWindow:v9 completionHandler:v10];
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

        v18 = self;
        v19 = v8;
        v20 = 2;
        goto LABEL_21;
      default:
        v22 = [v8 authenticationMechanism];
        if (v22 > 3)
        {
          switch(v22)
          {
            case 4:
              [(ICAuthentication *)self authenticateCustomPasswordWithPrompt:v8 displayWindow:v9 completionHandler:v10];
              break;
            case 5:
              [(ICAuthentication *)self authenticateDevicePasswordWithPrompt:v8 displayWindow:v9 completionHandler:v10];
              break;
            case 6:
              [(ICAuthentication *)self authenticateCloudPasswordWithPrompt:v8 displayWindow:v9 completionHandler:v10];
              break;
          }

          goto LABEL_35;
        }

        if ((v22 - 1) < 3)
        {
          [(ICAuthentication *)self authenticateBiometricsWithPrompt:v8 displayWindow:v9 completionHandler:v10];
          goto LABEL_35;
        }

        if (v22)
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

    v18 = self;
    v19 = v8;
    v20 = 1;
LABEL_21:
    [(ICAuthentication *)v18 didAuthenticateWithPrompt:v19 result:v20 displayWindow:v9 completionHandler:v10];
    goto LABEL_35;
  }

  v12 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ICAuthentication authenticateWithPrompt:displayWindow:completionHandler:];
  }

  [(ICAuthentication *)self didAuthenticateWithPrompt:v8 result:0 displayWindow:v9 completionHandler:v10];
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

- (void)didAuthenticateWithPrompt:(id)a3 result:(unint64_t)a4 displayWindow:(id)a5 completionHandler:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Cancel";
    if (a4 == 1)
    {
      v14 = @"Failure";
    }

    *buf = 138413058;
    v32 = v10;
    if (a4 == 2)
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

  if (a4 == 1)
  {
    if (![v10 allowsAlternativeAuthentication] || (objc_msgSend(v10, "usesAlternativeAuthenticationIfAvailable") & 1) != 0)
    {
      v22 = [v10 failureAlerts];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __85__ICAuthentication_didAuthenticateWithPrompt_result_displayWindow_completionHandler___block_invoke_2;
      v25[3] = &unk_1E846D920;
      v26 = v12;
      v27 = 1;
      [ICAuthenticationAlert presentAlertsIfNeeded:v22 window:v11 completionHandler:v25];

      goto LABEL_28;
    }

    v24 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthentication didAuthenticateWithPrompt:result:displayWindow:completionHandler:];
    }

    [v10 setUsesAlternativeAuthenticationIfAvailable:1];
    goto LABEL_27;
  }

  if (a4 == 2)
  {
    if (![v10 needsSecondaryAuthentication] || (objc_msgSend(v10, "usesSecondaryAuthenticationIfAvailable") & 1) != 0)
    {
      objc_opt_class();
      v16 = [v10 object];
      v17 = ICDynamicCast();

      if (v17)
      {
        v18 = +[ICPasswordUtilities sharedInstance];
        [v18 accessibilityAnnounceAuthSuccessForIntent:objc_msgSend(v10 withNote:{"intent"), v17}];

        v19 = [MEMORY[0x1E69B76D0] sharedState];
        [v19 addMainKeyToKeychainForObject:v17];
      }

      v20 = +[ICAttachmentPreviewGenerator sharedGenerator];
      [v20 generatePreviewsIfNeeded];

      v21 = [v10 successAlerts];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __85__ICAuthentication_didAuthenticateWithPrompt_result_displayWindow_completionHandler___block_invoke;
      v28[3] = &unk_1E846D920;
      v29 = v12;
      v30 = 2;
      [ICAuthenticationAlert presentAlertsIfNeeded:v21 window:v11 completionHandler:v28];

      goto LABEL_28;
    }

    v23 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthentication didAuthenticateWithPrompt:result:displayWindow:completionHandler:];
    }

    [v10 setUsesSecondaryAuthenticationIfAvailable:1];
LABEL_27:
    [(ICAuthentication *)self authenticateWithPrompt:v10 displayWindow:v11 completionHandler:v12];
    goto LABEL_28;
  }

  if (v12)
  {
    (*(v12 + 2))(v12, a4);
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

- (void)authenticateBiometricsWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = v8;
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
  v13 = [v8 reason];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1F4F94F00;
  }

  v32[1] = v15;
  v31[2] = &unk_1F4FC40C8;
  v16 = [v8 fallbackButtonTitle];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F4F94F00;
  }

  v32[2] = v18;
  v32[3] = &unk_1F4FC40F8;
  v31[3] = &unk_1F4FC40E0;
  v31[4] = &unk_1F4FC4110;
  v19 = [v9 tintColor];
  v20 = v19;
  if (!v19)
  {
    v20 = [MEMORY[0x1E69DC888] tintColor];
  }

  v31[5] = &unk_1F4FC4128;
  v32[4] = v20;
  v32[5] = MEMORY[0x1E695E118];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:6];
  if (!v19)
  {
  }

  v22 = objc_alloc_init(MEMORY[0x1E696EE50]);
  [(ICAuthentication *)self setCurrentAuthenticationController:v22];
  v23 = [MEMORY[0x1E69B77C8] biometricsPolicy];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __85__ICAuthentication_authenticateBiometricsWithPrompt_displayWindow_completionHandler___block_invoke;
  v27[3] = &unk_1E846D948;
  v27[4] = self;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v24 = v10;
  v25 = v9;
  v26 = v8;
  [v22 evaluatePolicy:v23 options:v21 reply:v27];
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

- (void)didAuthenticateBiometricsWithPrompt:(id)a3 error:(id)a4 displayWindow:(id)a5 completionHandler:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138413058;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
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
  if ([v11 code] != -2 && objc_msgSend(v11, "code") != -4)
  {
    if (v11 && [v11 code] != -5)
    {
      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      [v18 postNotificationName:@"ICAuthenticationAuthenticateBiometricsAttemptDidFail" object:self];
    }

    if ([v11 code] == -3 || objc_msgSend(v11, "code") == -8)
    {
      v19 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [ICAuthentication didAuthenticateBiometricsWithPrompt:error:displayWindow:completionHandler:];
      }

      [v10 setUsesBiometricAuthenticationIfAvailable:0];
      if ([v10 authenticationAction] == 2)
      {
LABEL_20:
        [(ICAuthentication *)self authenticateWithPrompt:v10 displayWindow:v12 completionHandler:v13];
        goto LABEL_11;
      }

LABEL_39:
      v15 = self;
      v16 = v10;
      v17 = 1;
      goto LABEL_10;
    }

    if (v11 && [v11 code] != -5)
    {
      goto LABEL_39;
    }

    if ([v10 unlocksNotes])
    {
      v20 = MEMORY[0x1E69B7728];
      v21 = [v10 authenticationObject];
      LODWORD(v20) = [v20 shouldAuthenticateWithCustomPasswordForObject:v21];

      if (!v20)
      {
        v26 = MEMORY[0x1E69B7728];
        v27 = [v10 authenticationObject];
        LODWORD(v26) = [v26 shouldAuthenticateWithDevicePasswordForObject:v27];

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

      v22 = [MEMORY[0x1E69B76D0] sharedState];
      v23 = [v10 authenticationObject];
      v24 = [v22 authenticateObjectWithKeychain:v23];

      if ((v24 & 1) == 0)
      {
        v29 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [ICAuthentication didAuthenticateBiometricsWithPrompt:error:displayWindow:completionHandler:];
        }

        [v10 setUsesBiometricAuthenticationIfAvailable:0];
        goto LABEL_20;
      }

      if ([v10 needsSecondaryAuthentication] && objc_msgSend(v10, "secondaryAuthenticationMode") == 2)
      {
        [v10 setUsesSecondaryAuthenticationIfAvailable:1];
        v25 = MEMORY[0x1E69B76D0];
LABEL_31:
        v28 = [v25 sharedState];
        [v28 authenticateWithDevicePassword];
      }
    }

    v15 = self;
    v16 = v10;
    v17 = 2;
    goto LABEL_10;
  }

  v15 = self;
  v16 = v10;
  v17 = 0;
LABEL_10:
  [(ICAuthentication *)v15 didAuthenticateWithPrompt:v16 result:v17 displayWindow:v12 completionHandler:v13];
LABEL_11:
}

- (void)setBiometricsEnabled:(BOOL)a3 account:(id)a4
{
  v4 = a3;
  v8 = a4;
  v5 = [MEMORY[0x1E69B76D0] sharedState];
  [v5 setBiometricsEnabled:v4 forAccount:v8];

  v6 = [MEMORY[0x1E69B76D0] sharedState];
  v7 = v6;
  if (v4)
  {
    [v6 addMainKeyToKeychainForObject:v8];
  }

  else
  {
    [v6 removeMainKeysFromKeychainForAccount:v8];
  }
}

- (void)authenticateCustomPasswordWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = v8;
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

  v12 = [[ICPasswordEntryAlertController alloc] initWithDisplayWindow:v9];
  [(ICAuthentication *)self setCurrentAuthenticationController:v12];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__ICAuthentication_authenticateCustomPasswordWithPrompt_displayWindow_completionHandler___block_invoke;
  v16[3] = &unk_1E846D970;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [(ICPasswordEntryAlertController *)v12 authenticateWithPrompt:v15 completionHandler:v16];
}

- (void)didAuthenticateCustomPasswordWithPrompt:(id)a3 result:(unint64_t)a4 displayWindow:(id)a5 completionHandler:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Cancel";
    if (a4 == 1)
    {
      v14 = @"Failure";
    }

    *v16 = 138413058;
    *&v16[4] = v10;
    if (a4 == 2)
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
  [(ICAuthentication *)self didAuthenticateWithPrompt:v10 result:a4 displayWindow:v11 completionHandler:v12];
}

- (void)authenticateDevicePasswordWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v8;
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
  v13 = [v8 reason];
  v14 = v13;
  v15 = &stru_1F4F94F00;
  if (v13)
  {
    v15 = v13;
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
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v18 = v10;
  v19 = v9;
  v20 = v8;
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

- (void)didAuthenticateDevicePasswordWithPrompt:(id)a3 error:(id)a4 displayWindow:(id)a5 completionHandler:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138413058;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
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
  if ([v11 code] == -2 || objc_msgSend(v11, "code") == -4)
  {
    v15 = 0;
  }

  else if (v11 && [v11 code] != -5)
  {
    v15 = 1;
  }

  else
  {
    if ([v10 unlocksNotes])
    {
      v16 = [MEMORY[0x1E69B76D0] sharedState];
      [v16 authenticateWithDevicePassword];
    }

    v15 = 2;
  }

  [(ICAuthentication *)self didAuthenticateWithPrompt:v10 result:v15 displayWindow:v12 completionHandler:v13];
}

- (void)authenticateCloudPasswordWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v40 = v7;
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
  v12 = [v8 rootViewController];
  [v11 setPresentingViewController:v12];

  v13 = [MEMORY[0x1E69B7A28] sharedInstance];
  v14 = [v13 accountStore];
  v15 = [v7 account];
  v16 = [v15 identifier];
  v17 = [v14 accountWithIdentifier:v16];
  v18 = [v17 username];
  [v11 setUsername:v18];

  [v11 setIsUsernameEditable:0];
  [v11 setServiceType:1];
  v19 = [v7 reason];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
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
  v25 = [v7 title];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
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
  v35 = v7;
  v36 = v8;
  v37 = v9;
  v30 = v9;
  v31 = v8;
  v32 = v7;
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

- (void)didAuthenticateCloudPasswordWithPrompt:(id)a3 result:(unint64_t)a4 displayWindow:(id)a5 completionHandler:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Cancel";
    if (a4 == 1)
    {
      v14 = @"Failure";
    }

    if (a4 == 2)
    {
      v14 = @"Success";
    }

    v15 = v14;
    v16 = 138413058;
    v17 = v10;
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
  [(ICAuthentication *)self didAuthenticateWithPrompt:v10 result:a4 displayWindow:v12 completionHandler:v11];
}

- (void)setCustomPasswordWithPrompt:(id)a3 displayWindow:(id)a4 completionHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = v8;
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
  v13 = [v8 account];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__ICAuthentication_setCustomPasswordWithPrompt_displayWindow_completionHandler___block_invoke;
  v17[3] = &unk_1E846D970;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [v12 showPasswordSetUpSheetForAccount:v13 displayWindow:v15 completionHandler:v17];
}

- (void)updateUserRecordForAccount:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 objectID];
    *buf = 138412802;
    v17 = v8;
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

  v9 = [MEMORY[0x1E69B76F0] sharedContext];
  v10 = [v5 identifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__ICAuthentication_updateUserRecordForAccount_completionHandler___block_invoke;
  v13[3] = &unk_1E846D998;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v9 fetchUserRecordWithAccountID:v10 completionHandler:v13];
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