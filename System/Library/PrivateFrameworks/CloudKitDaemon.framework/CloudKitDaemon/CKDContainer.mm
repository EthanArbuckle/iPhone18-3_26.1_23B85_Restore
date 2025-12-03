@interface CKDContainer
+ (CKDContainer)containerWithAppContainerAccountTuple:(id)tuple deviceContext:(id)context sharedContainerTable:(id)table;
+ (CKDContainer)containerWithAppContainerTuple:(id)tuple processScopedClientProxy:(id)proxy logicalDeviceScopedClientProxy:(id)clientProxy containerEntitlements:(id)entitlements containerOptions:(id)options sharedContainerTable:(id)table;
+ (id)applicationDataContainerDirectoryForBundleID:(id)d outApplicationBinaryBundleURL:(id *)l outAdopterProcessType:(int64_t *)type;
+ (id)operationStatusReport:(id)report;
+ (id)sharedClientThrottlingOperationQueue;
+ (id)sharedDetachedContainers;
+ (id)sharedInternalUseContainers;
+ (void)initialize;
- (BOOL)_cloudKitEnabledForCurrentClient;
- (BOOL)_isAdopterAppleInternal;
- (BOOL)_isContainerAuthorizedForOperation:(id)operation error:(id *)error;
- (BOOL)allowUserKeySyncForServiceName:(id)name resourceLastModifiedDate:(id)date outdatedPublicKeyID:(id)d error:(id *)error;
- (BOOL)allowsCellularAccess;
- (BOOL)allowsDeviceCapabilitiesChecking;
- (BOOL)allowsDeviceCapabilitiesReporting;
- (BOOL)beginContentAccess;
- (BOOL)canAccessAccount;
- (BOOL)canAuthWithCloudKit;
- (BOOL)canOpenFileAtURL:(id)l;
- (BOOL)checkSessionValidityCacheOnly:(BOOL)only error:(id *)error;
- (BOOL)hasValidatedEntitlements;
- (BOOL)isContentAccessed;
- (BOOL)isContentDiscarded;
- (BOOL)isEligibleForBroadcastingToContainer:(id)container;
- (BOOL)noteSessionInvalidationError:(id)error error:(id *)a4;
- (BOOL)preferAnonymousRequests;
- (BOOL)setupMMCSWrapper:(id *)wrapper;
- (BOOL)shouldSerializeOwnerInfo;
- (BOOL)shouldUsePCSEncryption;
- (CKAccountOverrideInfo)accountOverrideInfo;
- (CKContainerID)containerID;
- (CKDAccount)account;
- (CKDAnonymousSharingManager)anonymousSharingManager;
- (CKDAppContainerAccountTuple)appContainerAccountTuple;
- (CKDApplicationID)applicationID;
- (CKDContainerServerInfo)serverInfo;
- (CKDIdentityCache)publicIdentitiesDiskCache;
- (CKDLogicalDeviceContext)deviceContext;
- (CKDLogicalDeviceScopedClientProxy)logicalDeviceScopedClientProxy;
- (CKDPCSCache)pcsCache;
- (CKDPCSFetchAggregator)fetchAggregator;
- (CKDPCSManager)pcsManager;
- (CKDProcessScopedClientProxy)processScopedClientProxy;
- (CKDPublicIdentityLookupService)backgroundPublicIdentityLookupService;
- (CKDPublicIdentityLookupService)foregroundPublicIdentityLookupService;
- (CKDRecordCache)recordCache;
- (CKDServerConfiguration)serverConfig;
- (NSError)sessionInvalidationError;
- (NSString)acquiredSessionAccountID;
- (NSString)applicationBundleID;
- (NSString)applicationBundleIdentifierForContainerAccess;
- (NSString)applicationBundleIdentifierForNetworkAttribution;
- (NSString)applicationBundleIdentifierForPush;
- (NSString)associatedApplicationBundleID;
- (NSString)containerScopedUserID;
- (NSString)deviceID;
- (NSString)deviceName;
- (NSString)encryptionServiceName;
- (NSString)hardwareID;
- (NSString)languageCode;
- (NSString)orgAdminUserID;
- (NSString)personaID;
- (NSString)processName;
- (NSString)regionCode;
- (id)CKPropertiesDescription;
- (id)CKStatusReportArrayIncludingSharedOperations:(BOOL)operations;
- (id)_initWithAppContainerTuple:(id)tuple processScopedClientProxy:(id)proxy logicalDeviceScopedClientProxy:(id)clientProxy containerEntitlements:(id)entitlements containerOptions:(id)options;
- (id)_urlBySettingCustomBaseURL:(id)l onURL:(id)rL;
- (id)accountOrNil;
- (id)applicationBundleIdentifierForTCC;
- (id)baseURLForServerType:(int64_t)type partitionType:(int64_t)partitionType;
- (id)containerForOperationInfo:(id)info;
- (id)getFileMetadataWithFileHandle:(id)handle openInfo:(id)info error:(id *)error;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)openFileWithOpenInfo:(id)info error:(id *)error;
- (id)pcsCacheIfExists;
- (id)pcsManagerIfExists;
- (id)possiblyWrappedAuthTokenErrorGivenError:(id)error;
- (id)readBytesOfInMemoryAssetContentWithUUID:(id)d offset:(unint64_t)offset length:(unint64_t)length error:(id *)error;
- (id)sandboxExtensions;
- (int64_t)_accountStatus;
- (int64_t)_applicationPermissionStatusFromUserPrivacySetting:(int64_t)setting;
- (int64_t)_lockedHasTCCAuthorization:(BOOL)authorization;
- (unint64_t)countAssetCacheItems;
- (void)_broadcastUpdateIfNeededForRecord:(id)record recordXPCMetadata:(id)metadata recordID:(id)d isDeleted:(BOOL)deleted error:(id)error;
- (void)_cancelSessionValidationTimer;
- (void)_clearCaches;
- (void)_determineHardwareInfo;
- (void)_dumpStatusReportArrayToOsTrace:(id)trace;
- (void)_enumerateEligibleConnectedContainersForOOPUIContainer:(id)container;
- (void)_evictRecordCache;
- (void)_globalStatusForApplicationPermission:(unint64_t)permission completionHandler:(id)handler;
- (void)_handleCompletionForOperation:(id)operation initialMessageReplyBlock:(id)block;
- (void)_handleCompletionForOperation:(id)operation initialMessageReplyBlock:(id)block customCompletionBlock:(id)completionBlock;
- (void)_loadApplicationContainerPathAndType;
- (void)_lockedHandleTCCAuthorizationChangedEvent:(int64_t)event;
- (void)_performCodeFunctionInvokeOperation:(id)operation block:(id)block;
- (void)_performFetchCurrentUserRecordOperation:(id)operation withBlock:(id)block;
- (void)_reallyPerformFetchRecordsOperation:(id)operation withBlock:(id)block;
- (void)_registerForAuthTokenRenewalNotifications;
- (void)_registerForTCCAuthorizationEvents;
- (void)_restartSessionValidationTimer:(double)timer;
- (void)_setApplicationPermission:(unint64_t)permission enabled:(BOOL)enabled completionHandler:(id)handler;
- (void)_setupOperationQueues;
- (void)_unregisterForAuthTokenRenewalNotifications;
- (void)_unregisterForTCCAuthorizationEvents;
- (void)_writeAdopterMetadataToCache:(id)cache;
- (void)accountAccessAuthorizationWithCompletionHandler:(id)handler;
- (void)accountInfoWithCompletionHandler:(id)handler;
- (void)addOperation:(id)operation;
- (void)addThrottle:(id)throttle;
- (void)applySessionValidityErrorForTesting:(id)testing;
- (void)cancelAllOperations:(BOOL)operations;
- (void)cancelOperationWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)clearAssetCache;
- (void)clearRecordCache;
- (void)dealloc;
- (void)discardContentIfPossible;
- (void)displayInfoOnAccountWithCompletionHandler:(id)handler;
- (void)dropMMCS;
- (void)dumpDaemonStatusReportToFileHandle:(id)handle completionHandler:(id)handler;
- (void)endContentAccess;
- (void)enumerateClientContainers:(id)containers;
- (void)fetchAllLongLivedOperationIDsWithCompletionHandler:(id)handler;
- (void)fetchConfigurationForOperation:(id)operation withCompletionHandler:(id)handler;
- (void)fetchImportantUserIDsForOperation:(id)operation withCompletionHandler:(id)handler;
- (void)fetchLongLivedOperationsWithIDs:(id)ds completionHandler:(id)handler;
- (void)fetchPrivateURLForServerType:(int64_t)type operation:(id)operation completionHandler:(id)handler;
- (void)fetchPublicURLForServerType:(int64_t)type operation:(id)operation completionHandler:(id)handler;
- (void)fetchServerEnvironmentForOperation:(id)operation withCompletionHandler:(id)handler;
- (void)forwardInvocation:(id)invocation;
- (void)getKeySyncEligibilityForService:(NSString *)service isManatee:(BOOL)manatee accountDSID:(NSString *)d lastModifiedDate:(NSDate *)date testOverrideProvider:(CKDPCSTestOverrideProvider *)provider completionHandler:(id)handler;
- (void)getPersona:(id)persona;
- (void)handleAuthTokenRenewalChangeInProgress:(BOOL)progress;
- (void)handleSignificantIssue:(id)issue actions:(unint64_t)actions;
- (void)importantUserIDsWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)linkWithClientContainer:(id)container;
- (void)networkTransferEndpointWithCompletionHandler:(id)handler;
- (void)performAcceptSharesOperation:(id)operation withBlock:(id)block;
- (void)performCheckSupportedDeviceCapabilitiesOperation:(id)operation withBlock:(id)block;
- (void)performDeclineSharesOperation:(id)operation withBlock:(id)block;
- (void)performDiscoverAllUserIdentitiesOperation:(id)operation withBlock:(id)block;
- (void)performDiscoverUserIdentitiesOperation:(id)operation withBlock:(id)block;
- (void)performFetchDatabaseChangesOperation:(id)operation withBlock:(id)block;
- (void)performFetchRecordChangesOperation:(id)operation withBlock:(id)block;
- (void)performFetchRecordZoneChangesOperation:(id)operation withBlock:(id)block;
- (void)performFetchRecordZonesOperation:(id)operation withBlock:(id)block;
- (void)performFetchRecordsOperation:(id)operation withBlock:(id)block;
- (void)performFetchShareMetadataOperation:(id)operation withBlock:(id)block;
- (void)performFetchShareParticipantsOperation:(id)operation withBlock:(id)block;
- (void)performFetchSubscriptionsOperation:(id)operation withBlock:(id)block;
- (void)performFetchWebAuthTokenOperation:(id)operation withBlock:(id)block;
- (void)performMapShareURLsToInstalledBundleIDsOperation:(id)operation withBlock:(id)block;
- (void)performModifyRecordZonesOperation:(id)operation withBlock:(id)block;
- (void)performModifyRecordsOperation:(id)operation withBlock:(id)block;
- (void)performModifySubscriptionsOperation:(id)operation withBlock:(id)block;
- (void)performMovePhotosOperation:(id)operation withBlock:(id)block;
- (void)performOperation:(id)operation initialMessageReplyBlock:(id)block customCompletionBlock:(id)completionBlock;
- (void)performQueryOperation:(id)operation withBlock:(id)block;
- (void)performRequest:(id)request;
- (void)performShareRequestAccessOperation:(id)operation withBlock:(id)block;
- (void)reloadAccountWithCompletionHandler:(id)handler;
- (void)requestApplicationPermission:(unint64_t)permission completionHandler:(id)handler;
- (void)resetThrottles;
- (void)setContainerAvailable:(BOOL)available;
- (void)setServerConfig:(id)config;
- (void)setServerInfo:(id)info;
- (void)setSessionInvalidationError:(id)error;
- (void)showAssetCache;
- (void)statusForApplicationPermission:(unint64_t)permission completionHandler:(id)handler;
- (void)submitClientEventMetric:(id)metric completeWhenQueued:(BOOL)queued completionHandler:(id)handler;
- (void)suggestedMergeableDeltaSizeWithCompletionHandler:(id)handler;
- (void)tearDownAssetTransfers;
@end

@implementation CKDContainer

- (NSString)applicationBundleID
{
  v3 = objc_msgSend_applicationID(self, a2, v2);
  v6 = objc_msgSend_applicationBundleIdentifier(v3, v4, v5);

  return v6;
}

- (CKDApplicationID)applicationID
{
  v3 = objc_msgSend_appContainerTuple(self, a2, v2);
  v6 = objc_msgSend_applicationID(v3, v4, v5);

  return v6;
}

- (CKDProcessScopedClientProxy)processScopedClientProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_processScopedClientProxy);

  return WeakRetained;
}

- (void)_setupOperationQueues
{
  v3 = objc_opt_new();
  operationQueue = self->_operationQueue;
  self->_operationQueue = v3;

  v5 = MEMORY[0x277CCACA8];
  v8 = objc_msgSend_processName(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v5, v9, @"com.apple.cloudkit.operation.%@", v8);
  objc_msgSend_setName_(self->_operationQueue, v11, v10);

  objc_msgSend_setSuspended_(self->_operationQueue, v12, 1);
  v13 = objc_opt_new();
  cleanupOperationQueue = self->_cleanupOperationQueue;
  self->_cleanupOperationQueue = v13;

  v15 = MEMORY[0x277CCACA8];
  v18 = objc_msgSend_processName(self, v16, v17);
  v20 = objc_msgSend_stringWithFormat_(v15, v19, @"com.apple.cloudkit.cleanup.%@", v18);
  objc_msgSend_setName_(self->_cleanupOperationQueue, v21, v20);

  objc_msgSend_setSuspended_(self->_cleanupOperationQueue, v22, 1);
  v23 = objc_opt_new();
  uncancellableOperationQueue = self->_uncancellableOperationQueue;
  self->_uncancellableOperationQueue = v23;

  v25 = MEMORY[0x277CCACA8];
  v28 = objc_msgSend_processName(self, v26, v27);
  v30 = objc_msgSend_stringWithFormat_(v25, v29, @"com.apple.cloudkit.uncancellable.%@", v28);
  objc_msgSend_setName_(self->_uncancellableOperationQueue, v31, v30);

  objc_msgSend_setMaxConcurrentOperationCount_(self->_uncancellableOperationQueue, v32, 4);
  objc_msgSend_setSuspended_(self->_uncancellableOperationQueue, v33, 1);
  v34 = objc_alloc_init(MEMORY[0x277CCABD8]);
  backgroundOperationThrottleQueue = self->_backgroundOperationThrottleQueue;
  self->_backgroundOperationThrottleQueue = v34;

  v36 = MEMORY[0x277CCACA8];
  v39 = objc_msgSend_processName(self, v37, v38);
  v41 = objc_msgSend_stringWithFormat_(v36, v40, @"com.apple.cloudkit.background.%@", v39);
  objc_msgSend_setName_(self->_backgroundOperationThrottleQueue, v42, v41);

  objc_msgSend_setMaxConcurrentOperationCount_(self->_backgroundOperationThrottleQueue, v43, 4);
  objc_msgSend_setSuspended_(self->_backgroundOperationThrottleQueue, v44, 1);
  v45 = objc_alloc_init(MEMORY[0x277CCABD8]);
  cloudKitSupportOperationThrottleQueue = self->_cloudKitSupportOperationThrottleQueue;
  self->_cloudKitSupportOperationThrottleQueue = v45;

  v47 = MEMORY[0x277CCACA8];
  v50 = objc_msgSend_processName(self, v48, v49);
  v52 = objc_msgSend_stringWithFormat_(v47, v51, @"com.apple.cloudkit.support.%@", v50);
  objc_msgSend_setName_(self->_cloudKitSupportOperationThrottleQueue, v53, v52);

  v55 = self->_cloudKitSupportOperationThrottleQueue;

  objc_msgSend_setSuspended_(v55, v54, 1);
}

- (NSString)processName
{
  v3 = objc_msgSend_processScopedClientProxy(self, a2, v2);
  v6 = objc_msgSend_procName(v3, v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"(unknown)";
  }

  v9 = v8;

  return &v8->isa;
}

- (void)_registerForTCCAuthorizationEvents
{
  objc_initWeak(&location, self);
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v3, v4);
  v8 = objc_msgSend_defaultObserver(CKDAuthorizationObserver, v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_225171180;
  v12[3] = &unk_278545870;
  objc_copyWeak(&v13, &location);
  v10 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v5, v9, @"CKDAuthorizationChangedNotification", v8, 0, v12);
  authorizationChangedRegistration = self->_authorizationChangedRegistration;
  self->_authorizationChangedRegistration = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_loadApplicationContainerPathAndType
{
  v3 = [CKDDirectoryContext alloc];
  v5 = objc_msgSend_initWithContainer_(v3, v4, self);
  objc_msgSend_setDirectoryContext_(self, v6, v5);

  v9 = objc_msgSend_applicationBundleID(self, v7, v8);
  v42 = 0;
  v11 = objc_msgSend_applicationDataContainerDirectoryForBundleID_outApplicationBinaryBundleURL_outAdopterProcessType_(CKDContainer, v10, v9, &v42, &self->_adopterProcessType);
  v12 = v42;

  if (!v12)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v15 = *MEMORY[0x277CBECE8];
  Unique = _CFBundleCreateUnique();
  v17 = Unique;
  if (!Unique)
  {
LABEL_11:
    v36 = 1;
    goto LABEL_15;
  }

  v18 = CFBundleGetValueForInfoDictionaryKey(Unique, *MEMORY[0x277CBEC40]);
  v19 = CFBundleGetValueForInfoDictionaryKey(v17, *MEMORY[0x277CBED50]);
  v20 = v19;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  objc_storeStrong(&self->_applicationDisplayName, v21);
  v22 = CFBundleGetValueForInfoDictionaryKey(v17, *MEMORY[0x277CBED58]);
  applicationVersion = self->_applicationVersion;
  self->_applicationVersion = v22;

  v24 = CFBundleGetValueForInfoDictionaryKey(v17, *MEMORY[0x277CBEC48]);
  if (v24)
  {
    v27 = v24;
    v28 = objc_msgSend_pathExtension(v24, v25, v26);
    v31 = v28;
    if (v28 && objc_msgSend_length(v28, v29, v30))
    {
      v34 = objc_msgSend_stringByDeletingPathExtension(v27, v32, v33);
      v35 = v27;
      v27 = v34;
    }

    else
    {
      v35 = v31;
      v31 = @"icns";
    }

    v37 = CFBundleCopyResourceURL(v17, v27, v31, 0);
    applicationIcon = self->_applicationIcon;
    self->_applicationIcon = v37;
  }

  v36 = 0;
LABEL_15:
  applicationDisplayName = self->_applicationDisplayName;
  if (applicationDisplayName)
  {
    v40 = applicationDisplayName;
  }

  else
  {
    v40 = objc_msgSend_applicationBundleID(self, v13, v14);
  }

  v41 = self->_applicationDisplayName;
  self->_applicationDisplayName = v40;

  if ((v36 & 1) == 0)
  {
    CFRelease(v17);
  }
}

- (CKAccountOverrideInfo)accountOverrideInfo
{
  v4 = objc_msgSend_options(self, a2, v2);
  v7 = objc_msgSend_accountOverrideInfo(v4, v5, v6);
  v10 = v7;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v12 = objc_msgSend_deviceContext(self, v8, v9);
    v15 = objc_msgSend_testDevice(v12, v13, v14);
    v11 = objc_msgSend_daemonAccountOverrideInfo(v15, v16, v17);
  }

  return v11;
}

- (NSString)personaID
{
  v3 = objc_msgSend_appContainerTuple(self, a2, v2);
  v6 = objc_msgSend_personaID(v3, v4, v5);

  return v6;
}

- (CKContainerID)containerID
{
  v3 = objc_msgSend_appContainerTuple(self, a2, v2);
  v6 = objc_msgSend_containerID(v3, v4, v5);

  return v6;
}

- (BOOL)hasValidatedEntitlements
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_processScopedClientProxy(self, a2, v2);
  if (objc_msgSend_processIsAttached(v4, v5, v6) && self->_hasValidatedEntitlementsTernary == -1)
  {
    v9 = objc_msgSend_clientConnection(v4, v7, v8);
    v12 = objc_msgSend_xpcConnection(v9, v10, v11);
    v15 = v12;
    if (v12)
    {
      objc_msgSend_auditToken(v12, v13, v14);
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    v16 = SecTaskCreateWithAuditToken(0, &v24);

    if (v16)
    {
      self->_hasValidatedEntitlementsTernary = SecTaskEntitlementsValidated();
      if (CKBoolFromCKTernary())
      {
        hasValidatedEntitlementsTernary = self->_hasValidatedEntitlementsTernary;
      }

      else
      {
        self->_hasValidatedEntitlementsTernary = (~SecTaskGetCodeSignStatus(v16) & 0x24000001) == 0;
      }

      if ((CKBoolFromCKTernary() & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v19 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v24.val[0] = 138412290;
          *&v24.val[1] = self;
          _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Binary has invalid entitlements for %@", &v24, 0xCu);
        }
      }

      CFRelease(v16);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v24.val[0]) = 0;
        _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Unable to get SecTask for connection to determine entitlement validity", &v24, 2u);
      }
    }
  }

  v20 = self->_hasValidatedEntitlementsTernary;
  v21 = CKBoolFromCKTernary();

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)applicationBundleIdentifierForTCC
{
  v4 = objc_msgSend_applicationID(self, a2, v2);
  v7 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v4, v5, v6);
  v10 = v7;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v12 = objc_msgSend_applicationID(self, v8, v9);
    v11 = objc_msgSend_applicationBundleIdentifier(v12, v13, v14);
  }

  return v11;
}

- (void)_determineHardwareInfo
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_containerID(self, a2, v2);
  v8 = objc_msgSend_containerIdentifier(v5, v6, v7);
  v9 = CKDeviceUDID();
  v11 = objc_msgSend_stringWithFormat_(v4, v10, @"%@-%@", v8, v9);

  *md = 0u;
  v25 = 0u;
  v13 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v12, md, 32, 0);
  v16 = objc_msgSend_UTF8String(v11, v14, v15);
  v18 = objc_msgSend_lengthOfBytesUsingEncoding_(v11, v17, 4);
  CC_SHA256(v16, v18, md);
  v21 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v13, v19, v20);
  hardwareID = self->_hardwareID;
  self->_hardwareID = v21;

  v23 = *MEMORY[0x277D85DE8];
}

- (id)pcsCacheIfExists
{
  pthread_rwlock_rdlock(&self->rwAccountLock);
  v3 = self->_pcsCache;
  pthread_rwlock_unlock(&self->rwAccountLock);

  return v3;
}

- (BOOL)beginContentAccess
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_accessCount(selfCopy, v3, v4);
  objc_msgSend_setAccessCount_(selfCopy, v6, v5 + 1);
  selfCopy->_contentDiscarded = 0;
  v9 = objc_msgSend_pcsCacheAssertion(selfCopy, v7, v8);

  if (!v9)
  {
    v12 = objc_msgSend_pcsCacheIfExists(selfCopy, v10, v11);
    v15 = objc_msgSend_autoContentAccessingProxy(v12, v13, v14);
    objc_msgSend_setPcsCacheAssertion_(selfCopy, v16, v15);
  }

  objc_sync_exit(selfCopy);

  return 1;
}

- (void)endContentAccess
{
  obj = self;
  objc_sync_enter(obj);
  if (objc_msgSend_accessCount(obj, v2, v3))
  {
    v6 = objc_msgSend_accessCount(obj, v4, v5);
    objc_msgSend_setAccessCount_(obj, v7, v6 - 1);
  }

  if (!objc_msgSend_accessCount(obj, v4, v5))
  {
    objc_msgSend_setPcsCacheAssertion_(obj, v8, 0);
  }

  objc_sync_exit(obj);
}

- (int64_t)_accountStatus
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_accountStatusWorkloop(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_applicationBundleID(self, v5, v6);
  v8 = sub_2250746BC(v7, self);

  if (v8)
  {
    v11 = 2;
  }

  else
  {
    v12 = objc_msgSend_account(self, v9, v10);
    v15 = objc_msgSend_accountType(v12, v13, v14);

    if (v15 == 1)
    {
      v11 = 3;
    }

    else if (objc_msgSend_canAccessAccount(self, v16, v17))
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v21 = v18;
    v22 = CKStringFromAccountStatus();
    v23 = 138543362;
    v24 = v22;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Account status is %{public}@", &v23, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (CKDAccount)account
{
  v7 = objc_msgSend_accountOrNil(self, a2, v2);
  if (!v7)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CKDContainer.m", 679, @"Container %@ had an unexpectedly-nil account ivar", self);
  }

  return v7;
}

- (id)accountOrNil
{
  pthread_rwlock_rdlock(&self->rwAccountLock);
  v3 = self->_account;
  pthread_rwlock_unlock(&self->rwAccountLock);

  return v3;
}

- (CKDLogicalDeviceContext)deviceContext
{
  v38 = *MEMORY[0x277D85DE8];
  objc_msgSend_lock(self->_deviceContextLock, a2, v2);
  deviceContext = self->_deviceContext;
  if (!deviceContext)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v8 = objc_msgSend_options(self, v5, v6);
      v11 = objc_msgSend_testDeviceReferenceProtocol(v8, v9, v10);

      v14 = objc_msgSend_containerID(self, v12, v13);
      isTestContainer = objc_msgSend_isTestContainer(v14, v15, v16);

      if (isTestContainer)
      {
        if (!v11)
        {
          v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKDContainer.m", 1287, @"Should always have a testDeviceReference with test hooks enabled");
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v26 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v36 = 138412290;
          selfCopy = self;
          _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Container %@ is being used in partlycloudd, but has no associated CKTestDevice.", &v36, 0xCu);
        }
      }

      v27 = objc_msgSend_deviceContextForTestDeviceReference_(CKDLogicalDeviceContext, v18, v11);
      v28 = self->_deviceContext;
      self->_deviceContext = v27;
    }

    else
    {
      v22 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v5, v6);
      v23 = self->_deviceContext;
      self->_deviceContext = v22;
    }

    v29 = objc_msgSend_testServer(self->_deviceContext, v24, v25);
    testServer = self->_testServer;
    self->_testServer = v29;

    deviceContext = self->_deviceContext;
  }

  v31 = deviceContext;
  objc_msgSend_unlock(self->_deviceContextLock, v32, v33);
  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

- (BOOL)checkSessionValidityCacheOnly:(BOOL)only error:(id *)error
{
  selfCopy = self;
  sub_2250753E8(only);

  return 1;
}

- (BOOL)canAuthWithCloudKit
{
  v4 = objc_msgSend_entitlements(self, a2, v2);
  if (objc_msgSend_hasAllowUnverifiedAccountEntitlement(v4, v5, v6))
  {
    isPrimaryEmailVerified = 1;
  }

  else
  {
    v10 = objc_msgSend_account(self, v7, v8);
    isPrimaryEmailVerified = objc_msgSend_isPrimaryEmailVerified(v10, v11, v12);
  }

  return isPrimaryEmailVerified;
}

- (BOOL)allowsCellularAccess
{
  v4 = objc_msgSend_containerID(self, a2, v2);
  v7 = objc_msgSend_specialContainerType(v4, v5, v6);

  if (!v7)
  {
    return 1;
  }

  v10 = objc_msgSend_containerID(self, v8, v9);
  v13 = objc_msgSend_representativeDataclass(v10, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_account(self, v14, v15);
    isDataclassEnabledForCellular = objc_msgSend_isDataclassEnabledForCellular_(v16, v17, v13);
  }

  else
  {
    isDataclassEnabledForCellular = 1;
  }

  return isDataclassEnabledForCellular;
}

- (void)_registerForAuthTokenRenewalNotifications
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_authTokenRenewalObserverToken(self, a2, v2);

  if (v5)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDContainer.m", 485, @"Already registered for auth token change notifications!");
  }

  v8 = objc_msgSend_acquiredSessionAccountID(self, v6, v7);
  if (v8)
  {
    v9 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_msgSend_setAuthTokenRenewalObserverToken_(selfCopy, v11, v9);
    objc_sync_exit(selfCopy);

    objc_initWeak(&location, selfCopy);
    v14 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v12, v13);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_22516C2A0;
    v26[3] = &unk_278547070;
    v29[1] = a2;
    v27 = v8;
    v28 = selfCopy;
    objc_copyWeak(v29, &location);
    objc_msgSend_registerObserver_forAccountID_authTokenRenewalInProgressNotifications_(v14, v15, v9, v27, v26);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = objc_msgSend_containerID(selfCopy, v17, v18);
      v22 = objc_msgSend_ckShortDescription(v19, v20, v21);
      *buf = 138412546;
      v32 = v22;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Registered for auth token renewal changes for container: %@, token: %@", buf, 0x16u);
    }

    objc_destroyWeak(v29);
    objc_destroyWeak(&location);
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInternalUseContainers
{
  if (qword_280D58140 != -1)
  {
    dispatch_once(&qword_280D58140, &unk_28385CBE0);
  }

  v3 = qword_280D58138;

  return v3;
}

- (id)sandboxExtensions
{
  v141[3] = *MEMORY[0x277D85DE8];
  objc_msgSend_lock(self->_sandboxExtensionsLock, a2, v2);
  v6 = objc_msgSend_cachedSandboxExtensions(self, v4, v5);

  if (v6)
  {
    goto LABEL_2;
  }

  v12 = objc_msgSend_processScopedClientProxy(self, v7, v8);
  v128 = objc_opt_new();
  v15 = objc_msgSend_directoryContext(self, v13, v14);
  v18 = objc_msgSend_containerDirectory(v15, v16, v17);

  v129 = v12;
  if (v12)
  {
    v21 = v18 == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  v23 = objc_msgSend_directoryContext(self, v19, v20);
  v26 = objc_msgSend_temporaryDirectory(v23, v24, v25);
  v141[0] = v26;
  v29 = objc_msgSend_directoryContext(self, v27, v28);
  v32 = objc_msgSend_fileDownloadDirectory(v29, v30, v31);
  v141[1] = v32;
  v35 = objc_msgSend_directoryContext(self, v33, v34);
  v38 = objc_msgSend_frameworkCachesDirectory(v35, v36, v37);
  v141[2] = v38;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v141, 3);

  v127 = v22;
  if (v22 == 1 && (objc_msgSend_containerID(self, v41, v42), v43 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend_specialContainerType(v43, v44, v45), v43, v46 == 4))
  {
    v49 = MEMORY[0x277CBC208];
    v50 = objc_msgSend_applicationBundleID(self, v47, v48);
    v52 = objc_msgSend_packageDirectoryForBundleID_(v49, v51, v50);

    v53 = v52;
    v55 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v54, v52);
    v57 = objc_msgSend_arrayByAddingObject_(v40, v56, v55);

    v40 = v57;
  }

  else
  {
    v53 = 0;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v58 = v40;
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v130, v140, 16);
  if (v60)
  {
    v63 = v60;
    v64 = *v131;
    while (2)
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v131 != v64)
        {
          objc_enumerationMutation(v58);
        }

        v66 = *(*(&v130 + 1) + 8 * i);
        v67 = objc_msgSend_path(v66, v61, v62);
        v68 = CKCreateDirectoryAtPath();
        v69 = 0;
        v70 = v69;
        if ((v68 & 1) == 0)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v88 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v105 = v88;
            v108 = objc_msgSend_applicationBundleID(self, v106, v107);
            v111 = objc_msgSend_CKSanitizedPath(v66, v109, v110);
            *buf = 138412802;
            v135 = v108;
            v136 = 2112;
            v137 = v111;
            v138 = 2112;
            v139 = v70;
            _os_log_error_impl(&dword_22506F000, v105, OS_LOG_TYPE_ERROR, "Failed to create directory for %@ at %@: %@", buf, 0x20u);
          }

          objc_msgSend_unlock(self->_sandboxExtensionsLock, v89, v90);

          v9 = 0;
          goto LABEL_34;
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v130, v140, 16);
      if (v63)
      {
        continue;
      }

      break;
    }
  }

  v71 = *MEMORY[0x277CBC878];
  v72 = *MEMORY[0x277CBC880];
  v73 = v129;
  if (v129)
  {
    v74 = v128;
    if (v72 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v71);
    }

    v75 = *MEMORY[0x277CBC830];
    v78 = v53;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v112 = v75;
      v115 = objc_msgSend_ckShortDescription(self, v113, v114);
      if (objc_msgSend_isSandboxed(v129, v116, v117))
      {
        v120 = @"YES";
      }

      else
      {
        v120 = @"NO";
      }

      hasDataContainer = objc_msgSend_hasDataContainer(self, v118, v119);
      *buf = 138412802;
      if (hasDataContainer)
      {
        v122 = @"YES";
      }

      else
      {
        v122 = @"NO";
      }

      v73 = v129;
      v78 = v53;
      v135 = v115;
      v136 = 2112;
      v137 = v120;
      v138 = 2112;
      v139 = v122;
      _os_log_debug_impl(&dword_22506F000, v112, OS_LOG_TYPE_DEBUG, "Sandbox extensions needed for %@, proxy sandboxed: %@, hasDataContainer: %@", buf, 0x20u);
    }

    v79 = objc_msgSend_directoryContext(self, v76, v77);
    v82 = objc_msgSend_fileDownloadDirectory(v79, v80, v81);
    v84 = objc_msgSend_issueSandboxExtensionForItem_error_(v73, v83, v82, 0);

    if (v84)
    {
      objc_msgSend_addObject_(v128, v85, v84);
    }

    if (!v127)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  v74 = v128;
  if (v72 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v71);
  }

  v78 = v53;
  v93 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v123 = v93;
    v126 = objc_msgSend_ckShortDescription(self, v124, v125);
    *buf = 138412290;
    v135 = v126;
    _os_log_debug_impl(&dword_22506F000, v123, OS_LOG_TYPE_DEBUG, "Sandbox extensions not needed for %@", buf, 0xCu);

    if (v127)
    {
      goto LABEL_41;
    }
  }

  else if (v127)
  {
LABEL_41:
    v94 = objc_msgSend_directoryContext(self, v86, v87);
    v97 = objc_msgSend_frameworkCachesDirectory(v94, v95, v96);
    v99 = objc_msgSend_issueSandboxExtensionForItem_error_(v73, v98, v97, 0);

    if (v99)
    {
      objc_msgSend_addObject_(v74, v100, v99);
    }

    if (v78)
    {
      v101 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v100, v78);
      v103 = objc_msgSend_issueSandboxExtensionForItem_error_(v73, v102, v101, 0);

      if (v103)
      {
        objc_msgSend_addObject_(v74, v104, v103);
      }
    }
  }

LABEL_48:
  objc_msgSend_setCachedSandboxExtensions_(self, v86, v74);

LABEL_2:
  v9 = objc_msgSend_cachedSandboxExtensions(self, v7, v8);
  objc_msgSend_unlock(self->_sandboxExtensionsLock, v10, v11);
LABEL_34:
  v91 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSString)acquiredSessionAccountID
{
  selfCopy = self;
  sub_225077ADC();
  v4 = v3;
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x22AA62D80](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)associatedApplicationBundleID
{
  v3 = objc_msgSend_entitlements(self, a2, v2);
  v6 = objc_msgSend_associatedApplicationBundleID(v3, v4, v5);

  return v6;
}

+ (id)sharedClientThrottlingOperationQueue
{
  if (qword_280D58168 != -1)
  {
    dispatch_once(&qword_280D58168, &unk_28385CC60);
  }

  v3 = qword_280D58170;

  return v3;
}

- (NSString)containerScopedUserID
{
  v3 = objc_msgSend_serverInfo(self, a2, v2);
  v6 = objc_msgSend_containerScopedUserID(v3, v4, v5);

  return v6;
}

- (NSString)applicationBundleIdentifierForContainerAccess
{
  v4 = objc_msgSend_applicationID(self, a2, v2);
  v7 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_associatedApplicationBundleID(self, v8, v9);
    if (!v10)
    {
      v10 = objc_msgSend_applicationBundleID(self, v11, v12);
    }

    v7 = v10;
  }

  return v7;
}

- (CKDContainerServerInfo)serverInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_serverInfo;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)orgAdminUserID
{
  v3 = objc_msgSend_serverInfo(self, a2, v2);
  v6 = objc_msgSend_orgAdminUserID(v3, v4, v5);

  return v6;
}

- (CKDPCSManager)pcsManager
{
  objc_msgSend_lock(self->_pcsManagerLock, a2, v2);
  pthread_rwlock_rdlock(&self->rwAccountLock);
  pcsManager = self->_pcsManager;
  if (!pcsManager)
  {
    if (objc_msgSend_shouldUsePCSEncryption(self, v4, v5))
    {
      v7 = [CKDPCSManager alloc];
      v9 = objc_msgSend_initWithContainer_account_(v7, v8, self, self->_account);
    }

    else
    {
      v9 = objc_alloc_init(CKDProxyPCSManager);
    }

    v10 = self->_pcsManager;
    self->_pcsManager = v9;

    pcsManager = self->_pcsManager;
  }

  v11 = pcsManager;
  pthread_rwlock_unlock(&self->rwAccountLock);
  objc_msgSend_unlock(self->_pcsManagerLock, v12, v13);

  return v11;
}

- (BOOL)shouldUsePCSEncryption
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  if (objc_msgSend_useEncryption(v4, v5, v6))
  {
    v9 = objc_msgSend_options(self, v7, v8);
    v12 = objc_msgSend_bypassPCSEncryption(v9, v10, v11) ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (NSString)encryptionServiceName
{
  v4 = objc_msgSend_options(self, a2, v2);
  v7 = objc_msgSend_encryptionServiceName(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_options(self, v8, v9);
    v13 = objc_msgSend_encryptionServiceName(v10, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_entitlements(self, v8, v9);
    v10 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(v14, v15, v16);

    v19 = objc_msgSend_containerID(self, v17, v18);
    v22 = objc_msgSend_containerIdentifier(v19, v20, v21);
    v13 = objc_msgSend_objectForKeyedSubscript_(v10, v23, v22);
  }

  return v13;
}

- (BOOL)_cloudKitEnabledForCurrentClient
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_entitlements(self, a2, v2);
  if (objc_msgSend_hasCloudKitSystemServiceEntitlement(v4, v5, v6))
  {

LABEL_4:
    v15 = 1;
    goto LABEL_5;
  }

  v9 = objc_msgSend_deviceContext(self, v7, v8);
  v12 = objc_msgSend_testDeviceReference(v9, v10, v11);

  if (v12)
  {
    goto LABEL_4;
  }

  v18 = objc_msgSend_containerID(self, v13, v14);
  v21 = objc_msgSend_representativeDataclass(v18, v19, v20);

  if (v21 && (objc_msgSend_account(self, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), isDataclassEnabled = objc_msgSend_isDataclassEnabled_(v24, v25, v21), v24, (isDataclassEnabled & 1) == 0))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v28 = 138412290;
      v29 = v21;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "%@ dataclass disabled, denying access", &v28, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

LABEL_5:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (CKDAppContainerAccountTuple)appContainerAccountTuple
{
  v3 = [CKDAppContainerAccountTuple alloc];
  v6 = objc_msgSend_appContainerTuple(self, v4, v5);
  v9 = objc_msgSend_account(self, v7, v8);
  v12 = objc_msgSend_accountID(v9, v10, v11);
  v14 = objc_msgSend_initWithAppContainerTuple_accountID_(v3, v13, v6, v12);

  return v14;
}

- (NSString)applicationBundleIdentifierForPush
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_applicationID(self, a2, v2);
  v7 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v4, v5, v6);

  v10 = objc_msgSend_containingBundleID(self, v8, v9);

  if (v10 && !v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v29 = v13;
      v32 = objc_msgSend_containingBundleID(self, v30, v31);
      v35 = objc_msgSend_applicationBundleID(self, v33, v34);
      v36 = 138543618;
      v37 = v32;
      v38 = 2114;
      v39 = v35;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Using wrapping app bundle id %{public}@ for extension %{public}@ when registering push tokens", &v36, 0x16u);
    }
  }

  v14 = objc_msgSend_applicationBundleID(self, v11, v12);
  v17 = objc_msgSend_associatedApplicationBundleID(self, v15, v16);
  v20 = objc_msgSend_containingBundleID(self, v18, v19);
  v21 = CKApplicationBundleIDForPush();

  v24 = objc_msgSend_deviceContext(self, v22, v23);
  v26 = objc_msgSend_deviceScopedPushTopic_(v24, v25, v21);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (NSString)deviceID
{
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_options(self, a2, v2), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_testDeviceReferenceProtocol(v4, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v7, v4, v7))
  {
    v8 = objc_msgSend_options(self, a2, v2);
    v11 = objc_msgSend_testDeviceReferenceProtocol(v8, v9, v10);
    v14 = objc_msgSend_deviceID(v11, v12, v13);
  }

  else
  {
    v8 = objc_msgSend_sharedManager(CKDDeviceIDManager, a2, v2);
    v14 = objc_msgSend_deviceIdentifierForContainer_(v8, v15, self);
  }

  return v14;
}

- (BOOL)preferAnonymousRequests
{
  v4 = objc_msgSend_account(self, a2, v2);
  if (objc_msgSend_accountType(v4, v5, v6) == 1 || !objc_msgSend_canAuthWithCloudKit(self, v7, v8))
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = objc_msgSend_canAccessAccount(self, v9, v10) ^ 1;
  }

  return v11;
}

- (NSString)hardwareID
{
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_options(self, a2, v2), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_testDeviceReferenceProtocol(v4, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v7, v4, v7))
  {
    v10 = objc_msgSend_options(self, v8, v9);
    v13 = objc_msgSend_testDeviceReferenceProtocol(v10, v11, v12);
    v16 = objc_msgSend_deviceID(v13, v14, v15);
  }

  else
  {
    v16 = self->_hardwareID;
  }

  return v16;
}

- (NSString)deviceName
{
  v3 = objc_msgSend_sharedClientInfo(CKDClientInfo, a2, v2);
  v6 = objc_msgSend_hostname(v3, v4, v5);

  return v6;
}

- (void)_unregisterForTCCAuthorizationEvents
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v5, v4, self->_authorizationChangedRegistration);
}

- (NSString)applicationBundleIdentifierForNetworkAttribution
{
  v4 = objc_msgSend_applicationID(self, a2, v2);
  v7 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_associatedApplicationBundleID(self, v8, v9);
    if (!v10)
    {
      v10 = objc_msgSend_applicationBundleID(self, v11, v12);
    }

    v7 = v10;
  }

  return v7;
}

- (CKDServerConfiguration)serverConfig
{
  objc_msgSend_lock(self->_serverConfigLock, a2, v2);
  v4 = self->_serverConfig;
  objc_msgSend_unlock(self->_serverConfigLock, v5, v6);

  return v4;
}

- (NSString)languageCode
{
  v3 = objc_msgSend_preferredLanguages(MEMORY[0x277CBEAF8], a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);
  v9 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v11 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v7, v8);
    v10 = objc_msgSend_objectForKey_(v11, v12, *MEMORY[0x277CBE6C8]);
  }

  return v10;
}

- (NSString)regionCode
{
  v3 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x277CBE690]);

  return v5;
}

- (BOOL)canAccessAccount
{
  v20 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isForClouddInternalUse(self, a2, v2))
  {
    LOBYTE(v6) = 1;
LABEL_3:
    v7 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v8 = objc_msgSend_applicationBundleID(self, v4, v5);
  v9 = sub_22508B854(v8, self);

  if ((v9 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    v6 = os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO);
    if (v6)
    {
      v13 = v12;
      v16 = objc_msgSend_applicationBundleID(self, v14, v15);
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Bundle %@ isn't authorized for CloudKit, denying access", &v18, 0xCu);

      LOBYTE(v6) = 0;
    }

    goto LABEL_3;
  }

  v11 = *MEMORY[0x277D85DE8];

  LOBYTE(v6) = MEMORY[0x2821F9670](self, sel__cloudKitEnabledForCurrentClient, v10);
  return v6;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "%@ in dealloc", buf, 0xCu);
  }

  objc_msgSend_dropMMCS(self, v4, v5);
  v8 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v6, v7);
  objc_msgSend_unregisterObserverForAccountChangeNotification_(v8, v9, self);

  objc_msgSend__unregisterForAuthTokenRenewalNotifications(self, v10, v11);
  objc_msgSend__unregisterForTCCAuthorizationEvents(self, v12, v13);
  pthread_rwlock_destroy(&self->rwAccountLock);
  v15.receiver = self;
  v15.super_class = CKDContainer;
  [(CKDContainer *)&v15 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)dropMMCS
{
  objc_msgSend_drop(self->_MMCS, a2, v2);
  MMCS = self->_MMCS;
  self->_MMCS = 0;
}

- (void)_unregisterForAuthTokenRenewalNotifications
{
  v29 = *MEMORY[0x277D85DE8];
  objc_msgSend__cancelSessionValidationTimer(self, a2, v2);
  v6 = objc_msgSend_acquiredSessionAccountID(self, v4, v5);
  if (v6)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = objc_msgSend_authTokenRenewalObserverToken(selfCopy, v8, v9);
    objc_msgSend_setAuthTokenRenewalObserverToken_(selfCopy, v11, 0);
    objc_sync_exit(selfCopy);

    if (v10)
    {
      v14 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v12, v13);
      objc_msgSend_unregisterObserver_forAuthTokenRenewalInProgressNotificationsForAccountID_(v14, v15, v10, v6);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        v20 = objc_msgSend_containerID(selfCopy, v18, v19);
        v23 = objc_msgSend_ckShortDescription(v20, v21, v22);
        v25 = 138412546;
        v26 = v23;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Unregistered for auth token renewal changes for container: %@, token: %@", &v25, 0x16u);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_cancelSessionValidationTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  source = objc_msgSend_sessionValidationTimerSource(selfCopy, v3, v4);
  objc_msgSend_setSessionValidationTimerSource_(selfCopy, v5, 0);
  objc_sync_exit(selfCopy);

  v6 = source;
  if (source)
  {
    dispatch_source_cancel(source);
    v6 = source;
  }
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 2);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_containerID(self, v5, v6);
  v10 = objc_msgSend_applicationID(self, v8, v9);
  v13 = objc_msgSend_personaID(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v4, v14, @"containerID=%@, applicationID=%@, personaID=%@", v7, v10, v13);
  objc_msgSend_addObject_(v3, v16, v15);

  v18 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v17, 2);
  v21 = objc_msgSend_processScopedClientProxy(self, v19, v20);
  LODWORD(v10) = objc_msgSend_isSandboxed(v21, v22, v23);

  if (v10)
  {
    objc_msgSend_addObject_(v18, v24, @"sandboxed");
  }

  if (objc_msgSend_isForClouddInternalUse(self, v24, v25))
  {
    objc_msgSend_addObject_(v18, v26, @"internal");
  }

  if (objc_msgSend_isClientMainBundleAppleExecutable(self, v26, v27))
  {
    objc_msgSend_addObject_(v18, v28, @"clientBundleIsAppleExecutable");
  }

  v30 = objc_msgSend_options(self, v28, v29);
  v33 = objc_msgSend_useZoneWidePCS(v30, v31, v32);

  if (v33)
  {
    objc_msgSend_addObject_(v18, v34, @"zoneish");
  }

  v36 = objc_msgSend_options(self, v34, v35);
  v39 = objc_msgSend_mmcsEncryptionSupport(v36, v37, v38);

  if (v39 == 3)
  {
    objc_msgSend_addObject_(v18, v40, @"mmcsv1-v2");
  }

  else if (v39 == 2)
  {
    objc_msgSend_addObject_(v18, v40, @"mmcsv2");
  }

  v42 = objc_msgSend_options(self, v40, v41);
  v45 = objc_msgSend_bypassPCSEncryption(v42, v43, v44);

  if (v45)
  {
    objc_msgSend_addObject_(v18, v46, @"nopcs");
  }

  v48 = objc_msgSend_options(self, v46, v47);
  OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(v48, v49, v50);

  if (OnlyManatee)
  {
    objc_msgSend_addObject_(v18, v52, @"forceManatee");
  }

  v54 = objc_msgSend_options(self, v52, v53);
  v57 = objc_msgSend_useAnonymousToServerShareParticipants(v54, v55, v56);

  if (v57)
  {
    objc_msgSend_addObject_(v18, v58, @"anonymousToServerShareParticipants");
  }

  if (objc_msgSend_count(v18, v58, v59))
  {
    v61 = MEMORY[0x277CCACA8];
    v62 = objc_msgSend_componentsJoinedByString_(v18, v60, @"|");
    v64 = objc_msgSend_stringWithFormat_(v61, v63, @"flags=%@", v62);
    objc_msgSend_addObject_(v3, v65, v64);
  }

  v66 = objc_msgSend_componentsJoinedByString_(v3, v60, @", ");

  return v66;
}

- (void)discardContentIfPossible
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!objc_msgSend_accessCount(selfCopy, v3, v4))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v19 = 134217984;
      v20 = selfCopy;
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Discarding container %p", &v19, 0xCu);
    }

    selfCopy->_contentDiscarded = 1;
    v8 = objc_msgSend_pcsCacheIfExists(selfCopy, v6, v7);
    objc_msgSend_discardContentIfPossible(v8, v9, v10);

    objc_msgSend__evictRecordCache(selfCopy, v11, v12);
    v15 = objc_msgSend_sharedManager(CKDDeviceCapabilityManager, v13, v14);
    objc_msgSend_dropCacheConnectionForContainer_(v15, v16, selfCopy);

    objc_msgSend_dropCacheConnectionForContainer_(CKDShareIDCache, v17, selfCopy);
  }

  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_evictRecordCache
{
  os_unfair_lock_lock(&unk_280D54EA0);
  recordCache = self->_recordCache;
  self->_recordCache = 0;

  os_unfair_lock_unlock(&unk_280D54EA0);
}

- (CKDRecordCache)recordCache
{
  os_unfair_lock_lock(&unk_280D54EA0);
  recordCache = self->_recordCache;
  if (!recordCache)
  {
    v5 = objc_msgSend_recordCacheForContainer_(CKDRecordCache, v3, self);
    v6 = self->_recordCache;
    self->_recordCache = v5;

    recordCache = self->_recordCache;
  }

  v7 = recordCache;
  os_unfair_lock_unlock(&unk_280D54EA0);

  return v7;
}

- (CKDPCSCache)pcsCache
{
  pthread_rwlock_rdlock(&self->rwAccountLock);
  v4 = self->_pcsCache;
  pthread_rwlock_unlock(&self->rwAccountLock);
  if (!v4)
  {
    pthread_rwlock_wrlock(&self->rwAccountLock);
    pcsCache = self->_pcsCache;
    if (!pcsCache)
    {
      if (!self->_account)
      {
        v34 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CKDContainer.m", 1415, @"Container %@ had an unexpectedly-nil account ivar when creating a pcs cache", self);
      }

      v8 = objc_msgSend_deviceContext(self, v5, v6);
      v11 = objc_msgSend_containerID(self, v9, v10);
      v14 = objc_msgSend_accountOverrideInfo(self, v12, v13);
      v17 = objc_msgSend_accountID(self->_account, v15, v16);
      v20 = objc_msgSend_encryptionServiceName(self, v18, v19);
      v22 = objc_msgSend_pcsCacheForContainerID_accountOverrideInfo_accountID_encryptionServiceName_(v8, v21, v11, v14, v17, v20);
      v23 = self->_pcsCache;
      self->_pcsCache = v22;

      pcsCache = self->_pcsCache;
    }

    v4 = pcsCache;
    pthread_rwlock_unlock(&self->rwAccountLock);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (objc_msgSend_isContentAccessed(selfCopy, v25, v26))
    {
      v29 = objc_msgSend_autoContentAccessingProxy(v4, v27, v28);
      objc_msgSend_setPcsCacheAssertion_(selfCopy, v30, v29);
    }

    objc_sync_exit(selfCopy);

    objc_msgSend_endContentAccess(v4, v31, v32);
  }

  return v4;
}

- (CKDPCSFetchAggregator)fetchAggregator
{
  objc_msgSend_lock(self->_fetchAggregatorLock, a2, v2);
  fetchAggregator = self->_fetchAggregator;
  if (!fetchAggregator)
  {
    v5 = [CKDPCSFetchAggregator alloc];
    v7 = objc_msgSend_initWithContainer_(v5, v6, self);
    v8 = self->_fetchAggregator;
    self->_fetchAggregator = v7;

    fetchAggregator = self->_fetchAggregator;
  }

  v9 = fetchAggregator;
  objc_msgSend_unlock(self->_fetchAggregatorLock, v10, v11);

  return v9;
}

- (BOOL)noteSessionInvalidationError:(id)error error:(id *)a4
{
  errorCopy = error;
  selfCopy = self;
  sub_2250F05F8(errorCopy);

  return 1;
}

- (void)getKeySyncEligibilityForService:(NSString *)service isManatee:(BOOL)manatee accountDSID:(NSString *)d lastModifiedDate:(NSDate *)date testOverrideProvider:(CKDPCSTestOverrideProvider *)provider completionHandler:(id)handler
{
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = service;
  *(v15 + 24) = manatee;
  *(v15 + 32) = d;
  *(v15 + 40) = date;
  *(v15 + 48) = provider;
  *(v15 + 56) = v14;
  *(v15 + 64) = self;
  serviceCopy = service;
  dCopy = d;
  dateCopy = date;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_22507C7AC(&unk_225445E30, v15);
}

- (BOOL)allowUserKeySyncForServiceName:(id)name resourceLastModifiedDate:(id)date outdatedPublicKeyID:(id)d error:(id *)error
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26[-v16];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 32))(v17, v13, v9);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_22507C8C0(v17, v21, 1, v9);
  if (d)
  {
    d = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  selfCopy = self;
  CKDContainer.allowUserKeySync(serviceName:resourceLastModifiedDate:outdatedPublicKeyID:)(v18, v20, v17, d, v23);
  sub_22507F168(v17, &unk_27D719260, &unk_225445B40);

  return 1;
}

- (void)handleAuthTokenRenewalChangeInProgress:(BOOL)progress
{
  selfCopy = self;
  sub_2250F4674(progress);
}

- (void)applySessionValidityErrorForTesting:(id)testing
{
  testingCopy = testing;
  selfCopy = self;
  sub_2250F498C();
}

+ (id)sharedDetachedContainers
{
  if (qword_280D58150 != -1)
  {
    dispatch_once(&qword_280D58150, &unk_28385CC00);
  }

  v3 = qword_280D58148;

  return v3;
}

+ (CKDContainer)containerWithAppContainerTuple:(id)tuple processScopedClientProxy:(id)proxy logicalDeviceScopedClientProxy:(id)clientProxy containerEntitlements:(id)entitlements containerOptions:(id)options sharedContainerTable:(id)table
{
  v67 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  proxyCopy = proxy;
  clientProxyCopy = clientProxy;
  entitlementsCopy = entitlements;
  optionsCopy = options;
  tableCopy = table;
  v58 = proxyCopy;
  v59 = clientProxyCopy;
  v60 = optionsCopy;
  v61 = entitlementsCopy;
  v57 = tableCopy;
  if (!tableCopy)
  {
    v49 = [self alloc];
    v52 = objc_msgSend__initWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_(v49, v50, tupleCopy, proxyCopy, clientProxyCopy, entitlementsCopy, optionsCopy);
LABEL_20:
    v52 = v52;
    v8 = v52;
    goto LABEL_21;
  }

  selfCopy = self;
  v21 = tableCopy;
  objc_sync_enter(v21);
  obj = v21;
  objc_msgSend_allObjects(v21, v22, v23);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v24 = v63 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v62, v66, 16);
  if (v28)
  {
    v29 = *v63;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v63 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v62 + 1) + 8 * i);
        v32 = objc_msgSend_appContainerTuple(v31, v26, v27);
        if (!objc_msgSend_isEqual_(v32, v33, tupleCopy))
        {
          goto LABEL_12;
        }

        v8 = objc_msgSend_entitlements(v31, v34, v35);
        if ((objc_msgSend_isEqual_(v8, v36, v61) & 1) == 0)
        {

LABEL_12:
          continue;
        }

        v39 = objc_msgSend_options(v31, v37, v38);
        isEqual = objc_msgSend_isEqual_(v39, v40, v60);

        if (isEqual)
        {
          v8 = v31;

          v51 = 0;
          v52 = 0;
          goto LABEL_19;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v62, v66, 16);
    }

    while (v28);
  }

  v42 = [selfCopy alloc];
  v52 = objc_msgSend__initWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_(v42, v43, tupleCopy, v58, v59, v61, v60);
  v46 = objc_msgSend_sharedInternalUseContainers(selfCopy, v44, v45);
  v47 = v46 == obj;

  if (v47)
  {
    objc_msgSend_setIsForClouddInternalUse_(v52, v48, 1);
  }

  objc_msgSend_addObject_(obj, v48, v52);
  v51 = 1;
LABEL_19:

  objc_sync_exit(obj);
  if (v51)
  {
    goto LABEL_20;
  }

LABEL_21:

  v53 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (CKDContainer)containerWithAppContainerAccountTuple:(id)tuple deviceContext:(id)context sharedContainerTable:(id)table
{
  tableCopy = table;
  contextCopy = context;
  tupleCopy = tuple;
  v13 = objc_msgSend_appContainerTuple(tupleCopy, v11, v12);
  v16 = objc_msgSend_metadataCache(contextCopy, v14, v15);
  v19 = objc_msgSend_applicationID(v13, v17, v18);
  v21 = objc_msgSend_applicationMetadataForApplicationID_(v16, v20, v19);

  v24 = objc_msgSend_metadataCache(contextCopy, v22, v23);

  v26 = objc_msgSend_appContainerAccountMetadataForAppContainerAccountTuple_(v24, v25, tupleCopy);

  v29 = objc_msgSend_entitlements(v21, v27, v28);
  v32 = objc_msgSend_containerOptions(v26, v30, v31);
  if (objc_msgSend_hasAllowFakeEntitlementsEntitlement(v29, v33, v34))
  {
    v37 = objc_msgSend_fakeEntitlements(v32, v35, v36);
    v40 = objc_msgSend_count(v37, v38, v39);

    if (v40)
    {
      v42 = objc_msgSend_fakeEntitlements(v32, v35, v41);
      v44 = objc_msgSend_entitlementsByAddingOverlay_(v29, v43, v42);

      v29 = v44;
    }
  }

  v45 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(self, v35, v13, 0, 0, v29, v32, tableCopy);
  v48 = objc_msgSend_containingBundleID(v21, v46, v47);
  objc_msgSend_setContainingBundleID_(v45, v49, v48);

  v52 = objc_msgSend_clientSDKVersion(v21, v50, v51);
  objc_msgSend_setClientSDKVersion_(v45, v53, v52);
  isClientMainBundleAppleExecutable = objc_msgSend_isClientMainBundleAppleExecutable(v21, v54, v55);
  objc_msgSend_setIsClientMainBundleAppleExecutable_(v45, v57, isClientMainBundleAppleExecutable);

  return v45;
}

- (id)_initWithAppContainerTuple:(id)tuple processScopedClientProxy:(id)proxy logicalDeviceScopedClientProxy:(id)clientProxy containerEntitlements:(id)entitlements containerOptions:(id)options
{
  v221 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  proxyCopy = proxy;
  obj = clientProxy;
  entitlementsCopy = entitlements;
  optionsCopy = options;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v168 = v15;
    v171 = objc_msgSend_applicationID(tupleCopy, v169, v170);
    v174 = objc_msgSend_containerID(tupleCopy, v172, v173);
    *buf = 134219010;
    selfCopy = self;
    v213 = 2112;
    v214 = proxyCopy;
    v215 = 2112;
    v216 = obj;
    v217 = 2114;
    v218 = v171;
    v219 = 2114;
    v220 = v174;
    _os_log_debug_impl(&dword_22506F000, v168, OS_LOG_TYPE_DEBUG, "Setting up container %p for proxies %@ / %@, applicationID:%{public}@, containerID:%{public}@", buf, 0x34u);
  }

  v208.receiver = self;
  v208.super_class = CKDContainer;
  v16 = [(CKDContainer *)&v208 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_40;
  }

  objc_storeStrong(&v16->_appContainerTuple, tuple);
  objc_storeStrong((v17 + 336), options);
  objc_storeStrong((v17 + 328), entitlements);
  v18 = objc_opt_new();
  v19 = *(v17 + 520);
  *(v17 + 520) = v18;

  if (!pthread_rwlock_init((v17 + 8), 0))
  {
    v22 = objc_opt_new();
    v23 = *(v17 + 464);
    *(v17 + 464) = v22;

    v24 = objc_opt_new();
    v25 = *(v17 + 472);
    *(v17 + 472) = v24;

    v26 = objc_opt_new();
    v27 = *(v17 + 480);
    *(v17 + 480) = v26;

    v28 = objc_opt_new();
    v29 = *(v17 + 488);
    *(v17 + 488) = v28;

    v30 = objc_opt_new();
    v31 = *(v17 + 496);
    *(v17 + 496) = v30;

    v32 = objc_opt_new();
    v33 = *(v17 + 504);
    *(v17 + 504) = v32;

    v34 = objc_opt_new();
    v35 = *(v17 + 512);
    *(v17 + 512) = v34;

    v36 = objc_opt_new();
    v37 = *(v17 + 528);
    *(v17 + 528) = v36;

    v38 = *(v17 + 536);
    *(v17 + 536) = 0;

    objc_storeWeak((v17 + 264), proxyCopy);
    objc_storeWeak((v17 + 272), obj);
    v41 = objc_msgSend_processName(v17, v39, v40);
    v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"%@.%@", @"com.apple.cloudkit.cancellation", v41);
    v44 = v43;
    v47 = objc_msgSend_UTF8String(v43, v45, v46);
    v48 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v49 = dispatch_queue_create(v47, v48);
    v50 = *(v17 + 600);
    *(v17 + 600) = v49;

    v52 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"%@.%@", @"com.apple.cloudkit.status", v41);
    v53 = v52;
    v56 = objc_msgSend_UTF8String(v52, v54, v55);
    v57 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v58 = dispatch_queue_attr_make_with_qos_class(v57, QOS_CLASS_UTILITY, 0);
    v59 = dispatch_queue_create(v56, v58);
    v60 = *(v17 + 608);
    *(v17 + 608) = v59;

    if (objc_msgSend_bypassPCSEncryption(optionsCopy, v61, v62))
    {
      v64 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v63, @"%@.%@", @"com.apple.cloudkit.accountStatus", v41);
      v65 = v64;
      v68 = objc_msgSend_UTF8String(v64, v66, v67);
      v69 = dispatch_workloop_create(v68);
      v70 = *(v17 + 680);
      *(v17 + 680) = v69;
    }

    else
    {
      if (qword_280D58160 != -1)
      {
        dispatch_once(&qword_280D58160, &unk_28385CC20);
      }

      v71 = qword_280D58158;
      v64 = *(v17 + 680);
      *(v17 + 680) = v71;
    }

    v73 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, @"%@.%@", @"com.apple.cloudkit.tccauth", v41);
    v74 = v73;
    v77 = objc_msgSend_UTF8String(v73, v75, v76);
    v78 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v79 = dispatch_queue_create(v77, v78);
    v80 = *(v17 + 672);
    *(v17 + 672) = v79;

    dispatch_queue_set_specific(*(v17 + 672), "com.apple.cloudkit.containerTCCQueue", 1, 0);
    v81 = objc_opt_new();
    v82 = *(v17 + 688);
    *(v17 + 688) = v81;

    v85 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v83, v84);
    v86 = *(v17 + 704);
    *(v17 + 704) = v85;

    v89 = objc_msgSend_currentProcess(CKDDaemonProcess, v87, v88);
    v92 = objc_msgSend_processType(v89, v90, v91);

    if (v92 <= 2)
    {
      *(v17 + 648) = qword_225447CF8[v92];
    }

    objc_msgSend__setupOperationQueues(v17, v93, v94);
    v95 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v96 = *(v17 + 640);
    *(v17 + 640) = v95;

    objc_msgSend__registerForTCCAuthorizationEvents(v17, v97, v98);
    objc_msgSend_hasTCCAuthorization_(v17, v99, 0);
    v102 = objc_msgSend_processScopedClientProxy(v17, v100, v101);
    IsAttached = objc_msgSend_processIsAttached(v102, v103, v104);

    if (IsAttached)
    {
      objc_msgSend_hasValidatedEntitlements(v17, v106, v107);
    }

    if (objc_msgSend_holdAllOperations(optionsCopy, v106, v107))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v110 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v110, OS_LOG_TYPE_DEBUG, "This client requested that we hold all its operations.", buf, 2u);
      }
    }

    v111 = objc_msgSend_holdAllOperations(optionsCopy, v108, v109);
    objc_msgSend_setContainerAvailable_(v17, v112, v111 ^ 1u);
    *(v17 + 280) = -1;
    if (objc_msgSend_forceEnableReadOnlyManatee(optionsCopy, v113, v114))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v117 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v175 = v117;
        v178 = objc_msgSend_containerID(tupleCopy, v176, v177);
        v181 = objc_msgSend_procName(proxyCopy, v179, v180);
        *buf = 134218498;
        selfCopy = v17;
        v213 = 2112;
        v214 = v178;
        v215 = 2112;
        v216 = v181;
        _os_log_debug_impl(&dword_22506F000, v175, OS_LOG_TYPE_DEBUG, "CKDContainer (%p) for container %@ (%@) is forcing manatee to be enabled. Weird stuff might happen- you've been warned!", buf, 0x20u);
      }
    }

    objc_msgSend__loadApplicationContainerPathAndType(v17, v115, v116);
    if (proxyCopy)
    {
      v120 = objc_alloc(MEMORY[0x277CC1E50]);
      v123 = objc_msgSend_applicationBundleID(v17, v121, v122);
      v207 = 0;
      v125 = objc_msgSend_initWithBundleIdentifier_error_(v120, v124, v123, &v207);
      v126 = v207;

      if (v126)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v129 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v130 = v129;
          v133 = objc_msgSend_applicationBundleID(v17, v131, v132);
          *buf = 138412546;
          selfCopy = v133;
          v213 = 2112;
          v214 = v126;
          _os_log_impl(&dword_22506F000, v130, OS_LOG_TYPE_INFO, "Bundle ID %@ doesn't belong to an application: %@", buf, 0x16u);
        }
      }

      else if (v125)
      {
        v134 = objc_msgSend_containingBundleRecord(v125, v127, v128);
        v137 = objc_msgSend_bundleIdentifier(v134, v135, v136);
        objc_msgSend_setContainingBundleID_(v17, v138, v137);
      }

      v139 = objc_msgSend_clientSDKVersion(proxyCopy, v127, v128);
      objc_msgSend_setClientSDKVersion_(v17, v140, v139);
      isClientMainBundleAppleExecutable = objc_msgSend_isClientMainBundleAppleExecutable(proxyCopy, v141, v142);
      objc_msgSend_setIsClientMainBundleAppleExecutable_(v17, v144, isClientMainBundleAppleExecutable);
    }

    objc_msgSend__determineHardwareInfo(v17, v118, v119);
    v147 = objc_msgSend_directoryContext(v17, v145, v146);
    v150 = objc_msgSend_temporaryDirectory(v147, v148, v149);
    v153 = objc_msgSend_path(v150, v151, v152);
    v209 = *MEMORY[0x277CBBF30];
    v154 = CKProcessStartDate();
    v210 = v154;
    v156 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v155, &v210, &v209, 1);
    location[1] = 0;
    CKCreateDirectoryAtPathWithAttributes();
    v157 = 0;

    objc_initWeak(location, v17);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v158 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = v17;
      _os_log_impl(&dword_22506F000, v158, OS_LOG_TYPE_INFO, "Registering container %p for account-change-notification", buf, 0xCu);
    }

    v161 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v159, v160);
    v204[0] = MEMORY[0x277D85DD0];
    v204[1] = 3221225472;
    v204[2] = sub_22516C134;
    v204[3] = &unk_278547048;
    objc_copyWeak(&v205, location);
    objc_msgSend_registerObserver_forAccountChangeNotification_(v161, v162, v17, v204);

    objc_msgSend__reloadAccount_(v17, v163, 0);
    objc_msgSend__registerForAuthTokenRenewalNotifications(v17, v164, v165);
    objc_destroyWeak(&v205);
    objc_destroyWeak(location);

LABEL_40:
    v166 = *MEMORY[0x277D85DE8];
    return v17;
  }

  v182 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v20, v21);
  v183 = objc_alloc(MEMORY[0x277CBC6B0]);
  v184 = objc_alloc(MEMORY[0x277CBC6C8]);
  v186 = objc_msgSend_initWithFilePath_lineNumber_(v184, v185, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/IPCMessaging/CKDContainer.m", 352);
  v189 = objc_msgSend_containerID(v17, v187, v188);
  v191 = objc_msgSend_initWithSourceCodeLocation_format_(v183, v190, v186, @"Failed to initialize account lock in container: %@", v189);
  objc_msgSend_handleSignificantIssue_actions_(v182, v192, v191, 0);

  v193 = MEMORY[0x277CCACA8];
  v196 = objc_msgSend_containerID(v17, v194, v195);
  v198 = objc_msgSend_stringWithFormat_(v193, v197, @"Failed to initialize account lock in container: %@", v196);

  objc_msgSend_UTF8String(v198, v199, v200);
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)_restartSessionValidationTimer:(double)timer
{
  objc_msgSend__cancelSessionValidationTimer(self, a2, v3);
  v6 = CKGetGlobalQueue();
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v6);

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22516C518;
  v12[3] = &unk_278547098;
  objc_copyWeak(&v13, &location);
  v8 = v12;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_2250877FC;
  handler[3] = &unk_2785456A0;
  v16 = v8;
  dispatch_source_set_event_handler(v7, handler);

  v9 = dispatch_time(0, (timer * 1000000000.0));
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_activate(v7);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_setSessionValidationTimerSource_(selfCopy, v11, v7);
  objc_sync_exit(selfCopy);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  v130 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy6 = self;
    _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Invalidating %@", buf, 0xCu);
  }

  v8 = objc_msgSend_operationQueue(self, v6, v7);
  isSuspended = objc_msgSend_isSuspended(v8, v9, v10);

  if (isSuspended)
  {
    objc_msgSend__setupOperationQueues(self, v12, v13);
  }

  else
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy6 = self;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Cancelling all operations for %@", buf, 0xCu);
    }

    v17 = objc_msgSend_cloudKitSupportOperationThrottleQueue(self, v15, v16);
    objc_msgSend_cancelAllOperations(v17, v18, v19);

    v22 = objc_msgSend_backgroundOperationThrottleQueue(self, v20, v21);
    objc_msgSend_cancelAllOperations(v22, v23, v24);

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v27 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v25, v26, 0);
    v30 = objc_msgSend_operations(v27, v28, v29);

    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v117, v129, 16);
    if (v32)
    {
      v35 = v32;
      v36 = *v118;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v118 != v36)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v117 + 1) + 8 * i);
          v39 = objc_msgSend_container(v38, v33, v34);

          if (v39 == self)
          {
            objc_msgSend_cancel(v38, v33, v34);
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v117, v129, 16);
      }

      while (v35);
    }

    v42 = objc_msgSend_operationQueue(self, v40, v41);
    objc_msgSend_cancelAllOperations(v42, v43, v44);

    objc_msgSend_cancelAllOperations(self->_fetchAggregator, v45, v46);
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v47 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v84 = v47;
      v87 = objc_msgSend_cloudKitSupportOperationThrottleQueue(self, v85, v86);
      v90 = objc_msgSend_operations(v87, v88, v89);
      *buf = 138412546;
      selfCopy6 = self;
      v123 = 2112;
      v124 = v90;
      _os_log_debug_impl(&dword_22506F000, v84, OS_LOG_TYPE_DEBUG, "Waiting for all operations on the cloudkit service queue to finish for %@: %@", buf, 0x16u);
    }

    v50 = objc_msgSend_cloudKitSupportOperationThrottleQueue(self, v48, v49);
    objc_msgSend_waitUntilAllOperationsAreFinished(v50, v51, v52);

    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v53 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v91 = v53;
      v94 = objc_msgSend_backgroundOperationThrottleQueue(self, v92, v93);
      v97 = objc_msgSend_operations(v94, v95, v96);
      *buf = 138412546;
      selfCopy6 = self;
      v123 = 2112;
      v124 = v97;
      _os_log_debug_impl(&dword_22506F000, v91, OS_LOG_TYPE_DEBUG, "Waiting for all operations on the background more operations queue to finish for %@: %@", buf, 0x16u);
    }

    v56 = objc_msgSend_backgroundOperationThrottleQueue(self, v54, v55);
    objc_msgSend_waitUntilAllOperationsAreFinished(v56, v57, v58);

    v61 = objc_msgSend_operationQueue(self, v59, v60);
    objc_msgSend_cancelAllOperations(v61, v62, v63);

    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v64 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v98 = v64;
      v101 = objc_msgSend_operationQueue(self, v99, v100);
      v104 = objc_msgSend_operations(v101, v102, v103);
      v107 = objc_msgSend_cleanupOperationQueue(self, v105, v106);
      v110 = objc_msgSend_operations(v107, v108, v109);
      v113 = objc_msgSend_uncancellableOperationQueue(self, v111, v112);
      v116 = objc_msgSend_operations(v113, v114, v115);
      *buf = 138413058;
      selfCopy6 = self;
      v123 = 2112;
      v124 = v104;
      v125 = 2112;
      v126 = v110;
      v127 = 2112;
      v128 = v116;
      _os_log_debug_impl(&dword_22506F000, v98, OS_LOG_TYPE_DEBUG, "Waiting for all operations to finish for %@. operationQueue=%@ cleanupOperationQueue=%@ uncancellableOperationQueue=%@", buf, 0x2Au);
    }

    v67 = objc_msgSend_operationQueue(self, v65, v66);
    objc_msgSend_waitUntilAllOperationsAreFinished(v67, v68, v69);

    v72 = objc_msgSend_cleanupOperationQueue(self, v70, v71);
    objc_msgSend_waitUntilAllOperationsAreFinished(v72, v73, v74);

    v77 = objc_msgSend_uncancellableOperationQueue(self, v75, v76);
    objc_msgSend_waitUntilAllOperationsAreFinished(v77, v78, v79);
  }

  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v80 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy6 = self;
    _os_log_impl(&dword_22506F000, v80, OS_LOG_TYPE_INFO, "Finished flushing operation queue for %@", buf, 0xCu);
  }

  objc_msgSend_tearDownAssetTransfers(self, v81, v82);
  v83 = *MEMORY[0x277D85DE8];
}

- (void)_clearCaches
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v29 = 134217984;
    selfCopy5 = self;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Clearing the asset cache for container %p", &v29, 0xCu);
  }

  objc_msgSend_clearAssetCache(self, v6, v7);
  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v29 = 134217984;
    selfCopy5 = self;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Clearing the record cache for container %p", &v29, 0xCu);
  }

  objc_msgSend_clearRecordCache(self, v9, v10);
  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v29 = 134217984;
    selfCopy5 = self;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Clearing the persisted PCS cache for container %p", &v29, 0xCu);
  }

  v14 = objc_msgSend_pcsCache(self, v12, v13);
  objc_msgSend_clearPCSCaches(v14, v15, v16);

  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v29 = 134217984;
    selfCopy5 = self;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Clearing the in-memory PCS cache for container %p", &v29, 0xCu);
  }

  v20 = objc_msgSend_pcsCache(self, v18, v19);
  objc_msgSend_clearPCSMemoryCaches(v20, v21, v22);

  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v23 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v29 = 134217984;
    selfCopy5 = self;
    _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Clearing the container info cache for container %p", &v29, 0xCu);
  }

  v26 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v24, v25);
  objc_msgSend_expireConfigurationForContainer_(v26, v27, self);

  v28 = *MEMORY[0x277D85DE8];
}

+ (id)applicationDataContainerDirectoryForBundleID:(id)d outApplicationBinaryBundleURL:(id *)l outAdopterProcessType:(int64_t *)type
{
  v84 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = objc_alloc(MEMORY[0x277CC1E50]);
  v73 = 0;
  v10 = objc_msgSend_initWithBundleIdentifier_error_(v8, v9, dCopy, &v73);
  v70 = v73;
  v11 = MEMORY[0x277CBC830];
  typeCopy = type;
  lCopy = l;
  if (v10)
  {
    v12 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = v11;
    v14 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v17 = v14;
      v20 = objc_msgSend_containingBundleRecord(v10, v18, v19);
      v23 = objc_msgSend_bundleIdentifier(v20, v21, v22);
      *buf = 138412546;
      v75 = dCopy;
      v76 = 2112;
      v77 = v23;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Launch Services reports that bundle ID %@ belongs to an application extension with containing bundle id: %@", buf, 0x16u);
    }

    v24 = objc_msgSend_containingBundleRecord(v10, v15, v16);
    v27 = objc_msgSend_bundleIdentifier(v24, v25, v26);

    dCopy = v27;
  }

  else
  {
    v12 = MEMORY[0x277CBC880];
    v13 = MEMORY[0x277CBC830];
  }

  v28 = objc_alloc(MEMORY[0x277CC1E70]);
  v72 = 0;
  v30 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v28, v29, dCopy, 0, &v72);
  v31 = v72;
  if (v10)
  {
    v32 = v10;
  }

  else
  {
    v32 = v30;
  }

  v33 = v32;
  v36 = objc_msgSend_dataContainerURL(v33, v34, v35);
  v39 = objc_msgSend_applicationState(v30, v37, v38);
  isInstalled = objc_msgSend_isInstalled(v39, v40, v41);

  if (*v12 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v43 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
  {
    v51 = @"NO";
    if (isInstalled)
    {
      v51 = @"YES";
    }

    v66 = v51;
    log = v43;
    v65 = objc_msgSend_CKSanitizedPath(v36, v52, v53);
    v68 = objc_msgSend_URL(v33, v54, v55);
    v58 = objc_msgSend_CKSanitizedPath(v68, v56, v57);
    v61 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v59, v60);
    v64 = objc_msgSend_ckShortDescription(v61, v62, v63);
    *buf = 138413314;
    v75 = dCopy;
    v76 = 2112;
    v77 = v66;
    v78 = 2112;
    v79 = v65;
    v80 = 2112;
    v81 = v58;
    v82 = 2112;
    v83 = v64;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "applicationBundleID:%@, installed:%@, containerPath:%@, callingBundlePath:%@, currentPersona:%@", buf, 0x34u);
  }

  if (lCopy)
  {
    *lCopy = objc_msgSend_URL(v33, v44, v45);
  }

  if (typeCopy)
  {
    v46 = objc_msgSend_developerType(v30, v44, v45);
    v47 = 3;
    if (v46 == 1)
    {
      v47 = 1;
    }

    v48 = 2 * (v46 != 1);
    if (!v30)
    {
      v48 = 4;
    }

    if (v10)
    {
      v48 = v47;
    }

    *typeCopy = v48;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)_writeAdopterMetadataToCache:(id)cache
{
  v70 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v7 = objc_msgSend_processScopedClientProxy(self, v5, v6);
  if (objc_msgSend_processIsAttached(v7, v8, v9))
  {
    objc_msgSend_hasTCCAuthorization(self, v10, v11);
    objc_msgSend_hasValidatedEntitlements(self, v12, v13);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v65 = cacheCopy;
    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v67 = v7;
      v68 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Echoing proxy %@ info into metadata cache for container %@", buf, 0x16u);
    }

    v15 = [CKDApplicationMetadata alloc];
    v18 = objc_msgSend_adopterProcessType(self, v16, v17);
    v21 = objc_msgSend_containingBundleID(self, v19, v20);
    v24 = objc_msgSend_directoryContext(self, v22, v23);
    v27 = objc_msgSend_containerDirectory(v24, v25, v26);
    v30 = objc_msgSend_path(v27, v28, v29);
    v33 = objc_msgSend_entitlements(self, v31, v32);
    v36 = objc_msgSend_clientSDKVersion(v7, v34, v35);
    isClientMainBundleAppleExecutable = objc_msgSend_isClientMainBundleAppleExecutable(v7, v37, v38);
    v41 = objc_msgSend_initWithAdopterProcessType_containingBundleID_applicationContainerPath_entitlements_clientSDKVersion_isClientMainBundleAppleExecutable_(v15, v40, v18, v21, v30, v33, v36, isClientMainBundleAppleExecutable);

    v44 = objc_msgSend_deviceContext(self, v42, v43);
    v47 = objc_msgSend_metadataCache(v44, v45, v46);
    v50 = objc_msgSend_applicationID(self, v48, v49);
    objc_msgSend_setApplicationMetadata_forApplicationID_(v47, v51, v41, v50);

    v52 = objc_opt_new();
    v55 = objc_msgSend_options(self, v53, v54);
    objc_msgSend_setContainerOptions_(v52, v56, v55);

    v59 = objc_msgSend_deviceContext(self, v57, v58);
    v62 = objc_msgSend_metadataCache(v59, v60, v61);
    cacheCopy = v65;
    objc_msgSend_setAppContainerAccountMetadata_forAppContainerAccountTuple_(v62, v63, v52, v65);
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (BOOL)setupMMCSWrapper:(id *)wrapper
{
  v68[1] = *MEMORY[0x277D85DE8];
  objc_msgSend_lock(self->_mmcsLock, a2, wrapper);
  v8 = objc_msgSend_MMCS(self, v6, v7);

  if (!v8)
  {
    v11 = objc_msgSend_applicationBundleID(self, v9, v10);
    v14 = objc_msgSend_directoryContext(self, v12, v13);
    v17 = objc_msgSend_deviceContext(self, v15, v16);
    v20 = objc_msgSend_deviceScopedDatabase(v17, v18, v19);
    v67 = 0;
    v22 = objc_msgSend_MMCSWrapperForApplicationBundleID_directoryContext_database_error_(CKDMMCS, v21, v11, v14, v20, &v67);
    v23 = v67;

    if (v22)
    {
      objc_msgSend_setMMCS_(self, v24, v22);
      v28 = objc_msgSend_MMCS(self, v26, v27);

      if (!v28)
      {
        v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CKDContainer.m", 941, @"Expected non-nil MMCS wrapper for %@", self);
      }
    }

    else if (wrapper)
    {
      v31 = v23;
      *wrapper = v23;
    }

    v32 = objc_msgSend_MMCS(self, v24, v25);
    v35 = objc_msgSend_assetCache(v32, v33, v34);
    isNewEmptyCache = objc_msgSend_isNewEmptyCache(v35, v36, v37);

    if (isNewEmptyCache)
    {
      v41 = objc_msgSend_containerID(self, v39, v40);
      v44 = objc_msgSend_specialContainerType(v41, v42, v43);

      if (v44 == 4)
      {
        v47 = objc_msgSend_containerCloudKitDirectory(v14, v45, v46);
        v50 = objc_msgSend_URLByDeletingLastPathComponent(v47, v48, v49);
        v53 = objc_msgSend_defaultManager(MEMORY[0x277D65260], v51, v52);
        v55 = objc_msgSend_pathInfoWithURL_(MEMORY[0x277D65258], v54, v50);
        v68[0] = v55;
        v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, v68, 1);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = sub_22516E478;
        v65[3] = &unk_2785470C0;
        v66 = v11;
        objc_msgSend_registerPaths_forBundleID_completionHandler_(v53, v58, v57, v66, v65);
      }
    }
  }

  v59 = objc_msgSend_MMCS(self, v9, v10);
  v60 = v59 != 0;

  objc_msgSend_unlock(self->_mmcsLock, v61, v62);
  v63 = *MEMORY[0x277D85DE8];
  return v60;
}

- (void)tearDownAssetTransfers
{
  v8 = objc_msgSend_MMCS(self, a2, v2);
  v5 = objc_msgSend_assetCache(v8, v3, v4);
  v7 = objc_msgSend_evictAllFilesForced_(v5, v6, 0);
}

- (void)performRequest:(id)request
{
  requestCopy = request;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22516E700;
  v10[3] = &unk_278545898;
  v10[4] = self;
  v11 = requestCopy;
  v8 = requestCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)setServerConfig:(id)config
{
  configCopy = config;
  objc_msgSend_lock(self->_serverConfigLock, v5, v6);
  v8 = configCopy;
  if (self->_serverConfig != configCopy)
  {
    objc_storeStrong(&self->_serverConfig, config);
  }

  objc_msgSend_unlock(self->_serverConfigLock, v8, v7);
}

- (void)setServerInfo:(id)info
{
  infoCopy = info;
  obj = self;
  objc_sync_enter(obj);
  serverInfo = obj->_serverInfo;
  obj->_serverInfo = infoCopy;

  objc_sync_exit(obj);
}

- (id)_urlBySettingCustomBaseURL:(id)l onURL:(id)rL
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = rLCopy;
  if (lCopy && rLCopy)
  {
    v9 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v7, rLCopy, 1);
    v12 = objc_msgSend_scheme(lCopy, v10, v11);
    objc_msgSend_setScheme_(v9, v13, v12);

    v16 = objc_msgSend_host(lCopy, v14, v15);
    objc_msgSend_setHost_(v9, v17, v16);

    v20 = objc_msgSend_port(lCopy, v18, v19);
    objc_msgSend_setPort_(v9, v21, v20);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412290;
      v29 = lCopy;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Using custom url override of %@", &v28, 0xCu);
    }

    v25 = objc_msgSend_URL(v9, v23, v24);
  }

  else
  {
    v25 = rLCopy;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)baseURLForServerType:(int64_t)type partitionType:(int64_t)partitionType
{
  v67 = *MEMORY[0x277D85DE8];
  if (type > 2)
  {
    if (type == 3)
    {
      if (partitionType == 2)
      {
        v17 = objc_msgSend_serverInfo(self, a2, 3);
        objc_msgSend_publicCodeServiceURL(v17, v18, v19);
      }

      else
      {
        v17 = objc_msgSend_account(self, a2, 3);
        objc_msgSend_privateCodeServiceURL(v17, v48, v49);
      }
      v22 = ;

      v25 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v50, v51);
      v28 = objc_msgSend_customCodeServiceBaseURL(v25, v52, v53);
    }

    else
    {
      if (type != 4)
      {
LABEL_10:
        if (partitionType == 2)
        {
          v11 = objc_msgSend_serverInfo(self, a2, type);
          objc_msgSend_publicCloudDBURL(v11, v12, v13);
        }

        else
        {
          v11 = objc_msgSend_account(self, a2, type);
          objc_msgSend_privateCloudDBURL(v11, v20, v21);
        }
        v22 = ;

        v25 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v23, v24);
        v28 = objc_msgSend_customCloudDBBaseURL(v25, v26, v27);
        goto LABEL_26;
      }

      if (partitionType == 2)
      {
        v8 = objc_msgSend_serverInfo(self, a2, 4);
        objc_msgSend_publicMetricsServiceURL(v8, v9, v10);
      }

      else
      {
        v8 = objc_msgSend_account(self, a2, 4);
        objc_msgSend_privateMetricsServiceURL(v8, v36, v37);
      }
      v22 = ;

      v25 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v38, v39);
      v28 = objc_msgSend_customMetricsServiceBaseURL(v25, v40, v41);
    }
  }

  else
  {
    if (type != 1)
    {
      if (type == 2)
      {
        if (partitionType == 2)
        {
          v5 = objc_msgSend_serverInfo(self, a2, 2);
          objc_msgSend_publicDeviceServiceURL(v5, v6, v7);
        }

        else
        {
          v5 = objc_msgSend_account(self, a2, 2);
          objc_msgSend_privateDeviceServiceURL(v5, v30, v31);
        }
        v22 = ;

        v25 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v32, v33);
        v28 = objc_msgSend_customDeviceServiceBaseURL(v25, v34, v35);
        goto LABEL_26;
      }

      goto LABEL_10;
    }

    if (partitionType == 2)
    {
      v14 = objc_msgSend_serverInfo(self, a2, 1);
      objc_msgSend_publicShareServiceURL(v14, v15, v16);
    }

    else
    {
      v14 = objc_msgSend_account(self, a2, 1);
      objc_msgSend_privateShareServiceURL(v14, v42, v43);
    }
    v22 = ;

    v25 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v44, v45);
    v28 = objc_msgSend_customShareServiceBaseURL(v25, v46, v47);
  }

LABEL_26:
  v54 = v28;
  v55 = objc_msgSend__urlBySettingCustomBaseURL_onURL_(self, v29, v28, v22);

  if (!v55)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v59 = v56;
      v62 = objc_msgSend_account(self, v60, v61);
      v63 = 138412546;
      v64 = v62;
      v65 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_22506F000, v59, OS_LOG_TYPE_ERROR, "Couldn't pull url from backing account %@ or container %@", &v63, 0x16u);
    }
  }

  v57 = *MEMORY[0x277D85DE8];

  return v55;
}

- (void)fetchConfigurationForOperation:(id)operation withCompletionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v10 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22516F578;
  v13[3] = &unk_278547108;
  objc_copyWeak(&v15, &location);
  v11 = handlerCopy;
  v14 = v11;
  objc_msgSend_configurationForOperation_completionHandler_(v10, v12, operationCopy, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)fetchPublicURLForServerType:(int64_t)type operation:(id)operation completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22516F820;
  v11[3] = &unk_278547158;
  v12 = handlerCopy;
  typeCopy = type;
  v9 = handlerCopy;
  objc_msgSend__fetchContainerServerInfoForOperation_requireUserIDs_requireEnvironment_completionHandler_(self, v10, operation, 0, 0, v11);
}

- (void)fetchImportantUserIDsForOperation:(id)operation withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22516F9D0;
  v9[3] = &unk_278547130;
  v9[4] = self;
  v10 = handlerCopy;
  v7 = handlerCopy;
  objc_msgSend__fetchContainerServerInfoForOperation_requireUserIDs_requireEnvironment_completionHandler_(self, v8, operation, 1, 0, v9);
}

- (void)fetchServerEnvironmentForOperation:(id)operation withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22516FC24;
  v9[3] = &unk_278547180;
  v10 = handlerCopy;
  v7 = handlerCopy;
  objc_msgSend__fetchContainerServerInfoForOperation_requireUserIDs_requireEnvironment_completionHandler_(self, v8, operation, 0, 1, v9);
}

- (void)fetchPrivateURLForServerType:(int64_t)type operation:(id)operation completionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  v11 = objc_msgSend_baseURLForServerType_partitionType_(self, v10, type, 1);
  objc_initWeak(&location, self);
  if (v11)
  {
    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Couldn't get a private URL. Fetching updated account properties", buf, 2u);
    }

    v15 = objc_msgSend_account(self, v13, v14);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22516FE6C;
    v17[3] = &unk_2785471A8;
    objc_copyWeak(v19, &location);
    v18 = handlerCopy;
    v19[1] = type;
    objc_msgSend_updateAccountPropertiesAndSaveAccountWithCompletionHandler_(v15, v16, v17);

    objc_destroyWeak(v19);
  }

  objc_destroyWeak(&location);
}

- (NSError)sessionInvalidationError
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_sessionInvalidationError;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSessionInvalidationError:(id)error
{
  errorCopy = error;
  obj = self;
  objc_sync_enter(obj);
  sessionInvalidationError = obj->_sessionInvalidationError;
  obj->_sessionInvalidationError = errorCopy;

  objc_sync_exit(obj);
}

- (id)pcsManagerIfExists
{
  objc_msgSend_lock(self->_pcsManagerLock, a2, v2);
  pthread_rwlock_rdlock(&self->rwAccountLock);
  v4 = self->_pcsManager;
  pthread_rwlock_unlock(&self->rwAccountLock);
  objc_msgSend_unlock(self->_pcsManagerLock, v5, v6);

  return v4;
}

- (CKDAnonymousSharingManager)anonymousSharingManager
{
  objc_msgSend_lock(self->_anonymousSharingManagerLock, a2, v2);
  anonymousSharingManager = self->_anonymousSharingManager;
  if (!anonymousSharingManager)
  {
    v5 = [CKDAnonymousSharingManager alloc];
    v7 = objc_msgSend_initWithContainer_(v5, v6, self);
    v8 = self->_anonymousSharingManager;
    self->_anonymousSharingManager = v7;

    anonymousSharingManager = self->_anonymousSharingManager;
  }

  v9 = anonymousSharingManager;
  objc_msgSend_unlock(self->_anonymousSharingManagerLock, v10, v11);

  return v9;
}

- (BOOL)_isAdopterAppleInternal
{
  v4 = objc_msgSend_deviceContext(self, a2, v2);
  v7 = objc_msgSend_testDeviceReference(v4, v5, v6);
  v10 = objc_msgSend_deviceID(v7, v8, v9);
  hasSuffix = objc_msgSend_hasSuffix_(v10, v11, @"MasqueradeAsNonAppleAdopter");

  if (hasSuffix)
  {
    return 0;
  }

  if ((objc_msgSend_isClientMainBundleAppleExecutable(self, v13, v14) & 1) == 0)
  {
    v18 = objc_msgSend_containerID(self, v16, v17);
    isAppleInternal = objc_msgSend_isAppleInternal(v18, v19, v20);

    if (!isAppleInternal)
    {
      return 0;
    }
  }

  v22 = objc_msgSend_containerID(self, v16, v17);
  v15 = objc_msgSend_specialContainerType(v22, v23, v24) != 6;

  return v15;
}

- (id)possiblyWrappedAuthTokenErrorGivenError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if ((objc_msgSend__isAdopterAppleInternal(self, v4, v5) & 1) != 0 || (objc_msgSend_clientSDKVersion(self, v7, v8), !CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24()) || objc_msgSend_code(errorCopy, v9, v10) == 1029)
    {
      v12 = errorCopy;
    }

    else
    {
      v12 = objc_msgSend_errorWithDomain_code_userInfo_error_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1029, 0, errorCopy, @"Account temporarily unavailable due to bad or missing auth token");
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isContainerAuthorizedForOperation:(id)operation error:(id *)error
{
  v79 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (!operationCopy)
  {
    v62 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v62, v63, a2, self, @"CKDContainer.m", 1572, @"Expected non-nil operation for proxy %@", self);
  }

  v10 = objc_msgSend_operationInfo(operationCopy, v7, v8);
  v13 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v18 = objc_msgSend_applicationID(self, v14, v15);
    v17 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v18, v19, v20);
  }

  v23 = objc_msgSend_operationInfo(operationCopy, v21, v22);
  v26 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v23, v24, v25);
  v29 = v26;
  if (v26)
  {
    v30 = v26;
  }

  else
  {
    v31 = objc_msgSend_applicationID(self, v27, v28);
    v30 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v31, v32, v33);
  }

  v36 = objc_msgSend_sourceApplicationSecondaryIdentifier(operationCopy, v34, v35);
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_225073F60;
  v73 = sub_22507353C;
  v74 = 0;
  v39 = objc_msgSend_entitlements(self, v37, v38);
  hasMasqueradingEntitlement = objc_msgSend_hasMasqueradingEntitlement(v39, v40, v41);

  if (hasMasqueradingEntitlement)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v45 = *MEMORY[0x277CBC830];
    v46 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Giving %@ blanket access to any container", buf, 0xCu);
    }
  }

  else
  {
    v47 = objc_msgSend_entitlements(self, v43, v44);
    v50 = objc_msgSend_clientPrefixEntitlement(v47, v48, v49);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2251706FC;
    aBlock[3] = &unk_2785471D0;
    aBlock[4] = self;
    v51 = v50;
    v67 = v51;
    v68 = &v69;
    v52 = _Block_copy(aBlock);
    v53 = v52;
    if (!v17 || ((*(v52 + 2))(v52, v17)) && (!v30 || (v53)[2](v53, v30)))
    {
      if (!v36)
      {

        v46 = 1;
        goto LABEL_30;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v54 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v77 = 2112;
        v78 = v36;
        _os_log_error_impl(&dword_22506F000, v54, OS_LOG_TYPE_ERROR, "Container %@ is not allowed to set an operation sourceApplicationSecondaryIdentifier to %@", buf, 0x16u);
      }

      v56 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v55, *MEMORY[0x277CBBF50], 8, @"Container %@ is not allowed to set an operation sourceApplicationSecondaryIdentifier to %@ without an entitlement", self, v36);
      v57 = v70[5];
      v70[5] = v56;
    }

    if (!v70[5])
    {
      v64 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v58, v59);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v64, v65, a2, self, @"CKDContainer.m", 1626, @"Expected non-nil error for operation %@", operationCopy);
    }

    v46 = 0;
    if (error)
    {
      *error = v70[5];
    }
  }

LABEL_30:
  _Block_object_dispose(&v69, 8);

  v60 = *MEMORY[0x277D85DE8];
  return v46;
}

- (CKDIdentityCache)publicIdentitiesDiskCache
{
  objc_msgSend_lock(self->_publicIdentityServiceLock, a2, v2);
  publicIdentitiesDiskCache = self->_publicIdentitiesDiskCache;
  if (!publicIdentitiesDiskCache)
  {
    v7 = objc_msgSend_deviceContext(self, v4, v5);
    v9 = objc_msgSend_cacheWithDeviceContext_(CKDIdentityCache, v8, v7);
    v10 = self->_publicIdentitiesDiskCache;
    self->_publicIdentitiesDiskCache = v9;

    publicIdentitiesDiskCache = self->_publicIdentitiesDiskCache;
  }

  v11 = publicIdentitiesDiskCache;
  objc_msgSend_unlock(self->_publicIdentityServiceLock, v12, v13);

  return v11;
}

- (CKDPublicIdentityLookupService)foregroundPublicIdentityLookupService
{
  objc_msgSend_lock(self->_publicIdentityServiceLock, a2, v2);
  foregroundPublicIdentityLookupService = self->_foregroundPublicIdentityLookupService;
  if (!foregroundPublicIdentityLookupService)
  {
    v5 = [CKDPublicIdentityLookupService alloc];
    v7 = objc_msgSend_initWithContainer_(v5, v6, self);
    v8 = self->_foregroundPublicIdentityLookupService;
    self->_foregroundPublicIdentityLookupService = v7;

    foregroundPublicIdentityLookupService = self->_foregroundPublicIdentityLookupService;
  }

  v9 = foregroundPublicIdentityLookupService;
  objc_msgSend_unlock(self->_publicIdentityServiceLock, v10, v11);

  return v9;
}

- (CKDPublicIdentityLookupService)backgroundPublicIdentityLookupService
{
  objc_msgSend_lock(self->_publicIdentityServiceLock, a2, v2);
  backgroundPublicIdentityLookupService = self->_backgroundPublicIdentityLookupService;
  if (!backgroundPublicIdentityLookupService)
  {
    v5 = [CKDPublicIdentityLookupService alloc];
    v7 = objc_msgSend_initWithContainer_(v5, v6, self);
    v8 = self->_backgroundPublicIdentityLookupService;
    self->_backgroundPublicIdentityLookupService = v7;

    backgroundPublicIdentityLookupService = self->_backgroundPublicIdentityLookupService;
  }

  v9 = backgroundPublicIdentityLookupService;
  objc_msgSend_unlock(self->_publicIdentityServiceLock, v10, v11);

  return v9;
}

+ (void)initialize
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v3, v4, v5);

  if (isAppleInternalInstall)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "Wed Dec 31 16:00:00 1969";
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CloudKitDaemon.framework was built at %s", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  MethodDescription = protocol_getMethodDescription(&unk_2838E2D10, selector, 1, 1);
  if (MethodDescription.name)
  {
    v6 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], MethodDescription.types, MethodDescription.types);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKDContainer;
    v6 = [(CKDContainer *)&v8 methodSignatureForSelector:selector];
  }

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v7 = objc_msgSend_selector(invocationCopy, v5, v6);
  MethodDescription = protocol_getMethodDescription(&unk_2838E2D10, v7, 1, 1);
  if (MethodDescription.name)
  {
    v10 = objc_msgSend_entitlements(self, MethodDescription.types, v8);
    hasSPIEntitlement = objc_msgSend_hasSPIEntitlement(v10, v11, v12);

    if (hasSPIEntitlement)
    {
      v14 = objc_opt_class();
      object_setClass(self, v14);
      objc_msgSend_setTarget_(invocationCopy, v15, self);
      objc_msgSend_invoke(invocationCopy, v16, v17);
    }

    else
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = NSStringFromSelector(MethodDescription.name);
      v21 = objc_msgSend_stringWithFormat_(v18, v20, @"%@ is CloudKit SPI and requires an entitlement. Please add the com.apple.private.cloudkit.spi entitlement to this process.", v19);

      v22 = objc_alloc(MEMORY[0x277CBC6B0]);
      v23 = objc_alloc(MEMORY[0x277CBC6C8]);
      v25 = objc_msgSend_initWithFilePath_lineNumber_(v23, v24, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/IPCMessaging/CKDContainer.m", 1726);
      v27 = objc_msgSend_initWithSourceCodeLocation_reason_(v22, v26, v25, v21);

      objc_msgSend_handleSignificantIssue_actions_(self, v28, v27, 1);
      v31 = objc_msgSend_currentConnection(MEMORY[0x277CCAE80], v29, v30);
      objc_msgSend_invalidate(v31, v32, v33);
    }
  }

  else
  {
    v34.receiver = self;
    v34.super_class = CKDContainer;
    [(CKDContainer *)&v34 forwardInvocation:invocationCopy];
  }
}

- (void)setContainerAvailable:(BOOL)available
{
  availableCopy = available;
  v41 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC880];
  if (available)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v10 = "System is available. Starting work queue for %@";
LABEL_18:
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, v10, buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      v10 = "System is unavailable. Stopping work queue for %@";
      goto LABEL_18;
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = objc_msgSend_operationQueue(self, v8, v9, 0);
  v37[0] = v11;
  v14 = objc_msgSend_cleanupOperationQueue(self, v12, v13);
  v37[1] = v14;
  v17 = objc_msgSend_uncancellableOperationQueue(self, v15, v16);
  v37[2] = v17;
  v20 = objc_msgSend_backgroundOperationThrottleQueue(self, v18, v19);
  v37[3] = v20;
  v23 = objc_msgSend_cloudKitSupportOperationThrottleQueue(self, v21, v22);
  v37[4] = v23;
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v37, 5);

  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v33, v38, 16);
  if (v27)
  {
    v29 = v27;
    v30 = *v34;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v25);
        }

        objc_msgSend_setSuspended_(*(*(&v33 + 1) + 8 * i), v28, !availableCopy);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v33, v38, 16);
    }

    while (v29);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_lockedHandleTCCAuthorizationChangedEvent:(int64_t)event
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_tccAuthQueue);
  v7 = objc_msgSend_applicationBundleIdentifierForTCC(self, v5, v6);
  hasTCCAuthorizationTernary = self->_hasTCCAuthorizationTernary;
  if (event == -1 && hasTCCAuthorizationTernary != -1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v18 = 138543362;
      v19 = v7;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Received TCC access reset, resetting TCC access for bundle identifier '%{public}@'", &v18, 0xCu);
    }

    v10 = *MEMORY[0x277D6C190];
    if (TCCAccessSetForBundleId())
    {
      event = 1;
    }

    else
    {
      event = -1;
    }

    hasTCCAuthorizationTernary = self->_hasTCCAuthorizationTernary;
  }

  if (hasTCCAuthorizationTernary != event)
  {
    v11 = *MEMORY[0x277CBC878];
    v12 = *MEMORY[0x277CBC880];
    if (!event)
    {
      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = v7;
        _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEFAULT, "Updated authorization on TCC event to: DENY for bundle identifier '%{public}@'", &v18, 0xCu);
      }

      objc_msgSend_checkSessionValidityCacheOnly_error_(self, v16, 0, 0);
      goto LABEL_28;
    }

    if (event == 1)
    {
      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v13 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v18 = 138543362;
      v19 = v7;
      v14 = "Updated authorization on TCC event to: ALLOWED for bundle identifier '%{public}@'";
    }

    else
    {
      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v13 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v18 = 138543362;
      v19 = v7;
      v14 = "Updated authorization on TCC event to: UNKNOWN for bundle identifier '%{public}@'";
    }

    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEFAULT, v14, &v18, 0xCu);
LABEL_28:
    self->_hasTCCAuthorizationTernary = event;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)accountAccessAuthorizationWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = *MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC880];
  if (handlerCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
      v12 = objc_msgSend_ckShortDescription(self, v10, v11);
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEFAULT, "Checking TCC authorization for container %@", &v16, 0xCu);
    }

    hasTCCAuthorization = objc_msgSend_hasTCCAuthorization_(self, v8, 0);
    handlerCopy[2](handlerCopy, hasTCCAuthorization, 0);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "No completion handler", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)_lockedHasTCCAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  v65 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_tccAuthQueue);
  if (CKIsRunningInSyncBubble())
  {
    hasTCCAuthorizationTernary = 1;
    goto LABEL_52;
  }

  hasTCCAuthorizationTernary = self->_hasTCCAuthorizationTernary;
  if (hasTCCAuthorizationTernary)
  {
    if (hasTCCAuthorizationTernary != -1)
    {
      goto LABEL_52;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v6;
      v12 = objc_msgSend_ckShortDescription(self, v10, v11);
      *buf = 138412290;
      v64 = v12;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEFAULT, "Consulting TCC for access for container %@...", buf, 0xCu);
    }

    v57 = objc_msgSend_applicationBundleIdentifierForTCC(self, v7, v8);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v13 = TCCAccessCopyInformationForBundleId();
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v58, v62, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v59;
      v19 = MEMORY[0x277D6C0E8];
      v20 = MEMORY[0x277D6C190];
LABEL_11:
      v21 = 0;
      while (1)
      {
        if (*v59 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v58 + 1) + 8 * v21);
        v23 = objc_msgSend_objectForKeyedSubscript_(v22, v16, *v19);
        if (objc_msgSend_isEqualToString_(v23, v24, *v20))
        {
          break;
        }

        if (v17 == ++v21)
        {
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v58, v62, 16);
          if (v17)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v31 = objc_msgSend_objectForKeyedSubscript_(v22, v25, *MEMORY[0x277D6C0D0]);

      if (!v31)
      {
        goto LABEL_28;
      }

      objc_msgSend_BOOLValue(v31, v32, v33);
      v34 = CKTernaryFromBOOL();
      v35 = MEMORY[0x277CBC830];
      v36 = MEMORY[0x277CBC880];
      if (v34 == -1)
      {
        v37 = v57;
        goto LABEL_46;
      }

      hasTCCAuthorizationTernary = v34;
      v37 = v57;
      if (v34)
      {
        if (v34 == 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v45 = *v35;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v45;
          v49 = objc_msgSend_ckShortDescription(self, v47, v48);
          *buf = 138543362;
          v64 = v49;
          _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEFAULT, "TCC REJECTED access for container %{public}@", buf, 0xCu);
        }

        hasTCCAuthorizationTernary = 0;
      }

      goto LABEL_51;
    }

LABEL_17:

LABEL_28:
    v36 = MEMORY[0x277CBC880];
    if (authorizationCopy)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = v57;
      v35 = MEMORY[0x277CBC830];
      v38 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v64 = v57;
        _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, "Setting un-initialized TCC access for bundle identifier override '%{public}@'", buf, 0xCu);
      }

      v39 = *MEMORY[0x277D6C190];
      v31 = 0;
      if (TCCAccessSetForBundleId())
      {
LABEL_34:
        if (*v36 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v40 = *v35;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
          v44 = objc_msgSend_ckShortDescription(self, v42, v43);
          *buf = 138543362;
          v64 = v44;
          _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEFAULT, "TCC approved access for container %{public}@", buf, 0xCu);
        }

        hasTCCAuthorizationTernary = 1;
LABEL_51:
        self->_hasTCCAuthorizationTernary = hasTCCAuthorizationTernary;

        goto LABEL_52;
      }
    }

    else
    {
      v31 = 0;
      v37 = v57;
      v35 = MEMORY[0x277CBC830];
    }

LABEL_46:
    if (*v36 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v50 = *v35;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v50;
      v54 = objc_msgSend_ckShortDescription(self, v52, v53);
      *buf = 138543362;
      v64 = v54;
      _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEFAULT, "TCC has no entry for container %{public}@", buf, 0xCu);
    }

    hasTCCAuthorizationTernary = -1;
    goto LABEL_51;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
  {
    v27 = v26;
    v30 = objc_msgSend_ckShortDescription(self, v28, v29);
    *buf = 138543362;
    v64 = v30;
    _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEFAULT, "Found cached TCC rejection for container %{public}@", buf, 0xCu);
  }

  hasTCCAuthorizationTernary = 0;
LABEL_52:
  v55 = *MEMORY[0x277D85DE8];
  return hasTCCAuthorizationTernary;
}

- (id)containerForOperationInfo:(id)info
{
  if (objc_msgSend_isLongLived(info, a2, info) && (objc_msgSend_processScopedClientProxy(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v9 = objc_msgSend_appContainerAccountTuple(self, v7, v8);
    v12 = objc_msgSend_deviceContext(self, v10, v11);
    v15 = objc_msgSend_sharedDetachedContainers(CKDContainer, v13, v14);
    selfCopy = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v16, v9, v12, v15);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)performOperation:(id)operation initialMessageReplyBlock:(id)block customCompletionBlock:(id)completionBlock
{
  operationCopy = operation;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v12 = objc_msgSend_operationInfo(operationCopy, v10, v11);
  v15 = objc_msgSend_processScopedClientProxy(self, v13, v14);
  v18 = objc_msgSend_operationInfo(operationCopy, v16, v17);
  v21 = objc_msgSend_callbackProxyEndpoint(v18, v19, v20);
  v24 = objc_msgSend_interface(v21, v22, v23);
  v27 = objc_msgSend_protocol(v24, v25, v26);
  v28 = v27;
  v29 = &unk_2838E3DC0;
  if (v27)
  {
    v29 = v27;
  }

  v30 = v29;

  v33 = objc_msgSend_operationInfo(operationCopy, v31, v32);
  v36 = objc_msgSend_requestOriginator(v33, v34, v35);

  if (!v36)
  {
    v39 = objc_msgSend_currentConnection(MEMORY[0x277CCAE80], v37, v38);

    v42 = objc_msgSend_operationInfo(operationCopy, v40, v41);
    v44 = v42;
    if (v39)
    {
      objc_msgSend_setRequestOriginator_(v42, v43, 4);
    }

    else
    {
      objc_msgSend_setRequestOriginator_(v42, v43, 1);
    }
  }

  if (objc_msgSend_processIsAttached(v15, v37, v38))
  {
    v104 = 0;
    objc_msgSend_validateAgainstLiveContainer_error_(operationCopy, v45, self, &v104);
    v49 = v104;
  }

  else
  {
    v50 = MEMORY[0x277CBC560];
    v51 = *MEMORY[0x277CBC120];
    v52 = objc_msgSend_operationID(operationCopy, v45, v46);
    v49 = objc_msgSend_errorWithDomain_code_format_(v50, v53, v51, 2005, @"Client went away before operation %@ could be validated failing", v52);;
  }

  if (v49)
  {
    objc_msgSend_setError_(operationCopy, v47, v49);
    v56 = objc_msgSend_clientOperationCallbackProxy(operationCopy, v54, v55);
    objc_msgSend_activate(v56, v57, v58);

    objc_msgSend__handleCompletionForOperation_initialMessageReplyBlock_(self, v59, operationCopy, blockCopy);
    v60 = completionBlockCopy;
  }

  else
  {
    v61 = objc_msgSend_operationInfo(operationCopy, v47, v48);
    v64 = objc_msgSend_ckOperationClassName(v61, v62, v63);
    v65 = NSClassFromString(v64);

    if (objc_msgSend_isLongLived(operationCopy, v66, v67) && (objc_msgSend_isLongLivedCallbackRelayOperation(operationCopy, v68, v69) & 1) == 0)
    {
      v93 = [CKDLongLivedOperationPersistedCallbackProxy alloc];
      v95 = objc_msgSend_operationInfo(operationCopy, v70, v71);
      v74 = objc_msgSend_operationID(v95, v72, v73);
      v77 = objc_msgSend_daemonCallbackCompletionSelector(v65, v75, v76);
      v94 = objc_msgSend_deviceContext(self, v78, v79);
      v82 = objc_msgSend_operationInfoCache(v94, v80, v81);
      v84 = objc_msgSend_initWithOperationID_callbackProtocol_completionSelector_operationInfoCache_(v93, v83, v74, v30, v77, v82);
      objc_msgSend_setClientOperationCallbackProxy_(operationCopy, v85, v84);
    }

    v86 = objc_msgSend_clientOperationCallbackProxy(operationCopy, v68, v69);
    objc_msgSend_activate(v86, v87, v88);

    v91 = objc_msgSend_clientOperationCallbackProxy(operationCopy, v89, v90);
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = sub_22517233C;
    v97[3] = &unk_278547270;
    v98 = operationCopy;
    v60 = completionBlockCopy;
    v102 = completionBlockCopy;
    v103 = blockCopy;
    selfCopy = self;
    v100 = v12;
    v101 = v30;
    objc_msgSend_handleWillStart_(v91, v92, v97);
  }
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  v7 = objc_msgSend_operationID(operationCopy, v5, v6);
  v10 = objc_msgSend_operationInfo(operationCopy, v8, v9);
  v13 = objc_msgSend_pendingOperationIDs(self, v11, v12);
  objc_sync_enter(v13);
  v16 = objc_msgSend_pendingOperationIDs(self, v14, v15);
  objc_msgSend_addObject_(v16, v17, v7);

  objc_sync_exit(v13);
  v20 = objc_msgSend_cancellationQueue(self, v18, v19);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225172B94;
  v24[3] = &unk_2785463D0;
  v25 = operationCopy;
  v26 = v10;
  selfCopy = self;
  v28 = v7;
  v21 = v7;
  v22 = v10;
  v23 = operationCopy;
  dispatch_async(v20, v24);
}

- (int64_t)_applicationPermissionStatusFromUserPrivacySetting:(int64_t)setting
{
  if (setting > 2)
  {
    return 1;
  }

  else
  {
    return qword_225447D10[setting];
  }
}

- (void)accountInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = objc_msgSend_uncancellableOperationQueue(self, v4, v5);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_225173144;
    v9[3] = &unk_278546550;
    v9[4] = self;
    v10 = handlerCopy;
    objc_msgSend_addOperationWithBlock_(v7, v8, v9);
  }
}

- (void)reloadAccountWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Will reload the account for %@", buf, 0xCu);
  }

  v8 = objc_msgSend_uncancellableOperationQueue(self, v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_225173F18;
  v12[3] = &unk_278546550;
  v12[4] = self;
  v13 = handlerCopy;
  v9 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v8, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)importantUserIDsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225174184;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)statusForApplicationPermission:(unint64_t)permission completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v7, v8);
  v10 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v10, v11, v9);
  v12 = [CKDFetchUserPrivacySettingsOperation alloc];
  v14 = objc_msgSend_containerForOperationInfo_(self, v13, v10);
  v16 = objc_msgSend_initWithOperationInfo_container_(v12, v15, v10, v14);

  objc_initWeak(&location, v16);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22517457C;
  v20[3] = &unk_2785472C0;
  objc_copyWeak(v22, &location);
  v22[1] = permission;
  v20[4] = self;
  v17 = handlerCopy;
  v21 = v17;
  objc_msgSend_setCompletionBlock_(v16, v18, v20);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v19, v16, 0);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)_globalStatusForApplicationPermission:(unint64_t)permission completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v7, v8);
  v10 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v10, v11, v9);
  v12 = [CKDBatchFetchUserPrivacySettingsOperation alloc];
  v14 = objc_msgSend_containerForOperationInfo_(self, v13, v10);
  v16 = objc_msgSend_initWithOperationInfo_container_(v12, v15, v10, v14);

  objc_initWeak(&location, self);
  objc_initWeak(&from, v16);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22517480C;
  v20[3] = &unk_2785472E8;
  objc_copyWeak(&v22, &from);
  v17 = handlerCopy;
  v21 = v17;
  objc_copyWeak(v23, &location);
  v23[1] = permission;
  v20[4] = self;
  objc_msgSend_setCompletionBlock_(v16, v18, v20);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v19, v16, 0);
  objc_destroyWeak(v23);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_setApplicationPermission:(unint64_t)permission enabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  permissionCopy = permission;
  handlerCopy = handler;
  v11 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v9, v10);
  v12 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v12, v13, v11);
  if (permissionCopy)
  {
    if (enabledCopy)
    {
      objc_msgSend_setDiscoverable_(v12, v14, 1);
    }

    else
    {
      objc_msgSend_setDiscoverable_(v12, v14, 2);
    }
  }

  v15 = [CKDSaveUserPrivacySettingsOperation alloc];
  v17 = objc_msgSend_containerForOperationInfo_(self, v16, v12);
  v19 = objc_msgSend_initWithOperationInfo_container_(v15, v18, v12, v17);

  objc_initWeak(&location, v19);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_225174BCC;
  v26 = &unk_278547310;
  objc_copyWeak(&v28, &location);
  v20 = handlerCopy;
  v27 = v20;
  v29 = enabledCopy;
  objc_msgSend_setCompletionBlock_(v19, v21, &v23);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v22, v19, 0, v23, v24, v25, v26);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)requestApplicationPermission:(unint64_t)permission completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225174D24;
  v9[3] = &unk_2785473D0;
  v10 = handlerCopy;
  permissionCopy = permission;
  v9[4] = self;
  v7 = handlerCopy;
  objc_msgSend_statusForApplicationPermission_completionHandler_(self, v8, permission, v9);
}

- (void)_handleCompletionForOperation:(id)operation initialMessageReplyBlock:(id)block
{
  operationCopy = operation;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225175700;
  v9[3] = &unk_278545A00;
  v10 = operationCopy;
  v7 = operationCopy;
  objc_msgSend__handleCompletionForOperation_initialMessageReplyBlock_customCompletionBlock_(self, v8, v7, block, v9);
}

- (void)_handleCompletionForOperation:(id)operation initialMessageReplyBlock:(id)block customCompletionBlock:(id)completionBlock
{
  v64 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v11 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = MEMORY[0x277CBC830];
  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v44 = v13;
    v47 = objc_msgSend_operationID(operationCopy, v45, v46);
    v50 = objc_msgSend_error(operationCopy, v48, v49);
    v51 = @" with error";
    if (!v50)
    {
      v51 = &stru_28385ED00;
    }

    *buf = 138543618;
    v61 = v47;
    v62 = 2112;
    v63 = v51;
    _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Operation %{public}@ completed%@", buf, 0x16u);
  }

  completionBlockCopy[2](completionBlockCopy);
  v18 = objc_msgSend_processScopedClientProxy(self, v14, v15);
  if (v18)
  {
    v21 = objc_msgSend_operationID(operationCopy, v16, v17);
    if (*MEMORY[0x277CBC810] == 1)
    {
      v22 = objc_msgSend_unitTestOverrides(operationCopy, v19, v20);
      v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"PreserveCachedLongLivedOperationMetadata");
      v25 = v24 != 0;
    }

    else
    {
      v25 = 0;
    }

    if (objc_msgSend_isLongLived(operationCopy, v19, v20) && ((v25 | objc_msgSend_processIsAttached(v18, v26, v27) ^ 1) & 1) == 0)
    {
      if (*v11 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v61 = v21;
        _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Deleting all cached info for operation %{public}@", buf, 0xCu);
      }

      v31 = objc_msgSend_deviceContext(self, v29, v30);
      v34 = objc_msgSend_operationInfoCache(v31, v32, v33);
      objc_msgSend_deleteAllInfoForOperationWithID_(v34, v35, v21);
    }
  }

  v36 = objc_msgSend_clientOperationCallbackProxy(operationCopy, v16, v17);
  v52 = MEMORY[0x277D85DD0];
  v53 = 3221225472;
  v54 = sub_225175B0C;
  v55 = &unk_2785473F8;
  v59 = blockCopy;
  v37 = v36;
  v56 = v37;
  selfCopy = self;
  v58 = operationCopy;
  v38 = operationCopy;
  v39 = blockCopy;
  v40 = _Block_copy(&v52);
  v42 = v40;
  if (v37)
  {
    objc_msgSend_addBarrierBlock_(v37, v41, v40, v52, v53, v54, v55, v56, selfCopy, v58, v59);
  }

  else
  {
    (*(v40 + 2))(v40);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (id)openFileWithOpenInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v9 = objc_msgSend_logicalDeviceScopedClientProxy(self, v7, v8);
  if (objc_msgSend_processIsAttached(v9, v10, v11))
  {
    v13 = objc_msgSend_openFileWithOpenInfo_error_(v9, v12, infoCopy, error);
  }

  else
  {
    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1000, @"nil connection");
    if (error)
    {
      v14 = v14;
      *error = v14;
    }

    v13 = 0;
  }

  return v13;
}

- (id)getFileMetadataWithFileHandle:(id)handle openInfo:(id)info error:(id *)error
{
  handleCopy = handle;
  infoCopy = info;
  v12 = objc_msgSend_processScopedClientProxy(self, v10, v11);
  if (objc_msgSend_processIsAttached(v12, v13, v14))
  {
    v16 = objc_msgSend_getFileMetadataWithFileHandle_openInfo_error_(v12, v15, handleCopy, infoCopy, error);
  }

  else
  {
    v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 1000, @"nil connection");
    if (error)
    {
      v17 = v17;
      *error = v17;
    }

    v16 = 0;
  }

  return v16;
}

- (id)readBytesOfInMemoryAssetContentWithUUID:(id)d offset:(unint64_t)offset length:(unint64_t)length error:(id *)error
{
  dCopy = d;
  v13 = objc_msgSend_logicalDeviceScopedClientProxy(self, v11, v12);
  if (objc_msgSend_processIsAttached(v13, v14, v15))
  {
    v17 = objc_msgSend_readBytesOfInMemoryAssetContentWithUUID_offset_length_error_(v13, v16, dCopy, offset, length, error);
  }

  else
  {
    v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 1000, @"nil connection");
    if (error)
    {
      v18 = v18;
      *error = v18;
    }

    v17 = 0;
  }

  return v17;
}

- (void)fetchLongLivedOperationsWithIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v10 = objc_msgSend_uncancellableOperationQueue(self, v8, v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225175F9C;
  v14[3] = &unk_278546C30;
  v14[4] = self;
  v15 = dsCopy;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = dsCopy;
  objc_msgSend_addOperationWithBlock_(v10, v13, v14);
}

- (void)fetchAllLongLivedOperationIDsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251760E4;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)performDiscoverUserIdentitiesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDDiscoverUserIdentitiesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251762E0;
  v16[3] = &unk_278547420;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setDiscoverUserIdentitiesProgressBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performDiscoverAllUserIdentitiesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDDiscoverAllUserIdentitiesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225176590;
  v16[3] = &unk_278547420;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setDiscoverUserIdentitiesProgressBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performFetchShareParticipantsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchShareParticipantsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22517683C;
  v16[3] = &unk_278547448;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setShareParticipantFetchedBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performModifyRecordZonesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDModifyRecordZonesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225176B88;
  v21[3] = &unk_278547470;
  objc_copyWeak(&v23, &location);
  v13 = operationCopy;
  v22 = v13;
  objc_msgSend_setSaveCompletionBlock_(v12, v14, v21);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225176D58;
  v18[3] = &unk_278547498;
  v15 = v13;
  v19 = v15;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setDeleteCompletionBlock_(v12, v16, v18);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v17, v12, blockCopy);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)performFetchRecordZonesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchRecordZonesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225177008;
  v16[3] = &unk_2785474C0;
  objc_copyWeak(&v18, &location);
  v13 = operationCopy;
  v17 = v13;
  objc_msgSend_setRecordZoneFetchedProgressBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)performFetchDatabaseChangesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchDatabaseChangesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_225177530;
  v36[3] = &unk_2785474E8;
  v13 = operationCopy;
  v37 = v13;
  objc_copyWeak(&v38, &location);
  objc_msgSend_setRecordZoneWithIDChangedBlock_(v12, v14, v36);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_225177698;
  v33[3] = &unk_278547510;
  v15 = v13;
  v34 = v15;
  objc_copyWeak(&v35, &location);
  objc_msgSend_setRecordZoneWithIDWasDeletedBlock_(v12, v16, v33);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2251777DC;
  v30[3] = &unk_278547510;
  v17 = v15;
  v31 = v17;
  objc_copyWeak(&v32, &location);
  objc_msgSend_setRecordZoneWithIDWasPurgedBlock_(v12, v18, v30);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_225177920;
  v27[3] = &unk_278547510;
  v19 = v17;
  v28 = v19;
  objc_copyWeak(&v29, &location);
  objc_msgSend_setRecordZoneWithIDWasDeletedDueToEncryptedDataResetBlock_(v12, v20, v27);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225177A64;
  v24[3] = &unk_278547538;
  v21 = v19;
  v25 = v21;
  objc_copyWeak(&v26, &location);
  objc_msgSend_setServerChangeTokenUpdatedBlock_(v12, v22, v24);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v23, v12, blockCopy);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v32);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&location);
}

- (void)performCheckSupportedDeviceCapabilitiesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDCheckSupportedDeviceCapabilitiesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225177D38;
  v16[3] = &unk_278547560;
  objc_copyWeak(&v18, &location);
  v13 = operationCopy;
  v17 = v13;
  objc_msgSend_setCheckSupportedDeviceCapabilitiesProgressBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)enumerateClientContainers:(id)containers
{
  v25 = *MEMORY[0x277D85DE8];
  containersCopy = containers;
  v7 = objc_msgSend_clientContainers(self, v5, v6);
  objc_sync_enter(v7);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = objc_msgSend_clientContainers(self, v8, v9, 0);
  v13 = objc_msgSend_allObjects(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v20, v24, 16);
  if (v15)
  {
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        containersCopy[2](containersCopy, *(*(&v20 + 1) + 8 * v17++));
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, &v20, v24, 16);
    }

    while (v15);
  }

  objc_sync_exit(v7);
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEligibleForBroadcastingToContainer:(id)container
{
  containerCopy = container;
  v7 = containerCopy;
  if (self == containerCopy)
  {
    isEqual = 1;
  }

  else
  {
    v8 = objc_msgSend_containerID(containerCopy, v5, v6);
    v11 = objc_msgSend_containerID(self, v9, v10);
    if (objc_msgSend_isEqual_(v8, v12, v11))
    {
      v15 = objc_msgSend_account(v7, v13, v14);
      v18 = objc_msgSend_accountID(v15, v16, v17);
      v21 = objc_msgSend_account(self, v19, v20);
      v24 = objc_msgSend_accountID(v21, v22, v23);
      if (objc_msgSend_isEqualToString_(v18, v25, v24))
      {
        v28 = objc_msgSend_personaID(v7, v26, v27);
        v33 = objc_msgSend_personaID(self, v29, v30);
        if (v28 == v33)
        {
          isEqual = 1;
        }

        else
        {
          objc_msgSend_personaID(v7, v31, v32);
          v34 = v41 = v15;
          objc_msgSend_personaID(self, v35, v36);
          v37 = v42 = v28;
          isEqual = objc_msgSend_isEqual_(v34, v38, v37);

          v28 = v42;
          v15 = v41;
        }
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (void)_enumerateEligibleConnectedContainersForOOPUIContainer:(id)container
{
  v19 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if (!containerCopy)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKDContainer.m", 2815, @"Invalid parameter not satisfying: %@", @"block");
  }

  v8 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, v5, v6);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Checking eligible containers for OOP-UI container %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2251783A8;
  v15[3] = &unk_2785475B0;
  v15[4] = self;
  v16 = containerCopy;
  v10 = containerCopy;
  objc_msgSend_enumerateConnections_(v8, v11, v15);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_broadcastUpdateIfNeededForRecord:(id)record recordXPCMetadata:(id)metadata recordID:(id)d isDeleted:(BOOL)deleted error:(id)error
{
  v44 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  metadataCopy = metadata;
  dCopy = d;
  errorCopy = error;
  v18 = objc_msgSend_entitlements(self, v16, v17);
  hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v18, v19, v20);

  if (hasOutOfProcessUIEntitlement)
  {
    if (recordCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v31 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = recordCopy;
        _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Not informing Sharing UI observers about unknown update for record in OOP UI container: %@", buf, 0xCu);
      }
    }

    else
    {
      v24 = objc_msgSend_copy(recordCopy, v22, v23);
      if (v24)
      {
        v27 = v24;
        objc_msgSend_updateWithSavedRecordXPCMetadata_shouldOnlySaveAssetContent_(v24, v25, metadataCopy, 0);
        v30 = objc_msgSend__copyWithoutPersonalInfo(v27, v28, v29);
      }

      else
      {
        v30 = 0;
      }

      shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(self, v25, v26);
      objc_msgSend_setSerializeOwnerInfo_(v30, v33, shouldSerializeOwnerInfo);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_225178794;
      v37[3] = &unk_278547600;
      v38 = v30;
      v39 = dCopy;
      deletedCopy = deleted;
      v40 = errorCopy;
      v34 = v30;
      objc_msgSend__enumerateEligibleConnectedContainersForOOPUIContainer_(self, v35, v37);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)performModifyRecordsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDModifyRecordsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_225178E58;
  v38[3] = &unk_278547628;
  v13 = operationCopy;
  v39 = v13;
  objc_copyWeak(&v40, &location);
  objc_msgSend_setSaveProgressBlock_(v12, v14, v38);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_225178FAC;
  v35[3] = &unk_278547650;
  v15 = v13;
  v36 = v15;
  objc_copyWeak(&v37, &location);
  objc_msgSend_setRecordsInFlightBlock_(v12, v16, v35);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22517910C;
  v31[3] = &unk_278547678;
  objc_copyWeak(&v34, &location);
  v17 = v15;
  v32 = v17;
  selfCopy = self;
  objc_msgSend_setSaveCompletionBlock_(v12, v18, v31);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2251794B4;
  v27[3] = &unk_2785476A0;
  v19 = v17;
  v28 = v19;
  objc_copyWeak(&v30, &location);
  selfCopy2 = self;
  objc_msgSend_setDeleteCompletionBlock_(v12, v20, v27);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225179630;
  v24[3] = &unk_2785476C8;
  v21 = v19;
  v25 = v21;
  objc_copyWeak(&v26, &location);
  objc_msgSend_setUploadCompletionBlock_(v12, v22, v24);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v23, v12, blockCopy);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (void)_performFetchCurrentUserRecordOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchUserRecordOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225179988;
  v16[3] = &unk_2785476F0;
  objc_copyWeak(&v18, &location);
  v13 = operationCopy;
  v17 = v13;
  objc_msgSend_setCompletionBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_reallyPerformFetchRecordsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchRecordsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_225179DB4;
  v28[3] = &unk_278547718;
  objc_copyWeak(&v29, &location);
  objc_msgSend_setRecordFetchProgressBlock_(v12, v13, v28);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_225179E30;
  v25[3] = &unk_278547740;
  v14 = operationCopy;
  v26 = v14;
  objc_copyWeak(&v27, &location);
  objc_msgSend_setRecordFetchCommandBlock_(v12, v15, v25);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_22517A03C;
  v22 = &unk_278547768;
  objc_copyWeak(&v24, &location);
  v16 = v14;
  v23 = v16;
  objc_msgSend_setRecordFetchCompletionBlock_(v12, v17, &v19);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v18, v12, blockCopy, v19, v20, v21, v22);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)performFetchRecordsOperation:(id)operation withBlock:(id)block
{
  blockCopy = block;
  operationCopy = operation;
  if (objc_msgSend_isFetchCurrentUserOperation(operationCopy, v7, v8))
  {
    objc_msgSend__performFetchCurrentUserRecordOperation_withBlock_(self, v9, operationCopy, blockCopy);
  }

  else
  {
    objc_msgSend__reallyPerformFetchRecordsOperation_withBlock_(self, v9, operationCopy, blockCopy);
  }
}

- (void)performFetchRecordZoneChangesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchRecordZoneChangesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22517A5F0;
  v37[3] = &unk_278547830;
  objc_copyWeak(&v39, &location);
  v13 = operationCopy;
  v38 = v13;
  objc_msgSend_setRecordChangedBlock_(v12, v14, v37);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22517A7D4;
  v34[3] = &unk_278547790;
  v15 = v13;
  v35 = v15;
  objc_copyWeak(&v36, &location);
  objc_msgSend_setRecordDeletedBlock_(v12, v16, v34);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22517A934;
  v31[3] = &unk_2785477B8;
  v17 = v15;
  v32 = v17;
  objc_copyWeak(&v33, &location);
  objc_msgSend_setZoneAttributesChangedBlock_(v12, v18, v31);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22517AA94;
  v28[3] = &unk_2785477E0;
  v19 = v17;
  v29 = v19;
  objc_copyWeak(&v30, &location);
  objc_msgSend_setServerChangeTokenUpdatedBlock_(v12, v20, v28);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_22517AC68;
  v26 = &unk_278547098;
  objc_copyWeak(&v27, &location);
  objc_msgSend_setCompletionBlock_(v12, v21, &v23);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v22, v12, blockCopy, v23, v24, v25, v26);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

- (void)performFetchRecordChangesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchRecordZoneChangesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(location, v12);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22517AFF0;
  v31[3] = &unk_278547830;
  objc_copyWeak(&v33, location);
  v13 = operationCopy;
  v32 = v13;
  objc_msgSend_setRecordChangedBlock_(v12, v14, v31);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22517B1D4;
  v28[3] = &unk_278547790;
  v15 = v13;
  v29 = v15;
  objc_copyWeak(&v30, location);
  objc_msgSend_setRecordDeletedBlock_(v12, v16, v28);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22517B330;
  v25[3] = &unk_2785477E0;
  v17 = v15;
  v26 = v17;
  objc_copyWeak(&v27, location);
  objc_msgSend_setServerChangeTokenUpdatedBlock_(v12, v18, v25);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22517B508;
  v23[3] = &unk_278547098;
  objc_copyWeak(&v24, location);
  objc_msgSend_setCompletionBlock_(v12, v19, v23);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22517B564;
  v21[3] = &unk_278547098;
  objc_copyWeak(&v22, location);
  objc_msgSend_performOperation_initialMessageReplyBlock_customCompletionBlock_(self, v20, v12, blockCopy, v21);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

- (void)performMovePhotosOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDMovePhotosOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22517B9BC;
  v26[3] = &unk_278547628;
  v13 = operationCopy;
  v27 = v13;
  objc_copyWeak(&v28, &location);
  objc_msgSend_setSaveProgressBlock_(v12, v14, v26);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22517BB04;
  v23[3] = &unk_278547808;
  objc_copyWeak(&v25, &location);
  v15 = v13;
  v24 = v15;
  objc_msgSend_setMoveCompletionBlock_(v12, v16, v23);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22517BF38;
  v20[3] = &unk_2785476C8;
  v17 = v15;
  v21 = v17;
  objc_copyWeak(&v22, &location);
  objc_msgSend_setUploadCompletionBlock_(v12, v18, v20);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v19, v12, blockCopy);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v28);

  objc_destroyWeak(&location);
}

- (void)performQueryOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDQueryOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22517C380;
  v23[3] = &unk_278547830;
  v13 = operationCopy;
  v24 = v13;
  objc_copyWeak(&v25, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v12, v14, v23);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22517C510;
  v20[3] = &unk_278547858;
  v15 = v13;
  v21 = v15;
  objc_copyWeak(&v22, &location);
  objc_msgSend_setQueryCursorUpdatedBlock_(v12, v16, v20);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22517C670;
  v18[3] = &unk_278547098;
  objc_copyWeak(&v19, &location);
  objc_msgSend_performOperation_initialMessageReplyBlock_customCompletionBlock_(self, v17, v12, blockCopy, v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)performModifySubscriptionsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDModifySubscriptionsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22517C9E0;
  v21[3] = &unk_278547880;
  v13 = operationCopy;
  v22 = v13;
  objc_copyWeak(&v23, &location);
  objc_msgSend_setSaveCompletionBlock_(v12, v14, v21);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22517CB40;
  v18[3] = &unk_278547880;
  v15 = v13;
  v19 = v15;
  objc_copyWeak(&v20, &location);
  objc_msgSend_setDeleteCompletionBlock_(v12, v16, v18);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v17, v12, blockCopy);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)performFetchSubscriptionsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchSubscriptionsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22517CDF0;
  v16[3] = &unk_2785478A8;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setSubscriptionFetchedProgressBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performAcceptSharesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDAcceptSharesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22517D0B4;
  v16[3] = &unk_2785478D0;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setAcceptCompletionBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performDeclineSharesOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDDeclineSharesOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22517D378;
  v16[3] = &unk_2785478F8;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setDeclineCompletionBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performShareRequestAccessOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDShareRequestAccessOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22517D628;
  v16[3] = &unk_2785478F8;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setShareRequestAccessCompletionBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performFetchShareMetadataOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchShareMetadataOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_msgSend_setErrorOnOON_(v12, v13, 1);
  objc_initWeak(&location, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22517D8E4;
  v17[3] = &unk_278547920;
  v14 = operationCopy;
  v18 = v14;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setShareMetadataFetchedBlock_(v12, v15, v17);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v16, v12, blockCopy);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)performMapShareURLsToInstalledBundleIDsOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDMapShareURLsToInstalledBundleIDsOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22517DBA8;
  v16[3] = &unk_278547948;
  v13 = operationCopy;
  v17 = v13;
  objc_copyWeak(&v18, &location);
  objc_msgSend_setBundleIDsFetchedBlock_(v12, v14, v16);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v15, v12, blockCopy);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

- (void)performFetchWebAuthTokenOperation:(id)operation withBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDFetchWebAuthTokenOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(&location, v12);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22517DE68;
  v14[3] = &unk_278547098;
  objc_copyWeak(&v15, &location);
  objc_msgSend_performOperation_initialMessageReplyBlock_customCompletionBlock_(self, v13, v12, blockCopy, v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)displayInfoOnAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_uncancellableOperationQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22517E0B4;
  v10[3] = &unk_278546550;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)cancelAllOperations:(BOOL)operations
{
  v14 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Scheduling a cancel of all operations for %@", buf, 0xCu);
  }

  v8 = objc_msgSend_cancellationQueue(self, v6, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22517E4F4;
  v10[3] = &unk_278547970;
  v10[4] = self;
  operationsCopy = operations;
  dispatch_barrier_async(v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelOperationWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = objc_msgSend_cancellationQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22517E960;
  block[3] = &unk_278546C30;
  block[4] = self;
  v14 = identifierCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = identifierCopy;
  dispatch_barrier_async(v10, block);
}

- (void)linkWithClientContainer:(id)container
{
  containerCopy = container;
  v7 = objc_msgSend_clientContainers(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_clientContainers(self, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, containerCopy);

  if (v12)
  {
    objc_sync_exit(v7);
  }

  else
  {
    v15 = objc_msgSend_clientContainers(self, v13, v14);
    objc_msgSend_addObject_(v15, v16, containerCopy);

    objc_sync_exit(v7);
    objc_initWeak(&location, self);
    v19 = objc_msgSend_uncancellableOperationQueue(self, v17, v18);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22517F218;
    v21[3] = &unk_2785476F0;
    objc_copyWeak(&v23, &location);
    v22 = containerCopy;
    objc_msgSend_addBarrierBlock_(v19, v20, v21);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (void)resetThrottles
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_logicalDeviceScopedClientProxy(self, a2, v2);
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v7 = v4;
      v11[0] = 67109120;
      v11[1] = objc_msgSend_pid(v3, v8, v9);
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Resetting throttles in pid %d", v11, 8u);
    }

    objc_msgSend_resetThrottles(v3, v5, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addThrottle:(id)throttle
{
  throttleCopy = throttle;
  v8 = objc_msgSend_logicalDeviceScopedClientProxy(self, v5, v6);
  objc_msgSend_addThrottle_(v8, v7, throttleCopy);
}

- (BOOL)allowsDeviceCapabilitiesReporting
{
  if (*MEMORY[0x277CBC810] == 1)
  {
    v4 = objc_msgSend_deviceContext(self, a2, v2);
    v7 = objc_msgSend_testServer(v4, v5, v6);
    v10 = objc_msgSend_useLiveServer(v7, v8, v9);

    if (v10)
    {
      return 1;
    }
  }

  v12 = objc_msgSend_serverConfig(self, a2, v2);
  v15 = objc_msgSend_containerID(self, v13, v14);
  v17 = objc_msgSend_allowsDeviceCapabilitiesReportingForContainerID_(v12, v16, v15);

  return v17;
}

- (BOOL)allowsDeviceCapabilitiesChecking
{
  if (*MEMORY[0x277CBC810] == 1)
  {
    v4 = objc_msgSend_deviceContext(self, a2, v2);
    v7 = objc_msgSend_testServer(v4, v5, v6);
    v10 = objc_msgSend_useLiveServer(v7, v8, v9);

    if (v10)
    {
      return 1;
    }
  }

  v12 = objc_msgSend_serverConfig(self, a2, v2);
  v15 = objc_msgSend_containerID(self, v13, v14);
  v17 = objc_msgSend_allowsDeviceCapabilitiesCheckingForContainerID_(v12, v16, v15);

  return v17;
}

+ (id)operationStatusReport:(id)report
{
  reportCopy = report;
  if (objc_opt_respondsToSelector())
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_parentOperation(reportCopy, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = 0;
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_msgSend_statusReportWithIndent_(reportCopy, v5, 1);
      v8 = objc_msgSend_stringWithFormat_(v9, v11, @"%@", v10);
    }
  }

  else
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%@", reportCopy);
  }

  return v8;
}

- (id)CKStatusReportArrayIncludingSharedOperations:(BOOL)operations
{
  operationsCopy = operations;
  v259 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10 = objc_msgSend_applicationID(self, v8, v9);
  v15 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v10, v11, v12);
  v16 = v15;
  if (!v15)
  {
    v252 = objc_msgSend_applicationID(self, v13, v14);
    v16 = objc_msgSend_applicationBundleIdentifier(v252, v17, v18);
  }

  v19 = objc_msgSend_containerID(self, v13, v14);
  v22 = objc_msgSend_containerIdentifier(v19, v20, v21);
  v24 = objc_msgSend_stringWithFormat_(v5, v23, @"\n____ %@ Daemon Status Report: %@ (%@)", v7, v16, v22);
  objc_msgSend_addObject_(v4, v25, v24);

  if (!v15)
  {
  }

  objc_msgSend_addObject_(v4, v26, @"\n%%%%% Operations %%%%%");
  v29 = objc_msgSend_operationQueue(self, v27, v28);
  v32 = objc_msgSend_operationCount(v29, v30, v31);

  if (v32)
  {
    v35 = MEMORY[0x277CCACA8];
    v36 = objc_msgSend_operationQueue(self, v33, v34);
    v39 = objc_msgSend_operationCount(v36, v37, v38);
    v42 = objc_msgSend_operationQueue(self, v40, v41);
    v45 = objc_msgSend_maxConcurrentOperationCount(v42, v43, v44);
    v47 = objc_msgSend_stringWithFormat_(v35, v46, @"Queued operations %lu/%ld {", v39, v45);
    objc_msgSend_addObject_(v4, v48, v47);

    v51 = objc_msgSend_operationQueue(self, v49, v50);
    v54 = objc_msgSend_operations(v51, v52, v53);
    v56 = objc_msgSend_CKCompactMap_(v54, v55, &unk_28385CCE0);
    objc_msgSend_addObjectsFromArray_(v4, v57, v56);

    objc_msgSend_addObject_(v4, v58, @"}");
  }

  else
  {
    objc_msgSend_addObject_(v4, v33, @"No queued operations.");
  }

  v61 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v59, v60);
  v64 = objc_msgSend_operations(v61, v62, v63);

  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v67 = v64;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, &v254, v258, 16);
  if (v71)
  {
    v72 = *v255;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v255 != v72)
        {
          objc_enumerationMutation(v67);
        }

        v74 = *(*(&v254 + 1) + 8 * i);
        v75 = objc_msgSend_container(v74, v69, v70);
        v76 = v75 == self;

        if (v76)
        {
          objc_msgSend_addObject_(v65, v77, v74);
        }

        else
        {
          objc_msgSend_addObject_(v66, v77, v74);
        }
      }

      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v69, &v254, v258, 16);
    }

    while (v71);
  }

  if (objc_msgSend_count(v65, v78, v79))
  {
    v82 = MEMORY[0x277CCACA8];
    v83 = objc_msgSend_count(v65, v80, v81);
    v86 = objc_msgSend_count(v67, v84, v85);
    v89 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v87, v88);
    v92 = objc_msgSend_maxConcurrentOperationCount(v89, v90, v91);
    v94 = objc_msgSend_stringWithFormat_(v82, v93, @"More Operations %lu/%lu/%ld {", v83, v86, v92);
    objc_msgSend_addObject_(v4, v95, v94);

    v97 = objc_msgSend_CKCompactMap_(v65, v96, &unk_28385CD00);
    objc_msgSend_addObjectsFromArray_(v4, v98, v97);

    objc_msgSend_addObject_(v4, v99, @"}");
  }

  else
  {
    objc_msgSend_addObject_(v4, v80, @"No more operations.");
  }

  if (objc_msgSend_count(v66, v100, v101) && operationsCopy)
  {
    v104 = MEMORY[0x277CCACA8];
    v105 = objc_msgSend_count(v66, v102, v103);
    v108 = objc_msgSend_count(v67, v106, v107);
    v111 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v109, v110);
    v114 = objc_msgSend_maxConcurrentOperationCount(v111, v112, v113);
    v116 = objc_msgSend_stringWithFormat_(v104, v115, @"Other Proxy Operations On Shared Throttling Queue %lu/%lu/%ld {", v105, v108, v114);
    objc_msgSend_addObject_(v4, v117, v116);

    v119 = objc_msgSend_CKCompactMap_(v66, v118, &unk_28385CD20);
    objc_msgSend_addObjectsFromArray_(v4, v120, v119);

    objc_msgSend_addObject_(v4, v121, @"}");
  }

  v122 = objc_msgSend_cloudKitSupportOperationThrottleQueue(self, v102, v103);
  v125 = objc_msgSend_operationCount(v122, v123, v124);

  if (v125)
  {
    v128 = MEMORY[0x277CCACA8];
    v129 = objc_msgSend_cloudKitSupportOperationThrottleQueue(self, v126, v127);
    v132 = objc_msgSend_operationCount(v129, v130, v131);
    v135 = objc_msgSend_cloudKitSupportOperationThrottleQueue(self, v133, v134);
    v138 = objc_msgSend_maxConcurrentOperationCount(v135, v136, v137);
    v140 = objc_msgSend_stringWithFormat_(v128, v139, @"CloudKit Support Operations %lu/%ld {", v132, v138);
    objc_msgSend_addObject_(v4, v141, v140);

    v144 = objc_msgSend_cloudKitSupportOperationThrottleQueue(self, v142, v143);
    v147 = objc_msgSend_operations(v144, v145, v146);
    v149 = objc_msgSend_CKCompactMap_(v147, v148, &unk_28385CD40);
    objc_msgSend_addObjectsFromArray_(v4, v150, v149);

    objc_msgSend_addObject_(v4, v151, @"}");
  }

  v152 = objc_msgSend_backgroundOperationThrottleQueue(self, v126, v127);
  v155 = objc_msgSend_operationCount(v152, v153, v154);

  if (v155)
  {
    v158 = MEMORY[0x277CCACA8];
    v159 = objc_msgSend_backgroundOperationThrottleQueue(self, v156, v157);
    v162 = objc_msgSend_operationCount(v159, v160, v161);
    v165 = objc_msgSend_backgroundOperationThrottleQueue(self, v163, v164);
    v168 = objc_msgSend_maxConcurrentOperationCount(v165, v166, v167);
    v170 = objc_msgSend_stringWithFormat_(v158, v169, @"More background operations %lu/%ld {", v162, v168);
    objc_msgSend_addObject_(v4, v171, v170);

    v174 = objc_msgSend_backgroundOperationThrottleQueue(self, v172, v173);
    v177 = objc_msgSend_operations(v174, v175, v176);
    v179 = objc_msgSend_CKCompactMap_(v177, v178, &unk_28385CD60);
    objc_msgSend_addObjectsFromArray_(v4, v180, v179);

    objc_msgSend_addObject_(v4, v181, @"}");
  }

  else
  {
    objc_msgSend_addObject_(v4, v156, @"No background operations.");
  }

  v184 = objc_msgSend_gatekeeper(self, v182, v183);
  hasStatusToReport = objc_msgSend_hasStatusToReport(v184, v185, v186);

  if (hasStatusToReport)
  {
    v189 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v188, @"gatekeeper {");
    objc_msgSend_addObject_(v4, v190, v189);

    v193 = objc_msgSend_gatekeeper(self, v191, v192);
    v196 = objc_msgSend_CKStatusReportArray(v193, v194, v195);
    objc_msgSend_addObject_(v4, v197, v196);

    objc_msgSend_addObject_(v4, v198, @"}");
  }

  objc_msgSend_addObject_(v4, v188, @"%%%%%%%%%%%%%%%%%%%%%%%%");
  v201 = objc_msgSend_operationStatisticsByClassName(self, v199, v200);
  v204 = objc_msgSend_count(v201, v202, v203);

  if (v204)
  {
    objc_msgSend_addObject_(v4, v205, @"\n%%%% Operation Statistics %%%%");
    v209 = objc_msgSend_operationStatisticsByClassName(self, v207, v208);
    objc_sync_enter(v209);
    v212 = objc_msgSend_operationStatisticsByClassName(self, v210, v211);
    v215 = objc_msgSend_allValues(v212, v213, v214);
    v217 = objc_msgSend_CKStatusReportForStatistics_(CKDOperationStatistics, v216, v215);

    objc_msgSend_addObjectsFromArray_(v4, v218, v217);
    objc_sync_exit(v209);

    objc_msgSend_addObject_(v4, v219, @"%%%%%%%%%%%%%%%%%%%%%%%%");
  }

  v220 = objc_msgSend_MMCS(self, v205, v206);

  if (v220)
  {
    objc_msgSend_addObject_(v4, v221, @"\n----- MMCS Engine  -----");
    v227 = objc_msgSend_MMCS(self, v223, v224);
    if (v227)
    {
      v228 = objc_msgSend_MMCS(self, v225, v226);
      v231 = objc_msgSend_CKStatusReportArray(v228, v229, v230);
      objc_msgSend_addObject_(v4, v232, v231);
    }

    else
    {
      objc_msgSend_addObject_(v4, v225, @"(No MMCS Engine)");
    }

    objc_msgSend_addObject_(v4, v233, @"\n------------------------");
  }

  v234 = objc_msgSend_pcsCache(self, v221, v222);
  v237 = objc_msgSend_hasStatusToReport(v234, v235, v236);

  if (v237)
  {
    objc_msgSend_addObject_(v4, v238, @"\n~~~~~ PCS Cache ~~~~~");
    v243 = objc_msgSend_pcsCache(self, v239, v240);
    if (v243)
    {
      v244 = objc_msgSend_pcsCache(self, v241, v242);
      v247 = objc_msgSend_CKStatusReportArray(v244, v245, v246);
      objc_msgSend_addObject_(v4, v248, v247);
    }

    else
    {
      objc_msgSend_addObject_(v4, v241, @"\n(No PCS Cache)");
    }

    objc_msgSend_addObject_(v4, v249, @"~~~~~~~~~~~~~~~~~~~~~~~~");
  }

  objc_msgSend_addObject_(v4, v238, @"\n\n_____________________________\n\n");

  v250 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)handleSignificantIssue:(id)issue actions:(unint64_t)actions
{
  issueCopy = issue;
  v10 = objc_msgSend_processScopedClientProxy(self, v7, v8);
  objc_msgSend_handleSignificantIssue_actions_(v10, v9, issueCopy, actions);
}

- (BOOL)canOpenFileAtURL:(id)l
{
  lCopy = l;
  v7 = objc_msgSend_processScopedClientProxy(self, v5, v6);
  canOpenFileAtURL = objc_msgSend_canOpenFileAtURL_(v7, v8, lCopy);

  return canOpenFileAtURL;
}

- (void)_performCodeFunctionInvokeOperation:(id)operation block:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  v8 = [CKDCodeFunctionInvokeOperation alloc];
  v10 = objc_msgSend_containerForOperationInfo_(self, v9, operationCopy);
  v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, operationCopy, v10);

  objc_initWeak(location, v12);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2251805A0;
  v32[3] = &unk_278547A28;
  objc_copyWeak(&v33, location);
  objc_msgSend_setReplaceLocalSerializationsBlobs_(v12, v13, v32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2251807E8;
  v30[3] = &unk_278547A78;
  objc_copyWeak(&v31, location);
  objc_msgSend_setInitialResponseReceivedCallback_(v12, v14, v30);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_225180A80;
  v28[3] = &unk_278547AA0;
  objc_copyWeak(&v29, location);
  objc_msgSend_setReplaceWireSerializations_(v12, v15, v28);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_225180BA0;
  v26[3] = &unk_278547718;
  objc_copyWeak(&v27, location);
  objc_msgSend_setRecordFetchProgressBlock_(v12, v16, v26);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225180C1C;
  v24[3] = &unk_278547AC8;
  objc_copyWeak(&v25, location);
  objc_msgSend_setRecordFetchCommandBlock_(v12, v17, v24);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225180D54;
  v21[3] = &unk_278547768;
  objc_copyWeak(&v23, location);
  v18 = operationCopy;
  v22 = v18;
  objc_msgSend_setRecordFetchCompletionBlock_(v12, v19, v21);
  objc_msgSend_performOperation_initialMessageReplyBlock_(self, v20, v12, blockCopy);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

- (void)_dumpStatusReportArrayToOsTrace:(id)trace
{
  v24 = *MEMORY[0x277D85DE8];
  traceCopy = trace;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(traceCopy, v5, &v17, v23, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = MEMORY[0x277CBC880];
    v10 = MEMORY[0x277CBC870];
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(traceCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend__dumpStatusReportArrayToOsTrace_(self, v13, v12);
        }

        else
        {
          if (*v9 != -1)
          {
            dispatch_once(v9, *MEMORY[0x277CBC878]);
          }

          v15 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v22 = v12;
            _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Proxy status report: %@", buf, 0xCu);
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(traceCopy, v14, &v17, v23, 16);
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dumpDaemonStatusReportToFileHandle:(id)handle completionHandler:(id)handler
{
  handleCopy = handle;
  handlerCopy = handler;
  v10 = objc_msgSend_statusQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251811B8;
  block[3] = &unk_278546C30;
  v14 = handleCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = handleCopy;
  dispatch_async(v10, block);
}

- (void)submitClientEventMetric:(id)metric completeWhenQueued:(BOOL)queued completionHandler:(id)handler
{
  queuedCopy = queued;
  v35 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  handlerCopy = handler;
  v12 = objc_msgSend_currentProcess(CKDDaemonProcess, v10, v11);
  v15 = objc_msgSend_processType(v12, v13, v14);

  if (v15 == 2)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    if (queuedCopy)
    {
      v16 = 0;
    }

    else
    {
      v16 = handlerCopy;
    }

    v17 = _Block_copy(v16);
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_225073F60;
    v31[4] = sub_22507353C;
    v32 = os_transaction_create();
    v20 = objc_msgSend_metricUUID(metricCopy, v18, v19);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v20;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Daemon submitting CKEventMetric %@.", buf, 0xCu);
    }

    v22 = MEMORY[0x277CF36D0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_225181560;
    v27[3] = &unk_278547AF0;
    v23 = v20;
    v28 = v23;
    v30 = v31;
    v24 = v17;
    v29 = v24;
    objc_msgSend_reportCKEventMetric_container_completionHandler_(v22, v25, metricCopy, self, v27);
    if (handlerCopy && !v24)
    {
      handlerCopy[2](handlerCopy);
    }

    _Block_object_dispose(v31, 8);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)networkTransferEndpointWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_msgSend_baseURLForServerType_partitionType_(self, v4, 0, 1);
  if (v5)
  {
    v8 = v5;
    objc_msgSend_host(v5, v6, v7);
  }

  else
  {
    v8 = objc_msgSend_baseURLForServerType_partitionType_(self, v6, 0, 2);
    if (!v8)
    {
      v32 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 1000, @"Failed to get base URL");
      v31 = 0;
      goto LABEL_16;
    }

    objc_msgSend_host(v8, v9, v10);
  }
  v11 = ;
  v14 = objc_msgSend_port(v8, v12, v13);
  v17 = objc_msgSend_stringValue(v14, v15, v16);

  if (v11 && v17)
  {
    v19 = v11;
    v22 = objc_msgSend_UTF8String(v19, v20, v21);
    v23 = v17;
    v26 = objc_msgSend_UTF8String(v23, v24, v25);
    host = nw_endpoint_create_host(v22, v26);
    if (host)
    {
      v31 = nw_endpoint_copy_dictionary();
      if (v31)
      {
        v32 = 0;
      }

      else
      {
        v32 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBC120], 1000, @"Failed to copy nw_endpoint.");
      }
    }

    else
    {
      v33 = MEMORY[0x277CBC560];
      v34 = *MEMORY[0x277CBC120];
      v35 = objc_msgSend_host(v8, v27, v28);
      v38 = objc_msgSend_port(v8, v36, v37);
      v32 = objc_msgSend_errorWithDomain_code_format_(v33, v39, v34, 1000, @"Failed to create nw_endpoint for host %@ with port %@.", v35, v38);

      v31 = 0;
    }
  }

  else
  {
    v32 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 1000, @"Failed to retrieve host and port from %@.", v8);
    v31 = 0;
  }

LABEL_16:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v31, v32);
  }
}

- (void)suggestedMergeableDeltaSizeWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v5, v6);
  v10 = objc_msgSend_lastKnownServerConfiguration(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_containerID(self, v11, v12);
    v15 = objc_msgSend_suggestedMergeableDeltaSize_(v10, v14, v13);

    if (v15)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v22 = 134217984;
        v23 = 0x7FFFFFFFFFFFFFFFLL;
        _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Found suggested mergeable delta size: %ld", &v22, 0xCu);
      }

      v19 = objc_msgSend_integerValue(v15, v17, v18);
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC840];
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v22 = 134217984;
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "No cached configuration for suggested mergeable delta size, returning default: %ld", &v22, 0xCu);
    }
  }

  handlerCopy[2](handlerCopy, v19);

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)countAssetCacheItems
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v3 = objc_msgSend_setupAssetTransfers_(self, a2, &v21);
  v6 = v21;
  if ((v3 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "MMCS setup failed:%@", buf, 0xCu);
    }

    __assert_rtn("[CKDContainer countAssetCacheItems]", "CKDContainer.m", 3858, "0 && no MMCS");
  }

  v7 = objc_msgSend_MMCS(self, v4, v5);

  if (!v7)
  {
    v10 = objc_msgSend_MMCS(self, v8, v9);
    if (!v10)
    {
      __assert_rtn("[CKDContainer countAssetCacheItems]", "CKDContainer.m", 3860, "self.MMCS && no MMCS");
    }
  }

  v11 = objc_msgSend_MMCS(self, v8, v9);
  v14 = objc_msgSend_assetCache(v11, v12, v13);

  v17 = objc_msgSend_countAssetCacheItems(v14, v15, v16);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)clearAssetCache
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v3 = objc_msgSend_setupAssetTransfers_(self, a2, &v28);
  v6 = v28;
  if (v3)
  {
    v7 = objc_msgSend_MMCS(self, v4, v5);

    if (v7)
    {
      v10 = objc_msgSend_MMCS(self, v8, v9);
      v13 = objc_msgSend_assetCache(v10, v11, v12);

      if (v13)
      {
        v16 = objc_msgSend_MMCS(self, v14, v15);
        v19 = objc_msgSend_assetCache(v16, v17, v18);

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v20 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Clearing asset cache for %@", buf, 0xCu);
        }

        objc_msgSend_clearAssetCache(v19, v21, v22);

        goto LABEL_23;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy3 = self;
        v24 = "No assetCache MMCS for %@";
        goto LABEL_21;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy3 = self;
        v24 = "No MMCS for %@";
LABEL_21:
        v25 = v26;
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = v6;
      v24 = "MMCS setup failed:%@";
      v25 = v23;
LABEL_22:
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
    }
  }

LABEL_23:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)showAssetCache
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Showing all known asset caches", buf, 2u);
  }

  v6 = objc_msgSend_deviceContext(self, v4, v5);
  v9 = objc_msgSend_metadataCache(v6, v7, v8);
  v12 = objc_msgSend_account(self, v10, v11);
  v15 = objc_msgSend_accountID(v12, v13, v14);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22518207C;
  v17[3] = &unk_278547B18;
  v17[4] = self;
  objc_msgSend_enumerateKnownAppContainerAccountTuplesForAccountID_usingBlock_(v9, v16, v15, v17);
}

- (void)clearRecordCache
{
  v15 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v6 = v3;
    v9 = objc_msgSend_applicationBundleID(self, v7, v8);
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Clearing record cache for %@", &v13, 0xCu);
  }

  v10 = objc_msgSend_recordCache(self, v4, v5);
  objc_msgSend_clearAllRecords_(v10, v11, self);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)getPersona:(id)persona
{
  if (persona)
  {
    v4 = MEMORY[0x277CBC558];
    personaCopy = persona;
    v8 = objc_msgSend_currentPersona(v4, v6, v7);
    (*(persona + 2))(personaCopy, v8, 0);
  }
}

- (BOOL)isContentAccessed
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_accessCount(selfCopy, v3, v4) != 0;
  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)isContentDiscarded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  contentDiscarded = selfCopy->_contentDiscarded;
  objc_sync_exit(selfCopy);

  return contentDiscarded;
}

- (BOOL)shouldSerializeOwnerInfo
{
  objc_msgSend_clientSDKVersion(self, a2, v2);
  if (CKLinkCheck168f06831e5b4d3ab6cc64d69a8cc447())
  {
    v6 = objc_msgSend_entitlements(self, v4, v5);
    if (objc_msgSend_hasInProcessShareOwnerParticipantInfoEntitlement(v6, v7, v8))
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v12 = objc_msgSend_entitlements(self, v9, v10);
      v11 = objc_msgSend_hasSPIEntitlement(v12, v13, v14) & (*MEMORY[0x277CBC810] ^ 1);
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (CKDLogicalDeviceScopedClientProxy)logicalDeviceScopedClientProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_logicalDeviceScopedClientProxy);

  return WeakRetained;
}

@end