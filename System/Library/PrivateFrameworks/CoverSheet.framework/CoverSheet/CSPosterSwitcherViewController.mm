@interface CSPosterSwitcherViewController
- (BOOL)handleEvent:(id)event;
- (CGRect)leadingTopButtonFrame;
- (CGRect)trailingTopButtonFrame;
- (CSPosterSwitcherViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIView)coverSheetBackgroundView;
- (UIView)coverSheetFloatingView;
- (UIView)coverSheetWallpaperView;
- (id)_sceneIfExists;
- (unint64_t)_effectiveSceneClientLayoutMode;
- (unint64_t)_initialAlongsideLayoutMode;
- (void)_applicationHosterDidInvalidate;
- (void)_dismissEntirely;
- (void)_dismissTier:(BOOL)tier;
- (void)_evaluateInitialTouchTransferActuation;
- (void)_evaluateInitialTransitionActivation;
- (void)_sendDismissEntirelyActionToScene;
- (void)_transitionScene:(id)scene toLayoutMode:(unint64_t)mode animated:(BOOL)animated;
- (void)_updateAdaptiveTimeTextHeightForSceneSettings:(id)settings;
- (void)_updateAppearanceWithClientLayoutMode:(unint64_t)mode previousLayoutMode:(unint64_t)layoutMode transitionContext:(id)context;
- (void)_updateAppearanceWithoutAnimation;
- (void)_updateComplicationRowHiddenForSceneSettings:(id)settings;
- (void)_updateFloatingLayerInlinedForSceneSettings:(id)settings;
- (void)_updateLiveContentViewSpecificationForSceneSettings:(id)settings;
- (void)_updateLiveFloatingViewSpecificationForSceneSettings:(id)settings;
- (void)_updateLockVibrancyConfigurationForSceneSettings:(id)settings;
- (void)_updateOverlayViewSpecificationForSceneSettings:(id)settings;
- (void)_updatePreferredActiveAppearance:(int64_t)appearance withReason:(id)reason forSceneHandle:(id)handle;
- (void)_updateTopButtonLayoutForSceneSettings:(id)settings;
- (void)addGrabberView:(id)view;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)appendToHostedAppSceneSettings:(id)settings;
- (void)dismissForHomeButton;
- (void)loadView;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state;
- (void)setAppHostConfiguring:(id)configuring;
- (void)setCoverSheetBackgroundView:(id)view;
- (void)setCoverSheetComplicationRowHidden:(BOOL)hidden;
- (void)setCoverSheetFloatingView:(id)view;
- (void)setCoverSheetWallpaperFloatingLayerInlined:(BOOL)inlined;
- (void)setCoverSheetWallpaperView:(id)view;
- (void)setLastAdaptiveTimeTextHeight:(double)height;
- (void)setLeadingTopButtonFrame:(CGRect)frame trailingTopButtonFrame:(CGRect)buttonFrame;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CSPosterSwitcherViewController

- (CSPosterSwitcherViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = CSPosterSwitcherViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_clientSwitcherLayoutMode = 0;
    diffInspectorForObservingDiffContext = [MEMORY[0x277D3EB38] diffInspectorForObservingDiffContext];
    sceneClientSettingsDiffInspector = v5->_sceneClientSettingsDiffInspector;
    v5->_sceneClientSettingsDiffInspector = diffInspectorForObservingDiffContext;
  }

  return v5;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v8 loadView];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  view = [(CSPosterSwitcherViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];
  scaleView = self->_scaleView;
  self->_scaleView = v5;

  [(UIView *)self->_scaleView setAutoresizingMask:18];
  view2 = [(CSPosterSwitcherViewController *)self view];
  [view2 addSubview:self->_scaleView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSPosterSwitcherViewController *)self setHasEverAppeared:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:appear];
  hostedAppSceneHandle = [(SBApplicationHosting *)self->_applicationHoster hostedAppSceneHandle];
  [hostedAppSceneHandle addObserver:self];
  [hostedAppSceneHandle addActionConsumer:self];
  if (__sb__runningInSpringBoard())
  {
    [hostedAppSceneHandle setContentPrefersToDisableClipping:SBFEffectiveDeviceClass() == 2];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    [hostedAppSceneHandle setContentPrefersToDisableClipping:{objc_msgSend(currentDevice, "userInterfaceIdiom") == 1}];
  }

  [(CSPosterSwitcherViewController *)self _updatePreferredActiveAppearance:1 withReason:@"poster view controller did appear" forSceneHandle:hostedAppSceneHandle];
  [(CSPosterSwitcherViewController *)self _evaluateInitialTransitionActivation];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:disappear];
  hostedAppSceneHandle = [(SBApplicationHosting *)self->_applicationHoster hostedAppSceneHandle];
  [hostedAppSceneHandle removeObserver:self];
  [hostedAppSceneHandle removeActionConsumer:self];
  [hostedAppSceneHandle setContentPrefersToDisableClipping:0];
  [(SBSceneHandleActiveAppearanceAssertion *)self->_activeAppearanceAssertion invalidate];
  activeAppearanceAssertion = self->_activeAppearanceAssertion;
  self->_activeAppearanceAssertion = 0;
}

- (void)_updatePreferredActiveAppearance:(int64_t)appearance withReason:(id)reason forSceneHandle:(id)handle
{
  reasonCopy = reason;
  handleCopy = handle;
  v9 = self->_activeAppearanceAssertion;
  v10 = v9;
  if (!v9 || [(SBSceneHandleActiveAppearanceAssertion *)v9 activeAppearance]!= appearance)
  {
    v11 = [handleCopy acquireActiveAppearanceAssertionWithReason:reasonCopy activeAppearance:1 priority:1];
    activeAppearanceAssertion = self->_activeAppearanceAssertion;
    self->_activeAppearanceAssertion = v11;

    [(SBSceneHandleActiveAppearanceAssertion *)v10 invalidate];
  }
}

- (void)setAppHostConfiguring:(id)configuring
{
  configuringCopy = configuring;
  appHostConfiguring = self->_appHostConfiguring;
  if (appHostConfiguring != configuringCopy)
  {
    if (appHostConfiguring)
    {
      [(CSPosterSwitcherViewController *)self bs_removeChildViewController:self->_applicationHoster];
    }

    objc_storeStrong(&self->_appHostConfiguring, configuring);
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
    view = [(CSPosterSwitcherViewController *)self view];
    window = [view window];
    targetWindow = window;
    if (!window)
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

- (void)setCoverSheetBackgroundView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetBackgroundView);

  if (WeakRetained != viewCopy)
  {
    objc_storeWeak(&self->_coverSheetBackgroundView, viewCopy);
    _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CSPosterSwitcherViewController_setCoverSheetBackgroundView___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [_sceneIfExists updateSettingsWithBlock:v7];
  }
}

- (void)setCoverSheetWallpaperView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetWallpaperView);

  if (WeakRetained != viewCopy)
  {
    objc_storeWeak(&self->_coverSheetWallpaperView, viewCopy);
    _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__CSPosterSwitcherViewController_setCoverSheetWallpaperView___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [_sceneIfExists updateSettingsWithBlock:v7];
  }
}

- (void)setCoverSheetFloatingView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetFloatingView);

  if (WeakRetained != viewCopy)
  {
    objc_storeWeak(&self->_coverSheetFloatingView, viewCopy);
    _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__CSPosterSwitcherViewController_setCoverSheetFloatingView___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [_sceneIfExists updateSettingsWithBlock:v7];
  }
}

- (void)setCoverSheetWallpaperFloatingLayerInlined:(BOOL)inlined
{
  if (self->_coverSheetWallpaperFloatingLayerInlined != inlined)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_coverSheetWallpaperFloatingLayerInlined = inlined;
    _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__CSPosterSwitcherViewController_setCoverSheetWallpaperFloatingLayerInlined___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [_sceneIfExists updateSettingsWithBlock:v7];
  }
}

- (void)setCoverSheetComplicationRowHidden:(BOOL)hidden
{
  if (self->_coverSheetComplicationRowHidden != hidden)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_coverSheetComplicationRowHidden = hidden;
    _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__CSPosterSwitcherViewController_setCoverSheetComplicationRowHidden___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [_sceneIfExists updateSettingsWithBlock:v7];
  }
}

- (void)setVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [configurationCopy copy];
    vibrancyConfiguration = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v5;

    _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__CSPosterSwitcherViewController_setVibrancyConfiguration___block_invoke;
    v8[3] = &unk_27838D230;
    v8[4] = self;
    [_sceneIfExists updateSettingsWithBlock:v8];
  }
}

- (void)setLeadingTopButtonFrame:(CGRect)frame trailingTopButtonFrame:(CGRect)buttonFrame
{
  height = buttonFrame.size.height;
  width = buttonFrame.size.width;
  y = buttonFrame.origin.y;
  x = buttonFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  p_leadingTopButtonFrame = &self->_leadingTopButtonFrame;
  if (!CGRectEqualToRect(frame, self->_leadingTopButtonFrame) || (v16.origin.x = x, v16.origin.y = y, v16.size.width = width, v16.size.height = height, !CGRectEqualToRect(v16, self->_trailingTopButtonFrame)))
  {
    p_leadingTopButtonFrame->origin.x = v11;
    p_leadingTopButtonFrame->origin.y = v10;
    p_leadingTopButtonFrame->size.width = v9;
    p_leadingTopButtonFrame->size.height = v8;
    self->_trailingTopButtonFrame.origin.x = x;
    self->_trailingTopButtonFrame.origin.y = y;
    self->_trailingTopButtonFrame.size.width = width;
    self->_trailingTopButtonFrame.size.height = height;
    _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__CSPosterSwitcherViewController_setLeadingTopButtonFrame_trailingTopButtonFrame___block_invoke;
    v15[3] = &unk_27838D230;
    v15[4] = self;
    [_sceneIfExists updateSettingsWithBlock:v15];
  }
}

- (void)setLastAdaptiveTimeTextHeight:(double)height
{
  if (self->_lastAdaptiveTimeTextHeight != height)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_lastAdaptiveTimeTextHeight = height;
    _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__CSPosterSwitcherViewController_setLastAdaptiveTimeTextHeight___block_invoke;
    v7[3] = &unk_27838D230;
    v7[4] = self;
    [_sceneIfExists updateSettingsWithBlock:v7];
  }
}

- (void)aggregateBehavior:(id)behavior
{
  v6.receiver = self;
  v6.super_class = CSPosterSwitcherViewController;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateBehavior:behaviorCopy];
  if (self->_hasEverGoneBeyondAlongside)
  {
    v5 = 16;
  }

  else
  {
    v5 = 13;
  }

  [behaviorCopy setIdleTimerDuration:{v5, v6.receiver, v6.super_class}];
  [behaviorCopy setIdleTimerMode:1];
  [behaviorCopy setIdleWarnMode:2];
  [behaviorCopy setNotificationBehavior:2];
  [behaviorCopy addRestrictedCapabilities:4096];
}

- (void)aggregateAppearance:(id)appearance
{
  v100[5] = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  v97.receiver = self;
  v97.super_class = CSPosterSwitcherViewController;
  [(CSCoverSheetViewControllerBase *)&v97 aggregateAppearance:appearanceCopy];
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

  clientSwitcherLayoutMode = [(CSPosterSwitcherViewController *)self clientSwitcherLayoutMode];
  v12 = SBLogDashBoard();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(CSPosterSwitcherViewController *)clientSwitcherLayoutMode != 0 aggregateAppearance:v12, v13, v14, v15, v16, v17, v18];
  }

  selfCopy = self;
  _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
  clientSettings = [_sceneIfExists clientSettings];

  [clientSettings pruis_primaryPosterScale];
  v22 = v21;
  v79 = clientSettings;
  [clientSettings pruis_primaryPosterOffset];
  if (v22 <= 0.0 || clientSwitcherLayoutMode == 0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v22;
  }

  v27 = *MEMORY[0x277CBF348];
  v28 = *(MEMORY[0x277CBF348] + 8);
  if (clientSwitcherLayoutMode)
  {
    v29 = v24;
  }

  else
  {
    v29 = *(MEMORY[0x277CBF348] + 8);
  }

  v95 = 0u;
  v96 = 0u;
  if (clientSwitcherLayoutMode)
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

  if (clientSwitcherLayoutMode)
  {
    v39 = [v38 bs_map:&__block_literal_global_15];

    v38 = v39;
  }

  v40 = objc_opt_new();
  v41 = [v40 suppressTeachableMomentsAnimation:1];
  v42 = [v41 priority:40];
  v43 = [v42 hidden:clientSwitcherLayoutMode != 0];

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

        [appearanceCopy addComponent:*(*(&v83 + 1) + 8 * i)];
      }

      v49 = [v47 countByEnumeratingWithState:&v83 objects:v98 count:16];
    }

    while (v49);
  }

  hostedAppSceneHandle = [(CSPosterSwitcherViewController *)selfCopy hostedAppSceneHandle];
  isContentReady = [hostedAppSceneHandle isContentReady];

  if (isContentReady)
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
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
        goto LABEL_30;
      }
    }

    v56 = +[CSComponent complicationSidebar];
    v57 = [v56 priority:40];
    v58 = [v57 hidden:1];
    [appearanceCopy addComponent:v58];

    v59 = +[CSComponent fullBleedContent];
    v60 = [v59 priority:40];
    v61 = [v60 flag:1];
    [appearanceCopy addComponent:v61];
  }

LABEL_30:
  fullscreenTransitionAnimationCount = selfCopy->_fullscreenTransitionAnimationCount;
  if (fullscreenTransitionAnimationCount)
  {
    v63 = 1;
  }

  else
  {
    v63 = clientSwitcherLayoutMode == 0;
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
    [appearanceCopy addComponent:v67];

    v68 = +[CSComponent backgroundContent];
    v69 = [v68 priority:40];
    v70 = [v69 transitionModifiers:64];
    v80 = v87;
    v81 = v88;
    v82 = v89;
    v71 = [v70 transitionInputs:&v80];
    [appearanceCopy addComponent:v71];
  }

  v72 = objc_opt_new();
  v73 = [v72 priority:40];
  v74 = [v73 hidden:0];

  [v74 setLevel:1];
  if (fullscreenTransitionAnimationCount | clientSwitcherLayoutMode)
  {
    v75 = objc_opt_new();
    v76 = [v75 shouldMatchMove:0];
    v77 = [v76 priority:40];

    [v77 setLevel:1];
    if (clientSwitcherLayoutMode)
    {
      [v77 setShouldRenderForPosterSwitcher:1];
      [v74 setShouldMatchBackgroundStyle:0];
    }

    [appearanceCopy addComponent:v77];
  }

  [appearanceCopy addComponent:v74];
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

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 9)
  {
    [(CSPosterSwitcherViewController *)self _sendDismissEntirelyActionToScene];
  }

  v13.receiver = self;
  v13.super_class = CSPosterSwitcherViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v13, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    if (type == 13)
    {
      value = [eventCopy value];
      bOOLValue = [value BOOLValue];

      if ((bOOLValue & 1) == 0)
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

    else if (type == 25)
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

    isConsumable = 0;
    goto LABEL_16;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_16:

  return isConsumable;
}

- (void)addGrabberView:(id)view
{
  viewCopy = view;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    view = [(CSPosterSwitcherViewController *)self view];
    [view bounds];
    [viewCopy setFrame:?];

    [viewCopy setAutoresizingMask:18];
    [viewCopy setAlpha:0.0];
    [(UIView *)self->_scaleView addSubview:viewCopy];
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
  invalidationHandler = [(CSPosterSwitcherViewController *)self invalidationHandler];
  if (invalidationHandler)
  {
    v3 = invalidationHandler;
    invalidationHandler[2]();
    invalidationHandler = v3;
  }
}

- (void)appendToHostedAppSceneSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy pruis_setPreferredSwitcherLayoutMode:0];
  [(CSPosterSwitcherViewController *)self _updateOverlayViewSpecificationForSceneSettings:settingsCopy];
  [(CSPosterSwitcherViewController *)self _updateLiveContentViewSpecificationForSceneSettings:settingsCopy];
  [(CSPosterSwitcherViewController *)self _updateLiveFloatingViewSpecificationForSceneSettings:settingsCopy];
  [(CSPosterSwitcherViewController *)self _updateFloatingLayerInlinedForSceneSettings:settingsCopy];
  [(CSPosterSwitcherViewController *)self _updateComplicationRowHiddenForSceneSettings:settingsCopy];
  [(CSPosterSwitcherViewController *)self _updateTopButtonLayoutForSceneSettings:settingsCopy];
  [(CSPosterSwitcherViewController *)self _updateLockVibrancyConfigurationForSceneSettings:settingsCopy];
  [(CSPosterSwitcherViewController *)self _updateAdaptiveTimeTextHeightForSceneSettings:settingsCopy];
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  traitsAwareViewController = self->_traitsAwareViewController;
  handleCopy = handle;
  hostedSceneHandle = [(CSTraitsAwareOrientedAppHosting *)traitsAwareViewController hostedSceneHandle];

  if (scene && hostedSceneHandle == handleCopy && [(CSPosterSwitcherViewController *)self bs_isAppearingOrAppeared])
  {
    v9 = self->_traitsAwareViewController;

    [(CSTraitsAwareOrientedAppHosting *)v9 sceneDidAttach];
  }
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  handleCopy = handle;
  [(CSPosterSwitcherViewController *)self _dismissEntirely];
  hostedSceneHandle = [(CSTraitsAwareOrientedAppHosting *)self->_traitsAwareViewController hostedSceneHandle];

  if (scene && hostedSceneHandle == handleCopy)
  {
    traitsAwareViewController = self->_traitsAwareViewController;

    [(CSTraitsAwareOrientedAppHosting *)traitsAwareViewController sceneWasDestroyed];
  }
}

- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state
{
  handleCopy = handle;
  [(CSPosterSwitcherViewController *)self _evaluateInitialTransitionActivation];
  if ([handleCopy isContentReady])
  {
    v6 = MEMORY[0x277CD9FF0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__CSPosterSwitcherViewController_sceneHandle_didUpdateContentState___block_invoke;
    v7[3] = &unk_27838B838;
    v7[4] = self;
    v8 = handleCopy;
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

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  handleCopy = handle;
  settingsDiff = [settingsCopy settingsDiff];
  transitionContext = [settingsCopy transitionContext];

  scene = [handleCopy scene];

  clientSettings = [scene clientSettings];
  pruis_switcherLayoutMode = [clientSettings pruis_switcherLayoutMode];

  v21 = 0;
  sceneClientSettingsDiffInspector = [(CSPosterSwitcherViewController *)self sceneClientSettingsDiffInspector];
  [sceneClientSettingsDiffInspector inspectDiff:settingsDiff withContext:&v21];

  v14 = v21;
  if ((v21 & 2) != 0)
  {
    [(CSPosterSwitcherViewController *)self _evaluateInitialTouchTransferActuation];
  }

  clientSwitcherLayoutMode = [(CSPosterSwitcherViewController *)self clientSwitcherLayoutMode];
  if (v14)
  {
    v16 = clientSwitcherLayoutMode;
    if (pruis_switcherLayoutMode != clientSwitcherLayoutMode)
    {
      v17 = SBLogDashBoard();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [CSPosterSwitcherViewController sceneHandle:didUpdateClientSettings:];
      }

      if (v16)
      {
        v18 = pruis_switcherLayoutMode == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      if (!v16 || pruis_switcherLayoutMode)
      {
        if (!self->_hasEverGoneBeyondAlongside && pruis_switcherLayoutMode && pruis_switcherLayoutMode != [(CSPosterSwitcherViewController *)self _initialAlongsideLayoutMode])
        {
          self->_hasEverGoneBeyondAlongside = 1;
          [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
        }
      }

      else
      {
        [(CSPosterSwitcherViewController *)self _updateAppearanceWithoutAnimation];
      }

      [(CSPosterSwitcherViewController *)self setClientSwitcherLayoutMode:pruis_switcherLayoutMode];
      if (v19)
      {
        v20 = transitionContext;
        _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
      }
    }
  }
}

- (id)_sceneIfExists
{
  hostedAppSceneHandle = [(CSPosterSwitcherViewController *)self hostedAppSceneHandle];
  sceneIfExists = [hostedAppSceneHandle sceneIfExists];

  return sceneIfExists;
}

- (void)_evaluateInitialTransitionActivation
{
  if (![(CSPosterSwitcherViewController *)self handledInitialTransition]&& [(CSPosterSwitcherViewController *)self _appearState]== 2)
  {
    hostedAppSceneHandle = [(CSPosterSwitcherViewController *)self hostedAppSceneHandle];
    sceneIfExists = [hostedAppSceneHandle sceneIfExists];
    if (sceneIfExists && [hostedAppSceneHandle isContentReady])
    {
      [(CSPosterSwitcherViewController *)self setHandledInitialTransition:1];
      clientSettings = [sceneIfExists clientSettings];
      -[CSPosterSwitcherViewController setClientSwitcherLayoutMode:](self, "setClientSwitcherLayoutMode:", [clientSettings pruis_switcherLayoutMode]);

      [(CSPosterSwitcherViewController *)self _transitionScene:sceneIfExists toLayoutMode:[(CSPosterSwitcherViewController *)self _initialAlongsideLayoutMode] animated:1];
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
    v3 = NSStringFromSelector(self);
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

- (void)_transitionScene:(id)scene toLayoutMode:(unint64_t)mode animated:(BOOL)animated
{
  sceneCopy = scene;
  v8 = SBLogDashBoard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CSPosterSwitcherViewController _transitionScene:toLayoutMode:animated:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__CSPosterSwitcherViewController__transitionScene_toLayoutMode_animated___block_invoke;
  v10[3] = &unk_27838D2E0;
  animatedCopy = animated;
  v11 = sceneCopy;
  modeCopy = mode;
  v9 = sceneCopy;
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

- (void)_updateOverlayViewSpecificationForSceneSettings:(id)settings
{
  settingsCopy = settings;
  coverSheetBackgroundView = [(CSPosterSwitcherViewController *)self coverSheetBackgroundView];
  layer = [coverSheetBackgroundView layer];

  if (layer)
  {
    [settingsCopy pruis_setLockPosterOverlayLayerRenderID:CALayerGetRenderId()];
    context = [layer context];
    [settingsCopy pruis_setLockPosterOverlayLayerContextID:{objc_msgSend(context, "contextId")}];

    settingsCopy = context;
  }

  else
  {
    [settingsCopy pruis_setLockPosterOverlayLayerRenderID:0];
    [settingsCopy pruis_setLockPosterOverlayLayerContextID:0];
  }
}

- (void)_updateLiveContentViewSpecificationForSceneSettings:(id)settings
{
  settingsCopy = settings;
  coverSheetWallpaperView = [(CSPosterSwitcherViewController *)self coverSheetWallpaperView];
  layer = [coverSheetWallpaperView layer];

  if (layer)
  {
    [settingsCopy pruis_setLockPosterLiveContentLayerRenderID:CALayerGetRenderId()];
    context = [layer context];
    [settingsCopy pruis_setLockPosterLiveContentLayerContextID:{objc_msgSend(context, "contextId")}];

    settingsCopy = context;
  }

  else
  {
    [settingsCopy pruis_setLockPosterLiveContentLayerRenderID:0];
    [settingsCopy pruis_setLockPosterLiveContentLayerContextID:0];
  }
}

- (void)_updateLiveFloatingViewSpecificationForSceneSettings:(id)settings
{
  settingsCopy = settings;
  coverSheetFloatingView = [(CSPosterSwitcherViewController *)self coverSheetFloatingView];
  layer = [coverSheetFloatingView layer];

  if (layer)
  {
    [settingsCopy pruis_setLockPosterLiveFloatingLayerRenderID:CALayerGetRenderId()];
    context = [layer context];
    [settingsCopy pruis_setLockPosterLiveFloatingLayerContextID:{objc_msgSend(context, "contextId")}];

    settingsCopy = context;
  }

  else
  {
    [settingsCopy pruis_setLockPosterLiveFloatingLayerRenderID:0];
    [settingsCopy pruis_setLockPosterLiveFloatingLayerContextID:0];
  }
}

- (void)_updateFloatingLayerInlinedForSceneSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy pruis_setLockPosterFloatingLayerInlined:{-[CSPosterSwitcherViewController isCoverSheetWallpaperFloatingLayerInlined](self, "isCoverSheetWallpaperFloatingLayerInlined")}];
}

- (void)_updateComplicationRowHiddenForSceneSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy pruis_setLockPosterComplicationRowHidden:{-[CSPosterSwitcherViewController isCoverSheetComplicationRowHidden](self, "isCoverSheetComplicationRowHidden")}];
}

- (void)_updateTopButtonLayoutForSceneSettings:(id)settings
{
  settingsCopy = settings;
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
  [settingsCopy pruis_setLeadingTopButtonFrame:{v5, v7, v9, v11}];
  [settingsCopy pruis_setTrailingTopButtonFrame:{v13, v15, v17, v19}];
}

- (void)_updateLockVibrancyConfigurationForSceneSettings:(id)settings
{
  settingsCopy = settings;
  vibrancyConfiguration = [(CSPosterSwitcherViewController *)self vibrancyConfiguration];
  [settingsCopy pruis_setLockVibrancyConfiguration:vibrancyConfiguration];
}

- (void)_updateAppearanceWithClientLayoutMode:(unint64_t)mode previousLayoutMode:(unint64_t)layoutMode transitionContext:(id)context
{
  contextCopy = context;
  if (mode)
  {
    v9 = layoutMode == 0;
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
  v15 = contextCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__CSPosterSwitcherViewController__updateAppearanceWithClientLayoutMode_previousLayoutMode_transitionContext___block_invoke_2;
  v12[3] = &unk_27838D198;
  v13 = v10;
  v12[4] = self;
  v11 = contextCopy;
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

- (void)_updateAdaptiveTimeTextHeightForSceneSettings:(id)settings
{
  settingsCopy = settings;
  [(CSPosterSwitcherViewController *)self lastAdaptiveTimeTextHeight];
  [settingsCopy pruis_setTitleAdaptiveTextHeight:?];
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
  _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
  v3 = _sceneIfExists;
  if (_sceneIfExists)
  {
    clientSettings = [_sceneIfExists clientSettings];
    pruis_switcherLayoutMode = [clientSettings pruis_switcherLayoutMode];
  }

  else
  {
    pruis_switcherLayoutMode = 0;
  }

  return pruis_switcherLayoutMode;
}

- (void)_dismissTier:(BOOL)tier
{
  tierCopy = tier;
  _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
  if ([_sceneIfExists contentState] == 2)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [MEMORY[0x277D3EB30] actionWithAnimation:tierCopy];
    v7 = [v5 setWithObject:v6];
    [_sceneIfExists sendActions:v7];
  }

  else
  {
    [(CSPosterSwitcherViewController *)self _dismissEntirely];
  }
}

- (void)_sendDismissEntirelyActionToScene
{
  _sceneIfExists = [(CSPosterSwitcherViewController *)self _sceneIfExists];
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277D3EB28] actionActivatingCurrentPoster:0];
  v4 = [v2 setWithObject:v3];
  [_sceneIfExists sendActions:v4];
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