@interface OBPrivacyPresenter
+ (id)presenterForPrivacySplashWithBundle:(id)bundle;
+ (id)presenterForPrivacySplashWithBundleAtPath:(id)path;
+ (id)presenterForPrivacySplashWithIdentifier:(id)identifier;
+ (id)presenterForPrivacyUnifiedAbout;
+ (id)presenterForPrivacyUnifiedAboutWithBundles:(id)bundles;
+ (id)presenterForPrivacyUnifiedAboutWithBundlesAtPaths:(id)paths;
+ (id)presenterForPrivacyUnifiedAboutWithIdentifiers:(id)identifiers;
- (UIViewController)presentingViewController;
- (void)_presenterDidDismiss;
- (void)dismiss;
- (void)present;
- (void)setDisplayDeviceType:(unint64_t)type;
- (void)setDisplayLanguage:(id)language;
@end

@implementation OBPrivacyPresenter

+ (id)presenterForPrivacySplashWithBundle:(id)bundle
{
  v15[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  identifier = [bundleCopy identifier];
  v6 = [identifier isEqualToString:@"com.apple.onboarding.imessagefacetime"];

  if (v6)
  {
    v7 = [self presenterForPrivacyUnifiedAboutWithIdentifiers:&unk_1F2CF8748];
  }

  else
  {
    privacyFlow = [bundleCopy privacyFlow];
    if (privacyFlow)
    {
      v7 = objc_alloc_init(OBPrivacyPresenter);
      v9 = [[OBPrivacySplashController alloc] initWithFlow:privacyFlow];
      [(OBPrivacyPresenter *)v7 setSplashController:v9];

      splashController = [(OBPrivacyPresenter *)v7 splashController];
      [splashController setShowsLinkToUnifiedAbout:1];

      identifier2 = [privacyFlow identifier];
      v15[0] = identifier2;
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

+ (id)presenterForPrivacySplashWithIdentifier:(id)identifier
{
  v4 = [OBBundle bundleWithIdentifier:identifier];
  v5 = [self presenterForPrivacySplashWithBundle:v4];

  return v5;
}

+ (id)presenterForPrivacySplashWithBundleAtPath:(id)path
{
  v4 = [OBBundle bundleAtPath:path];
  v5 = [self presenterForPrivacySplashWithBundle:v4];

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

+ (id)presenterForPrivacyUnifiedAboutWithBundles:(id)bundles
{
  v20 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = bundlesCopy;
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

        identifier = [*(*(&v15 + 1) + 8 * i) identifier];
        [v4 addObject:identifier];
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

+ (id)presenterForPrivacyUnifiedAboutWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[OBBundleManager sharedManager];
  v6 = [v5 bundlesWithIdentifiers:identifiersCopy];

  v7 = [self presenterForPrivacyUnifiedAboutWithBundles:v6];

  return v7;
}

+ (id)presenterForPrivacyUnifiedAboutWithBundlesAtPaths:(id)paths
{
  v20 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = pathsCopy;
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

  v12 = [self presenterForPrivacyUnifiedAboutWithBundles:v5];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)setDisplayLanguage:(id)language
{
  objc_storeStrong(&self->_displayLanguage, language);
  languageCopy = language;
  splashController = [(OBPrivacyPresenter *)self splashController];
  [splashController setDisplayLanguage:languageCopy];

  combinedController = [(OBPrivacyPresenter *)self combinedController];
  [combinedController setDisplayLanguage:languageCopy];
}

- (void)setDisplayDeviceType:(unint64_t)type
{
  self->_displayDeviceType = type;
  splashController = [(OBPrivacyPresenter *)self splashController];
  [splashController setDisplayDeviceType:type];

  combinedController = [(OBPrivacyPresenter *)self combinedController];
  [combinedController setDisplayDeviceType:type];
}

- (void)_presenterDidDismiss
{
  dismissHandler = [(OBPrivacyPresenter *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(OBPrivacyPresenter *)self dismissHandler];
    dismissHandler2[2]();
  }

  [(OBPrivacyPresenter *)self setPresentedController:0];
}

- (void)present
{
  splashController = [(OBPrivacyPresenter *)self splashController];
  if (splashController || ([(OBPrivacyPresenter *)self combinedController], (splashController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = splashController;
    presentingViewController = [(OBPrivacyPresenter *)self presentingViewController];

    if (presentingViewController)
    {
      [(OBPrivacyPresenter *)self setPresentedController:v4];
      customTintColor = [(OBPrivacyPresenter *)self customTintColor];
      splashController2 = [(OBPrivacyPresenter *)self splashController];
      [splashController2 setCustomTintColor:customTintColor];

      underlineLinks = [(OBPrivacyPresenter *)self underlineLinks];
      splashController3 = [(OBPrivacyPresenter *)self splashController];
      [splashController3 setUnderlineLinks:underlineLinks];

      underlineLinks2 = [(OBPrivacyPresenter *)self underlineLinks];
      combinedController = [(OBPrivacyPresenter *)self combinedController];
      [combinedController setUnderlineLinks:underlineLinks2];

      customTintColor2 = [(OBPrivacyPresenter *)self customTintColor];
      combinedController2 = [(OBPrivacyPresenter *)self combinedController];
      [combinedController2 setCustomTintColor:customTintColor2];

      v14 = [[OBPrivacyModalNavigationController alloc] initWithRootViewController:v4];
      customTintColor3 = [(OBPrivacyPresenter *)self customTintColor];
      view = [(OBPrivacyModalNavigationController *)v14 view];
      [view setTintColor:customTintColor3];

      [(OBPrivacyModalNavigationController *)v14 setDarkMode:[(OBPrivacyPresenter *)self darkMode]];
      [(OBNavigationController *)v14 setSupportedInterfaceOrientations:self->_supportedInterfaceOrientations];
      [(OBPrivacyModalNavigationController *)v14 setModalPresentationStyle:self->_modalPresentationStyle];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __29__OBPrivacyPresenter_present__block_invoke;
      v23[3] = &unk_1E7C15590;
      v23[4] = self;
      [(OBPrivacyModalNavigationController *)v14 addDismissButtonWithPressedHandler:v23];
      dismissHandler = [(OBPrivacyPresenter *)self dismissHandler];

      if (dismissHandler)
      {
        presentationController = [(OBPrivacyModalNavigationController *)v14 presentationController];
        [presentationController setDelegate:self];
      }

      presentingViewController2 = [(OBPrivacyPresenter *)self presentingViewController];
      animatePresentAndDismiss = [(OBPrivacyPresenter *)self animatePresentAndDismiss];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __29__OBPrivacyPresenter_present__block_invoke_2;
      v22[3] = &unk_1E7C15590;
      v22[4] = self;
      [presentingViewController2 presentViewController:v14 animated:animatePresentAndDismiss completion:v22];
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
  presentingViewController = [(OBPrivacyPresenter *)self presentingViewController];
  animatePresentAndDismiss = [(OBPrivacyPresenter *)self animatePresentAndDismiss];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__OBPrivacyPresenter_dismiss__block_invoke;
  v5[3] = &unk_1E7C15590;
  v5[4] = self;
  [presentingViewController dismissViewControllerAnimated:animatePresentAndDismiss completion:v5];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end