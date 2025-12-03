@interface CSMagSafeAccessorySleeveViewController
- (BOOL)handleEvent:(id)event;
- (CGRect)visibleBounds;
- (CSMagSafeAccessorySleeveViewController)initWithAccessory:(id)accessory;
- (id)_legibilitySettingsForAccessory:(id)accessory;
- (void)_removeOverrideFloor;
- (void)_updateOverrideFloor;
- (void)connectedDevicesDidChange:(id)change;
- (void)setDateProvider:(id)provider;
- (void)setLegibilitySettings:(id)settings;
- (void)setVisibleBounds:(CGRect)bounds;
- (void)updateFont:(id)font textColor:(id)color vibrancyConfiguration:(id)configuration numberingSystem:(id)system;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CSMagSafeAccessorySleeveViewController

- (CSMagSafeAccessorySleeveViewController)initWithAccessory:(id)accessory
{
  v12.receiver = self;
  v12.super_class = CSMagSafeAccessorySleeveViewController;
  v3 = [(CSMagSafeAccessoryViewController *)&v12 initWithAccessory:accessory];
  if (v3)
  {
    v4 = [CSMagSafeAccessorySleeveView alloc];
    v5 = [(CSMagSafeAccessorySleeveView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    sleeveView = v3->_sleeveView;
    v3->_sleeveView = v5;

    v3->_chargingAnimationVisible = 0;
    v7 = objc_alloc_init(MEMORY[0x277D65EB8]);
    dateViewController = v3->_dateViewController;
    v3->_dateViewController = v7;

    v9 = objc_alloc_init(MEMORY[0x277D65EB8]);
    secondaryDateViewController = v3->_secondaryDateViewController;
    v3->_secondaryDateViewController = v9;
  }

  return v3;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CSMagSafeAccessorySleeveViewController;
  [(CSCoverSheetViewControllerBase *)&v19 viewDidLoad];
  accessory = [(CSMagSafeAccessoryViewController *)self accessory];
  v4 = [(CSMagSafeAccessorySleeveViewController *)self _legibilitySettingsForAccessory:accessory];

  view = [(CSMagSafeAccessorySleeveViewController *)self view];
  [view addSubview:self->_sleeveView];

  dateView = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
  [dateView setLegibilitySettings:self->_legibilitySettings];

  [(SBFLockScreenDateViewController *)self->_dateViewController setRestrictsVibrancy:1];
  dateView2 = [(SBFLockScreenDateViewController *)self->_secondaryDateViewController dateView];
  [dateView2 setLegibilitySettings:v4];

  [(SBFLockScreenDateViewController *)self->_secondaryDateViewController setRestrictsVibrancy:1];
  objc_initWeak(&location, self);
  dateViewController = self->_dateViewController;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__CSMagSafeAccessorySleeveViewController_viewDidLoad__block_invoke;
  v15[3] = &unk_27838DB90;
  objc_copyWeak(&v17, &location);
  v9 = v4;
  v16 = v9;
  [(CSMagSafeAccessorySleeveViewController *)self bs_addChildViewController:dateViewController animated:0 transitionBlock:v15];
  secondaryDateViewController = self->_secondaryDateViewController;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__CSMagSafeAccessorySleeveViewController_viewDidLoad__block_invoke_2;
  v12[3] = &unk_27838DB90;
  objc_copyWeak(&v14, &location);
  v11 = v9;
  v13 = v11;
  [(CSMagSafeAccessorySleeveViewController *)self bs_addChildViewController:secondaryDateViewController animated:0 transitionBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __53__CSMagSafeAccessorySleeveViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained sleeveView];
  v5 = [WeakRetained dateViewController];
  v6 = [v5 dateView];
  [v4 setDateView:v6];

  v7 = [WeakRetained sleeveView];
  [WeakRetained visibleBounds];
  [v7 setVisibleWindowFrame:?];

  v8 = [WeakRetained sleeveView];
  [v8 setLegibilitySettings:*(a1 + 32)];

  v3[2](v3);
}

void __53__CSMagSafeAccessorySleeveViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained sleeveView];
  v5 = [WeakRetained secondaryDateViewController];
  v6 = [v5 dateView];
  [v4 setSecondaryDateView:v6];

  v7 = [WeakRetained sleeveView];
  [WeakRetained visibleBounds];
  [v7 setVisibleWindowFrame:?];

  v8 = [WeakRetained sleeveView];
  [v8 setLegibilitySettings:*(a1 + 32)];

  v3[2](v3);
}

- (id)_legibilitySettingsForAccessory:(id)accessory
{
  v3 = MEMORY[0x277D760A8];
  accessoryCopy = accessory;
  v5 = [v3 alloc];
  primaryColor = [accessoryCopy primaryColor];
  secondaryColor = [accessoryCopy secondaryColor];

  v8 = [v5 initWithStyle:1 primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:0];

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = CSMagSafeAccessorySleeveViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewWillAppear:?];
  [(CSMagSafeAccessorySleeveViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_dateViewController toVisible:1 animated:appearCopy];
  if (!self->_batteryDeviceController)
  {
    v5 = objc_alloc_init(MEMORY[0x277CF0DB0]);
    batteryDeviceController = self->_batteryDeviceController;
    self->_batteryDeviceController = v5;

    [(BCBatteryDeviceController *)self->_batteryDeviceController addBatteryDeviceObserver:self queue:MEMORY[0x277D85CD0]];
  }

  [(CSMagSafeAccessorySleeveViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_secondaryDateViewController toVisible:1 animated:appearCopy];
  [(CSMagSafeAccessorySleeveViewController *)self _updateOverrideFloor];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CSMagSafeAccessorySleeveViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:appear];
  [(CSMagSafeAccessorySleeveViewController *)self bs_endAppearanceTransitionForChildViewController:self->_dateViewController];
  [(CSMagSafeAccessorySleeveViewController *)self bs_endAppearanceTransitionForChildViewController:self->_secondaryDateViewController];
  sleeveView = self->_sleeveView;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CSMagSafeAccessorySleeveViewController_viewDidAppear___block_invoke;
  v5[3] = &unk_27838B770;
  v5[4] = self;
  [(CSMagSafeAccessorySleeveView *)sleeveView performAnimation:0 completionHandler:v5];
}

void __56__CSMagSafeAccessorySleeveViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CSAction actionWithType:3];
  [v1 sendAction:v2];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = CSMagSafeAccessorySleeveViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewWillDisappear:?];
  [(CSMagSafeAccessorySleeveViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_dateViewController toVisible:0 animated:disappearCopy];
  [(CSMagSafeAccessorySleeveViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_secondaryDateViewController toVisible:0 animated:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CSMagSafeAccessorySleeveViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:disappear];
  [(CSMagSafeAccessorySleeveViewController *)self bs_endAppearanceTransitionForChildViewController:self->_dateViewController];
  [(CSMagSafeAccessorySleeveViewController *)self bs_endAppearanceTransitionForChildViewController:self->_secondaryDateViewController];
  batteryDeviceController = self->_batteryDeviceController;
  if (batteryDeviceController)
  {
    [(BCBatteryDeviceController *)batteryDeviceController removeBatteryDeviceObserver:self];
    v5 = self->_batteryDeviceController;
    self->_batteryDeviceController = 0;
  }

  [(CSMagSafeAccessorySleeveViewController *)self _removeOverrideFloor];
}

- (void)setDateProvider:(id)provider
{
  dateViewController = self->_dateViewController;
  providerCopy = provider;
  [(SBFLockScreenDateViewController *)dateViewController setDateProvider:providerCopy];
  [(SBFLockScreenDateViewController *)self->_secondaryDateViewController setDateProvider:providerCopy];
}

- (void)setVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(CSMagSafeAccessorySleeveView *)self->_sleeveView visibleWindowFrame];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v10, v11))
  {
    self->_visibleBounds.origin.x = x;
    self->_visibleBounds.origin.y = y;
    self->_visibleBounds.size.width = width;
    self->_visibleBounds.size.height = height;
    sleeveView = self->_sleeveView;

    [(CSMagSafeAccessorySleeveView *)sleeveView setVisibleWindowFrame:x, y, width, height];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v11 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    dateViewIfExists = [(SBFLockScreenDateViewController *)self->_dateViewController dateViewIfExists];
    [dateViewIfExists setLegibilitySettings:self->_legibilitySettings];

    accessory = [(CSMagSafeAccessoryViewController *)self accessory];
    v8 = [(CSMagSafeAccessorySleeveViewController *)self _legibilitySettingsForAccessory:accessory];

    dateViewIfExists2 = [(SBFLockScreenDateViewController *)self->_secondaryDateViewController dateViewIfExists];
    [dateViewIfExists2 setLegibilitySettings:v8];

    sleeveView = [(CSMagSafeAccessorySleeveViewController *)self sleeveView];
    [sleeveView setLegibilitySettings:v8];

    settingsCopy = v11;
  }
}

- (void)updateFont:(id)font textColor:(id)color vibrancyConfiguration:(id)configuration numberingSystem:(id)system
{
  dateViewController = self->_dateViewController;
  systemCopy = system;
  configurationCopy = configuration;
  colorCopy = color;
  fontCopy = font;
  dateView = [(SBFLockScreenDateViewController *)dateViewController dateView];
  [dateView setVibrancyConfiguration:configurationCopy];

  dateView2 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
  [dateView2 setTextColor:colorCopy];

  dateView3 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
  [dateView3 setCustomTimeFont:fontCopy];

  dateView4 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
  [dateView4 setCustomTimeNumberingSystem:systemCopy];

  dateView5 = [(SBFLockScreenDateViewController *)self->_secondaryDateViewController dateView];
  [dateView5 setVibrancyConfiguration:configurationCopy];

  dateView6 = [(SBFLockScreenDateViewController *)self->_secondaryDateViewController dateView];
  [dateView6 setCustomTimeFont:fontCopy];

  dateView7 = [(SBFLockScreenDateViewController *)self->_secondaryDateViewController dateView];
  [dateView7 setCustomTimeNumberingSystem:systemCopy];
}

- (BOOL)handleEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CSMagSafeAccessorySleeveViewController;
  eventCopy = event;
  [(CSMagSafeAccessoryViewController *)&v7 handleEvent:eventCopy];
  type = [eventCopy type];

  if (type == 24)
  {
    [(CSMagSafeAccessorySleeveViewController *)self _updateOverrideFloor];
    return 1;
  }

  if (type == 25)
  {
    [(CSMagSafeAccessorySleeveViewController *)self _removeOverrideFloor];
    return 1;
  }

  return 0;
}

- (void)connectedDevicesDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [changeCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(changeCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isInternal])
        {
          -[CSMagSafeAccessorySleeveViewController updateViewWithBatteryCharging:](self, "updateViewWithBatteryCharging:", [v9 isCharging]);
        }
      }

      v6 = [changeCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_updateOverrideFloor
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = +[CSLockScreenDomain rootSettings];
  chargingSettings = [v3 chargingSettings];

  if ([chargingSettings shouldUseBrightnessFloor])
  {
    if (!self->_brightnessClient)
    {
      v5 = objc_alloc_init(MEMORY[0x277CFD390]);
      brightnessClient = self->_brightnessClient;
      self->_brightnessClient = v5;
    }

    [chargingSettings brightnessFloor];
    v7 = self->_brightnessClient;
    *&v8 = v8;
    v11[0] = @"nits";
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v11[1] = @"period";
    v12[0] = v9;
    v12[1] = &unk_283079080;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(BrightnessSystemClient *)v7 setProperty:v10 forKey:@"MinNits"];
  }

  else
  {
    [(CSMagSafeAccessorySleeveViewController *)self _removeOverrideFloor];
  }
}

- (void)_removeOverrideFloor
{
  v5[2] = *MEMORY[0x277D85DE8];
  brightnessClient = self->_brightnessClient;
  v4[0] = @"nits";
  v4[1] = @"period";
  v5[0] = &unk_283079090;
  v5[1] = &unk_283079080;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [(BrightnessSystemClient *)brightnessClient setProperty:v3 forKey:@"MinNits"];
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end