@interface CSActivityViewController
- (BOOL)activityHostViewController:(id)controller didReceiveAction:(id)action;
- (BOOL)handleEvent:(id)event;
- (CGSize)contentSizeForContentView:(id)view;
- (CSActivityViewController)initWithDescriptor:(id)descriptor sceneType:(int64_t)type;
- (CSActivityViewController)initWithHostViewController:(id)controller;
- (CSActivityViewControllerDelegate)delegate;
- (CSActivityViewControllerHostDelegate)hostDelegate;
- (CSHostableEntityPresenterDelegate)entityPresenterDelegate;
- (CSSceneHostEnvironmentObserving)sceneHostEnvironmentObserver;
- (id)activityDescriptorForContentView:(id)view;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (unint64_t)_presentationModeForActivityPresentationMode:(unint64_t)mode;
- (unint64_t)_presentationModeForHostedEntityContentMode:(int64_t)mode;
- (void)_backlightLuminanceDidChange;
- (void)_handleButtonPressOfType:(unint64_t)type;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller;
- (void)_setPresentationMode:(unint64_t)mode;
- (void)_setScreenOn:(BOOL)on;
- (void)_updateAudioCategoriesDisablingVolumeHUDWithReason:(id)reason;
- (void)activityHostViewController:(id)controller requestsLaunchWithAction:(id)action;
- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)change;
- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)change;
- (void)activityHostViewControllerHostShouldCancelTouches:(id)touches;
- (void)activityHostViewControllerSignificantUserInteractionBegan:(id)began;
- (void)activityHostViewControllerSignificantUserInteractionEnded:(id)ended;
- (void)activityHostViewControllerTextColorDidChange:(id)change;
- (void)dealloc;
- (void)loadView;
- (void)reevaluatePresentationModeForReason:(id)reason;
- (void)setHostableEntityContentMode:(int64_t)mode;
- (void)setPresentationMode:(unint64_t)mode;
- (void)setVisibility:(unint64_t)visibility;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CSActivityViewController

- (CSActivityViewController)initWithDescriptor:(id)descriptor sceneType:(int64_t)type
{
  v6 = MEMORY[0x277D67D08];
  descriptorCopy = descriptor;
  if (type == 7)
  {
    [v6 modalFullScreenMetrics];
  }

  else
  {
    [v6 defaultMetrics];
  }
  v8 = ;
  v9 = [MEMORY[0x277CE9570] activityHostViewControllerWithDescriptor:descriptorCopy sceneType:type metricsRequest:v8];

  hostViewController = self->_hostViewController;
  self->_hostViewController = v9;

  v11 = [(CSActivityViewController *)self initWithHostViewController:self->_hostViewController];
  return v11;
}

- (CSActivityViewController)initWithHostViewController:(id)controller
{
  v17[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = CSActivityViewController;
  v6 = [(CSActivityViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hostViewController, controller);
    [(ACUISActivityHostViewController *)v7->_hostViewController setShouldShareTouchesWithHost:1];
    [(ACUISActivityHostViewController *)v7->_hostViewController setDelegate:v7];
    activitySceneDescriptor = [controllerCopy activitySceneDescriptor];
    v7->_sceneType = [activitySceneDescriptor activitySceneType];

    v9 = objc_opt_self();
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v11 = [(CSActivityViewController *)v7 registerForTraitChanges:v10 withAction:sel__backlightLuminanceDidChange];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__actionButtonPressed_ name:*MEMORY[0x277D679D8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__lockButtonPressed_ name:*MEMORY[0x277D67A80] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel__volumeButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(ACUISActivityHostViewController *)self->_hostViewController invalidate];
  v4.receiver = self;
  v4.super_class = CSActivityViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(CSActivityContentView);
  [(CSActivityContentView *)v3 setDelegate:self];
  [(CSActivityContentView *)v3 setAccessibilityIdentifier:@"activity-content-view"];
  [(CSActivityViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  [(CSActivityViewController *)self bs_addChildViewController:self->_hostViewController];
  [(ACUISActivityHostViewController *)self->_hostViewController preferredContentSize];
  [(CSActivityViewController *)self setPreferredContentSize:?];
  v3.receiver = self;
  v3.super_class = CSActivityViewController;
  [(CSCoverSheetViewControllerBase *)&v3 viewDidLoad];
}

- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller
{
  v24 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CSActivityViewController;
  controllerCopy = controller;
  [(CSActivityViewController *)&v17 _preferredContentSizeDidChangeForChildViewController:controllerCopy];
  hostViewController = self->_hostViewController;

  if (hostViewController == controllerCopy)
  {
    [(ACUISActivityHostViewController *)hostViewController preferredContentSize:v17.receiver];
    v7 = v6;
    v9 = v8;
    v10 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      activityIdentifier = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
      activitySceneDescriptor = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
      activityDescriptor = [activitySceneDescriptor activityDescriptor];
      platterTargetBundleIdentifier = [activityDescriptor platterTargetBundleIdentifier];
      v25.width = v7;
      v25.height = v9;
      v15 = NSStringFromCGSize(v25);
      *buf = 138543874;
      v19 = activityIdentifier;
      v20 = 2114;
      v21 = platterTargetBundleIdentifier;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Preferred content size changed to: %@", buf, 0x20u);
    }

    [(CSActivityViewController *)self setPreferredContentSize:v7, v9];
    view = [(CSActivityViewController *)self view];
    [view layoutIfNeeded];
  }
}

- (void)viewWillLayoutSubviews
{
  v31 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = CSActivityViewController;
  [(CSCoverSheetViewControllerBase *)&v24 viewWillLayoutSubviews];
  view = [(CSActivityViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  view2 = [(CSActivityViewController *)self view];
  v11 = objc_opt_class();
  v12 = view2;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  [v14 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v16 = v15;

  v17 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    activityIdentifier = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
    activitySceneDescriptor = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
    activityDescriptor = [activitySceneDescriptor activityDescriptor];
    platterTargetBundleIdentifier = [activityDescriptor platterTargetBundleIdentifier];
    v32.origin.x = v5;
    v32.origin.y = v7;
    v32.size.width = v9;
    v32.size.height = v16;
    v22 = NSStringFromCGRect(v32);
    *buf = 138543874;
    v26 = activityIdentifier;
    v27 = 2114;
    v28 = platterTargetBundleIdentifier;
    v29 = 2112;
    v30 = v22;
    _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Setting host view controller frame: %@", buf, 0x20u);
  }

  view3 = [(ACUISActivityHostViewController *)self->_hostViewController view];
  [view3 setFrame:{v5, v7, v9, v16}];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = CSActivityViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v10, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    if (type == 25)
    {
      selfCopy2 = self;
      v8 = 0;
    }

    else
    {
      if (type != 24)
      {
LABEL_9:
        isConsumable = 0;
        goto LABEL_10;
      }

      selfCopy2 = self;
      v8 = 1;
    }

    [(CSActivityViewController *)selfCopy2 _setScreenOn:v8];
    goto LABEL_9;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_10:

  return isConsumable;
}

- (void)setVisibility:(unint64_t)visibility
{
  hostViewController = self->_hostViewController;
  v4 = [(CSActivityViewController *)self _visiblityForCSActivityVisibilty:visibility];

  [(ACUISActivityHostViewController *)hostViewController setVisibility:v4];
}

- (void)setPresentationMode:(unint64_t)mode
{
  v4 = [(CSActivityViewController *)self _presentationModeForActivityPresentationMode:mode];

  [(CSActivityViewController *)self _setPresentationMode:v4];
}

- (void)reevaluatePresentationModeForReason:(id)reason
{
  v35 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  isContentVisibleAndAppeared = [(CSActivityViewController *)self isContentVisibleAndAppeared];
  _isScreenOn = [(CSActivityViewController *)self _isScreenOn];
  traitCollection = [(CSActivityViewController *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  v9 = isContentVisibleAndAppeared && (_isScreenOn || _backlightLuminance != 0);
  v10 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    activityIdentifier = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
    activitySceneDescriptor = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
    activityDescriptor = [activitySceneDescriptor activityDescriptor];
    [activityDescriptor platterTargetBundleIdentifier];
    v13 = v20 = isContentVisibleAndAppeared && (_isScreenOn || _backlightLuminance != 0);
    v14 = reasonCopy;
    if (v20)
    {
      v15 = @"live";
    }

    else
    {
      v15 = @"live snapshot";
    }

    v16 = NSStringFromBOOL();
    v17 = NSStringFromBOOL();
    *buf = 138544898;
    v22 = activityIdentifier;
    v23 = 2114;
    v24 = v13;
    v25 = 2112;
    v26 = v15;
    reasonCopy = v14;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v17;
    v33 = 2048;
    v34 = _backlightLuminance;
    _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Updating activity scene presentation mode to: %@, for reason: %@, for screen on: %@, appeared: %@, backlight luminance: %ld", buf, 0x48u);

    v9 = v20;
  }

  if (v9)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  [(CSActivityViewController *)self _setPresentationMode:v18];
}

- (void)_setPresentationMode:(unint64_t)mode
{
  [(ACUISActivityHostViewController *)self->_hostViewController setPresentationMode:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CSActivityViewController__setPresentationMode___block_invoke;
  v5[3] = &unk_27838C888;
  v5[4] = self;
  v5[5] = mode;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __49__CSActivityViewController__setPresentationMode___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) sceneHostEnvironmentObserver];
    if (objc_opt_respondsToSelector())
    {
      v3 = [*(*(a1 + 32) + 1096) backlightHostEnvironment];
      [v4 didAddNewSceneHostEnvironment:v3];
    }
  }
}

- (void)_setScreenOn:(BOOL)on
{
  if (self->_screenOn != on)
  {
    self->_screenOn = on;
    [(CSActivityViewController *)self reevaluatePresentationModeForReason:@"ScreenOnChanged"];
  }
}

- (void)_backlightLuminanceDidChange
{
  v3 = NSStringFromSelector(a2);
  [(CSActivityViewController *)self reevaluatePresentationModeForReason:v3];
}

- (void)_updateAudioCategoriesDisablingVolumeHUDWithReason:(id)reason
{
  v23 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([(CSActivityViewController *)self isContentVisibleAndAppeared])
  {
    audioCategoriesDisablingVolumeHUD = [(ACUISActivityHostViewController *)self->_hostViewController audioCategoriesDisablingVolumeHUD];
    if (audioCategoriesDisablingVolumeHUD)
    {
      v6 = [MEMORY[0x277CBEB98] setWithArray:audioCategoriesDisablingVolumeHUD];
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

  if ((BSEqualSets() & 1) == 0)
  {
    objc_storeStrong(&self->_audioCategoriesDisablingVolumeHUD, v6);
    v7 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      activityIdentifier = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
      activitySceneDescriptor = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
      activityDescriptor = [activitySceneDescriptor activityDescriptor];
      platterTargetBundleIdentifier = [activityDescriptor platterTargetBundleIdentifier];
      v13 = 138544386;
      selfCopy = self;
      v15 = 2114;
      v16 = activityIdentifier;
      v17 = 2114;
      v18 = platterTargetBundleIdentifier;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = reasonCopy;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [ActivityID: %{public}@, BundleID: %{public}@] Updating audioCategoriesDisablingVolumeHUD to '%{public}@' for reason: %{public}@", &v13, 0x34u);
    }

    delegate = [(CSActivityViewController *)self delegate];
    [delegate activityViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:self];
  }
}

- (unint64_t)_presentationModeForHostedEntityContentMode:(int64_t)mode
{
  if ((mode - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21EC96AE8[mode - 1];
  }
}

- (unint64_t)_presentationModeForActivityPresentationMode:(unint64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

- (void)_handleButtonPressOfType:(unint64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(ACUISActivityHostViewController *)self->_hostViewController handleHardwareButtonForType:?];
  v6 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activityIdentifier = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
    v8 = 138544130;
    selfCopy = self;
    v10 = 2114;
    v11 = activityIdentifier;
    v12 = 2048;
    typeCopy = type;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [ActivityID: %{public}@, hardware button press of type %lu was sent to scene: %{BOOL}u", &v8, 0x26u);
  }
}

- (void)activityHostViewController:(id)controller requestsLaunchWithAction:(id)action
{
  actionCopy = action;
  hostDelegate = [(CSActivityViewController *)self hostDelegate];
  [hostDelegate activityViewController:self requestsLaunchWithAction:actionCopy];
}

- (BOOL)activityHostViewController:(id)controller didReceiveAction:(id)action
{
  actionCopy = action;
  hostDelegate = [(CSActivityViewController *)self hostDelegate];
  LOBYTE(self) = [hostDelegate activityViewController:self didReceiveAction:actionCopy];

  return self;
}

- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)change
{
  hostDelegate = [(CSActivityViewController *)self hostDelegate];
  [hostDelegate activityViewControllerBackgroundTintColorDidChange:self];
}

- (void)activityHostViewControllerTextColorDidChange:(id)change
{
  hostDelegate = [(CSActivityViewController *)self hostDelegate];
  [hostDelegate activityViewControllerTextColorDidChange:self];
}

- (void)activityHostViewControllerHostShouldCancelTouches:(id)touches
{
  hostDelegate = [(CSActivityViewController *)self hostDelegate];
  [hostDelegate activityViewControllerHostShouldCancelTouches:self];
}

- (void)activityHostViewControllerSignificantUserInteractionBegan:(id)began
{
  hostDelegate = [(CSActivityViewController *)self hostDelegate];
  [hostDelegate activityViewControllerSignificantUserInteractionBegan:self];
}

- (void)activityHostViewControllerSignificantUserInteractionEnded:(id)ended
{
  hostDelegate = [(CSActivityViewController *)self hostDelegate];
  [hostDelegate activityViewControllerSignificantUserInteractionEnded:self];
}

- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)change
{
  hostDelegate = [(CSActivityViewController *)self hostDelegate];
  [hostDelegate activityViewControllerAudioCategoriesDisablingVolumeHUDDidChange:self];
}

- (CGSize)contentSizeForContentView:(id)view
{
  hostViewController = [(CSActivityViewController *)self hostViewController];
  [hostViewController preferredContentSize];
  v6 = v5;
  v8 = v7;

  if (v6 == *MEMORY[0x277CBF3A8] && v8 == *(MEMORY[0x277CBF3A8] + 8))
  {
    hostViewController2 = [(CSActivityViewController *)self hostViewController];
    activitySceneDescriptor = [hostViewController2 activitySceneDescriptor];
    metricsRequest = [activitySceneDescriptor metricsRequest];

    lockScreenMetrics = [metricsRequest lockScreenMetrics];
    [lockScreenMetrics initialSize];
    v6 = v14;
    v8 = v15;
  }

  v16 = v6;
  v17 = v8;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)activityDescriptorForContentView:(id)view
{
  hostViewController = [(CSActivityViewController *)self hostViewController];
  activitySceneDescriptor = [hostViewController activitySceneDescriptor];
  activityDescriptor = [activitySceneDescriptor activityDescriptor];

  return activityDescriptor;
}

- (void)setHostableEntityContentMode:(int64_t)mode
{
  v4 = [(CSActivityViewController *)self _presentationModeForHostedEntityContentMode:mode];

  [(CSActivityViewController *)self _setPresentationMode:v4];
}

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  backlightHostEnvironment = [(ACUISActivityHostViewController *)self->_hostViewController backlightHostEnvironment];
  if (backlightHostEnvironment)
  {
    activitySceneDescriptor = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
    activityDescriptor = [activitySceneDescriptor activityDescriptor];
    platterTargetBundleIdentifier = [activityDescriptor platterTargetBundleIdentifier];

    v7 = MEMORY[0x277CBEB98];
    v8 = [MEMORY[0x277D65E08] entryWithSceneHostEnvironment:backlightHostEnvironment bundleIdentifier:platterTargetBundleIdentifier];
    v9 = [v7 setWithObject:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

- (CSHostableEntityPresenterDelegate)entityPresenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entityPresenterDelegate);

  return WeakRetained;
}

- (CSActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSActivityViewControllerHostDelegate)hostDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostDelegate);

  return WeakRetained;
}

- (CSSceneHostEnvironmentObserving)sceneHostEnvironmentObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostEnvironmentObserver);

  return WeakRetained;
}

@end