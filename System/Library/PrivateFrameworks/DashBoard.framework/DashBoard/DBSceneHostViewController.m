@interface DBSceneHostViewController
- (BOOL)sceneIsActive;
- (BOOL)sceneIsForeground;
- (CGRect)sceneFrame;
- (DBEnvironment)environment;
- (UIEdgeInsets)sceneSafeAreaInsets;
- (id)_initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)presentationViewWithIdentifier:(id)a3;
- (id)presentationViewWithIdentifier:(id)a3 activate:(BOOL)a4 backgroundColor:(id)a5;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)sceneContentState;
- (int64_t)sceneInterfaceStyle;
- (int64_t)sceneMapInterfaceStyle;
- (void)_installScenePresentationView;
- (void)_updateSceneSettings:(id)a3 transitionContext:(id)a4 updateBlock:(id)a5;
- (void)_updateSceneUI;
- (void)activatePresentationViewWithIdentifier:(id)a3;
- (void)deactivatePresentationViewWithIdentifier:(id)a3;
- (void)deactivateScene;
- (void)invalidate;
- (void)invalidatePresentationViewForIdentifier:(id)a3;
- (void)invalidateScenePresenter;
- (void)performSceneUpdateWithBlock:(id)a3 waitsForSceneCommit:(BOOL)a4 timeout:(double)a5 completion:(id)a6;
- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
- (void)sceneDidInvalidate:(id)a3;
- (void)sendSceneActions:(id)a3;
- (void)updateSceneSettingsWithBlock:(id)a3;
- (void)updateSceneSettingsWithTransitionBlock:(id)a3;
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
  v3 = [(FBScene *)self->_scene uiPresentationManager];
  v4 = [(DBSceneHostViewController *)self scenePresentationIdentifier];
  v5 = [v3 createPresenterWithIdentifier:v4 priority:1];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = v5;

  [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_182];
  [(UIScenePresenter *)self->_scenePresenter activate];
  v7 = [(UIScenePresenter *)self->_scenePresenter presentationView];
  [(DBSceneHostViewController *)self setSceneHostView:v7];

  v8 = [(DBSceneHostViewController *)self view];
  v9 = [(DBSceneHostViewController *)self sceneHostView];
  [v8 addSubview:v9];

  v10 = [(DBSceneHostViewController *)self sceneHostView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = MEMORY[0x277CCAAD0];
  v32 = [(DBSceneHostViewController *)self sceneHostView];
  v30 = [v32 leftAnchor];
  v31 = [(DBSceneHostViewController *)self view];
  v29 = [v31 leftAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v34[0] = v28;
  v27 = [(DBSceneHostViewController *)self sceneHostView];
  v25 = [v27 rightAnchor];
  v26 = [(DBSceneHostViewController *)self view];
  v24 = [v26 rightAnchor];
  v22 = [v25 constraintEqualToAnchor:v24];
  v34[1] = v22;
  v21 = [(DBSceneHostViewController *)self sceneHostView];
  v20 = [v21 topAnchor];
  v11 = [(DBSceneHostViewController *)self view];
  v12 = [v11 topAnchor];
  v13 = [v20 constraintEqualToAnchor:v12];
  v34[2] = v13;
  v14 = [(DBSceneHostViewController *)self sceneHostView];
  v15 = [v14 bottomAnchor];
  v16 = [(DBSceneHostViewController *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
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
  v3 = [(DBSceneHostViewController *)self environment];
  v4 = [(DBSceneHostViewController *)self application];
  v5 = [(DBSceneHostViewController *)self proxyApplication];
  [v3 sceneFrameForApplication:v4 proxyApplication:v5];
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
  v2 = [(DBSceneHostViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(DBSceneHostViewController *)self application];
  v5 = [v4 bundleIdentifier];
  v6 = [v3 appendObject:v5 withName:0];

  v7 = [(DBSceneHostViewController *)self proxyApplication];
  v8 = [v7 bundleIdentifier];
  v9 = [v3 appendObject:v8 withName:@"proxy" skipIfNil:1];

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
  v3 = [(DBSceneHostViewController *)self environment];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(DBSceneHostViewController *)self environment];
  v6 = [(DBSceneHostViewController *)self application];
  v7 = [(DBSceneHostViewController *)self proxyApplication];
  v8 = [v5 sceneMapInterfaceStyleForApplication:v6 proxyApplication:v7];

  return v8;
}

- (int64_t)sceneInterfaceStyle
{
  v3 = [(DBSceneHostViewController *)self environment];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(DBSceneHostViewController *)self environment];
  v6 = [(DBSceneHostViewController *)self application];
  v7 = [(DBSceneHostViewController *)self proxyApplication];
  v8 = [v5 sceneInterfaceStyleForApplication:v6 proxyApplication:v7];

  return v8;
}

- (UIEdgeInsets)sceneSafeAreaInsets
{
  v3 = [(DBSceneHostViewController *)self environment];
  v4 = [(DBSceneHostViewController *)self application];
  v5 = [(DBSceneHostViewController *)self proxyApplication];
  [v3 safeAreaInsetsForApplication:v4 proxyApplication:v5];
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
  v3 = [(DBSceneHostViewController *)self scene];
  v4 = [v3 contentState];

  v5 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v6 = v5;
  if (v4 == 2)
  {
    [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_178];

    v7 = MEMORY[0x277D75D18];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __43__DBSceneHostViewController__updateSceneUI__block_invoke_3;
    v18 = &unk_278F01580;
    v19 = self;
    v8 = 0.25;
    v9 = &v15;
  }

  else
  {
    [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_180];

    v7 = MEMORY[0x277D75D18];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __43__DBSceneHostViewController__updateSceneUI__block_invoke_6;
    v13 = &unk_278F01580;
    v14 = self;
    v8 = 0.25;
    v9 = &v10;
  }

  [v7 animateWithDuration:v9 animations:{v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];
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
  v3 = [(DBSceneHostViewController *)self scenePresenter];

  if (v3)
  {
    v4 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(DBSceneHostViewController *)self scene];
      v6 = [v5 identifier];
      v10 = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating presenter for scene %{public}@", &v10, 0x16u);
    }

    v7 = [(DBSceneHostViewController *)self scenePresenter];
    [v7 deactivate];

    v8 = [(DBSceneHostViewController *)self scenePresenter];
    [v8 invalidate];

    [(DBSceneHostViewController *)self setScenePresenter:0];
    v9 = [(DBSceneHostViewController *)self sceneHostView];
    [v9 removeFromSuperview];

    [(DBSceneHostViewController *)self setSceneHostView:0];
    [(DBSceneHostViewController *)self setScenePresenterInvalidated:1];
  }
}

- (id)_initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = DBSceneHostViewController;
  v15 = [(DBSceneHostViewController *)&v26 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_scene, a3);
    objc_storeStrong(&v16->_application, a4);
    objc_storeStrong(&v16->_proxyApplication, a5);
    objc_storeWeak(&v16->_environment, v14);
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

    v23 = [v14 environmentConfiguration];
    v24 = [v23 processMonitor];
    [v24 addObserver:v16];

    v16->_scenePresenterInvalidated = 1;
  }

  return v16;
}

- (BOOL)sceneIsActive
{
  v2 = [(DBSceneHostViewController *)self scene];
  v3 = [v2 isActive];

  return v3;
}

- (BOOL)sceneIsForeground
{
  v3 = [(DBSceneHostViewController *)self scene];
  if (v3)
  {
    v4 = [(DBSceneHostViewController *)self scene];
    v5 = [v4 settings];
    v6 = [v5 isForeground];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)sceneContentState
{
  v3 = [(DBSceneHostViewController *)self scene];
  if (v3)
  {
    v4 = [(DBSceneHostViewController *)self scene];
    v5 = [v4 contentState];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)performSceneUpdateWithBlock:(id)a3 waitsForSceneCommit:(BOOL)a4 timeout:(double)a5 completion:(id)a6
{
  v8 = a4;
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if ([(DBSceneHostViewController *)self isInvalidated])
  {
    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:6 userInfo:0];
      v11[2](v11, v12);
    }

    goto LABEL_20;
  }

  v13 = [(DBSceneHostViewController *)self environment];
  v14 = [v13 displayConfiguration];

  if (v14)
  {
    v15 = [(DBSceneHostViewController *)self hostedAppCrashTally];
    if (v15 < [(DBSceneHostViewController *)self persistentSceneCrashLimit])
    {
      v16 = [(DBSceneHostViewController *)self proxyAppCrashTally];
      if (v16 < [(DBSceneHostViewController *)self persistentSceneCrashLimit])
      {
        v17 = +[DBApplicationController sharedInstance];
        v18 = [(DBSceneHostViewController *)self application];
        v19 = [v17 preflightRequiredForApplication:v18];

        if (v19)
        {
          v20 = DBLogForCategory(2uLL);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v54 = self;
            _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Application requires preflight, ignoring scene update request.", buf, 0xCu);
          }

          if (v11)
          {
            v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:5 userInfo:0];
            v11[2](v11, v21);
          }

          goto LABEL_20;
        }

        v26 = [(DBSceneHostViewController *)self application];
        v27 = [v26 isLockedOrHidden];

        if (v27)
        {
          v28 = DBLogForCategory(8uLL);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v54 = self;
            _os_log_impl(&dword_248146000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Application is locked or hidden, ignoring scene update request.", buf, 0xCu);
          }

          if (v11)
          {
            v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:7 userInfo:0];
            v11[2](v11, v29);
          }

          goto LABEL_20;
        }

        v30 = [(DBSceneHostViewController *)self updateTimer];

        if (v30)
        {
          v31 = [(DBSceneHostViewController *)self updateTimer];
          [v31 invalidate];

          [(DBSceneHostViewController *)self setUpdateTimer:0];
        }

        objc_initWeak(&location, self);
        if (a5 <= 0.0)
        {
          v37 = 0;
        }

        else
        {
          v32 = DBLogForCategory(8uLL);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v54 = self;
            v55 = 2048;
            v56 = a5;
            _os_log_impl(&dword_248146000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Transaction timeout interval: %f seconds", buf, 0x16u);
          }

          v33 = MEMORY[0x277CCACA8];
          v34 = [(DBSceneHostViewController *)self scene];
          v35 = [v34 identity];
          v36 = [v33 stringWithFormat:@"SceneUpdate - %@", v35];

          v37 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:v36];
          v38 = MEMORY[0x277D85CD0];
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke;
          v50[3] = &unk_278F04280;
          objc_copyWeak(&v51, &location);
          [v37 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v50 queue:a5 handler:a5 * 0.05];

          [(DBSceneHostViewController *)self setUpdateTimer:v37];
          objc_destroyWeak(&v51);
        }

        v39 = [(DBSceneHostViewController *)self scene];
        [v39 setDelegate:self];

        v40 = [(DBSceneHostViewController *)self scene];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke_97;
        v48[3] = &unk_278F042A8;
        v48[4] = self;
        v49 = v10;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __96__DBSceneHostViewController_performSceneUpdateWithBlock_waitsForSceneCommit_timeout_completion___block_invoke_2;
        v46[3] = &unk_278F042D0;
        objc_copyWeak(&v47, &location);
        [v40 performUpdate:v48 withCompletion:v46];

        [(DBSceneHostViewController *)self setScenePresenterInvalidated:0];
        v41 = [(DBSceneHostViewController *)self scenePresenter];
        LODWORD(v40) = v41 == 0;

        if (v40)
        {
          v42 = DBLogForCategory(8uLL);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [(DBSceneHostViewController *)self scene];
            v44 = [v43 identity];
            *buf = 138543618;
            v54 = self;
            v55 = 2114;
            v56 = *&v44;
            _os_log_impl(&dword_248146000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Recreating presenter for scene %{public}@", buf, 0x16u);
          }

          [(DBSceneHostViewController *)self _installScenePresentationView];
        }

        if (v8)
        {
          v45 = [(DBSceneHostViewController *)self scene];
          if ([v45 contentState] != 2)
          {

            if (v11)
            {
              [(DBSceneHostViewController *)self setPendingUpdateCompletion:v11];
            }

            goto LABEL_45;
          }

          if (!v11)
          {
LABEL_45:
            objc_destroyWeak(&v47);

            objc_destroyWeak(&location);
            goto LABEL_20;
          }
        }

        else if (!v11)
        {
          goto LABEL_45;
        }

        v11[2](v11, 0);
        goto LABEL_45;
      }
    }

    v22 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [DBSceneHostViewController performSceneUpdateWithBlock:v22 waitsForSceneCommit:? timeout:? completion:?];
    }

    if (v11)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:3 userInfo:0];
      v11[2](v11, v23);
    }
  }

  else
  {
    v24 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [DBSceneHostViewController performSceneUpdateWithBlock:v24 waitsForSceneCommit:? timeout:? completion:?];
    }

    if (v11)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DBSceneHostErrorDomain" code:2 userInfo:0];
      v11[2](v11, v25);
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

- (void)updateSceneSettingsWithBlock:(id)a3
{
  v4 = a3;
  if (self->_scene)
  {
    v5 = [(DBSceneHostViewController *)self scene];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__DBSceneHostViewController_updateSceneSettingsWithBlock___block_invoke;
    v6[3] = &unk_278F042F8;
    v7 = v4;
    [v5 updateUISettingsWithBlock:v6];
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

- (void)updateSceneSettingsWithTransitionBlock:(id)a3
{
  v4 = a3;
  if (self->_scene)
  {
    v5 = [MEMORY[0x277D75188] transitionContext];
    v6 = [(DBSceneHostViewController *)self scene];
    v7 = [v6 isActive];

    v8 = [(DBSceneHostViewController *)self scene];
    if (v7)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __68__DBSceneHostViewController_updateSceneSettingsWithTransitionBlock___block_invoke_2;
      v13[3] = &unk_278F04348;
      v9 = &v15;
      v10 = &v14;
      v14 = v5;
      v15 = v4;
      v11 = v5;
      [v8 updateUISettingsWithTransitionBlock:v13];
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __68__DBSceneHostViewController_updateSceneSettingsWithTransitionBlock___block_invoke;
      v16[3] = &unk_278F04320;
      v9 = &v18;
      v10 = &v17;
      v17 = v5;
      v18 = v4;
      v12 = v5;
      [v8 updateSettings:v16];
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

- (void)sendSceneActions:(id)a3
{
  v4 = a3;
  if (self->_scene)
  {
    v5 = [(DBSceneHostViewController *)self scene];
    v6 = [v5 isActive];

    if (v6)
    {
      [(FBScene *)self->_scene sendActions:v4];
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
    v4 = [(DBSceneHostViewController *)self scene];
    v5 = [v4 identity];
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Deactivating scene %{public}@", &v7, 0x16u);
  }

  v6 = [(DBSceneHostViewController *)self scene];
  [v6 deactivate:0];
}

- (id)presentationViewWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBSceneHostViewController *)self environment];
  v6 = [v5 environmentConfiguration];
  v7 = [v6 effectiveSceneBackgroundColor];
  v8 = [(DBSceneHostViewController *)self presentationViewWithIdentifier:v4 activate:1 backgroundColor:v7];

  return v8;
}

- (id)presentationViewWithIdentifier:(id)a3 activate:(BOOL)a4 backgroundColor:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v11 = [v10 objectForKey:v8];

  if (!v11)
  {
    v11 = [(DBSceneHostViewController *)self scene];
    if (v11)
    {
      v18 = [(DBSceneHostViewController *)self scene];
      v19 = [v18 uiPresentationManager];
      v20 = [v19 isInvalidated];

      if (v20)
      {
        v11 = 0;
      }

      else
      {
        v21 = [(DBSceneHostViewController *)self scene];
        v22 = [v21 uiPresentationManager];
        v11 = [v22 createPresenterWithIdentifier:v8 priority:100];

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __85__DBSceneHostViewController_presentationViewWithIdentifier_activate_backgroundColor___block_invoke;
        v24[3] = &unk_278F04370;
        v25 = v9;
        [v11 modifyPresentationContext:v24];
        v23 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
        [v23 bs_setSafeObject:v11 forKey:v8];
      }
    }
  }

  if (v6)
  {
    [v11 activate];
  }

  v12 = [v11 presentationView];
  v13 = [(DBSceneHostViewController *)self scene];
  v14 = [v13 contentState];

  v15 = v12;
  if (v14 != 2)
  {
    v16 = objc_alloc(MEMORY[0x277D75D18]);
    [v12 frame];
    v15 = [v16 initWithFrame:?];

    [v15 setBackgroundColor:v9];
    [v15 addSubview:v12];
    [v12 setAlpha:0.0];
  }

  return v15;
}

void __85__DBSceneHostViewController_presentationViewWithIdentifier_activate_backgroundColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAppearanceStyle:1];
  [v3 setBackgroundColorWhileHosting:*(a1 + 32)];
}

- (void)activatePresentationViewWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v6 = [v5 objectForKey:v4];

  [v6 activate];
}

- (void)deactivatePresentationViewWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v6 = [v5 objectForKey:v4];

  [v6 deactivate];
}

- (void)invalidatePresentationViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  v7 = [v5 objectForKey:v4];

  [v7 invalidate];
  v6 = [(DBSceneHostViewController *)self secondaryScenePresentersByIdentifier];
  [v6 removeObjectForKey:v4];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(DBSceneHostViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(DBSceneHostViewController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__DBSceneHostViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_278F014B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:@"scene" multilinePrefix:v4 block:v9];

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
  v3 = [(DBSceneHostViewController *)self scenePresenter];
  [v3 invalidate];

  [(DBSceneHostViewController *)self setScenePresenter:0];
  v4 = [(DBSceneHostViewController *)self sceneHostView];
  [v4 removeFromSuperview];

  [(DBSceneHostViewController *)self setSceneHostView:0];
  v5 = [(DBSceneHostViewController *)self scene];
  if (v5)
  {
    v6 = v5;
    [v5 updateSettingsWithBlock:&__block_literal_global_42];
    [v6 invalidate];
    v5 = v6;
  }
}

- (void)processMonitor:(id)a3 shouldHandleDeathOfBundleIdentifier:(id)a4 isCrash:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(DBSceneHostViewController *)self application];
  v9 = [v8 bundleIdentifier];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromBOOL();
      v21 = 138543874;
      v22 = self;
      v23 = 2114;
      v24 = v7;
      v25 = 2114;
      v26 = v19;
      _os_log_error_impl(&dword_248146000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Hosted process %{public}@ has died (crash: %{public}@)", &v21, 0x20u);
    }

    if (v5)
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
    v13 = [(DBSceneHostViewController *)self proxyApplication];
    if (v13)
    {
      v14 = v13;
      v15 = [(DBSceneHostViewController *)self proxyApplication];
      v16 = [v15 bundleIdentifier];
      v17 = [v7 isEqualToString:v16];

      if (v17)
      {
        v18 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = NSStringFromBOOL();
          v21 = 138543874;
          v22 = self;
          v23 = 2114;
          v24 = v7;
          v25 = 2114;
          v26 = v20;
          _os_log_error_impl(&dword_248146000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Hosted proxy process %{public}@ has died (crash: %{public}@", &v21, 0x20u);
        }

        if (v5)
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

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [DBSceneHostViewController sceneDidDeactivate:v5 withContext:?];
  }

  if ([v5 isValid])
  {
    v7 = [(DBSceneHostViewController *)self deactivationPolicy];
    if (v7 != 1)
    {
      if (v7)
      {
        v8 = [(DBSceneHostViewController *)self hostedAppCrashTally];
        if (v8 < [(DBSceneHostViewController *)self persistentSceneCrashLimit])
        {
          v9 = [(DBSceneHostViewController *)self proxyAppCrashTally];
          if (v9 < [(DBSceneHostViewController *)self persistentSceneCrashLimit])
          {
            v10 = DBLogForCategory(8uLL);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = [v5 identity];
              v13 = 138543618;
              v14 = self;
              v15 = 2114;
              v16 = v11;
              _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Re-activating persistent scene %{public}@", &v13, 0x16u);
            }

            [v5 activate:0];
            goto LABEL_15;
          }
        }

        v12 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [DBSceneHostViewController sceneDidDeactivate:v5 withContext:?];
        }
      }

      [v5 invalidate];
    }
  }

LABEL_15:
}

- (void)sceneContentStateDidChange:(id)a3
{
  v8 = a3;
  [(DBSceneHostViewController *)self _updateSceneUI];
  -[DBSceneHostViewController sceneContentStateDidUpdate:](self, "sceneContentStateDidUpdate:", [v8 contentState]);
  v4 = [(DBSceneHostViewController *)self pendingUpdateCompletion];
  if (v4)
  {
    v5 = v4;
    v6 = [v8 contentState];

    if (v6 == 2)
    {
      v7 = [(DBSceneHostViewController *)self pendingUpdateCompletion];
      v7[2](v7, 0);
      [(DBSceneHostViewController *)self setPendingUpdateCompletion:0];
    }
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = [a3 uiClientSettings];
  [(DBSceneHostViewController *)self clientSceneSettingsDidUpdate:v5];
}

- (void)sceneDidInvalidate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 settings];
  v6 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene invalidated: %@", &v7, 0x16u);
  }

  [(DBSceneHostViewController *)self sceneDidInvalidate];
}

- (void)_updateSceneSettings:(id)a3 transitionContext:(id)a4 updateBlock:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v48 = a4;
  v9 = a5;
  v10 = [(DBSceneHostViewController *)self environment];
  v11 = [v10 displayConfiguration];
  [v8 setDisplayConfiguration:v11];

  [v8 setLevel:1.0];
  [v8 setInterfaceOrientation:1];
  v12 = [(DBSceneHostViewController *)self application];
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
    v50 = self;
    v51 = 2112;
    v52 = v12;
    v53 = 2114;
    v54 = v30;
    v55 = 2114;
    v56 = v31;
    _os_log_impl(&dword_248146000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene update for app: %@ - frame: %{public}@, safe area insets: %{public}@", buf, 0x2Au);
  }

  [v8 setFrame:{v14, v16, v18, v20}];
  [v8 setSafeAreaInsetsPortrait:{v22, v24, v26, v28}];
  v32 = [(DBSceneHostViewController *)self sceneInterfaceStyle];
  if (v32)
  {
    v33 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v50 = self;
      v51 = 2112;
      v52 = v12;
      v53 = 2048;
      v54 = v32;
      _os_log_impl(&dword_248146000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene update for app: %@ to style %ld", buf, 0x20u);
    }

    [v8 setUserInterfaceStyle:v32];
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 setDisableFiveRowKeyboards:{objc_msgSend(v10, "shouldDisableFiveRowKeyboards")}];
  }

  v34 = [(DBSceneHostViewController *)self environment];
  v35 = [v34 environmentConfiguration];
  v36 = [v35 wallpaperPreferences];
  v37 = [v36 currentWallpaper];

  v38 = [v37 traits];
  v39 = [v38 isBlack];
  if (v32 == 2)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  [v8 setBlackWallpaperModeEnabled:v40];
  v41 = [(DBSceneHostViewController *)self sceneMapInterfaceStyle];
  if (v41)
  {
    v42 = v41;
    if ([v8 conformsToProtocol:&unk_285B71E40])
    {
      v43 = DBLogForCategory(0x13uLL);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v50 = self;
        v51 = 2112;
        v52 = v12;
        v53 = 2048;
        v54 = v42;
        _os_log_impl(&dword_248146000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene update for app: %@ to map style %ld", buf, 0x20u);
      }

      [v8 setMapStyle:v42];
    }
  }

  if ([v8 conformsToProtocol:&unk_285B71F30])
  {
    v44 = [v10 environmentConfiguration];
    v45 = [v44 thermalMonitor];
    v46 = [v45 suggestedFrameRateLimit];

    v47 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v50 = self;
      v51 = 2114;
      v52 = v46;
      _os_log_impl(&dword_248146000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ Scene update setting frame rate limit: %{public}@", buf, 0x16u);
    }

    [v8 setFrameRateLimit:v46];
  }

  [v8 setForeground:{v9[2](v9, v8, v48)}];
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