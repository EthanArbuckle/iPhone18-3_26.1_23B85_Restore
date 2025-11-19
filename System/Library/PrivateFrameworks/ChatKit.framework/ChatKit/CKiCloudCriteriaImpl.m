@interface CKiCloudCriteriaImpl
+ (BOOL)iCloudBackupEnabledSystemWide;
+ (id)createBackupManager;
+ (id)sharedInstance;
+ (int64_t)otherDevicesCount;
- (void)fetchCloudStorageUsageInformationWithCompletion:(id)a3;
@end

@implementation CKiCloudCriteriaImpl

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CKiCloudCriteriaImpl sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __38__CKiCloudCriteriaImpl_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKiCloudCriteriaImpl);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (void)fetchCloudStorageUsageInformationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6959A48] defaultStore];
  v5 = [v4 aa_primaryAppleAccount];

  v6 = [objc_alloc(MEMORY[0x1E698B960]) initDetailedRequestWithAccount:v5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__CKiCloudCriteriaImpl_fetchCloudStorageUsageInformationWithCompletion___block_invoke;
  v8[3] = &unk_1E72EFFB0;
  v9 = v3;
  v7 = v3;
  [v6 performRequestWithHandler:v8];
}

void __72__CKiCloudCriteriaImpl_fetchCloudStorageUsageInformationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [v10 error];

  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v9 debugDescription];
        *buf = 138412290;
        v23 = *&v13;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "performRequestWithHandler for quota request failed with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = [v10 availableStorageInBytes];
    v15 = [v10 usedStorageInBytes];
    v16 = [v10 totalStorageInBytes];
    v21 = [v14 unsignedLongValue];
    v17 = [v15 unsignedLongValue];
    v18 = [v16 unsignedLongValue];
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v23 = (v21 >> 20);
        v24 = 2048;
        v25 = (v17 >> 20);
        v26 = 2048;
        v27 = (v18 >> 20);
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Quota Returned: availableStorageInBytes={%g MB} usedStorageInBytes={%g MB} totalStorageInBytes={%g MB}", buf, 0x20u);
      }
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      (*(v20 + 16))(v20, v21, v17, v18);
    }
  }
}

+ (BOOL)iCloudBackupEnabledSystemWide
{
  v2 = +[CKiCloudCriteriaImpl createBackupManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isBackupEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)createBackupManager
{
  if (createBackupManager_onceToken != -1)
  {
    +[CKiCloudCriteriaImpl createBackupManager];
  }

  v2 = createBackupManager_MBManagerClass;
  if (createBackupManager_MBManagerClass)
  {
    v2 = objc_alloc_init(createBackupManager_MBManagerClass);
  }

  return v2;
}

void __43__CKiCloudCriteriaImpl_createBackupManager__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  createBackupManager_MBManagerClass = MEMORY[0x193AF5EC0](@"MBManager", @"MobileBackup");
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      if (createBackupManager_MBManagerClass)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v2 = 138412290;
      v3 = v1;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Loaded MBManagerClass: %@", &v2, 0xCu);
    }
  }
}

+ (int64_t)otherDevicesCount
{
  v2 = objc_alloc(MEMORY[0x1E69A48A8]);
  v3 = [v2 initWithService:*MEMORY[0x1E69A4818]];
  v4 = [v3 devices];
  v5 = [v4 count];

  return v5;
}

@end