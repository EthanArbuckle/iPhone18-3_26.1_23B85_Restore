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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (_GKIsRemoteUIUsingPadIdiom & 1) != 0))
    {
      [v10 setModalPresentationStyle:16];
      v13 = +[GKUITheme sharedTheme];
      [v13 formSheetSize];
      [v10 setFormSheetSize:?];
    }

    navigationBar = [v10 navigationBar];
    v15 = +[GKUITheme sharedTheme];
    [navigationBar _gkApplyTheme:v15 navbarStyle:1];
  }

  else
  {
    v10 = v8;
  }

  [self setActiveViewController:v10];
  if (!v9)
  {
    authenticateHandler = [self authenticateHandler];

    if (!authenticateHandler)
    {
      goto LABEL_19;
    }

    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    if ([mEMORY[0x277D0C1D8] isAccountModificationRestricted])
    {
      isGameCenter = [MEMORY[0x277D0C048] isGameCenter];

      if ((isGameCenter & 1) == 0)
      {
        v21 = [MEMORY[0x277CCA9B8] userErrorForCode:4 underlyingError:0];
        v22 = 0;
LABEL_18:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __107__GKLocalPlayer_iOSAuthenticationUI__showViewController_usingPresentingViewController_wrapInNavController___block_invoke;
        block[3] = &unk_27967EF60;
        block[4] = self;
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

  presentedViewController = [v9 presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [v9 presentedViewController];
    [presentedViewController2 presentViewController:v10 animated:1 completion:0];
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
  activeViewController = [self activeViewController];
  [self setActiveViewController:0];
  rootViewController = [self rootViewController];

  if (rootViewController)
  {
    rootViewController2 = [self rootViewController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__GKLocalPlayer_iOSAuthenticationUI__removeActiveViewControllerAnimated_completionHandler___block_invoke;
    v12[3] = &unk_27967F1D8;
    v14 = v6;
    v13 = activeViewController;
    [rootViewController2 dismissViewControllerAnimated:a3 completion:v12];
  }

  else
  {
    presentingViewController = [activeViewController presentingViewController];
    v11 = presentingViewController;
    if (presentingViewController)
    {
      [presentingViewController dismissViewControllerAnimated:a3 completion:v6];
    }

    else if (v6)
    {
      v6[2](v6);
    }
  }
}

@end