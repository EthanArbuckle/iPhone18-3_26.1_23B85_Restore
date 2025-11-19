@interface GKLocalPlayer
@end

@implementation GKLocalPlayer

void __45__GKLocalPlayer_UIExtras__currentLocalPlayer__block_invoke()
{
  v0 = [MEMORY[0x277D0C138] local];
  v1 = currentLocalPlayer_sCurrentLocalPlayer;
  currentLocalPlayer_sCurrentLocalPlayer = v0;

  if (([currentLocalPlayer_sCurrentLocalPlayer isAuthenticated] & 1) == 0)
  {
    v2 = [MEMORY[0x277D0C138] authenticatedLocalPlayers];
    v3 = [v2 firstObject];

    if ([v3 isAuthenticated])
    {
      v4 = [v3 internal];
      [currentLocalPlayer_sCurrentLocalPlayer setInternal:v4];

      v5 = [v3 isAuthenticated];
      [currentLocalPlayer_sCurrentLocalPlayer setAuthenticated:v5];
    }
  }

  v6 = [currentLocalPlayer_sCurrentLocalPlayer internal];
  v7 = [v6 isLocalPlayer];

  if ((v7 & 1) == 0)
  {
    v8 = currentLocalPlayer_sCurrentLocalPlayer;
    v9 = currentLocalPlayer_sCurrentLocalPlayer;

    [v8 promotePlayerInternalToLocalPlayerInternal:v9];
  }
}

void __70__GKLocalPlayer_AuthenticationPrivate__sharedLocalPlayerAuthenticator__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) localPlayer];
  v1 = [GKLocalPlayerAuthenticator authenticatorForExistingPlayer:v3];
  v2 = sharedLocalPlayerAuthenticator_authenticator;
  sharedLocalPlayerAuthenticator_authenticator = v1;
}

void __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke(uint64_t a1, int a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72))
  {
    v3 = 0;
  }

  else
  {
    v5 = +[GKWelcomeBannerVisibility shared];
    if ([v5 isShowingRemoteUI])
    {
      v3 = 0;
    }

    else
    {
      v3 = [*(a1 + 32) shouldDisplayWelcomeBannerForPlayer:*(a1 + 40) lastAuthDate:*(a1 + 48) remoteUI:*MEMORY[0x277D0C258] timeBetweenBanners:0.0] & (a2 ^ 1);
    }
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceDate:*(a1 + 48)];
  v8 = v7;

  v9 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v10 = GKOSLoggers();
  }

  v11 = *MEMORY[0x277D0C2C8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
  {
    if ((v3 & (v8 >= 480.0)) != 0)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 138412290;
    v48 = v12;
    _os_log_impl(&dword_24E4A8000, v11, OS_LOG_TYPE_INFO, "_showWelcomeBanner will show Welcome Banner? %@", buf, 0xCu);
  }

  v13 = (a1 + 32);
  v14 = [*(a1 + 32) internal];
  v15 = [v14 playerID];
  [*(a1 + 56) setLastAuthPlayerID:v15];

  if (v3)
  {
    if (v8 < 480.0)
    {
      [*v13 updateAccessPointUponReturnToForeground];
      return;
    }

    if ([*v13 didShowWelcomeBannerInOverlayWithNewUserState:objc_msgSend(*v13 uponReturnToForeground:{"isNewToGameCenter"), *(a1 + 73)}])
    {
      return;
    }

    v16 = [MEMORY[0x277D0C138] local];
    [v16 hideAccessPoint];

    if ([*v13 isWelcomeBannerTooLate])
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        [*v13 reloadAccessPoint];
        [*v13 showAccessPoint];
      }

      return;
    }

    v17 = [*v13 alias];
    v18 = [*v13 internal];
    v19 = [v18 isDefaultNickname];

    v20 = [*v13 internal];
    v21 = [v20 isDefaultPrivacyVisibility];

    v22 = [*v13 internal];
    v23 = [v22 isDefaultContactsIntegrationConsent];

    if (!*v9)
    {
      v24 = GKOSLoggers();
    }

    v25 = *MEMORY[0x277D0C280];
    if (os_log_type_enabled(*MEMORY[0x277D0C280], OS_LOG_TYPE_INFO))
    {
      v26 = MEMORY[0x277CCABB0];
      v27 = v25;
      v28 = [v26 numberWithBool:v19];
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v21];
      v30 = [MEMORY[0x277CCABB0] numberWithBool:v23];
      *buf = 138413058;
      v48 = v17;
      v49 = 2112;
      v50 = v28;
      v51 = 2112;
      v52 = v29;
      v53 = 2112;
      v54 = v30;
      _os_log_impl(&dword_24E4A8000, v27, OS_LOG_TYPE_INFO, "is the current player nickname? (%@) a default nickname? (%@) default privacy? (%@) default Contacts Integration Consent? (%@)", buf, 0x2Au);
    }

    v31 = *v13;
    if (v17)
    {
      [v31 isNewToGameCenter];
    }

    else
    {
      v17 = [v31 displayNameWithOptions:0];
      if (!v17)
      {
        v36 = *v9;
        if (!*v9)
        {
          v37 = GKOSLoggers();
          v36 = *v9;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke_cold_1((a1 + 32), v36);
        }

        [*v13 isNewToGameCenter];
        v33 = GKGameCenterUIFrameworkBundle();
        v35 = GKGetLocalizedStringFromTableInBundle();
        v17 = 0;
        goto LABEL_37;
      }

      [*v13 isNewToGameCenter];
    }

    v32 = MEMORY[0x277CCACA8];
    v33 = GKGameCenterUIFrameworkBundle();
    v34 = GKGetLocalizedStringFromTableInBundle();
    v35 = [v32 localizedStringWithFormat:v34, v17];

LABEL_37:
    objc_initWeak(buf, *v13);
    if (objc_opt_respondsToSelector())
    {
      if (*(a1 + 64))
      {
        v38 = [MEMORY[0x277D0C218] stringForOrigin:?];
      }

      else
      {
        v38 = 0;
      }

      v41 = [MEMORY[0x277D0BFA8] reporter];
      [v41 recordPageWithID:@"welcomeBannerPage" pageContext:@"thirdParty" pageType:@"welcomeBanner" refApp:v38];

      v42 = *v13;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke_139;
      v45[3] = &unk_27967F098;
      objc_copyWeak(&v46, buf);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke_2;
      v43[3] = &unk_27967F0C0;
      v43[4] = *v13;
      objc_copyWeak(&v44, buf);
      [v42 showWelcomeBannerWithTitle:v35 message:0 touchHandler:v45 completionHandler:v43];
      objc_destroyWeak(&v44);
      objc_destroyWeak(&v46);
    }

    else
    {
      if (!*v9)
      {
        v39 = GKOSLoggers();
      }

      v40 = *MEMORY[0x277D0C290];
      if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
      {
        __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke_cold_2(v40);
      }
    }

    objc_destroyWeak(buf);
  }
}

void __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke_139(uint64_t a1)
{
  v2 = [MEMORY[0x277D0BFA8] reporter];
  [v2 recordClickWithAction:@"navigate" targetId:@"dashboard" targetType:@"welcomeBanner" pageId:@"welcomeBannerPage" pageType:@"welcomeBanner"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showDashboardFromWelcomeBanner];
}

void __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsWelcomeOrSignInBannerEnqueued:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadAccessPoint];
  [WeakRetained showAccessPoint];
}

void __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSince1970];
  v4 = v3;
  v5 = [MEMORY[0x277D0C138] localPlayer];
  [v5 setAuthStartTimeStamp:v4];

  v6 = [objc_opt_class() sharedLocalPlayerAuthenticator];
  [*(a1 + 32) setDidAuthenticate:1];
  [*(a1 + 32) setInsideAuthenticatorInvocation:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke_2;
  v7[3] = &unk_27967F138;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  [v6 authenticateWithCompletionHandler:v7];
}

void __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 accessPointIsOnAutomatically];
  v13 = [MEMORY[0x277D0C1D8] shared];
  [v13 setAccessPointIsOnAutomatically:v12];

  v14 = [v11 accessPointShowHighlights];
  v15 = [MEMORY[0x277D0C1D8] shared];
  [v15 setAccessPointShowHighlights:v14];

  v16 = [v11 accessPointLocation];
  v17 = [MEMORY[0x277D0C1D8] shared];
  [v17 setAccessPointLocation:v16];

  if (v10)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v18 = GKOSLoggers();
    }

    v19 = *MEMORY[0x277D0C260];
    if (os_log_type_enabled(*MEMORY[0x277D0C260], OS_LOG_TYPE_ERROR))
    {
      __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke_2_cold_1(v10, v19);
    }
  }

  v20 = v9;
  if (!v9)
  {
    v20 = *(a1 + 32);
  }

  v21 = v20;

  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        if (!*MEMORY[0x277D0C2A0])
        {
          v27 = GKOSLoggers();
        }

        v28 = *MEMORY[0x277D0C2C8];
        if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_24E4A8000, v28, OS_LOG_TYPE_INFO, "startAuthenticationForExistingPrimaryPlayer:Local Player Authentication: Success", buf, 2u);
        }

        v29 = *(a1 + 40);
        v30 = v21;
        v31 = 0;
        goto LABEL_43;
      case 1:
        if (!*MEMORY[0x277D0C2A0])
        {
          v36 = GKOSLoggers();
        }

        v37 = *MEMORY[0x277D0C2C8];
        if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_24E4A8000, v37, OS_LOG_TYPE_INFO, "startAuthenticationForExistingPrimaryPlayer:Local Player Authentication: Authentication Error", buf, 2u);
        }

LABEL_42:
        v29 = *(a1 + 40);
        v30 = v21;
        v31 = v10;
LABEL_43:
        [v30 authenticationDidCompleteWithError:v31 uponReturnToForeground:v29];
        break;
      case 2:
        if (!*MEMORY[0x277D0C2A0])
        {
          v22 = GKOSLoggers();
        }

        v23 = *MEMORY[0x277D0C2C8];
        if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_24E4A8000, v23, OS_LOG_TYPE_INFO, "startAuthenticationForExistingPrimaryPlayer:Local Player Authentication: Show Green Buddy", buf, 2u);
        }

        v24 = [MEMORY[0x277D0C138] authenticationPersonality];
        [v24 authenticationShowGreenBuddyUIForLocalPlayer:v21 withCompletionHandler:0];

        break;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
LABEL_22:
        if (!*MEMORY[0x277D0C2A0])
        {
          v25 = GKOSLoggers();
        }

        v26 = *MEMORY[0x277D0C2C8];
        if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_24E4A8000, v26, OS_LOG_TYPE_INFO, "startAuthenticationForExistingPrimaryPlayer:Local Player Authentication: Show Authentication UI", buf, 2u);
        }

        [*(a1 + 32) presentAuthenticationUIForLocalPlayer:v21];
        goto LABEL_44;
      }

      v32 = [v21 signInViewController];

      if (v32)
      {
        if (!*MEMORY[0x277D0C2A0])
        {
          v33 = GKOSLoggers();
        }

        v34 = *MEMORY[0x277D0C2C8];
        if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_24E4A8000, v34, OS_LOG_TYPE_INFO, "startAuthenticationForExistingPrimaryPlayer:Local Player Authentication: Show Password Change UI", buf, 2u);
        }

        goto LABEL_44;
      }

      goto LABEL_42;
    }

    if (a2 == 5)
    {
      objc_initWeak(buf, *(a1 + 32));
      v35 = *(a1 + 32);
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke_153;
      v41 = &unk_27967F110;
      objc_copyWeak(&v44, buf);
      v42 = v21;
      v43 = v10;
      v45 = *(a1 + 40);
      [v35 showSignInBannerForLocalPlayer:v42 completionHandler:&v38];

      objc_destroyWeak(&v44);
      objc_destroyWeak(buf);
      goto LABEL_44;
    }

    if (a2 == 6)
    {
      goto LABEL_22;
    }
  }

LABEL_44:
  [*(a1 + 32) setInsideAuthenticatorInvocation:{0, v38, v39, v40, v41}];
}

void __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke_153(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setShouldPreserveOnboardingUI:1];
  [*(a1 + 32) authenticationDidCompleteWithError:*(a1 + 40) uponReturnToForeground:*(a1 + 56)];
}

void __111__GKLocalPlayer_AuthenticationPrivate__authenticationDidCompleteWithError_signInOrigin_uponReturnToForeground___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) validateAccountCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) validateAccountCompletionHandler];
    v3[2](v3, *(a1 + 40));

    v4 = *(a1 + 32);

    [v4 setValidateAccountCompletionHandler:0];
  }
}

void __73__GKLocalPlayer_AuthenticationPrivate___showViewControllerForLegacyApps___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setRotationDecider:v3];
  [*(a1 + 40) setRootViewController:v4];
  [v4 _presentViewController:*(a1 + 48) sendingView:*(a1 + 56) animated:1];
}

void __87__GKLocalPlayer_AuthenticationPrivate__startLegacyAuthenticationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v8 && WeakRetained)
  {
    [WeakRetained _showViewControllerForLegacyApps:v8];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, v5);
    }
  }
}

void __87__GKLocalPlayer_AuthenticationPrivate__startLegacyAuthenticationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    if ([*(a1 + 32) isAuthenticated])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v2 = [*(a1 + 32) isAuthenticating];
      v3 = *(a1 + 40);
      if (v2)
      {
        v4 = 7;
      }

      else
      {
        v4 = 2;
      }

      v5 = [MEMORY[0x277CCA9B8] userErrorForCode:v4 underlyingError:0];
      (*(v3 + 16))(v3, v5);
    }
  }

  if ([*(a1 + 32) isAuthenticated])
  {
    v6 = [*(a1 + 32) internal];
    v7 = [v6 playerID];
    if (v7)
    {
      v14[0] = *MEMORY[0x277D0BCE0];
      v8 = [*(a1 + 32) internal];
      v9 = [v8 playerID];
      v15[0] = v9;
      v14[1] = *MEMORY[0x277D0BCD8];
      v10 = [*(a1 + 32) internal];
      v11 = [v10 playerID];
      v15[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:*MEMORY[0x277D0BCD0] object:*(a1 + 32) userInfo:v12];
}

void __107__GKLocalPlayer_iOSAuthenticationUI__showViewController_usingPresentingViewController_wrapInNavController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authenticateHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void __91__GKLocalPlayer_iOSAuthenticationUI__removeActiveViewControllerAnimated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) dismissCompletionHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      [*(a1 + 32) setDismissCompletionHandler:0];
      v3 = v4;
    }
  }
}

void __98__GKLocalPlayer_AuthenticationPrivate___showWelcomeBannerWithSignInOrigin_uponReturnToForeground___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_24E4A8000, a2, OS_LOG_TYPE_DEBUG, "name and alias missing for %@", &v3, 0xCu);
}

void __106__GKLocalPlayer_AuthenticationPrivate__startAuthenticationForExistingPrimaryPlayerUponReturnToForeground___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24E4A8000, a2, OS_LOG_TYPE_ERROR, "startAuthenticationForExistingPrimaryPlayer:Failed to Authenticate player.Error: %@", &v2, 0xCu);
}

@end