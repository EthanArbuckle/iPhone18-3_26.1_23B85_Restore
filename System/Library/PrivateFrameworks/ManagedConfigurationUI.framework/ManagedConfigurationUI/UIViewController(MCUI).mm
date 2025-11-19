@interface UIViewController(MCUI)
+ (id)_MCUIUnwrapViewController:()MCUI;
- (BOOL)MCUIIsShowingProgress;
- (void)MCUIHideProgressInNavBarShowBackButton:()MCUI;
- (void)MCUIReturnToSender:()MCUI returnToAccountSettings:viewControllerDismissalBlock:;
- (void)MCUIShowProgressInNavBar;
@end

@implementation UIViewController(MCUI)

- (void)MCUIShowProgressInNavBar
{
  v8 = [MEMORY[0x277CCACA8] MCMakeUUID];
  v2 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v3 = viewControllerPointerToIdentifierMap();
  [v3 setObject:v8 forKeyedSubscript:v2];

  v4 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  v5 = [a1 navigationItem];
  [v4 startAnimatingInNavItem:v5 forIdentifier:v8 hideBackButton:1];

  v6 = [a1 view];
  [v6 setUserInteractionEnabled:0];

  v7 = [a1 navigationItem];
  DMCSendNavUIUpdatedNotification();
}

- (void)MCUIHideProgressInNavBarShowBackButton:()MCUI
{
  v12 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v5 = viewControllerPointerToIdentifierMap();
  v6 = [v5 objectForKeyedSubscript:v12];

  if (v6)
  {
    v7 = viewControllerPointerToIdentifierMap();
    [v7 removeObjectForKey:v12];

    v8 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
    [v8 stopAnimatingForIdentifier:v6];

    if (a3)
    {
      v9 = [a1 navigationItem];
      [v9 setHidesBackButton:0 animated:1];
    }
  }

  v10 = [a1 view];
  [v10 setUserInteractionEnabled:1];

  v11 = [a1 navigationItem];
  DMCSendNavUIUpdatedNotification();
}

- (BOOL)MCUIIsShowingProgress
{
  v1 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v2 = viewControllerPointerToIdentifierMap();
  v3 = [v2 objectForKeyedSubscript:v1];
  v4 = v3 != 0;

  return v4;
}

- (void)MCUIReturnToSender:()MCUI returnToAccountSettings:viewControllerDismissalBlock:
{
  v6 = a5;
  v7 = +[MCURLListenerListController originalURLSender];
  [MCURLListenerListController setOriginalURLSender:0];
  if ([v7 length] && objc_msgSend(v7, "rangeOfString:", @"com.apple.Preferences") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v7 isEqualToString:@"com.apple.springboard"];
    v6[2](v6, v8);
    if ((v8 & 1) == 0)
    {
      v9 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __98__UIViewController_MCUI__MCUIReturnToSender_returnToAccountSettings_viewControllerDismissalBlock___block_invoke;
      v12[3] = &unk_2798622E0;
      v13 = v7;
      [v9 openApplication:v13 withOptions:0 completion:v12];

      goto LABEL_8;
    }
  }

  else
  {
    v6[2](v6, 1);
  }

  if (a4)
  {
    v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v11 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ACCOUNT_SETTINGS"];
    [v10 openSensitiveURL:v11 withOptions:0];
  }

LABEL_8:
}

+ (id)_MCUIUnwrapViewController:()MCUI
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 visibleViewController], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v3, "selectedViewController"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
LABEL_8:
    v7 = [MCUIViewController _MCUIUnwrapViewController:v5];

    goto LABEL_9;
  }

  v6 = [v3 presentedViewController];

  if (v6)
  {
    v5 = [v3 presentedViewController];
    goto LABEL_8;
  }

  v7 = v3;
LABEL_9:

  return v7;
}

@end