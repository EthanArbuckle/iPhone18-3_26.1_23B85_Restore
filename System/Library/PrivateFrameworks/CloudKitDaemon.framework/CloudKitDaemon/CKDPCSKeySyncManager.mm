@interface CKDPCSKeySyncManager
+ (id)sharedManager;
+ (void)sendCoreAnalyticsEventForKeySync:(id)sync;
- (CKDPCSKeySyncManager)init;
- (id)_on_queue_getKeySyncTrackerByServicenameForAccountDSID:(id)d;
- (id)lastUserKeySyncCompletionDateForAccountDSID:(id)d service:(id)service;
- (void)_on_queue_performKeySyncWithSyncTracker:(id)tracker testableSyncConfig:(unint64_t)config shouldThrottle:(BOOL)throttle testOverrideProvider:(id)provider requestorOperationID:(id)d completionHandler:(id)handler;
- (void)getKeySyncEligibilityForService:(id)service isManatee:(BOOL)manatee accountDSID:(id)d lastModifiedDate:(id)date testOverrideProvider:(id)provider completionHandler:(id)handler;
- (void)setRacedWithGuitarfishRepairCallbackOnAllOutstandingHandlersWithCompletion:(id)completion;
- (void)syncUserKeysForSessionAcquisitionWithService:(id)service bundleID:(id)d accountDSID:(id)iD accountType:(int64_t)type testOverrideProvider:(id)provider completionHandler:(id)handler;
@end

@implementation CKDPCSKeySyncManager

+ (id)sharedManager
{
  if (qword_280D583B0 != -1)
  {
    dispatch_once(&qword_280D583B0, &unk_28385DA20);
  }

  v3 = qword_280D583A8;

  return v3;
}

- (CKDPCSKeySyncManager)init
{
  v9.receiver = self;
  v9.super_class = CKDPCSKeySyncManager;
  v2 = [(CKDPCSKeySyncManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keySyncTrackerByServiceNameByAccount = v2->_keySyncTrackerByServiceNameByAccount;
    v2->_keySyncTrackerByServiceNameByAccount = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.cloudkit.keySyncQueue", v5);
    keySyncQueue = v2->_keySyncQueue;
    v2->_keySyncQueue = v6;
  }

  return v2;
}

- (id)_on_queue_getKeySyncTrackerByServicenameForAccountDSID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, dCopy);

  if (!v9)
  {
    v12 = objc_opt_new();
    v15 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v12, dCopy);
  }

  v17 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v10, v11);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, dCopy);

  return v19;
}

- (void)_on_queue_performKeySyncWithSyncTracker:(id)tracker testableSyncConfig:(unint64_t)config shouldThrottle:(BOOL)throttle testOverrideProvider:(id)provider requestorOperationID:(id)d completionHandler:(id)handler
{
  v101 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  providerCopy = provider;
  dCopy = d;
  handlerCopy = handler;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v20 = objc_msgSend_serviceName(trackerCopy, v18, v19);
    v23 = objc_msgSend_accountDSID(trackerCopy, v21, v22);
    v26 = objc_msgSend_requestorOperationID(trackerCopy, v24, v25);
    *buf = 138543874;
    v96 = v20;
    v97 = 2112;
    v98 = v23;
    v99 = 2114;
    v100 = v26;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Starting user key sync for service: %{public}@, account dsid %@, operation %{public}@", buf, 0x20u);
  }

  v27 = dispatch_group_create();
  objc_msgSend_setSyncGroup_(trackerCopy, v28, v27);

  v31 = objc_msgSend_syncGroup(trackerCopy, v29, v30);
  dispatch_group_enter(v31);

  v34 = objc_msgSend_keySyncQueue(self, v32, v33);
  v85 = dCopy;
  objc_msgSend_waitOnSyncWithQueue_waiterOperationID_handler_(trackerCopy, v35, v34, dCopy, handlerCopy);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22528FF70;
  aBlock[3] = &unk_27854BC28;
  aBlock[4] = self;
  v36 = trackerCopy;
  v92 = v36;
  v84 = _Block_copy(aBlock);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = sub_2252905CC;
  v87[3] = &unk_27854BC50;
  v37 = v36;
  v88 = v37;
  selfCopy = self;
  v38 = providerCopy;
  v90 = v38;
  v39 = _Block_copy(v87);
  v93[0] = *MEMORY[0x277D430D8];
  v42 = objc_msgSend_serviceName(v37, v40, v41);
  v94[0] = v42;
  v93[1] = *MEMORY[0x277D430A8];
  v45 = objc_msgSend_accountDSID(v37, v43, v44);
  v94[1] = v45;
  v93[2] = *MEMORY[0x277D430C0];
  v46 = _Block_copy(v39);
  v94[2] = v46;
  v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v94, v93, 3);

  v51 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v49, v50);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v52 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v54 = v52;
    v57 = objc_msgSend_ckShortDescription(v51, v55, v56);
    *buf = 138412290;
    v96 = v57;
    _os_log_impl(&dword_22506F000, v54, OS_LOG_TYPE_INFO, "Starting user key sync on current persona %@", buf, 0xCu);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v58 = objc_msgSend__pcsTestOverrideForKey_(v38, v53, @"ExpectedPersonaIdentifier");
    if (v58)
    {
      v61 = v58;
      v62 = objc_msgSend_CKNilIfEmpty(v58, v59, v60);

      if (v62)
      {
        v65 = objc_msgSend_identifier(v51, v63, v64);
        isEqualToString = objc_msgSend_isEqualToString_(v62, v66, v65);

        if ((isEqualToString & 1) == 0)
        {
          v70 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v68, v69);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v70, v71, a2, self, @"CKDPCSKeySyncManager.m", 258, @"Expected persona identifier to match");
LABEL_40:
        }

LABEL_16:

        goto LABEL_17;
      }

      objc_msgSend_isDataSeparated(v51, v63, v64);
      if (CKBoolFromCKTernary())
      {
        v70 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v72, v73);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v70, v82, a2, self, @"CKDPCSKeySyncManager.m", 260, @"Expected non-data separated persona");
        goto LABEL_40;
      }
    }

    v62 = 0;
    goto LABEL_16;
  }

LABEL_17:
  if (config > 1)
  {
    if (config == 2)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v74 = v84;
      v76 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v76, OS_LOG_TYPE_DEBUG, "Faking failed user key sync", buf, 2u);
      }

      if (objc_msgSend_isManatee(v37, v77, v78))
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v79, *MEMORY[0x277CBC120], 5009, @"Underlying user key sync error");
      }

      else
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v79, *MEMORY[0x277CBC120], 5000, @"Underlying user key sync error");
      }
    }

    else
    {
      v74 = v84;
      if (config != 3)
      {
        goto LABEL_38;
      }

      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v53, *MEMORY[0x277CBC120], 228, @"Fake DBR account key sync failure");
    }
    v80 = ;
    (v74)[2](v74, 0, v80);

LABEL_37:
    (*(v39 + 2))(v39, 0);
    goto LABEL_38;
  }

  if (config)
  {
    v74 = v84;
    if (config == 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v75 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "Faking successful user key sync", buf, 2u);
      }

      (*(v84 + 2))(v84, 1, 0);
      goto LABEL_37;
    }
  }

  else
  {
    v74 = v84;
    PCSSyncKeyRegistryWithOptions();
  }

LABEL_38:

  v81 = *MEMORY[0x277D85DE8];
}

- (void)getKeySyncEligibilityForService:(id)service isManatee:(BOOL)manatee accountDSID:(id)d lastModifiedDate:(id)date testOverrideProvider:(id)provider completionHandler:(id)handler
{
  serviceCopy = service;
  dCopy = d;
  dateCopy = date;
  providerCopy = provider;
  handlerCopy = handler;
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(providerCopy, v17, @"ResetKeySyncState"))
  {
    v20 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v17, v18);
    objc_sync_enter(v20);
    v23 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v21, v22);
    objc_msgSend_removeAllObjects(v23, v24, v25);

    objc_sync_exit(v20);
  }

  if (dCopy)
  {
    v26 = objc_msgSend_keySyncQueue(self, v17, v18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225290BB4;
    block[3] = &unk_278547248;
    block[4] = self;
    v29 = dCopy;
    v30 = serviceCopy;
    v31 = dateCopy;
    v32 = handlerCopy;
    dispatch_async(v26, block);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "No account DSID, so we can't start user key sync", buf, 2u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)syncUserKeysForSessionAcquisitionWithService:(id)service bundleID:(id)d accountDSID:(id)iD accountType:(int64_t)type testOverrideProvider:(id)provider completionHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  providerCopy = provider;
  iDCopy = iD;
  dCopy = d;
  IsManatee = PCSServiceItemTypeIsManatee();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225290F1C;
  v24[3] = &unk_27854BC78;
  v27 = IsManatee;
  v25 = serviceCopy;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = serviceCopy;
  v23 = 0;
  objc_msgSend_syncUserKeysForService_context_bundleID_serviceIsManatee_accountDSID_accountType_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(self, v22, v21, @"CloudCoreAcquisition", dCopy, IsManatee, iDCopy, type, v23, providerCopy, 0, v24);
}

- (id)lastUserKeySyncCompletionDateForAccountDSID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v10 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v8, v9);
  objc_sync_enter(v10);
  v12 = objc_msgSend__on_queue_getKeySyncTrackerByServicenameForAccountDSID_(self, v11, dCopy);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, serviceCopy);
  v17 = objc_msgSend_completionDate(v14, v15, v16);

  objc_sync_exit(v10);

  return v17;
}

+ (void)sendCoreAnalyticsEventForKeySync:(id)sync
{
  v104[9] = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  v6 = objc_msgSend_error(syncCopy, v4, v5);
  if (v6)
  {
    v9 = v6;
    v10 = objc_msgSend_error(syncCopy, v7, v8);
    isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v10, v11, v12);

    if (isCloudCoreSessionNoLongerValidError)
    {
      goto LABEL_24;
    }
  }

  v14 = objc_msgSend_serviceName(syncCopy, v7, v8);
  if (!v14)
  {
    goto LABEL_24;
  }

  v17 = v14;
  v18 = objc_msgSend_shouldThrottle(syncCopy, v15, v16);
  if (!v18)
  {
LABEL_23:

    goto LABEL_24;
  }

  v21 = v18;
  v22 = objc_msgSend_isManatee(syncCopy, v19, v20);
  if (!v22)
  {
LABEL_22:

    goto LABEL_23;
  }

  v25 = v22;
  v26 = objc_msgSend_keySyncResult(syncCopy, v23, v24);
  if (!v26)
  {
LABEL_21:

    goto LABEL_22;
  }

  v29 = v26;
  v30 = objc_msgSend_overallResult(syncCopy, v27, v28);
  if (!v30)
  {
LABEL_20:

    goto LABEL_21;
  }

  v33 = v30;
  v34 = objc_msgSend_keySyncDurationSec(syncCopy, v31, v32);
  if (!v34)
  {
LABEL_19:

    goto LABEL_20;
  }

  v37 = v34;
  v38 = objc_msgSend_throttledDurationSec(syncCopy, v35, v36);
  if (!v38)
  {
LABEL_18:

    goto LABEL_19;
  }

  v41 = v38;
  v42 = objc_msgSend_context(syncCopy, v39, v40);
  if (!v42)
  {

    goto LABEL_18;
  }

  v45 = v42;
  v46 = objc_msgSend_bundleID(syncCopy, v43, v44);

  if (v46)
  {
    v103[0] = 0x283872580;
    v102 = objc_msgSend_serviceName(syncCopy, v47, v48);
    v104[0] = v102;
    v103[1] = 0x28387E820;
    v101 = objc_msgSend_shouldThrottle(syncCopy, v49, v50);
    v104[1] = v101;
    v103[2] = 0x28387E840;
    v53 = objc_msgSend_isManatee(syncCopy, v51, v52);
    v104[2] = v53;
    v103[3] = 0x28387E860;
    v56 = objc_msgSend_keySyncResult(syncCopy, v54, v55);
    v104[3] = v56;
    v103[4] = 0x28387E880;
    v59 = objc_msgSend_overallResult(syncCopy, v57, v58);
    v104[4] = v59;
    v103[5] = 0x28387E8A0;
    v62 = objc_msgSend_keySyncDurationSec(syncCopy, v60, v61);
    v104[5] = v62;
    v103[6] = 0x28387E8C0;
    v65 = objc_msgSend_throttledDurationSec(syncCopy, v63, v64);
    v104[6] = v65;
    v103[7] = 0x28387E8E0;
    v68 = objc_msgSend_context(syncCopy, v66, v67);
    v104[7] = v68;
    v103[8] = 0x28386EE20;
    v71 = objc_msgSend_bundleID(syncCopy, v69, v70);
    v104[8] = v71;
    v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, v104, v103, 9);
    v17 = objc_msgSend_mutableCopy(v73, v74, v75);

    v78 = objc_msgSend_error(syncCopy, v76, v77);

    if (v78)
    {
      v81 = MEMORY[0x277CCABB0];
      v82 = objc_msgSend_error(syncCopy, v79, v80);
      v85 = objc_msgSend_code(v82, v83, v84);
      v87 = objc_msgSend_numberWithInteger_(v81, v86, v85);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v88, v87, 0x28387E4A0);

      v91 = objc_msgSend_error(syncCopy, v89, v90);
      v92 = CKErrorChainStringFromError();
      objc_msgSend_setObject_forKeyedSubscript_(v17, v93, v92, 0x28387E4C0);
    }

    v94 = objc_msgSend_KRSReturnedExistingIdentity(syncCopy, v79, v80);

    if (v94)
    {
      v97 = objc_msgSend_KRSReturnedExistingIdentity(syncCopy, v95, v96);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v98, v97, 0x28387E960);
    }

    v99 = objc_msgSend_copy(v17, v95, v96);
    AnalyticsSendEvent();

    goto LABEL_23;
  }

LABEL_24:

  v100 = *MEMORY[0x277D85DE8];
}

- (void)setRacedWithGuitarfishRepairCallbackOnAllOutstandingHandlersWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_keySyncQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225292434;
  v9[3] = &unk_278546550;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

@end