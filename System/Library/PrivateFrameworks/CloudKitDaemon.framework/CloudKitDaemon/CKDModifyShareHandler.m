@interface CKDModifyShareHandler
+ (id)modifyHandlerForDeleteWithShareID:(id)a3 operation:(id)a4;
+ (id)modifyHandlerWithShare:(id)a3 operation:(id)a4;
- (BOOL)_addedPrivateParticipantNeedsAManateeInvitation:(id)a3;
- (BOOL)_cleanPublicPCSforShareWithError:(id *)a3;
- (BOOL)_modifyRoleForParticipant:(id)a3 invitedPCS:(_OpaquePCSShareProtection *)a4 shareeIdentities:(id)a5 error:(id *)a6;
- (BOOL)_removePrivateParticipantsFromInvitedPCS:(_OpaquePCSShareProtection *)a3 error:(id *)a4;
- (BOOL)_serializePCSDataForShareWithError:(id *)a3;
- (BOOL)_setupParticipantsProtectionInfos:(id *)a3;
- (BOOL)_updateSharePublicPCSWithError:(id *)a3;
- (BOOL)isCloudDocsContainer;
- (CKRecordID)shareID;
- (_PCSPublicIdentityData)createPublicIdentityFromPublicKeyForParticipant:(id)a3 error:(id *)a4;
- (id)_createNewSharePCSDataWithError:(id *)a3;
- (id)_ensurePrivateParticipant:(id)a3 isInInvitedSharePCS:(_OpaquePCSShareProtection *)a4;
- (id)_handleSharePCSData:(id)a3 zonePCSData:(id)a4;
- (id)_publicKeyForParticipant:(id)a3 error:(id *)a4;
- (id)_removePrivateParticipant:(id)a3 fromInvitedSharePCS:(_OpaquePCSShareProtection *)a4;
- (id)_removePublicKey:(id)a3 fromInvitedPCS:(_OpaquePCSShareProtection *)a4;
- (id)_rollShareAndZonePCSIfNeededForSharePCS:(id)a3 zonePCSData:(id)a4;
- (id)sideEffectRecordIDs;
- (unint64_t)invitedPCSPermissionForParticipant:(id)a3;
- (unint64_t)serviceType;
- (void)_addPublicKeyToSelfParticipantWithCompletionHandler:(id)a3;
- (void)_alignParticipantPermissions;
- (void)_fetchRootRecordPublicSharingIdentityWithCompletionHandler:(id)a3;
- (void)_fetchSharePCSData;
- (void)_prepareDependentPCSUpdateIfNeededForShareWithSharePCS:(id)a3 error:(id)a4;
- (void)clearProtectionDataForRecord;
- (void)createSharePCSDataWithKRS:(id)a3;
- (void)dealloc;
- (void)decryptSelfParticipantPCSWithCompletionHandler:(id)a3;
- (void)fetchSharePCSData;
- (void)noteSideEffectRecordPendingDelete:(id)a3;
- (void)noteSideEffectRecordPendingModify:(id)a3;
- (void)prepareForSaveWithCompletionHandler:(id)a3;
- (void)savePCSDataToCache;
- (void)setServerRecord:(id)a3;
- (void)updateParticipantsForFetchedShare:(id)a3 error:(id)a4;
@end

@implementation CKDModifyShareHandler

+ (id)modifyHandlerWithShare:(id)a3 operation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend__initWithRecord_operation_(v7, v8, v6, v5);

  objc_msgSend_setState_(v9, v10, 0);

  return v9;
}

+ (id)modifyHandlerForDeleteWithShareID:(id)a3 operation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend__initForDeleteWithRecordID_operation_(v7, v8, v6, v5);

  objc_msgSend_setState_(v9, v10, 0);

  return v9;
}

- (CKRecordID)shareID
{
  v4 = objc_msgSend_recordID(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v9 = objc_msgSend_share(self, v5, v6);
    v8 = objc_msgSend_recordID(v9, v10, v11);
  }

  return v8;
}

- (BOOL)isCloudDocsContainer
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_containerID(v6, v7, v8);
  v12 = objc_msgSend_specialContainerType(v9, v10, v11) == 4;

  return v12;
}

- (unint64_t)serviceType
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_pcsManager(v6, v7, v8);
  v12 = objc_msgSend_serviceTypeForSharing(v9, v10, v11);

  return v12;
}

- (id)sideEffectRecordIDs
{
  if (objc_msgSend_state(self, a2, v2))
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDModifyShareHandler.m", 106, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyShareHandler sideEffectRecordIDs]", self, "CKDModifyRecordHandlerStateNeedRecordSideEffects");
  }

  v7 = objc_msgSend_share(self, v5, v6);
  v10 = objc_msgSend_rootRecordID(v7, v8, v9);
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_share(self, v11, v12);
    isKnownToServer = objc_msgSend_isKnownToServer(v14, v15, v16);

    if (isKnownToServer)
    {
      v20 = 0;
      goto LABEL_9;
    }

    v21 = MEMORY[0x277CBEB98];
    v7 = objc_msgSend_share(self, v18, v19);
    v24 = objc_msgSend_rootRecordID(v7, v22, v23);
    v20 = objc_msgSend_setWithObject_(v21, v25, v24);
  }

  else
  {
    v20 = 0;
  }

LABEL_9:

  return v20;
}

- (void)noteSideEffectRecordPendingModify:(id)a3
{
  v22 = a3;
  v6 = objc_msgSend_recordID(v22, v4, v5);
  v9 = objc_msgSend_share(self, v7, v8);
  v12 = objc_msgSend_rootRecordID(v9, v10, v11);
  isEqual = objc_msgSend_isEqual_(v6, v13, v12);

  if (isEqual)
  {
    v15 = objc_alloc(MEMORY[0x277CBC620]);
    v18 = objc_msgSend_share(self, v16, v17);
    v20 = objc_msgSend_initWithRecord_action_(v15, v19, v18, 0);
    objc_msgSend_setShare_(v22, v21, v20);
  }
}

- (void)noteSideEffectRecordPendingDelete:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_record(self, v5, v6);
  v10 = objc_msgSend_share(v7, v8, v9);
  v13 = objc_msgSend_recordID(v10, v11, v12);
  isEqual = objc_msgSend_isEqual_(v13, v14, v4);

  if (isEqual)
  {
    v19 = objc_msgSend_record(self, v16, v17);
    objc_msgSend_setShare_(v19, v18, 0);
  }
}

- (void)fetchSharePCSData
{
  v61 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, v2) != 1)
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKDModifyShareHandler.m", 132, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyShareHandler fetchSharePCSData]", self, "CKDModifyRecordHandlerStateNeedSharePCSData");
  }

  v7 = objc_msgSend_operation(self, v5, v6);
  v10 = objc_msgSend_stateTransitionGroup(v7, v8, v9);
  dispatch_group_enter(v10);

  objc_initWeak(&location, self);
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 1;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = sub_225074070;
  v54[4] = sub_2250735C4;
  v55 = 0;
  v13 = objc_msgSend_share(self, v11, v12);
  v14 = dispatch_group_create();
  v19 = objc_msgSend_invitedProtectionData(v13, v15, v16);
  if (v19)
  {
    v20 = objc_msgSend_publicProtectionData(v13, v17, v18);
    v21 = v20 == 0;

    if (!v21)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = objc_msgSend_shareID(self, v23, v24);
        *buf = 138412290;
        v60 = v25;
        _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Share %@ already has PCS data. Decrypting it.", buf, 0xCu);
      }

      dispatch_group_enter(v14);
      v28 = objc_msgSend_pcsManager(self, v26, v27);
      v31 = objc_msgSend_share(self, v29, v30);
      v34 = objc_msgSend_topmostParentOperation(v7, v32, v33);
      v37 = objc_msgSend_operationID(v34, v35, v36);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_2252103F4;
      v49[3] = &unk_27854A450;
      objc_copyWeak(&v53, &location);
      v52 = v56;
      v51 = v54;
      v49[4] = self;
      v50 = v14;
      objc_msgSend_pcsDataFromFetchedShare_requestorOperationID_completionHandler_(v28, v38, v31, v37, v49);

      objc_destroyWeak(&v53);
    }
  }

  v39 = objc_msgSend_modifyRecordsQueue(v7, v17, v18);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225210630;
  block[3] = &unk_27854A4F0;
  objc_copyWeak(&v48, &location);
  v47 = v54;
  v45 = v7;
  v46 = v56;
  v40 = v7;
  dispatch_group_notify(v14, v39, block);

  objc_destroyWeak(&v48);
  _Block_object_dispose(v54, 8);

  _Block_object_dispose(v56, 8);
  objc_destroyWeak(&location);
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_fetchSharePCSData
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operation(self, a2, v2);
  v7 = objc_msgSend_stateTransitionGroup(v4, v5, v6);
  dispatch_group_enter(v7);

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_225074070;
  v36[4] = sub_2250735C4;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_225074070;
  v34[4] = sub_2250735C4;
  v35 = 0;
  objc_initWeak(&location, self);
  v8 = dispatch_group_create();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = objc_msgSend_shareID(self, v10, v11);
    *buf = 138412290;
    v39 = v12;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Fetching PCS data for share %@", buf, 0xCu);
  }

  dispatch_group_enter(v8);
  v15 = objc_msgSend_pcsCache(self, v13, v14);
  v18 = objc_msgSend_shareID(self, v16, v17);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_225210A44;
  v27[3] = &unk_27854A450;
  objc_copyWeak(&v32, &location);
  v19 = v8;
  v28 = v19;
  v29 = self;
  v30 = v34;
  v31 = v36;
  objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v15, v20, v18, v4, 0, v27);

  v23 = objc_msgSend_modifyRecordsQueue(v4, v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225211770;
  block[3] = &unk_27854A478;
  objc_copyWeak(&v26, &location);
  block[4] = v36;
  block[5] = v34;
  dispatch_group_notify(v19, v23, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v32);

  objc_destroyWeak(&location);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)createSharePCSDataWithKRS:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_225074070;
  v58 = sub_2250735C4;
  v53 = 0;
  v6 = objc_msgSend__createNewSharePCSDataWithError_(self, v5, &v53);
  v7 = v53;
  v59 = v6;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_container(v10, v11, v12);
  v16 = objc_msgSend_pcsManager(v13, v14, v15);
  v19 = objc_msgSend_pcsServiceName(v16, v17, v18);

  if (*MEMORY[0x277CBC810] == 1)
  {
    v22 = objc_msgSend_unitTestOverrides(v10, v20, v21);
    v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"FailSharePCSWithoutKRSWithError");
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = objc_msgSend_unitTestOverrides(v10, v20, v21);
      v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"FailSharePCSWithoutKRSWithError");

      v7 = v28;
    }
  }

  if (v7)
  {
    if (objc_msgSend_code(v7, v20, v21) == 5000)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v32 = objc_msgSend_shareID(self, v30, v31);
        *buf = 138412546;
        v61 = v32;
        v62 = 2114;
        v63 = v19;
        _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "Failed to create new share PCS. Attempting KRS for share %@ with service name %{public}@.", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v35 = objc_msgSend_container(v10, v33, v34);
      v38 = objc_msgSend_pcsManager(v35, v36, v37);
      v41 = objc_msgSend_serviceType(self, v39, v40);
      v44 = objc_msgSend_operationID(v10, v42, v43);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_225211C08;
      v47[3] = &unk_27854A4A0;
      objc_copyWeak(&v52, buf);
      v48 = v10;
      v49 = v19;
      v50 = v4;
      v51 = &v54;
      objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v38, v45, v41, 0, 0, 1, 0x28387E900, v44, v47);

      objc_destroyWeak(&v52);
      objc_destroyWeak(buf);
    }

    else
    {
      (*(v4 + 2))(v4, 0, v7);
    }
  }

  else
  {
    (*(v4 + 2))(v4, v55[5], 0);
  }

  _Block_object_dispose(&v54, 8);
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_fetchRootRecordPublicSharingIdentityWithCompletionHandler:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_share(self, v5, v6);
  v10 = objc_msgSend_rootRecordID(v7, v8, v9);

  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v29 = v13;
      v32 = objc_msgSend_share(self, v30, v31);
      v35 = objc_msgSend_rootRecordID(v32, v33, v34);
      *buf = 138412290;
      v43 = v35;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Fetching public sharing identity for root record %@", buf, 0xCu);
    }

    v16 = objc_msgSend_pcsCache(self, v14, v15);
    v19 = objc_msgSend_share(self, v17, v18);
    v22 = objc_msgSend_rootRecordID(v19, v20, v21);
    v25 = objc_msgSend_operation(self, v23, v24);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_2252121F0;
    v40[3] = &unk_278549CB8;
    v41 = v4;
    objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v16, v26, v22, v25, 0, v40);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v36 = v27;
      v39 = objc_msgSend_shareID(self, v37, v38);
      *buf = 138412290;
      v43 = v39;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Share %@ has no root record ID, so we'll generate a new PSI for the share", buf, 0xCu);
    }

    (*(v4 + 2))(v4, 0, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_createNewSharePCSDataWithError:(id *)a3
{
  v90 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v6 = objc_msgSend_operation(self, a2, a3);
    v9 = objc_msgSend_unitTestOverrides(v6, v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"DisallowSharePCSToBeCreated");

    if (v11)
    {
      v81 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v81, v82, a2, self, @"CKDModifyShareHandler.m", 328, @"Share PCS creation not allowed by unit test");
    }
  }

  v12 = objc_msgSend_share(self, a2, a3);
  v15 = objc_msgSend_operation(self, v13, v14);
  if (objc_msgSend_databaseScope(v15, v16, v17) != 2 && objc_msgSend_databaseScope(v15, v18, v19) != 3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v55 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, "Someone is trying to save a share in the public database. That's not going to go very well.", buf, 2u);
    }

    v51 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v56, *MEMORY[0x277CBC120], 5005, @"Can't save a share in the public database");
    v29 = 0;
    goto LABEL_30;
  }

  v20 = objc_msgSend_container(v15, v18, v19);
  v23 = objc_msgSend_cachedEnvironment(v20, v21, v22);

  v26 = objc_msgSend_mutableEncryptedPSK(v12, v24, v25);
  v29 = objc_msgSend_data(v26, v27, v28);

  v30 = MEMORY[0x277CBC878];
  v31 = *MEMORY[0x277CBC878];
  v32 = MEMORY[0x277CBC880];
  v33 = *MEMORY[0x277CBC880];
  if (v29)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v31);
    }

    v34 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v37 = v34;
      v40 = objc_msgSend_recordID(v12, v38, v39);
      *buf = 138412546;
      v87 = v40;
      v88 = 2112;
      v89 = v29;
      _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, "Using passed in data to create a public sharing identity for %@: %@", buf, 0x16u);
    }

    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v31);
  }

  v41 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v44 = v41;
    v47 = objc_msgSend_recordID(v12, v45, v46);
    *buf = 138412290;
    v87 = v47;
    _os_log_impl(&dword_22506F000, v44, OS_LOG_TYPE_INFO, "Creating a new random sharing identity for share %@", buf, 0xCu);
  }

  v48 = objc_msgSend_pcsManager(self, v42, v43);
  v85 = 0;
  RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(v48, v49, &v85);
  v51 = v85;

  if (RandomSharingIdentityWithError)
  {
    v52 = objc_msgSend_pcsManager(self, v35, v36);
    v84 = v51;
    v29 = objc_msgSend_dataFromSharingIdentity_error_(v52, v53, RandomSharingIdentityWithError, &v84);
    v54 = v84;

    v30 = MEMORY[0x277CBC878];
    CFRelease(RandomSharingIdentityWithError);
    v51 = v54;
    v32 = MEMORY[0x277CBC880];
  }

  else
  {
    v29 = 0;
  }

  if (v51)
  {
LABEL_30:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v69 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v71 = v69;
      v74 = objc_msgSend_recordID(v12, v72, v73);
      *buf = 138412546;
      v87 = v74;
      v88 = 2112;
      v89 = v51;
      _os_log_error_impl(&dword_22506F000, v71, OS_LOG_TYPE_ERROR, "Error creating PCS data for share %@: %@", buf, 0x16u);

      if (a3)
      {
        goto LABEL_34;
      }
    }

    else if (a3)
    {
LABEL_34:
      v70 = v51;
      v63 = 0;
      *a3 = v51;
      goto LABEL_37;
    }

    v63 = 0;
    goto LABEL_37;
  }

LABEL_24:
  v57 = v23 > 0;
  v58 = objc_msgSend_pcsManager(self, v35, v36);
  v61 = objc_msgSend_recordID(v12, v59, v60);
  v83 = 0;
  v63 = objc_msgSend_createNewSharePCSDataForShareWithID_withPublicSharingKey_addDebugIdentity_error_(v58, v62, v61, v29, v57, &v83);
  v51 = v83;

  if (!v63)
  {
    goto LABEL_30;
  }

  if (*v32 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *v30);
  }

  v64 = *MEMORY[0x277CBC858];
  if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    if (!v29)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v77 = v64;
  v80 = objc_msgSend_recordID(v12, v78, v79);
  *buf = 138412290;
  v87 = v80;
  _os_log_debug_impl(&dword_22506F000, v77, OS_LOG_TYPE_DEBUG, "Successfully created PCS data for share %@", buf, 0xCu);

  if (v29)
  {
LABEL_29:
    v65 = objc_alloc(MEMORY[0x277CBC2E8]);
    v67 = objc_msgSend_initWithData_(v65, v66, v29);
    objc_msgSend_setMutableEncryptedPSK_(v12, v68, v67);
  }

LABEL_37:

  v75 = *MEMORY[0x277D85DE8];

  return v63;
}

- (id)_handleSharePCSData:(id)a3 zonePCSData:(id)a4
{
  v141 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_pcs(v6, v8, v9) && objc_msgSend_publicPCS(v6, v10, v11))
  {
    v14 = objc_msgSend_pcsManager(self, v12, v13);
    v17 = objc_msgSend_publicPCS(v6, v15, v16);
    v134 = 0;
    v19 = objc_msgSend_sharingIdentityDataFromPCS_error_(v14, v18, v17, &v134);
    v20 = v134;

    if (!v19 || v20)
    {
      if (!v20)
      {
        v86 = MEMORY[0x277CBC560];
        v87 = *MEMORY[0x277CBC120];
        v88 = objc_msgSend_shareID(self, v21, v22);
        v20 = objc_msgSend_errorWithDomain_code_format_(v86, v89, v87, 5000, @"Couldn't create a public sharing identity for share %@", v88);
      }

      v53 = v20;
      v52 = v53;
      goto LABEL_36;
    }

    v23 = objc_msgSend_share(self, v21, v22);
    v26 = objc_msgSend_publicSharingIdentity(v23, v24, v25);
    if (v26)
    {
      v29 = v26;
      v30 = objc_msgSend_share(self, v27, v28);
      v33 = objc_msgSend_publicSharingIdentity(v30, v31, v32);
      isEqual = objc_msgSend_isEqual_(v33, v34, v19);

      if ((isEqual & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v36 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          v124 = v36;
          v127 = objc_msgSend_shareID(self, v125, v126);
          v130 = objc_msgSend_share(self, v128, v129);
          v133 = objc_msgSend_publicSharingIdentity(v130, v131, v132);
          *buf = 138412802;
          v136 = v127;
          v137 = 2114;
          v138 = v133;
          v139 = 2114;
          v140 = v19;
          _os_log_error_impl(&dword_22506F000, v124, OS_LOG_TYPE_ERROR, "Public sharing identity on share %@ is different. Expected %{public}@, got %{public}@", buf, 0x20u);
        }

        v39 = MEMORY[0x277CBC560];
        v40 = *MEMORY[0x277CBC120];
        v41 = objc_msgSend_shareID(self, v37, v38);
        v44 = objc_msgSend_share(self, v42, v43);
        v47 = objc_msgSend_mutableEncryptedPSK(v44, v45, v46);
        v50 = objc_msgSend_data(v47, v48, v49);
        v52 = objc_msgSend_errorWithDomain_code_format_(v39, v51, v40, 5000, @"Public sharing identity on share %@ is different. Expected %@, got %@", v41, v50, v19);

        v53 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v90 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v91 = v90;
      v94 = objc_msgSend_shareID(self, v92, v93);
      *buf = 138412290;
      v136 = v94;
      _os_log_impl(&dword_22506F000, v91, OS_LOG_TYPE_INFO, "Fetched pcs info for share %@", buf, 0xCu);
    }

    v95 = objc_alloc(MEMORY[0x277CBC2E8]);
    v97 = objc_msgSend_initWithData_(v95, v96, v19);
    v100 = objc_msgSend_share(self, v98, v99);
    objc_msgSend_setMutableEncryptedPSK_(v100, v101, v97);

    v104 = objc_msgSend_share(self, v102, v103);
    v107 = objc_msgSend_operation(self, v105, v106);
    v110 = objc_msgSend_container(v107, v108, v109);
    v113 = objc_msgSend_deviceContext(v110, v111, v112);
    v116 = objc_msgSend_testDeviceReference(v113, v114, v115);
    objc_msgSend_setSharePCSData_isUnitTestAccount_(v104, v117, v6, v116 != 0);

    objc_msgSend_setSharePCSData_(self, v118, v6);
    v53 = 0;
    v52 = 0;
    goto LABEL_36;
  }

  v54 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v55 = MEMORY[0x277CBC858];
  v56 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v59 = v56;
    v62 = objc_msgSend_shareID(self, v60, v61);
    *buf = 138412802;
    v136 = v62;
    v137 = 2114;
    v138 = &stru_28385ED00;
    v139 = 2112;
    v140 = &stru_28385ED00;
    _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "Warn: Can't save share %@ if we have no PCS data for it%{public}@%@", buf, 0x20u);
  }

  if (!objc_msgSend_pcs(v6, v57, v58))
  {
    if (*v54 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v65 = *v55;
    if (os_log_type_enabled(*v55, OS_LOG_TYPE_INFO))
    {
      v66 = v65;
      v69 = objc_msgSend_shareID(self, v67, v68);
      *buf = 138412290;
      v136 = v69;
      _os_log_impl(&dword_22506F000, v66, OS_LOG_TYPE_INFO, "Warn: Private PCS data for share %@ is nil", buf, 0xCu);
    }
  }

  if (!objc_msgSend_publicPCS(v6, v63, v64))
  {
    if (*v54 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v72 = *v55;
    if (os_log_type_enabled(*v55, OS_LOG_TYPE_INFO))
    {
      v73 = v72;
      v76 = objc_msgSend_shareID(self, v74, v75);
      *buf = 138412290;
      v136 = v76;
      _os_log_impl(&dword_22506F000, v73, OS_LOG_TYPE_INFO, "Warn: Public PCS data for share %@ is nil", buf, 0xCu);
    }
  }

  v77 = MEMORY[0x277CBC560];
  v78 = *MEMORY[0x277CBC120];
  v53 = objc_msgSend_shareID(self, v70, v71);
  v81 = objc_msgSend_publicPCS(v6, v79, v80);
  v84 = objc_msgSend_pcs(v6, v82, v83);
  v52 = objc_msgSend_errorWithDomain_code_format_(v77, v85, v78, 5005, @"Can't save share %@ because we're missing PCS data. Public PCS: %@, Private PCS: %@", v53, v81, v84);
LABEL_37:

  if (!v52 && objc_msgSend_pcs(v7, v119, v120))
  {
    objc_msgSend_setSharedZonePCSData_(self, v121, v7);
  }

  v122 = *MEMORY[0x277D85DE8];

  return v52;
}

- (void)_prepareDependentPCSUpdateIfNeededForShareWithSharePCS:(id)a3 error:(id)a4
{
  v6 = a3;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_225074070;
  v53 = sub_2250735C4;
  v7 = a4;
  v54 = v7;
  v10 = objc_msgSend_shareID(self, v8, v9);
  v13 = objc_msgSend_zoneID(v10, v11, v12);

  v16 = objc_msgSend_operation(self, v14, v15);
  objc_initWeak(&location, self);
  v17 = dispatch_group_create();
  v20 = objc_msgSend_stateTransitionGroup(v16, v18, v19);
  dispatch_group_enter(v20);

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_225074070;
  v46[4] = sub_2250735C4;
  v47 = 0;
  if (!v50[5])
  {
    v23 = objc_msgSend_share(self, v21, v22);
    isZoneWideShare = objc_msgSend_isZoneWideShare(v23, v24, v25);

    if (isZoneWideShare)
    {
      dispatch_group_enter(v17);
      v29 = objc_msgSend_pcsCache(self, v27, v28);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2252132F0;
      v38[3] = &unk_27854A4C8;
      objc_copyWeak(&v45, &location);
      v39 = v13;
      v40 = self;
      v41 = v6;
      v43 = v46;
      v44 = &v49;
      v42 = v17;
      objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v29, v30, v39, v16, 0, v38);

      objc_destroyWeak(&v45);
    }
  }

  v31 = objc_msgSend_modifyRecordsQueue(v16, v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22521368C;
  block[3] = &unk_27854A4F0;
  objc_copyWeak(&v37, &location);
  v34 = v6;
  v35 = &v49;
  v36 = v46;
  v32 = v6;
  dispatch_group_notify(v17, v31, block);

  objc_destroyWeak(&v37);
  _Block_object_dispose(v46, 8);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v49, 8);
}

- (void)prepareForSaveWithCompletionHandler:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v49 = a3;
  if (objc_msgSend_state(self, v5, v6) != 5)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDModifyShareHandler.m", 485, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyShareHandler prepareForSaveWithCompletionHandler:]", self, "CKDModifyRecordHandlerStateNeedRecordPrepareForUpload");
  }

  if ((objc_msgSend_isDelete(self, v7, v8) & 1) == 0)
  {
    v11 = objc_msgSend_operation(self, v9, v10);
    v14 = objc_msgSend_container(v11, v12, v13);
    v17 = objc_msgSend_containerID(v14, v15, v16);
    if (objc_msgSend_isAppleInternal(v17, v18, v19))
    {
      v20 = *MEMORY[0x277CBC810];

      if ((v20 & 1) == 0)
      {
LABEL_33:
        objc_initWeak(buf, self);
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = sub_225213D70;
        v51[3] = &unk_27854A540;
        objc_copyWeak(&v53, buf);
        v51[4] = self;
        v52 = v49;
        objc_msgSend_decryptSelfParticipantPCSWithCompletionHandler_(self, v45, v51);

        objc_destroyWeak(&v53);
        objc_destroyWeak(buf);
        goto LABEL_34;
      }
    }

    else
    {
    }

    v23 = objc_msgSend_share(self, v21, v22);
    v26 = objc_msgSend_allParticipants(v23, v24, v25);

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v27 = v26;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v55, v63, 16);
    if (v31)
    {
      v32 = *v56;
      do
      {
        v33 = 0;
        do
        {
          if (*v56 != v32)
          {
            objc_enumerationMutation(v27);
          }

          v34 = *(*(&v55 + 1) + 8 * v33);
          if (objc_msgSend_role(v34, v29, v30) == 3 && objc_msgSend_originalParticipantRole(v34, v29, v30) == 3)
          {
            v35 = objc_msgSend_pcsManager(self, v29, v30);
            v38 = objc_msgSend_share(self, v36, v37);
            v54 = 0;
            v40 = objc_msgSend_invitedPCSPermissionForParticipant_inShare_error_(v35, v39, v34, v38, &v54);
            v41 = v54;

            if (v41)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v42 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v60 = v34;
                v61 = 2112;
                v62 = v41;
                _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Failed to determine PCS permission for %@: %@", buf, 0x16u);
              }
            }

            else if (!v40)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v43 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v60 = v34;
                _os_log_debug_impl(&dword_22506F000, v43, OS_LOG_TYPE_DEBUG, "Promoting participant %@ to administrator.", buf, 0xCu);
              }

              objc_msgSend_setRole_(v34, v44, 2);
            }
          }

          ++v33;
        }

        while (v31 != v33);
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v55, v63, 16);
      }

      while (v31);
    }

    goto LABEL_33;
  }

  if (objc_msgSend_state(self, v9, v10) == 5)
  {
    v50.receiver = self;
    v50.super_class = CKDModifyShareHandler;
    [(CKDModifyRecordHandler *)&v50 prepareForSaveWithCompletionHandler:v49];
  }

  else
  {
    v49[2]();
  }

LABEL_34:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)decryptSelfParticipantPCSWithCompletionHandler:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_share(self, v5, v6);
  v10 = objc_msgSend_currentUserParticipant(v7, v8, v9);

  if (objc_msgSend_role(v10, v11, v12) == 1 || objc_msgSend_role(v10, v13, v14) == 2)
  {
    v15 = objc_msgSend_protectionInfo(v10, v13, v14);
    v18 = objc_msgSend_length(v15, v16, v17);

    if (v18)
    {
      objc_initWeak(location, self);
      v21 = objc_msgSend_userIdentity(v10, v19, v20);
      v24 = objc_msgSend_publicKeyVersion(v21, v22, v23);

      v27 = objc_msgSend_pcsManager(self, v25, v26);
      v30 = objc_msgSend_protectionInfo(v10, v28, v29);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_225214638;
      v41[3] = &unk_27854A568;
      objc_copyWeak(&v44, location);
      v42 = v10;
      v43 = v4;
      objc_msgSend_createSharePCSFromData_ofType_withService_completionHandler_(v27, v31, v30, 4, 2 * (v24 < 3), v41);

      objc_destroyWeak(&v44);
      objc_destroyWeak(location);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v33 = v32;
        v36 = objc_msgSend_participantID(v10, v34, v35);
        v39 = objc_msgSend_shareID(self, v37, v38);
        *location = 138543618;
        *&location[4] = v36;
        v46 = 2114;
        v47 = v39;
        _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Current participant %{public}@ does not have a protection info on share %{public}@, possibly due to owner adding themselves for the first time", location, 0x16u);
      }

      (*(v4 + 2))(v4, 0);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (id)_rollShareAndZonePCSIfNeededForSharePCS:(id)a3 zonePCSData:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_share(self, v8, v9);
  v13 = objc_msgSend_operation(self, v11, v12);
  v16 = v13;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v17 = objc_msgSend_unitTestOverrides(v13, v14, v15);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"ShouldRollSharePCSOnFetch");
    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_msgSend_invitedKeysToRemove(v10, v14, v15);
  v24 = objc_msgSend_count(v21, v22, v23);

  v27 = objc_msgSend_removedParticipants(v10, v25, v26);
  v30 = objc_msgSend_count(v27, v28, v29);

  if (!v20 && !v24 && !v30)
  {
    goto LABEL_23;
  }

  v33 = objc_msgSend_share(self, v31, v32);
  if ((objc_msgSend_isZoneWideShare(v33, v34, v35) & 1) == 0)
  {

LABEL_23:
    v55 = 0;
    goto LABEL_24;
  }

  v38 = objc_msgSend_currentUserParticipant(v10, v36, v37);
  v41 = objc_msgSend_role(v38, v39, v40);

  if (v41 != 1)
  {
    goto LABEL_23;
  }

  v42 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v43 = MEMORY[0x277CBC830];
  v44 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    log = v44;
    v75 = objc_msgSend_operationID(v16, v70, v71);
    objc_msgSend_recordID(v10, v72, v73);
    *buf = 138544130;
    v78 = v75;
    v80 = v79 = 2112;
    v74 = v80;
    v81 = 2048;
    v82 = v24;
    v83 = 2048;
    v84 = v30;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Operation %{public}@ needs to key roll for zone-wide share %@ due to %tu invited keys to remove and %tu removed participants", buf, 0x2Au);
  }

  v47 = objc_msgSend_pcsManager(self, v45, v46);
  canRollShareKeys = objc_msgSend_canRollShareKeys(v47, v48, v49);

  if (!canRollShareKeys)
  {
    goto LABEL_23;
  }

  v53 = objc_msgSend_pcsManager(self, v51, v52);
  v55 = objc_msgSend_keyRollForZoneWideShareWithZonePCS_sharePCS_forOperation_(v53, v54, v7, v6, v16);

  objc_msgSend_setDidAttemptZoneWideShareKeyRoll_(self, v56, 1);
  if (*v42 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v57 = *v43;
  if (os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
  {
    v58 = v57;
    v61 = objc_msgSend_operationID(v16, v59, v60);
    v64 = objc_msgSend_recordID(v10, v62, v63);
    v65 = v64;
    v66 = @" error: ";
    *buf = 138413058;
    v67 = &stru_28385ED00;
    v78 = v61;
    v79 = 2112;
    if (!v55)
    {
      v66 = &stru_28385ED00;
    }

    v80 = v64;
    if (v55)
    {
      v67 = v55;
    }

    v81 = 2114;
    v82 = v66;
    v83 = 2112;
    v84 = v67;
    _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "Operation %@ did attempt a key roll for zone-wide share %@%{public}@%@", buf, 0x2Au);
  }

LABEL_24:

  v68 = *MEMORY[0x277D85DE8];

  return v55;
}

- (void)_alignParticipantPermissions
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_share(self, a2, v2);
  v6 = objc_msgSend_currentUserParticipant(v3, v4, v5);
  if (objc_msgSend_role(v6, v7, v8) == 1)
  {
  }

  else
  {
    v13 = objc_msgSend_currentUserParticipant(v3, v9, v10);
    v16 = objc_msgSend_role(v13, v14, v15);

    if (v16 != 2)
    {
      goto LABEL_20;
    }
  }

  if (objc_msgSend_publicPermission(v3, v11, v12) >= 2)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = objc_msgSend_participants(v3, v17, v18);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v59, v73, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v60;
      v25 = MEMORY[0x277CBC880];
      v26 = MEMORY[0x277CBC830];
      v55 = *v60;
      do
      {
        v27 = 0;
        v57 = v23;
        do
        {
          if (*v60 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v59 + 1) + 8 * v27);
          if (objc_msgSend_role(v28, v21, v22) == 3 || objc_msgSend_role(v28, v29, v30) == 2)
          {
            if (*v25 != -1)
            {
              dispatch_once(v25, *MEMORY[0x277CBC878]);
            }

            v31 = *v26;
            if (os_log_type_enabled(*v26, OS_LOG_TYPE_INFO))
            {
              v34 = v31;
              objc_msgSend_role(v28, v35, v36);
              v37 = CKStringFromParticipantRole();
              v40 = objc_msgSend_participantID(v28, v38, v39);
              objc_msgSend_permission(v28, v41, v42);
              v43 = CKStringFromParticipantPermission();
              objc_msgSend_publicPermission(v3, v44, v45);
              CKStringFromParticipantPermission();
              v47 = v46 = v3;
              objc_msgSend_shareID(self, v48, v49);
              v51 = v50 = v25;
              *buf = 138413314;
              v64 = v37;
              v65 = 2112;
              v66 = v40;
              v67 = 2114;
              v68 = v43;
              v69 = 2114;
              v70 = v47;
              v71 = 2112;
              v72 = v51;
              _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_INFO, "Updating permission for %@ participant %@ from %{public}@ -> %{public}@ to match the public permission on share %@", buf, 0x34u);

              v25 = v50;
              v3 = v46;
              v24 = v55;
              v26 = MEMORY[0x277CBC830];

              v23 = v57;
            }

            v52 = objc_msgSend_publicPermission(v3, v32, v33);
            objc_msgSend_setPermission_(v28, v53, v52);
          }

          ++v27;
        }

        while (v23 != v27);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v59, v73, 16);
      }

      while (v23);
    }
  }

LABEL_20:

  v54 = *MEMORY[0x277D85DE8];
}

- (BOOL)_serializePCSDataForShareWithError:(id *)a3
{
  v278 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_share(self, a2, a3);
  v8 = objc_msgSend_currentUserParticipant(v5, v6, v7);

  if (objc_msgSend_role(v8, v9, v10) == 1 || objc_msgSend_role(v8, v11, v12) == 2)
  {
    v13 = objc_msgSend_pcsManager(self, v11, v12);
    v16 = objc_msgSend_share(self, v14, v15);
    v19 = objc_msgSend_privatePCS(v16, v17, v18);
    v273 = 0;
    v21 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v13, v20, v19, 5, &v273);
    v22 = v273;

    if (!v21 || v22)
    {
      if (!v22)
      {
        v31 = MEMORY[0x277CBC560];
        v32 = *MEMORY[0x277CBC120];
        v33 = objc_msgSend_shareID(self, v23, v24);
        v22 = objc_msgSend_errorWithDomain_code_format_(v31, v34, v32, 5002, @"Couldn't serialize private share PCS for share %@: %@", v33, 0);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v35 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v36 = v35;
        v39 = objc_msgSend_shareID(self, v37, v38);
        *buf = 138412546;
        v275 = v39;
        v276 = 2112;
        v277 = v22;
        _os_log_impl(&dword_22506F000, v36, OS_LOG_TYPE_INFO, "Warn: Couldn't serialize private share PCS for share %@: %@", buf, 0x16u);
      }

      v40 = 0;
      v41 = 0;
      goto LABEL_43;
    }

    v25 = objc_msgSend_share(self, v23, v24);
    objc_msgSend_setInvitedProtectionData_(v25, v26, v21);

    v29 = objc_msgSend_sharePCSData(self, v27, v28);
    objc_msgSend_setPcsData_(v29, v30, v21);
  }

  else
  {
    v21 = 0;
  }

  v42 = objc_msgSend_pcsManager(self, v11, v12);
  v45 = objc_msgSend_share(self, v43, v44);
  v48 = objc_msgSend_privatePCS(v45, v46, v47);
  v272 = 0;
  v41 = objc_msgSend_etagFromSharePCS_error_(v42, v49, v48, &v272);
  v22 = v272;

  if (!v41 || v22)
  {
    if (!v22)
    {
      v129 = MEMORY[0x277CBC560];
      v130 = *MEMORY[0x277CBC120];
      v131 = objc_msgSend_shareID(self, v50, v51);
      v22 = objc_msgSend_errorWithDomain_code_format_(v129, v132, v130, 5002, @"Couldn't create a PCS etag for share %@: %@", v131, 0);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v133 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v134 = v133;
      v137 = objc_msgSend_shareID(self, v135, v136);
      *buf = 138412546;
      v275 = v137;
      v276 = 2112;
      v277 = v22;
      _os_log_impl(&dword_22506F000, v134, OS_LOG_TYPE_INFO, "Warn: Couldn't create a PCS etag for share %@: %@", buf, 0x16u);
    }

    v40 = 0;
LABEL_43:
    v78 = 0;
    goto LABEL_44;
  }

  v52 = objc_msgSend_share(self, v50, v51);
  objc_msgSend_setInvitedProtectionEtag_(v52, v53, v41);

  v56 = objc_msgSend_sharePCSData(self, v54, v55);
  objc_msgSend_setEtag_(v56, v57, v41);

  v60 = objc_msgSend_share(self, v58, v59);
  v63 = objc_msgSend_privatePCS(v60, v61, v62);
  v66 = objc_msgSend_sharePCSData(self, v64, v65);
  objc_msgSend_setInvitedPCS_(v66, v67, v63);

  v70 = objc_msgSend_pcsManager(self, v68, v69);
  v73 = objc_msgSend_share(self, v71, v72);
  v76 = objc_msgSend_publicPCS(v73, v74, v75);
  v271 = 0;
  v78 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v70, v77, v76, 0, &v271);
  v22 = v271;

  if (!v78 || v22)
  {
    if (!v22)
    {
      v143 = MEMORY[0x277CBC560];
      v144 = *MEMORY[0x277CBC120];
      v145 = objc_msgSend_shareID(self, v79, v80);
      v22 = objc_msgSend_errorWithDomain_code_format_(v143, v146, v144, 5002, @"Couldn't serialize public share PCS for share %@: %@", v145, 0);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v147 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v148 = v147;
      v151 = objc_msgSend_shareID(self, v149, v150);
      *buf = 138412546;
      v275 = v151;
      v276 = 2112;
      v277 = v22;
      _os_log_impl(&dword_22506F000, v148, OS_LOG_TYPE_INFO, "Warn: Couldn't serialize public share PCS for share %@: %@", buf, 0x16u);
    }

    v40 = 0;
  }

  else
  {
    v81 = objc_msgSend_pcsManager(self, v79, v80);
    v84 = objc_msgSend_share(self, v82, v83);
    v87 = objc_msgSend_publicPCS(v84, v85, v86);
    v270 = 0;
    v40 = objc_msgSend_etagFromSharePCS_error_(v81, v88, v87, &v270);
    v22 = v270;

    if (!v40 || v22)
    {
      if (!v22)
      {
        v152 = MEMORY[0x277CBC560];
        v153 = *MEMORY[0x277CBC120];
        v154 = objc_msgSend_shareID(self, v89, v90);
        v22 = objc_msgSend_errorWithDomain_code_format_(v152, v155, v153, 5002, @"Couldn't create a public PCS etag for share %@: %@", v154, 0);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v156 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v157 = v156;
        v160 = objc_msgSend_shareID(self, v158, v159);
        *buf = 138412546;
        v275 = v160;
        v276 = 2112;
        v277 = v22;
        _os_log_impl(&dword_22506F000, v157, OS_LOG_TYPE_INFO, "Warn: Couldn't create a public PCS etag for share %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v91 = objc_msgSend_sharedZonePCSData(self, v89, v90);
      if (!objc_msgSend_pcs(v91, v92, v93))
      {
LABEL_89:

        goto LABEL_90;
      }

      v96 = objc_msgSend_role(v8, v94, v95);

      if (v96 != 1)
      {
LABEL_90:
        v222 = objc_msgSend_share(self, v97, v98);
        objc_msgSend_setPublicProtectionData_(v222, v223, v78);

        v226 = objc_msgSend_share(self, v224, v225);
        objc_msgSend_setPublicProtectionEtag_(v226, v227, v40);

        v230 = objc_msgSend_share(self, v228, v229);
        v233 = objc_msgSend_publicPCS(v230, v231, v232);
        v236 = objc_msgSend_sharePCSData(self, v234, v235);
        objc_msgSend_setPublicPCS_(v236, v237, v233);

        v240 = objc_msgSend_sharePCSData(self, v238, v239);
        objc_msgSend_setPublicPCSData_(v240, v241, v78);

        v244 = objc_msgSend_sharePCSData(self, v242, v243);
        objc_msgSend_setPublicPCSEtag_(v244, v245, v40);

        v140 = 1;
        goto LABEL_91;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v99 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v251 = v99;
        v254 = objc_msgSend_shareID(self, v252, v253);
        *buf = 138412290;
        v275 = v254;
        _os_log_debug_impl(&dword_22506F000, v251, OS_LOG_TYPE_DEBUG, "Serializing zone PCS for plugin-field update to create zone-wide share %@", buf, 0xCu);
      }

      v266 = objc_msgSend_pcsManager(self, v100, v101);
      v104 = objc_msgSend_sharedZonePCSData(self, v102, v103);
      v107 = objc_msgSend_pcs(v104, v105, v106);
      v269 = 0;
      v109 = objc_msgSend_dataFromZonePCS_error_(v266, v108, v107, &v269);
      v22 = v269;

      v267 = v109;
      if (!v109 || v22)
      {
        if (!v22)
        {
          v165 = MEMORY[0x277CBC560];
          v166 = *MEMORY[0x277CBC120];
          v167 = objc_msgSend_shareID(self, v110, v111);
          v22 = objc_msgSend_errorWithDomain_code_format_(v165, v168, v166, 5002, @"Couldn't serialize zone update PCS for share %@: %@", v167, 0);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v169 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v275 = v22;
          _os_log_error_impl(&dword_22506F000, v169, OS_LOG_TYPE_ERROR, "Couldn't serialize zone PCS trying to create zone-wide share: %@", buf, 0xCu);
        }
      }

      else
      {
        v112 = objc_msgSend_sharedZonePCSData(self, v110, v111);
        v115 = objc_msgSend_zoneishPCS(v112, v113, v114);

        if (!v115)
        {
          v264 = 0;
          goto LABEL_75;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v116 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v255 = v116;
          v258 = objc_msgSend_shareID(self, v256, v257);
          *buf = 138412290;
          v275 = v258;
          _os_log_debug_impl(&dword_22506F000, v255, OS_LOG_TYPE_DEBUG, "Serializing zoneish PCS for plugin-field update to create zone-wide share %@", buf, 0xCu);
        }

        v263 = objc_msgSend_pcsManager(self, v117, v118);
        v121 = objc_msgSend_sharedZonePCSData(self, v119, v120);
        v124 = objc_msgSend_zoneishPCS(v121, v122, v123);
        v268 = 0;
        v126 = objc_msgSend_dataFromRecordPCS_error_(v263, v125, v124, &v268);
        v22 = v268;

        if (v126 && !v22)
        {
          v264 = v126;
LABEL_75:
          v170 = objc_alloc(MEMORY[0x277CBC5E8]);
          v173 = objc_msgSend_shareID(self, v171, v172);
          v176 = objc_msgSend_zoneID(v173, v174, v175);
          v178 = objc_msgSend_initWithZoneID_(v170, v177, v176);

          v180 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v179, v267);
          objc_msgSend_setProtectionData_(v178, v181, v267);
          v260 = v180;
          objc_msgSend_setProtectionEtag_(v178, v182, v180);
          objc_msgSend_setZoneishProtectionData_(v178, v183, v264);
          v186 = objc_msgSend_operation(self, v184, v185);
          v189 = objc_msgSend_translator(v186, v187, v188);
          v261 = v178;
          v191 = objc_msgSend_pRecordZoneFromRecordZone_(v189, v190, v178);

          v194 = objc_msgSend_share(self, v192, v193);
          v199 = objc_msgSend_pluginFields(v194, v195, v196);
          v262 = v191;
          if (v199)
          {
            v200 = objc_msgSend_share(self, v197, v198);
            objc_msgSend_pluginFields(v200, v201, v202);
            v259 = v199;
            v204 = v203 = v194;
            v207 = objc_msgSend_mutableCopy(v204, v205, v206);

            v194 = v203;
            v199 = v259;

            v191 = v262;
          }

          else
          {
            v207 = objc_opt_new();
          }

          v214 = objc_msgSend_data(v191, v212, v213);
          objc_msgSend_setObject_forKeyedSubscript_(v207, v215, v214, @"___zoneUpdateData");

          v91 = v264;
          if (*MEMORY[0x277CBC810] == 1)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v207, v216, v267, @"_rawZonePCSUpdateByes");
            objc_msgSend_setObject_forKeyedSubscript_(v207, v218, v260, @"_rawZonePCSUpdateEtag");
            objc_msgSend_setObject_forKeyedSubscript_(v207, v219, v264, @"_rawZoneishPCSUpdateByes");
          }

          v220 = objc_msgSend_share(self, v216, v217);
          objc_msgSend_setPluginFields_(v220, v221, v207);

          goto LABEL_89;
        }

        if (!v22)
        {
          v265 = MEMORY[0x277CBC560];
          v208 = *MEMORY[0x277CBC120];
          v209 = objc_msgSend_shareID(self, v127, v128);
          v22 = objc_msgSend_errorWithDomain_code_format_(v265, v210, v208, 5002, @"Couldn't serialize zoneish update PCS for share %@: %@", v209, 0);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v211 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v275 = v22;
          _os_log_error_impl(&dword_22506F000, v211, OS_LOG_TYPE_ERROR, "Couldn't serialize zoneish PCS trying to create zone-wide share: %@", buf, 0xCu);
        }
      }
    }
  }

LABEL_44:
  if (a3 && v22)
  {
    v138 = v22;
    *a3 = v22;
  }

  else if (!v22)
  {
    v140 = 0;
LABEL_91:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v246 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v247 = v246;
      v250 = objc_msgSend_shareID(self, v248, v249);
      *buf = 138412290;
      v275 = v250;
      _os_log_impl(&dword_22506F000, v247, OS_LOG_TYPE_INFO, "Successfully serialized PCS data for share %@", buf, 0xCu);
    }

    goto LABEL_53;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v139 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    v161 = v139;
    v164 = objc_msgSend_shareID(self, v162, v163);
    *buf = 138412546;
    v275 = v164;
    v276 = 2112;
    v277 = v22;
    _os_log_error_impl(&dword_22506F000, v161, OS_LOG_TYPE_ERROR, "Failed to serialize PCS data for share %@: %@", buf, 0x16u);
  }

  v140 = 0;
LABEL_53:

  v141 = *MEMORY[0x277D85DE8];
  return v140;
}

- (BOOL)_updateSharePublicPCSWithError:(id *)a3
{
  v128 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_pcsManager(self, a2, a3);
  v8 = objc_msgSend_share(self, v6, v7);
  v11 = objc_msgSend_privatePCS(v8, v9, v10);
  v14 = objc_msgSend_share(self, v12, v13);
  v17 = objc_msgSend_publicPCS(v14, v15, v16);
  v123 = 0;
  v19 = objc_msgSend_addSharePCS_toRecordPCS_permission_error_(v5, v18, v11, v17, 0, &v123);
  v20 = v123;

  if ((v19 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v41 = v38;
      v44 = objc_msgSend_shareID(self, v42, v43);
      *buf = 138412546;
      v125 = v44;
      v126 = 2112;
      v127 = v20;
      _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "Error adding private sharing PCS to public sharing PCS for share %@: %@", buf, 0x16u);
    }

    if (!a3)
    {
      v26 = 0;
LABEL_32:
      v67 = 0;
      goto LABEL_35;
    }

    v45 = MEMORY[0x277CBC560];
    v46 = *MEMORY[0x277CBC120];
    v47 = objc_msgSend_shareID(self, v39, v40);
    v49 = objc_msgSend_errorWithDomain_code_format_(v45, v48, v46, 5004, @"Error adding private sharing PCS to public sharing PCS for share %@: %@", v47, v20);
    v26 = 0;
LABEL_31:
    *a3 = v49;

    goto LABEL_32;
  }

  v23 = objc_msgSend_share(self, v21, v22);
  v26 = objc_msgSend_currentUserParticipant(v23, v24, v25);

  if (objc_msgSend_role(v26, v27, v28) == 1 || objc_msgSend_role(v26, v29, v30) == 2)
  {
    v31 = objc_msgSend_share(self, v29, v30);
    if (objc_msgSend_publicPermission(v31, v32, v33) == 2)
    {

LABEL_13:
      v54 = objc_msgSend_pcsManager(self, v36, v37);
      v57 = objc_msgSend_share(self, v55, v56);
      v60 = objc_msgSend_publicPCS(v57, v58, v59);
      v63 = objc_msgSend_share(self, v61, v62);
      v66 = objc_msgSend_privatePCS(v63, v64, v65);
      v122 = v20;
      v67 = 1;
      v69 = objc_msgSend_addSharePCS_toRecordPCS_permission_error_(v54, v68, v60, v66, 1, &v122);
      v70 = v122;

      if (v69)
      {
LABEL_34:
        v20 = v70;
        goto LABEL_35;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v71 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v74 = v71;
        v77 = objc_msgSend_shareID(self, v75, v76);
        *buf = 138412546;
        v125 = v77;
        v126 = 2112;
        v127 = v70;
        _os_log_impl(&dword_22506F000, v74, OS_LOG_TYPE_INFO, "Error adding public sharing PCS to private sharing PCS for share %@: %@", buf, 0x16u);
      }

      if (a3)
      {
        v78 = MEMORY[0x277CBC560];
        v79 = *MEMORY[0x277CBC120];
        v47 = objc_msgSend_shareID(self, v72, v73);
        objc_msgSend_errorWithDomain_code_format_(v78, v80, v79, 5004, @"Error adding public sharing PCS to private sharing PCS for share %@: %@", v47, v70);
        v49 = LABEL_30:;
        v20 = v70;
        goto LABEL_31;
      }

LABEL_33:
      v67 = 0;
      goto LABEL_34;
    }

    v50 = objc_msgSend_share(self, v34, v35);
    v53 = objc_msgSend_publicPermission(v50, v51, v52);

    if (v53 == 3)
    {
      goto LABEL_13;
    }

    v81 = objc_msgSend_pcsManager(self, v36, v37);
    v84 = objc_msgSend_share(self, v82, v83);
    v87 = objc_msgSend_publicPCS(v84, v85, v86);
    v90 = objc_msgSend_share(self, v88, v89);
    v93 = objc_msgSend_privatePCS(v90, v91, v92);
    v121 = v20;
    v95 = objc_msgSend_removeSharePCS_fromRecordPCS_error_(v81, v94, v87, v93, &v121);
    v70 = v121;

    if ((v95 & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v98 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v101 = v98;
        v104 = objc_msgSend_shareID(self, v102, v103);
        *buf = 138412546;
        v125 = v104;
        v126 = 2112;
        v127 = v70;
        _os_log_impl(&dword_22506F000, v101, OS_LOG_TYPE_INFO, "Error removing public sharing PCS from private sharing PCS for share %@: %@", buf, 0x16u);
      }

      if (a3)
      {
        v105 = MEMORY[0x277CBC560];
        v106 = *MEMORY[0x277CBC120];
        v47 = objc_msgSend_shareID(self, v99, v100);
        objc_msgSend_errorWithDomain_code_format_(v105, v107, v106, 5004, @"Error removing public sharing PCS from private sharing PCS for share %@: %@", v47, v70);
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    v120 = v70;
    v97 = objc_msgSend__cleanPublicPCSforShareWithError_(self, v96, &v120);
    v20 = v120;

    if ((v97 & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v110 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v113 = v110;
        v116 = objc_msgSend_shareID(self, v114, v115);
        *buf = 138412546;
        v125 = v116;
        v126 = 2112;
        v127 = v20;
        _os_log_impl(&dword_22506F000, v113, OS_LOG_TYPE_INFO, "Error cleaning up public PCS for share %@: %@", buf, 0x16u);
      }

      if (!a3)
      {
        goto LABEL_32;
      }

      v117 = MEMORY[0x277CBC560];
      v118 = *MEMORY[0x277CBC120];
      v47 = objc_msgSend_shareID(self, v111, v112);
      v49 = objc_msgSend_errorWithDomain_code_format_(v117, v119, v118, 5004, @"Error cleaning up public PCS for share %@: %@", v47, v20);
      goto LABEL_31;
    }
  }

  v67 = 1;
LABEL_35:

  v108 = *MEMORY[0x277D85DE8];
  return v67;
}

- (BOOL)_cleanPublicPCSforShareWithError:(id *)a3
{
  v3 = self;
  v55 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_share(self, a2, a3);
  v7 = objc_msgSend_publicPermission(v4, v5, v6);

  if (v7 <= 1)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = objc_msgSend_share(v3, v8, v9);
    v13 = objc_msgSend_participants(v10, v11, v12);
    v16 = objc_msgSend_copy(v13, v14, v15);

    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v46, v54, 16);
    if (v18)
    {
      v22 = v18;
      v23 = MEMORY[0x277CBC880];
      v24 = *v47;
      v25 = MEMORY[0x277CBC830];
      *&v21 = 138412546;
      v44 = v21;
      do
      {
        v26 = 0;
        v45 = v22;
        do
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v16);
          }

          v27 = *(*(&v46 + 1) + 8 * v26);
          if (objc_msgSend_role(v27, v19, v20, v44) == 4)
          {
            if (*v23 != -1)
            {
              dispatch_once(v23, *MEMORY[0x277CBC878]);
            }

            v28 = *v25;
            if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
            {
              v30 = v28;
              v33 = objc_msgSend_participantID(v27, v31, v32);
              objc_msgSend_shareID(v3, v34, v35);
              v36 = v24;
              v37 = v16;
              v38 = v25;
              v39 = v23;
              v41 = v40 = v3;
              *buf = v44;
              v51 = v33;
              v52 = 2112;
              v53 = v41;
              _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Removing public participant %@ from share %@.", buf, 0x16u);

              v3 = v40;
              v23 = v39;
              v25 = v38;
              v16 = v37;
              v24 = v36;
              v22 = v45;
            }

            objc_msgSend_setAcceptanceStatus_(v27, v29, 3);
          }

          ++v26;
        }

        while (v22 != v26);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v46, v54, 16);
      }

      while (v22);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_addPublicKeyToSelfParticipantWithCompletionHandler:(id)a3
{
  v151 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!objc_msgSend_haveAddedOwnerToShare(self, v5, v6) || !objc_msgSend_isALegacyPublicShareThatNeedsOwnerPPPCSUpgrade(self, v7, v8))
  {
    if ((objc_msgSend_haveAddedOwnerToShare(self, v7, v8) & 1) != 0 || (objc_msgSend_share(self, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend_currentUserParticipant(v29, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend_role(v32, v33, v34), v32, v29, v35 != 1))
    {
      v4[2](v4, 0);
      goto LABEL_45;
    }

    objc_msgSend_setHaveAddedOwnerToShare_(self, v36, 1);
    v39 = objc_msgSend_share(self, v37, v38);
    v42 = objc_msgSend_currentUserParticipant(v39, v40, v41);

    v45 = objc_msgSend_operation(self, v43, v44);
    if (objc_msgSend_isCloudDocsContainer(self, v46, v47))
    {
      v50 = 1;
    }

    else
    {
      v52 = objc_msgSend_container(v45, v48, v49);
      v55 = objc_msgSend_pcsManager(v52, v53, v54);
      IsManatee = objc_msgSend_currentServiceIsManatee(v55, v56, v57);

      if (IsManatee)
      {
        v50 = 0;
      }

      else
      {
        v50 = 2;
      }
    }

    v59 = objc_msgSend_pcsManager(self, v48, v49);
    v61 = objc_msgSend_publicKeyVersionForServiceType_(v59, v60, v50);
    v64 = objc_msgSend_userIdentity(v42, v62, v63);
    objc_msgSend_setPublicKeyVersion_(v64, v65, v61);

    v68 = objc_msgSend_pcsManager(self, v66, v67);
    v147 = 0;
    v142 = objc_msgSend_participantPublicKeyForServiceType_error_(v68, v69, v50, &v147);
    v70 = v147;

    if (*MEMORY[0x277CBC810] == 1)
    {
      v73 = objc_msgSend_unitTestOverrides(v45, v71, v72);
      v75 = objc_msgSend_objectForKeyedSubscript_(v73, v74, @"NoOwnerPublicKey");
      v76 = v75 == 0;

      if (!v76)
      {

        v142 = 0;
LABEL_30:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v87 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v118 = v87;
          v121 = objc_msgSend_shareID(self, v119, v120);
          *location = 138412546;
          *&location[4] = v121;
          v149 = 2112;
          v150 = v70;
          _os_log_error_impl(&dword_22506F000, v118, OS_LOG_TYPE_ERROR, "Couldn't get a current public sharing identity for the owner on share %@. Error: %@. Synchronizing key chain and retrying...", location, 0x16u);
        }

        objc_initWeak(location, self);
        v90 = objc_msgSend_container(v45, v88, v89);
        v93 = objc_msgSend_pcsManager(v90, v91, v92);
        v96 = objc_msgSend_operationID(v45, v94, v95);
        v143[0] = MEMORY[0x277D85DD0];
        v143[1] = 3221225472;
        v143[2] = sub_225216FDC;
        v143[3] = &unk_27854A590;
        objc_copyWeak(v146, location);
        v144 = v42;
        v146[1] = v50;
        v145 = v4;
        objc_msgSend_synchronizeUserKeyRegistryForServiceType_resourceLastModifiedDate_outdatedPublicKeyID_shouldThrottle_context_requestorOperationID_completionHandler_(v93, v97, v50, 0, 0, 1, 0x28387E900, v96, v143);

        objc_destroyWeak(v146);
        objc_destroyWeak(location);
        goto LABEL_44;
      }
    }

    if (!v142 || v70)
    {
      goto LABEL_30;
    }

    v77 = objc_msgSend_userIdentity(v42, v71, v72);
    objc_msgSend_setPublicSharingKey_(v77, v78, v142);

    v79 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v80 = MEMORY[0x277CBC830];
    v81 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v128 = v81;
      v131 = objc_msgSend_userIdentity(v42, v129, v130);
      v134 = objc_msgSend_publicSharingKey(v131, v132, v133);
      v137 = objc_msgSend_shareID(self, v135, v136);
      *location = 138543618;
      *&location[4] = v134;
      v149 = 2112;
      v150 = v137;
      _os_log_debug_impl(&dword_22506F000, v128, OS_LOG_TYPE_DEBUG, "Added public sharing identity %{public}@ to our self owner user on share %@", location, 0x16u);
    }

    v84 = objc_msgSend_protectionInfo(v42, v82, v83);
    if (v84)
    {
    }

    else
    {
      v98 = objc_msgSend_share(self, v85, v86);
      v101 = objc_msgSend_addedParticipants(v98, v99, v100);
      v103 = objc_msgSend_containsObject_(v101, v102, v42);

      if ((v103 & 1) == 0)
      {
        objc_msgSend_setIsALegacyPublicShareThatNeedsOwnerPPPCSUpgrade_(self, v104, 1);
        v107 = objc_msgSend_share(self, v105, v106);
        v110 = objc_msgSend_privatePCS(v107, v108, v109);

        if (v110)
        {
          v113 = objc_msgSend_share(self, v111, v112);
          v116 = objc_msgSend_privatePCS(v113, v114, v115);
          v70 = objc_msgSend__ensurePrivateParticipant_isInInvitedSharePCS_(self, v117, v42, v116);

LABEL_43:
          (v4)[2](v4, v70);
LABEL_44:

          goto LABEL_45;
        }

        if (*v79 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v126 = *v80;
        if (os_log_type_enabled(*v80, OS_LOG_TYPE_DEBUG))
        {
          v138 = v126;
          v141 = objc_msgSend_shareID(self, v139, v140);
          *location = 138412290;
          *&location[4] = v141;
          _os_log_debug_impl(&dword_22506F000, v138, OS_LOG_TYPE_DEBUG, "Couldn't get a private PCS for the share %@, so we can't upgrade our owner's PPPCS", location, 0xCu);
        }
      }
    }

    v70 = 0;
    goto LABEL_43;
  }

  v9 = objc_msgSend_share(self, v7, v8);
  v12 = objc_msgSend_privatePCS(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_share(self, v13, v14);
    v18 = objc_msgSend_currentUserParticipant(v15, v16, v17);

    v21 = objc_msgSend_share(self, v19, v20);
    v24 = objc_msgSend_privatePCS(v21, v22, v23);
    v26 = objc_msgSend__ensurePrivateParticipant_isInInvitedSharePCS_(self, v25, v18, v24);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v122 = v51;
      v125 = objc_msgSend_shareID(self, v123, v124);
      *location = 138412290;
      *&location[4] = v125;
      _os_log_debug_impl(&dword_22506F000, v122, OS_LOG_TYPE_DEBUG, "Couldn't get a private PCS for the share %@, so we can't upgrade our owner's PPPCS", location, 0xCu);
    }

    v26 = 0;
  }

  (v4)[2](v4, v26);

LABEL_45:
  v127 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupParticipantsProtectionInfos:(id *)a3
{
  v388 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBC878];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v5);
  }

  v6 = MEMORY[0x277CBC830];
  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v269 = objc_msgSend_shareID(self, v8, v9);
    *buf = 138412290;
    v374 = v269;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Checking participants on share %@", buf, 0xCu);
  }

  v12 = objc_msgSend_share(self, v10, v11);
  v15 = objc_msgSend_allParticipants(v12, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17);

  if (!v18)
  {
    v35 = 1;
    goto LABEL_164;
  }

  v21 = objc_msgSend_share(self, v19, v20);
  v24 = objc_msgSend_privatePCS(v21, v22, v23);

  v336 = v24;
  if (!v24)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v303 = v36;
      v306 = objc_msgSend_shareID(self, v304, v305);
      *buf = 138412290;
      v374 = v306;
      _os_log_error_impl(&dword_22506F000, v303, OS_LOG_TYPE_ERROR, "Couldn't get invitedPCS for share %@", buf, 0xCu);
    }

    v39 = MEMORY[0x277CBC560];
    v40 = *MEMORY[0x277CBC120];
    v41 = objc_msgSend_shareID(self, v37, v38);
    v43 = objc_msgSend_errorWithDomain_code_format_(v39, v42, v40, 5004, @"Couldn't create invited PCS for share %@", v41);

    if (a3)
    {
      v44 = v43;
      v35 = 0;
      *a3 = v43;
      goto LABEL_163;
    }

    goto LABEL_134;
  }

  v27 = objc_msgSend_share(self, v25, v26);
  v30 = objc_msgSend_currentUserParticipant(v27, v28, v29);
  v335 = self;
  if (objc_msgSend_role(v30, v31, v32) == 2)
  {
  }

  else
  {
    v45 = objc_msgSend_share(self, v33, v34);
    v48 = objc_msgSend_currentUserParticipant(v45, v46, v47);
    v51 = objc_msgSend_role(v48, v49, v50);

    v54 = v51 == 1;
    v6 = MEMORY[0x277CBC830];
    if (!v54)
    {
      v249 = 0;
      goto LABEL_111;
    }
  }

  v325 = a3;
  v55 = objc_opt_new();
  v58 = objc_msgSend_share(self, v56, v57);
  v61 = objc_msgSend_addedParticipants(v58, v59, v60);
  objc_msgSend_addObjectsFromArray_(v55, v62, v61);

  v371 = 0u;
  v372 = 0u;
  v369 = 0u;
  v370 = 0u;
  v65 = objc_msgSend_share(self, v63, v64);
  v68 = objc_msgSend_allParticipants(v65, v66, v67);

  v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v369, v387, 16);
  if (v70)
  {
    v73 = v70;
    v74 = *v370;
    do
    {
      v75 = 0;
      do
      {
        if (*v370 != v74)
        {
          objc_enumerationMutation(v68);
        }

        v76 = *(*(&v369 + 1) + 8 * v75);
        if (objc_msgSend_wantsNewInvitationToken(v76, v71, v72))
        {
          v77 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v77);
          }

          v78 = *v6;
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            v82 = objc_msgSend_shareID(v335, v79, v80);
            *buf = 138412546;
            v374 = v76;
            v375 = 2112;
            v376 = v82;
            _os_log_debug_impl(&dword_22506F000, v78, OS_LOG_TYPE_DEBUG, "Participant %@ wants a new invitation token on share %@", buf, 0x16u);

            v6 = MEMORY[0x277CBC830];
          }

          objc_msgSend_addObject_(v55, v81, v76);
        }

        ++v75;
      }

      while (v73 != v75);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v71, &v369, v387, 16);
    }

    while (v73);
  }

  v85 = objc_msgSend_share(v335, v83, v84);
  v88 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v85, v86, v87);
  v89 = v88;
  if (v88)
  {
    v331 = v88;
  }

  else
  {
    v331 = objc_opt_new();
  }

  v367 = 0u;
  v368 = 0u;
  v365 = 0u;
  v366 = 0u;
  v90 = v55;
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &v365, v386, 16);
  v95 = v335;
  v96 = v331;
  v329 = v90;
  if (v92)
  {
    v97 = v92;
    v98 = *v366;
    v327 = *v366;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v366 != v98)
        {
          objc_enumerationMutation(v90);
        }

        v100 = *(*(&v365 + 1) + 8 * i);
        if (objc_msgSend_usesOneTimeURL(v100, v93, v94))
        {
          v101 = objc_msgSend_participantID(v100, v93, v94);
          v103 = objc_msgSend_objectForKeyedSubscript_(v96, v102, v101);

          if (!v103)
          {
            v104 = objc_msgSend_operation(v95, v93, v94);
            v107 = objc_msgSend_container(v104, v105, v106);
            v110 = objc_msgSend_pcsManager(v107, v108, v109);
            v364 = 0;
            v112 = objc_msgSend_generateOONPrivateKeyWithError_(v110, v111, &v364);
            v43 = v364;

            if (v43 || !v112)
            {
              v239 = v112;
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v182 = v331;
              v240 = *v6;
              if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
              {
                v307 = v240;
                objc_msgSend_shareID(v335, v308, v309);
                v311 = v310 = v43;
                *buf = 138412546;
                v374 = v311;
                v375 = 2112;
                v376 = v310;
                _os_log_error_impl(&dword_22506F000, v307, OS_LOG_TYPE_ERROR, "Couldn't configure new one-time URL participant on share %@: %@", buf, 0x16u);

                v43 = v310;
                if (v325)
                {
LABEL_109:
                  v243 = MEMORY[0x277CBC560];
                  v244 = v43;
                  v245 = *MEMORY[0x277CBC120];
                  v246 = objc_msgSend_shareID(v335, v241, v242);
                  v247 = v245;
                  v43 = v244;
                  *v325 = objc_msgSend_errorWithDomain_code_error_format_(v243, v248, v247, 5005, v244, @"Couldn't configure new participant on share %@", v246);
                }
              }

              else if (v325)
              {
                goto LABEL_109;
              }

              v177 = v90;
              goto LABEL_133;
            }

            v115 = objc_msgSend_userIdentity(v100, v113, v114);
            objc_msgSend_setOutOfNetworkPrivateKey_(v115, v116, v112);

            v117 = objc_alloc(MEMORY[0x277CBC4E0]);
            v120 = objc_msgSend_share(v335, v118, v119);
            v123 = objc_msgSend_mutableEncryptedPSK(v120, v121, v122);
            v126 = objc_msgSend_data(v123, v124, v125);
            objc_msgSend_oneTimeURLSharingKeySeed(v100, v127, v128);
            v129 = obja = v112;
            v132 = objc_msgSend_participantID(v100, v130, v131);
            v134 = objc_msgSend_initWithSharingKeyBytes_sharingKeySeed_participantID_(v117, v133, v126, v129, v132);

            v6 = MEMORY[0x277CBC830];
            v95 = v335;
            v90 = v329;

            v137 = objc_msgSend_participantID(v100, v135, v136);
            v96 = v331;
            objc_msgSend_setObject_forKeyedSubscript_(v331, v138, v134, v137);

            v98 = v327;
          }
        }
      }

      v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v93, &v365, v386, 16);
    }

    while (v97);
  }

  if (objc_msgSend_count(v96, v139, v140))
  {
    v143 = objc_msgSend_share(v95, v141, v142);
    objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v143, v144, v96);
  }

  v362 = 0u;
  v363 = 0u;
  v360 = 0u;
  v361 = 0u;
  v145 = v90;
  v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v146, &v360, v385, 16);
  v326 = v145;
  if (v147)
  {
    v150 = v147;
    v151 = *v361;
    do
    {
      v152 = 0;
      do
      {
        if (*v361 != v151)
        {
          objc_enumerationMutation(v145);
        }

        v153 = *(*(&v360 + 1) + 8 * v152);
        if (objc_msgSend_role(v153, v148, v149) == 3 || objc_msgSend_role(v153, v154, v155) == 2 || objc_msgSend_role(v153, v156, v157) == 1)
        {
          v158 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v158);
          }

          v159 = *v6;
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            v171 = objc_msgSend_shareID(v335, v160, v161);
            *buf = 138412546;
            v374 = v153;
            v375 = 2112;
            v376 = v171;
            _os_log_debug_impl(&dword_22506F000, v159, OS_LOG_TYPE_DEBUG, "Setting up private participant %@ on share %@", buf, 0x16u);
          }

          v163 = objc_msgSend__ensurePrivateParticipant_isInInvitedSharePCS_(v335, v162, v153, v336);
          if (v163)
          {
            v266 = v163;
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v90 = v329;
            v182 = v331;
            v267 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
            {
              v312 = v267;
              v315 = objc_msgSend_shareID(v335, v313, v314);
              *buf = 138412546;
              v374 = v315;
              v375 = 2112;
              v376 = v266;
              _os_log_error_impl(&dword_22506F000, v312, OS_LOG_TYPE_ERROR, "Couldn't configure new participant on share %@: %@", buf, 0x16u);

              if (v325)
              {
LABEL_131:
                v268 = v266;
                *v325 = v266;
              }
            }

            else if (v325)
            {
              goto LABEL_131;
            }

            v43 = v266;
            v177 = v326;
            goto LABEL_133;
          }

          if (objc_msgSend_isCurrentUser(v153, v164, v165))
          {
            v166 = objc_msgSend_protectionInfo(v153, v148, v149);
            v169 = objc_msgSend_sharePCSData(v335, v167, v168);
            objc_msgSend_setMyParticipantPCSData_(v169, v170, v166);

            v145 = v326;
          }
        }

        ++v152;
      }

      while (v150 != v152);
      v150 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v148, &v360, v385, 16);
    }

    while (v150);
  }

  v358 = 0u;
  v359 = 0u;
  v356 = 0u;
  v357 = 0u;
  v174 = objc_msgSend_share(v335, v172, v173);
  v177 = objc_msgSend_removedParticipants(v174, v175, v176);

  v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v178, &v356, v384, 16);
  v182 = v331;
  if (!v179)
  {
    goto LABEL_75;
  }

  v183 = v179;
  v184 = *v357;
  do
  {
    for (j = 0; j != v183; ++j)
    {
      if (*v357 != v184)
      {
        objc_enumerationMutation(v177);
      }

      v186 = *(*(&v356 + 1) + 8 * j);
      if (objc_msgSend_role(v186, v180, v181) == 3 || objc_msgSend_role(v186, v180, v187) == 2)
      {
        v355 = 0;
        objc_msgSend__removePrivateParticipantsFromInvitedPCS_error_(v335, v180, v336, &v355);
        v188 = v355;
        if (v188)
        {
          v291 = v188;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v90 = v329;
          v292 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            v320 = v292;
            v323 = objc_msgSend_shareID(v335, v321, v322);
            *buf = 138412546;
            v374 = v323;
            v375 = 2112;
            v376 = v291;
            _os_log_error_impl(&dword_22506F000, v320, OS_LOG_TYPE_ERROR, "Couldn't remove participant participant PCS for share %@: %@", buf, 0x16u);

            if (!v325)
            {
              goto LABEL_172;
            }

LABEL_150:
            v43 = v291;
            v293 = v291;
            *v325 = v291;
          }

          else
          {
            if (v325)
            {
              goto LABEL_150;
            }

LABEL_172:
            v43 = v291;
          }

LABEL_133:

LABEL_134:
          v35 = 0;
          goto LABEL_163;
        }
      }
    }

    v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v180, &v356, v384, 16);
  }

  while (v183);
LABEL_75:

  v189 = PCSFPCopyPublicIdentities();
  v190 = objc_opt_new();
  v350 = MEMORY[0x277D85DD0];
  v351 = 3221225472;
  v352 = sub_22521889C;
  v353 = &unk_27854A5B8;
  v328 = v190;
  v354 = v328;
  v324 = v189;
  CKCFArrayForEach();
  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v347 = 0u;
  v193 = objc_msgSend_share(v335, v191, v192);
  v196 = objc_msgSend_allParticipants(v193, v194, v195);

  obj = v196;
  v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(v196, v197, &v346, v383, 16);
  if (!v198)
  {
    v249 = 0;
    goto LABEL_168;
  }

  v201 = v198;
  v249 = 0;
  v202 = *v347;
  v330 = *v347;
  while (2)
  {
    v203 = 0;
    while (2)
    {
      if (*v347 != v202)
      {
        objc_enumerationMutation(obj);
      }

      v204 = *(*(&v346 + 1) + 8 * v203);
      v205 = objc_msgSend_share(v335, v199, v200);
      v208 = objc_msgSend_addedParticipants(v205, v206, v207);
      if (objc_msgSend_containsObject_(v208, v209, v204))
      {
LABEL_83:

        v6 = MEMORY[0x277CBC830];
LABEL_84:

        goto LABEL_85;
      }

      v212 = objc_msgSend_share(v335, v210, v211);
      v215 = objc_msgSend_removedParticipants(v212, v213, v214);
      if (objc_msgSend_containsObject_(v215, v216, v204))
      {

        goto LABEL_83;
      }

      if (objc_msgSend_role(v204, v217, v218) == 3)
      {

        goto LABEL_91;
      }

      v221 = objc_msgSend_role(v204, v219, v220);

      v54 = v221 == 2;
      v202 = v330;
      if (!v54)
      {
        v6 = MEMORY[0x277CBC830];
        goto LABEL_85;
      }

LABEL_91:
      v222 = *MEMORY[0x277CBC878];
      v6 = MEMORY[0x277CBC830];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v222);
      }

      v223 = *v6;
      if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
      {
        v236 = objc_msgSend_shareID(v335, v224, v225);
        *buf = 138412546;
        v374 = v204;
        v375 = 2112;
        v376 = v236;
        _os_log_debug_impl(&dword_22506F000, v223, OS_LOG_TYPE_DEBUG, "Modifying per participant PCS permission for participant %@ on share %@", buf, 0x16u);
      }

      v228 = objc_msgSend_copy(v328, v226, v227);
      v345 = v249;
      v230 = v249;
      v231 = objc_msgSend__modifyRoleForParticipant_invitedPCS_shareeIdentities_error_(v335, v229, v204, v336, v228, &v345);
      v232 = v345;

      if (!v231 || v232)
      {
        v233 = *MEMORY[0x277CBC878];
        v202 = v330;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v233);
        }

        v205 = *v6;
        if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
        {
          v237 = objc_msgSend_shareID(v335, v234, v235);
          *buf = 138412546;
          v374 = v237;
          v375 = 2112;
          v376 = v232;
          _os_log_error_impl(&dword_22506F000, v205, OS_LOG_TYPE_ERROR, "Couldn't update participant PCS for participant's role on share %@: %@", buf, 0x16u);

          v202 = v330;
        }

        v249 = v232;
        goto LABEL_84;
      }

      v249 = 0;
      v202 = v330;
LABEL_85:
      if (v201 != ++v203)
      {
        continue;
      }

      break;
    }

    v238 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v199, &v346, v383, 16);
    v201 = v238;
    if (v238)
    {
      continue;
    }

    break;
  }

LABEL_168:

LABEL_111:
  v332 = v249;
  v343 = 0u;
  v344 = 0u;
  v341 = 0u;
  v342 = 0u;
  v250 = v335;
  v251 = objc_msgSend_share(v335, v52, v53);
  v254 = objc_msgSend_invitedKeysToRemove(v251, v252, v253);

  v256 = objc_msgSend_countByEnumeratingWithState_objects_count_(v254, v255, &v341, v382, 16);
  if (!v256)
  {

    goto LABEL_136;
  }

  v258 = v256;
  v259 = 0;
  v260 = *v342;
  do
  {
    v261 = 0;
    do
    {
      if (*v342 != v260)
      {
        objc_enumerationMutation(v254);
      }

      v262 = *(*(&v341 + 1) + 8 * v261);
      v263 = objc_msgSend__removePublicKey_fromInvitedPCS_(v250, v257, v262, v336);
      if (v263)
      {
        v264 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v264);
        }

        v265 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v374 = v262;
          v375 = 2112;
          v376 = v263;
          _os_log_impl(&dword_22506F000, v265, OS_LOG_TYPE_INFO, "Error removing public key %{public}@ from the invited PCS blob: %@", buf, 0x16u);
        }

        v250 = v335;
      }

      else
      {
        ++v259;
      }

      ++v261;
    }

    while (v258 != v261);
    v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v254, v257, &v341, v382, 16);
  }

  while (v258);

  v6 = MEMORY[0x277CBC830];
  if (!v259)
  {
LABEL_136:
    v270 = PCSFPCopyPublicIdentities();
    v273 = objc_msgSend_share(v250, v271, v272);
    v276 = objc_msgSend_publicPermission(v273, v274, v275);

    v339 = 0u;
    v340 = 0u;
    v337 = 0u;
    v338 = 0u;
    v279 = objc_msgSend_share(v250, v277, v278);
    v282 = objc_msgSend_participants(v279, v280, v281);

    v284 = objc_msgSend_countByEnumeratingWithState_objects_count_(v282, v283, &v337, v381, 16);
    if (v284)
    {
      v287 = v284;
      v288 = 0;
      v289 = *v338;
      do
      {
        for (k = 0; k != v287; ++k)
        {
          if (*v338 != v289)
          {
            objc_enumerationMutation(v282);
          }

          if (objc_msgSend_role(*(*(&v337 + 1) + 8 * k), v285, v286) != 4)
          {
            ++v288;
          }
        }

        v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(v282, v285, &v337, v381, 16);
      }

      while (v287);
    }

    else
    {
      v288 = 0;
    }

    if (v276 <= 1)
    {
      v296 = v288;
    }

    else
    {
      v296 = (v288 + 1);
    }

    if (objc_msgSend_count(v270, v294, v295) != v296)
    {
      v297 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v297);
      }

      v298 = *v6;
      if (os_log_type_enabled(v298, OS_LOG_TYPE_ERROR))
      {
        v316 = objc_msgSend_count(v270, v299, v300);
        v319 = objc_msgSend_shareID(v335, v317, v318);
        *buf = 134218754;
        v374 = v316;
        v375 = 2048;
        v376 = v296;
        v377 = 2112;
        v378 = v319;
        v379 = 2112;
        v380 = v270;
        _os_log_error_impl(&dword_22506F000, v298, OS_LOG_TYPE_ERROR, "Unexpected: The invitedPCS has a different number of public identities than expected (%tu vs. %tu) on the share %@: %@", buf, 0x2Au);
      }
    }
  }

  v35 = 1;
  v43 = v332;
LABEL_163:

LABEL_164:
  v301 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)_modifyRoleForParticipant:(id)a3 invitedPCS:(_OpaquePCSShareProtection *)a4 shareeIdentities:(id)a5 error:(id *)a6
{
  v85 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v13 = objc_msgSend_invitedPCSPermissionForParticipant_(self, v12, v10);
  v16 = objc_msgSend_protectionInfo(v10, v14, v15);

  if (!v16)
  {
    v26 = objc_msgSend_protectionInfoPublicKey(v10, v17, v18);

    if (!v26)
    {
      goto LABEL_54;
    }

    v76 = a6;
    v35 = objc_msgSend_pcsManager(self, v33, v34);
    v38 = objc_msgSend_protectionInfoPublicKey(v10, v36, v37);
    v77 = 0;
    v32 = objc_msgSend_createPublicSharingIdentityFromPublicKey_error_(v35, v39, v38, &v77);
    v25 = v77;

    if (v32 && !v25)
    {
      v75 = v11;
      v24 = 0;
      v26 = 0;
      goto LABEL_22;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v52 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v66 = v52;
      v69 = objc_msgSend_protectionInfoPublicKey(v10, v67, v68);
      *buf = 138412802;
      v80 = v69;
      v81 = 2112;
      v82 = v10;
      v83 = 2112;
      v84 = v25;
      _os_log_error_impl(&dword_22506F000, v66, OS_LOG_TYPE_ERROR, "Error deserializing protectionInfoPublicKey %@ on participant %@: %@", buf, 0x20u);

      if (!v32)
      {
        goto LABEL_44;
      }
    }

    else if (!v32)
    {
LABEL_44:
      v26 = 0;
LABEL_45:
      a6 = v76;
      goto LABEL_51;
    }

    CFRelease(v32);
    goto LABEL_44;
  }

  v76 = a6;
  v19 = objc_msgSend_pcsManager(self, v17, v18);
  v22 = objc_msgSend_protectionInfo(v10, v20, v21);
  v78 = 0;
  v24 = objc_msgSend_createSharePCSFromEncryptedData_error_(v19, v23, v22, &v78);
  v25 = v78;

  if (v24 && !v25)
  {
    v26 = PCSShareProtectionCopyPublicKeys();
    if (objc_msgSend_count(v26, v27, v28) >= 2)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v31 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v80 = v24;
        _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Found more than one public identity on per-participant PCS %@. Which one will be returned is undefined.", buf, 0xCu);
      }

      v25 = 0;
      v32 = 0;
      goto LABEL_47;
    }

    v32 = objc_msgSend_firstObject(v26, v29, v30);

    CFRetain(v32);
    if (!v32)
    {
      v25 = 0;
LABEL_47:
      v41 = 0;
      goto LABEL_48;
    }

    v75 = v11;
LABEL_22:
    v43 = PCSPublicIdentityGetPublicID();
    if (v43 && objc_msgSend_containsObject_(v75, v42, v43))
    {
      v46 = objc_msgSend_pcsManager(self, v44, v45);
      v25 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(v46, v47, v32, a4, v13);

      v48 = *MEMORY[0x277CBC878];
      v49 = *MEMORY[0x277CBC880];
      if (v25)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v48);
        }

        v50 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v80 = v32;
          v81 = 2112;
          v82 = a4;
          _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Cannot add public identity %@ to invitedPCS %@ for per participant PCS permission update", buf, 0x16u);
        }

        v41 = 0;
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v48);
        }

        v61 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v70 = v61;
          v71 = CKStringFromSharePermission(v13);
          v74 = objc_msgSend_shareID(self, v72, v73);
          *buf = 138412802;
          v80 = v71;
          v81 = 2112;
          v82 = v10;
          v83 = 2112;
          v84 = v74;
          _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Successfully modified per participant PCS permission to %@ on invitedPCS for participant %@ on share %@", buf, 0x20u);
        }

        v25 = 0;
        v41 = 1;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v51 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v80 = v32;
        _os_log_error_impl(&dword_22506F000, v51, OS_LOG_TYPE_ERROR, "Public identity %@ can be found on participant, but invitedPCS is not shared to it", buf, 0xCu);
      }

      v41 = 0;
      v25 = 0;
    }

    v11 = v75;
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v40 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    v62 = v40;
    v65 = objc_msgSend_protectionInfo(v10, v63, v64);
    *buf = 138412546;
    v80 = v65;
    v81 = 2112;
    v82 = v25;
    _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "Error creating PCS from encrypted data %@: %@", buf, 0x16u);
  }

  v41 = 0;
  v26 = 0;
  v32 = 0;
  if (!v24)
  {
LABEL_36:
    if (!v32)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

LABEL_48:
  CFRelease(v24);
  if (v32)
  {
LABEL_37:
    CFRelease(v32);
    if (v41)
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

LABEL_49:
  a6 = v76;
  if ((v41 & 1) == 0)
  {
LABEL_51:
    if (v25)
    {
      if (a6)
      {
LABEL_53:
        v54 = v25;
        v53 = 0;
        *a6 = v25;
        goto LABEL_56;
      }

LABEL_55:
      v53 = 0;
      goto LABEL_56;
    }

LABEL_54:
    v55 = MEMORY[0x277CBC560];
    v56 = *MEMORY[0x277CBC120];
    v57 = objc_msgSend_shareID(self, v33, v34);
    v25 = objc_msgSend_errorWithDomain_code_format_(v55, v58, v56, 5005, @"Couldn't change per participant PCS permission on share %@", v57);

    if (a6)
    {
      goto LABEL_53;
    }

    goto LABEL_55;
  }

LABEL_50:
  v53 = 1;
LABEL_56:

  v59 = *MEMORY[0x277D85DE8];
  return v53;
}

- (BOOL)_removePrivateParticipantsFromInvitedPCS:(_OpaquePCSShareProtection *)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = objc_msgSend_share(self, a2, a3, 0);
  v10 = objc_msgSend_removedParticipants(v7, v8, v9);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v31, v39, 16);
  if (!v12)
  {
    v22 = 0;
    goto LABEL_19;
  }

  v15 = v12;
  v16 = 0;
  v17 = *v32;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v32 != v17)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v31 + 1) + 8 * i);
      if (objc_msgSend_role(v19, v13, v14) == 3 || objc_msgSend_role(v19, v13, v20) == 2)
      {
        v21 = objc_msgSend__removePrivateParticipant_fromInvitedSharePCS_(self, v13, v19, a3);
        if (!v21)
        {
          v16 = 1;
          continue;
        }

        v22 = v21;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v23 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          if (!a4)
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        }

        v27 = v23;
        v30 = objc_msgSend_shareID(self, v28, v29);
        *buf = 138412546;
        v36 = v30;
        v37 = 2112;
        v38 = v22;
        _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Couldn't remove participant from share %@: %@", buf, 0x16u);

        if (a4)
        {
LABEL_17:
          v24 = v22;
          v16 = 0;
          *a4 = v22;
          goto LABEL_20;
        }

LABEL_19:
        v16 = 0;
        goto LABEL_20;
      }
    }

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v31, v39, 16);
    if (v15)
    {
      continue;
    }

    break;
  }

  v22 = 0;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (id)_removePrivateParticipant:(id)a3 fromInvitedSharePCS:(_OpaquePCSShareProtection *)a4
{
  v110 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_operation(self, v7, v8);
  v12 = objc_msgSend_container(v9, v10, v11);
  v15 = objc_msgSend_deviceContext(v12, v13, v14);
  v18 = objc_msgSend_testDeviceReference(v15, v16, v17);
  if (v18)
  {
    v21 = v18;
    v22 = objc_msgSend_participantID(v6, v19, v20);
    isEqualToString = objc_msgSend_isEqualToString_(v22, v23, @"DONT-REMOVE-MY-KEY");

    if (isEqualToString)
    {
LABEL_38:
      v68 = 0;
      goto LABEL_39;
    }
  }

  else
  {
  }

  v25 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = MEMORY[0x277CBC830];
  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v82 = v27;
    v85 = objc_msgSend_userIdentity(v6, v83, v84);
    v88 = objc_msgSend_userIdentity(v6, v86, v87);
    v91 = objc_msgSend_publicSharingKey(v88, v89, v90);
    v94 = objc_msgSend_protectionInfoPublicKey(v6, v92, v93);
    *buf = 138412802;
    v105 = v85;
    v106 = 2114;
    v107 = v91;
    v108 = 2114;
    v109 = v94;
    _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Removing share participant with identity %@ and public key %{public}@, PPPCS public key: %{public}@", buf, 0x20u);
  }

  v30 = objc_msgSend_protectionInfo(v6, v28, v29);

  if (v30)
  {
    v33 = objc_msgSend_pcsManager(self, v31, v32);
    v36 = objc_msgSend_protectionInfo(v6, v34, v35);
    v38 = objc_msgSend_removeEncryptedPCS_fromSharePCS_(v33, v37, v36, a4);
  }

  else
  {
    v39 = objc_msgSend_protectionInfoPublicKey(v6, v31, v32);

    if (v39)
    {
      v42 = objc_msgSend_pcsManager(self, v40, v41);
      v45 = objc_msgSend_protectionInfoPublicKey(v6, v43, v44);
      v103 = v45;
      v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, &v103, 1);
      v49 = objc_msgSend_removePublicKeys_fromPCS_(v42, v48, v47, a4);

      if (v49)
      {
LABEL_30:
        if (*v25 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v74 = *v26;
        if (!os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_36;
        }

        v75 = v74;
        v78 = objc_msgSend_participantID(v6, v76, v77);
        *buf = 138412290;
        v105 = v78;
        _os_log_debug_impl(&dword_22506F000, v75, OS_LOG_TYPE_DEBUG, "Removed per-participant PCS from invited PCS for participant %@", buf, 0xCu);

LABEL_34:
        if (*v25 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

LABEL_36:
        v79 = *v26;
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          v95 = v79;
          v98 = objc_msgSend_participantID(v6, v96, v97);
          *buf = 138412290;
          v105 = v98;
          _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Successfully configured PCS data for removed participant %@", buf, 0xCu);
        }

        goto LABEL_38;
      }

      v52 = MEMORY[0x277CBC560];
      v53 = *MEMORY[0x277CBC120];
      v33 = objc_msgSend_participantID(v6, v50, v51);
      objc_msgSend_errorWithDomain_code_format_(v52, v54, v53, 5001, @"Could not remove PPPCS public key from invited PCS for participant %@", v33);
    }

    else
    {
      if (*v25 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v55 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v105 = v6;
        _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, "No participant PCS nor public key found for participant %@. We can't remove them from the share", buf, 0xCu);
      }

      v58 = MEMORY[0x277CBC560];
      v59 = *MEMORY[0x277CBC120];
      v33 = objc_msgSend_participantID(v6, v56, v57);
      objc_msgSend_errorWithDomain_code_format_(v58, v60, v59, 5001, @"No participant PCS or PPPCS public key exists for participant %@", v33);
    }
    v38 = ;
  }

  if (!v38)
  {
    goto LABEL_30;
  }

  if (*v25 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v61 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
  {
    v99 = v61;
    v102 = objc_msgSend_participantID(v6, v100, v101);
    *buf = 138412546;
    v105 = v102;
    v106 = 2112;
    v107 = v38;
    _os_log_error_impl(&dword_22506F000, v99, OS_LOG_TYPE_ERROR, "Couldn't remove per-participant PCS from invited PCS for participant %@: %@", buf, 0x16u);
  }

  v64 = MEMORY[0x277CBC560];
  v65 = *MEMORY[0x277CBC120];
  v66 = objc_msgSend_participantID(v6, v62, v63);
  v68 = objc_msgSend_errorWithDomain_code_format_(v64, v67, v65, 5005, @"Couldn't remove per-participant PCS from invited PCS for participant %@: %@", v66, v38);

  if (!v68)
  {
    goto LABEL_34;
  }

  if (*v25 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v69 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
  {
    v70 = v69;
    v73 = objc_msgSend_participantID(v6, v71, v72);
    *buf = 138412546;
    v105 = v73;
    v106 = 2112;
    v107 = v68;
    _os_log_error_impl(&dword_22506F000, v70, OS_LOG_TYPE_ERROR, "Couldn't configure PCS data for removed participant %@: %@", buf, 0x16u);
  }

LABEL_39:

  v80 = *MEMORY[0x277D85DE8];

  return v68;
}

- (id)_publicKeyForParticipant:(id)a3 error:(id *)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_role(v6, v7, v8) != 1 || !objc_msgSend_isCurrentUser(v6, v9, v10))
  {
    v28 = objc_msgSend_userIdentity(v6, v9, v10);
    isOutOfNetwork = objc_msgSend_isOutOfNetwork(v28, v29, v30);

    v34 = objc_msgSend_userIdentity(v6, v32, v33);
    v37 = v34;
    if (!isOutOfNetwork)
    {
      v59 = objc_msgSend_publicSharingKey(v34, v35, v36);

      goto LABEL_19;
    }

    v38 = objc_msgSend_outOfNetworkPrivateKey(v34, v35, v36);

    if (v38)
    {
      v41 = objc_msgSend_pcsManager(self, v39, v40);
      v44 = objc_msgSend_userIdentity(v6, v42, v43);
      v47 = objc_msgSend_outOfNetworkPrivateKey(v44, v45, v46);
      v50 = objc_msgSend_share(self, v48, v49);
      v53 = objc_msgSend_mutableEncryptedPSK(v50, v51, v52);
      v56 = objc_msgSend_data(v53, v54, v55);
      CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity = objc_msgSend_createCombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity_(v41, v57, v47, v56);

      if (CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity)
      {
        v59 = PCSIdentityCopyExportedPublicKey();
        CFRelease(CombinedIdentityWithOutOfNetworkPrivateKey_publicSharingIdentity);
LABEL_19:
        v67 = 0;
        goto LABEL_20;
      }

LABEL_15:
      v59 = 0;
      goto LABEL_19;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v60 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v84 = v6;
      _os_log_error_impl(&dword_22506F000, v60, OS_LOG_TYPE_ERROR, "No private OON key exists for participant %@. We can't add them to the share", buf, 0xCu);
      if (!a4)
      {
        goto LABEL_15;
      }
    }

    else if (!a4)
    {
      goto LABEL_15;
    }

    v63 = MEMORY[0x277CBC560];
    v64 = *MEMORY[0x277CBC120];
    v65 = objc_msgSend_participantID(v6, v61, v62);
    *a4 = objc_msgSend_errorWithDomain_code_format_(v63, v66, v64, 5005, @"No private OON key exists for participant %@", v65);

    goto LABEL_15;
  }

  v11 = objc_msgSend_operation(self, v9, v10);
  v14 = objc_msgSend_container(v11, v12, v13);
  v17 = objc_msgSend_pcsManager(v14, v15, v16);
  IsManatee = objc_msgSend_currentServiceIsManatee(v17, v18, v19);

  v23 = objc_msgSend_pcsManager(self, v21, v22);
  v25 = v23;
  if (IsManatee)
  {
    v82 = 0;
    v26 = &v82;
    v27 = objc_msgSend_copyPublicKeyForService_withError_(v23, v24, 0, &v82);
  }

  else
  {
    v81 = 0;
    v26 = &v81;
    v27 = objc_msgSend_copyDiversifiedPublicKeyForService_withError_(v23, v24, 2, &v81);
  }

  v59 = v27;
  v67 = *v26;

  if (!v67 && v59)
  {
    goto LABEL_19;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v70 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    if (!a4)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v77 = v70;
  v80 = objc_msgSend_shareID(self, v78, v79);
  *buf = 138412546;
  v84 = v80;
  v85 = 2112;
  v86 = v67;
  _os_log_error_impl(&dword_22506F000, v77, OS_LOG_TYPE_ERROR, "Couldn't create a public key for the owner participant on share %@: %@", buf, 0x16u);

  if (a4)
  {
LABEL_27:
    v73 = MEMORY[0x277CBC560];
    v74 = *MEMORY[0x277CBC120];
    v75 = objc_msgSend_shareID(self, v71, v72);
    *a4 = objc_msgSend_errorWithDomain_code_format_(v73, v76, v74, 5000, @"Couldn't create a public key for the owner participant on share %@", v75);
  }

LABEL_20:

  v68 = *MEMORY[0x277D85DE8];

  return v59;
}

- (BOOL)_addedPrivateParticipantNeedsAManateeInvitation:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_pcsManager(self, v5, v6);
  if (objc_msgSend_currentServiceIsManatee(v7, v8, v9))
  {
    v12 = objc_msgSend_role(v4, v10, v11) != 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_PCSPublicIdentityData)createPublicIdentityFromPublicKeyForParticipant:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v37 = 0;
  v8 = objc_msgSend__publicKeyForParticipant_error_(self, v7, v6, &v37);
  v9 = v37;
  v12 = v9;
  if (!v8 || v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "No public sharing key exists for participant %@. We can't add them to the share", buf, 0xCu);
      if (v12)
      {
LABEL_10:
        v15 = 0;
        if (!a4)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    else if (v12)
    {
      goto LABEL_10;
    }

    v22 = MEMORY[0x277CBC560];
    v23 = *MEMORY[0x277CBC120];
    v24 = objc_msgSend_participantID(v6, v17, v18);
    v12 = objc_msgSend_errorWithDomain_code_format_(v22, v25, v23, 5000, @"No public sharing key exists for participant %@", v24);
    v15 = 0;
    goto LABEL_22;
  }

  v13 = objc_msgSend_pcsManager(self, v10, v11);
  v36 = 0;
  v15 = objc_msgSend_createPublicSharingIdentityFromPublicKey_error_(v13, v14, v8, &v36);
  v12 = v36;

  if (!v12 && v15)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v19 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v26 = v19;
  v29 = objc_msgSend_participantID(v6, v27, v28);
  *buf = 138412802;
  v39 = v29;
  v40 = 2112;
  v41 = v12;
  v42 = 2114;
  v43 = v8;
  _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Couldn't create an identity from the public sharing key for participant %@: %@ (key was %{public}@)", buf, 0x20u);

  if (!v12)
  {
LABEL_21:
    v30 = MEMORY[0x277CBC560];
    v31 = *MEMORY[0x277CBC120];
    v24 = objc_msgSend_participantID(v6, v20, v21);
    v12 = objc_msgSend_errorWithDomain_code_format_(v30, v32, v31, 5000, @"Couldn't create an identity from the public sharing key for participant %@: %@ (key was %@)", v24, 0, v8);
LABEL_22:

    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_16:
  if (!a4)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v12)
  {
    v33 = v12;
    *a4 = v12;
  }

LABEL_25:

  v34 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)invitedPCSPermissionForParticipant:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_role(v3, v4, v5) != 1 && objc_msgSend_role(v3, v6, v7) != 2;

  return v8;
}

- (id)_ensurePrivateParticipant:(id)a3 isInInvitedSharePCS:(_OpaquePCSShareProtection *)a4
{
  v369 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v69 = v6;
    v72 = objc_msgSend_userIdentity(v5, v70, v71);
    if (objc_msgSend_isOutOfNetwork(v72, v73, v74))
    {
      v77 = @"OON ";
    }

    else
    {
      v77 = &stru_28385ED00;
    }

    v78 = objc_msgSend_userIdentity(v5, v75, v76);
    v81 = objc_msgSend_userIdentity(v5, v79, v80);
    v84 = objc_msgSend_publicSharingKey(v81, v82, v83);
    *buf = 138543874;
    v362 = v77;
    v363 = 2112;
    v364 = v78;
    v365 = 2114;
    v366 = v84;
    _os_log_debug_impl(&dword_22506F000, v69, OS_LOG_TYPE_DEBUG, "Ensuring %{public}@share participant with identity %@ and public key %{public}@ is in invitedPCS", buf, 0x20u);
  }

  v9 = objc_msgSend_protectionInfo(v5, v7, v8);
  v12 = objc_msgSend_operation(self, v10, v11);
  v348 = objc_msgSend_invitedPCSPermissionForParticipant_(self, v13, v5);
  v16 = objc_msgSend_userIdentity(v5, v14, v15);
  if (objc_msgSend_isOutOfNetwork(v16, v17, v18))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v22 = objc_msgSend_container(v12, v20, v21);
  v25 = objc_msgSend_options(v22, v23, v24);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v25, v26, v27))
  {
    v30 = objc_msgSend_share(self, v28, v29);
    v33 = objc_msgSend_currentUserParticipant(v30, v31, v32);
    if (objc_msgSend_role(v33, v34, v35) == 1)
    {
      v38 = 4 * (objc_msgSend_role(v5, v36, v37) != 1);
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v360 = 0;
  v40 = objc_msgSend_createPublicIdentityFromPublicKeyForParticipant_error_(self, v39, v5, &v360);
  v41 = v360;
  if (v41 || !v40)
  {
    v67 = 0;
    v68 = 0;
    if (v40)
    {
      goto LABEL_162;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v350 = v12;
    v42 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v211 = v42;
      v214 = objc_msgSend_participantID(v5, v212, v213);
      *buf = 138412546;
      v362 = v214;
      v363 = 2112;
      v364 = v40;
      _os_log_debug_impl(&dword_22506F000, v211, OS_LOG_TYPE_DEBUG, "Created public identity for participant %@: %@", buf, 0x16u);
    }

    if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_role(v5, v43, v44) == 1)
    {
      v345 = v5;
      v45 = v19;
      v46 = v40;
      v47 = v38;
      v48 = objc_msgSend_container(v12, v43, v44);
      v51 = objc_msgSend_deviceContext(v48, v49, v50);
      v54 = objc_msgSend_testDeviceReference(v51, v52, v53);
      if (v54)
      {
        v57 = v54;
        objc_msgSend_unitTestOverrides(v12, v55, v56);
        v59 = v58 = v9;
        v61 = objc_msgSend_objectForKeyedSubscript_(v59, v60, @"NoOwnerPPPCS");

        v9 = v58;
        v38 = v47;
        v40 = v46;
        v19 = v45;
        v5 = v345;
        if (v61)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v12 = v350;
          v62 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v289 = v62;
            v292 = objc_msgSend_shareID(self, v290, v291);
            *buf = 138412290;
            v362 = v292;
            _os_log_debug_impl(&dword_22506F000, v289, OS_LOG_TYPE_DEBUG, "Skipping PPPCS for the owner on share %@ because the unit tests told us to do it.", buf, 0xCu);
          }

          if (objc_msgSend_isCloudDocsContainer(self, v63, v64))
          {
            v41 = 0;
          }

          else
          {
            v215 = objc_msgSend_pcsManager(self, v65, v66);
            v217 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(v215, v216, v40, a4, v348);

            if (v217)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v218 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                v334 = v218;
                v337 = objc_msgSend_participantID(v345, v335, v336);
                *buf = 138412546;
                v362 = v337;
                v363 = 2112;
                v364 = v217;
                _os_log_error_impl(&dword_22506F000, v334, OS_LOG_TYPE_ERROR, "Couldn't add per-participant PCS to invited PCS for participant %@: %@", buf, 0x16u);
              }

              v221 = MEMORY[0x277CBC560];
              v222 = *MEMORY[0x277CBC120];
              v223 = objc_msgSend_participantID(v345, v219, v220);
              v41 = objc_msgSend_errorWithDomain_code_format_(v221, v224, v222, 5005, @"Couldn't add per-participant PCS to invited PCS for participant %@: %@", v223, v217);

              v12 = v350;
            }

            else
            {
              v41 = 0;
            }

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v255 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v302 = v255;
              v305 = objc_msgSend_participantID(v345, v303, v304);
              *buf = 138412290;
              v362 = v305;
              _os_log_debug_impl(&dword_22506F000, v302, OS_LOG_TYPE_DEBUG, "Added owner public key to invited PCS for participant %@", buf, 0xCu);
            }
          }

          v67 = 0;
          v68 = 0;
          goto LABEL_162;
        }
      }

      else
      {

        v40 = v46;
        v19 = v45;
        v5 = v345;
      }
    }

    if (v9 && objc_msgSend_isCurrentUser(v5, v43, v44))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v85 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v85, OS_LOG_TYPE_DEBUG, "Using the self participant PCS...", buf, 2u);
      }

      selfParticipantPCS = self->_selfParticipantPCS;
      if (selfParticipantPCS)
      {
        CFRetain(self->_selfParticipantPCS);
        v89 = 0;
        v68 = 0;
        v346 = 0;
LABEL_92:
        v163 = objc_msgSend_pcsManager(self, v87, v88);
        v357 = 0;
        v165 = objc_msgSend_addSharePCS_toRecordPCS_permission_error_(v163, v164, selfParticipantPCS, a4, v348, &v357);
        v41 = v357;

        v166 = *MEMORY[0x277CBC878];
        v167 = *MEMORY[0x277CBC880];
        if (v165)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v166);
          }

          v12 = v350;
          v168 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v263 = v168;
            v266 = objc_msgSend_participantID(v5, v264, v265);
            CKStringFromSharePermission(v348);
            v267 = v354 = v9;
            *buf = 138412546;
            v362 = v266;
            v363 = 2114;
            v364 = v267;
            _os_log_debug_impl(&dword_22506F000, v263, OS_LOG_TYPE_DEBUG, "Added per-participant PCS to invited PCS for participant %@ with permission %{public}@", buf, 0x16u);

            v12 = v350;
            v9 = v354;

            if (v89)
            {
              goto LABEL_97;
            }
          }

          else if (v89)
          {
LABEL_97:
            if (objc_msgSend__addedPrivateParticipantNeedsAManateeInvitation_(self, v169, v5))
            {
              if (!v68)
              {
                v342 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v170, v171);
                objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v342, v343, a2, self, @"CKDModifyShareHandler.m", 1406, @"Should never get here with a nil manateeInvitationData");
              }

              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v352 = v9;
              v172 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                v321 = v172;
                v349 = objc_msgSend_share(self, v322, v323);
                v326 = objc_msgSend_URL(v349, v324, v325);
                v329 = objc_msgSend_participantID(v5, v327, v328);
                *buf = 138413058;
                v362 = v5;
                v363 = 2112;
                v364 = v68;
                v365 = 2112;
                v366 = v326;
                v367 = 2112;
                v368 = v329;
                _os_log_debug_impl(&dword_22506F000, v321, OS_LOG_TYPE_DEBUG, "Creating invitation token for participant %@. Invitation data: %@, shareURL %@, participantID: %@", buf, 0x2Au);
              }

              v173 = objc_alloc(MEMORY[0x277CBC2C0]);
              v176 = objc_msgSend_share(self, v174, v175);
              v179 = objc_msgSend_URL(v176, v177, v178);
              v182 = objc_msgSend_participantID(v5, v180, v181);
              v184 = objc_msgSend_initWithSharingInvitationData_shareURL_participantID_(v173, v183, v68, v179, v182);
              objc_msgSend_setInvitationToken_(v5, v185, v184);

              v188 = objc_msgSend_pcsManager(self, v186, v187);
              v356 = v41;
              v190 = objc_msgSend_publicKeyDataFromPCS_error_(v188, v189, selfParticipantPCS, &v356);
              v191 = v356;

              objc_msgSend_setProtectionInfoPublicKey_(v5, v192, v190);
              v195 = objc_msgSend_pcsManager(self, v193, v194);
              v197 = objc_msgSend_publicKeyVersionForServiceType_(v195, v196, 0);
              v200 = objc_msgSend_userIdentity(v5, v198, v199);
              objc_msgSend_setPublicKeyVersion_(v200, v201, v197);

              objc_msgSend_setMutableInvitationTokenStatus_(v5, v202, 1);
              v67 = 0;
              v41 = v191;
              v9 = v352;
            }

            else
            {
              v242 = v9;
              v243 = objc_msgSend_pcsManager(self, v170, v171);
              v355 = v41;
              v67 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v243, v244, selfParticipantPCS, 4, &v355);
              v245 = v355;

              if (v245 || !v67)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v256 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  v338 = v256;
                  v341 = objc_msgSend_participantID(v5, v339, v340);
                  *buf = 138412546;
                  v362 = v341;
                  v363 = 2112;
                  v364 = v245;
                  _os_log_error_impl(&dword_22506F000, v338, OS_LOG_TYPE_ERROR, "Couldn't serialize per-participant PCS for participant %@: %@", buf, 0x16u);
                }

                v259 = MEMORY[0x277CBC560];
                v260 = *MEMORY[0x277CBC120];
                v261 = objc_msgSend_participantID(v5, v257, v258);
                v41 = objc_msgSend_errorWithDomain_code_format_(v259, v262, v260, 5005, @"Couldn't serialize per-participant PCS for participant %@: %@", v261, v245);

                v9 = v242;
              }

              else
              {
                objc_msgSend_setProtectionInfo_(v5, v246, v67);
                v9 = v242;
                if (objc_msgSend_isCurrentUser(v5, v247, v248))
                {
                  v249 = self->_selfParticipantPCS;
                  v12 = v350;
                  if (v249)
                  {
                    CFRelease(v249);
                  }

                  self->_selfParticipantPCS = selfParticipantPCS;
                  CFRetain(selfParticipantPCS);
                  v41 = 0;
                  goto LABEL_159;
                }

                v41 = 0;
              }
            }

            v12 = v350;
LABEL_159:
            selfPPPCSOwnerIdentity = v346;
LABEL_160:
            CFRelease(v40);
            v40 = selfParticipantPCS;
            if (selfPPPCSOwnerIdentity)
            {
LABEL_161:
              CFRelease(selfPPPCSOwnerIdentity);
              v40 = selfParticipantPCS;
            }

LABEL_162:
            CFRelease(v40);
            goto LABEL_163;
          }

          v67 = 0;
          goto LABEL_159;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v166);
        }

        selfPPPCSOwnerIdentity = v346;
        v203 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v281 = v203;
          v284 = objc_msgSend_participantID(v5, v282, v283);
          *buf = 138412546;
          v362 = v284;
          v363 = 2112;
          v364 = v41;
          _os_log_error_impl(&dword_22506F000, v281, OS_LOG_TYPE_ERROR, "Couldn't add per-participant PCS to invited PCS for participant %@: %@", buf, 0x16u);
        }

        v206 = MEMORY[0x277CBC560];
        v207 = *MEMORY[0x277CBC120];
        v208 = objc_msgSend_participantID(v5, v204, v205);
        v210 = objc_msgSend_errorWithDomain_code_format_(v206, v209, v207, 5005, @"Couldn't add per-participant PCS to invited PCS for participant %@: %@", v208, v41);

        v67 = 0;
        v41 = v210;
LABEL_110:
        v12 = v350;
        goto LABEL_160;
      }
    }

    v90 = objc_msgSend_pcsManager(self, v43, v44);
    v359 = 0;
    selfParticipantPCS = objc_msgSend_createEmptySharePCSOfType_error_(v90, v91, 4, &v359);
    v92 = v359;

    v93 = *MEMORY[0x277CBC878];
    v94 = *MEMORY[0x277CBC880];
    if (!v92 && selfParticipantPCS)
    {
      if (v94 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v93);
      }

      v95 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v362 = v5;
        v363 = 2112;
        v364 = selfParticipantPCS;
        _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Created a new per-participant PCS blob for participant %@: %@", buf, 0x16u);
      }

      if (objc_msgSend_role(v5, v96, v97) == 1 && (objc_msgSend_pcsManager(self, v98, v99), v100 = objc_claimAutoreleasedReturnValue(), IsManatee = objc_msgSend_currentServiceIsManatee(v100, v101, v102), v100, IsManatee))
      {
        v105 = v5;
        v106 = v19;
        selfPPPCSOwnerIdentity = v40;
        v108 = v38;
        v109 = objc_msgSend_pcsManager(self, v98, v104);
        v111 = objc_msgSend_copyPublicAuthorshipIdentityFromPCS_(v109, v110, a4);

        if (!v111)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v12 = v350;
          v5 = v105;
          v250 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v330 = v250;
            v333 = objc_msgSend_participantID(v105, v331, v332);
            *buf = 138412290;
            v362 = v333;
            _os_log_debug_impl(&dword_22506F000, v330, OS_LOG_TYPE_DEBUG, "Couldn't get the share authorship identity for participant %@", buf, 0xCu);
          }

          v41 = 0;
          v67 = 0;
          v68 = 0;
          goto LABEL_161;
        }

        v114 = objc_msgSend_pcsManager(self, v112, v113);
        v346 = v111;
        objc_msgSend_setOwnerIdentity_onPCS_(v114, v115, v111, selfParticipantPCS);

        v38 = v108;
        v40 = selfPPPCSOwnerIdentity;
        v19 = v106;
        v5 = v105;
        v117 = objc_msgSend__addedPrivateParticipantNeedsAManateeInvitation_(self, v116, v105);
      }

      else
      {
        v346 = 0;
        v117 = objc_msgSend__addedPrivateParticipantNeedsAManateeInvitation_(self, v98, v5);
      }

      if (!v117)
      {
        v136 = objc_msgSend_pcsManager(self, v118, v119);
        v138 = objc_msgSend_addPublicIdentity_toSharePCS_permission_(v136, v137, v40, selfParticipantPCS, v38 | v19);

        v139 = *MEMORY[0x277CBC878];
        v140 = *MEMORY[0x277CBC880];
        if (v138)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v139);
          }

          selfPPPCSOwnerIdentity = v346;
          v141 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v285 = v141;
            v288 = objc_msgSend_participantID(v5, v286, v287);
            *buf = 138412546;
            v362 = v288;
            v363 = 2112;
            v364 = v138;
            _os_log_error_impl(&dword_22506F000, v285, OS_LOG_TYPE_ERROR, "Couldn't add public identity to per-participant PCS for participant %@: %@", buf, 0x16u);
          }

          v144 = MEMORY[0x277CBC560];
          v145 = *MEMORY[0x277CBC120];
          v146 = objc_msgSend_participantID(v5, v142, v143);
          v41 = objc_msgSend_errorWithDomain_code_format_(v144, v147, v145, 5005, @"Couldn't add public identity to per-participant PCS for participant %@: %@", v146, v138);

          v68 = 0;
          v67 = 0;
          goto LABEL_110;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v139);
        }

        v162 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v297 = v162;
          v300 = objc_msgSend_participantID(v5, v298, v299);
          v301 = CKStringFromSharePermission(v19 | v38);
          *buf = 138412546;
          v362 = v300;
          v363 = 2114;
          v364 = v301;
          _os_log_debug_impl(&dword_22506F000, v297, OS_LOG_TYPE_DEBUG, "Added participant's public identity to their per-participant blob for participant %@ with permission %{public}@", buf, 0x16u);
        }

        v68 = 0;
        goto LABEL_91;
      }

      v127 = objc_msgSend_share(self, v118, v119);
      v130 = objc_msgSend_currentUserParticipant(v127, v128, v129);

      if (objc_msgSend_role(v130, v131, v132) != 2)
      {
        selfPPPCSOwnerIdentity = v346;
        if (!v346)
        {
          v148 = objc_msgSend_pcsManager(self, v133, v134);
          selfPPPCSOwnerIdentity = objc_msgSend_copyPublicAuthorshipIdentityFromPCS_(v148, v149, a4);

          v12 = v350;
          if (!selfPPPCSOwnerIdentity)
          {
            goto LABEL_122;
          }
        }

LABEL_78:
        v150 = objc_msgSend_userIdentity(v5, v133, v134);
        v153 = objc_msgSend_publicSharingKey(v150, v151, v152);

        if (!v153)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v225 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v306 = v225;
            v309 = objc_msgSend_participantID(v5, v307, v308);
            *buf = 138412290;
            v362 = v309;
            _os_log_error_impl(&dword_22506F000, v306, OS_LOG_TYPE_ERROR, "Cannot add participant %@ with missing public key to share", buf, 0xCu);
          }

          v228 = MEMORY[0x277CBC560];
          v229 = *MEMORY[0x277CBC120];
          v230 = objc_msgSend_participantID(v5, v226, v227);
          v41 = objc_msgSend_errorWithDomain_code_format_(v228, v231, v229, 8014, @"Cannot add participant %@ with missing public key to share", v230);

          v12 = v350;
          goto LABEL_127;
        }

        v344 = v130;
        v154 = objc_alloc(MEMORY[0x277D42F00]);
        v156 = objc_msgSend_initWithShareProtectionRef_(v154, v155, selfParticipantPCS);
        v358 = 0;
        v68 = objc_msgSend_sharingRequestDataForIdentity_owner_flags_error_(v156, v157, v40, selfPPPCSOwnerIdentity, v38, &v358);
        v158 = v358;
        v159 = *MEMORY[0x277CBC878];
        v160 = *MEMORY[0x277CBC880];
        if (v158 || !v68)
        {
          if (v160 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v159);
          }

          v353 = v156;
          v233 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v314 = v233;
            v317 = objc_msgSend_participantID(v5, v315, v316);
            *buf = 138412546;
            v362 = v317;
            v363 = 2112;
            v364 = v158;
            _os_log_error_impl(&dword_22506F000, v314, OS_LOG_TYPE_ERROR, "Couldn't create manatee sharing invitation data for participant %@: %@", buf, 0x16u);
          }

          v236 = MEMORY[0x277CBC560];
          v237 = *MEMORY[0x277CBC120];
          v238 = objc_msgSend_participantID(v5, v234, v235);
          v240 = objc_msgSend_errorWithDomain_code_format_(v236, v239, v237, 5005, @"Couldn't create a manatee sharing invitation data for participant %@: %@", v238, v158);
          v241 = v158;
          v41 = v240;

          CFRelease(v40);
          v67 = 0;
          v12 = v350;
          goto LABEL_161;
        }

        if (v160 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v159);
        }

        v346 = selfPPPCSOwnerIdentity;
        v161 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v318 = v156;
          v319 = v161;
          v320 = CKStringFromSharePermission(v38);
          *buf = 138412802;
          v362 = v5;
          v363 = 2114;
          v364 = v320;
          v365 = 2112;
          v366 = v68;
          _os_log_debug_impl(&dword_22506F000, v319, OS_LOG_TYPE_DEBUG, "Created a new manatee sharing invitation blob for participant %@ with permission %{public}@: %@", buf, 0x20u);

          v156 = v318;
        }

LABEL_91:
        v89 = 1;
        goto LABEL_92;
      }

      v12 = v350;
      selfPPPCSOwnerIdentity = v346;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v135 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v293 = v135;
        v296 = objc_msgSend_participantID(v130, v294, v295);
        *buf = 138412290;
        v362 = v296;
        _os_log_debug_impl(&dword_22506F000, v293, OS_LOG_TYPE_DEBUG, "Admin %@ using the owner identity of self PPPCS to setup new participant", buf, 0xCu);

        v12 = v350;
        if (v346)
        {
LABEL_68:
          CFRetain(selfPPPCSOwnerIdentity);
          if (!selfPPPCSOwnerIdentity)
          {
LABEL_122:
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v232 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v310 = v232;
              v313 = objc_msgSend_participantID(v5, v311, v312);
              *buf = 138412290;
              v362 = v313;
              _os_log_debug_impl(&dword_22506F000, v310, OS_LOG_TYPE_DEBUG, "Couldn't get the share authorship identity for participant %@", buf, 0xCu);
            }

            selfPPPCSOwnerIdentity = 0;
            v41 = 0;
LABEL_127:

            v68 = 0;
            v67 = 0;
            goto LABEL_160;
          }

          goto LABEL_78;
        }
      }

      else if (v346)
      {
        goto LABEL_68;
      }

      selfPPPCSOwnerIdentity = self->_selfPPPCSOwnerIdentity;
      goto LABEL_68;
    }

    if (v94 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v93);
    }

    v120 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v251 = v120;
      v254 = objc_msgSend_participantID(v5, v252, v253);
      *buf = 138412546;
      v362 = v254;
      v363 = 2112;
      v364 = v92;
      _os_log_error_impl(&dword_22506F000, v251, OS_LOG_TYPE_ERROR, "Couldn't create a per-participant PCS for participant %@: %@", buf, 0x16u);
    }

    v123 = MEMORY[0x277CBC560];
    v124 = *MEMORY[0x277CBC120];
    v125 = objc_msgSend_participantID(v5, v121, v122);
    v41 = objc_msgSend_errorWithDomain_code_format_(v123, v126, v124, 5005, @"Couldn't create a per-participant PCS for participant %@: %@", v125, v92);

    CFRelease(v40);
    v67 = 0;
    v68 = 0;
    v40 = selfParticipantPCS;
    v12 = v350;
    if (selfParticipantPCS)
    {
      goto LABEL_162;
    }
  }

LABEL_163:
  v268 = *MEMORY[0x277CBC878];
  v269 = *MEMORY[0x277CBC880];
  if (v41)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v268);
    }

    v270 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v271 = v270;
      v274 = objc_msgSend_participantID(v5, v272, v273);
      *buf = 138412546;
      v362 = v274;
      v363 = 2112;
      v364 = v41;
      _os_log_error_impl(&dword_22506F000, v271, OS_LOG_TYPE_ERROR, "Couldn't set up PCS data for new participant %@: %@", buf, 0x16u);
LABEL_173:
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v268);
    }

    v275 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v271 = v275;
      v274 = objc_msgSend_participantID(v5, v279, v280);
      *buf = 138412290;
      v362 = v274;
      _os_log_debug_impl(&dword_22506F000, v271, OS_LOG_TYPE_DEBUG, "Successfully set up PCS data for new participant %@", buf, 0xCu);
      goto LABEL_173;
    }
  }

  v276 = v41;

  v277 = *MEMORY[0x277D85DE8];
  return v41;
}

- (id)_removePublicKey:(id)a3 fromInvitedPCS:(_OpaquePCSShareProtection *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_pcsManager(self, v7, v8);
  v23 = 0;
  v11 = objc_msgSend_createPublicSharingIdentityFromPublicKey_error_(v9, v10, v6, &v23);
  v12 = v23;

  if (v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11 == 0;
  }

  if (!v15)
  {
    v18 = objc_msgSend_pcsManager(self, v13, v14);
    v12 = objc_msgSend_removePublicIdentity_fromSharePCS_(v18, v19, v11, a4);

    if (v12)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v25 = v6;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Couldn't remove public key %{public}@ from the invited pcs: %@", buf, 0x16u);
      }
    }

LABEL_19:
    CFRelease(v11);
    goto LABEL_20;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v25 = v6;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Couldn't create an identity from the public sharing key %{public}@: %@", buf, 0x16u);
  }

  if (!v12)
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5000, @"Couldn't create an identity from the public sharing key %@", v6);
  }

  if (v11)
  {
    goto LABEL_19;
  }

LABEL_20:

  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)clearProtectionDataForRecord
{
  v75 = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = CKDModifyShareHandler;
  [(CKDModifyRecordHandler *)&v72 clearProtectionDataForRecord];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v6 = v3;
    v9 = objc_msgSend_shareID(self, v7, v8);
    *buf = 138412290;
    v74 = v9;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Clearing share protection data for share %@", buf, 0xCu);
  }

  v10 = objc_msgSend_share(self, v4, v5);
  objc_msgSend_setPrivatePCS_(v10, v11, 0);

  v14 = objc_msgSend_share(self, v12, v13);
  objc_msgSend_setInvitedProtectionData_(v14, v15, 0);

  v18 = objc_msgSend_share(self, v16, v17);
  objc_msgSend_setInvitedProtectionEtag_(v18, v19, 0);

  v22 = objc_msgSend_share(self, v20, v21);
  objc_msgSend_setPublicPCS_(v22, v23, 0);

  v26 = objc_msgSend_share(self, v24, v25);
  objc_msgSend_setPublicProtectionData_(v26, v27, 0);

  v30 = objc_msgSend_share(self, v28, v29);
  objc_msgSend_setPublicProtectionEtag_(v30, v31, 0);

  v34 = objc_msgSend_share(self, v32, v33);
  objc_msgSend_setPreviousProtectionEtag_(v34, v35, 0);

  v38 = objc_msgSend_share(self, v36, v37);
  objc_msgSend_setPreviousPublicProtectionEtag_(v38, v39, 0);

  objc_msgSend_setSharePCSData_(self, v40, 0);
  objc_msgSend_setSharedZonePCSData_(self, v41, 0);
  v44 = objc_msgSend_operation(self, v42, v43);
  v47 = objc_msgSend_shareID(self, v45, v46);
  objc_msgSend_setPCSData_forFetchedShareID_(v44, v48, 0, v47);

  v51 = objc_msgSend_share(self, v49, v50);
  v54 = objc_msgSend_participants(v51, v52, v53);
  v56 = objc_msgSend_CKCompactMap_(v54, v55, &unk_28385D700);

  v59 = objc_msgSend_container(v44, v57, v58);
  v62 = objc_msgSend_backgroundPublicIdentityLookupService(v59, v60, v61);

  objc_msgSend_removeCacheForLookupInfos_(v62, v63, v56);
  v66 = objc_msgSend_container(v44, v64, v65);
  v69 = objc_msgSend_foregroundPublicIdentityLookupService(v66, v67, v68);

  objc_msgSend_removeCacheForLookupInfos_(v69, v70, v56);
  v71 = *MEMORY[0x277D85DE8];
}

- (void)setServerRecord:(id)a3
{
  v175 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_operation(self, v6, v7);
  if (!v5)
  {
    goto LABEL_45;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v157 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v157, v158, a2, self, @"CKDModifyShareHandler.m", 1507, @"Share handler called back with a CKRecord instead of a CKShare");
  }

  v11 = v5;
  v14 = objc_msgSend_mutableEncryptedPSK(v11, v12, v13);

  if (v14)
  {
    v17 = objc_alloc(MEMORY[0x277CBC2E8]);
    v20 = objc_msgSend_mutableEncryptedPSK(v11, v18, v19);
    v23 = objc_msgSend_data(v20, v21, v22);
    v25 = objc_msgSend_initWithData_(v17, v24, v23);
    v28 = objc_msgSend_share(self, v26, v27);
    objc_msgSend_setMutableEncryptedPSK_(v28, v29, v25);
LABEL_8:

    goto LABEL_9;
  }

  v30 = objc_msgSend_share(self, v15, v16);
  v33 = objc_msgSend_mutableEncryptedPSK(v30, v31, v32);

  if (v33)
  {
    v36 = objc_alloc(MEMORY[0x277CBC2E8]);
    v20 = objc_msgSend_share(self, v37, v38);
    v23 = objc_msgSend_mutableEncryptedPSK(v20, v39, v40);
    v25 = objc_msgSend_data(v23, v41, v42);
    v28 = objc_msgSend_initWithData_(v36, v43, v25);
    objc_msgSend_setMutableEncryptedPSK_(v11, v44, v28);
    goto LABEL_8;
  }

LABEL_9:
  v160 = v8;
  v161 = v5;
  v162 = v11;
  v45 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v11, v34, v35);
  v159 = self;
  v48 = objc_msgSend_share(self, v46, v47);
  v51 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v48, v49, v50);

  v52 = MEMORY[0x277CBEB98];
  v55 = objc_msgSend_allKeys(v45, v53, v54);
  v58 = objc_msgSend_allKeys(v51, v56, v57);
  v60 = objc_msgSend_arrayByAddingObjectsFromArray_(v55, v59, v58);
  v62 = objc_msgSend_setWithArray_(v52, v61, v60);

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  obj = v62;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v169, v174, 16);
  if (!v64)
  {
    goto LABEL_26;
  }

  v66 = v64;
  v67 = *v170;
  do
  {
    for (i = 0; i != v66; ++i)
    {
      if (*v170 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v69 = *(*(&v169 + 1) + 8 * i);
      v70 = objc_msgSend_objectForKeyedSubscript_(v45, v65, v69);
      v72 = objc_msgSend_objectForKeyedSubscript_(v51, v71, v69);
      v75 = v72;
      if (v72)
      {
        if (v70)
        {
          v76 = objc_msgSend_encryptedOneTimeFullToken(v70, v73, v74);
          v79 = objc_msgSend_data(v76, v77, v78);

          if (v79)
          {
            v82 = objc_alloc(MEMORY[0x277CBC2E8]);
            v85 = objc_msgSend_encryptedOneTimeFullToken(v70, v83, v84);
            v88 = objc_msgSend_data(v85, v86, v87);
            v90 = objc_msgSend_initWithData_(v82, v89, v88);
            objc_msgSend_setEncryptedOneTimeFullToken_(v75, v91, v90);
          }

          else
          {
            v94 = objc_msgSend_encryptedOneTimeFullToken(v75, v80, v81);
            v97 = objc_msgSend_data(v94, v95, v96);

            if (!v97)
            {
              goto LABEL_24;
            }

            v98 = objc_alloc(MEMORY[0x277CBC2E8]);
            v85 = objc_msgSend_encryptedOneTimeFullToken(v75, v99, v100);
            v88 = objc_msgSend_data(v85, v101, v102);
            v90 = objc_msgSend_initWithData_(v98, v103, v88);
            objc_msgSend_setEncryptedOneTimeFullToken_(v70, v104, v90);
          }
        }

        else
        {
          v85 = objc_msgSend_copy(v72, v73, v74);
          objc_msgSend_setObject_forKeyedSubscript_(v45, v93, v85, v69);
        }
      }

      else
      {
        v85 = objc_msgSend_copy(v70, v73, v74);
        objc_msgSend_setObject_forKeyedSubscript_(v51, v92, v85, v69);
      }

LABEL_24:
    }

    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v169, v174, 16);
  }

  while (v66);
LABEL_26:

  if (objc_msgSend_count(v45, v105, v106))
  {
    objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v162, v107, v45);
  }

  self = v159;
  if (objc_msgSend_count(v51, v107, v108))
  {
    v111 = objc_msgSend_share(v159, v109, v110);
    objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v111, v112, v51);
  }

  v113 = objc_msgSend_etag(v162, v109, v110);

  if (v113)
  {
    v116 = objc_msgSend_etag(v162, v114, v115);
    v119 = objc_msgSend_share(v159, v117, v118);
    objc_msgSend_setEtag_(v119, v120, v116);
    goto LABEL_34;
  }

  v121 = objc_msgSend_share(v159, v114, v115);
  v124 = objc_msgSend_etag(v121, v122, v123);

  if (v124)
  {
    v116 = objc_msgSend_share(v159, v125, v126);
    v119 = objc_msgSend_etag(v116, v127, v128);
    objc_msgSend_setEtag_(v162, v129, v119);
LABEL_34:
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v130 = objc_msgSend_participants(v162, v125, v126);
  v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v131, &v165, v173, 16);
  if (v132)
  {
    v135 = v132;
    v136 = *v166;
    do
    {
      for (j = 0; j != v135; ++j)
      {
        if (*v166 != v136)
        {
          objc_enumerationMutation(v130);
        }

        v138 = *(*(&v165 + 1) + 8 * j);
        v139 = objc_msgSend_share(v159, v133, v134);
        v141 = objc_msgSend__knownParticipantEqualToParticipant_(v139, v140, v138);

        v144 = objc_msgSend_invitationToken(v141, v142, v143);

        if (v144)
        {
          v147 = objc_msgSend_invitationToken(v141, v145, v146);
          objc_msgSend_setInvitationToken_(v138, v148, v147);
        }
      }

      v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v133, &v165, v173, 16);
    }

    while (v135);
  }

  v8 = v160;
  v151 = objc_msgSend_container(v160, v149, v150);
  v154 = objc_msgSend_databaseScope(v160, v152, v153);
  objc_msgSend__prepPCSDataUsingPreDecryptedPCSOnlyWithContainer_databaseScope_(v162, v155, v151, v154);

  v5 = v161;
LABEL_45:
  v164.receiver = self;
  v164.super_class = CKDModifyShareHandler;
  [(CKDModifyRecordHandler *)&v164 setServerRecord:v5];

  v156 = *MEMORY[0x277D85DE8];
}

- (void)savePCSDataToCache
{
  v4 = objc_msgSend_operation(self, a2, v2);
  v7 = objc_msgSend_record(self, v5, v6);
  v10 = objc_msgSend_etag(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_record(self, v11, v12);
    v16 = objc_msgSend_etag(v13, v14, v15);
    v19 = objc_msgSend_sharePCSData(self, v17, v18);
    objc_msgSend_setShareEtag_(v19, v20, v16);
  }

  v21 = objc_msgSend_sharePCSData(self, v11, v12);
  v24 = objc_msgSend_shareID(self, v22, v23);
  objc_msgSend_setPCSData_forFetchedShareID_(v4, v25, v21, v24);

  v28 = objc_msgSend_sharedZonePCSData(self, v26, v27);

  if (v28)
  {
    v31 = objc_msgSend_sharedZonePCSData(self, v29, v30);
    v34 = objc_msgSend_shareID(self, v32, v33);
    v37 = objc_msgSend_zoneID(v34, v35, v36);
    objc_msgSend_setPCSData_forFetchedZoneID_(v4, v38, v31, v37);
  }

  v39.receiver = self;
  v39.super_class = CKDModifyShareHandler;
  [(CKDModifyRecordHandler *)&v39 savePCSDataToCache];
}

- (void)updateParticipantsForFetchedShare:(id)a3 error:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v11 = v8;
  if (v8)
  {
    if (objc_msgSend_CKIsObjectNotFoundError(v8, v9, v10))
    {
      objc_msgSend_clearProtectionDataForRecord(self, v12, v13);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = objc_msgSend_share(self, v14, v15, 0);
      v19 = objc_msgSend_addedParticipants(v16, v17, v18);

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v39, v43, 16);
      if (v21)
      {
        v23 = v21;
        v24 = *v40;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v19);
            }

            objc_msgSend_setProtectionInfo_(*(*(&v39 + 1) + 8 * i), v22, 0);
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v39, v43, 16);
        }

        while (v23);
      }

      objc_msgSend_setState_(self, v26, 1);
      objc_msgSend_setError_(self, v27, 0);
    }

    else
    {
      objc_msgSend_setState_(self, v12, 12);
      objc_msgSend_setError_(self, v35, v11);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v28, v29);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKDModifyShareHandler.m", 1592, @"Share handler called back with a CKRecord instead of a CKShare");
    }

    v30 = objc_msgSend_share(self, v28, v29);
    v32 = objc_msgSend_updateFromServerShare_(v30, v31, v7);

    if (v32)
    {
      objc_msgSend_setState_(self, v33, 12);
      objc_msgSend_setError_(self, v34, v32);
    }

    else
    {
      objc_msgSend_setState_(self, v33, 1);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  selfPPPCSOwnerIdentity = self->_selfPPPCSOwnerIdentity;
  if (selfPPPCSOwnerIdentity)
  {
    CFRelease(selfPPPCSOwnerIdentity);
    self->_selfPPPCSOwnerIdentity = 0;
  }

  selfParticipantPCS = self->_selfParticipantPCS;
  if (selfParticipantPCS)
  {
    CFRelease(selfParticipantPCS);
    self->_selfParticipantPCS = 0;
  }

  v5.receiver = self;
  v5.super_class = CKDModifyShareHandler;
  [(CKDModifyShareHandler *)&v5 dealloc];
}

@end