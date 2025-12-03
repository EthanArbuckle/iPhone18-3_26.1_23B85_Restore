@interface HFHomeAppInstallStateArbiter
+ (HFHomeAppInstallStateArbiter)sharedInstance;
- (BOOL)_fastPath_isHomeAppInstalled;
- (HFHomeAppInstallStateArbiter)init;
- (NAFuture)homeAppInstalledFuture;
- (NSURL)homeAppBundleURL;
- (void)_applications:(id)_applications didInstall:(BOOL)install;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation HFHomeAppInstallStateArbiter

+ (HFHomeAppInstallStateArbiter)sharedInstance
{
  if (_MergedGlobals_323 != -1)
  {
    dispatch_once(&_MergedGlobals_323, &__block_literal_global_3_35);
  }

  v3 = qword_280E03D78;

  return v3;
}

void __46__HFHomeAppInstallStateArbiter_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HFHomeAppInstallStateArbiter);
  v1 = qword_280E03D78;
  qword_280E03D78 = v0;
}

- (HFHomeAppInstallStateArbiter)init
{
  v7.receiver = self;
  v7.super_class = HFHomeAppInstallStateArbiter;
  v2 = [(HFHomeAppInstallStateArbiter *)&v7 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    if ([(HFHomeAppInstallStateArbiter *)v2 _fastPath_isHomeAppInstalled])
    {
      defaultWorkspace = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
      [(HFHomeAppInstallStateArbiter *)v2 setHomeAppInstalledFuture:defaultWorkspace];
    }

    else
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace addObserver:v2];
    }
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFHomeAppInstallStateArbiter *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFHomeAppInstallStateArbiter *)self observers];
  [observers removeObject:observerCopy];
}

- (NAFuture)homeAppInstalledFuture
{
  homeAppInstalledFuture = self->_homeAppInstalledFuture;
  if (!homeAppInstalledFuture)
  {
    v4 = MEMORY[0x277D2C900];
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v6 = [v4 futureWithBlock:&__block_literal_global_9_12 scheduler:globalAsyncScheduler];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v8 = [v6 reschedule:mainThreadScheduler];
    v9 = self->_homeAppInstalledFuture;
    self->_homeAppInstalledFuture = v8;

    homeAppInstalledFuture = self->_homeAppInstalledFuture;
  }

  return homeAppInstalledFuture;
}

void __54__HFHomeAppInstallStateArbiter_homeAppInstalledFuture__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CC1E60];
  v3 = a2;
  v4 = HFPlatformSpecificHomeAppBundleID();
  v5 = [v2 applicationProxyForIdentifier:v4];

  v6 = [v5 appState];
  v7 = [v6 isInstalled];

  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Initializing Home.app install state to: %{BOOL}d", v11, 8u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v3 finishWithResult:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_applications:(id)_applications didInstall:(BOOL)install
{
  installCopy = install;
  v12 = *MEMORY[0x277D85DE8];
  if ([_applications na_any:&__block_literal_global_15_13])
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = installCopy;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Home.app install state changed: %d", buf, 8u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__HFHomeAppInstallStateArbiter__applications_didInstall___block_invoke_16;
    v8[3] = &unk_277E00998;
    v8[4] = self;
    v9 = installCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HFHomeAppInstallStateArbiter__applications_didInstall___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __HFHomeApplicationBundleIdentifiers_block_invoke();
  v4 = [v2 bundleIdentifier];

  v5 = [v3 containsObject:v4];
  return v5;
}

void __57__HFHomeAppInstallStateArbiter__applications_didInstall___block_invoke_16(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v4 = [v2 futureWithResult:v3];
  [*(a1 + 32) setHomeAppInstalledFuture:v4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 32) observers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) installStateArbiter:*(a1 + 32) installStateDidChange:*(a1 + 40)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_fastPath_isHomeAppInstalled
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = HFPlatformSpecificHomeAppBundleID();
  v5 = [bundleIdentifier isEqualToString:v4];

  if (v5)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "We are running in Home.app; using fast path for install check", buf, 2u);
    }

    v7 = 1;
  }

  else
  {
    objc_opt_class();
    bundleProxyForCurrentProcess = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
    if (objc_opt_isKindOfClass())
    {
      v9 = bundleProxyForCurrentProcess;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;

    if (!v6)
    {
      goto LABEL_13;
    }

    containingBundle = [v6 containingBundle];
    bundleIdentifier2 = [containingBundle bundleIdentifier];
    v12 = HFPlatformSpecificHomeAppBundleID();
    v13 = [bundleIdentifier2 isEqualToString:v12];

    if (v13)
    {
      v14 = HFLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "We are contained in Home.app's bundle; using fast path for install check", v17, 2u);
      }

      v7 = 1;
    }

    else
    {
LABEL_13:
      v14 = HFLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Fast path for Home.app install check is not available", v16, 2u);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (NSURL)homeAppBundleURL
{
  v2 = MEMORY[0x277CC1E60];
  v3 = HFPlatformSpecificHomeAppBundleID();
  v4 = [v2 applicationProxyForIdentifier:v3];

  bundleURL = [v4 bundleURL];

  return bundleURL;
}

@end