@interface CKDPCSKeySyncManager
+ (id)sharedManager;
+ (void)sendCoreAnalyticsEventForKeySync:(id)a3;
- (CKDPCSKeySyncManager)init;
- (id)_on_queue_getKeySyncTrackerByServicenameForAccountDSID:(id)a3;
- (id)lastUserKeySyncCompletionDateForAccountDSID:(id)a3 service:(id)a4;
- (void)_on_queue_performKeySyncWithSyncTracker:(id)a3 testableSyncConfig:(unint64_t)a4 shouldThrottle:(BOOL)a5 testOverrideProvider:(id)a6 requestorOperationID:(id)a7 completionHandler:(id)a8;
- (void)getKeySyncEligibilityForService:(id)a3 isManatee:(BOOL)a4 accountDSID:(id)a5 lastModifiedDate:(id)a6 testOverrideProvider:(id)a7 completionHandler:(id)a8;
- (void)setRacedWithGuitarfishRepairCallbackOnAllOutstandingHandlersWithCompletion:(id)a3;
- (void)syncUserKeysForSessionAcquisitionWithService:(id)a3 bundleID:(id)a4 accountDSID:(id)a5 accountType:(int64_t)a6 testOverrideProvider:(id)a7 completionHandler:(id)a8;
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

- (id)_on_queue_getKeySyncTrackerByServicenameForAccountDSID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);

  if (!v9)
  {
    v12 = objc_opt_new();
    v15 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v12, v4);
  }

  v17 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v10, v11);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v4);

  return v19;
}

- (void)_on_queue_performKeySyncWithSyncTracker:(id)a3 testableSyncConfig:(unint64_t)a4 shouldThrottle:(BOOL)a5 testOverrideProvider:(id)a6 requestorOperationID:(id)a7 completionHandler:(id)a8
{
  v101 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v86 = a8;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v20 = objc_msgSend_serviceName(v13, v18, v19);
    v23 = objc_msgSend_accountDSID(v13, v21, v22);
    v26 = objc_msgSend_requestorOperationID(v13, v24, v25);
    *buf = 138543874;
    v96 = v20;
    v97 = 2112;
    v98 = v23;
    v99 = 2114;
    v100 = v26;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Starting user key sync for service: %{public}@, account dsid %@, operation %{public}@", buf, 0x20u);
  }

  v27 = dispatch_group_create();
  objc_msgSend_setSyncGroup_(v13, v28, v27);

  v31 = objc_msgSend_syncGroup(v13, v29, v30);
  dispatch_group_enter(v31);

  v34 = objc_msgSend_keySyncQueue(self, v32, v33);
  v85 = v15;
  objc_msgSend_waitOnSyncWithQueue_waiterOperationID_handler_(v13, v35, v34, v15, v86);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22528FF70;
  aBlock[3] = &unk_27854BC28;
  aBlock[4] = self;
  v36 = v13;
  v92 = v36;
  v84 = _Block_copy(aBlock);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = sub_2252905CC;
  v87[3] = &unk_27854BC50;
  v37 = v36;
  v88 = v37;
  v89 = self;
  v38 = v14;
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
  if (a4 > 1)
  {
    if (a4 == 2)
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
      if (a4 != 3)
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

  if (a4)
  {
    v74 = v84;
    if (a4 == 1)
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

- (void)getKeySyncEligibilityForService:(id)a3 isManatee:(BOOL)a4 accountDSID:(id)a5 lastModifiedDate:(id)a6 testOverrideProvider:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v19 = a8;
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(v16, v17, @"ResetKeySyncState"))
  {
    v20 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v17, v18);
    objc_sync_enter(v20);
    v23 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v21, v22);
    objc_msgSend_removeAllObjects(v23, v24, v25);

    objc_sync_exit(v20);
  }

  if (v14)
  {
    v26 = objc_msgSend_keySyncQueue(self, v17, v18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225290BB4;
    block[3] = &unk_278547248;
    block[4] = self;
    v29 = v14;
    v30 = v13;
    v31 = v15;
    v32 = v19;
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

    if (v19)
    {
      (*(v19 + 2))(v19, 0);
    }
  }
}

- (void)syncUserKeysForSessionAcquisitionWithService:(id)a3 bundleID:(id)a4 accountDSID:(id)a5 accountType:(int64_t)a6 testOverrideProvider:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  IsManatee = PCSServiceItemTypeIsManatee();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225290F1C;
  v24[3] = &unk_27854BC78;
  v27 = IsManatee;
  v25 = v14;
  v26 = v15;
  v20 = v15;
  v21 = v14;
  v23 = 0;
  objc_msgSend_syncUserKeysForService_context_bundleID_serviceIsManatee_accountDSID_accountType_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(self, v22, v21, @"CloudCoreAcquisition", v18, IsManatee, v17, a6, v23, v16, 0, v24);
}

- (id)lastUserKeySyncCompletionDateForAccountDSID:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_keySyncTrackerByServiceNameByAccount(self, v8, v9);
  objc_sync_enter(v10);
  v12 = objc_msgSend__on_queue_getKeySyncTrackerByServicenameForAccountDSID_(self, v11, v6);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v7);
  v17 = objc_msgSend_completionDate(v14, v15, v16);

  objc_sync_exit(v10);

  return v17;
}

+ (void)sendCoreAnalyticsEventForKeySync:(id)a3
{
  v104[9] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_error(v3, v4, v5);
  if (v6)
  {
    v9 = v6;
    v10 = objc_msgSend_error(v3, v7, v8);
    isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v10, v11, v12);

    if (isCloudCoreSessionNoLongerValidError)
    {
      goto LABEL_24;
    }
  }

  v14 = objc_msgSend_serviceName(v3, v7, v8);
  if (!v14)
  {
    goto LABEL_24;
  }

  v17 = v14;
  v18 = objc_msgSend_shouldThrottle(v3, v15, v16);
  if (!v18)
  {
LABEL_23:

    goto LABEL_24;
  }

  v21 = v18;
  v22 = objc_msgSend_isManatee(v3, v19, v20);
  if (!v22)
  {
LABEL_22:

    goto LABEL_23;
  }

  v25 = v22;
  v26 = objc_msgSend_keySyncResult(v3, v23, v24);
  if (!v26)
  {
LABEL_21:

    goto LABEL_22;
  }

  v29 = v26;
  v30 = objc_msgSend_overallResult(v3, v27, v28);
  if (!v30)
  {
LABEL_20:

    goto LABEL_21;
  }

  v33 = v30;
  v34 = objc_msgSend_keySyncDurationSec(v3, v31, v32);
  if (!v34)
  {
LABEL_19:

    goto LABEL_20;
  }

  v37 = v34;
  v38 = objc_msgSend_throttledDurationSec(v3, v35, v36);
  if (!v38)
  {
LABEL_18:

    goto LABEL_19;
  }

  v41 = v38;
  v42 = objc_msgSend_context(v3, v39, v40);
  if (!v42)
  {

    goto LABEL_18;
  }

  v45 = v42;
  v46 = objc_msgSend_bundleID(v3, v43, v44);

  if (v46)
  {
    v103[0] = 0x283872580;
    v102 = objc_msgSend_serviceName(v3, v47, v48);
    v104[0] = v102;
    v103[1] = 0x28387E820;
    v101 = objc_msgSend_shouldThrottle(v3, v49, v50);
    v104[1] = v101;
    v103[2] = 0x28387E840;
    v53 = objc_msgSend_isManatee(v3, v51, v52);
    v104[2] = v53;
    v103[3] = 0x28387E860;
    v56 = objc_msgSend_keySyncResult(v3, v54, v55);
    v104[3] = v56;
    v103[4] = 0x28387E880;
    v59 = objc_msgSend_overallResult(v3, v57, v58);
    v104[4] = v59;
    v103[5] = 0x28387E8A0;
    v62 = objc_msgSend_keySyncDurationSec(v3, v60, v61);
    v104[5] = v62;
    v103[6] = 0x28387E8C0;
    v65 = objc_msgSend_throttledDurationSec(v3, v63, v64);
    v104[6] = v65;
    v103[7] = 0x28387E8E0;
    v68 = objc_msgSend_context(v3, v66, v67);
    v104[7] = v68;
    v103[8] = 0x28386EE20;
    v71 = objc_msgSend_bundleID(v3, v69, v70);
    v104[8] = v71;
    v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, v104, v103, 9);
    v17 = objc_msgSend_mutableCopy(v73, v74, v75);

    v78 = objc_msgSend_error(v3, v76, v77);

    if (v78)
    {
      v81 = MEMORY[0x277CCABB0];
      v82 = objc_msgSend_error(v3, v79, v80);
      v85 = objc_msgSend_code(v82, v83, v84);
      v87 = objc_msgSend_numberWithInteger_(v81, v86, v85);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v88, v87, 0x28387E4A0);

      v91 = objc_msgSend_error(v3, v89, v90);
      v92 = CKErrorChainStringFromError();
      objc_msgSend_setObject_forKeyedSubscript_(v17, v93, v92, 0x28387E4C0);
    }

    v94 = objc_msgSend_KRSReturnedExistingIdentity(v3, v79, v80);

    if (v94)
    {
      v97 = objc_msgSend_KRSReturnedExistingIdentity(v3, v95, v96);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v98, v97, 0x28387E960);
    }

    v99 = objc_msgSend_copy(v17, v95, v96);
    AnalyticsSendEvent();

    goto LABEL_23;
  }

LABEL_24:

  v100 = *MEMORY[0x277D85DE8];
}

- (void)setRacedWithGuitarfishRepairCallbackOnAllOutstandingHandlersWithCompletion:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_keySyncQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225292434;
  v9[3] = &unk_278546550;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

@end