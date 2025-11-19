@interface CSQuickActionsViewController
+ (BOOL)deviceSupportsButtons;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (BOOL)_prewarmingForCaptureExtensionLaunch;
- (BOOL)handleEvent:(id)a3;
- (BOOL)hidesBackingShadow;
- (BOOL)interpretsLocationAsBesideButtons:(CGPoint)a3 inView:(id)a4;
- (BOOL)interpretsLocationAsContent:(CGPoint)a3 inView:(id)a4;
- (BOOL)isCameraRestricted;
- (BOOL)shouldTouchesBeginForClick:(id)a3;
- (BOOL)systemQuickActionLaunchCaptureApplication:(id)a3;
- (CSApplicationInforming)applicationInformer;
- (CSCoverSheetViewController)coverSheetViewController;
- (CSQuickActionsViewController)init;
- (CSQuickActionsViewController)initWithLockScreenDefaults:(id)a3 applicationInformer:(id)a4;
- (double)_actionTimeoutDuration;
- (id)_actionForSystemControl:(id)a3;
- (id)_actions;
- (id)_configurationItemForAction:(id)a3 withIdentifier:(id)a4;
- (id)_controlInstanceForSystemControl:(id)a3;
- (id)_newFlashlightAction;
- (id)_quickActionForConfiguration:(id)a3;
- (id)_validActionForAction:(id)a3;
- (id)bestIconViewForApplicationBundleIdentifier:(id)a3;
- (void)_addStateCaptureHandlers;
- (void)_resetIdleTimer;
- (void)_updateControlHost;
- (void)_updateForSensitiveUI;
- (void)_validateActions;
- (void)activateCameraView;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)dealloc;
- (void)extensionsDidChangeForExtensionProvider:(id)a3;
- (void)fireActionForButton:(id)a3;
- (void)launchCameraCapture:(id)a3;
- (void)loadView;
- (void)setCameraPrewarmer:(id)a3;
- (void)setHidesBackingShadow:(BOOL)a3;
- (void)setQuickActionsConfiguration:(id)a3;
- (void)touchBeganForButton:(id)a3;
- (void)touchEndedForButton:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CSQuickActionsViewController

+ (BOOL)deviceSupportsButtons
{
  v2 = SBFEffectiveHomeButtonType();
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  return (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1 && v2 == 2;
}

- (BOOL)isCameraRestricted
{
  v2 = [(CSCoverSheetViewControllerBase *)self activeBehavior];
  v3 = [v2 areRestrictedCapabilities:4];

  return v3;
}

- (CSQuickActionsViewController)init
{
  v3 = objc_alloc_init(MEMORY[0x277D65FF0]);
  v4 = [(CSQuickActionsViewController *)self initWithLockScreenDefaults:v3 applicationInformer:0];

  return v4;
}

- (CSQuickActionsViewController)initWithLockScreenDefaults:(id)a3 applicationInformer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = CSQuickActionsViewController;
  v9 = [(CSQuickActionsViewController *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lockScreenDefaults, a3);
    v11 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v12 = [v11 addMonitor:v10 subjectMask:1 subscriptionOptions:1];
    objc_storeWeak(&v10->_appProtectionSubjectMonitorSubscription, v12);

    v13 = +[CSLockScreenDomain rootSettings];
    prototypeSettings = v10->_prototypeSettings;
    v10->_prototypeSettings = v13;

    [(PTSettings *)v10->_prototypeSettings addKeyObserver:v10];
    v15 = objc_alloc(MEMORY[0x277CFA3B8]);
    v16 = [MEMORY[0x277CFA3C0] visibleControls];
    v17 = [v15 initWithOptions:v16];
    extensionProvider = v10->_extensionProvider;
    v10->_extensionProvider = v17;

    [(CHSWidgetExtensionProvider *)v10->_extensionProvider registerObserver:v10];
    v19 = objc_alloc_init(MEMORY[0x277D65FF8]);
    miscellaneousSettings = v10->_miscellaneousSettings;
    v10->_miscellaneousSettings = v19;

    objc_initWeak(&location, v10);
    v21 = v10->_miscellaneousSettings;
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"sensitiveUIEnabled"];
    v23 = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85CD0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __79__CSQuickActionsViewController_initWithLockScreenDefaults_applicationInformer___block_invoke;
    v27[3] = &unk_27838B748;
    objc_copyWeak(&v28, &location);
    v25 = [(SBMiscellaneousDefaults *)v21 observeDefault:v22 onQueue:v23 withBlock:v27];

    objc_storeWeak(&v10->_applicationInformer, v8);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __79__CSQuickActionsViewController_initWithLockScreenDefaults_applicationInformer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForSensitiveUI];
}

- (void)loadView
{
  v3 = [CSQuickActionsView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v7 = [(CSQuickActionsView *)v3 initWithFrame:self delegate:?];

  [(CSQuickActionsView *)v7 setUsesSensitiveUIAppearance:[(SBMiscellaneousDefaults *)self->_miscellaneousSettings sensitiveUIEnabled]^ 1];
  [(CSQuickActionsView *)v7 setDelegate:self];
  v5 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  v6 = [v5 legibilitySettings];
  [(CSQuickActionsView *)v7 setLegibilitySettings:v6];

  [(CSQuickActionsViewController *)self setView:v7];
  [(CSQuickActionsViewController *)self _addStateCaptureHandlers];
}

- (void)setHidesBackingShadow:(BOOL)a3
{
  v3 = a3;
  v4 = [(CSQuickActionsViewController *)self quickActionsView];
  [v4 setHidesBackingShadow:v3];
}

- (BOOL)hidesBackingShadow
{
  v2 = [(CSQuickActionsViewController *)self quickActionsView];
  v3 = [v2 hidesBackingShadow];

  return v3;
}

- (void)setQuickActionsConfiguration:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_quickActionsConfiguration, a3);
    v6 = [v5 controls];
    v7 = [v6 count];

    if (v7 >= 2)
    {
      v8 = [v5 controls];
      v9 = [v8 firstObject];

      if ((BSEqualObjects() & 1) == 0)
      {
        objc_storeStrong(&self->_leadingConfiguration, v9);
        v10 = [(CSQuickActionsViewController *)self _quickActionForConfiguration:self->_leadingConfiguration];
        leadingAction = self->_leadingAction;
        self->_leadingAction = v10;

        v12 = SBLogDashBoard();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->_leadingAction;
          v20 = 138543362;
          v21 = v13;
          _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "[Quick Action] leadingConfiguration updated, new leadingAction: %{public}@", &v20, 0xCu);
        }
      }

      v14 = [v5 controls];
      v15 = [v14 lastObject];

      if ((BSEqualObjects() & 1) == 0)
      {
        objc_storeStrong(&self->_trailingConfiguration, v15);
        v16 = [(CSQuickActionsViewController *)self _quickActionForConfiguration:self->_trailingConfiguration];
        trailingAction = self->_trailingAction;
        self->_trailingAction = v16;

        v18 = SBLogDashBoard();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_trailingAction;
          v20 = 138543362;
          v21 = v19;
          _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "[Quick Action] trailingConfiguration updated, new trailingAction: %{public}@", &v20, 0xCu);
        }
      }

      [(CSQuickActionsViewController *)self _validateActions];
    }
  }
}

- (id)_quickActionForConfiguration:(id)a3
{
  v5 = a3;
  v6 = [v5 category];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = self->_cameraAction;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_11;
      }

      v7 = [(CSQuickActionsViewController *)self _actionForSystemControl:v5];
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_11;
    }

    v7 = [(CSQuickActionsViewController *)self _newFlashlightAction];
  }

  else
  {
    v7 = objc_alloc_init(CSEmptyQuickAction);
  }

  v3 = v7;
LABEL_11:

  return v3;
}

- (id)_newFlashlightAction
{
  if (![MEMORY[0x277D679B8] deviceSupportsFlashlight])
  {
    return 0;
  }

  v3 = [CSFlashlightQuickAction alloc];
  lockOutController = self->_lockOutController;

  return [(CSFlashlightQuickAction *)v3 initWithLockoutController:lockOutController];
}

- (id)_actionForSystemControl:(id)a3
{
  v4 = a3;
  v5 = [(CSQuickActionsViewController *)self _controlInstanceForSystemControl:v4];
  v6 = [v4 controlIdentity];
  v7 = [v6 extensionIdentity];
  v8 = [v7 containerBundleIdentifier];
  v9 = BSEqualStrings();

  if (v9)
  {
    v10 = [[CSCameraSystemQuickAction alloc] initWithQuickActionControlIdentity:v6 instance:v5 delegate:self prewarmer:self->_cameraPrewarmer prototypeSettings:self->_prototypeSettings defaults:self->_lockScreenDefaults];
  }

  else
  {
    v11 = [v4 controlIdentity];
    v12 = [v11 kind];
    v13 = BSEqualStrings();

    if (v13)
    {
      v10 = [(CSQuickActionsViewController *)self _newFlashlightAction];
    }

    else
    {
      v14 = [v4 type];
      if (v14 == 1)
      {
        v15 = CSSystemToggleQuickAction;
      }

      else if (v14 == 2)
      {
        v15 = CSSystemButtonQuickAction;
      }

      else
      {
        v15 = CSSystemQuickAction;
      }

      v10 = [[v15 alloc] initWithQuickActionControlIdentity:v6 instance:v5 delegate:self];
    }
  }

  v16 = v10;

  return v16;
}

- (id)_configurationItemForAction:(id)a3 withIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v7 controlIdentity];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CFA298]);
      v10 = [v7 controlIdentity];
      v8 = [v9 initWithUniqueIdentifier:v6 controlIdentity:v10 location:4];

      [v8 setPushPolicy:2];
      [v8 setCanAppearInSecureEnvironment:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_controlInstanceForSystemControl:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 controlIdentity];
  v6 = [v4 controlType];
  v7 = [v4 position];

  if (v7 == 1)
  {
    v8 = @"Quick-Action-Leading";
    if (v5)
    {
LABEL_4:
      if (v6)
      {
        v9 = [objc_alloc(MEMORY[0x277CFA230]) initWithControl:v5 contentType:0 hostIdentifier:@"com.apple.springboard.Quick-Actions" configurationIdentifier:v8];
        v10 = [MEMORY[0x277CFA528] instanceOfType:v6 instanceIdentity:v9];
        [v10 modifyConfiguration:&__block_literal_global];
        [v10 activate];

        goto LABEL_17;
      }

      v11 = SBLogDashBoard();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v22 = 138412290;
      v23 = self;
      v12 = "[Quick Action] failed to create controlInstance for %@ due to unknown control type";
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 != 2)
    {
      v13 = SBLogDashBoard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CSQuickActionsViewController *)v13 _controlInstanceForSystemControl:v14, v15, v16, v17, v18, v19, v20];
      }

      goto LABEL_16;
    }

    v8 = @"Quick-Action-Trailing";
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v11 = SBLogDashBoard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = self;
    v12 = "[Quick Action] failed to create controlInstance for %@ due to nil controlIdentity";
LABEL_14:
    _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, v12, &v22, 0xCu);
  }

LABEL_15:

LABEL_16:
  v10 = 0;
LABEL_17:

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSQuickActionsViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewWillAppear:a3];
  v4 = [(CSQuickActionsViewController *)self quickActionsView];
  [v4 refreshSupportedButtons];

  v5 = [(CSQuickActionsViewController *)self quickActionsView];
  [v5 setActionsVisible:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CSQuickActionsViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidDisappear:a3];
  v4 = [(CSQuickActionsViewController *)self quickActionsView];
  [v4 setActionsVisible:0];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);
  [WeakRetained invalidate];

  v4 = [(CSQuickActionsViewController *)self controlHost];
  [v4 invalidate];

  [(CHSWidgetExtensionProvider *)self->_extensionProvider unregisterObserver:self];
  [(CHSWidgetExtensionProvider *)self->_extensionProvider invalidate];
  [(BSDefaultObserver *)self->_defaultsObserverToken invalidate];
  v5.receiver = self;
  v5.super_class = CSQuickActionsViewController;
  [(CSCoverSheetViewControllerBase *)&v5 dealloc];
}

- (BOOL)interpretsLocationAsContent:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CSQuickActionsViewController *)self quickActionsView];
  v9 = [v8 interpretsLocationAsContent:v7 inView:{x, y}];

  return v9;
}

- (BOOL)interpretsLocationAsBesideButtons:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CSQuickActionsViewController *)self quickActionsView];
  v9 = [v8 interpretsLocationAsBesideContent:v7 inView:{x, y}];

  return v9;
}

- (id)bestIconViewForApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSQuickActionsViewController *)self quickActionsView];
  v6 = [v5 buttonsForApplicationBundleIdentifier:v4];

  WeakRetained = objc_loadWeakRetained(&self->_lastFiredQuickActionsButton);
  if ([v6 containsObject:WeakRetained])
  {
    v8 = WeakRetained;
  }

  else
  {
    v8 = [v6 firstObject];
  }

  v9 = v8;

  return v9;
}

- (void)_addStateCaptureHandlers
{
  if (+[CSQuickActionsViewController deviceSupportsButtons])
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v5, &location);
    v4 = BSLogAddStateCaptureBlockWithTitle();

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

__CFString *__56__CSQuickActionsViewController__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained quickActionsView];
  if ([v2 isUserInteractionEnabled])
  {
    v3 = @"Interaction enabled\n";
  }

  else
  {
    v3 = @"Interaction disabled\n";
  }

  v4 = v3;

  return v3;
}

- (void)_validateActions
{
  obj = [(CSQuickActionsViewController *)self _validActionForAction:self->_leadingAction];
  v3 = [(CSQuickActionsViewController *)self _validActionForAction:self->_trailingAction];
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_validatedLeadingAction, obj);
    p_validatedTrailingAction = &self->_validatedTrailingAction;
    if (BSEqualObjects())
    {
LABEL_6:
      v5 = [(CSQuickActionsViewController *)self quickActionsView];
      v6 = [(CSQuickActionsViewController *)self _actions];
      [v5 setButtonActions:v6];

      [(CSQuickActionsViewController *)self _updateControlHost];
      goto LABEL_7;
    }

LABEL_5:
    objc_storeStrong(p_validatedTrailingAction, v3);
    goto LABEL_6;
  }

  p_validatedTrailingAction = &self->_validatedTrailingAction;
  if ((BSEqualObjects() & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
}

- (void)_updateControlHost
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CSQuickActionsViewController *)self _configurationItemForAction:self->_validatedLeadingAction withIdentifier:@"Quick-Action-Leading"];
  v4 = [(CSQuickActionsViewController *)self _configurationItemForAction:self->_validatedTrailingAction withIdentifier:@"Quick-Action-Trailing"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if (v3)
  {
    [v5 addObject:v3];
  }

  if (v4)
  {
    [v6 addObject:v4];
  }

  v7 = [v6 count];
  controlHost = self->_controlHost;
  if (v7)
  {
    if (!controlHost)
    {
      v9 = SBLogDashBoard();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[Quick Action] activating control host", &v15, 2u);
      }

      v10 = [objc_alloc(MEMORY[0x277CFA220]) initWithIdentifier:@"com.apple.springboard.Quick-Actions"];
      v11 = self->_controlHost;
      self->_controlHost = v10;

      [(CHSControlHost *)self->_controlHost activate];
    }

    v12 = [objc_alloc(MEMORY[0x277CFA1F0]) initWithControlItems:v6];
    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "[Quick Action] updating control host configuration %@", &v15, 0xCu);
    }

    [(CHSControlHost *)self->_controlHost setConfiguration:v12];
  }

  else if (controlHost)
  {
    v14 = SBLogDashBoard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[Quick Action] deactivating control host", &v15, 2u);
    }

    [(CHSControlHost *)self->_controlHost deactivate];
    [(CHSControlHost *)self->_controlHost invalidate];
    [(CSQuickActionsViewController *)self setControlHost:0];
  }
}

- (id)_validActionForAction:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 controlIdentity];
    v10 = [v9 extensionIdentity];
    v11 = [v10 containerBundleIdentifier];
    v12 = [v9 kind];
  }

  else
  {
    v10 = objc_opt_class();
    v13 = v6;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }
    }

    if (!v10)
    {
      v16 = v13;
      v12 = 0;
      v11 = 0;
      v9 = 0;
      goto LABEL_40;
    }

    v11 = @"com.apple.camera";
    v10 = [objc_alloc(MEMORY[0x277CFA258]) initWithExtensionBundleIdentifier:@"com.apple.camera.LauncherControlExtension" containerBundleIdentifier:v11 deviceIdentifier:0];
    v12 = @"com.apple.camera.deeplink.button";
    v9 = 0;
  }

  v14 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v11];
  if (([v14 isLocked] & 1) != 0 || objc_msgSend(v14, "isHidden"))
  {
    v15 = SBLogDashBoard();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = v6;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "[Quick Action] removing button for %{public}@ with containerBundleIdentifier %{public}@ because app was hidden or locked", buf, 0x16u);
    }

    v16 = objc_alloc_init(CSEmptyQuickAction);
    goto LABEL_39;
  }

  extensionProvider = self->_extensionProvider;
  if (!v9)
  {
    v19 = [v10 extensionBundleIdentifier];
    v29 = [(CHSWidgetExtensionProvider *)extensionProvider widgetExtensionContainerForExtensionBundleIdentifier:v19];

    v28 = [v29 extensionForExtensionIdentity:v10];
    v20 = [v28 orderedControlDescriptors];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __54__CSQuickActionsViewController__validActionForAction___block_invoke;
    v30[3] = &unk_27838B8E8;
    v31 = v12;
    v18 = [v20 bs_firstObjectPassingTest:v30];

    if (v18)
    {
      goto LABEL_21;
    }

LABEL_24:
    v21 = SBLogDashBoard();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = v6;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEFAULT, "[Quick Action] no descriptor found for %{public}@ with containerBundleIdentifier %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_applicationInformer);
    v23 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained isSystemRestoringFromBackup])
      {
LABEL_33:
        v25 = v6;
LABEL_37:
        v16 = v25;

        goto LABEL_38;
      }

      if (([v23 isInstallingApplicationWithBundleIdentifier:v11] & 1) != 0 || objc_msgSend(v23, "applicationExistsForBundleIdentifier:", v11))
      {
        v24 = SBLogDashBoard();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(CSQuickActionsViewController *)v6 _validActionForAction:v11, v24];
        }

        goto LABEL_33;
      }
    }

    v26 = SBLogDashBoard();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = v6;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&dword_21EB05000, v26, OS_LOG_TYPE_DEFAULT, "[Quick Action] removing button for %{public}@ because no control descriptor found and could not find application with containerBundleIdentifier %{public}@", buf, 0x16u);
    }

    v25 = objc_alloc_init(CSEmptyQuickAction);
    goto LABEL_37;
  }

  v18 = [(CHSWidgetExtensionProvider *)self->_extensionProvider controlDescriptorForControl:v9];
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_21:
  v16 = v6;
LABEL_38:

LABEL_39:
LABEL_40:

  return v16;
}

uint64_t __54__CSQuickActionsViewController__validActionForAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateForSensitiveUI
{
  v3 = [(CSQuickActionsViewController *)self quickActionsView];
  [v3 setUsesSensitiveUIAppearance:{-[SBMiscellaneousDefaults sensitiveUIEnabled](self->_miscellaneousSettings, "sensitiveUIEnabled") ^ 1}];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CSQuickActionsViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v16, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 > 23)
    {
      if (v6 == 24)
      {
        v14 = [(CSQuickActionsViewController *)self quickActionsView];
        [v14 setUserInteractionEnabled:1];

        v9 = [(CSQuickActionsViewController *)self quickActionsView];
        v7 = v9;
        v10 = 1;
      }

      else
      {
        if (v6 != 25)
        {
          goto LABEL_16;
        }

        v8 = [(CSQuickActionsViewController *)self quickActionsView];
        [v8 setUserInteractionEnabled:0];

        v9 = [(CSQuickActionsViewController *)self quickActionsView];
        v7 = v9;
        v10 = 0;
      }

      [v9 setActionsVisible:v10];
    }

    else
    {
      if (v6 == 1)
      {
        v11 = [(CSQuickActionsViewController *)self quickActionsView];
        v12 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
        v13 = [v12 legibilitySettings];
        [v11 setLegibilitySettings:v13];

LABEL_15:
        v5 = 0;
        goto LABEL_16;
      }

      if (v6 != 2)
      {
        goto LABEL_16;
      }

      v7 = [(CSQuickActionsViewController *)self quickActionsView];
      [v7 refreshSupportedButtons];
    }

    goto LABEL_15;
  }

  v5 = [v4 isConsumable];
LABEL_16:

  return v5;
}

- (void)setCameraPrewarmer:(id)a3
{
  v5 = a3;
  if (self->_cameraPrewarmer != v5)
  {
    objc_storeStrong(&self->_cameraPrewarmer, a3);
    if (!self->_cameraAction)
    {
      v6 = [[CSCameraQuickAction alloc] initWithDelegate:self prewarmer:self->_cameraPrewarmer prototypeSettings:self->_prototypeSettings defaults:self->_lockScreenDefaults];
      cameraAction = self->_cameraAction;
      self->_cameraAction = v6;

      if (!self->_trailingAction)
      {
        objc_storeStrong(&self->_trailingAction, self->_cameraAction);
        v8 = SBLogDashBoard();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[Quick Action] trailing action being defaulted to camera", v9, 2u);
        }
      }

      [(CSQuickActionsViewController *)self _validateActions];
    }
  }
}

- (void)activateCameraView
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);
  [WeakRetained activateCameraViewAnimated:1 sendingActions:0 completion:0];
}

- (void)launchCameraCapture:(id)a3
{
  v4 = a3;
  v6 = [(CSQuickActionsViewController *)self coverSheetViewController];
  v5 = [v6 applicationLauncher];
  [v5 launchCaptureApplication:v4];
}

- (BOOL)systemQuickActionLaunchCaptureApplication:(id)a3
{
  v4 = a3;
  v5 = [(CSQuickActionsViewController *)self coverSheetViewController];
  v6 = [v5 applicationLauncher];
  v7 = [v6 launchCaptureApplication:v4];

  return v7;
}

- (BOOL)_prewarmingForCaptureExtensionLaunch
{
  v2 = [(CSQuickActionsViewController *)self _captureExtensionsEnabled];
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)shouldTouchesBeginForClick:(id)a3
{
  v3 = [(CSQuickActionsViewController *)self coverSheetViewController];
  v4 = [v3 activeBehavior];
  v5 = [v4 areRestrictedCapabilities:0x2000000];

  if (v5)
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[Quick Action] New touch dropped for restriction", v8, 2u);
    }
  }

  return v5 ^ 1;
}

- (void)touchBeganForButton:(id)a3
{
  v4 = a3;
  [(CSQuickActionsViewController *)self _actionTimeoutDuration];
  v6 = v5;
  if ((BSFloatIsZero() & 1) == 0)
  {
    objc_initWeak(&location, self);
    if (self->_buttonTouchTimer)
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[Quick Action] Previous timeout zombified?", buf, 2u);
      }

      [(NSTimer *)self->_buttonTouchTimer invalidate];
      buttonTouchTimer = self->_buttonTouchTimer;
      self->_buttonTouchTimer = 0;
    }

    v9 = MEMORY[0x277CBEBB8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__CSQuickActionsViewController_touchBeganForButton___block_invoke;
    v16[3] = &unk_27838B910;
    objc_copyWeak(&v17, &location);
    v10 = [v9 timerWithTimeInterval:0 repeats:v16 block:v6];
    v11 = self->_buttonTouchTimer;
    self->_buttonTouchTimer = v10;

    v12 = [MEMORY[0x277CBEAA8] date];
    timerStartTime = self->_timerStartTime;
    self->_timerStartTime = v12;

    v14 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v14 addTimer:self->_buttonTouchTimer forMode:*MEMORY[0x277CBE738]];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  self->_buttonActionAllowedForTimer = 1;
  v15 = [v4 action];
  [v15 touchBegan];
}

void __52__CSQuickActionsViewController_touchBeganForButton___block_invoke(uint64_t a1)
{
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21EB05000, v2, OS_LOG_TYPE_DEFAULT, "[Quick Action] Timeout fired.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *(WeakRetained + 1168) = 0;
  [*(WeakRetained + 144) invalidate];
  v4 = *(WeakRetained + 144);
  *(WeakRetained + 144) = 0;
}

- (void)fireActionForButton:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSQuickActionsViewController *)self coverSheetViewController];
  v6 = [v5 activeBehavior];
  v7 = [v6 areRestrictedCapabilities:0x2000000];

  if (v7)
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[Quick Action] Firing dropped for restriction", buf, 2u);
    }

    [v4 setSelected:0];
  }

  else
  {
    objc_storeWeak(&self->_lastFiredQuickActionsButton, v4);
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSinceDate:self->_timerStartTime];
    v11 = v10;

    [(CSQuickActionsViewController *)self _actionTimeoutDuration];
    v13 = v12;
    v14 = vcvtmd_s64_f64(v11 * 10.0);
    v15 = BSFloatGreaterThanOrEqualToFloat();
    v16 = v15;
    buttonActionAllowedForTimer = self->_buttonActionAllowedForTimer;
    if (!buttonActionAllowedForTimer && (v15 & 1) == 0)
    {
      v18 = SBLogDashBoard();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CSQuickActionsViewController *)v18 fireActionForButton:v13, v11];
      }

      buttonActionAllowedForTimer = self->_buttonActionAllowedForTimer;
    }

    v19 = [v4 action];
    v20 = v19;
    if (buttonActionAllowedForTimer || ((v16 ^ 1) & 1) != 0)
    {
      [v19 fireAction];
      if (([v20 supportsSelection] & 1) == 0)
      {
        [v4 setSelected:0];
      }

      [(CSQuickActionsViewController *)self _resetIdleTimer];
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:{v14, *MEMORY[0x277D674D8]}];
      v36 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v24 = MEMORY[0x277D65DD0];
      v25 = v23;
      v26 = [v24 sharedInstance];
      [v26 emitEvent:42 withPayload:v25];

      v27 = [CSAction actionWithType:5];
      [(CSCoverSheetViewControllerBase *)self sendAction:v27];
    }

    else
    {
      if ([v19 supportsSelection])
      {
        v21 = [v4 isSelected] ^ 1;
      }

      else
      {
        v21 = 0;
      }

      [v4 setSelected:v21];

      v28 = SBLogDashBoard();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v40 = v13;
        v41 = 2048;
        v42 = v11;
        _os_log_impl(&dword_21EB05000, v28, OS_LOG_TYPE_DEFAULT, "[Quick Action] Action failed for timeout. Timeout: %f. Elapsed: %f", buf, 0x16u);
      }

      v37 = *MEMORY[0x277D674D8];
      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v38 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v31 = MEMORY[0x277D65DD0];
      v32 = v30;
      v33 = [v31 sharedInstance];
      [v33 emitEvent:43 withPayload:v32];

      v34 = [CSAction actionWithType:6];
      [(CSCoverSheetViewControllerBase *)self sendAction:v34];
    }
  }
}

- (void)touchEndedForButton:(id)a3
{
  v4 = [a3 action];
  [v4 touchEnded];

  [(NSTimer *)self->_buttonTouchTimer invalidate];
  buttonTouchTimer = self->_buttonTouchTimer;
  self->_buttonTouchTimer = 0;

  self->_buttonActionAllowedForTimer = 0;
}

- (void)_resetIdleTimer
{
  v4 = [CSAction actionWithType:3];
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);
  [WeakRetained handleAction:v4 fromSender:self];
}

- (double)_actionTimeoutDuration
{
  v2 = [(CSLockScreenSettings *)self->_prototypeSettings dashBoardQuickActionButtonSettings];
  [v2 maximumTouchDuration];
  v4 = v3;

  return v4;
}

- (id)_actions
{
  if ([(CSQuickActionsViewController *)self _shouldUseControlsInPlaceOfButtons])
  {
    v3 = self->_validatedLeadingAction;
    v4 = self->_validatedTrailingAction;
  }

  else
  {
    leadingAction = self->_leadingAction;
    v6 = objc_opt_class();
    v7 = leadingAction;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
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

    if (v9)
    {
      v10 = self->_leadingAction;
    }

    else
    {
      v10 = [(CSQuickActionsViewController *)self _newFlashlightAction];
    }

    v3 = v10;

    v4 = self->_cameraAction;
    v11 = SBLogDashBoard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v31[0] = 0;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[Quick Action] ignoring customization because LockPick has been disabled", v31, 2u);
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = v12;
  if (v3)
  {
    [v12 addObject:v3];
    if (v4)
    {
LABEL_16:
      [v13 addObject:v4];
      goto LABEL_23;
    }
  }

  else
  {
    v14 = SBLogDashBoard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CSQuickActionsViewController *)v14 _actions:v15];
    }

    if (v4)
    {
      goto LABEL_16;
    }
  }

  v22 = SBLogDashBoard();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(CSQuickActionsViewController *)v22 _actions:v23];
  }

LABEL_23:

  return v13;
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__CSQuickActionsViewController_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_27838B838;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __77__CSQuickActionsViewController_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appProtectionSubjectMonitorSubscription];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);

    [v4 _validateActions];
  }
}

- (void)extensionsDidChangeForExtensionProvider:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CSQuickActionsViewController_extensionsDidChangeForExtensionProvider___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (CSCoverSheetViewController)coverSheetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);

  return WeakRetained;
}

- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);

  return WeakRetained;
}

- (CSApplicationInforming)applicationInformer
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationInformer);

  return WeakRetained;
}

- (void)_validActionForAction:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21EB05000, log, OS_LOG_TYPE_ERROR, "[Quick Action] keeping button for %{public}@ with nil control descriptor because found application with containerBundleIdentifier %{public}@", &v3, 0x16u);
}

- (void)fireActionForButton:(double)a3 .cold.1(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_21EB05000, log, OS_LOG_TYPE_ERROR, "[Quick Action] Timeout flag was incorrect! Timeout: %f. Elapsed: %f", &v3, 0x16u);
}

@end