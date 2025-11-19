@interface GKLocalPlayer(iOSAuthenticationUI)
- (void)removeActiveViewControllerAnimated:()iOSAuthenticationUI completionHandler:;
- (void)showViewController:()iOSAuthenticationUI usingPresentingViewController:wrapInNavController:;
@end

@implementation GKLocalPlayer(iOSAuthenticationUI)

- (void)showViewController:()iOSAuthenticationUI usingPresentingViewController:wrapInNavController:
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
    v11 = [MEMORY[0x277D75418] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 1 && (*MEMORY[0x277D0C258] != 1 || (_GKIsRemoteUIUsingPadIdiom & 1) != 0))
    {
      [v10 setModalPresentationStyle:16];
      v13 = +[GKUITheme sharedTheme];
      [v13 formSheetSize];
      [v10 setFormSheetSize:?];
    }

    v14 = [v10 navigationBar];
    v15 = +[GKUITheme sharedTheme];
    [v14 _gkApplyTheme:v15 navbarStyle:1];
  }

  else
  {
    v10 = v8;
  }

  [a1 setActiveViewController:v10];
  if (!v9)
  {
    v18 = [a1 authenticateHandler];

    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = [MEMORY[0x277D0C1D8] shared];
    if ([v19 isAccountModificationRestricted])
    {
      v20 = [MEMORY[0x277D0C048] isGameCenter];

      if ((v20 & 1) == 0)
      {
        v21 = [MEMORY[0x277CCA9B8] userErrorForCode:4 underlyingError:0];
        v22 = 0;
LABEL_18:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __107__GKLocalPlayer_iOSAuthenticationUI__showViewController_usingPresentingViewController_wrapInNavController___block_invoke;
        block[3] = &unk_27967EF60;
        block[4] = a1;
        v26 = v22;
        v27 = v21;
        v23 = v21;
        v24 = v22;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_19;
      }
    }

    else
    {
    }

    v22 = v10;
    v21 = 0;
    goto LABEL_18;
  }

  v16 = [v9 presentedViewController];

  if (v16)
  {
    v17 = [v9 presentedViewController];
    [v17 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    [v9 presentViewController:v10 animated:1 completion:0];
  }

LABEL_19:
}

- (void)removeActiveViewControllerAnimated:()iOSAuthenticationUI completionHandler:
{
  v6 = a4;
  v7 = [a1 activeViewController];
  [a1 setActiveViewController:0];
  v8 = [a1 rootViewController];

  if (v8)
  {
    v9 = [a1 rootViewController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__GKLocalPlayer_iOSAuthenticationUI__removeActiveViewControllerAnimated_completionHandler___block_invoke;
    v12[3] = &unk_27967F1D8;
    v14 = v6;
    v13 = v7;
    [v9 dismissViewControllerAnimated:a3 completion:v12];
  }

  else
  {
    v10 = [v7 presentingViewController];
    v11 = v10;
    if (v10)
    {
      [v10 dismissViewControllerAnimated:a3 completion:v6];
    }

    else if (v6)
    {
      v6[2](v6);
    }
  }
}

@end