@interface CSPosterSwitcherViewController
- (BOOL)handleEvent:(id)a3;
- (CGRect)leadingTopButtonFrame;
- (CGRect)trailingTopButtonFrame;
- (CSPosterSwitcherViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIView)coverSheetBackgroundView;
- (UIView)coverSheetFloatingView;
- (UIView)coverSheetWallpaperView;
- (id)_sceneIfExists;
- (unint64_t)_effectiveSceneClientLayoutMode;
- (unint64_t)_initialAlongsideLayoutMode;
- (void)_applicationHosterDidInvalidate;
- (void)_dismissEntirely;
- (void)_dismissTier:(BOOL)a3;
- (void)_evaluateInitialTouchTransferActuation;
- (void)_evaluateInitialTransitionActivation;
- (void)_sendDismissEntirelyActionToScene;
- (void)_transitionScene:(id)a3 toLayoutMode:(unint64_t)a4 animated:(BOOL)a5;
- (void)_updateAdaptiveTimeTextHeightForSceneSettings:(id)a3;
- (void)_updateAppearanceWithClientLayoutMode:(unint64_t)a3 previousLayoutMode:(unint64_t)a4 transitionContext:(id)a5;
- (void)_updateAppearanceWithoutAnimation;
- (void)_updateComplicationRowHiddenForSceneSettings:(id)a3;
- (void)_updateFloatingLayerInlinedForSceneSettings:(id)a3;
- (void)_updateLiveContentViewSpecificationForSceneSettings:(id)a3;
- (void)_updateLiveFloatingViewSpecificationForSceneSettings:(id)a3;
- (void)_updateLockVibrancyConfigurationForSceneSettings:(id)a3;
- (void)_updateOverlayViewSpecificationForSceneSettings:(id)a3;
- (void)_updatePreferredActiveAppearance:(int64_t)a3 withReason:(id)a4 forSceneHandle:(id)a5;
- (void)_updateTopButtonLayoutForSceneSettings:(id)a3;
- (void)addGrabberView:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)appendToHostedAppSceneSettings:(id)a3;
- (void)dismissForHomeButton;
- (void)loadView;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4;
- (void)setAppHostConfiguring:(id)a3;
- (void)setCoverSheetBackgroundView:(id)a3;
- (void)setCoverSheetComplicationRowHidden:(BOOL)a3;
- (void)setCoverSheetFloatingView:(id)a3;
- (void)setCoverSheetWallpaperFloatingLayerInlined:(BOOL)a3;
- (void)setCoverSheetWallpaperView:(id)a3;
- (void)setLastAdaptiveTimeTextHeight:(double)a3;
- (void)setLeadingTopButtonFrame:(CGRect)a3 trailingTopButtonFrame:(CGRect)a4;
- (void)setVibrancyConfiguration:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CSPosterSwitcherViewController

- (CSPosterSwitcherViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = CSPosterSwitcherViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v9 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_clientSwitcherLayoutMode = 0;
    v6 = [MEMORY[0x277D3EB38] diffInspectorForObservingDiffContext];
    sceneClientSettingsDiffInspector = v5->_sceneClientSettingsDiffInspector;
    v5->_sceneClientSettingsDiffInspector = v6;
  }

  return v5;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v8 loadView];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [(CSPosterSwitcherViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  scaleView = self->_scaleView;
  self->_scaleView = v5;

  [(UIView *)self->_scaleView setAutoresizingMask:18];
  v7 = [(CSPosterSwitcherViewController *)self view];
  [v7 addSubview:self->_scaleView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSPosterSwitcherViewController *)self setHasEverAppeared:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:a3];
  v4 = [(SBApplicationHosting *)self->_applicationHoster hostedAppSceneHandle];
  [v4 addObserver:self];
  [v4 addActionConsumer:self];
  if (__sb__runningInSpringBoard())
  {
    [v4 setContentPrefersToDisableClipping:SBFEffectiveDeviceClass() == 2];
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    [v4 setContentPrefersToDisableClipping:{objc_msgSend(v5, "userInterfaceIdiom") == 1}];
  }

  [(CSPosterSwitcherViewController *)self _updatePreferredActiveAppearance:1 withReason:@"poster view controller did appear" forSceneHandle:v4];
  [(CSPosterSwitcherViewController *)self _evaluateInitialTransitionActivation];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:a3];
  v4 = [(SBApplicationHosting *)self->_applicationHoster hostedAppSceneHandle];
  [v4 removeObserver:self];
  [v4 removeActionConsumer:self];
  [v4 setContentPrefersToDisableClipping:0];
  [(SBSceneHandleActiveAppearanceAssertion *)self->_activeAppearanceAssertion invalidate];
  activeAppearanceAssertion = self->_activeAppearanceAssertion;
  self->_activeAppearanceAssertion = 0;
}

- (void)_updatePreferredActiveAppearance:(int64_t)a3 withReason:(id)a4 forSceneHandle:(id)a5
{
  v13 = a4;
  v8 = a5;
  v9 = self->_activeAppearanceAssertion;
  v10 = v9;
  if (!v9 || [(SBSceneHandleActiveAppearanceAssertion *)v9 activeAppearance]!= a3)
  {
    v11 = [v8 acquireActiveAppearanceAssertionWithReason:v13 activeAppearance:1 priority:1];
    activeAppearanceAssertion = self->_activeAppearanceAssertion;
    self->_activeAppearanceAssertion = v11;

    [(SBSceneHandleActiveAppearanceAssertion *)v10 invalidate];
  }
}

- (void)setAppHostConfiguring:(id)a3
{
  v6 = a3;
  appHostConfiguring = self->_appHostConfiguring;
  if (appHostConfiguring != v6)
  {
    if (appHostConfiguring)
    {
      [(CSPosterSwitcherViewController *)self bs_removeChildViewController:self->_applicationHoster];
    }

    objc_storeStrong(&self->_appHostConfiguring, a3);
    [(SBApplicationHosting *)self->_applicationHoster setInvalidationHandler:0];
    v8 = [(CSTraitAwareAppHostConfiguring *)self->_appHostConfiguring applicationHosterForTraitsHostContextProvider:self];
    applicationHoster = self->_applicationHoster;
    self->_applicationHoster = v8;

    if (self->_applicationHoster)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [CSPosterSwitcherViewController setAppHostConfiguring:a2];
      }

      objc_initWeak(&location, self);
      v10 = self->_applicationHoster;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__CSPosterSwitcherViewController_setAppHostConfiguring___block_invoke;
      v20[3] = &unk_27838B748;
      objc_copyWeak(&v21, &location);
      [(SBApplicationHosting *)v10 setInvalidationHandler:v20];
      if (objc_opt_respondsToSelector())
      {
        [(SBApplicationHosting *)self->_applicationHoster setProvidesIdleTimerDuration:0];
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    [(CSPosterSwitcherViewController *)self loadViewIfNeeded];
    v11 = self->_appHostConfiguring;
    v12 = self->_applicationHoster;
    v13 = [(CSPosterSwitcherViewController *)self view];
    v14 = [v13 window];
    targetWindow = v14;
    if (!v14)
    {
      targetWindow = self->_targetWindow;
    }

    v16 = [(CSTraitAwareAppHostConfiguring *)v11 traitsAwareViewControllerForApplicationHoster:v12 targetWindow:targetWindow];
    traitsAwareViewController = self->_traitsAwareViewController;
    self->_traitsAwareViewController = v16;

    v18 = self->_traitsAwareViewController;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__CSPosterSwitcherViewController_setAppHostConfiguring___block_invoke_2;
    v19[3] = &unk_27838B798;
    v19[4] = self;
    [(CSPosterSwitcherViewController *)self bs_addChildViewController:v18 animated:0 transitionBlock:v19];
  }
}

void __56__CSPosterSwitcherViewController_setAppHostConfiguring___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applicationHosterDidInvalidate];
}

void __56__CSPosterSwitcherViewController_setAppHostConfiguring___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1192);
  v4 = a2;
  v6 = [v3 view];
  v5 = [*(a1 + 32) view];
  [v5 bounds];
  [v6 setFrame:?];

  [*(*(a1 + 32) + 1160) addSubview:v6];
  v4[2](v4);
}

- (void)setCoverSheetBackgroundView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetBackgroundView);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_coverSheetBackgroundView, v4);
    v6 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CSPosterSwitcherViewController_setCoverSheetBackgroundView___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [v6 updateSettingsWithBlock:v7];
  }
}

- (void)setCoverSheetWallpaperView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetWallpaperView);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_coverSheetWallpaperView, v4);
    v6 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__CSPosterSwitcherViewController_setCoverSheetWallpaperView___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [v6 updateSettingsWithBlock:v7];
  }
}

- (void)setCoverSheetFloatingView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetFloatingView);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_coverSheetFloatingView, v4);
    v6 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__CSPosterSwitcherViewController_setCoverSheetFloatingView___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [v6 updateSettingsWithBlock:v7];
  }
}

- (void)setCoverSheetWallpaperFloatingLayerInlined:(BOOL)a3
{
  if (self->_coverSheetWallpaperFloatingLayerInlined != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_coverSheetWallpaperFloatingLayerInlined = a3;
    v6 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__CSPosterSwitcherViewController_setCoverSheetWallpaperFloatingLayerInlined___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [v6 updateSettingsWithBlock:v7];
  }
}

- (void)setCoverSheetComplicationRowHidden:(BOOL)a3
{
  if (self->_coverSheetComplicationRowHidden != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_coverSheetComplicationRowHidden = a3;
    v6 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__CSPosterSwitcherViewController_setCoverSheetComplicationRowHidden___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [v6 updateSettingsWithBlock:v7];
  }
}

- (void)setVibrancyConfiguration:(id)a3
{
  v4 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [v4 copy];
    vibrancyConfiguration = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v5;

    v7 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__CSPosterSwitcherViewController_setVibrancyConfiguration___block_invoke;
    v8[3] = &unk_27838D230;
    v8[4] = self;
    [v7 updateSettingsWithBlock:v8];
  }
}

- (void)setLeadingTopButtonFrame:(CGRect)a3 trailingTopButtonFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  p_leadingTopButtonFrame = &self->_leadingTopButtonFrame;
  if (!CGRectEqualToRect(a3, self->_leadingTopButtonFrame) || (v16.origin.x = x, v16.origin.y = y, v16.size.width = width, v16.size.height = height, !CGRectEqualToRect(v16, self->_trailingTopButtonFrame)))
  {
    p_leadingTopButtonFrame->origin.x = v11;
    p_leadingTopButtonFrame->origin.y = v10;
    p_leadingTopButtonFrame->size.width = v9;
    p_leadingTopButtonFrame->size.height = v8;
    self->_trailingTopButtonFrame.origin.x = x;
    self->_trailingTopButtonFrame.origin.y = y;
    self->_trailingTopButtonFrame.size.width = width;
    self->_trailingTopButtonFrame.size.height = height;
    v14 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__CSPosterSwitcherViewController_setLeadingTopButtonFrame_trailingTopButtonFrame___block_invoke;
    v15[3] = &unk_27838D230;
    v15[4] = self;
    [v14 updateSettingsWithBlock:v15];
  }
}

- (void)setLastAdaptiveTimeTextHeight:(double)a3
{
  if (self->_lastAdaptiveTimeTextHeight != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_lastAdaptiveTimeTextHeight = a3;
    v6 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__CSPosterSwitcherViewController_setLastAdaptiveTimeTextHeight___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [v6 updateSettingsWithBlock:v7];
  }
}

- (void)aggregateBehavior:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSPosterSwitcherViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateBehavior:v4];
  if (self->_hasEverGoneBeyondAlongside)
  {
    v5 = 16;
  }

  else
  {
    v5 = 13;
  }

  [v4 setIdleTimerDuration:{v5, v6.receiver, v6.super_class}];
  [v4 setIdleTimerMode:1];
  [v4 setIdleWarnMode:2];
  [v4 setNotificationBehavior:2];
  [v4 addRestrictedCapabilities:4096];
}

- (void)aggregateAppearance:(id)a3
{
  v100[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v97.receiver = self;
  v97.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v97 aggregateAppearance:v4];
  v5 = +[CSComponent proudLock];
  v100[0] = v5;
  v6 = +[CSComponent quickActions];
  v100[1] = v6;
  v7 = +[CSComponent footerStatusLabel];
  v100[2] = v7;
  v8 = +[CSComponent pageContent];
  v100[3] = v8;
  v9 = +[CSComponent content];
  v100[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:5];

  v11 = [(CSPosterSwitcherViewController *)self clientSwitcherLayoutMode];
  v12 = SBLogDashBoard();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(CSPosterSwitcherViewController *)v11 != 0 aggregateAppearance:v12, v13, v14, v15, v16, v17, v18];
  }

  v78 = self;
  v19 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
  v20 = [v19 clientSettings];

  [v20 pruis_primaryPosterScale];
  v22 = v21;
  v79 = v20;
  [v20 pruis_primaryPosterOffset];
  if (v22 <= 0.0 || v11 == 0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v22;
  }

  v27 = *MEMORY[0x277CBF348];
  v28 = *(MEMORY[0x277CBF348] + 8);
  if (v11)
  {
    v29 = v24;
  }

  else
  {
    v29 = *(MEMORY[0x277CBF348] + 8);
  }

  v95 = 0u;
  v96 = 0u;
  if (v11)
  {
    v30 = v23;
  }

  else
  {
    v30 = v27;
  }

  v94 = 0uLL;
  CSComponentTransitionInputsMake(0, &v94, 0.001, v30, v29, v26, 0.0);
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v91 = v94;
  v90[2] = __54__CSPosterSwitcherViewController_aggregateAppearance___block_invoke;
  v90[3] = &__block_descriptor_88_e21__16__0__CSComponent_8l;
  v90[4] = 24;
  v92 = v95;
  v93 = v96;
  v31 = [v10 bs_map:v90];

  v32 = +[CSComponent statusBar];
  v99[0] = v32;
  v33 = +[CSComponent controlCenterGrabber];
  v99[1] = v33;
  v34 = +[CSComponent footerCallToActionLabel];
  v99[2] = v34;
  v35 = +[CSComponent pageControl];
  v99[3] = v35;
  v36 = +[CSComponent whitePoint];
  v99[4] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:5];
  v38 = [v31 arrayByAddingObjectsFromArray:v37];

  if (v11)
  {
    v39 = [v38 bs_map:&__block_literal_global_15];

    v38 = v39;
  }

  v40 = objc_opt_new();
  v41 = [v40 suppressTeachableMomentsAnimation:1];
  v42 = [v41 priority:40];
  v43 = [v42 hidden:v11 != 0];

  v44 = [v43 transitionModifiers:24];
  v87 = v94;
  v88 = v95;
  v89 = v96;
  v45 = [v44 transitionInputs:&v87];

  v46 = [v38 arrayByAddingObject:v45];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v47 = v46;
  v48 = [v47 countByEnumeratingWithState:&v83 objects:v98 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v84;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v84 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [v4 addComponent:*(*(&v83 + 1) + 8 * i)];
      }

      v49 = [v47 countByEnumeratingWithState:&v83 objects:v98 count:16];
    }

    while (v49);
  }

  v52 = [(CSPosterSwitcherViewController *)v78 hostedAppSceneHandle];
  v53 = [v52 isContentReady];

  if (v53)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v54 = [MEMORY[0x277D75418] currentDevice];
      v55 = [v54 userInterfaceIdiom];

      if (v55 != 1)
      {
        goto LABEL_30;
      }
    }

    v56 = +[CSComponent complicationSidebar];
    v57 = [v56 priority:40];
    v58 = [v57 hidden:1];
    [v4 addComponent:v58];

    v59 = +[CSComponent fullBleedContent];
    v60 = [v59 priority:40];
    v61 = [v60 flag:1];
    [v4 addComponent:v61];
  }

LABEL_30:
  fullscreenTransitionAnimationCount = v78->_fullscreenTransitionAnimationCount;
  if (fullscreenTransitionAnimationCount)
  {
    v63 = 1;
  }

  else
  {
    v63 = v11 == 0;
  }

  if (v63)
  {
    v88 = 0u;
    v89 = 0u;
    v87 = 0u;
    CSComponentTransitionInputsMake(1, &v87, 0.0, v27, v28, 0.0, 0.0);
    v64 = +[CSComponent modalContent];
    v65 = [v64 priority:40];
    v66 = [v65 transitionModifiers:64];
    v80 = v87;
    v81 = v88;
    v82 = v89;
    v67 = [v66 transitionInputs:&v80];
    [v4 addComponent:v67];

    v68 = +[CSComponent backgroundContent];
    v69 = [v68 priority:40];
    v70 = [v69 transitionModifiers:64];
    v80 = v87;
    v81 = v88;
    v82 = v89;
    v71 = [v70 transitionInputs:&v80];
    [v4 addComponent:v71];
  }

  v72 = objc_opt_new();
  v73 = [v72 priority:40];
  v74 = [v73 hidden:0];

  [v74 setLevel:1];
  if (fullscreenTransitionAnimationCount | v11)
  {
    v75 = objc_opt_new();
    v76 = [v75 shouldMatchMove:0];
    v77 = [v76 priority:40];

    [v77 setLevel:1];
    if (v11)
    {
      [v77 setShouldRenderForPosterSwitcher:1];
      [v74 setShouldMatchBackgroundStyle:0];
    }

    [v4 addComponent:v77];
  }

  [v4 addComponent:v74];
}

id __54__CSPosterSwitcherViewController_aggregateAppearance___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 transitionModifiers:*(a1 + 32)];
  v4 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v4;
  v7[2] = *(a1 + 72);
  v5 = [v3 transitionInputs:v7];

  return v5;
}

id __54__CSPosterSwitcherViewController_aggregateAppearance___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 priority:40];
  v3 = [v2 hidden:1];

  return v3;
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 9)
  {
    [(CSPosterSwitcherViewController *)self _sendDismissEntirelyActionToScene];
  }

  v13.receiver = self;
  v13.super_class = CSPosterSwitcherViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v13, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    if (v6 == 13)
    {
      v9 = [v4 value];
      v10 = [v9 BOOLValue];

      if ((v10 & 1) == 0)
      {
        v7 = SBLogDashBoard();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          v8 = "Dismissing Poster Switcher due to authentication change.";
          goto LABEL_13;
        }

LABEL_14:

        [(CSPosterSwitcherViewController *)self _dismissEntirely];
      }
    }

    else if (v6 == 25)
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        v8 = "Dismissing Poster Switcher due to screen-off.";
LABEL_13:
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, v8, v12, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v5 = 0;
    goto LABEL_16;
  }

  v5 = [v4 isConsumable];
LABEL_16:

  return v5;
}

- (void)addGrabberView:(id)a3
{
  v5 = a3;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v4 = [(CSPosterSwitcherViewController *)self view];
    [v4 bounds];
    [v5 setFrame:?];

    [v5 setAutoresizingMask:18];
    [v5 setAlpha:0.0];
    [(UIView *)self->_scaleView addSubview:v5];
  }
}

- (void)dismissForHomeButton
{
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing Poster Switcher due to home button press.", v4, 2u);
  }

  [(CSPosterSwitcherViewController *)self _dismissTier:1];
}

- (void)_applicationHosterDidInvalidate
{
  v2 = [(CSPosterSwitcherViewController *)self invalidationHandler];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)appendToHostedAppSceneSettings:(id)a3
{
  v4 = a3;
  [v4 pruis_setPreferredSwitcherLayoutMode:0];
  [(CSPosterSwitcherViewController *)self _updateOverlayViewSpecificationForSceneSettings:v4];
  [(CSPosterSwitcherViewController *)self _updateLiveContentViewSpecificationForSceneSettings:v4];
  [(CSPosterSwitcherViewController *)self _updateLiveFloatingViewSpecificationForSceneSettings:v4];
  [(CSPosterSwitcherViewController *)self _updateFloatingLayerInlinedForSceneSettings:v4];
  [(CSPosterSwitcherViewController *)self _updateComplicationRowHiddenForSceneSettings:v4];
  [(CSPosterSwitcherViewController *)self _updateTopButtonLayoutForSceneSettings:v4];
  [(CSPosterSwitcherViewController *)self _updateLockVibrancyConfigurationForSceneSettings:v4];
  [(CSPosterSwitcherViewController *)self _updateAdaptiveTimeTextHeightForSceneSettings:v4];
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  traitsAwareViewController = self->_traitsAwareViewController;
  v7 = a3;
  v8 = [(CSTraitsAwareOrientedAppHosting *)traitsAwareViewController hostedSceneHandle];

  if (a4 && v8 == v7 && [(CSPosterSwitcherViewController *)self bs_isAppearingOrAppeared])
  {
    v9 = self->_traitsAwareViewController;

    [(CSTraitsAwareOrientedAppHosting *)v9 sceneDidAttach];
  }
}

- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4
{
  v6 = a3;
  [(CSPosterSwitcherViewController *)self _dismissEntirely];
  v7 = [(CSTraitsAwareOrientedAppHosting *)self->_traitsAwareViewController hostedSceneHandle];

  if (a4 && v7 == v6)
  {
    traitsAwareViewController = self->_traitsAwareViewController;

    [(CSTraitsAwareOrientedAppHosting *)traitsAwareViewController sceneWasDestroyed];
  }
}

- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4
{
  v5 = a3;
  [(CSPosterSwitcherViewController *)self _evaluateInitialTransitionActivation];
  if ([v5 isContentReady])
  {
    v6 = MEMORY[0x277CD9FF0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__CSPosterSwitcherViewController_sceneHandle_didUpdateContentState___block_invoke;
    v7[3] = &unk_27838B838;
    v7[4] = self;
    v8 = v5;
    [v6 bs_performAfterSynchronizedCommit:v7];
  }

  else
  {
    [(CSPosterSwitcherViewController *)self setHasCommittedInContentReadyState:0];
  }
}

uint64_t __68__CSPosterSwitcherViewController_sceneHandle_didUpdateContentState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasCommittedInContentReadyState:{objc_msgSend(*(a1 + 40), "isContentReady")}];
  v2 = *(a1 + 32);

  return [v2 _evaluateInitialTouchTransferActuation];
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 settingsDiff];
  v9 = [v6 transitionContext];

  v10 = [v7 scene];

  v11 = [v10 clientSettings];
  v12 = [v11 pruis_switcherLayoutMode];

  v21 = 0;
  v13 = [(CSPosterSwitcherViewController *)self sceneClientSettingsDiffInspector];
  [v13 inspectDiff:v8 withContext:&v21];

  v14 = v21;
  if ((v21 & 2) != 0)
  {
    [(CSPosterSwitcherViewController *)self _evaluateInitialTouchTransferActuation];
  }

  v15 = [(CSPosterSwitcherViewController *)self clientSwitcherLayoutMode];
  if (v14)
  {
    v16 = v15;
    if (v12 != v15)
    {
      v17 = SBLogDashBoard();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [CSPosterSwitcherViewController sceneHandle:didUpdateClientSettings:];
      }

      if (v16)
      {
        v18 = v12 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      if (!v16 || v12)
      {
        if (!self->_hasEverGoneBeyondAlongside && v12 && v12 != [(CSPosterSwitcherViewController *)self _initialAlongsideLayoutMode])
        {
          self->_hasEverGoneBeyondAlongside = 1;
          [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
        }
      }

      else
      {
        [(CSPosterSwitcherViewController *)self _updateAppearanceWithoutAnimation];
      }

      [(CSPosterSwitcherViewController *)self setClientSwitcherLayoutMode:v12];
      if (v19)
      {
        v20 = v9;
        _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
      }
    }
  }
}

- (id)_sceneIfExists
{
  v2 = [(CSPosterSwitcherViewController *)self hostedAppSceneHandle];
  v3 = [v2 sceneIfExists];

  return v3;
}

- (void)_evaluateInitialTransitionActivation
{
  if (![(CSPosterSwitcherViewController *)self handledInitialTransition]&& [(CSPosterSwitcherViewController *)self _appearState]== 2)
  {
    v5 = [(CSPosterSwitcherViewController *)self hostedAppSceneHandle];
    v3 = [v5 sceneIfExists];
    if (v3 && [v5 isContentReady])
    {
      [(CSPosterSwitcherViewController *)self setHandledInitialTransition:1];
      v4 = [v3 clientSettings];
      -[CSPosterSwitcherViewController setClientSwitcherLayoutMode:](self, "setClientSwitcherLayoutMode:", [v4 pruis_switcherLayoutMode]);

      [(CSPosterSwitcherViewController *)self _transitionScene:v3 toLayoutMode:[(CSPosterSwitcherViewController *)self _initialAlongsideLayoutMode] animated:1];
      [(CSPosterSwitcherViewController *)self _updateAppearanceWithoutAnimation];
    }
  }
}

- (unint64_t)_initialAlongsideLayoutMode
{
  if (CSFeatureEnabled(1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_evaluateInitialTouchTransferActuation
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Why are we trying to transfer touches to a non-foreground scene?"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1_1();
    v8 = @"CSPosterSwitcherViewController.m";
    v9 = 1024;
    v10 = 610;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21EB05000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t __72__CSPosterSwitcherViewController__evaluateInitialTouchTransferActuation__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 _touchIdentifier];

  return [v2 numberWithUnsignedInt:v3];
}

- (void)_transitionScene:(id)a3 toLayoutMode:(unint64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = SBLogDashBoard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CSPosterSwitcherViewController _transitionScene:toLayoutMode:animated:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__CSPosterSwitcherViewController__transitionScene_toLayoutMode_animated___block_invoke;
  v10[3] = &unk_27838D2E0;
  v13 = a5;
  v11 = v7;
  v12 = a4;
  v9 = v7;
  [v9 updateSettingsWithTransitionBlock:v10];
}

id __73__CSPosterSwitcherViewController__transitionScene_toLayoutMode_animated___block_invoke(uint64_t a1, void *a2)
{
  [a2 pruis_setPreferredSwitcherLayoutMode:*(a1 + 40)];
  if (*(a1 + 48) == 1 && [*(a1 + 32) isActive])
  {
    v3 = [MEMORY[0x277D75188] transitionContext];
    v4 = PRUISSwitcherLayoutTransitionAnimationSettings();
    [v3 setAnimationSettings:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateOverlayViewSpecificationForSceneSettings:(id)a3
{
  v4 = a3;
  v5 = [(CSPosterSwitcherViewController *)self coverSheetBackgroundView];
  v7 = [v5 layer];

  if (v7)
  {
    [v4 pruis_setLockPosterOverlayLayerRenderID:CALayerGetRenderId()];
    v6 = [v7 context];
    [v4 pruis_setLockPosterOverlayLayerContextID:{objc_msgSend(v6, "contextId")}];

    v4 = v6;
  }

  else
  {
    [v4 pruis_setLockPosterOverlayLayerRenderID:0];
    [v4 pruis_setLockPosterOverlayLayerContextID:0];
  }
}

- (void)_updateLiveContentViewSpecificationForSceneSettings:(id)a3
{
  v4 = a3;
  v5 = [(CSPosterSwitcherViewController *)self coverSheetWallpaperView];
  v7 = [v5 layer];

  if (v7)
  {
    [v4 pruis_setLockPosterLiveContentLayerRenderID:CALayerGetRenderId()];
    v6 = [v7 context];
    [v4 pruis_setLockPosterLiveContentLayerContextID:{objc_msgSend(v6, "contextId")}];

    v4 = v6;
  }

  else
  {
    [v4 pruis_setLockPosterLiveContentLayerRenderID:0];
    [v4 pruis_setLockPosterLiveContentLayerContextID:0];
  }
}

- (void)_updateLiveFloatingViewSpecificationForSceneSettings:(id)a3
{
  v4 = a3;
  v5 = [(CSPosterSwitcherViewController *)self coverSheetFloatingView];
  v7 = [v5 layer];

  if (v7)
  {
    [v4 pruis_setLockPosterLiveFloatingLayerRenderID:CALayerGetRenderId()];
    v6 = [v7 context];
    [v4 pruis_setLockPosterLiveFloatingLayerContextID:{objc_msgSend(v6, "contextId")}];

    v4 = v6;
  }

  else
  {
    [v4 pruis_setLockPosterLiveFloatingLayerRenderID:0];
    [v4 pruis_setLockPosterLiveFloatingLayerContextID:0];
  }
}

- (void)_updateFloatingLayerInlinedForSceneSettings:(id)a3
{
  v4 = a3;
  [v4 pruis_setLockPosterFloatingLayerInlined:{-[CSPosterSwitcherViewController isCoverSheetWallpaperFloatingLayerInlined](self, "isCoverSheetWallpaperFloatingLayerInlined")}];
}

- (void)_updateComplicationRowHiddenForSceneSettings:(id)a3
{
  v4 = a3;
  [v4 pruis_setLockPosterComplicationRowHidden:{-[CSPosterSwitcherViewController isCoverSheetComplicationRowHidden](self, "isCoverSheetComplicationRowHidden")}];
}

- (void)_updateTopButtonLayoutForSceneSettings:(id)a3
{
  v20 = a3;
  [(CSPosterSwitcherViewController *)self leadingTopButtonFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CSPosterSwitcherViewController *)self trailingTopButtonFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v20 pruis_setLeadingTopButtonFrame:{v5, v7, v9, v11}];
  [v20 pruis_setTrailingTopButtonFrame:{v13, v15, v17, v19}];
}

- (void)_updateLockVibrancyConfigurationForSceneSettings:(id)a3
{
  v4 = a3;
  v5 = [(CSPosterSwitcherViewController *)self vibrancyConfiguration];
  [v4 pruis_setLockVibrancyConfiguration:v5];
}

- (void)_updateAppearanceWithClientLayoutMode:(unint64_t)a3 previousLayoutMode:(unint64_t)a4 transitionContext:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = a4 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v9)
  {
    ++self->_fullscreenTransitionAnimationCount;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__CSPosterSwitcherViewController__updateAppearanceWithClientLayoutMode_previousLayoutMode_transitionContext___block_invoke;
  v14[3] = &unk_27838D308;
  v15 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__CSPosterSwitcherViewController__updateAppearanceWithClientLayoutMode_previousLayoutMode_transitionContext___block_invoke_2;
  v12[3] = &unk_27838D198;
  v13 = v10;
  v12[4] = self;
  v11 = v8;
  [(CSCoverSheetViewControllerBase *)self updateAppearance:v14 completion:v12];
}

id __109__CSPosterSwitcherViewController__updateAppearanceWithClientLayoutMode_previousLayoutMode_transitionContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 animationSettings];
  }

  else
  {
    [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
  }
  v2 = ;

  return v2;
}

uint64_t __109__CSPosterSwitcherViewController__updateAppearanceWithClientLayoutMode_previousLayoutMode_transitionContext___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveSceneClientLayoutMode];
    v3 = *(v1 + 32);
    if (v2)
    {
      --v3[142];
      result = *(v1 + 32);
      if (!*(result + 1136))
      {
        v4 = *(v1 + 32);

        return [result updateAppearanceForController:v4];
      }
    }

    else
    {

      return [v3 _dismissEntirely];
    }
  }

  return result;
}

- (void)_updateAdaptiveTimeTextHeightForSceneSettings:(id)a3
{
  v4 = a3;
  [(CSPosterSwitcherViewController *)self lastAdaptiveTimeTextHeight];
  [v4 pruis_setTitleAdaptiveTextHeight:?];
}

- (void)_updateAppearanceWithoutAnimation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67__CSPosterSwitcherViewController__updateAppearanceWithoutAnimation__block_invoke;
  v2[3] = &unk_27838B770;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

- (unint64_t)_effectiveSceneClientLayoutMode
{
  v2 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 clientSettings];
    v5 = [v4 pruis_switcherLayoutMode];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_dismissTier:(BOOL)a3
{
  v3 = a3;
  v8 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
  if ([v8 contentState] == 2)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [MEMORY[0x277D3EB30] actionWithAnimation:v3];
    v7 = [v5 setWithObject:v6];
    [v8 sendActions:v7];
  }

  else
  {
    [(CSPosterSwitcherViewController *)self _dismissEntirely];
  }
}

- (void)_sendDismissEntirelyActionToScene
{
  v5 = [(CSPosterSwitcherViewController *)self _sceneIfExists];
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277D3EB28] actionActivatingCurrentPoster:0];
  v4 = [v2 setWithObject:v3];
  [v5 sendActions:v4];
}

- (void)_dismissEntirely
{
  [(CSPosterSwitcherViewController *)self _sendDismissEntirelyActionToScene];
  if ([(CSPosterSwitcherViewController *)self hasEverAppeared])
  {
    v3 = [CSAction actionWithType:1];
    [(CSCoverSheetViewControllerBase *)self sendAction:v3];
  }

  else
  {

    [(CSPosterSwitcherViewController *)self _applicationHosterDidInvalidate];
  }
}

- (UIView)coverSheetBackgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetBackgroundView);

  return WeakRetained;
}

- (UIView)coverSheetWallpaperView
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetWallpaperView);

  return WeakRetained;
}

- (UIView)coverSheetFloatingView
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetFloatingView);

  return WeakRetained;
}

- (CGRect)leadingTopButtonFrame
{
  x = self->_leadingTopButtonFrame.origin.x;
  y = self->_leadingTopButtonFrame.origin.y;
  width = self->_leadingTopButtonFrame.size.width;
  height = self->_leadingTopButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)trailingTopButtonFrame
{
  x = self->_trailingTopButtonFrame.origin.x;
  y = self->_trailingTopButtonFrame.origin.y;
  width = self->_trailingTopButtonFrame.size.width;
  height = self->_trailingTopButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setAppHostConfiguring:(const char *)a1 .cold.1(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"We need an application hoster that supports an invalidation handler"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1_1();
    v9 = @"CSPosterSwitcherViewController.m";
    v10 = 1024;
    v11 = 134;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21EB05000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneHandle:didUpdateClientSettings:.cold.1()
{
  v0 = NSStringFromPRUISSwitcherLayoutMode();
  OUTLINED_FUNCTION_0_3(&dword_21EB05000, v1, v2, "Poster Switcher reflecting client layout mode update to: %@", v3, v4, v5, v6, 2u);
}

- (void)_transitionScene:toLayoutMode:animated:.cold.1()
{
  v0 = NSStringFromPRUISSwitcherLayoutMode();
  OUTLINED_FUNCTION_0_3(&dword_21EB05000, v1, v2, "Poster Switcher is updating preferred layout mode to: %@", v3, v4, v5, v6, 2u);
}

@end