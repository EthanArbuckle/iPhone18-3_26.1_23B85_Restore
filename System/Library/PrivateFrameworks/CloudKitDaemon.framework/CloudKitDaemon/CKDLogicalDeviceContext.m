@interface CKDLogicalDeviceContext
+ (id)defaultContext;
+ (id)deviceContextForTestDeviceReference:(id)a3;
+ (id)existingDefaultContext;
- (BOOL)isDetachedTestServerReference;
- (BOOL)isLiveDevice;
- (CKDAccountDataSecurityObserver)accountDataSecurityObserver;
- (CKDLogicalDeviceScopedStateManager)deviceScopedStateManager;
- (CKDMetadataCache)metadataCache;
- (CKDOperationInfoCache)operationInfoCache;
- (CKDTestDeviceProtocol)testDevice;
- (CKDTestServerProtocol)testServer;
- (CKDThrottleManager)throttleManager;
- (CKDTokenRegistrationScheduler)tokenRegistrationScheduler;
- (CKSQLiteDatabase)deviceScopedDatabase;
- (NSURL)cacheDirectory;
- (id)_initWithTestDeviceReference:(id)a3;
- (id)deviceScopedPushTopic:(id)a3;
- (id)optionForKey:(id)a3;
- (id)pcsCacheForContainerID:(id)a3 accountOverrideInfo:(id)a4 accountID:(id)a5 encryptionServiceName:(id)a6;
- (int64_t)BOOLOptionForKey:(id)a3;
- (int64_t)pushBehavior;
- (void)accountDataSecurityObserver:(id)a3 didUpdateManateeStatusForAccountID:(id)a4;
- (void)accountDataSecurityObserver:(id)a3 didUpdateWalrusStatusForAccountID:(id)a4;
- (void)clearPCSMemoryCaches;
@end

@implementation CKDLogicalDeviceContext

+ (id)defaultContext
{
  if (qword_280D58688 != -1)
  {
    dispatch_once(&qword_280D58688, &unk_28385EA40);
  }

  v3 = qword_280D58680;

  return v3;
}

- (CKDMetadataCache)metadataCache
{
  metadataCache = self->_metadataCache;
  if (!metadataCache)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDLogicalDeviceContext.m", 254, @"Detached test servers don't have metadata caches");

    metadataCache = self->_metadataCache;
  }

  return metadataCache;
}

- (CKDTestDeviceProtocol)testDevice
{
  v4 = objc_msgSend_testServer(self, a2, v2);
  v7 = objc_msgSend_testDeviceReference(self, v5, v6);
  v10 = objc_msgSend_deviceID(v7, v8, v9);
  v12 = objc_msgSend_deviceWithDeviceID_(v4, v11, v10);

  return v12;
}

- (CKDTestServerProtocol)testServer
{
  v5 = objc_msgSend_testDeviceReference(self, a2, v2);

  if (v5 && (objc_msgSend_isDetachedTestServerReference(self, v6, v7) & 1) == 0)
  {
    v9 = self;
    objc_sync_enter(v9);
    v8 = v9->_testServer;
    if (!v8)
    {
      if (CKRunningInClientProcess())
      {
        v12 = 0;
      }

      else
      {
        v13 = objc_msgSend_currentProcess(CKDDaemonProcess, v10, v11);
        v12 = objc_msgSend_processType(v13, v14, v15) == 2;
      }

      if ((CKIsRunningInTestHost() | v12))
      {
        v18 = NSClassFromString(&cfstr_Cloudkittestin.isa);
        if (!v18)
        {
          v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, v9, @"CKDLogicalDeviceContext.m", 188, @"Couldn't find CKDTestServerManager in test process");
        }

        v19 = objc_msgSend_sharedManager(v18, v16, v17);
        v22 = objc_msgSend_testDeviceReference(v9, v20, v21);
        v25 = objc_msgSend_serverReferenceProtocol(v22, v23, v24);
        v8 = objc_msgSend_existingServerForReference_(v19, v26, v25);

        if (v8)
        {
          v29 = 0;
        }

        else
        {
          v29 = v12;
        }

        if (v29)
        {
          v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v27, v28);
          v36 = objc_msgSend_testDeviceReference(v9, v34, v35);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v37, a2, v9, @"CKDLogicalDeviceContext.m", 192, @"No such test device at %@", v36);
        }

        objc_storeStrong(&v9->_testServer, v8);
      }

      else
      {
        v8 = 0;
      }
    }

    objc_sync_exit(v9);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)pushBehavior
{
  v3 = objc_msgSend_testDevice(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_pushBehavior(v3, v4, v5);
    if (v7 >= 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (CKDTokenRegistrationScheduler)tokenRegistrationScheduler
{
  tokenRegistrationScheduler = self->_tokenRegistrationScheduler;
  if (!tokenRegistrationScheduler)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDLogicalDeviceContext.m", 274, @"Detached test servers don't have token registration schedulers");

    tokenRegistrationScheduler = self->_tokenRegistrationScheduler;
  }

  return tokenRegistrationScheduler;
}

- (CKDAccountDataSecurityObserver)accountDataSecurityObserver
{
  accountDataSecurityObserver = self->_accountDataSecurityObserver;
  if (!accountDataSecurityObserver)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDLogicalDeviceContext.m", 269, @"Detached test servers don't have throttle managers");

    accountDataSecurityObserver = self->_accountDataSecurityObserver;
  }

  return accountDataSecurityObserver;
}

- (BOOL)isLiveDevice
{
  v6 = objc_msgSend_testDeviceReference(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_testDeviceReference(self, v4, v5);
    v10 = objc_msgSend_deviceID(v7, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"__live_device__");
  }

  else
  {
    isEqualToString = 1;
  }

  return isEqualToString;
}

- (CKDThrottleManager)throttleManager
{
  throttleManager = self->_throttleManager;
  if (!throttleManager)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDLogicalDeviceContext.m", 264, @"Detached test servers don't have throttle managers");

    throttleManager = self->_throttleManager;
  }

  return throttleManager;
}

- (NSURL)cacheDirectory
{
  v5 = objc_msgSend_testDeviceReference(self, a2, v2);

  if (v5)
  {
    if (objc_msgSend_isDetachedTestServerReference(self, v6, v7))
    {
      v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKDLogicalDeviceContext.m", 229, @"Detached test servers don't have a filesystem presence");
    }

    v10 = objc_msgSend_testDevice(self, v8, v9);
    v13 = objc_msgSend_deviceDirectory(v10, v11, v12);
    v15 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v13, v14, @"CloudKitCaches", 1);
  }

  else
  {
    v16 = MEMORY[0x277CBEBC0];
    v10 = CKGetHomeCacheDir();
    v15 = objc_msgSend_fileURLWithPath_isDirectory_(v16, v17, v10, 1);
  }

  return v15;
}

- (CKSQLiteDatabase)deviceScopedDatabase
{
  v43 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC820] != -1)
  {
    dispatch_once(MEMORY[0x277CBC820], &unk_28385EA80);
  }

  if (*MEMORY[0x277CBC818])
  {
    v4 = @"cloudd_db";
  }

  else
  {
    v4 = @"cloudd_db_debug";
  }

  v5 = objc_msgSend_cacheDirectory(self, a2, v2);
  v7 = objc_msgSend_URLByAppendingPathComponent_(v5, v6, v4);
  v10 = objc_msgSend_path(v7, v8, v9);

  v40 = 0;
  v12 = objc_msgSend_databaseInDirectory_registryDatabase_options_error_(MEMORY[0x277CBC658], v11, v10, 0, 8, &v40);
  v13 = v40;
  if (v13)
  {
    v39 = v13;
    if (objc_msgSend_CKIsDiskFullError_(MEMORY[0x277CCA9B8], v14, v13))
    {
      goto LABEL_11;
    }

    v20 = objc_msgSend_domain(v39, v17, v18);
    if (objc_msgSend_isEqual_(v20, v21, *MEMORY[0x277CCA050]))
    {
      v24 = objc_msgSend_code(v39, v22, v23);

      if (v24 == 640)
      {
LABEL_11:
        if (*MEMORY[0x277CBC880] == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v27 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v25, v26);
    v28 = objc_alloc(MEMORY[0x277CBC6B0]);
    v29 = objc_alloc(MEMORY[0x277CBC6C8]);
    v31 = objc_msgSend_initWithFilePath_lineNumber_(v29, v30, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/CKDLogicalDeviceContext.m", 248);
    v33 = objc_msgSend_initWithSourceCodeLocation_format_(v28, v32, v31, @"failed to create database: %@", v39);
    objc_msgSend_handleSignificantIssue_actions_(v27, v34, v33, 0);

    v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"failed to create database: %@", v39);
    objc_msgSend_UTF8String(v36, v37, v38);
    _os_crash();
    __break(1u);
LABEL_20:
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
LABEL_12:
    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v39;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "-deviceScopedDatabase failed due to disk full. Cloudd will now exit. error = %{public}@", buf, 0xCu);
    }

    exit(1);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)existingDefaultContext
{
  os_unfair_lock_lock(&unk_280D58678);
  v2 = qword_280D58680;
  os_unfair_lock_unlock(&unk_280D58678);

  return v2;
}

+ (id)deviceContextForTestDeviceReference:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 && (*MEMORY[0x277CBC810] & 1) != 0)
  {
    if (qword_280D58690 != -1)
    {
      dispatch_once(&qword_280D58690, &unk_28385EA60);
    }

    v6 = objc_msgSend_deviceID(v5, v3, v4);
    v9 = v6;
    v10 = @"NO_DEVICE_ID";
    if (v6)
    {
      v10 = v6;
    }

    v26[0] = v10;
    v11 = objc_msgSend_serverReferenceProtocol(v5, v7, v8);
    v15 = objc_msgSend_dataDirectory(v11, v12, v13);
    v16 = v15;
    if (!v15)
    {
      v16 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v14, @"/dev/null");
    }

    v26[1] = v16;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v26, 2);
    if (!v15)
    {
    }

    v18 = qword_280D58698;
    objc_sync_enter(v18);
    v20 = objc_msgSend_objectForKey_(qword_280D58698, v19, v17);
    if (!v20)
    {
      v21 = [CKDLogicalDeviceContext alloc];
      v20 = objc_msgSend__initWithTestDeviceReference_(v21, v22, v5);
      objc_msgSend_setObject_forKey_(qword_280D58698, v23, v20, v17);
    }

    objc_sync_exit(v18);
  }

  else
  {
    v20 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v3, v4);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)pcsCacheForContainerID:(id)a3 accountOverrideInfo:(id)a4 accountID:(id)a5 encryptionServiceName:(id)a6
{
  v84 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v74 = a5;
  v72 = self;
  v73 = a6;
  v15 = objc_msgSend_sharedPcsCaches(self, v13, v14);

  if (!v15)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v62 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v80 = v11;
      _os_log_debug_impl(&dword_22506F000, v62, OS_LOG_TYPE_DEBUG, "%{public}@ creating pcsCache", buf, 0xCu);
    }

    v63 = [CKDPCSCache alloc];
    v56 = objc_msgSend_initWithDeviceContext_containerID_accountOverrideInfo_accountID_encryptionServiceName_(v63, v64, v72, v11, v12, v74, v73);
LABEL_46:
    v56 = v56;
    isEqual = v56;
    goto LABEL_47;
  }

  obj = objc_msgSend_sharedPcsCaches(v72, v16, v17);
  objc_sync_enter(obj);
  v20 = objc_msgSend_sharedPcsCaches(v72, v18, v19);
  v23 = objc_msgSend_allObjects(v20, v21, v22);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v24 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v80 = v11;
    _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ searching for eligible existing pcsCache", buf, 0xCu);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v25 = v23;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v75, v83, 16);
  if (v29)
  {
    v30 = *v76;
LABEL_8:
    v31 = 0;
    while (1)
    {
      if (*v76 != v30)
      {
        objc_enumerationMutation(v25);
      }

      v32 = *(*(&v75 + 1) + 8 * v31);
      v33 = objc_msgSend_containerID(v32, v27, v28, obj);
      isEqual = objc_msgSend_isEqual_(v33, v34, v11);

      if ((isEqual & 1) == 0)
      {
        goto LABEL_22;
      }

      v35 = objc_msgSend_accountOverrideInfo(v32, v27, v28);
      v38 = v35;
      if (v35 == v12)
      {
      }

      else
      {
        isEqual = objc_msgSend_accountOverrideInfo(v32, v36, v37);
        v40 = objc_msgSend_isEqual_(isEqual, v39, v12);

        if (!v40)
        {
          goto LABEL_22;
        }
      }

      v41 = objc_msgSend_accountID(v32, v27, v28);
      v44 = v41;
      if (v41 == v74)
      {

LABEL_20:
        v47 = objc_msgSend_encryptionServiceName(v32, v27, v28);
        v50 = v47;
        if (v47 == v73)
        {

LABEL_35:
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v65 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            v80 = v11;
            v81 = 2114;
            v82 = v32;
            _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "%{public}@ found existing pcsCache %{public}@", buf, 0x16u);
          }

          if ((objc_msgSend_beginContentAccess(v32, v66, v67) & 1) == 0)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v68 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v80 = v32;
              _os_log_error_impl(&dword_22506F000, v68, OS_LOG_TYPE_ERROR, "Failed to begin content access for pcsCache: %@", buf, 0xCu);
            }
          }

          isEqual = v32;
          v61 = 0;
          v56 = 0;
          v59 = v25;
          goto LABEL_45;
        }

        isEqual = objc_msgSend_encryptionServiceName(v32, v48, v49);
        v52 = objc_msgSend_isEqual_(isEqual, v51, v73);

        if (v52)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      isEqual = objc_msgSend_accountID(v32, v42, v43);
      v46 = objc_msgSend_isEqual_(isEqual, v45, v74);

      if (v46)
      {
        goto LABEL_20;
      }

LABEL_22:
      if (v29 == ++v31)
      {
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v75, v83, 16);
        if (v29)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v53 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v80 = v11;
    _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "%{public}@ creating pcsCache", buf, 0xCu);
  }

  v54 = [CKDPCSCache alloc];
  v56 = objc_msgSend_initWithDeviceContext_containerID_accountOverrideInfo_accountID_encryptionServiceName_(v54, v55, v72, v11, v12, v74, v73);
  v59 = objc_msgSend_sharedPcsCaches(v72, v57, v58);
  objc_msgSend_addObject_(v59, v60, v56);
  v61 = 1;
LABEL_45:

  objc_sync_exit(obj);
  if (v61)
  {
    goto LABEL_46;
  }

LABEL_47:

  v69 = *MEMORY[0x277D85DE8];

  return isEqual;
}

- (void)clearPCSMemoryCaches
{
  v43 = *MEMORY[0x277D85DE8];
  obj = objc_msgSend_sharedPcsCaches(self, a2, v2);
  objc_sync_enter(obj);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = objc_msgSend_sharedPcsCaches(self, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v30, v42, 16);
  if (v8)
  {
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v12 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v18 = objc_msgSend_containerID(v11, v13, v14);
          v21 = objc_msgSend_accountOverrideInfo(v11, v19, v20);
          v24 = objc_msgSend_accountID(v11, v22, v23);
          v27 = objc_msgSend_encryptionServiceName(v11, v25, v26);
          *buf = 138544130;
          v35 = v18;
          v36 = 2114;
          v37 = v21;
          v38 = 2112;
          v39 = v24;
          v40 = 2114;
          v41 = v27;
          _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Clearing in-memory PCS cache for containerID %{public}@, accountOverrideInfo %{public}@, accountID %@, encryptionServiceName %{public}@", buf, 0x2Au);
        }

        objc_msgSend_clearPCSMemoryCaches(v11, v15, v16);
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v17, &v30, v42, 16);
    }

    while (v8);
  }

  objc_sync_exit(obj);
  v28 = *MEMORY[0x277D85DE8];
}

- (id)_initWithTestDeviceReference:(id)a3
{
  v8 = a3;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v9 = CKIsRunningInTestHost();
    if (!v8)
    {
      if (v9)
      {
        v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKDLogicalDeviceContext.m", 147, @"A test attempted to create a CKDLogicalDeviceContext in the test host without an associated CKTestDevice.  This is not allowed; it causes the system to fight over shared files on disk. Did you create a CKDContainer without a CKTestDevice?");
      }
    }
  }

  v10 = objc_msgSend_sharedMonitor(CKDSystemAvailabilityMonitor, v6, v7);
  objc_msgSend_assertAvailability_(v10, v11, 2);

  v44.receiver = self;
  v44.super_class = CKDLogicalDeviceContext;
  v12 = [(CKDLogicalDeviceContext *)&v44 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_testDeviceReference, a3);
    v14 = [CKDAccountDataSecurityObserver alloc];
    v16 = objc_msgSend_initWithDeviceContext_(v14, v15, v13);
    v17 = *(v13 + 56);
    *(v13 + 56) = v16;

    objc_msgSend_setDelegate_(*(v13 + 56), v18, v13);
    if ((objc_msgSend_isDetachedTestServerReference(v13, v19, v20) & 1) == 0)
    {
      v21 = [CKDMetadataCache alloc];
      v23 = objc_msgSend_initWithDeviceContext_(v21, v22, v13);
      v24 = *(v13 + 16);
      *(v13 + 16) = v23;

      v25 = [CKDOperationInfoCache alloc];
      v27 = objc_msgSend_initWithDeviceContext_(v25, v26, v13);
      v28 = *(v13 + 24);
      *(v13 + 24) = v27;

      v29 = [CKDTokenRegistrationScheduler alloc];
      v31 = objc_msgSend_initWithDeviceContext_(v29, v30, v13);
      v32 = *(v13 + 48);
      *(v13 + 48) = v31;

      v33 = [CKDThrottleManager alloc];
      v35 = objc_msgSend_initWithDeviceContext_(v33, v34, v13);
      v36 = *(v13 + 32);
      *(v13 + 32) = v35;

      v39 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v37, v38);
      v40 = *(v13 + 72);
      *(v13 + 72) = v39;
    }
  }

  return v13;
}

- (BOOL)isDetachedTestServerReference
{
  v6 = objc_msgSend_testDeviceReference(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_testDeviceReference(self, v4, v5);
    v10 = objc_msgSend_serverReferenceProtocol(v7, v8, v9);
    v11 = sub_2251093C8();
    v14 = objc_msgSend_detachedTestServerReference(v11, v12, v13);
    isEqual = objc_msgSend_isEqual_(v10, v15, v14);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (CKDOperationInfoCache)operationInfoCache
{
  operationInfoCache = self->_operationInfoCache;
  if (!operationInfoCache)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDLogicalDeviceContext.m", 259, @"Detached test servers don't have operation info caches");

    operationInfoCache = self->_operationInfoCache;
  }

  return operationInfoCache;
}

- (CKDLogicalDeviceScopedStateManager)deviceScopedStateManager
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_deviceScopedStateManager);
  if (!WeakRetained)
  {
    v4 = [CKDLogicalDeviceScopedStateManager alloc];
    WeakRetained = objc_msgSend_initWithDeviceContext_(v4, v5, v2);
    objc_storeWeak(&v2->_deviceScopedStateManager, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (id)deviceScopedPushTopic:(id)a3
{
  v4 = a3;
  objc_msgSend_pushBehavior(self, v5, v6);
  v9 = objc_msgSend_testDeviceReference(self, v7, v8);
  v12 = objc_msgSend_deviceID(v9, v10, v11);
  v15 = objc_msgSend_testDeviceReference(self, v13, v14);
  v18 = objc_msgSend_serverReferenceProtocol(v15, v16, v17);
  v21 = objc_msgSend_dataDirectory(v18, v19, v20);
  v24 = objc_msgSend_path(v21, v22, v23);
  v25 = CKPushTopicForPushBehavior();

  return v25;
}

- (id)optionForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_testDevice(self, v5, v6);
  v10 = objc_msgSend_options(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v4);

  return v12;
}

- (int64_t)BOOLOptionForKey:(id)a3
{
  v3 = objc_msgSend_optionForKey_(self, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_msgSend_BOOLValue(v3, v4, v5);
    v6 = CKTernaryFromBOOL();
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (void)accountDataSecurityObserver:(id)a3 didUpdateManateeStatusForAccountID:(id)a4
{
  v4 = a4;
  v8 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v5, v6);
  objc_msgSend_postAccountChangedNotificationWithAccountID_changeType_(v8, v7, v4, 0);
}

- (void)accountDataSecurityObserver:(id)a3 didUpdateWalrusStatusForAccountID:(id)a4
{
  v4 = a4;
  v8 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v5, v6);
  objc_msgSend_postAccountChangedNotificationWithAccountID_changeType_(v8, v7, v4, 0);
}

@end