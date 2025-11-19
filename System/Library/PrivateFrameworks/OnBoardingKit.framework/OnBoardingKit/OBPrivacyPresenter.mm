@interface OBPrivacyPresenter
+ (id)presenterForPrivacySplashWithBundle:(id)a3;
+ (id)presenterForPrivacySplashWithBundleAtPath:(id)a3;
+ (id)presenterForPrivacySplashWithIdentifier:(id)a3;
+ (id)presenterForPrivacyUnifiedAbout;
+ (id)presenterForPrivacyUnifiedAboutWithBundles:(id)a3;
+ (id)presenterForPrivacyUnifiedAboutWithBundlesAtPaths:(id)a3;
+ (id)presenterForPrivacyUnifiedAboutWithIdentifiers:(id)a3;
- (UIViewController)presentingViewController;
- (void)_presenterDidDismiss;
- (void)dismiss;
- (void)present;
- (void)setDisplayDeviceType:(unint64_t)a3;
- (void)setDisplayLanguage:(id)a3;
@end

@implementation OBPrivacyPresenter

+ (id)presenterForPrivacySplashWithBundle:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"com.apple.onboarding.imessagefacetime"];

  if (v6)
  {
    v7 = [a1 presenterForPrivacyUnifiedAboutWithIdentifiers:&unk_1F2CF8748];
  }

  else
  {
    v8 = [v4 privacyFlow];
    if (v8)
    {
      v7 = objc_alloc_init(OBPrivacyPresenter);
      v9 = [[OBPrivacySplashController alloc] initWithFlow:v8];
      [(OBPrivacyPresenter *)v7 setSplashController:v9];

      v10 = [(OBPrivacyPresenter *)v7 splashController];
      [v10 setShowsLinkToUnifiedAbout:1];

      v11 = [v8 identifier];
      v15[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [(OBPrivacyPresenter *)v7 setPresentedIdentifiers:v12];

      [(OBPrivacyPresenter *)v7 setModalPresentationStyle:2];
      [(OBPrivacyPresenter *)v7 setAnimatePresentAndDismiss:1];
    }

    else
    {
      v7 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)presenterForPrivacySplashWithIdentifier:(id)a3
{
  v4 = [OBBundle bundleWithIdentifier:a3];
  v5 = [a1 presenterForPrivacySplashWithBundle:v4];

  return v5;
}

+ (id)presenterForPrivacySplashWithBundleAtPath:(id)a3
{
  v4 = [OBBundle bundleAtPath:a3];
  v5 = [a1 presenterForPrivacySplashWithBundle:v4];

  return v5;
}

+ (id)presenterForPrivacyUnifiedAbout
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v2 setCombinedController:v3];

  [v2 setModalPresentationStyle:2];
  [v2 setAnimatePresentAndDismiss:1];

  return v2;
}

+ (id)presenterForPrivacyUnifiedAboutWithBundles:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) identifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  v12 = [[OBPrivacyCombinedController alloc] initWithBundles:v5];
  [v11 setCombinedController:v12];

  [v11 setPresentedIdentifiers:v4];
  [v11 setModalPresentationStyle:2];
  [v11 setAnimatePresentAndDismiss:1];

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)presenterForPrivacyUnifiedAboutWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[OBBundleManager sharedManager];
  v6 = [v5 bundlesWithIdentifiers:v4];

  v7 = [a1 presenterForPrivacyUnifiedAboutWithBundles:v6];

  return v7;
}

+ (id)presenterForPrivacyUnifiedAboutWithBundlesAtPaths:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [OBBundle bundleAtPath:*(*(&v15 + 1) + 8 * i), v15];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [a1 presenterForPrivacyUnifiedAboutWithBundles:v5];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)setDisplayLanguage:(id)a3
{
  objc_storeStrong(&self->_displayLanguage, a3);
  v5 = a3;
  v6 = [(OBPrivacyPresenter *)self splashController];
  [v6 setDisplayLanguage:v5];

  v7 = [(OBPrivacyPresenter *)self combinedController];
  [v7 setDisplayLanguage:v5];
}

- (void)setDisplayDeviceType:(unint64_t)a3
{
  self->_displayDeviceType = a3;
  v5 = [(OBPrivacyPresenter *)self splashController];
  [v5 setDisplayDeviceType:a3];

  v6 = [(OBPrivacyPresenter *)self combinedController];
  [v6 setDisplayDeviceType:a3];
}

- (void)_presenterDidDismiss
{
  v3 = [(OBPrivacyPresenter *)self dismissHandler];

  if (v3)
  {
    v4 = [(OBPrivacyPresenter *)self dismissHandler];
    v4[2]();
  }

  [(OBPrivacyPresenter *)self setPresentedController:0];
}

- (void)present
{
  v3 = [(OBPrivacyPresenter *)self splashController];
  if (v3 || ([(OBPrivacyPresenter *)self combinedController], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [(OBPrivacyPresenter *)self presentingViewController];

    if (v5)
    {
      [(OBPrivacyPresenter *)self setPresentedController:v4];
      v6 = [(OBPrivacyPresenter *)self customTintColor];
      v7 = [(OBPrivacyPresenter *)self splashController];
      [v7 setCustomTintColor:v6];

      v8 = [(OBPrivacyPresenter *)self underlineLinks];
      v9 = [(OBPrivacyPresenter *)self splashController];
      [v9 setUnderlineLinks:v8];

      v10 = [(OBPrivacyPresenter *)self underlineLinks];
      v11 = [(OBPrivacyPresenter *)self combinedController];
      [v11 setUnderlineLinks:v10];

      v12 = [(OBPrivacyPresenter *)self customTintColor];
      v13 = [(OBPrivacyPresenter *)self combinedController];
      [v13 setCustomTintColor:v12];

      v14 = [[OBPrivacyModalNavigationController alloc] initWithRootViewController:v4];
      v15 = [(OBPrivacyPresenter *)self customTintColor];
      v16 = [(OBPrivacyModalNavigationController *)v14 view];
      [v16 setTintColor:v15];

      [(OBPrivacyModalNavigationController *)v14 setDarkMode:[(OBPrivacyPresenter *)self darkMode]];
      [(OBNavigationController *)v14 setSupportedInterfaceOrientations:self->_supportedInterfaceOrientations];
      [(OBPrivacyModalNavigationController *)v14 setModalPresentationStyle:self->_modalPresentationStyle];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __29__OBPrivacyPresenter_present__block_invoke;
      v23[3] = &unk_1E7C15590;
      v23[4] = self;
      [(OBPrivacyModalNavigationController *)v14 addDismissButtonWithPressedHandler:v23];
      v17 = [(OBPrivacyPresenter *)self dismissHandler];

      if (v17)
      {
        v18 = [(OBPrivacyModalNavigationController *)v14 presentationController];
        [v18 setDelegate:self];
      }

      v19 = [(OBPrivacyPresenter *)self presentingViewController];
      v20 = [(OBPrivacyPresenter *)self animatePresentAndDismiss];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __29__OBPrivacyPresenter_present__block_invoke_2;
      v22[3] = &unk_1E7C15590;
      v22[4] = self;
      [v19 presentViewController:v14 animated:v20 completion:v22];
    }

    else
    {
      v14 = _OBLoggingFacility();
      if (os_log_type_enabled(&v14->super.super.super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1B4FB6000, &v14->super.super.super.super.super, OS_LOG_TYPE_DEFAULT, "Tried to present with no presenter", v21, 2u);
      }
    }
  }
}

void __29__OBPrivacyPresenter_present__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) presentationCompletionHandler];
    v3[2]();
  }
}

- (void)dismiss
{
  v3 = [(OBPrivacyPresenter *)self presentingViewController];
  v4 = [(OBPrivacyPresenter *)self animatePresentAndDismiss];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__OBPrivacyPresenter_dismiss__block_invoke;
  v5[3] = &unk_1E7C15590;
  v5[4] = self;
  [v3 dismissViewControllerAnimated:v4 completion:v5];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end