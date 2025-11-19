@interface CSUISettingsBundleController
- (BOOL)_cnfreg_overrideForController:(id)a3 withDictionary:(id)a4;
- (CSUISettingsBundleController)initWithParentListController:(id)a3;
- (Class)controllerClassToInstantiate:(id)a3;
- (id)name;
- (id)settingsClassName;
- (int64_t)serviceType;
- (void)_resetSpecifierAction:(id)a3;
- (void)bundleTappedWithSpecifier:(id)a3;
@end

@implementation CSUISettingsBundleController

- (CSUISettingsBundleController)initWithParentListController:(id)a3
{
  v7.receiver = self;
  v7.super_class = CSUISettingsBundleController;
  v3 = [(CSUISettingsBundleController *)&v7 initWithParentListController:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D18D68] sharedInstance];
    v5 = [(CSUISettingsBundleController *)v3 name];
    [v4 addListenerID:v5 capabilities:*MEMORY[0x277D19338]];
  }

  return v3;
}

- (Class)controllerClassToInstantiate:(id)a3
{
  v4 = [(CSUISettingsBundleController *)self settingsClassName];
  v5 = NSClassFromString(v4);

  if (MarcoShouldLogRegistration())
  {
    v6 = [(CSUISettingsBundleController *)self name];
    MarcoLogRegistration();
  }

  return v5;
}

- (void)_resetSpecifierAction:(id)a3
{
  v4 = a3;
  v3 = NSStringFromSelector(sel_lazyLoadSpecialBundleForSpecifier_);
  [v4 setProperty:v3 forKey:*MEMORY[0x277D3FEC8]];

  [v4 setControllerLoadAction:sel_lazyLoadSpecialBundleForSpecifier_];
}

- (void)bundleTappedWithSpecifier:(id)a3
{
  v4 = a3;
  if (MarcoShouldLogRegistration())
  {
    v5 = [(CSUISettingsBundleController *)self name];
    v23 = v4;
    MarcoLogRegistration();
  }

  v6 = [MEMORY[0x277D18D68] sharedInstance];
  v7 = [v6 isConnected];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x277D18D68] sharedInstance];
    [v8 blockUntilConnected];
  }

  [v4 setProperty:self forKey:@"bundleController"];
  v9 = [v4 propertyForKey:@"ft-serviceType"];
  v10 = [v9 integerValue];
  v11 = [CNFRegController controllerForServiceType:v10];
  v12 = v11;
  if (!v11)
  {
    if (MarcoShouldLogRegistration())
    {
      v16 = [(CSUISettingsBundleController *)self name];
      v24 = v10;
      MarcoLogRegistration();
    }

    goto LABEL_19;
  }

  if (([v11 isServiceSupported] & 1) == 0)
  {
    if (MarcoShouldLogRegistration())
    {
      v17 = [(CSUISettingsBundleController *)self name];
      MarcoLogRegistration();
    }

LABEL_19:
    [(CSUISettingsBundleController *)self _resetSpecifierAction:v4, v24];
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
  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 1)
  {
    CNFRegSetGlobalAppearanceStyle(2);
    CNFRegSetSupportsAutoRotation(1);
  }

  if (v10 != 2)
  {
    if (v10 == 1)
    {
      v15 = [MEMORY[0x277D18DE0] iMessageService];
      goto LABEL_21;
    }

    if (v10)
    {
      v18 = 0;
      goto LABEL_23;
    }
  }

  v15 = [MEMORY[0x277D18DE0] facetimeService];
LABEL_21:
  v18 = v15;
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
  [v4 setControllerLoadAction:0];
  *&v4[*MEMORY[0x277D3FC98]] = v20;
  if (MarcoShouldLogRegistration())
  {
    v21 = [(CSUISettingsBundleController *)self name];
    v24 = v20;
    MarcoLogRegistration();
  }

  v22 = [(CSUISettingsBundleController *)self settingsClassName];
  [v4 setProperty:v22 forKey:@"cnf-completionclass"];

  [v4 setProperty:MEMORY[0x277CBEC38] forKey:@"cnf-hideLearnMoreButton"];
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

- (BOOL)_cnfreg_overrideForController:(id)a3 withDictionary:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:@"path"];
  v9 = MEMORY[0x277CBEB18];
  v10 = [v8 pathComponents];
  v11 = [v9 arrayWithArray:v10];

  if ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    v13 = MEMORY[0x245D4D140]();
    v14 = [v13 objectForKey:@"object"];
    v59 = [v6 regController];
    WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D3FBE0]));
    v58 = [WeakRetained rootController];

    if (([v14 isEqualToString:@"CHANGE_PASSWORD"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"REAUTHORIZE"))
    {
      v57 = v14;
      v55 = v13;
      v16 = [v7 objectForKey:@"appleID"];
      if (v16)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v17 = [v59 appleIDAccounts];
        v18 = [v17 countByEnumeratingWithState:&v67 objects:v72 count:16];
        if (v18)
        {
          v19 = v18;
          v50 = v8;
          v52 = v12;
          v47 = v6;
          v48 = v11;
          v20 = *v68;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v68 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v67 + 1) + 8 * i);
              v23 = [v22 loginDisplayString];
              v24 = [v23 isEqualToString:v16];

              if (v24)
              {
                v56 = v22;
                goto LABEL_16;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v67 objects:v72 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v56 = 0;
LABEL_16:
          v6 = v47;
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

      v35 = v58;
      if ([v57 isEqualToString:@"CHANGE_PASSWORD"])
      {
        v29 = [FTRegUtilities standaloneNewPasswordControllerWithRegController:v59 appleID:v16];
      }

      else
      {
        v54 = v12;
        v36 = [v7 objectForKey:@"authID"];
        v37 = [v7 objectForKey:@"authToken"];
        if ((!v36 || ![v36 length]) && (!v37 || !objc_msgSend(v37, "length")))
        {
          v38 = [v56 authorizationID];

          [v56 authorizationToken];
          v39 = v11;
          v41 = v40 = v8;

          v36 = v38;
          v37 = v41;
          v8 = v40;
          v11 = v39;
          v35 = v58;
        }

        v29 = [FTRegUtilities standaloneAuthorizationControllerWithRegController:v59 authID:v36 token:v37];

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
      v26 = v6;
      v16 = [v7 objectForKey:@"guid"];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v56 = v26;
      v27 = [v26 regController];
      v28 = [v27 appleIDAccounts];

      v29 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
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
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v63 + 1) + 8 * v31);
          v33 = [v32 uniqueID];
          v34 = [v33 isEqualToString:v16];

          if (v34)
          {
            break;
          }

          if (v29 == ++v31)
          {
            v29 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
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
          v28 = v46;
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
        v35 = v58;
      }

      else
      {
LABEL_51:
        v35 = v58;
      }
    }

    if (v29)
    {
      v42 = [v35 presentedViewController];

      v13 = v55;
      v14 = v57;
      if (v42)
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CSUISettingsBundleController.m" lineNumber:228 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)settingsClassName
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CSUISettingsBundleController.m" lineNumber:233 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)name
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CSUISettingsBundleController.m" lineNumber:238 description:{@"Call to abstract method (%@) on %@", v5, objc_opt_class()}];

  return 0;
}

@end