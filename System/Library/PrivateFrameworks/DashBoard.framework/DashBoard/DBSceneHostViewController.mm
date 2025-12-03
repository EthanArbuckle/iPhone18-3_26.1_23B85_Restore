@interface DBSceneHostViewController
- (BOOL)sceneIsActive;
- (BOOL)sceneIsForeground;
- (CGRect)sceneFrame;
- (DBEnvironment)environment;
- (UIEdgeInsets)sceneSafeAreaInsets;
- (id)_initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)presentationViewWithIdentifier:(id)identifier;
- (id)presentationViewWithIdentifier:(id)identifier activate:(BOOL)activate backgroundColor:(id)color;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)sceneContentState;
- (int64_t)sceneInterfaceStyle;
- (int64_t)sceneMapInterfaceStyle;
- (void)_installScenePresentationView;
- (void)_updateSceneSettings:(id)settings transitionContext:(id)context updateBlock:(id)block;
- (void)_updateSceneUI;
- (void)activatePresentationViewWithIdentifier:(id)identifier;
- (void)deactivatePresentationViewWithIdentifier:(id)identifier;
- (void)deactivateScene;
- (void)invalidate;
- (void)invalidatePresentationViewForIdentifier:(id)identifier;
- (void)invalidateScenePresenter;
- (void)performSceneUpdateWithBlock:(id)block waitsForSceneCommit:(BOOL)commit timeout:(double)timeout completion:(id)completion;
- (void)processMonitor:(id)monitor shouldHandleDeathOfBundleIdentifier:(id)identifier isCrash:(BOOL)crash;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sendSceneActions:(id)actions;
- (void)updateSceneSettingsWithBlock:(id)block;
- (void)updateSceneSettingsWithTransitionBlock:(id)block;
@end

@implementation DBSceneHostViewController

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)_installScenePresentationView
{
  v34[4] = *MEMORY[0x277D85DE8];
  uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
  scenePresentationIdentifier = [(DBSceneHostViewController *)self scenePresentationIdentifier];
  v5 = [uiPresentationManager createPresenterWithIdentifier:scenePresentationIdentifier priority:1];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = v5;

  [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_182];
  [(UIScenePresenter *)self->_scenePresenter activate];
  presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
  [(DBSceneHostViewController *)self setSceneHostView:presentationView];

  view = [(DBSceneHostViewController *)self view];
  sceneHostView = [(DBSceneHostViewController *)self sceneHostView];
  [view addSubview:sceneHostView];

  sceneHostView2 = [(DBSceneHostViewController *)self sceneHostView];
  [sceneHostView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = MEMORY[0x277CCAAD0];
  sceneHostView3 = [(DBSceneHostViewController *)self sceneHostView];
  leftAnchor = [sceneHostView3 leftAnchor];
  view2 = [(DBSceneHostViewController *)self view];
  leftAnchor2 = [view2 leftAnchor];
  v28 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v34[0] = v28;
  sceneHostView4 = [(DBSceneHostViewController *)self sceneHostView];
  rightAnchor = [sceneHostView4 rightAnchor];
  view3 = [(DBSceneHostViewController *)self view];
  rightAnchor2 = [view3 rightAnchor];
  v22 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v34[1] = v22;
  sceneHostView5 = [(DBSceneHostViewController *)self sceneHostView];
  topAnchor = [sceneHostView5 topAnchor];
  view4 = [(DBSceneHostViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[2] = v13;
  sceneHostView6 = [(DBSceneHostViewController *)self sceneHostView];
  bottomAnchor = [sceneHostView6 bottomAnchor];
  view5 = [(DBSceneHostViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v23 activateConstraints:v19];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DBSceneHostViewController__installScenePresentationView__block_invoke_2;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__DBSceneHostViewController__installScenePresentationView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:1];
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColorWhileHosting:v3];
}

- (CGRect)sceneFrame
{
  environment = [(DBSceneHostViewController *)self environment];
  application = [(DBSceneHostViewController *)self application];
  proxyApplication = [(DBSceneHostViewController *)self proxyApplication];
  [environment sceneFrameForApplication:application proxyApplication:proxyApplication];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(DBSceneHostViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  application = [(DBSceneHostViewController *)self application];
  bundleIdentifier = [application bundleIdentifier];
  v6 = [v3 appendObject:bundleIdentifier withName:0];

  proxyApplication = [(DBSceneHostViewController *)self proxyApplication];
  bundleIdentifier2 = [proxyApplication bundleIdentifier];
  v9 = [v3 appendObject:bundleIdentifier2 withName:@"proxy" skipIfNil:1];

  return v3;
}

void __58__DBSceneHostViewController__installScenePresentationView__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) usesHostContextSnapshotting])
  {
    v2 = [*(a1 + 32) sceneHostView];
    v3 = [v2 _window];
    v4 = [v3 _contextId];

    v5 = [*(a1 + 32) sceneHostView];
    v6 = [v5 layer];
    RenderId = CALayerGetRenderId();

    v8 = [*(a1 + 32) scene];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__DBSceneHostViewController__installScenePresentationView__block_invoke_3;
    v10[3] = &unk_278F04398;
    v9 = *(a1 + 32);
    v11 = v4;
    v10[4] = v9;
    v10[5] = RenderId;
    [v8 updateUISettingsWithBlock:v10];
  }
}

- (int64_t)sceneMapInterfaceStyle
{
  environment = [(DBSceneHostViewController *)self environment];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  environment2 = [(DBSceneHostViewController *)self environment];
  application = [(DBSceneHostViewController *)self application];
  proxyApplication = [(DBSceneHostViewController *)self proxyApplication];
  v8 = [environment2 sceneMapInterfaceStyleForApplication:application proxyApplication:proxyApplication];

  return v8;
}

- (int64_t)sceneInterfaceStyle
{
  environment = [(DBSceneHostViewController *)self environment];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  environment2 = [(DBSceneHostViewController *)self environment];
  application = [(DBSceneHostViewController *)self application];
  proxyApplication = [(DBSceneHostViewController *)self proxyApplication];
  v8 = [environment2 sceneInterfaceStyleForApplication:application proxyApplication:proxyApplication];

  return v8;
}

- (UIEdgeInsets)sceneSafeAreaInsets
{
  environment = [(DBSceneHostViewController *)self environment];
  application = [(DBSceneHostViewController *)self application];
  proxyApplication = [(DBSceneHostViewController *)self proxyApplication];
  [environment safeAreaInsetsForApplication:application proxyApplication:proxyApplication];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)_updateSceneUI
{
  scene = [(DBSceneHostViewController *)self scene];
  contentState = [scene contentState];

  secondaryScenePresentersByIdentifier = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v6 = secondaryScenePresentersByIdentifier;
  if (contentState == 2)
  {
    [secondaryScenePresentersByIdentifier enumerateKeysAndObjectsUsingBlock:&__block_literal_global_178];

    v7 = MEMORY[0x277D75D18];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __43__DBSceneHostViewController__updateSceneUI__block_invoke_3;
    v18 = &unk_278F01580;
    selfCopy = self;
    v8 = 0.25;
    v9 = &v15;
  }

  else
  {
    [secondaryScenePresentersByIdentifier enumerateKeysAndObjectsUsingBlock:&__block_literal_global_180];

    v7 = MEMORY[0x277D75D18];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __43__DBSceneHostViewController__updateSceneUI__block_invoke_6;
    v13 = &unk_278F01580;
    selfCopy2 = self;
    v8 = 0.25;
    v9 = &v10;
  }

  [v7 animateWithDuration:v9 animations:{v8, v10, v11, v12, v13, selfCopy2, v15, v16, v17, v18, selfCopy}];
}

void __43__DBSceneHostViewController__updateSceneUI__block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) sceneHostView];
  [v1 setAlpha:0.0];
}

void __43__DBSceneHostViewController__updateSceneUI__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 presentationView];
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__DBSceneHostViewController__updateSceneUI__block_invoke_2;
  v6[3] = &unk_278F01580;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0.25];
}

void __43__DBSceneHostViewController__updateSceneUI__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) sceneHostView];
  [v1 setAlpha:1.0];
}

- (void)invalidateScenePresenter
{
  v14 = *MEMORY[0x277D85DE8];
  scenePresenter = [(DBSceneHostViewController *)self scenePresenter];

  if (scenePresenter)
  {
    v4 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      scene = [(DBSceneHostViewController *)self scene];
      identifier = [scene identifier];
      v10 = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = identifier;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating presenter for scene %{public}@", &v10, 0x16u);
    }

    scenePresenter2 = [(DBSceneHostViewController *)self scenePresenter];
    [scenePresenter2 deactivate];

    scenePresenter3 = [(DBSceneHostViewController *)self scenePresenter];
    [scenePresenter3 invalidate];

    [(DBSceneHostViewController *)self setScenePresenter:0];
    sceneHostView = [(DBSceneHostViewController *)self sceneHostView];
    [sceneHostView removeFromSuperview];

    [(DBSceneHostViewController *)self setSceneHostView:0];
    [(DBSceneHostViewController *)self setScenePresenterInvalidated:1];
  }
}

- (id)_initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment
{
  sceneCopy = scene;
  applicationCopy = application;
  proxyApplicationCopy = proxyApplication;
  environmentCopy = environment;
  v26.receiver = self;
  v26.super_class = DBSceneHostViewController;
  v15 = [(DBSceneHostViewController *)&v26 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_scene, scene);
    objc_storeStrong(&v16->_application, application);
    objc_storeStrong(&v16->_proxyApplication, proxyApplication);
    objc_storeWeak(&v16->_environment, environmentCopy);
    v16->_invalidated = 0;
    v16->_hostedAppCrashTally = 0;
    v16->_proxyAppCrashTally = 0;
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CF0C00] descriptionForObject:v16];
    v19 = [v17 stringWithFormat:@"%@-%u", v18, ++counter_0];
    scenePresentationIdentifier = v16->_scenePresentationIdentifier;
    v16->_scenePresentationIdentifier = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    secondaryScenePresentersByIdentifier = v16->_secondaryScenePresentersByIdentifier;
    v16->_secondaryScenePresentersByIdentifier = v21;

    environmentConfiguration = [environmentCopy environmentConfiguration];
    processMonitor = [environmentConfiguration processMonitor];
    [processMonitor addObserver:v16];

    v16->_scenePresenterInvalidated = 1;
  }

  return v16;
}

- (BOOL)sceneIsActive
{
  scene = [(DBSceneHostViewController *)self scene];
  isActive = [scene isActive];

  return isActive;
}

- (BOOL)sceneIsForeground
{
  scene = [(DBSceneHostViewController *)self scene];
  if (scene)
  {
    scene2 = [(DBSceneHostViewController *)self scene];
    settings = [scene2 settings];
    isForeground = [settings isForeground];
  }

  else
  {
    isForeground = 0;
  }

  return isForeground;
}

- (int64_t)sceneContentState
{
  scene = [(DBSceneHostViewController *)self scene];
  if (scene)
  {
    scene2 = [(DBSceneHostViewController *)self scene];
    contentState = [scene2 contentState];
  }

  else
  {
    contentState = 0;
  }

  return contentState;
}

- (void)performSceneUpdateWithBlock:(id)block waitsForSceneCommit:(BOOL)commit timeout:(double)timeout completion:(id)completion
{
  commitCopy = commit;
  v57 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionCopy = completion;
  if ([(DBSceneHostViewController *)self isInvalidated])
  {
    if (completionCopy)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:6 userInfo:0];
      completionCopy[2](completionCopy, v12);
    }

    goto LABEL_20;
  }

  environment = [(DBSceneHostViewController *)self environment];
  displayConfiguration = [environment displayConfiguration];

  if (displayConfiguration)
  {
    hostedAppCrashTally = [(DBSceneHostViewController *)self hostedAppCrashTally];
    if (hostedAppCrashTally < [(DBSceneHostViewController *)self persistentSceneCrashLimit])
    {
      proxyAppCrashTally = [(DBSceneHostViewController *)self proxyAppCrashTally];
      if (proxyAppCrashTally < [(DBSceneHostViewController *)self persistentSceneCrashLimit])
      {
        v17 = +[DBApplicationController sharedInstance];
        application = [(DBSceneHostViewController *)self application];
        v19 = [v17 preflightRequiredForApplication:application];

        if (v19)
        {
          v20 = DBLogForCategory(2uLL);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy4 = self;
            _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Application requires preflight, ignoring scene update request.", buf, 0xCu);
          }

          if (completionCopy)
          {
            v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:5 userInfo:0];
            completionCopy[2](completionCopy, v21);
          }

          goto LABEL_20;
        }

        application2 = [(DBSceneHostViewController *)self application];
        isLockedOrHidden = [application2 isLockedOrHidden];

        if (isLockedOrHidden)
        {
          v28 = DBLogForCategory(8uLL);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy4 = self;
            _os_log_impl(&dword_248146000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Application is locked or hidden, ignoring scene update request.", buf, 0xCu);
          }

          if (completionCopy)
          {
            v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:7 userInfo:0];
            completionCopy[2](completionCopy, v29);
          }

          goto LABEL_20;
        }

        updateTimer = [(DBSceneHostViewController *)self updateTimer];

        if (updateTimer)
        {
          updateTimer2 = [(DBSceneHostViewController *)self updateTimer];
          [updateTimer2 invalidate];

          [(DBSceneHostViewController *)self setUpdateTimer:0];
        }

        objc_initWeak(&location, self);
        if (timeout <= 0.0)
        {
          v37 = 0;
        }

        else
        {
          v32 = DBLogForCategory(8uLL);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy4 = self;
            v55 = 2048;
            timeoutCopy = timeout;
            _os_log_impl(&dword_248146000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Transaction timeout interval: %f seconds", buf, 0x16u);
          }

          v33 = MEMORY[0x277CCACA8];
          scene = [(DBSceneHostViewController *)self scene];
          identity = [scene identity];
          v36 = [v33 stringWithFormat:@"SceneUpdate - %@", identity];

          v37 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:v36];
          v38 = MEMORY[0x277D85CD0];
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke;
          v50[3] = &unk_278F04280;
          objc_copyWeak(&v51, &location);
          [v37 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v50 queue:timeout handler:timeout * 0.05];

          [(DBSceneHostViewController *)self setUpdateTimer:v37];
          objc_destroyWeak(&v51);
        }

        scene2 = [(DBSceneHostViewController *)self scene];
        [scene2 setDelegate:self];

        scene3 = [(DBSceneHostViewController *)self scene];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke_97;
        v48[3] = &unk_278F042A8;
        v48[4] = self;
        v49 = blockCopy;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke_2;
        v46[3] = &unk_278F042D0;
        objc_copyWeak(&v47, &location);
        [scene3 performUpdate:v48 withCompletion:v46];

        [(DBSceneHostViewController *)self setScenePresenterInvalidated:0];
        scenePresenter = [(DBSceneHostViewController *)self scenePresenter];
        LODWORD(scene3) = scenePresenter == 0;

        if (scene3)
        {
          v42 = DBLogForCategory(8uLL);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            scene4 = [(DBSceneHostViewController *)self scene];
            identity2 = [scene4 identity];
            *buf = 138543618;
            selfCopy4 = self;
            v55 = 2114;
            timeoutCopy = *&identity2;
            _os_log_impl(&dword_248146000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Recreating presenter for scene %{public}@", buf, 0x16u);
          }

          [(DBSceneHostViewController *)self _installScenePresentationView];
        }

        if (commitCopy)
        {
          scene5 = [(DBSceneHostViewController *)self scene];
          if ([scene5 contentState] != 2)
          {

            if (completionCopy)
            {
              [(DBSceneHostViewController *)self setPendingUpdateCompletion:completionCopy];
            }

            goto LABEL_45;
          }

          if (!completionCopy)
          {
LABEL_45:
            objc_destroyWeak(&v47);

            objc_destroyWeak(&location);
            goto LABEL_20;
          }
        }

        else if (!completionCopy)
        {
          goto LABEL_45;
        }

        completionCopy[2](completionCopy, 0);
        goto LABEL_45;
      }
    }

    v22 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [DBSceneHostViewController performSceneUpdateWithBlock:v22 waitsForSceneCommit:? timeout:? completion:?];
    }

    if (completionCopy)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:3 userInfo:0];
      completionCopy[2](completionCopy, v23);
    }
  }

  else
  {
    v24 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [DBSceneHostViewController performSceneUpdateWithBlock:v24 waitsForSceneCommit:? timeout:? completion:?];
    }

    if (completionCopy)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:2 userInfo:0];
      completionCopy[2](completionCopy, v25);
    }
  }

LABEL_20:
}

void __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained scene];
    v4 = [v3 identity];
    v9 = 138543618;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Fail timer fired while updating scene %{public}@", &v9, 0x16u);
  }

  v5 = [WeakRetained pendingUpdateCompletion];

  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:4 userInfo:0];
    v7 = [WeakRetained pendingUpdateCompletion];
    (v7)[2](v7, v6);
    [WeakRetained setPendingUpdateCompletion:0];
  }

  v8 = [WeakRetained updateTimer];
  [v8 invalidate];

  [WeakRetained setUpdateTimer:0];
}

void __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke_97(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v14 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v14;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_opt_class();
  v11 = v6;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [*(a1 + 32) _updateSceneSettings:v9 transitionContext:v13 updateBlock:*(a1 + 40)];
}

void __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained scene];
    v9 = [v8 identity];
    v10 = NSStringFromBOOL();
    v15 = 138543874;
    v16 = WeakRetained;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Update for scene: %{public}@ completed with success: %{public}@", &v15, 0x20u);
  }

  v11 = [WeakRetained updateTimer];
  [v11 invalidate];

  [WeakRetained setUpdateTimer:0];
  if ((a2 & 1) == 0)
  {
    v12 = [WeakRetained pendingUpdateCompletion];

    if (v12)
    {
      v13 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke_2_cold_1();
      }

      v14 = [WeakRetained pendingUpdateCompletion];
      (v14)[2](v14, v5);
      [WeakRetained setPendingUpdateCompletion:0];
    }
  }
}

- (void)updateSceneSettingsWithBlock:(id)block
{
  blockCopy = block;
  if (self->_scene)
  {
    scene = [(DBSceneHostViewController *)self scene];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__DBSceneHostViewController_updateSceneSettingsWithBlock___block_invoke;
    v6[3] = &unk_278F042F8;
    v7 = blockCopy;
    [scene updateUISettingsWithBlock:v6];
  }
}

void __58__DBSceneHostViewController_updateSceneSettingsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)updateSceneSettingsWithTransitionBlock:(id)block
{
  blockCopy = block;
  if (self->_scene)
  {
    transitionContext = [MEMORY[0x277D75188] transitionContext];
    scene = [(DBSceneHostViewController *)self scene];
    isActive = [scene isActive];

    scene2 = [(DBSceneHostViewController *)self scene];
    if (isActive)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __68__DBSceneHostViewController_updateSceneSettingsWithTransitionBlock___block_invoke_2;
      v13[3] = &unk_278F04348;
      v9 = &v15;
      v10 = &v14;
      v14 = transitionContext;
      v15 = blockCopy;
      v11 = transitionContext;
      [scene2 updateUISettingsWithTransitionBlock:v13];
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __68__DBSceneHostViewController_updateSceneSettingsWithTransitionBlock___block_invoke;
      v16[3] = &unk_278F04320;
      v9 = &v18;
      v10 = &v17;
      v17 = transitionContext;
      v18 = blockCopy;
      v12 = transitionContext;
      [scene2 updateSettings:v16];
    }
  }
}

void *__68__DBSceneHostViewController_updateSceneSettingsWithTransitionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  v8 = *(a1 + 32);
  v9 = v8;

  return v8;
}

- (void)sendSceneActions:(id)actions
{
  actionsCopy = actions;
  if (self->_scene)
  {
    scene = [(DBSceneHostViewController *)self scene];
    isActive = [scene isActive];

    if (isActive)
    {
      [(FBScene *)self->_scene sendActions:actionsCopy];
    }

    else
    {
      v7 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [DBSceneHostViewController sendSceneActions:];
      }
    }
  }
}

- (void)deactivateScene
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    scene = [(DBSceneHostViewController *)self scene];
    identity = [scene identity];
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identity;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Deactivating scene %{public}@", &v7, 0x16u);
  }

  scene2 = [(DBSceneHostViewController *)self scene];
  [scene2 deactivate:0];
}

- (id)presentationViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  environment = [(DBSceneHostViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  effectiveSceneBackgroundColor = [environmentConfiguration effectiveSceneBackgroundColor];
  v8 = [(DBSceneHostViewController *)self presentationViewWithIdentifier:identifierCopy activate:1 backgroundColor:effectiveSceneBackgroundColor];

  return v8;
}

- (id)presentationViewWithIdentifier:(id)identifier activate:(BOOL)activate backgroundColor:(id)color
{
  activateCopy = activate;
  identifierCopy = identifier;
  colorCopy = color;
  secondaryScenePresentersByIdentifier = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  scene = [secondaryScenePresentersByIdentifier objectForKey:identifierCopy];

  if (!scene)
  {
    scene = [(DBSceneHostViewController *)self scene];
    if (scene)
    {
      scene2 = [(DBSceneHostViewController *)self scene];
      uiPresentationManager = [scene2 uiPresentationManager];
      isInvalidated = [uiPresentationManager isInvalidated];

      if (isInvalidated)
      {
        scene = 0;
      }

      else
      {
        scene3 = [(DBSceneHostViewController *)self scene];
        uiPresentationManager2 = [scene3 uiPresentationManager];
        scene = [uiPresentationManager2 createPresenterWithIdentifier:identifierCopy priority:100];

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __85__DBSceneHostViewController_presentationViewWithIdentifier_activate_backgroundColor___block_invoke;
        v24[3] = &unk_278F04370;
        v25 = colorCopy;
        [scene modifyPresentationContext:v24];
        secondaryScenePresentersByIdentifier2 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
        [secondaryScenePresentersByIdentifier2 bs_setSafeObject:scene forKey:identifierCopy];
      }
    }
  }

  if (activateCopy)
  {
    [scene activate];
  }

  presentationView = [scene presentationView];
  scene4 = [(DBSceneHostViewController *)self scene];
  contentState = [scene4 contentState];

  v15 = presentationView;
  if (contentState != 2)
  {
    v16 = objc_alloc(MEMORY[0x277D75D18]);
    [presentationView frame];
    v15 = [v16 initWithFrame:?];

    [v15 setBackgroundColor:colorCopy];
    [v15 addSubview:presentationView];
    [presentationView setAlpha:0.0];
  }

  return v15;
}

void __85__DBSceneHostViewController_presentationViewWithIdentifier_activate_backgroundColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAppearanceStyle:1];
  [v3 setBackgroundColorWhileHosting:*(a1 + 32)];
}

- (void)activatePresentationViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  secondaryScenePresentersByIdentifier = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v6 = [secondaryScenePresentersByIdentifier objectForKey:identifierCopy];

  [v6 activate];
}

- (void)deactivatePresentationViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  secondaryScenePresentersByIdentifier = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v6 = [secondaryScenePresentersByIdentifier objectForKey:identifierCopy];

  [v6 deactivate];
}

- (void)invalidatePresentationViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  secondaryScenePresentersByIdentifier = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v7 = [secondaryScenePresentersByIdentifier objectForKey:identifierCopy];

  [v7 invalidate];
  secondaryScenePresentersByIdentifier2 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  [secondaryScenePresentersByIdentifier2 removeObjectForKey:identifierCopy];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(DBSceneHostViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(DBSceneHostViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__DBSceneHostViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_278F014B8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:@"scene" multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __67__DBSceneHostViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) scene];
  v2 = [v1 appendObject:v3 withName:0];
}

- (void)invalidate
{
  [(DBSceneHostViewController *)self setInvalidated:1];
  scenePresenter = [(DBSceneHostViewController *)self scenePresenter];
  [scenePresenter invalidate];

  [(DBSceneHostViewController *)self setScenePresenter:0];
  sceneHostView = [(DBSceneHostViewController *)self sceneHostView];
  [sceneHostView removeFromSuperview];

  [(DBSceneHostViewController *)self setSceneHostView:0];
  scene = [(DBSceneHostViewController *)self scene];
  if (scene)
  {
    v6 = scene;
    [scene updateSettingsWithBlock:&__block_literal_global_42];
    [v6 invalidate];
    scene = v6;
  }
}

- (void)processMonitor:(id)monitor shouldHandleDeathOfBundleIdentifier:(id)identifier isCrash:(BOOL)crash
{
  crashCopy = crash;
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  application = [(DBSceneHostViewController *)self application];
  bundleIdentifier = [application bundleIdentifier];
  v10 = [identifierCopy isEqualToString:bundleIdentifier];

  if (v10)
  {
    v11 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromBOOL();
      v21 = 138543874;
      selfCopy2 = self;
      v23 = 2114;
      v24 = identifierCopy;
      v25 = 2114;
      v26 = v19;
      _os_log_error_impl(&dword_248146000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Hosted process %{public}@ has died (crash: %{public}@)", &v21, 0x20u);
    }

    if (crashCopy)
    {
      [(DBSceneHostViewController *)self setHostedAppCrashTally:[(DBSceneHostViewController *)self hostedAppCrashTally]+ 1];
      v12 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DBSceneHostViewController processMonitor:shouldHandleDeathOfBundleIdentifier:isCrash:];
      }

LABEL_14:
    }
  }

  else
  {
    proxyApplication = [(DBSceneHostViewController *)self proxyApplication];
    if (proxyApplication)
    {
      v14 = proxyApplication;
      proxyApplication2 = [(DBSceneHostViewController *)self proxyApplication];
      bundleIdentifier2 = [proxyApplication2 bundleIdentifier];
      v17 = [identifierCopy isEqualToString:bundleIdentifier2];

      if (v17)
      {
        v18 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = NSStringFromBOOL();
          v21 = 138543874;
          selfCopy2 = self;
          v23 = 2114;
          v24 = identifierCopy;
          v25 = 2114;
          v26 = v20;
          _os_log_error_impl(&dword_248146000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Hosted proxy process %{public}@ has died (crash: %{public}@", &v21, 0x20u);
        }

        if (crashCopy)
        {
          [(DBSceneHostViewController *)self setProxyAppCrashTally:[(DBSceneHostViewController *)self proxyAppCrashTally]+ 1];
          v12 = DBLogForCategory(8uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [DBSceneHostViewController processMonitor:shouldHandleDeathOfBundleIdentifier:isCrash:];
          }

          goto LABEL_14;
        }
      }
    }
  }
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v6 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [DBSceneHostViewController sceneDidDeactivate:deactivateCopy withContext:?];
  }

  if ([deactivateCopy isValid])
  {
    deactivationPolicy = [(DBSceneHostViewController *)self deactivationPolicy];
    if (deactivationPolicy != 1)
    {
      if (deactivationPolicy)
      {
        hostedAppCrashTally = [(DBSceneHostViewController *)self hostedAppCrashTally];
        if (hostedAppCrashTally < [(DBSceneHostViewController *)self persistentSceneCrashLimit])
        {
          proxyAppCrashTally = [(DBSceneHostViewController *)self proxyAppCrashTally];
          if (proxyAppCrashTally < [(DBSceneHostViewController *)self persistentSceneCrashLimit])
          {
            v10 = DBLogForCategory(8uLL);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              identity = [deactivateCopy identity];
              v13 = 138543618;
              selfCopy = self;
              v15 = 2114;
              v16 = identity;
              _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Re-activating persistent scene %{public}@", &v13, 0x16u);
            }

            [deactivateCopy activate:0];
            goto LABEL_15;
          }
        }

        v12 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [DBSceneHostViewController sceneDidDeactivate:deactivateCopy withContext:?];
        }
      }

      [deactivateCopy invalidate];
    }
  }

LABEL_15:
}

- (void)sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  [(DBSceneHostViewController *)self _updateSceneUI];
  -[DBSceneHostViewController sceneContentStateDidUpdate:](self, "sceneContentStateDidUpdate:", [changeCopy contentState]);
  pendingUpdateCompletion = [(DBSceneHostViewController *)self pendingUpdateCompletion];
  if (pendingUpdateCompletion)
  {
    v5 = pendingUpdateCompletion;
    contentState = [changeCopy contentState];

    if (contentState == 2)
    {
      pendingUpdateCompletion2 = [(DBSceneHostViewController *)self pendingUpdateCompletion];
      pendingUpdateCompletion2[2](pendingUpdateCompletion2, 0);
      [(DBSceneHostViewController *)self setPendingUpdateCompletion:0];
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  uiClientSettings = [scene uiClientSettings];
  [(DBSceneHostViewController *)self clientSceneSettingsDidUpdate:uiClientSettings];
}

- (void)sceneDidInvalidate:(id)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  settings = [invalidateCopy settings];
  v6 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2112;
    v10 = invalidateCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene invalidated: %@", &v7, 0x16u);
  }

  [(DBSceneHostViewController *)self sceneDidInvalidate];
}

- (void)_updateSceneSettings:(id)settings transitionContext:(id)context updateBlock:(id)block
{
  v57 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  contextCopy = context;
  blockCopy = block;
  environment = [(DBSceneHostViewController *)self environment];
  displayConfiguration = [environment displayConfiguration];
  [settingsCopy setDisplayConfiguration:displayConfiguration];

  [settingsCopy setLevel:1.0];
  [settingsCopy setInterfaceOrientation:1];
  application = [(DBSceneHostViewController *)self application];
  [(DBSceneHostViewController *)self sceneFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(DBSceneHostViewController *)self sceneSafeAreaInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v58.origin.x = v14;
    v58.origin.y = v16;
    v58.size.width = v18;
    v58.size.height = v20;
    v30 = NSStringFromCGRect(v58);
    v59.top = v22;
    v59.left = v24;
    v59.bottom = v26;
    v59.right = v28;
    v31 = NSStringFromUIEdgeInsets(v59);
    *buf = 138544130;
    selfCopy4 = self;
    v51 = 2112;
    v52 = application;
    v53 = 2114;
    v54 = v30;
    v55 = 2114;
    v56 = v31;
    _os_log_impl(&dword_248146000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene update for app: %@ - frame: %{public}@, safe area insets: %{public}@", buf, 0x2Au);
  }

  [settingsCopy setFrame:{v14, v16, v18, v20}];
  [settingsCopy setSafeAreaInsetsPortrait:{v22, v24, v26, v28}];
  sceneInterfaceStyle = [(DBSceneHostViewController *)self sceneInterfaceStyle];
  if (sceneInterfaceStyle)
  {
    v33 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy4 = self;
      v51 = 2112;
      v52 = application;
      v53 = 2048;
      v54 = sceneInterfaceStyle;
      _os_log_impl(&dword_248146000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene update for app: %@ to style %ld", buf, 0x20u);
    }

    [settingsCopy setUserInterfaceStyle:sceneInterfaceStyle];
  }

  if (objc_opt_respondsToSelector())
  {
    [settingsCopy setDisableFiveRowKeyboards:{objc_msgSend(environment, "shouldDisableFiveRowKeyboards")}];
  }

  environment2 = [(DBSceneHostViewController *)self environment];
  environmentConfiguration = [environment2 environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];

  traits = [currentWallpaper traits];
  isBlack = [traits isBlack];
  if (sceneInterfaceStyle == 2)
  {
    v40 = isBlack;
  }

  else
  {
    v40 = 0;
  }

  [settingsCopy setBlackWallpaperModeEnabled:v40];
  sceneMapInterfaceStyle = [(DBSceneHostViewController *)self sceneMapInterfaceStyle];
  if (sceneMapInterfaceStyle)
  {
    v42 = sceneMapInterfaceStyle;
    if ([settingsCopy conformsToProtocol:&unk_285B71E40])
    {
      v43 = DBLogForCategory(0x13uLL);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy4 = self;
        v51 = 2112;
        v52 = application;
        v53 = 2048;
        v54 = v42;
        _os_log_impl(&dword_248146000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene update for app: %@ to map style %ld", buf, 0x20u);
      }

      [settingsCopy setMapStyle:v42];
    }
  }

  if ([settingsCopy conformsToProtocol:&unk_285B71F30])
  {
    environmentConfiguration2 = [environment environmentConfiguration];
    thermalMonitor = [environmentConfiguration2 thermalMonitor];
    suggestedFrameRateLimit = [thermalMonitor suggestedFrameRateLimit];

    v47 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v51 = 2114;
      v52 = suggestedFrameRateLimit;
      _os_log_impl(&dword_248146000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene update setting frame rate limit: %{public}@", buf, 0x16u);
    }

    [settingsCopy setFrameRateLimit:suggestedFrameRateLimit];
  }

  [settingsCopy setForeground:{blockCopy[2](blockCopy, settingsCopy, contextCopy)}];
}

void __43__DBSceneHostViewController__updateSceneUI__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 presentationView];
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__DBSceneHostViewController__updateSceneUI__block_invoke_5;
  v6[3] = &unk_278F01580;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0.25];
}

void __58__DBSceneHostViewController__installScenePresentationView__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 sceneFrame];
  [v4 setFrame:?];
  [v4 setHostContextIdentifierForSnapshotting:*(a1 + 48)];
  [v4 setScenePresenterRenderIdentifierForSnapshotting:*(a1 + 40)];
}

- (void)performSceneUpdateWithBlock:(uint64_t)a1 waitsForSceneCommit:(NSObject *)a2 timeout:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Crash limit exceeded! Ignoring scene update request.", &v2, 0xCu);
}

- (void)performSceneUpdateWithBlock:(uint64_t)a1 waitsForSceneCommit:(NSObject *)a2 timeout:completion:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Scene update requested without a display configuration! Ignoring scene update request.", &v2, 0xCu);
}

void __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_4();
  v1 = [v0 scene];
  v2 = [v1 identity];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)sendSceneActions:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  v1 = [v0 scene];
  v2 = [v1 identity];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)processMonitor:shouldHandleDeathOfBundleIdentifier:isCrash:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  [v0 proxyAppCrashTally];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)processMonitor:shouldHandleDeathOfBundleIdentifier:isCrash:.cold.2()
{
  OUTLINED_FUNCTION_2_4();
  [v0 hostedAppCrashTally];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)sceneDidDeactivate:(uint64_t)a1 withContext:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 identity];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)sceneDidDeactivate:(uint64_t)a1 withContext:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 identity];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end