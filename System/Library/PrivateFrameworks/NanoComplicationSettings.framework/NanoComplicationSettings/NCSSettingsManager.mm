@interface NCSSettingsManager
+ (id)sharedSettingsManager;
- (NCSSettingsManager)init;
- (NCSSettingsManagerDelegate)delegate;
- (id)_fetchSockPuppetComplications;
- (void)_updateSockPuppetComplications;
- (void)dealloc;
- (void)loadSettings;
- (void)setDelegate:(id)a3;
@end

@implementation NCSSettingsManager

+ (id)sharedSettingsManager
{
  if (sharedSettingsManager_onceToken != -1)
  {
    +[NCSSettingsManager sharedSettingsManager];
  }

  v3 = sharedSettingsManager_sharedManager;

  return v3;
}

uint64_t __43__NCSSettingsManager_sharedSettingsManager__block_invoke()
{
  sharedSettingsManager_sharedManager = objc_alloc_init(NCSSettingsManager);

  return MEMORY[0x2821F96F8]();
}

- (NCSSettingsManager)init
{
  v9.receiver = self;
  v9.super_class = NCSSettingsManager;
  v2 = [(NCSInternalSettingsManager *)&v9 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, PairedDeviceChanged, *MEMORY[0x277D2BCB8], 0, 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, v2, ComplicationSettingsChanged, @"NCSSettingsChangedNotification", 0, 0);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v2, ApplicationsChanged, *MEMORY[0x277CC1DE0], 0, 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, SPApplicationsChanged, *MEMORY[0x277CEAF60], 0, 0);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__handleLocaleChange_ name:*MEMORY[0x277CBE620] object:0];

    [(NCSSettingsManager *)v2 loadSettings];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NCSSettingsChangedNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x277CC1DE0], 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, *MEMORY[0x277CEAF60], 0);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = NCSSettingsManager;
  [(NCSSettingsManager *)&v7 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if ([(NCSInternalSettingsManager *)self hasSettings])
    {
      v5 = [(NCSSettingsManager *)self delegate];
      [v5 settingsManagerReloadedComplications:self];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)loadSettings
{
  v4.receiver = self;
  v4.super_class = NCSSettingsManager;
  [(NCSInternalSettingsManager *)&v4 loadSettings];
  [(NCSSettingsManager *)self _updateSockPuppetComplications];
  if ([(NCSInternalSettingsManager *)self hasSettings])
  {
    v3 = [(NCSSettingsManager *)self delegate];
    [v3 settingsManagerReloadedComplications:self];
  }
}

- (void)_updateSockPuppetComplications
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(NCSSettingsManager *)self _fetchSockPuppetComplications];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__NCSSettingsManager__updateSockPuppetComplications__block_invoke;
  v18[3] = &unk_27992E1B0;
  v6 = v4;
  v19 = v6;
  v7 = v5;
  v20 = v7;
  [(NCSInternalSettingsManager *)self enumerateAllComplicationDefinitionsUsingBlock:v18];
  [(NCSInternalSettingsManager *)self removeComplicationDefinitionsInArray:v7];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NCSInternalSettingsManager *)self addComplicationDefinition:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v10);
  }

  [(NCSInternalSettingsManager *)self saveSettings];
  v13 = *MEMORY[0x277D85DE8];
}

void __52__NCSSettingsManager__updateSockPuppetComplications__block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 sockPuppetIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v19 sockPuppetIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v19 sockPuppetIdentifier];
      v9 = [v7 objectForKeyedSubscript:v8];

      v10 = [v9 name];
      [v19 setName:v10];

      v11 = [v9 appBundleIdentifier];
      [v19 setAppBundleIdentifier:v11];

      v12 = [v19 installState];
      if (v12 != [v9 installState])
      {
        if (([v19 isActive] & 1) == 0 && objc_msgSend(v9, "installState") == 2)
        {
          [v19 setActive:1];
        }

        [v19 setInstallState:{objc_msgSend(v9, "installState")}];
      }

      v13 = MEMORY[0x277CC1E60];
      v14 = [v19 appBundleIdentifier];
      v15 = [v13 applicationProxyForIdentifier:v14];

      if (v15)
      {
        v16 = [v15 localizedName];
        [v19 setName:v16];
      }

      v17 = *(a1 + 32);
      v18 = [v19 sockPuppetIdentifier];
      [v17 removeObjectForKey:v18];
    }

    else
    {
      [*(a1 + 40) addObject:v19];
    }
  }
}

- (id)_fetchSockPuppetComplications
{
  v2 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__0;
  v35[4] = __Block_byref_object_dispose__0;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v3 = dispatch_queue_create("com.apple.nano-complications.sockpuppet-loader", MEMORY[0x277D85CD8]);
  v4 = dispatch_group_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke;
  block[3] = &unk_27992E200;
  v5 = v4;
  v26 = v5;
  v6 = v2;
  v27 = v6;
  v28 = v35;
  dispatch_sync(v3, block);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke_3;
  v21[3] = &unk_27992E200;
  v7 = v5;
  v22 = v7;
  v8 = v6;
  v23 = v8;
  v24 = &v29;
  dispatch_sync(v3, v21);
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v30[5], "count")}];
  v10 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke_5;
  v16[3] = &unk_27992E228;
  v19 = &v29;
  v20 = v35;
  v11 = v9;
  v17 = v11;
  v18 = v10;
  v12 = v10;
  dispatch_group_notify(v7, v3, v16);
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v18;
  v14 = v11;

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

  return v14;
}

void __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke_2;
  v3[3] = &unk_27992E1D8;
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  [v2 fetchInstalledApplicationsForPairedDevice:0 completion:v3];
}

void __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke_3(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke_4;
  v3[3] = &unk_27992E1D8;
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  [v2 fetchInstalledComplicationsForPairedDevice:0 completion:v3];
}

void __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

intptr_t __51__NCSSettingsManager__fetchSockPuppetComplications__block_invoke_5(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v6];
        v8 = [v7 objectForKeyedSubscript:@"s"];
        v9 = [v8 intValue];

        v10 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v6];
        v11 = objc_alloc_init(NCSComplication);
        v12 = [v7 objectForKeyedSubscript:@"CFBundleName"];
        [(NCSComplication *)v11 setName:v12];

        v13 = [v10 objectForKeyedSubscript:@"SPContainerAppBundleId"];
        [(NCSComplication *)v11 setAppBundleIdentifier:v13];

        [(NCSComplication *)v11 setComplicationBundleIdentifier:@"NCSSockPuppetBundleIdentifier"];
        [(NCSComplication *)v11 setActive:1];
        v14 = [v7 objectForKeyedSubscript:@"CFBundleIdentifier"];
        [(NCSComplication *)v11 setSockPuppetIdentifier:v14];

        [(NCSComplication *)v11 setInstallState:2 * ((v9 & 0xFFFFFFFE) == 2)];
        v15 = *(a1 + 32);
        v16 = [(NCSComplication *)v11 sockPuppetIdentifier];
        [v15 setObject:v11 forKeyedSubscript:v16];
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (NCSSettingsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end