@interface MBPrebuddyManager
+ (BOOL)hasPrebuddyFollowUp;
+ (NSString)backupToCloudImageName;
+ (NSString)twoDeviceImageName;
+ (id)baseFollowupItem;
+ (id)sharedManager;
- (BOOL)isPrebuddyMode;
- (MBPrebuddyManager)init;
- (id)dateOfLastBackup;
- (void)extendPrebuddy:(id)a3 completion:(id)a4;
- (void)followupAction:(id)a3;
- (void)prebuddyBackupDeleted:(id)a3;
- (void)shortenPrebuddyExpiration;
- (void)signalPrebuddy:(id)a3;
@end

@implementation MBPrebuddyManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MBPrebuddyManager sharedManager];
  }

  v3 = _sharedManager;

  return v3;
}

uint64_t __34__MBPrebuddyManager_sharedManager__block_invoke()
{
  _sharedManager = objc_alloc_init(MBPrebuddyManager);

  return MEMORY[0x1EEE66BB8]();
}

- (MBPrebuddyManager)init
{
  v7.receiver = self;
  v7.super_class = MBPrebuddyManager;
  v2 = [(MBPrebuddyManager *)&v7 init];
  if (v2)
  {
    v3 = [MBXPCClient alloc];
    v4 = [(MBXPCClient *)v3 initWithDelegate:v2 eventQueue:MEMORY[0x1E69E96A0]];
    managerClient = v2->_managerClient;
    v2->_managerClient = v4;
  }

  return v2;
}

- (void)signalPrebuddy:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [(MBXPCClient *)self->_managerClient _sendRequest:@"kMBMessageStartPrebuddySignal" arguments:v6 error:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)extendPrebuddy:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MBPrebuddyManager_extendPrebuddy_completion___block_invoke;
  block[3] = &unk_1E8684730;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

uint64_t __47__MBPrebuddyManager_extendPrebuddy_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, MEMORY[0x1E695E0F8]);
  }

  return result;
}

- (void)prebuddyBackupDeleted:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MBManager);
  v16 = 0;
  v5 = [(MBManager *)v4 restorePreviousSettingsEnabledForMegaBackup:&v16];
  v6 = v16;
  if (!v5)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "Failed to restore previous settings enabled for mega backup: %@", buf, 0xCu);
      _MBLog(@"Df", "Failed to restore previous settings enabled for mega backup: %@", v8, v9, v10, v11, v12, v13, v6);
    }
  }

  v14 = [(MBXPCClient *)self->_managerClient _sendRequest:@"kMBMessagePrebuddyBackupDeleted" arguments:0 error:0];

  v15 = *MEMORY[0x1E69E9840];
}

+ (NSString)twoDeviceImageName
{
  v2 = MBDeviceClass();
  v3 = [v2 lowercaseString];

  v4 = MBHomeButtonType();
  v5 = [v4 integerValue];

  v6 = [v3 isEqualToString:@"ipad"];
  v7 = @"iPad_home";
  v8 = @"iPhone_home";
  if (v5 == 2)
  {
    v7 = @"iPad";
    v8 = @"iPhone";
  }

  if (v6)
  {
    p_isa = &v7->isa;
  }

  else
  {
    p_isa = &v8->isa;
  }

  return p_isa;
}

+ (NSString)backupToCloudImageName
{
  v2 = MBDeviceClass();
  v3 = [v2 lowercaseString];

  v4 = MBHomeButtonType();
  v5 = [v4 integerValue];

  v6 = [v3 isEqualToString:@"ipad"];
  v7 = @"cloud-arrow-up-iPad-2";
  v8 = @"cloud-arrow-up-iphone-2";
  if (v5 == 2)
  {
    v7 = @"cloud-arrow-up-iPad";
    v8 = @"cloud-arrow-up-iphone-1";
  }

  if (v6)
  {
    p_isa = &v7->isa;
  }

  else
  {
    p_isa = &v8->isa;
  }

  return p_isa;
}

+ (id)baseFollowupItem
{
  v3 = objc_alloc_init(MEMORY[0x1E6997AD0]);
  [v3 setUniqueIdentifier:@"com.apple.backupd.prebuddy"];
  [v3 setGroupIdentifier:*MEMORY[0x1E6997AA0]];
  [v3 setTargetBundleIdentifier:*MEMORY[0x1E6997A88]];
  [v3 setExtensionIdentifier:@"com.apple.MobileBackup.framework.MBPrebuddyFollowUpExtension"];
  [v3 setRepresentingBundlePath:@"/System/Library/PrivateFrameworks/MobileBackup.framework/PlugIns/MBPrebuddyFollowUpExtension.appex"];
  v4 = [a1 twoDeviceImageName];
  [v3 setBundleIconName:v4];

  [v3 setDisplayStyle:16];

  return v3;
}

+ (BOOL)hasPrebuddyFollowUp
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E6997AC8]) initWithClientIdentifier:@"com.apple.backupd"];
  v27 = 0;
  v3 = [v2 pendingFollowUpItems:&v27];
  v4 = v27;
  if (v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_ERROR, "Unable to fetch pending follow ups: %@", buf, 0xCu);
      _MBLog(@"E ", "Unable to fetch pending follow ups: %@", v6, v7, v8, v9, v10, v11, v4);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [v17 uniqueIdentifier];
        if ([v18 isEqualToString:@"com.apple.backupd.prebuddy"])
        {
          v19 = [v17 isExpired];

          if ((v19 & 1) == 0)
          {
            v20 = 1;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v14);
  }

  v20 = 0;
LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)followupAction:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6997AC0];
  v4 = a3;
  v5 = MBLocalizedStringFromTable(@"MB_PREBUDDY_START_TITLE", @"MobileBackup");
  v6 = [v3 actionWithLabel:v5 url:0];

  v9 = @"manualSignal";
  v10[0] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6 setUserInfo:v7];

  v4[2](v4, v6);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)dateOfLastBackup
{
  v2 = [(MBPrebuddyManager *)self managerClient];
  v3 = [v2 dateOfLastBackup];

  return v3;
}

- (BOOL)isPrebuddyMode
{
  v2 = [(MBXPCClient *)self->_managerClient _sendRequest:@"kMBMessageIsPrebuddyMode" arguments:MEMORY[0x1E695E0F0] error:0];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)shortenPrebuddyExpiration
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(MBPrebuddyManager *)self isPrebuddyMode])
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [v4 dateByAddingUnit:64 value:5 toDate:v3 options:0];

    managerClient = self->_managerClient;
    v31 = 0;
    v7 = [(MBXPCClient *)managerClient requestMegaBackupExpirationDate:v5 error:&v31];
    v8 = v31;
    v9 = MBGetDefaultLog();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v33 = v5;
        _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_DEFAULT, "Successfully shortened prebuddy expiration to %{public}@", buf, 0xCu);
        _MBLog(@"Df", "Successfully shortened prebuddy expiration to %{public}@", v11, v12, v13, v14, v15, v16, v5);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v33 = v5;
      v34 = 2114;
      v35 = v8;
      _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_ERROR, "Unable to shorten prebuddy expiration to %{public}@. Error: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Unable to shorten prebuddy expiration to %{public}@. Error: %{public}@", v23, v24, v25, v26, v27, v28, v5);
    }
  }

  else
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "Not in Prebuddy mode, so nothing to shorten.", buf, 2u);
      _MBLog(@"Df", "Not in Prebuddy mode, so nothing to shorten.", v17, v18, v19, v20, v21, v22, v30);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

@end