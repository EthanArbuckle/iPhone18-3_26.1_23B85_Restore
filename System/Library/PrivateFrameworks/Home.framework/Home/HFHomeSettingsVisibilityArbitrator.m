@interface HFHomeSettingsVisibilityArbitrator
+ (id)homeManagerConfigurationWithExpandedOptions:(BOOL)a3;
+ (void)initialize;
- (HFHomeSettingsVisibilityArbitrator)init;
- (void)_queryHomeAppInstallStateWithCompletion:(id)a3;
- (void)_reloadVisibilityStateIncludingInstallState:(BOOL)a3;
- (void)_startListeningForManagedConfigurationChanges;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
- (void)setVisibilityState:(unint64_t)a3;
@end

@implementation HFHomeSettingsVisibilityArbitrator

+ (id)homeManagerConfigurationWithExpandedOptions:(BOOL)a3
{
  if (a3)
  {
    v3 = 4075;
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_alloc(MEMORY[0x277CD1C60]) initWithOptions:v3 cachePolicy:1];
  [v4 setDiscretionary:1];
  [v4 setAdaptive:1];

  return v4;
}

+ (void)initialize
{
  v2 = [a1 homeManagerConfigurationWithExpandedOptions:0];
  [HFHomeKitDispatcher setConfiguration:v2];
}

- (HFHomeSettingsVisibilityArbitrator)init
{
  v15.receiver = self;
  v15.super_class = HFHomeSettingsVisibilityArbitrator;
  v2 = [(HFHomeSettingsVisibilityArbitrator *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_visibilityState = 0;
    v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v4 addObserver:v3];

    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    [v5 addHomeManagerObserver:v3];

    objc_initWeak(&location, v3);
    v6 = *MEMORY[0x277CD02E8];
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__HFHomeSettingsVisibilityArbitrator_init__block_invoke;
    handler[3] = &unk_277DF3CC8;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch(v6, &v3->_homeKitPreferencesChangeNotifyToken, v7, handler);

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__HFHomeSettingsVisibilityArbitrator_init__block_invoke_2;
    v10[3] = &unk_277DF4460;
    objc_copyWeak(&v11, &location);
    [(HFHomeSettingsVisibilityArbitrator *)v3 _queryHomeAppInstallStateWithCompletion:v10];
    [(HFHomeSettingsVisibilityArbitrator *)v3 _startListeningForManagedConfigurationChanges];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __42__HFHomeSettingsVisibilityArbitrator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadVisibilityStateIncludingInstallState:0];
}

void __42__HFHomeSettingsVisibilityArbitrator_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadVisibilityStateIncludingInstallState:0];
}

- (void)dealloc
{
  notify_cancel([(HFHomeSettingsVisibilityArbitrator *)self homeKitPreferencesChangeNotifyToken]);
  v3.receiver = self;
  v3.super_class = HFHomeSettingsVisibilityArbitrator;
  [(HFHomeSettingsVisibilityArbitrator *)&v3 dealloc];
}

- (void)setVisibilityState:(unint64_t)a3
{
  if (self->_visibilityState != a3)
  {
    self->_visibilityState = a3;
    v5 = [(HFHomeSettingsVisibilityArbitrator *)self visibilityStateChangeHandler];

    if (v5)
    {
      v6 = [(HFHomeSettingsVisibilityArbitrator *)self visibilityStateChangeHandler];
      v6[2](v6, a3);
    }
  }
}

- (void)_reloadVisibilityStateIncludingInstallState:(BOOL)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [(HFHomeSettingsVisibilityArbitrator *)self setHomesConfigured:CFPreferencesGetAppBooleanValue(@"kHomesConfigured", @"com.apple.homed", 0) != 0];
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"kIncomingInvitesPresent", @"com.apple.homed", 0);
    v6 = CFPreferencesGetAppBooleanValue(@"kDisplayResetButton", @"com.apple.HomeSettings", 0);
    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromSelector(a2);
      *location = 138413314;
      *&location[4] = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 1024;
      v24 = [(HFHomeSettingsVisibilityArbitrator *)self homesConfigured];
      v25 = 1024;
      v26 = AppBooleanValue != 0;
      v27 = 1024;
      v28 = v6 != 0;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ homesConfigured: %{BOOL}d invitesExist: %{BOOL}d displayResetButton: %{BOOL}d", location, 0x28u);
    }

    if (v6)
    {
      v10 = 1;
LABEL_22:
      [(HFHomeSettingsVisibilityArbitrator *)self setVisibilityState:v10];
      goto LABEL_23;
    }

    v11 = [(HFHomeSettingsVisibilityArbitrator *)self homeAppInstallState]== 2;
    v12 = [(HFHomeSettingsVisibilityArbitrator *)self homesConfigured];
    if (v11)
    {
      if (AppBooleanValue)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (v13 != 1)
      {
        v10 = 2;
        goto LABEL_22;
      }

      v14 = [objc_opt_class() homeManagerConfigurationWithExpandedOptions:1];
      v15 = +[HFHomeKitDispatcher sharedDispatcher];
      [v15 updateHomeManagerConfiguration:v14];

      v10 = 1;
    }

    else
    {
      if (!v12)
      {
        v10 = 0;
        goto LABEL_22;
      }

      v16 = +[HFHomeKitDispatcher sharedDispatcher];
      v14 = [v16 homeManager];

      if (v14)
      {
        if ([v14 isThisDeviceResidentCapable])
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    goto LABEL_22;
  }

  objc_initWeak(location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HFHomeSettingsVisibilityArbitrator__reloadVisibilityStateIncludingInstallState___block_invoke;
  v18[3] = &unk_277DF4460;
  objc_copyWeak(&v19, location);
  [(HFHomeSettingsVisibilityArbitrator *)self _queryHomeAppInstallStateWithCompletion:v18];
  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
}

void __82__HFHomeSettingsVisibilityArbitrator__reloadVisibilityStateIncludingInstallState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadVisibilityStateIncludingInstallState:0];
}

- (void)_startListeningForManagedConfigurationChanges
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HFHomeSettingsVisibilityArbitrator__startListeningForManagedConfigurationChanges__block_invoke_2;
  block[3] = &unk_277DFF168;
  v3 = &__block_literal_global_195;
  if (_startListeningForManagedConfigurationChanges_once != -1)
  {
    dispatch_once(&_startListeningForManagedConfigurationChanges_once, block);
  }
}

void __83__HFHomeSettingsVisibilityArbitrator__startListeningForManagedConfigurationChanges__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(17, 0);
  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &_startListeningForManagedConfigurationChanges_token, v2, *(a1 + 32));
}

- (void)_queryHomeAppInstallStateWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HFHomeSettingsVisibilityArbitrator__queryHomeAppInstallStateWithCompletion___block_invoke;
  block[3] = &unk_277DF9610;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __78__HFHomeSettingsVisibilityArbitrator__queryHomeAppInstallStateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.Home"];
  v3 = [v2 appState];
  v4 = [v3 isInstalled];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HFHomeSettingsVisibilityArbitrator__queryHomeAppInstallStateWithCompletion___block_invoke_2;
  block[3] = &unk_277E00250;
  objc_copyWeak(&v7, (a1 + 40));
  v8 = v4;
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v7);
}

uint64_t __78__HFHomeSettingsVisibilityArbitrator__queryHomeAppInstallStateWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setHomeAppInstallState:v2];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HFHomeSettingsVisibilityArbitrator_applicationsDidUninstall___block_invoke;
  v6[3] = &unk_277DF3370;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __63__HFHomeSettingsVisibilityArbitrator_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) indexOfObjectPassingTest:&__block_literal_global_26_2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) setHomeAppInstallState:2];
    v3 = *(a1 + 40);

    return [v3 _reloadVisibilityStateIncludingInstallState:0];
  }

  return result;
}

uint64_t __63__HFHomeSettingsVisibilityArbitrator_applicationsDidUninstall___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 applicationIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Home"];

  return v3;
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HFHomeSettingsVisibilityArbitrator_applicationsDidInstall___block_invoke;
  v6[3] = &unk_277DF3370;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __61__HFHomeSettingsVisibilityArbitrator_applicationsDidInstall___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) indexOfObjectPassingTest:&__block_literal_global_28_7];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) setHomeAppInstallState:1];
    v3 = *(a1 + 40);

    return [v3 _reloadVisibilityStateIncludingInstallState:0];
  }

  return result;
}

uint64_t __61__HFHomeSettingsVisibilityArbitrator_applicationsDidInstall___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 applicationIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Home"];

  return v3;
}

@end