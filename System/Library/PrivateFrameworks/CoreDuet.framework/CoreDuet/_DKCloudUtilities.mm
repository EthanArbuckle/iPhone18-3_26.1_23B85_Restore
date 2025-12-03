@interface _DKCloudUtilities
+ (BOOL)isSyncAvailableAndEnabledWithVerboseLogging:(BOOL)logging;
+ (id)sharedInstance;
+ (void)setCloudKitEnabled:(BOOL)enabled;
+ (void)setUnitTesting:(BOOL)testing;
- (BOOL)isSingleDevice;
- (BOOL)isSiriCloudSyncEnabled;
- (_DKCloudUtilities)init;
- (id)containerKeyValueStore;
- (id)keyValueStore;
- (void)_accountDidChange:(id)change;
- (void)_fetchAccountInfoWithCompletionHandler:(void *)handler;
- (void)_fetchCloudKitConfigurationAndStatus;
- (void)_performUpdateNumberOfSyncedDevicesWithAttempt:(void *)attempt completionHandler:;
- (void)_updateAccountInfo:(void *)info error:;
- (void)_updateNumberOfSyncedDevicesWithCompletionHandler:(uint64_t)handler;
- (void)dealloc;
- (void)deleteRemoteStateWithReply:(id)reply;
- (void)init;
@end

@implementation _DKCloudUtilities

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___DKCloudUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_initialized != -1)
  {
    dispatch_once(&sharedInstance_initialized, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

+ (void)setCloudKitEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"disabled";
    if (enabledCopy)
    {
      v5 = @"enabled";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "Cloud kit is being %@", &v7, 0xCu);
  }

  _DKIsCloudKitEnabled = enabledCopy;
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setUnitTesting:(BOOL)testing
{
  testingCopy = testing;
  v9 = *MEMORY[0x1E69E9840];
  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"disabled";
    if (testingCopy)
    {
      v5 = @"enabled";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "Unit tesing is being %@", &v7, 0xCu);
  }

  _DKIsUnitTesting = testingCopy;
  v6 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSyncAvailableAndEnabledWithVerboseLogging:(BOOL)logging
{
  loggingCopy = logging;
  v28 = *MEMORY[0x1E69E9840];
  v5 = +[_DKCloudUtilities sharedInstance];
  isCloudSyncAvailable = [v5 isCloudSyncAvailable];

  v7 = +[_DKCloudUtilities sharedInstance];
  [v7 isSiriCloudSyncEnabled];

  LODWORD(v7) = [self isCloudKitEnabled];
  v8 = ([self isUnitTesting] ^ 1) & v7 & isCloudSyncAvailable;
  if (loggingCopy)
  {
    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if ([self isCloudKitEnabled])
      {
        v10 = @"yes";
      }

      else
      {
        v10 = @"no";
      }

      if (isCloudSyncAvailable)
      {
        v11 = @"yes";
      }

      else
      {
        v11 = @"no";
      }

      v16 = 138413570;
      if ([self isUnitTesting])
      {
        v12 = @"yes";
      }

      else
      {
        v12 = @"no";
      }

      v17 = v10;
      if (v8)
      {
        v13 = @"yes";
      }

      else
      {
        v13 = @"no";
      }

      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = @"yes";
      v22 = 2112;
      v23 = @"yes";
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "isCloudKitEnabled = %@, isCloudSyncAvailable = %@, syncEnabledByPolicy = %@, siriCloudSyncEnabled = %@, isUnitTesting = %@, isSyncAvailableAndEnabled = %@", &v16, 0x3Eu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (_DKCloudUtilities)init
{
  v16.receiver = self;
  v16.super_class = _DKCloudUtilities;
  v2 = [(_DKCloudUtilities *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.coreduet.cloud.utilities", v3);
    fetchQueue = v2->_fetchQueue;
    v2->_fetchQueue = v4;

    if ((_DKIsUnitTesting & 1) != 0 || !+[_DKCloudUtilities isCloudKitEnabled])
    {
      v2->_supportsDeviceToDeviceEncryption = 0;
    }

    else
    {
      v2->_supportsDeviceToDeviceEncryption = 0;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel__accountDidChange_ name:*MEMORY[0x1E695B710] object:0];

      v7 = v2->_fetchQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __25___DKCloudUtilities_init__block_invoke;
      v14[3] = &unk_1E7367440;
      v15 = v2;
      v8 = v14;
      v9 = v7;
      v10 = os_transaction_create();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __cd_dispatch_async_capture_tx_block_invoke_0;
      block[3] = &unk_1E7367818;
      v18 = v10;
      v19 = v8;
      v11 = v10;
      dispatch_async(v9, block);
    }

    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(_DKCloudUtilities *)v2 init];
    }
  }

  return v2;
}

- (void)dealloc
{
  if ((_DKIsUnitTesting & 1) == 0 && +[_DKCloudUtilities isCloudKitEnabled])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E695B710] object:0];
  }

  v4.receiver = self;
  v4.super_class = _DKCloudUtilities;
  [(_DKCloudUtilities *)&v4 dealloc];
}

- (BOOL)isSiriCloudSyncEnabled
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  cloudSyncEnabled = [sharedPreferences cloudSyncEnabled];

  return cloudSyncEnabled;
}

- (void)_accountDidChange:(id)change
{
  fetchQueue = self->_fetchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39___DKCloudUtilities__accountDidChange___block_invoke;
  v8[3] = &unk_1E7367440;
  v8[4] = self;
  v4 = v8;
  v5 = fetchQueue;
  v6 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_0;
  block[3] = &unk_1E7367818;
  v10 = v6;
  v11 = v4;
  v7 = v6;
  dispatch_async(v5, block);
}

- (void)_fetchAccountInfoWithCompletionHandler:(void *)handler
{
  location[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (handler)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [_DKCloudUtilities _fetchAccountInfoWithCompletionHandler:];
    }

    v5 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.knowledgestore4"];
    if (v5)
    {
      objc_initWeak(location, handler);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __60___DKCloudUtilities__fetchAccountInfoWithCompletionHandler___block_invoke;
      v7[3] = &unk_1E7367898;
      objc_copyWeak(&v9, location);
      v8 = v3;
      [v5 accountInfoWithCompletionHandler:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(location);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteRemoteStateWithReply:(id)reply
{
  v22[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (+[_DKCloudUtilities isUnitTesting](_DKCloudUtilities, "isUnitTesting") || !+[_DKCloudUtilities isCloudKitEnabled])
  {
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v4 = os_transaction_create();
    v5 = MEMORY[0x1E695B888];
    v6 = +[_DKCloudUtilities containerIdentifier];
    v7 = [v5 containerWithIdentifier:v6];

    privateCloudDatabase = [v7 privateCloudDatabase];
    v9 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneName:@"com.apple.coredata.cloudkit.zone"];
    v10 = objc_alloc(MEMORY[0x1E695B9B0]);
    zoneID = [v9 zoneID];
    v22[0] = zoneID;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v13 = [v10 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v12];

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __48___DKCloudUtilities_deleteRemoteStateWithReply___block_invoke;
    v19 = &unk_1E73678C0;
    v20 = v4;
    v21 = replyCopy;
    v14 = v4;
    [v13 setModifyRecordZonesCompletionBlock:&v16];
    [privateCloudDatabase addOperation:{v13, v16, v17, v18, v19}];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)keyValueStore
{
  if (self)
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = [_DKSync2Coordinator keyValueStoreForDomain:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_fetchCloudKitConfigurationAndStatus
{
  if (self)
  {
    v2 = *(self + 16);
    v3 = +[_DKSyncSerializer underlyingQueue];
    OUTLINED_FUNCTION_0_1();
    v5 = 3221225472;
    v6 = __57___DKCloudUtilities__fetchCloudKitConfigurationAndStatus__block_invoke;
    v7 = &unk_1E7367440;
    selfCopy = self;
    [v2 performWithMinimumIntervalInSecondsOf:@"FetchAccountInfo" name:v3 queue:v4 activityBlock:60.0];
  }
}

- (id)containerKeyValueStore
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v10[0] = v3;
    v4 = +[_DKCloudUtilities containerIdentifier];
    v10[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v6 = [v1 pathWithComponents:v5];

    v7 = [_DKSync2Coordinator keyValueStoreForDomain:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isSingleDevice
{
  v21 = *MEMORY[0x1E69E9840];
  keyValueStore = [(_DKCloudUtilities *)self keyValueStore];
  v4 = [keyValueStore arrayForKey:@"_DKCloudSyncDevices"];

  if (v4)
  {
    v5 = [v4 count] < 2;
  }

  else
  {
    v5 = 0;
  }

  if (isSingleDevice_firstTime != 1 || self->_isSingleDevice != v5)
  {
    isSingleDevice_firstTime = 1;
    v6 = +[_CDLogging syncChannel];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v7)
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
        OUTLINED_FUNCTION_0_5();
        _os_log_debug_impl(v8, v9, v10, v11, v12, 0xCu);
      }
    }

    else if (v7)
    {
      OUTLINED_FUNCTION_0_5();
      _os_log_debug_impl(v15, v16, v17, v18, v19, 2u);
    }
  }

  self->_isSingleDevice = v5;

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_updateNumberOfSyncedDevicesWithCompletionHandler:(uint64_t)handler
{
  v3 = a2;
  if (handler)
  {
    v4 = *(handler + 16);
    OUTLINED_FUNCTION_2_4();
    v12 = 3221225472;
    v13 = __71___DKCloudUtilities__updateNumberOfSyncedDevicesWithCompletionHandler___block_invoke;
    v14 = &unk_1E73674E0;
    handlerCopy = handler;
    v16 = v3;
    OUTLINED_FUNCTION_0_1();
    v7 = 3221225472;
    v8 = __71___DKCloudUtilities__updateNumberOfSyncedDevicesWithCompletionHandler___block_invoke_2;
    v9 = &unk_1E73678E8;
    v10 = v5;
    [v4 performNoMoreOftenInDaysThan:@"UpdateNumberOfSyncedDevices" name:v11 activityBlock:v6 throttleBlock:1.0];
  }
}

- (void)_updateAccountInfo:(void *)info error:
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  infoCopy = info;
  if (self)
  {
    v7 = +[_CDLogging syncChannel];
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v34) = 0;
        OUTLINED_FUNCTION_0_5();
        _os_log_debug_impl(v16, v17, v18, v19, v20, 2u);
      }

      v9 = *(self + 24);
      if (v9 != [v5 supportsDeviceToDeviceEncryption])
      {
        [_DKCloudUtilities isSyncAvailableAndEnabledWithVerboseLogging:1];
        v10 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          supportsDeviceToDeviceEncryption = [v5 supportsDeviceToDeviceEncryption];
          v23 = @"disabled";
          if (supportsDeviceToDeviceEncryption)
          {
            v23 = @"enabled";
          }

          LODWORD(v34) = 138412290;
          *(&v34 + 4) = v23;
          OUTLINED_FUNCTION_0_5();
          _os_log_debug_impl(v24, v25, v26, v27, v28, 0xCu);
        }

        *(self + 24) = [v5 supportsDeviceToDeviceEncryption];
        [_DKCloudUtilities isSyncAvailableAndEnabledWithVerboseLogging:1];
      }

      *(self + 24) = [v5 supportsDeviceToDeviceEncryption];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        domain = [infoCopy domain];
        [infoCopy code];
        LODWORD(v34) = 138543874;
        *(&v34 + 4) = domain;
        OUTLINED_FUNCTION_4_3();
        _os_log_error_impl(&dword_191750000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch account info: %{public}@:%lld (%@)", &v34, 0x20u);
      }

      if (*(self + 24) == 1)
      {
        v11 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v34) = 0;
          OUTLINED_FUNCTION_0_5();
          _os_log_debug_impl(v29, v30, v31, v32, v33, 2u);
        }
      }

      *(self + 24) = 0;
    }

    v12 = dispatch_get_global_queue(2, 0);
    v13 = os_transaction_create();
    *&v34 = MEMORY[0x1E69E9820];
    *(&v34 + 1) = 3221225472;
    v35 = __cd_dispatch_async_capture_tx_block_invoke_0;
    v36 = &unk_1E7367818;
    v37 = v13;
    v38 = &__block_literal_global_566;
    v14 = v13;
    dispatch_async(v12, &v34);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_performUpdateNumberOfSyncedDevicesWithAttempt:(void *)attempt completionHandler:
{
  v55[1] = *MEMORY[0x1E69E9840];
  attemptCopy = attempt;
  if (self)
  {
    v29 = os_transaction_create();
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v52 = 0;
      OUTLINED_FUNCTION_5_2(&dword_191750000, v6, v7, "Fetching number of sync devices", v52);
    }

    v32 = attemptCopy;

    v31 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.knowledgestore4"];
    privateCloudDatabase = [v31 privateCloudDatabase];
    keyValueStore = [(_DKCloudUtilities *)self keyValueStore];
    v9 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneName:@"metadata_zone"];
    zoneID = [v9 zoneID];
    containerKeyValueStore = [(_DKCloudUtilities *)self containerKeyValueStore];
    v12 = [containerKeyValueStore dataForKey:@"_DKCloudSyncMetadataChangeToken"];
    v55[0] = zoneID;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
    v14 = objc_opt_new();
    if (v12)
    {
      v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:0];
      [v14 setPreviousServerChangeToken:v15];
    }

    v53 = zoneID;
    v54 = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v28 = v12;
    v17 = [objc_alloc(MEMORY[0x1E695B918]) initWithRecordZoneIDs:v13 optionsByRecordZoneID:v16];
    [v17 setFetchAllChanges:1];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke;
    v49[3] = &unk_1E7367910;
    v18 = keyValueStore;
    v50 = v18;
    selfCopy = self;
    [v17 setRecordChangedBlock:v49];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_596;
    v46[3] = &unk_1E7367938;
    v19 = v18;
    v47 = v19;
    selfCopy2 = self;
    [v17 setRecordWithIDWasDeletedBlock:v46];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_2;
    v44[3] = &unk_1E7367960;
    v27 = zoneID;
    v20 = v13;
    v21 = containerKeyValueStore;
    v45 = v21;
    [v17 setRecordZoneFetchCompletionBlock:v44];
    OUTLINED_FUNCTION_2_4();
    v34 = 3221225472;
    v35 = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_3;
    v36 = &unk_1E7367988;
    v37 = v19;
    v38 = v9;
    v43 = a2;
    v39 = v21;
    selfCopy3 = self;
    v41 = v29;
    v42 = v32;
    v22 = v29;
    v23 = v21;
    v24 = v9;
    v25 = v19;
    [v17 setFetchRecordZoneChangesCompletionBlock:v33];
    [privateCloudDatabase addOperation:v17];

    attemptCopy = v32;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)init
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(self + 24))
  {
    v2 = @"enabled";
  }

  else
  {
    v2 = @"disabled";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Cloud sync initialized to %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_fetchAccountInfoWithCompletionHandler:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "Failed to fetch account info: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end