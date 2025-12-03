@interface DRSService
+ (BOOL)defaultServiceIsEnabled;
+ (BOOL)shouldRunBackstopUpload:(id)upload currentDate:(id)date errorOut:(id *)out;
+ (BOOL)updateUploadSessionDateFromContainer:(id)container toDate:(id)date errorOut:(id *)out;
+ (id)_currentUploadSession_ON_MOC_QUEUE:(id)e errorOut:(id *)out;
+ (id)carrierConfigurationDirectory;
+ (id)customerConfigurationDirectory;
+ (id)deviceTeamConfigurationDirectory;
+ (id)internalConfigurationDirectory;
+ (id)previousUploadSessionDateFromContainer:(id)container errorOut:(id *)out;
+ (id)seedConfigurationDirectory;
+ (id)sharedInstance;
+ (unint64_t)uploadSessionUploadCapBytes;
- (BOOL)_connectionHasEntitlement:(id)entitlement;
- (BOOL)_enableDataGatheringQueryPassesRandomRejection;
- (BOOL)_persistEnableLogGatheringResult:(id)result workingContext:(id)context;
- (BOOL)_saveDampeningManagerErrorOut:(id *)out;
- (BOOL)_syncConfigurationToDisk:(id)disk;
- (BOOL)activateService;
- (BOOL)clearUploadSessionDate:(id *)date;
- (BOOL)isEnabled;
- (BOOL)shouldRunBackstopUpload:(id *)upload;
- (BOOL)updateUploadSessionDate:(id *)date;
- (DRSService)init;
- (NSNumber)ignoreAutomatedDeviceGroup;
- (NSNumber)isEnabledOverride;
- (double)_resolvedEnableDataGatheringQueryAcceptanceRate;
- (id)_cachedMatchingQuery:(id)query workingContext:(id)context;
- (id)_permissiveXPCActivitCriteriaDict:(unsigned int)dict;
- (id)_updateCKConfig:(id)config;
- (unint64_t)_remainingMonthlyUploadQuotaBytesWithContext:(id)context;
- (unint64_t)_remainingSessionUploadQuotaBytesWithContext:(id)context;
- (void)_addCKConfigSettingsToReplyMessage:(id)message;
- (void)_addRequestToDAFileList:(id)list;
- (void)_adjustStateForNewConfiguration;
- (void)_ckQueueDownstreamOnly_uploadInFlightWithTransaction:(id)transaction xpcActivity:(id)activity ckHelper:(id)helper isExpedited:(BOOL)expedited completionBlock:(id)block;
- (void)_ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction:(id)transaction xpcActivity:(id)activity ckHelper:(id)helper followupWorkBlock:(id)block;
- (void)_configureExpeditedUploadXPCActivity;
- (void)_configureReportStatsXPCActivity;
- (void)_configureUploadXPCActivity;
- (void)_configureXPCActivities;
- (void)_finishReportingStatsSessionWithActivity:(id)activity withState:(int64_t)state transaction:(id)transaction endResultString:(id)string;
- (void)_getConfiguration;
- (void)_handleCKConfigUpdate:(id)update state:(id)state;
- (void)_handleCKWorkTriggerRequest:(id)request state:(id)state transaction:(id)transaction;
- (void)_handleCancelScheduledUploadRequest:(id)request state:(id)state;
- (void)_handleDRSRequestMessage:(id)message state:(id)state transaction:(id)transaction;
- (void)_handleDampeningConfigurationDictMessage:(id)message state:(id)state transaction:(id)transaction;
- (void)_handleDampeningConfigurationGlobalEnablementMessage:(id)message state:(id)state transaction:(id)transaction;
- (void)_handleDampeningConfigurationReset:(id)reset state:(id)state transaction:(id)transaction;
- (void)_handleEnableLogGatheringRequest:(id)request state:(id)state transaction:(id)transaction;
- (void)_handleGetCKConfig:(id)config state:(id)state;
- (void)_handleGetIgnoreADG:(id)g state:(id)state;
- (void)_handleGetUploadServiceEnabled:(id)enabled state:(id)state;
- (void)_handleInjectEnableLogGatheringRequestResult:(id)result state:(id)state;
- (void)_handleNewEntitledConnection:(id)connection state:(id)state;
- (void)_handleRefreshDampeningConfigMessage:(id)message state:(id)state transaction:(id)transaction;
- (void)_handleRequestCleanTrigger:(id)trigger state:(id)state;
- (void)_handleResetCKConfig:(id)config state:(id)state;
- (void)_handleSetIgnoreADG:(id)g state:(id)state;
- (void)_handleSetUploadServiceEnabled:(id)enabled state:(id)state;
- (void)_handleUploadSchedulingRequest:(id)request state:(id)state;
- (void)_initializeServiceContainer;
- (void)_postReceiptProcessingWork:(id)work;
- (void)_registerPermissiveExpeditedUploadXPCActivity:(unsigned int)activity;
- (void)_rejectInjectRequest:(id)request state:(id)state reason:(const char *)reason;
- (void)_replyToCKConfigMessageWithCurrentCKConfig:(id)config;
- (void)_runReportingSessionWithTransaction:(id)transaction xpcActivity:(id)activity;
- (void)_sendAdminRequestReply:(BOOL)reply rejectionReason:(const char *)reason requestMessage:(id)message;
- (void)_sendCurrentIgnoreADGReply:(id)reply state:(id)state;
- (void)_sendCurrentUploadServiceEnabledReply:(id)reply state:(id)state;
- (void)_sendRejectionMessage:(id)message rejectionReason:(unint64_t)reason state:(id)state;
- (void)_setConfigValue:(id)value forKey:(id)key expectedClass:(Class)class;
- (void)_unregisterPermissiveExpeditedUploadXPCActivity;
- (void)_updateConfigDict:(id)dict;
- (void)_waitForDeviceUnlockAndInitializeServiceState;
- (void)deactivateService;
- (void)dealloc;
- (void)handleRequest:(id)request state:(id)state;
- (void)setIgnoreAutomatedDeviceGroup:(id)group;
- (void)setIsEnabledOverride:(id)override;
@end

@implementation DRSService

+ (BOOL)defaultServiceIsEnabled
{
  if (defaultServiceIsEnabled_onceToken != -1)
  {
    +[DRSService defaultServiceIsEnabled];
  }

  return defaultServiceIsEnabled_isEnabled;
}

void __37__DRSService_defaultServiceIsEnabled__block_invoke()
{
  v0 = +[DRSSystemProfile sharedInstance];
  v1 = [v0 isCarrier];

  if (v1)
  {
    defaultServiceIsEnabled_isEnabled = 0;
    v2 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceDisabled", "Service is disabled due to being Carrier", v3, 2u);
    }
  }

  else
  {
    defaultServiceIsEnabled_isEnabled = 1;
  }
}

+ (unint64_t)uploadSessionUploadCapBytes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DRSService_uploadSessionUploadCapBytes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (uploadSessionUploadCapBytes_onceToken != -1)
  {
    dispatch_once(&uploadSessionUploadCapBytes_onceToken, block);
  }

  return uploadSessionUploadCapBytes_cap;
}

void __41__DRSService_uploadSessionUploadCapBytes__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) defaultServiceIsEnabled])
  {
    v1 = +[DRSSystemProfile sharedInstance];
    uploadSessionUploadCapBytes_cap = [v1 uploadSessionUploadCapBytes];
  }

  else
  {
    uploadSessionUploadCapBytes_cap = 0;
  }
}

- (unint64_t)_remainingSessionUploadQuotaBytesWithContext:(id)context
{
  contextCopy = context;
  maxSingleSessionUploadSizeInBytes = [(DRSService *)self maxSingleSessionUploadSizeInBytes];
  v6 = [(DRSService *)self _remainingMonthlyUploadQuotaBytesWithContext:contextCopy];

  if (maxSingleSessionUploadSizeInBytes >= v6)
  {
    return v6;
  }

  else
  {
    return maxSingleSessionUploadSizeInBytes;
  }
}

- (unint64_t)_remainingMonthlyUploadQuotaBytesWithContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  contextCopy = context;
  v6 = [v4 dateWithTimeIntervalSinceNow:-2592000.0];
  v20 = 0;
  v7 = [DRSRequest uploadedBytesSinceDate:v6 context:contextCopy errorOut:&v20];

  v8 = v20;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v10))
    {
      localizedDescription = [v8 localizedDescription];
      v12 = localizedDescription;
      v13 = @"Unknown";
      if (localizedDescription)
      {
        v13 = localizedDescription;
      }

      *buf = 138543362;
      v22 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RemainingQuotaCalculationError", "Encountered error while trying to calculate remaining monthly quota: %{public}@", buf, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    unsignedLongLongValue = [v7 unsignedLongLongValue];
    if (unsignedLongLongValue >= [(DRSService *)self monthlyUploadQuotaBytes])
    {
      v14 = 0;
      goto LABEL_16;
    }

    monthlyUploadQuotaBytes = [(DRSService *)self monthlyUploadQuotaBytes];
    v14 = monthlyUploadQuotaBytes - [v7 unsignedLongLongValue];
    v10 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v10))
    {
      monthlyUploadQuotaBytes2 = [(DRSService *)self monthlyUploadQuotaBytes];
      *buf = 134218240;
      v22 = v14;
      v23 = 2048;
      v24 = monthlyUploadQuotaBytes2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RemainingMonthlyQuotaCalculated", "%lluB remain out of monthly upload quota of %lluB", buf, 0x16u);
    }
  }

LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[DRSService sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __28__DRSService_sharedInstance__block_invoke()
{
  DRSRegisterForDeviceUnlockNotification();
  v0 = objc_alloc_init(DRSService);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
}

- (void)_initializeServiceContainer
{
  v9 = *MEMORY[0x277D85DE8];
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_0(&dword_232906000, v2, v3, "FATAL ERROR: Could not instantiate the service persistent container due to error %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_waitForDeviceUnlockAndInitializeServiceState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  if (_waitForDeviceUnlockAndInitializeServiceState_onceToken_0 != -1)
  {
    dispatch_once(&_waitForDeviceUnlockAndInitializeServiceState_onceToken_0, block);
  }
}

uint64_t __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  DRSWaitForDeviceUnlock();
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() databaseDirectory];
  v4 = DPLogHandle_ServiceLifecycle();
  v5 = DPLogHandle_ServiceLifecycleError();
  DRSConfirmDirectoryIsInitialized(v3, v4, v5);

  v6 = *(a1 + 32);
  v7 = [objc_opt_class() fileDirectory];
  v8 = DPLogHandle_ServiceLifecycle();
  v9 = DPLogHandle_ServiceLifecycleError();
  DRSConfirmDirectoryIsInitialized(v7, v8, v9);

  [*(a1 + 32) _initializeServiceContainer];
  v10 = [DRSDampeningManager alloc];
  v11 = [*(a1 + 32) serviceContainer];
  v12 = *(a1 + 32);
  v13 = [objc_opt_class() deviceTeamConfigurationDirectory];
  v14 = [(DRSDampeningManager *)v10 initWithPersistentContainer:v11 teamConfigurationDirectory:v13];
  v15 = *(a1 + 32);
  v16 = *(v15 + 96);
  *(v15 + 96) = v14;

  v17 = [*(a1 + 32) dampeningManager];

  if (!v17)
  {
    v52 = DPLogHandle_ServiceLifecycleError();
    if (os_signpost_enabled(v52))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v52, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerCreationFailure", "FATAL ERROR: Failed to create dampening manager for service", buf, 2u);
    }

    v53 = DPLogHandle_ServiceLifecycleError();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_2(v53);
    }

    exit(1);
  }

  v18 = [DRSCKConfigStore alloc];
  v19 = *(a1 + 32);
  v20 = [objc_opt_class() databaseDirectory];
  v55 = 0;
  v21 = [(DRSCKConfigStore *)v18 initWithWorkingDirectory:v20 isReadOnly:0 errorOut:&v55];
  v22 = v55;
  v23 = *(a1 + 32);
  v24 = *(v23 + 120);
  *(v23 + 120) = v21;

  v25 = [*(a1 + 32) ckConfigStore];

  if (v25)
  {
    v26 = [*(a1 + 32) ckConfigStore];
    v54 = 0;
    v27 = [v26 currentConfig:&v54];
    v28 = v54;

    if (v27)
    {
      objc_storeStrong((*(a1 + 32) + 128), v27);
      v29 = DPLogHandle_ServiceLifecycleError();
      if (os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigFetchSuccess", &unk_232980861, buf, 2u);
      }
    }

    else
    {
      v37 = DPLogHandle_ServiceLifecycleError();
      if (os_signpost_enabled(v37))
      {
        v38 = [v28 localizedDescription];
        v39 = v38;
        v40 = @"Unknown";
        if (v38)
        {
          v40 = v38;
        }

        *buf = 138543362;
        v57 = v40;
        _os_signpost_emit_with_name_impl(&dword_232906000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigFetchFailure", "ERROR: Failed to fetch current CK config due to error: %{public}@. Will fallback to default.", buf, 0xCu);
      }

      v41 = +[DRSCKConfig defaultConfig];
      v42 = *(a1 + 32);
      v29 = *(v42 + 128);
      *(v42 + 128) = v41;
    }
  }

  else
  {
    v30 = DPLogHandle_ServiceLifecycleError();
    if (os_signpost_enabled(v30))
    {
      v31 = [v22 localizedDescription];
      v32 = v31;
      v33 = @"Unknown";
      if (v31)
      {
        v33 = v31;
      }

      *buf = 138543362;
      v57 = v33;
      _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigStoreCreationFailure", "ERROR: Failed to create CK config store for service due to error: %{public}@. Will fallback to default.", buf, 0xCu);
    }

    v34 = DPLogHandle_ServiceLifecycleError();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_1(v22);
    }

    v35 = +[DRSCKConfig defaultConfig];
    v36 = *(a1 + 32);
    v28 = *(v36 + 128);
    *(v36 + 128) = v35;
  }

  v43 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v43))
  {
    v44 = [*(a1 + 32) ckConfig];
    v45 = [v44 debugDescription];
    *buf = 138543362;
    v57 = v45;
    _os_signpost_emit_with_name_impl(&dword_232906000, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigApplied", "Applied config %{public}@", buf, 0xCu);
  }

  v46 = [*(a1 + 32) ckConfig];
  v47 = [DRSCloudKitHelper helperForCKConfig:v46];
  v48 = *(a1 + 32);
  v49 = *(v48 + 112);
  *(v48 + 112) = v47;

  result = [*(a1 + 32) _getConfiguration];
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)deviceTeamConfigurationDirectory
{
  v3 = +[DRSSystemProfile sharedInstance];
  isCarrier = [v3 isCarrier];

  if (isCarrier)
  {
    carrierConfigurationDirectory = [self carrierConfigurationDirectory];
  }

  else
  {
    v6 = +[DRSSystemProfile sharedInstance];
    isInternal = [v6 isInternal];

    if (isInternal)
    {
      carrierConfigurationDirectory = [self internalConfigurationDirectory];
    }

    else
    {
      v8 = +[DRSSystemProfile sharedInstance];
      isSeed = [v8 isSeed];

      if (isSeed)
      {
        [self seedConfigurationDirectory];
      }

      else
      {
        [self customerConfigurationDirectory];
      }
      carrierConfigurationDirectory = ;
    }
  }

  return carrierConfigurationDirectory;
}

+ (id)carrierConfigurationDirectory
{
  configurationDirectory = [self configurationDirectory];
  v3 = [configurationDirectory stringByAppendingPathComponent:@"TeamConfiguration"];

  v4 = [v3 stringByAppendingPathComponent:@"Carrier"];

  return v4;
}

+ (id)internalConfigurationDirectory
{
  configurationDirectory = [self configurationDirectory];
  v3 = [configurationDirectory stringByAppendingPathComponent:@"TeamConfiguration"];

  v4 = [v3 stringByAppendingPathComponent:@"Internal"];

  return v4;
}

+ (id)seedConfigurationDirectory
{
  configurationDirectory = [self configurationDirectory];
  v3 = [configurationDirectory stringByAppendingPathComponent:@"TeamConfiguration"];

  v4 = [v3 stringByAppendingPathComponent:@"Seed"];

  return v4;
}

+ (id)customerConfigurationDirectory
{
  configurationDirectory = [self configurationDirectory];
  v3 = [configurationDirectory stringByAppendingPathComponent:@"TeamConfiguration"];

  v4 = [v3 stringByAppendingPathComponent:@"Customer"];

  return v4;
}

- (BOOL)_connectionHasEntitlement:(id)entitlement
{
  v14 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  v4 = xpc_connection_copy_entitlement_value();
  v5 = v4;
  if (!v4)
  {
    v6 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v6))
    {
      v12 = 67109120;
      pid = xpc_connection_get_pid(entitlementCopy);
      v7 = "ClientConnectionMissingEntitlement";
      v8 = "Client connection from [%d] missing entitlement 'com.apple.diagnosticpipeline.request'";
      goto LABEL_11;
    }

LABEL_12:

    v9 = 0;
    goto LABEL_13;
  }

  if (MEMORY[0x23838A140](v4) != MEMORY[0x277D86448])
  {
    v6 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v6))
    {
      v12 = 67109120;
      pid = xpc_connection_get_pid(entitlementCopy);
      v7 = "ClientConnectionBadEntitlementType";
      v8 = "Client connection from [%d] has wrong type for entitlement 'com.apple.diagnosticpipeline.request'";
LABEL_11:
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v7, v8, &v12, 8u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!xpc_BOOL_get_value(v5))
  {
    v6 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v6))
    {
      v12 = 67109120;
      pid = xpc_connection_get_pid(entitlementCopy);
      v7 = "ClientConnectionFalseEntitlement";
      v8 = "Client connection from [%d] has a 'false' value for entitlement 'com.apple.diagnosticpipeline.request'";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v9 = 1;
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_sendRejectionMessage:(id)message rejectionReason:(unint64_t)reason state:(id)state
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "ServiceMessageType", 1uLL);
  xpc_dictionary_set_uint64(v8, "RejectionType", 1uLL);
  xpc_connection_send_message(messageCopy, v8);
  v9 = DPLogHandle_ServiceXPCError();
  if (os_signpost_enabled(v9))
  {
    stateDescription = [stateCopy stateDescription];
    v12 = 138543618;
    v13 = stateDescription;
    v14 = 2114;
    v15 = @"Missing entitlement 'com.apple.diagnosticpipeline.request'";
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectingClientConnection", "Rejecting client connection from %{public}@ due to reason: %{public}@", &v12, 0x16u);
  }

  xpc_connection_cancel(messageCopy);
  v11 = *MEMORY[0x277D85DE8];
}

- (DRSService)init
{
  v28.receiver = self;
  v28.super_class = DRSService;
  v2 = [(DRSService *)&v28 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = dispatch_queue_create("com.apple.diagnosticpipeline service message queue", 0);
  messageQueue = v2->_messageQueue;
  v2->_messageQueue = v3;

  v5 = dispatch_queue_create("com.apple.diagnosticpipeline service CloudKit work queue", 0);
  cloudKitQueue = v2->_cloudKitQueue;
  v2->_cloudKitQueue = v5;

  v7 = dispatch_queue_create("com.apple.diagnosticpipeline server post-receipt work queue", 0);
  postReceiptWorkQueue = v2->_postReceiptWorkQueue;
  v2->_postReceiptWorkQueue = v7;

  v9 = dispatch_queue_create("com.apple.diagnosticpipeline server outstanding upload lookup queue", 0);
  uploadRequestLookupQueue = v2->_uploadRequestLookupQueue;
  v2->_uploadRequestLookupQueue = v9;

  v11 = dispatch_queue_create("com.apple.diagnosticpipeline server configuration queue", 0);
  configurationSyncQueue = v2->_configurationSyncQueue;
  v2->_configurationSyncQueue = v11;

  messageQueue = [(DRSService *)v2 messageQueue];
  mach_service = xpc_connection_create_mach_service("com.apple.diagnosticpipeline.service", messageQueue, 1uLL);
  serviceConnection = v2->_serviceConnection;
  v2->_serviceConnection = mach_service;

  v16 = dispatch_semaphore_create(0);
  serviceDeactivatedSem = v2->_serviceDeactivatedSem;
  v2->_serviceDeactivatedSem = v16;

  v2->_maxSingleSessionUploadSizeInBytes = [objc_opt_class() uploadSessionUploadCapBytes];
  v2->_state = 0;
  serviceConnection = [(DRSService *)v2 serviceConnection];

  if (serviceConnection)
  {
    objc_initWeak(location, v2);
    serviceConnection2 = [(DRSService *)v2 serviceConnection];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __18__DRSService_init__block_invoke;
    v24[3] = &unk_27899F270;
    v25 = v2;
    objc_copyWeak(&v26, location);
    xpc_connection_set_event_handler(serviceConnection2, v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
LABEL_4:
    v20 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v20))
    {
      LOWORD(location[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceLaunch", &unk_232980861, location, 2u);
    }

    v21 = v2;
    goto LABEL_10;
  }

  v22 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v22))
  {
    LOWORD(location[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedServiceLaunch", "Could not create connection for mach service", location, 2u);
  }

  v21 = 0;
LABEL_10:

  return v21;
}

void __18__DRSService_init__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x23838A140]() == MEMORY[0x277D86450])
  {
    WeakRetained = [[DRSClientConnectionState alloc] initWithConnection:v3 service:*(a1 + 32)];
    v7 = [*(a1 + 32) _connectionHasEntitlement:v3];
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 _handleNewEntitledConnection:v3 state:WeakRetained];
    }

    else
    {
      [v8 _sendRejectionMessage:v3 rejectionReason:1 state:WeakRetained];
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    v9 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v9))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceConnectionInvalidated", &unk_232980861, &v13, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    WeakRetained->_hasAdminEntitlement = 2;
    v10 = [*(a1 + 32) serviceDeactivatedSem];
    dispatch_semaphore_signal(v10);

    goto LABEL_15;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    v12 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v12))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceConnectionInterrupted", &unk_232980861, &v13, 2u);
    }
  }

  else if (MEMORY[0x23838A140](v3) != MEMORY[0x277D86468])
  {
    v4 = MEMORY[0x238389FD0](v3);
    v5 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v5))
    {
      v13 = 136446210;
      v14 = v4;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMessageType", "Invalid message type unexpected: %{public}s", &v13, 0xCu);
    }

    if (v4)
    {
      free(v4);
    }
  }

LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveDampeningManagerErrorOut:(id *)out
{
  v15 = *MEMORY[0x277D85DE8];
  dampeningManager = [(DRSService *)self dampeningManager];
  v6 = [dampeningManager saveToPersistentContainerWithErrorOut:out];

  if (v6)
  {
    v7 = DPLogHandle_DampeningManager();
    if (os_signpost_enabled(v7))
    {
      dampeningManager2 = [(DRSService *)self dampeningManager];
      v9 = [dampeningManager2 debugDescription];
      v13 = 138543362;
      v14 = v9;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationUpdated", "Saved updated dampening configuration: %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    v7 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v7))
    {
      v10 = *out;
      v13 = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationSaveFailed", "Saving updated configuration failed due to error: %{public}@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_handleDampeningConfigurationGlobalEnablementMessage:(id)message state:(id)state transaction:(id)transaction
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v9 = xpc_dictionary_get_BOOL(messageCopy, "DampeningEnabled");
    v10 = DPLogHandle_ServiceXPC();
    if (os_signpost_enabled(v10))
    {
      stateDescription = [stateCopy stateDescription];
      v12 = stateDescription;
      v13 = @"Disabled";
      if (v9)
      {
        v13 = @"Enabled";
      }

      *buf = 138543618;
      v26 = stateDescription;
      v27 = 2114;
      v28 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationGlobalEnablement", "Accepting global enablement request from %{public}@. Dampening will be %{public}@", buf, 0x16u);
    }

    dampeningManager = [(DRSService *)self dampeningManager];
    enforcementSettings = [dampeningManager enforcementSettings];
    [enforcementSettings setAllEnforcement:v9];

    v24 = 0;
    LOBYTE(dampeningManager) = [(DRSService *)self _saveDampeningManagerErrorOut:&v24];
    v16 = v24;
    v17 = v16;
    if (dampeningManager)
    {
      [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:messageCopy];
    }

    else
    {
      localizedDescription = [v16 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      if (uTF8String)
      {
        v22 = uTF8String;
      }

      else
      {
        v22 = "Unknown save error";
      }

      [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:v22 requestMessage:messageCopy];
    }
  }

  else
  {
    v18 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v18))
    {
      stateDescription2 = [stateCopy stateDescription];
      *buf = 138543362;
      v26 = stateDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationGlobalEnablementRejected", "Rejecting global enablement request from %{public}@ due to missing entitlement", buf, 0xCu);
    }

    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Client missing entitlement" requestMessage:messageCopy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleDampeningConfigurationReset:(id)reset state:(id)state transaction:(id)transaction
{
  v63 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  stateCopy = state;
  transactionCopy = transaction;
  if ([stateCopy hasAdminEntitlement])
  {
    v11 = DPLogHandle_ServiceXPC();
    if (os_signpost_enabled(v11))
    {
      stateDescription = [stateCopy stateDescription];
      *buf = 138543362;
      *&buf[4] = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationReset", "Dampening configuration will be reset to defaults due to request from %{public}@", buf, 0xCu);
    }

    v13 = [DRSDampeningManager alloc];
    serviceContainer = [(DRSService *)self serviceContainer];
    deviceTeamConfigurationDirectory = [objc_opt_class() deviceTeamConfigurationDirectory];
    v16 = [(DRSDampeningManager *)v13 initWithPersistentContainer:serviceContainer teamConfigurationDirectory:deviceTeamConfigurationDirectory];
    dampeningManager = self->_dampeningManager;
    self->_dampeningManager = v16;

    serviceContainer2 = [(DRSService *)self serviceContainer];
    newBackgroundContext = [serviceContainer2 newBackgroundContext];

    dampeningManager = [(DRSService *)self dampeningManager];
    v58 = 0;
    v21 = [objc_opt_class() removeExistingDampeningManagerStateFromManagedObjectContext:newBackgroundContext errorOut:&v58];
    v22 = v58;

    if (v21)
    {

      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v57 = 1;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v60 = __Block_byref_object_copy__2;
      v61 = __Block_byref_object_dispose__2;
      v62 = 0;
      v46 = MEMORY[0x277D85DD0];
      v47 = 3221225472;
      v48 = __67__DRSService__handleDampeningConfigurationReset_state_transaction___block_invoke;
      v49 = &unk_27899F298;
      v52 = &v54;
      v50 = newBackgroundContext;
      v53 = buf;
      v51 = stateCopy;
      [v50 performBlockAndWait:&v46];
      v23 = *(*&buf[8] + 40);
      if (v23)
      {
        v24 = MEMORY[0x277CCACA8];
        localizedDescription = [v23 localizedDescription];
        v26 = localizedDescription;
        v27 = @"Unknown";
        if (localizedDescription)
        {
          v27 = localizedDescription;
        }

        v28 = [v24 stringWithFormat:@"Failed save dampening manager due to error: %@", v27, v46, v47, v48, v49, v50];

        v29 = *(v55 + 24);
        if (v28)
        {
          v30 = v28;
          uTF8String = [v28 UTF8String];
        }

        else
        {
          uTF8String = 0;
        }
      }

      else
      {
        v28 = 0;
        uTF8String = 0;
        v29 = *(v55 + 24);
      }

      [(DRSService *)self _sendAdminRequestReply:v29 & 1 rejectionReason:uTF8String requestMessage:resetCopy];

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v54, 8);
    }

    else
    {
      v34 = DPLogHandle_CoreDataError();
      if (os_signpost_enabled(v34))
      {
        stateDescription2 = [stateCopy stateDescription];
        localizedDescription2 = [v22 localizedDescription];
        v37 = localizedDescription2;
        if (localizedDescription2)
        {
          v38 = localizedDescription2;
        }

        else
        {
          v38 = @"Unknown";
        }

        *buf = 138543618;
        *&buf[4] = stateDescription2;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_signpost_emit_with_name_impl(&dword_232906000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationResetPersistenceFailure", "Failed to cleanup dampening manager state for reset request from %{public}@ due to error: %{public}@", buf, 0x16u);
      }

      v39 = MEMORY[0x277CCACA8];
      localizedDescription3 = [v22 localizedDescription];
      v41 = localizedDescription3;
      if (localizedDescription3)
      {
        v42 = localizedDescription3;
      }

      else
      {
        v42 = @"Unknown";
      }

      v43 = [v39 stringWithFormat:@"Failed to cleanup dampening manager state due to error: %@", v42];

      v44 = v43;
      -[DRSService _sendAdminRequestReply:rejectionReason:requestMessage:](self, "_sendAdminRequestReply:rejectionReason:requestMessage:", 0, [v43 UTF8String], resetCopy);
    }
  }

  else
  {
    v32 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v32))
    {
      stateDescription3 = [stateCopy stateDescription];
      *buf = 138543362;
      *&buf[4] = stateDescription3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationResetRejected", "Rejecting reset request from %{public}@ due to missing entitlement", buf, 0xCu);
    }

    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Client missing entitlement" requestMessage:resetCopy];
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __67__DRSService__handleDampeningConfigurationReset_state_transaction___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 save:&v12];
  v4 = v12;
  v5 = v12;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v6 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v6))
    {
      v7 = [*(a1 + 40) stateDescription];
      v8 = [*(*(*(a1 + 56) + 8) + 40) localizedDescription];
      v9 = v8;
      v10 = @"Unknown";
      if (v8)
      {
        v10 = v8;
      }

      *buf = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationResetPersistenceFailure", "Failed to save cleaned state for reset request from %{public}@ due to error: %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleDampeningConfigurationDictMessage:(id)message state:(id)state transaction:(id)transaction
{
  v65 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v9 = xpc_dictionary_get_value(messageCopy, "EnforceResourceHysteresis");

    if (v9)
    {
      v10 = xpc_dictionary_get_BOOL(messageCopy, "EnforceResourceHysteresis");
      dampeningManager = [(DRSService *)self dampeningManager];
      enforcementSettings = [dampeningManager enforcementSettings];
      [enforcementSettings setEnforcesResourceHysteresis:v10];
    }

    v13 = xpc_dictionary_get_value(messageCopy, "EnforceResourceCap");

    if (v13)
    {
      v14 = xpc_dictionary_get_BOOL(messageCopy, "EnforceResourceCap");
      dampeningManager2 = [(DRSService *)self dampeningManager];
      enforcementSettings2 = [dampeningManager2 enforcementSettings];
      [enforcementSettings2 setEnforcesResourceCap:v14];
    }

    v17 = xpc_dictionary_get_value(messageCopy, "EnforceResourceDownsampling");

    if (v17)
    {
      v18 = xpc_dictionary_get_BOOL(messageCopy, "EnforceResourceDownsampling");
      dampeningManager3 = [(DRSService *)self dampeningManager];
      enforcementSettings3 = [dampeningManager3 enforcementSettings];
      [enforcementSettings3 setEnforcesResourceDownsampling:v18];
    }

    v21 = xpc_dictionary_get_value(messageCopy, "EnforceSignatureHysteresis");

    if (v21)
    {
      v22 = xpc_dictionary_get_BOOL(messageCopy, "EnforceSignatureHysteresis");
      dampeningManager4 = [(DRSService *)self dampeningManager];
      enforcementSettings4 = [dampeningManager4 enforcementSettings];
      [enforcementSettings4 setEnforcesSignatureHysteresis:v22];
    }

    v25 = xpc_dictionary_get_value(messageCopy, "EnforceSignatureCap");

    if (v25)
    {
      v26 = xpc_dictionary_get_BOOL(messageCopy, "EnforceSignatureCap");
      dampeningManager5 = [(DRSService *)self dampeningManager];
      enforcementSettings5 = [dampeningManager5 enforcementSettings];
      [enforcementSettings5 setEnforcesSignatureCap:v26];
    }

    v29 = xpc_dictionary_get_value(messageCopy, "EnforceSignatureDownsampling");

    if (v29)
    {
      v30 = xpc_dictionary_get_BOOL(messageCopy, "EnforceSignatureDownsampling");
      dampeningManager6 = [(DRSService *)self dampeningManager];
      enforcementSettings6 = [dampeningManager6 enforcementSettings];
      [enforcementSettings6 setEnforcesSignatureDownsampling:v30];
    }

    v33 = xpc_dictionary_get_value(messageCopy, "EnforceTotalCap");

    if (v33)
    {
      v34 = xpc_dictionary_get_BOOL(messageCopy, "EnforceTotalCap");
      dampeningManager7 = [(DRSService *)self dampeningManager];
      enforcementSettings7 = [dampeningManager7 enforcementSettings];
      [enforcementSettings7 setEnforcesTotalCap:v34];
    }

    dampeningManager8 = [(DRSService *)self dampeningManager];
    defaultSignatureConfiguration = [dampeningManager8 defaultSignatureConfiguration];
    uint64 = [defaultSignatureConfiguration countCap];

    dampeningManager9 = [(DRSService *)self dampeningManager];
    defaultSignatureConfiguration2 = [dampeningManager9 defaultSignatureConfiguration];
    [defaultSignatureConfiguration2 hysteresis];
    v43 = v42;

    dampeningManager10 = [(DRSService *)self dampeningManager];
    defaultSignatureConfiguration3 = [dampeningManager10 defaultSignatureConfiguration];
    [defaultSignatureConfiguration3 acceptanceRate];
    v47 = v46;

    v48 = xpc_dictionary_get_value(messageCopy, "DefaultSignatureHysteresis");

    v49 = v48 != 0;
    if (v48)
    {
      v43 = xpc_dictionary_get_double(messageCopy, "DefaultSignatureHysteresis");
    }

    v50 = xpc_dictionary_get_value(messageCopy, "DefaultSignatureCap");

    if (v50)
    {
      uint64 = xpc_dictionary_get_uint64(messageCopy, "DefaultSignatureCap");
      v49 = 1;
    }

    v51 = xpc_dictionary_get_value(messageCopy, "AcceptanceRate");

    if (v51)
    {
      v47 = xpc_dictionary_get_double(messageCopy, "AcceptanceRate");
    }

    else if (!v49)
    {
      goto LABEL_26;
    }

    v54 = [[DRSDampeningConfiguration alloc] initWithHysteresis:uint64 cap:v43 acceptanceRate:v47];
    dampeningManager11 = [(DRSService *)self dampeningManager];
    [dampeningManager11 setDefaultSignatureConfiguration:v54];

LABEL_26:
    v62 = 0;
    v56 = [(DRSService *)self _saveDampeningManagerErrorOut:&v62];
    v57 = v62;
    v52 = v57;
    if (v56)
    {
      [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:messageCopy];
    }

    else
    {
      localizedDescription = [v57 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      if (uTF8String)
      {
        v60 = uTF8String;
      }

      else
      {
        v60 = "Unknown save error";
      }

      [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:v60 requestMessage:messageCopy];
    }

    goto LABEL_32;
  }

  v52 = DPLogHandle_ServiceXPCError();
  if (os_signpost_enabled(v52))
  {
    stateDescription = [stateCopy stateDescription];
    *buf = 138543362;
    v64 = stateDescription;
    _os_signpost_emit_with_name_impl(&dword_232906000, v52, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationDictionaryRejected", "Rejecting dampening configuration dictionary request from %{public}@ due to missing entitlement", buf, 0xCu);
  }

LABEL_32:

  v61 = *MEMORY[0x277D85DE8];
}

- (void)_handleRefreshDampeningConfigMessage:(id)message state:(id)state transaction:(id)transaction
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v9 = [DRSDampeningManager alloc];
    serviceContainer = [(DRSService *)self serviceContainer];
    deviceTeamConfigurationDirectory = [objc_opt_class() deviceTeamConfigurationDirectory];
    v12 = [(DRSDampeningManager *)v9 initWithPersistentContainer:serviceContainer teamConfigurationDirectory:deviceTeamConfigurationDirectory];

    if (v12)
    {
      objc_storeStrong(&self->_dampeningManager, v12);
      v13 = DPLogHandle_ServiceXPC();
      if (os_signpost_enabled(v13))
      {
        stateDescription = [stateCopy stateDescription];
        v22 = 138543362;
        v23 = stateDescription;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RefreshDampeningConfigurationSucceeded", "Request from %{public}@ succeeded", &v22, 0xCu);
      }

      selfCopy2 = self;
      v16 = 1;
      v17 = 0;
    }

    else
    {
      v19 = DPLogHandle_ServiceXPCError();
      if (os_signpost_enabled(v19))
      {
        stateDescription2 = [stateCopy stateDescription];
        v22 = 138543362;
        v23 = stateDescription2;
        _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RefreshDampeningConfigurationFailed", "Request from %{public}@ failed: we could not instantiate a new dampening manager...", &v22, 0xCu);
      }

      v17 = "Could not instantiate refreshed dampening manager";
      selfCopy2 = self;
      v16 = 0;
    }

    [(DRSService *)selfCopy2 _sendAdminRequestReply:v16 rejectionReason:v17 requestMessage:messageCopy];
  }

  else
  {
    v12 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v12))
    {
      stateDescription3 = [stateCopy stateDescription];
      v22 = 138543362;
      v23 = stateDescription3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RefreshDampeningConfigurationMessageRejected", "Rejecting refresh dampening configuration request from %{public}@ due to missing entitlement", &v22, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_addRequestToDAFileList:(id)list
{
  v18 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (![listCopy requestOutcome])
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    teamID = [listCopy teamID];
    issueCategory = [listCopy issueCategory];
    v7 = [v4 initWithFormat:@"DiagnosticRequest_%@_%@", teamID, issueCategory];

    v8 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_2847F1D58];

    v9 = [listCopy debugDescription];
    v15 = listCopy;
    v10 = v9;
    if (OSAWriteLogForSubmission())
    {
      v11 = DPLogHandle_DAReporting();
      if (os_signpost_enabled(v11))
      {
        *buf = 138543362;
        v17 = v10;
        v12 = "OSAWriteLogForSubmissionSuccess";
        v13 = "Wrote DA log using 'OSAWriteLogForSubmission' for %{public}@";
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      v11 = DPLogHandle_DAReportingError();
      if (os_signpost_enabled(v11))
      {
        *buf = 138543362;
        v17 = v10;
        v12 = "OSAWriteLogForSubmissionFailed";
        v13 = "Failed to write log using 'OSAWriteLogForSubmission' for %{public}@";
        goto LABEL_7;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __38__DRSService__addRequestToDAFileList___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) jsonCompatibleDictionaryRepresentationVerbose:1];
  v13 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:&v13];
  v6 = v13;
  if (v5)
  {
    [v3 writeData:v5];
  }

  else
  {
    v7 = DPLogHandle_DAReportingError();
    if (os_signpost_enabled(v7))
    {
      v8 = *(a1 + 40);
      v9 = [v6 localizedDescription];
      v10 = v9;
      v11 = @"Unknown";
      if (v9)
      {
        v11 = v9;
      }

      *buf = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "JSONSerializationFailure", "Failed to serialize %{public}@ due to: %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_postReceiptProcessingWork:(id)work
{
  v39 = *MEMORY[0x277D85DE8];
  workCopy = work;
  serviceContainer = [(DRSService *)self serviceContainer];
  newBackgroundContext = [serviceContainer newBackgroundContext];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__DRSService__postReceiptProcessingWork___block_invoke;
  v20[3] = &unk_27899ED80;
  v7 = workCopy;
  v21 = v7;
  v8 = newBackgroundContext;
  v22 = v8;
  v23 = &v25;
  v24 = &v29;
  [v8 performBlockAndWait:v20];
  if (v26[3])
  {
    v9 = DPLogHandle_CoreData();
    if (os_signpost_enabled(v9))
    {
      v10 = [v7 debugDescription];
      *buf = 138543362;
      v36 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestRecordSave", "Saved request %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v9 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v9))
    {
      v11 = [v7 debugDescription];
      localizedDescription = [v30[5] localizedDescription];
      v13 = localizedDescription;
      v14 = @"Unknown";
      if (localizedDescription)
      {
        v14 = localizedDescription;
      }

      *buf = 138412546;
      v36 = v11;
      v37 = 2114;
      v38 = v14;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestRecordSaveFailure", "Failed to save request %@ due to error: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  postReceiptWorkQueue = [(DRSService *)self postReceiptWorkQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__DRSService__postReceiptProcessingWork___block_invoke_97;
  v18[3] = &unk_27899F2E8;
  v18[4] = self;
  v19 = v7;
  v16 = v7;
  dispatch_async(postReceiptWorkQueue, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __41__DRSService__postReceiptProcessingWork___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateContextWithRequest_ON_MOC_QUEUE:*(a1 + 40)];
  v2 = *(a1 + 40);
  obj = 0;
  v3 = [v2 save:&obj];
  v4 = obj;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
}

uint64_t __41__DRSService__postReceiptProcessingWork___block_invoke_97(uint64_t a1)
{
  [*(a1 + 32) _addRequestToDAFileList:*(a1 + 40)];
  result = [*(a1 + 40) isExpedited];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _randomDelaySecWithCap:3600];

    return [v3 _registerPermissiveExpeditedUploadXPCActivity:v4];
  }

  return result;
}

- (void)_handleDRSRequestMessage:(id)message state:(id)state transaction:(id)transaction
{
  v38 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  v9 = [DRSRequest requestForMessage:messageCopy];
  v10 = v9;
  if (v9)
  {
    [v9 addAutomatedDeviceGroupContext];
    [v10 addHWModelContextMetadata];
    [v10 addIsLikelyCarryContextMetadata];
    fileDirectory = [objc_opt_class() fileDirectory];
    v12 = DPLogHandle_ServiceLifecycle();
    v13 = DPLogHandle_ServiceLifecycleError();
    DRSConfirmDirectoryIsInitialized(fileDirectory, v12, v13);

    uint64 = xpc_dictionary_get_uint64(messageCopy, "ClientMessageType");
    v15 = DPLogHandle_ServiceXPC();
    if (os_signpost_enabled(v15))
    {
      if (uint64 <= 3)
      {
        if (uint64 > 1)
        {
          if (uint64 == 2)
          {
            v16 = @"Log Donation request";
          }

          else
          {
            v16 = @"Enable Log Gathering request";
          }
        }

        else if (uint64)
        {
          if (uint64 == 1)
          {
            v16 = @"Tailspin request";
          }

          else
          {
LABEL_19:
            v16 = @"Unknown";
          }
        }

        else
        {
          v16 = @"Invalid";
        }
      }

      else
      {
        switch(uint64)
        {
          case 'd':
            v16 = @"Dampening Global Enablement";
            break;
          case 'e':
            v16 = @"Dampening Config Reset";
            break;
          case 'f':
            v16 = @"Dampening Configuration Dictionary";
            break;
          case 'g':
            v16 = @"CloudKit Work Trigger";
            break;
          case 'h':
            v16 = @"EnableLogGatheringRequest Result Injection";
            break;
          case 'i':
            v16 = @"Request Clean Trigger";
            break;
          case 'j':
            v16 = @"Refresh Dampening Configuration";
            break;
          case 'k':
            v16 = @"Update CK Config";
            break;
          case 'l':
            v16 = @"Get CK Config";
            break;
          case 'm':
            v16 = @"Reset CK Config";
            break;
          case 'n':
            v16 = @"Schedule Permissive Upload Message";
            break;
          case 'o':
            v16 = @"Cancel Scheduled Permissive Upload Message";
            break;
          case 'p':
            v16 = @"Get 'Ignore AutomatedDeviceGroup' setting";
            break;
          case 'q':
            v16 = @"Set 'Ignore AutomatedDeviceGroup' setting";
            break;
          case 'r':
            v16 = @"Get 'Upload Service Enabled' setting";
            break;
          case 's':
            v16 = @"Set 'Upload Service Enabled' setting";
            break;
          default:
            if (uint64 == 4)
            {
              v16 = @"Submit Log to CK Container request";
            }

            else
            {
              if (uint64 != 5)
              {
                goto LABEL_19;
              }

              v16 = @"RAPID Log Donation request";
            }

            break;
        }
      }

      stateDescription = [stateCopy stateDescription];
      teamID = [v10 teamID];
      issueCategory = [v10 issueCategory];
      issueDescription = [v10 issueDescription];
      v28 = 138413314;
      v29 = v16;
      v30 = 2114;
      v31 = stateDescription;
      v32 = 2114;
      v33 = teamID;
      v34 = 2114;
      v35 = issueCategory;
      v36 = 2114;
      v37 = issueDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRequest", "Received '%@' from client %{public}@: %{public, name=teamID}@/%{public, name=issueCategory}@/%{public, name=issueDescription}@", &v28, 0x34u);
    }

    if ([(DRSService *)self isEnabled])
    {
      dampeningManager = [(DRSService *)self dampeningManager];
      v24 = [dampeningManager dampeningOutcomeForRequest:v10];
    }

    else
    {
      v24 = 8;
    }

    fileDirectory2 = [objc_opt_class() fileDirectory];
    [v10 performOnReceiptWork:fileDirectory2 dampeningOutcome:v24];

    v17 = [v10 replyForMessage:messageCopy];
    if (v17)
    {
      v26 = xpc_dictionary_get_remote_connection(messageCopy);
      xpc_connection_send_message(v26, v17);
    }

    [(DRSService *)self _postReceiptProcessingWork:v10];
  }

  else
  {
    v17 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v17))
    {
      stateDescription2 = [stateCopy stateDescription];
      v28 = 138543362;
      v29 = stateDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidRequest", "Received invalid request from client %{public}@", &v28, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_finishReportingStatsSessionWithActivity:(id)activity withState:(int64_t)state transaction:(id)transaction endResultString:(id)string
{
  v15 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (activity)
  {
    activityCopy = activity;
    v10 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v10))
    {
      v11 = @"Success!";
      if (stringCopy)
      {
        v11 = stringCopy;
      }

      v13 = 138543362;
      v14 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudKitReportStatsXPCActivity", "Ended with reason: %{public}@", &v13, 0xCu);
    }

    xpc_activity_set_state(activityCopy, state);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_ckQueueDownstreamOnly_uploadInFlightWithTransaction:(id)transaction xpcActivity:(id)activity ckHelper:(id)helper isExpedited:(BOOL)expedited completionBlock:(id)block
{
  transactionCopy = transaction;
  activityCopy = activity;
  helperCopy = helper;
  blockCopy = block;
  uploadRequestLookupQueue = [(DRSService *)self uploadRequestLookupQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke;
  v21[3] = &unk_27899F338;
  expeditedCopy = expedited;
  v21[4] = self;
  v22 = activityCopy;
  v24 = helperCopy;
  v25 = blockCopy;
  v23 = transactionCopy;
  v17 = helperCopy;
  v18 = blockCopy;
  v19 = transactionCopy;
  v20 = activityCopy;
  dispatch_sync(uploadRequestLookupQueue, v21);
}

void __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v2))
  {
    if (*(a1 + 72))
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    *buf = 136315138;
    v45 = v3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ServiceCKUploadSession", "isExpedited = %s", buf, 0xCu);
  }

  v4 = [*(a1 + 32) serviceContainer];
  v5 = [v4 newBackgroundContext];

  if (kDABugTypeString_block_invoke_onceToken != -1)
  {
    __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_cold_1();
  }

  v6 = +[DRSRequest leastRecentDateFirstSortDescriptor];
  v7 = &kDABugTypeString_block_invoke_waitingForExpeditedUploadPredicate;
  if (!*(a1 + 72))
  {
    v7 = &kDABugTypeString_block_invoke_waitingForUploadPredicate;
  }

  v8 = *v7;
  v43 = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v41 = 0;
  v10 = [DRSRequest requestsForFilterPredicate:v8 context:v5 sortDescriptors:v9 fetchLimit:0 errorOut:&v41];
  v11 = v41;

  if (!v11)
  {
    if ([*(a1 + 32) isEnabled])
    {
      if (!v10)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = DPLogHandle_ServiceLifecycle();
      if (os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UploadSessionShortCircuit", "Short-circuiting upload since the upload service is not enabled", buf, 2u);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v18 = v10;
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v37 + 1) + 8 * i) updateToState:4103 errorDescription:0 errorOut:0];
          }

          v20 = [v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v20);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    if ([v10 count])
    {
      v23 = *(a1 + 56);
      v24 = *(a1 + 40);
      v25 = [*(a1 + 32) _remainingSessionUploadQuotaBytesWithContext:v5];
      v26 = [*(a1 + 32) serviceContainer];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_120;
      v30[3] = &unk_27899F310;
      v27 = *(a1 + 40);
      v28 = *(a1 + 32);
      v31 = v27;
      v32 = v28;
      v10 = v10;
      v33 = v10;
      v36 = *(a1 + 72);
      v34 = *(a1 + 48);
      v35 = *(a1 + 64);
      [v23 uploadRequests:v10 contactDecisionServer:1 xpcActivity:v24 remainingUploadQuota:v25 backingPersistentContainer:v26 completionHandler:v30];

      goto LABEL_30;
    }

LABEL_29:
    [*(a1 + 32) _finishUploadSessionWithActivity:*(a1 + 40) withState:5 isExpedited:*(a1 + 72) transaction:*(a1 + 48) completedSuccessfully:1 endResultString:@"Success (no outstanding requests)!" completionBlock:*(a1 + 64)];
    goto LABEL_30;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [v11 localizedDescription];
  v14 = v13;
  v15 = @"Unknown";
  if (v13)
  {
    v15 = v13;
  }

  v16 = [v12 stringWithFormat:@"Request fetch error: %@", v15];

  [*(a1 + 32) _finishUploadSessionWithActivity:*(a1 + 40) withState:5 isExpedited:*(a1 + 72) transaction:*(a1 + 48) completedSuccessfully:0 endResultString:v16 completionBlock:*(a1 + 64)];
LABEL_30:

  v29 = *MEMORY[0x277D85DE8];
}

void __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_103()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState == %llu", 1];
  v1 = kDABugTypeString_block_invoke_waitingForUploadPredicate;
  kDABugTypeString_block_invoke_waitingForUploadPredicate = v0;

  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState == %llu AND isExpedited == YES", 1];
  v3 = kDABugTypeString_block_invoke_waitingForExpeditedUploadPredicate;
  kDABugTypeString_block_invoke_waitingForExpeditedUploadPredicate = v2;
}

void __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_120(uint64_t a1, void *a2, void *a3, void *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v7 = *(a1 + 32);
  if (v7)
  {
    should_defer = xpc_activity_should_defer(v7);
    v9 = 5;
    if (should_defer)
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 5;
  }

  v44 = v9;
  v10 = [*(a1 + 40) serviceContainer];
  v11 = [v10 newBackgroundContext];

  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__2;
  v69 = __Block_byref_object_dispose__2;
  v70 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_2;
  v56[3] = &unk_27899ED80;
  v57 = *(a1 + 48);
  v58 = v11;
  v59 = &v61;
  v60 = &v65;
  v43 = v58;
  [v58 performBlockAndWait:v56];
  if (v62[3])
  {
    if (v47)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [v47 localizedDescription];
      v14 = v13;
      v15 = @"Unknown";
      if (v13)
      {
        v15 = v13;
      }

      v16 = [v12 stringWithFormat:@"Decision server error: %@", v15];
    }

    else
    {
      if (v46)
      {
        v17 = [@"CF error(s):\n" mutableCopy];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v26 = v46;
        v27 = [v26 countByEnumeratingWithState:&v52 objects:v72 count:16];
        if (v27)
        {
          v28 = *v53;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v53 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = [*(*(&v52 + 1) + 8 * i) localizedDescription];
              v31 = v30;
              if (v30)
              {
                v32 = v30;
              }

              else
              {
                v32 = @"Unknown";
              }

              [v17 appendFormat:@"%@\n", v32];
            }

            v27 = [v26 countByEnumeratingWithState:&v52 objects:v72 count:16];
          }

          while (v27);
        }
      }

      else
      {
        v17 = 0;
      }

      if (!v45)
      {
        goto LABEL_13;
      }

      v14 = [@"Upload error(s):\n" mutableCopy];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v35 = v45;
      v36 = [v35 countByEnumeratingWithState:&v48 objects:v71 count:16];
      if (v36)
      {
        v37 = *v49;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v49 != v37)
            {
              objc_enumerationMutation(v35);
            }

            v39 = [*(*(&v48 + 1) + 8 * j) localizedDescription];
            v40 = v39;
            if (v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = @"Unknown";
            }

            [v14 appendFormat:@"%@\n", v41];
          }

          v36 = [v35 countByEnumeratingWithState:&v48 objects:v71 count:16];
        }

        while (v36);
      }

      if (v17)
      {
        v42 = [v17 stringByAppendingString:v14];
        goto LABEL_12;
      }

      v16 = v14;
      v14 = v16;
    }

    v17 = v16;
LABEL_12:

LABEL_13:
    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = *(a1 + 72);
    v21 = *(a1 + 56);
    if (v17)
    {
      [v18 _finishUploadSessionWithActivity:v19 withState:v44 isExpedited:v20 transaction:v21 completedSuccessfully:0 endResultString:v17 completionBlock:*(a1 + 64)];
    }

    else
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully uploaded %llu requests!", objc_msgSend(*(a1 + 48), "count")];
      [v18 _finishUploadSessionWithActivity:v19 withState:v44 isExpedited:v20 transaction:v21 completedSuccessfully:1 endResultString:v33 completionBlock:*(a1 + 64)];
    }

    goto LABEL_31;
  }

  v22 = MEMORY[0x277CCACA8];
  v23 = [v66[5] localizedDescription];
  v24 = v23;
  v25 = @"Unknown";
  if (v23)
  {
    v25 = v23;
  }

  v17 = [v22 stringWithFormat:@"Request upload request state update error: %@", v25];

  [*(a1 + 40) _finishUploadSessionWithActivity:*(a1 + 32) withState:v44 isExpedited:*(a1 + 72) transaction:*(a1 + 56) completedSuccessfully:0 endResultString:v17 completionBlock:*(a1 + 64)];
LABEL_31:

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);

  v34 = *MEMORY[0x277D85DE8];
}

void __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * v6++) updateContextWithRequest_ON_MOC_QUEUE:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  obj = 0;
  v8 = [v7 save:&obj];
  v9 = obj;
  *(*(*(a1 + 48) + 8) + 24) = v8;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction:(id)transaction xpcActivity:(id)activity ckHelper:(id)helper followupWorkBlock:(id)block
{
  v34[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  activityCopy = activity;
  helperCopy = helper;
  blockCopy = block;
  v14 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", &unk_232980861, buf, 2u);
  }

  serviceContainer = [(DRSService *)self serviceContainer];
  newBackgroundContext = [serviceContainer newBackgroundContext];

  if (_ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock__onceToken != -1)
  {
    [DRSService _ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction:xpcActivity:ckHelper:followupWorkBlock:];
  }

  v17 = +[DRSEnableDataGatheringQuery leastRecentDateFirstSortDescriptor];
  v34[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];

  v31 = 0;
  v19 = [DRSEnableDataGatheringQuery enableDataGatheringQueriesForFilterPredicate:_ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock__outstandingQueryPredicate context:newBackgroundContext sortDescriptors:v18 fetchLimit:0 errorOut:&v31];
  v20 = v31;
  if (v20)
  {
    v21 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v21))
    {
      localizedDescription = [v20 localizedDescription];
      v23 = localizedDescription;
      v24 = @"Unknown";
      if (localizedDescription)
      {
        v24 = localizedDescription;
      }

      *buf = 138543362;
      v33 = v24;
      _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", "ERROR: Failed to look up outstanding queries due to error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v19 && [v19 count])
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke_146;
      v26[3] = &unk_27899F360;
      v26[4] = self;
      v27 = v19;
      v30 = blockCopy;
      v28 = transactionCopy;
      v29 = activityCopy;
      [helperCopy shouldEnableDataGathering:v27 xpcActivity:v29 replyHandler:v26];

      goto LABEL_17;
    }

    v21 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", "No outstanding queries so no need to contact decision server", buf, 2u);
    }
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, transactionCopy, activityCopy);
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
}

void __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"response == %llu", 2];
  v1 = _ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock__outstandingQueryPredicate;
  _ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock__outstandingQueryPredicate = v0;
}

void __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke_146(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) serviceContainer];
  v11 = [v10 newBackgroundContext];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke_2;
  v24 = &unk_27899ED80;
  v25 = *(a1 + 40);
  v12 = v11;
  v26 = v12;
  v27 = &v29;
  v28 = &v33;
  [v12 performBlockAndWait:&v21];
  if (v30[3])
  {
    v13 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v13))
    {
      v14 = [*(a1 + 40) count];
      *buf = 67109120;
      LODWORD(v40) = v14;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", "Successfully processed %u outstanding queries", buf, 8u);
    }
  }

  else
  {
    v13 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v13))
    {
      v15 = [v34[5] localizedDescription];
      v16 = v15;
      v17 = @"Unknown";
      if (v15)
      {
        v17 = v15;
      }

      *buf = 138543362;
      v40 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", "ERROR: Failed to save updated queries due to error: %{public}@", buf, 0xCu);
    }
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v19 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FollowUpBlockMissing", &unk_232980861, buf, 2u);
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  v20 = *MEMORY[0x277D85DE8];
}

void __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * v6++) updateContextWithDataGatheringQuery_ON_MOC_QUEUE:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  obj = 0;
  v8 = [v7 save:&obj];
  v9 = obj;
  *(*(*(a1 + 48) + 8) + 24) = v8;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
  v10 = *MEMORY[0x277D85DE8];
}

void __99__DRSService__runCloudKitUploadWorkSessionWithTransaction_xpcActivity_isExpedited_completionBlock___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__DRSService__runCloudKitUploadWorkSessionWithTransaction_xpcActivity_isExpedited_completionBlock___block_invoke_2;
  aBlock[3] = &unk_27899F388;
  aBlock[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v9 = *(a1 + 56);
  v2 = _Block_copy(aBlock);
  v3 = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (*(a1 + 64) == 1)
  {
    (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v6 ckHelper];
    [v6 _ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction:v4 xpcActivity:v5 ckHelper:v7 followupWorkBlock:v3];
  }
}

void __99__DRSService__runCloudKitUploadWorkSessionWithTransaction_xpcActivity_isExpedited_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && xpc_activity_should_defer(v5))
  {
    [*(a1 + 32) _finishUploadSessionWithActivity:v6 withState:3 isExpedited:*(a1 + 48) transaction:v9 completedSuccessfully:0 endResultString:@"Deferral before upload work" completionBlock:*(a1 + 40)];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v7 ckHelper];
    [v7 _ckQueueDownstreamOnly_uploadInFlightWithTransaction:v9 xpcActivity:v6 ckHelper:v8 isExpedited:*(a1 + 48) completionBlock:*(a1 + 40)];
  }
}

- (void)_runReportingSessionWithTransaction:(id)transaction xpcActivity:(id)activity
{
  transactionCopy = transaction;
  activityCopy = activity;
  v8 = activityCopy;
  if (activityCopy && !xpc_activity_set_state(activityCopy, 4))
  {
    [(DRSService *)self _finishReportingStatsSessionWithActivity:v8 withState:5 transaction:transactionCopy endResultString:@"Failed to mark activity as continued, so bailing on activity"];
  }

  else
  {
    cloudKitQueue = [(DRSService *)self cloudKitQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke;
    block[3] = &unk_27899F400;
    block[4] = self;
    v11 = v8;
    v12 = transactionCopy;
    dispatch_async(cloudKitQueue, block);
  }
}

void __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceContainer];
  v3 = [v2 newBackgroundContext];

  v13 = 0;
  v4 = [DRSRequest unreportedTerminalRequestsFromContext:v3 sortDescriptors:0 fetchLimit:0 errorOut:&v13];
  v5 = v13;
  v6 = [*(a1 + 32) ckHelper];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke_2;
  v9[3] = &unk_27899F3D8;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v4;
  [v6 reportTerminalRequestStats:v8 xpcActivity:v7 replyHandler:v9];
}

void __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [*(a1 + 40) count];
    v6 = [v3 localizedDescription];
    v7 = v6;
    v8 = @"Unknown";
    if (v6)
    {
      v8 = v6;
    }

    v9 = [v4 initWithFormat:@"Failed to report stats for %lu requests due to error: %@", v5, v8];

    [*(a1 + 32) _finishReportingStatsSessionWithActivity:*(a1 + 48) withState:5 transaction:*(a1 + 56) endResultString:v9];
  }

  else
  {
    v10 = [*(a1 + 32) serviceContainer];
    v11 = [v10 newBackgroundContext];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke_3;
    v13[3] = &unk_27899F2E8;
    v14 = *(a1 + 40);
    v15 = v11;
    v9 = v11;
    [v9 performBlockAndWait:v13];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Successfully reported stats for %lu requests", objc_msgSend(*(a1 + 40), "count")];
    [*(a1 + 32) _finishReportingStatsSessionWithActivity:*(a1 + 48) withState:5 transaction:*(a1 + 56) endResultString:v12];
  }
}

void __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke_3(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        [v7 setHasBeenCountedByTelemetry:1];
        [v7 updateContextWithRequest_ON_MOC_QUEUE:*(a1 + 40)];
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 40);
  v17 = 0;
  v9 = [v8 save:&v17];
  v10 = v17;
  if (v9)
  {
    v11 = DPLogHandle_CoreData();
    if (os_signpost_enabled(v11))
    {
      v12 = [*(a1 + 32) count];
      *buf = 134217984;
      v23 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReportRequestStatsSave", "Successfully reported stats for %lu records", buf, 0xCu);
    }
  }

  else
  {
    v11 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v11))
    {
      v13 = [v10 localizedDescription];
      v14 = v13;
      v15 = @"Unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138543362;
      v23 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReportRequestStatsSaveFailure", "Failed to save reported request stats to error: %{public}@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (double)_resolvedEnableDataGatheringQueryAcceptanceRate
{
  v2 = +[DRSSystemProfile sharedInstance];
  isInternal = [v2 isInternal];

  result = 1.0;
  if ((isInternal & 1) == 0)
  {
    v5 = +[DRSSystemProfile sharedInstance];
    isSeed = [v5 isSeed];

    result = 0.01;
    if (isSeed)
    {
      return 0.1;
    }
  }

  return result;
}

- (BOOL)_enableDataGatheringQueryPassesRandomRejection
{
  [(DRSService *)self _resolvedEnableDataGatheringQueryAcceptanceRate];

  return [DRSDampeningManager passesAcceptanceRate:?];
}

- (BOOL)_persistEnableLogGatheringResult:(id)result workingContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  contextCopy = context;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __62__DRSService__persistEnableLogGatheringResult_workingContext___block_invoke;
  v21 = &unk_27899ED80;
  v7 = resultCopy;
  v22 = v7;
  v8 = contextCopy;
  v23 = v8;
  v24 = &v26;
  v25 = &v30;
  [v8 performBlockAndWait:&v18];
  if (v27[3])
  {
    v9 = DPLogHandle_CoreData();
    if (os_signpost_enabled(v9))
    {
      v10 = [v7 debugDescription];
      *buf = 138543362;
      v37 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnableDataGatheringRecordSave", "Saved enable data gathering query %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v9 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v9))
    {
      v11 = [v7 debugDescription];
      localizedDescription = [v31[5] localizedDescription];
      v13 = localizedDescription;
      v14 = @"Unknown";
      if (localizedDescription)
      {
        v14 = localizedDescription;
      }

      *buf = 138543618;
      v37 = v11;
      v38 = 2114;
      v39 = v14;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnableDataGatheringRecordSaveFailure", "Failed to enable data gathering query %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }

  v15 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __62__DRSService__persistEnableLogGatheringResult_workingContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateContextWithDataGatheringQuery_ON_MOC_QUEUE:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (id)_cachedMatchingQuery:(id)query workingContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v18 = 0;
  v6 = [DRSEnableDataGatheringQuery cachedQueryResponseForQuery:queryCopy inContext:context errorOut:&v18];
  v7 = v18;
  if (!v7)
  {
    if (!v6)
    {
      v14 = DPLogHandle_CoreData();
      if (os_signpost_enabled(v14))
      {
        v15 = [queryCopy debugDescription];
        *buf = 138543362;
        v20 = v15;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CachedQueryResultNotFound", "No cached result for '%{public}@'", buf, 0xCu);
      }

      goto LABEL_13;
    }

LABEL_9:
    v13 = v6;
    goto LABEL_14;
  }

  v8 = DPLogHandle_CoreDataError();
  if (os_signpost_enabled(v8))
  {
    v9 = [queryCopy debugDescription];
    localizedDescription = [v7 localizedDescription];
    v11 = localizedDescription;
    v12 = @"Unknown";
    if (localizedDescription)
    {
      v12 = localizedDescription;
    }

    *buf = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v12;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CachedQueryResultFetchFailure", "Encountered failure when trying to fetch cached results for '%{public}@': %{public}@", buf, 0x16u);
  }

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_handleEnableLogGatheringRequest:(id)request state:(id)state transaction:(id)transaction
{
  v42 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  v9 = [[DRSEnableDataGatheringQuery alloc] initWithXPCDict:requestCopy];
  reply = xpc_dictionary_create_reply(requestCopy);
  v11 = reply;
  if (v9)
  {
    v12 = +[DRSSystemProfile sharedInstance];
    isLogUploadEnabled = [v12 isLogUploadEnabled];

    if (isLogUploadEnabled)
    {
      serviceContainer = [(DRSService *)self serviceContainer];
      newBackgroundContext = [serviceContainer newBackgroundContext];

      v16 = [(DRSService *)self _cachedMatchingQuery:v9 workingContext:newBackgroundContext];
      if (v16)
      {
        v17 = v16;
        if (![v16 response] || objc_msgSend(v17, "response") == 2)
        {
          v18 = DPLogHandle_CoreData();
          if (os_signpost_enabled(v18))
          {
            v19 = [(DRSEnableDataGatheringQuery *)v9 debugDescription];
            v20 = [v17 debugDescription];
            *buf = 138543618;
            v39 = v19;
            v40 = 2114;
            v41 = v20;
            _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReturningCachedQueryResult", "Returning cached result for enable query '%{public}@': %{public}@", buf, 0x16u);
          }

          xpc_dictionary_set_uint64(v11, "EnableLogGatheringQueryReply", [v17 response]);
          v21 = xpc_dictionary_get_remote_connection(requestCopy);
          xpc_connection_send_message(v21, v11);

LABEL_23:
          goto LABEL_24;
        }

        v29 = DPLogHandle_CoreData();
        if (os_signpost_enabled(v29))
        {
          v30 = [(DRSEnableDataGatheringQuery *)v9 debugDescription];
          v31 = [v17 debugDescription];
          *buf = 138412546;
          v39 = v30;
          v40 = 2114;
          v41 = v31;
          _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IgnoringCachedQueryYES", "Asking again for %@ (Ignoring cached YES result '%{public}@')", buf, 0x16u);
        }

        [(DRSEnableDataGatheringQuery *)v9 setIsContinue:1];
        xpc_dictionary_set_uint64(v11, "EnableLogGatheringQueryReply", [v17 response]);
        v32 = xpc_dictionary_get_remote_connection(requestCopy);
        xpc_connection_send_message(v32, v11);
      }

      else if (![(DRSService *)self _enableDataGatheringQueryPassesRandomRejection])
      {
        v26 = objc_alloc(MEMORY[0x277CCACA8]);
        [(DRSService *)self _resolvedEnableDataGatheringQueryAcceptanceRate];
        v17 = [v26 initWithFormat:@"Randomized rejection (%.2f%% acceptance rate)", v27 * 100.0];
        v28 = 0;
LABEL_20:
        [(DRSEnableDataGatheringQuery *)v9 setResponse:v28];
        [(DRSEnableDataGatheringQuery *)v9 setRejectionReason:v17];
        xpc_dictionary_set_uint64(v11, "EnableLogGatheringQueryReply", v28);
        v33 = xpc_dictionary_get_remote_connection(requestCopy);
        xpc_connection_send_message(v33, v11);

        v34 = DPLogHandle_ServiceXPC();
        if (os_signpost_enabled(v34))
        {
          v35 = [(DRSEnableDataGatheringQuery *)v9 debugDescription];
          stateDescription = [stateCopy stateDescription];
          *buf = 138412546;
          v39 = v35;
          v40 = 2114;
          v41 = stateDescription;
          _os_signpost_emit_with_name_impl(&dword_232906000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnableLogGatheringQueryReply", "Replied %@ to query from %{public}@", buf, 0x16u);
        }

        [(DRSService *)self _persistEnableLogGatheringResult:v9 workingContext:newBackgroundContext];
        goto LABEL_23;
      }

      v17 = 0;
      v28 = 2;
      goto LABEL_20;
    }

    xpc_dictionary_set_uint64(v11, "EnableLogGatheringQueryReply", 0);
    v25 = xpc_dictionary_get_remote_connection(requestCopy);
    xpc_connection_send_message(v25, v11);

    newBackgroundContext = DPLogHandle_EnableDataGatheringQuery();
    if (os_signpost_enabled(newBackgroundContext))
    {
      *buf = 0;
      v23 = "CustomerDoesNotApprove";
      v24 = "Rejecting enable data gathering query due to lack of customer approval";
      goto LABEL_13;
    }
  }

  else
  {
    xpc_dictionary_set_uint64(reply, "EnableLogGatheringQueryReply", 3uLL);
    v22 = xpc_dictionary_get_remote_connection(requestCopy);
    xpc_connection_send_message(v22, v11);

    newBackgroundContext = DPLogHandle_EnableDataGatheringQueryError();
    if (os_signpost_enabled(newBackgroundContext))
    {
      *buf = 0;
      v23 = "InvalidEnableDataGatheringQuery";
      v24 = "Rejecting enable data gathering query due to malformed message";
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_232906000, newBackgroundContext, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v23, v24, buf, 2u);
    }
  }

LABEL_24:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_sendAdminRequestReply:(BOOL)reply rejectionReason:(const char *)reason requestMessage:(id)message
{
  replyCopy = reply;
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  reply = xpc_dictionary_create_reply(messageCopy);
  xpc_dictionary_set_BOOL(reply, "AdminRequest_Reply", replyCopy);
  if (reason && !replyCopy)
  {
    xpc_dictionary_set_string(reply, "AdminRequest_RejectionReason", reason);
  }

  v9 = DPLogHandle_ClientXPC();
  if (os_signpost_enabled(v9))
  {
    v10 = "Rejected";
    if (replyCopy)
    {
      v10 = "Accepted";
    }

    reasonCopy = "Success!";
    if (reason)
    {
      reasonCopy = reason;
    }

    v14 = 136315394;
    v15 = v10;
    v16 = 2082;
    v17 = reasonCopy;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AdminRequestReply", "%s: %{public}s", &v14, 0x16u);
  }

  v12 = xpc_dictionary_get_remote_connection(messageCopy);

  xpc_connection_send_message(v12, reply);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_rejectInjectRequest:(id)request state:(id)state reason:(const char *)reason
{
  v16 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:reason requestMessage:request];
  v9 = DPLogHandle_ServiceXPCError();
  if (os_signpost_enabled(v9))
  {
    stateDescription = [stateCopy stateDescription];
    v12 = 138543618;
    v13 = stateDescription;
    v14 = 2080;
    reasonCopy = reason;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InjectEnableLogGatheringResultResult_Rejected", "Rejecting inject enable log gathering result request from %{public}@ due reason: %s", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleInjectEnableLogGatheringRequestResult:(id)result state:(id)state
{
  v31 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  stateCopy = state;
  if (([stateCopy hasAdminEntitlement] & 1) == 0)
  {
    v12 = "Missing required entitlement";
    goto LABEL_9;
  }

  v8 = +[DRSSystemProfile sharedInstance];
  isInternal = [v8 isInternal];

  if ((isInternal & 1) == 0)
  {
    v12 = "Device is running non-Internal build";
    goto LABEL_9;
  }

  v10 = xpc_dictionary_get_value(resultCopy, "InjectEnableLogGatheringQueryInjectedResult");

  if (!v10)
  {
    v12 = "Missing injected result parameter";
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(resultCopy, "InjectEnableLogGatheringQueryInjectedResult");
  if ((uint64 & 0xFE) != 0)
  {
    v12 = "Injected response is not a valid value";
LABEL_9:
    [(DRSService *)self _rejectInjectRequest:resultCopy state:stateCopy reason:v12];
    goto LABEL_10;
  }

  v14 = uint64;
  v15 = [[DRSEnableDataGatheringQuery alloc] initWithXPCDict:resultCopy];
  if (!v15)
  {
    v12 = "Malformed query parameters";
    goto LABEL_9;
  }

  v16 = v15;
  serviceContainer = [(DRSService *)self serviceContainer];
  newBackgroundContext = [serviceContainer newBackgroundContext];

  v19 = [(DRSService *)self _cachedMatchingQuery:v16 workingContext:newBackgroundContext];
  if (v19)
  {
    v20 = DPLogHandle_CoreData();
    if (os_signpost_enabled(v20))
    {
      v21 = [(DRSEnableDataGatheringQuery *)v16 debugDescription];
      v22 = [v19 debugDescription];
      v27 = 138543618;
      v28 = v21;
      v29 = 2114;
      v30 = v22;
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatingCachedQueryResultFound", "Updating cached result for '%{public}@': %{public}@", &v27, 0x16u);
    }

    v23 = v19;
    v16 = v23;
  }

  [(DRSEnableDataGatheringQuery *)v16 setResponse:v14];
  if ([(DRSEnableDataGatheringQuery *)v16 response]!= 1)
  {
    [(DRSEnableDataGatheringQuery *)v16 setRejectionReason:@"Injected response"];
  }

  if ([(DRSService *)self _persistEnableLogGatheringResult:v16 workingContext:newBackgroundContext])
  {
    v24 = DPLogHandle_ServiceXPC();
    if (os_signpost_enabled(v24))
    {
      stateDescription = [stateCopy stateDescription];
      v26 = [(DRSEnableDataGatheringQuery *)v16 debugDescription];
      v27 = 138543618;
      v28 = stateDescription;
      v29 = 2114;
      v30 = v26;
      _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InjectEnableLogGatheringResultResult_Accepted", "Accepted inject enable log gathering result request from %{public}@: %{public}@", &v27, 0x16u);
    }

    [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:resultCopy];
  }

  else
  {
    [(DRSService *)self _rejectInjectRequest:resultCopy state:stateCopy reason:"Failed to persist injected result"];
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleCKWorkTriggerRequest:(id)request state:(id)state transaction:(id)transaction
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  transactionCopy = transaction;
  if ([stateCopy hasAdminEntitlement])
  {
    v11 = xpc_dictionary_get_BOOL(requestCopy, "isExpedited");
    v12 = xpc_dictionary_get_BOOL(requestCopy, "isAsync");
    v13 = DPLogHandle_ServiceXPC();
    if (os_signpost_enabled(v13))
    {
      stateDescription = [stateCopy stateDescription];
      v15 = stateDescription;
      v16 = @"NO";
      if (v11)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      *buf = 138543874;
      v26 = stateDescription;
      v28 = v17;
      v27 = 2112;
      if (v12)
      {
        v16 = @"YES";
      }

      v29 = 2112;
      v30 = v16;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKWorkTrigger", "Triggering CK work due to request from %{public}@. Expedited:%@, Async:%@", buf, 0x20u);
    }

    if (v12)
    {
      [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:requestCopy];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__DRSService__handleCKWorkTriggerRequest_state_transaction___block_invoke;
    v21[3] = &unk_27899F428;
    v24 = v12;
    v21[4] = self;
    v22 = requestCopy;
    v23 = transactionCopy;
    [(DRSService *)self _runCloudKitUploadWorkSessionWithTransaction:v23 xpcActivity:0 isExpedited:v11 completionBlock:v21];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:requestCopy];
    v18 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v18))
    {
      stateDescription2 = [stateCopy stateDescription];
      *buf = 138543362;
      v26 = stateDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKWorkTriggerRejected", "Rejecting CK work trigger from %{public}@ due to missing entitlement", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __60__DRSService__handleCKWorkTriggerRequest_state_transaction___block_invoke(uint64_t result, uint64_t a2, id a3)
{
  if ((*(result + 56) & 1) == 0)
  {
    v5 = result;
    v6 = *(result + 32);
    v7 = [a3 UTF8String];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "Unknown rejection reason";
    }

    v9 = *(v5 + 40);

    return [v6 _sendAdminRequestReply:a2 rejectionReason:v8 requestMessage:v9];
  }

  return result;
}

- (void)_handleRequestCleanTrigger:(id)trigger state:(id)state
{
  v37 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = xpc_dictionary_get_BOOL(triggerCopy, "KeepRequestRecords");
    v9 = xpc_dictionary_get_BOOL(triggerCopy, "KeepRequestLogs");
    serviceContainer = [(DRSService *)self serviceContainer];
    v28 = 0;
    v11 = [DRSRequest cleanRequestRecordsFromPersistentContainer:serviceContainer removeFiles:!v9 removeRecord:!v8 matchingPredicate:0 errorOut:&v28];
    v12 = v28;

    if (v11)
    {
      v13 = DPLogHandle_ServiceXPC();
      if (os_signpost_enabled(v13))
      {
        if (v8)
        {
          v14 = "YES";
        }

        else
        {
          v14 = "NO";
        }

        if (v9)
        {
          v15 = "YES";
        }

        else
        {
          v15 = "NO";
        }

        stateDescription = [stateCopy stateDescription];
        *buf = 136446722;
        v30 = v14;
        v31 = 2082;
        v32 = v15;
        v33 = 2114;
        v34 = stateDescription;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestCleanTrigger_Success", "clean request records with 'KeepRecords' %{public}s ' KeepLogs' %{public}s from %{public}@ succeeded", buf, 0x20u);
      }

      [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:triggerCopy];
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      localizedDescription = [v12 localizedDescription];
      v20 = localizedDescription;
      v21 = @"Unknown";
      if (localizedDescription)
      {
        v21 = localizedDescription;
      }

      v22 = [v18 initWithFormat:@"Error encountered trying to clean records: %@", v21];

      -[DRSService _sendAdminRequestReply:rejectionReason:requestMessage:](self, "_sendAdminRequestReply:rejectionReason:requestMessage:", 0, [v22 UTF8String], triggerCopy);
      v23 = DPLogHandle_ServiceXPCError();
      if (os_signpost_enabled(v23))
      {
        if (v8)
        {
          v24 = "YES";
        }

        else
        {
          v24 = "NO";
        }

        if (v9)
        {
          v25 = "YES";
        }

        else
        {
          v25 = "NO";
        }

        stateDescription2 = [stateCopy stateDescription];
        *buf = 136446978;
        v30 = v24;
        v31 = 2082;
        v32 = v25;
        v33 = 2114;
        v34 = stateDescription2;
        v35 = 2114;
        v36 = v22;
        _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestCleanTrigger_Failed", "Failed to clean request records with 'KeepRecords' %{public}s ' KeepLogs' %{public}s from %{public}@ due reason: %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:triggerCopy];
    v12 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v12))
    {
      stateDescription3 = [stateCopy stateDescription];
      *buf = 138543362;
      v30 = stateDescription3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestCleanTrigger_Rejected", "Rejecting request to clean request records from %{public}@ due to missing entitlement", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_addCKConfigSettingsToReplyMessage:(id)message
{
  xdict = message;
  ckConfig = [(DRSService *)self ckConfig];
  v5 = [ckConfig containerEnvironment] == 1;

  ckConfig2 = [(DRSService *)self ckConfig];
  LOBYTE(ckConfig) = [ckConfig2 rapidEnvironment] == 1;

  xpc_dictionary_set_BOOL(xdict, "ContainerEnv", v5);
  xpc_dictionary_set_BOOL(xdict, "RapidEnv", ckConfig);
}

- (void)_replyToCKConfigMessageWithCurrentCKConfig:(id)config
{
  v20 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = _acceptingAdminReplyMessage(configCopy);
  ckConfig = [(DRSService *)self ckConfig];
  containerEnvironment = [ckConfig containerEnvironment];

  ckConfig2 = [(DRSService *)self ckConfig];
  rapidEnvironment = [ckConfig2 rapidEnvironment];

  xpc_dictionary_set_BOOL(v5, "ContainerEnv", containerEnvironment == 1);
  xpc_dictionary_set_BOOL(v5, "RapidEnv", rapidEnvironment == 1);
  ckConfig3 = [(DRSService *)self ckConfig];
  xpc_dictionary_set_BOOL(v5, "OverridesDefault", [ckConfig3 overridesDefault]);

  v11 = DPLogHandle_ClientXPC();
  if (os_signpost_enabled(v11))
  {
    v12 = "Sandbox";
    if (containerEnvironment == 1)
    {
      v13 = "Prod";
    }

    else
    {
      v13 = "Sandbox";
    }

    if (rapidEnvironment == 1)
    {
      v12 = "Prod";
    }

    v16 = 136446466;
    v17 = v13;
    v18 = 2082;
    v19 = v12;
    _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigRequestReply", "Container environment: %{public}s, RAPID environment: %{public}s", &v16, 0x16u);
  }

  v14 = xpc_dictionary_get_remote_connection(configCopy);

  xpc_connection_send_message(v14, v5);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)_updateCKConfig:(id)config
{
  configCopy = config;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  cloudKitQueue = [(DRSService *)self cloudKitQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DRSService__updateCKConfig___block_invoke;
  block[3] = &unk_27899EDA8;
  block[4] = self;
  v10 = configCopy;
  v11 = &v12;
  v6 = configCopy;
  dispatch_sync(cloudKitQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __30__DRSService__updateCKConfig___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
  v2 = [*(a1 + 32) ckConfig];
  v3 = [DRSCloudKitHelper helperForCKConfig:v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  *(v4 + 112) = v3;

  v6 = [*(a1 + 32) ckConfigStore];

  if (v6)
  {
    v7 = [*(a1 + 32) ckConfigStore];
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 8);
    obj = *(v9 + 40);
    v10 = [v7 saveConfig:v8 errorOut:&obj];
    objc_storeStrong((v9 + 40), obj);

    if (v10)
    {
      v11 = DPLogHandle_ServiceXPC();
      if (os_signpost_enabled(v11))
      {
        v12 = [*(a1 + 32) ckConfig];
        v13 = [v12 debugDescription];
        *buf = 138543362;
        v19 = v13;
        _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceCKConfigUpdated", "Service CK Config updated to: %{public}@", buf, 0xCu);

LABEL_9:
      }
    }

    else
    {
      v11 = DPLogHandle_ServiceXPCError();
      if (os_signpost_enabled(v11))
      {
        v14 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
        v12 = v14;
        v15 = @"Unknown";
        if (v14)
        {
          v15 = v14;
        }

        *buf = 138543362;
        v19 = v15;
        _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceCKConfigUpdate_Failed", "Service CK Config failed to update due to reason: %{public}@", buf, 0xCu);
        goto LABEL_9;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleCKConfigUpdate:(id)update state:(id)state
{
  v34 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = xpc_dictionary_get_BOOL(updateCopy, "ContainerEnv");
    v9 = xpc_dictionary_get_BOOL(updateCopy, "RapidEnv");
    v10 = v9;
    if (v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = DPLogHandle_ServiceXPC();
    if (os_signpost_enabled(v13))
    {
      stateDescription = [stateCopy stateDescription];
      v15 = stateDescription;
      v16 = "Sandbox";
      if (v8)
      {
        v17 = "Prod";
      }

      else
      {
        v17 = "Sandbox";
      }

      *v32 = 138543874;
      *&v32[4] = stateDescription;
      *&v32[12] = 2082;
      *&v32[14] = v17;
      if (v10)
      {
        v16 = "Prod";
      }

      *&v32[22] = 2082;
      v33 = v16;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigUpdate_Status", "Client %{public}@ requesting: Container environment: %{public}s, RAPID environment: %{public}s", v32, 0x20u);
    }

    ckConfig = [(DRSService *)self ckConfig];
    if ([ckConfig containerEnvironment] == v11)
    {
      ckConfig2 = [(DRSService *)self ckConfig];
      rapidEnvironment = [ckConfig2 rapidEnvironment];

      if (rapidEnvironment == v12)
      {
        v21 = DPLogHandle_ServiceXPC();
        if (os_signpost_enabled(v21))
        {
          stateDescription2 = [stateCopy stateDescription];
          *v32 = 138543362;
          *&v32[4] = stateDescription2;
          _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigUpdate_AlreadySet", "Config is already what client %{public}@ is asking for", v32, 0xCu);
        }

        [(DRSService *)self _replyToCKConfigMessageWithCurrentCKConfig:updateCopy];
        goto LABEL_31;
      }
    }

    else
    {
    }

    v25 = [[DRSCKConfig alloc] initWithContainerEnvironment:v11 rapidEnvironment:v12 overridesDefault:1];
    v26 = [(DRSService *)self _updateCKConfig:v25];
    v27 = v26;
    if (v26)
    {
      localizedDescription = [v26 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      if (uTF8String)
      {
        v30 = uTF8String;
      }

      else
      {
        v30 = "Unknown";
      }

      [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:v30 requestMessage:updateCopy, *v32, *&v32[16]];
    }

    else
    {
      [(DRSService *)self _replyToCKConfigMessageWithCurrentCKConfig:updateCopy];
    }
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:updateCopy];
    v23 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v23))
    {
      stateDescription3 = [stateCopy stateDescription];
      *v32 = 138543362;
      *&v32[4] = stateDescription3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigUpdate_Rejected", "Rejecting request to update CK config %{public}@ due to missing entitlement", v32, 0xCu);
    }
  }

LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_handleGetCKConfig:(id)config state:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  configCopy = config;
  if ([stateCopy hasAdminEntitlement])
  {
    [(DRSService *)self _replyToCKConfigMessageWithCurrentCKConfig:configCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:configCopy];

    configCopy = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(configCopy))
    {
      stateDescription = [stateCopy stateDescription];
      v10 = 138543362;
      v11 = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, configCopy, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetCKConfig_Rejected", "Rejecting request for current CK config %{public}@ due to missing entitlement", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleResetCKConfig:(id)config state:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  configCopy = config;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = +[DRSCKConfig defaultConfig];
    v9 = [(DRSService *)self _updateCKConfig:v8];

    if (v9)
    {
      localizedDescription = [v9 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      if (uTF8String)
      {
        v12 = uTF8String;
      }

      else
      {
        v12 = "Unknown";
      }

      [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:v12 requestMessage:configCopy];
    }

    else
    {
      [(DRSService *)self _replyToCKConfigMessageWithCurrentCKConfig:configCopy];
    }
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:configCopy];
    v13 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v13))
    {
      stateDescription = [stateCopy stateDescription];
      v16 = 138543362;
      v17 = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResetCKConfig_Rejected", "Rejecting request to reset CK config %{public}@ due to missing entitlement", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleUploadSchedulingRequest:(id)request state:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    [(DRSService *)self _registerPermissiveExpeditedUploadXPCActivity:xpc_dictionary_get_uint64(requestCopy, "delaySeconds")];
    [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:requestCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:requestCopy];
    v8 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v8))
    {
      stateDescription = [stateCopy stateDescription];
      v11 = 138543362;
      v12 = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadSchedulingRequest_Rejected", "Rejecting request to schedule a more permissive expedited upload from %{public}@ due to missing entitlement", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleCancelScheduledUploadRequest:(id)request state:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = DPLogHandle_PermissiveUploadActivity();
    if (os_signpost_enabled(v8))
    {
      stateDescription = [stateCopy stateDescription];
      v13 = 138543362;
      v14 = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelScheduledUploadRequest", "Cancelling scheduled permissive expedited upload due to request from %{public}@", &v13, 0xCu);
    }

    [(DRSService *)self _unregisterPermissiveExpeditedUploadXPCActivity];
    [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:requestCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:requestCopy];
    v10 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v10))
    {
      stateDescription2 = [stateCopy stateDescription];
      v13 = 138543362;
      v14 = stateDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelScheduledUploadRequest_Rejected", "Rejecting request to cancel scheduled permissive expedited upload from %{public}@ due to missing entitlement", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_sendCurrentIgnoreADGReply:(id)reply state:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v6 = _acceptingAdminReplyMessage(replyCopy);
  ignoreAutomatedDeviceGroup = [(DRSService *)self ignoreAutomatedDeviceGroup];

  if (ignoreAutomatedDeviceGroup)
  {
    ignoreAutomatedDeviceGroup2 = [(DRSService *)self ignoreAutomatedDeviceGroup];
    xpc_dictionary_set_BOOL(v6, "IgnoreADGValue", [ignoreAutomatedDeviceGroup2 BOOLValue]);
  }

  v9 = DPLogHandle_ClientXPC();
  if (os_signpost_enabled(v9))
  {
    ignoreAutomatedDeviceGroup3 = [(DRSService *)self ignoreAutomatedDeviceGroup];
    v11 = ignoreAutomatedDeviceGroup3;
    v12 = @"<none>";
    if (ignoreAutomatedDeviceGroup3)
    {
      v12 = ignoreAutomatedDeviceGroup3;
    }

    v15 = 138543362;
    v16 = v12;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IgnoreADGRequestReply", "Current value: %{public}@", &v15, 0xCu);
  }

  v13 = xpc_dictionary_get_remote_connection(replyCopy);

  xpc_connection_send_message(v13, v6);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleGetIgnoreADG:(id)g state:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  gCopy = g;
  if ([stateCopy hasAdminEntitlement])
  {
    [(DRSService *)self _sendCurrentIgnoreADGReply:gCopy state:stateCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:gCopy];

    gCopy = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(gCopy))
    {
      v9[0] = 67109120;
      v9[1] = [stateCopy pid];
      _os_signpost_emit_with_name_impl(&dword_232906000, gCopy, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetIgnoreADG_Rejected", "Rejecting request for current 'Ignore AutomatedDeviceGroup' setting [%d] due to missing entitlement", v9, 8u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetIgnoreADG:(id)g state:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  gCopy = g;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = xpc_dictionary_get_value(gCopy, "IgnoreADGValue");

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{xpc_dictionary_get_BOOL(gCopy, "IgnoreADGValue")}];
    }

    else
    {
      v9 = 0;
    }

    [(DRSService *)self setIgnoreAutomatedDeviceGroup:v9];
    [(DRSService *)self _sendCurrentIgnoreADGReply:gCopy state:stateCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:gCopy];
    v10 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v10))
    {
      v12[0] = 67109120;
      v12[1] = [stateCopy pid];
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetIgnoreADG_Rejected", "Rejecting request to update 'Ignore AutomatedDeviceGroup' setting [%d] due to missing entitlement", v12, 8u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendCurrentUploadServiceEnabledReply:(id)reply state:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v6 = _acceptingAdminReplyMessage(replyCopy);
  xpc_dictionary_set_BOOL(v6, "UploadServiceEnabled", [(DRSService *)self isEnabled]);
  isEnabledOverride = [(DRSService *)self isEnabledOverride];
  xpc_dictionary_set_BOOL(v6, "HasOverride", isEnabledOverride != 0);

  v8 = DPLogHandle_ClientXPC();
  if (os_signpost_enabled(v8))
  {
    isEnabled = [(DRSService *)self isEnabled];
    v10 = @"Disabled";
    if (isEnabled)
    {
      v10 = @"Enabled";
    }

    v13 = 138543362;
    v14 = v10;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadServiceEnabledRequestReply", "Current value: %{public}@", &v13, 0xCu);
  }

  v11 = xpc_dictionary_get_remote_connection(replyCopy);

  xpc_connection_send_message(v11, v6);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleGetUploadServiceEnabled:(id)enabled state:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  enabledCopy = enabled;
  if ([stateCopy hasAdminEntitlement])
  {
    [(DRSService *)self _sendCurrentUploadServiceEnabledReply:enabledCopy state:stateCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:enabledCopy];

    enabledCopy = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(enabledCopy))
    {
      v9[0] = 67109120;
      v9[1] = [stateCopy pid];
      _os_signpost_emit_with_name_impl(&dword_232906000, enabledCopy, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetUploadServiceEnabled_Rejected", "Rejecting request for current 'Upload Service Enabled' setting [%d] due to missing entitlement", v9, 8u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetUploadServiceEnabled:(id)enabled state:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = xpc_dictionary_get_value(enabledCopy, "UploadServiceEnabled");

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{xpc_dictionary_get_BOOL(enabledCopy, "UploadServiceEnabled")}];
    }

    else
    {
      v9 = 0;
    }

    [(DRSService *)self setIsEnabledOverride:v9];
    [(DRSService *)self _sendCurrentUploadServiceEnabledReply:enabledCopy state:stateCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:enabledCopy];
    v10 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v10))
    {
      v12[0] = 67109120;
      v12[1] = [stateCopy pid];
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetUploadServiceEnablement", "Rejecting request for current 'Upload Service Enabled' setting [%d] due to missing entitlement", v12, 8u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleRequest:(id)request state:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  v8 = objc_autoreleasePoolPush();
  v9 = os_transaction_create();
  uint64 = xpc_dictionary_get_uint64(requestCopy, "ClientMessageType");
  switch(uint64)
  {
    case 'd':
      [(DRSService *)self _handleDampeningConfigurationGlobalEnablementMessage:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'e':
      [(DRSService *)self _handleDampeningConfigurationReset:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'f':
      [(DRSService *)self _handleDampeningConfigurationDictMessage:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'g':
      [(DRSService *)self _handleCKWorkTriggerRequest:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'h':
      [(DRSService *)self _handleInjectEnableLogGatheringRequestResult:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'i':
      [(DRSService *)self _handleRequestCleanTrigger:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'j':
      [(DRSService *)self _handleRefreshDampeningConfigMessage:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'k':
      [(DRSService *)self _handleCKConfigUpdate:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'l':
      [(DRSService *)self _handleGetCKConfig:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'm':
      [(DRSService *)self _handleResetCKConfig:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'n':
      [(DRSService *)self _handleUploadSchedulingRequest:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'o':
      [(DRSService *)self _handleCancelScheduledUploadRequest:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'p':
      [(DRSService *)self _handleGetIgnoreADG:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'q':
      [(DRSService *)self _handleSetIgnoreADG:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'r':
      [(DRSService *)self _handleGetUploadServiceEnabled:requestCopy state:stateCopy];
      goto LABEL_26;
    case 's':
      [(DRSService *)self _handleSetUploadServiceEnabled:requestCopy state:stateCopy];
      goto LABEL_26;
    default:
      v11 = uint64;
      if (uint64 > 5)
      {
        goto LABEL_9;
      }

      if (((1 << uint64) & 0x36) != 0)
      {
        [(DRSService *)self _handleDRSRequestMessage:requestCopy state:stateCopy transaction:v9];
      }

      else if (uint64 == 3)
      {
        [(DRSService *)self _handleEnableLogGatheringRequest:requestCopy state:stateCopy transaction:v9];
      }

      else
      {
LABEL_9:
        v12 = DPLogHandle_ServiceXPCError();
        if (os_signpost_enabled(v12))
        {
          stateDescription = [stateCopy stateDescription];
          v15 = 134349314;
          v16 = v11;
          v17 = 2114;
          v18 = stateDescription;
          _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnknownRequest", "Received unknown request %{public}llu from client %{public}@", &v15, 0x16u);
        }
      }

LABEL_26:

      objc_autoreleasePoolPop(v8);
      v14 = *MEMORY[0x277D85DE8];
      return;
  }
}

- (void)_handleNewEntitledConnection:(id)connection state:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  connectionCopy = connection;
  [(DRSService *)self _waitForDeviceUnlockAndInitializeServiceState];
  v8 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v8))
  {
    stateDescription = [stateCopy stateDescription];
    v11 = 138543362;
    v12 = stateDescription;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewClientConnection", "New connection from client %{public}@", &v11, 0xCu);
  }

  [(DRSService *)self _sendCurrentConfigurationToConnection:connectionCopy];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)activateService
{
  [(DRSService *)self _configureXPCActivities];
  messageQueue = [(DRSService *)self messageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DRSService_activateService__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  dispatch_sync(messageQueue, block);

  return 1;
}

void __29__DRSService_activateService__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = DPLogHandle_ServiceLifecycle();
  v4 = os_signpost_enabled(v3);
  if (v2)
  {
    if (v4)
    {
      v5 = DRSStringForServiceState([*(a1 + 32) state]);
      v7 = 138543362;
      v8 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RedundantServiceActivation", "Tried to activate while in state: %{public}@", &v7, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceActivation", &unk_232980861, &v7, 2u);
    }

    v3 = [*(a1 + 32) serviceConnection];
    xpc_connection_activate(v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deactivateService
{
  if ([(DRSService *)self state]== 2)
  {
    v3 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v3))
    {
      v9 = 0;
      v4 = "RedundantServiceDeactivation";
      v5 = "Tried to deactivate already deactivated service";
      v6 = &v9;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v4, v5, v6, 2u);
    }
  }

  else
  {
    self->_state = 2;
    serviceConnection = [(DRSService *)self serviceConnection];
    xpc_connection_cancel(serviceConnection);

    v3 = DPLogHandle_ServiceLifecycle();
    if (os_signpost_enabled(v3))
    {
      v8 = 0;
      v4 = "ServiceDeactivated";
      v5 = &unk_232980861;
      v6 = &v8;
      goto LABEL_6;
    }
  }
}

- (void)dealloc
{
  [(DRSService *)self deactivateService];
  v3.receiver = self;
  v3.super_class = DRSService;
  [(DRSService *)&v3 dealloc];
}

- (void)_configureXPCActivities
{
  [(DRSService *)self _configureUploadXPCActivity];
  [(DRSService *)self _configureExpeditedUploadXPCActivity];
  [(DRSService *)self _configureBackstopUploadXPCActivity];

  [(DRSService *)self _configureReportStatsXPCActivity];
}

- (void)_configureUploadXPCActivity
{
  v3 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfiguringUploadXPCActivity", &unk_232980861, buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41__DRSService__configureUploadXPCActivity__block_invoke;
  handler[3] = &unk_27899EF70;
  handler[4] = self;
  xpc_activity_register("com.apple.diagnosticpipeline.cloudkit_activity", v4, handler);
}

void __41__DRSService__configureUploadXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v6 = state;
    if (state)
    {
      v7 = DPLogHandle_ServiceLifecycle();
      if (os_signpost_enabled(v7))
      {
        *buf = 134217984;
        v17 = v6;
        v8 = "CloudKitXPCActivityUnknownState";
        v9 = "Unknown XPC activity state %ld";
        v10 = v7;
        v11 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v7 = DPLogHandle_ServiceLifecycle();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        v8 = "UploadXPCActivityCheckIn";
        v9 = &unk_232980861;
        v10 = v7;
        v11 = 2;
LABEL_12:
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, v11);
      }
    }

    goto LABEL_17;
  }

  [*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState];
  v12 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudKitUploadXPCActivity", &unk_232980861, buf, 2u);
  }

  if ([*(a1 + 32) isEnabled])
  {
    should_defer = xpc_activity_should_defer(v3);
    v14 = *(a1 + 32);
    if (should_defer)
    {
      [v14 _finishUploadSessionWithActivity:v3 withState:3 isExpedited:0 transaction:v4 completedSuccessfully:0 endResultString:@"Immediate deferral" completionBlock:0];
    }

    else
    {
      [v14 _unregisterPermissiveExpeditedUploadXPCActivity];
      [*(a1 + 32) _runCloudKitUploadWorkSessionWithTransaction:v4 xpcActivity:v3 isExpedited:0 completionBlock:0];
    }
  }

  else
  {
    [*(a1 + 32) _finishUploadSessionWithActivity:v3 withState:5 isExpedited:0 transaction:v4 completedSuccessfully:0 endResultString:@"Service is disabled" completionBlock:0];
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_configureExpeditedUploadXPCActivity
{
  v3 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfiguringExpeditedUploadXPCActivity", &unk_232980861, buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__DRSService__configureExpeditedUploadXPCActivity__block_invoke;
  handler[3] = &unk_27899EF70;
  handler[4] = self;
  xpc_activity_register("com.apple.diagnosticpipeline.cloudkit_expedited_upload", v4, handler);
}

void __50__DRSService__configureExpeditedUploadXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v6 = state;
    if (state)
    {
      v7 = DPLogHandle_ServiceLifecycle();
      if (os_signpost_enabled(v7))
      {
        *buf = 134217984;
        v17 = v6;
        v8 = "ExpeditedCloudKitXPCActivityUnknownState";
        v9 = "Unknown XPC activity state %ld";
        v10 = v7;
        v11 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v7 = DPLogHandle_ServiceLifecycle();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        v8 = "ExpeditedUploadXPCActivityCheckIn";
        v9 = &unk_232980861;
        v10 = v7;
        v11 = 2;
LABEL_12:
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, v11);
      }
    }

    goto LABEL_17;
  }

  [*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState];
  v12 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudKitExpeditedUploadXPCActivity", &unk_232980861, buf, 2u);
  }

  if ([*(a1 + 32) isEnabled])
  {
    should_defer = xpc_activity_should_defer(v3);
    v14 = *(a1 + 32);
    if (should_defer)
    {
      [v14 _finishUploadSessionWithActivity:v3 withState:3 isExpedited:1 transaction:v4 completedSuccessfully:0 endResultString:@"Immediate deferral" completionBlock:0];
    }

    else
    {
      [v14 _unregisterPermissiveExpeditedUploadXPCActivity];
      [*(a1 + 32) _runCloudKitUploadWorkSessionWithTransaction:v4 xpcActivity:v3 isExpedited:1 completionBlock:0];
    }
  }

  else
  {
    [*(a1 + 32) _finishUploadSessionWithActivity:v3 withState:5 isExpedited:1 transaction:v4 completedSuccessfully:0 endResultString:@"Service is disabled" completionBlock:0];
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_permissiveXPCActivitCriteriaDict:(unsigned int)dict
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86320], 20971520);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], dict);

  return v4;
}

- (void)_unregisterPermissiveExpeditedUploadXPCActivity
{
  v2 = DPLogHandle_PermissiveUploadActivity();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelScheduledUploadActivity", &unk_232980861, v3, 2u);
  }

  xpc_activity_unregister("com.apple.diagnosticpipeline.cloudkit_permissive_upload");
}

- (void)_registerPermissiveExpeditedUploadXPCActivity:(unsigned int)activity
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = DPLogHandle_PermissiveUploadActivity();
  if (os_signpost_enabled(v5))
  {
    *buf = 67240192;
    activityCopy = activity;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SchedulingPermissiveExpeditedUploadXPCActivity", "%{public, name=delaySeconds}u second(s) delay", buf, 8u);
  }

  v6 = *MEMORY[0x277D86238];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__DRSService__registerPermissiveExpeditedUploadXPCActivity___block_invoke;
  v8[3] = &unk_27899F478;
  v8[4] = self;
  activityCopy2 = activity;
  xpc_activity_register("com.apple.diagnosticpipeline.cloudkit_permissive_upload", v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__DRSService__registerPermissiveExpeditedUploadXPCActivity___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  if (state)
  {
    v6 = state;
    if (state == 2)
    {
      v7 = DPLogHandle_PermissiveUploadActivity();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RunPermissiveUploadActivity", &unk_232980861, buf, 2u);
      }

      [*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState];
      v8 = DPLogHandle_ServiceLifecycle();
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudKitExpeditedUploadXPCActivitySingleton permissive expedited upload activity", &unk_232980861, buf, 2u);
      }

      if ([*(a1 + 32) isEnabled])
      {
        should_defer = xpc_activity_should_defer(v3);
        v10 = *(a1 + 32);
        if (should_defer)
        {
          [v10 _finishUploadSessionWithActivity:v3 withState:3 isExpedited:1 transaction:v4 completedSuccessfully:0 endResultString:@"Immediate deferral" completionBlock:0];
        }

        else
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __60__DRSService__registerPermissiveExpeditedUploadXPCActivity___block_invoke_208;
          v17[3] = &unk_27899F450;
          v17[4] = v10;
          [v10 _runCloudKitUploadWorkSessionWithTransaction:v4 xpcActivity:v3 isExpedited:1 completionBlock:v17];
        }
      }

      else
      {
        [*(a1 + 32) _finishUploadSessionWithActivity:v3 withState:5 isExpedited:1 transaction:v4 completedSuccessfully:0 endResultString:@"Service is disabled" completionBlock:0];
        [*(a1 + 32) _unregisterPermissiveExpeditedUploadXPCActivity];
      }
    }

    else
    {
      v15 = DPLogHandle_PermissiveUploadActivity();
      if (os_signpost_enabled(v15))
      {
        *buf = 134217984;
        v19 = v6;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PermissiveCloudKitXPCActivityUnknownState", "Unexpected XPC activity state %ld", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = xpc_activity_copy_criteria(v3);
    v12 = v11;
    if (v11 && xpc_dictionary_get_count(v11))
    {
      v13 = DPLogHandle_PermissiveUploadActivity();
      if (os_signpost_enabled(v13))
      {
        int64 = xpc_dictionary_get_int64(v12, *MEMORY[0x277D86250]);
        *buf = 134349056;
        v19 = int64;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PermissiveActivityAlreadyScheduled", "Activity already scheduled with %{public, name=delaySeconds}lld s as a delay cap", buf, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) _configurePermissiveActivityCriteria:v3 delaySeconds:*(a1 + 40)];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_configureReportStatsXPCActivity
{
  v3 = DPLogHandle_ServiceLifecycle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfiguringReportStatsXPCActivity", &unk_232980861, buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__DRSService__configureReportStatsXPCActivity__block_invoke;
  handler[3] = &unk_27899EF70;
  handler[4] = self;
  xpc_activity_register("com.apple.diagnosticpipeline.cloudkit_report_stats", v4, handler);
}

void __46__DRSService__configureReportStatsXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v6 = state;
    if (state)
    {
      v7 = DPLogHandle_ServiceLifecycle();
      if (os_signpost_enabled(v7))
      {
        v21 = 134217984;
        v22 = v6;
        v8 = "CloudKitXPCActivityUnknownState";
        v9 = "Unknown XPC activity state %ld";
        v10 = v7;
        v11 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v7 = DPLogHandle_ServiceLifecycle();
      if (os_signpost_enabled(v7))
      {
        LOWORD(v21) = 0;
        v8 = "ReportStatsXPCActivityCheckIn";
        v9 = &unk_232980861;
        v10 = v7;
        v11 = 2;
LABEL_12:
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, &v21, v11);
      }
    }

    goto LABEL_19;
  }

  [*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState];
  v12 = [*(a1 + 32) isEnabled];
  v13 = DPLogHandle_ServiceLifecycle();
  v14 = os_signpost_enabled(v13);
  if (v12)
  {
    if (v14)
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudKitReportStatsXPCActivity", &unk_232980861, &v21, 2u);
    }

    should_defer = xpc_activity_should_defer(v3);
    v16 = *(a1 + 32);
    if (!should_defer)
    {
      [v16 _runReportingSessionWithTransaction:v4 xpcActivity:v3];
      goto LABEL_19;
    }

    v17 = @"Immediate deferral";
    v18 = v3;
    v19 = 3;
  }

  else
  {
    if (v14)
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudKitReportStatsXPCActivity", "No-op XPC activity since the service is disabled", &v21, 2u);
    }

    v16 = *(a1 + 32);
    v17 = @"Service is disabled";
    v18 = v3;
    v19 = 5;
  }

  [v16 _finishReportingStatsSessionWithActivity:v18 withState:v19 transaction:v4 endResultString:v17];
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)_currentUploadSession_ON_MOC_QUEUE:(id)e errorOut:(id *)out
{
  v41 = *MEMORY[0x277D85DE8];
  eCopy = e;
  v6 = +[DRSUploadSessionRecordMO fetchRequest];
  v37 = 0;
  v7 = [eCopy executeFetchRequest:v6 error:&v37];
  v8 = v37;

  if (v8)
  {
    v9 = DPLogHandle_UploadSessionDateError();
    if (os_signpost_enabled(v9))
    {
      localizedDescription = [v8 localizedDescription];
      v11 = localizedDescription;
      v12 = @"Unknown";
      if (localizedDescription)
      {
        v12 = localizedDescription;
      }

      *buf = 138543362;
      v40 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadSessionDateMOFetch", "Failed to fetch an upload session managed object due to error: %{public}@", buf, 0xCu);
    }

    if (out)
    {
      v13 = v8;
      firstObject = 0;
      *out = v8;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (![v7 count])
  {
    v29 = DPLogHandle_UploadSessionDate();
    if (os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadSessionDateFetchMiss", "No cached CK Config", buf, 2u);
    }

    goto LABEL_30;
  }

  if ([v7 count] >= 2)
  {
    v15 = DPLogHandle_UploadSessionDateError();
    if (os_signpost_enabled(v15))
    {
      v16 = [v7 count];
      *buf = 67109120;
      LODWORD(v40) = v16;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NonUniqueUploadSessionDate", "Found %u dates. Attempting to delete and recover from state.", buf, 8u);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [eCopy deleteObject:*(*(&v33 + 1) + 8 * i)];
        }

        v19 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v19);
    }

    v32 = 0;
    v22 = [eCopy save:&v32];
    v23 = v32;
    if ((v22 & 1) == 0)
    {
      v24 = DPLogHandle_CoreDataError();
      if (os_signpost_enabled(v24))
      {
        localizedDescription2 = [v23 localizedDescription];
        v26 = localizedDescription2;
        v27 = @"Unknown";
        if (localizedDescription2)
        {
          v27 = localizedDescription2;
        }

        *buf = 138543362;
        v40 = v27;
        _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToSaveUploadSession", "To save upload session updates due to error: %{public}@", buf, 0xCu);
      }

      if (out)
      {
        v28 = v23;
        *out = v23;
      }
    }

LABEL_30:
    firstObject = 0;
    goto LABEL_31;
  }

  firstObject = [v7 firstObject];
LABEL_31:

  v30 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)previousUploadSessionDateFromContainer:(id)container errorOut:(id *)out
{
  containerCopy = container;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  newBackgroundContext = [containerCopy newBackgroundContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__DRSService_previousUploadSessionDateFromContainer_errorOut___block_invoke;
  v11[3] = &unk_27899F4A0;
  selfCopy = self;
  v8 = newBackgroundContext;
  v12 = v8;
  v13 = &v16;
  v14 = &v22;
  [v8 performBlockAndWait:v11];
  if (out)
  {
    *out = v17[5];
  }

  v9 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __62__DRSService_previousUploadSessionDateFromContainer_errorOut___block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = a1[4];
  v12 = 0;
  v4 = [v2 _currentUploadSession_ON_MOC_QUEUE:v3 errorOut:&v12];
  v5 = v12;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  v9 = [v4 sessionDate];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

+ (BOOL)updateUploadSessionDateFromContainer:(id)container toDate:(id)date errorOut:(id *)out
{
  containerCopy = container;
  dateCopy = date;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  newBackgroundContext = [containerCopy newBackgroundContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__DRSService_updateUploadSessionDateFromContainer_toDate_errorOut___block_invoke;
  v15[3] = &unk_27899F4C8;
  selfCopy = self;
  v11 = newBackgroundContext;
  v16 = v11;
  v18 = &v20;
  v12 = dateCopy;
  v17 = v12;
  [v11 performBlockAndWait:v15];
  if (out)
  {
    *out = v21[5];
  }

  v13 = v21[5] == 0;

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __67__DRSService_updateUploadSessionDateFromContainer_toDate_errorOut___block_invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  v3 = a1[4];
  v17 = 0;
  v4 = [v2 _currentUploadSession_ON_MOC_QUEUE:v3 errorOut:&v17];
  v5 = v17;
  v6 = v17;
  if (v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v5);
  }

  if (!v4)
  {
    v4 = [[DRSUploadSessionRecordMO alloc] initWithContext:a1[4]];
  }

  if (a1[5])
  {
    [(DRSUploadSessionRecordMO *)v4 setSessionDate:?];
  }

  else
  {
    [a1[4] deleteObject:v4];
  }

  v7 = a1[4];
  v16 = 0;
  v8 = [v7 save:&v16];
  v9 = v16;
  v10 = v16;
  if ((v8 & 1) == 0)
  {
    v11 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v11))
    {
      v12 = [v10 localizedDescription];
      v13 = v12;
      v14 = @"Unknown";
      if (v12)
      {
        v14 = v12;
      }

      *buf = 138543362;
      v19 = v14;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToSaveUpdatedUploadSession", "To save upload session updates due to error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateUploadSessionDate:(id *)date
{
  v5 = objc_opt_class();
  serviceContainer = [(DRSService *)self serviceContainer];
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(date) = [v5 updateUploadSessionDateFromContainer:serviceContainer toDate:date errorOut:date];

  return date;
}

- (BOOL)clearUploadSessionDate:(id *)date
{
  v5 = objc_opt_class();
  serviceContainer = [(DRSService *)self serviceContainer];
  LOBYTE(date) = [v5 updateUploadSessionDateFromContainer:serviceContainer toDate:0 errorOut:date];

  return date;
}

- (BOOL)shouldRunBackstopUpload:(id *)upload
{
  v5 = objc_opt_class();
  serviceContainer = [(DRSService *)self serviceContainer];
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(upload) = [v5 shouldRunBackstopUpload:serviceContainer currentDate:date errorOut:upload];

  return upload;
}

+ (BOOL)shouldRunBackstopUpload:(id)upload currentDate:(id)date errorOut:(id *)out
{
  dateCopy = date;
  v18 = 0;
  v9 = [self previousUploadSessionDateFromContainer:upload errorOut:&v18];
  v10 = v18;
  v11 = v10;
  if (v10)
  {
    if (out)
    {
      v12 = v10;
      v13 = 0;
      *out = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [dateCopy timeIntervalSinceDate:v9];
    v15 = v14;
    [self backstopInterval];
    v13 = v15 > v16;
  }

  return v13;
}

- (BOOL)_syncConfigurationToDisk:(id)disk
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v4 = DRSSetConfigurationDictionary(@"/private/var/mobile/Library/DiagnosticPipeline/Configuration", disk, &v15);
  v5 = v15;
  if (v4)
  {
    v6 = DPLogHandle_DRSConfig();
    if (os_signpost_enabled(v6))
    {
      configDict = [(DRSService *)self configDict];
      v8 = [configDict description];
      v9 = v8;
      v10 = @"-";
      if (v8)
      {
        v10 = v8;
      }

      *buf = 138543362;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigSave", "Saved DRSService config to disk: %{public}@", buf, 0xCu);

LABEL_10:
    }
  }

  else
  {
    v6 = DPLogHandle_DRSConfigError();
    if (os_signpost_enabled(v6))
    {
      localizedDescription = [v5 localizedDescription];
      configDict = localizedDescription;
      v12 = @"Unknown";
      if (localizedDescription)
      {
        v12 = localizedDescription;
      }

      *buf = 138543362;
      v17 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigSaveFailure", "Failed to save new config to disk due to error: %{public}@", buf, 0xCu);
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_getConfiguration
{
  configurationSyncQueue = [(DRSService *)self configurationSyncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DRSService__getConfiguration__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  dispatch_sync(configurationSyncQueue, block);
}

void __31__DRSService__getConfiguration__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = DRSGetConfigurationDictionary(@"/private/var/mobile/Library/DiagnosticPipeline/Configuration", &v9);
  v3 = v9;
  if (v3)
  {
    v4 = DPLogHandle_DRSConfigError();
    if (os_signpost_enabled(v4))
    {
      v5 = [v3 localizedDescription];
      v6 = v5;
      v7 = @"Unknown";
      if (v5)
      {
        v7 = v5;
      }

      *buf = 138543362;
      v11 = v7;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigGetFailure", "Failed to get DRSService config due to error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 136), v2);
    [*(a1 + 32) _adjustStateForNewConfiguration];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateConfigDict:(id)dict
{
  v13 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  if ([(DRSService *)self _syncConfigurationToDisk:dictCopy])
  {
    objc_storeStrong(&self->_configDict, dict);
    [(DRSService *)self _adjustStateForNewConfiguration];
    v6 = DPLogHandle_DRSConfig();
    if (os_signpost_enabled(v6))
    {
      v7 = [dictCopy description];
      v8 = v7;
      v9 = @"<none>";
      if (v7)
      {
        v9 = v7;
      }

      v11 = 138543362;
      v12 = v9;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatedDRSServiceConfig", "New config: %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v6 = DPLogHandle_DRSConfig();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToUpdateDRSServiceConfig", &unk_232980861, &v11, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_adjustStateForNewConfiguration
{
  configDict = [(DRSService *)self configDict];
  v5 = [configDict objectForKeyedSubscript:kDRSIgnoreAutomatedDeviceGroupKey];

  if (v5 && ([v5 BOOLValue] & 1) != 0)
  {
    v3 = +[DRSSystemProfile sharedInstance];
    [v3 setAllowsAutomatedDeviceGroupOverride:1];

    v4 = +[DRSSystemProfile sharedInstance];
    [v4 setOverridingAutomatedDeviceGroup:0];
  }

  else
  {
    v4 = +[DRSSystemProfile sharedInstance];
    [v4 setAllowsAutomatedDeviceGroupOverride:0];
  }
}

- (NSNumber)ignoreAutomatedDeviceGroup
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  configurationSyncQueue = [(DRSService *)self configurationSyncQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__DRSService_ignoreAutomatedDeviceGroup__block_invoke;
  v6[3] = &unk_27899F4F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(configurationSyncQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__DRSService_ignoreAutomatedDeviceGroup__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) configDict];
  v2 = [v5 objectForKeyedSubscript:kDRSIgnoreAutomatedDeviceGroupKey];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setConfigValue:(id)value forKey:(id)key expectedClass:(Class)class
{
  valueCopy = value;
  keyCopy = key;
  configurationSyncQueue = [(DRSService *)self configurationSyncQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__DRSService__setConfigValue_forKey_expectedClass___block_invoke;
  v13[3] = &unk_27899F518;
  v13[4] = self;
  v14 = valueCopy;
  v15 = keyCopy;
  classCopy = class;
  v11 = keyCopy;
  v12 = valueCopy;
  dispatch_sync(configurationSyncQueue, v13);
}

void __51__DRSService__setConfigValue_forKey_expectedClass___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configDict];
  v3 = [v2 mutableCopy];

  if (*(a1 + 40))
  {
    v4 = *(a1 + 56);
    if (objc_opt_isKindOfClass())
    {
      if (!v3)
      {
        v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      [v3 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 48)];
      [*(a1 + 32) _updateConfigDict:v3];
      v5 = DPLogHandle_DRSConfigError();
      if (os_signpost_enabled(v5))
      {
        v7 = *(a1 + 40);
        v6 = *(a1 + 48);
        v14 = 138543618;
        v15 = v6;
        v16 = 2114;
        v17 = v7;
        _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigUpdate", "Set '%{public}@' to %{public}@", &v14, 0x16u);
      }
    }

    else
    {
      v5 = DPLogHandle_DRSConfigError();
      if (os_signpost_enabled(v5))
      {
        v10 = *(a1 + 48);
        v11 = NSStringFromClass(*(a1 + 56));
        v12 = *(a1 + 40);
        v14 = 138543874;
        v15 = v10;
        v16 = 2114;
        v17 = v11;
        v18 = 2114;
        v19 = v12;
        _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigUpdateFailure", "Cannot set '%{public}@' to unexpected non-%{public}@ value: %{public}@", &v14, 0x20u);
      }
    }
  }

  else
  {
    [v3 removeObjectForKey:*(a1 + 48)];
    if (![v3 count])
    {

      v3 = 0;
    }

    v8 = DPLogHandle_DRSConfigError();
    if (os_signpost_enabled(v8))
    {
      v9 = *(a1 + 48);
      v14 = 138543362;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigKeyClear", "Cleared '%{public}@'", &v14, 0xCu);
    }

    [*(a1 + 32) _updateConfigDict:v3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setIgnoreAutomatedDeviceGroup:(id)group
{
  v4 = kDRSIgnoreAutomatedDeviceGroupKey;
  groupCopy = group;
  [(DRSService *)self _setConfigValue:groupCopy forKey:v4 expectedClass:objc_opt_class()];
}

- (BOOL)isEnabled
{
  isEnabledOverride = [(DRSService *)self isEnabledOverride];
  v3 = isEnabledOverride;
  if (isEnabledOverride)
  {
    bOOLValue = [isEnabledOverride BOOLValue];
  }

  else
  {
    bOOLValue = [objc_opt_class() defaultServiceIsEnabled];
  }

  v5 = bOOLValue;

  return v5;
}

- (NSNumber)isEnabledOverride
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  configurationSyncQueue = [(DRSService *)self configurationSyncQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__DRSService_isEnabledOverride__block_invoke;
  v6[3] = &unk_27899F4F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(configurationSyncQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__DRSService_isEnabledOverride__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) configDict];
  v2 = [v5 objectForKeyedSubscript:kDRSUploadServiceEnabledKey];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setIsEnabledOverride:(id)override
{
  v4 = kDRSUploadServiceEnabledKey;
  overrideCopy = override;
  [(DRSService *)self _setConfigValue:overrideCopy forKey:v4 expectedClass:objc_opt_class()];
}

void __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_0(&dword_232906000, v2, v3, "Failed to initalize CK config store due to error: %{public}@. Falling back to default settings", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end