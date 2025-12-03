@interface CSUISettingsBundleController
- (BOOL)_cnfreg_overrideForController:(id)controller withDictionary:(id)dictionary;
- (CSUISettingsBundleController)initWithParentListController:(id)controller;
- (Class)controllerClassToInstantiate:(id)instantiate;
- (id)name;
- (id)settingsClassName;
- (int64_t)serviceType;
- (void)_resetSpecifierAction:(id)action;
- (void)bundleTappedWithSpecifier:(id)specifier;
@end

@implementation CSUISettingsBundleController

- (CSUISettingsBundleController)initWithParentListController:(id)controller
{
  v7.receiver = self;
  v7.super_class = CSUISettingsBundleController;
  v3 = [(CSUISettingsBundleController *)&v7 initWithParentListController:controller];
  if (v3)
  {
    mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
    name = [(CSUISettingsBundleController *)v3 name];
    [mEMORY[0x277D18D68] addListenerID:name capabilities:*MEMORY[0x277D19338]];
  }

  return v3;
}

- (Class)controllerClassToInstantiate:(id)instantiate
{
  settingsClassName = [(CSUISettingsBundleController *)self settingsClassName];
  v5 = NSClassFromString(settingsClassName);

  if (MarcoShouldLogRegistration())
  {
    name = [(CSUISettingsBundleController *)self name];
    MarcoLogRegistration();
  }

  return v5;
}

- (void)_resetSpecifierAction:(id)action
{
  actionCopy = action;
  v3 = NSStringFromSelector(sel_lazyLoadSpecialBundleForSpecifier_);
  [actionCopy setProperty:v3 forKey:*MEMORY[0x277D3FEC8]];

  [actionCopy setControllerLoadAction:sel_lazyLoadSpecialBundleForSpecifier_];
}

- (void)bundleTappedWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (MarcoShouldLogRegistration())
  {
    name = [(CSUISettingsBundleController *)self name];
    v23 = specifierCopy;
    MarcoLogRegistration();
  }

  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
  isConnected = [mEMORY[0x277D18D68] isConnected];

  if ((isConnected & 1) == 0)
  {
    mEMORY[0x277D18D68]2 = [MEMORY[0x277D18D68] sharedInstance];
    [mEMORY[0x277D18D68]2 blockUntilConnected];
  }

  [specifierCopy setProperty:self forKey:@"bundleController"];
  v9 = [specifierCopy propertyForKey:@"ft-serviceType"];
  integerValue = [v9 integerValue];
  v11 = [CNFRegController controllerForServiceType:integerValue];
  v12 = v11;
  if (!v11)
  {
    if (MarcoShouldLogRegistration())
    {
      name2 = [(CSUISettingsBundleController *)self name];
      v24 = integerValue;
      MarcoLogRegistration();
    }

    goto LABEL_19;
  }

  if (([v11 isServiceSupported] & 1) == 0)
  {
    if (MarcoShouldLogRegistration())
    {
      name3 = [(CSUISettingsBundleController *)self name];
      MarcoLogRegistration();
    }

LABEL_19:
    [(CSUISettingsBundleController *)self _resetSpecifierAction:specifierCopy, v24];
    goto LABEL_29;
  }

  if (([v12 isConnected] & 1) == 0)
  {
    [v12 connect:1];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__CSUISettingsBundleController_bundleTappedWithSpecifier___block_invoke;
  v25[3] = &unk_278DE8EB8;
  v25[4] = self;
  [v12 setWillLaunchURLBlock:v25];
  [v12 resetNetworkFirstRunAlert];
  CNFRegSetStringTableForServiceType([(CSUISettingsBundleController *)self serviceType]);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    CNFRegSetGlobalAppearanceStyle(2);
    CNFRegSetSupportsAutoRotation(1);
  }

  if (integerValue != 2)
  {
    if (integerValue == 1)
    {
      iMessageService = [MEMORY[0x277D18DE0] iMessageService];
      goto LABEL_21;
    }

    if (integerValue)
    {
      v18 = 0;
      goto LABEL_23;
    }
  }

  iMessageService = [MEMORY[0x277D18DE0] facetimeService];
LABEL_21:
  v18 = iMessageService;
LABEL_23:
  if ([CNFRegAppleIDSplashViewController shouldShowSplashViewForService:v18 inProgressRegisteringNonPhoneAccount:0])
  {
    v19 = objc_opt_class();
  }

  else
  {
    v19 = [(CSUISettingsBundleController *)self controllerClassToInstantiate:v12];
  }

  v20 = v19;
  [specifierCopy setControllerLoadAction:0];
  *&specifierCopy[*MEMORY[0x277D3FC98]] = v20;
  if (MarcoShouldLogRegistration())
  {
    name4 = [(CSUISettingsBundleController *)self name];
    v24 = v20;
    MarcoLogRegistration();
  }

  settingsClassName = [(CSUISettingsBundleController *)self settingsClassName];
  [specifierCopy setProperty:settingsClassName forKey:@"cnf-completionclass"];

  [specifierCopy setProperty:MEMORY[0x277CBEC38] forKey:@"cnf-hideLearnMoreButton"];
LABEL_29:
}

void __58__CSUISettingsBundleController_bundleTappedWithSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheme];
  v4 = [v3 hasPrefix:@"prefs"];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x277D3FBE0]));
    v8 = [WeakRetained navigationController];

    v6 = [v8 presentedViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];

    v7 = [v8 presentingViewController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)_cnfreg_overrideForController:(id)controller withDictionary:(id)dictionary
{
  v73 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKey:@"path"];
  v9 = MEMORY[0x277CBEB18];
  pathComponents = [v8 pathComponents];
  v11 = [v9 arrayWithArray:pathComponents];

  if ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    v13 = MEMORY[0x245D4D140]();
    v14 = [v13 objectForKey:@"object"];
    regController = [controllerCopy regController];
    WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D3FBE0]));
    rootController = [WeakRetained rootController];

    if (([v14 isEqualToString:@"CHANGE_PASSWORD"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"REAUTHORIZE"))
    {
      v57 = v14;
      v55 = v13;
      v16 = [dictionaryCopy objectForKey:@"appleID"];
      if (v16)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        appleIDAccounts = [regController appleIDAccounts];
        v18 = [appleIDAccounts countByEnumeratingWithState:&v67 objects:v72 count:16];
        if (v18)
        {
          v19 = v18;
          v50 = v8;
          v52 = v12;
          v47 = controllerCopy;
          v48 = v11;
          v20 = *v68;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v68 != v20)
              {
                objc_enumerationMutation(appleIDAccounts);
              }

              v22 = *(*(&v67 + 1) + 8 * i);
              loginDisplayString = [v22 loginDisplayString];
              v24 = [loginDisplayString isEqualToString:v16];

              if (v24)
              {
                v56 = v22;
                goto LABEL_16;
              }
            }

            v19 = [appleIDAccounts countByEnumeratingWithState:&v67 objects:v72 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v56 = 0;
LABEL_16:
          controllerCopy = v47;
          v11 = v48;
          v8 = v50;
          v12 = v52;
        }

        else
        {
          v56 = 0;
        }
      }

      else
      {
        v56 = 0;
      }

      v35 = rootController;
      if ([v57 isEqualToString:@"CHANGE_PASSWORD"])
      {
        v29 = [FTRegUtilities standaloneNewPasswordControllerWithRegController:regController appleID:v16];
      }

      else
      {
        v54 = v12;
        v36 = [dictionaryCopy objectForKey:@"authID"];
        v37 = [dictionaryCopy objectForKey:@"authToken"];
        if ((!v36 || ![v36 length]) && (!v37 || !objc_msgSend(v37, "length")))
        {
          authorizationID = [v56 authorizationID];

          [v56 authorizationToken];
          v39 = v11;
          v41 = v40 = v8;

          v36 = authorizationID;
          v37 = v41;
          v8 = v40;
          v11 = v39;
          v35 = rootController;
        }

        v29 = [FTRegUtilities standaloneAuthorizationControllerWithRegController:regController authID:v36 token:v37];

        v12 = v54;
      }
    }

    else
    {
      if (![v14 isEqualToString:@"LOCATION"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v25 = 0;
LABEL_46:

        goto LABEL_47;
      }

      v57 = v14;
      v55 = v13;
      v26 = controllerCopy;
      v16 = [dictionaryCopy objectForKey:@"guid"];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v56 = v26;
      regController2 = [v26 regController];
      appleIDAccounts2 = [regController2 appleIDAccounts];

      v29 = [appleIDAccounts2 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v29)
      {
        v51 = v8;
        v53 = v12;
        v49 = v11;
        v30 = *v64;
LABEL_22:
        v31 = 0;
        while (1)
        {
          if (*v64 != v30)
          {
            objc_enumerationMutation(appleIDAccounts2);
          }

          v32 = *(*(&v63 + 1) + 8 * v31);
          uniqueID = [v32 uniqueID];
          v34 = [uniqueID isEqualToString:v16];

          if (v34)
          {
            break;
          }

          if (v29 == ++v31)
          {
            v29 = [appleIDAccounts2 countByEnumeratingWithState:&v63 objects:v71 count:16];
            if (v29)
            {
              goto LABEL_22;
            }

            goto LABEL_50;
          }
        }

        v46 = v32;

        if (v46)
        {
          v29 = [v56 _localeChooserForAccount:v46];
          appleIDAccounts2 = v46;
LABEL_50:
          v11 = v49;
          v8 = v51;
          v12 = v53;
          goto LABEL_51;
        }

        v29 = 0;
        v11 = v49;
        v8 = v51;
        v12 = v53;
        v35 = rootController;
      }

      else
      {
LABEL_51:
        v35 = rootController;
      }
    }

    if (v29)
    {
      presentedViewController = [v35 presentedViewController];

      v13 = v55;
      v14 = v57;
      if (presentedViewController)
      {
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __77__CSUISettingsBundleController__cnfreg_overrideForController_withDictionary___block_invoke;
        v60[3] = &unk_278DE81E0;
        v61 = v35;
        v62 = v29;
        v43 = v29;
        [v61 dismissViewControllerAnimated:1 completion:v60];
      }

      else
      {
        [v35 presentViewController:v29 animated:1 completion:0];
      }

      v25 = 1;
    }

    else
    {
      v25 = 0;
      v13 = v55;
      v14 = v57;
    }

    goto LABEL_46;
  }

  v25 = 0;
LABEL_47:

  v44 = *MEMORY[0x277D85DE8];
  return v25;
}

- (int64_t)serviceType
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CSUISettingsBundleController.m" lineNumber:228 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)settingsClassName
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CSUISettingsBundleController.m" lineNumber:233 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)name
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CSUISettingsBundleController.m" lineNumber:238 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

@end