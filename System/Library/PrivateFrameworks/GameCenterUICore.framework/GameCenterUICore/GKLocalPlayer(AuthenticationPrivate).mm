@interface GKLocalPlayer(AuthenticationPrivate)
+ (id)authenticationPersonality;
+ (id)sharedLocalPlayerAuthenticator;
- (uint64_t)isAuthenticating;
- (uint64_t)showAuthenticateViewControllerForGameCenter;
- (uint64_t)showOnboardingUIWithSignInOrigin:()AuthenticationPrivate;
- (void)_showViewControllerForLegacyApps:()AuthenticationPrivate;
- (void)_showWelcomeBannerWithSignInOrigin:()AuthenticationPrivate uponReturnToForeground:;
- (void)applicationDidEnterBackground:()AuthenticationPrivate;
- (void)applicationWillEnterForeground:()AuthenticationPrivate;
- (void)authenticationDidCompleteWithError:()AuthenticationPrivate signInOrigin:uponReturnToForeground:;
- (void)cancelAuthentication;
- (void)dismissOnboardingUIIfPresent;
- (void)presentAuthenticationUIForLocalPlayer:()AuthenticationPrivate;
- (void)sharePlayEligibilityChanged:()AuthenticationPrivate;
- (void)startAuthenticationForExistingPrimaryPlayerUponReturnToForeground:()AuthenticationPrivate;
- (void)startLegacyAuthenticationWithCompletionHandler:()AuthenticationPrivate;
@end

@implementation GKLocalPlayer(AuthenticationPrivate)

+ (id)authenticationPersonality
{
  if (sAuthenticationPersonality)
  {
    localPlayer = sAuthenticationPersonality;
  }

  else
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
  }

  return localPlayer;
}

+ (id)sharedLocalPlayerAuthenticator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__GKLocalPlayer_AuthenticationPrivate__sharedLocalPlayerAuthenticator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedLocalPlayerAuthenticator_onceToken != -1)
  {
    dispatch_once(&sharedLocalPlayerAuthenticator_onceToken, block);
  }

  v1 = sharedLocalPlayerAuthenticator_authenticator;

  return v1;
}

- (uint64_t)isAuthenticating
{
  sharedLocalPlayerAuthenticator = [objc_opt_class() sharedLocalPlayerAuthenticator];
  isAuthenticating = [sharedLocalPlayerAuthenticator isAuthenticating];

  return isAuthenticating;
}

- (void)_showWelcomeBannerWithSignInOrigin:()AuthenticationPrivate uponReturnToForeground:
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  v8 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24E4A8000, v8, OS_LOG_TYPE_INFO, "_showWelcomeBanner is called", buf, 2u);
  }

  sharedLocalPlayerAuthenticator = [objc_opt_class() sharedLocalPlayerAuthenticator];
  lastAuthDate = [sharedLocalPlayerAuthenticator lastAuthDate];
  lastAuthPlayerID = [sharedLocalPlayerAuthenticator lastAuthPlayerID];
  if (objc_opt_respondsToSelector())
  {
    isBannerVisible = [self isBannerVisible];
  }

  else
  {
    isBannerVisible = 0;
  }

  proxyForLocalPlayer = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  accountService = [proxyForLocalPlayer accountService];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke;
  v18[3] = &unk_27967F0E8;
  v23 = isBannerVisible;
  v18[4] = self;
  v19 = lastAuthPlayerID;
  v20 = lastAuthDate;
  v21 = sharedLocalPlayerAuthenticator;
  v24 = a4;
  v22 = a3;
  v15 = sharedLocalPlayerAuthenticator;
  v16 = lastAuthDate;
  v17 = lastAuthPlayerID;
  [accountService isAppDistributorThirdParty:v18];
}

- (void)startAuthenticationForExistingPrimaryPlayerUponReturnToForeground:()AuthenticationPrivate
{
  [self reportAuthenticationStartForPlayer];
  v5 = MEMORY[0x277D0BFD0];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer+Authentication_iOS.m", 270, "-[GKLocalPlayer(AuthenticationPrivate) startAuthenticationForExistingPrimaryPlayerUponReturnToForeground:]"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke;
  v7[3] = &unk_27967F160;
  v7[4] = self;
  v8 = a3;
  [v5 named:v6 execute:v7];
}

- (void)presentAuthenticationUIForLocalPlayer:()AuthenticationPrivate
{
  v3 = MEMORY[0x277D0C138];
  v4 = a3;
  authenticationPersonality = [v3 authenticationPersonality];
  [authenticationPersonality authenticationShowSignInUIForLocalPlayer:v4 origin:1 dismiss:0];
}

- (uint64_t)showOnboardingUIWithSignInOrigin:()AuthenticationPrivate
{
  result = [self didShowOnboardingInOverlayWithSignInOrigin:?];
  if ((result & 1) == 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [self showOnboardingUIFromViewController:0 signInOrigin:a3];
    }
  }

  return result;
}

- (void)authenticationDidCompleteWithError:()AuthenticationPrivate signInOrigin:uponReturnToForeground:
{
  v100 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v9 = GKOSLoggers();
  }

  v10 = MEMORY[0x277D0C2C8];
  v11 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24E4A8000, v11, OS_LOG_TYPE_INFO, "authenticationDidCompleteWithError being called", buf, 2u);
  }

  currentAlert = [self currentAlert];

  if (currentAlert)
  {
    currentAlert2 = [self currentAlert];
    [currentAlert2 setDelegate:0];

    currentAlert3 = [self currentAlert];
    [currentAlert3 dismissAnimated:1];

    [self setCurrentAlert:0];
  }

  if ([self validatingAccount])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__GKLocalPlayer_AuthenticationPrivate__authenticationDidCompleteWithError_signInOrigin_uponReturnToForeground___block_invoke;
    block[3] = &unk_27967F188;
    block[4] = self;
    v81 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [self setValidatingAccount:0];
    v15 = v81;
    goto LABEL_66;
  }

  sharedLocalPlayerAuthenticator = [objc_opt_class() sharedLocalPlayerAuthenticator];
  [sharedLocalPlayerAuthenticator authenticationDidComplete];
  [self setEnteringForeground:0];
  if (([self shouldPreserveOnboardingUI] & 1) == 0)
  {
    [self removeActiveViewControllerAnimated:1 completionHandler:0];
    [self setSignInViewController:0];
  }

  gkIsNotConnectedToInternetError = [v7 gkIsNotConnectedToInternetError];
  if (gkIsNotConnectedToInternetError)
  {
    if (!*v8)
    {
      v16 = GKOSLoggers();
    }

    v17 = *MEMORY[0x277D0C260];
    if (os_log_type_enabled(*MEMORY[0x277D0C260], OS_LOG_TYPE_DEBUG))
    {
      [GKLocalPlayer(AuthenticationPrivate) authenticationDidCompleteWithError:v17 signInOrigin:? uponReturnToForeground:?];
    }

    [self reportAuthenticationErrorNoInternetConnection];
  }

  if (![self isAuthenticated])
  {
    v40 = [v7 description];

    v41 = *v8;
    if (v40)
    {
      if (!v41)
      {
        v42 = GKOSLoggers();
      }

      v43 = *MEMORY[0x277D0C260];
      if (os_log_type_enabled(*MEMORY[0x277D0C260], OS_LOG_TYPE_ERROR))
      {
        [GKLocalPlayer(AuthenticationPrivate) authenticationDidCompleteWithError:v43 signInOrigin:v7 uponReturnToForeground:?];
      }
    }

    else
    {
      if (!v41)
      {
        v44 = GKOSLoggers();
      }

      v45 = *MEMORY[0x277D0C260];
      if (os_log_type_enabled(*MEMORY[0x277D0C260], OS_LOG_TYPE_DEBUG))
      {
        [GKLocalPlayer(AuthenticationPrivate) authenticationDidCompleteWithError:v45 signInOrigin:? uponReturnToForeground:?];
      }
    }

    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    [localPlayer authStartTimeStamp];
    v48 = v47;

    if (v48 <= 0.0)
    {
      v55 = 0;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v51 = v50;
      localPlayer2 = [MEMORY[0x277D0C138] localPlayer];
      [localPlayer2 authStartTimeStamp];
      *&v54 = v51 - v53;

      v55 = v54;
    }

    if (!*v8)
    {
      v56 = GKOSLoggers();
    }

    v57 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKLocalPlayer(AuthenticationPrivate) authenticationDidCompleteWithError:v55 signInOrigin:v57 uponReturnToForeground:?];
    }

    reporter = [MEMORY[0x277D0C1F8] reporter];
    [reporter reportPlayerAuthenticationFailure:v7];

    [sharedLocalPlayerAuthenticator setLastAuthPlayerID:0];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [self reloadAccessPoint];
      [self showAccessPoint];
    }

    v59 = [MEMORY[0x277CCA9B8] userErrorForCode:6 underlyingError:v7];
    [self callAuthHandlerWithError:v59];

    goto LABEL_60;
  }

  if (!*v8)
  {
    v18 = GKOSLoggers();
  }

  v19 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
  {
    v73 = a4;
    v20 = MEMORY[0x277CCABB0];
    v21 = MEMORY[0x277D0C1D8];
    log = v19;
    shared = [v21 shared];
    v76 = [v20 numberWithBool:{objc_msgSend(shared, "isAddingFriendsRestricted")}];
    v22 = MEMORY[0x277CCABB0];
    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    v75 = [v22 numberWithBool:{objc_msgSend(mEMORY[0x277D0C1D8], "isMultiplayerGamingRestricted")}];
    v23 = MEMORY[0x277CCABB0];
    mEMORY[0x277D0C1D8]2 = [MEMORY[0x277D0C1D8] shared];
    v74 = [v23 numberWithBool:{objc_msgSend(mEMORY[0x277D0C1D8]2, "isGameCenterRestricted")}];
    v24 = MEMORY[0x277CCABB0];
    mEMORY[0x277D0C1D8]3 = [MEMORY[0x277D0C1D8] shared];
    v25 = [v24 numberWithBool:{objc_msgSend(mEMORY[0x277D0C1D8]3, "isCustomizedCommunicationRestricted")}];
    v26 = MEMORY[0x277CCABB0];
    mEMORY[0x277D0C1D8]4 = [MEMORY[0x277D0C1D8] shared];
    v27 = [v26 numberWithBool:{objc_msgSend(mEMORY[0x277D0C1D8]4, "isNearbyMultiplayerRestricted")}];
    v28 = MEMORY[0x277CCABB0];
    mEMORY[0x277D0C1D8]5 = [MEMORY[0x277D0C1D8] shared];
    v29 = [v28 numberWithBool:{objc_msgSend(mEMORY[0x277D0C1D8]5, "isProfileModificationRestricted")}];
    v30 = MEMORY[0x277CCABB0];
    mEMORY[0x277D0C1D8]6 = [MEMORY[0x277D0C1D8] shared];
    v31 = [v30 numberWithBool:{objc_msgSend(mEMORY[0x277D0C1D8]6, "isProfilePrivacyModificationRestricted")}];
    v32 = MEMORY[0x277CCABB0];
    mEMORY[0x277D0C1D8]7 = [MEMORY[0x277D0C1D8] shared];
    v33 = [v32 numberWithUnsignedInteger:{objc_msgSend(mEMORY[0x277D0C1D8]7, "multiplayerAllowedPlayerType")}];
    v34 = MEMORY[0x277CCABB0];
    mEMORY[0x277D0C1D8]8 = [MEMORY[0x277D0C1D8] shared];
    v36 = [v34 numberWithBool:{objc_msgSend(mEMORY[0x277D0C1D8]8, "isFriendsSharingRestricted")}];
    *buf = 138414338;
    v83 = v76;
    v84 = 2112;
    v85 = v75;
    v86 = 2112;
    v87 = v74;
    v88 = 2112;
    v89 = v25;
    v90 = 2112;
    v91 = v27;
    v92 = 2112;
    v93 = v29;
    v94 = 2112;
    v95 = v31;
    v96 = 2112;
    v97 = v33;
    v98 = 2112;
    v99 = v36;
    _os_log_impl(&dword_24E4A8000, log, OS_LOG_TYPE_INFO, "Screen-Time Restrictions:                    \n\taddingFriendsRestricted : %@,                    \n\tmultiplayerGamingRestricted : %@,                    \n\tgameCenterRestricted : %@,                    \n\tcustomizedCommunicationRestricted : %@,                    \n\tnearbyMultiplayerRestricted : %@,                    \n\tprofileModificationRestricted : %@,                    \n\tprofilePrivacyModificationRestricted : %@                    \n\t,multiplayerAllowedPlayerType : %@,                    \n\tfriendsSharingRestricted : %@", buf, 0x5Cu);

    v10 = MEMORY[0x277D0C2C8];
    a4 = v73;

    v8 = MEMORY[0x277D0C2A0];
  }

  [self reportAuthenticationPlayerAuthenticated];
  if (!v7 || gkIsNotConnectedToInternetError && [self hasValidScopedIDs])
  {
    if (!*v8)
    {
      v37 = GKOSLoggers();
    }

    v38 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24E4A8000, v38, OS_LOG_TYPE_INFO, "authenticationDidCompleteWithError:Local Player Authenticated", buf, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      shouldShowOnBoardingUI = [self shouldShowOnBoardingUI];
      if (a4 != 7 && shouldShowOnBoardingUI && [self shouldShowAnyOnboardingScreen])
      {
        if (([self shouldPreserveOnboardingUI] & 1) == 0)
        {
          [self showOnboardingUIWithSignInOrigin:a4];
        }

        goto LABEL_60;
      }
    }

    [self _showWelcomeBannerWithSignInOrigin:a4 uponReturnToForeground:a5];
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [self reloadAccessPoint];
    [self showAccessPoint];
  }

  [self callAuthHandlerWithError:v7];
LABEL_60:
  [self setNewToGameCenter:0];
  isGameCenter = [MEMORY[0x277D0C048] isGameCenter];
  v61 = gkIsNotConnectedToInternetError ^ 1;
  if (!v7)
  {
    v61 = 0;
  }

  if ((v61 & 1) == 0 && !isGameCenter)
  {
    matchmaker = [self matchmaker];
    [matchmaker finishedAuthenticating];

    mEMORY[0x277D0C230] = [MEMORY[0x277D0C230] sharedTurnBasedEventHandler];
    [mEMORY[0x277D0C230] lookForEvent];
  }

  v15 = sharedLocalPlayerAuthenticator;
LABEL_66:
}

- (void)cancelAuthentication
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_24E4A8000, v3, OS_LOG_TYPE_INFO, "cancelAuthentication", v5, 2u);
  }

  [self reportAuthenticationLoginCanceled];
  v4 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
  [self authenticationDidCompleteWithError:v4];
}

- (uint64_t)showAuthenticateViewControllerForGameCenter
{
  [self setValidatingAccount:0];

  return [self authenticationShowSignInUIForLocalPlayer:self origin:0 dismiss:0];
}

- (void)applicationWillEnterForeground:()AuthenticationPrivate
{
  [self setAppIsInBackground:0];
  if ([self didAuthenticate] && (objc_msgSend(self, "isAuthenticating") & 1) == 0)
  {
    currentAlert = [self currentAlert];

    if (currentAlert)
    {
      currentAlert2 = [self currentAlert];
      [currentAlert2 setDelegate:0];

      currentAlert3 = [self currentAlert];
      [currentAlert3 dismissAnimated:1];

      [self setCurrentAlert:0];
    }

    [self setEnteringForeground:1];
    sharedLocalPlayerAuthenticator = [objc_opt_class() sharedLocalPlayerAuthenticator];
    [sharedLocalPlayerAuthenticator reset];
    [self startAuthenticationForExistingPrimaryPlayerUponReturnToForeground:1];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sharePlayEligibilityChanged_ name:*MEMORY[0x277D0BB60] object:0];
}

- (void)sharePlayEligibilityChanged:()AuthenticationPrivate
{
  userInfo = [a3 userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"isEligibleForGroupSession"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue && ([self isAuthenticated] & 1) == 0)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_24E4A8000, v8, OS_LOG_TYPE_INFO, "SharePlay is eligible. Calling startAuthenticationForExistingPrimaryPlayer.", v9, 2u);
    }

    [self startAuthenticationForExistingPrimaryPlayer];
  }
}

- (void)applicationDidEnterBackground:()AuthenticationPrivate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D0BB60] object:0];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 postNotificationName:@"GameControllerNavigation_GKGameBackgrounded" object:0 userInfo:0 deliverImmediately:1];
}

- (void)_showViewControllerForLegacyApps:()AuthenticationPrivate
{
  v4 = a3;
  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  if ([mEMORY[0x277D0C1D8] isAccountModificationRestricted])
  {
LABEL_18:

    goto LABEL_19;
  }

  isGameCenter = [MEMORY[0x277D0C048] isGameCenter];

  if ((isGameCenter & 1) == 0)
  {
    v7 = v4;
    objc_opt_class();
    mEMORY[0x277D0C1D8] = v7;
    if (objc_opt_isKindOfClass())
    {
      mEMORY[0x277D0C1D8] = [v7 visibleViewController];
    }

    objc_opt_respondsToSelector();
    rootViewController = [self rootViewController];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    windows = [mEMORY[0x277D75128] windows];
    firstObject = [windows firstObject];

    if (!firstObject)
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      firstObject = [mEMORY[0x277D75128]2 keyWindow];
    }

    rootViewController2 = [firstObject rootViewController];
    v14 = firstObject;
    rootViewController3 = [v14 rootViewController];

    if (rootViewController3)
    {
      rootViewController4 = [v14 rootViewController];
      view = [rootViewController4 view];
    }

    else
    {
      objc_opt_class();
      view = v14;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_12:
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __73__GKLocalPlayer_AuthenticationPrivate___showViewControllerForLegacyApps___block_invoke;
        v26[3] = &unk_27967F1B0;
        v18 = v14;
        v27 = v18;
        selfCopy = self;
        v29 = v7;
        v19 = view;
        v30 = v19;
        v20 = MEMORY[0x253041B30](v26);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          presentedViewController = [rootViewController presentedViewController];

          if (presentedViewController)
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __73__GKLocalPlayer_AuthenticationPrivate___showViewControllerForLegacyApps___block_invoke_2;
            v23[3] = &unk_27967F1D8;
            v25 = v20;
            v24 = rootViewController;
            [v24 dismissViewControllerAnimated:1 completion:v23];
          }

          else
          {
            (v20)[2](v20, rootViewController);
          }
        }

        else
        {
          v22 = objc_alloc_init(MEMORY[0x277D75F48]);
          (v20)[2](v20, v22);
        }

        goto LABEL_18;
      }

      view = [rootViewController2 view];
      rootViewController4 = v14;
    }

    goto LABEL_12;
  }

LABEL_19:
}

- (void)startLegacyAuthenticationWithCompletionHandler:()AuthenticationPrivate
{
  v4 = a3;
  authenticateHandler = [self authenticateHandler];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__GKLocalPlayer_AuthenticationPrivate__startLegacyAuthenticationWithCompletionHandler___block_invoke;
  v9[3] = &unk_27967F200;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  [self setAuthenticateHandler:v9];
  if (authenticateHandler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__GKLocalPlayer_AuthenticationPrivate__startLegacyAuthenticationWithCompletionHandler___block_invoke_2;
    block[3] = &unk_27967F1D8;
    block[4] = self;
    v8 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)dismissOnboardingUIIfPresent
{
  local = [MEMORY[0x277D0C138] local];
  signInViewController = [local signInViewController];

  if (signInViewController)
  {
    local2 = [MEMORY[0x277D0C138] local];
    signInViewController2 = [local2 signInViewController];
    [signInViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)authenticationDidCompleteWithError:()AuthenticationPrivate signInOrigin:uponReturnToForeground:.cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 description];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_24E4A8000, v3, OS_LOG_TYPE_ERROR, "authenticationDidCompleteWithError: Authentication failed for player with error: %@", &v5, 0xCu);
}

- (void)authenticationDidCompleteWithError:()AuthenticationPrivate signInOrigin:uponReturnToForeground:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_24E4A8000, a2, OS_LOG_TYPE_ERROR, "reportAuthenticationFailedForPlayer: Authentication failed for player in %g seconds", &v2, 0xCu);
}

@end