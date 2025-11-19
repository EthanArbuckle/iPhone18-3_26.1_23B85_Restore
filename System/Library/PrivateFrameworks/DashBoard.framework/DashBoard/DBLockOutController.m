@interface DBLockOutController
- (BOOL)_shouldLockoutForHello;
- (BOOL)_shouldLockoutUntilAllAssetsForegrounded;
- (BOOL)_shouldLockoutUntilMainAssetForegrounded;
- (DBLockOutController)initWithWindowScene:(id)a3 environmentConfiguration:(id)a4 dashboardStateProvider:(id)a5 delegate:(id)a6;
- (DBLockoutControllerDelegate)delegate;
- (id)_windowBackgroundColorForCurrentMode;
- (id)wallpaperViewForLockOutViewController:(id)a3;
- (void)_markHelloCompleted;
- (void)buddyMonitorDidChangeFinished:(id)a3;
- (void)disclosureMonitorDidChangeActive:(id)a3;
- (void)environmentConfigurationPairedVehiclesDidChange:(id)a3;
- (void)handleAllAssetsForegrounded;
- (void)handleMainAssetForegrounded;
- (void)invalidate;
- (void)keybagMonitorLockStateDidChange:(id)a3;
- (void)lockOutViewController:(id)a3 didTapButtonOfType:(unint64_t)a4;
- (void)lockOutViewControllerWantsToDismiss:(id)a3;
- (void)registerAutomakerOverlayStateMonitor:(id)a3;
- (void)siriMonitorDidChangeEnabled:(id)a3;
- (void)thermalMonitorLevelDidChange:(id)a3;
- (void)updateLockOutModeAnimated:(BOOL)a3 takeScreen:(BOOL)a4;
@end

@implementation DBLockOutController

- (DBLockOutController)initWithWindowScene:(id)a3 environmentConfiguration:(id)a4 dashboardStateProvider:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v44.receiver = self;
  v44.super_class = DBLockOutController;
  v14 = [(DBLockOutController *)&v44 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v13);
    objc_storeStrong(&v15->_environmentConfiguration, a4);
    [v11 addObserver:v15];
    v16 = [v11 thermalMonitor];
    [v16 addObserver:v15];

    objc_storeStrong(&v15->_dashboardStateProvider, a5);
    v17 = [v11 displayConfiguration];
    [v11 currentSafeViewAreaFrame];
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
    v36 = [[_TtC9DashBoard15DBLockOutWindow alloc] initWithWindowScene:v10 frame:v19, v21, v23, v25];
    lockOutWindow = v15->_lockOutWindow;
    v15->_lockOutWindow = v36;

    v38 = v15->_lockOutWindow;
    v39 = [(DBLockOutController *)v15 _windowBackgroundColorForCurrentMode];
    [(DBLockOutWindow *)v38 setBackgroundColor:v39];

    v40 = [(DBLockOutWindow *)v15->_lockOutWindow layer];
    [v40 setCornerCurve:*MEMORY[0x277CDA138]];

    [(DBLockOutWindow *)v15->_lockOutWindow setClipsToBounds:1];
    v41 = [[DBLockOutViewController alloc] initWithEnvironmentConfiguration:v11];
    lockOutViewController = v15->_lockOutViewController;
    v15->_lockOutViewController = v41;

    [(DBLockOutViewController *)v15->_lockOutViewController setDelegate:v15];
    [(DBLockOutWindow *)v15->_lockOutWindow setRootViewController:v15->_lockOutViewController];
    [(DBLockOutWindow *)v15->_lockOutWindow setHidden:1];
  }

  return v15;
}

- (void)updateLockOutModeAnimated:(BOOL)a3 takeScreen:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v7 = [(DBLockOutController *)self environmentConfiguration];
  v8 = [v7 thermalMonitor];
  v9 = [v8 isThermalBlocked];

  if (v9)
  {
    v10 = 4;
    goto LABEL_15;
  }

  v11 = [(DBLockOutController *)self keybagMonitor];
  if ([v11 isLocked])
  {
    v12 = [(DBLockOutController *)self environmentConfiguration];
    v13 = [v12 isPairedVehicle];

    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = [(DBLockOutController *)self keybagMonitor];
  v15 = [v14 isBlocked];

  if (v15)
  {
LABEL_8:
    v10 = 2;
    goto LABEL_15;
  }

  v16 = [(DBLockOutController *)self siriMonitor];
  v17 = [v16 siriEnabled];

  if (v17)
  {
    v18 = [(DBLockOutController *)self buddyMonitor];
    v19 = [v18 buddyFinished];

    if (v19)
    {
      v20 = [(DBLockOutController *)self disclosureMonitor];
      v21 = [v20 active];

      if (v21)
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
        v41 = [(DBLockOutController *)self overlayStateMonitor];
        v42 = [v41 lockOut];

        if (v42)
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

  v25 = [(DBLockOutController *)self lockOutMode];
  [(DBLockOutController *)self setLockOutMode:v10];
  if ([(DBLockOutController *)self isLockedOut])
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  v27 = [(DBLockOutController *)self dashboardStateProvider];
  [v27 setLockoutState:v26];

  v28 = [(DBLockOutController *)self delegate];
  [v28 lockOutController:self didChangeFromLockoutMode:v25 toLockOutMode:v10 animated:v5 takeScreen:v4];

  if ([(DBLockOutController *)self isLockedOut])
  {
    v29 = [(DBLockOutController *)self lockOutLayoutElementAssertion];
    if (v29)
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
      v38 = [(DBLockOutController *)self environmentConfiguration];
      v39 = [v38 displayLayoutPublisher];
      v40 = [v39 addElement:v37];
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
    v30 = [(DBLockOutController *)self lockOutLayoutElementAssertion];

    if (v30)
    {
      v31 = DBLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "Invalidating layout element for lock out screen", &v43, 2u);
      }

      v32 = [(DBLockOutController *)self lockOutLayoutElementAssertion];
      [v32 invalidate];

      [(DBLockOutController *)self setLockOutLayoutElementAssertion:0];
    }
  }

  if (v22)
  {
LABEL_35:
    lockOutWindow = self->_lockOutWindow;
    v34 = [(DBLockOutController *)self _windowBackgroundColorForCurrentMode];
    [(DBLockOutWindow *)lockOutWindow setBackgroundColor:v34];
  }
}

- (void)invalidate
{
  v3 = [(DBLockOutController *)self lockOutWindow];
  [v3 setHidden:1];

  [(DBLockOutController *)self setLockOutWindow:0];
  [(DBLockOutController *)self setLockOutViewController:0];
  v4 = [(DBLockOutController *)self lockOutLayoutElementAssertion];

  if (v4)
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating layout element for lock out screen", v7, 2u);
    }

    v6 = [(DBLockOutController *)self lockOutLayoutElementAssertion];
    [v6 invalidate];

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
  v2 = [(DBLockOutController *)self lockOutMode];
  if (v2 == 1)
  {
    v3 = [MEMORY[0x277D75348] blackColor];
  }

  else if (v2 == 9)
  {
    v3 = 0;
  }

  else
  {
    if (v2 == 10)
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] tableBackgroundColor];
    }
    v3 = ;
  }

  return v3;
}

- (BOOL)_shouldLockoutForHello
{
  v3 = [(DBLockOutController *)self environmentConfiguration];
  if (![v3 supportsGaugeCluster])
  {
    goto LABEL_5;
  }

  v4 = [(DBLockOutController *)self environmentConfiguration];
  v5 = [v4 supportsDisplayPlugin];

  if (!v5)
  {
    return 0;
  }

  v6 = [(DBLockOutController *)self environmentConfiguration];
  v3 = [v6 vehicle];

  if (v3)
  {
    v7 = [v3 finishedWelcome];
    v8 = v7 == 0;
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
  v3 = [(DBLockOutController *)self environmentConfiguration];
  if ([v3 supportsGaugeCluster])
  {
    v4 = [(DBLockOutController *)self environmentConfiguration];
    v5 = [v4 supportsDisplayPlugin];

    if (v5)
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
  v3 = [(DBLockOutController *)self environmentConfiguration];
  if ([v3 supportsGaugeCluster])
  {
    v4 = [(DBLockOutController *)self environmentConfiguration];
    v5 = [v4 supportsDisplayPlugin];

    if (v5)
    {
      return ![(DBLockOutController *)self mainAssetForegrounded];
    }
  }

  else
  {
  }

  return 0;
}

- (void)keybagMonitorLockStateDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DBLockOutController_keybagMonitorLockStateDidChange___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)thermalMonitorLevelDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__DBLockOutController_thermalMonitorLevelDidChange___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)disclosureMonitorDidChangeActive:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DBLockOutController_disclosureMonitorDidChangeActive___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)registerAutomakerOverlayStateMonitor:(id)a3
{
  v4 = a3;
  v5 = [(DBLockOutController *)self overlayStateMonitor];
  [v5 registerObserver:v4];
}

- (id)wallpaperViewForLockOutViewController:(id)a3
{
  v4 = [(DBLockOutController *)self delegate];
  v5 = [v4 wallpaperViewForLockOutController:self];

  return v5;
}

- (void)lockOutViewController:(id)a3 didTapButtonOfType:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 1001)
  {
    if (a4 == 1004)
    {
      v10 = DBLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_INFO, "[LockOut] Action: features off", v12, 2u);
      }

      v7 = [(DBLockOutController *)self disclosureMonitor];
      [v7 turnFeaturesOff];
      goto LABEL_19;
    }

    if (a4 == 1003)
    {
      v11 = DBLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_INFO, "[LockOut] Action: disclosure safe", v13, 2u);
      }

      v7 = [(DBLockOutController *)self disclosureMonitor];
      [v7 markSafe];
      goto LABEL_19;
    }

    if (a4 != 1002)
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

    v7 = [(DBLockOutController *)self environmentConfiguration];
    v9 = [v7 session];
    [v9 requestCarUI];

LABEL_19:
    goto LABEL_20;
  }

  if (a4 == 1000)
  {
    goto LABEL_10;
  }

  if (a4 == 1001)
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_INFO, "[LockOut] Action: enabling siri", buf, 2u);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)lockOutViewControllerWantsToDismiss:(id)a3
{
  if ([a3 lockOutMode] == 9)
  {
    [(DBLockOutController *)self _markHelloCompleted];
  }

  [(DBLockOutController *)self updateLockOutModeAnimated:1];
}

- (void)environmentConfigurationPairedVehiclesDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__DBLockOutController_environmentConfigurationPairedVehiclesDidChange___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)siriMonitorDidChangeEnabled:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DBLockOutController_siriMonitorDidChangeEnabled___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)buddyMonitorDidChangeFinished:(id)a3
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
  v2 = [(DBLockOutController *)self environmentConfiguration];
  v4 = [v2 vehicle];

  [v4 setFinishedWelcome:MEMORY[0x277CBEC38]];
  v3 = objc_alloc_init(MEMORY[0x277CF8A68]);
  [v3 saveVehicle:v4 completion:&__block_literal_global_29];
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