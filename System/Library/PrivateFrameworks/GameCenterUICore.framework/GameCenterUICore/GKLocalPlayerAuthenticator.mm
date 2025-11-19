@interface GKLocalPlayerAuthenticator
+ (BOOL)shouldDisableLoginConsideringSharePlayAvailabilityWithAuthenticateResponse:(id)a3;
+ (id)authenticatorForExistingPlayer:(id)a3;
+ (id)authenticatorForExistingPlayer:(id)a3 withPresentingViewController:(id)a4;
+ (id)authenticatorForPlayerWithUsername:(id)a3 password:(id)a4;
+ (id)authenticatorForPlayerWithUsername:(id)a3 password:(id)a4 withPresentingViewController:(id)a5;
+ (void)postURL:(id)a3 postBody:(id)a4 completion:(id)a5;
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (BOOL)shouldAuthenticateForGameCenter;
- (GKLocalPlayerAuthenticator)init;
- (NSString)description;
- (void)_authenticateUsingAuthUI:(BOOL)a3 authenticationResults:(id)a4 usernameEditable:(BOOL)a5 authUIDismissHandler:(id)a6 completionHandler:(id)a7;
- (void)_handleAuthResponse:(id)a3 error:(id)a4 handler:(id)a5;
- (void)_handleEditedAuthResponse:(id)a3 error:(id)a4 handler:(id)a5;
- (void)applicationDidEnterBackground:(id)a3;
- (void)authenticateFromExternalServiceWithAuthenticationResults:(id)a3 withHandler:(id)a4;
- (void)authenticateUsingAuthUIAllowingAppleIDCreation:(BOOL)a3 usernameEditable:(BOOL)a4 dismissHandler:(id)a5 completionHandler:(id)a6;
- (void)authenticateWithAuthKitResults:(id)a3 completionHandler:(id)a4;
- (void)cancelAuthDueToAuthKitErrorWithHandler:(id)a3;
- (void)dealloc;
- (void)handleAuthKitResultsForUnder13WithContinuationData:(id)a3 altDSID:(id)a4 password:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIControllerDidDismiss:(id)a3;
@end

@implementation GKLocalPlayerAuthenticator

+ (id)authenticatorForExistingPlayer:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setInputLocalPlayer:v4];

  return v5;
}

+ (id)authenticatorForPlayerWithUsername:(id)a3 password:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setUsername:v7];

  [v8 setPassword:v6];

  return v8;
}

+ (id)authenticatorForExistingPlayer:(id)a3 withPresentingViewController:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() authenticatorForExistingPlayer:v6];

  [v7 setPresentingViewController:v5];

  return v7;
}

+ (id)authenticatorForPlayerWithUsername:(id)a3 password:(id)a4 withPresentingViewController:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() authenticatorForPlayerWithUsername:v9 password:v8];

  [v10 setPresentingViewController:v7];

  return v10;
}

- (GKLocalPlayerAuthenticator)init
{
  v6.receiver = self;
  v6.super_class = GKLocalPlayerAuthenticator;
  v2 = [(GKLocalPlayerAuthenticator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [MEMORY[0x277D0BFD8] didEnterBackground];
    [v3 addObserver:v2 selector:sel_applicationDidEnterBackground_ name:v4 object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKLocalPlayerAuthenticator;
  [(GKLocalPlayerAuthenticator *)&v4 dealloc];
}

- (BOOL)shouldAuthenticateForGameCenter
{
  v2 = [MEMORY[0x277D0C1D8] shared];
  if ([v2 isGameCenterDisabled])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D0C018] currentDevice];
    v3 = [v4 isGameKitAvailable];
  }

  return v3;
}

- (void)authenticateWithAuthKitResults:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__GKLocalPlayerAuthenticator_authenticateWithAuthKitResults_completionHandler___block_invoke;
  v8[3] = &unk_27967EB20;
  v9 = v6;
  v7 = v6;
  [(GKLocalPlayerAuthenticator *)self _authenticateUsingAuthUI:0 authenticationResults:a3 usernameEditable:1 authUIDismissHandler:0 completionHandler:v8];
}

void __79__GKLocalPlayerAuthenticator_authenticateWithAuthKitResults_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277D0C2A0];
  v13 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v14 = GKOSLoggers();
    v13 = *v12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __79__GKLocalPlayerAuthenticator_authenticateWithAuthKitResults_completionHandler___block_invoke_cold_1(v13, a2, v10);
  }

  if (a2 > 2)
  {
    if ((a2 - 4) >= 3)
    {
      if (a2 != 3)
      {
        goto LABEL_19;
      }

      [v9 authenticationDidCompleteWithError:0];
      goto LABEL_13;
    }

    v15 = [MEMORY[0x277D0C138] authenticationPersonality];
    [v15 authenticationShowSignInUIForLocalPlayer:v9 origin:4 dismiss:0];
LABEL_12:

LABEL_13:
    v10 = 0;
    goto LABEL_19;
  }

  switch(a2)
  {
    case 0:
      v16 = v9;
      v17 = 0;
LABEL_18:
      [v16 authenticationDidCompleteWithError:v17];
      break;
    case 1:
      v16 = v9;
      v17 = v10;
      goto LABEL_18;
    case 2:

      v15 = [MEMORY[0x277D0C138] authenticationPersonality];
      [v15 authenticationShowGreenBuddyUIForLocalPlayer:v9 withCompletionHandler:0];
      goto LABEL_12;
  }

LABEL_19:
  (*(*(a1 + 32) + 16))();
}

- (void)cancelAuthDueToAuthKitErrorWithHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__GKLocalPlayerAuthenticator_cancelAuthDueToAuthKitErrorWithHandler___block_invoke;
  block[3] = &unk_27967EB48;
  block[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)authenticateUsingAuthUIAllowingAppleIDCreation:(BOOL)a3 usernameEditable:(BOOL)a4 dismissHandler:(id)a5 completionHandler:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v13 = GKOSLoggers();
  }

  v14 = MEMORY[0x277D0C2C8];
  v15 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24E4A8000, v15, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler: using auth UI", buf, 2u);
  }

  CFAbsoluteTimeGetCurrent();
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v16 = getAKAppleIDAuthenticationInAppContextClass_softClass;
  v37 = getAKAppleIDAuthenticationInAppContextClass_softClass;
  if (!getAKAppleIDAuthenticationInAppContextClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getAKAppleIDAuthenticationInAppContextClass_block_invoke;
    v32 = &unk_27967ED98;
    v33 = &v34;
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke(buf);
    v16 = v35[3];
  }

  v17 = v16;
  _Block_object_dispose(&v34, 8);
  v18 = objc_alloc_init(v16);
  if (!self->_username)
  {
    v19 = GKGameCenterUIFrameworkBundle();
    v20 = GKGetLocalizedStringFromTableInBundle();
    [v18 setReason:v20];

    v12 = MEMORY[0x277D0C2A0];
  }

  [v18 setServiceType:6];
  [v18 setUsername:self->_username];
  [v18 setShouldAllowAppleIDCreation:v8];
  [v18 setIsUsernameEditable:v7];
  [v18 setPresentingViewController:self->_presentingViewController];
  v21 = objc_alloc_init(MEMORY[0x277CF0178]);
  if (!*v12)
  {
    v22 = GKOSLoggers();
  }

  v23 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24E4A8000, v23, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler: presenting auth UI with AKAppleIDAuthenticationController", buf, 2u);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __127__GKLocalPlayerAuthenticator_authenticateUsingAuthUIAllowingAppleIDCreation_usernameEditable_dismissHandler_completionHandler___block_invoke;
  v26[3] = &unk_27967EB70;
  v26[4] = self;
  v27 = v10;
  v28 = v11;
  v24 = v11;
  v25 = v10;
  [v21 authenticateWithContext:v18 completion:v26];
}

void __127__GKLocalPlayerAuthenticator_authenticateUsingAuthUIAllowingAppleIDCreation_usernameEditable_dismissHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = MEMORY[0x277D0C2A0];
  v9 = *MEMORY[0x277D0C2A0];
  v10 = MEMORY[0x277D0C2C8];
  if (v6)
  {
    if (!v9)
    {
      v11 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C260], OS_LOG_TYPE_ERROR))
    {
      __127__GKLocalPlayerAuthenticator_authenticateUsingAuthUIAllowingAppleIDCreation_usernameEditable_dismissHandler_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    if (!v9)
    {
      v12 = GKOSLoggers();
    }

    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24E4A8000, v13, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler: appleIDController returned successfully", buf, 2u);
    }
  }

  v14 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];
  [*(a1 + 32) setUsername:v14];

  v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEFFC8]];
  [*(a1 + 32) setPassword:v15];

  v16 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  v17 = [v5 objectForKey:*MEMORY[0x277CEFFC0]];
  if (v17)
  {
    [*(a1 + 32) handleAuthKitResultsForUnder13WithContinuationData:v17 altDSID:v16 password:*(*(a1 + 32) + 16)];
  }

  if (!*v8)
  {
    v18 = GKOSLoggers();
  }

  v19 = *v10;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_24E4A8000, v19, OS_LOG_TYPE_INFO, "GKLocalPlayerAuthenticator: Finished under 13 account processing, calling handler.", v23, 2u);
  }

  v20 = *(a1 + 48);
  v21 = [*(a1 + 32) username];
  v22 = [*(a1 + 32) password];
  (*(v20 + 16))(v20, v21, v22, v16, *(*(a1 + 32) + 64), *(*(a1 + 32) + 72), v6);
}

- (void)_authenticateUsingAuthUI:(BOOL)a3 authenticationResults:(id)a4 usernameEditable:(BOOL)a5 authUIDismissHandler:(id)a6 completionHandler:(id)a7
{
  LODWORD(v9) = a5;
  v10 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (!v14)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/CommonUI/GKLocalPlayerAuthenticator.m"];
    v18 = [v17 lastPathComponent];
    v19 = [v15 stringWithFormat:@"%@ (handler != ((void*)0))\n[%s (%s:%d)]", v16, "-[GKLocalPlayerAuthenticator _authenticateUsingAuthUI:authenticationResults:usernameEditable:authUIDismissHandler:completionHandler:]", objc_msgSend(v18, "UTF8String"), 318];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v19}];
  }

  if ([(GKLocalPlayerAuthenticator *)self forceAuthentication])
  {
    [(GKLocalPlayerAuthenticator *)self setForceAuthentication:0];
    [(GKLocalPlayerAuthenticator *)self setAuthenticating:0];
  }

  else
  {
    if ([(GKLocalPlayerAuthenticator *)self isAuthenticated])
    {
      [(GKLocalPlayerAuthenticator *)self setAuthenticating:0];
      if (!*MEMORY[0x277D0C2A0])
      {
        v27 = GKOSLoggers();
      }

      v28 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24E4A8000, v28, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler:Player is already authenticated. GKLocalPlayerAuthResultSuccess", buf, 2u);
      }

      v24 = [(GKLocalPlayerAuthenticator *)self resultantLocalPlayer];
      (*(v14 + 2))(v14, 0, v24, 0, 0);
      goto LABEL_42;
    }

    if ([(GKLocalPlayerAuthenticator *)self isAuthenticating])
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v33 = GKOSLoggers();
      }

      v34 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24E4A8000, v34, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler:Player is already authenticating. GKErrorAuthenticationInProgress", buf, 2u);
      }

      v24 = [(GKLocalPlayerAuthenticator *)self resultantLocalPlayer];
      v25 = MEMORY[0x277CCA9B8];
      v26 = 7;
      goto LABEL_41;
    }
  }

  v20 = [MEMORY[0x277D0C1D8] shared];
  v21 = [v20 isGameCenterRestricted];

  if (v21)
  {
    [(GKLocalPlayerAuthenticator *)self setAuthenticating:0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v22 = GKOSLoggers();
    }

    v23 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24E4A8000, v23, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler: GameCenter is Restricted. GKErrorParentalControlsBlocked", buf, 2u);
    }

    v24 = [(GKLocalPlayerAuthenticator *)self resultantLocalPlayer];
    v25 = MEMORY[0x277CCA9B8];
    v26 = 10;
LABEL_41:
    v42 = [v25 userErrorForCode:v26 underlyingError:0];
    (*(v14 + 2))(v14, 1, v24, v42, 0);

LABEL_42:
    goto LABEL_43;
  }

  v29 = [MEMORY[0x277D0C1D8] shared];
  v30 = [v29 lockedDown];

  if (v30)
  {
    [(GKLocalPlayerAuthenticator *)self setAuthenticating:0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v31 = GKOSLoggers();
    }

    v32 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24E4A8000, v32, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler: GameCenter is disabled in Lockdown Mode. GKErrorLockdownMode", buf, 2u);
    }

    v24 = [(GKLocalPlayerAuthenticator *)self resultantLocalPlayer];
    v25 = MEMORY[0x277CCA9B8];
    v26 = 36;
    goto LABEL_41;
  }

  v35 = [MEMORY[0x277D0C018] currentDevice];
  v36 = [v35 isGameKitAvailable];

  if ((v36 & 1) == 0)
  {
    [(GKLocalPlayerAuthenticator *)self setAuthenticating:0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v40 = GKOSLoggers();
    }

    v41 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24E4A8000, v41, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler: GameCenter is not supported on this device. GKErrorNotSupported", buf, 2u);
    }

    v24 = [(GKLocalPlayerAuthenticator *)self resultantLocalPlayer];
    v25 = MEMORY[0x277CCA9B8];
    v26 = 16;
    goto LABEL_41;
  }

  [(GKLocalPlayerAuthenticator *)self setAuthenticating:1];
  if (v10)
  {
    v37 = [(GKLocalPlayerAuthenticator *)self username];
    v38 = [(GKLocalPlayerAuthenticator *)self username];
    if (v38)
    {
      v9 = v9;
    }

    else
    {
      v9 = 1;
    }

    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke;
    v68[3] = &unk_27967EBC0;
    v68[4] = self;
    v69 = v14;
    [(GKLocalPlayerAuthenticator *)self authenticateUsingAuthUIAllowingAppleIDCreation:v37 == 0 usernameEditable:v9 dismissHandler:v13 completionHandler:v68];

    v39 = v69;
  }

  else
  {
    if (v12)
    {
      [(GKLocalPlayerAuthenticator *)self authenticateFromExternalServiceWithAuthenticationResults:v12 withHandler:v14];
      goto LABEL_43;
    }

    v43 = [(GKLocalPlayerAuthenticator *)self username];
    if (v43 && (v44 = v43, [(GKLocalPlayerAuthenticator *)self password], v45 = objc_claimAutoreleasedReturnValue(), v45, v44, v45))
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (!*MEMORY[0x277D0C2A0])
      {
        v47 = GKOSLoggers();
      }

      v48 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24E4A8000, v48, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler:Username and password passed in.GKDaemonProxy to authenticate player", buf, 2u);
      }

      v49 = MEMORY[0x277D0C010];
      v50 = [(GKLocalPlayerAuthenticator *)self inputLocalPlayer];
      v51 = [v49 proxyForPlayer:v50];
      v52 = [v51 accountServicePrivate];
      v53 = [(GKLocalPlayerAuthenticator *)self username];
      v54 = [(GKLocalPlayerAuthenticator *)self password];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_165;
      v62[3] = &unk_27967EBE8;
      v64 = Current;
      v62[4] = self;
      v63 = v14;
      [v52 authenticatePlayerWithUsername:v53 password:v54 handler:v62];

      v39 = v63;
    }

    else
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v55 = GKOSLoggers();
      }

      v56 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24E4A8000, v56, OS_LOG_TYPE_INFO, "authenticateWithCompletionHandler:Username and/or Password missing. GKDaemonProxy to authenticate player", buf, 2u);
      }

      v57 = CFAbsoluteTimeGetCurrent();
      v58 = MEMORY[0x277D0C010];
      v59 = [(GKLocalPlayerAuthenticator *)self inputLocalPlayer];
      v60 = [v58 proxyForPlayer:v59];
      v61 = [v60 accountService];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162;
      v65[3] = &unk_27967EBE8;
      v67 = v57;
      v65[4] = self;
      v66 = v14;
      [v61 authenticatePlayerWithExistingCredentialsWithHandler:v65];

      v39 = v66;
    }
  }

LABEL_43:
}

void __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (v13 && v14 && !a7)
  {
    v18 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    v19 = [v18 accountServicePrivate];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_2;
    v29[3] = &unk_27967EB98;
    v30 = v16;
    v20 = v17;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v31 = v20;
    v32 = v21;
    v33 = v22;
    [v19 authenticatePlayerWithUsername:v13 password:v14 altDSID:v15 usingFastPath:1 handler:v29];
  }

  else if ([a7 code] == -7005)
  {
    v23 = [MEMORY[0x277CCA9B8] userErrorForCode:33 underlyingError:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_3;
    block[3] = &unk_27967EB48;
    v24 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v27 = v23;
    v28 = v24;
    v25 = v23;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(a1 + 32) cancelAuthDueToAuthKitErrorWithHandler:*(a1 + 40)];
  }
}

void __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v7 setAlertTitle:v5];
  [v7 setAlertMessage:*(a1 + 40)];
  [*(a1 + 48) _handleAuthResponse:v7 error:v6 handler:*(a1 + 56)];
}

void __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D0C2A0];
  if (v6)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162_cold_1();
    }

    v9 = [v6 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D0BF98]];
    v11 = [v10 integerValue];

    if (v11 == 5019)
    {
      if (!*v7)
      {
        v12 = GKOSLoggers();
      }

      v13 = *MEMORY[0x277D0C288];
      if (os_log_type_enabled(*MEMORY[0x277D0C288], OS_LOG_TYPE_ERROR))
      {
        __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162_cold_2(v13);
      }
    }
  }

  if (!*v7)
  {
    v14 = GKOSLoggers();
  }

  v15 = MEMORY[0x277D0C2C0];
  v16 = *MEMORY[0x277D0C2C0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C0], OS_LOG_TYPE_DEBUG))
  {
    __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162_cold_3(v16);
  }

  CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) _handleAuthResponse:v5 error:v6 handler:*(a1 + 40)];
  if (!*v7)
  {
    v17 = GKOSLoggers();
  }

  v18 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162_cold_4(v18);
  }
}

void __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_165(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D0C2A0];
  if (v6)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C260], OS_LOG_TYPE_ERROR))
    {
      __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_165_cold_1();
    }
  }

  if (!*v7)
  {
    v9 = GKOSLoggers();
  }

  v10 = MEMORY[0x277D0C2C0];
  v11 = *MEMORY[0x277D0C2C0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C0], OS_LOG_TYPE_DEBUG))
  {
    __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162_cold_3(v11);
  }

  CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) _handleAuthResponse:v5 error:v6 handler:*(a1 + 40)];
  if (!*v7)
  {
    v12 = GKOSLoggers();
  }

  v13 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162_cold_4(v13);
  }
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] date];
  [(GKLocalPlayerAuthenticator *)self setLastAuthDate:v4];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = GKLocalPlayerAuthenticator;
  v3 = [(GKLocalPlayerAuthenticator *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" username:%@ player:%@", self->_username, self->_resultantLocalPlayer];

  return v4;
}

- (void)_handleAuthResponse:(id)a3 error:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D0C020];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayerAuthenticator.m", 512, "-[GKLocalPlayerAuthenticator _handleAuthResponse:error:handler:]"];
  v13 = [v11 dispatchGroupWithName:v12];

  if ([v9 gkRequiresCredentialRenewal])
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v14 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKLocalPlayerAuthenticator _handleAuthResponse:error:handler:];
    }

    [v13 perform:&__block_literal_global];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_179;
  v18[3] = &unk_27967ECA8;
  v19 = v8;
  v20 = self;
  v21 = v9;
  v22 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v13 notifyOnMainQueueWithBlock:v18];
}

void __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D0C138] local];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_2;
  v5[3] = &unk_27967EC30;
  v6 = v2;
  v4 = v2;
  [v3 signOutWithCompletionHandler:v5];
}

void __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_179(id *a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_2_181;
  v8[3] = &unk_27967EC80;
  v2 = a1 + 5;
  *&v3 = a1[4];
  *(&v3 + 1) = *v2;
  v7 = v3;
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [GKAppLevelSignInVisibility fetchAppLevelVisibilityConstraintsWithHandler:v8];
}

void __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_2_181(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v5 = [v4 utilityServicePrivate];
  v17[0] = *MEMORY[0x277D0BFA0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_3;
  v11[3] = &unk_27967EC58;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v14 = v3;
  v15 = v9;
  v16 = *(a1 + 56);
  v10 = v3;
  [v5 getStoreBagValuesForKeys:v6 handler:v11];
}

void __64__GKLocalPlayerAuthenticator__handleAuthResponse_error_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v7;
  if (!v7)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v8 = v6;
  if ([v6 integerValueFromKey:*MEMORY[0x277D0BFA0] defaultValue:0])
  {
    [*(a1 + 32) setLoginDisabled:{objc_msgSend(*(a1 + 40), "_shouldDisableWithGlobalDisabled:appLevelDisabled:processLevelDisabled:", objc_msgSend(*(a1 + 32), "loginDisabled"), objc_msgSend(*(a1 + 48), "appLevelFullscreenDisabled"), objc_msgSend(*(a1 + 48), "processLevelPromptDisabled"))}];
    [*(a1 + 32) setLoginBannerDisabled:{objc_msgSend(*(a1 + 40), "_shouldDisableWithGlobalDisabled:appLevelDisabled:processLevelDisabled:", objc_msgSend(*(a1 + 32), "loginBannerDisabled"), objc_msgSend(*(a1 + 48), "appLevelBannerDisabled"), objc_msgSend(*(a1 + 48), "processLevelPromptDisabled"))}];
  }

  [*(a1 + 40) _handleEditedAuthResponse:*(a1 + 32) error:*(a1 + 56) handler:*(a1 + 64)];
}

- (void)_handleEditedAuthResponse:(id)a3 error:(id)a4 handler:(id)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v76 = a5;
  if (!v76)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/CommonUI/GKLocalPlayerAuthenticator.m"];
    v14 = [v13 lastPathComponent];
    v15 = [v11 stringWithFormat:@"%@ (handler != ((void*)0))\n[%s (%s:%d)]", v12, "-[GKLocalPlayerAuthenticator _handleEditedAuthResponse:error:handler:]", objc_msgSend(v14, "UTF8String"), 551];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  v16 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v17 = GKOSLoggers();
  }

  v18 = MEMORY[0x277D0C2C8];
  v19 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24E4A8000, v19, OS_LOG_TYPE_INFO, "_handleAuthResponse:Auth Response and error ready for handling", buf, 2u);
  }

  v20 = *v16;
  if (!*v16)
  {
    v21 = GKOSLoggers();
    v20 = *v16;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v22 = v20;
    v23 = NSStringFromSelector(a2);
    *buf = 138412802;
    v83 = v23;
    v84 = 2112;
    v85 = v9;
    v86 = 2112;
    v87 = v10;
    _os_log_impl(&dword_24E4A8000, v22, OS_LOG_TYPE_INFO, "%@ auth response:%@ error:%@", buf, 0x20u);
  }

  v24 = [(__CFString *)v9 playerID];
  v25 = [MEMORY[0x277D0C138] authenticatedLocalPlayersWithStatus:1];
  if (!*v16)
  {
    v26 = GKOSLoggers();
  }

  v27 = *v18;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24E4A8000, v27, OS_LOG_TYPE_INFO, "_handleAuthResponse:Authenticated Local Player with Status", buf, 2u);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v28 = v25;
  v29 = [v28 countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (v29)
  {
    v74 = v10;
    v75 = v9;
    v30 = self;
    v31 = *v78;
    while (2)
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v78 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v77 + 1) + 8 * i);
        v34 = [v33 internal];
        v35 = [v34 playerID];
        v36 = [v35 isEqualToString:v24];

        if (v36)
        {
          self = v30;
          [(GKLocalPlayerAuthenticator *)v30 setAuthenticated:1];
          v29 = v33;
          v9 = v75;
          goto LABEL_25;
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v77 objects:v81 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }

    v9 = v75;
    self = v30;
LABEL_25:
    v10 = v74;
    v16 = MEMORY[0x277D0C2A0];
  }

  [(GKLocalPlayerAuthenticator *)self setResultantLocalPlayer:v29];
  if (!v10 && ![(__CFString *)v9 loginDisabled])
  {
    v40 = 0;
    v10 = 0;
    goto LABEL_61;
  }

  if ([GKLocalPlayerAuthenticator shouldDisableLoginConsideringSharePlayAvailabilityWithAuthenticateResponse:v9])
  {
    if (!*v16)
    {
      v37 = GKOSLoggers();
    }

    v38 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24E4A8000, v38, OS_LOG_TYPE_INFO, "_handleAuthResponse:Login has been disabled", buf, 2u);
    }

    if (([v29 isAuthenticated] & 1) == 0)
    {
      v39 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];

      if ([(__CFString *)v9 loginBannerDisabled])
      {
        v40 = 1;
      }

      else
      {
        v40 = 5;
      }

LABEL_37:
      v10 = v39;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v41 = [v10 domain];
  v42 = [v41 isEqualToString:*MEMORY[0x277D0BA78]];

  if (!v42)
  {
LABEL_60:
    v40 = 1;
    goto LABEL_61;
  }

  v43 = [v10 code];
  if ((v43 - 5) >= 2)
  {
    if (v43 == 15)
    {
      if (!*v16)
      {
        v53 = GKOSLoggers();
      }

      v54 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24E4A8000, v54, OS_LOG_TYPE_INFO, "_handleAuthResponse:Underlying Error: GKErrorGameUnrecognized", buf, 2u);
      }

      v39 = [MEMORY[0x277CCA9B8] userErrorForCode:15 underlyingError:0];

      v40 = 1;
      goto LABEL_37;
    }

    if (!v29)
    {
      v29 = [MEMORY[0x277D0C138] localPlayer];
    }

    goto LABEL_60;
  }

  if (!*v16)
  {
    v44 = GKOSLoggers();
  }

  v45 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24E4A8000, v45, OS_LOG_TYPE_INFO, "_handleAuthResponse:Auth Error: GKErrorNotAuthenticated, GKErrorInvalidCredentials", buf, 2u);
  }

  v46 = [v10 userInfo];
  v47 = [v46 objectForKey:*MEMORY[0x277CCA7E8]];

  v48 = [v47 code];
  switch(v48)
  {
    case 5170:
      if (!*v16)
      {
        v61 = GKOSLoggers();
      }

      v62 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24E4A8000, v62, OS_LOG_TYPE_INFO, "_handleAuthResponse:Underlying Error: GKServerNeedsType15Repair", buf, 2u);
      }

      v40 = 6;
      goto LABEL_92;
    case 5047:
      if (!*v16)
      {
        v59 = GKOSLoggers();
      }

      v60 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24E4A8000, v60, OS_LOG_TYPE_INFO, "_handleAuthResponse:Underlying Error: GKServerForcePasswordChangeError", buf, 2u);
      }

      v40 = 3;
      goto LABEL_92;
    case 5029:
      v49 = self;
      v50 = v9;
      if (!*MEMORY[0x277D0C2A0])
      {
        v51 = GKOSLoggers();
      }

      v52 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v40 = 2;
        _os_log_impl(&dword_24E4A8000, v52, OS_LOG_TYPE_INFO, "_handleAuthResponse:Underlying Error: GKServerNotAuthorizedError", buf, 2u);
      }

      else
      {
        v40 = 2;
      }

LABEL_91:
      v9 = v50;
      self = v49;
      v16 = MEMORY[0x277D0C2A0];
      goto LABEL_92;
  }

  v63 = [MEMORY[0x277D0C1F0] _gkReachabilityForInternetConnection];
  v64 = [v63 _gkCurrentReachabilityStatus];

  if (v64)
  {
    v49 = self;
    if (!*MEMORY[0x277D0C2A0])
    {
      v65 = GKOSLoggers();
    }

    v50 = v9;
    v66 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      v67 = MEMORY[0x277CCABB0];
      v68 = v66;
      v69 = [v67 numberWithInteger:{objc_msgSend(v47, "code")}];
      *buf = 138412290;
      v83 = v69;
      _os_log_impl(&dword_24E4A8000, v68, OS_LOG_TYPE_INFO, "_handleAuthResponse:Underlying Error: %@", buf, 0xCu);
    }

    v70 = [MEMORY[0x277CCA9B8] userErrorForCode:3 underlyingError:0];

    if ([(__CFString *)v50 suppressLoginSheet])
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v71 = GKOSLoggers();
      }

      v72 = *MEMORY[0x277D0C2C8];
      if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24E4A8000, v72, OS_LOG_TYPE_INFO, "_handleAuthResponse: Suppress login sheet", buf, 2u);
      }

      v40 = 5;
    }

    else
    {
      v40 = 4;
    }

    v10 = v70;
    goto LABEL_91;
  }

  v73 = [MEMORY[0x277CCA9B8] gkNotConnectedToInternetError];

  v40 = 1;
  v10 = v73;
LABEL_92:

LABEL_61:
  v55 = *v16;
  if (!*v16)
  {
    v56 = GKOSLoggers();
    v55 = *v16;
  }

  v57 = v55;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    v58 = off_27967EDF0[v40];
    *buf = 138412546;
    v83 = self;
    v84 = 2112;
    v85 = v58;
    _os_log_impl(&dword_24E4A8000, v57, OS_LOG_TYPE_INFO, "%@ result:%@", buf, 0x16u);
  }

  v76[2](v76, v40, v29, v10, v9);
}

+ (BOOL)shouldDisableLoginConsideringSharePlayAvailabilityWithAuthenticateResponse:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
  }

  v5 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277D0C158];
    v7 = v5;
    v8 = [v6 sharedMatchmaker];
    v13 = 136315650;
    v14 = "+[GKLocalPlayerAuthenticator shouldDisableLoginConsideringSharePlayAvailabilityWithAuthenticateResponse:]";
    v15 = 1024;
    v16 = [v8 isEligibleForGroupSession];
    v17 = 1024;
    v18 = [v3 loginDisabled];
    _os_log_impl(&dword_24E4A8000, v7, OS_LOG_TYPE_INFO, "%s isEligibleForGroupSession=%d loginDisabled=%d", &v13, 0x18u);
  }

  v9 = [MEMORY[0x277D0C158] sharedMatchmaker];
  v10 = [v9 isEligibleForGroupSession];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v3 loginDisabled];
  }

  return v11;
}

+ (void)postURL:(id)a3 postBody:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4)
  {
    a4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a4 format:100 options:0 error:0];
  }

  v9 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v10 = [v9 utilityServicePrivate];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__GKLocalPlayerAuthenticator_postURL_postBody_completion___block_invoke;
  v12[3] = &unk_27967ECD0;
  v13 = v8;
  v11 = v8;
  [v10 loadDataForURL:v7 postBody:a4 completionHandler:v12];
}

uint64_t __58__GKLocalPlayerAuthenticator_postURL_postBody_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)authenticateFromExternalServiceWithAuthenticationResults:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x277CEFFD8];
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:v7];
  [(GKLocalPlayerAuthenticator *)self setUsername:v9];

  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEFFC8]];
  [(GKLocalPlayerAuthenticator *)self setPassword:v10];

  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
  v12 = [v8 objectForKey:*MEMORY[0x277CEFFC0]];

  if (v12)
  {
    [(GKLocalPlayerAuthenticator *)self handleAuthKitResultsForUnder13WithContinuationData:v12 altDSID:v11 password:self->_password];
  }

  if (self->_username && self->_password)
  {
    v13 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    v14 = [v13 accountServicePrivate];
    username = self->_username;
    password = self->_password;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __99__GKLocalPlayerAuthenticator_authenticateFromExternalServiceWithAuthenticationResults_withHandler___block_invoke;
    v17[3] = &unk_27967ECF8;
    v17[4] = self;
    v18 = v6;
    [v14 authenticatePlayerWithUsername:username password:password altDSID:v11 isGame:0 usingFastPath:1 handler:v17];
  }

  else
  {
    [(GKLocalPlayerAuthenticator *)self cancelAuthDueToAuthKitErrorWithHandler:v6];
  }
}

- (void)handleAuthKitResultsForUnder13WithContinuationData:(id)a3 altDSID:(id)a4 password:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277D0C020];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayerAuthenticator.m", 710, "-[GKLocalPlayerAuthenticator handleAuthKitResultsForUnder13WithContinuationData:altDSID:password:]"];
  v11 = [v9 dispatchGroupWithName:v10];
  [(GKLocalPlayerAuthenticator *)self setU13Group:v11];

  u13Group = self->_u13Group;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__GKLocalPlayerAuthenticator_handleAuthKitResultsForUnder13WithContinuationData_altDSID_password___block_invoke;
  v15[3] = &unk_27967ED48;
  v15[4] = self;
  v16 = v7;
  v17 = v8;
  v13 = v8;
  v14 = v7;
  [(GKDispatchGroup *)u13Group perform:v15];
  [(GKDispatchGroup *)self->_u13Group enter];
  [(GKDispatchGroup *)self->_u13Group wait];
}

void __98__GKLocalPlayerAuthenticator_handleAuthKitResultsForUnder13WithContinuationData_altDSID_password___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 80) = 0;
  v4 = objc_alloc_init(MEMORY[0x277CEC7B8]);
  v5 = MEMORY[0x277CBEBC0];
  v6 = [MEMORY[0x277CEC860] urlConfiguration];
  v7 = [v6 repairCloudAccountUIURL];
  v8 = [v5 URLWithString:v7];

  v33 = v8;
  v9 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v8 cachePolicy:1 timeoutInterval:30.0];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  [v9 setValue:*(a1 + 40) forHTTPHeaderField:@"X-Apple-AK-Continuation-Data"];
  v34 = v4;
  v10 = [v4 clientInfoHeader];
  [v9 setValue:v10 forHTTPHeaderField:@"X-MMe-Client-Info"];

  v11 = MEMORY[0x277CCACA8];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) password];
  v14 = [v11 stringWithFormat:@"%@:%@", v12, v13];

  v15 = [v14 dataUsingEncoding:4];
  v16 = [v15 base64EncodedStringWithOptions:0];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v16];
  [v9 addValue:v17 forHTTPHeaderField:@"Authorization"];
  v18 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"com.apple.GameCenter.u13"];
  v19 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v19 set_appleIDContext:v18];
  v20 = objc_alloc_init(MEMORY[0x277D46220]);
  v21 = *(a1 + 32);
  v22 = *(v21 + 96);
  *(v21 + 96) = v20;

  [*(*(a1 + 32) + 96) setDelegate:?];
  [*(*(a1 + 32) + 96) setSessionConfiguration:v19];
  v23 = objc_alloc_init(MEMORY[0x277D757A0]);
  v24 = *(a1 + 32);
  v25 = *(v24 + 104);
  *(v24 + 104) = v23;

  v26 = [MEMORY[0x277D75418] currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (v27 == 1)
  {
    [*(*(a1 + 32) + 104) setModalPresentationStyle:16];
    v28 = [*(*(a1 + 32) + 104) view];
    v29 = [v28 layer];
    [v29 setMasksToBounds:1];
  }

  v30 = [*(a1 + 32) presentingViewController];
  [v30 presentViewController:*(*(a1 + 32) + 104) animated:1 completion:0];

  [*(*(a1 + 32) + 96) setNavigationController:*(*(a1 + 32) + 104)];
  v31 = *(*(a1 + 32) + 96);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __98__GKLocalPlayerAuthenticator_handleAuthKitResultsForUnder13WithContinuationData_altDSID_password___block_invoke_2;
  v35[3] = &unk_27967ED20;
  v36 = v3;
  v32 = v3;
  [v31 loadRequest:v9 completion:v35];
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v5 = MEMORY[0x277CEC7B8];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = [v7 clientInfoHeader];
  [v6 setValue:v8 forHTTPHeaderField:@"X-MMe-Client-Info"];

  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v9 objectForKey:*MEMORY[0x277CBE690]];
  v11 = [v10 uppercaseString];
  [v6 setValue:v11 forHTTPHeaderField:@"X-MMe-Country"];

  return 1;
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4
{
  v5 = [a4 URL];
  v6 = [v5 absoluteString];
  v7 = [v6 containsString:@"skipCreateAppleID"];

  if (v7)
  {
    self->_userShouldSkipCreateAppleID = 1;
  }
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5 && *a5 == 2 && ([v9 defaultPages], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, !v12))
  {
    v18 = MEMORY[0x277D0C2A0];
    v19 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v20 = GKOSLoggers();
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_24E4A8000, v19, OS_LOG_TYPE_INFO, "Warning: AppleIDController received an object model with actionSignal=Push but no pages.", v21, 2u);
    }
  }

  else
  {
    u13ObjectModels = self->_u13ObjectModels;
    if (!u13ObjectModels)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = self->_u13ObjectModels;
      self->_u13ObjectModels = v14;

      u13ObjectModels = self->_u13ObjectModels;
    }

    [(NSMutableArray *)u13ObjectModels addObject:v10];
    v16 = [v10 clientInfo];
    v17 = [v16 objectForKeyedSubscript:@"continue"];

    if (v17 && ([v17 BOOLValue] & 1) == 0)
    {
      self->_userShouldSkipCreateAppleID = 1;
    }
  }
}

- (void)remoteUIControllerDidDismiss:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKLocalPlayerAuthenticator *)self u13NavigationController];
  [v5 dismissViewControllerAnimated:1 completion:0];

  if (self->_userShouldSkipCreateAppleID)
  {
    [(GKDispatchGroup *)self->_u13Group leave];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self->_u13ObjectModels;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v26 + 1) + 8 * v11++) populatePostbackDictionary:v6];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v12 objectForKey:*MEMORY[0x277CBE690]];

    if (![v13 length])
    {
      [GKLocalPlayerAuthenticator remoteUIControllerDidDismiss:];
    }

    v14 = [MEMORY[0x277CCA8D8] _gkPreferredSystemLanguage];
    if (![v14 length])
    {
      [GKLocalPlayerAuthenticator remoteUIControllerDidDismiss:];
    }

    if ([v14 rangeOfString:@"-"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [v13 lowercaseString];
      v17 = [v15 stringWithFormat:@"%@-%@", v14, v16];

      v14 = v17;
    }

    v18 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v19 = [v18 name];

    if ([v19 length])
    {
      [v6 setObject:v19 forKey:*MEMORY[0x277CEC710]];
    }

    [v6 setObject:v14 forKey:*MEMORY[0x277CEC708]];
    v20 = [v13 uppercaseString];
    [v6 setObject:v20 forKey:*MEMORY[0x277CEC700]];

    v21 = objc_alloc(MEMORY[0x277CEC848]);
    v22 = [(GKLocalPlayerAuthenticator *)self username];
    v23 = [(GKLocalPlayerAuthenticator *)self password];
    v24 = [v21 initWithAppleID:v22 password:v23];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__GKLocalPlayerAuthenticator_remoteUIControllerDidDismiss___block_invoke;
    v25[3] = &unk_27967ED70;
    v25[4] = self;
    [v24 createAppleIDWithParameters:v6 handlerWithResponse:v25];
  }
}

uint64_t __59__GKLocalPlayerAuthenticator_remoteUIControllerDidDismiss___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 responseDictionary];
  v8 = [v7 objectForKeyedSubscript:@"title"];
  [*(a1 + 32) setAlertTitle:v8];

  v9 = [v6 responseDictionary];

  v10 = [v9 objectForKeyedSubscript:@"status-message"];
  [*(a1 + 32) setAlertMessage:v10];

  v11 = *(*(a1 + 32) + 120);

  return [v11 leave];
}

void __79__GKLocalPlayerAuthenticator_authenticateWithAuthKitResults_completionHandler___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithInteger:a2];
  OUTLINED_FUNCTION_2();
  v10 = 2112;
  v11 = a3;
  OUTLINED_FUNCTION_3(&dword_24E4A8000, v6, v8, "GameCenter sign in completed with result %@, error: %@", v9);
}

void __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162_cold_3(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24E4A8000, v1, v2, "%s elapsed seconds:%g", v3);
}

void __133__GKLocalPlayerAuthenticator__authenticateUsingAuthUI_authenticationResults_usernameEditable_authUIDismissHandler_completionHandler___block_invoke_162_cold_4(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24E4A8000, v1, v2, "%s elapsed seconds:%g", v3);
}

@end