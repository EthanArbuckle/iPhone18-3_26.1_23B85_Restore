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
    v0 = sAuthenticationPersonality;
  }

  else
  {
    v0 = [MEMORY[0x277D0C138] localPlayer];
  }

  return v0;
}

+ (id)sharedLocalPlayerAuthenticator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__GKLocalPlayer_AuthenticationPrivate__sharedLocalPlayerAuthenticator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedLocalPlayerAuthenticator_onceToken != -1)
  {
    dispatch_once(&sharedLocalPlayerAuthenticator_onceToken, block);
  }

  v1 = sharedLocalPlayerAuthenticator_authenticator;

  return v1;
}

- (uint64_t)isAuthenticating
{
  v0 = [objc_opt_class() sharedLocalPlayerAuthenticator];
  v1 = [v0 isAuthenticating];

  return v1;
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

  v9 = [objc_opt_class() sharedLocalPlayerAuthenticator];
  v10 = [v9 lastAuthDate];
  v11 = [v9 lastAuthPlayerID];
  if (objc_opt_respondsToSelector())
  {
    v12 = [a1 isBannerVisible];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v14 = [v13 accountService];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke;
  v18[3] = &unk_27967F0E8;
  v23 = v12;
  v18[4] = a1;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  v24 = a4;
  v22 = a3;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  [v14 isAppDistributorThirdParty:v18];
}

- (void)startAuthenticationForExistingPrimaryPlayerUponReturnToForeground:()AuthenticationPrivate
{
  [a1 reportAuthenticationStartForPlayer];
  v5 = MEMORY[0x277D0BFD0];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer+Authentication_iOS.m", 270, "-[GKLocalPlayer(AuthenticationPrivate) startAuthenticationForExistingPrimaryPlayerUponReturnToForeground:]"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke;
  v7[3] = &unk_27967F160;
  v7[4] = a1;
  v8 = a3;
  [v5 named:v6 execute:v7];
}

- (void)presentAuthenticationUIForLocalPlayer:()AuthenticationPrivate
{
  v3 = MEMORY[0x277D0C138];
  v4 = a3;
  v5 = [v3 authenticationPersonality];
  [v5 authenticationShowSignInUIForLocalPlayer:v4 origin:1 dismiss:0];
}

- (uint64_t)showOnboardingUIWithSignInOrigin:()AuthenticationPrivate
{
  result = [a1 didShowOnboardingInOverlayWithSignInOrigin:?];
  if ((result & 1) == 0)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [a1 showOnboardingUIFromViewController:0 signInOrigin:a3];
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

  v12 = [a1 currentAlert];

  if (v12)
  {
    v13 = [a1 currentAlert];
    [v13 setDelegate:0];

    v14 = [a1 currentAlert];
    [v14 dismissAnimated:1];

    [a1 setCurrentAlert:0];
  }

  if ([a1 validatingAccount])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__GKLocalPlayer_AuthenticationPrivate__authenticationDidCompleteWithError_signInOrigin_uponReturnToForeground___block_invoke;
    block[3] = &unk_27967F188;
    block[4] = a1;
    v81 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [a1 setValidatingAccount:0];
    v15 = v81;
    goto LABEL_66;
  }

  v79 = [objc_opt_class() sharedLocalPlayerAuthenticator];
  [v79 authenticationDidComplete];
  [a1 setEnteringForeground:0];
  if (([a1 shouldPreserveOnboardingUI] & 1) == 0)
  {
    [a1 removeActiveViewControllerAnimated:1 completionHandler:0];
    [a1 setSignInViewController:0];
  }

  v78 = [v7 gkIsNotConnectedToInternetError];
  if (v78)
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

    [a1 reportAuthenticationErrorNoInternetConnection];
  }

  if (![a1 isAuthenticated])
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

    v46 = [MEMORY[0x277D0C138] localPlayer];
    [v46 authStartTimeStamp];
    v48 = v47;

    if (v48 <= 0.0)
    {
      v55 = 0;
    }

    else
    {
      v49 = [MEMORY[0x277CBEAA8] date];
      [v49 timeIntervalSince1970];
      v51 = v50;
      v52 = [MEMORY[0x277D0C138] localPlayer];
      [v52 authStartTimeStamp];
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

    v58 = [MEMORY[0x277D0C1F8] reporter];
    [v58 reportPlayerAuthenticationFailure:v7];

    [v79 setLastAuthPlayerID:0];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [a1 reloadAccessPoint];
      [a1 showAccessPoint];
    }

    v59 = [MEMORY[0x277CCA9B8] userErrorForCode:6 underlyingError:v7];
    [a1 callAuthHandlerWithError:v59];

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
    v72 = [v21 shared];
    v76 = [v20 numberWithBool:{objc_msgSend(v72, "isAddingFriendsRestricted")}];
    v22 = MEMORY[0x277CCABB0];
    v71 = [MEMORY[0x277D0C1D8] shared];
    v75 = [v22 numberWithBool:{objc_msgSend(v71, "isMultiplayerGamingRestricted")}];
    v23 = MEMORY[0x277CCABB0];
    v70 = [MEMORY[0x277D0C1D8] shared];
    v74 = [v23 numberWithBool:{objc_msgSend(v70, "isGameCenterRestricted")}];
    v24 = MEMORY[0x277CCABB0];
    v68 = [MEMORY[0x277D0C1D8] shared];
    v25 = [v24 numberWithBool:{objc_msgSend(v68, "isCustomizedCommunicationRestricted")}];
    v26 = MEMORY[0x277CCABB0];
    v67 = [MEMORY[0x277D0C1D8] shared];
    v27 = [v26 numberWithBool:{objc_msgSend(v67, "isNearbyMultiplayerRestricted")}];
    v28 = MEMORY[0x277CCABB0];
    v66 = [MEMORY[0x277D0C1D8] shared];
    v29 = [v28 numberWithBool:{objc_msgSend(v66, "isProfileModificationRestricted")}];
    v30 = MEMORY[0x277CCABB0];
    v65 = [MEMORY[0x277D0C1D8] shared];
    v31 = [v30 numberWithBool:{objc_msgSend(v65, "isProfilePrivacyModificationRestricted")}];
    v32 = MEMORY[0x277CCABB0];
    v64 = [MEMORY[0x277D0C1D8] shared];
    v33 = [v32 numberWithUnsignedInteger:{objc_msgSend(v64, "multiplayerAllowedPlayerType")}];
    v34 = MEMORY[0x277CCABB0];
    v35 = [MEMORY[0x277D0C1D8] shared];
    v36 = [v34 numberWithBool:{objc_msgSend(v35, "isFriendsSharingRestricted")}];
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

  [a1 reportAuthenticationPlayerAuthenticated];
  if (!v7 || v78 && [a1 hasValidScopedIDs])
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
      v39 = [a1 shouldShowOnBoardingUI];
      if (a4 != 7 && v39 && [a1 shouldShowAnyOnboardingScreen])
      {
        if (([a1 shouldPreserveOnboardingUI] & 1) == 0)
        {
          [a1 showOnboardingUIWithSignInOrigin:a4];
        }

        goto LABEL_60;
      }
    }

    [a1 _showWelcomeBannerWithSignInOrigin:a4 uponReturnToForeground:a5];
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [a1 reloadAccessPoint];
    [a1 showAccessPoint];
  }

  [a1 callAuthHandlerWithError:v7];
LABEL_60:
  [a1 setNewToGameCenter:0];
  v60 = [MEMORY[0x277D0C048] isGameCenter];
  v61 = v78 ^ 1;
  if (!v7)
  {
    v61 = 0;
  }

  if ((v61 & 1) == 0 && !v60)
  {
    v62 = [a1 matchmaker];
    [v62 finishedAuthenticating];

    v63 = [MEMORY[0x277D0C230] sharedTurnBasedEventHandler];
    [v63 lookForEvent];
  }

  v15 = v79;
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

  [a1 reportAuthenticationLoginCanceled];
  v4 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
  [a1 authenticationDidCompleteWithError:v4];
}

- (uint64_t)showAuthenticateViewControllerForGameCenter
{
  [a1 setValidatingAccount:0];

  return [a1 authenticationShowSignInUIForLocalPlayer:a1 origin:0 dismiss:0];
}

- (void)applicationWillEnterForeground:()AuthenticationPrivate
{
  [a1 setAppIsInBackground:0];
  if ([a1 didAuthenticate] && (objc_msgSend(a1, "isAuthenticating") & 1) == 0)
  {
    v2 = [a1 currentAlert];

    if (v2)
    {
      v3 = [a1 currentAlert];
      [v3 setDelegate:0];

      v4 = [a1 currentAlert];
      [v4 dismissAnimated:1];

      [a1 setCurrentAlert:0];
    }

    [a1 setEnteringForeground:1];
    v5 = [objc_opt_class() sharedLocalPlayerAuthenticator];
    [v5 reset];
    [a1 startAuthenticationForExistingPrimaryPlayerUponReturnToForeground:1];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:a1 selector:sel_sharePlayEligibilityChanged_ name:*MEMORY[0x277D0BB60] object:0];
}

- (void)sharePlayEligibilityChanged:()AuthenticationPrivate
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"isEligibleForGroupSession"];
  v6 = [v5 BOOLValue];

  if (v6 && ([a1 isAuthenticated] & 1) == 0)
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

    [a1 startAuthenticationForExistingPrimaryPlayer];
  }
}

- (void)applicationDidEnterBackground:()AuthenticationPrivate
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:a1 name:*MEMORY[0x277D0BB60] object:0];

  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 postNotificationName:@"GameControllerNavigation_GKGameBackgrounded" object:0 userInfo:0 deliverImmediately:1];
}

- (void)_showViewControllerForLegacyApps:()AuthenticationPrivate
{
  v4 = a3;
  v5 = [MEMORY[0x277D0C1D8] shared];
  if ([v5 isAccountModificationRestricted])
  {
LABEL_18:

    goto LABEL_19;
  }

  v6 = [MEMORY[0x277D0C048] isGameCenter];

  if ((v6 & 1) == 0)
  {
    v7 = v4;
    objc_opt_class();
    v5 = v7;
    if (objc_opt_isKindOfClass())
    {
      v5 = [v7 visibleViewController];
    }

    objc_opt_respondsToSelector();
    v8 = [a1 rootViewController];
    v9 = [MEMORY[0x277D75128] sharedApplication];
    v10 = [v9 windows];
    v11 = [v10 firstObject];

    if (!v11)
    {
      v12 = [MEMORY[0x277D75128] sharedApplication];
      v11 = [v12 keyWindow];
    }

    v13 = [v11 rootViewController];
    v14 = v11;
    v15 = [v14 rootViewController];

    if (v15)
    {
      v16 = [v14 rootViewController];
      v17 = [v16 view];
    }

    else
    {
      objc_opt_class();
      v17 = v14;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_12:
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __73__GKLocalPlayer_AuthenticationPrivate___showViewControllerForLegacyApps___block_invoke;
        v26[3] = &unk_27967F1B0;
        v18 = v14;
        v27 = v18;
        v28 = a1;
        v29 = v7;
        v19 = v17;
        v30 = v19;
        v20 = MEMORY[0x253041B30](v26);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v8 presentedViewController];

          if (v21)
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __73__GKLocalPlayer_AuthenticationPrivate___showViewControllerForLegacyApps___block_invoke_2;
            v23[3] = &unk_27967F1D8;
            v25 = v20;
            v24 = v8;
            [v24 dismissViewControllerAnimated:1 completion:v23];
          }

          else
          {
            (v20)[2](v20, v8);
          }
        }

        else
        {
          v22 = objc_alloc_init(MEMORY[0x277D75F48]);
          (v20)[2](v20, v22);
        }

        goto LABEL_18;
      }

      v17 = [v13 view];
      v16 = v14;
    }

    goto LABEL_12;
  }

LABEL_19:
}

- (void)startLegacyAuthenticationWithCompletionHandler:()AuthenticationPrivate
{
  v4 = a3;
  v5 = [a1 authenticateHandler];

  objc_initWeak(&location, a1);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__GKLocalPlayer_AuthenticationPrivate__startLegacyAuthenticationWithCompletionHandler___block_invoke;
  v9[3] = &unk_27967F200;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  [a1 setAuthenticateHandler:v9];
  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__GKLocalPlayer_AuthenticationPrivate__startLegacyAuthenticationWithCompletionHandler___block_invoke_2;
    block[3] = &unk_27967F1D8;
    block[4] = a1;
    v8 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)dismissOnboardingUIIfPresent
{
  v0 = [MEMORY[0x277D0C138] local];
  v1 = [v0 signInViewController];

  if (v1)
  {
    v3 = [MEMORY[0x277D0C138] local];
    v2 = [v3 signInViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];
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