@interface ICDeviceListRequest
+ (id)combineICloudDevices:(id)devices withCloudKitDevices:(id)kitDevices;
+ (id)setOfDeviceNamesFromDevices:(id)devices;
- (BOOL)anyDeviceNeedsUpgrade;
- (BOOL)anyDeviceNotUpgradable;
- (BOOL)anyOSXDeviceNotUpgraded;
- (BOOL)waitForFetchWithTimeout:(double)timeout;
- (ICDeviceListRequest)init;
- (ICDeviceListRequest)initWithAccount:(id)account;
- (void)fetchCloudKitDevicesWithCompletionBlock:(id)block;
- (void)fetchICloudDevicesWithCompletionBlock:(id)block;
- (void)fetchWithCompletionBlock:(id)block;
@end

@implementation ICDeviceListRequest

- (ICDeviceListRequest)init
{
  [(ICDeviceListRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICDeviceListRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = ICDeviceListRequest;
  v6 = [(ICDeviceListRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v8 = dispatch_semaphore_create(0);
    workSemaphore = v7->_workSemaphore;
    v7->_workSemaphore = v8;
  }

  return v7;
}

- (BOOL)anyDeviceNeedsUpgrade
{
  devices = [(ICDeviceListRequest *)self devices];
  v3 = [devices ic_containsObjectPassingTest:&__block_literal_global_13];

  return v3;
}

- (BOOL)anyDeviceNotUpgradable
{
  devices = [(ICDeviceListRequest *)self devices];
  v3 = [devices ic_containsObjectPassingTest:&__block_literal_global_33];

  return v3;
}

- (BOOL)anyOSXDeviceNotUpgraded
{
  devices = [(ICDeviceListRequest *)self devices];
  v3 = [devices ic_containsObjectPassingTest:&__block_literal_global_35];

  return v3;
}

uint64_t __46__ICDeviceListRequest_anyOSXDeviceNotUpgraded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOSXDevice])
  {
    v3 = [v2 upgraded] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)waitForFetchWithTimeout:(double)timeout
{
  selfCopy = self;
  workSemaphore = [(ICDeviceListRequest *)self workSemaphore];
  v6 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_semaphore_wait(workSemaphore, v6);

  devices = [(ICDeviceListRequest *)selfCopy devices];
  LOBYTE(selfCopy) = devices != 0;

  return selfCopy;
}

- (void)fetchCloudKitDevicesWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x277CEC778]);
  account = [(ICDeviceListRequest *)self account];
  v7 = [v5 initWithAccount:account];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__ICDeviceListRequest_fetchCloudKitDevicesWithCompletionBlock___block_invoke;
  v9[3] = &unk_278195E38;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 performRequestWithHandler:v9];
}

void __63__ICDeviceListRequest_fetchCloudKitDevicesWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || v7)
  {
    v12 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_DEFAULT, "CloudKit device list request failed, error: %@", &v13, 0xCu);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [v6 incompatibleDeviceNames];
    v11 = [v6 needUpgradeDeviceNames];
    (*(v9 + 16))(v9, v10, v11);
  }
}

- (void)fetchICloudDevicesWithCompletionBlock:(id)block
{
  blockCopy = block;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  name = [currentDevice name];
  v7 = MEMORY[0x277CCACA8];
  systemName = [currentDevice systemName];
  systemVersion = [currentDevice systemVersion];
  v10 = [v7 stringWithFormat:@"%@%@", systemName, systemVersion];;

  v11 = objc_alloc(MEMORY[0x277CEC7C8]);
  account = [(ICDeviceListRequest *)self account];
  v13 = [v11 initWithAccount:account];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__ICDeviceListRequest_fetchICloudDevicesWithCompletionBlock___block_invoke;
  v17[3] = &unk_278195E60;
  objc_copyWeak(&v21, &location);
  v14 = name;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  v16 = blockCopy;
  v20 = v16;
  [v13 performRequestWithHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __61__ICDeviceListRequest_fetchICloudDevicesWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_opt_class();
    v6 = ICCheckedDynamicCast();
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v8 = [v7 BOOLForKey:*MEMORY[0x277D36300]];

      if ((v8 & 1) == 0)
      {
        v26 = WeakRetained;
        v27 = v4;
        v9 = [MEMORY[0x277CBEB18] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v25 = v6;
        obj = [v6 devices];
        v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (!v10)
        {
          goto LABEL_16;
        }

        v11 = v10;
        v12 = *v31;
        while (1)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v30 + 1) + 8 * i);
            v15 = *(a1 + 32);
            v16 = [v14 name];
            if (([v15 isEqualToString:v16] & 1) == 0)
            {

LABEL_13:
              v19 = [ICFullDeviceInfo alloc];
              v20 = [v14 name];
              v21 = [v14 model];
              v22 = [v14 modelDisplayName];
              v23 = [v14 swVersion];
              v24 = [(ICFullDeviceInfo *)v19 initWithName:v20 model:v21 modelDisplayName:v22 softwareVersion:v23];

              [v9 addObject:v24];
              continue;
            }

            v17 = *(a1 + 40);
            v18 = [v14 swVersion];
            LOBYTE(v17) = [v17 isEqualToString:v18];

            if ((v17 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (!v11)
          {
LABEL_16:

            (*(*(a1 + 48) + 16))();
            WeakRetained = v26;
            v4 = v27;
            v6 = v25;
            break;
          }
        }
      }
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Device list request was already torn down.", buf, 2u);
    }
  }
}

- (void)fetchWithCompletionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke;
  v7[3] = &unk_278195F78;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.notes.deviceListDevicesMutex", v3);

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_2;
  block[3] = &unk_278195ED8;
  block[4] = *(a1 + 32);
  v6 = v4;
  v25 = v6;
  objc_copyWeak(&v26, (a1 + 48));
  dispatch_group_async(v2, v5, block);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_54;
  v21[3] = &unk_278195ED8;
  v21[4] = *(a1 + 32);
  v7 = v6;
  v22 = v7;
  objc_copyWeak(&v23, (a1 + 48));
  dispatch_group_async(v2, v5, v21);

  v8 = dispatch_time(0, 10000000000);
  if (!dispatch_group_wait(v2, v8))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v14 = [WeakRetained workSemaphore];
    dispatch_semaphore_signal(v14);

    if (!*(a1 + 40))
    {
LABEL_9:

      goto LABEL_10;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_58;
    v19[3] = &unk_278195F28;
    v11 = &v20;
    v20 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v19);
LABEL_8:

    goto LABEL_9;
  }

  v9 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Timed out waiting for both device lists", buf, 2u);
  }

  if (*(a1 + 40))
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1001 userInfo:0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_60;
    v15[3] = &unk_278195F50;
    v11 = &v17;
    v12 = *(a1 + 40);
    v16 = v10;
    v17 = v12;
    WeakRetained = v10;
    dispatch_async(MEMORY[0x277D85CD0], v15);

    goto LABEL_8;
  }

LABEL_10:
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v26);
}

void __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_3;
  v5[3] = &unk_278195EB0;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_copyWeak(&v8, (a1 + 48));
  v4 = v2;
  v7 = v4;
  [v3 fetchCloudKitDevicesWithCompletionBlock:v5];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v8);
}

void __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[ICMinimalDeviceInfo alloc] initWithName:*(*(&v30 + 1) + 8 * v12) upgradable:0 upgraded:0];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [[ICMinimalDeviceInfo alloc] initWithName:*(*(&v26 + 1) + 8 * v18) upgradable:1 upgraded:0];
        [v7 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  if ([v7 count])
  {
    v20 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_4;
    block[3] = &unk_278195E88;
    objc_copyWeak(&v25, (a1 + 48));
    v24 = v7;
    dispatch_sync(v20, block);

    objc_destroyWeak(&v25);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v21 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_214D51000, v21, OS_LOG_TYPE_DEFAULT, "Got old device list", v22, 2u);
  }
}

void __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained devices];
  if ([v2 count])
  {
    v3 = [ICDeviceListRequest combineICloudDevices:v2 withCloudKitDevices:*(a1 + 32)];
    [WeakRetained setDevices:v3];
  }

  else
  {
    [WeakRetained setDevices:*(a1 + 32)];
  }
}

void __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_54(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_2_55;
  v5[3] = &unk_278195F00;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_copyWeak(&v9, (a1 + 48));
  v7 = *(a1 + 32);
  v4 = v2;
  v8 = v4;
  [v3 fetchICloudDevicesWithCompletionBlock:v5];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v9);
}

void __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_2_55(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [ICDeviceListRequest filteredDevices:v3];
    v5 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_3_56;
    block[3] = &unk_278195E88;
    objc_copyWeak(&v11, (a1 + 56));
    v10 = v4;
    v6 = v4;
    dispatch_sync(v5, block);

    objc_destroyWeak(&v11);
  }

  [*(a1 + 40) setDidGetICloudDeviceList:1];
  dispatch_semaphore_signal(*(a1 + 48));
  v7 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, "Got new device list", v8, 2u);
  }
}

void __48__ICDeviceListRequest_fetchWithCompletionBlock___block_invoke_3_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained devices];
  if ([v2 count])
  {
    if ([*(a1 + 32) count])
    {
      v3 = [ICDeviceListRequest combineICloudDevices:*(a1 + 32) withCloudKitDevices:v2];
      [WeakRetained setDevices:v3];
    }
  }

  else
  {
    [WeakRetained setDevices:*(a1 + 32)];
  }
}

+ (id)setOfDeviceNamesFromDevices:(id)devices
{
  v19 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = devicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        name = [v10 name];

        if (name)
        {
          name2 = [v10 name];
          [v4 addObject:name2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)combineICloudDevices:(id)devices withCloudKitDevices:(id)kitDevices
{
  v25 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  kitDevicesCopy = kitDevices;
  v8 = [self setOfDeviceNamesFromDevices:devicesCopy];
  v9 = [MEMORY[0x277CBEB18] arrayWithArray:devicesCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = kitDevicesCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        name = [v15 name];

        if (name)
        {
          name2 = [v15 name];
          v18 = [v8 containsObject:name2];

          if ((v18 & 1) == 0)
          {
            [v9 addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

@end