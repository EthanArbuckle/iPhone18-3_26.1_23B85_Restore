@interface KSiCloudDeviceListMonitor
@end

@implementation KSiCloudDeviceListMonitor

void __53___KSiCloudDeviceListMonitor_iCloudDeviceListMonitor__block_invoke()
{
  v0 = objc_alloc_init(_KSiCloudDeviceListMonitor);
  v1 = iCloudDeviceListMonitor_sharedInstance;
  iCloudDeviceListMonitor_sharedInstance = v0;
}

void __70___KSiCloudDeviceListMonitor_fetchCloudKitDevicesWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6 || a4)
  {
    NSLog(&cfstr_CloudkitDevice.isa, a4);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = v6;
    v9 = KSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 needUpgradeDeviceNames];
      *buf = 136315394;
      v19 = "[_KSiCloudDeviceListMonitor fetchCloudKitDevicesWithCompletionBlock:]_block_invoke";
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  cloudkit devices that needs upgrade: %@", buf, 0x16u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70___KSiCloudDeviceListMonitor_fetchCloudKitDevicesWithCompletionBlock___block_invoke_141;
    v15[3] = &unk_2797F63D8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16 = v8;
    v17 = v12;
    v13 = v8;
    [v11 fetchICloudDevicesWithCompletionBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __70___KSiCloudDeviceListMonitor_fetchCloudKitDevicesWithCompletionBlock___block_invoke_141(uint64_t a1, uint64_t a2, char a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithArray:a2];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [*(a1 + 32) needUpgradeDeviceNames];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [_KSDeviceInfo ksDeviceWithName:*(*(&v16 + 1) + 8 * i) needsUpgrade:1];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }

    v11 = KSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[_KSiCloudDeviceListMonitor fetchCloudKitDevicesWithCompletionBlock:]_block_invoke";
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2557E2000, v11, OS_LOG_TYPE_INFO, "%s  >>> devices that need to upgraded: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(*(a1 + 40) + 16);
    v15 = *MEMORY[0x277D85DE8];

    v14();
  }
}

void __68___KSiCloudDeviceListMonitor_fetchICloudDevicesWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if (v4)
  {
    v6 = [v4 responseDictionary];
    NSLog(&cfstr_IcloudResponse.isa, v6);
    v7 = [v6 objectForKeyedSubscript:@"devices"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [_KSDeviceInfo ksDecviceWithiCloudDeviceInfo:*(*(&v15 + 1) + 8 * v11)];
          [v5 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = KSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[_KSiCloudDeviceListMonitor fetchICloudDevicesWithCompletionBlock:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v13, OS_LOG_TYPE_INFO, "%s  couldn't fetch icloud device list", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __49___KSiCloudDeviceListMonitor_queryMigrationState__block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[_KSTextReplacementHelper aggdPrefix];
  v2 = [v0 stringWithFormat:@"%@.didMigrate", v1];
  v3 = queryMigrationState_kAggdKeyDidMigrate;
  queryMigrationState_kAggdKeyDidMigrate = v2;

  v4 = MEMORY[0x277CCACA8];
  v7 = +[_KSTextReplacementHelper aggdPrefix];
  v5 = [v4 stringWithFormat:@"%@.waitingMigration", v7];
  v6 = queryMigrationState_kAggdKeyWaitingMigration;
  queryMigrationState_kAggdKeyWaitingMigration = v5;
}

void __49___KSiCloudDeviceListMonitor_queryMigrationState__block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = KSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v14 = 136315394;
      v15 = "[_KSiCloudDeviceListMonitor queryMigrationState]_block_invoke_2";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2557E2000, v4, OS_LOG_TYPE_INFO, "%s  >>> The device migration eligibility for 30day check is: %@", &v14, 0x16u);
    }

    v6 = &queryMigrationState_kAggdKeyWaitingMigration;
    if (a2)
    {
      v6 = &queryMigrationState_kAggdKeyDidMigrate;
    }

    [_KSAggdLogger addValue:1 forScalarKey:*v6];
    v7 = objc_alloc(MEMORY[0x277CBEBD0]);
    v8 = +[_KSUtilities userDefaultsSuiteName];
    v9 = [v7 initWithSuiteName:v8];

    [v9 setBool:a2 forKey:@"_KSTRCloudKitMigratable"];
    v10 = [MEMORY[0x277CBEAA8] date];
    [v9 setObject:v10 forKey:@"_KSCKMigrationPreviousCheckDate"];

    if (a2)
    {
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v11 postNotificationName:@"_KSCloudKitDevicesMigrationStateDidChange" object:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __87___KSiCloudDeviceListMonitor_isAccountCompatibleForCloudKitSyncingWithCompletionBlock___block_invoke(uint64_t a1, void *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(a1 + 32);
          v13 = [*(*(&v15 + 1) + 8 * i) swVersion];
          LODWORD(v12) = [v12 isSWVersionCloudKitSyncCompatible:v13];

          v10 &= v12;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  (*(*(a1 + 40) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

@end