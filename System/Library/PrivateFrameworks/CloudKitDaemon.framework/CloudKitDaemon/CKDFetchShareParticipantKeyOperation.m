@interface CKDFetchShareParticipantKeyOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDFetchShareParticipantKeyOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleFetchedShare:(id)a3 withID:(id)a4 error:(id)a5;
- (void)_participantKeyFromShare:(id)a3 completionHandler:(id)a4;
- (void)_performCallbackForShareID:(id)a3 withParticipantKey:(id)a4 error:(id)a5;
- (void)_sendErrorForFailedShares;
- (void)fetchSharesFromServer;
- (void)main;
- (void)updateShares;
@end

@implementation CKDFetchShareParticipantKeyOperation

- (CKDFetchShareParticipantKeyOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = CKDFetchShareParticipantKeyOperation;
  v9 = [(CKDDatabaseOperation *)&v26 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_shareIDs(v6, v7, v8);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
    shareIDs = v9->_shareIDs;
    v9->_shareIDs = v13;

    v17 = objc_msgSend_baseTokensByShareID(v6, v15, v16);
    baseTokensByShareID = v9->_baseTokensByShareID;
    v9->_baseTokensByShareID = v17;

    v21 = objc_msgSend_childRecordIDsByShareID(v6, v19, v20);
    childRecordIDsByShareID = v9->_childRecordIDsByShareID;
    v9->_childRecordIDsByShareID = v21;

    v23 = objc_opt_new();
    sharesNeedingUpdateByID = v9->_sharesNeedingUpdateByID;
    v9->_sharesNeedingUpdateByID = v23;
  }

  return v9;
}

- (id)relevantZoneIDs
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_shareIDs(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v3;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v16 = objc_msgSend_zoneID(*(*(&v19 + 1) + 8 * i), v10, v11, v19);
          if (v16)
          {
            objc_msgSend_addObject_(v6, v15, v16);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v19, v23, 16);
      }

      while (v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  switch(v4)
  {
    case 3:
      goto LABEL_4;
    case 2:
      v9 = objc_msgSend_sharesNeedingUpdateByID(self, v5, v6);
      if (objc_msgSend_count(v9, v10, v11))
      {
        hasAttemptedShareUpdate = objc_msgSend_hasAttemptedShareUpdate(self, v12, v13);

        if ((hasAttemptedShareUpdate & 1) == 0)
        {
          objc_msgSend_setState_(self, v15, 3);
          objc_msgSend_setHasAttemptedShareUpdate_(self, v17, 1);
          objc_msgSend_updateShares(self, v18, v19);
          return 1;
        }
      }

      else
      {
      }

      objc_msgSend__sendErrorForFailedShares(self, v15, v16);
      objc_msgSend_setState_(self, v20, 0xFFFFFFFFLL);
      v23 = objc_msgSend_error(self, v21, v22);
      objc_msgSend_finishWithError_(self, v24, v23);

      return 1;
    case 1:
LABEL_4:
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend_fetchSharesFromServer(self, v7, v8);
      break;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"Fetching Shares";
  }

  else if (a3 == 3)
  {
    v5 = @"Updating Shares";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDFetchShareParticipantKeyOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-share-participant-key", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_performCallbackForShareID:(id)a3 withParticipantKey:(id)a4 error:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_shareParticipantKeyFetchedBlock(self, v11, v12);

  if (v13)
  {
    v14 = *MEMORY[0x277CBC878];
    v15 = *MEMORY[0x277CBC880];
    if (v9)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v14);
      }

      v16 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v30 = v8;
      v19 = "Returning participant key for share %@";
      v20 = v16;
      v21 = 12;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v14);
      }

      v22 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 138412546;
      v30 = v8;
      v31 = 2112;
      v32 = v10;
      v19 = "Returning error for share %@: %@";
      v20 = v22;
      v21 = 22;
    }

    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
LABEL_10:
    v23 = objc_msgSend_callbackQueue(self, v17, v18);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_225233284;
    v25[3] = &unk_2785463D0;
    v25[4] = self;
    v26 = v8;
    v27 = v9;
    v28 = v10;
    dispatch_async(v23, v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_sendErrorForFailedShares
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = objc_msgSend_sharesNeedingUpdateByID(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    v13 = *MEMORY[0x277CBC120];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, v13, 2043, @"Share %@ couldn't be upgraded", v15);
        objc_msgSend__performCallbackForShareID_withParticipantKey_error_(self, v17, v15, 0, v16);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v19, v23, 16);
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_participantKeyFromShare:(id)a3 completionHandler:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = sub_2250740C0;
  v93 = sub_2250735EC;
  v94 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_2250740C0;
  v87 = sub_2250735EC;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_2250740C0;
  v81 = sub_2250735EC;
  v82 = 0;
  v10 = objc_msgSend_childRecordIDsByShareID(self, v8, v9);
  v13 = objc_msgSend_recordID(v6, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);

  v18 = objc_msgSend_container(self, v16, v17);
  v23 = objc_msgSend_shortToken(v6, v19, v20);
  if (!v23)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v67 = objc_msgSend_recordID(v6, v37, v38);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v67;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Couldn't get a short token for share %@", location, 0xCu);
    }

    v39 = MEMORY[0x277CBC560];
    v42 = objc_msgSend_recordID(v6, v40, v41);
    v44 = objc_msgSend_errorWithDomain_code_format_(v39, v43, *MEMORY[0x277CBC120], 2003, @"Couldn't get a short token for share %@", v42);
    v45 = v84[5];
    v84[5] = v44;

    v46 = 0;
    v47 = v84[5];
    goto LABEL_13;
  }

  if (objc_msgSend_publicPermission(v6, v21, v22) != 1)
  {
    v48 = MEMORY[0x277CCACA8];
    v51 = objc_msgSend_containerScopedUserID(v18, v24, v25);
    if (v15)
    {
      v52 = objc_msgSend_recordName(v15, v49, v50);
      v55 = objc_msgSend_CKBase64EncodedURLSafeString(v52, v53, v54);
      v57 = objc_msgSend_stringWithFormat_(v48, v56, @"v3:%@:%@:%@", v23, v51, v55);
      v58 = v90[5];
      v90[5] = v57;
    }

    else
    {
      v59 = objc_msgSend_stringWithFormat_(v48, v49, @"v1:%@:%@", v23, v51);
      v52 = v90[5];
      v90[5] = v59;
    }

    v61 = objc_msgSend_dataUsingEncoding_(v90[5], v60, 4);
    v64 = objc_msgSend_CKBase64URLSafeString(v61, v62, v63);
    v65 = v78[5];
    v78[5] = v64;

    v47 = 0;
    v46 = v78[5];
LABEL_13:
    v7[2](v7, v46, v47);
    goto LABEL_14;
  }

  objc_initWeak(location, v18);
  v28 = objc_msgSend_pcsManager(v18, v26, v27);
  v31 = objc_msgSend_currentUserParticipant(v6, v29, v30);
  v34 = objc_msgSend_protectionInfo(v31, v32, v33);
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_2252339D4;
  v68[3] = &unk_27854AA88;
  objc_copyWeak(&v76, location);
  v72 = v7;
  v73 = &v83;
  v69 = v15;
  v74 = &v89;
  v70 = v23;
  v71 = v6;
  v75 = &v77;
  objc_msgSend_createSharePCSFromData_ofType_withService_completionHandler_(v28, v35, v34, 4, 2, v68);

  objc_destroyWeak(&v76);
  objc_destroyWeak(location);
LABEL_14:

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);
  v66 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchedShare:(id)a3 withID:(id)a4 error:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 2003, @"Couldn't fetch a share with ID %@", v9);
    v10 = LABEL_14:;
LABEL_15:
    v35 = v10;
    objc_msgSend__performCallbackForShareID_withParticipantKey_error_(self, v11, v9, 0, v10);

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 2020, @"Item with ID %@ was not a share", v9);
    goto LABEL_14;
  }

  v14 = objc_msgSend_baseTokensByShareID(self, v12, v13);
  v17 = objc_msgSend_recordID(v8, v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v14, v18, v17);
  objc_msgSend_setBaseToken_(v8, v20, v19);

  v23 = objc_msgSend_baseToken(v8, v21, v22);

  if (v23)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v51 = v26;
      v54 = objc_msgSend_baseToken(v8, v52, v53);
      v57 = objc_msgSend_recordID(v8, v55, v56);
      *buf = 138543618;
      v61 = v54;
      v62 = 2112;
      v63 = v57;
      _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Using base token %{public}@ on share %@", buf, 0x16u);
    }
  }

  if (objc_msgSend_publicPermission(v8, v24, v25) != 1)
  {
    goto LABEL_23;
  }

  v29 = objc_msgSend_currentUserParticipant(v8, v27, v28);
  v32 = objc_msgSend_protectionInfo(v29, v30, v31);
  if (v32)
  {

LABEL_23:
    v49 = objc_msgSend_stateTransitionGroup(self, v27, v28);
    dispatch_group_enter(v49);

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_225234478;
    v58[3] = &unk_27854AAB0;
    v58[4] = self;
    v59 = v9;
    objc_msgSend__participantKeyFromShare_completionHandler_(self, v50, v8, v58);

    goto LABEL_16;
  }

  v37 = objc_msgSend_currentUserParticipant(v8, v33, v34);
  v40 = objc_msgSend_role(v37, v38, v39);

  if (v40 != 1)
  {
    goto LABEL_23;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v41 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v61 = v9;
    _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Share %@ needs to be updated on the server so that it gets a PPPCS for the owner", buf, 0xCu);
  }

  v44 = objc_msgSend_sharesNeedingUpdateByID(self, v42, v43);
  v47 = objc_msgSend_recordID(v8, v45, v46);
  objc_msgSend_setObject_forKeyedSubscript_(v44, v48, v8, v47);

LABEL_16:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharesFromServer
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v22 = v11;
      v25 = objc_msgSend_shareIDs(self, v23, v24);
      v28 = objc_msgSend_count(v25, v26, v27);
      v31 = objc_msgSend_operationID(self, v29, v30);
      *buf = 134218242;
      v34 = v28;
      v35 = 2114;
      v36 = v31;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Fetching %lu shares from the server for operation %{public}@", buf, 0x16u);
    }

    v12 = objc_opt_new();
    v15 = objc_msgSend_shareIDs(self, v13, v14);
    objc_msgSend_setRecordIDs_(v12, v16, v15);

    objc_msgSend_setDesiredKeys_(v12, v17, MEMORY[0x277CBEBF8]);
    v18 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_225234768;
    v32[3] = &unk_278548B60;
    v32[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v19, v18, v12, v32);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "No shares to fetch from the server. Returning early", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateShares
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v7 = objc_msgSend_shareIDs(self, v5, v6);
  objc_msgSend_removeAllObjects(v7, v8, v9);

  v12 = objc_opt_new();
  if (*MEMORY[0x277CBC810] == 1)
  {
    v13 = objc_msgSend_unitTestOverrides(self, v10, v11);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"NoProtectectionInfoTagOnShareUpgrade");

    if (v15)
    {
      v16 = objc_msgSend_sharesNeedingUpdateByID(self, v10, v11);
      v19 = objc_msgSend_allValues(v16, v17, v18);
      v22 = objc_msgSend_firstObject(v19, v20, v21);

      objc_msgSend_setPreviousProtectionEtagFromUnitTest_(v22, v23, &stru_28385ED00);
    }
  }

  v24 = objc_msgSend_sharesNeedingUpdateByID(self, v10, v11);
  v27 = objc_msgSend_allValues(v24, v25, v26);
  objc_msgSend_setRecordsToSave_(v12, v28, v27);

  v29 = objc_opt_class();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_225234CD8;
  v31[3] = &unk_278548B60;
  v31[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v30, v29, v12, v31);
}

- (void)main
{
  v4 = objc_msgSend_shareIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) == 0;

  objc_msgSend_makeStateTransition_(self, v8, v7);
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setShareParticipantKeyFetchedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDFetchShareParticipantKeyOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

@end