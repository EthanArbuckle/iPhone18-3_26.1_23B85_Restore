@interface OBPrivacyLinkController
+ (id)linkWithBundleAtPath:(id)a3;
+ (id)linkWithBundleIdentifier:(id)a3;
+ (id)linkWithBundleIdentifiers:(id)a3;
+ (id)linkWithBundlesAtPaths:(id)a3;
+ (id)linkWithPrivacyBundle:(id)a3;
- (OBBundle)bundle;
- (OBPrivacyFlow)flow;
- (OBPrivacyLinkController)init;
- (OBPrivacyLinkController)initWithBundleIdentifiers:(id)a3;
- (OBPrivacyLinkController)initWithPrivacyBundle:(id)a3;
- (OBPrivacyLinkController)initWithPrivacyBundles:(id)a3;
- (id)_privacyPresenter;
- (void)_linkPressed;
@end

@implementation OBPrivacyLinkController

+ (id)linkWithBundleIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(objc_msgSend(a1 "_platformSpecificClass"))];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)linkWithBundleIdentifier:(id)a3
{
  v4 = [OBBundle bundleWithIdentifier:a3];
  v5 = [a1 linkWithPrivacyBundle:v4];

  return v5;
}

+ (id)linkWithBundleAtPath:(id)a3
{
  v4 = [OBBundle bundleAtPath:a3];
  v5 = [a1 linkWithPrivacyBundle:v4];

  return v5;
}

+ (id)linkWithBundlesAtPaths:(id)a3
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

  v12 = [objc_alloc(objc_msgSend(a1 "_platformSpecificClass"))];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)linkWithPrivacyBundle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [objc_alloc(objc_msgSend(a1 "_platformSpecificClass"))];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (OBPrivacyLinkController)init
{
  v6.receiver = self;
  v6.super_class = OBPrivacyLinkController;
  v2 = [(OBPrivacyLinkController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(OBPrivacyLinkController *)v2 setDisplayIcon:1];
    v4 = +[OBCapabilities sharedCapabilities];
    -[OBPrivacyLinkController setAllowsOpeningSafari:](v3, "setAllowsOpeningSafari:", [v4 preventOpeningSafari] ^ 1);
  }

  return v3;
}

- (OBPrivacyLinkController)initWithPrivacyBundles:(id)a3
{
  v4 = a3;
  v5 = [(OBPrivacyLinkController *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    bundles = v5->_bundles;
    v5->_bundles = v6;
  }

  return v5;
}

- (OBPrivacyLinkController)initWithPrivacyBundle:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 privacyFlow];

  if (v5)
  {
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(OBPrivacyLinkController *)self initWithPrivacyBundles:v6];

    self = v7;
    v5 = self;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (OBPrivacyLinkController)initWithBundleIdentifiers:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[OBBundleManager sharedManager];
  v6 = [v5 bundlesWithIdentifiers:v4];

  if ([v6 count])
  {
    v28 = v4;
    if (v4)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v33 + 1) + 8 * i) identifier];
            [v7 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v7 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * j);
          v21 = [v20 privacyFlow];

          if (!v21)
          {
            v22 = _OBLoggingFacility();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [(OBPrivacyLinkController *)v37 initWithBundleIdentifiers:v20, &v38, v22];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v17);
    }

    v23 = [(OBPrivacyLinkController *)self initWithPrivacyBundles:v15];
    if (v23)
    {
      v24 = [v7 copy];
      bundleIdentifiers = v23->_bundleIdentifiers;
      v23->_bundleIdentifiers = v24;
    }

    self = v23;
    v14 = self;
    v4 = v28;
  }

  else
  {
    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(OBPrivacyLinkController *)v4 initWithBundleIdentifiers:v7];
    }

    v14 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v14;
}

- (OBBundle)bundle
{
  v3 = +[OBBundleManager sharedManager];
  v4 = [(OBPrivacyLinkController *)self bundles];
  v5 = [v3 privacyLinkBundleForBundles:v4];

  return v5;
}

- (OBPrivacyFlow)flow
{
  v2 = [(OBPrivacyLinkController *)self bundle];
  v3 = [v2 privacyFlow];

  return v3;
}

- (id)_privacyPresenter
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_bundleIdentifiers count]>= 2)
  {
    v3 = [(OBPrivacyLinkController *)self bundles];
    v4 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithBundles:v3];
LABEL_17:

    goto LABEL_18;
  }

  if (self->_bundleIdentifiers || (-[OBPrivacyLinkController bundle](self, "bundle"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPlaceholder], v5, v6))
  {
    v7 = [(OBPrivacyLinkController *)self bundle];
    v4 = [OBPrivacyPresenter presenterForPrivacySplashWithBundle:v7];

    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v8 = [(OBPrivacyLinkController *)self bundles];
  v9 = [v8 count];

  if (v9 < 2)
  {
LABEL_16:
    v3 = [(OBPrivacyLinkController *)self bundle];
    v18 = [v3 underlyingBundle];
    v19 = [v18 bundlePath];
    v4 = [OBPrivacyPresenter presenterForPrivacySplashWithBundleAtPath:v19];

    goto LABEL_17;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [(OBPrivacyLinkController *)self bundles];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v22 + 1) + 8 * i) underlyingBundle];
        v17 = [v16 bundlePath];
        [v10 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v4 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithBundlesAtPaths:v10];

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_linkPressed
{
  v3 = _OBLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1B4FB6000, v3, OS_LOG_TYPE_DEFAULT, "OBPrivacy link pressed!", v23, 2u);
  }

  v4 = [(OBPrivacyLinkController *)self _privacyPresenter];
  [v4 setPresentingViewController:self];
  v5 = [(OBPrivacyLinkController *)self displayLanguage];
  [v4 setDisplayLanguage:v5];

  v6 = [(OBPrivacyLinkController *)self allowsOpeningSafari];
  v7 = [v4 splashController];
  [v7 setAllowsOpeningSafari:v6];

  v8 = [(OBPrivacyLinkController *)self underlineLinks];
  v9 = [v4 splashController];
  [v9 setUnderlineLinks:v8];

  if (self->_didOverrideShowUnifiedAbout)
  {
    v10 = [(OBPrivacyLinkController *)self showsLinkToUnifiedAbout];
    v11 = [v4 splashController];
    [v11 setShowsLinkToUnifiedAbout:v10];
  }

  v12 = [(OBPrivacyLinkController *)self customTintColor];
  [v4 setCustomTintColor:v12];

  v13 = [(OBPrivacyLinkController *)self displayDeviceType];
  v14 = [v4 splashController];
  [v14 setDisplayDeviceType:v13];

  v15 = [(OBPrivacyLinkController *)self displayLanguage];
  v16 = [v4 splashController];
  [v16 setDisplayLanguage:v15];

  [v4 setDarkMode:{-[OBPrivacyLinkController presentedViewControllerShouldUseDarkMode](self, "presentedViewControllerShouldUseDarkMode")}];
  [v4 setModalPresentationStyle:{-[OBPrivacyLinkController modalPresentationStyle](self, "modalPresentationStyle")}];
  v17 = [(OBPrivacyLinkController *)self presentingViewController];
  [v4 setSupportedInterfaceOrientations:{objc_msgSend(v17, "supportedInterfaceOrientations")}];

  [v4 present];
  v18 = +[OBAnalyticsManager sharedManager];
  v19 = [(OBPrivacyLinkController *)self bundle];
  v20 = [v19 identifier];
  [v18 logTapOnPrivacyLinkWithIdentifier:v20];

  v21 = [(OBPrivacyLinkController *)self privacyLinkCallback];

  if (v21)
  {
    v22 = [(OBPrivacyLinkController *)self privacyLinkCallback];
    v22[2]();
  }
}

- (void)initWithBundleIdentifiers:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B4FB6000, a4, OS_LOG_TYPE_ERROR, "Privacy link controller encountered nil flow for bundle identifier %@", a1, 0xCu);
}

- (void)initWithBundleIdentifiers:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_ERROR, "No bundles found for bundle identifiers: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end