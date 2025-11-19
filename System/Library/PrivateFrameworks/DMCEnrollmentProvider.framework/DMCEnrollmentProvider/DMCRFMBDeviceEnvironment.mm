@interface DMCRFMBDeviceEnvironment
- (id)installedAppBundleIdentifiers;
@end

@implementation DMCRFMBDeviceEnvironment

- (id)installedAppBundleIdentifiers
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v3, OS_LOG_TYPE_DEFAULT, "managed restore, installedAppBundleIdentifiers begin", buf, 2u);
  }

  *buf = 0;
  v27 = buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 setType:2];
  v32[0] = @"Identifier";
  v32[1] = @"Installing";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  [v4 setPropertyKeys:v5];

  v6 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:1];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v7 = dispatch_queue_create("installed_app_bundle_id_queue", 0);
  v8 = dispatch_time(0, 30000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DMCRFMBDeviceEnvironment_installedAppBundleIdentifiers__block_invoke;
  block[3] = &unk_278EE7940;
  block[4] = v24;
  dispatch_after(v8, v7, block);
  v9 = [MEMORY[0x277D04BF8] currentUserConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__DMCRFMBDeviceEnvironment_installedAppBundleIdentifiers__block_invoke_18;
  v17[3] = &unk_278EE8098;
  v10 = v7;
  v18 = v10;
  v19 = self;
  v21 = v24;
  v22 = buf;
  v11 = v6;
  v20 = v11;
  [v9 performRequest:v4 completion:v17];

  v12 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_247E7D000, v12, OS_LOG_TYPE_DEFAULT, "managed restore, installedAppBundleIdentifiers waiting on main lock", v16, 2u);
  }

  [v11 lockWhenCondition:0];
  [v11 unlock];
  v13 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_247E7D000, v13, OS_LOG_TYPE_DEFAULT, "managed restore, installedAppBundleIdentifiers waiting on main lock - DONE", v16, 2u);
  }

  v14 = [*(v27 + 5) copy];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(buf, 8);

  return v14;
}

void __57__DMCRFMBDeviceEnvironment_installedAppBundleIdentifiers__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v1 = *DMCLogObjects();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "installed_app_bundle_id";
      v7 = 2048;
      v8 = 0x403E000000000000;
      _os_log_impl(&dword_247E7D000, v1, OS_LOG_TYPE_ERROR, "Task %s hasn't finished within %.1f seconds", &v5, 0x16u);
    }

    v2 = [@"installed_app_bundle_id" stringByAppendingString:@"_stackshot.ips"];
    v3 = MEMORY[0x277D034B8];
    v4 = DMCHangTracerDirectory();
    [v3 dumpStackshotToPath:v4 fileName:v2];
  }
}

void __57__DMCRFMBDeviceEnvironment_installedAppBundleIdentifiers__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DMCRFMBDeviceEnvironment_installedAppBundleIdentifiers__block_invoke_2;
  block[3] = &unk_278EE7940;
  block[4] = *(a1 + 56);
  dispatch_async(v7, block);
  v8 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "managed restore, installedAppBundleIdentifiers completion", buf, 2u);
  }

  if (v6)
  {
    v9 = *(DMCLogObjects() + 32);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_ERROR, "Error retrieving the list of apps on this device: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v10 = [v5 appsByBundleIdentifier];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:v15];
          if ([*(a1 + 40) _shouldIncludeApp:v16])
          {
            [*(*(*(a1 + 64) + 8) + 40) addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v17 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v17, OS_LOG_TYPE_DEFAULT, "managed restore, installedAppBundleIdentifiers waiting on completion lock", buf, 2u);
  }

  [*(a1 + 48) lock];
  [*(a1 + 48) unlockWithCondition:0];
  v18 = *(DMCLogObjects() + 32);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E7D000, v18, OS_LOG_TYPE_DEFAULT, "managed restore, installedAppBundleIdentifiers waiting on completion lock - DONE", buf, 2u);
  }
}

@end