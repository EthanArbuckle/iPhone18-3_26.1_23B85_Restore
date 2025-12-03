@interface CWFCloudSyncManager
- (BOOL)__calloutToCheckForKeychainPasswordWithNetworkProfile:(id)profile error:(id *)error;
- (BOOL)__calloutToCheckIfNetworkIsSyncable:(id)syncable;
- (BOOL)__updateCloudNetwork:(id)network error:(id *)error;
- (BOOL)forgetCloudNetwork:(id)network error:(id *)error;
- (BOOL)rememberCloudNetwork:(id)network error:(id *)error;
- (CWFCloudSyncManager)init;
- (NSArray)cloudNetworks;
- (NSDictionary)cloudKVS;
- (id)__calloutToFetchAllLocalNetworksAndReturnError:(id *)error;
- (id)__cloudKeyForNetworkProfile:(id)profile;
- (id)__cloudNetworkProfiles;
- (id)__localDeviceModel;
- (id)__localDeviceVersionDescription;
- (unsigned)__isCloudKeychainEnabled;
- (void)__checkCloudKeychainSyncState;
- (void)__checkWaitingForKeychainPasswordList;
- (void)__handleCloudKVSChangedKeys:(id)keys;
- (void)__handleKeychainChangeEvent;
- (void)__resetCheckKeychainCounterForRecentlyJoinedNetworks;
- (void)__startMonitoringCloudKeychainSyncStateEvents;
- (void)__startMonitoringKeychainChangeEvents;
- (void)__stopMonitoringCloudKeychainSyncStateEvents;
- (void)__stopMonitoringKeychainChangeEvents;
- (void)__synchronizeWithLocalNetworks;
- (void)activate;
- (void)invalidate;
@end

@implementation CWFCloudSyncManager

- (CWFCloudSyncManager)init
{
  v25.receiver = self;
  v25.super_class = CWFCloudSyncManager;
  v2 = [(CWFCloudSyncManager *)&v25 init];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.cloud-sync.internal", v3);
  v5 = *(v2 + 2);
  *(v2 + 2) = v4;

  if (!*(v2 + 2))
  {
    goto LABEL_10;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.cloud-sync.target", v6);
  v8 = *(v2 + 11);
  *(v2 + 11) = v7;

  if (!*(v2 + 11))
  {
    goto LABEL_10;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = *(v2 + 9);
  *(v2 + 9) = v9;

  if (!*(v2 + 9))
  {
    goto LABEL_10;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = *(v2 + 8);
  *(v2 + 8) = v11;

  if (!*(v2 + 8))
  {
    goto LABEL_10;
  }

  v13 = [[CWFKeyValueStore alloc] initWithType:6 identifier:@"com.apple.wifi.syncable-networks"];
  v14 = *(v2 + 1);
  *(v2 + 1) = v13;

  if (!*(v2 + 1))
  {
    goto LABEL_10;
  }

  objc_initWeak(&location, v2);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1E0CD8DEC;
  v22[3] = &unk_1E86E8C38;
  objc_copyWeak(&v23, &location);
  [*(v2 + 1) setEventHandler:v22];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
  v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 2));
  v16 = *(v2 + 4);
  *(v2 + 4) = v15;

  v17 = *(v2 + 4);
  if (v17)
  {
    ++*(v2 + 5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0CD8FC8;
    handler[3] = &unk_1E86E6010;
    v18 = v2;
    v21 = v18;
    dispatch_source_set_event_handler(v17, handler);

    dispatch_source_set_timer(*(v2 + 4), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v2 + 4));
  }

  else
  {
LABEL_10:

    return 0;
  }

  return v18;
}

- (NSDictionary)cloudKVS
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1E0BC2DA0;
  v20 = sub_1E0BC620C;
  v21 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v3 = dispatch_block_create(0, &unk_1F5B89C30);
  internalQueue = self->_internalQueue;
  v5 = qos_class_self();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CD917C;
  v10[3] = &unk_1E86E8C60;
  v12 = &v16;
  v13 = v14;
  v10[4] = self;
  v11 = v3;
  v6 = v3;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, v10);
  dispatch_async(internalQueue, v7);

  dispatch_block_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v17[5];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (NSArray)cloudNetworks
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1E0BC2DA0;
  v20 = sub_1E0BC620C;
  v21 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v3 = dispatch_block_create(0, &unk_1F5B8AE40);
  internalQueue = self->_internalQueue;
  v5 = qos_class_self();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CD93B8;
  v10[3] = &unk_1E86E8C60;
  v12 = &v16;
  v13 = v14;
  v10[4] = self;
  v11 = v3;
  v6 = v3;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, v10);
  dispatch_async(internalQueue, v7);

  dispatch_block_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v17[5];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (void)activate
{
  internalQueue = self->_internalQueue;
  v4 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD94FC;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, block);
  dispatch_async(internalQueue, v5);
}

- (void)invalidate
{
  internalQueue = self->_internalQueue;
  v4 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD95EC;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, block);
  dispatch_async(internalQueue, v5);
}

- (id)__localDeviceModel
{
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"model", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:CFDataGetBytePtr(v7) encoding:4];
      v10 = [v8 initWithFormat:@"%@", v9];

      CFRelease(v7);
    }

    else
    {
      v10 = 0;
    }

    IOObjectRelease(v5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)__localDeviceVersionDescription
{
  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v3 = [v2 objectForKeyedSubscript:@"ProductBuildVersion"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F5B8FC80];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  lowercaseString = [v5 lowercaseString];

  v6 = [v2 objectForKeyedSubscript:@"ProductVersion"];
  v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F5B8FC80];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  lowercaseString2 = [v8 lowercaseString];

  v10 = [v2 objectForKeyedSubscript:@"ProductName"];
  v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F5B8FC80];
  v12 = [v11 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  lowercaseString3 = [v12 lowercaseString];

  __localDeviceModel = [(CWFCloudSyncManager *)self __localDeviceModel];
  v15 = [__localDeviceModel stringByReplacingOccurrencesOfString:@" " withString:&stru_1F5B8FC80];
  v16 = [v15 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  lowercaseString4 = [v16 lowercaseString];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@.%@", lowercaseString3, lowercaseString2, lowercaseString, lowercaseString4];

  return v18;
}

- (id)__cloudKeyForNetworkProfile:(id)profile
{
  v3 = MEMORY[0x1E696AEC0];
  networkName = [profile networkName];
  v5 = [v3 stringWithFormat:@"%@%@", @"network.", networkName];

  return v5;
}

- (BOOL)__updateCloudNetwork:(id)network error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  if (!networkCopy)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v23 = CWFGetOSLog();
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v29 = *MEMORY[0x1E696A798];
    v30 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v31 = v29;
    v32 = 22;
    goto LABEL_37;
  }

  if ([(CWFCloudSyncManager *)self cloudKeychainEnabled]!= 2)
  {
    v24 = CWFGetOSLog();
    if (v24)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

LABEL_35:
    _os_log_send_and_compose_impl();
LABEL_36:

    v36 = *MEMORY[0x1E696A798];
    v30 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v31 = v36;
    v32 = 45;
LABEL_37:
    v19 = CWFErrorWithDescription(v31, v32, v30);

    goto LABEL_14;
  }

  if (([networkCopy isCloudSyncable] & 1) == 0)
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (![(CWFCloudSyncManager *)self __calloutToCheckIfNetworkIsSyncable:networkCopy])
  {
    v27 = CWFGetOSLog();
    if (v27)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v6 = [networkCopy copy];
  __localDeviceVersionDescription = [(CWFCloudSyncManager *)self __localDeviceVersionDescription];
  [v6 setAddedByVersion:__localDeviceVersionDescription];

  v8 = [(CWFCloudSyncManager *)self __cloudKeyForNetworkProfile:v6];
  v9 = [(CWFKeyValueStore *)self->_cloudKVS objectForKey:v8];
  v10 = [[CWFNetworkProfile alloc] initWithCloudSyncExternalForm:v9];
  v11 = v10;
  if (v10)
  {
    cloudSyncExternalForm = [(CWFNetworkProfile *)v10 cloudSyncExternalForm];
    [v6 mergeWithCloudNetworkProfile:v11];
    cloudSyncExternalForm2 = [v6 cloudSyncExternalForm];
    v14 = cloudSyncExternalForm2;
    if (cloudSyncExternalForm != cloudSyncExternalForm2 && (!cloudSyncExternalForm || !cloudSyncExternalForm2 || ([cloudSyncExternalForm isEqual:cloudSyncExternalForm2] & 1) == 0))
    {
      v15 = [v9 mutableCopy];
      allKeys = [cloudSyncExternalForm allKeys];
      [v15 removeObjectsForKeys:allKeys];

      [v15 addEntriesFromDictionary:v14];
      [(CWFKeyValueStore *)self->_cloudKVS setObject:v15 forKey:v8];
      [(CWFKeyValueStore *)self->_cloudKVS synchronize];
    }
  }

  else
  {
    cloudKVS = self->_cloudKVS;
    cloudSyncExternalForm3 = [v6 cloudSyncExternalForm];
    [(CWFKeyValueStore *)cloudKVS setObject:cloudSyncExternalForm3 forKey:v8];

    [(CWFKeyValueStore *)self->_cloudKVS synchronize];
  }

  v19 = 0;
LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
  return v19 == 0;
}

- (BOOL)rememberCloudNetwork:(id)network error:(id *)error
{
  networkCopy = network;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1E0BC2DA0;
  v28 = sub_1E0BC620C;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B898F0);
  internalQueue = self->_internalQueue;
  v9 = qos_class_self();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0CDA10C;
  v16[3] = &unk_1E86E8C88;
  v19 = &v30;
  v16[4] = self;
  v10 = networkCopy;
  v17 = v10;
  v20 = &v24;
  v21 = v22;
  v11 = v7;
  v18 = v11;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, v16);
  dispatch_async(internalQueue, v12);

  dispatch_block_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v13 = v25[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v31 + 24);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v14;
}

- (BOOL)forgetCloudNetwork:(id)network error:(id *)error
{
  networkCopy = network;
  v7 = [networkCopy copy];
  date = [MEMORY[0x1E695DF00] date];
  [v7 setRemovedAt:date];

  __localDeviceVersionDescription = [(CWFCloudSyncManager *)self __localDeviceVersionDescription];
  [v7 setRemovedByVersion:__localDeviceVersionDescription];

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1E0BC2DA0;
  v31 = sub_1E0BC620C;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v10 = dispatch_block_create(0, &unk_1F5B8AE60);
  internalQueue = self->_internalQueue;
  v12 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CDA414;
  block[3] = &unk_1E86E8C88;
  v22 = &v33;
  block[4] = self;
  v13 = v7;
  v20 = v13;
  v23 = &v27;
  v24 = v25;
  v14 = v10;
  v21 = v14;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12, 0, block);
  dispatch_async(internalQueue, v15);

  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v16 = v28[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v34 + 24);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v17;
}

- (unsigned)__isCloudKeychainEnabled
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E697AA88]);
  v3 = v2;
  if (!v2)
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446722;
      v19 = "[CWFCloudSyncManager __isCloudKeychainEnabled]";
      v20 = 2082;
      v21 = "CWFCloudSyncManager.m";
      v22 = 1024;
      v23 = 392;
      _os_log_send_and_compose_impl();
    }

    v4 = 0;
    v13 = 0;
    v7 = 0;
    goto LABEL_19;
  }

  [v2 setContext:*MEMORY[0x1E697AAD0]];
  v4 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v3];
  v17 = 0;
  v5 = [v4 fetchUserControllableViewsSyncingEnabled:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    v13 = v6;
    v14 = CWFGetOSLog();
    if (v14)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "[CWFCloudSyncManager __isCloudKeychainEnabled]";
      v20 = 2082;
      v21 = "CWFCloudSyncManager.m";
      v22 = 1024;
      v23 = 400;
      v24 = 2112;
      v25 = v13;
      _os_log_send_and_compose_impl();
    }

LABEL_19:

    v8 = v13;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)__checkCloudKeychainSyncState
{
  cloudKeychainEnabled = [(CWFCloudSyncManager *)self cloudKeychainEnabled];
  __isCloudKeychainEnabled = [(CWFCloudSyncManager *)self __isCloudKeychainEnabled];
  if (__isCloudKeychainEnabled)
  {
    v5 = __isCloudKeychainEnabled;
    if (__isCloudKeychainEnabled != cloudKeychainEnabled)
    {
      [(CWFCloudSyncManager *)self setCloudKeychainEnabled:__isCloudKeychainEnabled];
      v6 = CWFGetOSLog();
      v7 = v6;
      if (v5 == 2)
      {
        if (v6)
        {
          v8 = CWFGetOSLog();
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v10 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          _os_log_send_and_compose_impl();
        }

        [(CWFCloudSyncManager *)self __startMonitoringKeychainChangeEvents];
        [(CWFCloudSyncManager *)self __synchronizeWithLocalNetworks];
      }

      else
      {
        if (v6)
        {
          v9 = CWFGetOSLog();
        }

        else
        {
          v9 = MEMORY[0x1E69E9C10];
          v11 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          _os_log_send_and_compose_impl();
        }

        [(CWFCloudSyncManager *)self __stopMonitoringKeychainChangeEvents];
      }
    }
  }
}

- (void)__startMonitoringCloudKeychainSyncStateEvents
{
  v3 = *MEMORY[0x1E697AAE0];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0CDA9D0;
  handler[3] = &unk_1E86E60B0;
  handler[4] = self;
  notify_register_dispatch(v3, &self->_cloudKeychainSyncStateNotifyToken, internalQueue, handler);
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  [(CWFCloudSyncManager *)self __checkCloudKeychainSyncState];
}

- (void)__stopMonitoringCloudKeychainSyncStateEvents
{
  cloudKeychainSyncStateNotifyToken = self->_cloudKeychainSyncStateNotifyToken;
  if (cloudKeychainSyncStateNotifyToken)
  {
    notify_cancel(cloudKeychainSyncStateNotifyToken);
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }
}

- (id)__cloudNetworkProfiles
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  dictionaryRepresentation = [(CWFKeyValueStore *)self->_cloudKVS dictionaryRepresentation];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [dictionaryRepresentation allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 hasPrefix:@"network."])
        {
          v11 = [dictionaryRepresentation objectForKeyedSubscript:v10];
          v12 = [[CWFNetworkProfile alloc] initWithCloudSyncExternalForm:v11];
          if (v12)
          {
            [v3 addObject:v12];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v3 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)__calloutToCheckForKeychainPasswordWithNetworkProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1E0BC2DA0;
  v28 = sub_1E0BC620C;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8AE80);
  targetQueue = self->_targetQueue;
  v9 = qos_class_self();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0CDAEF8;
  v16[3] = &unk_1E86E7A60;
  v16[4] = self;
  v10 = profileCopy;
  v17 = v10;
  v19 = &v24;
  v20 = &v30;
  v21 = v22;
  v11 = v7;
  v18 = v11;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, v16);
  dispatch_async(targetQueue, v12);

  dispatch_block_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v13 = v25[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v31 + 24);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v14;
}

- (void)__checkWaitingForKeychainPasswordList
{
  v66[2] = *MEMORY[0x1E69E9840];
  if (clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_checkKeychainTimestamp > 0x2540BE3FFLL)
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v64) = 0;
      LODWORD(v58) = 2;
      v57 = &v64;
      _os_log_send_and_compose_impl();
    }

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = sub_1E0CDB8BC;
    v63[3] = &unk_1E86E72C0;
    v63[4] = self;
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 comparator:v63];
    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B892F0];
    allValues = [(NSMutableDictionary *)self->_waitingForKeychainNetworkMap allValues];
    v59 = v7;
    v60 = v6;
    v66[0] = v6;
    v66[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v10 = [allValues sortedArrayUsingDescriptors:v9];

    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if ([v10 count] > 4)
      {
        v14 = 5;
      }

      else
      {
        v14 = [v10 count];
      }

      v64 = 134217984;
      v65 = v14;
      LODWORD(v58) = 12;
      v57 = &v64;
      _os_log_send_and_compose_impl();
    }

    v15 = 0;
    v16 = MEMORY[0x1E69E9C10];
    while (1)
    {
      v17 = [v10 count] > 4 ? 5 : objc_msgSend(v10, "count");
      if (v15 >= v17)
      {
        break;
      }

      v18 = [v10 objectAtIndexedSubscript:v15];
      waitingForKeychainCounterMap = self->_waitingForKeychainCounterMap;
      identifier = [v18 identifier];
      v21 = [(NSMutableDictionary *)waitingForKeychainCounterMap objectForKeyedSubscript:identifier];
      unsignedIntegerValue = [v21 unsignedIntegerValue];
      keychainChangeCounter = self->_keychainChangeCounter;

      v24 = CWFGetOSLog();
      v25 = v24;
      if (unsignedIntegerValue == keychainChangeCounter)
      {
        if (v24)
        {
          v45 = CWFGetOSLog();
        }

        else
        {
          v45 = MEMORY[0x1E69E9C10];
          v46 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v64) = 0;
          LODWORD(v58) = 2;
          v57 = &v64;
          _os_log_send_and_compose_impl();
        }

        self->_waitingForNextKeychainChangeEvent = 1;
        break;
      }

      if (v24)
      {
        v26 = CWFGetOSLog();
      }

      else
      {
        v27 = v16;
        v26 = v16;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [v18 identifier];
        v64 = 138412290;
        v65 = identifier2;
        LODWORD(v58) = 12;
        v57 = &v64;
        _os_log_send_and_compose_impl();
      }

      v29 = [(CWFCloudSyncManager *)self __calloutToCheckForKeychainPasswordWithNetworkProfile:v18 error:0];
      v30 = CWFGetOSLog();
      v31 = v30;
      if (v29)
      {
        if (v30)
        {
          v32 = CWFGetOSLog();
        }

        else
        {
          v34 = v16;
          v32 = v16;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          identifier3 = [v18 identifier];
          v64 = 138412290;
          v65 = identifier3;
          LODWORD(v58) = 12;
          v57 = &v64;
          _os_log_send_and_compose_impl();
        }

        v36 = self->_waitingForKeychainCounterMap;
        identifier4 = [v18 identifier];
        [(NSMutableDictionary *)v36 setObject:0 forKeyedSubscript:identifier4];

        targetQueue = self->_targetQueue;
        LODWORD(identifier4) = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0CDBA10;
        block[3] = &unk_1E86E6420;
        block[4] = self;
        v62 = v18;
        v39 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, identifier4, 0, block);
        dispatch_async(targetQueue, v39);
      }

      else
      {
        if (v30)
        {
          v33 = CWFGetOSLog();
        }

        else
        {
          v40 = v16;
          v33 = v16;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          identifier5 = [v18 identifier];
          v64 = 138412290;
          v65 = identifier5;
          LODWORD(v58) = 12;
          v57 = &v64;
          _os_log_send_and_compose_impl();
        }

        v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_keychainChangeCounter];
        v43 = self->_waitingForKeychainCounterMap;
        identifier6 = [v18 identifier];
        [(NSMutableDictionary *)v43 setObject:v42 forKeyedSubscript:identifier6];
      }

      self->_checkKeychainTimestamp = clock_gettime_nsec_np(_CLOCK_MONOTONIC);

      ++v15;
    }

    if ([(NSMutableDictionary *)self->_waitingForKeychainCounterMap count:v57]&& !self->_waitingForNextKeychainChangeEvent)
    {
      v49 = CWFGetOSLog();
      if (v49)
      {
        v50 = CWFGetOSLog();
      }

      else
      {
        v50 = MEMORY[0x1E69E9C10];
        v54 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v64 = 67109120;
        LODWORD(v65) = 10;
        _os_log_send_and_compose_impl();
      }

      checkKeychainTimer = self->_checkKeychainTimer;
      v53 = dispatch_time(0, 10000000000);
      v52 = checkKeychainTimer;
    }

    else
    {
      v47 = CWFGetOSLog();
      if (v47)
      {
        v48 = CWFGetOSLog();
      }

      else
      {
        v48 = MEMORY[0x1E69E9C10];
        v51 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v64) = 0;
        _os_log_send_and_compose_impl();
      }

      v52 = self->_checkKeychainTimer;
      v53 = -1;
    }

    dispatch_source_set_timer(v52, v53, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v56 = *MEMORY[0x1E69E9840];
}

- (void)__resetCheckKeychainCounterForRecentlyJoinedNetworks
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 0;
    LODWORD(v17) = 2;
    v16 = &v18;
    _os_log_send_and_compose_impl();
  }

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AEA0];
  allValues = [(NSMutableDictionary *)self->_waitingForKeychainNetworkMap allValues];
  v19[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v9 = [allValues sortedArrayUsingDescriptors:v8];

  for (i = 0; ; ++i)
  {
    v11 = [v9 count] > 4 ? 5 : objc_msgSend(v9, "count");
    if (i >= v11)
    {
      break;
    }

    waitingForKeychainCounterMap = self->_waitingForKeychainCounterMap;
    v13 = [v9 objectAtIndexedSubscript:i];
    identifier = [v13 identifier];
    [(NSMutableDictionary *)waitingForKeychainCounterMap setObject:0 forKeyedSubscript:identifier];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__handleKeychainChangeEvent
{
  self->_waitingForNextKeychainChangeEvent = 0;
  ++self->_keychainChangeCounter;
  [(CWFCloudSyncManager *)self __resetCheckKeychainCounterForRecentlyJoinedNetworks];

  [(CWFCloudSyncManager *)self __checkWaitingForKeychainPasswordList];
}

- (void)__startMonitoringKeychainChangeEvents
{
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0CDBE60;
  handler[3] = &unk_1E86E60B0;
  handler[4] = self;
  notify_register_dispatch("com.apple.security.keychainchanged", &self->_keychainChangedNotifyToken, internalQueue, handler);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

- (void)__stopMonitoringKeychainChangeEvents
{
  keychainChangedNotifyToken = self->_keychainChangedNotifyToken;
  if (keychainChangedNotifyToken)
  {
    notify_cancel(keychainChangedNotifyToken);
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }
}

- (BOOL)__calloutToCheckIfNetworkIsSyncable:(id)syncable
{
  syncableCopy = syncable;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v5 = dispatch_block_create(0, &unk_1F5B8AEC0);
  targetQueue = self->_targetQueue;
  v7 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CDC15C;
  block[3] = &unk_1E86E7A10;
  block[4] = self;
  v13 = syncableCopy;
  v15 = &v19;
  v16 = v17;
  v14 = v5;
  v8 = v5;
  v9 = syncableCopy;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, block);
  dispatch_async(targetQueue, v10);

  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(targetQueue) = *(v20 + 24);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
  return targetQueue;
}

- (id)__calloutToFetchAllLocalNetworksAndReturnError:(id *)error
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1E0BC2DA0;
  v30 = sub_1E0BC620C;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2DA0;
  v24 = sub_1E0BC620C;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v5 = dispatch_block_create(0, &unk_1F5B8AEE0);
  targetQueue = self->_targetQueue;
  v7 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CDC504;
  block[3] = &unk_1E86E7B00;
  block[4] = self;
  v15 = &v20;
  v16 = &v26;
  v17 = v18;
  v8 = v5;
  v14 = v8;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, block);
  dispatch_async(targetQueue, v9);

  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v10 = v21[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v27[5];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v11;
}

- (void)__synchronizeWithLocalNetworks
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v61) = 0;
    LODWORD(v51) = 2;
    v50 = &v61;
    _os_log_send_and_compose_impl();
  }

  v6 = MEMORY[0x1E695DFA8];
  dictionaryRepresentation = [(CWFKeyValueStore *)self->_cloudKVS dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];
  v54 = [v6 setWithArray:allKeys];

  [(CWFCloudSyncManager *)self __calloutToFetchAllLocalNetworksAndReturnError:0];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v56 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v56)
  {
    v55 = *v58;
    selfCopy = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v58 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v57 + 1) + 8 * v9);
        v11 = CWFGetOSLog();
        if (v11)
        {
          v12 = CWFGetOSLog();
        }

        else
        {
          v12 = MEMORY[0x1E69E9C10];
          v13 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [v10 identifier];
          v61 = 138412290;
          v62 = identifier;
          LODWORD(v51) = 12;
          v50 = &v61;
          _os_log_send_and_compose_impl();
        }

        if ([v10 isCloudSyncable])
        {
          v15 = [(CWFCloudSyncManager *)self __cloudKeyForNetworkProfile:v10];
          v16 = [(CWFKeyValueStore *)self->_cloudKVS objectForKey:v15];
          v17 = [[CWFNetworkProfile alloc] initWithCloudSyncExternalForm:v16];
          v18 = CWFGetOSLog();
          v19 = v18;
          if (v17)
          {
            if (v18)
            {
              v20 = CWFGetOSLog();
            }

            else
            {
              v20 = MEMORY[0x1E69E9C10];
              v22 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v10 identifier];
              v61 = 138412290;
              v62 = identifier2;
              LODWORD(v51) = 12;
              v50 = &v61;
              _os_log_send_and_compose_impl();
            }

            cloudSyncExternalForm = [(CWFNetworkProfile *)v17 cloudSyncExternalForm];
            [v10 mergeWithCloudNetworkProfile:v17];
            cloudSyncExternalForm2 = [v10 cloudSyncExternalForm];
            v26 = cloudSyncExternalForm2;
            if (cloudSyncExternalForm == cloudSyncExternalForm2 || cloudSyncExternalForm && cloudSyncExternalForm2 && ([cloudSyncExternalForm isEqual:cloudSyncExternalForm2] & 1) != 0)
            {
              v27 = CWFGetOSLog();
              if (v27)
              {
                v28 = CWFGetOSLog();
              }

              else
              {
                v28 = MEMORY[0x1E69E9C10];
                v37 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                identifier3 = [v10 identifier];
                v61 = 138412290;
                v62 = identifier3;
                LODWORD(v51) = 12;
                v50 = &v61;
                _os_log_send_and_compose_impl();
              }

              [v54 removeObject:v15];
            }

            else
            {
              v29 = [v16 mutableCopy];
              allKeys2 = [cloudSyncExternalForm allKeys];
              [v29 removeObjectsForKeys:allKeys2];

              [v29 addEntriesFromDictionary:v26];
              v31 = CWFGetOSLog();
              if (v31)
              {
                v32 = CWFGetOSLog();
              }

              else
              {
                v32 = MEMORY[0x1E69E9C10];
                v39 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                identifier4 = [v10 identifier];
                v61 = 138412290;
                v62 = identifier4;
                LODWORD(v51) = 12;
                v50 = &v61;
                _os_log_send_and_compose_impl();
              }

              v41 = CWFGetOSLog();
              if (v41)
              {
                v42 = CWFGetOSLog();
              }

              else
              {
                v42 = MEMORY[0x1E69E9C10];
                v43 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v61 = 138412546;
                v62 = v16;
                v63 = 2112;
                v64 = v29;
                LODWORD(v51) = 22;
                v50 = &v61;
                _os_log_send_and_compose_impl();
              }

              self = selfCopy;
              [(CWFKeyValueStore *)selfCopy->_cloudKVS setObject:v29 forKey:v15];
            }
          }

          else
          {
            if (v18)
            {
              v21 = CWFGetOSLog();
            }

            else
            {
              v21 = MEMORY[0x1E69E9C10];
              v33 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              identifier5 = [v10 identifier];
              v61 = 138412290;
              v62 = identifier5;
              LODWORD(v51) = 12;
              v50 = &v61;
              _os_log_send_and_compose_impl();
            }

            cloudKVS = self->_cloudKVS;
            cloudSyncExternalForm3 = [v10 cloudSyncExternalForm];
            [(CWFKeyValueStore *)cloudKVS setObject:cloudSyncExternalForm3 forKey:v15];

            [v54 removeObject:v15];
          }
        }

        else
        {
          v44 = CWFGetOSLog();
          if (v44)
          {
            v15 = CWFGetOSLog();
          }

          else
          {
            v15 = MEMORY[0x1E69E9C10];
            v45 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            identifier6 = [v10 identifier];
            v61 = 138412290;
            v62 = identifier6;
            LODWORD(v51) = 12;
            v50 = &v61;
            _os_log_send_and_compose_impl();
          }
        }

        ++v9;
      }

      while (v56 != v9);
      v47 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      v56 = v47;
    }

    while (v47);
  }

  [(CWFKeyValueStore *)self->_cloudKVS synchronize:v50];
  allObjects = [v54 allObjects];
  [(CWFCloudSyncManager *)self __handleCloudKVSChangedKeys:allObjects];

  v49 = *MEMORY[0x1E69E9840];
}

- (void)__handleCloudKVSChangedKeys:(id)keys
{
  v62 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if ([(CWFCloudSyncManager *)self cloudKeychainEnabled]== 2)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v5 = keysCopy;
    v6 = [v5 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v6)
    {
      v7 = v6;
      v46 = keysCopy;
      v47 = 0;
      v8 = *v52;
      v9 = @"network.";
      v48 = v5;
      do
      {
        v10 = 0;
        do
        {
          if (*v52 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v51 + 1) + 8 * v10);
          if ([v11 hasPrefix:{v9, v44, v45}])
          {
            v12 = [(CWFKeyValueStore *)self->_cloudKVS objectForKey:v11];
            if ([v12 isCloudSyncableExternalForm])
            {
              v13 = [[CWFNetworkProfile alloc] initWithCloudSyncExternalForm:v12];
              wasMoreRecentlyAdded = [(CWFNetworkProfile *)v13 wasMoreRecentlyAdded];
              v15 = CWFGetOSLog();
              v16 = v15;
              if (wasMoreRecentlyAdded)
              {
                if (v15)
                {
                  v17 = CWFGetOSLog();
                }

                else
                {
                  v17 = MEMORY[0x1E69E9C10];
                  v19 = MEMORY[0x1E69E9C10];
                }

                v20 = v9;

                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  identifier = [(CWFNetworkProfile *)v13 identifier];
                  v56 = 138412290;
                  v57 = identifier;
                  LODWORD(v45) = 12;
                  v44 = &v56;
                  _os_log_send_and_compose_impl();
                }

                allKeys = [(NSMutableDictionary *)self->_waitingForKeychainCounterMap allKeys];
                identifier2 = [(CWFNetworkProfile *)v13 identifier];
                v24 = [allKeys containsObject:identifier2];

                if ((v24 & 1) == 0)
                {
                  waitingForKeychainCounterMap = self->_waitingForKeychainCounterMap;
                  identifier3 = [(CWFNetworkProfile *)v13 identifier];
                  [(NSMutableDictionary *)waitingForKeychainCounterMap setObject:&unk_1F5BBCB98 forKeyedSubscript:identifier3];

                  v47 = 1;
                }

                waitingForKeychainNetworkMap = self->_waitingForKeychainNetworkMap;
                v28 = [(CWFNetworkProfile *)v13 identifier:v44];
                [(NSMutableDictionary *)waitingForKeychainNetworkMap setObject:v13 forKeyedSubscript:v28];

                v9 = v20;
                v5 = v48;
              }

              else
              {
                if (v15)
                {
                  v18 = CWFGetOSLog();
                }

                else
                {
                  v18 = MEMORY[0x1E69E9C10];
                  v29 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  identifier4 = [(CWFNetworkProfile *)v13 identifier];
                  v56 = 138412290;
                  v57 = identifier4;
                  LODWORD(v45) = 12;
                  v44 = &v56;
                  _os_log_send_and_compose_impl();
                }

                v31 = self->_waitingForKeychainCounterMap;
                identifier5 = [(CWFNetworkProfile *)v13 identifier];
                [(NSMutableDictionary *)v31 setObject:0 forKeyedSubscript:identifier5];

                v33 = self->_waitingForKeychainNetworkMap;
                identifier6 = [(CWFNetworkProfile *)v13 identifier];
                [(NSMutableDictionary *)v33 setObject:0 forKeyedSubscript:identifier6];

                targetQueue = self->_targetQueue;
                LODWORD(identifier6) = qos_class_self();
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = sub_1E0CDD478;
                block[3] = &unk_1E86E6420;
                block[4] = self;
                v13 = v13;
                v50 = v13;
                v36 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, identifier6, 0, block);
                dispatch_async(targetQueue, v36);
              }
            }

            else
            {
              v37 = CWFGetOSLog();
              if (v37)
              {
                v13 = CWFGetOSLog();
              }

              else
              {
                v13 = MEMORY[0x1E69E9C10];
                v38 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
              {
                v56 = 138412290;
                v57 = v11;
                LODWORD(v45) = 12;
                v44 = &v56;
                _os_log_send_and_compose_impl();
              }
            }
          }

          ++v10;
        }

        while (v7 != v10);
        v39 = [v5 countByEnumeratingWithState:&v51 objects:v55 count:16];
        v7 = v39;
      }

      while (v39);

      keysCopy = v46;
      if (v47)
      {
        [(CWFCloudSyncManager *)self __resetCheckKeychainCounterForRecentlyJoinedNetworks];
        [(CWFCloudSyncManager *)self __checkWaitingForKeychainPasswordList];
      }
    }

    else
    {
    }
  }

  else
  {
    v41 = CWFGetOSLog();
    if (v41)
    {
      v42 = CWFGetOSLog();
    }

    else
    {
      v42 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v56 = 136446722;
      v57 = "[CWFCloudSyncManager __handleCloudKVSChangedKeys:]";
      v58 = 2082;
      v59 = "CWFCloudSyncManager.m";
      v60 = 1024;
      v61 = 792;
      _os_log_send_and_compose_impl();
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

@end