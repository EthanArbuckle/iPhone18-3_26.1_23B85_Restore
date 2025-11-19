@interface CSActivityViewController
- (BOOL)activityHostViewController:(id)a3 didReceiveAction:(id)a4;
- (BOOL)handleEvent:(id)a3;
- (CGSize)contentSizeForContentView:(id)a3;
- (CSActivityViewController)initWithDescriptor:(id)a3 sceneType:(int64_t)a4;
- (CSActivityViewController)initWithHostViewController:(id)a3;
- (CSActivityViewControllerDelegate)delegate;
- (CSActivityViewControllerHostDelegate)hostDelegate;
- (CSHostableEntityPresenterDelegate)entityPresenterDelegate;
- (CSSceneHostEnvironmentObserving)sceneHostEnvironmentObserver;
- (id)activityDescriptorForContentView:(id)a3;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (unint64_t)_presentationModeForActivityPresentationMode:(unint64_t)a3;
- (unint64_t)_presentationModeForHostedEntityContentMode:(int64_t)a3;
- (void)_backlightLuminanceDidChange;
- (void)_handleButtonPressOfType:(unint64_t)a3;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3;
- (void)_setPresentationMode:(unint64_t)a3;
- (void)_setScreenOn:(BOOL)a3;
- (void)_updateAudioCategoriesDisablingVolumeHUDWithReason:(id)a3;
- (void)activityHostViewController:(id)a3 requestsLaunchWithAction:(id)a4;
- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)a3;
- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)a3;
- (void)activityHostViewControllerHostShouldCancelTouches:(id)a3;
- (void)activityHostViewControllerSignificantUserInteractionBegan:(id)a3;
- (void)activityHostViewControllerSignificantUserInteractionEnded:(id)a3;
- (void)activityHostViewControllerTextColorDidChange:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)reevaluatePresentationModeForReason:(id)a3;
- (void)setHostableEntityContentMode:(int64_t)a3;
- (void)setPresentationMode:(unint64_t)a3;
- (void)setVisibility:(unint64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CSActivityViewController

- (CSActivityViewController)initWithDescriptor:(id)a3 sceneType:(int64_t)a4
{
  v6 = MEMORY[0x277D67D08];
  v7 = a3;
  if (a4 == 7)
  {
    [v6 modalFullScreenMetrics];
  }

  else
  {
    [v6 defaultMetrics];
  }
  v8 = ;
  v9 = [MEMORY[0x277CE9570] activityHostViewControllerWithDescriptor:v7 sceneType:a4 metricsRequest:v8];

  hostViewController = self->_hostViewController;
  self->_hostViewController = v9;

  v11 = [(CSActivityViewController *)self initWithHostViewController:self->_hostViewController];
  return v11;
}

- (CSActivityViewController)initWithHostViewController:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CSActivityViewController;
  v6 = [(CSActivityViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hostViewController, a3);
    [(ACUISActivityHostViewController *)v7->_hostViewController setShouldShareTouchesWithHost:1];
    [(ACUISActivityHostViewController *)v7->_hostViewController setDelegate:v7];
    v8 = [v5 activitySceneDescriptor];
    v7->_sceneType = [v8 activitySceneType];

    v9 = objc_opt_self();
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v11 = [(CSActivityViewController *)v7 registerForTraitChanges:v10 withAction:sel__backlightLuminanceDidChange];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v7 selector:sel__actionButtonPressed_ name:*MEMORY[0x277D679D8] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v7 selector:sel__lockButtonPressed_ name:*MEMORY[0x277D67A80] object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v7 selector:sel__volumeButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CSActivityViewController;
  v4 = a3;
  [(CSActivityViewController *)&v17 _preferredContentSizeDidChangeForChildViewController:v4];
  hostViewController = self->_hostViewController;

  if (hostViewController == v4)
  {
    [(ACUISActivityHostViewController *)hostViewController preferredContentSize:v17.receiver];
    v7 = v6;
    v9 = v8;
    v10 = SBLogCoverSheetActivities();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
      v12 = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
      v13 = [v12 activityDescriptor];
      v14 = [v13 platterTargetBundleIdentifier];
      v25.width = v7;
      v25.height = v9;
      v15 = NSStringFromCGSize(v25);
      *buf = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Preferred content size changed to: %@", buf, 0x20u);
    }

    [(CSActivityViewController *)self setPreferredContentSize:v7, v9];
    v16 = [(CSActivityViewController *)self view];
    [v16 layoutIfNeeded];
  }
}

- (void)viewWillLayoutSubviews
{
  v31 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = CSActivityViewController;
  [(CSCoverSheetViewControllerBase *)&v24 viewWillLayoutSubviews];
  v3 = [(CSActivityViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(CSActivityViewController *)self view];
  v11 = objc_opt_class();
  v12 = v10;
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
    v18 = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
    v19 = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
    v20 = [v19 activityDescriptor];
    v21 = [v20 platterTargetBundleIdentifier];
    v32.origin.x = v5;
    v32.origin.y = v7;
    v32.size.width = v9;
    v32.size.height = v16;
    v22 = NSStringFromCGRect(v32);
    *buf = 138543874;
    v26 = v18;
    v27 = 2114;
    v28 = v21;
    v29 = 2112;
    v30 = v22;
    _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Setting host view controller frame: %@", buf, 0x20u);
  }

  v23 = [(ACUISActivityHostViewController *)self->_hostViewController view];
  [v23 setFrame:{v5, v7, v9, v16}];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSActivityViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v10, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    if (v6 == 25)
    {
      v7 = self;
      v8 = 0;
    }

    else
    {
      if (v6 != 24)
      {
LABEL_9:
        v5 = 0;
        goto LABEL_10;
      }

      v7 = self;
      v8 = 1;
    }

    [(CSActivityViewController *)v7 _setScreenOn:v8];
    goto LABEL_9;
  }

  v5 = [v4 isConsumable];
LABEL_10:

  return v5;
}

- (void)setVisibility:(unint64_t)a3
{
  hostViewController = self->_hostViewController;
  v4 = [(CSActivityViewController *)self _visiblityForCSActivityVisibilty:a3];

  [(ACUISActivityHostViewController *)hostViewController setVisibility:v4];
}

- (void)setPresentationMode:(unint64_t)a3
{
  v4 = [(CSActivityViewController *)self _presentationModeForActivityPresentationMode:a3];

  [(CSActivityViewController *)self _setPresentationMode:v4];
}

- (void)reevaluatePresentationModeForReason:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSActivityViewController *)self isContentVisibleAndAppeared];
  v6 = [(CSActivityViewController *)self _isScreenOn];
  v7 = [(CSActivityViewController *)self traitCollection];
  v8 = [v7 _backlightLuminance];

  v9 = v5 && (v6 || v8 != 0);
  v10 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
    v19 = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
    v12 = [v19 activityDescriptor];
    [v12 platterTargetBundleIdentifier];
    v13 = v20 = v5 && (v6 || v8 != 0);
    v14 = v4;
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
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2112;
    v26 = v15;
    v4 = v14;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v17;
    v33 = 2048;
    v34 = v8;
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

- (void)_setPresentationMode:(unint64_t)a3
{
  [(ACUISActivityHostViewController *)self->_hostViewController setPresentationMode:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CSActivityViewController__setPresentationMode___block_invoke;
  v5[3] = &unk_27838C888;
  v5[4] = self;
  v5[5] = a3;
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

- (void)_setScreenOn:(BOOL)a3
{
  if (self->_screenOn != a3)
  {
    self->_screenOn = a3;
    [(CSActivityViewController *)self reevaluatePresentationModeForReason:@"ScreenOnChanged"];
  }
}

- (void)_backlightLuminanceDidChange
{
  v3 = NSStringFromSelector(a2);
  [(CSActivityViewController *)self reevaluatePresentationModeForReason:v3];
}

- (void)_updateAudioCategoriesDisablingVolumeHUDWithReason:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CSActivityViewController *)self isContentVisibleAndAppeared])
  {
    v5 = [(ACUISActivityHostViewController *)self->_hostViewController audioCategoriesDisablingVolumeHUD];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
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
      v8 = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
      v9 = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
      v10 = [v9 activityDescriptor];
      v11 = [v10 platterTargetBundleIdentifier];
      v13 = 138544386;
      v14 = self;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [ActivityID: %{public}@, BundleID: %{public}@] Updating audioCategoriesDisablingVolumeHUD to '%{public}@' for reason: %{public}@", &v13, 0x34u);
    }

    v12 = [(CSActivityViewController *)self delegate];
    [v12 activityViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:self];
  }
}

- (unint64_t)_presentationModeForHostedEntityContentMode:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21EC96AE8[a3 - 1];
  }
}

- (unint64_t)_presentationModeForActivityPresentationMode:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)_handleButtonPressOfType:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(ACUISActivityHostViewController *)self->_hostViewController handleHardwareButtonForType:?];
  v6 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(ACUISActivityHostViewController *)self->_hostViewController activityIdentifier];
    v8 = 138544130;
    v9 = self;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a3;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [ActivityID: %{public}@, hardware button press of type %lu was sent to scene: %{BOOL}u", &v8, 0x26u);
  }
}

- (void)activityHostViewController:(id)a3 requestsLaunchWithAction:(id)a4
{
  v5 = a4;
  v6 = [(CSActivityViewController *)self hostDelegate];
  [v6 activityViewController:self requestsLaunchWithAction:v5];
}

- (BOOL)activityHostViewController:(id)a3 didReceiveAction:(id)a4
{
  v5 = a4;
  v6 = [(CSActivityViewController *)self hostDelegate];
  LOBYTE(self) = [v6 activityViewController:self didReceiveAction:v5];

  return self;
}

- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)a3
{
  v4 = [(CSActivityViewController *)self hostDelegate];
  [v4 activityViewControllerBackgroundTintColorDidChange:self];
}

- (void)activityHostViewControllerTextColorDidChange:(id)a3
{
  v4 = [(CSActivityViewController *)self hostDelegate];
  [v4 activityViewControllerTextColorDidChange:self];
}

- (void)activityHostViewControllerHostShouldCancelTouches:(id)a3
{
  v4 = [(CSActivityViewController *)self hostDelegate];
  [v4 activityViewControllerHostShouldCancelTouches:self];
}

- (void)activityHostViewControllerSignificantUserInteractionBegan:(id)a3
{
  v4 = [(CSActivityViewController *)self hostDelegate];
  [v4 activityViewControllerSignificantUserInteractionBegan:self];
}

- (void)activityHostViewControllerSignificantUserInteractionEnded:(id)a3
{
  v4 = [(CSActivityViewController *)self hostDelegate];
  [v4 activityViewControllerSignificantUserInteractionEnded:self];
}

- (void)activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChange:(id)a3
{
  v4 = [(CSActivityViewController *)self hostDelegate];
  [v4 activityViewControllerAudioCategoriesDisablingVolumeHUDDidChange:self];
}

- (CGSize)contentSizeForContentView:(id)a3
{
  v4 = [(CSActivityViewController *)self hostViewController];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  if (v6 == *MEMORY[0x277CBF3A8] && v8 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v10 = [(CSActivityViewController *)self hostViewController];
    v11 = [v10 activitySceneDescriptor];
    v12 = [v11 metricsRequest];

    v13 = [v12 lockScreenMetrics];
    [v13 initialSize];
    v6 = v14;
    v8 = v15;
  }

  v16 = v6;
  v17 = v8;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)activityDescriptorForContentView:(id)a3
{
  v3 = [(CSActivityViewController *)self hostViewController];
  v4 = [v3 activitySceneDescriptor];
  v5 = [v4 activityDescriptor];

  return v5;
}

- (void)setHostableEntityContentMode:(int64_t)a3
{
  v4 = [(CSActivityViewController *)self _presentationModeForHostedEntityContentMode:a3];

  [(CSActivityViewController *)self _setPresentationMode:v4];
}

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  v3 = [(ACUISActivityHostViewController *)self->_hostViewController backlightHostEnvironment];
  if (v3)
  {
    v4 = [(ACUISActivityHostViewController *)self->_hostViewController activitySceneDescriptor];
    v5 = [v4 activityDescriptor];
    v6 = [v5 platterTargetBundleIdentifier];

    v7 = MEMORY[0x277CBEB98];
    v8 = [MEMORY[0x277D65E08] entryWithSceneHostEnvironment:v3 bundleIdentifier:v6];
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