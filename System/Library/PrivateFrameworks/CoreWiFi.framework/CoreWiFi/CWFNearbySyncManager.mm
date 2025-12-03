@interface CWFNearbySyncManager
- (BOOL)__calloutToCheckIfNetworkIsSyncable:(id)syncable;
- (BOOL)__deviceSupportsNearbyBBHConfirmRequests:(id)requests;
- (BOOL)__deviceSupportsNearbySyncRequests:(id)requests;
- (CWFNearbySyncManager)init;
- (CWFNearbySyncNetwork)nearbySyncNetwork;
- (id)__failedNearbyNetworkSyncRequestTimestampForDevice:(id)device network:(id)network;
- (id)__nearbyNetworkSyncRequestTimestampForDevice:(id)device network:(id)network;
- (id)__rapportClientTargetingDevice:(id)device;
- (unsigned)__isCloudKeychainEnabled;
- (void)__checkCloudKeychainSyncState;
- (void)__handleAutoJoinAssistPayload:(id)payload options:(id)options;
- (void)__handleBrokenBackhaulRestoreEvent:(id)event options:(id)options;
- (void)__purgeBBHCache;
- (void)__respondToAutoJoinAssistRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)__respondToConfirmBrokenBackhaulRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)__respondToNeedsConnectivityRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)__sendAutoJoinAssistRequestToAllNearbyDevices;
- (void)__sendAutoJoinAssistRequestToNearbyDevice:(id)device retryCount:(unint64_t)count;
- (void)__sendBrokenBackhaulRestoreEventToAllNearbyDevices;
- (void)__sendBrokenBackhaulRestoreEventToNearbyDevice:(id)device;
- (void)__sendConfirmBrokenBackhaulRequestToAllNearbyDevicesWithTimeout:(unint64_t)timeout count:(unint64_t)count network:(id)network minimumCacheTimestamp:(unint64_t)timestamp completion:(id)completion;
- (void)__sendConfirmBrokenBackhaulRequestToNearbyDevice:(id)device timeout:(unint64_t)timeout count:(unint64_t)count network:(id)network minimumCacheTimestamp:(unint64_t)timestamp completion:(id)completion;
- (void)__sendNeedsConnectivityRequestToAllNearbyDevices;
- (void)__sendNeedsConnectivityRequestToNearbyDevice:(id)device retryCount:(unint64_t)count;
- (void)__setupRapportDiscoveryClient;
- (void)__startMonitoringCloudKeychainSyncStateEvents;
- (void)__stopMonitoringCloudKeychainSyncStateEvents;
- (void)__updateFailedNearbyNetworkSyncRequestTimestampForDevice:(id)device network:(id)network;
- (void)__updateNearbyNetworkSyncRequestTimestampForDevice:(id)device network:(id)network;
- (void)activate;
- (void)invalidate;
- (void)setNearbySyncNetwork:(id)network;
@end

@implementation CWFNearbySyncManager

- (CWFNearbySyncNetwork)nearbySyncNetwork
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFNearbySyncNetwork *)selfCopy->_nearbySyncNetwork copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (CWFNearbySyncManager)init
{
  v23.receiver = self;
  v23.super_class = CWFNearbySyncManager;
  v2 = [(CWFNearbySyncManager *)&v23 init];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.nearby-sync.internal", v3);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v4;

  if (!v2->_internalQueue)
  {
    goto LABEL_12;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.nearby-sync.target", v6);
  targetQueue = v2->_targetQueue;
  v2->_targetQueue = v7;

  if (!v2->_targetQueue)
  {
    goto LABEL_12;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedBBHStateMap = v2->_cachedBBHStateMap;
  v2->_cachedBBHStateMap = v9;

  if (!v2->_cachedBBHStateMap)
  {
    goto LABEL_12;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedBBHTimestampMap = v2->_cachedBBHTimestampMap;
  v2->_cachedBBHTimestampMap = v11;

  if (!v2->_cachedBBHTimestampMap)
  {
    goto LABEL_12;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  nearbySyncRequestHistory = v2->_nearbySyncRequestHistory;
  v2->_nearbySyncRequestHistory = v13;

  if (!v2->_nearbySyncRequestHistory)
  {
    goto LABEL_12;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  failedNearbySyncRequestHistory = v2->_failedNearbySyncRequestHistory;
  v2->_failedNearbySyncRequestHistory = v15;

  if (!v2->_failedNearbySyncRequestHistory)
  {
    goto LABEL_12;
  }

  v17 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  rapportRequestQueue = v2->_rapportRequestQueue;
  v2->_rapportRequestQueue = v17;

  v19 = v2->_rapportRequestQueue;
  if (!v19)
  {
    goto LABEL_12;
  }

  [(NSOperationQueue *)v19 setName:@"nearbysync-serial"];
  [(NSOperationQueue *)v2->_rapportRequestQueue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)v2->_rapportRequestQueue setQualityOfService:-1];
  v20 = objc_alloc_init(sub_1E0CC9E44());
  rapportDiscoveryClient = v2->_rapportDiscoveryClient;
  v2->_rapportDiscoveryClient = v20;

  if (v2->_rapportDiscoveryClient)
  {
    [(CWFNearbySyncManager *)v2 __setupRapportDiscoveryClient];
  }

  else
  {
LABEL_12:

    return 0;
  }

  return v2;
}

- (void)activate
{
  internalQueue = self->_internalQueue;
  v4 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CC9FEC;
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
  block[2] = sub_1E0CCA2D0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, block);
  dispatch_async(internalQueue, v5);
}

- (BOOL)__calloutToCheckIfNetworkIsSyncable:(id)syncable
{
  v37 = *MEMORY[0x1E69E9840];
  syncableCopy = syncable;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v5 = dispatch_block_create(0, &unk_1F5B89BD0);
  targetQueue = self->_targetQueue;
  v7 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CCA5FC;
  block[3] = &unk_1E86E7A10;
  block[4] = self;
  v8 = syncableCopy;
  v23 = v8;
  v25 = &v29;
  v26 = v27;
  v9 = v5;
  v24 = v9;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, block);
  dispatch_async(targetQueue, v10);

  dispatch_block_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (v30[3])
  {
    v11 = 1;
  }

  else
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      knownNetworkProfile = [v8 knownNetworkProfile];
      networkName = [knownNetworkProfile networkName];
      redactedForWiFi = [networkName redactedForWiFi];
      v18 = redactedForWiFi;
      if (*(v30 + 24))
      {
        v19 = "";
      }

      else
      {
        v19 = "NOT ";
      }

      v33 = 138543618;
      v34 = redactedForWiFi;
      v35 = 2080;
      v36 = v19;
      _os_log_send_and_compose_impl();
    }

    v11 = *(v30 + 24);
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  v20 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

- (void)__setupRapportDiscoveryClient
{
  [(RPCompanionLinkClient *)self->_rapportDiscoveryClient setDispatchQueue:self->_internalQueue];
  [(RPCompanionLinkClient *)self->_rapportDiscoveryClient setControlFlags:2];
  [(RPCompanionLinkClient *)self->_rapportDiscoveryClient setServiceType:@"com.apple.corewifi.rapport"];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0BD6420;
  v11[3] = &unk_1E86E7500;
  objc_copyWeak(&v12, &location);
  [(RPCompanionLinkClient *)self->_rapportDiscoveryClient setDeviceFoundHandler:v11];
  [(RPCompanionLinkClient *)self->_rapportDiscoveryClient setDeviceLostHandler:&unk_1F5B8AE00];
  [(RPCompanionLinkClient *)self->_rapportDiscoveryClient setInvalidationHandler:&unk_1F5B8AE20];
  rapportDiscoveryClient = self->_rapportDiscoveryClient;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CCABBC;
  v10[3] = &unk_1E86E87D8;
  v10[4] = self;
  [(RPCompanionLinkClient *)rapportDiscoveryClient registerRequestID:@"com.apple.corewifi.auto-join-assist" options:0 handler:v10];
  v4 = self->_rapportDiscoveryClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0CCAD64;
  v9[3] = &unk_1E86E87D8;
  v9[4] = self;
  [(RPCompanionLinkClient *)v4 registerRequestID:@"com.apple.corewifi.needs-connectivity" options:0 handler:v9];
  if (_os_feature_enabled_impl())
  {
    v5 = self->_rapportDiscoveryClient;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0CCAF0C;
    v8[3] = &unk_1E86E87D8;
    v8[4] = self;
    [(RPCompanionLinkClient *)v5 registerRequestID:@"com.apple.corewifi.bbh-confirm" options:0 handler:v8];
    v6 = self->_rapportDiscoveryClient;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CCB0B4;
    v7[3] = &unk_1E86E8800;
    v7[4] = self;
    [(RPCompanionLinkClient *)v6 registerEventID:@"com.apple.corewifi.bbh-restore" options:0 handler:v7];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)__rapportClientTargetingDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_alloc_init(sub_1E0CC9E44());
  [v5 setControlFlags:258];
  [v5 setDestinationDevice:deviceCopy];

  [v5 setDispatchQueue:self->_internalQueue];

  return v5;
}

- (void)__handleAutoJoinAssistPayload:(id)payload options:(id)options
{
  v16 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  optionsCopy = options;
  *v11 = 0;
  os_eligibility_get_domain_answer();
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v11 = 136446722;
    *&v11[4] = "[CWFNearbySyncManager __handleAutoJoinAssistPayload:options:]";
    v12 = 2082;
    v13 = "CWFNearbySyncManager.m";
    v14 = 1024;
    v15 = 315;
    _os_log_send_and_compose_impl();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)__deviceSupportsNearbySyncRequests:(id)requests
{
  model = [requests model];
  sub_1E0CCBDAC(model);
  v5 = v4;

  if ((v5 - 6) < 2 || v5 == 4)
  {
    LOBYTE(v7) = 0;
  }

  else if (v5 != 11 || (v7 = _os_feature_enabled_impl()) != 0)
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)__deviceSupportsNearbyBBHConfirmRequests:(id)requests
{
  requestsCopy = requests;
  if ([requestsCopy hotspotInfo])
  {
    v4 = 1;
  }

  else
  {
    model = [requestsCopy model];
    sub_1E0CCBDAC(model);
    v7 = v6;

    v8 = v7 == 100;
    if (v7 == 7)
    {
      v8 = 1;
    }

    v4 = v7 == 4 || v8;
  }

  return v4;
}

- (void)__sendBrokenBackhaulRestoreEventToNearbyDevice:(id)device
{
  v42 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  nearbySyncNetwork = [(CWFNearbySyncManager *)self nearbySyncNetwork];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if (![(CWFNearbySyncManager *)self __deviceSupportsNearbyBBHConfirmRequests:deviceCopy])
    {
      v20 = CWFGetOSLog();
      if (v20)
      {
        v18 = CWFGetOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v25 = [deviceCopy description];
        [v25 redactedForWiFi];
        *&location[4] = *location = 138543362;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_17;
    }

    if ([(CWFNearbySyncManager *)self activated])
    {
      if ([(CWFNearbySyncManager *)self cloudKeychainEnabled]== 2)
      {
        if (nearbySyncNetwork)
        {
          isNearbyBrokenBackhaulStateSyncable = [nearbySyncNetwork isNearbyBrokenBackhaulStateSyncable];
          v7 = CWFGetOSLog();
          v8 = v7;
          if (isNearbyBrokenBackhaulStateSyncable)
          {
            if (v7)
            {
              v9 = CWFGetOSLog();
            }

            else
            {
              v9 = MEMORY[0x1E69E9C10];
              v10 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v11 = [deviceCopy description];
              redactedForWiFi = [v11 redactedForWiFi];
              *location = 138543618;
              *&location[4] = nearbySyncNetwork;
              v38 = 2114;
              v39 = redactedForWiFi;
              LODWORD(v31) = 22;
              v30 = location;
              _os_log_send_and_compose_impl();
            }

            v13 = [(CWFNearbySyncManager *)self __rapportClientTargetingDevice:deviceCopy];
            v14 = objc_alloc_init(CWFAsyncBlockOperation);
            HIDWORD(v16) = qos_class_self() - 9;
            LODWORD(v16) = HIDWORD(v16);
            v15 = v16 >> 2;
            if (v15 > 6)
            {
              v17 = 0;
            }

            else
            {
              v17 = qword_1E0D81BD0[v15];
            }

            [(CWFAsyncBlockOperation *)v14 setQualityOfService:v17, v30, v31];
            [(CWFAsyncBlockOperation *)v14 incrementCompletionCounter];
            objc_initWeak(location, v14);
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = sub_1E0CCC574;
            v32[3] = &unk_1E86E8850;
            objc_copyWeak(&v36, location);
            v18 = v13;
            v33 = v18;
            v34 = deviceCopy;
            v35 = nearbySyncNetwork;
            [(NSBlockOperation *)v14 addExecutionBlock:v32];
            [(NSOperationQueue *)self->_rapportRequestQueue addOperation:v14];

            objc_destroyWeak(&v36);
            objc_destroyWeak(location);

            goto LABEL_17;
          }

          if (v7)
          {
            v18 = CWFGetOSLog();
          }

          else
          {
            v18 = MEMORY[0x1E69E9C10];
            v29 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
LABEL_17:

            goto LABEL_18;
          }

          *location = 136446722;
          *&location[4] = "[CWFNearbySyncManager __sendBrokenBackhaulRestoreEventToNearbyDevice:]";
          v38 = 2082;
          v39 = "CWFNearbySyncManager.m";
          v40 = 1024;
          v41 = 393;
        }

        else
        {
          v23 = CWFGetOSLog();
          if (v23)
          {
            v18 = CWFGetOSLog();
          }

          else
          {
            v18 = MEMORY[0x1E69E9C10];
            v28 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          *location = 0;
        }
      }

      else
      {
        v22 = CWFGetOSLog();
        if (v22)
        {
          v18 = CWFGetOSLog();
        }

        else
        {
          v18 = MEMORY[0x1E69E9C10];
          v27 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        *location = 136446722;
        *&location[4] = "[CWFNearbySyncManager __sendBrokenBackhaulRestoreEventToNearbyDevice:]";
        v38 = 2082;
        v39 = "CWFNearbySyncManager.m";
        v40 = 1024;
        v41 = 391;
      }
    }

    else
    {
      v21 = CWFGetOSLog();
      if (v21)
      {
        v18 = CWFGetOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *location = 136446722;
      *&location[4] = "[CWFNearbySyncManager __sendBrokenBackhaulRestoreEventToNearbyDevice:]";
      v38 = 2082;
      v39 = "CWFNearbySyncManager.m";
      v40 = 1024;
      v41 = 390;
    }

    _os_log_send_and_compose_impl();
    goto LABEL_17;
  }

LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)__sendBrokenBackhaulRestoreEventToAllNearbyDevices
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activeDevices];
  v4 = [activeDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(activeDevices);
        }

        [(CWFNearbySyncManager *)self __sendBrokenBackhaulRestoreEventToNearbyDevice:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [activeDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)__purgeBBHCache
{
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  array = [MEMORY[0x1E695DF70] array];
  cachedBBHTimestampMap = self->_cachedBBHTimestampMap;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = sub_1E0CCCAE8;
  v10 = &unk_1E86E8878;
  v11 = array;
  v12 = v3;
  v6 = array;
  [(NSMutableDictionary *)cachedBBHTimestampMap enumerateKeysAndObjectsUsingBlock:&v7];
  [(NSMutableDictionary *)self->_cachedBBHTimestampMap removeObjectsForKeys:v6, v7, v8, v9, v10];
  [(NSMutableDictionary *)self->_cachedBBHStateMap removeObjectsForKeys:v6];
}

- (void)__sendConfirmBrokenBackhaulRequestToNearbyDevice:(id)device timeout:(unint64_t)timeout count:(unint64_t)count network:(id)network minimumCacheTimestamp:(unint64_t)timestamp completion:(id)completion
{
  v99 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  networkCopy = network;
  completionCopy = completion;
  v77 = networkCopy;
  if (_os_feature_enabled_impl())
  {
    if (![(CWFNearbySyncManager *)self __deviceSupportsNearbyBBHConfirmRequests:deviceCopy])
    {
      v47 = *MEMORY[0x1E696A798];
      v48 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
      v43 = CWFErrorWithDescription(v47, 45, v48);

      v49 = CWFGetOSLog();
      if (v49)
      {
        v50 = CWFGetOSLog();
      }

      else
      {
        v50 = MEMORY[0x1E69E9C10];
        v65 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v66 = [deviceCopy description];
        [v66 redactedForWiFi];
        *&location[4] = *location = 138543362;
        _os_log_send_and_compose_impl();
      }

LABEL_56:

      goto LABEL_57;
    }

    if ([(CWFNearbySyncManager *)self activated])
    {
      if ([(CWFNearbySyncManager *)self cloudKeychainEnabled]== 2)
      {
        if (!networkCopy)
        {
          v58 = *MEMORY[0x1E696A798];
          v59 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
          v43 = CWFErrorWithDescription(v58, 22, v59);

          v60 = CWFGetOSLog();
          if (v60)
          {
            v61 = CWFGetOSLog();
          }

          else
          {
            v61 = MEMORY[0x1E69E9C10];
            v69 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *location = 0;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_57;
        }

        selfCopy = self;
        objc_sync_enter(selfCopy);
        cachedBBHTimestampMap = selfCopy->_cachedBBHTimestampMap;
        identifier = [deviceCopy identifier];
        v17 = [(NSMutableDictionary *)cachedBBHTimestampMap objectForKeyedSubscript:identifier];
        unsignedLongLongValue = [v17 unsignedLongLongValue];

        cachedBBHStateMap = selfCopy->_cachedBBHStateMap;
        identifier2 = [deviceCopy identifier];
        v21 = [(NSMutableDictionary *)cachedBBHStateMap objectForKeyedSubscript:identifier2];
        integerValue = [v21 integerValue];

        objc_sync_exit(selfCopy);
        v23 = CWFGetOSLog();
        v24 = v23;
        if (timestamp - 1 < unsignedLongLongValue)
        {
          if (v23)
          {
            v25 = CWFGetOSLog();
          }

          else
          {
            v25 = MEMORY[0x1E69E9C10];
            v27 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v28 = sub_1E0BD3BE8(integerValue);
            v29 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
            v30 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
            v31 = [deviceCopy description];
            [v31 redactedForWiFi];
            *location = 138413826;
            *&location[4] = v28;
            v87 = 2048;
            timeoutCopy2 = (v29 - unsignedLongLongValue) / 0xF4240;
            v89 = 2114;
            countCopy2 = v77;
            v91 = 2048;
            timeoutCopy = timeout;
            v93 = 2048;
            countCopy = count;
            v95 = 2048;
            v96 = (v30 - timestamp) / 0xF4240;
            v98 = v97 = 2114;
            _os_log_send_and_compose_impl();
          }

          if (completionCopy)
          {
            completionCopy[2](completionCopy, 0);
          }

          goto LABEL_24;
        }

        if (v23)
        {
          v26 = CWFGetOSLog();
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
          v32 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v33 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v34 = [deviceCopy description];
          redactedForWiFi = [v34 redactedForWiFi];
          *location = 138544386;
          *&location[4] = v77;
          v87 = 2048;
          timeoutCopy2 = timeout;
          v89 = 2048;
          countCopy2 = count;
          v91 = 2048;
          timeoutCopy = (v33 - timestamp) / 0xF4240;
          v93 = 2114;
          countCopy = redactedForWiFi;
          LODWORD(v74) = 52;
          v73 = location;
          _os_log_send_and_compose_impl();
        }

        v36 = [(CWFNearbySyncManager *)selfCopy __rapportClientTargetingDevice:deviceCopy];
        if (v36)
        {
          v37 = objc_alloc_init(CWFAsyncBlockOperation);
          HIDWORD(v39) = qos_class_self() - 9;
          LODWORD(v39) = HIDWORD(v39);
          v38 = v39 >> 2;
          if (v38 > 6)
          {
            v40 = 0;
          }

          else
          {
            v40 = qword_1E0D81BD0[v38];
          }

          [(CWFAsyncBlockOperation *)v37 setQualityOfService:v40, v73, v74];
          [(CWFAsyncBlockOperation *)v37 incrementCompletionCounter];
          objc_initWeak(location, v37);
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 3221225472;
          v79[2] = sub_1E0CCD5FC;
          v79[3] = &unk_1E86E88F0;
          objc_copyWeak(v85, location);
          v41 = v36;
          v80 = v41;
          v81 = deviceCopy;
          v42 = v77;
          v85[1] = timeout;
          v85[2] = count;
          v82 = v42;
          v83 = selfCopy;
          v84 = completionCopy;
          [(NSBlockOperation *)v37 addExecutionBlock:v79];
          [(NSOperationQueue *)selfCopy->_rapportRequestQueue addOperation:v37];

          objc_destroyWeak(v85);
          objc_destroyWeak(location);

LABEL_24:
          v43 = 0;
          goto LABEL_25;
        }

        v62 = *MEMORY[0x1E696A798];
        v63 = CWFErrorDescription(*MEMORY[0x1E696A798], 0xCuLL);
        v43 = CWFErrorWithDescription(v62, 12, v63);

        v64 = CWFGetOSLog();
        if (v64)
        {
          v50 = CWFGetOSLog();
        }

        else
        {
          v50 = MEMORY[0x1E69E9C10];
          v70 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v71 = [deviceCopy description];
          redactedForWiFi2 = [v71 redactedForWiFi];
          *location = 138543362;
          *&location[4] = redactedForWiFi2;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_56;
      }

      v55 = *MEMORY[0x1E696A798];
      v56 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
      v43 = CWFErrorWithDescription(v55, 1, v56);

      v57 = CWFGetOSLog();
      if (v57)
      {
        v54 = CWFGetOSLog();
      }

      else
      {
        v54 = MEMORY[0x1E69E9C10];
        v68 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *location = 136446722;
        *&location[4] = "[CWFNearbySyncManager __sendConfirmBrokenBackhaulRequestToNearbyDevice:timeout:count:network:minimumCacheTimestamp:completion:]";
        v87 = 2082;
        timeoutCopy2 = "CWFNearbySyncManager.m";
        v89 = 1024;
        LODWORD(countCopy2) = 477;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v51 = *MEMORY[0x1E696A798];
      v52 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v43 = CWFErrorWithDescription(v51, 6, v52);

      v53 = CWFGetOSLog();
      if (v53)
      {
        v54 = CWFGetOSLog();
      }

      else
      {
        v54 = MEMORY[0x1E69E9C10];
        v67 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *location = 136446722;
        *&location[4] = "[CWFNearbySyncManager __sendConfirmBrokenBackhaulRequestToNearbyDevice:timeout:count:network:minimumCacheTimestamp:completion:]";
        v87 = 2082;
        timeoutCopy2 = "CWFNearbySyncManager.m";
        v89 = 1024;
        LODWORD(countCopy2) = 472;
        _os_log_send_and_compose_impl();
      }
    }
  }

  else
  {
    v45 = *MEMORY[0x1E696A798];
    v46 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v43 = CWFErrorWithDescription(v45, 6, v46);
  }

LABEL_57:
  if (completionCopy && v43)
  {
    (completionCopy)[2](completionCopy, v43);
  }

LABEL_25:

  v44 = *MEMORY[0x1E69E9840];
}

- (void)__sendConfirmBrokenBackhaulRequestToAllNearbyDevicesWithTimeout:(unint64_t)timeout count:(unint64_t)count network:(id)network minimumCacheTimestamp:(unint64_t)timestamp completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  completionCopy = completion;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v12 = dispatch_group_create();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activeDevices];
  v14 = [activeDevices countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v22 = *v39;
    obj = activeDevices;
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        dispatch_group_enter(v12);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1E0CCDF3C;
        v28[3] = &unk_1E86E8918;
        v17 = networkCopy;
        timeoutCopy = timeout;
        countCopy = count;
        timestampCopy = timestamp;
        v29 = v17;
        v30 = v16;
        selfCopy = self;
        v34 = v42;
        v33 = completionCopy;
        v32 = v12;
        [(CWFNearbySyncManager *)self __sendConfirmBrokenBackhaulRequestToNearbyDevice:v16 timeout:timeout count:count network:v17 minimumCacheTimestamp:timestamp completion:v28];

        ++v15;
      }

      while (v14 != v15);
      activeDevices = obj;
      v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  targetQueue = [(CWFNearbySyncManager *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CCE174;
  block[3] = &unk_1E86E8940;
  v27 = v42;
  block[4] = self;
  v26 = completionCopy;
  v19 = completionCopy;
  dispatch_group_notify(v12, targetQueue, block);

  _Block_object_dispose(v42, 8);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)__respondToConfirmBrokenBackhaulRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  if (![(CWFNearbySyncManager *)self activated])
  {
    v22 = *MEMORY[0x1E696A798];
    v23 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v20 = CWFErrorWithDescription(v22, 6, v23);

    v24 = CWFGetOSLog();
    if (v24)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v40 = 136446722;
    v41 = "[CWFNearbySyncManager __respondToConfirmBrokenBackhaulRequest:options:responseHandler:]";
    v42 = 2082;
    v43 = "CWFNearbySyncManager.m";
    v44 = 1024;
    v45 = 603;
    goto LABEL_21;
  }

  if ([(CWFNearbySyncManager *)self cloudKeychainEnabled]!= 2)
  {
    v26 = *MEMORY[0x1E696A798];
    v27 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
    v20 = CWFErrorWithDescription(v26, 1, v27);

    v28 = CWFGetOSLog();
    if (v28)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v40 = 136446722;
    v41 = "[CWFNearbySyncManager __respondToConfirmBrokenBackhaulRequest:options:responseHandler:]";
    v42 = 2082;
    v43 = "CWFNearbySyncManager.m";
    v44 = 1024;
    v45 = 607;
    goto LABEL_21;
  }

  v9 = [CWFNetworkProfile alloc];
  v10 = [requestCopy objectForKeyedSubscript:@"Network"];
  v11 = [(CWFNetworkProfile *)v9 initWithExternalForm:v10];

  v12 = [requestCopy objectForKeyedSubscript:@"Timeout"];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  v14 = [requestCopy objectForKeyedSubscript:@"Count"];
  unsignedIntegerValue2 = [v14 unsignedIntegerValue];

  if (v11)
  {
    targetQueue = self->_targetQueue;
    v17 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CCE6C0;
    block[3] = &unk_1E86E8968;
    block[4] = self;
    v36 = v11;
    v38 = unsignedIntegerValue;
    v39 = unsignedIntegerValue2;
    v37 = handlerCopy;
    v18 = v11;
    v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v17, 0, block);
    dispatch_async(targetQueue, v19);

    v20 = 0;
    goto LABEL_5;
  }

  v29 = *MEMORY[0x1E696A798];
  v30 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v20 = CWFErrorWithDescription(v29, 22, v30);

  v31 = CWFGetOSLog();
  if (v31)
  {
    v25 = CWFGetOSLog();
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v40 = 136446722;
    v41 = "[CWFNearbySyncManager __respondToConfirmBrokenBackhaulRequest:options:responseHandler:]";
    v42 = 2082;
    v43 = "CWFNearbySyncManager.m";
    v44 = 1024;
    v45 = 616;
LABEL_21:
    _os_log_send_and_compose_impl();
  }

LABEL_22:

  if (handlerCopy && v20)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);
  }

LABEL_5:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)__handleBrokenBackhaulRestoreEvent:(id)event options:(id)options
{
  v36 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  optionsCopy = options;
  if (![(CWFNearbySyncManager *)self activated])
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v30 = 136446722;
    v31 = "[CWFNearbySyncManager __handleBrokenBackhaulRestoreEvent:options:]";
    v32 = 2082;
    v33 = "CWFNearbySyncManager.m";
    v34 = 1024;
    v35 = 645;
LABEL_19:
    _os_log_send_and_compose_impl();
    goto LABEL_6;
  }

  if ([(CWFNearbySyncManager *)self cloudKeychainEnabled]!= 2)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v30 = 136446722;
    v31 = "[CWFNearbySyncManager __handleBrokenBackhaulRestoreEvent:options:]";
    v32 = 2082;
    v33 = "CWFNearbySyncManager.m";
    v34 = 1024;
    v35 = 646;
    goto LABEL_19;
  }

  v8 = [[CWFNearbySyncNetwork alloc] initWithExternalForm:eventCopy];
  knownNetworkProfile = [(CWFNearbySyncNetwork *)v8 knownNetworkProfile];
  v10 = sub_1E0CCB88C();
  v11 = [optionsCopy objectForKeyedSubscript:v10];
  [knownNetworkProfile setReceivedFromDeviceFlags:{objc_msgSend(v11, "unsignedLongLongValue")}];

  date = [MEMORY[0x1E695DF00] date];
  [knownNetworkProfile setReceivedFromDeviceAt:date];

  v13 = sub_1E0CCB9F0();
  v14 = [optionsCopy objectForKeyedSubscript:v13];
  [knownNetworkProfile setReceivedFromDeviceID:v14];

  v15 = sub_1E0CCBB54();
  v16 = [optionsCopy objectForKeyedSubscript:v15];
  [knownNetworkProfile setReceivedFromDeviceName:v16];

  [(CWFNearbySyncNetwork *)v8 setKnownNetworkProfile:knownNetworkProfile];
  if ([(CWFNearbySyncNetwork *)v8 isNearbyBrokenBackhaulStateSyncable])
  {
    targetQueue = self->_targetQueue;
    v18 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CCED0C;
    block[3] = &unk_1E86E6420;
    block[4] = self;
    v29 = v8;
    v8 = v8;
    v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v18, 0, block);
    dispatch_async(targetQueue, v19);
  }

  else
  {
    v23 = CWFGetOSLog();
    if (v23)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v30 = 136446722;
      v31 = "[CWFNearbySyncManager __handleBrokenBackhaulRestoreEvent:options:]";
      v32 = 2082;
      v33 = "CWFNearbySyncManager.m";
      v34 = 1024;
      v35 = 656;
      _os_log_send_and_compose_impl();
    }
  }

LABEL_6:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)__sendAutoJoinAssistRequestToNearbyDevice:(id)device retryCount:(unint64_t)count
{
  v16 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  nearbySyncNetwork = [(CWFNearbySyncManager *)self nearbySyncNetwork];
  *location = 0;
  os_eligibility_get_domain_answer();
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *location = 136446722;
    *&location[4] = "[CWFNearbySyncManager __sendAutoJoinAssistRequestToNearbyDevice:retryCount:]";
    v12 = 2082;
    v13 = "CWFNearbySyncManager.m";
    v14 = 1024;
    LODWORD(v15) = 678;
    _os_log_send_and_compose_impl();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)__sendAutoJoinAssistRequestToAllNearbyDevices
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activeDevices];
  v4 = [activeDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(activeDevices);
        }

        [(CWFNearbySyncManager *)self __sendAutoJoinAssistRequestToNearbyDevice:*(*(&v9 + 1) + 8 * v7++) retryCount:0];
      }

      while (v5 != v7);
      v5 = [activeDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)__respondToAutoJoinAssistRequest:(id)request options:(id)options responseHandler:(id)handler
{
  handlerCopy = handler;
  [(CWFNearbySyncManager *)self __handleAutoJoinAssistPayload:request options:options];
  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], 0, 0);
}

- (void)__sendNeedsConnectivityRequestToNearbyDevice:(id)device retryCount:(unint64_t)count
{
  v14 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  *location = 0;
  os_eligibility_get_domain_answer();
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *location = 136446722;
    *&location[4] = "[CWFNearbySyncManager __sendNeedsConnectivityRequestToNearbyDevice:retryCount:]";
    v10 = 2082;
    v11 = "CWFNearbySyncManager.m";
    v12 = 1024;
    LODWORD(v13) = 780;
    _os_log_send_and_compose_impl();
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)__sendNeedsConnectivityRequestToAllNearbyDevices
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_rapportDiscoveryClient activeDevices];
  v4 = [activeDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(activeDevices);
        }

        [(CWFNearbySyncManager *)self __sendNeedsConnectivityRequestToNearbyDevice:*(*(&v9 + 1) + 8 * v7++) retryCount:0];
      }

      while (v5 != v7);
      v5 = [activeDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)__respondToNeedsConnectivityRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  nearbySyncNetwork = [(CWFNearbySyncManager *)self nearbySyncNetwork];
  os_eligibility_get_domain_answer();
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    _os_log_send_and_compose_impl();
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNearbySyncNetwork:(id)network
{
  v45 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  associationState = [(CWFNearbySyncManager *)selfCopy associationState];
  knownNetworkProfile = [networkCopy knownNetworkProfile];
  if (knownNetworkProfile)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(CWFNearbySyncManager *)selfCopy setAssociationState:v8];

  nearbySyncNetwork = [(CWFNearbySyncManager *)selfCopy nearbySyncNetwork];
  v10 = nearbySyncNetwork;
  if (nearbySyncNetwork == networkCopy)
  {
  }

  else
  {
    nearbySyncNetwork2 = [(CWFNearbySyncManager *)selfCopy nearbySyncNetwork];
    v12 = nearbySyncNetwork2;
    if (networkCopy && nearbySyncNetwork2)
    {
      nearbySyncNetwork3 = [(CWFNearbySyncManager *)selfCopy nearbySyncNetwork];
      v14 = [nearbySyncNetwork3 isEqual:networkCopy];

      if (v14)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    nearbySyncNetwork4 = [(CWFNearbySyncManager *)selfCopy nearbySyncNetwork];
    if ([nearbySyncNetwork4 isNearbySyncable])
    {
      isNearbyRecommendable = 1;
    }

    else
    {
      nearbySyncNetwork5 = [(CWFNearbySyncManager *)selfCopy nearbySyncNetwork];
      isNearbyRecommendable = [nearbySyncNetwork5 isNearbyRecommendable];
    }

    if ([networkCopy isNearbySyncable])
    {
      isNearbyRecommendable2 = 1;
    }

    else
    {
      isNearbyRecommendable2 = [networkCopy isNearbyRecommendable];
    }

    nearbySyncNetwork6 = [(CWFNearbySyncManager *)selfCopy nearbySyncNetwork];
    knownNetworkProfile2 = [nearbySyncNetwork6 knownNetworkProfile];
    brokenBackhaulState = [knownNetworkProfile2 brokenBackhaulState];

    nearbySyncNetwork7 = [(CWFNearbySyncManager *)selfCopy nearbySyncNetwork];
    knownNetworkProfile3 = [nearbySyncNetwork7 knownNetworkProfile];
    brokenBackhaulStateUpdatedAt = [knownNetworkProfile3 brokenBackhaulStateUpdatedAt];

    knownNetworkProfile4 = [networkCopy knownNetworkProfile];
    brokenBackhaulState2 = [knownNetworkProfile4 brokenBackhaulState];

    knownNetworkProfile5 = [networkCopy knownNetworkProfile];
    brokenBackhaulStateUpdatedAt2 = [knownNetworkProfile5 brokenBackhaulStateUpdatedAt];

    v28 = CWFGetOSLog();
    if (v28)
    {
      v29 = CWFGetOSLog();
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 138543362;
      v44 = networkCopy;
      LODWORD(v37) = 12;
      v36 = &v43;
      _os_log_send_and_compose_impl();
    }

    v31 = [networkCopy copy];
    nearbySyncNetwork = selfCopy->_nearbySyncNetwork;
    selfCopy->_nearbySyncNetwork = v31;

    if ((isNearbyRecommendable ^ isNearbyRecommendable2) & 1 | (associationState == 0))
    {
      internalQueue = selfCopy->_internalQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CD1E74;
      block[3] = &unk_1E86E6420;
      v41 = networkCopy;
      v42 = selfCopy;
      dispatch_async(internalQueue, block);
    }

    if ([networkCopy isNearbyBrokenBackhaulStateSyncable] && (brokenBackhaulState != brokenBackhaulState2 || brokenBackhaulStateUpdatedAt != brokenBackhaulStateUpdatedAt2 && (!brokenBackhaulStateUpdatedAt || !brokenBackhaulStateUpdatedAt2 || !objc_msgSend(brokenBackhaulStateUpdatedAt, "isEqual:", brokenBackhaulStateUpdatedAt2))) || !associationState)
    {
      v34 = selfCopy->_internalQueue;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1E0CD1EC4;
      v39[3] = &unk_1E86E6010;
      v39[4] = selfCopy;
      dispatch_async(v34, v39);
    }
  }

LABEL_33:
  objc_sync_exit(selfCopy);

  v35 = *MEMORY[0x1E69E9840];
}

- (id)__nearbyNetworkSyncRequestTimestampForDevice:(id)device network:(id)network
{
  deviceCopy = device;
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nearbySyncRequestHistory = selfCopy->_nearbySyncRequestHistory;
  v10 = MEMORY[0x1E696AEC0];
  effectiveIdentifier = [deviceCopy effectiveIdentifier];
  identifier = [networkCopy identifier];
  v13 = [v10 stringWithFormat:@"%@/%@", effectiveIdentifier, identifier];
  v14 = [(NSMutableDictionary *)nearbySyncRequestHistory objectForKeyedSubscript:v13];

  objc_sync_exit(selfCopy);

  return v14;
}

- (id)__failedNearbyNetworkSyncRequestTimestampForDevice:(id)device network:(id)network
{
  deviceCopy = device;
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  failedNearbySyncRequestHistory = selfCopy->_failedNearbySyncRequestHistory;
  v10 = MEMORY[0x1E696AEC0];
  effectiveIdentifier = [deviceCopy effectiveIdentifier];
  identifier = [networkCopy identifier];
  v13 = [v10 stringWithFormat:@"%@/%@", effectiveIdentifier, identifier];
  v14 = [(NSMutableDictionary *)failedNearbySyncRequestHistory objectForKeyedSubscript:v13];

  objc_sync_exit(selfCopy);

  return v14;
}

- (void)__updateNearbyNetworkSyncRequestTimestampForDevice:(id)device network:(id)network
{
  deviceCopy = device;
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  date = [MEMORY[0x1E695DF00] date];
  nearbySyncRequestHistory = selfCopy->_nearbySyncRequestHistory;
  v11 = MEMORY[0x1E696AEC0];
  effectiveIdentifier = [deviceCopy effectiveIdentifier];
  identifier = [networkCopy identifier];
  v14 = [v11 stringWithFormat:@"%@/%@", effectiveIdentifier, identifier];
  [(NSMutableDictionary *)nearbySyncRequestHistory setObject:date forKeyedSubscript:v14];

  failedNearbySyncRequestHistory = selfCopy->_failedNearbySyncRequestHistory;
  v16 = MEMORY[0x1E696AEC0];
  effectiveIdentifier2 = [deviceCopy effectiveIdentifier];
  identifier2 = [networkCopy identifier];
  v19 = [v16 stringWithFormat:@"%@/%@", effectiveIdentifier2, identifier2];
  [(NSMutableDictionary *)failedNearbySyncRequestHistory setObject:0 forKeyedSubscript:v19];

  v20 = 604800;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v20 = 60;
  }

  array = [MEMORY[0x1E695DF70] array];
  v22 = selfCopy->_nearbySyncRequestHistory;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1E0CD2364;
  v25[3] = &unk_1E86E8A80;
  v23 = date;
  v26 = v23;
  v28 = v20;
  v24 = array;
  v27 = v24;
  [(NSMutableDictionary *)v22 enumerateKeysAndObjectsUsingBlock:v25];
  [(NSMutableDictionary *)selfCopy->_nearbySyncRequestHistory removeObjectsForKeys:v24];

  objc_sync_exit(selfCopy);
}

- (void)__updateFailedNearbyNetworkSyncRequestTimestampForDevice:(id)device network:(id)network
{
  deviceCopy = device;
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  date = [MEMORY[0x1E695DF00] date];
  failedNearbySyncRequestHistory = selfCopy->_failedNearbySyncRequestHistory;
  v11 = MEMORY[0x1E696AEC0];
  effectiveIdentifier = [deviceCopy effectiveIdentifier];
  identifier = [networkCopy identifier];
  v14 = [v11 stringWithFormat:@"%@/%@", effectiveIdentifier, identifier];
  [(NSMutableDictionary *)failedNearbySyncRequestHistory setObject:date forKeyedSubscript:v14];

  v15 = 604800;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v15 = 60;
  }

  array = [MEMORY[0x1E695DF70] array];
  v17 = selfCopy->_failedNearbySyncRequestHistory;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E0CD25F8;
  v20[3] = &unk_1E86E8A80;
  v18 = date;
  v21 = v18;
  v23 = v15;
  v19 = array;
  v22 = v19;
  [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v20];
  [(NSMutableDictionary *)selfCopy->_failedNearbySyncRequestHistory removeObjectsForKeys:v19];

  objc_sync_exit(selfCopy);
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
      v19 = "[CWFNearbySyncManager __isCloudKeychainEnabled]";
      v20 = 2082;
      v21 = "CWFNearbySyncManager.m";
      v22 = 1024;
      v23 = 1058;
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
      v19 = "[CWFNearbySyncManager __isCloudKeychainEnabled]";
      v20 = 2082;
      v21 = "CWFNearbySyncManager.m";
      v22 = 1024;
      v23 = 1066;
      v24 = 2114;
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
  cloudKeychainEnabled = [(CWFNearbySyncManager *)self cloudKeychainEnabled];
  __isCloudKeychainEnabled = [(CWFNearbySyncManager *)self __isCloudKeychainEnabled];
  if (__isCloudKeychainEnabled)
  {
    v5 = __isCloudKeychainEnabled;
    if (__isCloudKeychainEnabled != cloudKeychainEnabled)
    {
      [(CWFNearbySyncManager *)self setCloudKeychainEnabled:__isCloudKeychainEnabled];
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
          v19 = 0;
          LODWORD(v18) = 2;
          v17 = &v19;
          _os_log_send_and_compose_impl();
        }

        if ([(CWFNearbySyncManager *)self associationState]== 2)
        {
          nearbySyncNetwork = [(CWFNearbySyncManager *)self nearbySyncNetwork];
          if ([nearbySyncNetwork isNearbySyncable])
          {
          }

          else
          {
            nearbySyncNetwork2 = [(CWFNearbySyncManager *)self nearbySyncNetwork];
            isNearbyRecommendable = [nearbySyncNetwork2 isNearbyRecommendable];

            if (!isNearbyRecommendable)
            {
              goto LABEL_23;
            }
          }

          [(CWFNearbySyncManager *)self __sendAutoJoinAssistRequestToAllNearbyDevices:v17];
LABEL_23:
          v15 = [(CWFNearbySyncManager *)self nearbySyncNetwork:v17];
          isNearbyBrokenBackhaulStateSyncable = [v15 isNearbyBrokenBackhaulStateSyncable];

          if (isNearbyBrokenBackhaulStateSyncable)
          {
            [(CWFNearbySyncManager *)self __sendBrokenBackhaulRestoreEventToAllNearbyDevices];
          }

          return;
        }

        if ([(CWFNearbySyncManager *)self associationState]== 1)
        {
          [(CWFNearbySyncManager *)self __sendNeedsConnectivityRequestToAllNearbyDevices];
        }
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
          v12 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          _os_log_send_and_compose_impl();
        }
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
  handler[2] = sub_1E0CD2C40;
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

  [(CWFNearbySyncManager *)self __checkCloudKeychainSyncState];
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

@end