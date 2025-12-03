@interface CKDAggregateZonePCSOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_saveTargetZone;
- (BOOL)makeStateTransition;
- (CKDAggregateZonePCSOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_checkCurrentPCSIdentity;
- (void)_fetchPCSDataForZoneID:(id)d;
- (void)_fetchZonePCS;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleZoneSavedWithID:(id)d responseCode:(id)code;
- (void)_prepareTargetZonePCS;
- (void)_sendCoreAnalyticsEventForKeySync;
- (void)_setPermanentFailure;
- (void)_synchronizeSigningIdentitiesIfNeeded;
- (void)_synchronizeUserKeyRegistryIfNeeded;
@end

@implementation CKDAggregateZonePCSOperation

- (CKDAggregateZonePCSOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v24.receiver = self;
  v24.super_class = CKDAggregateZonePCSOperation;
  v9 = [(CKDDatabaseOperation *)&v24 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_sourceZoneIDs(infoCopy, v7, v8);
    sourceZoneIDs = v9->_sourceZoneIDs;
    v9->_sourceZoneIDs = v10;

    v14 = objc_msgSend_targetZone(infoCopy, v12, v13);
    targetZone = v9->_targetZone;
    v9->_targetZone = v14;

    v16 = objc_opt_new();
    zonePCSDataByZoneID = v9->_zonePCSDataByZoneID;
    v9->_zonePCSDataByZoneID = v16;

    v20 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v18, v19);
    v9->_maxZoneSaveAttempts = objc_msgSend_PCSRetryCount(v20, v21, v22);
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/aggregate-zone-pcs", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)relevantZoneIDs
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sourceZoneIDs(self, a2, v2);
  v7 = objc_msgSend_targetZone(self, v5, v6);
  v10 = objc_msgSend_zoneID(v7, v8, v9);

  v13 = objc_msgSend_count(v4, v11, v12);
  if (v13)
  {
    v15 = v13;
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    if (v10)
    {
      v18 = objc_msgSend_initWithCapacity_(v16, v17, v15 + 1);
    }

    else
    {
      v18 = objc_msgSend_initWithCapacity_(v16, v17, v15);
    }

    v20 = v18;
    objc_msgSend_addObjectsFromArray_(v18, v19, v4);
    if (v10)
    {
      objc_msgSend_addObject_(v20, v21, v10);
    }
  }

  else if (v10)
  {
    v24[0] = v10;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v24, 1);
  }

  else
  {
    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend__checkCurrentPCSIdentity(self, v25, v26);
      return 1;
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        objc_msgSend_setState_(self, v5, 4);
        objc_msgSend__prepareTargetZonePCS(self, v9, v10);
      }

      return 1;
    }

    goto LABEL_17;
  }

  if (v4 > 5)
  {
    if (v4 == 6)
    {
      objc_msgSend_setState_(self, v5, 7);
      objc_msgSend__synchronizeUserKeyRegistryIfNeeded(self, v32, v33);
      return 1;
    }

    if (v4 != 7)
    {
      return 1;
    }

    v11 = objc_msgSend_numZoneSaveAttempts(self, v5, v6);
    if (v11 >= objc_msgSend_maxZoneSaveAttempts(self, v12, v13) || !objc_msgSend_isHandlingRetryableError(self, v5, v14) || (objc_msgSend_zoneWaitingOnKeyRegistrySync(self, v5, v14), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      if (objc_msgSend_isHandlingRetryableError(self, v5, v14))
      {
        objc_msgSend__setPermanentFailure(self, v16, v17);
      }

      objc_msgSend__sendCoreAnalyticsEventForKeySync(self, v16, v17);
      objc_msgSend_setState_(self, v18, 0xFFFFFFFFLL);
      v21 = objc_msgSend_error(self, v19, v20);
      objc_msgSend_finishWithError_(self, v22, v21);

      return 1;
    }

LABEL_17:
    objc_msgSend_setState_(self, v5, 3);
    objc_msgSend__fetchZonePCS(self, v23, v24);
    return 1;
  }

  if (v4 != 4)
  {
    objc_msgSend_setState_(self, v5, 6);
    objc_msgSend__synchronizeSigningIdentitiesIfNeeded(self, v7, v8);
    return 1;
  }

  objc_msgSend_setState_(self, v5, 5);
  v29 = objc_msgSend_numZoneSaveAttempts(self, v27, v28);
  objc_msgSend_setNumZoneSaveAttempts_(self, v30, v29 + 1);

  return MEMORY[0x2821F9670](self, sel__saveTargetZone, v31);
}

+ (id)nameForState:(unint64_t)state
{
  if (state - 2 >= 6)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDAggregateZonePCSOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854AC60[state - 2];
  }

  return v5;
}

- (void)_fetchZonePCS
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sourceZoneIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_sourceZoneIDs(self, v8, v9);
    v13 = objc_msgSend_targetZone(self, v11, v12);
    v16 = objc_msgSend_zoneID(v13, v14, v15);
    v18 = objc_msgSend_arrayByAddingObject_(v10, v17, v16);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      *buf = 134217984;
      v37 = objc_msgSend_count(v18, v21, v22);
      _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Fetching PCS data for %ld zones", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v18;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v31, v35, 16);
    if (v25)
    {
      v27 = v25;
      v28 = *v32;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v23);
          }

          objc_msgSend__fetchPCSDataForZoneID_(self, v26, *(*(&v31 + 1) + 8 * i), v31);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v31, v35, 16);
      }

      while (v27);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_fetchPCSDataForZoneID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_stateTransitionGroup(self, v5, v6);
  dispatch_group_enter(v7);

  objc_initWeak(&location, self);
  v10 = objc_msgSend_container(self, v8, v9);
  v13 = objc_msgSend_pcsCache(v10, v11, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22523BC4C;
  v16[3] = &unk_27854ABA0;
  objc_copyWeak(&v18, &location);
  v16[4] = self;
  v14 = dCopy;
  v17 = v14;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v13, v15, v14, self, 0, v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_prepareTargetZonePCS
{
  selfCopy = self;
  v96 = *MEMORY[0x277D85DE8];
  cf = 0;
  v4 = objc_msgSend_zonePCSDataByZoneID(self, a2, v2);
  v7 = objc_msgSend_targetZone(selfCopy, v5, v6);
  v10 = objc_msgSend_zoneID(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v4, v11, v10);

  objc_msgSend_pcs(v12, v13, v14);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v17 = objc_msgSend_sourceZoneIDs(selfCopy, v15, v16);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v87, v95, 16);
  if (!v19)
  {

    v65 = 0;
    goto LABEL_31;
  }

  v22 = v19;
  v23 = *v88;
  v80 = selfCopy;
LABEL_3:
  v24 = 0;
LABEL_4:
  if (*v88 != v23)
  {
    objc_enumerationMutation(v17);
  }

  v25 = *(*(&v87 + 1) + 8 * v24);
  v26 = objc_msgSend_zonePCSDataByZoneID(selfCopy, v20, v21);
  v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v25);

  v82 = objc_msgSend_pcs(v28, v29, v30);
  v31 = PCSFPCopyKeyIDs();
  if (objc_msgSend_count(v31, v32, v33))
  {
    v78 = v25;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v31;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v83, v94, 16);
    if (!v36)
    {
      goto LABEL_22;
    }

    v37 = v36;
    v81 = *v84;
    v76 = v17;
    v77 = v12;
    v74 = v23;
    v75 = v28;
    v72 = v24;
    v73 = v22;
LABEL_9:
    v38 = 0;
    while (1)
    {
      if (*v84 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v83 + 1) + 8 * v38);
      v41 = PCSFPCopyPrivateKey();
      if (!v41)
      {
        break;
      }

      if ((PCSFPAddPrivateKey() & 1) == 0)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v42, *MEMORY[0x277CBC120], 5005, @"Failed to add identity to the target zone PCS from zone %@", v78);
        goto LABEL_28;
      }

      v44 = objc_msgSend_container(selfCopy, v42, v43);
      v47 = objc_msgSend_deviceContext(v44, v45, v46);
      v50 = objc_msgSend_testDeviceReference(v47, v48, v49);
      if (v50)
      {
        v53 = v50;
        v54 = objc_msgSend_targetZone(selfCopy, v51, v52);
        v57 = objc_msgSend_zoneID(v54, v55, v56);
        v60 = objc_msgSend_zoneName(v57, v58, v59);
        isEqualToString = objc_msgSend_isEqualToString_(v60, v61, @"PCS_PREPARE_FAILURE");

        if (isEqualToString)
        {
          v65 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBC120], 5005, @"Failed to add identity to the target zone PCS from zone %@", v78);
          selfCopy = v80;
          goto LABEL_29;
        }
      }

      else
      {
      }

      CFRelease(v41);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v38;
      selfCopy = v80;
      if (v37 == v38)
      {
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v83, v94, 16);
        v17 = v76;
        v12 = v77;
        v23 = v74;
        v28 = v75;
        v24 = v72;
        v22 = v73;
        if (v37)
        {
          goto LABEL_9;
        }

LABEL_22:

        if (++v24 == v22)
        {
          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v87, v95, 16);
          if (!v22)
          {
            v65 = 0;
            goto LABEL_42;
          }

          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v40, *MEMORY[0x277CBC120], 5005, @"Couldn't get PCS identity with key ID %@ from zone %@", v39, v78);
    v65 = LABEL_28:;
LABEL_29:

    v12 = v77;
    if (v41)
    {
      CFRelease(v41);
    }

    goto LABEL_31;
  }

  v65 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], 5005, @"Couldn't get key IDs from zone PCS %@ for zone %@", v82, v25);

LABEL_42:
LABEL_31:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v65)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v66 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v93 = v65;
      _os_log_impl(&dword_22506F000, v66, OS_LOG_TYPE_INFO, "Warn: Error preparing target zone PCS: %@", buf, 0xCu);
    }

    v69 = objc_msgSend_error(selfCopy, v67, v68);

    if (!v69)
    {
      objc_msgSend_setError_(selfCopy, v70, v65);
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveTargetZone
{
  v77[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zonePCSDataByZoneID(self, a2, v2);
  v7 = objc_msgSend_targetZone(self, v5, v6);
  v10 = objc_msgSend_zoneID(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v4, v11, v10);

  v15 = objc_msgSend_container(self, v13, v14);
  v18 = objc_msgSend_pcsManager(v15, v16, v17);
  v21 = objc_msgSend_pcs(v12, v19, v20);
  v76 = 0;
  v23 = objc_msgSend_dataFromZonePCS_error_(v18, v22, v21, &v76);
  v24 = v76;

  if (v24)
  {
    v27 = objc_msgSend_error(self, v25, v26);
    v28 = v27 == 0;

    if (v28)
    {
      objc_msgSend_setError_(self, v29, v24);
    }
  }

  else
  {
    v30 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v25, v23);
    v33 = objc_msgSend_targetZone(self, v31, v32);
    objc_msgSend_setProtectionData_(v33, v34, v23);

    v37 = objc_msgSend_targetZone(self, v35, v36);
    objc_msgSend_setProtectionEtag_(v37, v38, v30);

    v41 = objc_msgSend_etag(v12, v39, v40);
    v44 = objc_msgSend_targetZone(self, v42, v43);
    objc_msgSend_setPreviousProtectionEtag_(v44, v45, v41);

    v48 = objc_msgSend_stateTransitionGroup(self, v46, v47);
    dispatch_group_enter(v48);

    v49 = [CKDModifyRecordZonesURLRequest alloc];
    v52 = objc_msgSend_targetZone(self, v50, v51);
    v77[0] = v52;
    v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v53, v77, 1);
    v56 = objc_msgSend_initWithOperation_recordZonesToSave_recordZoneIDsToDelete_(v49, v55, self, v54, 0);

    objc_initWeak(&location, self);
    objc_initWeak(&from, v56);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_22523C8C4;
    v72[3] = &unk_27854ABC8;
    objc_copyWeak(&v73, &location);
    objc_msgSend_setRecordZoneModifiedBlock_(v56, v57, v72);
    v66 = MEMORY[0x277D85DD0];
    v67 = 3221225472;
    v68 = sub_22523C93C;
    v69 = &unk_278548748;
    objc_copyWeak(&v70, &location);
    objc_copyWeak(&v71, &from);
    objc_msgSend_setCompletionBlock_(v56, v58, &v66);
    objc_msgSend_setRequest_(self, v59, v56, v66, v67, v68, v69);
    v62 = objc_msgSend_container(self, v60, v61);
    objc_msgSend_performRequest_(v62, v63, v56);

    objc_destroyWeak(&v71);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&v73);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v64 = *MEMORY[0x277D85DE8];
  return v24 == 0;
}

- (void)_synchronizeSigningIdentitiesIfNeeded
{
  v30 = *MEMORY[0x277D85DE8];
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
      v29 = v11;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Will attempt user key sync to update signing identities for operation %{public}@.", buf, 0xCu);
    }

    v15 = objc_msgSend_stateTransitionGroup(self, v13, v14);
    dispatch_group_enter(v15);

    objc_initWeak(buf, self);
    v18 = objc_msgSend_container(self, v16, v17);
    v21 = objc_msgSend_pcsManager(v18, v19, v20);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22523CDC4;
    v25[3] = &unk_27854ABF0;
    objc_copyWeak(&v27, buf);
    v22 = v11;
    v26 = v22;
    objc_msgSend_synchronizeUserKeyRegistryForSigningIdentitiesForRequestorOperationID_shouldThrottle_completionHandler_(v21, v23, v22, 1, v25);

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_checkCurrentPCSIdentity
{
  if (objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(self, a2, v2))
  {

    MEMORY[0x2821F9670](self, sel__synchronizeUserKeyRegistryFailingOnError_, 1);
  }
}

- (void)_synchronizeUserKeyRegistryIfNeeded
{
  v4 = objc_msgSend_zoneWaitingOnKeyRegistrySync(self, a2, v2);

  if (v4)
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

  v7 = objc_msgSend_error(self, v5, v6);

  if (!v7)
  {
    v20 = objc_msgSend_keySyncAnalytics(self, v8, v9);
    objc_msgSend_setOverallResult_(v20, v25, @"success");
    goto LABEL_7;
  }

  v10 = objc_msgSend_keySyncAnalytics(self, v8, v9);
  objc_msgSend_setOverallResult_(v10, v11, @"failure");

  v14 = objc_msgSend_keySyncAnalytics(self, v12, v13);
  v17 = objc_msgSend_error(v14, v15, v16);

  if (!v17)
  {
    v20 = objc_msgSend_error(self, v18, v19);
    v23 = objc_msgSend_keySyncAnalytics(self, v21, v22);
    objc_msgSend_setError_(v23, v24, v20);

LABEL_7:
  }

  v27 = objc_msgSend_keySyncAnalytics(self, v18, v19);
  objc_msgSend_sendCoreAnalyticsEventForKeySync_(CKDPCSKeySyncManager, v26, v27);
}

- (void)_handleZoneSavedWithID:(id)d responseCode:(id)code
{
  v138 = *MEMORY[0x277D85DE8];
  dCopy = d;
  codeCopy = code;
  v11 = objc_msgSend_targetZone(self, v9, v10);
  v14 = objc_msgSend_zoneID(v11, v12, v13);
  isEqual = objc_msgSend_isEqual_(dCopy, v15, v14);

  if ((isEqual & 1) == 0)
  {
    v131 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v131, v132, a2, self, @"CKDAggregateZonePCSOperation.m", 452, @"Only the target zone must be saved");
  }

  objc_msgSend_setIsHandlingRetryableError_(self, v17, 0);
  v21 = sub_2253962A4(codeCopy);
  if (*MEMORY[0x277CBC810] == 1)
  {
    if (objc_msgSend_checkAndClearUnitTestOverrides_(self, v19, @"SwizzleZoneSaveResponseToErrorZonePCSIdentityUnknown"))
    {
      objc_msgSend_setCode_(codeCopy, v22, 3);
      v21 = 2053;
    }

    if (objc_msgSend_checkAndClearUnitTestOverrides_(self, v22, @"CKUnderlyingErrorPCSOplockFailed"))
    {
      objc_msgSend_setCode_(codeCopy, v19, 3);
      v21 = 2037;
    }
  }

  v23 = objc_msgSend_code(codeCopy, v19, v20);
  if (dCopy && v23 == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v29 = v26;
      v32 = objc_msgSend_targetZone(self, v30, v31);
      *buf = 138412290;
      *v137 = v32;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Target zone %@ was successfully saved to the server", buf, 0xCu);
    }

    v33 = objc_msgSend_targetZone(self, v27, v28);
    v36 = objc_msgSend_protectionData(v33, v34, v35);

    if (v36)
    {
      v39 = objc_msgSend_stateTransitionGroup(self, v37, v38);
      dispatch_group_enter(v39);

      objc_initWeak(buf, self);
      v42 = objc_msgSend_container(self, v40, v41);
      v45 = objc_msgSend_pcsManager(v42, v43, v44);
      v48 = objc_msgSend_targetZone(self, v46, v47);
      v51 = objc_msgSend_protectionData(v48, v49, v50);
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = sub_22523E188;
      v133[3] = &unk_27854AC40;
      objc_copyWeak(&v135, buf);
      v134 = dCopy;
      objc_msgSend_createSharePCSFromData_ofType_withService_completionHandler_(v45, v52, v51, 3, 0, v133);

      objc_destroyWeak(&v135);
      objc_destroyWeak(buf);
    }

    goto LABEL_29;
  }

  switch(v21)
  {
    case 2036:
      v93 = objc_msgSend_container(self, v24, v25);
      v96 = objc_msgSend_recordCache(v93, v94, v95);
      objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v96, v97, v93, dCopy);

      objc_msgSend_setPCSData_forFetchedZoneID_(self, v98, 0, dCopy);
      v101 = objc_msgSend_pcsCache(v93, v99, v100);
      objc_msgSend_removePCSDataForItemsInZoneWithID_(v101, v102, dCopy);

      break;
    case 2053:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v55 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v57 = v55;
        v60 = objc_msgSend_operationID(self, v58, v59);
        *buf = 138412546;
        *v137 = dCopy;
        *&v137[8] = 2114;
        *&v137[10] = v60;
        _os_log_impl(&dword_22506F000, v57, OS_LOG_TYPE_INFO, "Zone PCS for %@ failed server validation. Will attempt user key sync for operation %{public}@ before trying again.", buf, 0x16u);
      }

      objc_msgSend_setZoneWaitingOnKeyRegistrySync_(self, v56, dCopy);
      goto LABEL_28;
    case 2037:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v53 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v137 = dCopy;
        _os_log_impl(&dword_22506F000, v53, OS_LOG_TYPE_INFO, "Received a PCS oplock failure for save of zone %@. Re-fetching the zone PCS and trying again", buf, 0xCu);
      }

LABEL_28:
      objc_msgSend_setIsHandlingRetryableError_(self, v54, 1);
      v61 = MEMORY[0x277CBC560];
      v64 = objc_msgSend_request(self, v62, v63);
      v65 = sub_225395734(v64, codeCopy);
      v68 = objc_msgSend_targetZone(self, v66, v67);
      v71 = objc_msgSend_error(codeCopy, v69, v70);
      v74 = objc_msgSend_errorDescription(v71, v72, v73);
      v76 = objc_msgSend_errorWithDomain_code_userInfo_format_(v61, v75, *MEMORY[0x277CBC120], v21, v65, @"Error saving record zone %@ to server: %@", v68, v74);
      objc_msgSend_setCurrentError_(self, v77, v76);

      v80 = objc_msgSend_targetZone(self, v78, v79);
      objc_msgSend_setProtectionData_(v80, v81, 0);

      v84 = objc_msgSend_targetZone(self, v82, v83);
      objc_msgSend_setProtectionEtag_(v84, v85, 0);

      v88 = objc_msgSend_targetZone(self, v86, v87);
      objc_msgSend_setPreviousProtectionEtag_(v88, v89, 0);

      objc_msgSend_setPCSData_forFetchedZoneID_(self, v90, 0, dCopy);
LABEL_29:
      v91 = 0;
      goto LABEL_30;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v103 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v106 = v103;
    v109 = objc_msgSend_code(codeCopy, v107, v108);
    v112 = objc_msgSend_targetZone(self, v110, v111);
    *buf = 67109378;
    *v137 = v109;
    *&v137[4] = 2112;
    *&v137[6] = v112;
    _os_log_impl(&dword_22506F000, v106, OS_LOG_TYPE_INFO, "Error %d when saving record zone %@ to the server", buf, 0x12u);
  }

  v113 = MEMORY[0x277CBC560];
  v114 = objc_msgSend_request(self, v104, v105);
  v115 = sub_225395734(v114, codeCopy);
  v118 = objc_msgSend_targetZone(self, v116, v117);
  v121 = objc_msgSend_error(codeCopy, v119, v120);
  v124 = objc_msgSend_errorDescription(v121, v122, v123);
  v91 = objc_msgSend_errorWithDomain_code_userInfo_format_(v113, v125, *MEMORY[0x277CBC120], v21, v115, @"Error saving record zone %@ to server: %@", v118, v124);

  if (v91)
  {
    v128 = objc_msgSend_error(self, v126, v127);
    v129 = v128 == 0;

    if (v129)
    {
      objc_msgSend_setError_(self, v130, v91);
    }
  }

LABEL_30:

  v92 = *MEMORY[0x277D85DE8];
}

- (void)_setPermanentFailure
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_keySyncAnalytics(self, a2, v2);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_keySyncAnalytics(self, v5, v6);
    v11 = objc_msgSend_error(v8, v9, v10);
    if (v11)
    {

LABEL_10:
      goto LABEL_11;
    }

    v14 = objc_msgSend_numZoneSaveAttempts(self, v12, v13);

    if (v14 >= 2)
    {
      v7 = objc_msgSend_container(self, v5, v6);
      v8 = objc_msgSend_processName(v7, v15, v16);
      v19 = objc_msgSend_containerID(v7, v17, v18);
      v22 = objc_msgSend_containerIdentifier(v19, v20, v21);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        v27 = v23;
        v30 = objc_msgSend_operationID(self, v28, v29);
        v31 = 138543874;
        v32 = v30;
        v33 = 2114;
        v34 = v8;
        v35 = 2114;
        v36 = v22;
        _os_log_fault_impl(&dword_22506F000, v27, OS_LOG_TYPE_FAULT, "Failed to save target zone for operation %{public}@ despite user key sync. procName=%{public}@, containerID=%{public}@", &v31, 0x20u);
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v24 = objc_msgSend_currentError(self, v5, v6);
  objc_msgSend_setError_(self, v25, v24);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_sourceZoneIDs(self, v6, v7);
  v10 = objc_msgSend_setWithArray_(v5, v9, v8);

  if (objc_msgSend_count(v10, v11, v12))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22523E638;
    v15[3] = &unk_2785487F8;
    v16 = v10;
    objc_msgSend_updateCloudKitMetrics_(self, v13, v15);
  }

  v14.receiver = self;
  v14.super_class = CKDAggregateZonePCSOperation;
  [(CKDOperation *)&v14 _finishOnCallbackQueueWithError:errorCopy];
}

@end