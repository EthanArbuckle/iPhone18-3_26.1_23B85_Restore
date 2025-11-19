@interface NFMPingMyWatchCoordinator
+ (BOOL)isPingMySupportedOnActiveDevice;
+ (void)_updateActiveDeviceSupportedState:(id)a3;
- (NFMPingMyWatchCoordinator)init;
- (NFMPingMyWatchCoordinatorDelegate)delegate;
- (void)_nanoRegistryStatusChanged:(id)a3;
- (void)dealloc;
- (void)updatePingMyWatchSupportStateIfNeeded;
@end

@implementation NFMPingMyWatchCoordinator

- (NFMPingMyWatchCoordinator)init
{
  v7.receiver = self;
  v7.super_class = NFMPingMyWatchCoordinator;
  v2 = [(NFMPingMyWatchCoordinator *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__onActiveDeviceChange name:*MEMORY[0x277D2BC48] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel__onActiveDeviceChange name:*MEMORY[0x277D2BC50] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__nanoRegistryStatusChanged_ name:*MEMORY[0x277D2BCA8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NFMPingMyWatchCoordinator;
  [(NFMPingMyWatchCoordinator *)&v4 dealloc];
}

- (void)_nanoRegistryStatusChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D2BCB0]];

  if ([v5 unsignedIntegerValue] == 5)
  {
    v6 = nfm_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B17F000, v6, OS_LOG_TYPE_DEFAULT, "########### Active device is unpairing. Updating PingMyWatch state to unsupported", v8, 2u);
    }

    CFPreferencesSetAppValue(@"isPingMySupported", [MEMORY[0x277CCABB0] numberWithBool:0], @"com.apple.NanoLeash.NFMPingMyWatch");
    v7 = [(NFMPingMyWatchCoordinator *)self delegate];
    [v7 pingMyWatchCapabilityDidChange];
  }
}

- (void)updatePingMyWatchSupportStateIfNeeded
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Updating PingMyWatch support", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__NFMPingMyWatchCoordinator_updatePingMyWatchSupportStateIfNeeded__block_invoke;
  v4[3] = &unk_279933868;
  v4[4] = self;
  [NFMPingMyWatchCoordinator _updateActiveDeviceSupportedState:v4];
}

void __66__NFMPingMyWatchCoordinator_updatePingMyWatchSupportStateIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 pingMyWatchCapabilityDidChange];
}

+ (BOOL)isPingMySupportedOnActiveDevice
{
  v7 = *MEMORY[0x277D85DE8];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"isPingMySupported", @"com.apple.NanoLeash.NFMPingMyWatch", 0);
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = AppBooleanValue != 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Reading PingMyWatch support value: %{BOOL}d", v6, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return AppBooleanValue != 0;
}

+ (void)_updateActiveDeviceSupportedState:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(2, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__NFMPingMyWatchCoordinator__updateActiveDeviceSupportedState___block_invoke;
  v7[3] = &unk_279933890;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__NFMPingMyWatchCoordinator__updateActiveDeviceSupportedState___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C5BAD2E8-BB79-4E9E-8A0D-757C60D31053"];
  v5 = [v3 supportsCapability:v4];

  v6 = v5 ^ [*(a1 + 40) isPingMySupportedOnActiveDevice];
  if (v6 == 1)
  {
    CFPreferencesSetAppValue(@"isPingMySupported", [MEMORY[0x277CCABB0] numberWithBool:v5], @"com.apple.NanoLeash.NFMPingMyWatch");
    v7 = nfm_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = 67109120;
    v12 = v5;
    v8 = "########### Updated PingMyWatch support to: %{BOOL}d";
  }

  else
  {
    v7 = nfm_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = 67109120;
    v12 = v5;
    v8 = "###########  PingMyWatch support has not changed. isSupported: %{BOOL}d";
  }

  _os_log_impl(&dword_25B17F000, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 8u);
LABEL_7:

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (NFMPingMyWatchCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end