@interface CKDDeviceCapabilityManager
+ (id)managerForTesting;
+ (id)sharedManager;
- (BOOL)_deleteLastSentCapabilitiesAndUsageDataForContainer:(id)container withError:(id *)error;
- (BOOL)_deleteRecordWithUnknownShareUsage:(id)usage inContainer:(id)container withError:(id *)error;
- (BOOL)_deleteShareUsageForShareID:(id)d inContainer:(id)container withError:(id *)error;
- (BOOL)_deleteZoneUsageForZoneID:(id)d inContainer:(id)container withError:(id *)error;
- (BOOL)_isThrottledError:(id)error;
- (BOOL)_noteRecordWithUnknownShareUsageForRecordID:(id)d container:(id)container date:(id)date withError:(id *)error;
- (BOOL)_noteShareUsageForShareID:(id)d container:(id)container date:(id)date withError:(id *)error;
- (BOOL)_setRecordWithUnknownShareUsage:(id)usage forRecordID:(id)d inContainer:(id)container withError:(id *)error;
- (BOOL)_setShareUsage:(id)usage forShareID:(id)d inContainer:(id)container withError:(id *)error;
- (BOOL)_setZoneUsage:(id)usage forZoneID:(id)d inContainer:(id)container withError:(id *)error;
- (BOOL)_updateLastSentCapabilities:(id)capabilities capabilitySetSavedDate:(id)date forContainer:(id)container withError:(id *)error;
- (BOOL)_updateUsageSavedDate:(id)date forContainer:(id)container withError:(id *)error;
- (BOOL)isObsoleteCapabilities:(id)capabilities operation:(id)operation;
- (BOOL)isObsoleteUsage:(id)usage operation:(id)operation;
- (CKDDeviceCapabilityManager)init;
- (id)_deviceAndCapabilityCacheForContainer:(id)container;
- (id)_lastSentCapabilityAndUsageForContainer:(id)container withError:(id *)error;
- (id)_prepareShareUsageSendForContainer:(id)container maxCount:(unint64_t)count triggerOperation:(id)operation withCacheError:(id *)error;
- (id)_prepareZoneUsageSendForContainer:(id)container maxCount:(unint64_t)count triggerOperation:(id)operation withCacheError:(id *)error;
- (id)_recordWithUnknownShareUsagesInContainer:(id)container maxCount:(unint64_t)count withError:(id *)error;
- (id)_shareUsageForShareID:(id)d inContainer:(id)container withError:(id *)error;
- (id)_shareUsagesInContainer:(id)container maxCount:(unint64_t)count withError:(id *)error;
- (id)_zoneUsageForZoneID:(id)d inContainer:(id)container withError:(id *)error;
- (id)_zoneUsagesInContainer:(id)container maxCount:(unint64_t)count withError:(id *)error;
- (id)initInternal;
- (id)lookupStringForContainer:(id)container;
- (void)_handleCacheErrorBeforeServerRequest:(id)request skipErrorMitigation:(BOOL)mitigation;
- (void)_handleCacheUpdateErrorAfterServerRequest:(id)request skipErrorMitigation:(BOOL)mitigation;
- (void)_handleOperationCompletedForContainerLookupName:(id)name containerID:(id)d;
- (void)_incrementBackoffForError:(id)error;
- (void)_sendToServerForContainer:(id)container operation:(id)operation;
- (void)dropCacheConnectionForContainer:(id)container;
- (void)noteShareUsageForDeletedRecordID:(id)d at:(id)at container:(id)container operation:(id)operation;
- (void)noteShareUsageForRecordID:(id)d at:(id)at container:(id)container operation:(id)operation;
- (void)noteShareUsageForRequest:(id)request container:(id)container;
- (void)noteShareUsageForShareID:(id)d at:(id)at container:(id)container operation:(id)operation;
- (void)noteZoneUsageForOperation:(id)operation container:(id)container;
@end

@implementation CKDDeviceCapabilityManager

+ (id)sharedManager
{
  if (qword_280D58130 != -1)
  {
    dispatch_once(&qword_280D58130, &unk_28385CBC0);
  }

  v3 = qword_280D58128;

  return v3;
}

+ (id)managerForTesting
{
  v2 = [CKDDeviceCapabilityManager alloc];
  inited = objc_msgSend_initInternal(v2, v3, v4);

  return inited;
}

- (CKDDeviceCapabilityManager)init
{
  v2 = objc_alloc(MEMORY[0x277CBC360]);
  v4 = objc_msgSend_initWithCode_format_(v2, v3, 12, @"Use +[CKDDeviceCapabilityManager sharedManager] instead");
  objc_exception_throw(v4);
}

- (id)initInternal
{
  v12.receiver = self;
  v12.super_class = CKDDeviceCapabilityManager;
  v2 = [(CKDDeviceCapabilityManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.cloudkit.deviceCapabilityManagerQueue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_new();
    updateOperationsPerContainer = v2->_updateOperationsPerContainer;
    v2->_updateOperationsPerContainer = v7;

    v9 = objc_opt_new();
    capabilitiesAndUsagesCachePerContainer = v2->_capabilitiesAndUsagesCachePerContainer;
    v2->_capabilitiesAndUsagesCachePerContainer = v9;

    v2->_lastTrackedFailureTime = 0.0;
    v2->_failureBackoffDelay = 0.0;
  }

  return v2;
}

- (id)lookupStringForContainer:(id)container
{
  v3 = MEMORY[0x277CCACA8];
  containerCopy = container;
  v5 = sub_225081F2C(containerCopy);
  v8 = objc_msgSend_deviceID(containerCopy, v6, v7);

  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"%@-%@", v5, v8);

  return v10;
}

- (void)dropCacheConnectionForContainer:(id)container
{
  containerCopy = container;
  v7 = containerCopy;
  if (containerCopy && objc_msgSend_allowsDeviceCapabilitiesReporting(containerCopy, v5, v6))
  {
    v9 = objc_msgSend_lookupStringForContainer_(self, v8, v7);
    v12 = objc_msgSend_containerID(v7, v10, v11);
    v15 = objc_msgSend_queue(self, v13, v14);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225164984;
    block[3] = &unk_278546990;
    block[4] = self;
    v19 = v9;
    v20 = v12;
    v16 = v12;
    v17 = v9;
    dispatch_async(v15, block);
  }
}

- (id)_deviceAndCapabilityCacheForContainer:(id)container
{
  v37 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v7 = objc_msgSend_queue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v9 = objc_msgSend_lookupStringForContainer_(self, v8, containerCopy);
  v12 = objc_msgSend_capabilitiesAndUsagesCachePerContainer(self, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

  if (!v14)
  {
    v16 = objc_msgSend_deviceCapabilityUsageSQLCacheForContainer_(CKDDeviceCapabilityUsageSQLCache, v15, containerCopy);
    v17 = *MEMORY[0x277CBC878];
    v18 = *MEMORY[0x277CBC880];
    if (v16)
    {
      v14 = v16;
      if (v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v27 = v19;
        v30 = objc_msgSend_containerID(containerCopy, v28, v29);
        v35 = 138412290;
        v36 = v30;
        _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Initialized device capability cache for container with ID: %@", &v35, 0xCu);
      }

      v22 = objc_msgSend_capabilitiesAndUsagesCachePerContainer(self, v20, v21);
      objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v14, v9);
    }

    else
    {
      if (v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v24 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v31 = v24;
        v34 = objc_msgSend_containerID(containerCopy, v32, v33);
        v35 = 138412290;
        v36 = v34;
        _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Failed to initialize the device capability cache for container with ID: %@", &v35, 0xCu);
      }

      v14 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_zoneUsagesInContainer:(id)container maxCount:(unint64_t)count withError:(id *)error
{
  containerCopy = container;
  v11 = objc_msgSend_queue(self, v9, v10);
  dispatch_assert_queue_V2(v11);

  v13 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v12, containerCopy);

  if (v13)
  {
    v15 = objc_msgSend_zoneUsagesWithMaxCount_withError_(v13, v14, count, error);
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  return v15;
}

- (BOOL)_setZoneUsage:(id)usage forZoneID:(id)d inContainer:(id)container withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  containerCopy = container;
  v15 = objc_msgSend_queue(self, v13, v14);
  dispatch_assert_queue_V2(v15);

  v17 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v16, containerCopy);

  if (v17)
  {
    v19 = objc_msgSend_setZoneUsage_forZoneID_withError_(v17, v18, usageCopy, dCopy, error);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (id)_zoneUsageForZoneID:(id)d inContainer:(id)container withError:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  v12 = objc_msgSend_queue(self, v10, v11);
  dispatch_assert_queue_V2(v12);

  v14 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v13, containerCopy);

  if (v14)
  {
    error = objc_msgSend_zoneUsageForZoneID_withError_(v14, v15, dCopy, error);
  }

  else if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CBBF50];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"Device capability usage cache unavailable.";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v23, &v22, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, v17, 1, v18);

    error = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return error;
}

- (BOOL)_deleteZoneUsageForZoneID:(id)d inContainer:(id)container withError:(id *)error
{
  dCopy = d;
  containerCopy = container;
  v12 = objc_msgSend_queue(self, v10, v11);
  dispatch_assert_queue_V2(v12);

  v14 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v13, containerCopy);

  if (v14)
  {
    v16 = objc_msgSend_deleteZoneUsageForZoneID_withError_(v14, v15, dCopy, error);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)_shareUsagesInContainer:(id)container maxCount:(unint64_t)count withError:(id *)error
{
  containerCopy = container;
  v11 = objc_msgSend_queue(self, v9, v10);
  dispatch_assert_queue_V2(v11);

  v13 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v12, containerCopy);

  if (v13)
  {
    v15 = objc_msgSend_shareUsagesWithMaxCount_withError_(v13, v14, count, error);
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  return v15;
}

- (BOOL)_setShareUsage:(id)usage forShareID:(id)d inContainer:(id)container withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  containerCopy = container;
  v15 = objc_msgSend_queue(self, v13, v14);
  dispatch_assert_queue_V2(v15);

  v17 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v16, containerCopy);

  if (v17)
  {
    v19 = objc_msgSend_setShareUsage_forShareID_withError_(v17, v18, usageCopy, dCopy, error);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (id)_shareUsageForShareID:(id)d inContainer:(id)container withError:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  v12 = objc_msgSend_queue(self, v10, v11);
  dispatch_assert_queue_V2(v12);

  v14 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v13, containerCopy);

  if (v14)
  {
    error = objc_msgSend_shareUsageForShareID_withError_(v14, v15, dCopy, error);
  }

  else if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CBBF50];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"Device capability usage cache unavailable.";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v23, &v22, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, v17, 1, v18);

    error = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return error;
}

- (BOOL)_deleteShareUsageForShareID:(id)d inContainer:(id)container withError:(id *)error
{
  dCopy = d;
  containerCopy = container;
  v12 = objc_msgSend_queue(self, v10, v11);
  dispatch_assert_queue_V2(v12);

  v14 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v13, containerCopy);

  if (v14)
  {
    v16 = objc_msgSend_deleteShareUsageForShareID_withError_(v14, v15, dCopy, error);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)_setRecordWithUnknownShareUsage:(id)usage forRecordID:(id)d inContainer:(id)container withError:(id *)error
{
  usageCopy = usage;
  dCopy = d;
  containerCopy = container;
  v15 = objc_msgSend_queue(self, v13, v14);
  dispatch_assert_queue_V2(v15);

  v17 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v16, containerCopy);

  if (v17)
  {
    v19 = objc_msgSend_setRecordWithUnknownShareUsage_forRecordID_withError_(v17, v18, usageCopy, dCopy, error);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (id)_recordWithUnknownShareUsagesInContainer:(id)container maxCount:(unint64_t)count withError:(id *)error
{
  containerCopy = container;
  v11 = objc_msgSend_queue(self, v9, v10);
  dispatch_assert_queue_V2(v11);

  v13 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v12, containerCopy);

  if (v13)
  {
    v15 = objc_msgSend_recordWithUnknownShareUsagesWithMaxCount_withError_(v13, v14, count, error);
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  return v15;
}

- (BOOL)_deleteRecordWithUnknownShareUsage:(id)usage inContainer:(id)container withError:(id *)error
{
  usageCopy = usage;
  containerCopy = container;
  v12 = objc_msgSend_queue(self, v10, v11);
  dispatch_assert_queue_V2(v12);

  v14 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v13, containerCopy);

  if (v14)
  {
    v16 = objc_msgSend_deleteRecordWithUnknownShareUsageForRecordID_withError_(v14, v15, usageCopy, error);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)_lastSentCapabilityAndUsageForContainer:(id)container withError:(id *)error
{
  containerCopy = container;
  v9 = objc_msgSend_queue(self, v7, v8);
  dispatch_assert_queue_V2(v9);

  v11 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v10, containerCopy);

  if (v11)
  {
    objc_msgSend_lastSentCapabilitiesAndUsageWithError_(v11, v12, error);
  }

  else
  {
    objc_msgSend_none(CKLastSentCapabilitiesAndUsage, v12, v13);
  }
  v14 = ;

  return v14;
}

- (BOOL)_updateLastSentCapabilities:(id)capabilities capabilitySetSavedDate:(id)date forContainer:(id)container withError:(id *)error
{
  capabilitiesCopy = capabilities;
  dateCopy = date;
  containerCopy = container;
  v15 = objc_msgSend_queue(self, v13, v14);
  dispatch_assert_queue_V2(v15);

  v17 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v16, containerCopy);

  if (v17)
  {
    updated = objc_msgSend_updateCapabilitySet_capabilitySetSavedDate_withError_(v17, v18, capabilitiesCopy, dateCopy, error);
  }

  else
  {
    updated = 1;
  }

  return updated;
}

- (BOOL)_updateUsageSavedDate:(id)date forContainer:(id)container withError:(id *)error
{
  dateCopy = date;
  containerCopy = container;
  v12 = objc_msgSend_queue(self, v10, v11);
  dispatch_assert_queue_V2(v12);

  v14 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v13, containerCopy);

  if (v14)
  {
    updated = objc_msgSend_updateUsageSavedDate_withError_(v14, v15, dateCopy, error);
  }

  else
  {
    updated = 1;
  }

  return updated;
}

- (BOOL)_deleteLastSentCapabilitiesAndUsageDataForContainer:(id)container withError:(id *)error
{
  containerCopy = container;
  v9 = objc_msgSend_queue(self, v7, v8);
  dispatch_assert_queue_V2(v9);

  v11 = objc_msgSend__deviceAndCapabilityCacheForContainer_(self, v10, containerCopy);

  if (v11)
  {
    v13 = objc_msgSend_deleteLastSentCapabilitiesAndUsageEntryWithError_(v11, v12, error);
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)_sendToServerForContainer:(id)container operation:(id)operation
{
  containerCopy = container;
  operationCopy = operation;
  v11 = operationCopy;
  v12 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v13 = objc_msgSend_unitTestOverrides(operationCopy, v9, v10);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"UpdateCapabilitiesAsChildOperation");
    v18 = objc_msgSend_BOOLValue(v15, v16, v17);

    if ((*v12 & 1) != 0 && !v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
  }

  if (objc_msgSend_allowsDeviceCapabilitiesReporting(containerCopy, v9, v10))
  {
    if (*v12 == 1)
    {
      v21 = objc_msgSend_unitTestOverrides(v11, v19, v20);
      v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"doErrorRateMitigationInUnitTests");
      v26 = objc_msgSend_BOOLValue(v23, v24, v25) ^ 1;
    }

    else
    {
      v26 = 0;
    }

    v27 = objc_msgSend_options(containerCopy, v19, v20);
    v30 = objc_msgSend_supportedDeviceCapabilities(v27, v28, v29);

    v32 = objc_msgSend_lookupStringForContainer_(self, v31, containerCopy);
    v35 = objc_msgSend_containerID(containerCopy, v33, v34);
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_225165C0C;
    aBlock[3] = &unk_278546F30;
    objc_copyWeak(v58, &location);
    v59 = v26;
    v36 = v32;
    v52 = v36;
    v37 = containerCopy;
    v58[1] = a2;
    v53 = v37;
    selfCopy = self;
    v55 = v11;
    v38 = v30;
    v56 = v38;
    v39 = v35;
    v57 = v39;
    v60 = v18;
    v42 = _Block_copy(aBlock);
    if (v18)
    {
      v43 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v44 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *v50 = 0;
        _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Waiting for child operation to update device capabilities to be created.", v50, 2u);
      }

      v47 = objc_msgSend_queue(self, v45, v46);
      dispatch_sync(v47, v42);

      if (*v43 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v48 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *v50 = 0;
        _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Finished waiting for child operation to update device capabilities be created.", v50, 2u);
      }
    }

    else
    {
      v49 = objc_msgSend_queue(self, v40, v41);
      dispatch_async(v49, v42);
    }

    objc_destroyWeak(v58);
    objc_destroyWeak(&location);
  }

LABEL_21:
}

- (BOOL)_isThrottledError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_domain(errorCopy, v4, v5);
  if (!objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CBC120]))
  {

    goto LABEL_5;
  }

  v10 = objc_msgSend_code(errorCopy, v8, v9);

  if (v10 != 2009)
  {
LABEL_5:
    IsCode = CKErrorIsCode();
    goto LABEL_6;
  }

  IsCode = 1;
LABEL_6:

  return IsCode;
}

- (BOOL)isObsoleteCapabilities:(id)capabilities operation:(id)operation
{
  capabilitiesCopy = capabilities;
  operationCopy = operation;
  v9 = operationCopy;
  if (!capabilitiesCopy || *MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(operationCopy, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v10, v11, @"DeviceCapabilitiesObsolete"), v12 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend_BOOLValue(v12, v13, v14), v12, v10, (v15 & 1) != 0))
  {
    v16 = 1;
  }

  else
  {
    v17 = objc_msgSend_now(MEMORY[0x277CBEAA8], v7, v8);
    objc_msgSend_timeIntervalSinceDate_(v17, v18, capabilitiesCopy);
    v16 = v19 > 7776000.0;
  }

  return v16;
}

- (BOOL)isObsoleteUsage:(id)usage operation:(id)operation
{
  usageCopy = usage;
  operationCopy = operation;
  v9 = operationCopy;
  if (!usageCopy || *MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(operationCopy, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v10, v11, @"ZoneAndShareUsageObsolete"), v12 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend_BOOLValue(v12, v13, v14), v12, v10, (v15 & 1) != 0))
  {
    v16 = 1;
  }

  else
  {
    v17 = objc_msgSend_now(MEMORY[0x277CBEAA8], v7, v8);
    objc_msgSend_timeIntervalSinceDate_(v17, v18, usageCopy);
    v16 = v19 > 86400.0;
  }

  return v16;
}

- (id)_prepareZoneUsageSendForContainer:(id)container maxCount:(unint64_t)count triggerOperation:(id)operation withCacheError:(id *)error
{
  containerCopy = container;
  operationCopy = operation;
  v14 = objc_msgSend_queue(self, v12, v13);
  dispatch_assert_queue_V2(v14);

  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_225073F50;
  v56 = sub_225073534;
  v57 = objc_opt_new();
  if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_unitTestOverrides(operationCopy, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v17, v18, @"UpdateCapabilitiesAsChildOperation"), v19 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_BOOLValue(v19, v20, v21), v19, v17, (v22)) && count)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_225073F50;
    v50 = sub_225073534;
    v51 = 0;
    obj = 0;
    v23 = objc_msgSend__zoneUsagesInContainer_maxCount_withError_(self, v15, containerCopy, count, &obj);
    objc_storeStrong(&v51, obj);
    v26 = objc_msgSend_mutableCopy(v23, v24, v25);

    v29 = v47[5];
    if (v29)
    {
      v30 = 0;
      if (error)
      {
        *error = v29;
      }
    }

    else
    {
      v31 = objc_msgSend_allKeys(v26, v27, v28);
      v34 = objc_msgSend_count(v31, v32, v33);

      if (v34)
      {
        v44[0] = 0;
        v44[1] = v44;
        v44[2] = 0x2020000000;
        v44[3] = 0;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = sub_225167698;
        v38[3] = &unk_278546F58;
        v38[4] = self;
        v39 = containerCopy;
        v40 = &v46;
        v41 = &v52;
        v42 = v44;
        countCopy = count;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v26, v35, v38);
        v36 = v47[5];
        if (v36)
        {
          v30 = 0;
          if (error)
          {
            *error = v36;
          }
        }

        else
        {
          v30 = v53[5];
        }

        _Block_object_dispose(v44, 8);
      }

      else
      {
        v30 = v53[5];
      }
    }

    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v30 = v53[5];
  }

  _Block_object_dispose(&v52, 8);

  return v30;
}

- (id)_prepareShareUsageSendForContainer:(id)container maxCount:(unint64_t)count triggerOperation:(id)operation withCacheError:(id *)error
{
  containerCopy = container;
  operationCopy = operation;
  v14 = objc_msgSend_queue(self, v12, v13);
  dispatch_assert_queue_V2(v14);

  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_225073F50;
  v73 = sub_225073534;
  v74 = objc_opt_new();
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(operationCopy, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v17, v18, @"UpdateCapabilitiesAsChildOperation"), v19 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_BOOLValue(v19, v20, v21), v19, v17, (v22 & 1) == 0) || !count)
  {
    v33 = v70[5];
    goto LABEL_23;
  }

  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225167D8C;
  aBlock[3] = &unk_278546F80;
  v62 = &v69;
  v23 = containerCopy;
  v61 = v23;
  v63 = &v65;
  countCopy = count;
  v24 = _Block_copy(aBlock);
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_225073F50;
  v58 = sub_225073534;
  v59 = 0;
  obj = 0;
  v26 = objc_msgSend__shareUsagesInContainer_maxCount_withError_(self, v25, v23, count, &obj);
  objc_storeStrong(&v59, obj);
  if (!v26)
  {
    v33 = 0;
    if (error)
    {
      *error = v55[5];
    }

    goto LABEL_22;
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_225167F28;
  v49[3] = &unk_278546FA8;
  v27 = v24;
  v51 = v27;
  v49[4] = self;
  v28 = v23;
  v50 = v28;
  v52 = &v54;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v26, v29, v49);
  v32 = (v55 + 5);
  v31 = v55[5];
  if (!v31)
  {
    if (v66[3] >= count)
    {
      goto LABEL_16;
    }

    v48 = 0;
    v34 = objc_msgSend__recordWithUnknownShareUsagesInContainer_maxCount_withError_(self, v30, v28, count, &v48);
    objc_storeStrong(v32, v48);
    if (!v34)
    {
      if (error)
      {
        v31 = v55[5];
        goto LABEL_7;
      }

LABEL_20:
      v33 = 0;
      goto LABEL_21;
    }

    if (objc_msgSend_count(v34, v35, v36))
    {
      v38 = objc_msgSend_cacheForContainer_(CKDShareIDCache, v37, v28);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_225168024;
      v42[3] = &unk_278546FD0;
      v39 = v38;
      v43 = v39;
      v46 = v27;
      selfCopy = self;
      v45 = v28;
      v47 = &v54;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v34, v40, v42);
    }

    v31 = v55[5];
    if (!v31)
    {
LABEL_16:
      v33 = v70[5];
      goto LABEL_21;
    }
  }

  if (!error)
  {
    goto LABEL_20;
  }

LABEL_7:
  v33 = 0;
  *error = v31;
LABEL_21:

LABEL_22:
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v65, 8);
LABEL_23:
  _Block_object_dispose(&v69, 8);

  return v33;
}

- (void)_handleOperationCompletedForContainerLookupName:(id)name containerID:(id)d
{
  nameCopy = name;
  v8 = objc_msgSend_queue(self, v6, v7);
  dispatch_assert_queue_V2(v8);

  v12 = objc_msgSend_updateOperationsPerContainer(self, v9, v10);
  objc_msgSend_removeObjectForKey_(v12, v11, nameCopy);
}

- (void)_incrementBackoffForError:(id)error
{
  v4 = MEMORY[0x277CBEAA8];
  errorCopy = error;
  v8 = objc_msgSend_now(v4, v6, v7);
  objc_msgSend_timeIntervalSinceReferenceDate(v8, v9, v10);
  objc_msgSend_setLastTrackedFailureTime_(self, v11, v12);

  objc_msgSend_failureBackoffDelay(self, v13, v14);
  v18 = v17;
  v19 = 1.0;
  if (v18 != 0.0)
  {
    objc_msgSend_failureBackoffDelay(self, v15, v16, 1.0);
    v19 = fmin(v20 + v20, 14400.0);
  }

  objc_msgSend_setFailureBackoffDelay_(self, v15, v16, v19);
  CKRetryAfterSecondsForError();
  v22 = v21;

  objc_msgSend_failureBackoffDelay(self, v23, v24);
  if (v27 < v22)
  {

    objc_msgSend_setFailureBackoffDelay_(self, v25, v26, v22);
  }
}

- (void)_handleCacheErrorBeforeServerRequest:(id)request skipErrorMitigation:(BOOL)mitigation
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    if (mitigation)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKDDeviceCapabilityManager.m", 983, @"Expected an error");

    if (mitigation)
    {
      goto LABEL_8;
    }
  }

  objc_msgSend__incrementBackoffForError_(self, v7, requestCopy);
  objc_msgSend_failureBackoffDelay(self, v10, v11);
  v12 = CKDescriptionForTimeInterval();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v12;
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEFAULT, "Due to the cache failure when preparing to send the server request, the next earliest attempt at sending device capabilities or share/zone usage to the server will be in %{public}@.", &v17, 0xCu);
  }

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleCacheUpdateErrorAfterServerRequest:(id)request skipErrorMitigation:(BOOL)mitigation
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    if (mitigation)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDDeviceCapabilityManager.m", 1000, @"Expected an error");

    if (mitigation)
    {
      goto LABEL_10;
    }
  }

  objc_msgSend_failureBackoffDelay(self, v7, v8);
  if (v12 < 1800.0)
  {
    v12 = 1800.0;
  }

  objc_msgSend_setFailureBackoffDelay_(self, v10, v11, v12);
  v15 = objc_msgSend_now(MEMORY[0x277CBEAA8], v13, v14);
  objc_msgSend_timeIntervalSinceReferenceDate(v15, v16, v17);
  objc_msgSend_setLastTrackedFailureTime_(self, v18, v19);

  objc_msgSend_failureBackoffDelay(self, v20, v21);
  v22 = CKDescriptionForTimeInterval();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v23 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138543362;
    v28 = v22;
    _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEFAULT, "Due to the cache failure after sending the server request, the next earliest attempt at sending device capabilities or share/zone usage to the server will be in %{public}@.", &v27, 0xCu);
  }

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)noteZoneUsageForOperation:(id)operation container:(id)container
{
  v55 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  containerCopy = container;
  if (objc_msgSend_allowsDeviceCapabilitiesReporting(containerCopy, v8, v9))
  {
    v12 = objc_msgSend_options(containerCopy, v10, v11);
    v15 = objc_msgSend_bypassPCSEncryption(v12, v13, v14);

    if ((v15 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_databaseScope(operationCopy, v16, v17) == 2)
    {
      if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_unitTestOverrides(operationCopy, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v20, v21, @"UpdateCapabilitiesAsChildOperation"), v22 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend_BOOLValue(v22, v23, v24), v22, v20, v25))
      {
        v28 = objc_msgSend_zoneIDsUsed(operationCopy, v18, v19);
        if (v28)
        {
          v45 = 0;
          v46 = &v45;
          v47 = 0x3032000000;
          v48 = sub_225073F50;
          v49 = sub_225073534;
          v50 = 0;
          v29 = objc_msgSend_queue(self, v26, v27);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_2251697D4;
          block[3] = &unk_278547020;
          v30 = operationCopy;
          v40 = v30;
          v31 = v28;
          v41 = v31;
          selfCopy = self;
          v32 = containerCopy;
          v43 = v32;
          v44 = &v45;
          dispatch_sync(v29, block);

          if (v46[5])
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v34 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v38 = objc_msgSend_containerID(v32, v35, v36);
              *buf = 138412546;
              v52 = v38;
              v53 = 2112;
              v54 = v31;
              _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Failed to save zone usage to the cache. containerID: %@, zoneIDs: %@", buf, 0x16u);
            }
          }

          else
          {
            objc_msgSend__sendToServerForContainer_operation_(self, v33, v32, v30);
          }

          _Block_object_dispose(&v45, 8);
        }
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)noteShareUsageForRequest:(id)request container:(id)container
{
  v170[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  containerCopy = container;
  if (objc_msgSend_allowsDeviceCapabilitiesReporting(containerCopy, v8, v9))
  {
    v12 = objc_msgSend_options(containerCopy, v10, v11);
    v15 = objc_msgSend_bypassPCSEncryption(v12, v13, v14);

    if ((v15 & 1) == 0)
    {
      v170[0] = objc_opt_class();
      v170[1] = objc_opt_class();
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v170, 2);
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v17 = v164 = 0u;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v161, v169, 16);
      if (v19)
      {
        v20 = v19;
        v21 = *v162;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v162 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v161 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              v27 = v17;
              goto LABEL_19;
            }
          }

          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v24, &v161, v169, 16);
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v27 = objc_msgSend_operation(requestCopy, v25, v26);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (objc_msgSend_databaseScope(v27, v28, v29) != 3)
      {
        goto LABEL_19;
      }

      selfCopy = self;
      v32 = MEMORY[0x277CBC810];
      if (*MEMORY[0x277CBC810] == 1)
      {
        v33 = objc_msgSend_unitTestOverrides(v27, v30, v31);
        v35 = objc_msgSend_objectForKeyedSubscript_(v33, v34, @"UpdateCapabilitiesAsChildOperation");
        v38 = objc_msgSend_BOOLValue(v35, v36, v37);

        if (!v38)
        {
          goto LABEL_19;
        }
      }

      v130 = v27;
      v41 = objc_msgSend_now(MEMORY[0x277CBEAA8], v30, v31);
      if (*v32 == 1)
      {
        v42 = objc_msgSend_unitTestOverrides(v27, v39, v40);
        v44 = objc_msgSend_objectForKeyedSubscript_(v42, v43, @"InvalidUsageTimestamp");
        v47 = objc_msgSend_BOOLValue(v44, v45, v46);

        if (v47)
        {
          v49 = MEMORY[0x277CBEAA8];
          objc_msgSend_timeIntervalSince1970(v41, v39, v48);
          v53 = objc_msgSend_dateWithTimeIntervalSince1970_(v49, v51, v52, v50 + -2764800.0);
        }

        else
        {
          if ((*v32 & 1) == 0)
          {
            goto LABEL_25;
          }

          v55 = objc_msgSend_unitTestOverrides(v27, v39, v48);
          v57 = objc_msgSend_objectForKey_(v55, v56, @"ZoneAndShareUsageDate");

          if (!v57)
          {
            goto LABEL_25;
          }

          v59 = objc_msgSend_unitTestOverrides(v27, v39, v58);
          v53 = objc_msgSend_objectForKeyedSubscript_(v59, v60, @"ZoneAndShareUsageDate");

          v41 = v59;
        }

        v41 = v53;
      }

LABEL_25:
      v140 = objc_msgSend_cacheForContainer_(CKDShareIDCache, v39, containerCopy);
      v63 = objc_msgSend_zoneIDsUsed(v27, v61, v62);
      if (v63)
      {
        v138 = v41;
        v64 = v63;
        v133 = objc_opt_new();
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v129 = v64;
        obj = v64;
        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v157, v168, 16);
        if (v66)
        {
          v68 = v66;
          v137 = 0;
          v69 = 0;
          v70 = *v158;
          while (2)
          {
            for (j = 0; j != v68; ++j)
            {
              if (*v158 != v70)
              {
                objc_enumerationMutation(obj);
              }

              v72 = *(*(&v157 + 1) + 8 * j);
              v74 = objc_msgSend_zoneShareIDForZoneID_(v140, v67, v72);
              if (v74)
              {
                v156 = v69;
                v75 = objc_msgSend__noteShareUsageForShareID_container_date_withError_(selfCopy, v73, v74, containerCopy, v138, &v156);
                v76 = v156;

                if ((v75 & 1) == 0)
                {

                  v69 = v76;
                  v41 = v138;
                  v77 = v133;
                  goto LABEL_82;
                }

                v137 = 1;
                v69 = v76;
              }

              else
              {
                objc_msgSend_addObject_(v133, v73, v72);
              }
            }

            v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v157, v168, 16);
            if (v68)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v137 = 0;
          v69 = 0;
        }

        if (objc_msgSend_isFullZoneRequest(requestCopy, v78, v79))
        {
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v77 = v133;
          v82 = v133;
          v84 = selfCopy;
          v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v152, v167, 16);
          if (v126)
          {
            v86 = *v153;
            v128 = v82;
            v125 = *v153;
            do
            {
              v87 = 0;
              do
              {
                if (*v153 != v86)
                {
                  v88 = v87;
                  objc_enumerationMutation(v82);
                  v87 = v88;
                }

                v127 = v87;
                v89 = objc_msgSend_knownShareIDsForZoneID_(v140, v85, *(*(&v152 + 1) + 8 * v87));
                v148 = 0u;
                v149 = 0u;
                v150 = 0u;
                v151 = 0u;
                v131 = v89;
                v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v90, &v148, v166, 16);
                if (v91)
                {
                  v94 = v91;
                  obja = *v149;
                  while (2)
                  {
                    for (k = 0; k != v94; ++k)
                    {
                      if (*v149 != obja)
                      {
                        objc_enumerationMutation(v131);
                      }

                      v96 = *(*(&v148 + 1) + 8 * k);
                      v97 = objc_msgSend_zoneID(v96, v92, v93);
                      v100 = objc_msgSend_anonymousCKUserID(v97, v98, v99);
                      v103 = objc_msgSend_length(v100, v101, v102);

                      if (!v103)
                      {
                        v147 = v69;
                        v104 = objc_msgSend__noteShareUsageForShareID_container_date_withError_(selfCopy, v92, v96, containerCopy, v138, &v147);
                        v105 = v147;

                        if (!v104)
                        {

                          goto LABEL_80;
                        }

                        v137 = 1;
                        v69 = v105;
                      }
                    }

                    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v92, &v148, v166, 16);
                    if (v94)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v87 = v127 + 1;
                v84 = selfCopy;
                v77 = v133;
                v82 = v128;
                v86 = v125;
              }

              while (v127 + 1 != v126);
              v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v85, &v152, v167, 16);
              v86 = v125;
              v126 = v106;
            }

            while (v106);
          }

          if (v137)
          {
            objc_msgSend__sendToServerForContainer_operation_(v84, v107, containerCopy, v130);
          }

LABEL_81:
          v41 = v138;
        }

        else
        {
          v77 = v133;
          v108 = objc_msgSend_count(v133, v80, v81);
          v110 = selfCopy;
          if (v108)
          {
            objc_msgSend_recordIDsUsedInZones_(requestCopy, v109, v133);
            v143 = 0u;
            v144 = 0u;
            v145 = 0u;
            v132 = v146 = 0u;
            v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v111, &v143, v165, 16);
            if (v112)
            {
              v115 = v112;
              objb = *v144;
              while (2)
              {
                for (m = 0; m != v115; ++m)
                {
                  if (*v144 != objb)
                  {
                    objc_enumerationMutation(v132);
                  }

                  v117 = *(*(&v143 + 1) + 8 * m);
                  v118 = objc_msgSend_zoneID(v117, v113, v114);
                  v120 = objc_msgSend_containsObject_(v77, v119, v118);

                  if (v120)
                  {
                    v122 = objc_msgSend_shareIDForRecordID_(v140, v113, v117);
                    if (v122)
                    {
                      v142 = v69;
                      v123 = objc_msgSend__noteShareUsageForShareID_container_date_withError_(selfCopy, v121, v122, containerCopy, v138, &v142);
                      v105 = v142;

                      if ((v123 & 1) == 0)
                      {
                        goto LABEL_79;
                      }

                      v137 = 1;
                    }

                    else
                    {
                      v141 = v69;
                      v124 = objc_msgSend__noteRecordWithUnknownShareUsageForRecordID_container_date_withError_(selfCopy, v121, v117, containerCopy, v138, &v141);
                      v105 = v141;

                      if (!v124)
                      {
LABEL_79:

LABEL_80:
                        v69 = v105;
                        v77 = v133;
                        goto LABEL_81;
                      }
                    }

                    v69 = v105;
                    v77 = v133;
                  }
                }

                v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v113, &v143, v165, 16);
                if (v115)
                {
                  continue;
                }

                break;
              }
            }

            v41 = v138;
            v110 = selfCopy;
          }

          else
          {
            v41 = v138;
          }

          if (v137)
          {
            objc_msgSend__sendToServerForContainer_operation_(v110, v109, containerCopy, v130);
          }
        }

LABEL_82:

        v63 = v129;
        v27 = v130;
      }

LABEL_19:
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)noteShareUsageForDeletedRecordID:(id)d at:(id)at container:(id)container operation:(id)operation
{
  dCopy = d;
  atCopy = at;
  containerCopy = container;
  operationCopy = operation;
  if (objc_msgSend_allowsDeviceCapabilitiesReporting(containerCopy, v14, v15))
  {
    v18 = objc_msgSend_options(containerCopy, v16, v17);
    v21 = objc_msgSend_bypassPCSEncryption(v18, v19, v20);

    if (dCopy)
    {
      if ((v21 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_databaseScope(operationCopy, v22, v23) == 3)
      {
        if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_unitTestOverrides(operationCopy, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v26, v27, @"UpdateCapabilitiesAsChildOperation"), v28 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_BOOLValue(v28, v29, v30), v28, v26, v31))
        {
          v32 = objc_msgSend_cacheForContainer_(CKDShareIDCache, v24, containerCopy);
          v34 = objc_msgSend_shareIDForRecordID_(v32, v33, dCopy);
          v37 = v34;
          if (v34)
          {
            v38 = objc_msgSend_zoneID(v34, v35, v36);
            v41 = objc_msgSend_anonymousCKUserID(v38, v39, v40);
            v44 = objc_msgSend_length(v41, v42, v43);

            if (!v44 && (objc_msgSend_isEqual_(dCopy, v45, v37) & 1) == 0)
            {
              v48 = 0;
              if (objc_msgSend__noteShareUsageForShareID_container_date_withError_(self, v46, v37, containerCopy, atCopy, &v48))
              {
                objc_msgSend__sendToServerForContainer_operation_(self, v47, containerCopy, operationCopy);
              }
            }
          }
        }
      }
    }
  }
}

- (void)noteShareUsageForRecordID:(id)d at:(id)at container:(id)container operation:(id)operation
{
  dCopy = d;
  atCopy = at;
  containerCopy = container;
  operationCopy = operation;
  if (objc_msgSend_allowsDeviceCapabilitiesReporting(containerCopy, v14, v15))
  {
    v18 = objc_msgSend_options(containerCopy, v16, v17);
    v21 = objc_msgSend_bypassPCSEncryption(v18, v19, v20);

    if (dCopy)
    {
      if ((v21 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_databaseScope(operationCopy, v22, v23) == 3)
      {
        if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_unitTestOverrides(operationCopy, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v26, v27, @"UpdateCapabilitiesAsChildOperation"), v28 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_BOOLValue(v28, v29, v30), v28, v26, v31))
        {
          v32 = objc_msgSend_cacheForContainer_(CKDShareIDCache, v24, containerCopy);
          v34 = objc_msgSend_shareIDForRecordID_(v32, v33, dCopy);
          v37 = v34;
          if (v34)
          {
            v38 = objc_msgSend_zoneID(v34, v35, v36);
            v41 = objc_msgSend_anonymousCKUserID(v38, v39, v40);
            v44 = objc_msgSend_length(v41, v42, v43);

            if (v44)
            {
              v46 = 0;
            }

            else
            {
              v50 = 0;
              v47 = objc_msgSend__noteShareUsageForShareID_container_date_withError_(self, v45, v37, containerCopy, atCopy, &v50);
              v46 = v50;
              if (v47)
              {
                objc_msgSend__sendToServerForContainer_operation_(self, v48, containerCopy, operationCopy);
              }
            }
          }

          else
          {
            v49 = 0;
            objc_msgSend__noteRecordWithUnknownShareUsageForRecordID_container_date_withError_(self, v35, dCopy, containerCopy, atCopy, &v49);
            v46 = v49;
          }
        }
      }
    }
  }
}

- (void)noteShareUsageForShareID:(id)d at:(id)at container:(id)container operation:(id)operation
{
  dCopy = d;
  atCopy = at;
  containerCopy = container;
  operationCopy = operation;
  if (objc_msgSend_allowsDeviceCapabilitiesReporting(containerCopy, v14, v15))
  {
    v18 = objc_msgSend_options(containerCopy, v16, v17);
    v21 = objc_msgSend_bypassPCSEncryption(v18, v19, v20);

    if (dCopy)
    {
      if ((v21 & 1) == 0)
      {
        v24 = objc_msgSend_zoneID(dCopy, v22, v23);
        v27 = objc_msgSend_anonymousCKUserID(v24, v25, v26);
        v30 = objc_msgSend_length(v27, v28, v29);

        if (!v30 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_databaseScope(operationCopy, v31, v32) == 3)
        {
          if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_unitTestOverrides(operationCopy, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v35, v36, @"UpdateCapabilitiesAsChildOperation"), v37 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend_BOOLValue(v37, v38, v39), v37, v35, v40))
          {
            v42 = 0;
            if (objc_msgSend__noteShareUsageForShareID_container_date_withError_(self, v33, dCopy, containerCopy, atCopy, &v42))
            {
              objc_msgSend__sendToServerForContainer_operation_(self, v41, containerCopy, operationCopy);
            }
          }
        }
      }
    }
  }
}

- (BOOL)_noteRecordWithUnknownShareUsageForRecordID:(id)d container:(id)container date:(id)date withError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  dateCopy = date;
  objc_initWeak(&location, self);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_225073F50;
  v37 = sub_225073534;
  v38 = 0;
  v15 = objc_msgSend_queue(self, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22516AAE0;
  block[3] = &unk_278546FF8;
  objc_copyWeak(&v32, &location);
  v16 = dateCopy;
  v27 = v16;
  selfCopy = self;
  v17 = dCopy;
  v29 = v17;
  v18 = containerCopy;
  v30 = v18;
  v31 = &v33;
  dispatch_sync(v15, block);

  v19 = v34[5];
  if (v19)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v25 = objc_msgSend_containerID(v18, v21, v22);
      *buf = 138412546;
      v41 = v17;
      v42 = 2112;
      v43 = v25;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Failed to save unknown share usage to local cache for recordID: %@, containerID: %@", buf, 0x16u);
    }

    if (error)
    {
      *error = v34[5];
    }
  }

  objc_destroyWeak(&v32);
  _Block_object_dispose(&v33, 8);

  objc_destroyWeak(&location);
  v23 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (BOOL)_noteShareUsageForShareID:(id)d container:(id)container date:(id)date withError:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  dateCopy = date;
  v15 = objc_msgSend_zoneID(dCopy, v13, v14);
  v18 = objc_msgSend_anonymousCKUserID(v15, v16, v17);
  v21 = objc_msgSend_length(v18, v19, v20);

  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_225073F50;
    v44 = sub_225073534;
    v45 = 0;
    v25 = objc_msgSend_queue(self, v22, v23);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22516AE38;
    block[3] = &unk_278547020;
    block[4] = self;
    v26 = dCopy;
    v36 = v26;
    v27 = containerCopy;
    v37 = v27;
    v39 = &v40;
    v38 = dateCopy;
    dispatch_sync(v25, block);

    v28 = v41[5];
    v24 = v28 == 0;
    if (v28)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v34 = objc_msgSend_containerID(v27, v30, v31);
        *buf = 138412546;
        v47 = v26;
        v48 = 2112;
        v49 = v34;
        _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Failed to save share usage to local cache for shareID: %@, containerID: %@", buf, 0x16u);
      }

      if (error)
      {
        *error = v41[5];
      }
    }

    _Block_object_dispose(&v40, 8);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

@end