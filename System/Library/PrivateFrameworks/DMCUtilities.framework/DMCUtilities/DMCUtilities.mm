uint64_t *DMCLogObjects()
{
  if (DMCLogObjects_onceToken != -1)
  {
    DMCLogObjects_cold_1();
  }

  return &DMCLogObjects__DMCLogObjects;
}

uint64_t __DMCLogObjects_block_invoke()
{
  v0 = os_log_create("com.apple.devicemanagementclient", "DMC");
  v1 = DMCLogObjects__DMCLogObjects;
  DMCLogObjects__DMCLogObjects = v0;

  v2 = os_log_create("com.apple.devicemanagementclient", "MDM");
  v3 = qword_1ED5BB958;
  qword_1ED5BB958 = v2;

  v4 = os_log_create("com.apple.devicemanagementclient", "Assertion");
  v5 = qword_1ED5BB960;
  qword_1ED5BB960 = v4;

  v6 = os_log_create("com.apple.devicemanagementclient", "File");
  v7 = qword_1ED5BB968;
  qword_1ED5BB968 = v6;

  v8 = os_log_create("com.apple.devicemanagementclient", "Restore");
  v9 = qword_1ED5BB970;
  qword_1ED5BB970 = v8;

  v10 = os_log_create("com.apple.devicemanagementclient", "Tether");
  v11 = qword_1ED5BB978;
  qword_1ED5BB978 = v10;

  qword_1ED5BB980 = os_log_create("com.apple.devicemanagementclient", "RTS");

  return MEMORY[0x1EEE66BB8]();
}

id MDMAppManagementFilePath()
{
  if (MDMAppManagementFilePath_once != -1)
  {
    MDMAppManagementFilePath_cold_1();
  }

  v1 = MDMAppManagementFilePath_str;

  return v1;
}

void __MCSystemProfileStorageDirectory_block_invoke()
{
  if (MCSystemProfileLibraryDirectory_once != -1)
  {
    __MCSystemProfileStorageDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileLibraryDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"ConfigurationProfiles"];
  v1 = [v3 copy];
  v2 = MCSystemProfileStorageDirectory_str;
  MCSystemProfileStorageDirectory_str = v1;
}

id MDMCloudConfigurationDetailsFilePath()
{
  if (MDMCloudConfigurationDetailsFilePath_once != -1)
  {
    MDMCloudConfigurationDetailsFilePath_cold_1();
  }

  v1 = MDMCloudConfigurationDetailsFilePath_str;

  return v1;
}

void __MDMCloudConfigurationDetailsFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"CloudConfigurationDetails.plist"];
  v1 = [v3 copy];
  v2 = MDMCloudConfigurationDetailsFilePath_str;
  MDMCloudConfigurationDetailsFilePath_str = v1;
}

void __MCSystemProfileLibraryDirectory_block_invoke()
{
  v3 = MCConfigurationProfilesSystemGroupContainer();
  v0 = [v3 stringByAppendingPathComponent:@"Library"];
  v1 = [v0 copy];
  v2 = MCSystemProfileLibraryDirectory_str;
  MCSystemProfileLibraryDirectory_str = v1;
}

id MCConfigurationProfilesSystemGroupContainer()
{
  if (MCConfigurationProfilesSystemGroupContainer_onceToken != -1)
  {
    MCConfigurationProfilesSystemGroupContainer_cold_1();
  }

  v1 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;

  return v1;
}

void __MCConfigurationProfilesSystemGroupContainer_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  if (+[DMCMultiUserModeUtilities isSharediPad])
  {
    v0 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
    MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
  }

  v1 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
  if (!MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath)
  {
    v2 = DMCSystemGroupContainerPathWithGroupIdentifier(@"systemgroup.com.apple.configurationprofiles");
    v3 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
    MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath = v2;

    v1 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
    if (!MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath)
    {
      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v12 = 138543362;
        *&v12[4] = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
        v5 = "Failed to get profile system group container path. Overriding with expected path: %{public}@";
        v6 = v8;
        v7 = 12;
        goto LABEL_10;
      }

LABEL_11:
      v9 = [@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles" copy];
      v10 = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
      MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath = v9;

      goto LABEL_12;
    }
  }

  if (([v1 isEqualToString:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles"] & 1) == 0)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v12 = 138543618;
      *&v12[4] = @"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
      *&v12[12] = 2114;
      *&v12[14] = MCConfigurationProfilesSystemGroupContainer_systemGroupContainerPath;
      v5 = "Received a profile system group container path we weren't expecting\nExpected: %{public}@\nActual: %{public}@\nOverriding MCM with expected path";
      v6 = v4;
      v7 = 22;
LABEL_10:
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_FAULT, v5, v12, v7);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
}

id DMCSystemGroupContainerPathWithGroupIdentifier(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 UTF8String];
  v2 = container_system_group_path_for_identifier();
  v3 = *DMCLogObjects();
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v8 = v1;
      v9 = 2082;
      v10 = v2;
      _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "Got system group container path from MCM for %{public}@: %{public}s", buf, 0x16u);
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithCString:v2 encoding:4];
    free(v2);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v8 = v1;
      v9 = 2048;
      v10 = 1;
      _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_ERROR, "Error getting system group container for %{public}@: %llu", buf, 0x16u);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __MDMAppManagementFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMAppManagement.plist"];
  v1 = [v3 copy];
  v2 = MDMAppManagementFilePath_str;
  MDMAppManagementFilePath_str = v1;
}

void __MDMCloudConfigurationSetAsideDetailsFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"CloudConfigurationSetAsideDetails.plist"];
  v1 = [v3 copy];
  v2 = MDMCloudConfigurationSetAsideDetailsFilePath_str;
  MDMCloudConfigurationSetAsideDetailsFilePath_str = v1;
}

id MDMCloudConfigurationSetAsideDetailsFilePath()
{
  if (MDMCloudConfigurationSetAsideDetailsFilePath_once != -1)
  {
    MDMCloudConfigurationSetAsideDetailsFilePath_cold_1();
  }

  v1 = MDMCloudConfigurationSetAsideDetailsFilePath_str;

  return v1;
}

void ___scheduleCleanup_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  for (i = v2; [v2 count]; v2 = i)
  {
    v3 = [i firstObject];
    v4 = [v3 compare:*(a1 + 48)];

    if (v4 == 1)
    {
      break;
    }

    [i removeObjectAtIndex:0];
  }
}

void AppleAccountLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppleAccountLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7ADC1B0;
    v4 = 0;
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B16329DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 64), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __AppleAccountLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAAQuotaInfoRequestClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  result = objc_getClass("AAQuotaInfoRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAAQuotaInfoRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAAQuotaInfoRequestClass_block_invoke_cold_1();
    return __getAAQuotaInfoResponseClass_block_invoke(v3);
  }

  return result;
}

Class __getAAQuotaInfoResponseClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  result = objc_getClass("AAQuotaInfoResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAAQuotaInfoResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAAQuotaInfoResponseClass_block_invoke_cold_1();
    return __77__ACAccountStore_DeviceManagementClient__dmc_visibleRemoteManagementAccounts__block_invoke(v3);
  }

  return result;
}

void sub_1B1634A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1636454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1636764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1636BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

Class __getCDPUIControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreCDPUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreCDPUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7ADC478;
    v7 = 0;
    CoreCDPUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreCDPUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CDPUIController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPUIControllerClass_block_invoke_cold_1();
  }

  getCDPUIControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreCDPUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreCDPUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void DMCActivationUtilitiesWaitingForReady()
{
  v0 = *DMCLogObjects();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B1630000, v0, OS_LOG_TYPE_INFO, "Activation state changed.", v3, 2u);
  }

  v1 = +[DMCActivationUtilities sharedInstance];
  [v1 _clearCache];

  v2 = +[DMCActivationUtilities sharedInstance];
  [v2 setIsReady:1];
}

void DMCActivationUtilitiesDeactivated()
{
  v0 = *DMCLogObjects();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B1630000, v0, OS_LOG_TYPE_INFO, "Device deactivated. Clearing activation record cache.", v2, 2u);
  }

  v1 = +[DMCActivationUtilities sharedInstance];
  [v1 _clearCache];
}

id syncQueue()
{
  if (syncQueue_onceToken != -1)
  {
    syncQueue_cold_1();
  }

  v1 = syncQueue_queue;

  return v1;
}

id syncQueueAlertQueue()
{
  if (syncQueueAlertQueue_onceToken != -1)
  {
    syncQueueAlertQueue_cold_1();
  }

  v1 = syncQueueAlertQueue_queue;

  return v1;
}

void syncQueueShowNextAlert()
{
  *(&v38[3] + 4) = *MEMORY[0x1E69E9840];
  if (!syncQueueCurrentAlert)
  {
    v0 = syncQueueAlertQueue();
    v1 = [v0 firstObject];

    if (v1)
    {
      v3 = *MEMORY[0x1E695E480];
      v4 = *MEMORY[0x1E695E8D0];
      *&v2 = 134217984;
      v33 = v2;
      do
      {
        error = 0;
        flags = 0;
        v5 = [v1 notificationParametersOutFlags:{&flags, v33}];
        v6 = CFUserNotificationCreate(v3, 0.0, flags, &error, v5);
        if (!v6)
        {
          v13 = *DMCLogObjects();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = error;
            v15 = v13;
            v16 = [v1 summary];
            *buf = 67109378;
            LODWORD(v38[0]) = v14;
            WORD2(v38[0]) = 2114;
            *(v38 + 6) = v16;
            _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "DMCAlertManager cannot create alert with error: %d. Alert: '%{public}@'", buf, 0x12u);
          }

          goto LABEL_21;
        }

        v7 = v6;
        RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v6, mainQueueAlertCallback, 0);
        if (RunLoopSource)
        {
          v9 = RunLoopSource;
          v10 = syncQueueAlertQueue();
          v11 = [v10 count];

          if (v11)
          {
            v12 = syncQueueAlertQueue();
            [v12 removeObjectAtIndex:0];
          }

          else
          {
            v20 = *DMCLogObjects();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_ERROR, "DMCAlertManager missing alert in sync alert queue", buf, 2u);
            }
          }

          objc_storeStrong(&syncQueueCurrentAlert, v1);
          [v1 setNotification:v7];
          Main = CFRunLoopGetMain();
          CFRunLoopAddSource(Main, v9, v4);
          CFRelease(v9);
          v22 = *DMCLogObjects();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            v24 = [v1 summary];
            *buf = 138543362;
            v38[0] = v24;
            _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_DEFAULT, "Displaying alert: '%{public}@'", buf, 0xCu);
          }

          [v1 dismissAfterTimeInterval];
          if (v25 > 0.0)
          {
            v26 = *DMCLogObjects();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v26;
              [v1 dismissAfterTimeInterval];
              *buf = v33;
              v38[0] = v28;
              _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_DEFAULT, "Scheduling automatic alert dismissal after %0.0f seconds.", buf, 0xCu);
            }

            CFRetain(v7);
            [v1 dismissAfterTimeInterval];
            v30 = dispatch_time(0, (v29 * 1000000000.0));
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __syncQueueShowNextAlert_block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0l;
            block[4] = v7;
            dispatch_after(v30, MEMORY[0x1E69E96A0], block);
            goto LABEL_21;
          }
        }

        else
        {
          v17 = *DMCLogObjects();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            v19 = [v1 summary];
            *buf = 138543362;
            v38[0] = v19;
            _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "DMCAlertManager cannot create run loop source to display alert: '%{public}@'", buf, 0xCu);
          }
        }

        CFRelease(v7);
LABEL_21:

        v31 = syncQueueAlertQueue();
        v1 = [v31 firstObject];
      }

      while (v1);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

id syncQueueiTunesLoginCompletionBlocks()
{
  if (syncQueueiTunesLoginCompletionBlocks_onceToken != -1)
  {
    syncQueueiTunesLoginCompletionBlocks_cold_1();
  }

  v1 = syncQueueiTunesLoginCompletionBlocks_blocks;

  return v1;
}

uint64_t __syncQueue_block_invoke()
{
  syncQueue_queue = dispatch_queue_create("com.apple.devicemanagementclient.DMCAlertManager.syncQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __syncQueueAlertQueue_block_invoke()
{
  syncQueueAlertQueue_queue = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void mainQueueAlertCallback(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x1E69E9840];
  if (a2 >= 4)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown (%lu)", a2];
    v2 = 5;
  }

  else
  {
    v3 = *(&off_1E7ADC578 + a2);
  }

  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "DMCAlert dismissed with response: %{public}@", buf, 0xCu);
  }

  v5 = syncQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __mainQueueAlertCallback_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v8 = v2;
  dispatch_sync(v5, block);

  v6 = *MEMORY[0x1E69E9840];
}

void __syncQueueShowNextAlert_block_invoke(uint64_t a1)
{
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Automatically dismissing alert.", v3, 2u);
  }

  CFUserNotificationCancel(*(a1 + 32));
  CFRelease(*(a1 + 32));
}

void __mainQueueAlertCallback_block_invoke(uint64_t a1)
{
  v2 = syncQueueCurrentAlert;
  v3 = syncQueueCurrentAlert;
  syncQueueCurrentAlert = 0;

  v4 = [v2 completionBlock];

  if (v4)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __mainQueueAlertCallback_block_invoke_2;
    v10[3] = &unk_1E7ADC4E8;
    v11 = v2;
    v12 = *(a1 + 32);
    dispatch_async(v9, v10);
  }

  syncQueueShowNextAlert(v5, v6, v7, v8);
}

void __mainQueueAlertCallback_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];
  v2[2](v2, *(a1 + 40));
}

uint64_t __syncQueueiTunesLoginCompletionBlocks_block_invoke()
{
  syncQueueiTunesLoginCompletionBlocks_blocks = [MEMORY[0x1E695DF70] array];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B1639A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAMSProcessInfoClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AMSProcessInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSProcessInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAMSProcessInfoClass_block_invoke_cold_1();
    AppleMediaServicesLibrary();
  }
}

void AppleMediaServicesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7ADC598;
    v4 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAMSUserAgentClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSUserAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAMSUserAgentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAMSUserAgentClass_block_invoke_cold_1();
    return [(DMCAppIdentifier *)v3 newAppIdentifierWithIdentifier:v4, v5];
  }

  return result;
}

uint64_t DMCHCUCreateCSR(void *a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E697AD50];
  keys[0] = *MEMORY[0x1E697AD68];
  keys[1] = v2;
  values[0] = *MEMORY[0x1E697ADA8];
  values[1] = @"1024";
  v3 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 5;
  cf = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
  v5 = CFDictionaryCreate(v3, MEMORY[0x1E697AFF0], &cf, 1, 0, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  RandomKey = SecKeyCreateRandomKey(v4, 0);
  v7 = SecKeyCopyPublicKey(RandomKey);
  if (v4)
  {
    CFRelease(v4);
  }

  if (RandomKey)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, "Could not create public/private key pair for CSR.", buf, 2u);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (RandomKey)
    {
      CFRelease(RandomKey);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    CertificateRequestWithParameters = 0;
  }

  else
  {
    memset(cStr, 0, 37);
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    uuid_unparse(out, cStr);
    v11 = CFStringCreateWithCString(v3, cStr, 0x600u);
    *buf = *MEMORY[0x1E697B278];
    v19 = *MEMORY[0x1E697AAF0];
    v20 = v11;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v16 = buf;
    v17 = 0;
    [v1 setObject:v7 forKey:@"PublicKey"];
    [v1 setObject:RandomKey forKey:@"PrivateKey"];
    CertificateRequestWithParameters = SecGenerateCertificateRequestWithParameters();
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(RandomKey);
    CFRelease(v7);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return CertificateRequestWithParameters;
}

id DMCHCUSetCertificateDataForMappedLabel(const __CFData *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = SecCertificateCreateWithData(0, a1);
  v10 = [v8 objectForKey:@"PrivateKey"];

  v11 = 0;
  if (a1 && v10)
  {
    v12 = *MEMORY[0x1E695E480];
    v13 = SecIdentityCreate();
    if (v13)
    {
      v14 = v13;
      v15 = v7;
      if (v15)
      {
        v11 = [DMCKeychain saveItem:v14 withLabel:v15 group:@"apple" useSystemKeychain:1 enforcePersonalPersona:a4];
        if (v11)
        {
          v16 = _persistentKeyMapTable();
          [v16 setObject:v11 forKey:v15];
          v17 = v16;
          v18 = MTiPCUKeychainMapPath();
          [v17 DMCWriteToBinaryFile:v18];
        }
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v14);
    }

    else
    {
      v11 = 0;
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

SecCertificateRef DMCHCUCopyCertificateFromKeychainForMappedLabel(void *a1, uint64_t a2)
{
  certificateRef = 0;
  v2 = _copyObjectFromKeychainForLabel(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != SecCertificateGetTypeID())
    {
      v5 = CFGetTypeID(v3);
      if (v5 == SecIdentityGetTypeID())
      {
        SecIdentityCopyCertificate(v3, &certificateRef);
        CFRelease(v3);
        return certificateRef;
      }

      else
      {
        CFRelease(v3);
        return 0;
      }
    }
  }

  return v3;
}

void *_copyObjectFromKeychainForLabel(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = _persistentKeyMapTable();
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = [DMCKeychain copyItemWithPersistentID:v5 useSystemKeychain:1 enforcePersonalPersona:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *DMCHCUCopyHostCertificateForMappedLabel(void *a1, uint64_t a2)
{
  v3 = [a1 stringByAppendingString:@"-HostCert"];
  v4 = _copyObjectFromKeychainForLabel(v3, a2);

  return v4;
}

id certificatesFromDERCertificateDataArray(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v20;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = SecCertificateCreateWithData(0, *(*(&v19 + 1) + 8 * i));
        if (v9)
        {
          v10 = v9;
          [v3 addObject:v9];

          v11 = *DMCLogObjects();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            continue;
          }

          *v18 = 0;
          v12 = v11;
          v13 = OS_LOG_TYPE_INFO;
          v14 = "SecCertificateCreateWithData succeed";
        }

        else
        {
          v15 = *DMCLogObjects();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            continue;
          }

          *v18 = 0;
          v12 = v15;
          v13 = OS_LOG_TYPE_ERROR;
          v14 = "Could not parse anchor certificate data. Ignoring.";
        }

        _os_log_impl(&dword_1B1630000, v12, v13, v14, v18, 2u);
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v6)
      {
LABEL_15:

        goto LABEL_17;
      }
    }
  }

  v3 = 0;
LABEL_17:

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

id _persistentKeyMapTable()
{
  v0 = MEMORY[0x1E695DF90];
  v1 = MTiPCUKeychainMapPath();
  v2 = [v0 dictionaryWithContentsOfFile:v1];

  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
  }

  return v2;
}

id DMCCTIMEI()
{
  if (DMCCTIMEI_once != -1)
  {
    DMCCTIMEI_cold_1();
  }

  v1 = DMCCTIMEI_imei;

  return v1;
}

void __DMCCTIMEI_block_invoke()
{
  v0 = _EquipmentInfo();
  v3 = [v0 IMEI];

  if ([v3 length])
  {
    v1 = _IMEIString(v3);
    v2 = DMCCTIMEI_imei;
    DMCCTIMEI_imei = v1;
  }
}

id _EquipmentInfo()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = _CoreTelephonyClient();
  v1 = _DataServiceSubscriptionContextFromClient(v0);
  v2 = v1;
  if (v1)
  {
    v1 = [v1 slotID];
  }

  if (v1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1;
  }

  v26 = 0;
  v4 = [v0 getMobileEquipmentInfo:&v26];
  v5 = v26;
  if (!v4)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v5;
      v14 = "_EquipmentInfo: getMobileEquipmentInfo: failed: %{public}@";
      v15 = v13;
      v16 = 12;
LABEL_27:
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v6 = [v4 meInfoList];

  if (!v6)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "_EquipmentInfo: getMobileEquipmentInfo: returned no items";
LABEL_26:
      v15 = v19;
      v16 = 2;
      goto LABEL_27;
    }

LABEL_28:
    v17 = 0;
    goto LABEL_29;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v4 meInfoList];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v8)
  {
LABEL_16:

LABEL_22:
    v19 = *DMCLogObjects();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v14 = "_EquipmentInfo: could not find acceptable equipment info";
    goto LABEL_26;
  }

  v9 = v8;
  v10 = *v23;
LABEL_10:
  v11 = 0;
  while (1)
  {
    if (*v23 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v22 + 1) + 8 * v11);
    if ([v12 slotId] == v3)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  v17 = v12;

  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = *DMCLogObjects();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v17;
    _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_DEFAULT, "_EquipmentInfo: result = %{public}@", buf, 0xCu);
  }

LABEL_29:

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

id _IMEIString(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AD60] stringWithString:a1];
    if ([v1 length] >= 3)
    {
      [v1 insertString:@" " atIndex:2];
    }

    if ([v1 length] >= 0xA)
    {
      [v1 insertString:@" " atIndex:9];
    }

    if ([v1 length] >= 0x11)
    {
      [v1 insertString:@" " atIndex:16];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id DMCCTMEID()
{
  if (DMCCTMEID_once != -1)
  {
    DMCCTMEID_cold_1();
  }

  v1 = DMCCTMEID_meid;

  return v1;
}

void __DMCCTMEID_block_invoke()
{
  v0 = _EquipmentInfo();
  obj = [v0 MEID];

  if ([obj length])
  {
    objc_storeStrong(&DMCCTMEID_meid, obj);
  }
}

DMCCTEnrollmentProperties *DMCCTTelephonyPropertiesForEnrollmentAuthentication()
{
  v0 = objc_alloc_init(DMCCTEnrollmentProperties);
  v1 = _EquipmentInfo();
  v2 = [v1 IMEI];
  v3 = _IMEIString(v2);
  [(DMCCTEnrollmentProperties *)v0 setImei:v3];

  v4 = [v1 MEID];
  [(DMCCTEnrollmentProperties *)v0 setMeid:v4];

  return v0;
}

uint64_t DMCCTSupportsVoiceRoaming()
{
  v16 = *MEMORY[0x1E69E9840];
  if (!+[DMCMobileGestalt hasTelephonyCapability])
  {
    v5 = 0;
    goto LABEL_13;
  }

  v0 = _CoreTelephonyClient();
  v1 = _DataServiceSubscriptionContextFromClient(v0);
  v2 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
  v13 = 0;
  v3 = [v0 copyCarrierBundleValue:v1 key:@"ShowVoiceRoamingSwitch" bundleType:v2 error:&v13];
  v4 = v13;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 BOOLValue];
      v6 = 1;
      goto LABEL_12;
    }

    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v4;
      v8 = "voice roaming switch value from carrier bundle is not a BOOLean, assuming NO: %{public}@";
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v4;
      v8 = "could not get voice roaming switch from carrier bundle, assuming NO: %{public}@";
LABEL_10:
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
    }
  }

  v6 = 0;
  v5 = 0;
LABEL_12:

  if (!v6)
  {
    v5 = 0;
    goto LABEL_18;
  }

LABEL_13:
  v9 = *DMCLogObjects();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    if (v5)
    {
      v10 = @"YES";
    }

    *buf = 138543362;
    v15 = v10;
    _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_INFO, "device supports voice roaming: %{public}@", buf, 0xCu);
  }

LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

id _CoreTelephonyClient()
{
  if (_CoreTelephonyClient_onceToken != -1)
  {
    _CoreTelephonyClient_cold_1();
  }

  v1 = _CoreTelephonyClient_coreTelephonyClient;

  return v1;
}

id _DataServiceSubscriptionContextFromClient(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v19 = 0;
    v3 = [v1 getPreferredDataSubscriptionContextSync:&v19];
    v4 = v19;
    v5 = v4;
    if (!v3)
    {
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v5;
        _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_DEFAULT, "getPreferredDataSubscriptionContextSync failed: %{public}@", buf, 0xCu);
      }

      v13 = 0;
      v7 = v5;
      goto LABEL_19;
    }

    v18 = v4;
    v6 = [v2 getSIMStatus:v3 error:&v18];
    v7 = v18;

    if (v6)
    {
      if (![v6 isEqualToString:*MEMORY[0x1E6965438]])
      {
        v13 = v3;
        goto LABEL_18;
      }

      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "rejecting data SIM that isn't inserted";
        v10 = v8;
        v11 = 2;
LABEL_15:
        _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v7;
        v9 = "getSIMStatus failed: %{public}@";
        v10 = v15;
        v11 = 12;
        goto LABEL_15;
      }
    }

    v13 = 0;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "nil client passed to _DataServiceSubscriptionContextFromClient", buf, 2u);
  }

  v13 = 0;
LABEL_20:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

BOOL DMCCTHasGSM()
{
  v0 = DMCCTIMEI();
  v1 = v0 != 0;

  return v1;
}

BOOL DMCCTHasCDMA()
{
  v0 = DMCCTMEID();
  v1 = v0 != 0;

  return v1;
}

BOOL DMCCTSetManagedCellularProfile(void *a1, void *a2)
{
  v3 = a1;
  v4 = *MEMORY[0x1E695E480];
  v5 = _CTServerConnectionCreate();
  if (v5)
  {
    v13 = v5;
    ManagedCellularProfile = _CTServerConnectionLoadManagedCellularProfile();
    v15 = ManagedCellularProfile == 0;
    if (a2 && ManagedCellularProfile)
    {
      *a2 = errorFromCTError(ManagedCellularProfile);
    }

    CFRelease(v13);
  }

  else if (a2)
  {
    cannotConnectError(0, v6, v7, v8, v9, v10, v11, v12);
    *a2 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id errorFromCTError(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A5A0];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(a1)];
    v17 = DMCErrorArray(@"MACH_ERROR_P_CODE_%@", v10, v11, v12, v13, v14, v15, v16, v9);
    v6 = [v7 DMCErrorWithDomain:v8 code:a1 >> 32 descriptionArray:v17 errorType:@"DMCFatalError"];
  }

  else if (a1 == 1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(SHIDWORD(a1))];
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E696A798];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v6 = [v3 errorWithDomain:v4 code:a1 >> 32 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

id cannotConnectError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = DMCErrorArray(@"CELLULAR_CANNOT_CONNECT", a2, a3, a4, a5, a6, a7, a8, 0);
  v10 = [v8 DMCErrorWithDomain:@"DMCCellularErrorDomain" code:36001 descriptionArray:v9 errorType:@"DMCFatalError"];

  return v10;
}

BOOL DMCCTClearManagedCellularProfile(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = _CTServerConnectionCreate();
  if (v3)
  {
    v11 = v3;
    v12 = _CTServerConnectionUnloadManagedCellularProfile();
    v13 = v12 == 0;
    if (a1 && v12)
    {
      *a1 = errorFromCTError(v12);
    }

    CFRelease(v11);
  }

  else if (a1)
  {
    cannotConnectError(0, v4, v5, v6, v7, v8, v9, v10);
    *a1 = v13 = 0;
  }

  else
  {
    return 0;
  }

  return v13;
}

BOOL DMCCTGetManagedCellularProfile(void *a1, void *a2)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = _CTServerConnectionCreate();
  if (v5)
  {
    v13 = v5;
    ManagedCellularProfile = _CTServerConnectionGetManagedCellularProfile();
    if (a1)
    {
      v15 = 0;
      *a1 = 0;
    }

    v16 = ManagedCellularProfile == 0;
    if (a2 && ManagedCellularProfile)
    {
      *a2 = errorFromCTError(ManagedCellularProfile);
    }

    CFRelease(v13);
  }

  else if (a2)
  {
    cannotConnectError(0, v6, v7, v8, v9, v10, v11, v12);
    *a2 = v16 = 0;
  }

  else
  {
    return 0;
  }

  return v16;
}

uint64_t ___queue_verifyThresholdAndAddDateRecord_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) timeIntervalSinceDate:a2];
  if (v7 <= 3.0 && *(a1 + 48) <= ++*(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

id DMCLocalizedString(void *a1)
{
  v1 = a1;
  v2 = _bundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"DMCLocalizable"];

  return v3;
}

id _bundle()
{
  if (_bundle_once != -1)
  {
    _bundle_cold_1();
  }

  v1 = _bundle_bundle;

  return v1;
}

id DMCLocalizedStringByDevice(void *a1)
{
  v1 = a1;
  v2 = +[DMCMobileGestalt deviceClass];
  v3 = DMCLocalizedStringForDevice(v1, v2);

  return v3;
}

id DMCLocalizedStringForDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [a2 uppercaseString];
    v7 = [v5 stringWithFormat:@"%@_%@", v4, v6];

    v8 = DMCLocalizedString(v7);
    if ([v8 isEqualToString:v7])
    {
      v9 = DMCLocalizedString(v4);
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
  }

  else
  {
    v10 = DMCLocalizedString(v3);
  }

  return v10;
}

id DMCLocalizedFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = DMCLocalizedString(v10);

  v13 = [v11 initWithFormat:v12 arguments:&a9];

  return v13;
}

id DMCUSEnglishString(void *a1)
{
  v1 = a1;
  v2 = _bundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"DMCLocalizable" localization:@"en"];

  return v3;
}

id DMCErrorArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v9 = a1;
  v10 = objc_opt_new();
  _DMCStashFormattedStringInArray(v10, v9, 0, &a9);
  _DMCStashFormattedStringInArray(v10, v9, 1, &a9);

  _DMCStashArgumentsInArray(v10, &a9);

  return v10;
}

void _DMCStashFormattedStringInArray(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a2;
  v8 = a1;
  v9 = [v6 alloc];
  if (a3)
  {
    v10 = DMCUSEnglishString(v7);

    DMCUSEnglishLocale();
  }

  else
  {
    v10 = DMCLocalizedString(v7);

    [MEMORY[0x1E695DF58] currentLocale];
  }
  v11 = ;
  v12 = [v9 initWithFormat:v10 locale:v11 arguments:a4, a4, a4];
  [v8 addObject:v12];
}

void _DMCStashArgumentsInArray(void *a1, id *a2)
{
  v3 = a1;
  v10 = a2;
  v8 = a2 + 1;
  v4 = *a2;
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:{v5, v8, v10}];
      v6 = v9;
      v8 = v9 + 1;
      v7 = *v6;

      v5 = v7;
    }

    while (v7);
  }
}

id DMCUnformattedErrorArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v9 = MEMORY[0x1E695DF70];
  v10 = a1;
  v11 = DMCLocalizedString(v10);
  v12 = DMCUSEnglishString(v10);

  v13 = [v9 arrayWithObjects:{v11, v12, 0}];

  _DMCStashArgumentsInArray(v13, &a9);

  return v13;
}

uint64_t ___bundle_block_invoke()
{
  _bundle_bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

BOOL DMCFixPermissionOfSystemGroupContainerFileFM(void *a1, void *a2, int a3, void *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v32 = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:&v32];
  v10 = v32;
  v11 = *MEMORY[0x1E696A370];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A370]];
  if (a3)
  {
    v13 = 511;
  }

  else
  {
    v13 = 438;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
  if (([v12 isEqualToNumber:v14] & 1) == 0)
  {
    v39 = v11;
    v40[0] = v14;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v31 = v10;
    [v7 setAttributes:v22 ofItemAtPath:v8 error:&v31];
    v23 = v31;

    v10 = v23;
  }

  if (v10)
  {
    v37[0] = *MEMORY[0x1E696A578];
    v24 = DMCLocalizedFormat(@"ERROR_FAILED_TO_FIX_PERMISSIONS_%@", v15, v16, v17, v18, v19, v20, v21, v8);
    v37[1] = *MEMORY[0x1E696AA08];
    v38[0] = v24;
    v38[1] = v10;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"DMCInternalErrorDomain" code:2 userInfo:v25];
    v27 = *DMCLogObjects();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v34 = v8;
      v35 = 2114;
      v36 = v26;
      _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_ERROR, "Failed to fix permissions of file at path %{public}@. Error: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v28 = v26;
      *a4 = v26;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

BOOL DMCFixPermissionsOfSystemGroupContainerDirectoryAndContents(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a1;
  v5 = [v3 defaultManager];
  v6 = DMCFixPermissionsOfSystemGroupContainerDirectoryAndContentsFM(v5, v4, a2);

  return v6;
}

BOOL DMCFixPermissionsOfSystemGroupContainerDirectoryAndContentsFM(void *a1, void *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x1E695DF70] array];
  v34 = 0;
  if ([v5 fileExistsAtPath:v6 isDirectory:&v34] && (v34 & 1) != 0)
  {
    v33 = 0;
    v8 = DMCFixPermissionOfSystemGroupContainerFileFM(v5, v6, 1, &v33);
    v9 = v33;
    if (!v8)
    {
      [v7 addObject:v9];
    }

    v10 = [v5 enumeratorAtPath:v6];
    v11 = objc_autoreleasePoolPush();
    v12 = [v10 nextObject];
    if (v12)
    {
      v13 = v12;
      do
      {
        v14 = [v6 stringByAppendingPathComponent:v13];
        buf[0] = 0;
        [v5 fileExistsAtPath:v14 isDirectory:buf];
        v32 = 0;
        v15 = DMCFixPermissionOfSystemGroupContainerFileFM(v5, v14, buf[0], &v32);
        v16 = v32;
        if (!v15)
        {
          [v7 addObject:v16];
        }

        objc_autoreleasePoolPop(v11);
        v11 = objc_autoreleasePoolPush();
        v13 = [v10 nextObject];
      }

      while (v13);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v6;
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, "Path %{public}@ does not refer to a directory.", buf, 0xCu);
    }

    v39 = *MEMORY[0x1E696A578];
    v25 = DMCLocalizedFormat(@"ERROR_NOT_A_DIRECTORY_P_PATH_%@", v18, v19, v20, v21, v22, v23, v24, v6);
    v40[0] = v25;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];

    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"DMCInternalErrorDomain" code:1 userInfo:v10];
    [v7 addObject:v26];
  }

  v27 = [v7 count];
  if (v27)
  {
    v28 = *DMCLogObjects();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v36 = v6;
      v37 = 2114;
      v38 = v7;
      _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_ERROR, "Failed to change ownership of directory and contents at %{public}@. Errors: %{public}@", buf, 0x16u);
    }

    if (a3)
    {
      v29 = v7;
      *a3 = v7;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v27 == 0;
}

uint64_t DMCSafelyCopyItemAtPathToDestinationPath(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a2;
  v7 = a1;
  v8 = [v5 defaultManager];
  v9 = DMCSafelyCopyItemAtPathToDestinationPathFM(v8, v7, v6, a3);

  return v9;
}

uint64_t DMCSafelyCopyItemAtPathToDestinationPathFM(void *a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if ([v7 fileExistsAtPath:v8])
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v44 = v10;
      v45 = 2114;
      v46 = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_DEFAULT, "Moving %{public}@ to %{public}@...", buf, 0x16u);
    }

    v42 = 0;
    v13 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:&v42];
    v14 = v42;
    if (v13)
    {
      v37 = a4;
      v15 = [v10 lastPathComponent];
      v16 = [v13 URLByAppendingPathComponent:v15];

      if (v16)
      {
        v41 = v14;
        v17 = [v7 copyItemAtURL:v10 toURL:v16 error:&v41];
        v18 = v41;

        if (!v17 || v18)
        {
          v31 = *DMCLogObjects();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v44 = v10;
            v45 = 2114;
            v46 = v16;
            v47 = 2114;
            v48 = v18;
            _os_log_impl(&dword_1B1630000, v31, OS_LOG_TYPE_ERROR, "Copying of item %{public}@ to temporary %{public}@ failed with error %{public}@", buf, 0x20u);
          }

          v21 = 0;
          v14 = v18;
        }

        else
        {
          v39 = 0;
          v40 = 0;
          v19 = [v7 replaceItemAtURL:v11 withItemAtURL:v16 backupItemName:0 options:1 resultingItemURL:&v40 error:&v39];
          v36 = v40;
          v20 = v39;
          if (v20)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            v22 = [v16 absoluteString];
            v23 = [v7 fileExistsAtPath:v22];

            if (v23)
            {
              v38 = 0;
              v24 = [v7 removeItemAtURL:v16 error:&v38];
              v25 = v38;
              v26 = v25;
              if (!v24 || v25)
              {
                v27 = *DMCLogObjects();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v44 = v16;
                  v45 = 2114;
                  v46 = v26;
                  _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_ERROR, "Removal of temporary item %{public}@ failed with error %{public}@", buf, 0x16u);
                }
              }
            }

            v14 = 0;
          }

          else
          {
            v14 = v20;
            v32 = *DMCLogObjects();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v44 = v11;
              v45 = 2114;
              v46 = v16;
              v47 = 2114;
              v48 = v14;
              _os_log_impl(&dword_1B1630000, v32, OS_LOG_TYPE_ERROR, "Replacement of item %{public}@ with %{public}@ failed with error %{public}@", buf, 0x20u);
            }
          }
        }
      }

      else
      {
        v30 = *DMCLogObjects();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v44 = v10;
          _os_log_impl(&dword_1B1630000, v30, OS_LOG_TYPE_ERROR, "Failed to create temporary URL for moving item %{public}@", buf, 0xCu);
        }

        v21 = 0;
      }

      a4 = v37;
    }

    else
    {
      v29 = *DMCLogObjects();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v10;
        _os_log_impl(&dword_1B1630000, v29, OS_LOG_TYPE_ERROR, "Failed to get temporary directory path for item %{public}@", buf, 0xCu);
      }

      v21 = 0;
    }

    if (a4 && v14)
    {
      v33 = v14;
      *a4 = v14;
    }
  }

  else
  {
    v28 = *DMCLogObjects();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = v8;
      _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_ERROR, "Item does not exist at %{public}@", buf, 0xCu);
    }

    v21 = 0;
    v14 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t DMCSetSkipBackupAttributeToItemAtPath(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  if (v4 && ([MEMORY[0x1E696AC08] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, (v7 & 1) != 0))
  {
    v22 = 0;
    v8 = *MEMORY[0x1E695DB80];
    v9 = [v4 getResourceValue:&v22 forKey:*MEMORY[0x1E695DB80] error:0];
    v10 = v22;
    v11 = v10;
    if (v9 && [v10 BOOLValue] == a2)
    {
      v14 = 0;
    }

    else
    {
      v12 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v21 = 0;
      v13 = [v4 setResourceValue:v12 forKey:v8 error:&v21];
      v14 = v21;

      if (!v13 || v14)
      {
        v15 = *DMCLogObjects();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          v17 = [v4 path];
          *buf = 138543618;
          v24 = v17;
          v25 = 2114;
          v26 = v14;
          _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Error excluding %{public}@ from backup %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v3;
      _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "Error excluding %{public}@ from backup. Path does not exist.", buf, 0xCu);
    }

    v9 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1B1646600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1646794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DMCIOModelPrefixString()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService && (v3 = MatchingService, CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"model-number", *MEMORY[0x1E695E480], 0), IOObjectRelease(v3), CFProperty))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:objc_msgSend(CFProperty encoding:{"bytes"), 4}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id DMCIOModelString()
{
  v0 = DMCIOModelPrefixString();
  if (v0)
  {
    v1 = +[DMCMobileGestalt regionCode];
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v0, v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id DMCIOSerialString()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v3);
  }

  else
  {
    CFProperty = 0;
  }

  return CFProperty;
}

id DMCIOBluetoothMAC()
{
  v8 = 0;
  if (!MEMORY[0x1B2731000](0, &v8) && (v2 = IOServiceNameMatching("bluetooth")) != 0 && (MatchingService = IOServiceGetMatchingService(v8, v2)) != 0)
  {
    v4 = MatchingService;
    v5 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"local-mac-address", *MEMORY[0x1E695E480], 1u);
    if (v5)
    {
      v6 = v5;
      v10.location = 0;
      v10.length = 6;
      CFDataGetBytes(v5, v10, buffer);
      v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5]];
      CFRelease(v6);
    }

    else
    {
      v0 = 0;
    }

    IOObjectRelease(v4);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_1B164D11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B164D4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B164DFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B164E564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id URLForCanonicalFilePath(void *a1)
{
  v1 = a1;
  v2 = DMCSystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

  return v4;
}

id DMCLKLogoutSupportClass()
{
  if (DMCLKLogoutSupportClass_onceToken != -1)
  {
    DMCLKLogoutSupportClass_cold_1();
  }

  v1 = DMCLKLogoutSupportClass_LKLogoutSupportClass;

  return v1;
}

uint64_t __DMCLKLogoutSupportClass_block_invoke()
{
  if (LoginKitBundle_onceToken != -1)
  {
    __DMCLKLogoutSupportClass_block_invoke_cold_1();
  }

  result = [LoginKitBundle_retval classNamed:@"LKLogoutSupport"];
  DMCLKLogoutSupportClass_LKLogoutSupportClass = result;
  return result;
}

uint64_t DMCBYSetupAssistantNeedsToRun()
{
  +[DMCLazyInitializationUtilities initSetupAssistant];
  v0 = _BYSetupAssistantNeedsToRun;

  return v0();
}

id DMCBYSetupAssistantFinishedDarwinNotification()
{
  +[DMCLazyInitializationUtilities initSetupAssistant];
  v0 = _BYSetupAssistantFinishedDarwinNotification;

  return v0;
}

id DMCAKAppleIDSession()
{
  if (DMCAKAppleIDSession_onceToken != -1)
  {
    DMCAKAppleIDSession_cold_1();
  }

  v1 = DMCAKAppleIDSession_theClass;

  return v1;
}

void __DMCAKAppleIDSession_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = AuthKitBundle();
  DMCAKAppleIDSession_theClass = [v0 classNamed:@"AKAppleIDSession"];

  if (!DMCAKAppleIDSession_theClass)
  {
    v1 = *DMCLogObjects();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v3 = 138543362;
      v4 = @"AKAppleIDSession";
      _os_log_impl(&dword_1B1630000, v1, OS_LOG_TYPE_ERROR, "Could not load %{public}@", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

id AuthKitBundle()
{
  if (AuthKitBundle_onceToken != -1)
  {
    AuthKitBundle_cold_1();
  }

  v1 = AuthKitBundle_retval;

  return v1;
}

id DMCAKAuthenticationUsernameKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationUsernameKey;

  return v0;
}

id DMCAKAuthenticationPasswordKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationPasswordKey;

  return v0;
}

id DMCAKAuthenticationAlternateDSIDKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationAlternateDSIDKey;

  return v0;
}

id DMCAKAuthenticationDSIDKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationDSIDKey;

  return v0;
}

id DMCAKAuthenticationIDMSTokenKey()
{
  +[DMCLazyInitializationUtilities initAuthKit];
  v0 = _AKAuthenticationIDMSTokenKey;

  return v0;
}

id DMCAKAnisetteProvisioningControllerClass()
{
  v0 = AuthKitBundle();
  v1 = [v0 classNamed:@"AKAnisetteProvisioningController"];

  return v1;
}

id DMCAIDAMutableServiceContextClass()
{
  v0 = AppleIDSSOAuthenticationBundle();
  v1 = [v0 classNamed:@"AIDAMutableServiceContext"];

  return v1;
}

id AppleIDSSOAuthenticationBundle()
{
  if (AppleIDSSOAuthenticationBundle_onceToken != -1)
  {
    AppleIDSSOAuthenticationBundle_cold_1();
  }

  v1 = AppleIDSSOAuthenticationBundle_retval;

  return v1;
}

id DMCAIDAServiceOwnersManagerClass()
{
  v0 = AppleIDSSOAuthenticationBundle();
  v1 = [v0 classNamed:@"AIDAServiceOwnersManager"];

  return v1;
}

id DMCAIDAServiceTypeCloud()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeCloud;

  return v0;
}

id DMCAIDAServiceTypeMessages()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeMessages;

  return v0;
}

id DMCAIDAServiceTypeFaceTime()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeFaceTime;

  return v0;
}

id DMCAIDAServiceTypeStore()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeStore;

  return v0;
}

id DMCAIDAServiceTypeGameCenter()
{
  +[DMCLazyInitializationUtilities initAppleIDSSOAuthentication];
  v0 = _AIDAServiceTypeGameCenter;

  return v0;
}

uint64_t DMCAMSAuthenticateOptionsClass()
{
  if (AppleMediaServicesBundle_onceToken != -1)
  {
    DMCAMSAuthenticateOptionsClass_cold_1();
  }

  v1 = AppleMediaServicesBundle_retval;

  return [v1 classNamed:@"AMSAuthenticateOptions"];
}

uint64_t DMCAMSUIAuthenticateTaskClass()
{
  if (AppleMediaServicesUIBundle_onceToken != -1)
  {
    DMCAMSUIAuthenticateTaskClass_cold_1();
  }

  v1 = AppleMediaServicesUIBundle_retval;

  return [v1 classNamed:@"AMSUIAuthenticateTask"];
}

id DMCkMAActivationStateActivated()
{
  +[DMCLazyInitializationUtilities initMobileActivation];
  v0 = _kMAActivationStateActivated;

  return v0;
}

id DMCkNotificationActivationStateChanged()
{
  +[DMCLazyInitializationUtilities initMobileActivation];
  v0 = _kNotificationActivationStateChanged;

  return v0;
}

uint64_t DMCMAEGetActivationStateWithError(uint64_t a1)
{
  +[DMCLazyInitializationUtilities initMobileActivation];
  v2 = _MAEGetActivationStateWithError;

  return v2(a1);
}

uint64_t DMCMAECopyActivationRecordWithError(uint64_t a1)
{
  +[DMCLazyInitializationUtilities initMobileActivation];
  v2 = _MAECopyActivationRecordWithError;

  return v2(a1);
}

void __LoginKitBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/LoginKit.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_126];
}

void __AuthKitBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AuthKit.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_130];
}

void __AppleIDSSOAuthenticationBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AppleIDSSOAuthentication.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_134];
}

void __AppleMediaServicesBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AppleMediaServices.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_138];
}

void __AppleMediaServicesUIBundle_block_invoke()
{
  v0 = URLForCanonicalFilePath(@"/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework");
  [DMCLazyInitializationUtilities loadNSBundleAtURL:v0 completionBlock:&__block_literal_global_142];
}

uint64_t DMCLockdownSetDeviceName(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] && lockdown_connect())
  {
    v2 = *MEMORY[0x1E69E5780];
    v3 = lockdown_set_value();
    lockdown_disconnect();
    if (!v3)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_ERROR, "Unable to set device name with error %d", v8, 8u);
    }
  }

  v5 = 0;
LABEL_7:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t DMCHasMDMMigrated()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (migrationCheckQueue_onceToken != -1)
  {
    DMCHasMDMMigrated_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __DMCHasMDMMigrated_block_invoke;
  block[3] = &unk_1E7ADC1F0;
  block[4] = &v3;
  dispatch_sync(migrationCheckQueue_queue, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __DMCHasMDMMigrated_block_invoke(uint64_t a1)
{
  v2 = kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated;
  if (kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated)
  {
    goto LABEL_11;
  }

  v3 = MEMORY[0x1E695DEF0];
  v4 = MCSystemMetadataFilePath();
  v5 = [v3 dataWithContentsOfFile:v4];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E696AE40] DMCSafePropertyListWithData:v5 options:0 format:0 error:0];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_6:
      v6 = 0;
    }
  }

  v7 = [v6 objectForKey:@"LastMDMMigratedBuild"];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = MCLegacyMetadataFilePath();
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated = 0;
  }

  else
  {
    v11 = +[DMCMobileGestalt buildVersion];
    kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated = [v7 isEqualToString:v11];
  }

  v2 = kMDMMetaLastMigratedBuildKey_block_invoke_migrationCheckQueueHasMDMMigrated;
LABEL_11:
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void __migrationCheckQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("DMC migration check queue", v2);
  v1 = migrationCheckQueue_queue;
  migrationCheckQueue_queue = v0;
}

void sub_1B1656960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t DMCDeviceIsNetworkTethered()
{
  v128 = *MEMORY[0x1E69E9840];
  v0 = SCPreferencesCreate(0, @"MCNetworkTetherUtilities", 0);
  if (!v0)
  {
    v76 = 0;
    goto LABEL_131;
  }

  v1 = v0;
  v2 = SCNetworkSetCopyCurrent(v0);
  if (!v2)
  {
    v77 = DMCLogObjects()[5];
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v77, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: No network set!", buf, 2u);
    }

    v76 = 0;
    goto LABEL_130;
  }

  v3 = v2;
  SCNetworkSetGetServiceOrder(v2);
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = v116 = 0u;
  v4 = [obj countByEnumeratingWithState:&v113 objects:v121 count:16];
  if (!v4)
  {
    v76 = 0;
    goto LABEL_129;
  }

  v5 = v4;
  v91 = v3;
  v112 = *v114;
  v6 = *MEMORY[0x1E6982370];
  domain = *MEMORY[0x1E69822F0];
  v107 = *MEMORY[0x1E6982350];
  key = *MEMORY[0x1E6982548];
  v102 = *MEMORY[0x1E695E4D0];
  protocolType = *MEMORY[0x1E69823A0];
  v92 = *MEMORY[0x1E69828B8];
  v93 = *MEMORY[0x1E6982488];
  v89 = *MEMORY[0x1E69822E0];
  v88 = *MEMORY[0x1E6982338];
  v94 = *MEMORY[0x1E69823A8];
  v109 = v1;
LABEL_5:
  v7 = 0;
  v110 = v5;
  while (1)
  {
    if (*v114 != v112)
    {
      objc_enumerationMutation(obj);
    }

    v8 = *(*(&v113 + 1) + 8 * v7);
    v9 = DMCLogObjects()[5];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v123 = v8;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Checking service ID %{public}@", buf, 0xCu);
    }

    v10 = SCNetworkServiceCopy(v1, v8);
    if (v10)
    {
      break;
    }

    v18 = DMCLogObjects()[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v123 = v8;
      _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Cannot get service ref for service ID %{public}@", buf, 0xCu);
    }

LABEL_58:
    if (++v7 == v5)
    {
      v75 = [obj countByEnumeratingWithState:&v113 objects:v121 count:16];
      v5 = v75;
      if (!v75)
      {
        v76 = 0;
        v3 = v91;
        goto LABEL_129;
      }

      goto LABEL_5;
    }
  }

  v11 = v10;
  v12 = v8;
  if (!SCNetworkServiceGetEnabled(v11))
  {
    v19 = DMCLogObjects()[5];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v123 = v12;
      v20 = v19;
      v21 = "DMCDeviceIsNetworkTethered: service ID %{public}@ is not enabled";
LABEL_56:
      _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);
    }

LABEL_57:

    CFRelease(v11);
    goto LABEL_58;
  }

  Interface = SCNetworkServiceGetInterface(v11);
  v14 = DMCLogObjects()[5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v123 = v11;
    _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_DEBUG, "_getBaseInterfaceForService(%{public}@)", buf, 0xCu);
  }

  for (i = Interface; ; i = v16)
  {
    v16 = Interface;
    v17 = DMCLogObjects()[5];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v123 = v16;
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_DEBUG, "_getBaseInterfaceForService: Candidate interface %{public}@", buf, 0xCu);
    }

    if (!v16)
    {
      if (i)
      {
        goto LABEL_30;
      }

      v22 = DMCLogObjects()[5];
      v1 = v109;
      v5 = v110;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_57;
      }

      *buf = 138543362;
      v123 = v12;
      v20 = v22;
      v21 = "DMCDeviceIsNetworkTethered: cannot get interface for service ID %{public}@";
      goto LABEL_56;
    }

    if (CFEqual(v16, v6))
    {
      break;
    }

    Interface = SCNetworkInterfaceGetInterface(v16);
  }

  v23 = DMCLogObjects()[5];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_DEBUG, "_getBaseInterfaceForService: Candidate interface is a good IPv4 interface", buf, 2u);
  }

  i = v16;
LABEL_30:
  v24 = DMCLogObjects()[5];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = v24;
    IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType();
    *buf = 138543362;
    v123 = IOInterfaceType;
    v27 = IOInterfaceType;
    _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_DEBUG, "Interface type: %{public}@", buf, 0xCu);
  }

  v28 = DMCLogObjects()[5];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = v28;
    FamilyType = _SCNetworkInterfaceGetFamilyType();
    *buf = 138543362;
    v123 = FamilyType;
    v31 = FamilyType;
    _os_log_impl(&dword_1B1630000, v29, OS_LOG_TYPE_DEBUG, "Interface family: %{public}@", buf, 0xCu);
  }

  v32 = DMCLogObjects()[5];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = v32;
    FamilySubType = _SCNetworkInterfaceGetFamilySubType();
    *buf = 138543362;
    v123 = FamilySubType;
    v35 = FamilySubType;
    _os_log_impl(&dword_1B1630000, v33, OS_LOG_TYPE_DEBUG, "Interface family sub-type: %{public}@", buf, 0xCu);
  }

  v5 = v110;
  if ([_SCNetworkInterfaceGetIOInterfaceType() intValue] != 6)
  {
    v49 = DMCLogObjects()[5];
    v1 = v109;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v123 = v12;
    v20 = v49;
    v21 = "DMCDeviceIsNetworkTethered: service ID %{public}@ is not USB Ethernet";
    goto LABEL_56;
  }

  BSDName = SCNetworkInterfaceGetBSDName(i);
  v37 = DMCLogObjects()[5];
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
  if (!BSDName)
  {
    v1 = v109;
    if (!v38)
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v123 = v12;
    v20 = v37;
    v21 = "DMCDeviceIsNetworkTethered: could not get BSD name from service ID %{public}@";
    goto LABEL_56;
  }

  if (v38)
  {
    *buf = 138543618;
    v123 = v12;
    v124 = 2114;
    v125 = BSDName;
    _os_log_impl(&dword_1B1630000, v37, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: BSD name from service ID %{public}@ is: %{public}@", buf, 0x16u);
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, domain, BSDName, v107);
  if (!NetworkInterfaceEntity)
  {
    v50 = DMCLogObjects()[5];
    v1 = v109;
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v123 = v12;
    v20 = v50;
    v21 = "DMCDeviceIsNetworkTethered: could not network link from service ID %{public}@";
    goto LABEL_56;
  }

  v40 = NetworkInterfaceEntity;
  v41 = SCDynamicStoreCreate(0, @"MCNetworkTetherUtilities", 0, 0);
  if (!v41)
  {
    v51 = DMCLogObjects()[5];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v51, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: could not create dynamic store!", buf, 2u);
    }

LABEL_62:
    v52 = v40;
LABEL_66:
    CFRelease(v52);

    goto LABEL_67;
  }

  v104 = v40;
  cf = v41;
  v42 = SCDynamicStoreCopyValue(v41, v40);
  v43 = DMCLogObjects()[5];
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
  theDict = v42;
  if (!v42)
  {
    if (v44)
    {
      *buf = 138543362;
      v123 = v12;
      _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: could not get network link info from service ID %{public}@", buf, 0xCu);
    }

    CFRelease(cf);
    v52 = v104;
    goto LABEL_66;
  }

  if (v44)
  {
    *buf = 138543618;
    v123 = v12;
    v124 = 2114;
    v125 = v42;
    _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: service ID %{public}@ has netlink info: %{public}@", buf, 0x16u);
  }

  Value = CFDictionaryGetValue(v42, key);
  v40 = v104;
  if (v102 != Value)
  {
    v46 = DMCLogObjects()[5];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v123 = v12;
      v47 = v46;
      v48 = "DMCDeviceIsNetworkTethered: netlink for service ID %{public}@ is not active";
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v53 = SCNetworkServiceCopyProtocol(v11, protocolType);
  if (!v53)
  {
    v60 = DMCLogObjects()[5];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v123 = v12;
      v47 = v60;
      v48 = "DMCDeviceIsNetworkTethered: could not get IPv4 info for service ID %{public}@";
LABEL_48:
      _os_log_impl(&dword_1B1630000, v47, OS_LOG_TYPE_DEBUG, v48, buf, 0xCu);
    }

LABEL_49:
    CFRelease(theDict);
    CFRelease(cf);
    goto LABEL_62;
  }

  v54 = v53;
  v55 = v12;
  v100 = SCNetworkProtocolGetConfiguration(v54);
  v103 = v55;
  v97 = v54;
  if (!v100 || !SCNetworkProtocolGetEnabled(v54))
  {
    v59 = DMCLogObjects()[5];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      *v126 = 0;
      _os_log_impl(&dword_1B1630000, v59, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Unable to get IPv4 info and/or it's disabled", v126, 2u);
    }

    goto LABEL_105;
  }

  v56 = DMCLogObjects()[5];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    *v126 = 138543362;
    v127 = v100;
    _os_log_impl(&dword_1B1630000, v56, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: IPv4 info: %{public}@", v126, 0xCu);
  }

  v57 = [v100 objectForKey:v93];
  v58 = DMCLogObjects()[5];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    *v126 = 138543362;
    v127 = v57;
    _os_log_impl(&dword_1B1630000, v58, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: IPv4 config method: %{public}@", v126, 0xCu);
  }

  if (![(__CFArray *)v57 isEqualToString:v92])
  {
    v61 = _isIPv4ConfigMethodAutomatic_onceToken;
    v90 = v57;
    if (v61 != -1)
    {
      DMCDeviceIsNetworkTethered_cold_1();
    }

    v62 = [_isIPv4ConfigMethodAutomatic_ipv4DynamicConfigMethods containsObject:v90];

    if (v62)
    {
      NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, domain, v89, v88);
      if (NetworkServiceEntity)
      {
        v87 = NetworkServiceEntity;
        v64 = SCDynamicStoreCopyKeyList(cf, NetworkServiceEntity);
        v65 = DMCLogObjects()[5];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *v126 = 138543362;
          v127 = v64;
          _os_log_impl(&dword_1B1630000, v65, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv4 keys: %{public}@", v126, 0xCu);
        }

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v95 = v64;
        v99 = [(__CFArray *)v95 countByEnumeratingWithState:&v117 objects:buf count:16];
        if (v99)
        {
          v98 = *v118;
          while (2)
          {
            for (j = 0; j != v99; ++j)
            {
              if (*v118 != v98)
              {
                objc_enumerationMutation(v95);
              }

              v67 = *(*(&v117 + 1) + 8 * j);
              v68 = _serviceIDFromDynamicStoreKey(v67);
              if ([v68 isEqualToString:v103])
              {
                v69 = SCDynamicStoreCopyValue(cf, v67);
                v70 = DMCLogObjects()[5];
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                {
                  *v126 = 138543362;
                  v127 = v69;
                  _os_log_impl(&dword_1B1630000, v70, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv4 service dict: %{public}@", v126, 0xCu);
                }

                if (_isIPv4ConfigInfoUseful(v69))
                {
                  v78 = DMCLogObjects()[5];
                  v3 = v91;
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                  {
                    *v126 = 0;
                    _os_log_impl(&dword_1B1630000, v78, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got useful dynamic IPv4 config!", v126, 2u);
                  }

                  CFRelease(v87);
                  v79 = v103;

                  v40 = v104;
                  goto LABEL_121;
                }
              }
            }

            v99 = [(__CFArray *)v95 countByEnumeratingWithState:&v117 objects:buf count:16];
            if (v99)
            {
              continue;
            }

            break;
          }
        }

        CFRelease(v87);
        v5 = v110;
        v40 = v104;
        goto LABEL_105;
      }

      v71 = DMCLogObjects()[5];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *v126 = 0;
        _os_log_impl(&dword_1B1630000, v71, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Unable to create network service entry", v126, 2u);
      }
    }

    goto LABEL_104;
  }

  if (!_isIPv4ConfigInfoUseful(v100))
  {
LABEL_104:

LABEL_105:
    v72 = SCNetworkServiceCopyProtocol(v11, v94);
    if (!v72)
    {
      v74 = DMCLogObjects()[5];
      v12 = v103;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v123 = v103;
        _os_log_impl(&dword_1B1630000, v74, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: could not get IPv6 info for service ID %{public}@", buf, 0xCu);
      }

      CFRelease(v97);
      goto LABEL_49;
    }

    v73 = v72;
    if (_isUsefulIPv6Protocol(v72, cf, v103))
    {
      v81 = DMCLogObjects()[5];
      v3 = v91;
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v123 = v103;
        _os_log_impl(&dword_1B1630000, v81, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: got useful IPv6 info for service ID %{public}@!", buf, 0xCu);
      }

      CFRelease(v73);
      v79 = v103;
      v40 = v104;
      goto LABEL_126;
    }

    CFRelease(v73);
    CFRelease(v97);
    CFRelease(theDict);
    CFRelease(cf);
    CFRelease(v104);

LABEL_67:
    CFRelease(v11);
    v1 = v109;
    goto LABEL_58;
  }

  v85 = DMCLogObjects()[5];
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    *v126 = 0;
    _os_log_impl(&dword_1B1630000, v85, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got useful manual config of IPv4!", v126, 2u);
  }

  v79 = v103;
  v3 = v91;
LABEL_121:
  v80 = DMCLogObjects()[5];
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v123 = v79;
    _os_log_impl(&dword_1B1630000, v80, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: got useful IPv4 info for service ID %{public}@!", buf, 0xCu);
  }

LABEL_126:
  CFRelease(v97);
  CFRelease(theDict);
  CFRelease(cf);
  CFRelease(v40);

  CFRelease(v11);
  v82 = DMCLogObjects()[5];
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v123 = v79;
    _os_log_impl(&dword_1B1630000, v82, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Found tethered Ethernet at Service ID %{public}@!!", buf, 0xCu);
  }

  v76 = 1;
  v1 = v109;
LABEL_129:

  CFRelease(v3);
LABEL_130:
  CFRelease(v1);
LABEL_131:
  v83 = *MEMORY[0x1E69E9840];
  return v76;
}

uint64_t _isIPv4ConfigInfoUseful(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = [v1 objectForKey:*MEMORY[0x1E6982478]];
  v3 = [v1 objectForKey:*MEMORY[0x1E69824C8]];
  v4 = DMCLogObjects()[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v18 = v2;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv4 addresses: %{public}@", buf, 0xCu);
  }

  v5 = DMCLogObjects()[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv4 netmasks: %{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___isIPv4ConfigInfoUseful_block_invoke;
  v10[3] = &unk_1E7ADCE10;
  v6 = v3;
  v11 = v6;
  v12 = &v13;
  [v2 enumerateObjectsUsingBlock:v10];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1B1658C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___isIPv4ConfigInfoUseful_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndex:a3];
  v9 = v7;
  if ([v9 length] && objc_msgSend(v8, "length") && (HIDWORD(v12[0]) = 0, v12[1] = 0, inet_pton(2, objc_msgSend(v9, "UTF8String"), v12 + 4) >= 1) && BYTE4(v12[0]) && BYTE4(v12[0]) != 127)
  {
    v11 = WORD2(v12[0]);

    if (v11 != 65193)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t _isIPv6ConfigInfoUseful(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = [v1 objectForKey:*MEMORY[0x1E69824D8]];
  v3 = [v1 objectForKey:*MEMORY[0x1E6982500]];
  v4 = DMCLogObjects()[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v18 = v2;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv6 addresses: %{public}@", buf, 0xCu);
  }

  v5 = DMCLogObjects()[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv6 netmasks: %{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___isIPv6ConfigInfoUseful_block_invoke;
  v10[3] = &unk_1E7ADCE10;
  v6 = v3;
  v11 = v6;
  v12 = &v13;
  [v2 enumerateObjectsUsingBlock:v10];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1B1658F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___isIPv6ConfigInfoUseful_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndex:a3];
  v9 = v7;
  v10 = [v9 length];
  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_14;
  }

  v13 = 0uLL;
  v14 = 0;
  if (inet_pton(30, [v9 UTF8String], &v13) < 1)
  {
    goto LABEL_14;
  }

  if (!v13)
  {
    if (*(&v13 + 4) || (HIDWORD(v13) & 0xFEFFFFFF) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v13 == 254)
  {
    v12 = v13 & 0xC000;

    if (v12 == 0x8000)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_12:

LABEL_13:
  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;
LABEL_15:
}

uint64_t _isUsefulIPv6Protocol(const __SCNetworkProtocol *a1, const __SCDynamicStore *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SCNetworkProtocolGetConfiguration(a1);
  if (v6 && SCNetworkProtocolGetEnabled(a1))
  {
    v7 = DMCLogObjects()[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v34 = v6;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv6 info: %{public}@", buf, 0xCu);
    }

    v8 = [(__CFArray *)v6 objectForKey:*MEMORY[0x1E69824E0]];
    if ([v8 isEqualToString:*MEMORY[0x1E69828D8]])
    {
      if (_isIPv6ConfigInfoUseful(v6))
      {
        v9 = DMCLogObjects()[5];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got useful IPv6 manual config!", buf, 2u);
        }

        v10 = 1;
        goto LABEL_31;
      }

LABEL_30:
      v10 = 0;
LABEL_31:

      goto LABEL_32;
    }

    if (![v8 isEqualToString:*MEMORY[0x1E69828C8]])
    {
      goto LABEL_30;
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E69822E0], *MEMORY[0x1E6982340]);
    if (!NetworkServiceEntity)
    {
      v23 = DMCLogObjects()[5];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Unable to create network service entry", buf, 2u);
      }

      goto LABEL_30;
    }

    v13 = NetworkServiceEntity;
    v14 = SCDynamicStoreCopyKeyList(a2, NetworkServiceEntity);
    v15 = DMCLogObjects()[5];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v34 = v14;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got IPv6 keys: %{public}@", buf, 0xCu);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v14;
    v17 = [(__CFArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v27 = v13;
      v19 = *v29;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = _serviceIDFromDynamicStoreKey(*(*(&v28 + 1) + 8 * i));
          if ([(__CFString *)v21 isEqualToString:v5])
          {
            v22 = SCDynamicStoreCopyValue(a2, v21);
            if (_isIPv6ConfigInfoUseful(v22))
            {
              v26 = DMCLogObjects()[5];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_1B1630000, v26, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Got useful dynamic IPv6 config!", buf, 2u);
              }

              v10 = 1;
              goto LABEL_36;
            }
          }
        }

        v18 = [(__CFArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v10 = 0;
LABEL_36:
      v13 = v27;
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v13);
  }

  else
  {
    v11 = DMCLogObjects()[5];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_DEBUG, "DMCDeviceIsNetworkTethered: Unable to get IPv6 info and/or it's disabled", buf, 2u);
    }

    v10 = 0;
  }

LABEL_32:

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

id _serviceIDFromDynamicStoreKey(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AE88] scannerWithString:a1];
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/"];
  if ([v1 scanUpToString:@"/Network/Service/" intoString:0] && objc_msgSend(v1, "scanString:intoString:", @"/Network/Service/", 0))
  {
    v7 = 0;
    v3 = [v1 scanUpToCharactersFromSet:v2 intoString:&v7];
    v4 = v7;
    v5 = v4;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void ___isIPv4ConfigMethodAutomatic_block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69828B0];
  v7[0] = *MEMORY[0x1E69828A8];
  v7[1] = v1;
  v2 = *MEMORY[0x1E69828C0];
  v7[2] = *MEMORY[0x1E69828A0];
  v7[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = _isIPv4ConfigMethodAutomatic_ipv4DynamicConfigMethods;
  _isIPv4ConfigMethodAutomatic_ipv4DynamicConfigMethods = v4;

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t DMCSendSettingsChangedNotification()
{
  v0 = *DMCLogObjects();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B1630000, v0, OS_LOG_TYPE_DEFAULT, "Sending settings changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.settingschanged" cStringUsingEncoding:4]);
}

uint64_t DMCSendUserSettingsChangedNotification()
{
  v0 = *DMCLogObjects();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B1630000, v0, OS_LOG_TYPE_DEFAULT, "Sending user settings changed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.managedconfiguration.usersettingschanged" cStringUsingEncoding:4]);
}

uint64_t DMCSendUPPTrustFailedNotification()
{
  v0 = *DMCLogObjects();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B1630000, v0, OS_LOG_TYPE_DEFAULT, "Sending UPP trust failed notification.", v2, 2u);
  }

  return notify_post([@"com.apple.devicemanagementclient.uppTrustFailed" cStringUsingEncoding:4]);
}

uint64_t DMCSendUPPVerificationOfflineNotification()
{
  v0 = *DMCLogObjects();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B1630000, v0, OS_LOG_TYPE_DEFAULT, "Sending UPP verification offline notification.", v2, 2u);
  }

  return notify_post([@"com.apple.devicemanagementclient.uppVerificationOffline" cStringUsingEncoding:4]);
}

void DMCSendNagDeadlineNotification(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v1;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Sending nag deadline notification for item: %{public}@", buf, 0xCu);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = @"NagItem";
  v7 = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"com.apple.devicemanagementclient.nagDeadline" object:0 userInfo:v4];

  notify_post([@"com.apple.devicemanagementclient.nagDeadline" cStringUsingEncoding:4]);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id DMCSystemContainerPathWithBundleIdentifier(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 UTF8String];
  v1 = container_system_path_for_identifier();
  v2 = *DMCLogObjects();
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v7 = v1;
      _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "Got system container path from MCM: %{public}s", buf, 0xCu);
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v1 encoding:4];
    free(v1);
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = 1;
      _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_ERROR, "Error getting system container: %llu", buf, 0xCu);
    }

    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id MCSystemMetadataFilePath()
{
  if (MCSystemMetadataFilePath_once != -1)
  {
    MCSystemMetadataFilePath_cold_1();
  }

  v1 = MCSystemMetadataFilePath_str;

  return v1;
}

void __MCSystemMetadataFilePath_block_invoke()
{
  if (MCSystemPublicInfoDirectory_once != -1)
  {
    __MCSystemMetadataFilePath_block_invoke_cold_1();
  }

  v0 = MCSystemPublicInfoDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v3 copy];
  v2 = MCSystemMetadataFilePath_str;
  MCSystemMetadataFilePath_str = v1;
}

id MCUserMetadataFilePath()
{
  if (MCUserMetadataFilePath_once != -1)
  {
    MCUserMetadataFilePath_cold_1();
  }

  v1 = MCUserMetadataFilePath_str;

  return v1;
}

void __MCUserMetadataFilePath_block_invoke()
{
  if (MCUserPublicInfoDirectory_once != -1)
  {
    __MCUserMetadataFilePath_block_invoke_cold_1();
  }

  v0 = MCUserPublicInfoDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v3 copy];
  v2 = MCUserMetadataFilePath_str;
  MCUserMetadataFilePath_str = v1;
}

id MCLegacyMetadataFilePath()
{
  if (MCLegacyMetadataFilePath_once != -1)
  {
    MCLegacyMetadataFilePath_cold_1();
  }

  v1 = MCLegacyMetadataFilePath_str;

  return v1;
}

void __MCLegacyMetadataFilePath_block_invoke()
{
  if (MCLegacyPublicInfoDirectory_once != -1)
  {
    __MCLegacyMetadataFilePath_block_invoke_cold_1();
  }

  v0 = MCLegacyPublicInfoDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MCMeta.plist"];
  v1 = [v3 copy];
  v2 = MCLegacyMetadataFilePath_str;
  MCLegacyMetadataFilePath_str = v1;
}

id DMCConfigurationProfilesSystemGroupContainerMetadataFilePath()
{
  if (DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_once != -1)
  {
    DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_cold_1();
  }

  v1 = DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_str;

  return v1;
}

void __DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_block_invoke()
{
  v3 = MCConfigurationProfilesSystemGroupContainer();
  v0 = [v3 stringByAppendingPathComponent:@".com.apple.mobile_container_manager.metadata.plist"];
  v1 = [v0 copy];
  v2 = DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_str;
  DMCConfigurationProfilesSystemGroupContainerMetadataFilePath_str = v1;
}

id DMCMultiUserDeviceConfigurationFilePath()
{
  if (DMCMultiUserDeviceConfigurationFilePath_once != -1)
  {
    DMCMultiUserDeviceConfigurationFilePath_cold_1();
  }

  v1 = DMCMultiUserDeviceConfigurationFilePath_str;

  return v1;
}

void __DMCMultiUserDeviceConfigurationFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCMultiUserDeviceConfigurationFilePath_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MultiUserDeviceConfiguration.plist"];
  v1 = [v3 copy];
  v2 = DMCMultiUserDeviceConfigurationFilePath_str;
  DMCMultiUserDeviceConfigurationFilePath_str = v1;
}

id DMCMultiUserUserConfigurationFilePath()
{
  if (DMCMultiUserUserConfigurationFilePath_once != -1)
  {
    DMCMultiUserUserConfigurationFilePath_cold_1();
  }

  v1 = DMCMultiUserUserConfigurationFilePath_str;

  return v1;
}

void __DMCMultiUserUserConfigurationFilePath_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __DMCMultiUserUserConfigurationFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MultiUserUserConfiguration.plist"];
  v1 = [v3 copy];
  v2 = DMCMultiUserUserConfigurationFilePath_str;
  DMCMultiUserUserConfigurationFilePath_str = v1;
}

id DMCHangTracerDirectory()
{
  if (DMCHangTracerDirectory_once != -1)
  {
    DMCHangTracerDirectory_cold_1();
  }

  v1 = DMCHangTracerDirectory_str;

  return v1;
}

void __DMCHangTracerDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"HangTrace"];
  v1 = [v3 copy];
  v2 = DMCHangTracerDirectory_str;
  DMCHangTracerDirectory_str = v1;
}

id DMCLoggingDirectory()
{
  if (DMCLoggingDirectory_once != -1)
  {
    DMCLoggingDirectory_cold_1();
  }

  v1 = DMCLoggingDirectory_str;

  return v1;
}

void __DMCLoggingDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"Logging"];
  v1 = [v3 copy];
  v2 = DMCLoggingDirectory_str;
  DMCLoggingDirectory_str = v1;
}

id DMCEventsFilePath()
{
  if (DMCEventsFilePath_once != -1)
  {
    DMCEventsFilePath_cold_1();
  }

  v1 = DMCEventsFilePath_str;

  return v1;
}

void __DMCEventsFilePath_block_invoke()
{
  v3 = DMCLoggingDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"DMCEvents.plist"];
  v1 = [v0 copy];
  v2 = DMCEventsFilePath_str;
  DMCEventsFilePath_str = v1;
}

id DMCNagItemsDirectory()
{
  if (DMCNagItemsDirectory_once != -1)
  {
    DMCNagItemsDirectory_cold_1();
  }

  v1 = DMCNagItemsDirectory_str;

  return v1;
}

void __DMCNagItemsDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"NagItems"];
  v1 = [v3 copy];
  v2 = DMCNagItemsDirectory_str;
  DMCNagItemsDirectory_str = v1;
}

id DMCSystemFeaturesDirectory()
{
  if (DMCSystemFeaturesDirectory_once != -1)
  {
    DMCSystemFeaturesDirectory_cold_1();
  }

  v1 = DMCSystemFeaturesDirectory_str;

  return v1;
}

void __DMCSystemFeaturesDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"Features"];
  v1 = [v3 copy];
  v2 = DMCSystemFeaturesDirectory_str;
  DMCSystemFeaturesDirectory_str = v1;
}

id DMCDiskRestrictionFilePath()
{
  if (DMCDiskRestrictionFilePath_once != -1)
  {
    DMCDiskRestrictionFilePath_cold_1();
  }

  v1 = DMCDiskRestrictionFilePath_str;

  return v1;
}

void __DMCDiskRestrictionFilePath_block_invoke()
{
  v2 = [0 stringByAppendingPathComponent:@"DiskManagement_Settings.plist"];
  v0 = [v2 copy];
  v1 = DMCDiskRestrictionFilePath_str;
  DMCDiskRestrictionFilePath_str = v0;
}

id DMCManagedEventsDaemonKeepAliveFilePath()
{
  if (DMCManagedEventsDaemonKeepAliveFilePath_once != -1)
  {
    DMCManagedEventsDaemonKeepAliveFilePath_cold_1();
  }

  v1 = DMCManagedEventsDaemonKeepAliveFilePath_str;

  return v1;
}

void __DMCManagedEventsDaemonKeepAliveFilePath_block_invoke()
{
  v2 = [0 stringByAppendingPathComponent:@"managedeventsd_alive_token"];
  v0 = [v2 copy];
  v1 = DMCManagedEventsDaemonKeepAliveFilePath_str;
  DMCManagedEventsDaemonKeepAliveFilePath_str = v0;
}

id DMCDeviceManagementDaemonSetupOptionDirectoryPath()
{
  if (DMCDeviceManagementDaemonSetupOptionDirectoryPath_once != -1)
  {
    DMCDeviceManagementDaemonSetupOptionDirectoryPath_cold_1();
  }

  v1 = DMCDeviceManagementDaemonSetupOptionDirectoryPath_str;

  return v1;
}

uint64_t __DMCDeviceManagementDaemonSetupOptionDirectoryPath_block_invoke()
{
  DMCDeviceManagementDaemonSetupOptionDirectoryPath_str = [@"/private/var/mobile/Library/Application Support/com.apple.dmd-setup-option" copy];

  return MEMORY[0x1EEE66BB8]();
}

id MTiPCUKeychainMapPath()
{
  if (MTiPCUKeychainMapPath_once != -1)
  {
    MTiPCUKeychainMapPath_cold_1();
  }

  v1 = MTiPCUKeychainMapPath_str;

  return v1;
}

void __MTiPCUKeychainMapPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"KeyMapTable"];
  v1 = [v3 copy];
  v2 = MTiPCUKeychainMapPath_str;
  MTiPCUKeychainMapPath_str = v1;
}

id DMCSystemLostModeRequestPath()
{
  if (DMCSystemLostModeRequestPath_once != -1)
  {
    DMCSystemLostModeRequestPath_cold_1();
  }

  v1 = DMCSystemLostModeRequestPath_str;

  return v1;
}

void __DMCSystemLostModeRequestPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"LostModeRequest.plist"];
  v1 = [v3 copy];
  v2 = DMCSystemLostModeRequestPath_str;
  DMCSystemLostModeRequestPath_str = v1;
}

id MDMFilePath()
{
  if (MDMFilePath_once != -1)
  {
    MDMFilePath_cold_1();
  }

  v1 = MDMFilePath_str;

  return v1;
}

void __MDMFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDM.plist"];
  v1 = [v3 copy];
  v2 = MDMFilePath_str;
  MDMFilePath_str = v1;
}

id MDMUserFilePath()
{
  if (MDMUserFilePath_once != -1)
  {
    MDMUserFilePath_cold_1();
  }

  v1 = MDMUserFilePath_str;

  return v1;
}

void __MDMUserFilePath_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __MDMUserFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDM.plist"];
  v1 = [v3 copy];
  v2 = MDMUserFilePath_str;
  MDMUserFilePath_str = v1;
}

id MDMPropertiesFilePath()
{
  if (MDMPropertiesFilePath_once != -1)
  {
    MDMPropertiesFilePath_cold_1();
  }

  v1 = MDMPropertiesFilePath_str;

  return v1;
}

void __MDMPropertiesFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMProperties.plist"];
  v1 = [v3 copy];
  v2 = MDMPropertiesFilePath_str;
  MDMPropertiesFilePath_str = v1;
}

id MDMPropertiesUserFilePath()
{
  if (MDMPropertiesUserFilePath_once != -1)
  {
    MDMPropertiesUserFilePath_cold_1();
  }

  v1 = MDMPropertiesUserFilePath_str;

  return v1;
}

void __MDMPropertiesUserFilePath_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __MDMUserFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMProperties.plist"];
  v1 = [v3 copy];
  v2 = MDMPropertiesUserFilePath_str;
  MDMPropertiesUserFilePath_str = v1;
}

id MDMOutstandingActivitiesFilePath()
{
  if (MDMOutstandingActivitiesFilePath_once != -1)
  {
    MDMOutstandingActivitiesFilePath_cold_1();
  }

  v1 = MDMOutstandingActivitiesFilePath_str;

  return v1;
}

void __MDMOutstandingActivitiesFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMOutstandingActivities.plist"];
  v1 = [v3 copy];
  v2 = MDMOutstandingActivitiesFilePath_str;
  MDMOutstandingActivitiesFilePath_str = v1;
}

id MDMUserOutstandingActivitiesFilePath()
{
  if (MDMUserOutstandingActivitiesFilePath_once != -1)
  {
    MDMUserOutstandingActivitiesFilePath_cold_1();
  }

  v1 = MDMUserOutstandingActivitiesFilePath_str;

  return v1;
}

void __MDMUserOutstandingActivitiesFilePath_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __MDMUserFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMOutstandingActivities.plist"];
  v1 = [v3 copy];
  v2 = MDMUserOutstandingActivitiesFilePath_str;
  MDMUserOutstandingActivitiesFilePath_str = v1;
}

id MDMEventsFilePath()
{
  if (MDMEventsFilePath_once != -1)
  {
    MDMEventsFilePath_cold_1();
  }

  v1 = MDMEventsFilePath_str;

  return v1;
}

void __MDMEventsFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMEvents.plist"];
  v1 = [v3 copy];
  v2 = MDMEventsFilePath_str;
  MDMEventsFilePath_str = v1;
}

id MDMDirtyEnrollmentStateFilePath()
{
  if (MDMDirtyEnrollmentStateFilePath_once != -1)
  {
    MDMDirtyEnrollmentStateFilePath_cold_1();
  }

  v1 = MDMDirtyEnrollmentStateFilePath_str;

  return v1;
}

void __MDMDirtyEnrollmentStateFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMDirtyEnrollmentState.plist"];
  v1 = [v3 copy];
  v2 = MDMDirtyEnrollmentStateFilePath_str;
  MDMDirtyEnrollmentStateFilePath_str = v1;
}

id MDMPostSetupAutoInstallProfilePath()
{
  if (MDMPostSetupAutoInstallProfilePath_once != -1)
  {
    MDMPostSetupAutoInstallProfilePath_cold_1();
  }

  v1 = MDMPostSetupAutoInstallProfilePath_str;

  return v1;
}

void __MDMPostSetupAutoInstallProfilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"PostSetupProfile.mobileconfig"];
  v1 = [v3 copy];
  v2 = MDMPostSetupAutoInstallProfilePath_str;
  MDMPostSetupAutoInstallProfilePath_str = v1;
}

id MDMPostSetupAutoInstallSetAsideProfilePath()
{
  if (MDMPostSetupAutoInstallSetAsideProfilePath_once != -1)
  {
    MDMPostSetupAutoInstallSetAsideProfilePath_cold_1();
  }

  v1 = MDMPostSetupAutoInstallSetAsideProfilePath_str;

  return v1;
}

void __MDMPostSetupAutoInstallSetAsideProfilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"PostSetupSetAsideProfile.mobileconfig"];
  v1 = [v3 copy];
  v2 = MDMPostSetupAutoInstallSetAsideProfilePath_str;
  MDMPostSetupAutoInstallSetAsideProfilePath_str = v1;
}

id MDMSystemRestartLogPath()
{
  if (MDMSystemRestartLogPath_once != -1)
  {
    MDMSystemRestartLogPath_cold_1();
  }

  v1 = MDMSystemRestartLogPath_str;

  return v1;
}

void __MDMSystemRestartLogPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMRequestedRestart"];
  v1 = [v3 copy];
  v2 = MDMSystemRestartLogPath_str;
  MDMSystemRestartLogPath_str = v1;
}

id MDMSystemShutDownLogPath()
{
  if (MDMSystemShutDownLogPath_once != -1)
  {
    MDMSystemShutDownLogPath_cold_1();
  }

  v1 = MDMSystemShutDownLogPath_str;

  return v1;
}

void __MDMSystemShutDownLogPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMRequestedShutDown"];
  v1 = [v3 copy];
  v2 = MDMSystemShutDownLogPath_str;
  MDMSystemShutDownLogPath_str = v1;
}

id MDMSetupAssistantSettingsFilePath()
{
  if (MDMSetupAssistantSettingsFilePath_once != -1)
  {
    MDMSetupAssistantSettingsFilePath_cold_1();
  }

  v1 = MDMSetupAssistantSettingsFilePath_str;

  return v1;
}

void __MDMSetupAssistantSettingsFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"SetupAssistantSettings.plist"];
  v1 = [v3 copy];
  v2 = MDMSetupAssistantSettingsFilePath_str;
  MDMSetupAssistantSettingsFilePath_str = v1;
}

id MDMMigrationDirectory()
{
  if (MDMMigrationDirectory_once != -1)
  {
    MDMMigrationDirectory_cold_1();
  }

  v1 = MDMMigrationDirectory_str;

  return v1;
}

void __MDMMigrationDirectory_block_invoke()
{
  v3 = DMCSystemFeaturesDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MDMMigration"];
  v1 = [v0 copy];
  v2 = MDMMigrationDirectory_str;
  MDMMigrationDirectory_str = v1;
}

id MDMCloudConfigurationPendingMigrationDetailsFilePath()
{
  if (MDMCloudConfigurationPendingMigrationDetailsFilePath_once != -1)
  {
    MDMCloudConfigurationPendingMigrationDetailsFilePath_cold_1();
  }

  v1 = MDMCloudConfigurationPendingMigrationDetailsFilePath_str;

  return v1;
}

void __MDMCloudConfigurationPendingMigrationDetailsFilePath_block_invoke()
{
  v3 = MDMMigrationDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"CloudConfigurationPendingMigrationDetails.plist"];
  v1 = [v0 copy];
  v2 = MDMCloudConfigurationPendingMigrationDetailsFilePath_str;
  MDMCloudConfigurationPendingMigrationDetailsFilePath_str = v1;
}

id MDMMigrationConfigFilePath()
{
  if (MDMMigrationConfigFilePath_once != -1)
  {
    MDMMigrationConfigFilePath_cold_1();
  }

  v1 = MDMMigrationConfigFilePath_str;

  return v1;
}

void __MDMMigrationConfigFilePath_block_invoke()
{
  v3 = MDMMigrationDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MDMMigrationConfig.plist"];
  v1 = [v0 copy];
  v2 = MDMMigrationConfigFilePath_str;
  MDMMigrationConfigFilePath_str = v1;
}

id MDMDEPPushServiceDirectory()
{
  if (MDMDEPPushServiceDirectory_once != -1)
  {
    MDMDEPPushServiceDirectory_cold_1();
  }

  v1 = MDMDEPPushServiceDirectory_str;

  return v1;
}

void __MDMDEPPushServiceDirectory_block_invoke()
{
  v3 = DMCSystemFeaturesDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"DEPPush"];
  v1 = [v0 copy];
  v2 = MDMDEPPushServiceDirectory_str;
  MDMDEPPushServiceDirectory_str = v1;
}

id MDMDEPTokenSyncActivitiesFilePath()
{
  if (MDMDEPTokenSyncActivitiesFilePath_once != -1)
  {
    MDMDEPTokenSyncActivitiesFilePath_cold_1();
  }

  v1 = MDMDEPTokenSyncActivitiesFilePath_str;

  return v1;
}

void __MDMDEPTokenSyncActivitiesFilePath_block_invoke()
{
  v3 = MDMDEPPushServiceDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"MDMDEPTokenSyncActivities.plist"];
  v1 = [v0 copy];
  v2 = MDMDEPTokenSyncActivitiesFilePath_str;
  MDMDEPTokenSyncActivitiesFilePath_str = v1;
}

id MDMDEPTokenSyncPropertiesFilePath()
{
  if (MDMDEPTokenSyncPropertiesFilePath_once != -1)
  {
    MDMDEPTokenSyncPropertiesFilePath_cold_1();
  }

  v1 = MDMDEPTokenSyncPropertiesFilePath_str;

  return v1;
}

void __MDMDEPTokenSyncPropertiesFilePath_block_invoke()
{
  v3 = MDMDEPPushServiceDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"DEPPushTokenSyncProperties.plist"];
  v1 = [v0 copy];
  v2 = MDMDEPTokenSyncPropertiesFilePath_str;
  MDMDEPTokenSyncPropertiesFilePath_str = v1;
}

id MDMManagedStoreBooksManifestPath()
{
  if (MDMManagedStoreBooksManifestPath_once != -1)
  {
    MDMManagedStoreBooksManifestPath_cold_1();
  }

  v1 = MDMManagedStoreBooksManifestPath_str;

  return v1;
}

void __MDMManagedStoreBooksManifestPath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"ManagedBooks.plist"];
  v1 = [v3 copy];
  v2 = MDMManagedStoreBooksManifestPath_str;
  MDMManagedStoreBooksManifestPath_str = v1;
}

id MDMManagedNonStoreBooksSystemGroupContainer()
{
  v0 = MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath;
  if (!MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath)
  {
    v1 = DMCSystemGroupContainerPathWithGroupIdentifier(@"systemgroup.com.apple.media.books.managed");
    v2 = MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath;
    MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath = v1;

    v0 = MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath;
    if (!MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath)
    {
      v3 = *DMCLogObjects();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_ERROR, "Failed to get managed books system group container", v5, 2u);
      }

      v0 = MDMManagedNonStoreBooksSystemGroupContainer_booksSystemGroupContainerPath;
    }
  }

  return v0;
}

id MDMManagedNonStoreBooksDirectory()
{
  if (MDMManagedNonStoreBooksDirectory_once != -1)
  {
    MDMManagedNonStoreBooksDirectory_cold_1();
  }

  v1 = MDMManagedNonStoreBooksDirectory_str;

  return v1;
}

void __MDMManagedNonStoreBooksDirectory_block_invoke()
{
  v3 = MDMManagedNonStoreBooksSystemGroupContainer();
  v0 = [v3 stringByAppendingPathComponent:@"Library"];
  v1 = [v0 copy];
  v2 = MDMManagedNonStoreBooksDirectory_str;
  MDMManagedNonStoreBooksDirectory_str = v1;
}

id MDMManagedNonStoreBooksManifestPath()
{
  if (MDMManagedNonStoreBooksManifestPath_once != -1)
  {
    MDMManagedNonStoreBooksManifestPath_cold_1();
  }

  v1 = MDMManagedNonStoreBooksManifestPath_str;

  return v1;
}

void __MDMManagedNonStoreBooksManifestPath_block_invoke()
{
  v3 = MDMManagedNonStoreBooksDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"Managed.plist"];
  v1 = [v0 copy];
  v2 = MDMManagedNonStoreBooksManifestPath_str;
  MDMManagedNonStoreBooksManifestPath_str = v1;
}

id MDMLegacyManagedNonStoreBooksDirectory()
{
  if (MDMLegacyManagedNonStoreBooksDirectory_once != -1)
  {
    MDMLegacyManagedNonStoreBooksDirectory_cold_1();
  }

  v1 = MDMLegacyManagedNonStoreBooksDirectory_str;

  return v1;
}

uint64_t __MDMLegacyManagedNonStoreBooksDirectory_block_invoke()
{
  MDMLegacyManagedNonStoreBooksDirectory_str = [@"/var/mobile/Media/Books/Managed" copy];

  return MEMORY[0x1EEE66BB8]();
}

id MDMAuthenticationResultsCacheFilePath()
{
  if (MDMAuthenticationResultsCacheFilePath_once != -1)
  {
    MDMAuthenticationResultsCacheFilePath_cold_1();
  }

  v1 = MDMAuthenticationResultsCacheFilePath_str;

  return v1;
}

void __MDMAuthenticationResultsCacheFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"AuthenticationResultsCache.plist"];
  v1 = [v3 copy];
  v2 = MDMAuthenticationResultsCacheFilePath_str;
  MDMAuthenticationResultsCacheFilePath_str = v1;
}

id MDMDatabaseReturnToServiceStorageDirectory()
{
  if (MDMDatabaseReturnToServiceStorageDirectory_once != -1)
  {
    MDMDatabaseReturnToServiceStorageDirectory_cold_1();
  }

  v1 = MDMDatabaseReturnToServiceStorageDirectory_str;

  return v1;
}

void __MDMDatabaseReturnToServiceStorageDirectory_block_invoke()
{
  v2 = [@"/private/var/db/com.apple.devicemanagementclient" stringByAppendingPathComponent:@"/MDM_ReturnToService"];
  v0 = [v2 copy];
  v1 = MDMDatabaseReturnToServiceStorageDirectory_str;
  MDMDatabaseReturnToServiceStorageDirectory_str = v0;
}

id MDMSystemReturnToServiceStorageDirectory()
{
  if (MDMSystemReturnToServiceStorageDirectory_once != -1)
  {
    MDMSystemReturnToServiceStorageDirectory_cold_1();
  }

  v1 = MDMSystemReturnToServiceStorageDirectory_str;

  return v1;
}

void __MDMSystemReturnToServiceStorageDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"Stash"];
  v1 = [v3 copy];
  v2 = MDMSystemReturnToServiceStorageDirectory_str;
  MDMSystemReturnToServiceStorageDirectory_str = v1;
}

id MDMDirtyPersonaFilePath()
{
  if (MDMDirtyPersonaFilePath_once != -1)
  {
    MDMDirtyPersonaFilePath_cold_1();
  }

  v1 = MDMDirtyPersonaFilePath_str;

  return v1;
}

void __MDMDirtyPersonaFilePath_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"MDMDirtyPersona.plist"];
  v1 = [v3 copy];
  v2 = MDMDirtyPersonaFilePath_str;
  MDMDirtyPersonaFilePath_str = v1;
}

void __MCSystemPublicInfoDirectory_block_invoke()
{
  if (MCSystemProfileStorageDirectory_once != -1)
  {
    __DMCHangTracerDirectory_block_invoke_cold_1();
  }

  v0 = MCSystemProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"PublicInfo"];
  v1 = [v3 copy];
  v2 = MCSystemPublicInfoDirectory_str;
  MCSystemPublicInfoDirectory_str = v1;
}

void __MCUserPublicInfoDirectory_block_invoke()
{
  if (MCUserProfileStorageDirectory_once != -1)
  {
    __MDMUserFilePath_block_invoke_cold_1();
  }

  v0 = MCUserProfileStorageDirectory_str;
  v3 = [v0 stringByAppendingPathComponent:@"PublicInfo"];
  v1 = [v3 copy];
  v2 = MCUserPublicInfoDirectory_str;
  MCUserPublicInfoDirectory_str = v1;
}

void __MCLegacyPublicInfoDirectory_block_invoke()
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library/ConfigurationProfiles/PublicInfo"];
  v0 = [v2 copy];
  v1 = MCLegacyPublicInfoDirectory_str;
  MCLegacyPublicInfoDirectory_str = v0;
}

void __MCUserProfileStorageDirectory_block_invoke()
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library/UserConfigurationProfiles"];
  v0 = [v2 copy];
  v1 = MCUserProfileStorageDirectory_str;
  MCUserProfileStorageDirectory_str = v0;
}

void sub_1B165DD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B165E1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _assertionQueue()
{
  if (_assertionQueue_onceToken != -1)
  {
    _assertionQueue_cold_1();
  }

  v1 = _assertionQueue_queue;

  return v1;
}

void _retainPowerAssertion()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = DMCLogObjects()[2];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v9 = powerAssertionRetainCount;
    v10 = 1024;
    v11 = powerAssertionRetainCount + 1;
    _os_log_impl(&dword_1B1630000, v0, OS_LOG_TYPE_DEFAULT, "Retaining power assertion. Count: %d -> %d", buf, 0xEu);
  }

  if (powerAssertionRetainCount)
  {
    IOPMAssertionRetain(assertionID);
  }

  else
  {
    v1 = DMCLogObjects()[2];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v1, OS_LOG_TYPE_DEFAULT, "Creating new IOPMAssertion.", buf, 2u);
    }

    v7[0] = @"PreventUserIdleSystemSleep";
    v7[1] = @"MC activity";
    v2 = [MEMORY[0x1E696AD98] numberWithDouble:{3600.0, @"AssertType", @"AssertName", @"TimeoutSeconds"}];
    v7[2] = v2;
    v7[3] = @"TimeoutActionTurnOff";
    v6[3] = @"TimeoutAction";
    v6[4] = @"AllowsDeviceRestart";
    v7[4] = *MEMORY[0x1E695E4D0];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];

    IOPMAssertionCreateWithProperties(v3, &assertionID);
    v4 = DMCLogObjects()[2];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = assertionID;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "IOPMAssertion created %d", buf, 8u);
    }
  }

  ++powerAssertionRetainCount;
  v5 = *MEMORY[0x1E69E9840];
}

void _releasePowerAssertion()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = DMCLogObjects()[2];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 67109376;
    v5 = powerAssertionRetainCount;
    v6 = 1024;
    v7 = powerAssertionRetainCount - 1;
    _os_log_impl(&dword_1B1630000, v0, OS_LOG_TYPE_DEFAULT, "Releasing power assertion. Count: %d -> %d.", &v4, 0xEu);
  }

  IOPMAssertionRelease(assertionID);
  v1 = __OFSUB__(powerAssertionRetainCount--, 1);
  if ((powerAssertionRetainCount < 0) ^ v1 | (powerAssertionRetainCount == 0))
  {
    v2 = DMCLogObjects()[2];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 67109120;
      v5 = assertionID;
      _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "IOPMAssertion released %d.", &v4, 8u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t ___assertionQueue_block_invoke()
{
  _assertionQueue_queue = dispatch_queue_create("Power assertion queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B1660C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1661014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B16614FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B16620AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLARatchetManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLARatchetManagerClass_softClass;
  v7 = getLARatchetManagerClass_softClass;
  if (!getLARatchetManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLARatchetManagerClass_block_invoke;
    v3[3] = &unk_1E7ADC1F0;
    v3[4] = &v4;
    __getLARatchetManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1662D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLARatchetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLARatchetClass_softClass;
  v7 = getLARatchetClass_softClass;
  if (!getLARatchetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLARatchetClass_block_invoke;
    v3[3] = &unk_1E7ADC1F0;
    v3[4] = &v4;
    __getLARatchetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B1663190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLARatchetManagerClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LARatchetManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLARatchetManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLARatchetManagerClass_block_invoke_cold_1();
    LocalAuthenticationLibrary();
  }
}

void LocalAuthenticationLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7ADD198;
    v4 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getLARatchetClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  result = objc_getClass("LARatchet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLARatchetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLARatchetClass_block_invoke_cold_1();
    return DMCIsSetupBuddyDone();
  }

  return result;
}

uint64_t DMCIsSetupBuddyDone()
{
  if (DMCBYSetupAssistantNeedsToRun())
  {
    return 0;
  }

  else
  {
    return DMCIsBundleIDRunning(@"com.apple.purplebuddy") ^ 1;
  }
}

uint64_t DMCIsGreenTea()
{
  if (DMCIsGreenTea_once != -1)
  {
    DMCIsGreenTea_cold_1();
  }

  return DMCIsGreenTea_isGreenTea;
}

void __DMCIsGreenTea_block_invoke()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleBaseband");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  v3 = MatchingService - 1;
  if (MatchingService - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], MatchingService);
  }

  v4 = +[DMCMobileGestalt regionCode];
  DMCIsGreenTea_isGreenTea = (v3 < 0xFFFFFFFE) & [v4 isEqualToString:@"CH"];
}

uint64_t DMCIsBundleIDRunning(uint64_t a1)
{
  v1 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:a1];
  v2 = [MEMORY[0x1E69C75D0] handleForPredicate:v1 error:0];
  v3 = [v2 currentState];
  v4 = [v3 isRunning];

  return v4;
}

__CFString *DMCStringForBool(int a1)
{
  if (a1)
  {
    return @"Yes";
  }

  else
  {
    return @"No";
  }
}

id DMCUSEnglishLocale()
{
  if (DMCUSEnglishLocale_once != -1)
  {
    DMCUSEnglishLocale_cold_1();
  }

  v1 = DMCUSEnglishLocale_locale;

  return v1;
}

uint64_t __DMCUSEnglishLocale_block_invoke()
{
  DMCUSEnglishLocale_locale = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];

  return MEMORY[0x1EEE66BB8]();
}

id DMCUSEnglishNumberFormatter()
{
  if (DMCUSEnglishNumberFormatter_once != -1)
  {
    DMCUSEnglishNumberFormatter_cold_1();
  }

  v1 = DMCUSEnglishNumberFormatter_formatter;

  return v1;
}

uint64_t __DMCUSEnglishNumberFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = DMCUSEnglishNumberFormatter_formatter;
  DMCUSEnglishNumberFormatter_formatter = v0;

  v2 = DMCUSEnglishNumberFormatter_formatter;
  v3 = DMCUSEnglishLocale();
  [v2 setLocale:v3];

  v4 = DMCUSEnglishNumberFormatter_formatter;

  return [v4 setNumberStyle:0];
}

void sub_1B1664AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}