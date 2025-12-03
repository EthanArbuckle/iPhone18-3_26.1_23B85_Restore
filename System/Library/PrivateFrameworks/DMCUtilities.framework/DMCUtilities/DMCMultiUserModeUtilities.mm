@interface DMCMultiUserModeUtilities
+ (BOOL)_updateMultiUserConfigurationFileAtPath:(id)path key:(id)key value:(id)value;
+ (BOOL)_updateMultiUserDeviceConfigurationFileWithKey:(id)key value:(id)value;
+ (BOOL)_updateMultiUserUserConfigurationFileWithKey:(id)key value:(id)value;
+ (BOOL)awaitUserConfigurationEnabled;
+ (BOOL)configureAwaitUserConfiguration:(id)configuration;
+ (BOOL)configureMAIDDefaultDomains:(id)domains;
+ (BOOL)configureTemporarySessionTimeout:(double)timeout;
+ (BOOL)configureUserSessionTimeout:(double)timeout;
+ (BOOL)deviceHasMultipleUsers;
+ (BOOL)inSharediPadUserSession;
+ (BOOL)isCurrentUserConfigured;
+ (BOOL)isPrimaryUserSession;
+ (BOOL)isSharediPad;
+ (BOOL)markCurrentUserAsConfigured;
+ (BOOL)shouldSkipLanguageAndLocaleSetupForNewUsers;
+ (BOOL)temporarySessionOnly;
+ (BOOL)useDynamicQuotaSize;
+ (double)temporarySessionTimeout;
+ (double)userSessionTimeout;
+ (id)_configureQuotaSizeForSharedDeviceImmediately:(id)immediately;
+ (id)_configureResidentUsersNumberForSharedDeviceImmediately:(id)immediately;
+ (id)configureQuotaSizeForSharedDevice:(id)device preferenceDomain:(__CFString *)domain;
+ (id)configureResidentUsersNumberForSharedDevice:(id)device preferenceDomain:(__CFString *)domain;
+ (id)configureToSharedDeviceWithPreferenceDomain:(__CFString *)domain;
+ (id)managedAppleIDDefaultDomains;
+ (id)onlineAuthenticationGracePeriod;
+ (unint64_t)_getDiskSize;
+ (unint64_t)_previousQuotaSize;
+ (unint64_t)getDiskAvailableSize;
@end

@implementation DMCMultiUserModeUtilities

+ (BOOL)isSharediPad
{
  v2 = MKBUserTypeDeviceMode();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B1A60]];
    if ([v4 isEqualToString:*MEMORY[0x1E69B1A20]])
    {
      v6 = [v5 isEqualToString:*MEMORY[0x1E69B1A58]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v4 = 0;
    NSLog(&cfstr_Mkbusertypedev.isa, 0);
    v6 = 0;
  }

  return v6;
}

+ (BOOL)inSharediPadUserSession
{
  if ([self isSharediPad])
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentUser = [mEMORY[0x1E69DF068] currentUser];

    if ([self isSharediPad])
    {
      v5 = [currentUser isLoginUser] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)deviceHasMultipleUsers
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  allUsers = [mEMORY[0x1E69DF068] allUsers];
  v4 = [allUsers count] > 1;

  return v4;
}

+ (BOOL)isPrimaryUserSession
{
  if (isPrimaryUserSession_onceToken != -1)
  {
    +[DMCMultiUserModeUtilities isPrimaryUserSession];
  }

  return isPrimaryUserSession_result;
}

uint64_t __49__DMCMultiUserModeUtilities_isPrimaryUserSession__block_invoke()
{
  result = +[DMCMultiUserModeUtilities isSharediPad];
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = getuid();
    v1 = result == 501;
  }

  isPrimaryUserSession_result = v1;
  return result;
}

+ (id)configureToSharedDeviceWithPreferenceDomain:(__CFString *)domain
{
  v4 = DMCLogObjects()[1];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "Configuring device to shared device", v11, 2u);
  }

  v5 = CFPreferencesCopyAppValue(@"MCSharedDeviceUserQuotaSize", domain);
  if (v5)
  {
    v6 = [DMCMultiUserModeUtilities _configureQuotaSizeForSharedDeviceImmediately:v5];
  }

  else
  {
    v7 = CFPreferencesCopyAppValue(@"MCMaximumResidentUsers", domain);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &unk_1F2868248;
    }

    v6 = [DMCMultiUserModeUtilities _configureResidentUsersNumberForSharedDeviceImmediately:v9];
  }

  return v6;
}

+ (id)configureQuotaSizeForSharedDevice:(id)device preferenceDomain:(__CFString *)domain
{
  deviceCopy = device;
  if (+[DMCMultiUserModeUtilities isFirstSetupBuddyDone])
  {
    v6 = [DMCMultiUserModeUtilities _configureQuotaSizeForSharedDeviceImmediately:deviceCopy];
  }

  else
  {
    v7 = DMCLogObjects()[1];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "We are in buddy, caching the user quota info", v9, 2u);
    }

    CFPreferencesSetAppValue(@"MCSharedDeviceUserQuotaSize", deviceCopy, domain);
    CFPreferencesAppSynchronize(domain);
    v6 = 0;
  }

  return v6;
}

+ (id)configureResidentUsersNumberForSharedDevice:(id)device preferenceDomain:(__CFString *)domain
{
  deviceCopy = device;
  if (+[DMCMultiUserModeUtilities isFirstSetupBuddyDone])
  {
    v6 = [DMCMultiUserModeUtilities _configureResidentUsersNumberForSharedDeviceImmediately:deviceCopy];
  }

  else
  {
    v7 = DMCLogObjects()[1];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "We are in buddy, caching the maximum resident user info", v9, 2u);
    }

    CFPreferencesSetAppValue(@"MCMaximumResidentUsers", deviceCopy, domain);
    CFPreferencesAppSynchronize(domain);
    v6 = 0;
  }

  return v6;
}

+ (BOOL)configureUserSessionTimeout:(double)timeout
{
  if (timeout <= 0.0)
  {

    return [DMCMultiUserModeUtilities _updateMultiUserDeviceConfigurationFileWithKey:@"UserSessionTimeout" value:&unk_1F2868260];
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v4 = [DMCMultiUserModeUtilities _updateMultiUserDeviceConfigurationFileWithKey:@"UserSessionTimeout" value:v3];

    return v4;
  }
}

+ (BOOL)configureTemporarySessionTimeout:(double)timeout
{
  if (timeout <= 0.0)
  {

    return [DMCMultiUserModeUtilities _updateMultiUserDeviceConfigurationFileWithKey:@"TemporarySessionTimeout" value:&unk_1F2868260];
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v4 = [DMCMultiUserModeUtilities _updateMultiUserDeviceConfigurationFileWithKey:@"TemporarySessionTimeout" value:v3];

    return v4;
  }
}

+ (double)userSessionTimeout
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  v5 = 0.0;
  if (v4)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = DMCMultiUserDeviceConfigurationFilePath();
    v8 = [v6 DMCDictionaryFromFile:v7];
    v9 = [v8 objectForKeyedSubscript:@"UserSessionTimeout"];
    [v9 floatValue];
    v5 = v10;
  }

  return v5;
}

+ (double)temporarySessionTimeout
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  v5 = 0.0;
  if (v4)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = DMCMultiUserDeviceConfigurationFilePath();
    v8 = [v6 DMCDictionaryFromFile:v7];
    v9 = [v8 objectForKeyedSubscript:@"TemporarySessionTimeout"];
    [v9 floatValue];
    v5 = v10;
  }

  return v5;
}

+ (BOOL)temporarySessionOnly
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DF20];
  v6 = DMCMultiUserDeviceConfigurationFilePath();
  v7 = [v5 DMCDictionaryFromFile:v6];
  v8 = [v7 objectForKeyedSubscript:@"TemporarySessionOnly"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

+ (BOOL)useDynamicQuotaSize
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DF20];
  v6 = DMCMultiUserDeviceConfigurationFilePath();
  v7 = [v5 DMCDictionaryFromFile:v6];
  v8 = [v7 objectForKeyedSubscript:@"UseDynamicQuota"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

+ (BOOL)configureMAIDDefaultDomains:(id)domains
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:domains];
  allObjects = [v4 allObjects];

  LOBYTE(self) = [self _updateMultiUserDeviceConfigurationFileWithKey:@"ManagedAppleIDDefaultDomains" value:allObjects];
  return self;
}

+ (id)managedAppleIDDefaultDomains
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (v4)
  {
    v5 = MEMORY[0x1E695DF20];
    v6 = DMCMultiUserDeviceConfigurationFilePath();
    v7 = [v5 DMCDictionaryFromFile:v6];
    v8 = [v7 objectForKeyedSubscript:@"ManagedAppleIDDefaultDomains"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)onlineAuthenticationGracePeriod
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (v4)
  {
    v5 = MEMORY[0x1E695DF20];
    v6 = DMCMultiUserDeviceConfigurationFilePath();
    v7 = [v5 DMCDictionaryFromFile:v6];
    v8 = [v7 objectForKeyedSubscript:@"OnlineAuthenticationGracePeriod"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)shouldSkipLanguageAndLocaleSetupForNewUsers
{
  if (!+[DMCMultiUserModeUtilities isSharediPad])
  {
    return 0;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DF20];
  v6 = DMCMultiUserDeviceConfigurationFilePath();
  v7 = [v5 DMCDictionaryFromFile:v6];
  v8 = [v7 objectForKeyedSubscript:@"SkipLanguageAndLocaleSetupForNewUsers"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

+ (BOOL)configureAwaitUserConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [configurationCopy objectForKeyedSubscript:@"Enabled"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [self markCurrentUserAsConfigured];
  }

  v7 = [self _updateMultiUserDeviceConfigurationFileWithKey:@"AwaitUserConfiguration" value:configurationCopy];

  return v7;
}

+ (BOOL)awaitUserConfigurationEnabled
{
  if (!+[DMCMultiUserModeUtilities isSharediPad])
  {
    return 0;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DF20];
  v6 = DMCMultiUserDeviceConfigurationFilePath();
  v7 = [v5 DMCDictionaryFromFile:v6];
  v8 = [v7 objectForKeyedSubscript:@"AwaitUserConfiguration"];
  v9 = [v8 objectForKeyedSubscript:@"Enabled"];
  bOOLValue = [v9 BOOLValue];

  return bOOLValue;
}

+ (BOOL)markCurrentUserAsConfigured
{
  v14 = *MEMORY[0x1E69E9840];
  if (!+[DMCMultiUserModeUtilities inSharediPadUserSession])
  {
    goto LABEL_4;
  }

  v2 = sem_open("dmc_isCurrentUserConfigured", 512, 256, 0);
  if (v2 != -1)
  {
    sem_close(v2);
    DMCSendUserSettingsChangedNotification();
LABEL_4:
    LOBYTE(v3) = 1;
    goto LABEL_5;
  }

  v5 = *DMCLogObjects();
  v3 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    v6 = v5;
    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136446466;
    v11 = "dmc_isCurrentUserConfigured";
    v12 = 2082;
    v13 = v8;
    _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_ERROR, "Failed to create semaphore %{public}s: %{public}s", buf, 0x16u);

    LOBYTE(v3) = 0;
  }

LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (BOOL)isCurrentUserConfigured
{
  if (!+[DMCMultiUserModeUtilities inSharediPadUserSession](DMCMultiUserModeUtilities, "inSharediPadUserSession") || ![self awaitUserConfigurationEnabled])
  {
    return 1;
  }

  v3 = sem_open("dmc_isCurrentUserConfigured", 0);
  if (v3 != -1)
  {
    sem_close(v3);
    return 1;
  }

  return 0;
}

+ (BOOL)_updateMultiUserDeviceConfigurationFileWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v8 = DMCMultiUserDeviceConfigurationFilePath();
  LOBYTE(self) = [self _updateMultiUserConfigurationFileAtPath:v8 key:keyCopy value:valueCopy];

  DMCSendSettingsChangedNotification();
  return self;
}

+ (BOOL)_updateMultiUserUserConfigurationFileWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v8 = DMCMultiUserUserConfigurationFilePath();
  LOBYTE(self) = [self _updateMultiUserConfigurationFileAtPath:v8 key:keyCopy value:valueCopy];

  DMCSendUserSettingsChangedNotification();
  return self;
}

+ (BOOL)_updateMultiUserConfigurationFileAtPath:(id)path key:(id)key value:(id)value
{
  pathCopy = path;
  v8 = MEMORY[0x1E695DF90];
  valueCopy = value;
  keyCopy = key;
  v11 = [v8 DMCDictionaryFromFile:pathCopy];
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;

  [v15 setObject:valueCopy forKeyedSubscript:keyCopy];
  v16 = [v15 DMCWriteToBinaryFile:pathCopy];
  if (v16)
  {
    DMCSetSkipBackupAttributeToItemAtPath(pathCopy, 1);
  }

  return v16;
}

+ (unint64_t)_previousQuotaSize
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = DMCMultiUserDeviceConfigurationFilePath();
  v4 = [defaultManager fileExistsAtPath:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DF20];
  v6 = DMCMultiUserDeviceConfigurationFilePath();
  v7 = [v5 DMCDictionaryFromFile:v6];
  v8 = [v7 objectForKeyedSubscript:@"MCPreviousQuotaSize"];
  unsignedLongValue = [v8 unsignedLongValue];

  return unsignedLongValue;
}

+ (id)_configureQuotaSizeForSharedDeviceImmediately:(id)immediately
{
  v28[2] = *MEMORY[0x1E69E9840];
  immediatelyCopy = immediately;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  unsignedLongLongValue = [immediatelyCopy unsignedLongLongValue];
  getDiskAvailableSize = [self getDiskAvailableSize];
  v7 = 2000000000;
  if (unsignedLongLongValue > 0x77359400)
  {
    v7 = unsignedLongLongValue;
  }

  if (v7 >= getDiskAvailableSize - 2000000000)
  {
    v7 = getDiskAvailableSize - 2000000000;
  }

  v8 = getDiskAvailableSize * 0.98;
  if (v8 > v7)
  {
    v8 = v7;
  }

  v28[0] = *MEMORY[0x1E69DF0B8];
  v9 = *MEMORY[0x1E69DF0A0];
  v27[0] = *MEMORY[0x1E69DF0C0];
  v27[1] = v9;
  0xFFFFFFFFFFF00000 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8 & 0xFFFFFFFFFFF00000];
  v28[1] = 0xFFFFFFFFFFF00000;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v12 = dispatch_semaphore_create(0);
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__DMCMultiUserModeUtilities__configureQuotaSizeForSharedDeviceImmediately___block_invoke;
  v18[3] = &unk_1E7ADCD20;
  v20 = &v21;
  v14 = v12;
  v19 = v14;
  [mEMORY[0x1E69DF068] setupUMUserSessionProvisioning:v11 WithCompletionHandler:v18];

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = v22[5];

  _Block_object_dispose(&v21, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __75__DMCMultiUserModeUtilities__configureQuotaSizeForSharedDeviceImmediately___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = DMCLogObjects()[1];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "Finished configuring quota size with result: %{public}@, error: %{public}@", &v9, 0x16u);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)_configureResidentUsersNumberForSharedDeviceImmediately:(id)immediately
{
  unsignedIntValue = [immediately unsignedIntValue];
  getDiskAvailableSize = [self getDiskAvailableSize];
  if (+[DMCMultiUserModeUtilities isFirstSetupBuddyDone])
  {
    v6 = getDiskAvailableSize - 2000000000;
  }

  else
  {
    _getDiskSize = [self _getDiskSize];
    v8 = -16000000000;
    if (_getDiskSize < 0x800000001)
    {
      v8 = -8000000000;
    }

    v6 = v8 + getDiskAvailableSize;
  }

  0xFFFFFFFFFFF00000 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(v6 / unsignedIntValue) & 0xFFFFFFFFFFF00000];
  v10 = [DMCMultiUserModeUtilities _configureQuotaSizeForSharedDeviceImmediately:0xFFFFFFFFFFF00000];

  return v10;
}

+ (unint64_t)getDiskAvailableSize
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v9, 0, 512);
  strcpy(v8, "/private/var");
  if (statfs(v8, &v9))
  {
    v2 = 0;
  }

  else
  {
    v2 = v9.f_bavail * v9.f_bsize;
  }

  v3 = DMCLogObjects()[1];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134349056;
    v7 = v2;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "Available disk size: %{public}lld", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (unint64_t)_getDiskSize
{
  valuePtr = 0;
  result = +[DMCMobileGestalt diskUsage];
  if (result)
  {
    v3 = result;
    Value = CFDictionaryGetValue(result, *MEMORY[0x1E69E5120]);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberLongLongType, &valuePtr);
      }
    }

    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

@end