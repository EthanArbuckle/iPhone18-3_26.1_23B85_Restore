@interface MSDKManagedDevice
+ (id)sharedInstance;
- (BOOL)_isContentFrozen_xpc:(id *)frozen_xpc checkDemo:(BOOL)demo;
- (BOOL)_isEnrolled:(id *)enrolled checkDemo:(BOOL)demo;
- (BOOL)_manageWallpaperSettingsWithAction:(const char *)action;
- (BOOL)_needOwnershipWarning:(id *)warning error:(id *)error;
- (BOOL)_prepareWithOptions:(id)options;
- (BOOL)_unenrollWithOptions:(id)options outError:(id *)error;
- (BOOL)_unlockDemoContentWithOptions:(id)options outError:(id *)error;
- (BOOL)cancelOperation;
- (BOOL)checkInBlockingUI;
- (BOOL)clearCurrentSafariHistory;
- (BOOL)clearOwnershipWarning;
- (BOOL)closeRunningAppsExcept:(id)except;
- (BOOL)collectAppUsageWithSessionStart:(id)start andEnd:(id)end;
- (BOOL)commitNewDemoContent;
- (BOOL)configureWiFi:(id)fi password:(id)password;
- (BOOL)deleteDataBlob;
- (BOOL)disconnectAndForgetWiFi:(id *)fi;
- (BOOL)enterOfflineModeWithOptions:(id)options error:(id *)error;
- (BOOL)inferContentFrozenFromPreferencesFile;
- (BOOL)initializeAppSwitcherContent;
- (BOOL)initializeDeviceSettingsWithOverwrite:(BOOL)overwrite;
- (BOOL)isBetterTogetherDemoDevice;
- (BOOL)isContentFrozen;
- (BOOL)isDeviceClassSupported;
- (BOOL)isDigitalSecurityEnabled;
- (BOOL)isFeatureFlagEnabled:(id)enabled;
- (BOOL)isOfflineMode:(id *)mode;
- (BOOL)isStoreOpen:(id)open withError:(id *)error;
- (BOOL)lockDemoContent;
- (BOOL)prepareWithWiFi:(id)fi password:(id)password;
- (BOOL)preserveAppDataToPersistentStorageWithReturnError:(id *)error;
- (BOOL)refreshDeviceSettings;
- (BOOL)reloadDemodsPreferencesFile;
- (BOOL)revertDemoContent;
- (BOOL)saveBluetoothPairingInfo;
- (BOOL)sendAutoEnrollmentAbortEvent:(id)event countryCode:(id)code;
- (BOOL)sendAutoEnrollmentResult:(double)result withStoreId:(id)id withHelpMenuRowSelection:(id)selection;
- (BOOL)setDeviceLanguage:(id)language andRegion:(id)region;
- (BOOL)setDeviceLanguageWithoutSystemLanguageMatching:(id)matching andRegion:(id)region;
- (BOOL)setIdleDelay:(int64_t)delay;
- (BOOL)setLastShallowRefreshTime:(id)time;
- (BOOL)setSEPDemoMode:(BOOL)mode;
- (BOOL)setStoreOpenAt:(int64_t)at openMinute:(int64_t)minute closeHour:(int64_t)hour closeMinute:(int64_t)closeMinute;
- (BOOL)setupConnection:(id)connection withMachService:(id)service;
- (BOOL)storeDataBlob:(id)blob;
- (BOOL)unenroll:(BOOL)unenroll;
- (MSDKManagedDevice)init;
- (MSDKManagedDeviceDelegate)delegate;
- (id)_getCurrentNetworkInfoForKeys:(id)keys outError:(id *)error;
- (id)_getDeviceOptions:(id *)options checkDemo:(BOOL)demo;
- (id)_getStoreID:(id *)d checkDemo:(BOOL)demo;
- (id)_readOwnershipWarningFromNvram;
- (id)errorWithXPCDictionary:(id)dictionary;
- (id)getAppDataFolderPathWithReturnError:(id *)error;
- (id)getCacheIdentifier;
- (id)getCurrentAppUsageSessionUUID;
- (id)getDeviceLanguageandRegion;
- (id)getFriendlyDeviceName;
- (id)getPersistentWiFiSsid;
- (id)getStoreType:(id *)type;
- (id)nextStoreCloseDate:(id)date withError:(id *)error;
- (id)nextStoreOpenDate:(id)date withError:(id *)error;
- (id)readNVRam:(id)ram;
- (id)readPreferencesFileObjectForKey:(id)key;
- (id)retrieveDataBlob;
- (id)retrieveXPCConnectionToPeerService;
- (id)saveScreenSaverIdleDelay:(id)delay;
- (id)saveStoreHour:(id)hour;
- (int64_t)getDemoInstallState;
- (unint64_t)_typeOfDemoDevice:(id *)device checkDemo:(BOOL)demo;
- (void)_handleCheckInXPCResponse:(id)response withCompletion:(id)completion;
- (void)_handleMarkAsNotDemoXPCResponse:(id)response withCompletion:(id)completion;
- (void)_handleSearchXPCResponse:(id)response withCompletion:(id)completion;
- (void)cancelOperation;
- (void)checkInBlockingUI;
- (void)checkInWithCompletion:(id)completion;
- (void)clearOwnershipWarning;
- (void)commitNewDemoContent;
- (void)deleteDataBlob;
- (void)getDemoInstallState;
- (void)getDeviceLanguageandRegion;
- (void)getFriendlyDeviceName;
- (void)handleContentUpdateStatus:(const char *)status event:(id)event;
- (void)handleMessage:(id)message;
- (void)isBetterTogetherDemoDevice;
- (void)launchApp:(id)app;
- (void)lockDemoContent;
- (void)markAsNotDemoWithCompletion:(id)completion;
- (void)retrieveDataBlob;
- (void)revertDemoContent;
- (void)saveBluetoothPairingInfo;
- (void)searchStoreWithOptions:(id)options completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)updateStoreHours:(id)hours evaluateAgainstDate:(id)date;
@end

@implementation MSDKManagedDevice

uint64_t __35__MSDKManagedDevice_sharedInstance__block_invoke()
{
  sharedInstance_device = objc_alloc_init(MSDKManagedDevice);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[MSDKManagedDevice sharedInstance];
  }

  v3 = sharedInstance_device;

  return v3;
}

- (MSDKManagedDevice)init
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MSDKManagedDevice;
  v2 = [(MSDKManagedDevice *)&v11 init];
  if (v2)
  {
    v3 = defaultLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, &unk_259BB58B6, buf, 2u);
    }

    v4 = defaultLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];
      *buf = 138543362;
      v13 = processName;
      _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ started to use MobileStoreDemoKit.", buf, 0xCu);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MSDKManagedDevice *)v2 setXpc_cache:v7];

    v8 = v2;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)isBetterTogetherDemoDevice
{
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v3 = +[MSDKDemoState sharedInstance];
    LODWORD(connection2) = [v3 _isStoreDemoModeEnabled:0];

    if (connection2)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v5, "RequestOperation", "GetDeviceOptions");
      xpc_dictionary_set_string(v5, "SubKey", [@"enable_better_together" UTF8String]);
      [(MSDKManagedDevice *)self setupConnection];
      connection = [(MSDKManagedDevice *)self connection];

      if (connection)
      {
        connection2 = [(MSDKManagedDevice *)self connection];
        v7 = xpc_connection_send_message_with_reply_sync(connection2, v5);

        LOBYTE(connection2) = xpc_dictionary_get_BOOL(v7, [@"enable_better_together" UTF8String]);
      }

      else
      {
        v7 = defaultLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(MSDKManagedDevice *)v7 isBetterTogetherDemoDevice:v9];
        }

        LOBYTE(connection2) = 0;
      }
    }
  }

  else
  {
    LOBYTE(connection2) = 0;
  }

  return connection2;
}

- (BOOL)isDeviceClassSupported
{
  v2 = MGCopyAnswer();
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPhone", @"iPad", @"iPod", @"Watch", @"AppleTV", @"RealityDevice", 0}];
  v4 = v3;
  v5 = v2 && ([v3 containsObject:v2] & 1) != 0;

  return v5;
}

- (id)getAppDataFolderPathWithReturnError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v5 = [defaultManager URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:&v13];
  v6 = v13;

  if (v5)
  {
    path = [v5 path];
    v8 = [path stringByAppendingPathComponent:@"MSDPersistentData"];

    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "appDataFolderPath:  %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (error)
    {
      v10 = v6;
      *error = v6;
    }

    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(PersistentStorage) *)v6 getAppDataFolderPathWithReturnError:v9];
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)preserveAppDataToPersistentStorageWithReturnError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v5 = [(MSDKManagedDevice *)self getAppDataFolderPathWithReturnError:&v21];
  v6 = v21;
  v7 = v6;
  if (!v5)
  {
    if (error)
    {
      v14 = v6;
      v13 = 0;
      *error = v7;
      goto LABEL_20;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "RequestOperation", "preserveSecondPartyAppDataToShelter");
  xpc_dictionary_set_string(v8, "SourcePath", [v5 UTF8String]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    safeAssignErrorWithReason(error, 3727744774, @"Error preserving data to shelter.", @"Failed to setup XPC connection.");
    v15 = defaultLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(PersistentStorage) preserveAppDataToPersistentStorageWithReturnError:v15];
    }

    goto LABEL_18;
  }

  connection2 = [(MSDKManagedDevice *)self connection];
  v11 = xpc_connection_send_message_with_reply_sync(connection2, v8);

  if (!xpc_dictionary_get_BOOL(v11, "Result"))
  {
    string = xpc_dictionary_get_string(v11, "ErrorMsg");
    if (string)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    }

    else
    {
      v17 = @"Error preserving data to shelter.";
    }

    safeAssignErrorWithReason(error, 3727744774, @"Error preserving data to shelter.", v17);
    v18 = defaultLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(PersistentStorage) *)v5 preserveAppDataToPersistentStorageWithReturnError:error, v18];
    }

LABEL_18:
    goto LABEL_19;
  }

  v12 = defaultLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "Successfully preserved app data from %{public}@ to persistent storage.", buf, 0xCu);
  }

  v13 = 1;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)closeRunningAppsExcept:(id)except
{
  exceptCopy = except;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "CloseRunningApps");
  xpcArrayFromArray = [exceptCopy xpcArrayFromArray];

  xpc_dictionary_set_value(v5, "ScreenSaverAppIDs", xpcArrayFromArray);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v10 = xpc_dictionary_get_BOOL(v9, "Result");
  }

  else
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(CloseApps) closeRunningAppsExcept:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)initializeAppSwitcherContent
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "InitializeAppSwitcherContent");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Result");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(CloseApps) *)v6 initializeAppSwitcherContent];
    }

    v7 = 0;
  }

  return v7;
}

- (void)checkInWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__1;
  v33[4] = __Block_byref_object_dispose__1;
  v34 = MEMORY[0x259CB0780]();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__10;
  v31[4] = __Block_byref_object_dispose__11;
  selfCopy = self;
  v32 = selfCopy;
  if ([(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[MSDKManagedDevice(DemoUnitRequest) checkInWithCompletion:]";
      _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "RequestOperation", "DeviceCheckIn");
    [(MSDKManagedDevice *)selfCopy setupConnection];
    connection = [(MSDKManagedDevice *)selfCopy connection];
    v9 = connection == 0;

    if (!v9)
    {
      connection2 = [(MSDKManagedDevice *)selfCopy connection];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __60__MSDKManagedDevice_DemoUnitRequest__checkInWithCompletion___block_invoke;
      v28[3] = &unk_2798EF500;
      v28[4] = v31;
      v28[5] = v33;
      xpc_connection_send_message_with_reply(connection2, v7, 0, v28);

      v11 = 0;
      goto LABEL_6;
    }

    v29 = 0;
    safeAssignError(&v29, 3727741186, @"Failed to establish xpc connection to demod.");
    v11 = v29;
    v13 = defaultLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v13 checkInWithCompletion:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  else
  {
    v30 = 0;
    safeAssignError(&v30, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v11 = v30;
    v13 = defaultLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v13 checkInWithCompletion:v14, v15, v16, v17, v18, v19, v20];
    }

    v7 = 0;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v11);
  }

LABEL_6:
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(v33, 8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)markAsNotDemoWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__1;
  v33[4] = __Block_byref_object_dispose__1;
  v34 = MEMORY[0x259CB0780]();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__10;
  v31[4] = __Block_byref_object_dispose__11;
  selfCopy = self;
  v32 = selfCopy;
  if ([(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[MSDKManagedDevice(DemoUnitRequest) markAsNotDemoWithCompletion:]";
      _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "RequestOperation", "MarkAsNotDemo");
    [(MSDKManagedDevice *)selfCopy setupConnection];
    connection = [(MSDKManagedDevice *)selfCopy connection];
    v9 = connection == 0;

    if (!v9)
    {
      connection2 = [(MSDKManagedDevice *)selfCopy connection];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__MSDKManagedDevice_DemoUnitRequest__markAsNotDemoWithCompletion___block_invoke;
      v28[3] = &unk_2798EF500;
      v28[4] = v31;
      v28[5] = v33;
      xpc_connection_send_message_with_reply(connection2, v7, 0, v28);

      v11 = 0;
      goto LABEL_6;
    }

    v29 = 0;
    safeAssignError(&v29, 3727741186, @"Failed to establish xpc connection to demod.");
    v11 = v29;
    v13 = defaultLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v13 markAsNotDemoWithCompletion:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  else
  {
    v30 = 0;
    safeAssignError(&v30, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v11 = v30;
    v13 = defaultLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v13 markAsNotDemoWithCompletion:v14, v15, v16, v17, v18, v19, v20];
    }

    v7 = 0;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v11);
  }

LABEL_6:

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)searchStoreWithOptions:(id)options completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__1;
  v37[4] = __Block_byref_object_dispose__1;
  v38 = MEMORY[0x259CB0780]();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__10;
  v35[4] = __Block_byref_object_dispose__11;
  selfCopy = self;
  v36 = selfCopy;
  if ([(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[MSDKManagedDevice(DemoUnitRequest) searchStoreWithOptions:completion:]";
      _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
    }

    if (optionsCopy)
    {
      createXPCDictionary = [optionsCopy createXPCDictionary];
    }

    else
    {
      createXPCDictionary = xpc_dictionary_create(0, 0, 0);
    }

    v11 = createXPCDictionary;
    xpc_dictionary_set_string(createXPCDictionary, "RequestOperation", "StoreSearch");
    [(MSDKManagedDevice *)selfCopy setupConnection];
    connection = [(MSDKManagedDevice *)selfCopy connection];
    v13 = connection == 0;

    if (!v13)
    {
      connection2 = [(MSDKManagedDevice *)selfCopy connection];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__MSDKManagedDevice_DemoUnitRequest__searchStoreWithOptions_completion___block_invoke;
      v32[3] = &unk_2798EF500;
      v32[4] = v35;
      v32[5] = v37;
      xpc_connection_send_message_with_reply(connection2, v11, 0, v32);

      v15 = 0;
      goto LABEL_9;
    }

    v33 = 0;
    safeAssignError(&v33, 3727741186, @"Failed to establish xpc connection to demod.");
    v15 = v33;
    v17 = defaultLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v17 searchStoreWithOptions:v25 completion:v26, v27, v28, v29, v30, v31];
    }
  }

  else
  {
    v34 = 0;
    safeAssignError(&v34, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v15 = v34;
    v17 = defaultLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v17 searchStoreWithOptions:v18 completion:v19, v20, v21, v22, v23, v24];
    }

    v11 = 0;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v15);
  }

LABEL_9:

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleCheckInXPCResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  if (MEMORY[0x259CB0BB0](responseCopy) != MEMORY[0x277D86468])
  {
    [MSDKManagedDevice(DemoUnitRequest) _handleCheckInXPCResponse:withCompletion:];
LABEL_7:
    v10 = 0;
    safeAssignError(&v10, 3727741189, @"Unexpected demod xpc response.");
    v9 = v10;
    v7 = 0;
    v8 = 0;
    if (!completionCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!xpc_dictionary_get_BOOL(responseCopy, "Result"))
  {
    goto LABEL_7;
  }

  v7 = xpc_dictionary_get_BOOL(responseCopy, "Eligible");
  v8 = xpc_dictionary_get_BOOL(responseCopy, "ShowUI");
  v9 = 0;
  if (completionCopy)
  {
LABEL_4:
    completionCopy[2](completionCopy, v7, v8, v9);
  }

LABEL_5:
}

- (void)_handleMarkAsNotDemoXPCResponse:(id)response withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = xpc_dictionary_get_BOOL(response, "Result");
  if (v6)
  {
    v7 = 0;
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  safeAssignError(&v8, 3727741189, @"Unexpected demod xpc response.");
  v7 = v8;
  if (completionCopy)
  {
LABEL_5:
    completionCopy[2](completionCopy, v6, v7);
  }

LABEL_6:
}

- (void)_handleSearchXPCResponse:(id)response withCompletion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  length = 0;
  if (MEMORY[0x259CB0BB0](responseCopy) != MEMORY[0x277D86468])
  {
    v15 = defaultLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v15 _handleSearchXPCResponse:v16 withCompletion:v17, v18, v19, v20, v21, v22];
    }

    goto LABEL_18;
  }

  if (!xpc_dictionary_get_BOOL(responseCopy, "Result"))
  {
    v15 = defaultLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v15 _handleSearchXPCResponse:v23 withCompletion:v24, v25, v26, v27, v28, v29];
    }

LABEL_18:
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_28;
  }

  data = xpc_dictionary_get_data(responseCopy, "ResultData", &length);
  if (data)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
    v45 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v45];
    v10 = v45;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = 1;
        goto LABEL_7;
      }

      v15 = defaultLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MSDKManagedDevice(DemoUnitRequest) _handleSearchXPCResponse:v9 withCompletion:v15];
      }
    }

    else
    {
      v15 = defaultLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice(DemoUnitRequest) *)v15 _handleSearchXPCResponse:v37 withCompletion:v38, v39, v40, v41, v42, v43];
      }

      v9 = 0;
    }
  }

  else
  {
    v15 = defaultLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v15 _handleSearchXPCResponse:v30 withCompletion:v31, v32, v33, v34, v35, v36];
    }

    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  v11 = 1;
LABEL_28:

LABEL_7:
  v12 = defaultLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v48 = "[MSDKManagedDevice(DemoUnitRequest) _handleSearchXPCResponse:withCompletion:]";
    v49 = 2114;
    v50 = v9;
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s - Store Search return with result list - %{public}@", buf, 0x16u);
  }

  if ((v11 & 1) == 0)
  {
    v44 = v10;
    safeAssignError(&v44, 3727741189, @"Unexpected demod xpc response.");
    v13 = v44;

    v10 = v13;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9, v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentAppUsageSessionUUID
{
  if ([(MSDKManagedDevice *)self isEnrolled]&& [(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, "RequestOperation", "GetAppUsageSessionUUID");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

      if (xpc_dictionary_get_BOOL(v6, "Result"))
      {
        string = xpc_dictionary_get_string(v6, "SessionUUID");
        if (string)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
LABEL_7:

          goto LABEL_9;
        }

        [MSDKManagedDevice(dataCollection) getCurrentAppUsageSessionUUID];
      }

      else
      {
        [MSDKManagedDevice(dataCollection) getCurrentAppUsageSessionUUID];
      }
    }

    else
    {
      v6 = defaultLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice(dataCollection) *)v6 getCurrentAppUsageSessionUUID];
      }
    }

    v8 = 0;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)collectAppUsageWithSessionStart:(id)start andEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  if ([(MSDKManagedDevice *)self isEnrolled]&& [(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    [startCopy timeIntervalSince1970];
    v9 = xpc_double_create(v8);
    [endCopy timeIntervalSince1970];
    v11 = xpc_double_create(v10);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "RequestOperation", "CollectAppUsageData");
    xpc_dictionary_set_value(v12, "StartTime", v9);
    xpc_dictionary_set_value(v12, "EndTime", v11);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v15 = xpc_connection_send_message_with_reply_sync(connection2, v12);

      v16 = xpc_dictionary_get_BOOL(v15, "Result");
    }

    else
    {
      v15 = defaultLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MSDKManagedDevice(dataCollection) collectAppUsageWithSessionStart:v15 andEnd:?];
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)sendAutoEnrollmentResult:(double)result withStoreId:(id)id withHelpMenuRowSelection:(id)selection
{
  idCopy = id;
  selectionCopy = selection;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "RequestOperation", "AutoEnrollmentResults");
  xpc_dictionary_set_double(v10, "AutoEnrollmentTimeStamp", result);
  if (!idCopy)
  {
    idCopy = &stru_286AD9A18;
  }

  xpc_dictionary_set_string(v10, "AutoEnrollmentSelectedStoreID", [(__CFString *)idCopy cStringUsingEncoding:4]);
  if (selectionCopy)
  {
    xpc_dictionary_set_data(v10, "AutoEnrollmentHelpMenuUserTapped", [selectionCopy bytes], objc_msgSend(selectionCopy, "length"));
  }

  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v13 = xpc_connection_send_message_with_reply_sync(connection2, v10);

    v14 = xpc_dictionary_get_BOOL(v13, "Result");
  }

  else
  {
    v13 = defaultLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(AutoEnrollmentResult) sendAutoEnrollmentResult:v13 withStoreId:? withHelpMenuRowSelection:?];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)sendAutoEnrollmentAbortEvent:(id)event countryCode:(id)code
{
  eventCopy = event;
  codeCopy = code;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "RequestOperation", "AutoEnrollmentAbortEvent");
  if (!eventCopy)
  {
    eventCopy = &stru_286AD9A18;
  }

  xpc_dictionary_set_string(v8, "AutoEnrollmentAbortLanguageCodeInfo", [(__CFString *)eventCopy cStringUsingEncoding:4]);
  if (!codeCopy)
  {
    codeCopy = &stru_286AD9A18;
  }

  xpc_dictionary_set_string(v8, "AutoEnrollmentAbortCountryCodeInfo", [(__CFString *)codeCopy cStringUsingEncoding:4]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v11 = xpc_connection_send_message_with_reply_sync(connection2, v8);

    v12 = xpc_dictionary_get_BOOL(v11, "Result");
  }

  else
  {
    v11 = defaultLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(AutoEnrollmentResult) sendAutoEnrollmentAbortEvent:v11 countryCode:?];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)setLastShallowRefreshTime:(id)time
{
  v4 = MEMORY[0x277CCA968];
  timeCopy = time;
  v6 = objc_alloc_init(v4);
  [v6 setDateFormat:@"dd-MM-yyyy_HH:mm:ss:SSS"];
  v7 = [v6 stringFromDate:timeCopy];

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "RequestOperation", "SetLastShallowRefreshTime");
  xpc_dictionary_set_string(v8, "LastShallowRefreshTime", [v7 cStringUsingEncoding:4]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v11 = xpc_connection_send_message_with_reply_sync(connection2, v8);

    v12 = xpc_dictionary_get_BOOL(v11, "Result");
  }

  else
  {
    v11 = defaultLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(SetLastShallowRefreshTime) setLastShallowRefreshTime:v11];
    }

    v12 = 0;
  }

  return v12;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (delegate)
  {

    [(MSDKManagedDevice *)self setupConnection];
  }

  else
  {
    connection = [(MSDKManagedDevice *)self connection];
    xpc_connection_cancel(connection);

    [(MSDKManagedDevice *)self setConnection:0];
  }
}

- (MSDKManagedDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)setSEPDemoMode:(BOOL)mode
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "SetSEPDemoMode");
  xpc_dictionary_set_BOOL(v5, "SEPDemoMode", mode);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v8 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v9 = xpc_dictionary_get_BOOL(v8, "Result");
  }

  else
  {
    v8 = defaultLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v8 setSEPDemoMode:v11, v12, v13, v14, v15, v16, v17];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)enterOfflineModeWithOptions:(id)options error:(id *)error
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    safeAssignError(error, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v8 = 0;
    v9 = 0;
    v6 = 0;
    LOBYTE(connection) = 0;
    goto LABEL_6;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "RequestOperation", "EnterOfflineMode");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    [MSDKManagedDevice enterOfflineModeWithOptions:error:];
    v8 = 0;
    v9 = v11;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  connection = [(MSDKManagedDevice *)self connection];
  v8 = xpc_connection_send_message_with_reply_sync(connection, v6);

  LOBYTE(connection) = xpc_dictionary_get_BOOL(v8, "Acknowledged");
  v9 = 0;
  if (error)
  {
LABEL_4:
    v9 = v9;
    *error = v9;
  }

LABEL_6:

  return connection;
}

- (BOOL)isOfflineMode:(id *)mode
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKManagedDevice isOfflineMode:]";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "QueryDeviceInfo", "MSDDeviceInOfflineMode");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, v6);

    LOBYTE(v10) = xpc_dictionary_get_BOOL(v9, "QueryDeviceInfoResult") && xpc_dictionary_get_BOOL(v9, "MSDDeviceInOfflineMode");
  }

  else
  {
    v22 = 0;
    safeAssignError(&v22, 3727741186, @"Failed to establish xpc connection to demod.");
    v10 = v22;
    v13 = defaultLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v13 isOfflineMode:v14, v15, v16, v17, v18, v19, v20];
    }

    if (v10)
    {
      v21 = v10;
      *mode = v10;

      LOBYTE(v10) = 0;
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)prepareWithWiFi:(id)fi password:(id)password
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"SSID";
  v12[1] = @"Password";
  v13[0] = fi;
  v13[1] = password;
  v6 = MEMORY[0x277CBEAC0];
  passwordCopy = password;
  fiCopy = fi;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:2];

  LOBYTE(fiCopy) = [(MSDKManagedDevice *)self _prepareWithOptions:v9];
  v10 = *MEMORY[0x277D85DE8];
  return fiCopy;
}

- (int64_t)getDemoInstallState
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v6 = 0;
    v3 = 0;
LABEL_6:
    int64 = 0;
    goto LABEL_7;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "QueryDeviceInfo", "MSDDemoDeviceInstallState");
  [(MSDKManagedDevice *)self setupConnection];
  int64 = [(MSDKManagedDevice *)self connection];

  if (!int64)
  {
    [MSDKManagedDevice getDemoInstallState];
    v6 = 0;
    goto LABEL_7;
  }

  connection = [(MSDKManagedDevice *)self connection];
  v6 = xpc_connection_send_message_with_reply_sync(connection, v3);

  if (!xpc_dictionary_get_BOOL(v6, "QueryDeviceInfoResult"))
  {
    goto LABEL_6;
  }

  int64 = xpc_dictionary_get_int64(v6, "MSDDemoDeviceInstallState");
LABEL_7:

  return int64;
}

- (BOOL)isContentFrozen
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.plist"];

  if (!v4)
  {
    return 0;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager2 fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.demo-settings.plist"];

  if (!v6)
  {
    return 0;
  }

  return [(MSDKManagedDevice *)self inferContentFrozenFromPreferencesFile];
}

- (BOOL)lockDemoContent
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "Demo");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Acknowledged");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v6 lockDemoContent:v9];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)revertDemoContent
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "DemoSnapshotRevert");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Acknowledged");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v6 revertDemoContent:v9];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)commitNewDemoContent
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "DemoSnapshotCommit");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Acknowledged");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v6 commitNewDemoContent:v9];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)unenroll:(BOOL)unenroll
{
  if (unenroll)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:MEMORY[0x277CBEC38] forKey:@"ObliterateDevice"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MSDKManagedDevice *)self _unenrollWithOptions:v4 outError:0];

  return v5;
}

- (id)getStoreType:(id *)type
{
  v4 = [(MSDKManagedDevice *)self _getDeviceOptions:type checkDemo:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"store_type"];
    if (!v6)
    {
      safeAssignError(type, 3727744773, @"Invalid device options.");
    }
  }

  else
  {
    safeAssignErrorNoOverwrite(type, 3727744768, @"An error has occurred.");
    v6 = 0;
  }

  return v6;
}

- (id)getFriendlyDeviceName
{
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, "QueryDeviceInfo", "MSDFriendlyDeviceName");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

      v7 = xpc_dictionary_get_BOOL(v6, "QueryDeviceInfoResult");
      string = xpc_dictionary_get_string(v6, "MSDFriendlyDeviceName");
      connection = 0;
      if (v7 && string)
      {
        connection = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      }
    }

    else
    {
      [MSDKManagedDevice getFriendlyDeviceName];
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v3 = 0;
    connection = 0;
  }

  return connection;
}

- (BOOL)setStoreOpenAt:(int64_t)at openMinute:(int64_t)minute closeHour:(int64_t)hour closeMinute:(int64_t)closeMinute
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = "[MSDKManagedDevice setStoreOpenAt:openMinute:closeHour:closeMinute:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v25, 0xCu);
  }

  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    if (at < 0x18)
    {
      if (hour < 0x18)
      {
        if (minute < 0x3C)
        {
          if (closeMinute < 0x3C)
          {
            v12 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_string(v12, "RequestOperation", "SetStoreHour");
            xpc_dictionary_set_int64(v12, "OpenHour", at);
            xpc_dictionary_set_int64(v12, "OpenMinute", minute);
            xpc_dictionary_set_int64(v12, "CloseHour", hour);
            xpc_dictionary_set_int64(v12, "CloseMinute", closeMinute);
            [(MSDKManagedDevice *)self setupConnection];
            connection = [(MSDKManagedDevice *)self connection];

            v18 = defaultLogHandle();
            v19 = v18;
            if (connection)
            {
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v25) = 0;
                _os_log_impl(&dword_259B7D000, v19, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: sending xpc...", &v25, 2u);
              }

              connection2 = [(MSDKManagedDevice *)self connection];
              v21 = xpc_connection_send_message_with_reply_sync(connection2, v12);

              v22 = defaultLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v25) = 0;
                _os_log_impl(&dword_259B7D000, v22, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: received response from xpc...", &v25, 2u);
              }

              v23 = defaultLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = MEMORY[0x259CB0A20](v21);
                v25 = 136315138;
                v26 = v24;
                _os_log_impl(&dword_259B7D000, v23, OS_LOG_TYPE_DEFAULT, "xpc dictionary from reply: %s", &v25, 0xCu);
              }

              v14 = xpc_dictionary_get_BOOL(v21, "Result");
              goto LABEL_19;
            }

            [MSDKManagedDevice setStoreOpenAt:v18 openMinute:? closeHour:? closeMinute:?];
          }

          else
          {
            v12 = defaultLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v25) = 0;
              v13 = "Close minute out of range.";
              goto LABEL_17;
            }
          }
        }

        else
        {
          v12 = defaultLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v25) = 0;
            v13 = "Open minute out of range.";
            goto LABEL_17;
          }
        }
      }

      else
      {
        v12 = defaultLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          v13 = "Close hour out of range.";
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = defaultLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        v13 = "Open hour out of range.";
LABEL_17:
        _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, v13, &v25, 2u);
      }
    }

    v14 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v14 = 0;
LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)setIdleDelay:(int64_t)delay
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315138;
    v25 = "[MSDKManagedDevice setIdleDelay:]";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v24, 0xCu);
  }

  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "RequestOperation", "SetScreenSaverIdleDelay");
    xpc_dictionary_set_int64(v6, "IdleDelay", delay);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    v8 = defaultLogHandle();
    v9 = v8;
    if (connection)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: sending xpc...", &v24, 2u);
      }

      connection2 = [(MSDKManagedDevice *)self connection];
      v9 = xpc_connection_send_message_with_reply_sync(connection2, v6);

      v11 = defaultLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: received response from xpc...", &v24, 2u);
      }

      v12 = defaultLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = MEMORY[0x259CB0A20](v9);
        v24 = 136446210;
        v25 = v13;
        _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "xpc dictionary from reply: %{public}s", &v24, 0xCu);
      }

      v14 = xpc_dictionary_get_BOOL(v9, "Result");
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v9 setIdleDelay:v17, v18, v19, v20, v21, v22, v23];
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)configureWiFi:(id)fi password:(id)password
{
  fiCopy = fi;
  passwordCopy = password;
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "RequestOperation", "ConfigureWiFi");
    xpc_dictionary_set_string(v8, "SSID", [fiCopy UTF8String]);
    if (passwordCopy)
    {
      xpc_dictionary_set_string(v8, "Password", [passwordCopy UTF8String]);
    }

    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v11 = xpc_connection_send_message_with_reply_sync(connection2, v8);

      v12 = xpc_dictionary_get_BOOL(v11, "Result");
    }

    else
    {
      v11 = defaultLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v11 configureWiFi:v14 password:v15, v16, v17, v18, v19, v20];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)disconnectAndForgetWiFi:(id *)fi
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    safeAssignError(fi, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v8 = 0;
    v10 = 0;
    v5 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "DisconnectAndForgetWiFi");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    v21 = 0;
    safeAssignError(&v21, 3727741186, @"Failed to establish xpc connection to demod.");
    v10 = v21;
    v12 = defaultLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v12 disconnectAndForgetWiFi:v13, v14, v15, v16, v17, v18, v19];
    }

    if (fi)
    {
      v20 = v10;
      v8 = 0;
      v9 = 0;
      *fi = v10;
      goto LABEL_6;
    }

    v8 = 0;
    goto LABEL_5;
  }

  connection2 = [(MSDKManagedDevice *)self connection];
  v8 = xpc_connection_send_message_with_reply_sync(connection2, v5);

  v9 = xpc_dictionary_get_BOOL(v8, "Result");
  v10 = 0;
LABEL_6:

  return v9;
}

- (BOOL)setDeviceLanguage:(id)language andRegion:(id)region
{
  languageCopy = language;
  regionCopy = region;
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "RequestOperation", "SetLanguageAndRegion");
    xpc_dictionary_set_string(v8, "languageIdentifier", [languageCopy UTF8String]);
    xpc_dictionary_set_string(v8, "regionCode", [regionCopy UTF8String]);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v11 = xpc_connection_send_message_with_reply_sync(connection2, v8);

      v12 = xpc_dictionary_get_BOOL(v11, "Result");
    }

    else
    {
      v11 = defaultLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v11 setDeviceLanguage:v14 andRegion:v15, v16, v17, v18, v19, v20];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getDeviceLanguageandRegion
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[MSDKManagedDevice getDeviceLanguageandRegion]";
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", buf, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "RequestOperation", "GetLanguageAndRegion");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v4);

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(v7, "languageIdentifier")}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(v7, "regionCode")}];
    v20[0] = @"languageIdentifier";
    v20[1] = @"regionCode";
    v21[0] = v8;
    v21[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v7 getDeviceLanguageandRegion:v13];
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)saveBluetoothPairingInfo
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "SaveBTPairingInfo");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Result");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v6 saveBluetoothPairingInfo:v9];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)checkInBlockingUI
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "UICheckIn");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Acknowledged");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v6 checkInBlockingUI:v9];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)cancelOperation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "Cancel");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Acknowledged");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v6 cancelOperation:v9];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)isStoreOpen:(id)open withError:(id *)error
{
  openCopy = open;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "RequestOperation", "IsStoreOpen");
  if (openCopy)
  {
    [openCopy timeIntervalSince1970];
    xpc_dictionary_set_date(v7, "EvaluateAgainstDate", v8);
  }

  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v11 = xpc_connection_send_message_with_reply_sync(connection2, v7);

    v12 = xpc_dictionary_get_BOOL(v11, "ResultData");
    v13 = defaultLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [MSDKManagedDevice isStoreOpen:withError:];
    }

    v14 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  else
  {
    v19 = 0;
    safeAssignError(&v19, 3727741186, @"Failed to establish xpc connection to demod.");
    v16 = v19;
    v14 = v16;
    if (error)
    {
      v17 = v16;
      *error = v14;
      if (v14)
      {
        v18 = defaultLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [MSDKManagedDevice isStoreOpen:error withError:?];
        }
      }
    }

    v11 = 0;
    v12 = 0;
  }

  return v12;
}

- (id)nextStoreOpenDate:(id)date withError:(id *)error
{
  dateCopy = date;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "RequestOperation", "NextStoreOpenDate");
  if (dateCopy)
  {
    [dateCopy timeIntervalSince1970];
    xpc_dictionary_set_date(v7, "EvaluateAgainstDate", v8);
  }

  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v11 = xpc_connection_send_message_with_reply_sync(connection2, v7);

    connection = [MEMORY[0x277CBEAC0] dictionaryWithXPCDictionary:v11];
    v12 = [connection objectForKey:@"Result"];
    v13 = v12;
    if (v12 && ([v12 BOOLValue] & 1) != 0)
    {
      v14 = [connection objectForKey:@"NextStoreHour"];
      if (v14)
      {
        v15 = v14;
        v16 = defaultLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [MSDKManagedDevice nextStoreOpenDate:withError:];
        }

        v17 = 0;
        if (error)
        {
          *error = 0;
        }

        goto LABEL_11;
      }

      v21 = 0;
      safeAssignError(&v21, 3727744768, @"Invalid value for nextStoreOpenDate returned by demod");
      v17 = v21;
    }

    else
    {
      [MSDKManagedDevice nextStoreOpenDate:connection withError:?];
      v17 = v23[1];
    }
  }

  else
  {
    v23[0] = 0;
    safeAssignError(v23, 3727741186, @"Failed to establish xpc connection to demod.");
    v17 = v23[0];
    v13 = 0;
    v11 = 0;
  }

  if (error)
  {
    v19 = v17;
    *error = v17;
    if (v17)
    {
      v20 = defaultLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MSDKManagedDevice nextStoreOpenDate:error withError:?];
      }
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)nextStoreCloseDate:(id)date withError:(id *)error
{
  dateCopy = date;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "RequestOperation", "NextStoreCloseDate");
  if (dateCopy)
  {
    [dateCopy timeIntervalSince1970];
    xpc_dictionary_set_date(v7, "EvaluateAgainstDate", v8);
  }

  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v11 = xpc_connection_send_message_with_reply_sync(connection2, v7);

    connection = [MEMORY[0x277CBEAC0] dictionaryWithXPCDictionary:v11];
    v12 = [connection objectForKey:@"Result"];
    v13 = v12;
    if (v12 && ([v12 BOOLValue] & 1) != 0)
    {
      v14 = [connection objectForKey:@"NextStoreHour"];
      if (v14)
      {
        v15 = v14;
        v16 = defaultLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [MSDKManagedDevice nextStoreCloseDate:withError:];
        }

        v17 = 0;
        if (error)
        {
          *error = 0;
        }

        goto LABEL_11;
      }

      v21 = 0;
      safeAssignError(&v21, 3727744768, @"Invalid value for nextStoreCloseDate returned by demod");
      v17 = v21;
    }

    else
    {
      [MSDKManagedDevice nextStoreOpenDate:connection withError:?];
      v17 = v23[1];
    }
  }

  else
  {
    v23[0] = 0;
    safeAssignError(v23, 3727741186, @"Failed to establish xpc connection to demod.");
    v17 = v23[0];
    v13 = 0;
    v11 = 0;
  }

  if (error)
  {
    v19 = v17;
    *error = v17;
    if (v17)
    {
      v20 = defaultLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MSDKManagedDevice nextStoreCloseDate:error withError:?];
      }
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (void)updateStoreHours:(id)hours evaluateAgainstDate:(id)date
{
  dateCopy = date;
  xpcArrayFromArray = [hours xpcArrayFromArray];
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "RequestOperation", "UpdateStoreHours");
  xpc_dictionary_set_value(v8, "RawStoreHours", xpcArrayFromArray);
  [dateCopy timeIntervalSince1970];
  v10 = v9;

  xpc_dictionary_set_date(v8, "EvaluateAgainstDate", v10);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v14 = xpc_connection_send_message_with_reply_sync(connection2, v8);

    if (xpc_dictionary_get_BOOL(v14, "Result"))
    {
      goto LABEL_6;
    }
  }

  else
  {
    [MSDKManagedDevice updateStoreHours:v12 evaluateAgainstDate:?];
    v14 = 0;
  }

  v15 = defaultLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MSDKManagedDevice updateStoreHours:evaluateAgainstDate:];
  }

LABEL_6:
}

- (id)readPreferencesFileObjectForKey:(id)key
{
  keyCopy = key;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:keyCopy];

  return v5;
}

- (BOOL)storeDataBlob:(id)blob
{
  v18 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (!blobCopy)
  {
    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice storeDataBlob:];
    }

    goto LABEL_19;
  }

  if ([blobCopy length] > 0x400000)
  {
    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice storeDataBlob:blobCopy];
    }

    goto LABEL_19;
  }

  getCacheIdentifier = [(MSDKManagedDevice *)self getCacheIdentifier];
  v6 = defaultLogHandle();
  v7 = v6;
  if (!getCacheIdentifier)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice storeDataBlob:];
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = getCacheIdentifier;
    v16 = 2048;
    v17 = [blobCopy length];
    _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "uniqueIdentifier:%{public}@ %lu", &v14, 0x16u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "RequestOperation", "StoreDataBlob");
  xpc_dictionary_set_string(v7, "ContainerUniqueIdentifier", [getCacheIdentifier UTF8String]);
  xpc_dictionary_set_data(v7, "PersistentDataBlob", [blobCopy bytes], objc_msgSend(blobCopy, "length"));
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    [MSDKManagedDevice storeDataBlob:getCacheIdentifier];
LABEL_19:
    v11 = 0;
    goto LABEL_9;
  }

  connection2 = [(MSDKManagedDevice *)self connection];
  v10 = xpc_connection_send_message_with_reply_sync(connection2, v7);

  v11 = xpc_dictionary_get_BOOL(v10, "Acknowledged");
LABEL_9:

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)retrieveDataBlob
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v7 = 0;
    connection = 0;
    getCacheIdentifier = 0;
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  getCacheIdentifier = [(MSDKManagedDevice *)self getCacheIdentifier];
  if (!getCacheIdentifier)
  {
    v7 = 0;
    connection = 0;
    goto LABEL_8;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "RequestOperation", "RetrieveSavedDataBlob");
  xpc_dictionary_set_string(v4, "ContainerUniqueIdentifier", [getCacheIdentifier UTF8String]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v4);

    connection = xpc_dictionary_get_value(v7, "SavedDataBlob");
    bytes_ptr = xpc_data_get_bytes_ptr(connection);
    length = xpc_data_get_length(connection);
    if (length)
    {
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:bytes_ptr length:length];
      goto LABEL_10;
    }
  }

  else
  {
    [MSDKManagedDevice retrieveDataBlob];
    v7 = 0;
  }

LABEL_9:
  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)deleteDataBlob
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  getCacheIdentifier = [(MSDKManagedDevice *)self getCacheIdentifier];
  if (!getCacheIdentifier)
  {
    return 0;
  }

  v4 = getCacheIdentifier;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "DeleteDataBlob");
  xpc_dictionary_set_string(v5, "ContainerUniqueIdentifier", [v4 UTF8String]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v8 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v9 = xpc_dictionary_get_BOOL(v8, "Acknowledged");
    v10 = v4;
    v4 = v8;
  }

  else
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v10 deleteDataBlob:v12];
    }

    v9 = 0;
  }

  return v9;
}

- (id)getPersistentWiFiSsid
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = @"PersistentWiFiSSID";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = [(MSDKManagedDevice *)self _getCurrentNetworkInfoForKeys:v3 outError:0];

  if (v4)
  {
    v5 = [v4 objectForKey:@"PersistentWiFiSSID"];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isDigitalSecurityEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDKManagedDevice isDigitalSecurityEnabled]";
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v9, 0xCu);
  }

  _readOwnershipWarningFromNvram = [(MSDKManagedDevice *)self _readOwnershipWarningFromNvram];
  if (!_readOwnershipWarningFromNvram)
  {
    goto LABEL_9;
  }

  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[MSDKManagedDevice isDigitalSecurityEnabled]";
    v11 = 2114;
    v12 = _readOwnershipWarningFromNvram;
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "%s - ownershipWarning:  %{public}@", &v9, 0x16u);
  }

  if ([_readOwnershipWarningFromNvram isEqualToString:@"1"] & 1) != 0 || (objc_msgSend(_readOwnershipWarningFromNvram, "isEqualToString:", @"2"))
  {
    v6 = 1;
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)clearOwnershipWarning
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[MSDKManagedDevice clearOwnershipWarning]";
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v20, 0xCu);
  }

  v4 = [(MSDKManagedDevice *)self readNVRam:@"ownership-warning"];
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "command", "deleteNvram:");
    xpc_dictionary_set_string(v5, "payload", [@"ownership-warning" cStringUsingEncoding:4]);
    [(MSDKManagedDevice *)self setupHelperConnection];
    helperConnection = [(MSDKManagedDevice *)self helperConnection];

    v7 = defaultLogHandle();
    v8 = v7;
    if (helperConnection)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: sending xpc...", &v20, 2u);
      }

      helperConnection2 = [(MSDKManagedDevice *)self helperConnection];
      v8 = xpc_connection_send_message_with_reply_sync(helperConnection2, v5);

      v10 = xpc_dictionary_get_BOOL(v8, "result");
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v8 clearOwnershipWarning:v13];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)saveStoreHour:(id)hour
{
  v24 = *MEMORY[0x277D85DE8];
  hourCopy = hour;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[MSDKManagedDevice saveStoreHour:]";
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", buf, 0xCu);
  }

  int64 = xpc_dictionary_get_int64(hourCopy, "OpenHour");
  v6 = xpc_dictionary_get_int64(hourCopy, "OpenMinute");
  v21 = xpc_dictionary_get_int64(hourCopy, "CloseHour");
  v7 = xpc_dictionary_get_int64(hourCopy, "CloseMinute");
  v8 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.ScreenSaverConfig.plist"];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  }

  v9 = MEMORY[0x277CBEAC0];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:int64];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v12 = [v9 dictionaryWithObjectsAndKeys:{v10, @"Hour", v11, @"Minute", 0}];

  [v8 setObject:v12 forKey:@"StoreOpenAt"];
  v13 = MEMORY[0x277CBEAC0];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v16 = [v13 dictionaryWithObjectsAndKeys:{v14, @"Hour", v15, @"Minute", 0}];

  [v8 setObject:v16 forKey:@"StoreCloseAt"];
  [v8 writeToFile:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.ScreenSaverConfig.plist" atomically:1];
  v17 = defaultLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[MSDKManagedDevice saveStoreHour:]";
    _os_log_impl(&dword_259B7D000, v17, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s will return", buf, 0xCu);
  }

  reply = xpc_dictionary_create_reply(hourCopy);
  xpc_dictionary_set_BOOL(reply, "Result", 1);

  v19 = *MEMORY[0x277D85DE8];

  return reply;
}

- (id)saveScreenSaverIdleDelay:(id)delay
{
  v14 = *MEMORY[0x277D85DE8];
  delayCopy = delay;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDKManagedDevice saveScreenSaverIdleDelay:]";
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v12, 0xCu);
  }

  int64 = xpc_dictionary_get_int64(delayCopy, "IdleDelay");
  v6 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.ScreenSaverConfig.plist"];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:int64];
  [v6 setObject:v7 forKey:@"IdleDelayInMinutes"];

  [v6 writeToFile:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.ScreenSaverConfig.plist" atomically:1];
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[MSDKManagedDevice saveScreenSaverIdleDelay:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s will return", &v12, 0xCu);
  }

  reply = xpc_dictionary_create_reply(delayCopy);
  xpc_dictionary_set_BOOL(reply, "Result", 1);

  v10 = *MEMORY[0x277D85DE8];

  return reply;
}

- (BOOL)setupConnection:(id)connection withMachService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(MSDKManagedDevice *)selfCopy valueForKey:connectionCopy];

  if (!v9)
  {
    mach_service = xpc_connection_create_mach_service([serviceCopy cStringUsingEncoding:4], 0, 0);
    [(MSDKManagedDevice *)selfCopy setValue:mach_service forKey:connectionCopy];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke;
    v19 = &unk_2798EF8D8;
    v20 = selfCopy;
    v11 = connectionCopy;
    v21 = v11;
    xpc_connection_set_event_handler(mach_service, &v16);
    if (mach_service)
    {
      v12 = [(MSDKManagedDevice *)selfCopy valueForKey:v11, v16, v17, v18, v19, v20];
      xpc_connection_resume(v12);
    }
  }

  objc_sync_exit(selfCopy);

  v13 = [(MSDKManagedDevice *)selfCopy valueForKey:connectionCopy];
  v14 = v13 != 0;

  return v14;
}

void __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x259CB0BB0]();
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_1();
  }

  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_2(v3, v6);
  }

  if (v4 == MEMORY[0x277D86480])
  {
    [*(a1 + 32) setValue:0 forKey:*(a1 + 40)];
    if (v3 == MEMORY[0x277D863F8])
    {
      v7 = defaultLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "XPC_ERROR_CONNECTION_INVALID";
        v9 = buf;
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 != MEMORY[0x277D863F0])
      {
        goto LABEL_16;
      }

      v7 = defaultLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v8 = "XPC_ERROR_CONNECTION_INTERRUPTED";
        v9 = &v10;
LABEL_14:
        _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    goto LABEL_16;
  }

  if (v4 != MEMORY[0x277D86468])
  {
    __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_3();
  }

  [*(a1 + 32) handleMessage:v3];
LABEL_16:
}

- (void)handleMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "ContentUpdateStatus");
  if (string)
  {
    [(MSDKManagedDevice *)self handleContentUpdateStatus:string event:messageCopy];
  }
}

- (void)handleContentUpdateStatus:(const char *)status event:(id)event
{
  v52 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (!strncmp(status, "Error", 6uLL))
  {
    v8 = [(MSDKManagedDevice *)self errorWithXPCDictionary:eventCopy];
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      userInfo = [v8 userInfo];
      *buf = 138543362;
      *&buf[4] = userInfo;
      _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "Received an error: %{public}@", buf, 0xCu);
    }

    v11 = defaultLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "Will call didReceiveError with %{public}@", buf, 0xCu);
    }

    delegate = [(MSDKManagedDevice *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(MSDKManagedDevice *)self delegate];
      [delegate2 didReceiveError:v8];
    }
  }

  else
  {
    if (!strncmp(status, "Progress", 9uLL))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v51 = 0;
      v15 = defaultLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [MSDKManagedDevice handleContentUpdateStatus:event:];
      }

      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke;
      applier[3] = &unk_2798EF900;
      applier[4] = buf;
      xpc_dictionary_apply(eventCopy, applier);
      v16 = defaultLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*&buf[8] + 24);
        *v48 = 134217984;
        v49 = v17;
        _os_log_impl(&dword_259B7D000, v16, OS_LOG_TYPE_DEFAULT, "Will call didReceiveProgress with %td", v48, 0xCu);
      }

      delegate3 = [(MSDKManagedDevice *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        delegate4 = [(MSDKManagedDevice *)self delegate];
        [delegate4 didReceiveProgress:*(*&buf[8] + 24)];
      }

      goto LABEL_34;
    }

    if (strncmp(status, "Completed", 0xAuLL))
    {
      if (!strncmp(status, "AllowContentUpdateCancel", 0x19uLL))
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v51) = 0;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke_195;
        v46[3] = &unk_2798EF900;
        v46[4] = buf;
        xpc_dictionary_apply(eventCopy, v46);
        v28 = defaultLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(*&buf[8] + 24);
          *v48 = 67109120;
          LODWORD(v49) = v29;
          _os_log_impl(&dword_259B7D000, v28, OS_LOG_TYPE_DEFAULT, "Will call didReceiveAllowCancel with %d", v48, 8u);
        }

        delegate5 = [(MSDKManagedDevice *)self delegate];
        v31 = objc_opt_respondsToSelector();

        if (v31)
        {
          delegate6 = [(MSDKManagedDevice *)self delegate];
          [delegate6 didReceiveAllowCancel:*(*&buf[8] + 24)];
        }
      }

      else
      {
        if (strncmp(status, "ContentUpdateDisableIdleTimer", 0x1EuLL))
        {
          v7 = defaultLogHandle();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = status;
            _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "Unknown message from xpc: %{public}s", buf, 0xCu);
          }

          goto LABEL_35;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v51) = 0;
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke_200;
        v45[3] = &unk_2798EF900;
        v45[4] = buf;
        xpc_dictionary_apply(eventCopy, v45);
        v33 = defaultLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(*&buf[8] + 24);
          *v48 = 67109120;
          LODWORD(v49) = v34;
          _os_log_impl(&dword_259B7D000, v33, OS_LOG_TYPE_DEFAULT, "Will call didReceiveDisableIdleTimer with %d", v48, 8u);
        }

        delegate7 = [(MSDKManagedDevice *)self delegate];
        v36 = objc_opt_respondsToSelector();

        if (v36)
        {
          delegate8 = [(MSDKManagedDevice *)self delegate];
          [delegate8 didReceiveDisableIdleTimer:*(*&buf[8] + 24)];
        }
      }

LABEL_34:
      _Block_object_dispose(buf, 8);
LABEL_35:
      v8 = 0;
      goto LABEL_36;
    }

    v8 = [(MSDKManagedDevice *)self errorWithXPCDictionary:eventCopy];
    v21 = defaultLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&dword_259B7D000, v21, OS_LOG_TYPE_DEFAULT, "Will call operationCompleted.", buf, 2u);
      }

      delegate9 = [(MSDKManagedDevice *)self delegate];
      v40 = objc_opt_respondsToSelector();

      delegate10 = [(MSDKManagedDevice *)self delegate];
      v42 = delegate10;
      if (v40)
      {
        [delegate10 blockingStateChanged:0];
      }

      else
      {
        v43 = objc_opt_respondsToSelector();

        if (v43)
        {
          delegate11 = [(MSDKManagedDevice *)self delegate];
          [delegate11 operationCompleted];
        }
      }

      goto LABEL_35;
    }

    if (v22)
    {
      code = [v8 code];
      localizedDescription = [v8 localizedDescription];
      *buf = 134218242;
      *&buf[4] = code;
      *&buf[12] = 2114;
      *&buf[14] = localizedDescription;
      _os_log_impl(&dword_259B7D000, v21, OS_LOG_TYPE_DEFAULT, "Will call operationFailed: with error %tx:%{public}@.", buf, 0x16u);
    }

    delegate12 = [(MSDKManagedDevice *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate13 = [(MSDKManagedDevice *)self delegate];
      [delegate13 operationFailed:v8];
    }
  }

LABEL_36:

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke(uint64_t a1, char *__s1, void *a3)
{
  if (!strncmp(__s1, "Percentage", 0xBuLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_int64_get_value(a3);
  }

  return 1;
}

uint64_t __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke_195(uint64_t a1, char *__s1, void *a3)
{
  if (!strncmp(__s1, "allowCancel", 0xCuLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_BOOL_get_value(a3);
  }

  return 1;
}

uint64_t __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke_200(uint64_t a1, char *__s1, void *a3)
{
  if (!strncmp(__s1, "disableIdleTimer", 0x11uLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_BOOL_get_value(a3);
  }

  return 1;
}

- (id)errorWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __44__MSDKManagedDevice_errorWithXPCDictionary___block_invoke;
  applier[3] = &unk_2798EF928;
  applier[4] = &v20;
  applier[5] = &v14;
  applier[6] = &v8;
  xpc_dictionary_apply(dictionaryCopy, applier);
  v4 = v21[3];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:v15[5] code:v4 userInfo:v9[5]];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v5;
}

uint64_t __44__MSDKManagedDevice_errorWithXPCDictionary___block_invoke(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  if (!strncmp(a2, "ErrorCode", 0xAuLL))
  {
    *(*(a1[4] + 8) + 24) = xpc_int64_get_value(v5);
  }

  else if (!strncmp(a2, "ErrorDomain", 0xCuLL))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else if (strncmp(a2, "ContentUpdateStatus", 0x14uLL))
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    if (string_ptr)
    {
      v7 = *(*(a1[6] + 8) + 40);
      v8 = [MEMORY[0x277CCACA8] stringWithCString:string_ptr encoding:4];
      v9 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:4];
      [v7 setObject:v8 forKey:v9];
    }
  }

  return 1;
}

- (BOOL)inferContentFrozenFromPreferencesFile
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"demo-install-state"];

  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:@"device_options"];
  v6 = [v5 objectForKey:@"disable_snapshot_mode"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v3 integerValue] == 5;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (!v6)
    {
LABEL_8:
      LOBYTE(v8) = 1;
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = [v6 BOOLValue] ^ 1;
LABEL_9:

  return v7 & v8;
}

- (id)getCacheIdentifier
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      if (CFEqual(v4, @"Internal"))
      {
        processInfo = [MEMORY[0x277CCAC38] processInfo];
        bundleIdentifier = [processInfo processName];
      }

      else
      {
        bundleIdentifier = 0;
      }

      CFRelease(v5);
    }

    else
    {
      bundleIdentifier = 0;
    }
  }

  return bundleIdentifier;
}

- (id)readNVRam:(id)ram
{
  ramCopy = ram;
  mainPort = 0;
  if (IOMasterPort(*MEMORY[0x277D85F18], &mainPort))
  {
    NSLog(&cfstr_CouldnTLocateB.isa);
  }

  else
  {
    v4 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v4)
    {
      v5 = v4;
      CFProperty = IORegistryEntryCreateCFProperty(v4, ramCopy, *MEMORY[0x277CBECE8], 0);
      IOObjectRelease(v5);
      goto LABEL_4;
    }

    NSLog(&cfstr_CouldnTLocateO.isa);
  }

  CFProperty = 0;
LABEL_4:

  return CFProperty;
}

- (BOOL)_isEnrolled:(id *)enrolled checkDemo:(BOOL)demo
{
  demoCopy = demo;
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MSDKManagedDevice _isEnrolled:checkDemo:]"];
  if (![(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    safeAssignError(enrolled, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    LOBYTE(enrolled) = 0;
    goto LABEL_7;
  }

  xpc_cache = [(MSDKManagedDevice *)selfCopy xpc_cache];
  v9 = [xpc_cache objectForKey:v7];

  if (v9)
  {
    xpc_cache2 = [(MSDKManagedDevice *)selfCopy xpc_cache];
    v11 = [xpc_cache2 objectForKey:v7];
    LODWORD(enrolled) = [v11 BOOLValue];

    v12 = defaultLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[MSDKManagedDevice _isEnrolled:checkDemo:]";
      v43 = 1024;
      enrolledCopy3 = enrolled;
      _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s - Found cached result: %d", buf, 0x12u);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_7;
  }

  if (demoCopy)
  {
    v19 = +[MSDKDemoState sharedInstance];
    v40 = 0;
    v20 = [v19 _isDeviceEnrolledWithDeKOTA:&v40];
    v14 = v40;

    if (v14)
    {
      v16 = 0;
LABEL_20:
      if (enrolled)
      {
        v33 = v14;
        v13 = 0;
        v15 = 0;
        enrolledCopy2 = enrolled;
        LOBYTE(enrolled) = 0;
        *enrolledCopy2 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      goto LABEL_7;
    }

    if ((v20 & 1) == 0)
    {
      v35 = defaultLogHandle();
      [MSDKManagedDevice _isEnrolled:v35 checkDemo:?];
      v15 = 0;
      v16 = 0;
      goto LABEL_24;
    }
  }

  v21 = defaultLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "[MSDKManagedDevice _isEnrolled:checkDemo:]";
    _os_log_impl(&dword_259B7D000, v21, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
  }

  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v16, "QueryDeviceInfo", "MSDDemoDeviceManaged");
  [(MSDKManagedDevice *)selfCopy setupConnection];
  connection = [(MSDKManagedDevice *)selfCopy connection];
  v23 = connection == 0;

  if (v23)
  {
    v39 = 0;
    safeAssignError(&v39, 3727741186, @"Failed to establish xpc connection to demod.");
    v14 = v39;
    v25 = defaultLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v25 _isEnrolled:v26 checkDemo:v27, v28, v29, v30, v31, v32];
    }

    goto LABEL_20;
  }

  connection2 = [(MSDKManagedDevice *)selfCopy connection];
  v15 = xpc_connection_send_message_with_reply_sync(connection2, v16);

  if (!xpc_dictionary_get_BOOL(v15, "QueryDeviceInfoResult"))
  {
LABEL_24:
    enrolled = 0;
    goto LABEL_25;
  }

  enrolled = xpc_dictionary_get_BOOL(v15, "MSDDemoDeviceManaged");
LABEL_25:
  v13 = MAEGetActivationStateWithError();
  v14 = 0;
  if (!v14 && v13)
  {
    if ([v13 isEqualToString:*MEMORY[0x277D288B0]])
    {
      v36 = defaultLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v42 = "[MSDKManagedDevice _isEnrolled:checkDemo:]";
        v43 = 1024;
        enrolledCopy3 = enrolled;
        _os_log_impl(&dword_259B7D000, v36, OS_LOG_TYPE_DEFAULT, "%s - caching value %d", buf, 0x12u);
      }

      xpc_cache3 = [(MSDKManagedDevice *)selfCopy xpc_cache];
      v38 = [MEMORY[0x277CCABB0] numberWithBool:enrolled];
      [xpc_cache3 setObject:v38 forKey:v7];
    }

    v14 = 0;
  }

LABEL_7:

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x277D85DE8];
  return enrolled;
}

- (BOOL)_isContentFrozen_xpc:(id *)frozen_xpc checkDemo:(BOOL)demo
{
  demoCopy = demo;
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]"];
  if (![(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    safeAssignError(frozen_xpc, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_7:
    LOBYTE(frozen_xpc) = 0;
    goto LABEL_28;
  }

  xpc_cache = [(MSDKManagedDevice *)selfCopy xpc_cache];
  v9 = [xpc_cache objectForKey:v7];

  if (v9)
  {
    xpc_cache2 = [(MSDKManagedDevice *)selfCopy xpc_cache];
    v11 = [xpc_cache2 objectForKey:v7];
    LODWORD(frozen_xpc) = [v11 BOOLValue];

    v12 = defaultLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v40 = "[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]";
      v41 = 1024;
      frozen_xpcCopy2 = frozen_xpc;
      _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s - Found cached result: %d", buf, 0x12u);
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if (demoCopy)
  {
    v16 = +[MSDKDemoState sharedInstance];
    v38 = 0;
    v17 = [v16 _isDeviceEnrolledWithDeKOTA:&v38];
    v13 = v38;

    if (v13)
    {
      v15 = 0;
LABEL_20:
      if (!frozen_xpc)
      {
        v14 = 0;
        goto LABEL_28;
      }

      v30 = v13;
      v14 = 0;
      *frozen_xpc = v13;
      goto LABEL_7;
    }

    if ((v17 & 1) == 0)
    {
      v31 = defaultLogHandle();
      [MSDKManagedDevice _isContentFrozen_xpc:v31 checkDemo:?];
      v14 = 0;
      v15 = 0;
      goto LABEL_24;
    }
  }

  v18 = defaultLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]";
    _os_log_impl(&dword_259B7D000, v18, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v15, "QueryDeviceInfo", "MSDDemoDeviceFrozen");
  [(MSDKManagedDevice *)selfCopy setupConnection];
  connection = [(MSDKManagedDevice *)selfCopy connection];
  v20 = connection == 0;

  if (v20)
  {
    v37 = 0;
    safeAssignError(&v37, 3727741186, @"Failed to establish xpc connection to demod.");
    v13 = v37;
    v22 = defaultLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v22 _isContentFrozen_xpc:v23 checkDemo:v24, v25, v26, v27, v28, v29];
    }

    goto LABEL_20;
  }

  connection2 = [(MSDKManagedDevice *)selfCopy connection];
  v14 = xpc_connection_send_message_with_reply_sync(connection2, v15);

  if (!xpc_dictionary_get_BOOL(v14, "QueryDeviceInfoResult"))
  {
LABEL_24:
    frozen_xpc = 0;
    goto LABEL_25;
  }

  frozen_xpc = xpc_dictionary_get_BOOL(v14, "MSDDemoDeviceFrozen");
LABEL_25:
  v32 = defaultLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v40 = "[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]";
    v41 = 1024;
    frozen_xpcCopy2 = frozen_xpc;
    _os_log_impl(&dword_259B7D000, v32, OS_LOG_TYPE_DEFAULT, "%s - caching value %d", buf, 0x12u);
  }

  xpc_cache3 = [(MSDKManagedDevice *)selfCopy xpc_cache];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:frozen_xpc];
  [xpc_cache3 setObject:v34 forKey:v7];

  v13 = 0;
LABEL_28:

  objc_sync_exit(selfCopy);
  v35 = *MEMORY[0x277D85DE8];
  return frozen_xpc;
}

- (unint64_t)_typeOfDemoDevice:(id *)device checkDemo:(BOOL)demo
{
  demoCopy = demo;
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]"];
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", buf, 0xCu);
  }

  if (![(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    safeAssignError(device, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v16 = 0;
    device = 0;
    v17 = 0;
    goto LABEL_9;
  }

  xpc_cache = [(MSDKManagedDevice *)selfCopy xpc_cache];
  v10 = [xpc_cache objectForKey:v7];

  if (v10)
  {
    xpc_cache2 = [(MSDKManagedDevice *)selfCopy xpc_cache];
    v12 = [xpc_cache2 objectForKey:v7];
    bOOLValue = [v12 BOOLValue];

    v14 = defaultLogHandle();
    uint64 = bOOLValue;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
      v40 = 2048;
      v41 = bOOLValue;
      _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "%s - Found cached result: %lu", buf, 0x16u);
    }

    v16 = 0;
    device = 0;
    v17 = 0;
    goto LABEL_10;
  }

  if (!demoCopy || (MGGetBoolAnswer() & 1) != 0)
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v17, "QueryDeviceInfo", "MSDTypeOfDemoDevice");
    [(MSDKManagedDevice *)selfCopy setupConnection];
    connection = [(MSDKManagedDevice *)selfCopy connection];
    v21 = connection == 0;

    if (v21)
    {
      v37 = 0;
      safeAssignError(&v37, 3727741186, @"Failed to establish xpc connection to demod.");
      v16 = v37;
      v28 = defaultLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v28 _typeOfDemoDevice:v29 checkDemo:v30, v31, v32, v33, v34, v35];
      }

      if (device)
      {
        v36 = v16;
        uint64 = 0;
        *device = v16;
        device = 0;
        goto LABEL_10;
      }
    }

    else
    {
      connection2 = [(MSDKManagedDevice *)selfCopy connection];
      device = xpc_connection_send_message_with_reply_sync(connection2, v17);

      if (xpc_dictionary_get_BOOL(device, "QueryDeviceInfoResult"))
      {
        uint64 = xpc_dictionary_get_uint64(device, "MSDTypeOfDemoDevice");
        if (uint64 != 1)
        {
          v16 = 0;
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      v16 = 0;
    }

LABEL_9:
    uint64 = 0;
    goto LABEL_10;
  }

  v23 = defaultLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
    _os_log_impl(&dword_259B7D000, v23, OS_LOG_TYPE_DEFAULT, "%s - Device is not demo device", buf, 0xCu);
  }

  v17 = 0;
  device = 0;
LABEL_21:
  v24 = MAEGetActivationStateWithError();
  v16 = 0;
  if (!v16 && v24 && [v24 isEqualToString:*MEMORY[0x277D288B0]])
  {
    v25 = defaultLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
      v40 = 2048;
      v41 = 1;
      _os_log_impl(&dword_259B7D000, v25, OS_LOG_TYPE_DEFAULT, "%s - caching value %lu", buf, 0x16u);
    }

    xpc_cache3 = [(MSDKManagedDevice *)selfCopy xpc_cache];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    [xpc_cache3 setObject:v27 forKey:v7];
  }

  uint64 = 1;
LABEL_10:

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x277D85DE8];
  return uint64;
}

- (BOOL)_unlockDemoContentWithOptions:(id)options outError:(id *)error
{
  optionsCopy = options;
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    if (optionsCopy)
    {
      createXPCDictionary = [optionsCopy createXPCDictionary];
      if (!createXPCDictionary)
      {
        v12[0] = 0;
        safeAssignError(v12, 3727744769, @"Input is invalid");
        v8 = v12[0];
        v9 = 0;
        LOBYTE(connection) = 0;
        if (!error)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      createXPCDictionary = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_string(createXPCDictionary, "RequestOperation", "DemoMaualUpdate");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (!connection)
    {
      [MSDKManagedDevice _unlockDemoContentWithOptions:outError:];
      v9 = 0;
      v8 = v12[1];
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    connection = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection, createXPCDictionary);

    LOBYTE(connection) = xpc_dictionary_get_BOOL(v9, "Acknowledged");
    v8 = 0;
    if (error)
    {
LABEL_10:
      v8 = v8;
      *error = v8;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    createXPCDictionary = 0;
    LOBYTE(connection) = 0;
  }

LABEL_11:

  return connection;
}

- (BOOL)_unenrollWithOptions:(id)options outError:(id *)error
{
  optionsCopy = options;
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    if (optionsCopy)
    {
      createXPCDictionary = [optionsCopy createXPCDictionary];
      if (!createXPCDictionary)
      {
        v12[0] = 0;
        safeAssignError(v12, 3727744769, @"Input is invalid");
        v8 = v12[0];
        v9 = 0;
        LOBYTE(connection) = 0;
        if (!error)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      createXPCDictionary = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_string(createXPCDictionary, "RequestOperation", "Virgin");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (!connection)
    {
      [MSDKManagedDevice _unenrollWithOptions:outError:];
      v9 = 0;
      v8 = v12[1];
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    connection = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection, createXPCDictionary);

    LOBYTE(connection) = xpc_dictionary_get_BOOL(v9, "Acknowledged");
    v8 = 0;
    if (error)
    {
LABEL_10:
      v8 = v8;
      *error = v8;
    }
  }

  else
  {
    safeAssignError(error, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v9 = 0;
    v8 = 0;
    createXPCDictionary = 0;
    LOBYTE(connection) = 0;
  }

LABEL_11:

  return connection;
}

- (id)_getDeviceOptions:(id *)options checkDemo:(BOOL)demo
{
  demoCopy = demo;
  buf[3] = *MEMORY[0x277D85DE8];
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    safeAssignError(options, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
LABEL_9:
    v9 = 0;
    v11 = 0;
    v12 = 0;
LABEL_10:
    v13 = 0;
    goto LABEL_19;
  }

  if (!demoCopy)
  {
    goto LABEL_13;
  }

  v7 = +[MSDKDemoState sharedInstance];
  v22 = 0;
  v8 = [v7 _isDeviceEnrolledWithDeKOTA:&v22];
  v9 = v22;

  if (!v9 && (v8 & 1) == 0)
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "[MSDKManagedDevice _getDeviceOptions:checkDemo:]";
      _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s - Device is not demo device", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
LABEL_13:
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "RequestOperation", "GetDeviceOptions");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v11 = xpc_connection_send_message_with_reply_sync(connection2, v12);

      string = xpc_dictionary_get_string(v11, "device_options");
      v9 = string;
      if (string)
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytes:string length:strlen(string)];
        v21 = 0;
        v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v17 options:0 error:&v21];
        v9 = v21;

        goto LABEL_19;
      }
    }

    else
    {
      [MSDKManagedDevice _getDeviceOptions:checkDemo:];
      v11 = 0;
      v9 = buf[0];
    }
  }

  if (!options)
  {
    goto LABEL_10;
  }

  v18 = v9;
  v13 = 0;
  *options = v9;
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_getCurrentNetworkInfoForKeys:(id)keys outError:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"CurrentWiFiSSID", @"PersistentWiFiSSID", @"EmbeddedSIMInstalled", @"ActiveNetworkInterface", 0}];
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    if (keysCopy && ([MEMORY[0x277CBEB98] setWithArray:keysCopy], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isSubsetOfSet:", v7), v8, (v9 & 1) != 0))
    {
      errorCopy = error;
      v10 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v10, "RequestOperation", "GetCurrentNetworkInfo");
      empty = xpc_array_create_empty();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v12 = keysCopy;
      v13 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v43;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v43 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = xpc_string_create([*(*(&v42 + 1) + 8 * i) UTF8String]);
            xpc_array_append_value(empty, v17);
          }

          v14 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v14);
      }

      xpc_dictionary_set_value(v10, "NetworkInfoKeys", empty);
      [(MSDKManagedDevice *)self setupConnection];
      connection = [(MSDKManagedDevice *)self connection];

      if (connection)
      {
        connection2 = [(MSDKManagedDevice *)self connection];
        v20 = xpc_connection_send_message_with_reply_sync(connection2, v10);

        if (v20 == MEMORY[0x277D863F8] || !v20 || v20 == MEMORY[0x277D863F0])
        {
          [(MSDKManagedDevice *)errorCopy _getCurrentNetworkInfoForKeys:v20 outError:?];
        }

        else
        {
          v21 = objc_alloc(MEMORY[0x277CBEAC0]);
          v22 = xpc_dictionary_get_value(v20, "Result");
          v23 = [v21 initWithXPCDictionary:v22];

          if (v23)
          {
            v24 = v23;

            v10 = v24;
            goto LABEL_20;
          }

          [(MSDKManagedDevice *)errorCopy _getCurrentNetworkInfoForKeys:v20 outError:?];
        }
      }

      else
      {
        [MSDKManagedDevice _getCurrentNetworkInfoForKeys:errorCopy outError:empty];
      }
    }

    else
    {
      safeAssignError(error, 3727744769, @"Input is invalid");
      v10 = defaultLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v10 _getCurrentNetworkInfoForKeys:v25 outError:v26, v27, v28, v29, v30, v31];
      }
    }
  }

  else
  {
    safeAssignError(error, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v10 _getCurrentNetworkInfoForKeys:v34 outError:v35, v36, v37, v38, v39, v40];
    }
  }

  v24 = 0;
LABEL_20:

  v32 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_getStoreID:(id *)d checkDemo:(BOOL)demo
{
  demoCopy = demo;
  buf[3] = *MEMORY[0x277D85DE8];
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    safeAssignError(d, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
LABEL_9:
    v9 = 0;
    v11 = 0;
    v12 = 0;
LABEL_10:
    v13 = 0;
    goto LABEL_19;
  }

  if (!demoCopy)
  {
    goto LABEL_14;
  }

  v7 = +[MSDKDemoState sharedInstance];
  v20 = 0;
  v8 = [v7 _isDeviceEnrolledWithDeKOTA:&v20];
  v9 = v20;

  if (!v9 && (v8 & 1) == 0)
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "[MSDKManagedDevice _getStoreID:checkDemo:]";
      _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s - Device is not demo device", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v11 = 0;
    v12 = 0;
    if (!d)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_14:
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "RequestOperation", "GetDeviceOptions");
    xpc_dictionary_set_string(v12, "SubKey", [@"store_id" UTF8String]);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v11 = xpc_connection_send_message_with_reply_sync(connection2, v12);

      string = xpc_dictionary_get_string(v11, [@"store_id" UTF8String]);
      if (string)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        v9 = 0;
        goto LABEL_19;
      }

      v9 = 0;
      if (!d)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [MSDKManagedDevice _getStoreID:checkDemo:];
      v11 = 0;
      v9 = buf[0];
      if (!d)
      {
        goto LABEL_10;
      }
    }
  }

  v17 = v9;
  v13 = 0;
  *d = v9;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_needOwnershipWarning:(id *)warning error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = defaultLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[MSDKManagedDevice _needOwnershipWarning:error:]";
    _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", buf, 0xCu);
  }

  v8 = MAEGetActivationStateWithError();
  v9 = 0;
  if (!v9 && v8 && (([v8 isEqualToString:*MEMORY[0x277D288B0]] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D288B8]) & 1) != 0))
  {
    _readOwnershipWarningFromNvram = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_17;
  }

  _readOwnershipWarningFromNvram = [(MSDKManagedDevice *)self _readOwnershipWarningFromNvram];
  if (!_readOwnershipWarningFromNvram)
  {
    goto LABEL_18;
  }

  v12 = defaultLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[MSDKManagedDevice _needOwnershipWarning:error:]";
    v18 = 2114;
    v19 = _readOwnershipWarningFromNvram;
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s - ownershipWarning:  %{public}@", buf, 0x16u);
  }

  if (([_readOwnershipWarningFromNvram isEqualToString:@"1"] & 1) == 0 && !objc_msgSend(_readOwnershipWarningFromNvram, "isEqualToString:", @"2"))
  {
LABEL_18:
    if (error)
    {
      v15 = v9;
      v11 = 0;
      *error = v9;
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (warning)
  {
    *warning = [MSDLocalization getLocalizedOwnershipWarnings:_readOwnershipWarningFromNvram];
  }

  v11 = 1;
LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_manageWallpaperSettingsWithAction:(const char *)action
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "ManageWallpaperSettings");
  xpc_dictionary_set_string(v5, "Action", action);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v8 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v9 = xpc_dictionary_get_BOOL(v8, "Result");
  }

  else
  {
    v8 = defaultLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(Wallpaper) _manageWallpaperSettingsWithAction:v8];
    }

    v9 = 0;
  }

  return v9;
}

- (id)retrieveXPCConnectionToPeerService
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "SetUpPeerService");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    if (MEMORY[0x259CB0BB0](v6) == MEMORY[0x277D86480])
    {
      [MSDKManagedDevice(PeerService) retrieveXPCConnectionToPeerService];
    }

    else if (xpc_dictionary_get_BOOL(v6, "Result"))
    {
      v7 = xpc_dictionary_get_value(v6, "PeerServiceXPCEndpoint");
      if (v7)
      {
        v8 = v7;
        v9 = objc_alloc_init(MEMORY[0x277CCAEA0]);
        [v9 _setEndpoint:v8];
        v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v9];

        v6 = v9;
        goto LABEL_6;
      }

      [MSDKManagedDevice(PeerService) retrieveXPCConnectionToPeerService];
    }

    else
    {
      [MSDKManagedDevice(PeerService) retrieveXPCConnectionToPeerService];
    }
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(PeerService) *)v6 retrieveXPCConnectionToPeerService];
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (BOOL)isFeatureFlagEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "queryFeatureFlag");
  v6 = [enabledCopy cStringUsingEncoding:4];

  xpc_dictionary_set_string(v5, "FeatureFlag", v6);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v10 = xpc_dictionary_get_BOOL(v9, "Result");
  }

  else
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(FeatureFlag) isFeatureFlagEnabled:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)refreshDeviceSettings
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "RefreshDeviceSettings");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Result");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(RefreshSettings) *)v6 refreshDeviceSettings];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)initializeDeviceSettingsWithOverwrite:(BOOL)overwrite
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "InitializeDeviceSettings");
  xpc_dictionary_set_BOOL(v5, "InitializeSettingsOverwrite", overwrite);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v8 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v9 = xpc_dictionary_get_BOOL(v8, "Result");
  }

  else
  {
    v8 = defaultLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(RefreshSettings) initializeDeviceSettingsWithOverwrite:v8];
    }

    v9 = 0;
  }

  return v9;
}

- (void)launchApp:(id)app
{
  appCopy = app;
  v5 = xpc_dictionary_create(0, 0, 0);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(Test) *)v7 launchApp:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  xpc_dictionary_set_string(v5, "RequestOperation", "LaunchApp");
  uTF8String = [appCopy UTF8String];

  xpc_dictionary_set_string(v5, "BundleID", uTF8String);
  connection2 = [(MSDKManagedDevice *)self connection];
  xpc_connection_send_message(connection2, v5);
}

- (BOOL)reloadDemodsPreferencesFile
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    v5 = defaultLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(Test) *)v5 reloadDemodsPreferencesFile:v6];
    }
  }

  xpc_dictionary_set_string(v3, "RequestOperation", "ReloadDemodsPreferencesFile");
  connection2 = [(MSDKManagedDevice *)self connection];
  v14 = xpc_connection_send_message_with_reply_sync(connection2, v3);

  LOBYTE(connection2) = xpc_dictionary_get_BOOL(v14, "Result");
  return connection2;
}

- (BOOL)setDeviceLanguageWithoutSystemLanguageMatching:(id)matching andRegion:(id)region
{
  matchingCopy = matching;
  regionCopy = region;
  NSLog(&cfstr_S_0.isa, "[MSDKManagedDevice(Test) setDeviceLanguageWithoutSystemLanguageMatching:andRegion:]");
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "RequestOperation", "SetLanguageAndRegionWithoutSystemLanguageMatching");
    xpc_dictionary_set_string(v8, "languageIdentifier", [matchingCopy UTF8String]);
    xpc_dictionary_set_string(v8, "regionCode", [regionCopy UTF8String]);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v11 = xpc_connection_send_message_with_reply_sync(connection2, v8);

      v12 = xpc_dictionary_get_BOOL(v11, "Result");
    }

    else
    {
      v11 = defaultLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice(Test) *)v11 setDeviceLanguageWithoutSystemLanguageMatching:v14 andRegion:v15, v16, v17, v18, v19, v20];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)clearCurrentSafariHistory
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "ClearSafariHistory");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v6 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v7 = xpc_dictionary_get_BOOL(v6, "Result");
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(ClearSafariHistory) *)v6 clearCurrentSafariHistory];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_prepareWithOptions:(id)options
{
  v15 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    goto LABEL_4;
  }

  if (optionsCopy)
  {
    createXPCDictionary = [optionsCopy createXPCDictionary];
    if (!createXPCDictionary)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    createXPCDictionary = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_string(createXPCDictionary, "RequestOperation", "DemoPrepare");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, createXPCDictionary);

    v6 = xpc_dictionary_get_BOOL(v9, "DemoPrepareAcknowledged");
  }

  else
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[MSDKManagedDevice _prepareWithOptions:]";
      OUTLINED_FUNCTION_3_1(&dword_259B7D000, v9, v12, "%s - Failed to setup XPC connection.", &v13);
    }

    v6 = 0;
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_readOwnershipWarningFromNvram
{
  v2 = [(MSDKManagedDevice *)self readNVRam:@"ownership-warning"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithCString:objc_msgSend(v2 encoding:{"bytes"), 4}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSEPDemoMode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)enterOfflineModeWithOptions:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_4_3(v3, v4, @"Failed to establish xpc connection to demod.");
  OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)isOfflineMode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getDemoInstallState
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)lockDemoContent
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)revertDemoContent
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)commitNewDemoContent
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)isBetterTogetherDemoDevice
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getFriendlyDeviceName
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)setStoreOpenAt:(NSObject *)a1 openMinute:closeHour:closeMinute:.cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)setIdleDelay:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)configureWiFi:(uint64_t)a3 password:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)disconnectAndForgetWiFi:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceLanguage:(uint64_t)a3 andRegion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceLanguageandRegion
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveBluetoothPairingInfo
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkInBlockingUI
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelOperation
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)isStoreOpen:withError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isStoreOpen:(id *)a1 withError:.cold.2(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)nextStoreOpenDate:withError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)nextStoreOpenDate:(void *)a1 withError:(void *)a2 .cold.2(void *a1, void *a2)
{
  *a1 = 0;
  v3 = [a2 objectForKey:@"ErrorMessage"];
  OUTLINED_FUNCTION_11(v3);
  OUTLINED_FUNCTION_9_0();
}

- (void)nextStoreOpenDate:(id *)a1 withError:.cold.3(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)nextStoreCloseDate:withError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)nextStoreCloseDate:(id *)a1 withError:.cold.3(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateStoreHours:(id *)a1 evaluateAgainstDate:(uint64_t)a2 .cold.1(id *a1, uint64_t a2)
{
  *a1 = 0;
  OUTLINED_FUNCTION_4_3(a1, a2, @"Failed to establish xpc connection to demod.");
}

- (void)storeDataBlob:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[MSDKManagedDevice storeDataBlob:]";
    OUTLINED_FUNCTION_3_1(&dword_259B7D000, v2, v3, "%s - Failed to setup XPC connection.", &v5);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)storeDataBlob:(void *)a1 .cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retrieveDataBlob
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)deleteDataBlob
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearOwnershipWarning
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 136446210;
  v5 = MEMORY[0x259CB0A20]();
  _os_log_debug_impl(&dword_259B7D000, a2, OS_LOG_TYPE_DEBUG, "description of xpc reply: %{public}s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleContentUpdateStatus:event:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_isEnrolled:(NSObject *)a1 checkDemo:.cold.1(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_13(&dword_259B7D000, v2, v3, "%s - Device is not demo device", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_isEnrolled:(uint64_t)a3 checkDemo:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_isContentFrozen_xpc:(NSObject *)a1 checkDemo:.cold.1(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_13(&dword_259B7D000, v2, v3, "%s - Device is not demo device", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_isContentFrozen_xpc:(uint64_t)a3 checkDemo:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_typeOfDemoDevice:(uint64_t)a3 checkDemo:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_unlockDemoContentWithOptions:outError:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_4_3(v3, v4, @"Failed to establish xpc connection to demod.");
  OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_unenrollWithOptions:outError:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_4_3(v3, v4, @"Failed to establish xpc connection to demod.");
  OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getDeviceOptions:checkDemo:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_4_3(v3, v4, @"Failed to establish xpc connection to demod.");
  OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentNetworkInfoForKeys:(uint64_t)a3 outError:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Device class is not supported.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentNetworkInfoForKeys:(void *)a3 outError:.cold.2(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  safeAssignError(a1, 3727741189, @"Unexpected demod xpc response.");
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[MSDKManagedDevice _getCurrentNetworkInfoForKeys:outError:]";
    OUTLINED_FUNCTION_3_1(&dword_259B7D000, v5, v6, "%s - Failed to extract network info from XPC response.", &v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentNetworkInfoForKeys:(void *)a3 outError:.cold.3(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3(a1, a2, @"Failed to establish xpc connection to demod.");
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[MSDKManagedDevice _getCurrentNetworkInfoForKeys:outError:]";
    OUTLINED_FUNCTION_3_1(&dword_259B7D000, v5, v6, "%s - Failed to send XPC message.", &v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentNetworkInfoForKeys:(void *)a1 outError:(void *)a2 .cold.4(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3(a1, a2, @"Failed to establish xpc connection to demod.");
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[MSDKManagedDevice _getCurrentNetworkInfoForKeys:outError:]";
    OUTLINED_FUNCTION_3_1(&dword_259B7D000, v3, v4, "%s - Failed to setup XPC connection.", &v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentNetworkInfoForKeys:(uint64_t)a3 outError:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Received nil array or invalid key.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getStoreID:checkDemo:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_4_3(v3, v4, @"Failed to establish xpc connection to demod.");
  OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end