@interface CKDModifyRecordZonesOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_saveZonesToServer;
- (BOOL)_shouldUseZoneishPCSForZone:(id)zone;
- (BOOL)_updateZone:(id)zone withNewPCS:(id)s error:(id *)error;
- (BOOL)isOperationType:(int)type;
- (BOOL)makeStateTransition;
- (BOOL)needsUserKeySyncToPopulateServiceIdentity;
- (CKDModifyRecordZonesOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)_addParentPCS:(id)s toZonePCS:(id)cS;
- (id)_locallyCreatedParentPCSDataForZone:(id)zone error:(id *)error;
- (id)_topoSortRecordZones;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (int)operationType;
- (void)_checkAndPrepareZones;
- (void)_checkCurrentPCSIdentity;
- (void)_createNewPCSForZone:(id)zone completionHandler:(id)handler;
- (void)_fetchPCSDataForZone:(id)zone completion:(id)completion;
- (void)_fetchPCSDataForZonesFromServer;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleParentPCSForZone:(id)zone completion:(id)completion;
- (void)_handleRecordZoneDeleted:(id)deleted responseCode:(id)code;
- (void)_sendCoreAnalyticsEventForKeySync;
- (void)_sendErrorForFailedZones;
- (void)_synchronizeSigningIdentitiesIfNeeded;
- (void)_synchronizeUserKeyRegistryIfNeeded;
- (void)main;
@end

@implementation CKDModifyRecordZonesOperation

- (CKDModifyRecordZonesOperation)initWithOperationInfo:(id)info container:(id)container
{
  v61 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v59.receiver = self;
  v59.super_class = CKDModifyRecordZonesOperation;
  v9 = [(CKDDatabaseOperation *)&v59 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordZonesToSave(infoCopy, v7, v8);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
    recordZonesToSave = v9->_recordZonesToSave;
    v9->_recordZonesToSave = v13;

    v9->_hasZoneSaves = objc_msgSend_count(v9->_recordZonesToSave, v15, v16) != 0;
    v19 = objc_msgSend_recordZoneIDsToDelete(infoCopy, v17, v18);
    recordZoneIDsToDelete = v9->_recordZoneIDsToDelete;
    v9->_recordZoneIDsToDelete = v19;

    v9->_hasZoneDeletes = objc_msgSend_count(v9->_recordZoneIDsToDelete, v21, v22) != 0;
    v9->_allowDefaultZoneSave = objc_msgSend_allowDefaultZoneSave(infoCopy, v23, v24);
    v9->_markZonesAsUserPurged = objc_msgSend_markZonesAsUserPurged(infoCopy, v25, v26);
    v29 = objc_msgSend_maxZoneSaveAttempts(infoCopy, v27, v28);
    v9->_maxZoneSaveAttempts = v29;
    if (v29 <= 0)
    {
      v32 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v30, v31);
      v9->_maxZoneSaveAttempts = objc_msgSend_PCSRetryCount(v32, v33, v34);
    }

    v9->_dontFetchFromServer = objc_msgSend_dontFetchFromServer(infoCopy, v30, v31);
    v35 = objc_opt_new();
    recordZonesByZoneID = v9->_recordZonesByZoneID;
    v9->_recordZonesByZoneID = v35;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = v9->_recordZonesToSave;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v55, v60, 16);
    if (v39)
    {
      v42 = v39;
      v43 = *v56;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v56 != v43)
          {
            objc_enumerationMutation(v37);
          }

          v45 = *(*(&v55 + 1) + 8 * i);
          v46 = v9->_recordZonesByZoneID;
          v47 = objc_msgSend_zoneID(v45, v40, v41, v55);
          objc_msgSend_setObject_forKeyedSubscript_(v46, v48, v45, v47);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v55, v60, 16);
      }

      while (v42);
    }

    v49 = objc_opt_new();
    retryableErrorsByZoneID = v9->_retryableErrorsByZoneID;
    v9->_retryableErrorsByZoneID = v49;

    v51 = objc_opt_new();
    zonesWaitingOnKeyRegistrySync = v9->_zonesWaitingOnKeyRegistrySync;
    v9->_zonesWaitingOnKeyRegistrySync = v51;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 <= 3)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        objc_msgSend_setState_(self, v5, 3);
        objc_msgSend__checkCurrentPCSIdentity(self, v29, v30);
        return 1;
      }

      if (v4 != 3)
      {
        return 1;
      }

      goto LABEL_22;
    }

    objc_msgSend_setState_(self, v5, 2);
    v20 = objc_msgSend__topoSortRecordZones(self, v18, v19);
    objc_msgSend_setRecordZonesToSave_(self, v21, v20);
LABEL_24:

    return 1;
  }

  if (v4 > 5)
  {
    if (v4 == 6)
    {
      objc_msgSend_setState_(self, v5, 7);
      objc_msgSend__synchronizeUserKeyRegistryIfNeeded(self, v27, v28);
      return 1;
    }

    if (v4 != 7)
    {
      return 1;
    }

    v9 = objc_msgSend_numZoneSaveAttempts(self, v5, v6);
    if (objc_msgSend_maxZoneSaveAttempts(self, v10, v11) <= v9)
    {
      v17 = 0;
    }

    else
    {
      v14 = objc_msgSend_recordZonesToSave(self, v12, v13);
      v17 = objc_msgSend_count(v14, v15, v16) != 0;
    }

    v31 = objc_msgSend_zonesWaitingOnKeyRegistrySync(self, v12, v13);
    v34 = objc_msgSend_count(v31, v32, v33);

    if (!v34 && v17)
    {
LABEL_22:
      objc_msgSend_setState_(self, v5, 4);
      objc_msgSend__fetchPCSDataForZonesFromServer(self, v36, v37);
      return 1;
    }

    objc_msgSend__sendErrorForFailedZones(self, v5, v35);
    objc_msgSend__sendCoreAnalyticsEventForKeySync(self, v38, v39);
    objc_msgSend_setState_(self, v40, 0xFFFFFFFFLL);
    v20 = objc_msgSend_error(self, v41, v42);
    objc_msgSend_finishWithError_(self, v43, v20);
    goto LABEL_24;
  }

  if (v4 != 4)
  {
    objc_msgSend_setState_(self, v5, 6);
    objc_msgSend__synchronizeSigningIdentitiesIfNeeded(self, v7, v8);
    return 1;
  }

  objc_msgSend_setState_(self, v5, 5);
  v24 = objc_msgSend_numZoneSaveAttempts(self, v22, v23);
  objc_msgSend_setNumZoneSaveAttempts_(self, v25, (v24 + 1));

  return MEMORY[0x2821F9670](self, sel__saveZonesToServer, v26);
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/modify-record-zones", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 6)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDModifyRecordZonesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854B108[state - 2];
  }

  return v5;
}

- (id)relevantZoneIDs
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  v7 = objc_msgSend_recordZoneIDsToDelete(self, v5, v6);
  v10 = objc_msgSend_count(v4, v8, v9);
  v13 = (objc_msgSend_count(v7, v11, v12) + v10);
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB58]);
    v13 = objc_msgSend_initWithCapacity_(v14, v15, v13);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v4;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v33, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v25 = objc_msgSend_zoneID(*(*(&v29 + 1) + 8 * i), v19, v20, v29);
          if (v25)
          {
            objc_msgSend_addObject_(v13, v24, v25);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v29, v33, 16);
      }

      while (v21);
    }

    objc_msgSend_addObjectsFromArray_(v13, v26, v7);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_synchronizeSigningIdentitiesIfNeeded
{
  v32 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_needsSynchronizeSigningIdentities(self, a2, v2) && (objc_msgSend_didSynchronizeSigningIdentities(self, v4, v5) & 1) == 0)
  {
    v8 = objc_msgSend_topmostParentOperation(self, v6, v7);
    v11 = objc_msgSend_operationID(v8, v9, v10);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v31 = v11;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Will attempt user key sync to update signing identities for operation %{public}@.", buf, 0xCu);
    }

    v15 = objc_msgSend_stateTransitionGroup(self, v13, v14);
    dispatch_group_enter(v15);

    objc_initWeak(buf, self);
    objc_msgSend_noteOperationWillWaitOnPCS(self, v16, v17);
    v20 = objc_msgSend_container(self, v18, v19);
    v23 = objc_msgSend_pcsManager(v20, v21, v22);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22524CE50;
    v27[3] = &unk_27854ABF0;
    objc_copyWeak(&v29, buf);
    v24 = v11;
    v28 = v24;
    objc_msgSend_synchronizeUserKeyRegistryForSigningIdentitiesForRequestorOperationID_shouldThrottle_completionHandler_(v23, v25, v24, 1, v27);

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_checkCurrentPCSIdentity
{
  if (objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(self, a2, v2))
  {

    MEMORY[0x2821F9670](self, sel__synchronizeUserKeyRegistryFailingOnError_, 1);
  }
}

- (BOOL)needsUserKeySyncToPopulateServiceIdentity
{
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = CKDModifyRecordZonesOperation;
  return [(CKDDatabaseOperation *)&v9 needsUserKeySyncToPopulateServiceIdentity];
}

- (void)_synchronizeUserKeyRegistryIfNeeded
{
  v4 = objc_msgSend_zonesWaitingOnKeyRegistrySync(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {

    MEMORY[0x2821F9670](self, sel__synchronizeUserKeyRegistryFailingOnError_, 0);
  }
}

- (void)_sendCoreAnalyticsEventForKeySync
{
  v4 = objc_msgSend_keySyncAnalytics(self, a2, v2);

  if (!v4)
  {
    return;
  }

  v7 = objc_msgSend_recordZonesToSave(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (!v10)
  {
    v23 = objc_msgSend_keySyncAnalytics(self, v11, v12);
    objc_msgSend_setOverallResult_(v23, v28, @"success");
    goto LABEL_7;
  }

  v13 = objc_msgSend_keySyncAnalytics(self, v11, v12);
  objc_msgSend_setOverallResult_(v13, v14, @"failure");

  v17 = objc_msgSend_keySyncAnalytics(self, v15, v16);
  v20 = objc_msgSend_error(v17, v18, v19);

  if (!v20)
  {
    v23 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBC120], 2037, 0, @"Error saving record zone to server: Protection data didn't match");
    v26 = objc_msgSend_keySyncAnalytics(self, v24, v25);
    objc_msgSend_setError_(v26, v27, v23);

LABEL_7:
  }

  v30 = objc_msgSend_keySyncAnalytics(self, v21, v22);
  objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v29, v30);
}

- (id)_topoSortRecordZones
{
  v63 = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v56, v62, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v57;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v57 != v10)
      {
        objc_enumerationMutation(v4);
      }

      v12 = objc_msgSend_parent(*(*(&v56 + 1) + 8 * v11), v7, v8);

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v56, v62, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (*MEMORY[0x277CBC810] != 1)
    {
      goto LABEL_15;
    }

    v15 = 0;
  }

  else
  {
LABEL_9:

    if ((*MEMORY[0x277CBC810] & 1) == 0)
    {
      goto LABEL_18;
    }

    v15 = 1;
  }

  v16 = objc_msgSend_unitTestOverrides(self, v13, v14);
  v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"SkipToposortingZones");

  if ((v15 & 1) == 0 && !v18)
  {
LABEL_15:
    v19 = objc_alloc_init(MEMORY[0x277CBC5F0]);
    v22 = objc_msgSend_recordZonesToSave(self, v20, v21);
    v55 = 0;
    v24 = objc_msgSend_addRecordZones_error_(v19, v23, v22, &v55);
    v25 = v55;

    if (v24)
    {
      v54 = v25;
      v28 = objc_msgSend_recordZonesByTopologicalSortWithError_(v19, v26, &v54);
      v29 = v54;

      if (v28)
      {
        v32 = v28;
        v25 = v29;
        v33 = v32;
      }

      else
      {
        v46 = MEMORY[0x277CBC560];
        v47 = *MEMORY[0x277CBC120];
        v48 = objc_msgSend_localizedDescription(v29, v30, v31);
        v50 = objc_msgSend_errorWithDomain_code_format_(v46, v49, v47, 1007, @"Invalid list of zones: %@", v48);
        objc_msgSend_setError_(self, v51, v50);

        v32 = 0;
        v33 = 0;
        v25 = v29;
      }
    }

    else
    {
      v41 = MEMORY[0x277CBC560];
      v42 = *MEMORY[0x277CBC120];
      v32 = objc_msgSend_localizedDescription(v25, v26, v27);
      v44 = objc_msgSend_errorWithDomain_code_format_(v41, v43, v42, 1007, @"Invalid list of zones: %@", v32);
      objc_msgSend_setError_(self, v45, v44);

      v33 = 0;
    }

    goto LABEL_26;
  }

LABEL_18:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v34 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v37 = v34;
    v40 = objc_msgSend_operationID(self, v38, v39);
    *buf = 138412290;
    v61 = v40;
    _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, "No zone parent references found for operation %@, skipping toposort.", buf, 0xCu);
  }

  v33 = objc_msgSend_recordZonesToSave(self, v35, v36);
LABEL_26:
  v52 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)_sendErrorForFailedZones
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6) && objc_msgSend_didSynchronizeUserKeyRegistry(self, v7, v8))
  {
    v11 = objc_msgSend_numZoneSaveAttempts(self, v9, v10);

    if (v11 < 2)
    {
      goto LABEL_10;
    }

    v4 = objc_msgSend_container(self, v12, v13);
    v16 = objc_msgSend_processName(v4, v14, v15);
    v19 = objc_msgSend_containerID(v4, v17, v18);
    v22 = objc_msgSend_containerIdentifier(v19, v20, v21);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v59 = v23;
      v62 = objc_msgSend_recordZonesToSave(self, v60, v61);
      v65 = objc_msgSend_count(v62, v63, v64);
      v68 = objc_msgSend_operationID(self, v66, v67);
      *buf = 134218754;
      v79 = v65;
      v80 = 2114;
      *v81 = v68;
      *&v81[8] = 2114;
      *&v81[10] = v16;
      v82 = 2114;
      v83 = v22;
      _os_log_fault_impl(&dword_22506F000, v59, OS_LOG_TYPE_FAULT, "Failed to save %lu zones for operation %{public}@ despite user key sync. procName=%{public}@, containerID=%{public}@", buf, 0x2Au);
    }
  }

LABEL_10:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = objc_msgSend_recordZonesToSave(self, v12, v13);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v73, v77, 16);
  if (v25)
  {
    v28 = v25;
    v29 = *v74;
    v69 = *MEMORY[0x277CBC120];
    v30 = MEMORY[0x277CBC880];
    do
    {
      v31 = 0;
      do
      {
        if (*v74 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v73 + 1) + 8 * v31);
        v33 = objc_msgSend_retryableErrorsByZoneID(self, v26, v27);
        v36 = objc_msgSend_zoneID(v32, v34, v35);
        v38 = objc_msgSend_objectForKeyedSubscript_(v33, v37, v36);

        if (!v38)
        {
          v41 = MEMORY[0x277CBC560];
          v42 = objc_msgSend_zoneID(v32, v39, v40);
          v38 = objc_msgSend_errorWithDomain_code_userInfo_format_(v41, v43, v69, 2037, 0, @"Error saving record zone %@ to server: Protection data didn't match", v42);
        }

        if (*v30 != -1)
        {
          dispatch_once(v30, *MEMORY[0x277CBC878]);
        }

        v44 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v47 = v44;
          v50 = objc_msgSend_zoneID(v32, v48, v49);
          v53 = objc_msgSend_numZoneSaveAttempts(self, v51, v52);
          *buf = 138412802;
          v79 = v50;
          v80 = 1024;
          *v81 = v53;
          *&v81[4] = 2112;
          *&v81[6] = v38;
          _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Failed to save zone %@ to the server %d times. Bailing with error: %@.", buf, 0x1Cu);
        }

        v54 = objc_msgSend_saveCompletionBlock(self, v45, v46);

        if (v54)
        {
          v57 = objc_msgSend_callbackQueue(self, v55, v56);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_22524E418;
          block[3] = &unk_278546990;
          block[4] = self;
          block[5] = v32;
          v72 = v38;
          dispatch_async(v57, block);
        }

        ++v31;
      }

      while (v28 != v31);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v73, v77, 16);
    }

    while (v28);
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecordZoneDeleted:(id)deleted responseCode:(id)code
{
  v54 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  codeCopy = code;
  v10 = objc_msgSend_code(codeCopy, v8, v9);
  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (v10 == 1)
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = deletedCopy;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "RecordZone %@ was successfully deleted from the server", buf, 0xCu);
    }

    objc_msgSend_setPCSData_forFetchedZoneID_(self, v14, 0, deletedCopy);
    v17 = objc_msgSend_container(self, v15, v16);
    v20 = objc_msgSend_pcsCache(v17, v18, v19);
    objc_msgSend_removePCSDataForItemsInZoneWithID_(v20, v21, deletedCopy);

    v24 = objc_msgSend_recordCache(v17, v22, v23);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v24, v25, v17, deletedCopy);
    v26 = 0;
  }

  else
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v51 = codeCopy;
      v52 = 2112;
      v53 = deletedCopy;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Error %@ when deleting record zone %@ from the server", buf, 0x16u);
    }

    v28 = MEMORY[0x277CBC560];
    v29 = *MEMORY[0x277CBC120];
    v30 = sub_2253962A4(codeCopy);
    v17 = objc_msgSend_request(self, v31, v32);
    v24 = sub_225395734(v17, codeCopy);
    v35 = objc_msgSend_error(codeCopy, v33, v34);
    v38 = objc_msgSend_errorDescription(v35, v36, v37);
    v26 = objc_msgSend_errorWithDomain_code_userInfo_format_(v28, v39, v29, v30, v24, @"Error deleting record zone %@: %@", deletedCopy, v38);
  }

  v42 = objc_msgSend_deleteCompletionBlock(self, v40, v41);

  if (v42)
  {
    v45 = objc_msgSend_callbackQueue(self, v43, v44);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22524F774;
    block[3] = &unk_278546990;
    block[4] = self;
    v48 = deletedCopy;
    v49 = v26;
    dispatch_async(v45, block);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveZonesToServer
{
  v143 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordZonesToSave(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {

    goto LABEL_4;
  }

  v9 = objc_msgSend_recordZoneIDsToDelete(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
LABEL_4:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v16 = v13;
      v19 = objc_msgSend_recordZonesToSave(self, v17, v18);
      v22 = objc_msgSend_count(v19, v20, v21);
      v25 = objc_msgSend_recordZoneIDsToDelete(self, v23, v24);
      *buf = 134218240;
      v140 = v22;
      v141 = 2048;
      v142 = objc_msgSend_count(v25, v26, v27);
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Saving %ld, deleting %ld record zones on the server.", buf, 0x16u);
    }

    if (*MEMORY[0x277CBC810] == 1)
    {
      v28 = objc_msgSend_unitTestOverrides(self, v14, v15);
      v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"AddRandomShareeIdentityToZonePCS");
      v31 = v30 == 0;

      if (!v31)
      {
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v32 = objc_msgSend_recordZonesToSave(self, v14, v15);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v134, v138, 16);
        if (v36)
        {
          v38 = *v135;
          *&v37 = 138412290;
          v126 = v37;
          do
          {
            v39 = 0;
            do
            {
              if (*v135 != v38)
              {
                objc_enumerationMutation(v32);
              }

              v40 = *(*(&v134 + 1) + 8 * v39);
              v43 = objc_msgSend_zonePCS(v40, v34, v35, v126);
              if (v43)
              {
                v44 = objc_msgSend_container(self, v41, v42);
                v47 = objc_msgSend_pcsManager(v44, v45, v46);
                v49 = objc_msgSend_addRandomShareeToPCS_(v47, v48, v43);

                if (v49)
                {
                  objc_msgSend_setZonePCS_(v40, v34, v43);
                  v52 = objc_msgSend_container(self, v50, v51);
                  v55 = objc_msgSend_pcsManager(v52, v53, v54);
                  v133 = 0;
                  v57 = objc_msgSend_dataFromZonePCS_error_(v55, v56, v43, &v133);
                  v58 = v133;

                  if (!v57 || v58)
                  {
                    if (*MEMORY[0x277CBC880] != -1)
                    {
                      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                    }

                    v64 = *MEMORY[0x277CBC830];
                    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                    {
                      *buf = v126;
                      v140 = v58;
                      _os_log_error_impl(&dword_22506F000, v64, OS_LOG_TYPE_ERROR, "Failed to create PCS data, skipping AddRandomShareeIdentityToZonePCS. error: %@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    objc_msgSend_setProtectionData_(v40, v59, v57);
                    v61 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v60, v57);
                    objc_msgSend_setProtectionEtag_(v40, v62, v61);
                  }
                }
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v63 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22506F000, v63, OS_LOG_TYPE_INFO, "Warn: PCS not available for the zone, skipping AddRandomShareeIdentityToZonePCS", buf, 2u);
                }
              }

              ++v39;
            }

            while (v36 != v39);
            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v134, v138, 16);
          }

          while (v36);
        }
      }
    }

    v65 = objc_msgSend_stateTransitionGroup(self, v14, v15);
    dispatch_group_enter(v65);

    v66 = [CKDModifyRecordZonesURLRequest alloc];
    v69 = objc_msgSend_recordZonesToSave(self, v67, v68);
    v72 = objc_msgSend_recordZoneIDsToDelete(self, v70, v71);
    v74 = objc_msgSend_initWithOperation_recordZonesToSave_recordZoneIDsToDelete_(v66, v73, self, v69, v72);

    v77 = objc_msgSend_markZonesAsUserPurged(self, v75, v76);
    objc_msgSend_setMarkZonesAsUserPurged_(v74, v78, v77);
    v81 = objc_msgSend_container(self, v79, v80);
    v84 = objc_msgSend_options(v81, v82, v83);
    if ((objc_msgSend_bypassPCSEncryption(v84, v85, v86) & 1) == 0)
    {
      v89 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v87, v88);
      v92 = objc_msgSend_useEncryption(v89, v90, v91);

      if (!v92)
      {
        goto LABEL_36;
      }

      v81 = objc_msgSend_container(self, v93, v94);
      v84 = objc_msgSend_pcsManager(v81, v95, v96);
      v99 = objc_msgSend_lastMissingManateeIdentityErrorDateForCurrentService(v84, v97, v98);
      objc_msgSend_setLastMissingManateeIdentityErrorDate_(v74, v100, v99);
    }

    if (*MEMORY[0x277CBC810] != 1)
    {
      goto LABEL_39;
    }

    v101 = objc_msgSend_unitTestOverrides(self, v93, v94);
    v103 = objc_msgSend_objectForKeyedSubscript_(v101, v102, @"EnsureLastMissingManateeIdentityErrorDateOnZoneDelete");
    v104 = v103 == 0;

    if (v104)
    {
      goto LABEL_39;
    }

LABEL_36:
    v107 = objc_msgSend_lastMissingManateeIdentityErrorDate(v74, v105, v106);
    v108 = v107 == 0;

    if (v108)
    {
      v121 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v109, *MEMORY[0x277CBC120], 1, @"Failing zone delete for unit tests because we should have had a lastMissingManateeIdentityErrorDate");
      objc_msgSend_setError_(self, v122, v121);

      v125 = objc_msgSend_stateTransitionGroup(self, v123, v124);
      dispatch_group_leave(v125);

      v117 = 0;
    }

    else
    {
LABEL_39:
      objc_initWeak(buf, self);
      objc_initWeak(&location, v74);
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = sub_225250008;
      v130[3] = &unk_27854ABC8;
      objc_copyWeak(&v131, buf);
      objc_msgSend_setRecordZoneModifiedBlock_(v74, v110, v130);
      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = sub_22525010C;
      v127[3] = &unk_278548748;
      objc_copyWeak(&v128, buf);
      objc_copyWeak(&v129, &location);
      objc_msgSend_setCompletionBlock_(v74, v111, v127);
      objc_msgSend_setRequest_(self, v112, v74);
      v115 = objc_msgSend_container(self, v113, v114);
      objc_msgSend_performRequest_(v115, v116, v74);

      objc_destroyWeak(&v129);
      objc_destroyWeak(&v128);
      objc_destroyWeak(&v131);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
      v117 = 1;
    }

    goto LABEL_41;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v120 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v120, OS_LOG_TYPE_INFO, "Skipping save of zones because there is nothing to do", buf, 2u);
  }

  v117 = 0;
LABEL_41:
  v118 = *MEMORY[0x277D85DE8];
  return v117;
}

- (int)operationType
{
  hasZoneDeletes = self->_hasZoneDeletes;
  if (self->_hasZoneSaves)
  {
    if (!self->_hasZoneDeletes)
    {
      return 200;
    }
  }

  else if (self->_hasZoneDeletes)
  {
    return 202;
  }

  return 0;
}

- (BOOL)isOperationType:(int)type
{
  if (type == 200)
  {
    v3 = &OBJC_IVAR___CKDModifyRecordZonesOperation__hasZoneSaves;
  }

  else
  {
    if (type != 202)
    {
      v4 = 0;
      return v4 & 1;
    }

    v3 = &OBJC_IVAR___CKDModifyRecordZonesOperation__hasZoneDeletes;
  }

  v4 = *(&self->super.super.super.super.isa + *v3);
  return v4 & 1;
}

- (BOOL)_shouldUseZoneishPCSForZone:(id)zone
{
  zoneCopy = zone;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_options(v7, v8, v9);
  v15 = (objc_msgSend_useZoneWidePCS(v10, v11, v12) & 1) != 0 || objc_msgSend_encryptionScope(zoneCopy, v13, v14) == 1;

  return v15;
}

- (id)_locallyCreatedParentPCSDataForZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  v9 = objc_msgSend_parent(zoneCopy, v7, v8);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_parent(zoneCopy, v10, v11);
    v16 = objc_msgSend_zoneID(v13, v14, v15);

    if (v16)
    {
      v17 = objc_msgSend_parent(zoneCopy, v10, v11);
      v20 = objc_msgSend_zoneID(v17, v18, v19);

      v23 = objc_msgSend_recordZonesByZoneID(self, v21, v22);
      objc_sync_enter(v23);
      v26 = objc_msgSend_recordZonesByZoneID(self, v24, v25);
      v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v20);

      objc_sync_exit(v23);
      if (v28)
      {
        if (objc_msgSend_zonePCS(v28, v29, v30))
        {
          v32 = objc_msgSend_dataWithZone_(CKDZonePCSData, v31, v28);
          v35 = objc_msgSend_zonePCS(v28, v33, v34);
          objc_msgSend_setPcs_(v32, v36, v35);
          v39 = objc_msgSend_zoneishPCS(v28, v37, v38);
          objc_msgSend_setZoneishPCS_(v32, v40, v39);
LABEL_15:

          goto LABEL_16;
        }

        if (error)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 5005, @"Parent zone %@ has no PCS data", v20);
          goto LABEL_13;
        }
      }

      else if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v29, *MEMORY[0x277CBC120], 2036, @"Parent zone %@ not found in recordZonesByZoneID", v20);
LABEL_13:
        *error = v32 = 0;
        goto LABEL_15;
      }

      v32 = 0;
      goto LABEL_15;
    }
  }

  if (!error)
  {
    v32 = 0;
    goto LABEL_17;
  }

  v41 = MEMORY[0x277CBC560];
  v42 = *MEMORY[0x277CBC120];
  v20 = objc_msgSend_zoneID(zoneCopy, v10, v11);
  objc_msgSend_errorWithDomain_code_format_(v41, v43, v42, 1017, @"Zone %@ has no parent", v20);
  *error = v32 = 0;
LABEL_16:

LABEL_17:

  return v32;
}

- (BOOL)_updateZone:(id)zone withNewPCS:(id)s error:(id *)error
{
  zoneCopy = zone;
  sCopy = s;
  v12 = objc_msgSend_pcs(sCopy, v10, v11);
  objc_msgSend_setZonePCS_(zoneCopy, v13, v12);
  v16 = objc_msgSend_zoneishPCS(sCopy, v14, v15);

  objc_msgSend_setZoneishPCS_(zoneCopy, v17, v16);
  v20 = objc_msgSend_container(self, v18, v19);
  v23 = objc_msgSend_pcsManager(v20, v21, v22);
  v26 = objc_msgSend_zonePCS(zoneCopy, v24, v25);
  v28 = objc_msgSend_dataFromZonePCS_error_(v23, v27, v26, error);

  if (!v28)
  {
    LOBYTE(v44) = 0;
    goto LABEL_7;
  }

  objc_msgSend_setProtectionData_(zoneCopy, v29, v28);
  v31 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v30, v28);
  objc_msgSend_setProtectionEtag_(zoneCopy, v32, v31);

  if (!objc_msgSend__shouldUseZoneishPCSForZone_(self, v33, zoneCopy))
  {
    goto LABEL_5;
  }

  v36 = objc_msgSend_container(self, v34, v35);
  v39 = objc_msgSend_pcsManager(v36, v37, v38);
  v42 = objc_msgSend_zoneishPCS(zoneCopy, v40, v41);
  v44 = objc_msgSend_dataFromRecordPCS_error_(v39, v43, v42, error);

  if (v44)
  {
    objc_msgSend_setZoneishProtectionData_(zoneCopy, v45, v44);

LABEL_5:
    LOBYTE(v44) = 1;
  }

LABEL_7:

  return v44;
}

- (void)_handleParentPCSForZone:(id)zone completion:(id)completion
{
  v71 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  completionCopy = completion;
  v9 = objc_msgSend_dataWithZone_(CKDZonePCSData, v8, zoneCopy);
  v12 = objc_msgSend_zonePCS(zoneCopy, v10, v11);
  objc_msgSend_setPcs_(v9, v13, v12);
  v16 = objc_msgSend_zoneishPCS(zoneCopy, v14, v15);
  objc_msgSend_setZoneishPCS_(v9, v17, v16);
  v18 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v19 = MEMORY[0x277CBC830];
  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v46 = v20;
    v49 = objc_msgSend_zoneID(zoneCopy, v47, v48);
    v52 = objc_msgSend_parent(zoneCopy, v50, v51);
    v55 = objc_msgSend_zoneID(v52, v53, v54);
    *buf = 138412546;
    v68 = v49;
    v69 = 2112;
    v70 = v55;
    _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Handling parent PCS for zone %@ which has parent %@", buf, 0x16u);
  }

  v66 = 0;
  v22 = objc_msgSend__locallyCreatedParentPCSDataForZone_error_(self, v21, zoneCopy, &v66);
  v24 = v66;
  if (v22)
  {
    v25 = objc_msgSend__addParentPCS_toZonePCS_(self, v23, v22, v9);
    if (v25)
    {
      v27 = v25;
      if (*v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v68 = v27;
        v29 = "Error adding locally created parent PCS to child zone's PCS: %@";
        goto LABEL_24;
      }
    }

    else
    {
      v65 = 0;
      updated = objc_msgSend__updateZone_withNewPCS_error_(self, v26, zoneCopy, v9, &v65);
      v27 = v65;
      if ((updated & 1) == 0)
      {
        if (*v18 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v28 = *v19;
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v68 = v27;
          v29 = "Error updating zone with new PCS: %@";
LABEL_24:
          _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, v29, buf, 0xCu);
          if (!completionCopy)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }
    }

    if (completionCopy)
    {
LABEL_21:
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (*v18 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v30 = *v19;
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
    {
      v56 = v30;
      v59 = objc_msgSend_zoneID(zoneCopy, v57, v58);
      *buf = 138412290;
      v68 = v59;
      _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "No locally created parent PCS found for zone %@. Fetching from pcsCache", buf, 0xCu);
    }

    v33 = objc_msgSend_container(self, v31, v32);
    v36 = objc_msgSend_pcsCache(v33, v34, v35);
    v39 = objc_msgSend_parent(zoneCopy, v37, v38);
    v42 = objc_msgSend_zoneID(v39, v40, v41);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_225250C9C;
    v60[3] = &unk_27854B048;
    v61 = zoneCopy;
    selfCopy = self;
    v64 = completionCopy;
    v63 = v9;
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v36, v43, v42, self, 0, v60);

    v27 = v61;
  }

LABEL_22:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_createNewPCSForZone:(id)zone completionHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  handlerCopy = handler;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = sub_2250740E0;
  v66[4] = sub_2250735FC;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = sub_2250740E0;
  v64[4] = sub_2250735FC;
  v65 = 0;
  v12 = objc_msgSend_container(self, v8, v9);
  if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_unitTestOverrides(self, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v13, v14, @"ForceCreateV1_5ZonePCS"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, v13, v16))
  {
    v25 = 1;
  }

  else
  {
    v19 = objc_msgSend_unitTestOverrides(self, v17, v18);
    v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"ForceCreateV1_5ZonePCS");
    v24 = objc_msgSend_BOOLValue(v21, v22, v23);

    v25 = v24 ^ 1u;
  }

  v26 = dispatch_group_create();
  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v30 = objc_msgSend_zoneID(zoneCopy, v28, v29);
    *buf = 138412290;
    v69 = v30;
    _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Creating new PCS data for zone %@", buf, 0xCu);
  }

  dispatch_group_enter(v26);
  objc_msgSend_noteOperationWillWaitOnPCS(self, v31, v32);
  v35 = objc_msgSend_pcsManager(v12, v33, v34);
  v38 = objc_msgSend_topmostParentOperation(self, v36, v37);
  v41 = objc_msgSend_operationID(v38, v39, v40);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_2252513F4;
  v58[3] = &unk_27854B070;
  objc_copyWeak(&v62, &location);
  v60 = v66;
  v61 = v64;
  v42 = v26;
  v59 = v42;
  objc_msgSend_createZonePCSWithRequestorOperationID_createV2PCS_completionHandler_(v35, v43, v41, v25, v58);

  v46 = objc_msgSend_callbackQueue(self, v44, v45);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252514A4;
  block[3] = &unk_27854B098;
  v52 = v12;
  v53 = zoneCopy;
  v56 = v64;
  v57 = v66;
  selfCopy = self;
  v55 = handlerCopy;
  v47 = handlerCopy;
  v48 = zoneCopy;
  v49 = v12;
  dispatch_group_notify(v42, v46, block);

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_fetchPCSDataForZone:(id)zone completion:(id)completion
{
  zoneCopy = zone;
  completionCopy = completion;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_2250740E0;
  v40[4] = sub_2250735FC;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_2250740E0;
  v38[4] = sub_2250735FC;
  v39 = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v11 = objc_msgSend_container(self, v9, v10);
  v14 = objc_msgSend_pcsCache(v11, v12, v13);
  v17 = objc_msgSend_zoneID(zoneCopy, v15, v16);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_225252000;
  v32[3] = &unk_27854B0C0;
  v36 = v38;
  v18 = zoneCopy;
  v33 = v18;
  selfCopy = self;
  v37 = v40;
  v19 = v8;
  v35 = v19;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v14, v20, v17, self, 0, v32);

  v23 = objc_msgSend_callbackQueue(self, v21, v22);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_225252BAC;
  v26[3] = &unk_27854B0E8;
  v31 = v38;
  v27 = v18;
  selfCopy2 = self;
  v29 = completionCopy;
  v30 = v40;
  v24 = completionCopy;
  v25 = v18;
  dispatch_group_notify(v19, v23, v26);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
}

- (void)_fetchPCSDataForZonesFromServer
{
  v76 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_dontFetchFromServer(self, a2, v2))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v7 = v6;
      v10 = objc_msgSend_operationID(self, v8, v9);
      *buf = 138543362;
      v75 = v10;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Skipping fetch of zones from the server for operation %{public}@ because it has dontFetchFromServer set", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (objc_msgSend_useEncryption(self, v4, v5))
  {
    v13 = objc_msgSend_recordZonesToSave(self, v11, v12);
    v16 = objc_msgSend_count(v13, v14, v15);

    v17 = *MEMORY[0x277CBC878];
    v18 = *MEMORY[0x277CBC880];
    if (v16)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v22 = v19;
        v25 = objc_msgSend_recordZonesToSave(self, v23, v24);
        *buf = 134217984;
        v75 = objc_msgSend_count(v25, v26, v27);
        _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Preparing PCS data for %ld zones", buf, 0xCu);
      }

      v28 = objc_msgSend_stateTransitionGroup(self, v20, v21);
      dispatch_group_enter(v28);

      selfCopy = self;
      v32 = objc_msgSend_recordZonesToSave(self, v30, v31);
      v35 = objc_msgSend_copy(v32, v33, v34);

      v36 = dispatch_group_create();
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v37 = v35;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v69, v73, 16);
      if (v39)
      {
        v43 = v39;
        v44 = *v70;
        v45 = MEMORY[0x277CBC858];
        *&v42 = 138412290;
        v63 = v42;
        do
        {
          v46 = 0;
          do
          {
            if (*v70 != v44)
            {
              objc_enumerationMutation(v37);
            }

            v47 = *(*(&v69 + 1) + 8 * v46);
            v48 = objc_msgSend_protectionData(v47, v40, v41, v63);

            if (v48)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v49 = *v45;
              if (os_log_type_enabled(*v45, OS_LOG_TYPE_INFO))
              {
                v50 = v49;
                v53 = objc_msgSend_zoneID(v47, v51, v52);
                *buf = v63;
                v75 = v53;
                _os_log_impl(&dword_22506F000, v50, OS_LOG_TYPE_INFO, "Zone %@ already has PCS data.", buf, 0xCu);
              }
            }

            else
            {
              dispatch_group_enter(v36);
              v67[0] = MEMORY[0x277D85DD0];
              v67[1] = 3221225472;
              v67[2] = sub_2252533AC;
              v67[3] = &unk_278545A00;
              v68 = v36;
              objc_msgSend__fetchPCSDataForZone_completion_(selfCopy, v54, v47, v67);
            }

            ++v46;
          }

          while (v43 != v46);
          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v69, v73, 16);
        }

        while (v43);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v55 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v55, OS_LOG_TYPE_INFO, "Waiting to fetch zone PCS data", buf, 2u);
      }

      v58 = objc_msgSend_callbackQueue(selfCopy, v56, v57);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2252533B4;
      block[3] = &unk_278545898;
      v65 = v37;
      v66 = selfCopy;
      v59 = v37;
      dispatch_group_notify(v36, v58, block);

      goto LABEL_39;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v17);
    }

    v60 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v61 = "No zone to save in this operation.";
      goto LABEL_38;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v60 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v61 = "Skipping zone PCS stuff because encryption is disabled";
LABEL_38:
      _os_log_impl(&dword_22506F000, v60, OS_LOG_TYPE_INFO, v61, buf, 2u);
    }
  }

LABEL_39:
  v62 = *MEMORY[0x277D85DE8];
}

- (id)_addParentPCS:(id)s toZonePCS:(id)cS
{
  v67 = *MEMORY[0x277D85DE8];
  sCopy = s;
  cSCopy = cS;
  v8 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = MEMORY[0x277CBC830];
  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v56 = v10;
    v59 = objc_msgSend_zoneID(cSCopy, v57, v58);
    *buf = 138412546;
    v62 = sCopy;
    v63 = 2112;
    v64 = v59;
    _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Adding parent PCS data %@ to PCS for zone %@", buf, 0x16u);
  }

  if (!objc_msgSend_pcs(sCopy, v11, v12))
  {
    v41 = MEMORY[0x277CBC560];
    v42 = *MEMORY[0x277CBC120];
    v32 = objc_msgSend_zoneID(sCopy, v13, v14);
    v27 = objc_msgSend_errorWithDomain_code_format_(v41, v43, v42, 5004, @"Parent PCS data is missing PCS for zone %@", v32);
LABEL_17:

    goto LABEL_18;
  }

  v15 = objc_msgSend_container(self, v13, v14);
  v18 = objc_msgSend_pcsManager(v15, v16, v17);
  v21 = objc_msgSend_pcs(sCopy, v19, v20);
  v24 = objc_msgSend_pcs(cSCopy, v22, v23);
  v60 = 0;
  v26 = objc_msgSend_addParentZonePCS_toChildZonePCS_error_(v18, v25, v21, v24, &v60);
  v27 = v60;

  if (v26)
  {
    v30 = objc_msgSend_pcs(sCopy, v28, v29);
    v32 = objc_msgSend_publicKeyIDFromIdentity_(CKDPCSManager, v31, v30);
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v34 = v33;
      v37 = objc_msgSend_zoneID(sCopy, v35, v36);
      v40 = objc_msgSend_zoneID(cSCopy, v38, v39);
      *buf = 138412802;
      v62 = v37;
      v63 = 2112;
      v64 = v40;
      v65 = 2114;
      v66 = v32;
      _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Successfully added parent PCS data from zone %@ to zone %@. Public key ID is %{public}@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  if (*v8 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v44 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v62 = sCopy;
    v63 = 2112;
    v64 = cSCopy;
    v65 = 2112;
    v66 = v27;
    _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Error adding parent PCS %@ to zone PCS %@: %@", buf, 0x20u);
    if (v27)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (!v27)
  {
LABEL_16:
    v47 = MEMORY[0x277CBC560];
    v48 = *MEMORY[0x277CBC120];
    v32 = objc_msgSend_zoneID(sCopy, v45, v46);
    v51 = objc_msgSend_zoneID(cSCopy, v49, v50);
    v27 = objc_msgSend_errorWithDomain_code_format_(v47, v52, v48, 5005, @"Couldn't add parent PCS data from zone %@ to zone %@", v32, v51);

    goto LABEL_17;
  }

LABEL_18:
  v53 = v27;

  v54 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)_checkAndPrepareZones
{
  v50 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_allowDefaultZoneSave(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend_recordZonesToSave(self, v4, v5);
    v42 = objc_msgSend_mutableCopy(v6, v7, v8);

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = objc_msgSend_recordZonesToSave(self, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v45, v49, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v46;
      v18 = *MEMORY[0x277CBC120];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v20 = *(*(&v45 + 1) + 8 * i);
          v21 = objc_msgSend_zoneID(v20, v14, v15, v42);
          isDefaultRecordZoneID = objc_msgSend_isDefaultRecordZoneID(v21, v22, v23);

          if (isDefaultRecordZoneID)
          {
            v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, v18, 1017, @"You can't save the default zone");
            v28 = objc_msgSend_callbackQueue(self, v26, v27);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_225253DBC;
            block[3] = &unk_278546990;
            block[4] = self;
            block[5] = v20;
            v44 = v25;
            v29 = v25;
            dispatch_async(v28, block);

            objc_msgSend_removeObject_(v42, v30, v20);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v45, v49, 16);
      }

      while (v16);
    }

    v33 = objc_msgSend_count(v42, v31, v32);
    v36 = objc_msgSend_recordZonesToSave(self, v34, v35);
    v39 = objc_msgSend_count(v36, v37, v38);

    if (v33 != v39)
    {
      objc_msgSend_setRecordZonesToSave_(self, v40, v42);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  objc_msgSend__checkAndPrepareZones(self, a2, v2);
  v6 = objc_msgSend_recordZonesToSave(self, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_msgSend_recordZoneIDsToDelete(self, v9, v10);
    v11 = objc_msgSend_count(v12, v13, v14) == 0;
  }

  objc_msgSend_makeStateTransition_(self, v15, v11);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v4 = MEMORY[0x277CBEB98];
  errorCopy = error;
  v8 = objc_msgSend_recordZonesByZoneID(self, v6, v7);
  v11 = objc_msgSend_allKeys(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v4, v12, v11);

  if (objc_msgSend_count(v13, v14, v15))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_225254010;
    v20[3] = &unk_2785487F8;
    v21 = v13;
    objc_msgSend_updateCloudKitMetrics_(self, v17, v20);
  }

  objc_msgSend_setSaveCompletionBlock_(self, v16, 0);
  objc_msgSend_setDeleteCompletionBlock_(self, v18, 0);
  v19.receiver = self;
  v19.super_class = CKDModifyRecordZonesOperation;
  [(CKDOperation *)&v19 _finishOnCallbackQueueWithError:errorCopy];
}

@end