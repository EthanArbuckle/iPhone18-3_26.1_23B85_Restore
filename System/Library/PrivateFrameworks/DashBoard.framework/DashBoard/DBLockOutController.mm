@interface DBLockOutController
- (BOOL)_shouldLockoutForHello;
- (BOOL)_shouldLockoutUntilAllAssetsForegrounded;
- (BOOL)_shouldLockoutUntilMainAssetForegrounded;
- (DBLockOutController)initWithWindowScene:(id)scene environmentConfiguration:(id)configuration dashboardStateProvider:(id)provider delegate:(id)delegate;
- (DBLockoutControllerDelegate)delegate;
- (id)_windowBackgroundColorForCurrentMode;
- (id)wallpaperViewForLockOutViewController:(id)controller;
- (void)_markHelloCompleted;
- (void)buddyMonitorDidChangeFinished:(id)finished;
- (void)disclosureMonitorDidChangeActive:(id)active;
- (void)environmentConfigurationPairedVehiclesDidChange:(id)change;
- (void)handleAllAssetsForegrounded;
- (void)handleMainAssetForegrounded;
- (void)invalidate;
- (void)keybagMonitorLockStateDidChange:(id)change;
- (void)lockOutViewController:(id)controller didTapButtonOfType:(unint64_t)type;
- (void)lockOutViewControllerWantsToDismiss:(id)dismiss;
- (void)registerAutomakerOverlayStateMonitor:(id)monitor;
- (void)siriMonitorDidChangeEnabled:(id)enabled;
- (void)thermalMonitorLevelDidChange:(id)change;
- (void)updateLockOutModeAnimated:(BOOL)animated takeScreen:(BOOL)screen;
@end

@implementation DBLockOutController

- (DBLockOutController)initWithWindowScene:(id)scene environmentConfiguration:(id)configuration dashboardStateProvider:(id)provider delegate:(id)delegate
{
  sceneCopy = scene;
  configurationCopy = configuration;
  providerCopy = provider;
  delegateCopy = delegate;
  v44.receiver = self;
  v44.super_class = DBLockOutController;
  v14 = [(DBLockOutController *)&v44 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v15->_environmentConfiguration, configuration);
    [configurationCopy addObserver:v15];
    thermalMonitor = [configurationCopy thermalMonitor];
    [thermalMonitor addObserver:v15];

    objc_storeStrong(&v15->_dashboardStateProvider, provider);
    displayConfiguration = [configurationCopy displayConfiguration];
    [configurationCopy currentSafeViewAreaFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v15->_lockOutMode = 0;
    v26 = objc_alloc_init(DBBuddyMonitor);
    buddyMonitor = v15->_buddyMonitor;
    v15->_buddyMonitor = v26;

    [(DBBuddyMonitor *)v15->_buddyMonitor addObserver:v15];
    v28 = objc_alloc_init(DBDisclosureMonitor);
    disclosureMonitor = v15->_disclosureMonitor;
    v15->_disclosureMonitor = v28;

    [(DBDisclosureMonitor *)v15->_disclosureMonitor addObserver:v15];
    v30 = objc_alloc_init(DBKeybagMonitor);
    keybagMonitor = v15->_keybagMonitor;
    v15->_keybagMonitor = v30;

    [(DBKeybagMonitor *)v15->_keybagMonitor addObserver:v15];
    v32 = objc_alloc_init(DBSiriMonitor);
    siriMonitor = v15->_siriMonitor;
    v15->_siriMonitor = v32;

    [(DBSiriMonitor *)v15->_siriMonitor addObserver:v15];
    v34 = objc_alloc_init(_TtC9DashBoard30DBAutomakerOverlayStateMonitor);
    overlayStateMonitor = v15->_overlayStateMonitor;
    v15->_overlayStateMonitor = v34;

    [(DBAutomakerOverlayStateMonitor *)v15->_overlayStateMonitor registerObserver:v15];
    v36 = [[_TtC9DashBoard15DBLockOutWindow alloc] initWithWindowScene:sceneCopy frame:v19, v21, v23, v25];
    lockOutWindow = v15->_lockOutWindow;
    v15->_lockOutWindow = v36;

    v38 = v15->_lockOutWindow;
    _windowBackgroundColorForCurrentMode = [(DBLockOutController *)v15 _windowBackgroundColorForCurrentMode];
    [(DBLockOutWindow *)v38 setBackgroundColor:_windowBackgroundColorForCurrentMode];

    layer = [(DBLockOutWindow *)v15->_lockOutWindow layer];
    [layer setCornerCurve:*MEMORY[0x277CDA138]];

    [(DBLockOutWindow *)v15->_lockOutWindow setClipsToBounds:1];
    v41 = [[DBLockOutViewController alloc] initWithEnvironmentConfiguration:configurationCopy];
    lockOutViewController = v15->_lockOutViewController;
    v15->_lockOutViewController = v41;

    [(DBLockOutViewController *)v15->_lockOutViewController setDelegate:v15];
    [(DBLockOutWindow *)v15->_lockOutWindow setRootViewController:v15->_lockOutViewController];
    [(DBLockOutWindow *)v15->_lockOutWindow setHidden:1];
  }

  return v15;
}

- (void)updateLockOutModeAnimated:(BOOL)animated takeScreen:(BOOL)screen
{
  screenCopy = screen;
  animatedCopy = animated;
  v45 = *MEMORY[0x277D85DE8];
  environmentConfiguration = [(DBLockOutController *)self environmentConfiguration];
  thermalMonitor = [environmentConfiguration thermalMonitor];
  isThermalBlocked = [thermalMonitor isThermalBlocked];

  if (isThermalBlocked)
  {
    v10 = 4;
    goto LABEL_15;
  }

  keybagMonitor = [(DBLockOutController *)self keybagMonitor];
  if ([keybagMonitor isLocked])
  {
    environmentConfiguration2 = [(DBLockOutController *)self environmentConfiguration];
    isPairedVehicle = [environmentConfiguration2 isPairedVehicle];

    if (!isPairedVehicle)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  keybagMonitor2 = [(DBLockOutController *)self keybagMonitor];
  isBlocked = [keybagMonitor2 isBlocked];

  if (isBlocked)
  {
LABEL_8:
    v10 = 2;
    goto LABEL_15;
  }

  siriMonitor = [(DBLockOutController *)self siriMonitor];
  siriEnabled = [siriMonitor siriEnabled];

  if (siriEnabled)
  {
    buddyMonitor = [(DBLockOutController *)self buddyMonitor];
    buddyFinished = [buddyMonitor buddyFinished];

    if (buddyFinished)
    {
      disclosureMonitor = [(DBLockOutController *)self disclosureMonitor];
      active = [disclosureMonitor active];

      if (active)
      {
        v10 = 7;
      }

      else if ([(DBLockOutController *)self _shouldLockoutForHello])
      {
        if ([(DBLockOutController *)self _shouldLockoutUntilAllAssetsForegrounded])
        {
          v10 = 8;
        }

        else
        {
          v10 = 9;
        }
      }

      else if ([(DBLockOutController *)self _shouldLockoutUntilMainAssetForegrounded])
      {
        v10 = 8;
      }

      else
      {
        overlayStateMonitor = [(DBLockOutController *)self overlayStateMonitor];
        lockOut = [overlayStateMonitor lockOut];

        if (lockOut)
        {
          v10 = 10;
        }

        else
        {
          v10 = 1;
        }
      }
    }

    else
    {
      v10 = 6;
    }
  }

  else
  {
    v10 = 3;
  }

LABEL_15:
  if ([(DBLockOutController *)self lockOutMode]== v10 || [(DBLockOutController *)self isInvalidated])
  {
    return;
  }

  v22 = v10 != 1 || [(DBLockOutController *)self lockOutMode]!= 10;
  v23 = DBLogForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = DBDescriptionForLockOutMode(v10);
    v43 = 138412290;
    v44 = v24;
    _os_log_impl(&dword_248146000, v23, OS_LOG_TYPE_DEFAULT, "[DBLockOutController] Setting new lock out mode: %@", &v43, 0xCu);
  }

  lockOutMode = [(DBLockOutController *)self lockOutMode];
  [(DBLockOutController *)self setLockOutMode:v10];
  if ([(DBLockOutController *)self isLockedOut])
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  dashboardStateProvider = [(DBLockOutController *)self dashboardStateProvider];
  [dashboardStateProvider setLockoutState:v26];

  delegate = [(DBLockOutController *)self delegate];
  [delegate lockOutController:self didChangeFromLockoutMode:lockOutMode toLockOutMode:v10 animated:animatedCopy takeScreen:screenCopy];

  if ([(DBLockOutController *)self isLockedOut])
  {
    lockOutLayoutElementAssertion = [(DBLockOutController *)self lockOutLayoutElementAssertion];
    if (lockOutLayoutElementAssertion)
    {
    }

    else if (![(DBLockOutController *)self isInvalidated])
    {
      v35 = DBLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_248146000, v35, OS_LOG_TYPE_DEFAULT, "Activating layout element for lock out screen", &v43, 2u);
      }

      v36 = objc_alloc(MEMORY[0x277D0AD00]);
      v37 = [v36 initWithIdentifier:*MEMORY[0x277D0ABA0]];
      [v37 setLevel:3];
      [v37 setFillsDisplayBounds:1];
      environmentConfiguration3 = [(DBLockOutController *)self environmentConfiguration];
      displayLayoutPublisher = [environmentConfiguration3 displayLayoutPublisher];
      v40 = [displayLayoutPublisher addElement:v37];
      [(DBLockOutController *)self setLockOutLayoutElementAssertion:v40];

      if (v22)
      {
        goto LABEL_35;
      }

      return;
    }
  }

  if (![(DBLockOutController *)self isLockedOut])
  {
    lockOutLayoutElementAssertion2 = [(DBLockOutController *)self lockOutLayoutElementAssertion];

    if (lockOutLayoutElementAssertion2)
    {
      v31 = DBLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "Invalidating layout element for lock out screen", &v43, 2u);
      }

      lockOutLayoutElementAssertion3 = [(DBLockOutController *)self lockOutLayoutElementAssertion];
      [lockOutLayoutElementAssertion3 invalidate];

      [(DBLockOutController *)self setLockOutLayoutElementAssertion:0];
    }
  }

  if (v22)
  {
LABEL_35:
    lockOutWindow = self->_lockOutWindow;
    _windowBackgroundColorForCurrentMode = [(DBLockOutController *)self _windowBackgroundColorForCurrentMode];
    [(DBLockOutWindow *)lockOutWindow setBackgroundColor:_windowBackgroundColorForCurrentMode];
  }
}

- (void)invalidate
{
  lockOutWindow = [(DBLockOutController *)self lockOutWindow];
  [lockOutWindow setHidden:1];

  [(DBLockOutController *)self setLockOutWindow:0];
  [(DBLockOutController *)self setLockOutViewController:0];
  lockOutLayoutElementAssertion = [(DBLockOutController *)self lockOutLayoutElementAssertion];

  if (lockOutLayoutElementAssertion)
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating layout element for lock out screen", v7, 2u);
    }

    lockOutLayoutElementAssertion2 = [(DBLockOutController *)self lockOutLayoutElementAssertion];
    [lockOutLayoutElementAssertion2 invalidate];

    [(DBLockOutController *)self setLockOutLayoutElementAssertion:0];
  }

  [(DBLockOutController *)self setInvalidated:1];
}

- (void)handleMainAssetForegrounded
{
  [(DBLockOutController *)self setMainAssetForegrounded:1];

  [(DBLockOutController *)self updateLockOutModeAnimated:1];
}

- (void)handleAllAssetsForegrounded
{
  [(DBLockOutController *)self setAllAssetsForegrounded:1];

  [(DBLockOutController *)self updateLockOutModeAnimated:1];
}

- (id)_windowBackgroundColorForCurrentMode
{
  lockOutMode = [(DBLockOutController *)self lockOutMode];
  if (lockOutMode == 1)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else if (lockOutMode == 9)
  {
    blackColor = 0;
  }

  else
  {
    if (lockOutMode == 10)
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] tableBackgroundColor];
    }
    blackColor = ;
  }

  return blackColor;
}

- (BOOL)_shouldLockoutForHello
{
  environmentConfiguration = [(DBLockOutController *)self environmentConfiguration];
  if (![environmentConfiguration supportsGaugeCluster])
  {
    goto LABEL_5;
  }

  environmentConfiguration2 = [(DBLockOutController *)self environmentConfiguration];
  supportsDisplayPlugin = [environmentConfiguration2 supportsDisplayPlugin];

  if (!supportsDisplayPlugin)
  {
    return 0;
  }

  environmentConfiguration3 = [(DBLockOutController *)self environmentConfiguration];
  environmentConfiguration = [environmentConfiguration3 vehicle];

  if (environmentConfiguration)
  {
    finishedWelcome = [environmentConfiguration finishedWelcome];
    v8 = finishedWelcome == 0;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldLockoutUntilAllAssetsForegrounded
{
  environmentConfiguration = [(DBLockOutController *)self environmentConfiguration];
  if ([environmentConfiguration supportsGaugeCluster])
  {
    environmentConfiguration2 = [(DBLockOutController *)self environmentConfiguration];
    supportsDisplayPlugin = [environmentConfiguration2 supportsDisplayPlugin];

    if (supportsDisplayPlugin)
    {
      return ![(DBLockOutController *)self allAssetsForegrounded];
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)_shouldLockoutUntilMainAssetForegrounded
{
  environmentConfiguration = [(DBLockOutController *)self environmentConfiguration];
  if ([environmentConfiguration supportsGaugeCluster])
  {
    environmentConfiguration2 = [(DBLockOutController *)self environmentConfiguration];
    supportsDisplayPlugin = [environmentConfiguration2 supportsDisplayPlugin];

    if (supportsDisplayPlugin)
    {
      return ![(DBLockOutController *)self mainAssetForegrounded];
    }
  }

  else
  {
  }

  return 0;
}

- (void)keybagMonitorLockStateDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DBLockOutController_keybagMonitorLockStateDidChange___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)thermalMonitorLevelDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__DBLockOutController_thermalMonitorLevelDidChange___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)disclosureMonitorDidChangeActive:(id)active
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DBLockOutController_disclosureMonitorDidChangeActive___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)registerAutomakerOverlayStateMonitor:(id)monitor
{
  monitorCopy = monitor;
  overlayStateMonitor = [(DBLockOutController *)self overlayStateMonitor];
  [overlayStateMonitor registerObserver:monitorCopy];
}

- (id)wallpaperViewForLockOutViewController:(id)controller
{
  delegate = [(DBLockOutController *)self delegate];
  v5 = [delegate wallpaperViewForLockOutController:self];

  return v5;
}

- (void)lockOutViewController:(id)controller didTapButtonOfType:(unint64_t)type
{
  controllerCopy = controller;
  if (type > 1001)
  {
    if (type == 1004)
    {
      v10 = DBLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_INFO, "[LockOut] Action: features off", v12, 2u);
      }

      disclosureMonitor = [(DBLockOutController *)self disclosureMonitor];
      [disclosureMonitor turnFeaturesOff];
      goto LABEL_19;
    }

    if (type == 1003)
    {
      v11 = DBLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_INFO, "[LockOut] Action: disclosure safe", v13, 2u);
      }

      disclosureMonitor = [(DBLockOutController *)self disclosureMonitor];
      [disclosureMonitor markSafe];
      goto LABEL_19;
    }

    if (type != 1002)
    {
      goto LABEL_20;
    }

LABEL_10:
    v8 = DBLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_INFO, "[LockOut] Action: requesting car UI", v15, 2u);
    }

    disclosureMonitor = [(DBLockOutController *)self environmentConfiguration];
    session = [disclosureMonitor session];
    [session requestCarUI];

LABEL_19:
    goto LABEL_20;
  }

  if (type == 1000)
  {
    goto LABEL_10;
  }

  if (type == 1001)
  {
    disclosureMonitor = DBLogForCategory(0);
    if (os_log_type_enabled(disclosureMonitor, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, disclosureMonitor, OS_LOG_TYPE_INFO, "[LockOut] Action: enabling siri", buf, 2u);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)lockOutViewControllerWantsToDismiss:(id)dismiss
{
  if ([dismiss lockOutMode] == 9)
  {
    [(DBLockOutController *)self _markHelloCompleted];
  }

  [(DBLockOutController *)self updateLockOutModeAnimated:1];
}

- (void)environmentConfigurationPairedVehiclesDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__DBLockOutController_environmentConfigurationPairedVehiclesDidChange___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)siriMonitorDidChangeEnabled:(id)enabled
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DBLockOutController_siriMonitorDidChangeEnabled___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)buddyMonitorDidChangeFinished:(id)finished
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DBLockOutController_buddyMonitorDidChangeFinished___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_markHelloCompleted
{
  environmentConfiguration = [(DBLockOutController *)self environmentConfiguration];
  vehicle = [environmentConfiguration vehicle];

  [vehicle setFinishedWelcome:MEMORY[0x277CBEC38]];
  v3 = objc_alloc_init(MEMORY[0x277CF8A68]);
  [v3 saveVehicle:vehicle completion:&__block_literal_global_29];
}

void __42__DBLockOutController__markHelloCompleted__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DBLogForCategory(0);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "marked welcome completed", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __42__DBLockOutController__markHelloCompleted__block_invoke_cold_1(v4, v6);
  }
}

- (DBLockoutControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __42__DBLockOutController__markHelloCompleted__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "failed to save vehicle to mark welcome completed: %@", &v2, 0xCu);
}

@end