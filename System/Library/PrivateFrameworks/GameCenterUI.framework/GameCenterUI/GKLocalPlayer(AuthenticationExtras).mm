@interface GKLocalPlayer(AuthenticationExtras)
- (uint64_t)didShowWelcomeBannerInOverlayWithNewUserState:()AuthenticationExtras uponReturnToForeground:;
- (uint64_t)shouldShowOnBoardingUI;
- (void)authenticationShowGreenBuddyUIForLocalPlayer:()AuthenticationExtras withCompletionHandler:;
- (void)authenticationShowSignInUIForLocalPlayer:()AuthenticationExtras origin:dismiss:;
- (void)hideAccessPoint;
- (void)reloadAccessPoint;
- (void)showAccessPoint;
- (void)showBannerWithTitle:()AuthenticationExtras message:touchHandler:completionHandler:;
- (void)showDashboardFromWelcomeBanner;
- (void)showOnboardingUIFromViewController:()AuthenticationExtras signInOrigin:;
- (void)showSignInBannerForLocalPlayer:()AuthenticationExtras completionHandler:;
- (void)showWelcomeBannerWithTitle:()AuthenticationExtras message:touchHandler:completionHandler:;
- (void)updateAccessPointUponReturnToForeground;
@end

@implementation GKLocalPlayer(AuthenticationExtras)

- (void)showSignInBannerForLocalPlayer:()AuthenticationExtras completionHandler:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  utilityService = [proxyForLocalPlayer utilityService];
  v16[0] = *MEMORY[0x277D0BFA0];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__GKLocalPlayer_AuthenticationExtras__showSignInBannerForLocalPlayer_completionHandler___block_invoke;
  v13[3] = &unk_27966CD88;
  v14 = v6;
  v15 = v7;
  v13[4] = self;
  v11 = v6;
  v12 = v7;
  [utilityService getStoreBagValuesForKeys:v10 handler:v13];
}

- (void)showBannerWithTitle:()AuthenticationExtras message:touchHandler:completionHandler:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [self dismissOnboardingUIIfPresent];
  [self setIsWelcomeOrSignInBannerEnqueued:1];
  [GKNotificationBanner showBannerWithTitle:v13 message:v12 touchHandler:v11 completionHandler:v10];
}

- (void)showWelcomeBannerWithTitle:()AuthenticationExtras message:touchHandler:completionHandler:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [self dismissOnboardingUIIfPresent];
  [self setIsWelcomeOrSignInBannerEnqueued:1];
  [GKNotificationBanner showWelcomeBannerWithTitle:v13 message:v12 touchHandler:v11 completionHandler:v10];
}

- (void)showDashboardFromWelcomeBanner
{
  v0 = +[GKAccessPoint shared];
  [v0 showDashboardWithState:-1 handler:&__block_literal_global_41];
}

- (uint64_t)shouldShowOnBoardingUI
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  _gkIsEligibleForOnboardingUI = [mainBundle _gkIsEligibleForOnboardingUI];

  return _gkIsEligibleForOnboardingUI;
}

- (void)showOnboardingUIFromViewController:()AuthenticationExtras signInOrigin:
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  v8 = *MEMORY[0x277D0C2B8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
  {
    v24 = v6;
    v9 = MEMORY[0x277CCABB0];
    log = v8;
    v10 = [v9 numberWithBool:{objc_msgSend(self, "hasPhoto")}];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:GKIsAvatarEditingSupported()];
    v12 = MEMORY[0x277CCABB0];
    internal = [self internal];
    v13 = [v12 numberWithBool:{objc_msgSend(internal, "isDefaultNickname")}];
    v14 = MEMORY[0x277CCABB0];
    internal2 = [self internal];
    v16 = [v14 numberWithBool:{objc_msgSend(internal2, "isDefaultPrivacyVisibility")}];
    v17 = MEMORY[0x277CCABB0];
    internal3 = [self internal];
    v19 = [v17 numberWithBool:{objc_msgSend(internal3, "isDefaultContactsIntegrationConsent")}];
    *buf = 138413314;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&dword_24DE53000, log, OS_LOG_TYPE_INFO, "showOnboardingUIFromViewController: starting onboarding flow\n Player Avatar: %@\n Can edit: %@\n Default Nickname: %@\n Default Privacy: %@\n Default Contacts Integration Consent: %@", buf, 0x34u);

    v6 = v24;
  }

  v20 = objc_alloc_init(GKHostedAuthenticateViewController);
  [(GKHostedAuthenticateViewController *)v20 setOrigin:a4];
  [self setSignInViewController:v20];
  [(GKHostedAuthenticateViewController *)v20 setCompletionHandler:&__block_literal_global_45];
  [(GKHostedAuthenticateViewController *)v20 setRemoteViewReadyHandler:&__block_literal_global_49];
  local = [MEMORY[0x277D0C138] local];
  [local hideAccessPoint];

  [(GKHostedAuthenticateViewController *)v20 continueWithMode:2];
  [self setShouldPreserveOnboardingUI:1];
}

- (void)authenticationShowGreenBuddyUIForLocalPlayer:()AuthenticationExtras withCompletionHandler:
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v9 = GKOSLoggers();
  }

  v10 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v10, OS_LOG_TYPE_INFO, "authenticationShowGreenBuddyUIForLocalPlayer", buf, 2u);
  }

  [self reportAuthenticatingWithGreenBuddyInvocation];
  if (([MEMORY[0x277D0C048] isGameCenter] & 1) == 0)
  {
    v11 = objc_alloc_init(GKHostedAuthenticateViewController);
    [(GKHostedAuthenticateViewController *)v11 setModalPresentationStyle:0];
    [v6 setSignInViewController:v11];
    v12 = *v8;
    if (!*v8)
    {
      v13 = GKOSLoggers();
      v12 = *v8;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&dword_24DE53000, v12, OS_LOG_TYPE_INFO, "Creating sign in view controller for authorise: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106__GKLocalPlayer_AuthenticationExtras__authenticationShowGreenBuddyUIForLocalPlayer_withCompletionHandler___block_invoke;
    v21[3] = &unk_27966CDF8;
    objc_copyWeak(&v23, buf);
    v14 = v6;
    v22 = v14;
    [(GKHostedAuthenticateViewController *)v11 setCompletionHandler:v21];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __106__GKLocalPlayer_AuthenticationExtras__authenticationShowGreenBuddyUIForLocalPlayer_withCompletionHandler___block_invoke_3;
    v18 = &unk_27966CE20;
    v19 = v14;
    selfCopy = self;
    [(GKHostedAuthenticateViewController *)v11 setRemoteViewReadyHandler:&v15];
    [(GKHostedAuthenticateViewController *)v11 continueWithMode:1, v15, v16, v17, v18];
    [self setShowingInGameUI:1];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)authenticationShowSignInUIForLocalPlayer:()AuthenticationExtras origin:dismiss:
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v11 = GKOSLoggers();
  }

  v12 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24DE53000, v12, OS_LOG_TYPE_INFO, "authenticationShowSignInUIForLocalPlayer", buf, 2u);
  }

  [self reportAuthenticatingWithAuthKitInvocation];
  if ([self didShowOnboardingInOverlayWithSignInOrigin:a4])
  {
    [MEMORY[0x277D0C858] didShowFullscreen];
    proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    accountService = [(GKHostedAuthenticateViewController *)proxyForLocalPlayer accountService];
    [accountService didShowFullscreenSignIn];

LABEL_16:
    goto LABEL_17;
  }

  if (([MEMORY[0x277D0C048] isGameCenter] & 1) == 0)
  {
    if (![v8 enteringForeground] || (objc_msgSend(v8, "signInViewController"), (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = objc_msgSend(self, "isAuthenticating"), v15, v16))
    {
      proxyForLocalPlayer = objc_alloc_init(GKHostedAuthenticateViewController);
      [v8 setSignInViewController:proxyForLocalPlayer];
      v17 = *v10;
      if (!*v10)
      {
        v18 = GKOSLoggers();
        v17 = *v10;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = proxyForLocalPlayer;
        v30 = 2112;
        v31 = v8;
        _os_log_impl(&dword_24DE53000, v17, OS_LOG_TYPE_INFO, "Creating sign in view controller for authenticate: %@ for localPlayer:%@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __95__GKLocalPlayer_AuthenticationExtras__authenticationShowSignInUIForLocalPlayer_origin_dismiss___block_invoke;
      v24[3] = &unk_27966CE70;
      objc_copyWeak(v27, buf);
      v19 = v8;
      v25 = v19;
      v27[1] = a4;
      v26 = v9;
      [(GKHostedAuthenticateViewController *)proxyForLocalPlayer setCompletionHandler:v24];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __95__GKLocalPlayer_AuthenticationExtras__authenticationShowSignInUIForLocalPlayer_origin_dismiss___block_invoke_3;
      v22[3] = &unk_27966C438;
      v23 = v19;
      [(GKHostedAuthenticateViewController *)proxyForLocalPlayer setRemoteViewReadyHandler:v22];
      [(GKHostedAuthenticateViewController *)proxyForLocalPlayer continueWithMode:0];
      [MEMORY[0x277D0C858] didShowFullscreen];
      proxyForLocalPlayer2 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
      accountService2 = [proxyForLocalPlayer2 accountService];
      [accountService2 didShowFullscreenSignIn];

      [self setShowingInGameUI:1];
      objc_destroyWeak(v27);
      objc_destroyWeak(buf);
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)showAccessPoint
{
  if (([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess] & 1) == 0)
  {
    v0 = +[GKAccessPoint shared];
    [v0 showAccessPoint];
  }
}

- (void)hideAccessPoint
{
  if (([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess] & 1) == 0)
  {
    v0 = +[GKAccessPoint shared];
    [v0 hideAccessPoint];
  }
}

- (void)reloadAccessPoint
{
  if (([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess] & 1) == 0)
  {
    v0 = +[GKAccessPoint shared];
    [v0 loadModels];
  }
}

- (uint64_t)didShowWelcomeBannerInOverlayWithNewUserState:()AuthenticationExtras uponReturnToForeground:
{
  v6 = +[GKAccessPoint shared];
  [v6 configureIfNeeded];

  [MEMORY[0x277D0C138] presentWelcomeBannerInOverlayWithReturnToForeground:a4 newToGameCenter:a3];
  return 1;
}

- (void)updateAccessPointUponReturnToForeground
{
  v0 = +[GKAccessPoint shared];
  isActive = [v0 isActive];

  if (isActive)
  {
    v2 = +[GKAccessPoint shared];
    [v2 configureIfNeeded];

    v3 = MEMORY[0x277D0C138];

    [v3 presentAccessPointInOverlayUponReturnToForeground:1];
  }
}

@end