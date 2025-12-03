@interface DSDeviceManager
+ (id)sharedInstance;
- (DSDeviceListDelegate)delegate;
- (DSDeviceManager)init;
- (void)_setRemoteDeviceList:(id)list;
- (void)appDidLaunch;
- (void)refresh;
- (void)refreshRemoteDeviceList;
@end

@implementation DSDeviceManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DSDeviceManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___utility;

  return v2;
}

uint64_t __33__DSDeviceManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___utility;
  sharedInstance___utility = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (DSDeviceManager)init
{
  v12.receiver = self;
  v12.super_class = DSDeviceManager;
  v2 = [(DSDeviceManager *)&v12 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.DigitalSeparation", "DSDeviceManager");
    v4 = DSLog_9;
    DSLog_9 = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("DSDeviceManager", v5);
    [(DSDeviceManager *)v2 setWorkQueue:v6];

    v7 = objc_alloc(MEMORY[0x277CED1D0]);
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v9 = [v7 initWithAccountStore:defaultStore];
    [(DSDeviceManager *)v2 setAccountManager:v9];

    v10 = objc_alloc_init(MEMORY[0x277CF0178]);
    [(DSDeviceManager *)v2 setAuthController:v10];

    [(DSDeviceManager *)v2 refresh];
  }

  return v2;
}

- (void)appDidLaunch
{
  v2 = DSLog_9;
  if (os_log_type_enabled(DSLog_9, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_DEFAULT, "Initializing device manager and fetching device lists", v3, 2u);
  }
}

- (void)refresh
{
  workQueue = [(DSDeviceManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__DSDeviceManager_refresh__block_invoke;
  block[3] = &unk_278F75408;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)refreshRemoteDeviceList
{
  v3 = objc_opt_new();
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
  v5 = objc_alloc_init(MEMORY[0x277CF0220]);
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  [v5 setAltDSID:aa_altDSID];

  v7 = objc_alloc_init(MEMORY[0x277CF0178]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__DSDeviceManager_refreshRemoteDeviceList__block_invoke;
  v8[3] = &unk_278F75BA0;
  v8[4] = self;
  [v7 deviceListWithContext:v5 completion:v8];
}

void __42__DSDeviceManager_refreshRemoteDeviceList__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = DSLog_9;
    if (os_log_type_enabled(DSLog_9, OS_LOG_TYPE_ERROR))
    {
      v12 = @"Unknown";
      if (v7)
      {
        v12 = v7;
      }

      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_248C7E000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch the AK device list with error: %@", &v13, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 deviceList];
    [v8 _setRemoteDeviceList:v9];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setRemoteDeviceList:(id)list
{
  listCopy = list;
  v6 = self->_remoteDevices;
  objc_storeStrong(&self->_remoteDevices, list);
  if (listCopy || !v6)
  {
    delegate = [(DSDeviceManager *)self delegate];

    if (delegate)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __40__DSDeviceManager__setRemoteDeviceList___block_invoke;
      v8[3] = &unk_278F75650;
      v8[4] = self;
      v9 = listCopy;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }
}

void __40__DSDeviceManager__setRemoteDeviceList___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteDeviceListModified:*(a1 + 40)];
}

- (DSDeviceListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end