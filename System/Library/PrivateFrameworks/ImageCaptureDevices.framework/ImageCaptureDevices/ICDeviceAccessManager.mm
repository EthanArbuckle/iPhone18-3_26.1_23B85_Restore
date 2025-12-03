@interface ICDeviceAccessManager
+ (id)sharedAccessManager;
- (BOOL)captureUserIntentForBundleIdentifier:(id)identifier withNotification:(id)notification;
- (BOOL)captureUserIntentForControlWithBundleIdentifier:(id)identifier withNotification:(id)notification;
- (BOOL)validateBundleIdentifierInstalled:(id)installed;
- (ICDeviceAccessManager)init;
- (NSArray)allBundleIdentifiers;
- (NSArray)bundleIdentifiersAccessingExternalCameras;
- (NSArray)bundleIdentifiersAccessingExternalCamerasWithStatus;
- (id)bundleIdentifiersWithAccessType:(id)type;
- (int)openDB:(id)b;
- (unint64_t)bundleIdentifier:(id)identifier stateForAccessType:(id)type;
- (unint64_t)connection:(id)connection stateForAccessType:(id)type;
- (void)addBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)displayAlertForApplication:(id)application withNotification:(id)notification completionBlock:(id)block;
- (void)displayAlertForControlWithNotification:(id)notification completionBlock:(id)block;
- (void)revokeBundleIdentifier:(id)identifier;
- (void)updateBundleIdentifier:(id)identifier accessType:(id)type withState:(unint64_t)state;
@end

@implementation ICDeviceAccessManager

- (ICDeviceAccessManager)init
{
  v18.receiver = self;
  v18.super_class = ICDeviceAccessManager;
  v2 = [(ICDeviceAccessManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ICDeviceAccessManagerQueue", 0);
    deviceAccessQueue = v2->_deviceAccessQueue;
    v2->_deviceAccessQueue = v3;

    v5 = dispatch_semaphore_create(0);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    deviceAccessQueue = [(ICDeviceAccessManager *)v2 deviceAccessQueue];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __29__ICDeviceAccessManager_init__block_invoke;
    block[3] = &unk_29F380F70;
    v2 = v2;
    v11 = v2;
    v13 = &v14;
    v7 = v5;
    v12 = v7;
    dispatch_async(deviceAccessQueue, block);

    v8 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v7, v8);
    if ((v15[3] & 1) == 0)
    {

      v2 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v2;
}

void __29__ICDeviceAccessManager_init__block_invoke(uint64_t a1)
{
  v2 = [@"/var/mobile/Library/com.apple.imagecapture" stringByAppendingPathComponent:@"externalDeviceAccess.db"];
  v3 = [MEMORY[0x29EDB9FB8] defaultManager];
  v4 = [v3 fileExistsAtPath:@"/var/mobile/Library/com.apple.imagecapture"];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x29EDB9FB8] defaultManager];
    v11 = 0;
    [v5 createDirectoryAtPath:@"/var/mobile/Library/com.apple.imagecapture" withIntermediateDirectories:0 attributes:0 error:&v11];
  }

  if ([*(a1 + 32) openDB:v2])
  {
    __ICOSLogCreate();
    v6 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v7 = [@"icaccess" substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to open/create database"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  else
  {
    errmsg = 0;
    if (!sqlite3_exec([*(a1 + 32) externalMediaAccessDB], "CREATE TABLE IF NOT EXISTS external_device_access (ID INTEGER PRIMARY KEY AUTOINCREMENT, bundle_id TEXT, date_added INTEGER, read_access INTEGER, write_access INTEGER, control_informed INTEGER)", 0, 0, &errmsg))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_14;
    }

    __ICOSLogCreate();
    v6 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v9 = [@"icaccess" substringWithRange:{0, 18}];
      v6 = [v9 stringByAppendingString:@".."];
    }

    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to create table: external_device_access - %s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

LABEL_14:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (int)openDB:(id)b
{
  bCopy = b;
  uTF8String = [b UTF8String];

  return sqlite3_open(uTF8String, &self->_externalMediaAccessDB);
}

- (void)dealloc
{
  if (sqlite3_close(self->_externalMediaAccessDB))
  {
    __ICOSLogCreate();
    v3 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v4 = [@"icaccess" substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Failed to close database"];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  v6.receiver = self;
  v6.super_class = ICDeviceAccessManager;
  [(ICDeviceAccessManager *)&v6 dealloc];
}

+ (id)sharedAccessManager
{
  if (sharedAccessManager_onceToken != -1)
  {
    +[ICDeviceAccessManager sharedAccessManager];
  }

  v3 = sharedAccessManager_mgr;

  return v3;
}

uint64_t __44__ICDeviceAccessManager_sharedAccessManager__block_invoke()
{
  v0 = objc_alloc_init(ICDeviceAccessManager);
  v1 = sharedAccessManager_mgr;
  sharedAccessManager_mgr = v0;

  return MEMORY[0x2A1C71028](v0, v1);
}

- (NSArray)bundleIdentifiersAccessingExternalCameras
{
  v43 = *MEMORY[0x29EDCA608];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  if (_os_feature_enabled_impl())
  {
    __ICOSLogCreate();
    if ([@"☀️ TCC" length] < 0x15)
    {
      v4 = @"☀️ TCC";
    }

    else
    {
      v3 = [@"☀️ TCC" substringWithRange:{0, 18}];
      v4 = [v3 stringByAppendingString:@".."];
    }

    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(check) ---> New kTCCServiceExternalCameraMedia Service"];
    v13 = _gICOSLog;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v4;
      uTF8String = [(__CFString *)v4 UTF8String];
      *buf = 136446466;
      v40 = uTF8String;
      v41 = 2114;
      v42 = v12;
      _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v16 = dispatch_semaphore_create(0);
    v5 = tcc_server_create();
    v17 = *MEMORY[0x29EDC6F20];
    v18 = tcc_service_singleton_for_CF_name();
    v26 = MEMORY[0x29EDCA5F8];
    v27 = 3221225472;
    v28 = __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke;
    v29 = &unk_29F380F98;
    v31 = &v32;
    v11 = v16;
    v30 = v11;
    tcc_server_message_get_authorization_records_by_service();

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [(ICDeviceAccessManager *)self bundleIdentifiersWithAccessType:@"read_access"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v5 = v23 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v38 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = v33[5];
          v10 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:{@"bundle_id", v22}];
          [v9 addObject:v10];
        }

        v6 = [v5 countByEnumeratingWithState:&v22 objects:v38 count:16];
      }

      while (v6);
    }

    v11 = v5;
  }

  v19 = v33[5];
  _Block_object_dispose(&v32, 8);

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

void __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke(uint64_t a1, void *a2, __CFError *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = a2;
  if (a3)
  {
    v6 = CFErrorCopyDescription(a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_18:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_19;
    }
  }

  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_4:
  v7 = tcc_authorization_record_get_subject_attributed_entity();
  if (v7)
  {
    path = tcc_attributed_entity_get_path();
    __ICOSLogCreate();
    v9 = @"entity";
    if ([@"entity" length] >= 0x15)
    {
      v10 = [@"entity" substringWithRange:{0, 18}];
      v9 = [v10 stringByAppendingString:@".."];
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", path];
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9;
      v14 = v12;
      *buf = 136446466;
      v30 = [(__CFString *)v9 UTF8String];
      v31 = 2114;
      v32 = v11;
      _os_log_impl(&dword_29EB58000, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v15 = tcc_authorization_record_get_subject_identity();
  identifier = tcc_identity_get_identifier();
  if (identifier)
  {
    v17 = identifier;
    authorization_value = tcc_authorization_record_get_authorization_value();
    __ICOSLogCreate();
    v19 = @"value";
    if ([@"value" length] >= 0x15)
    {
      v20 = [@"value" substringWithRange:{0, 18}];
      v19 = [v20 stringByAppendingString:@".."];
    }

    v21 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Bundle:%s -- value: %llu", v17, authorization_value];
    v22 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v19;
      v24 = v22;
      v25 = [(__CFString *)v19 UTF8String];
      *buf = 136446466;
      v30 = v25;
      v31 = 2114;
      v32 = v21;
      _os_log_impl(&dword_29EB58000, v24, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v26 = *(*(*(a1 + 40) + 8) + 40);
    v27 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v17];
    [v26 addObject:v27];
  }

LABEL_19:
  v28 = *MEMORY[0x29EDCA608];
}

void __74__ICDeviceAccessManager_updateApplicationWithBundleIdentifier_withStatus___block_invoke(uint64_t a1, void *a2, __CFError *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = CFErrorCopyDescription(a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_9;
    }
  }

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = tcc_authorization_record_get_service();
  v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:tcc_service_get_name()];
  v9 = [v8 isEqualToString:*MEMORY[0x29EDC6F20]];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_value();
    dispatch_semaphore_signal(*(a1 + 32));
  }

LABEL_9:
}

- (NSArray)bundleIdentifiersAccessingExternalCamerasWithStatus
{
  v95 = *MEMORY[0x29EDCA608];
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__0;
  v87 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  if (_os_feature_enabled_impl())
  {
    __ICOSLogCreate();
    if ([@"☀️ TCC" length] < 0x15)
    {
      v3 = @"☀️ TCC";
    }

    else
    {
      v2 = [@"☀️ TCC" substringWithRange:{0, 18}];
      v3 = [v2 stringByAppendingString:@".."];
    }

    v51 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(check) ---> New kTCCServiceExternalCameraMedia Service"];
    v52 = _gICOSLog;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v3;
      uTF8String = [(__CFString *)v3 UTF8String];
      *buf = 136446466;
      v92 = uTF8String;
      v93 = 2114;
      v94 = v51;
      _os_log_impl(&dword_29EB58000, v52, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v55 = dispatch_semaphore_create(0);
    v68 = tcc_server_create();
    v56 = *MEMORY[0x29EDC6F20];
    v57 = tcc_service_singleton_for_CF_name();
    v77 = MEMORY[0x29EDCA5F8];
    v78 = 3221225472;
    v79 = __76__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCamerasWithStatus__block_invoke;
    v80 = &unk_29F380F98;
    v82 = &v83;
    obj = v55;
    v81 = obj;
    tcc_server_message_get_authorization_records_by_service();

    dispatch_semaphore_wait(obj, 0xFFFFFFFFFFFFFFFFLL);
    v50 = obj;
    goto LABEL_54;
  }

  [(ICDeviceAccessManager *)self bundleIdentifiersWithAccessType:@"read_access"];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  obj = v74 = 0u;
  v4 = [obj countByEnumeratingWithState:&v73 objects:v90 count:16];
  if (v4)
  {
    v67 = *v74;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v74 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v73 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"read_access"];
        intValue = [v7 intValue];

        if (intValue == 1)
        {
          v9 = 0;
          goto LABEL_13;
        }

        if (intValue == 2)
        {
          v9 = 1;
LABEL_13:
          dictionary = [MEMORY[0x29EDB8E00] dictionary];
          v11 = [MEMORY[0x29EDBA070] numberWithBool:v9];
          [(__CFString *)dictionary setObject:v11 forKeyedSubscript:@"whitelisted"];

          v12 = [v6 objectForKeyedSubscript:@"bundle_id"];
          [(__CFString *)dictionary setObject:v12 forKeyedSubscript:@"bundle_id"];

          [v84[5] addObject:dictionary];
          __ICOSLogCreate();
          v13 = @"PrivacySettings";
          if ([@"PrivacySettings" length] >= 0x15)
          {
            v14 = [@"PrivacySettings" substringWithRange:{0, 18}];
            v13 = [v14 stringByAppendingString:@".."];
          }

          v15 = MEMORY[0x29EDBA0F8];
          v16 = [v6 objectForKeyedSubscript:@"bundle_id"];
          v17 = [v15 stringWithFormat:@"%@ (read) Access State %d, adding", v16, v9];

          v18 = _gICOSLog;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v13;
            uTF8String2 = [(__CFString *)v13 UTF8String];
            *buf = 136446466;
            v92 = uTF8String2;
            v93 = 2114;
            v94 = v17;
            _os_log_impl(&dword_29EB58000, v18, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          goto LABEL_22;
        }

        __ICOSLogCreate();
        dictionary = @"PrivacySettings";
        if ([@"PrivacySettings" length] >= 0x15)
        {
          v21 = [@"PrivacySettings" substringWithRange:{0, 18}];
          dictionary = [v21 stringByAppendingString:@".."];
        }

        v22 = MEMORY[0x29EDBA0F8];
        v23 = [v6 objectForKeyedSubscript:@"bundle_id"];
        v13 = [v22 stringWithFormat:@"%@ (read) Access State Unknown, not adding", v23];

        v17 = _gICOSLog;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v24 = dictionary;
          uTF8String3 = [(__CFString *)dictionary UTF8String];
          *buf = 136446466;
          v92 = uTF8String3;
          v93 = 2114;
          v94 = v13;
          _os_log_impl(&dword_29EB58000, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

LABEL_22:
      }

      v4 = [obj countByEnumeratingWithState:&v73 objects:v90 count:16];
    }

    while (v4);
  }

  [(ICDeviceAccessManager *)self bundleIdentifiersWithAccessType:@"write_access"];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v68 = v70 = 0u;
  v26 = [v68 countByEnumeratingWithState:&v69 objects:v89 count:16];
  if (!v26)
  {
    goto LABEL_44;
  }

  v27 = *v70;
  do
  {
    for (j = 0; j != v26; ++j)
    {
      if (*v70 != v27)
      {
        objc_enumerationMutation(v68);
      }

      v29 = *(*(&v69 + 1) + 8 * j);
      v30 = [v29 objectForKeyedSubscript:@"write_access"];
      intValue2 = [v30 intValue];

      if (intValue2 == 1)
      {
        v32 = 0;
        goto LABEL_33;
      }

      if (intValue2 == 2)
      {
        v32 = 1;
LABEL_33:
        dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
        v34 = [MEMORY[0x29EDBA070] numberWithBool:v32];
        [(__CFString *)dictionary2 setObject:v34 forKeyedSubscript:@"whitelisted"];

        v35 = [v29 objectForKeyedSubscript:@"bundle_id"];
        [(__CFString *)dictionary2 setObject:v35 forKeyedSubscript:@"bundle_id"];

        [v84[5] addObject:dictionary2];
        __ICOSLogCreate();
        v36 = @"PrivacySettings";
        if ([@"PrivacySettings" length] >= 0x15)
        {
          v37 = [@"PrivacySettings" substringWithRange:{0, 18}];
          v36 = [v37 stringByAppendingString:@".."];
        }

        v38 = MEMORY[0x29EDBA0F8];
        v39 = [v29 objectForKeyedSubscript:@"bundle_id"];
        v40 = [v38 stringWithFormat:@"%@ (write) Access State %d, adding", v39, v32];

        v41 = _gICOSLog;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v36;
          uTF8String4 = [(__CFString *)v36 UTF8String];
          *buf = 136446466;
          v92 = uTF8String4;
          v93 = 2114;
          v94 = v40;
          _os_log_impl(&dword_29EB58000, v41, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        goto LABEL_42;
      }

      __ICOSLogCreate();
      dictionary2 = @"PrivacySettings";
      if ([@"PrivacySettings" length] >= 0x15)
      {
        v44 = [@"PrivacySettings" substringWithRange:{0, 18}];
        dictionary2 = [v44 stringByAppendingString:@".."];
      }

      v45 = MEMORY[0x29EDBA0F8];
      v46 = [v29 objectForKeyedSubscript:@"bundle_id"];
      v36 = [v45 stringWithFormat:@"%@ (write) Access State Unknown, not adding", v46];

      v40 = _gICOSLog;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v47 = dictionary2;
        uTF8String5 = [(__CFString *)dictionary2 UTF8String];
        *buf = 136446466;
        v92 = uTF8String5;
        v93 = 2114;
        v94 = v36;
        _os_log_impl(&dword_29EB58000, v40, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

LABEL_42:
    }

    v26 = [v68 countByEnumeratingWithState:&v69 objects:v89 count:16];
  }

  while (v26);
LABEL_44:

  __ICOSLogCreate();
  if ([@"DEPRECATED" length] < 0x15)
  {
    v50 = @"DEPRECATED";
  }

  else
  {
    v49 = [@"DEPRECATED" substringWithRange:{0, 18}];
    v50 = [v49 stringByAppendingString:@".."];
  }

  v58 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"bundleIdentifiersAccessingExternalCamerasWithStatus: %@", v84[5]];
  v59 = _gICOSLog;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = v50;
    uTF8String6 = [(__CFString *)v50 UTF8String];
    *buf = 136446466;
    v92 = uTF8String6;
    v93 = 2114;
    v94 = v58;
    _os_log_impl(&dword_29EB58000, v59, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

LABEL_54:
  v62 = v84[5];
  _Block_object_dispose(&v83, 8);

  v63 = *MEMORY[0x29EDCA608];

  return v62;
}

void __76__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCamerasWithStatus__block_invoke(uint64_t a1, void *a2, __CFError *a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v5 = a2;
  if (a3)
  {
    v6 = CFErrorCopyDescription(a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_26:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_27;
    }
  }

  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_4:
  v7 = tcc_authorization_record_get_subject_attributed_entity();
  if (v7)
  {
    path = tcc_attributed_entity_get_path();
    __ICOSLogCreate();
    v9 = @"entity";
    if ([@"entity" length] >= 0x15)
    {
      v10 = [@"entity" substringWithRange:{0, 18}];
      v9 = [v10 stringByAppendingString:@".."];
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", path];
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v9;
      v14 = v12;
      *buf = 136446466;
      v34 = [(__CFString *)v9 UTF8String];
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_29EB58000, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v15 = tcc_authorization_record_get_subject_identity();
  identifier = tcc_identity_get_identifier();
  if (identifier)
  {
    v17 = identifier;
    authorization_value = tcc_authorization_record_get_authorization_value();
    if (authorization_value <= 4)
    {
      v19 = authorization_value;
      if (((1 << authorization_value) & 0x15) != 0)
      {
        v21 = authorization_value == 4 || authorization_value == 2;
        __ICOSLogCreate();
        v22 = @"value";
        if ([@"value" length] >= 0x15)
        {
          v23 = [@"value" substringWithRange:{0, 18}];
          v22 = [v23 stringByAppendingString:@".."];
        }

        v24 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Bundle:%s -- value: %llu", v17, v19];
        v25 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v22;
          v27 = v25;
          v28 = [(__CFString *)v22 UTF8String];
          *buf = 136446466;
          v34 = v28;
          v35 = 2114;
          v36 = v24;
          _os_log_impl(&dword_29EB58000, v27, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }

        v29 = [MEMORY[0x29EDB8E00] dictionary];
        v30 = [MEMORY[0x29EDBA070] numberWithBool:v21];
        [v29 setObject:v30 forKeyedSubscript:@"whitelisted"];

        v31 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v17];
        [v29 setObject:v31 forKeyedSubscript:@"bundle_id"];

        [*(*(*(a1 + 40) + 8) + 40) addObject:v29];
      }
    }
  }

LABEL_27:
  v32 = *MEMORY[0x29EDCA608];
}

- (NSArray)allBundleIdentifiers
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  v3 = dispatch_semaphore_create(0);
  deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __45__ICDeviceAccessManager_allBundleIdentifiers__block_invoke;
  block[3] = &unk_29F380F70;
  v9 = v3;
  v10 = &v11;
  block[4] = self;
  v5 = v3;
  dispatch_async(deviceAccessQueue, block);

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __45__ICDeviceAccessManager_allBundleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  errmsg = 0;
  if (sqlite3_exec([*(a1 + 32) externalMediaAccessDB], objc_msgSend(@"SELECT bundle_id FROM external_device_access;", "UTF8String"), ICAcessQuery, v2, &errmsg))
  {
    __ICOSLogCreate();
    v3 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v4 = [@"icaccess" substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v2];
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)addBundleIdentifier:(id)identifier
{
  v24 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  if (!_os_feature_enabled_impl())
  {
    allBundleIdentifiers = [(ICDeviceAccessManager *)self allBundleIdentifiers];
    if ([(__CFString *)allBundleIdentifiers containsObject:identifierCopy])
    {
      __ICOSLogCreate();
      v7 = @"icaccess";
      if ([@"icaccess" length] >= 0x15)
      {
        v11 = [@"icaccess" substringWithRange:{0, 18}];
        v7 = [v11 stringByAppendingString:@".."];
      }

      identifierCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ is already in the database, will not be added again", identifierCopy];
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        __29__ICDeviceAccessManager_init__block_invoke_cold_1();
      }
    }

    else
    {
      v12 = dispatch_semaphore_create(0);
      deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __45__ICDeviceAccessManager_addBundleIdentifier___block_invoke;
      block[3] = &unk_29F380FE0;
      v17 = identifierCopy;
      selfCopy = self;
      v19 = v12;
      v7 = v12;
      dispatch_async(deviceAccessQueue, block);

      v14 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v7, v14);

      identifierCopy = v17;
    }

    goto LABEL_12;
  }

  __ICOSLogCreate();
  allBundleIdentifiers = @"☀️ TCC";
  if ([@"☀️ TCC" length] >= 0x15)
  {
    v6 = [@"☀️ TCC" substringWithRange:{0, 18}];
    allBundleIdentifiers = [v6 stringByAppendingString:@".."];
  }

  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"No work performed in new TCC path"];
  v8 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = allBundleIdentifiers;
    identifierCopy = v8;
    *buf = 136446466;
    uTF8String = [(__CFString *)allBundleIdentifiers UTF8String];
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_29EB58000, identifierCopy, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
LABEL_12:
  }

  v15 = *MEMORY[0x29EDCA608];
}

void __45__ICDeviceAccessManager_addBundleIdentifier___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x29EDB8DB0] date];
  v2 = MEMORY[0x29EDBA0F8];
  v3 = *(a1 + 32);
  [v6 timeIntervalSince1970];
  v5 = [v2 stringWithFormat:@"INSERT INTO external_device_access(bundle_id, date_added, read_access, write_access, control_informed) VALUES ('%@', %lu, %lu, %lu, %lu)", v3, v4, 0, 0, 0];;
  sqlite3_exec([*(a1 + 40) externalMediaAccessDB], objc_msgSend(v5, "UTF8String"), 0, 0, 0);
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)updateBundleIdentifier:(id)identifier accessType:(id)type withState:(unint64_t)state
{
  v43 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  typeCopy = type;
  v10 = _os_feature_enabled_impl();
  if (typeCopy == @"control_informed" || !v10)
  {
    v25 = dispatch_semaphore_create(0);
    deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __69__ICDeviceAccessManager_updateBundleIdentifier_accessType_withState___block_invoke_2;
    block[3] = &unk_29F381008;
    v30 = typeCopy;
    stateCopy = state;
    v31 = identifierCopy;
    selfCopy = self;
    v33 = v25;
    v21 = v25;
    dispatch_async(deviceAccessQueue, block);

    v27 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v21, v27);

    v18 = v30;
  }

  else
  {
    __ICOSLogCreate();
    v11 = @"☀️ TCC";
    if ([@"☀️ TCC" length] >= 0x15)
    {
      v12 = [@"☀️ TCC" substringWithRange:{0, 18}];
      v11 = [v12 stringByAppendingString:@".."];
    }

    v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(check) ---> New kTCCServiceExternalCameraMedia Service"];
    v14 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v11;
      v16 = v14;
      *buf = 136446466;
      *&buf[4] = [(__CFString *)v11 UTF8String];
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_impl(&dword_29EB58000, v16, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v17 = dispatch_semaphore_create(0);
    v18 = tcc_server_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v42 = 1;
    v19 = identifierCopy;
    [identifierCopy UTF8String];
    v20 = tcc_identity_create();
    v35 = MEMORY[0x29EDCA5F8];
    v36 = 3221225472;
    v37 = __69__ICDeviceAccessManager_updateBundleIdentifier_accessType_withState___block_invoke;
    v38 = &unk_29F380F98;
    v40 = buf;
    v21 = v17;
    v39 = v21;
    tcc_server_message_get_authorization_records_by_identity();
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    v22 = *(*&buf[8] + 24);
    if (v22 <= 4 && ((1 << v22) & 0x15) != 0)
    {
      v23 = *MEMORY[0x29EDC6F20];
      v24 = tcc_service_singleton_for_CF_name();
      tcc_server_message_set_authorization_value();
    }

    _Block_object_dispose(buf, 8);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void __69__ICDeviceAccessManager_updateBundleIdentifier_accessType_withState___block_invoke(uint64_t a1, void *a2, __CFError *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = CFErrorCopyDescription(a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(v6);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_9;
    }
  }

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = tcc_authorization_record_get_service();
  v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:tcc_service_get_name()];
  v9 = [v8 isEqualToString:*MEMORY[0x29EDC6F20]];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_value();
    dispatch_semaphore_signal(*(a1 + 32));
  }

LABEL_9:
}

void __69__ICDeviceAccessManager_updateBundleIdentifier_accessType_withState___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"UPDATE external_device_access SET %@ = %lu WHERE bundle_id = '%@'", *(a1 + 32), *(a1 + 64), *(a1 + 40)];;
  errmsg = 0;
  if (sqlite3_exec([*(a1 + 48) externalMediaAccessDB], objc_msgSend(v3, "UTF8String"), 0, 0, &errmsg))
  {
    __ICOSLogCreate();
    v4 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v5 = [@"icaccess" substringWithRange:{0, 18}];
      v4 = [v5 stringByAppendingString:@".."];
    }

    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)bundleIdentifiersWithAccessType:(id)type
{
  typeCopy = type;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  v5 = dispatch_semaphore_create(0);
  deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __57__ICDeviceAccessManager_bundleIdentifiersWithAccessType___block_invoke;
  v12[3] = &unk_29F381030;
  v13 = typeCopy;
  selfCopy = self;
  v15 = v5;
  v16 = &v17;
  v7 = v5;
  v8 = typeCopy;
  dispatch_async(deviceAccessQueue, v12);

  v9 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v7, v9);
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __57__ICDeviceAccessManager_bundleIdentifiersWithAccessType___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"SELECT bundle_id, %@ FROM external_device_access", *(a1 + 32)];;
  v4 = [v3 UTF8String];

  errmsg = 0;
  if (sqlite3_exec([*(a1 + 40) externalMediaAccessDB], v4, ICAcessStatusQuery, v2, &errmsg))
  {
    __ICOSLogCreate();
    v5 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v6 = [@"icaccess" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v2];
  dispatch_semaphore_signal(*(a1 + 48));
}

- (unint64_t)connection:(id)connection stateForAccessType:(id)type
{
  connectionCopy = connection;
  typeCopy = type;
  v8 = xpc_connection_copy_entitlement_value();
  v9 = v8;
  if (v8 && xpc_BOOL_get_value(v8))
  {
    v10 = 2;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    xpc_connection_get_audit_token();
    v11 = *MEMORY[0x29EDB8ED8];
    memset(&v16, 0, sizeof(v16));
    v12 = SecTaskCreateWithAuditToken(v11, &v16);
    if (v12)
    {
      v13 = v12;
      *v16.val = 0;
      v14 = SecTaskCopySigningIdentifier(v12, &v16);
      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    v10 = [(ICDeviceAccessManager *)self bundleIdentifier:v14 stateForAccessType:typeCopy];
  }

  return v10;
}

- (unint64_t)bundleIdentifier:(id)identifier stateForAccessType:(id)type
{
  v27 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  typeCopy = type;
  v8 = _os_feature_enabled_impl();
  v21 = typeCopy;
  if (typeCopy == @"control_informed" || (v8 & 1) == 0)
  {
    [(ICDeviceAccessManager *)self validateBundleIdentifierInstalled:identifierCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(ICDeviceAccessManager *)self bundleIdentifiersWithAccessType:typeCopy];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      intValue = 0;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"bundle_id"];
          v17 = [v16 isEqualToString:identifierCopy];

          if (v17)
          {
            v18 = [v15 objectForKeyedSubscript:v21];
            intValue = [v18 intValue];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    else
    {
      intValue = 0;
    }
  }

  else
  {
    intValue = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
  return intValue;
}

- (void)revokeBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  __ICOSLogCreate();
  v5 = @"icaccess";
  if ([@"icaccess" length] >= 0x15)
  {
    v6 = [@"icaccess" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  identifierCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Revoking Application BundleID %@", identifierCopy];
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
  {
    __29__ICDeviceAccessManager_init__block_invoke_cold_1();
  }

  v8 = dispatch_semaphore_create(0);
  deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __48__ICDeviceAccessManager_revokeBundleIdentifier___block_invoke;
  block[3] = &unk_29F380FE0;
  v14 = identifierCopy;
  selfCopy = self;
  v16 = v8;
  v10 = v8;
  v11 = identifierCopy;
  dispatch_async(deviceAccessQueue, block);

  v12 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v10, v12);
}

void __48__ICDeviceAccessManager_revokeBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"DELETE FROM external_device_access WHERE bundle_id IS '%@'", *(a1 + 32)];;
  errmsg = 0;
  if (sqlite3_exec([*(a1 + 40) externalMediaAccessDB], objc_msgSend(v2, "UTF8String"), 0, 0, &errmsg))
  {
    __ICOSLogCreate();
    v3 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v4 = [@"icaccess" substringWithRange:{0, 18}];
      v3 = [v4 stringByAppendingString:@".."];
    }

    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)validateBundleIdentifierInstalled:(id)installed
{
  v49 = *MEMORY[0x29EDCA608];
  installedCopy = installed;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = dispatch_semaphore_create(0);
  deviceAccessQueue = [(ICDeviceAccessManager *)self deviceAccessQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __59__ICDeviceAccessManager_validateBundleIdentifierInstalled___block_invoke;
  block[3] = &unk_29F381030;
  v6 = installedCopy;
  v34 = v6;
  selfCopy = self;
  v37 = &v38;
  v7 = v4;
  v36 = v7;
  dispatch_async(deviceAccessQueue, block);

  v8 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v7, v8);
  v32 = 0;
  v9 = [objc_alloc(MEMORY[0x29EDB93F8]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v32];
  v10 = v32;
  v26 = v10;
  if (v9 && !v10)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v39[5];
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v48 count:{16, v26}];
    if (v12)
    {
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"bundle_id"];
          v16 = [v15 isEqualToString:v6];

          if (v16)
          {

            v23 = 1;
            goto LABEL_19;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v28 objects:v48 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  __ICOSLogCreate();
  if ([@"icaccess" length] < 0x15)
  {
    v18 = @"icaccess";
  }

  else
  {
    v17 = [@"icaccess" substringWithRange:{0, 18}];
    v18 = [v17 stringByAppendingString:@".."];
  }

  v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Bundle was not found to be installed on the device, revoking access defensively to require the user to re-authorize upon install.", v26];
  v20 = _gICOSLog;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v18;
    uTF8String = [(__CFString *)v18 UTF8String];
    *buf = 136446466;
    v45 = uTF8String;
    v46 = 2114;
    v47 = v19;
    _os_log_impl(&dword_29EB58000, v20, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [(ICDeviceAccessManager *)self revokeBundleIdentifier:v6];
  v23 = 0;
LABEL_19:

  _Block_object_dispose(&v38, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

void __59__ICDeviceAccessManager_validateBundleIdentifierInstalled___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"SELECT bundle_id FROM external_device_access WHERE bundle_id IS '%@'", *(a1 + 32)];;
  v4 = [v3 UTF8String];

  errmsg = 0;
  if (sqlite3_exec([*(a1 + 40) externalMediaAccessDB], v4, ICAcessStatusQuery, *(*(*(a1 + 56) + 8) + 40), &errmsg))
  {
    __ICOSLogCreate();
    v5 = @"icaccess";
    if ([@"icaccess" length] >= 0x15)
    {
      v6 = [@"icaccess" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", errmsg];
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      __29__ICDeviceAccessManager_init__block_invoke_cold_1();
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v2];
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)displayAlertForApplication:(id)application withNotification:(id)notification completionBlock:(id)block
{
  blockCopy = block;
  error = 0;
  v7 = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0, &error, notification);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    CFUserNotificationReceiveResponse(v7, 0.0, &v9);
    blockCopy[2](blockCopy, 1, v9);
    CFRelease(v8);
  }
}

- (BOOL)captureUserIntentForBundleIdentifier:(id)identifier withNotification:(id)notification
{
  identifierCopy = identifier;
  notificationCopy = notification;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (notificationCopy)
  {
    v7 = dispatch_semaphore_create(0);
    v8 = +[ICDeviceAccessManager sharedAccessManager];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __79__ICDeviceAccessManager_captureUserIntentForBundleIdentifier_withNotification___block_invoke;
    v12[3] = &unk_29F381058;
    v14 = &v15;
    v9 = v7;
    v13 = v9;
    [v8 displayAlertForApplication:identifierCopy withNotification:notificationCopy completionBlock:v12];

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v10 = *(v16 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10 & 1;
}

- (void)displayAlertForControlWithNotification:(id)notification completionBlock:(id)block
{
  blockCopy = block;
  error = 0;
  v6 = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0, &error, notification);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    CFUserNotificationReceiveResponse(v6, 0.0, &v8);
    blockCopy[2](blockCopy, 1, v8);
    CFRelease(v7);
  }
}

- (BOOL)captureUserIntentForControlWithBundleIdentifier:(id)identifier withNotification:(id)notification
{
  identifierCopy = identifier;
  notificationCopy = notification;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (notificationCopy)
  {
    v7 = dispatch_semaphore_create(0);
    v8 = +[ICDeviceAccessManager sharedAccessManager];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __90__ICDeviceAccessManager_captureUserIntentForControlWithBundleIdentifier_withNotification___block_invoke;
    v12[3] = &unk_29F381058;
    v14 = &v15;
    v9 = v7;
    v13 = v9;
    [v8 displayAlertForControlWithNotification:notificationCopy completionBlock:v12];

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v10 = *(v16 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10 & 1;
}

void __29__ICDeviceAccessManager_init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v12 = *MEMORY[0x29EDCA608];
  v2 = v1;
  v3 = v0;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_29EB58000, v4, v5, "%{public}20s ! %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x29EDCA608];
}

void __66__ICDeviceAccessManager_bundleIdentifiersAccessingExternalCameras__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_29EB58000, MEMORY[0x29EDCA988], v2, "tcc_server_message_get_authorization_records_by_service error %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x29EDCA608];
}

@end