@interface CSChargingViewController
- (BOOL)_hasBatteryPack;
- (BOOL)_isAppleMagSafePack:(id)a3;
- (BOOL)handleEvent:(id)a3;
- (CSChargingViewController)init;
- (CSChargingViewController)initWithChargingInfo:(id)a3;
- (double)durationBeforeDismissal;
- (void)_createNewChargingViewForDoubleBattery:(id)a3;
- (void)_updateChargingViewIfNecessary;
- (void)_updateChargingViewLegibility;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)connectedDevicesDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CSChargingViewController

- (CSChargingViewController)init
{
  v8.receiver = self;
  v8.super_class = CSChargingViewController;
  v2 = [(CSChargingViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0DB0]);
    batteryController = v2->_batteryController;
    v2->_batteryController = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    displayedBatteryDevices = v2->_displayedBatteryDevices;
    v2->_displayedBatteryDevices = v5;
  }

  return v2;
}

- (CSChargingViewController)initWithChargingInfo:(id)a3
{
  v5 = a3;
  v6 = [(CSChargingViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chargingInfo, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSChargingViewController;
  [(CSCoverSheetViewControllerBase *)&v3 viewDidLoad];
  [(CSChargingViewController *)self _updateChargingViewIfNecessary];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSChargingViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:a3];
  [(CSChargingViewController *)self _updateChargingViewLegibility];
  [(CSBatteryChargingView *)self->_chargingView performAnimation:0 completionHandler:0];
}

- (void)aggregateAppearance:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CSComponent statusBar];
  v6 = [v5 priority:40];
  v7 = [v6 hidden:1];
  [v4 addComponent:v7];

  v8 = +[CSComponent dateView];
  v9 = [v8 priority:40];
  v10 = [v9 hidden:1];
  [v4 addComponent:v10];

  v11 = +[CSComponent backgroundContent];
  v12 = [v11 priority:40];
  v13 = [v12 hidden:1];
  [v4 addComponent:v13];

  v14 = +[CSComponent pageContent];
  v15 = [v14 priority:40];
  v16 = [v15 hidden:1];
  [v4 addComponent:v16];

  v17 = +[CSComponent pageControl];
  v18 = [v17 priority:40];
  v19 = [v18 hidden:1];
  [v4 addComponent:v19];

  v20 = +[CSComponent proudLock];
  v21 = [v20 priority:40];
  v22 = [v21 hidden:1];
  [v4 addComponent:v22];

  v23 = +[CSComponent quickActions];
  v24 = [v23 priority:40];
  v25 = [v24 hidden:1];
  [v4 addComponent:v25];

  v26 = +[CSComponent controlCenterGrabber];
  v27 = [v26 priority:40];
  v28 = [v27 hidden:1];
  [v4 addComponent:v28];

  v29 = +[CSComponent poseidon];
  v30 = [v29 priority:40];
  v31 = [v30 hidden:1];
  [v4 addComponent:v31];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = self->_displayedBatteryDevices;
  v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v32);
        }

        if ([(CSChargingViewController *)self _isAppleMagSafePack:*(*(&v40 + 1) + 8 * i)])
        {

          v32 = +[CSComponent homeAffordance];
          v37 = [(NSMutableSet *)v32 priority:40];
          v38 = [v37 hidden:1];
          [v4 addComponent:v38];

          goto LABEL_11;
        }
      }

      v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v39.receiver = self;
  v39.super_class = CSChargingViewController;
  [(CSCoverSheetViewControllerBase *)&v39 aggregateAppearance:v4];
}

- (void)aggregateBehavior:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CSChargingViewController;
  [(CSCoverSheetViewControllerBase *)&v6 aggregateBehavior:v4];
  [v4 setIdleTimerMode:3];
  if ([(CSChargingViewController *)self _hasBatteryPack])
  {
    v5 = 4348;
  }

  else if ([(CSBatteryChargingInfo *)self->_chargingInfo isChargingWithInternalWirelessAccessory])
  {
    v5 = 4348;
  }

  else
  {
    v5 = 0x10000000;
  }

  [v4 setRestrictedCapabilities:v5];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CSChargingViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v7, sel_handleEvent_, v4) && ([v4 isConsumable] & 1) != 0)
  {
    v5 = [v4 isConsumable];
  }

  else
  {
    if ([v4 type] == 1)
    {
      [(CSChargingViewController *)self _updateChargingViewLegibility];
    }

    v5 = 0;
  }

  return v5;
}

- (void)_updateChargingViewLegibility
{
  chargingView = self->_chargingView;
  v4 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  v3 = [v4 legibilitySettings];
  [(CSBatteryChargingView *)chargingView setLegibilitySettings:v3];
}

- (double)durationBeforeDismissal
{
  if ([(CSBatteryChargingInfo *)self->_chargingInfo isChargingWithInternalWirelessAccessory])
  {
    v3 = [(CSBatteryChargingInfo *)self->_chargingInfo externalBatteryDevice];

    result = 3.65;
    if (v3)
    {
      return 4.75;
    }
  }

  else
  {
    v5 = [(CSChargingViewController *)self _hasBatteryPack];
    result = *MEMORY[0x277D66EE0];
    if (v5)
    {
      return 4.75;
    }
  }

  return result;
}

- (BOOL)_hasBatteryPack
{
  v3 = [(CSBatteryChargingInfo *)self->_chargingInfo externalBatteryDevice];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CSBatteryChargingInfo *)self->_chargingInfo externalBatteryDevice];
  v5 = [v4 accessoryCategory] == 4;

  v6 = [(CSBatteryChargingInfo *)self->_chargingInfo externalBatteryDevice];
  v7 = [(CSChargingViewController *)self _isAppleMagSafePack:v6];

  return v5 && v7;
}

- (void)connectedDevicesDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * v8) isPowerSource])
        {

          [(CSChargingViewController *)self _updateChargingViewIfNecessary];
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_updateChargingViewIfNecessary
{
  v24 = [(CSBatteryChargingInfo *)self->_chargingInfo externalBatteryDevice];
  v3 = +[CSLockScreenDomain rootSettings];
  v4 = [v3 chargingSettings];
  v5 = [v4 shouldFakeA149Attach];

  if (v5 && [(CSBatteryChargingInfo *)self->_chargingInfo isChargingWithInternalWirelessAccessory])
  {
    v6 = 1;
    v7 = 1;
    v8 = v24;
  }

  else
  {
    v9 = [(CSChargingViewController *)self _isAppleMagSafePack:v24];
    v8 = v24;
    v7 = v9;
    v6 = 0;
  }

  v10 = v8 != 0;
  v11 = [(CSBatteryChargingView *)self->_chargingView batteryCount]< 2;
  if ((!self->_chargingView || ((v10 ^ v11) & 1) == 0) && ([(NSMutableSet *)self->_displayedBatteryDevices containsObject:v24]& 1) == 0)
  {
    if (v7)
    {
      kdebug_trace();
      kdebug_trace();
    }

    if (v24)
    {
      [(NSMutableSet *)self->_displayedBatteryDevices addObject:v24];
    }

    [(CSChargingViewController *)self _createNewChargingViewForDoubleBattery:?];
  }

  v12 = [(BCBatteryDeviceController *)self->_batteryController sb_deviceInternalBattery];
  chargingView = self->_chargingView;
  v14 = CSChargePercentageLabelForBattery(v12);
  [(CSBatteryChargingView *)chargingView setPrimaryBatteryText:v14 forBattery:v12];

  if (v24)
  {
    v15 = 1;
  }

  else
  {
    v15 = v6;
  }

  if (v15 == 1)
  {
    if (v6)
    {
      v16 = v12;
    }

    else
    {
      v16 = v24;
    }

    if (v7)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = MEMORY[0x277CCA8D8];
      v19 = v16;
      v20 = [v18 bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"BATTERY_PACK_CHARGE" value:&stru_28302FDA0 table:@"CoverSheet"];
      v22 = CSSimpleChargePercentageLabelForBattery(v19);
      v23 = [v17 stringWithFormat:v21, v22];
    }

    else
    {
      v23 = CSChargePercentageLabelForBattery(v16);
    }

    [(CSBatteryChargingView *)self->_chargingView setSecondaryBatteryText:v23 forBattery:v16];
  }
}

- (void)_createNewChargingViewForDoubleBattery:(id)a3
{
  v17 = a3;
  [(CSBatteryChargingView *)self->_chargingView removeFromSuperview];
  [(CSCoverSheetViewControllerBase *)self unregisterView:self->_chargingView];
  chargingView = self->_chargingView;
  self->_chargingView = 0;

  v5 = [(CSChargingViewController *)self _isAppleMagSafePack:v17];
  if (v17 && !v5)
  {
    v6 = +[CSBatteryChargingView batteryChargingViewWithDoubleBattery];
LABEL_4:
    v7 = v6;
    goto LABEL_12;
  }

  if ([(CSBatteryChargingInfo *)self->_chargingInfo isChargingWithInternalWirelessAccessory])
  {
    kdebug_trace();
    v8 = +[CSLockScreenDomain rootSettings];
    v9 = [v8 chargingSettings];
    v10 = [v9 shouldFakeA149Attach];

    if ((v5 | v10))
    {
      +[CSMagSafeAccessoryConfiguration batteryCaseConfiguration];
    }

    else
    {
      +[CSMagSafeAccessoryConfiguration defaultConfiguration];
    }
    v12 = ;
    v7 = [CSBatteryChargingView batteryChargingRingViewWithConfiguration:v12];

    goto LABEL_12;
  }

  if (!v5)
  {
    v6 = +[CSBatteryChargingView batteryChargingViewWithSingleBattery];
    goto LABEL_4;
  }

  v11 = +[CSMagSafeAccessoryConfiguration batteryCaseConfiguration];
  v7 = [CSBatteryChargingView batteryChargingRingViewWithConfiguration:v11 externalBattery:v17];

LABEL_12:
  [(CSBatteryChargingView *)v7 setBatteryVisible:1];
  v13 = [(CSChargingViewController *)self view];
  [v13 bounds];
  [(CSBatteryChargingView *)v7 setFrame:?];

  [(CSBatteryChargingView *)v7 setAutoresizingMask:18];
  v14 = [(CSChargingViewController *)self view];
  [v14 addSubview:v7];

  v15 = self->_chargingView;
  self->_chargingView = v7;
  v16 = v7;

  [(CSChargingViewController *)self _updateChargingViewLegibility];
  [(CSCoverSheetViewControllerBase *)self registerView:self->_chargingView forRole:2];
}

- (BOOL)_isAppleMagSafePack:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 productIdentifier];
  return v3 == *MEMORY[0x277CF0DB8] || v3 == *MEMORY[0x277CF0DC0];
}

@end