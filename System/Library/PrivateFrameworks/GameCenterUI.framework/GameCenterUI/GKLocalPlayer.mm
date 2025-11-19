@interface GKLocalPlayer
@end

@implementation GKLocalPlayer

void __67__GKLocalPlayer_Photos__setPhoto_avatarType_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 clearInMemoryCachedAvatars];
    v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    v25 = a1;
    v6 = [*(a1 + 40) internal];
    v7 = [v6 playerID];
    v26 = GKAvatarSubdirectoryNameForPlayerID();

    for (i = 0; i != 4; ++i)
    {
      v9 = qword_24E367640[i];
      v10 = GKImageURLKeyForSize();
      v11 = [v2 _gkImageByScalingToSize:v9 scale:{v9, 1.0}];
      [v27 setObject:v11 forKey:v10];
      v12 = UIImagePNGRepresentation(v11);
      [v4 setObject:v12 forKey:v10];

      v13 = [MEMORY[0x277D0C8C8] sharedTheme];
      v14 = [v13 avatarSourceWithDimension:v9];

      v15 = [v14 keyForImageIdentifier:v26];
      v16 = [v15 basename];
      [v5 setObject:v16 forKeyedSubscript:v10];
    }

    [v5 setObject:@"temporaryTemplateAvatar.tmp" forKeyedSubscript:@"template"];
    v17 = [MEMORY[0x277CBEA90] data];
    [v4 setObject:v17 forKey:@"template"];

    v18 = [*(v25 + 40) daemonProxy];
    v19 = [v18 profileServicePrivate];

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:*(v25 + 56)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67__GKLocalPlayer_Photos__setPhoto_avatarType_withCompletionHandler___block_invoke_2;
    v28[3] = &unk_27966A3E0;
    v29 = v19;
    v21 = v2;
    v22 = *(v25 + 48);
    v33 = *(v25 + 56);
    v23 = *(v25 + 40);
    v30 = v21;
    v31 = v23;
    v32 = v22;
    v24 = v19;
    [v24 cachePhotos:v4 avatarType:v20 fileNames:v5 handler:v28];
  }

  else
  {
    [v3 deletePhotoWithCompletionHandler:*(a1 + 48)];
  }
}

void __67__GKLocalPlayer_Photos__setPhoto_avatarType_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = UIImagePNGRepresentation(*(a1 + 40));
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  [v2 setPhotoData:v3 avatarType:v4 handler:&__block_literal_global_9];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__GKLocalPlayer_Photos__setPhoto_avatarType_withCompletionHandler___block_invoke_4;
  v6[3] = &unk_27966A3B8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v5 loadProfileWithCompletionHandler:v6];
}

uint64_t __67__GKLocalPlayer_Photos__setPhoto_avatarType_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __89__GKLocalPlayer_Photos__setPhotoFromCNContactImage_pendingContact_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) imageData];
  if (v4 && (v5 = v4, v6 = MEMORY[0x277D755B8], [*(a1 + 32) imageData], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "_gkImageWithCheckedData:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v5, v8))
  {
    if ([*(a1 + 40) source] == 1 || objc_msgSend(*(a1 + 40), "source") == 4)
    {
      v9 = 1;
    }

    else
    {
      [v8 size];
      v13 = v12;
      [v8 size];
      v15 = v14;
      [*(a1 + 40) cropRect];
      if (CGRectIsEmpty(v32))
      {
        v16 = 0.0;
        v17 = 0.0;
      }

      else
      {
        [*(a1 + 40) cropRect];
        v16 = v18;
        v17 = v19;
        v13 = v20;
        v15 = v21;
      }

      v22 = [v8 CGImage];
      v33.origin.x = v16;
      v33.origin.y = v17;
      v33.size.width = v13;
      v33.size.height = v15;
      v23 = CGImageCreateWithImageInRect(v22, v33);
      v24 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v23];

      CGImageRelease(v23);
      v9 = 2;
      v8 = v24;
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __89__GKLocalPlayer_Photos__setPhotoFromCNContactImage_pendingContact_withCompletionHandler___block_invoke_2;
    v29[3] = &unk_27966A430;
    v25 = *(a1 + 48);
    v30 = *(a1 + 56);
    v31 = v3;
    v11 = v3;
    [v25 setPhoto:v8 avatarType:v9 withCompletionHandler:v29];
  }

  else
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __89__GKLocalPlayer_Photos__setPhotoFromCNContactImage_pendingContact_withCompletionHandler___block_invoke_3;
    v26[3] = &unk_27966A430;
    v10 = *(a1 + 48);
    v27 = *(a1 + 56);
    v28 = v3;
    v8 = v3;
    [v10 deletePhotoWithCompletionHandler:v26];

    v11 = v27;
  }
}

uint64_t __89__GKLocalPlayer_Photos__setPhotoFromCNContactImage_pendingContact_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __89__GKLocalPlayer_Photos__setPhotoFromCNContactImage_pendingContact_withCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __89__GKLocalPlayer_Photos__setPhotoFromCNContactImage_pendingContact_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C8C8] sharedTheme];
  v5 = [v4 monogramSourceWithDimension:*(a1 + 40)];

  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke_2;
  v8[3] = &unk_27966A4A8;
  v9 = v3;
  v7 = v3;
  [v5 deleteImageUsingGamedWithSubdirectory:v6 withHandler:v8];
}

void __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke_4;
  v6[3] = &unk_27966A3B8;
  v7 = v3;
  v5 = v3;
  [v4 deletePhotoWithCompletionHandler:v6];
}

void __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    v5 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke_4_cold_1(v3, v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __88__GKLocalPlayer_AuthenticationExtras__showSignInBannerForLocalPlayer_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  if (![v5 integerValueFromKey:*MEMORY[0x277D0BFA0] defaultValue:0])
  {
    goto LABEL_7;
  }

  if ([a1[4] didShowWelcomeBannerInOverlayWithNewUserState:objc_msgSend(a1[4] uponReturnToForeground:{"isNewToGameCenter"), 0}])
  {
    [MEMORY[0x277D0C858] didShowBanner];
    v7 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    v8 = [v7 accountService];
    [v8 didShowSignInBanner];

    (*(a1[6] + 2))();
    goto LABEL_13;
  }

  if (([a1[4] isBannerVisible] & 1) == 0)
  {
    v10 = +[GKAccessPoint shared];
    v9 = [v10 isActive] ^ 1;
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

  v11 = [MEMORY[0x277D0C850] SIGN_IN_BANNER_TITLE];
  if (v9)
  {
    v12 = a1[4];
    v13 = [MEMORY[0x277D0C850] SIGN_IN_BANNER_SUBTITLE];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__GKLocalPlayer_AuthenticationExtras__showSignInBannerForLocalPlayer_completionHandler___block_invoke_2;
    v18[3] = &unk_2796699A8;
    v19 = a1[5];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__GKLocalPlayer_AuthenticationExtras__showSignInBannerForLocalPlayer_completionHandler___block_invoke_3;
    v16[3] = &unk_27966A958;
    v16[4] = a1[4];
    v17 = a1[6];
    [v12 showBannerWithTitle:v11 message:v13 touchHandler:v18 completionHandler:v16];

    [MEMORY[0x277D0C858] didShowBanner];
    v14 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
    v15 = [v14 accountService];
    [v15 didShowSignInBanner];
  }

  else
  {
    (*(a1[6] + 2))();
  }

LABEL_13:
}

void __88__GKLocalPlayer_AuthenticationExtras__showSignInBannerForLocalPlayer_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D0C138] authenticationPersonality];
  [v2 authenticationShowSignInUIForLocalPlayer:*(a1 + 32) origin:2 dismiss:0];
}

uint64_t __88__GKLocalPlayer_AuthenticationExtras__showSignInBannerForLocalPlayer_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setIsWelcomeOrSignInBannerEnqueued:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D0C138] local];
  [v3 setShouldPreserveOnboardingUI:0];
  [v3 setAuthenticated:{objc_msgSend(v2, "gkIsUnauthenticatedError") ^ 1}];
  v4 = [MEMORY[0x277D0C138] local];
  [v4 showAccessPoint];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_2;
  v7[3] = &unk_279669E48;
  v8 = v3;
  v9 = v2;
  v5 = v2;
  v6 = v3;
  [v6 removeActiveViewControllerAnimated:1 completionHandler:v7];
}

void __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_3;
  v3[3] = &unk_27966A8E0;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 refreshInternalWithCompletion:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_4;
  v3[3] = &unk_279669E48;
  v3[4] = WeakRetained;
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MEMORY[0x277D0C138] local];
  [v4 setAuthenticated:0];
  v5 = [v4 signInViewController];
  v6 = v5;
  v7 = *MEMORY[0x277D0C2A0];
  if (v3 || !v5)
  {
    if (v3)
    {
      if (!v7)
      {
        v15 = GKOSLoggers();
      }

      v16 = *MEMORY[0x277D0C290];
      if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
      {
        __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_5_cold_1(v3, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    else
    {
      if (!v7)
      {
        v23 = GKOSLoggers();
      }

      v24 = *MEMORY[0x277D0C290];
      if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
      {
        __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_5_cold_2(v24);
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C2B8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B8], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24DE53000, v9, OS_LOG_TYPE_INFO, "showOnboardingUIFromViewController: Showing Onboarding view controller", buf, 2u);
    }

    v10 = [MEMORY[0x277D75128] sharedApplication];
    v11 = [v10 keyWindow];
    v12 = [v11 rootViewController];

    v13 = dispatch_time(0, 200000000);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_51;
    v25[3] = &unk_279669E48;
    v26 = v4;
    v27 = v12;
    v14 = v12;
    dispatch_after(v13, MEMORY[0x277D85CD0], v25);
  }
}

void __87__GKLocalPlayer_AuthenticationExtras__showOnboardingUIFromViewController_signInOrigin___block_invoke_51(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 signInViewController];
  [v2 showViewController:v3 usingPresentingViewController:*(a1 + 40) wrapInNavController:0];
}

void __106__GKLocalPlayer_AuthenticationExtras__authenticationShowGreenBuddyUIForLocalPlayer_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);
  [v4 setShowingInGameUI:0];

  v5 = [*(a1 + 32) rootViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [*(a1 + 32) activeViewController];
    v7 = [v8 presentingViewController];
  }

  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __106__GKLocalPlayer_AuthenticationExtras__authenticationShowGreenBuddyUIForLocalPlayer_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_27966CDD0;
  v10 = v7;
  v13 = v10;
  objc_copyWeak(&v16, &to);
  v14 = *(a1 + 32);
  v11 = v3;
  v15 = v11;
  [v9 removeActiveViewControllerAnimated:1 completionHandler:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&to);
}

void __106__GKLocalPlayer_AuthenticationExtras__authenticationShowGreenBuddyUIForLocalPlayer_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D0C138] local];
  if (![v2 isAuthenticated] || !*(a1 + 32))
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (([WeakRetained shouldShowOnBoardingUI] & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 shouldShowAnyOnboardingScreen];

  if (v5)
  {
    v8 = objc_loadWeakRetained((a1 + 56));
    [v8 showOnboardingUIFromViewController:*(a1 + 32) signInOrigin:0];

    return;
  }

LABEL_10:
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  [v6 authenticationDidCompleteWithError:v7];
}

void __106__GKLocalPlayer_AuthenticationExtras__authenticationShowGreenBuddyUIForLocalPlayer_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277D0C2A0];
  if (v6)
  {
    if (!v7)
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __106__GKLocalPlayer_AuthenticationExtras__authenticationShowGreenBuddyUIForLocalPlayer_withCompletionHandler___block_invoke_3_cold_1(v6, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    if (!v7)
    {
      v16 = GKOSLoggers();
    }

    v17 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_24DE53000, v17, OS_LOG_TYPE_INFO, "authenticationShowGreenBuddyUIForLocalPlayer:Showing sign in view controller", v20, 2u);
    }

    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) signInViewController];
    [v18 showViewController:v19 usingPresentingViewController:0 wrapInNavController:0];
  }
}

void __95__GKLocalPlayer_AuthenticationExtras__authenticationShowSignInUIForLocalPlayer_origin_dismiss___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, a1 + 6);
  v4 = objc_loadWeakRetained(&to);
  [v4 setShowingInGameUI:0];

  v5 = [a1[4] rootViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [a1[4] activeViewController];
    v7 = [v8 presentingViewController];
  }

  v9 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__GKLocalPlayer_AuthenticationExtras__authenticationShowSignInUIForLocalPlayer_origin_dismiss___block_invoke_2;
  v12[3] = &unk_27966CE48;
  v10 = v7;
  v13 = v10;
  objc_copyWeak(v17, &to);
  v17[1] = a1[7];
  v14 = a1[4];
  v11 = v3;
  v15 = v11;
  v16 = a1[5];
  [v9 removeActiveViewControllerAnimated:1 completionHandler:v12];

  objc_destroyWeak(v17);
  objc_destroyWeak(&to);
}

uint64_t __95__GKLocalPlayer_AuthenticationExtras__authenticationShowSignInUIForLocalPlayer_origin_dismiss___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D0C138] local];
  if (![v2 isAuthenticated] || !*(a1 + 32))
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (([WeakRetained shouldShowOnBoardingUI] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v4 = objc_loadWeakRetained((a1 + 64));
  v5 = [v4 shouldShowAnyOnboardingScreen];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 64));
    [v6 showOnboardingUIFromViewController:*(a1 + 32) signInOrigin:*(a1 + 72)];

    goto LABEL_9;
  }

LABEL_8:
  [*(a1 + 40) authenticationDidCompleteWithError:*(a1 + 48) signInOrigin:*(a1 + 72)];
LABEL_9:
  result = *(a1 + 56);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __95__GKLocalPlayer_AuthenticationExtras__authenticationShowSignInUIForLocalPlayer_origin_dismiss___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277D0C2A0];
  if (v6)
  {
    if (!v7)
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __95__GKLocalPlayer_AuthenticationExtras__authenticationShowSignInUIForLocalPlayer_origin_dismiss___block_invoke_3_cold_1(v6, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    if (!v7)
    {
      v16 = GKOSLoggers();
    }

    v17 = *MEMORY[0x277D0C2C8];
    if (os_log_type_enabled(*MEMORY[0x277D0C2C8], OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&dword_24DE53000, v17, OS_LOG_TYPE_INFO, "authenticationShowSignInUIForLocalPlayer:Showing sign in view controller", v23, 2u);
    }

    v18 = [MEMORY[0x277D75128] sharedApplication];
    v19 = [v18 keyWindow];
    v20 = [v19 rootViewController];

    v21 = *(a1 + 32);
    v22 = [v21 signInViewController];
    [v21 showViewController:v22 usingPresentingViewController:v20 wrapInNavController:0];
  }
}

uint64_t __53__GKLocalPlayer_Friends__sendFriendInviteTo_groupId___block_invoke(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    v5 = result;
    v6 = *(result + 32);
    v7 = a3;
    [v6 setObject:a2 forKeyedSubscript:@"friendCode"];
    [*(v5 + 32) setObject:v7 forKeyedSubscript:@"friendUrl"];

    v9 = *(v5 + 32);
    v8 = *(v5 + 40);
    v10 = *(v5 + 48);
    v11 = *(v5 + 56);

    return [v8 openMessagesWith:v9 recipient:v10 groupId:v11];
  }

  return result;
}

void __61__GKLocalPlayer_Friends__openMessagesWith_recipient_groupId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = MEMORY[0x277D0C2A0];
    v7 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_24DE53000, v7, OS_LOG_TYPE_DEFAULT, "error opening friend request url", v9, 2u);
    }
  }
}

void __52__GKLocalPlayer_Photos__deleteMonogramsWithHandler___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "Error deleting monogram image for local player %@", &v2, 0xCu);
}

@end