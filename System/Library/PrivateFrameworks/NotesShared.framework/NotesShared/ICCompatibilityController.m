@interface ICCompatibilityController
+ (ICCompatibilityController)sharedController;
- (BOOL)fakesIncompatibleDevicesForDebugging;
- (ICCompatibilityController)init;
- (id)cachedDevicesDateForAccount:(id)a3;
- (id)cachedDevicesForAccount:(id)a3;
- (id)fetchDevicesForAccount:(id)a3;
- (void)cacheDevices:(id)a3 forAccount:(id)a4;
- (void)clearCachedDevicesForAccount:(id)a3;
- (void)devicesForAccount:(id)a3 completionHandler:(id)a4;
- (void)messageForAccount:(id)a3 minimumNotesVersion:(int64_t)a4 completionHandler:(id)a5;
- (void)setFakesIncompatibleDevicesForDebugging:(BOOL)a3;
@end

@implementation ICCompatibilityController

- (ICCompatibilityController)init
{
  v8.receiver = self;
  v8.super_class = ICCompatibilityController;
  v2 = [(ICCompatibilityController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_get_global_queue(-32768, 0);
    v5 = dispatch_queue_create_with_target_V2("com.apple.notes.compatibility-controller", v3, v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (ICCompatibilityController)sharedController
{
  if (sharedController_onceToken_1 != -1)
  {
    +[ICCompatibilityController sharedController];
  }

  v3 = sharedController_sharedController_0;

  return v3;
}

void __45__ICCompatibilityController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(ICCompatibilityController);
  v1 = sharedController_sharedController_0;
  sharedController_sharedController_0 = v0;
}

- (void)devicesForAccount:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 shortLoggingDescription];
    *buf = 138412802;
    v23 = v9;
    v24 = 2080;
    v25 = "[ICCompatibilityController devicesForAccount:completionHandler:]";
    v26 = 1024;
    v27 = 57;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEFAULT, "Retrieving compatibility devices for account… {account: %@}%s:%d", buf, 0x1Cu);
  }

  v10 = [v6 objectID];
  v11 = +[ICNoteContext sharedContext];
  v12 = [v11 workerManagedObjectContext];

  v13 = [(ICCompatibilityController *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke;
  v17[3] = &unk_278198890;
  v18 = v12;
  v19 = self;
  v20 = v10;
  v21 = v7;
  v14 = v10;
  v15 = v7;
  v16 = v12;
  dispatch_async(v13, v17);
}

void __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke_2;
  v8[3] = &unk_2781995E0;
  v7 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v7;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v5;
  [v2 performBlockAndWait:v8];
}

void __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (![*(a1 + 32) fakesIncompatibleDevicesForDebugging])
  {
    v5 = [*(a1 + 40) ic_existingObjectWithID:*(a1 + 48)];
    v6 = [MEMORY[0x277D36178] sharedInstance];
    v7 = [v6 accountStore];
    v8 = [v5 identifier];
    v9 = [v7 accountWithIdentifier:v8];

    if (!v9)
    {
      v21 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke_2_cold_3(v21);
      }

      v22 = *(a1 + 56);
      if (v22)
      {
        (*(v22 + 16))(v22, 0);
      }

      goto LABEL_30;
    }

    v10 = [*v2 cachedDevicesDateForAccount:v5];
    v11 = [*v2 cachedDevicesForAccount:v5];
    if (v11 && v10 && ([v10 timeIntervalSinceNow], v13 = -v12, +[ICCloudConfiguration sharedConfiguration](ICCloudConfiguration, "sharedConfiguration"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsupportedNoteDeviceCheckIntervalSeconds"), v14, v13 < v15))
    {
      v16 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke_2_cold_2(v11);
      }

      v17 = *(a1 + 56);
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = *(v17 + 16);
    }

    else
    {
      if ([MEMORY[0x277D36280] isInternetReachable])
      {
        v19 = [*v2 fetchDevicesForAccount:v9];
        if (v19)
        {
          [*v2 cacheDevices:v19 forAccount:v5];
        }

        v20 = *(a1 + 56);
        if (v20)
        {
          (*(v20 + 16))(v20, v19);
        }

        goto LABEL_29;
      }

      v23 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke_2_cold_1(v23);
      }

      v24 = *(a1 + 56);
      if (!v24)
      {
        goto LABEL_29;
      }

      v18 = *(v24 + 16);
    }

    v18();
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke_2_cold_4(v2);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = [*v2 fakeDevices];
    (*(v4 + 16))(v4, v5);
LABEL_31:
  }
}

- (id)fetchDevicesForAccount:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v3;
    v12 = 2080;
    v13 = "[ICCompatibilityController fetchDevicesForAccount:]";
    v14 = 1024;
    v15 = 110;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Fetching compatibility devices for account… {account: %@}%s:%d", &v10, 0x1Cu);
  }

  v5 = [[ICDeviceListRequest alloc] initWithAccount:v3];
  [(ICDeviceListRequest *)v5 fetchWithCompletionBlock:&__block_literal_global_12];
  [(ICDeviceListRequest *)v5 waitForFetchWithTimeout:20.0];
  v6 = [(ICDeviceListRequest *)v5 devices];
  v7 = [v6 ic_compactMap:&__block_literal_global_16];

  v8 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICCompatibilityController fetchDevicesForAccount:v7];
  }

  return v7;
}

void __52__ICCompatibilityController_fetchDevicesForAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __52__ICCompatibilityController_fetchDevicesForAccount___block_invoke_cold_1();
    }
  }
}

ICCompatibilityControllerDevice *__52__ICCompatibilityController_fetchDevicesForAccount___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ICCompatibilityControllerDevice alloc] initWithMigrationDeviceInfo:v2];

  return v3;
}

- (id)cachedDevicesDateForAccount:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v5 = [v3 identifier];

  v6 = [@"AccountDevicesCacheDate-" stringByAppendingString:v5];
  v7 = [v4 objectForKey:v6];
  v8 = ICCheckedDynamicCast();

  return v8;
}

- (id)cachedDevicesForAccount:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 shortLoggingDescription];
    *buf = 138412802;
    v16 = v5;
    v17 = 2080;
    v18 = "[ICCompatibilityController cachedDevicesForAccount:]";
    v19 = 1024;
    v20 = 141;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Retrieving cached compatibility devices for account… {account: %@}%s:%d", buf, 0x1Cu);
  }

  v6 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v7 = [v3 identifier];
  v8 = [@"AccountDevicesCache-" stringByAppendingString:v7];
  v9 = [v6 dataForKey:v8];

  if (v9)
  {
    v14 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v9 error:&v14];
    v11 = v14;
    if (v11)
    {
      v12 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ICCompatibilityController cachedDevicesForAccount:];
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (void)cacheDevices:(id)a3 forAccount:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 shortLoggingDescription];
    *buf = 138412802;
    v20 = v8;
    v21 = 2080;
    v22 = "[ICCompatibilityController cacheDevices:forAccount:]";
    v23 = 1024;
    v24 = 159;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, "Caching compatibility devices for account… {account: %@}%s:%d", buf, 0x1Cu);
  }

  v18 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v18];

  v10 = v18;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICCompatibilityController cacheDevices:forAccount:];
    }
  }

  else
  {
    v12 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    v13 = [v5 identifier];
    v14 = [@"AccountDevicesCache-" stringByAppendingString:v13];
    [v12 setObject:v9 forKey:v14];

    v11 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = [v5 identifier];
    v17 = [@"AccountDevicesCacheDate-" stringByAppendingString:v16];
    [v11 setObject:v15 forKey:v17];
  }
}

- (void)clearCachedDevicesForAccount:(id)a3
{
  v3 = MEMORY[0x277D36180];
  v4 = a3;
  v5 = [v3 sharedAppGroupDefaults];
  v6 = [v4 identifier];
  v7 = [@"AccountDevicesCache-" stringByAppendingString:v6];
  [v5 setObject:0 forKey:v7];

  v10 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v8 = [v4 identifier];

  v9 = [@"AccountDevicesCacheDate-" stringByAppendingString:v8];
  [v10 setObject:0 forKey:v9];
}

- (void)messageForAccount:(id)a3 minimumNotesVersion:(int64_t)a4 completionHandler:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 shortLoggingDescription];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
    *buf = 138413058;
    v18 = v11;
    v19 = 2112;
    v21 = 2080;
    v20 = v12;
    v22 = "[ICCompatibilityController messageForAccount:minimumNotesVersion:completionHandler:]";
    v23 = 1024;
    v24 = 181;
    _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEFAULT, "Retrieving incompatibility messages for account… {account: %@, minimumNotesVersion: %@}%s:%d", buf, 0x26u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__ICCompatibilityController_messageForAccount_minimumNotesVersion_completionHandler___block_invoke;
  v14[3] = &unk_278199670;
  v15 = v9;
  v16 = a4;
  v13 = v9;
  [(ICCompatibilityController *)self devicesForAccount:v8 completionHandler:v14];
}

void __85__ICCompatibilityController_messageForAccount_minimumNotesVersion_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__ICCompatibilityController_messageForAccount_minimumNotesVersion_completionHandler___block_invoke_2;
  v15[3] = &unk_278199648;
  v4 = *(a1 + 40);
  v15[4] = &v20;
  v15[5] = &v24;
  v15[6] = &v16;
  v15[7] = v4;
  v5 = [v3 ic_compactMap:v15];
  if (v21[3])
  {
    v6 = __ICLocalizedFrameworkString_impl(@"*Device can’t be upgraded.", @"*Device can’t be upgraded.", 0, 1);
    v34[0] = &stru_2827172C0;
    v34[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v8 = [v5 arrayByAddingObjectsFromArray:v7];

    v5 = v8;
  }

  v9 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25[3]];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21[3]];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17[3]];
    *buf = 138412802;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v14;
    _os_log_debug_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEBUG, "Fetched incompatible devices for account {#devicesToUpgrade: %@, #nonUpgradableDevices %@, #upgradedDevices: %@}", buf, 0x20u);
  }

  if ([v5 count])
  {
    v10 = [v5 componentsJoinedByString:@"\n"];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

id __85__ICCompatibilityController_messageForAccount_minimumNotesVersion_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 maximumNotesVersion] >= a1[7])
  {
    if ([v3 notesVersion] >= a1[7])
    {
      v6 = 0;
      ++*(*(a1[6] + 8) + 24);
    }

    else
    {
      ++*(*(a1[5] + 8) + 24);
      v6 = [v3 name];
    }
  }

  else
  {
    ++*(*(a1[4] + 8) + 24);
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 name];
    v6 = [v4 localizedStringWithFormat:@"%@*", v5];
  }

  return v6;
}

- (BOOL)fakesIncompatibleDevicesForDebugging
{
  v2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = NSStringFromSelector(sel_fakesIncompatibleDevicesForDebugging);
  v4 = [v2 BOOLForKey:v3];

  return v4;
}

- (void)setFakesIncompatibleDevicesForDebugging:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v4 = NSStringFromSelector(sel_fakesIncompatibleDevicesForDebugging);
  [v5 setBool:v3 forKey:v4];
}

void __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke_2_cold_2(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Returning compatibility cached devices {#devices: %@}", v4, v5, v6, v7, v8);
}

void __65__ICCompatibilityController_devicesForAccount_completionHandler___block_invoke_2_cold_4(id *a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*a1 fakeDevices];
  v3 = [v1 numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v4, v5, "Returning fake compatibility devices for debugging {#devices: %@}", v6, v7, v8, v9, v10);
}

- (void)fetchDevicesForAccount:(void *)a1 .cold.1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Fetched compatibility devices for account {#devices: %@}", v4, v5, v6, v7, v8);
}

void __52__ICCompatibilityController_fetchDevicesForAccount___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Error fetching compatibility devices for account {error: %@}", v1, 0xCu);
}

- (void)cachedDevicesForAccount:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Error retrieving compatibility devices {error: %@}", v1, 0xCu);
}

- (void)cacheDevices:forAccount:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Error caching compatibility devices {error: %@}", v1, 0xCu);
}

@end