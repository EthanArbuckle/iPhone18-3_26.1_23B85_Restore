@interface DBApplicationSceneHostViewController
- (DBApplicationSceneHostViewControllerDelegate)delegate;
- (id)_displayLayoutElementIdentifier;
- (id)sceneIdentifier;
- (id)sceneSpecification;
- (void)_requestDestroy;
- (void)activateSceneWithSettings:(id)settings completion:(id)completion;
- (void)backgroundSceneWithCompletion:(id)completion;
- (void)deactivateSceneWithReasonMask:(unint64_t)mask;
- (void)dealloc;
- (void)foregroundSceneWithSettings:(id)settings completion:(id)completion;
- (void)sceneContentStateDidUpdate:(int64_t)update;
- (void)sceneDidInvalidate;
@end

@implementation DBApplicationSceneHostViewController

- (id)_displayLayoutElementIdentifier
{
  application = [(DBSceneHostViewController *)self application];
  appPolicy = [application appPolicy];

  if (([appPolicy launchUsingMusicUIService] & 1) != 0 || (objc_msgSend(appPolicy, "canDisplayOnCarScreen") & 1) != 0 || (-[DBSceneHostViewController application](self, "application"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "info"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "supportsBackgroundMode:", *MEMORY[0x277D76778]), v6, v5, !v7))
  {
    sceneIdentifier = [(DBApplicationSceneHostViewController *)self sceneIdentifier];
  }

  else
  {
    sceneIdentifier = @"com.apple.now-playing";
  }

  v9 = sceneIdentifier;

  return v9;
}

- (id)sceneIdentifier
{
  environment = [(DBSceneHostViewController *)self environment];
  application = [(DBSceneHostViewController *)self application];
  v5 = [environment sceneIdentifierForApplication:application];

  return v5;
}

- (DBApplicationSceneHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  layoutElementAssertion = [(DBApplicationSceneHostViewController *)self layoutElementAssertion];

  if (layoutElementAssertion)
  {
    v4 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      application = [(DBSceneHostViewController *)self application];
      *buf = 138543618;
      v11 = v6;
      v12 = 2112;
      v13 = application;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deactivating layout element for application: %@", buf, 0x16u);
    }

    layoutElementAssertion2 = [(DBApplicationSceneHostViewController *)self layoutElementAssertion];
    [layoutElementAssertion2 invalidate];
  }

  v9.receiver = self;
  v9.super_class = DBApplicationSceneHostViewController;
  [(DBApplicationSceneHostViewController *)&v9 dealloc];
}

- (void)foregroundSceneWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  isSuspended = [settingsCopy isSuspended];
  waitForCommit = [settingsCopy waitForCommit];
  [settingsCopy failInterval];
  v11 = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__DBApplicationSceneHostViewController_foregroundSceneWithSettings_completion___block_invoke;
  aBlock[3] = &unk_278F03088;
  v20 = isSuspended;
  aBlock[4] = self;
  v19 = settingsCopy;
  v12 = settingsCopy;
  v13 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__DBApplicationSceneHostViewController_foregroundSceneWithSettings_completion___block_invoke_125;
  v15[3] = &unk_278F030B0;
  v17 = isSuspended;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [(DBSceneHostViewController *)self performSceneUpdateWithBlock:v13 waitsForSceneCommit:waitForCommit timeout:v15 completion:v11];
}

uint64_t __79__DBApplicationSceneHostViewController_foregroundSceneWithSettings_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48) != 1)
  {
LABEL_6:
    v8 = 1;
    goto LABEL_8;
  }

  if ([v5 isForeground])
  {
    v7 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__DBApplicationSceneHostViewController_foregroundSceneWithSettings_completion___block_invoke_cold_1(a1, v7);
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  [v6 setForTesting:{objc_msgSend(*(a1 + 40), "forTesting")}];
  [v6 setUserLaunchEventTime:v10];
  v11 = [*(a1 + 40) actions];

  if (v11)
  {
    v11 = [*(a1 + 40) actions];
    v12 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v27 = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_INFO, "[%{public}@] Attaching actions to scene update: %@", &v27, 0x16u);
    }
  }

  v15 = [*(a1 + 40) url];
  if (v15)
  {
    v16 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v27 = 138543618;
      v28 = v18;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_INFO, "[%{public}@] Attaching URL to scene update: %@", &v27, 0x16u);
    }

    v19 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:v15];
    if (v11)
    {
      v20 = [v11 setByAddingObject:v19];

      v11 = v20;
    }

    else
    {
      v11 = [MEMORY[0x277CBEB98] setWithObject:v19];
    }
  }

  if ([v11 count])
  {
    [v6 setActions:v11];
  }

  v21 = [*(a1 + 32) proxyApplication];

  if (v21)
  {
    objc_opt_class();
    v22 = v5;
    if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [*(a1 + 32) application];
    v25 = [v24 bundleIdentifier];
    [v23 setProxiedApplicationBundleIdentifier:v25];
  }

  return v8;
}

uint64_t __79__DBApplicationSceneHostViewController_foregroundSceneWithSettings_completion___block_invoke_125(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) application];
  v3 = +[DBApplicationController sharedInstance];
  v4 = [v3 inCallServiceApplication];

  if ((*(a1 + 48) & 1) == 0)
  {
    if (v2 == v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = objc_alloc(MEMORY[0x277D0AD00]);
    v7 = [*(a1 + 32) _displayLayoutElementIdentifier];
    v8 = [v6 initWithIdentifier:v7];

    v9 = [*(a1 + 32) application];
    v10 = [v9 bundleIdentifier];
    [v8 setBundleIdentifier:v10];

    [v8 setUIApplicationElement:1];
    [*(a1 + 32) sceneFrame];
    [v8 setReferenceFrame:?];
    [v8 setLevel:v5];
    v11 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) application];
      v20 = 138412290;
      v21 = v12;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Activating layout element for application: %@", &v20, 0xCu);
    }

    v13 = [*(a1 + 32) layoutElementAssertion];

    if (v13)
    {
      v14 = [*(a1 + 32) layoutElementAssertion];
      [v14 invalidate];
    }

    v15 = [*(a1 + 32) environment];
    v16 = [v15 environmentConfiguration];
    v17 = [v16 displayLayoutPublisher];
    v18 = [v17 addElement:v8];
    [*(a1 + 32) setLayoutElementAssertion:v18];
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)backgroundSceneWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__DBApplicationSceneHostViewController_backgroundSceneWithCompletion___block_invoke;
  v8[3] = &unk_278F01D88;
  v8[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__DBApplicationSceneHostViewController_backgroundSceneWithCompletion___block_invoke_2;
  v6[3] = &unk_278F030D8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(DBSceneHostViewController *)self performSceneUpdateWithBlock:v8 completion:v6];
}

uint64_t __70__DBApplicationSceneHostViewController_backgroundSceneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) proxyApplication];

  if (v4)
  {
    objc_opt_class();
    v5 = v3;
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(a1 + 32) application];
    v8 = [v7 bundleIdentifier];
    [v6 setProxiedApplicationBundleIdentifier:v8];
  }

  return 0;
}

uint64_t __70__DBApplicationSceneHostViewController_backgroundSceneWithCompletion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) layoutElementAssertion];

  if (v2)
  {
    v3 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) application];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Deactivating layout element for application: %@", &v7, 0xCu);
    }

    v5 = [*(a1 + 32) layoutElementAssertion];
    [v5 invalidate];

    [*(a1 + 32) setLayoutElementAssertion:0];
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)activateSceneWithSettings:(id)settings completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  completionCopy = completion;
  actions = [settingsCopy actions];

  if (actions)
  {
    actions = [settingsCopy actions];
    v9 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = actions;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_INFO, "[%{public}@] Attaching actions to scene activation: %@", buf, 0x16u);
    }
  }

  v12 = [settingsCopy url];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:v12];
    v14 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543618;
      v26 = v16;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_INFO, "[%{public}@] Attaching URL to scene activation: %@", buf, 0x16u);
    }

    if (actions)
    {
      v17 = [actions setByAddingObject:v13];

      actions = v17;
    }

    else
    {
      actions = [MEMORY[0x277CBEB98] setWithObject:v13];
    }
  }

  v18 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    application = [(DBSceneHostViewController *)self application];
    *buf = 138543618;
    v26 = v20;
    v27 = 2112;
    v28 = application;
    _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_INFO, "[%{public}@] Activating scene for application: %@", buf, 0x16u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__DBApplicationSceneHostViewController_activateSceneWithSettings_completion___block_invoke;
  v23[3] = &unk_278F03100;
  v24 = actions;
  v22 = actions;
  [(DBSceneHostViewController *)self updateSceneSettingsWithTransitionBlock:v23];
  completionCopy[2](completionCopy);
}

void __77__DBApplicationSceneHostViewController_activateSceneWithSettings_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  [a2 setDeactivationReasons:0];
  if ([*(a1 + 32) count])
  {
    [v6 setActions:*(a1 + 32)];
    v5 = [MEMORY[0x277CF0CD0] processHandle];
    [v6 setOriginatingProcess:v5];
  }
}

- (void)deactivateSceneWithReasonMask:(unint64_t)mask
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    application = [(DBSceneHostViewController *)self application];
    *buf = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = application;
    v14 = 2048;
    maskCopy = mask;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[%{public}@] Deactivating scene for application: %@, reasonMask: %ld", buf, 0x20u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__DBApplicationSceneHostViewController_deactivateSceneWithReasonMask___block_invoke;
  v9[3] = &__block_descriptor_40_e50_v16__0__UIMutableCarPlayApplicationSceneSettings_8l;
  v9[4] = mask;
  [(DBSceneHostViewController *)self updateSceneSettingsWithBlock:v9];
}

- (id)sceneSpecification
{
  v11[3] = *MEMORY[0x277D85DE8];
  proxyApplication = [(DBSceneHostViewController *)self proxyApplication];

  if (proxyApplication)
  {
    v4 = MEMORY[0x277CF9320];
  }

  else
  {
    v11[0] = @"com.apple.SafeAreaTester";
    v11[1] = @"com.apple.Maps";
    v11[2] = @"com.apple.NightModeTester";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
    application = [(DBSceneHostViewController *)self application];
    bundleIdentifier = [application bundleIdentifier];
    v8 = [v5 containsObject:bundleIdentifier];

    if (v8)
    {
      v4 = MEMORY[0x277CF91F8];
    }

    else
    {
      v4 = MEMORY[0x277D751A0];
    }
  }

  v9 = objc_alloc_init(v4);

  return v9;
}

- (void)sceneDidInvalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    sceneIdentifier = [(DBApplicationSceneHostViewController *)self sceneIdentifier];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = sceneIdentifier;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_INFO, "[%{public}@] Did destroy scene: %{public}@", &v7, 0x16u);
  }

  [(DBSceneHostViewController *)self invalidate];
  [(DBApplicationSceneHostViewController *)self _requestDestroy];
}

- (void)sceneContentStateDidUpdate:(int64_t)update
{
  delegate = [(DBApplicationSceneHostViewController *)self delegate];
  [delegate applicationSceneHostViewController:self didUpdateSceneContentState:update];
}

- (void)_requestDestroy
{
  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  application = [(DBSceneHostViewController *)self application];
  [(DBMutableWorkspaceStateChangeRequest *)v6 destroyApplication:application];

  environment = [(DBSceneHostViewController *)self environment];
  workspace = [environment workspace];
  [workspace requestStateChange:v6];
}

void __79__DBApplicationSceneHostViewController_foregroundSceneWithSettings_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Suspended launch requested, but the app is foregrounded. Treating the request as foreground.", &v5, 0xCu);
}

@end