@interface MCUIBundleController
+ (id)_sharedInstance;
+ (id)mcuiTitle;
- (BOOL)_swizzlingFromSpecifier:(id)a3;
- (BOOL)_updateTopLevelSpecifier;
- (MCUIBundleController)initWithParentListController:(id)a3 properties:(id)a4;
- (PSListController)parentController;
- (PSSpecifier)specifier;
- (id)_detailsFromSpecifier:(id)a3;
- (id)_initWithDataManager:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)_mcuiUpdated;
- (void)_reloadTopLevelSpecifier;
- (void)dealloc;
- (void)unload;
@end

@implementation MCUIBundleController

- (id)_initWithDataManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MCUIBundleController;
  v6 = [(MCUIBundleController *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_create("MCUIBundleController_dispatch_queue", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_dataManager, a3);
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v6 selector:sel__mcuiUpdated name:@"kMCUIUpdatedNotification" object:0];
  }

  return v6;
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[MCUIBundleController _sharedInstance];
  }

  v3 = _sharedInstance_sharedInstance;

  return v3;
}

void __39__MCUIBundleController__sharedInstance__block_invoke()
{
  v0 = [MCUIBundleController alloc];
  v3 = +[MCUIDataManager sharedManager];
  v1 = [(MCUIBundleController *)v0 _initWithDataManager:v3];
  v2 = _sharedInstance_sharedInstance;
  _sharedInstance_sharedInstance = v1;
}

- (MCUIBundleController)initWithParentListController:(id)a3 properties:(id)a4
{
  v5 = a3;
  v6 = +[MCUIBundleController _sharedInstance];
  v7 = [v6 queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__MCUIBundleController_initWithParentListController_properties___block_invoke;
  v13[3] = &unk_279861C40;
  v8 = v6;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  dispatch_async_and_wait(v7, v13);

  v10 = v15;
  v11 = v8;

  return v11;
}

id __64__MCUIBundleController_initWithParentListController_properties___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setParentController:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 32) + *MEMORY[0x277D3FBE0]);

  return objc_storeWeak(v3, v2);
}

- (void)unload
{
  NSLog(&cfstr_McuiBundleCont.isa, a2);
  v3 = [(MCUIBundleController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MCUIBundleController_unload__block_invoke;
  block[3] = &unk_279861968;
  block[4] = self;
  dispatch_async_and_wait(v3, block);
}

- (void)dealloc
{
  NSLog(&cfstr_McuiBundleCont_0.isa, a2);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = MCUIBundleController;
  [(MCUIBundleController *)&v5 dealloc];
}

+ (id)mcuiTitle
{
  v2 = +[MCUIWatchManager shared];

  if (v2)
  {
    v3 = +[MCUIWatchManager shared];
    if ([v3 profileCount] == 1)
    {
      v4 = @"SINGULAR_BLOBS_DESIGNATION";
    }

    else
    {
      v4 = @"PLURAL_BLOBS_DESIGNATION";
    }

    v5 = MCUILocalizedString(v4);
  }

  else
  {
    if (ne_session_dns_settings_configs_present())
    {
      v6 = @"DEVICE_MANAGEMENT_VPN_DNS";
    }

    else
    {
      v6 = @"DEVICE_MANAGEMENT_VPN";
    }

    v5 = MCUILocalizedString(v6);
  }

  return v5;
}

- (PSSpecifier)specifier
{
  v3 = [(MCUIBundleController *)self dataManager];
  v4 = [v3 isDeviceManagementHidden];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    specifier = self->_specifier;
    if (!specifier)
    {
      v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:sel__detailsFromSpecifier_ detail:objc_opt_class() cell:2 edit:0];
      v8 = self->_specifier;
      self->_specifier = v7;

      [(PSSpecifier *)self->_specifier setIdentifier:*MEMORY[0x277D24D68]];
      specifier = self->_specifier;
    }

    v5 = specifier;
  }

  return v5;
}

- (id)_detailsFromSpecifier:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:@"kMCUISpecifierDetails"];

  return v4;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MCUIBundleController *)self dataManager];
  v6 = [v5 isDeviceManagementHidden];

  if (v6)
  {
    NSLog(&cfstr_McuiBundleCont_1.isa);
LABEL_3:
    v7 = 0;
    goto LABEL_7;
  }

  if (![(MCUIBundleController *)self _updateTopLevelSpecifier]&& ![(MCUIBundleController *)self _swizzlingFromSpecifier:v4])
  {
    NSLog(&cfstr_McuiBundleCont_3.isa);
    goto LABEL_3;
  }

  v8 = [(MCUIBundleController *)self specifier];
  v9 = [v8 name];
  v10 = [(MCUIBundleController *)self specifier];
  v11 = [v10 userInfo];
  NSLog(&cfstr_McuiBundleCont_2.isa, v9, v11);

  v12 = [(MCUIBundleController *)self specifier];
  v15[0] = v12;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_swizzlingFromSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"URLDictionary"];
  NSLog(&cfstr_McuiBundleCont_4.isa, v3);
  if (v3)
  {
    v4 = [v3 objectForKey:@"path"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 pathComponents];
      if ([v6 count])
      {
        v7 = [v6 objectAtIndex:0];
        v8 = [v7 isEqualToString:*MEMORY[0x277D24D68]];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      NSLog(&cfstr_McuiBundleCont_5.isa);
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_updateTopLevelSpecifier
{
  v3 = +[MCUIWatchManager shared];

  if (v3)
  {
    v4 = +[MCUIWatchManager shared];
    v5 = [v4 profileCount];

    v6 = MEMORY[0x277CCABB8];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v8 = [v6 localizedStringFromNumber:v7 numberStyle:0];

    v9 = v5 > 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  v10 = [(MCUIBundleController *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__MCUIBundleController__updateTopLevelSpecifier__block_invoke;
  v13[3] = &unk_279861C40;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  dispatch_async_and_wait(v10, v13);

  return v9;
}

void __48__MCUIBundleController__updateTopLevelSpecifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specifier];
  v3 = +[MCUIBundleController mcuiTitle];
  [v2 setName:v3];

  v4 = [*(a1 + 32) specifier];
  v5 = [v4 userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v10 = v7;

  if (*(a1 + 40))
  {
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = &stru_286946728;
  }

  [v10 setObject:v8 forKey:@"kMCUISpecifierDetails"];
  v9 = [*(a1 + 32) specifier];
  [v9 setUserInfo:v10];
}

- (void)_mcuiUpdated
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__MCUIBundleController__mcuiUpdated__block_invoke;
  v2[3] = &unk_279861990;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __36__MCUIBundleController__mcuiUpdated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 3);

    if (v2)
    {
      v3 = [v5 dataManager];
      v4 = [v3 isDeviceManagementHidden];

      if (v4)
      {
        NSLog(&cfstr_McuiBundleCont_7.isa);
      }

      else
      {
        [v5 _reloadTopLevelSpecifier];
      }
    }

    else
    {
      NSLog(&cfstr_McuiBundleCont_6.isa);
    }

    WeakRetained = v5;
  }
}

- (void)_reloadTopLevelSpecifier
{
  [(MCUIBundleController *)self _updateTopLevelSpecifier];
  v3 = *MEMORY[0x277D24D68];
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v5 = [WeakRetained specifierForID:v3];

  if (v5)
  {
    NSLog(&cfstr_McuiBundleCont_8.isa, v3);
    v6 = objc_loadWeakRetained(&self->_parentController);
    [v6 reloadSpecifierID:v3 animated:1];
  }

  else
  {
    NSLog(&cfstr_McuiBundleCont_9.isa, v3);
    v6 = objc_loadWeakRetained(&self->_parentController);
    [v6 reloadSpecifiers];
  }
}

- (PSListController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end