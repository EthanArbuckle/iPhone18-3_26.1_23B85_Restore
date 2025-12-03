@interface CKDModifyRecordHandler
+ (id)_stringForState:(unint64_t)state;
+ (id)modifyHandlerForDeleteWithRecordID:(id)d operation:(id)operation;
+ (id)modifyHandlerWithRecord:(id)record operation:(id)operation;
- (BOOL)_canSetPreviousProtectionEtag;
- (BOOL)_createPublicSharingKeyWithError:(id *)error;
- (BOOL)_encryptMergeableDeltasInRecordValueStore:(id)store shareProtection:(_OpaquePCSShareProtection *)protection;
- (BOOL)_needsSigningPCS;
- (BOOL)_prepareAsset:(id)asset recordKey:(id)key mergeableDeltaID:(id)d record:(id)record error:(id *)error;
- (BOOL)_wrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s forField:(id)field recordID:(id)d;
- (BOOL)_wrapEncryptedDataForRecordValueStore:(id)store withPCS:(_OpaquePCSShareProtection *)s;
- (BOOL)_wrapEncryptedDataOnRecord:(id)record;
- (BOOL)requiresPCS;
- (CKDModifyRecordsOperation)operation;
- (CKDPCSCache)pcsCache;
- (CKDPCSManager)pcsManager;
- (CKRecordID)recordID;
- (NSString)etag;
- (id)_addParentPCS:(id)s toRecordPCS:(id)cS;
- (id)_initCommonWithOperation:(id)operation;
- (id)_initForDeleteWithRecordID:(id)d operation:(id)operation;
- (id)_initWithRecord:(id)record operation:(id)operation;
- (id)assetsWhichNeedRecordFetch;
- (id)description;
- (id)prepareAssetsForUploadWithError:(id *)error;
- (id)sideEffectRecordIDs;
- (void)_clearRecordProtectionDataForRecord;
- (void)_continueCreateAndSavePCSWithZonePCS:(id)s sharePCS:(id)cS;
- (void)_createAndSavePCS;
- (void)_fetchExistingPCSForProvidedPCSData:(id)data;
- (void)_fetchPCSData;
- (void)_fetchParentPCSForData:(id)data withError:(id)error;
- (void)_fetchParentPCSForID:(id)d withCompletionHandler:(id)handler;
- (void)_fetchSharePCSForID:(id)d withCompletionHandler:(id)handler;
- (void)_fetchSigningPCSForRecordToDelete;
- (void)_handlePCSData:(id)data withError:(id)error;
- (void)_keyRollIfNeededForRecordPCSData:(id)data withError:(id)error;
- (void)_loadPCSData;
- (void)_pretendToWrapEncryptedDataForRecordValueStore:(id)store;
- (void)_reallyAddShareToPCSData:(id)data withError:(id)error;
- (void)_reallyFetchPCSDataWithOptions:(unint64_t)options;
- (void)_setSigningPCSIdentity:(id)identity;
- (void)_unwrapRecordPCSForParent;
- (void)_unwrapRecordPCSForZone;
- (void)_unwrapRecordPCSWithShareID:(id)d;
- (void)fetchRecordPCSData;
- (void)fetchSharePCSData;
- (void)noteSideEffectRecordPendingDelete:(id)delete;
- (void)prepareForSaveWithCompletionHandler:(id)handler;
- (void)prepareStreamingAsset:(id)asset forUploadWithRecord:(id)record;
- (void)savePCSDataToCache;
- (void)setServerRecord:(id)record;
@end

@implementation CKDModifyRecordHandler

- (id)_initCommonWithOperation:(id)operation
{
  operationCopy = operation;
  v10.receiver = self;
  v10.super_class = CKDModifyRecordHandler;
  v5 = [(CKDModifyRecordHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_operation, operationCopy);
    v7 = dispatch_group_create();
    pcsGroup = v6->_pcsGroup;
    v6->_pcsGroup = v7;

    v6->_saveCompletionBlockCalled = 0;
  }

  return v6;
}

- (id)_initWithRecord:(id)record operation:(id)operation
{
  recordCopy = record;
  inited = objc_msgSend__initCommonWithOperation_(self, v8, operation);
  v10 = inited;
  if (inited)
  {
    objc_storeStrong((inited + 32), record);
    *(v10 + 8) = 0;
    *(v10 + 88) = 0;
  }

  return v10;
}

- (id)_initForDeleteWithRecordID:(id)d operation:(id)operation
{
  dCopy = d;
  inited = objc_msgSend__initCommonWithOperation_(self, v8, operation);
  v10 = inited;
  if (inited)
  {
    objc_storeStrong((inited + 40), d);
    *(v10 + 8) = 1;
    v13 = objc_msgSend__needsSigningPCS(v10, v11, v12);
    v14 = 5;
    if (v13)
    {
      v14 = 2;
    }

    *(v10 + 88) = v14;
  }

  return v10;
}

+ (id)modifyHandlerWithRecord:(id)record operation:(id)operation
{
  operationCopy = operation;
  recordCopy = record;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend__initWithRecord_operation_(v7, v8, recordCopy, operationCopy);

  return v9;
}

+ (id)modifyHandlerForDeleteWithRecordID:(id)d operation:(id)operation
{
  operationCopy = operation;
  dCopy = d;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend__initForDeleteWithRecordID_operation_(v7, v8, dCopy, operationCopy);

  return v9;
}

- (CKRecordID)recordID
{
  recordID = self->_recordID;
  if (recordID)
  {
    v4 = recordID;
  }

  else
  {
    v5 = objc_msgSend_record(self, a2, v2);
    v4 = objc_msgSend_recordID(v5, v6, v7);
  }

  return v4;
}

- (NSString)etag
{
  etag = self->_etag;
  if (etag)
  {
    v4 = etag;
  }

  else
  {
    v5 = objc_msgSend_record(self, a2, v2);
    v4 = objc_msgSend_etag(v5, v6, v7);
  }

  return v4;
}

- (CKDPCSManager)pcsManager
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_pcsManager(v6, v7, v8);

  return v9;
}

- (CKDPCSCache)pcsCache
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_pcsCache(v6, v7, v8);

  return v9;
}

+ (id)_stringForState:(unint64_t)state
{
  if (state > 0xE)
  {
    return @"Unknown";
  }

  else
  {
    return off_278549E90[state];
  }
}

- (id)description
{
  isShare = objc_msgSend_isShare(self, a2, v2);
  v7 = objc_msgSend_isDelete(self, v5, v6);
  v8 = @"Share";
  if (v7)
  {
    v8 = @"ShareID";
    v9 = @"RecordID";
  }

  else
  {
    v9 = @"Record";
  }

  if (isShare)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v16 = objc_msgSend_recordID(self, v14, v15);
  if (objc_msgSend_isDelete(self, v17, v18))
  {
    v21 = @" (isDelete)";
  }

  else
  {
    v21 = &stru_28385ED00;
  }

  v22 = objc_msgSend_state(self, v19, v20);
  v24 = objc_msgSend__stringForState_(CKDModifyRecordHandler, v23, v22);
  v26 = objc_msgSend_stringWithFormat_(v11, v25, @"<%@ %p> (%@: %@ %@%@)", v13, self, v10, v16, v21, v24);

  return v26;
}

- (id)sideEffectRecordIDs
{
  if (objc_msgSend_state(self, a2, v2))
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDModifyRecordHandler.m", 184, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler sideEffectRecordIDs]", self, "CKDModifyRecordHandlerStateNeedRecordSideEffects");
  }

  v7 = objc_msgSend_record(self, v5, v6);
  v10 = objc_msgSend_share(v7, v8, v9);

  if (v10)
  {
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_msgSend_record(self, v11, v12);
    v17 = objc_msgSend_share(v14, v15, v16);
    v20 = objc_msgSend_recordID(v17, v18, v19);
    v22 = objc_msgSend_setWithObject_(v13, v21, v20);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)noteSideEffectRecordPendingDelete:(id)delete
{
  deleteCopy = delete;
  v7 = objc_msgSend_record(self, v5, v6);
  v10 = objc_msgSend_share(v7, v8, v9);
  v13 = objc_msgSend_recordID(v10, v11, v12);
  isEqual = objc_msgSend_isEqual_(v13, v14, deleteCopy);

  if (isEqual)
  {
    v19 = objc_msgSend_record(self, v16, v17);
    objc_msgSend_setShare_(v19, v18, 0);
  }
}

- (BOOL)requiresPCS
{
  if ((objc_msgSend__needsSigningPCS(self, a2, v2) & 1) == 0)
  {
    if (objc_msgSend_isDelete(self, v4, v5))
    {
      return 0;
    }

    v9 = objc_msgSend_record(self, v7, v8);
    v12 = objc_msgSend_operation(self, v10, v11);
    if (objc_msgSend_savePolicy(v12, v13, v14) == 2 && (objc_msgSend_hasPropertiesRequiringEncryption(v9, v15, v16) & 1) != 0 || (objc_msgSend_hasModifiedPropertiesRequiringEncryption(v9, v15, v16) & 1) != 0)
    {
      goto LABEL_8;
    }

    v19 = objc_msgSend_share(v9, v17, v18);
    if (!v19)
    {
      if ((objc_msgSend_hasUpdatedParent(v9, v20, v21) & 1) == 0)
      {
        v25 = objc_msgSend_parentsByRecordID(v12, v22, v23);
        v28 = objc_msgSend_recordID(self, v26, v27);
        v30 = objc_msgSend_objectForKeyedSubscript_(v25, v29, v28);

        if (v30)
        {
LABEL_8:
          v6 = 1;
LABEL_14:

          return v6;
        }

        v19 = objc_msgSend_protectionData(v9, v31, v32);
        if (v19)
        {
          goto LABEL_12;
        }

        if ((objc_msgSend_wantsChainPCS(v9, v33, v34) & 1) == 0 && (objc_msgSend_wantsPublicSharingKey(v9, v35, v36) & 1) == 0)
        {
          v39 = objc_msgSend_container(v12, v37, v38);
          v42 = objc_msgSend_options(v39, v40, v41);
          if (objc_msgSend_acceptServerSignedRecords(v42, v43, v44))
          {
            v6 = objc_msgSend_needsRollAndCounterSign(v9, v45, v46);
          }

          else
          {
            v6 = 0;
          }

          v19 = 0;
          goto LABEL_13;
        }
      }

      v19 = 0;
    }

LABEL_12:
    v6 = 1;
LABEL_13:

    goto LABEL_14;
  }

  return 1;
}

- (BOOL)_needsSigningPCS
{
  v3 = objc_msgSend_operation(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_options(v6, v7, v8);
  if (objc_msgSend_useAnonymousToServerShareParticipants(v9, v10, v11))
  {
    v14 = objc_msgSend_databaseScope(v3, v12, v13) == 3;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)fetchRecordPCSData
{
  v85 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, v2) != 2)
  {
    v79 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v79, v80, a2, self, @"CKDModifyRecordHandler.m", 241, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler fetchRecordPCSData]", self, "CKDModifyRecordHandlerStateNeedRecordPCSData");
  }

  if (!objc_msgSend_isDelete(self, v5, v6))
  {
    v10 = objc_msgSend_record(self, v7, v8);
    v15 = objc_msgSend_operation(self, v11, v12);
    if (!v10)
    {
      v81 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v81, v82, a2, self, @"CKDModifyRecordHandler.m", 251, @"Lost a record: %@", self);
    }

    if (objc_msgSend_savePolicy(v15, v13, v14) == 2)
    {
      hasPropertiesRequiringEncryption = objc_msgSend_hasPropertiesRequiringEncryption(v10, v16, v17);
    }

    else
    {
      hasPropertiesRequiringEncryption = objc_msgSend_hasModifiedPropertiesRequiringEncryption(v10, v16, v17);
    }

    v21 = hasPropertiesRequiringEncryption;
    v22 = objc_msgSend_share(v10, v19, v20);
    if (!v22)
    {
      if ((objc_msgSend_hasUpdatedParent(v10, v23, v24) & 1) == 0)
      {
        v27 = objc_msgSend_parentsByRecordID(v15, v25, v26);
        v30 = objc_msgSend_recordID(self, v28, v29);
        v32 = objc_msgSend_objectForKeyedSubscript_(v27, v31, v30);
        v33 = v32 != 0;

        if ((v33 | v21))
        {
          goto LABEL_18;
        }

        v22 = objc_msgSend_protectionData(v10, v34, v35);
        if (v22)
        {
          goto LABEL_17;
        }

        if ((objc_msgSend_wantsChainPCS(v10, v36, v37) & 1) == 0 && (objc_msgSend_wantsPublicSharingKey(v10, v57, v58) & 1) == 0 && (objc_msgSend__needsSigningPCS(self, v59, v60) & 1) == 0)
        {
          v63 = objc_msgSend_container(v15, v61, v62);
          v66 = objc_msgSend_options(v63, v64, v65);
          if (objc_msgSend_acceptServerSignedRecords(v66, v67, v68))
          {
            v71 = objc_msgSend_needsRollAndCounterSign(v10, v69, v70);

            if (v71)
            {
LABEL_18:
              objc_msgSend_setRecordPCS_(v10, v34, 0);
              v40 = objc_msgSend_stateTransitionGroup(v15, v38, v39);
              dispatch_group_enter(v40);

              v43 = objc_msgSend_protectionData(v10, v41, v42);

              v44 = *MEMORY[0x277CBC878];
              v45 = *MEMORY[0x277CBC880];
              if (v43)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v44);
                }

                v46 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
                {
                  v49 = v46;
                  v52 = objc_msgSend_recordID(v10, v50, v51);
                  *buf = 138412290;
                  v84 = v52;
                  _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Record %@ already has protection info", buf, 0xCu);
                }

                objc_msgSend__loadPCSData(self, v47, v48);
              }

              else
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v44);
                }

                v53 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
                {
                  v73 = v53;
                  v76 = objc_msgSend_recordID(v10, v74, v75);
                  *buf = 138412290;
                  v84 = v76;
                  _os_log_debug_impl(&dword_22506F000, v73, OS_LOG_TYPE_DEBUG, "Fetching protection info for record %@", buf, 0xCu);
                }

                objc_msgSend__fetchPCSData(self, v54, v55);
              }

              goto LABEL_29;
            }
          }

          else
          {
          }

          v77 = objc_msgSend_pcsGroup(self, v34, v72);
          dispatch_group_leave(v77);

          objc_msgSend_setState_(self, v78, 3);
LABEL_29:

          v56 = *MEMORY[0x277D85DE8];
          return;
        }
      }

      v22 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v9 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F9670](self, sel__fetchSigningPCSForRecordToDelete, v8);
}

- (void)_fetchSigningPCSForRecordToDelete
{
  if ((objc_msgSend__needsSigningPCS(self, a2, v2) & 1) == 0)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKDModifyRecordHandler.m", 285, @"Fetching signing PCS for records to delete when not needed");
  }

  v7 = objc_msgSend_operation(self, v5, v6);
  v10 = objc_msgSend_recordID(self, v8, v9);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v11 = dispatch_group_create();
  v14 = objc_msgSend_stateTransitionGroup(v7, v12, v13);
  dispatch_group_enter(v14);

  objc_initWeak(&location, self);
  dispatch_group_enter(v11);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Beginning signing PCS fetch. Fetching zone PCS and checking if there is a share PCS on it", buf, 2u);
  }

  v18 = objc_msgSend_pcsCache(self, v16, v17);
  v21 = objc_msgSend_zoneID(v10, v19, v20);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2251ED558;
  v38[3] = &unk_278549C68;
  objc_copyWeak(&v43, &location);
  v22 = v11;
  v39 = v22;
  v23 = v10;
  v40 = v23;
  v42 = v46;
  v24 = v7;
  v41 = v24;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v18, v25, v21, v24, 16, v38);

  v28 = objc_msgSend_modifyRecordsQueue(v24, v26, v27);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251ED918;
  block[3] = &unk_278546AF0;
  v34 = v23;
  selfCopy = self;
  v36 = v24;
  v37 = v46;
  v29 = v24;
  v30 = v23;
  dispatch_group_notify(v22, v28, block);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  _Block_object_dispose(v46, 8);
}

- (void)_setSigningPCSIdentity:(id)identity
{
  v89 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if ((objc_msgSend__needsSigningPCS(self, v6, v7) & 1) == 0)
  {
    v83 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v83, v84, a2, self, @"CKDModifyRecordHandler.m", 338, @"Unexpectedly setting signing PCS");
  }

  v10 = objc_msgSend_record(self, v8, v9);
  if (objc_msgSend_signingPCSIdentity(v10, v11, v12))
  {
    goto LABEL_4;
  }

  v16 = objc_msgSend_share(v10, v13, v14);
  v17 = MEMORY[0x277CBC880];
  v18 = MEMORY[0x277CBC858];
  if (v16)
  {

LABEL_8:
    v23 = objc_msgSend_share(v10, v19, v20);
    if (v23)
    {
      v24 = objc_msgSend_share(v10, v21, v22);
      v27 = objc_msgSend_recordID(v24, v25, v26);
    }

    else
    {
      v27 = objc_msgSend_recordID(v10, v21, v22);
    }

    if (*v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
    {
      v65 = v28;
      v68 = objc_msgSend_recordID(v10, v66, v67);
      v85 = 138412546;
      v86 = v68;
      v87 = 2112;
      v88 = v27;
      _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "Setting signing PCS for record %@ to be the current user's per participant PCS in share: %@", &v85, 0x16u);
    }

    v31 = identityCopy;
LABEL_16:
    v32 = objc_msgSend_sharePCSData(v31, v29, v30);
    v35 = objc_msgSend_myParticipantPCS(v32, v33, v34);

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  v47 = objc_msgSend_zonePCSData(identityCopy, v19, v20);
  v50 = objc_msgSend_sharePCSData(v47, v48, v49);

  if (v50)
  {
    if (*v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v53 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
    {
      v69 = v53;
      v72 = objc_msgSend_recordID(v10, v70, v71);
      v85 = 138412290;
      v86 = v72;
      _os_log_debug_impl(&dword_22506F000, v69, OS_LOG_TYPE_DEBUG, "Setting signing PCS for record %@ to be current user's per participant PCS of zone share", &v85, 0xCu);
    }

    v31 = objc_msgSend_zonePCSData(identityCopy, v54, v55);
    v27 = v31;
    goto LABEL_16;
  }

  v56 = objc_msgSend_parent(v10, v51, v52);

  if (!v56)
  {
    goto LABEL_36;
  }

  if (*v17 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v57 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
  {
    v73 = v57;
    v76 = objc_msgSend_recordID(v10, v74, v75);
    v79 = objc_msgSend_parent(v10, v77, v78);
    v82 = objc_msgSend_recordID(v79, v80, v81);
    v85 = 138412546;
    v86 = v76;
    v87 = 2112;
    v88 = v82;
    _os_log_debug_impl(&dword_22506F000, v73, OS_LOG_TYPE_DEBUG, "Setting signing PCS for record %@ to be that of parent: %@", &v85, 0x16u);
  }

  v27 = objc_msgSend_parentPCSData(identityCopy, v58, v59);
  v35 = objc_msgSend_signingPCS(v27, v60, v61);
LABEL_17:

  if (!v35)
  {
LABEL_36:
    if (*v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v62 = *v18;
    if (!os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v40 = v62;
    v43 = objc_msgSend_recordID(self, v63, v64);
    v85 = 138412290;
    v86 = v43;
    v44 = "Couldn't fetch signing PCS to create a signature for record %@";
    v45 = v40;
    v46 = 12;
LABEL_40:
    _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, v44, &v85, v46);

    goto LABEL_4;
  }

  v36 = PCSFPCopyCurrentPrivateKey();
  if (v36)
  {
    v38 = v36;
    objc_msgSend_setSigningPCSIdentity_(v10, v37, v36);
    CFRelease(v38);
    goto LABEL_4;
  }

  if (*v17 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v39 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v40 = v39;
    v43 = objc_msgSend_recordID(self, v41, v42);
    v85 = 138412546;
    v86 = v35;
    v87 = 2112;
    v88 = v43;
    v44 = "Couldn't get a private identity from the signing PCS %@ for record %@";
    v45 = v40;
    v46 = 22;
    goto LABEL_40;
  }

LABEL_4:

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canSetPreviousProtectionEtag
{
  v3 = objc_msgSend_operation(self, a2, v2);
  canSetPreviousProtectionEtag = objc_msgSend_canSetPreviousProtectionEtag(v3, v4, v5);

  return canSetPreviousProtectionEtag;
}

- (BOOL)_createPublicSharingKeyWithError:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_record(self, a2, error);
  v6 = MEMORY[0x277CBC880];
  errorCopy = error;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = MEMORY[0x277CBC858];
  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v11 = v8;
    v14 = objc_msgSend_recordID(v5, v12, v13);
    *buf = 138412290;
    v64 = v14;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Creating a new random sharing identity for record %@", buf, 0xCu);
  }

  v15 = objc_msgSend_pcsManager(self, v9, v10);
  v62 = 0;
  RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(v15, v16, &v62);
  v18 = v62;

  if (v18)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v55 = v19;
      v58 = objc_msgSend_recordID(v5, v56, v57);
      *buf = 138412546;
      v64 = v58;
      v65 = 2112;
      v66 = v18;
      _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, "Couldn't create a new sharing identity for record %@: %@", buf, 0x16u);
    }
  }

  v61[1] = 0;
  v20 = PCSIdentityCopyExternalForm();
  if (v20)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v25 = objc_msgSend_recordID(v5, v23, v24);
      PublicKey = PCSIdentityGetPublicKey();
      v27 = MEMORY[0x277CCACA8];
      v59 = PublicKey;
      v28 = [v27 alloc];
      v30 = objc_msgSend_initWithData_encoding_(v28, v29, v20, 4);
      *buf = 138412802;
      v64 = v25;
      v65 = 2112;
      v66 = PublicKey;
      v67 = 2112;
      v68 = v30;
      _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Using identity for public PCS on record %@: %@: %@", buf, 0x20u);
    }
  }

  v31 = objc_alloc(MEMORY[0x277CBC2E8]);
  v34 = objc_msgSend_pcsManager(self, v32, v33);
  v61[0] = 0;
  v36 = objc_msgSend_dataFromSharingIdentity_error_(v34, v35, RandomSharingIdentityWithError, v61);
  v37 = v61[0];
  v39 = objc_msgSend_initWithData_(v31, v38, v36);
  objc_msgSend_setMutableEncryptedPSK_(v5, v40, v39);

  if (v37)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v64 = v37;
      _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "Couldn't create data from our public sharing identity: %@", buf, 0xCu);
    }

    if (errorCopy)
    {
      v44 = MEMORY[0x277CBC560];
      v45 = *MEMORY[0x277CBC120];
      v46 = objc_msgSend_recordID(self, v42, v43);
      *errorCopy = objc_msgSend_errorWithDomain_code_format_(v44, v47, v45, 5005, @"Couldn't create public sharing identity for record %@", v46);
    }

    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v48 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v49 = v48;
      v52 = objc_msgSend_recordID(self, v50, v51);
      *buf = 138412546;
      v64 = v52;
      v65 = 2112;
      v66 = v37;
      _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Couldn't create a public sharing identity for record %@: %@", buf, 0x16u);
    }
  }

  if (RandomSharingIdentityWithError)
  {
    CFRelease(RandomSharingIdentityWithError);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v37 == 0;
}

- (void)_loadPCSData
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_pcsManager(self, a2, v2);
  v10 = objc_msgSend_operation(self, v6, v7);
  if (!v5)
  {
    v67 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    v70 = objc_msgSend_container(v10, v68, v69);
    v73 = objc_msgSend_pcsManager(self, v71, v72);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v67, v74, a2, self, @"CKDModifyRecordHandler.m", 417, @"Need a PCS Manager (%@, %@, %@)", self, v70, v73);
  }

  v11 = objc_msgSend_record(self, v8, v9);
  v14 = objc_msgSend_zoneishKeyID(v11, v12, v13);
  if (v14)
  {

LABEL_6:
    objc_msgSend__unwrapRecordPCSForZone(self, v17, v18);
    goto LABEL_7;
  }

  v19 = objc_msgSend_databaseScope(v10, v15, v16);

  if (v19 == 2)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_databaseScope(v10, v17, v18) == 3)
  {
    v23 = objc_msgSend_record(self, v21, v22);
    v26 = objc_msgSend_share(v23, v24, v25);

    if (v26)
    {
      v27 = objc_msgSend_record(self, v21, v22);
      v30 = objc_msgSend_share(v27, v28, v29);
      v33 = objc_msgSend_recordID(v30, v31, v32);
      objc_msgSend__unwrapRecordPCSWithShareID_(self, v34, v33);

LABEL_16:
      goto LABEL_7;
    }
  }

  if (objc_msgSend_databaseScope(v10, v21, v22) == 3)
  {
    v37 = objc_msgSend_record(self, v35, v36);
    v40 = objc_msgSend_parent(v37, v38, v39);

    if (v40)
    {
      objc_msgSend__unwrapRecordPCSForParent(self, v35, v36);
      goto LABEL_7;
    }
  }

  v41 = objc_msgSend_record(self, v35, v36);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v27 = objc_msgSend_record(self, v43, v44);
    v30 = objc_msgSend_recordID(v27, v45, v46);
    objc_msgSend__unwrapRecordPCSWithShareID_(self, v47, v30);
    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v48 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v51 = v48;
    v54 = objc_msgSend_record(self, v52, v53);
    v57 = objc_msgSend_recordID(v54, v55, v56);
    *buf = 138412290;
    v76 = v57;
    _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Warn: Record %@ isn't in the private database, doesn't have a share or parent set and isn't a share", buf, 0xCu);
  }

  v58 = MEMORY[0x277CBC560];
  v59 = *MEMORY[0x277CBC120];
  v60 = objc_msgSend_record(self, v49, v50);
  v63 = objc_msgSend_recordID(v60, v61, v62);
  v65 = objc_msgSend_errorWithDomain_code_format_(v58, v64, v59, 5001, @"Record %@ isn't in the private database, doesn't have a share or parent set and isn't a share", v63);
  objc_msgSend__addShareToPCSData_withError_(self, v66, 0, v65);

LABEL_7:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reallyFetchPCSDataWithOptions:(unint64_t)options
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_record(self, a2, options);
  objc_initWeak(&location, self);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!objc_msgSend_isZoneWideShare(v5, v6, v7))
  {
    goto LABEL_12;
  }

  v8 = objc_msgSend_sharePCSData(self, v6, v7);
  if (!v8)
  {
    goto LABEL_12;
  }

  v11 = objc_msgSend_sharedZonePCSData(self, v6, v7);
  if (!v11)
  {

    goto LABEL_12;
  }

  v12 = objc_msgSend_sharedZonePCSData(self, v9, v10);
  v15 = objc_msgSend_zoneishPCS(v12, v13, v14) == 0;

  if (v15)
  {
LABEL_12:
    if (objc_msgSend__needsSigningPCS(self, v6, v7))
    {
      optionsCopy = (options | 0x10);
    }

    else
    {
      optionsCopy = options;
    }

    v45 = objc_msgSend_pcsCache(self, v42, v43);
    v48 = objc_msgSend_recordID(v5, v46, v47);
    v51 = objc_msgSend_operation(self, v49, v50);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_2251EED6C;
    v55[3] = &unk_278549C90;
    objc_copyWeak(v57, &location);
    v57[1] = optionsCopy;
    v56 = v5;
    objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v45, v52, v48, v51, optionsCopy, v55);

    objc_destroyWeak(v57);
    goto LABEL_16;
  }

  v16 = objc_msgSend_sharedZonePCSData(self, v6, v7);
  v19 = objc_msgSend_zoneishPublicKeyID(v16, v17, v18);
  objc_msgSend_setZoneishKeyID_(v5, v20, v19);

  v22 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v21, v5);
  v25 = objc_msgSend_sharedZonePCSData(self, v23, v24);
  v28 = objc_msgSend_zoneishPCS(v25, v26, v27);
  objc_msgSend_setPcs_(v22, v29, v28);

  v32 = objc_msgSend_sharedZonePCSData(self, v30, v31);
  objc_msgSend_setZonePCSData_(v22, v33, v32);

  v36 = objc_msgSend_sharePCSData(self, v34, v35);
  objc_msgSend_setSharePCSData_(v22, v37, v36);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v38 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v54 = objc_msgSend_recordID(v5, v39, v40);
    *buf = 138412290;
    v60 = v54;
    _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Using prepared share pcs and shared zone pcs data for share %@", buf, 0xCu);
  }

  objc_msgSend__addShareToPCSData_withError_(self, v41, v22, 0);
LABEL_16:
  objc_destroyWeak(&location);

  v53 = *MEMORY[0x277D85DE8];
}

- (void)_fetchPCSData
{
  v44 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v35 = v3;
    v38 = objc_msgSend_record(self, v36, v37);
    v41 = objc_msgSend_recordID(v38, v39, v40);
    v42 = 138412290;
    v43 = v41;
    _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Getting ready to fetch PCS Data for record %@", &v42, 0xCu);
  }

  v6 = objc_msgSend_operation(self, v4, v5);
  v9 = objc_msgSend_etag(self, v7, v8);
  if (objc_msgSend_length(v9, v10, v11))
  {
    goto LABEL_6;
  }

  v16 = objc_msgSend_record(self, v12, v13);
  isKnownToServer = objc_msgSend_isKnownToServer(v16, v17, v18);

  if (isKnownToServer & 1) != 0 || (objc_msgSend_alwaysFetchPCSFromServer(v6, v14, v15))
  {
    goto LABEL_9;
  }

  v9 = objc_msgSend_record(self, v14, v15);
  if (objc_msgSend_wantsPublicSharingKey(v9, v30, v31))
  {
LABEL_6:

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v34 = objc_msgSend_saveAttempts(self, v32, v33) == 0;

  v20 = 2 * v34;
LABEL_10:
  v21 = objc_msgSend_container(v6, v14, v15);
  v24 = objc_msgSend_options(v21, v22, v23);
  v27 = objc_msgSend_useZoneWidePCS(v24, v25, v26);

  if (v27)
  {
    objc_msgSend__reallyFetchPCSDataWithOptions_(self, v28, v20 | 8);
  }

  else
  {
    objc_msgSend__reallyFetchPCSDataWithOptions_(self, v28, v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_fetchParentPCSForID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_parentsByRecordID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, dCopy);

  if (v15)
  {
    v18 = objc_msgSend_pcsGroup(v15, v16, v17);
    v21 = objc_msgSend_modifyRecordsQueue(v10, v19, v20);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251EF4F8;
    block[3] = &unk_2785488E0;
    v22 = &v33;
    v33 = v15;
    v34 = dCopy;
    selfCopy = self;
    v36 = handlerCopy;
    v23 = handlerCopy;
    dispatch_group_notify(v18, v21, block);

    v24 = v34;
  }

  else
  {
    if (objc_msgSend__needsSigningPCS(self, v16, v17))
    {
      v27 = 20;
    }

    else
    {
      v27 = 4;
    }

    v24 = objc_msgSend_pcsCache(self, v25, v26);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2251EF73C;
    v30[3] = &unk_278549CB8;
    v22 = &v31;
    v31 = handlerCopy;
    v28 = handlerCopy;
    objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v24, v29, dCopy, v10, v27, v30);
  }
}

- (void)_fetchSharePCSForID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_handlersByRecordID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, dCopy);

  v18 = objc_msgSend_sharePCSData(self, v16, v17);

  if (!v18)
  {
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = MEMORY[0x277CBC560];
        v32 = *MEMORY[0x277CBC120];
        v21 = objc_msgSend_recordID(self, v22, v23);
        v34 = objc_msgSend_errorWithDomain_code_format_(v31, v33, v32, 1017, @"Record %@ refers to share %@ but that item is a record, not a share", v21, dCopy);
        handlerCopy[2](handlerCopy, 0, v34);

        goto LABEL_3;
      }

      v24 = objc_msgSend_pcsGroup(v15, v22, v23);
      v27 = objc_msgSend_modifyRecordsQueue(v10, v25, v26);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251EF9F0;
      block[3] = &unk_2785488E0;
      v40 = v15;
      v41 = dCopy;
      selfCopy = self;
      v43 = handlerCopy;
      dispatch_group_notify(v24, v27, block);

      v28 = v40;
    }

    else
    {
      v29 = objc_msgSend_pcsCache(self, v19, v20);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_2251EFAE0;
      v35[3] = &unk_278549CE0;
      v36 = dCopy;
      selfCopy2 = self;
      v38 = handlerCopy;
      objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v29, v30, v36, v10, 0, v35);

      v28 = v36;
    }

    goto LABEL_9;
  }

  v21 = objc_msgSend_sharePCSData(self, v19, v20);
  (handlerCopy)[2](handlerCopy, v21, 0);
LABEL_3:

LABEL_9:
}

- (void)_keyRollIfNeededForRecordPCSData:(id)data withError:(id)error
{
  v109 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_record(self, v11, v12);
  v16 = errorCopy;
  v17 = v16;
  if (v16)
  {
LABEL_2:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v20 = v18;
      v23 = objc_msgSend_recordID(self, v21, v22);
      *buf = 138412546;
      v104 = v23;
      v105 = 2112;
      v106 = v17;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Error key-rolling for record %@: %@", buf, 0x16u);
    }

    goto LABEL_32;
  }

  if (objc_msgSend_pcs(dataCopy, v14, v15))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isZoneWideShare(v13, v24, v25) && objc_msgSend_didAttemptZoneWideShareKeyRoll(self, v26, v27))
    {
      v30 = objc_msgSend_zonePCSData(dataCopy, v28, v29);
      v33 = objc_msgSend_zoneishPublicKeyID(v30, v31, v32);
      if (v33)
      {
      }

      else
      {
        v36 = objc_msgSend_databaseScope(v10, v34, v35);

        if (v36 == 2)
        {
          v39 = objc_msgSend_sharePCSData(self, v37, v38);
          if (v39 && (v42 = v39, objc_msgSend_sharedZonePCSData(self, v40, v41), v43 = objc_claimAutoreleasedReturnValue(), v43, v42, v43))
          {
            v46 = objc_msgSend_pcsManager(self, v44, v45);
            v49 = objc_msgSend_sharedZonePCSData(self, v47, v48);
            v52 = objc_msgSend_sharePCSData(self, v50, v51);
            v17 = objc_msgSend_keyRollForZoneWideShareRecordPCS_sharedZonePCS_sharePCS_forOperation_(v46, v53, dataCopy, v49, v52, v10);
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v86 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              v93 = v86;
              v96 = objc_msgSend_recordID(v13, v94, v95);
              v99 = objc_msgSend_sharedZonePCSData(self, v97, v98);
              v102 = objc_msgSend_sharePCSData(self, v100, v101);
              *buf = 138412802;
              v104 = v96;
              v105 = 2112;
              v106 = v99;
              v107 = 2112;
              v108 = v102;
              _os_log_error_impl(&dword_22506F000, v93, OS_LOG_TYPE_ERROR, "Failed to get share or zone PCS data to roll record PCS for zone-wide share record %@, shared zone PCS: %@, share PCS: %@", buf, 0x20u);
            }

            v89 = MEMORY[0x277CBC560];
            v90 = *MEMORY[0x277CBC120];
            v91 = objc_msgSend_recordID(self, v87, v88);
            v17 = objc_msgSend_errorWithDomain_code_format_(v89, v92, v90, 5001, @"Didn't get dependent PCS data to roll record PCS for %@", v91);
          }

LABEL_17:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v56 = objc_msgSend_zonePCSData(dataCopy, v54, v55);
            v59 = objc_msgSend_zoneishPublicKeyID(v56, v57, v58);
            if (v59)
            {
            }

            else
            {
              v62 = objc_msgSend_databaseScope(v10, v60, v61);

              if (v62 == 2)
              {
                buf[0] = 0;
                v65 = objc_msgSend_container(v10, v63, v64);
                v68 = objc_msgSend_options(v65, v66, v67);
                v73 = 0;
                if (objc_msgSend_acceptServerSignedRecords(v68, v69, v70))
                {
                  v73 = objc_msgSend_needsRollAndCounterSign(v13, v71, v72);
                }

                v76 = objc_msgSend_pcsManager(self, v74, v75);
                v78 = objc_msgSend_keyRollIfNeededForPerRecordPCS_needsRollAndCounterSign_forOperation_didRoll_(v76, v77, dataCopy, v73, v10, buf);

                if (buf[0] == 1)
                {
                  objc_msgSend_setRequiresRecordSaveForMergeableDeltas_(v13, v79, 1);
                }

                v17 = v78;
              }
            }
          }

          if (v17)
          {
            goto LABEL_2;
          }

          goto LABEL_27;
        }
      }
    }

    v17 = 0;
    goto LABEL_17;
  }

LABEL_27:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v80 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v82 = v80;
    v85 = objc_msgSend_recordID(self, v83, v84);
    *buf = 138412290;
    v104 = v85;
    _os_log_debug_impl(&dword_22506F000, v82, OS_LOG_TYPE_DEBUG, "Successfully checked key-rolling requirements for record %@. May have rolled keys as well.", buf, 0xCu);
  }

  v17 = 0;
LABEL_32:
  objc_msgSend__reallyAddShareToPCSData_withError_(self, v19, dataCopy, v17);

  v81 = *MEMORY[0x277D85DE8];
}

- (void)_reallyAddShareToPCSData:(id)data withError:(id)error
{
  v68 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  v10 = objc_msgSend_record(self, v8, v9);
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_225074050;
  v62[4] = sub_2250735B4;
  v11 = errorCopy;
  v63 = v11;
  v14 = dispatch_group_create();
  if (!v11 && objc_msgSend_pcs(dataCopy, v12, v13))
  {
    if (objc_msgSend_hasUpdatedShare(v10, v12, v13))
    {
      v17 = objc_msgSend_share(v10, v15, v16);
      v20 = objc_msgSend_recordID(v17, v18, v19);

      v23 = objc_msgSend_previousShare(v10, v21, v22);
      v26 = objc_msgSend_recordID(v23, v24, v25);
    }

    else
    {
      v26 = 0;
      v20 = 0;
    }

    if (v20 | v26)
    {
      objc_initWeak(&location, self);
      if (v20)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v27 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v42 = objc_msgSend_recordID(v10, v28, v29);
          *buf = 138412546;
          v65 = v20;
          v66 = 2112;
          v67 = v42;
          _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Adding share with ID %@ to record %@", buf, 0x16u);
        }

        dispatch_group_enter(v14);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = sub_2251F07F0;
        v54[3] = &unk_278549D08;
        objc_copyWeak(&v60, &location);
        v55 = dataCopy;
        v59 = v62;
        v56 = v20;
        selfCopy = self;
        v58 = v14;
        objc_msgSend__fetchSharePCSForID_withCompletionHandler_(self, v30, v56, v54);

        objc_destroyWeak(&v60);
      }

      if (v26)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v31 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v43 = objc_msgSend_recordID(v10, v32, v33);
          *buf = 138412546;
          v65 = v26;
          v66 = 2112;
          v67 = v43;
          _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Removing share with ID %@ from record %@", buf, 0x16u);
        }

        dispatch_group_enter(v14);
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = sub_2251F0B04;
        v47[3] = &unk_278549D08;
        objc_copyWeak(&v53, &location);
        v48 = dataCopy;
        v52 = v62;
        v49 = v10;
        v50 = v26;
        v51 = v14;
        objc_msgSend__fetchSharePCSForID_withCompletionHandler_(self, v34, v50, v47);

        objc_destroyWeak(&v53);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v35 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Waiting on share fetches so we can update the record PCS", buf, 2u);
      }

      objc_destroyWeak(&location);
    }
  }

  v36 = objc_msgSend_operation(self, v12, v13);
  v39 = objc_msgSend_modifyRecordsQueue(v36, v37, v38);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2251F0EAC;
  v44[3] = &unk_278546420;
  v45 = dataCopy;
  v46 = v62;
  v44[4] = self;
  v40 = dataCopy;
  dispatch_group_notify(v14, v39, v44);

  _Block_object_dispose(v62, 8);
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_fetchParentPCSForData:(id)data withError:(id)error
{
  v177 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v163 = 0;
  v164 = &v163;
  v165 = 0x3032000000;
  v166 = sub_225074050;
  v167 = sub_2250735B4;
  errorCopy = error;
  v168 = errorCopy;
  v9 = dispatch_group_create();
  v14 = objc_msgSend_operation(self, v10, v11);
  if (!errorCopy)
  {
    if (objc_msgSend_pcs(dataCopy, v12, v13))
    {
      v18 = objc_msgSend_record(self, v12, v13);
      hasUpdatedParent = objc_msgSend_hasUpdatedParent(v18, v19, v20);

      if (hasUpdatedParent)
      {
        v22 = objc_msgSend_record(self, v12, v13);
        v25 = objc_msgSend_previousParent(v22, v23, v24);
        v143 = objc_msgSend_recordID(v25, v26, v27);

        if (!v143)
        {
          v30 = objc_msgSend_parentID(dataCopy, v28, v29);
          if (!v30)
          {
            goto LABEL_8;
          }

          v144 = objc_msgSend_parentID(dataCopy, v28, v29);
          v33 = objc_msgSend_record(self, v31, v32);
          v36 = objc_msgSend_parent(v33, v34, v35);
          v39 = objc_msgSend_recordID(v36, v37, v38);
          groupa = objc_msgSend_isEqual_(v144, v40, v39);

          if ((groupa & 1) == 0)
          {
            v143 = objc_msgSend_parentID(dataCopy, v28, v29);
          }

          else
          {
LABEL_8:
            v143 = 0;
          }
        }

        v41 = objc_msgSend_record(self, v28, v29);
        v44 = objc_msgSend_parent(v41, v42, v43);
        v47 = objc_msgSend_recordID(v44, v45, v46);
        isEqual = objc_msgSend_isEqual_(v47, v48, v143);

        if (isEqual)
        {
          v134 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v50, v51);
          v137 = objc_msgSend_recordID(self, v135, v136);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v134, v138, a2, self, @"CKDModifyRecordHandler.m", 714, @"Got the same parent and previous parent on record %@", v137);
        }

        if (v143)
        {
          v52 = objc_msgSend_record(self, v50, v51);
          v55 = objc_msgSend_chainParentPublicKeyID(v52, v53, v54);

          if (!v55)
          {
            v58 = objc_msgSend_parentID(dataCopy, v56, v57);
            v60 = objc_msgSend_isEqual_(v58, v59, v143);

            if (v60)
            {
              v55 = objc_msgSend_chainParentPublicKeyID(dataCopy, v61, v62);
            }

            else
            {
              v55 = 0;
            }
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v63 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            v124 = objc_msgSend_recordID(self, v64, v65);
            *buf = 138412802;
            *&buf[4] = v143;
            *&buf[12] = 2114;
            *&buf[14] = v55;
            *&buf[22] = 2112;
            v174 = v124;
            _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Removing previous parent %@ with public key ID %{public}@ from record PCS for %@", buf, 0x20u);
          }

          v68 = objc_msgSend_pcsManager(self, v66, v67);
          v71 = objc_msgSend_pcs(dataCopy, v69, v70);
          v73 = objc_msgSend_removePublicKeyID_fromPCS_(v68, v72, v55, v71);

          if (v73 && !v164[5])
          {
            v75 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v74, *MEMORY[0x277CBC120], 5001, v73, @"Couldn't remove previous parent PCS data for previous parent %@", v143);
            v76 = v164[5];
            v164[5] = v75;
          }
        }

        v77 = objc_msgSend_record(self, v50, v51);
        v80 = objc_msgSend_parent(v77, v78, v79);

        if (v80)
        {
          group = dispatch_group_create();
          dispatch_group_enter(v9);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v174 = sub_225074050;
          v175 = sub_2250735B4;
          v176 = 0;
          v83 = objc_msgSend_parentsByRecordID(v14, v81, v82);
          v86 = objc_msgSend_record(self, v84, v85);
          v89 = objc_msgSend_parent(v86, v87, v88);
          v92 = objc_msgSend_recordID(v89, v90, v91);
          v94 = objc_msgSend_objectForKeyedSubscript_(v83, v93, v92);

          if (v94)
          {
            dispatch_group_enter(group);
            v97 = objc_msgSend_pcsGroup(v94, v95, v96);
            v100 = objc_msgSend_modifyRecordsQueue(v14, v98, v99);
            v157[0] = MEMORY[0x277D85DD0];
            v157[1] = 3221225472;
            v157[2] = sub_2251F19A4;
            v157[3] = &unk_278549D58;
            v161 = buf;
            v158 = v94;
            selfCopy = self;
            v162 = &v163;
            v160 = group;
            dispatch_group_notify(v97, v100, v157);
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v103 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
            {
              v140 = objc_msgSend_record(self, v104, v105);
              v127 = objc_msgSend_parent(v140, v125, v126);
              v130 = objc_msgSend_recordID(v127, v128, v129);
              v133 = objc_msgSend_recordID(self, v131, v132);
              *v169 = 138412546;
              v170 = v130;
              v171 = 2112;
              v172 = v133;
              _os_log_debug_impl(&dword_22506F000, v103, OS_LOG_TYPE_DEBUG, "Fetching parent PCS data with record ID %@ for record %@", v169, 0x16u);
            }

            dispatch_group_enter(group);
            v108 = objc_msgSend__needsSigningPCS(self, v106, v107);
            v111 = 4;
            if (v108)
            {
              v111 = 20;
            }

            v139 = v111;
            v112 = objc_msgSend_pcsCache(self, v109, v110);
            v115 = objc_msgSend_record(self, v113, v114);
            v118 = objc_msgSend_parent(v115, v116, v117);
            v121 = objc_msgSend_recordID(v118, v119, v120);
            v153[0] = MEMORY[0x277D85DD0];
            v153[1] = 3221225472;
            v153[2] = sub_2251F1BF4;
            v153[3] = &unk_278549D30;
            v153[4] = self;
            v155 = buf;
            v156 = &v163;
            v154 = group;
            objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v112, v122, v121, v14, v139, v153);
          }

          v123 = objc_msgSend_modifyRecordsQueue(v14, v101, v102);
          v148[0] = MEMORY[0x277D85DD0];
          v148[1] = 3221225472;
          v148[2] = sub_2251F1E70;
          v148[3] = &unk_278549D58;
          v151 = buf;
          v152 = &v163;
          v148[4] = self;
          v149 = dataCopy;
          v150 = v9;
          dispatch_group_notify(group, v123, v148);

          _Block_object_dispose(buf, 8);
        }
      }
    }
  }

  v15 = objc_msgSend_modifyRecordsQueue(v14, v12, v13);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251F1FF0;
  block[3] = &unk_278546420;
  v146 = dataCopy;
  v147 = &v163;
  block[4] = self;
  v16 = dataCopy;
  dispatch_group_notify(v9, v15, block);

  _Block_object_dispose(&v163, 8);
  v17 = *MEMORY[0x277D85DE8];
}

- (id)_addParentPCS:(id)s toRecordPCS:(id)cS
{
  v110 = *MEMORY[0x277D85DE8];
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
    v76 = v10;
    v79 = objc_msgSend_recordID(self, v77, v78);
    *buf = 138412546;
    v105 = sCopy;
    v106 = 2112;
    v107 = v79;
    _os_log_debug_impl(&dword_22506F000, v76, OS_LOG_TYPE_DEBUG, "Adding parent PCS data %@ to PCS for record %@", buf, 0x16u);
  }

  v13 = objc_msgSend_pcsManager(self, v11, v12);
  v15 = objc_msgSend_decryptChainPCSForRecordPCS_(v13, v14, sCopy);

  if (v15 || (objc_msgSend_chainPCSData(sCopy, v16, v17), v31 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend_pcs(v31, v32, v33), v31, !v34))
  {
    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v80 = v18;
      v83 = objc_msgSend_record(self, v81, v82);
      v86 = objc_msgSend_parent(v83, v84, v85);
      v89 = objc_msgSend_recordID(v86, v87, v88);
      *buf = 138412546;
      v105 = v89;
      v106 = 2112;
      v107 = v15;
      _os_log_debug_impl(&dword_22506F000, v80, OS_LOG_TYPE_DEBUG, "Couldn't decrypt the chain PCS blob on parent record %@: %@", buf, 0x16u);

      if (v15)
      {
        goto LABEL_24;
      }
    }

    else if (v15)
    {
      goto LABEL_24;
    }

    v21 = MEMORY[0x277CBC560];
    v22 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_record(self, v19, v20);
    v26 = objc_msgSend_parent(v23, v24, v25);
    v29 = objc_msgSend_recordID(v26, v27, v28);
    v15 = objc_msgSend_errorWithDomain_code_format_(v21, v30, v22, 5004, @"Couldn't decrypt the chain PCS blob on parent record %@", v29);

LABEL_23:
    goto LABEL_24;
  }

  v37 = objc_msgSend_pcsManager(self, v35, v36);
  v40 = objc_msgSend_chainPCSData(sCopy, v38, v39);
  v43 = objc_msgSend_pcs(v40, v41, v42);
  v46 = objc_msgSend_pcs(cSCopy, v44, v45);
  v103 = 0;
  v48 = objc_msgSend_addSharePCS_toRecordPCS_error_(v37, v47, v43, v46, &v103);
  v15 = v103;

  if (v48)
  {
    v51 = objc_msgSend_chainPCSData(sCopy, v49, v50);
    v54 = objc_msgSend_pcs(v51, v52, v53);
    v23 = objc_msgSend_publicKeyIDFromIdentity_(CKDPCSManager, v55, v54);

    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v56 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v90 = v56;
      v93 = objc_msgSend_record(self, v91, v92);
      v96 = objc_msgSend_parent(v93, v94, v95);
      v99 = objc_msgSend_recordID(v96, v97, v98);
      v102 = objc_msgSend_recordID(self, v100, v101);
      *buf = 138412802;
      v105 = v99;
      v106 = 2112;
      v107 = v102;
      v108 = 2114;
      v109 = v23;
      _os_log_debug_impl(&dword_22506F000, v90, OS_LOG_TYPE_DEBUG, "Successfully added parent PCS data from record %@ to record %@. Public key ID is %{public}@", buf, 0x20u);
    }

    v26 = objc_msgSend_record(self, v57, v58);
    objc_msgSend_setChainParentPublicKeyID_(v26, v59, v23);
    goto LABEL_23;
  }

  if (*v8 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v60 = *v9;
  if (!os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
  {
    if (v15)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  *buf = 138412802;
  v105 = sCopy;
  v106 = 2112;
  v107 = cSCopy;
  v108 = 2112;
  v109 = v15;
  _os_log_debug_impl(&dword_22506F000, v60, OS_LOG_TYPE_DEBUG, "Error adding parent PCS %@ to record PCS %@: %@", buf, 0x20u);
  if (!v15)
  {
LABEL_22:
    v63 = MEMORY[0x277CBC560];
    v64 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_record(self, v61, v62);
    v26 = objc_msgSend_parent(v23, v65, v66);
    v69 = objc_msgSend_recordID(v26, v67, v68);
    v72 = objc_msgSend_recordID(self, v70, v71);
    v15 = objc_msgSend_errorWithDomain_code_format_(v63, v73, v64, 5005, @"Couldn't add parent PCS data from record %@ to record %@", v69, v72);

    goto LABEL_23;
  }

LABEL_24:

  v74 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_createAndSavePCS
{
  v98 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC810] == 1)
  {
    v5 = objc_msgSend_operation(self, a2, v2);
    v8 = objc_msgSend_unitTestOverrides(v5, v6, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"DisallowRecordPCSToBeCreated");

    if (v10)
    {
      v68 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v68, v69, a2, self, @"CKDModifyRecordHandler.m", 818, @"Record PCS creation not allowed by unit test");
    }
  }

  v11 = objc_msgSend_record(self, a2, v2);
  v14 = objc_msgSend_operation(self, v12, v13);
  v15 = dispatch_group_create();
  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x3032000000;
  v92[3] = sub_225074050;
  v92[4] = sub_2250735B4;
  v93 = 0;
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x3032000000;
  v90[3] = sub_225074050;
  v90[4] = sub_2250735B4;
  v91 = 0;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x3032000000;
  v88[3] = sub_225074050;
  v88[4] = sub_2250735B4;
  v89 = 0;
  v18 = objc_msgSend_share(v11, v16, v17);
  v21 = objc_msgSend_recordID(v18, v19, v20);

  dispatch_group_enter(v15);
  v24 = objc_msgSend_container(v14, v22, v23);
  v27 = objc_msgSend_options(v24, v25, v26);
  v30 = objc_msgSend_useZoneWidePCS(v27, v28, v29);

  v33 = objc_msgSend__needsSigningPCS(self, v31, v32);
  v34 = 8;
  if (!v30)
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v34 | 0x10;
  }

  else
  {
    v35 = v34;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v36 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    if (v30)
    {
      v63 = @"zoneish ";
    }

    else
    {
      v63 = &stru_28385ED00;
    }

    v64 = objc_msgSend_recordID(v11, v37, v38);
    v67 = objc_msgSend_zoneID(v64, v65, v66);
    *buf = 138543618;
    v95 = v63;
    v96 = 2112;
    v97 = v67;
    _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Fetching %{public}@PCS data for zone %@", buf, 0x16u);
  }

  v41 = objc_msgSend_pcsCache(self, v39, v40);
  v44 = objc_msgSend_recordID(v11, v42, v43);
  v47 = objc_msgSend_zoneID(v44, v45, v46);
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_2251F2D74;
  v82[3] = &unk_278549D80;
  v48 = v14;
  v83 = v48;
  v86 = v92;
  v49 = v11;
  v84 = v49;
  v87 = v88;
  v50 = v15;
  v85 = v50;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v41, v51, v47, v48, v35, v82);

  if (v21 || (objc_msgSend_record(self, v52, v53), v54 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v54, (isKindOfClass & 1) != 0))
  {
    dispatch_group_enter(v50);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v58 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v95 = v21;
      _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "Fetching PCS data for share %@", buf, 0xCu);
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_2251F2F30;
    v77[3] = &unk_278549DA8;
    v80 = v90;
    v78 = v21;
    v81 = v88;
    v79 = v50;
    objc_msgSend__fetchSharePCSForID_withCompletionHandler_(self, v59, v78, v77);
  }

  v60 = objc_msgSend_modifyRecordsQueue(v48, v56, v57);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251F3080;
  block[3] = &unk_278549DD0;
  v71 = v49;
  selfCopy = self;
  v73 = v88;
  v74 = v92;
  v75 = v90;
  v76 = v21 != 0;
  v61 = v49;
  dispatch_group_notify(v50, v60, block);

  _Block_object_dispose(v88, 8);
  _Block_object_dispose(v90, 8);

  _Block_object_dispose(v92, 8);
  v62 = *MEMORY[0x277D85DE8];
}

- (void)_continueCreateAndSavePCSWithZonePCS:(id)s sharePCS:(id)cS
{
  v197 = *MEMORY[0x277D85DE8];
  sCopy = s;
  cSCopy = cS;
  v10 = objc_msgSend_record(self, v8, v9);
  selfCopy = self;
  v13 = objc_msgSend_operation(self, v11, v12);
  v14 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v18 = v15;
    v21 = objc_msgSend_recordID(v10, v19, v20);
    *buf = 138412290;
    v194 = v21;
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Creating new PCS object for record %@", buf, 0xCu);
  }

  if (objc_msgSend_zoneishPCS(sCopy, v16, v17))
  {
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v141 = v24;
      v144 = objc_msgSend_zoneishPublicKeyID(sCopy, v142, v143);
      v147 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v144, v145, v146);
      v150 = objc_msgSend_recordID(v10, v148, v149);
      *buf = 138543618;
      v194 = v147;
      v195 = 2112;
      v196 = v150;
      _os_log_debug_impl(&dword_22506F000, v141, OS_LOG_TYPE_DEBUG, "Using zoneish PCS with key %{public}@ for record %@", buf, 0x16u);
    }

    v27 = objc_msgSend_zoneishPCS(sCopy, v25, v26);
    v30 = objc_msgSend_zoneishPublicKeyID(sCopy, v28, v29);
    objc_msgSend_setZoneishKeyID_(v10, v31, v30);

    if (*MEMORY[0x277CBC810] != 1)
    {
      goto LABEL_23;
    }

    v34 = objc_msgSend_unitTestOverrides(v13, v32, v33);
    v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"TwoByteZoneishKeyIDs");

    if (v36)
    {
      v39 = objc_msgSend_zoneishKeyID(v10, v37, v38);
      v41 = objc_msgSend_subdataWithRange_(v39, v40, 0, 2);
      objc_msgSend_setZoneishKeyID_(v10, v42, v41);
    }

    else
    {
      v100 = objc_msgSend_unitTestOverrides(v13, v37, v38);
      v102 = objc_msgSend_objectForKeyedSubscript_(v100, v101, @"ZoneishKeyIDWithOnlyTwoValidBytes");

      if (v102)
      {
        v105 = objc_msgSend_zoneishKeyID(v10, v103, v104);
        v107 = objc_msgSend_subdataWithRange_(v105, v106, 0, 2);
        v110 = objc_msgSend_mutableCopy(v107, v108, v109);

        *buf = -21846;
        objc_msgSend_appendBytes_length_(v110, v111, buf, 2);
        objc_msgSend_setZoneishKeyID_(v10, v112, v110);

        goto LABEL_23;
      }

      v136 = objc_msgSend_unitTestOverrides(v13, v103, v104);
      v138 = objc_msgSend_objectForKeyedSubscript_(v136, v137, @"RandomZoneishKeyID");

      if (!v138)
      {
        goto LABEL_23;
      }

      *buf = -1515870811;
      v39 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v139, buf, 4);
      objc_msgSend_setZoneishKeyID_(v10, v140, v39);
    }

LABEL_23:
    if (v27)
    {
      CFRetain(v27);
      v114 = 0;
      goto LABEL_30;
    }

    v114 = 0;
LABEL_50:
    v116 = 0;
    v27 = 0;
    v115 = v114 == 0;
    goto LABEL_51;
  }

  if (objc_msgSend_pcs(sCopy, v22, v23))
  {
    v186 = v10;
    v45 = objc_msgSend_container(v13, v43, v44);
    objc_msgSend_pcsManager(v45, v46, v47);
    v49 = v48 = v13;
    v52 = objc_msgSend_pcs(sCopy, v50, v51);
    v185 = cSCopy;
    v55 = objc_msgSend_pcs(cSCopy, v53, v54);
    v58 = objc_msgSend_record(selfCopy, v56, v57);
    v63 = objc_msgSend_useLightweightPCS(v58, v59, v60);
    v64 = v48;
    if (v63)
    {
      v48 = objc_msgSend_container(v48, v61, v62);
      v14 = objc_msgSend_entitlements(v48, v65, v66);
      hasLightweightPCSEntitlement = objc_msgSend_hasLightweightPCSEntitlement(v14, v67, v68);
    }

    else
    {
      hasLightweightPCSEntitlement = 0;
    }

    v192 = 0;
    v27 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v49, v61, v52, v55, hasLightweightPCSEntitlement, &v192);
    v114 = v192;
    if (v63)
    {
    }

    v13 = v64;
    cSCopy = v185;
    v10 = v186;
    goto LABEL_30;
  }

  if (objc_msgSend_databaseScope(v13, v43, v44) != 3)
  {
    v132 = MEMORY[0x277CBC560];
    v133 = *MEMORY[0x277CBC120];
    v134 = objc_msgSend_recordID(v10, v70, v71);
    v114 = objc_msgSend_errorWithDomain_code_format_(v132, v135, v133, 5001, @"We couldn't decrypt the zone PCS and this isn't a share, so we can't create a new record PCS for %@", v134);
LABEL_49:

    goto LABEL_50;
  }

  v72 = cSCopy;
  v73 = objc_msgSend_pcsData(sCopy, v70, v71);

  v183 = v13;
  if (!v73)
  {
    v151 = v10;
    v152 = MEMORY[0x277CBC560];
    v153 = *MEMORY[0x277CBC120];
    v188 = v151;
    v134 = objc_msgSend_recordID(v151, v74, v75);
    v158 = objc_msgSend_pcsData(sCopy, v154, v155);
    if (v158)
    {
      v159 = &stru_28385ED00;
    }

    else
    {
      v159 = @"zone PCS data ";
    }

    v162 = objc_msgSend_pcsData(sCopy, v156, v157);
    v163 = &stru_28385ED00;
    if (!v162)
    {
      if (objc_msgSend_pcs(v72, v160, v161))
      {
        v163 = &stru_28385ED00;
      }

      else
      {
        v163 = @" and no ";
      }
    }

    v164 = objc_msgSend_pcs(v72, v160, v161);
    v166 = @"share PCS";
    if (v164)
    {
      v166 = &stru_28385ED00;
    }

    v181 = v163;
    cSCopy = v72;
    v114 = objc_msgSend_errorWithDomain_code_format_(v152, v165, v153, 5001, @"Can't create a record PCS for %@ because there is no %@%@%@", v134, v159, v181, v166);

    v10 = v188;
    goto LABEL_49;
  }

  v187 = objc_msgSend_container(v13, v74, v75);
  v78 = objc_msgSend_pcsManager(v187, v76, v77);
  v81 = objc_msgSend_pcsData(sCopy, v79, v80);
  v84 = objc_msgSend_pcs(v72, v82, v83);
  v87 = objc_msgSend_record(selfCopy, v85, v86);
  v90 = objc_msgSend_useLightweightPCS(v87, v88, v89);
  v93 = v13;
  v94 = v90;
  if (v90)
  {
    v184 = objc_msgSend_container(v93, v91, v92);
    v182 = objc_msgSend_entitlements(v184, v95, v96);
    v99 = objc_msgSend_hasLightweightPCSEntitlement(v182, v97, v98);
  }

  else
  {
    v99 = 0;
  }

  v191 = 0;
  v180 = v78;
  v27 = objc_msgSend_createRecordPCSWithEncryptedZonePCS_sharePCS_createLite_error_(v78, v91, v81, v84, v99, &v191);
  v114 = v191;
  if (v94)
  {
  }

  cSCopy = v72;
  v13 = v183;
LABEL_30:
  v115 = v114 == 0;
  v116 = v27 != 0;
  if (!v114 && v27)
  {
    v117 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v113, v10);
    if (objc_msgSend_zoneishPCS(sCopy, v118, v119))
    {
      v114 = 0;
    }

    else
    {
      v122 = objc_msgSend_container(v13, v120, v121);
      v125 = objc_msgSend_pcsManager(v122, v123, v124);
      v190 = 0;
      v127 = objc_msgSend_dataFromRecordPCS_error_(v125, v126, v27, &v190);
      v114 = v190;

      objc_msgSend_setPcsData_(v117, v128, v127);
    }

    objc_msgSend_setPcs_(v117, v120, v27);
    objc_msgSend_setZonePCSData_(v117, v129, sCopy);
    objc_msgSend_setSharePCSData_(v117, v130, cSCopy);
    objc_msgSend__addShareToPCSData_withError_(selfCopy, v131, v117, v114);

    goto LABEL_59;
  }

LABEL_51:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v167 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    v175 = v167;
    v178 = objc_msgSend_recordID(v10, v176, v177);
    *buf = 138412546;
    v194 = v178;
    v195 = 2112;
    v196 = v114;
    _os_log_error_impl(&dword_22506F000, v175, OS_LOG_TYPE_ERROR, "Couldn't create a new record PCS for %@: %@", buf, 0x16u);

    if (v115)
    {
LABEL_55:
      v170 = MEMORY[0x277CBC560];
      v171 = *MEMORY[0x277CBC120];
      v172 = objc_msgSend_recordID(v10, v168, v169);
      v114 = objc_msgSend_errorWithDomain_code_format_(v170, v173, v171, 5001, @"Couldn't create a new record PCS for %@", v172);

      objc_msgSend__addShareToPCSData_withError_(selfCopy, v174, 0, v114);
      if (!v116)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }
  }

  else if (v115)
  {
    goto LABEL_55;
  }

  objc_msgSend__addShareToPCSData_withError_(selfCopy, v168, 0, v114);
  if (v116)
  {
LABEL_59:
    CFRelease(v27);
  }

LABEL_60:

  v179 = *MEMORY[0x277D85DE8];
}

- (void)_unwrapRecordPCSForZone
{
  v4 = objc_msgSend_record(self, a2, v2);
  objc_initWeak(&location, self);
  v7 = objc_msgSend_pcsCache(self, v5, v6);
  v10 = objc_msgSend_recordID(v4, v8, v9);
  v13 = objc_msgSend_zoneID(v10, v11, v12);
  v16 = objc_msgSend_operation(self, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251F3D40;
  v19[3] = &unk_278549DF8;
  objc_copyWeak(&v21, &location);
  v17 = v4;
  v20 = v17;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v7, v18, v13, v16, 0, v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_unwrapRecordPCSWithShareID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_record(self, v5, v6);
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251F4354;
  v11[3] = &unk_278549E20;
  objc_copyWeak(&v14, &location);
  v8 = v7;
  v12 = v8;
  v9 = dCopy;
  v13 = v9;
  objc_msgSend__fetchSharePCSForID_withCompletionHandler_(self, v10, v9, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_unwrapRecordPCSForParent
{
  v4 = objc_msgSend_record(self, a2, v2);
  objc_initWeak(&location, self);
  v7 = objc_msgSend_parent(v4, v5, v6);
  v10 = objc_msgSend_recordID(v7, v8, v9);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251F492C;
  v14[3] = &unk_278549E48;
  objc_copyWeak(&v17, &location);
  v11 = v4;
  v15 = v11;
  v12 = v10;
  v16 = v12;
  objc_msgSend__fetchParentPCSForID_withCompletionHandler_(self, v13, v12, v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_fetchExistingPCSForProvidedPCSData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_record(self, v5, v6);
  objc_initWeak(&location, self);
  v10 = objc_msgSend_pcsCache(self, v8, v9);
  v13 = objc_msgSend_recordID(v7, v11, v12);
  v16 = objc_msgSend_operation(self, v14, v15);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2251F4F60;
  v20[3] = &unk_278549E48;
  objc_copyWeak(&v23, &location);
  v17 = dataCopy;
  v21 = v17;
  v18 = v7;
  v22 = v18;
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v10, v19, v13, v16, 0, v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_handlePCSData:(id)data withError:(id)error
{
  v478 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  v10 = objc_msgSend_record(self, v8, v9);
  v15 = objc_msgSend_operation(self, v11, v12);
  v16 = MEMORY[0x277CBC878];
  v17 = MEMORY[0x277CBC880];
  v18 = MEMORY[0x277CBC830];
  if (errorCopy)
  {
    goto LABEL_2;
  }

  if (!objc_msgSend_pcs(dataCopy, v13, v14))
  {
    goto LABEL_167;
  }

  v35 = *v16;
  v36 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v35);
  }

  v37 = *v18;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v135 = objc_msgSend_recordID(v10, v38, v39);
    v138 = objc_msgSend_etag(dataCopy, v136, v137);
    *buf = 138543618;
    v472 = v135;
    v473 = 2114;
    v474 = v138;
    _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Got PCS data for record=%{public}@, protectionInfoTag=%{public}@", buf, 0x16u);

    v36 = MEMORY[0x277CBC880];
  }

  if (!objc_msgSend_wantsChainPCS(v10, v40, v41))
  {
    errorCopy = 0;
    goto LABEL_52;
  }

  v44 = objc_msgSend_chainPCSData(dataCopy, v42, v43);

  if (v44)
  {
    v47 = objc_msgSend_pcsManager(self, v45, v46);
    v49 = objc_msgSend_decryptChainPCSForRecordPCS_(v47, v48, dataCopy);

    if (!v49)
    {
      v52 = objc_msgSend_chainPCSData(dataCopy, v50, v51);
      v49 = objc_msgSend_pcs(v52, v53, v54);

      if (v49)
      {
        v57 = objc_msgSend_chainPCSData(dataCopy, v55, v56);
        ChainPCSWithError = objc_msgSend_pcs(v57, v58, v59);

        if (ChainPCSWithError)
        {
          CFRetain(ChainPCSWithError);
          v49 = 0;
LABEL_25:
          v71 = objc_msgSend_pcsManager(self, v61, v62);
          v73 = objc_msgSend_addIdentityBackToPCS_(v71, v72, ChainPCSWithError);

          if (v73)
          {
            v76 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v76);
            }

            v77 = MEMORY[0x277CBC830];

            v78 = *v77;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
            {
              v81 = objc_msgSend_recordID(self, v79, v80);
              *buf = 138412546;
              v472 = v81;
              v473 = 2112;
              v474 = v73;
              _os_log_impl(&dword_22506F000, v78, OS_LOG_TYPE_INFO, "Warn: Couldn't create protection data from chain PCS for record %@: %@", buf, 0x16u);
            }
          }

          v82 = objc_msgSend_pcsManager(self, v74, v75);
          v469 = 0;
          v84 = objc_msgSend_dataFromZonePCS_error_(v82, v83, ChainPCSWithError, &v469);
          v85 = v469;
          v88 = objc_msgSend_record(self, v86, v87);
          objc_msgSend_setChainProtectionInfo_(v88, v89, v84);

          if (v85)
          {
            v90 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v90);
            }

            v91 = MEMORY[0x277CBC830];

            v92 = *v91;
            if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
            {
              v95 = objc_msgSend_recordID(self, v93, v94);
              *buf = 138412546;
              v472 = v95;
              v473 = 2112;
              v474 = v85;
              _os_log_impl(&dword_22506F000, v92, OS_LOG_TYPE_INFO, "Warn: Couldn't create protection data from chain PCS for record %@: %@", buf, 0x16u);
            }
          }

          v96 = objc_alloc(MEMORY[0x277CBC2E8]);
          v99 = objc_msgSend_pcsManager(self, v97, v98);
          v468 = 0;
          v101 = objc_msgSend_sharingIdentityDataFromPCS_error_(v99, v100, ChainPCSWithError, &v468);
          v102 = v468;
          v104 = objc_msgSend_initWithData_(v96, v103, v101);
          v107 = objc_msgSend_record(self, v105, v106);
          objc_msgSend_setChainPrivateKey_(v107, v108, v104);

          if (v102)
          {
            v109 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v109);
            }

            v110 = MEMORY[0x277CBC830];

            v111 = *v110;
            if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
            {
              v114 = objc_msgSend_recordID(self, v112, v113);
              *buf = 138412546;
              v472 = v114;
              v473 = 2112;
              v474 = v102;
              _os_log_impl(&dword_22506F000, v111, OS_LOG_TYPE_INFO, "Warn: Couldn't create private chaining key from chain PCS for record %@: %@", buf, 0x16u);
            }
          }

          v115 = [CKDChainPCSData alloc];
          v118 = objc_msgSend_record(self, v116, v117);
          v121 = objc_msgSend_chainProtectionInfo(v118, v119, v120);
          v124 = objc_msgSend_record(self, v122, v123);
          v127 = objc_msgSend_chainPrivateKey(v124, v125, v126);
          v129 = objc_msgSend_initWithPCSData_encryptedPrivateKey_(v115, v128, v121, v127);
          objc_msgSend_setChainPCSData_(dataCopy, v130, v129);

          v133 = objc_msgSend_chainPCSData(dataCopy, v131, v132);
          objc_msgSend_setPcs_(v133, v134, ChainPCSWithError);

          CFRelease(ChainPCSWithError);
          errorCopy = 0;
          goto LABEL_52;
        }

        v49 = 0;
      }
    }
  }

  else
  {
    v63 = *MEMORY[0x277CBC878];
    if (*v36 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v63);
    }

    v64 = *v18;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      v439 = objc_msgSend_recordID(self, v65, v66);
      *buf = 138412290;
      v472 = v439;
      _os_log_debug_impl(&dword_22506F000, v64, OS_LOG_TYPE_DEBUG, "Record %@ is a parent in this save group but it has no chain PCS data yet. Creating chain PCS data", buf, 0xCu);
    }

    v69 = objc_msgSend_pcsManager(self, v67, v68);
    v470 = 0;
    ChainPCSWithError = objc_msgSend_createChainPCSWithError_(v69, v70, &v470);
    v49 = v470;

    v36 = MEMORY[0x277CBC880];
    if (ChainPCSWithError)
    {
      goto LABEL_25;
    }
  }

  v139 = *MEMORY[0x277CBC878];
  if (*v36 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v139);
  }

  v140 = *v18;
  if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
  {
    v143 = objc_msgSend_recordID(self, v141, v142);
    *buf = 138412546;
    v472 = v143;
    v473 = 2112;
    v474 = v49;
    _os_log_impl(&dword_22506F000, v140, OS_LOG_TYPE_INFO, "Couldn't create a chaining PCS for %@: %@", buf, 0x16u);
  }

  if (!v49)
  {
    v146 = MEMORY[0x277CBC560];
    v147 = *MEMORY[0x277CBC120];
    v148 = objc_msgSend_recordID(self, v144, v145);
    v49 = objc_msgSend_errorWithDomain_code_format_(v146, v149, v147, 5005, @"Couldn't create a parent PCS for record %@", v148);
  }

  errorCopy = v49;
LABEL_52:
  v150 = objc_msgSend_tombstonedPublicKeyIDs(v10, v42, v43);
  v153 = objc_msgSend_count(v150, v151, v152);

  v457 = errorCopy;
  if (v153)
  {
    v156 = *MEMORY[0x277CBC878];
    v157 = MEMORY[0x277CBC830];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v156);
    }

    v158 = *v157;
    if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
    {
      v161 = objc_msgSend_tombstonedPublicKeyIDs(v10, v159, v160);
      v164 = objc_msgSend_count(v161, v162, v163);
      v167 = objc_msgSend_recordID(self, v165, v166);
      *buf = 134218242;
      v472 = v164;
      v473 = 2112;
      v474 = v167;
      _os_log_impl(&dword_22506F000, v158, OS_LOG_TYPE_INFO, "Found %lu tombstoned key(s) on record %@", buf, 0x16u);
    }

    v455 = v15;

    v458 = objc_opt_new();
    v464 = 0u;
    v465 = 0u;
    v466 = 0u;
    v467 = 0u;
    v170 = objc_msgSend_record(self, v168, v169);
    v173 = objc_msgSend_tombstonedPublicKeyIDs(v170, v171, v172);

    v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v174, &v464, v477, 16);
    if (v175)
    {
      v178 = v175;
      v454 = v10;
      v179 = 0;
      v180 = *v465;
      do
      {
        for (i = 0; i != v178; ++i)
        {
          if (*v465 != v180)
          {
            objc_enumerationMutation(v173);
          }

          v182 = *(*(&v464 + 1) + 8 * i);
          v183 = objc_msgSend_pcsManager(self, v176, v177);
          v186 = objc_msgSend_pcs(dataCopy, v184, v185);
          v188 = objc_msgSend_removePublicKeyID_fromPCS_(v183, v187, v182, v186);

          if (v188)
          {
            objc_msgSend_addObject_(v458, v189, v182);
          }

          else
          {
            v179 = 1;
          }
        }

        v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v176, &v464, v477, 16);
      }

      while (v178);
      v190 = v179 ^ 1;
      v10 = v454;
    }

    else
    {
      v190 = 1;
    }

    objc_msgSend_setTombstonedPublicKeyIDs_(v10, v191, v458);
    errorCopy = v457;
    if ((objc_msgSend_didRollRecordPCSMasterKey(self, v192, v193) & 1) == 0)
    {
      errorCopy = v457;
      if ((v190 & 1) == 0)
      {
        v196 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v194, v195);
        v199 = objc_msgSend_rollRecordMasterKeysOnUnshare(v196, v197, v198);

        errorCopy = v457;
        if (v199)
        {
          v200 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v200);
          }

          v201 = MEMORY[0x277CBC830];

          v202 = *v201;
          if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
          {
            v447 = objc_msgSend_recordID(self, v203, v204);
            *buf = 138412290;
            v472 = v447;
            _os_log_debug_impl(&dword_22506F000, v202, OS_LOG_TYPE_DEBUG, "Rolling record PCS master key since we cleaned up tombstoned key(s) on record %@", buf, 0xCu);
          }

          v207 = objc_msgSend_pcsManager(self, v205, v206);
          v210 = objc_msgSend_pcs(dataCopy, v208, v209);
          errorCopy = objc_msgSend_rollMasterKeyForRecordPCS_forOperation_(v207, v211, v210, v455);

          objc_msgSend_setDidRollRecordPCSMasterKey_(self, v212, 1);
        }
      }
    }

    v15 = v455;
  }

  v213 = objc_msgSend_record(self, v154, v155);
  v216 = objc_msgSend_share(v213, v214, v215);
  v219 = objc_msgSend_recordID(v216, v217, v218);

  v459 = dataCopy;
  if (v219)
  {
    v222 = objc_msgSend_handlersByRecordID(v15, v220, v221);
    v225 = objc_msgSend_record(self, v223, v224);
    v228 = objc_msgSend_share(v225, v226, v227);
    v231 = objc_msgSend_recordID(v228, v229, v230);
    v233 = objc_msgSend_objectForKeyedSubscript_(v222, v232, v231);
    v236 = objc_msgSend_record(v233, v234, v235);

    v237 = v236;
    if (v236)
    {
      objc_msgSend_setWantsPublicSharingKey_(v10, v220, 1);
    }

    dataCopy = v459;
  }

  else
  {
    v237 = 0;
  }

  v238 = objc_msgSend_mutableEncryptedPSK(v10, v220, v221);
  if (v238)
  {
    v241 = v238;
  }

  else
  {
    if (!objc_msgSend_wantsPublicSharingKey(v10, v239, v240))
    {
      goto LABEL_106;
    }

    v244 = objc_msgSend_mutableEncryptedPSK(v237, v242, v243);

    if (v244)
    {
      v247 = *MEMORY[0x277CBC878];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v247);
      }

      v248 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEBUG))
      {
        v449 = objc_msgSend_recordID(v237, v249, v250);
        v452 = objc_msgSend_recordID(self, v450, v451);
        *buf = 138412546;
        v472 = v449;
        v473 = 2112;
        v474 = v452;
        _os_log_debug_impl(&dword_22506F000, v248, OS_LOG_TYPE_DEBUG, "Using publicSharingIdentity from share %@ for record %@", buf, 0x16u);
      }

      v251 = objc_alloc(MEMORY[0x277CBC2E8]);
      v254 = objc_msgSend_mutableEncryptedPSK(v237, v252, v253);
      v257 = objc_msgSend_data(v254, v255, v256);
      v259 = objc_msgSend_initWithData_(v251, v258, v257);
      objc_msgSend_setMutableEncryptedPSK_(v10, v260, v259);
    }

    v261 = objc_msgSend_mutableEncryptedPSK(v10, v245, v246);

    if (!v261)
    {
      v264 = objc_msgSend_encryptedPublicSharingKey(dataCopy, v262, v263);
      objc_msgSend_setMutableEncryptedPSK_(v10, v265, v264);
    }

    v266 = objc_msgSend_mutableEncryptedPSK(v10, v262, v263);

    if (!v266)
    {
      v463 = v457;
      PublicSharingKeyWithError = objc_msgSend__createPublicSharingKeyWithError_(self, v267, &v463);
      v270 = v463;

      if (PublicSharingKeyWithError)
      {
        v457 = v270;
      }

      else
      {
        v271 = *MEMORY[0x277CBC878];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v271);
        }

        v272 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
        {
          v453 = objc_msgSend_recordID(v10, v273, v274);
          *buf = 138412546;
          v472 = v453;
          v473 = 2112;
          v474 = v270;
          _os_log_error_impl(&dword_22506F000, v272, OS_LOG_TYPE_ERROR, "Failed to prepare public sharing key for record %@: %@", buf, 0x16u);
        }

        if (!v270)
        {
          v277 = MEMORY[0x277CBC560];
          v278 = *MEMORY[0x277CBC120];
          objc_msgSend_recordID(self, v275, v276);
          v280 = v279 = v237;
          v270 = objc_msgSend_errorWithDomain_code_format_(v277, v281, v278, 5005, @"Couldn't create a public sharing key for record %@", v280);

          v237 = v279;
          dataCopy = v459;
        }

        v282 = v270;

        v457 = v282;
        errorCopy = v282;
      }
    }

    v241 = objc_msgSend_mutableEncryptedPSK(v10, v267, v268);
    objc_msgSend_setEncryptedPublicSharingKey_(dataCopy, v283, v241);
  }

LABEL_106:
  v286 = objc_msgSend_baseToken(v10, v242, v243);
  if (v286)
  {
LABEL_107:

    goto LABEL_111;
  }

  if (objc_msgSend_wantsPublicSharingKey(v10, v284, v285))
  {
    v289 = objc_msgSend_baseToken(v237, v287, v288);

    if (v289)
    {
      v286 = objc_msgSend_baseToken(v237, v287, v288);
      objc_msgSend_setBaseToken_(v10, v290, v286);
      goto LABEL_107;
    }
  }

LABEL_111:
  v291 = objc_msgSend__needsSigningPCS(self, v287, v288);
  v16 = MEMORY[0x277CBC878];
  if (v291)
  {
    v294 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v294);
    }

    v295 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v295, OS_LOG_TYPE_DEBUG))
    {
      v423 = objc_msgSend_recordID(v10, v296, v297);
      *buf = 138412290;
      v472 = v423;
      _os_log_debug_impl(&dword_22506F000, v295, OS_LOG_TYPE_DEBUG, "Should set signing PCS for record %@", buf, 0xCu);

      v16 = MEMORY[0x277CBC878];
    }

    objc_msgSend__setSigningPCSIdentity_(self, v298, dataCopy);
  }

  if (errorCopy)
  {

    v18 = MEMORY[0x277CBC830];
    v17 = MEMORY[0x277CBC880];
    goto LABEL_2;
  }

  v456 = v237;
  v299 = objc_msgSend_container(v15, v292, v293);
  v302 = objc_msgSend_pcsManager(v299, v300, v301);
  v305 = objc_msgSend_pcsKeysToRemove(dataCopy, v303, v304);
  v308 = objc_msgSend_pcs(dataCopy, v306, v307);
  v311 = objc_msgSend_protectionEtag(v10, v309, v310);
  v313 = objc_msgSend_removePCSKeys_fromPCS_withProtectionEtag_forOperation_(v302, v312, v305, v308, v311, v15);

  if (v313)
  {
    v462[0] = MEMORY[0x277D85DD0];
    v462[1] = 3221225472;
    v462[2] = sub_2251F70C8;
    v462[3] = &unk_2785498A0;
    v462[4] = v313;
    objc_msgSend_updateCloudKitMetrics_(v15, v314, v462);
  }

  v316 = objc_msgSend_pcs(v459, v314, v315);
  objc_msgSend_setRecordPCS_(v10, v317, v316);
  v320 = objc_msgSend_container(v15, v318, v319);
  v323 = objc_msgSend_pcsManager(v320, v321, v322);
  v326 = objc_msgSend_pcs(v459, v324, v325);
  v461 = v457;
  v328 = objc_msgSend_dataFromRecordPCS_error_(v323, v327, v326, &v461);
  v329 = v461;

  if (!v328)
  {
    v360 = *MEMORY[0x277CBC878];
    v361 = v456;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v360);
    }

    dataCopy = v459;

    v362 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v362, OS_LOG_TYPE_ERROR))
    {
      v448 = objc_msgSend_recordID(v10, v363, v364);
      *buf = 138412546;
      v472 = v448;
      v473 = 2112;
      v474 = v329;
      _os_log_error_impl(&dword_22506F000, v362, OS_LOG_TYPE_ERROR, "Couldn't create PCS data for record %@: %@", buf, 0x16u);
    }

    goto LABEL_166;
  }

  objc_msgSend_setProtectionData_(v10, v330, v328);
  v332 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v331, v328);
  objc_msgSend_setProtectionEtag_(v10, v333, v332);

  if (!objc_msgSend__canSetPreviousProtectionEtag(self, v334, v335) || (objc_msgSend_previousProtectionEtag(v10, v336, v337), v338 = objc_claimAutoreleasedReturnValue(), v338, !v338))
  {
    v339 = objc_msgSend_etag(v459, v336, v337);
    objc_msgSend_setPreviousProtectionEtag_(v10, v340, v339);
  }

  v341 = objc_msgSend_previousProtectionEtagFromUnitTest(v10, v336, v337);

  if (v341)
  {
    v344 = objc_msgSend_previousProtectionEtagFromUnitTest(v10, v342, v343);
    objc_msgSend_setPreviousProtectionEtag_(v10, v345, v344);

    objc_msgSend_setPreviousProtectionEtagFromUnitTest_(v10, v346, 0);
  }

  v347 = objc_msgSend_container(v15, v342, v343);
  v350 = objc_msgSend_deviceContext(v347, v348, v349);
  v353 = objc_msgSend_testDeviceReference(v350, v351, v352);
  if (v353)
  {
    v356 = v353;
    v357 = objc_msgSend_zoneProtectionEtag(v10, v354, v355);

    if (v357)
    {
      goto LABEL_137;
    }
  }

  else
  {
  }

  v365 = objc_msgSend_zonePCSData(v459, v358, v359);
  v368 = objc_msgSend_etag(v365, v366, v367);
  objc_msgSend_setZoneProtectionEtag_(v10, v369, v368);

LABEL_137:
  v370 = objc_msgSend_container(v15, v358, v359);
  v373 = objc_msgSend_deviceContext(v370, v371, v372);
  v376 = objc_msgSend_testDeviceReference(v373, v374, v375);
  if (!v376)
  {

    dataCopy = v459;
LABEL_141:
    v383 = objc_msgSend_sharePCSData(dataCopy, v381, v382);
    v386 = objc_msgSend_shareEtag(v383, v384, v385);
    objc_msgSend_setShareEtag_(v10, v387, v386);

    goto LABEL_142;
  }

  v379 = v376;
  v380 = objc_msgSend_shareEtag(v10, v377, v378);

  dataCopy = v459;
  if (!v380)
  {
    goto LABEL_141;
  }

LABEL_142:
  v388 = objc_msgSend_zonePCSData(dataCopy, v381, v382);
  v391 = objc_msgSend_zoneishPublicKeyID(v388, v389, v390);

  v361 = v456;
  if (!v391)
  {
    goto LABEL_165;
  }

  v393 = *MEMORY[0x277CBC878];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v393);
  }

  v394 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v394, OS_LOG_TYPE_INFO))
  {
    v397 = objc_msgSend_recordID(v10, v395, v396);
    v400 = objc_msgSend_zoneishKeyID(v10, v398, v399);
    v403 = objc_msgSend_zoneishPublicKeyID(v459, v401, v402);
    *buf = 138412802;
    v472 = v397;
    v473 = 2112;
    v474 = v400;
    v475 = 2112;
    v476 = v403;
    _os_log_impl(&dword_22506F000, v394, OS_LOG_TYPE_INFO, "Setting zoneishKeyID on record %@ from %@ to %@", buf, 0x20u);

    v361 = v456;
  }

  dataCopy = v459;
  v406 = objc_msgSend_zoneishPublicKeyID(v459, v404, v405);
  objc_msgSend_setZoneishKeyID_(v10, v407, v406);

  if (*MEMORY[0x277CBC810] != 1)
  {
    goto LABEL_165;
  }

  v409 = objc_msgSend_unitTestOverrides(v15, v392, v408);
  v411 = objc_msgSend_objectForKeyedSubscript_(v409, v410, @"TwoByteZoneishKeyIDs");

  if (v411)
  {
    v414 = objc_msgSend_zoneishKeyID(v10, v412, v413);
    v416 = objc_msgSend_subdataWithRange_(v414, v415, 0, 2);

    objc_msgSend_setZoneishKeyID_(v10, v417, v416);
    v418 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v418);
    }

    v419 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(v419, OS_LOG_TYPE_INFO))
    {
      goto LABEL_164;
    }

    v422 = objc_msgSend_recordID(v10, v420, v421);
    *buf = 138412546;
    v472 = v422;
    v473 = 2112;
    v474 = v416;
LABEL_163:
    _os_log_impl(&dword_22506F000, v419, OS_LOG_TYPE_INFO, "Setting zoneishKeyID on record %@ to %@", buf, 0x16u);

LABEL_164:
    v361 = v456;
    dataCopy = v459;
    goto LABEL_165;
  }

  v424 = objc_msgSend_unitTestOverrides(v15, v412, v413);
  v426 = objc_msgSend_objectForKeyedSubscript_(v424, v425, @"ZoneishKeyIDWithOnlyTwoValidBytes");

  if (v426)
  {
    v429 = objc_msgSend_zoneishKeyID(v10, v427, v428);
    v431 = objc_msgSend_subdataWithRange_(v429, v430, 0, 2);
    v416 = objc_msgSend_mutableCopy(v431, v432, v433);

    LOWORD(v460) = -21846;
    objc_msgSend_appendBytes_length_(v416, v434, &v460, 2);
    objc_msgSend_setZoneishKeyID_(v10, v435, v416);
    v436 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v436);
    }

    v419 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(v419, OS_LOG_TYPE_INFO))
    {
      goto LABEL_164;
    }

    goto LABEL_162;
  }

  v440 = objc_msgSend_unitTestOverrides(v15, v427, v428);
  v442 = objc_msgSend_objectForKeyedSubscript_(v440, v441, @"RandomZoneishKeyID");

  dataCopy = v459;
  if (v442)
  {
    v460 = -1515870811;
    v416 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v392, &v460, 4);
    objc_msgSend_setZoneishKeyID_(v10, v443, v416);
    v444 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v444);
    }

    v419 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(v419, OS_LOG_TYPE_INFO))
    {
      goto LABEL_164;
    }

LABEL_162:
    v422 = objc_msgSend_recordID(v10, v437, v438);
    *buf = 138412546;
    v472 = v422;
    v473 = 2112;
    v474 = v416;
    goto LABEL_163;
  }

LABEL_165:
  objc_msgSend_setRecordPCSData_(self, v392, dataCopy);
LABEL_166:

  v18 = MEMORY[0x277CBC830];
LABEL_167:
  v445 = objc_msgSend_protectionData(v10, v33, v34);

  if (v445)
  {
    objc_msgSend_setState_(self, v446, 3);
    goto LABEL_7;
  }

  errorCopy = 0;
  v17 = MEMORY[0x277CBC880];
  v16 = MEMORY[0x277CBC878];
LABEL_2:
  v19 = *v16;
  if (*v17 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v19);
  }

  v20 = *v18;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v23 = objc_msgSend_recordID(v10, v21, v22);
    *buf = 138412546;
    v472 = v23;
    v473 = 2112;
    v474 = errorCopy;
    _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Warn: Couldn't get PCS data for record %@: %@", buf, 0x16u);
  }

  objc_msgSend_setState_(self, v24, 12);
  objc_msgSend_setError_(self, v25, errorCopy);

LABEL_7:
  v28 = objc_msgSend_pcsGroup(self, v26, v27);
  dispatch_group_leave(v28);

  v31 = objc_msgSend_stateTransitionGroup(v15, v29, v30);
  dispatch_group_leave(v31);

  v32 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharePCSData
{
  if (objc_msgSend_state(self, a2, v2) != 1)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDModifyRecordHandler.m", 1355, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler fetchSharePCSData]", self, "CKDModifyRecordHandlerStateNeedSharePCSData");
  }

  objc_msgSend_setState_(self, v5, 3);
}

- (id)assetsWhichNeedRecordFetch
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_record(self, a2, v2);
  if (!v4)
  {
    goto LABEL_5;
  }

  v7 = v4;
  v8 = objc_msgSend_record(self, v5, v6);
  v11 = objc_msgSend_recordID(v8, v9, v10);

  if (v11)
  {
    v75 = objc_opt_new();
    v14 = objc_msgSend_record(self, v12, v13);
    v67 = objc_msgSend_operation(self, v15, v16);
    selfCopy = self;
    if (objc_msgSend_savePolicy(v67, v17, v18) == 2)
    {
      objc_msgSend_allKeys(v14, v19, v20);
    }

    else
    {
      objc_msgSend_changedKeys(v14, v19, v20);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v22 = v81 = 0u;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v80, v85, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v81;
      v71 = v14;
      v68 = *v81;
      v69 = v22;
      do
      {
        v28 = 0;
        v73 = v26;
        do
        {
          if (*v81 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v80 + 1) + 8 * v28);
          v30 = objc_msgSend_objectForKey_(v14, v25, v29);
          objc_opt_class();
          v31 = v30;
          if (objc_opt_isKindOfClass())
          {
            v32 = v30;
            v33 = v28;
            v34 = v32;
            if (objc_msgSend_isReference(v34, v35, v36))
            {
              v39 = objc_msgSend_assetRereferenceInfo(v34, v37, v38);
              objc_msgSend_setDestinationFieldName_(v39, v40, v29);

              v26 = v73;
              objc_msgSend_addObject_(v75, v41, v34);
            }

            v28 = v33;
            v30 = v31;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_addObject_(v75, v42, v30);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v43 = v22;
                v72 = v28;
                v44 = v30;
                v47 = objc_msgSend_firstObject(v44, v45, v46);
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v78 = 0u;
                  v79 = 0u;
                  v76 = 0u;
                  v77 = 0u;
                  v70 = v44;
                  v49 = v44;
                  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v76, v84, 16);
                  if (v51)
                  {
                    v52 = v51;
                    v53 = *v77;
                    do
                    {
                      for (i = 0; i != v52; ++i)
                      {
                        if (*v77 != v53)
                        {
                          objc_enumerationMutation(v49);
                        }

                        v55 = *(*(&v76 + 1) + 8 * i);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v58 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v56, v57);
                          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, a2, selfCopy, @"CKDModifyRecordHandler.m", 1386, @"first element of asset array is not a CKAsset");

                          v30 = v31;
                        }

                        if (objc_msgSend_isReference(v55, v56, v57))
                        {
                          v62 = objc_msgSend_assetRereferenceInfo(v55, v60, v61);
                          objc_msgSend_setDestinationFieldName_(v62, v63, v29);

                          v30 = v31;
                          objc_msgSend_addObject_(v75, v64, v55);
                        }
                      }

                      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v60, &v76, v84, 16);
                    }

                    while (v52);
                  }

                  v27 = v68;
                  v43 = v69;
                  v44 = v70;
                }

                v28 = v72;
                v26 = v73;
                v22 = v43;
                v14 = v71;
              }
            }
          }

          ++v28;
        }

        while (v28 != v26);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v80, v85, 16);
      }

      while (v26);
    }
  }

  else
  {
LABEL_5:
    v75 = 0;
  }

  v65 = *MEMORY[0x277D85DE8];

  return v75;
}

- (id)prepareAssetsForUploadWithError:(id *)error
{
  errorCopy = error;
  v286 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, error) != 4)
  {
    v188 = errorCopy;
    v189 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v189, v190, a2, self, @"CKDModifyRecordHandler.m", 1403, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler prepareAssetsForUploadWithError:]", self, "CKDModifyRecordHandlerStateNeedAssetUpload");

    errorCopy = v188;
  }

  if (objc_msgSend_isDelete(self, v6, v7))
  {
    objc_msgSend_setState_(self, v8, 5);
    v9 = 0;
    goto LABEL_141;
  }

  v199 = errorCopy;
  v10 = objc_opt_new();
  selfCopy = self;
  v13 = objc_msgSend_record(self, v11, v12);
  v16 = objc_msgSend_record(selfCopy, v14, v15);

  if (!v16)
  {
    v191 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v191, v192, a2, selfCopy);
  }

  v201 = objc_msgSend_recordID(v13, v17, v18);
  if (!v201)
  {
    v193 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v193, v194, a2, selfCopy, @"CKDModifyRecordHandler.m", 1413, @"Expected non-nil recordID for %@", v13);
  }

  v21 = objc_msgSend_operation(selfCopy, v19, v20);
  v271 = 0;
  v272 = &v271;
  v273 = 0x2020000000;
  v274 = 0;
  v267 = 0;
  v268 = &v267;
  v269 = 0x2020000000;
  v270 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251F85E4;
  aBlock[3] = &unk_278549E70;
  aBlock[4] = selfCopy;
  v209 = v13;
  v262 = v209;
  v202 = v21;
  v263 = v202;
  v265 = &v267;
  v200 = v10;
  v264 = v200;
  v266 = &v271;
  v22 = _Block_copy(aBlock);
  if (objc_msgSend_savePolicy(v202, v23, v24) == 2)
  {
    objc_msgSend_allKeys(v209, v25, v26);
  }

  else
  {
    objc_msgSend_changedKeys(v209, v25, v26);
  }

  v259 = 0u;
  v260 = 0u;
  v257 = 0u;
  obj = v258 = 0u;
  v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v257, v285, 16);
  if (v204)
  {
    v205 = *v258;
    v198 = *MEMORY[0x277CBC120];
    do
    {
      v206 = 0;
      do
      {
        if (*v258 != v205)
        {
          objc_enumerationMutation(obj);
        }

        v216 = *(*(&v257 + 1) + 8 * v206);
        v29 = objc_msgSend_objectForKey_(v209, v28, v216);
        v32 = v29;
        if (v29)
        {
          v210 = v29;
        }

        else
        {
          v33 = objc_msgSend_encryptedValues(v209, v30, v31);
          v210 = objc_msgSend_objectForKeyedSubscript_(v33, v34, v216);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if ((v22[2](v22, v210, v216, 0) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v210;
            v253 = 0u;
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
            v38 = objc_msgSend_assets(v35, v36, v37);
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v253, v284, 16);
            v211 = v38;
            if (v40)
            {
              v41 = *v254;
              while (2)
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*v254 != v41)
                  {
                    objc_enumerationMutation(v211);
                  }

                  if ((v22[2](v22, *(*(&v253 + 1) + 8 * i), v216, 0) & 1) == 0)
                  {

                    goto LABEL_126;
                  }
                }

                v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v211, v43, &v253, v284, 16);
                if (v40)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_63;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_prepareStreamingAsset_forUploadWithRecord_(selfCopy, v44, v210, v209);
            goto LABEL_23;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = v210;
            v249 = 0u;
            v250 = 0u;
            v251 = 0u;
            v252 = 0u;
            v48 = objc_msgSend_deltasToSave(v45, v46, v47);
            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v249, v283, 16);
            if (v52)
            {
              v53 = *v250;
LABEL_40:
              v54 = 0;
              while (1)
              {
                if (*v250 != v53)
                {
                  objc_enumerationMutation(v48);
                }

                v55 = *(*(&v249 + 1) + 8 * v54);
                v56 = objc_msgSend_asset(v55, v50, v51);
                if (v56)
                {
                  v57 = objc_msgSend_asset(v55, v50, v51);
                  v60 = objc_msgSend_deltaID(v55, v58, v59);
                  v61 = (v22)[2](v22, v57, v216, v60);

                  if ((v61 & 1) == 0)
                  {
                    break;
                  }
                }

                if (v52 == ++v54)
                {
                  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v249, v283, 16);
                  if (v52)
                  {
                    goto LABEL_40;
                  }

                  break;
                }
              }
            }

            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v64 = objc_msgSend_pendingReplacementRequests(v45, v62, v63);
            v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v245, v282, 16);
            v211 = v64;
            if (v66)
            {
              v212 = *v246;
              do
              {
                v214 = v66;
                for (j = 0; j != v214; ++j)
                {
                  if (*v246 != v212)
                  {
                    objc_enumerationMutation(v211);
                  }

                  v70 = *(*(&v245 + 1) + 8 * j);
                  v241 = 0u;
                  v242 = 0u;
                  v243 = 0u;
                  v244 = 0u;
                  v71 = objc_msgSend_replacementDeltas(v70, v67, v68);
                  v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v241, v281, 16);
                  if (v75)
                  {
                    v76 = *v242;
LABEL_54:
                    v77 = 0;
                    while (1)
                    {
                      if (*v242 != v76)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v78 = *(*(&v241 + 1) + 8 * v77);
                      v79 = objc_msgSend_asset(v78, v73, v74);
                      if (v79)
                      {
                        v80 = objc_msgSend_asset(v78, v73, v74);
                        v83 = objc_msgSend_deltaID(v78, v81, v82);
                        v84 = (v22)[2](v22, v80, v216, v83);

                        if ((v84 & 1) == 0)
                        {
                          break;
                        }
                      }

                      if (v75 == ++v77)
                      {
                        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v73, &v241, v281, 16);
                        if (v75)
                        {
                          goto LABEL_54;
                        }

                        break;
                      }
                    }
                  }
                }

                v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v211, v67, &v245, v282, 16);
              }

              while (v66);
            }

            goto LABEL_63;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85 = v210;
            v88 = objc_msgSend_firstObject(v85, v86, v87);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v239 = 0u;
              v240 = 0u;
              v237 = 0u;
              v238 = 0u;
              v92 = v85;
              v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v237, v280, 16);
              if (v94)
              {
                v95 = 0;
                v96 = *v238;
                while (2)
                {
                  for (k = 0; k != v94; ++k)
                  {
                    if (*v238 != v96)
                    {
                      objc_enumerationMutation(v92);
                    }

                    v98 = *(*(&v237 + 1) + 8 * k);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_msgSend_setState_(selfCopy, v99, 12);
                      v154 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v153, v198, 1007, @"Invalid list of heterogenous values for field name %@ in recordID %@", v216, v201);
                      objc_msgSend_setError_(selfCopy, v155, v154);

                      *(v272 + 24) = 1;
                      goto LABEL_121;
                    }

                    objc_msgSend_setArrayIndex_(v98, v99, v95);
                    if (!v22[2](v22, v98, v216, 0))
                    {
                      goto LABEL_121;
                    }

                    ++v95;
                  }

                  v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v100, &v237, v280, 16);
                  if (v94)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_121:

              v158 = objc_msgSend_error(selfCopy, v156, v157);

              if (v158)
              {
LABEL_126:

LABEL_127:
                goto LABEL_128;
              }
            }

            else
            {
              v101 = objc_msgSend_firstObject(v85, v90, v91);
              objc_opt_class();
              v102 = objc_opt_isKindOfClass();

              if (v102)
              {
                v235 = 0u;
                v236 = 0u;
                v233 = 0u;
                v234 = 0u;
                v211 = v85;
                v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v211, v105, &v233, v279, 16);
                if (v107)
                {
                  v108 = *v234;
                  do
                  {
                    for (m = 0; m != v107; ++m)
                    {
                      if (*v234 != v108)
                      {
                        objc_enumerationMutation(v211);
                      }

                      objc_msgSend_prepareStreamingAsset_forUploadWithRecord_(selfCopy, v106, *(*(&v233 + 1) + 8 * m), v209);
                    }

                    v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v211, v106, &v233, v279, 16);
                  }

                  while (v107);
                }

                goto LABEL_63;
              }

              v110 = objc_msgSend_firstObject(v85, v103, v104);
              objc_opt_class();
              v111 = objc_opt_isKindOfClass();

              if (v111)
              {
                v231 = 0u;
                v232 = 0u;
                v229 = 0u;
                v230 = 0u;
                v211 = v85;
                v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v211, v112, &v229, v278, 16);
                if (v195)
                {
                  v196 = *v230;
                  do
                  {
                    for (n = 0; n != v195; ++n)
                    {
                      if (*v230 != v196)
                      {
                        objc_enumerationMutation(v211);
                      }

                      v115 = *(*(&v229 + 1) + 8 * n);
                      v225 = 0u;
                      v226 = 0u;
                      v227 = 0u;
                      v228 = 0u;
                      v116 = objc_msgSend_deltasToSave(v115, v113, v114);
                      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v117, &v225, v277, 16);
                      if (v120)
                      {
                        v121 = *v226;
LABEL_94:
                        v122 = 0;
                        while (1)
                        {
                          if (*v226 != v121)
                          {
                            objc_enumerationMutation(v116);
                          }

                          v123 = *(*(&v225 + 1) + 8 * v122);
                          v124 = objc_msgSend_asset(v123, v118, v119);
                          if (v124)
                          {
                            v125 = objc_msgSend_asset(v123, v118, v119);
                            v128 = objc_msgSend_deltaID(v123, v126, v127);
                            v129 = (v22)[2](v22, v125, v216, v128);

                            if ((v129 & 1) == 0)
                            {
                              break;
                            }
                          }

                          if (v120 == ++v122)
                          {
                            v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v118, &v225, v277, 16);
                            if (v120)
                            {
                              goto LABEL_94;
                            }

                            break;
                          }
                        }
                      }

                      v223 = 0u;
                      v224 = 0u;
                      v221 = 0u;
                      v222 = 0u;
                      v132 = objc_msgSend_pendingReplacementRequests(v115, v130, v131);
                      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v133, &v221, v276, 16);
                      if (v134)
                      {
                        v213 = *v222;
                        v208 = v132;
                        do
                        {
                          v215 = v134;
                          for (ii = 0; ii != v215; ++ii)
                          {
                            if (*v222 != v213)
                            {
                              objc_enumerationMutation(v208);
                            }

                            v138 = *(*(&v221 + 1) + 8 * ii);
                            v217 = 0u;
                            v218 = 0u;
                            v219 = 0u;
                            v220 = 0u;
                            v139 = objc_msgSend_replacementDeltas(v138, v135, v136);
                            v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v140, &v217, v275, 16);
                            if (v143)
                            {
                              v144 = *v218;
LABEL_108:
                              v145 = 0;
                              while (1)
                              {
                                if (*v218 != v144)
                                {
                                  objc_enumerationMutation(v139);
                                }

                                v146 = *(*(&v217 + 1) + 8 * v145);
                                v147 = objc_msgSend_asset(v146, v141, v142);
                                if (v147)
                                {
                                  v148 = objc_msgSend_asset(v146, v141, v142);
                                  v151 = objc_msgSend_deltaID(v146, v149, v150);
                                  v152 = (v22)[2](v22, v148, v216, v151);

                                  if ((v152 & 1) == 0)
                                  {
                                    break;
                                  }
                                }

                                if (v143 == ++v145)
                                {
                                  v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v141, &v217, v275, 16);
                                  if (v143)
                                  {
                                    goto LABEL_108;
                                  }

                                  break;
                                }
                              }
                            }
                          }

                          v132 = v208;
                          v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v208, v135, &v221, v276, 16);
                        }

                        while (v134);
                      }
                    }

                    v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v211, v113, &v229, v278, 16);
                  }

                  while (v195);
                }

LABEL_63:
              }
            }
          }
        }

LABEL_23:

        ++v206;
      }

      while (v206 != v204);
      v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v257, v285, 16);
      v204 = v159;
    }

    while (v159);
  }

LABEL_128:

  if (*(v268 + 24) != 1)
  {
    v183 = objc_msgSend_error(selfCopy, v160, v161);
    v184 = v183 == 0;

    if (v184)
    {
      objc_msgSend_setState_(selfCopy, v167, 5);
    }

    goto LABEL_135;
  }

  v164 = objc_msgSend_progressTracker(selfCopy, v160, v161);
  if (v164)
  {
    goto LABEL_132;
  }

  v165 = objc_msgSend_saveProgressBlock(v202, v162, v163);
  v166 = v165 == 0;

  if (!v166)
  {
    v169 = objc_alloc(MEMORY[0x277CCACA8]);
    v172 = objc_msgSend_recordID(selfCopy, v170, v171);
    v175 = objc_msgSend_recordName(v172, v173, v174);
    v164 = objc_msgSend_initWithFormat_(v169, v176, @"up|%@", v175);

    v177 = [CKDProgressTracker alloc];
    v179 = objc_msgSend_initWithTrackingID_(v177, v178, v164);
    objc_msgSend_setLastItemPercentage_(v179, v180, v181, 0.01);
    objc_msgSend_setProgressTracker_(selfCopy, v182, v179);

LABEL_132:
  }

LABEL_135:
  if (*(v272 + 24) == 1)
  {
    if (v199)
    {
      *v199 = objc_msgSend_error(selfCopy, v167, v168);
    }

    v185 = 0;
  }

  else
  {
    v185 = v200;
  }

  v9 = v185;

  _Block_object_dispose(&v267, 8);
  _Block_object_dispose(&v271, 8);

LABEL_141:
  v186 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_prepareAsset:(id)asset recordKey:(id)key mergeableDeltaID:(id)d record:(id)record error:(id *)error
{
  v232 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  keyCopy = key;
  dCopy = d;
  recordCopy = record;
  if (assetCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v184 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v184, v185, a2, self, @"CKDModifyRecordHandler.m", 1550, @"Expected non-nil recordKey for %@", 0);

    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  v186 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v186, v187, a2, self, @"CKDModifyRecordHandler.m", 1551, @"Expected non-nil recordKey for %@", assetCopy);

LABEL_3:
  v18 = objc_msgSend_operation(self, v15, v16);
  v21 = objc_msgSend_useEncryption(v18, v19, v20);
  v24 = objc_msgSend_useClearAssetEncryption(v18, v22, v23);
  if (dCopy)
  {
    v27 = objc_msgSend_valueID(dCopy, v25, v26);
    isEncrypted = objc_msgSend_isEncrypted(v27, v28, v29);

    v21 &= isEncrypted;
    v31 = 1;
  }

  else
  {
    v31 = v24;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v33 = assetCopy;
  objc_msgSend_setRecord_(v33, v34, recordCopy);
  objc_msgSend_setRecordKey_(v33, v35, keyCopy);
  if (isKindOfClass)
  {
    if (v21)
    {
      v221 = recordCopy;
      v38 = objc_msgSend_recordPCS(recordCopy, v36, v37);
      v41 = objc_msgSend_assets(v33, v39, v40);
      if (objc_msgSend_count(v41, v42, v43))
      {
        v46 = objc_msgSend_assets(v33, v44, v45);
        v49 = objc_msgSend_firstObject(v46, v47, v48);
      }

      else
      {
        v49 = 0;
      }

      v111 = objc_msgSend_wrappedAssetKey(v49, v109, v110);

      if (v111)
      {
        v219 = dCopy;
        v113 = [CKDWrappingContext alloc];
        v116 = objc_msgSend_recordID(v221, v114, v115);
        objc_msgSend_signature(v49, v117, v118);
        v119 = v18;
        v121 = v120 = v38;
        v124 = objc_msgSend_referenceSignature(v49, v122, v123);
        v126 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v113, v125, v116, keyCopy, 0, v121, v124);

        v129 = objc_msgSend_pcsManager(self, v127, v128);
        v132 = objc_msgSend_wrappedAssetKey(v49, v130, v131);
        v227 = 0;
        v220 = v120;
        v133 = v120;
        v18 = v119;
        v135 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v129, v134, v132, v133, v126, &v227);
        v74 = v227;
        objc_msgSend_setAssetKey_(v49, v136, v135);

        v139 = objc_msgSend_assetKey(v49, v137, v138);

        if (!v139)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v140 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v229 = v49;
            v230 = 2112;
            v231 = v74;
            _os_log_debug_impl(&dword_22506F000, v140, OS_LOG_TYPE_DEBUG, "Couldn't unwrap asset key for the package manifest asset %@: %@", buf, 0x16u);
          }

          objc_msgSend_setAssets_(v33, v141, 0);
        }

        errorCopy3 = error;
        dCopy = v219;
        objc_msgSend_setRecordPCS_(v33, v142, v220);
      }

      else
      {
        v74 = 0;
        errorCopy3 = error;
        objc_msgSend_setRecordPCS_(v33, v112, v38);
      }

      recordCopy = v221;
      if (!errorCopy3)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (v31)
    {
      v74 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 1017, @"Packages not supported with clear asset encryption.");
      errorCopy3 = error;
      if (error)
      {
LABEL_46:
        if (v74)
        {
          v143 = v74;
          *errorCopy3 = v74;
        }
      }
    }

    else
    {
      v74 = 0;
    }

LABEL_48:
    v144 = objc_msgSend_assets(v33, v36, v37);
LABEL_73:
    v104 = v144;
    v173 = v144 == 0;
LABEL_74:

LABEL_77:
    v182 = *MEMORY[0x277D85DE8];
    return v173;
  }

  objc_msgSend_setMergeableDeltaID_(v33, v36, dCopy);
  if (((v21 | v31) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v87 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v229 = v33;
      _os_log_impl(&dword_22506F000, v87, OS_LOG_TYPE_INFO, "Skipping unwrapping of asset key for %@ because encryption is disabled", buf, 0xCu);
    }

LABEL_69:
    v74 = 0;
LABEL_70:
    if (!objc_msgSend_uploaded(v33, v88, v89))
    {
      v173 = 1;
      goto LABEL_77;
    }

    if (!objc_msgSend_paddedFileSize(v33, v178, v179))
    {
      v173 = 0;
      goto LABEL_77;
    }

    v144 = objc_msgSend_uploadReceipt(v33, v180, v181);
    goto LABEL_73;
  }

  if (v21 && (objc_msgSend_wrappedAssetKey(v33, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), v52, v52))
  {
    v53 = objc_msgSend_recordPCS(recordCopy, v50, v51);
    v54 = [CKDWrappingContext alloc];
    v222 = recordCopy;
    v57 = objc_msgSend_recordID(recordCopy, v55, v56);
    v60 = objc_msgSend_signature(v33, v58, v59);
    v63 = objc_msgSend_referenceSignature(v33, v61, v62);
    v65 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v54, v64, v57, keyCopy, dCopy, v60, v63);

    v68 = objc_msgSend_pcsManager(self, v66, v67);
    v71 = objc_msgSend_wrappedAssetKey(v33, v69, v70);
    v226 = 0;
    v73 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v68, v72, v71, v53, v65, &v226);
    v74 = v226;
    objc_msgSend_setAssetKey_(v33, v75, v73);

    v78 = objc_msgSend_assetKey(v33, v76, v77);

    if (!v78)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v79 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v229 = v33;
        v230 = 2112;
        v231 = v74;
        _os_log_debug_impl(&dword_22506F000, v79, OS_LOG_TYPE_DEBUG, "Couldn't unwrap asset key for asset %@: %@. Wrapping a new asset key and re-saving the asset.", buf, 0x16u);
      }

      objc_msgSend_setWrappedAssetKey_(v33, v80, 0);
      objc_msgSend_setAssetKey_(v33, v81, 0);
      objc_msgSend_setUploaded_(v33, v82, 0);
      objc_msgSend_setUploadReceipt_(v33, v83, 0);
      objc_msgSend_setUploadReceiptExpiration_(v33, v84, v85, 0.0);
    }

    recordCopy = v222;
  }

  else
  {
    if (v31)
    {
      v90 = objc_msgSend_clearAssetKey(v33, v50, v51);

      if (v90)
      {
        v91 = objc_msgSend_clearAssetKey(v33, v50, v51);
        objc_msgSend_setAssetKey_(v33, v92, v91);
      }
    }

    v74 = 0;
  }

  v93 = objc_msgSend_assetKey(v33, v50, v51);

  if (v93)
  {
    goto LABEL_70;
  }

  v96 = objc_msgSend_assetUUIDToExpectedProperties(self, v94, v95);
  v99 = objc_msgSend_UUID(v33, v97, v98);
  v101 = objc_msgSend_objectForKeyedSubscript_(v96, v100, v99);
  v104 = objc_msgSend_assetKey(v101, v102, v103);

  if (v104)
  {
    objc_msgSend_setAssetKey_(v33, v105, v104);
    v74 = 0;
    goto LABEL_56;
  }

  v145 = objc_msgSend_container(v18, v105, v106);
  v148 = objc_msgSend_options(v145, v146, v147);
  v151 = objc_msgSend_mmcsEncryptionSupport(v148, v149, v150);

  switch(v151)
  {
    case 1:
      goto LABEL_54;
    case 2:
LABEL_53:
      v225 = 0;
      v154 = objc_msgSend_assetKeyWithType_error_(CKDMMCS, v152, 1, &v225);
      v155 = v225;
LABEL_55:
      v74 = v155;
      objc_msgSend_setAssetKey_(v33, v156, v154);

LABEL_56:
      v157 = objc_msgSend_assetKey(v33, v107, v108);

      if (!v157 || v74)
      {
        if (error)
        {
          v171 = v74;
          *error = v74;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v172 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v229 = v74;
          _os_log_error_impl(&dword_22506F000, v172, OS_LOG_TYPE_ERROR, "Couldn't create an asset key: %@", buf, 0xCu);
        }

        v173 = 0;
        goto LABEL_74;
      }

      v160 = objc_msgSend_assetUUIDToExpectedProperties(self, v158, v159);
      v163 = objc_msgSend_UUID(v33, v161, v162);
      v165 = objc_msgSend_objectForKeyedSubscript_(v160, v164, v163);
      v168 = objc_msgSend_referenceSignature(v165, v166, v167);

      if (v168)
      {
        objc_msgSend_setReferenceSignature_(v33, v169, v168);
      }

      else
      {
        v174 = objc_msgSend_assetKey(v33, v169, v170);
        v176 = objc_msgSend_referenceSignatureFromAssetKey_(CKDMMCS, v175, v174);
        objc_msgSend_setReferenceSignature_(v33, v177, v176);
      }

      goto LABEL_69;
    case 3:
      if (objc_msgSend_useMMCSEncryptionV2(v33, v152, v153))
      {
        goto LABEL_53;
      }

LABEL_54:
      v224 = 0;
      v154 = objc_msgSend_assetKeyWithType_error_(CKDMMCS, v152, 0, &v224);
      v155 = v224;
      goto LABEL_55;
  }

  v188 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v152, v153);
  v189 = objc_alloc(MEMORY[0x277CBC6B0]);
  v190 = objc_alloc(MEMORY[0x277CBC6C8]);
  v192 = objc_msgSend_initWithFilePath_lineNumber_(v190, v191, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/Database/Records/CKDModifyRecordHandler.m", 1639);
  v195 = objc_msgSend_container(v18, v193, v194);
  v198 = objc_msgSend_options(v195, v196, v197);
  v201 = objc_msgSend_mmcsEncryptionSupport(v198, v199, v200);
  v203 = objc_msgSend_initWithSourceCodeLocation_format_(v189, v202, v192, @"Unexpected MMCSEncryptionSupportValue of 0x%x", v201);
  objc_msgSend_handleSignificantIssue_actions_(v188, v204, v203, 0);

  v205 = MEMORY[0x277CCACA8];
  v208 = objc_msgSend_container(v18, v206, v207);
  v211 = objc_msgSend_options(v208, v209, v210);
  v214 = objc_msgSend_mmcsEncryptionSupport(v211, v212, v213);
  v216 = objc_msgSend_stringWithFormat_(v205, v215, @"Unexpected MMCSEncryptionSupportValue of 0x%x", v214);

  objc_msgSend_UTF8String(v216, v217, v218);
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)prepareStreamingAsset:(id)asset forUploadWithRecord:(id)record
{
  v54 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  recordCopy = record;
  v10 = objc_msgSend_operation(self, v8, v9);
  v13 = objc_msgSend_recordID(recordCopy, v11, v12);
  v16 = objc_msgSend_zoneID(v13, v14, v15);
  v19 = objc_msgSend_ownerName(v16, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x277CBBF28]);

  if (isEqualToString)
  {
    v24 = objc_msgSend_container(v10, v22, v23);
    v27 = objc_msgSend_containerScopedUserID(v24, v25, v26);
    objc_msgSend_setOwner_(assetCopy, v28, v27);
  }

  else
  {
    v24 = objc_msgSend_recordID(recordCopy, v22, v23);
    v27 = objc_msgSend_zoneID(v24, v29, v30);
    v33 = objc_msgSend_ownerName(v27, v31, v32);
    objc_msgSend_setOwner_(assetCopy, v34, v33);
  }

  v37 = objc_msgSend_referenceSignature(assetCopy, v35, v36);

  if (!v37)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v52 = 138412290;
      v53 = assetCopy;
      _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Generating new reference signature for streaming asset %@", &v52, 0xCu);
    }

    v43 = objc_msgSend_signatureForStreamingAsset(MEMORY[0x277CBC6A8], v41, v42);
    objc_msgSend_setReferenceSignature_(assetCopy, v44, v43);
  }

  v45 = objc_msgSend_fileSignature(assetCopy, v38, v39);

  if (!v45)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v52 = 138412290;
      v53 = assetCopy;
      _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Generating new file signature for streaming asset %@", &v52, 0xCu);
    }

    v49 = objc_msgSend_signatureForStreamingAsset(MEMORY[0x277CBC6A8], v47, v48);
    objc_msgSend_setFileSignature_(assetCopy, v50, v49);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)prepareForSaveWithCompletionHandler:(id)handler
{
  v67 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (objc_msgSend_state(self, v6, v7) != 5)
  {
    v61 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v61, v62, a2, self, @"CKDModifyRecordHandler.m", 1683, @"%s called on handler %@ but it isn't in the state %s", "[CKDModifyRecordHandler prepareForSaveWithCompletionHandler:]", self, "CKDModifyRecordHandlerStateNeedRecordPrepareForUpload");
  }

  if (objc_msgSend_isDelete(self, v8, v9))
  {
    goto LABEL_21;
  }

  v14 = objc_msgSend_record(self, v10, v11);
  if (!v14)
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, a2, self, @"CKDModifyRecordHandler.m", 1688, @"Lost a record: %@", self);
  }

  v15 = objc_msgSend_operation(self, v12, v13);
  if (objc_msgSend_savePolicy(v15, v16, v17) == 2)
  {
    if ((objc_msgSend_hasEncryptedData(v14, v18, v19) & 1) == 0)
    {
LABEL_8:
      v22 = 1;
      goto LABEL_15;
    }
  }

  else if (!objc_msgSend_hasModifiedEncryptedData(v14, v18, v19))
  {
    goto LABEL_8;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v23 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v25 = v23;
    v28 = objc_msgSend_recordID(v14, v26, v27);
    *buf = 138412290;
    v66 = v28;
    _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Record %@ has encrypted data. Wrapping that data now...", buf, 0xCu);
  }

  v22 = objc_msgSend__wrapEncryptedDataOnRecord_(self, v24, v14);
LABEL_15:
  if (objc_msgSend_databaseScope(v15, v20, v21) == 2)
  {
    v31 = objc_msgSend_container(v15, v29, v30);
    v34 = objc_msgSend_entitlements(v31, v32, v33);
    hasNonLegacyShareURLEntitlement = objc_msgSend_hasNonLegacyShareURLEntitlement(v34, v35, v36);

    v40 = objc_msgSend_container(v15, v38, v39);
    v43 = objc_msgSend_account(v40, v41, v42);
    v46 = v43;
    if (hasNonLegacyShareURLEntitlement)
    {
      objc_msgSend_sharingURLHostname(v43, v44, v45);
    }

    else
    {
      objc_msgSend_displayedHostname(v43, v44, v45);
    }
    v47 = ;
    objc_msgSend_setDisplayedHostname_(v14, v48, v47);
  }

  if (!v22)
  {
    objc_msgSend_setState_(self, v10, 12);
    v49 = MEMORY[0x277CBC560];
    v50 = *MEMORY[0x277CBC120];
    v53 = objc_msgSend_record(self, v51, v52);
    v56 = objc_msgSend_recordID(v53, v54, v55);
    v58 = objc_msgSend_errorWithDomain_code_format_(v49, v57, v50, 5001, @"Couldn't encrypt data on record %@", v56);
    objc_msgSend_setError_(self, v59, v58);

    goto LABEL_23;
  }

LABEL_21:
  objc_msgSend_setState_(self, v10, 6);
LABEL_23:
  handlerCopy[2](handlerCopy);

  v60 = *MEMORY[0x277D85DE8];
}

- (BOOL)_wrapEncryptedData:(id)data withPCS:(_OpaquePCSShareProtection *)s forField:(id)field recordID:(id)d
{
  v50 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  fieldCopy = field;
  dCopy = d;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v15 = objc_msgSend_operation(self, v12, v13);
    v18 = objc_msgSend_container(v15, v16, v17);
    v21 = objc_msgSend_deviceContext(v18, v19, v20);
    v24 = objc_msgSend_testDeviceReference(v21, v22, v23);
    if (v24)
    {
      v26 = v24;
      isEqualToString = objc_msgSend_isEqualToString_(fieldCopy, v25, @"EEEEEEEEEENCRYPTION_BREAKER");

      if (isEqualToString)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v28 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v46 = 138543362;
          v47 = fieldCopy;
          _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Creating bad encrypted data for the field %{public}@. Let's hope you know what you're doing!", &v46, 0xCu);
        }

        v30 = objc_msgSend_dataUsingEncoding_(@"🐔🐔🐔", v29, 4);
        objc_msgSend_setEncryptedData_(dataCopy, v31, v30);

        v32 = 1;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v33 = objc_msgSend_data(dataCopy, v12, v13);

  if (v33)
  {
    v34 = [CKDWrappingContext alloc];
    v36 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v34, v35, dCopy, fieldCopy, 0, 0, 0);
    v39 = objc_msgSend_pcsManager(self, v37, v38);
    v41 = objc_msgSend_wrapEncryptedData_withPCS_inContext_(v39, v40, dataCopy, s, v36);

    v32 = v41 == 0;
    if (v41)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v42 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v46 = 138543618;
        v47 = fieldCopy;
        v48 = 2112;
        v49 = v41;
        _os_log_impl(&dword_22506F000, v42, OS_LOG_TYPE_INFO, "Warn: Couldn't wrap encrypte data for field %{public}@: %@", &v46, 0x16u);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v46 = 138543362;
      v47 = fieldCopy;
      _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Warn: Can't wrap a nil encrypted data for field %{public}@", &v46, 0xCu);
    }

    v32 = 0;
  }

LABEL_22:

  v44 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)_pretendToWrapEncryptedDataForRecordValueStore:(id)store
{
  v52 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = objc_msgSend_allKeys(storeCopy, v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v46, v51, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v47;
    v12 = 0x277CBC000uLL;
    v13 = 0x277CBE000uLL;
    v40 = v6;
    v41 = storeCopy;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_rawValueForKey_(storeCopy, v9, *(*(&v46 + 1) + 8 * i), v40, v41);
        v16 = *(v12 + 744);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = objc_msgSend_data(v15, v17, v18);
          objc_msgSend_setEncryptedData_(v15, v20, v19);
LABEL_8:

          goto LABEL_20;
        }

        v21 = *(v13 + 2656);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (objc_msgSend_count(v15, v22, v23))
          {
            v26 = objc_msgSend_firstObject(v15, v24, v25);
            v27 = *(v12 + 744);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v19 = v15;
              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v29, &v42, v50, 16);
              if (v30)
              {
                v33 = v30;
                v34 = *v43;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v43 != v34)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v36 = *(*(&v42 + 1) + 8 * j);
                    v37 = objc_msgSend_data(v36, v31, v32);
                    objc_msgSend_setEncryptedData_(v36, v38, v37);
                  }

                  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v31, &v42, v50, 16);
                }

                while (v33);
                v6 = v40;
                storeCopy = v41;
                v12 = 0x277CBC000;
                v13 = 0x277CBE000;
              }

              goto LABEL_8;
            }
          }
        }

LABEL_20:
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v46, v51, 16);
    }

    while (v10);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)_wrapEncryptedDataForRecordValueStore:(id)store withPCS:(_OpaquePCSShareProtection *)s
{
  v60 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = objc_msgSend_allKeys(storeCopy, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v54, v59, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v55;
    v13 = 1;
    v14 = 0x277CBC000uLL;
    v44 = *v55;
    do
    {
      v15 = 0;
      v45 = v11;
      do
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v54 + 1) + 8 * v15);
        v17 = objc_msgSend_rawValueForKey_(storeCopy, v10, v16, v44);
        v18 = *(v14 + 744);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = objc_msgSend_recordID(storeCopy, v19, v20);
          v23 = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(self, v22, v17, s, v16, v21);

          v13 &= v23;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v17, v24, v25))
          {
            v47 = v15;
            v28 = objc_msgSend_firstObject(v17, v26, v27);
            v29 = *(v14 + 744);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v46 = v17;
              v31 = v17;
              v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v50, v58, 16);
              if (v33)
              {
                v36 = v33;
                v37 = *v51;
                do
                {
                  for (i = 0; i != v36; ++i)
                  {
                    if (*v51 != v37)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v39 = *(*(&v50 + 1) + 8 * i);
                    v40 = objc_msgSend_recordID(storeCopy, v34, v35);
                    LODWORD(v39) = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(self, v41, v39, s, v16, v40);

                    v13 &= v39;
                  }

                  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v50, v58, 16);
                }

                while (v36);
              }

              v12 = v44;
              v11 = v45;
              v14 = 0x277CBC000;
              v17 = v46;
              v15 = v47;
            }

            else
            {
              v15 = v47;
            }
          }
        }

        ++v15;
      }

      while (v15 != v11);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v54, v59, 16);
    }

    while (v11);
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (BOOL)_encryptMergeableDeltasInRecordValueStore:(id)store shareProtection:(_OpaquePCSShareProtection *)protection
{
  v124 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v9 = objc_msgSend_operation(self, v7, v8);
  v12 = objc_msgSend_container(v9, v10, v11);
  v15 = objc_msgSend_options(v12, v13, v14);
  objc_msgSend_encryptMergeableValueMetadata(v15, v16, v17);

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = objc_msgSend_allKeys(storeCopy, v18, v19);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v112, v123, 16);
  if (v21)
  {
    v23 = v21;
    v24 = *v113;
    v97 = 1;
    v25 = 0x277CBC000uLL;
    v86 = *v113;
    v87 = storeCopy;
    do
    {
      v26 = 0;
      v88 = v23;
      do
      {
        if (*v113 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = objc_msgSend_rawValueForKey_(storeCopy, v22, *(*(&v112 + 1) + 8 * v26));
        v28 = *(v25 + 1136);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v90 = v27;
          v91 = v26;
          v29 = v27;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v92 = v29;
          v32 = objc_msgSend_deltasToSave(v29, v30, v31);
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v108, v122, 16);
          if (v34)
          {
            v35 = v34;
            v36 = *v109;
            do
            {
              v37 = 0;
              do
              {
                if (*v109 != v36)
                {
                  objc_enumerationMutation(v32);
                }

                v38 = *(*(&v108 + 1) + 8 * v37);
                v39 = objc_alloc_init(CKDKeyEnvelopeContext);
                objc_msgSend_setShareProtection_(v39, v40, protection);
                objc_msgSend_encryptMetadataTernary(v38, v41, v42);
                v43 = CKBoolFromCKTernaryWithDefault();
                objc_msgSend_setEncryptMergeableValueMetadata_(v39, v44, v43);
                v107 = 0;
                v46 = objc_msgSend_encryptWithContext_error_(v38, v45, v39, &v107);
                v47 = v107;
                if ((v46 & 1) == 0)
                {
                  if (*MEMORY[0x277CBC880] != -1)
                  {
                    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                  }

                  v48 = *MEMORY[0x277CBC830];
                  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                  {
                    v49 = v48;
                    objc_msgSend_valueID(v38, v50, v51);
                    v53 = v52 = v36;
                    *buf = 138412546;
                    v119 = v53;
                    v120 = 2112;
                    v121 = v47;
                    _os_log_impl(&dword_22506F000, v49, OS_LOG_TYPE_INFO, "Failed to encrypt mergeable delta %@, with error: %@", buf, 0x16u);

                    v36 = v52;
                  }

                  v97 = 0;
                }

                ++v37;
              }

              while (v35 != v37);
              v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v54, &v108, v122, 16);
            }

            while (v35);
          }

          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v93 = objc_msgSend_pendingReplacementRequests(v92, v55, v56);
          v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v57, &v103, v117, 16);
          if (v95)
          {
            v94 = *v104;
            do
            {
              v60 = 0;
              do
              {
                if (*v104 != v94)
                {
                  objc_enumerationMutation(v93);
                }

                v96 = v60;
                v61 = *(*(&v103 + 1) + 8 * v60);
                v99 = 0u;
                v100 = 0u;
                v101 = 0u;
                v102 = 0u;
                v62 = objc_msgSend_replacementDeltas(v61, v58, v59);
                v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v99, v116, 16);
                if (v64)
                {
                  v65 = v64;
                  v66 = *v100;
                  do
                  {
                    v67 = 0;
                    do
                    {
                      if (*v100 != v66)
                      {
                        objc_enumerationMutation(v62);
                      }

                      v68 = *(*(&v99 + 1) + 8 * v67);
                      v69 = objc_alloc_init(CKDKeyEnvelopeContext);
                      objc_msgSend_setShareProtection_(v69, v70, protection);
                      objc_msgSend_encryptMetadataTernary(v68, v71, v72);
                      v73 = CKBoolFromCKTernaryWithDefault();
                      objc_msgSend_setEncryptMergeableValueMetadata_(v69, v74, v73);
                      v98 = 0;
                      v76 = objc_msgSend_encryptWithContext_error_(v68, v75, v69, &v98);
                      v77 = v98;
                      if ((v76 & 1) == 0)
                      {
                        if (*MEMORY[0x277CBC880] != -1)
                        {
                          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                        }

                        v78 = *MEMORY[0x277CBC830];
                        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                        {
                          v79 = v78;
                          v82 = objc_msgSend_valueID(v68, v80, v81);
                          *buf = 138412546;
                          v119 = v82;
                          v120 = 2112;
                          v121 = v77;
                          _os_log_impl(&dword_22506F000, v79, OS_LOG_TYPE_INFO, "Failed to encrypt mergeable delta %@, with error: %@", buf, 0x16u);
                        }

                        v97 = 0;
                      }

                      ++v67;
                    }

                    while (v65 != v67);
                    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v83, &v99, v116, 16);
                  }

                  while (v65);
                }

                v60 = v96 + 1;
              }

              while (v96 + 1 != v95);
              v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v58, &v103, v117, 16);
            }

            while (v95);
          }

          v24 = v86;
          storeCopy = v87;
          v25 = 0x277CBC000;
          v23 = v88;
          v27 = v90;
          v26 = v91;
        }

        ++v26;
      }

      while (v26 != v23);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v112, v123, 16);
    }

    while (v23);
  }

  else
  {
    v97 = 1;
  }

  v84 = *MEMORY[0x277D85DE8];
  return v97 & 1;
}

- (BOOL)_wrapEncryptedDataOnRecord:(id)record
{
  v125 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = objc_msgSend_operation(self, v5, v6);
  v10 = objc_msgSend_useEncryption(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_recordPCS(recordCopy, v11, v12);
    if (v13)
    {
      v16 = v13;
      v17 = objc_msgSend_valueStore(recordCopy, v14, v15);
      v19 = objc_msgSend__wrapEncryptedDataForRecordValueStore_withPCS_(self, v18, v17, v16);

      v22 = objc_msgSend_encryptedValueStore(recordCopy, v20, v21);
      v24 = objc_msgSend__wrapEncryptedDataForRecordValueStore_withPCS_(self, v23, v22, v16);

      v27 = objc_msgSend_encryptedValueStore(recordCopy, v25, v26);
      v29 = objc_msgSend__encryptMergeableDeltasInRecordValueStore_shareProtection_(self, v28, v27, v16);

      v30 = v29 & v24 & v19;
      v33 = objc_msgSend_record(self, v31, v32);
      v36 = objc_msgSend_chainPrivateKey(v33, v34, v35);
      if (v36)
      {
        v39 = v36;
        v40 = objc_msgSend_record(self, v37, v38);
        v43 = objc_msgSend_chainPrivateKey(v40, v41, v42);
        v44 = *MEMORY[0x277CBC8B0];
        v47 = objc_msgSend_recordID(recordCopy, v45, v46);
        LOBYTE(v44) = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(self, v48, v43, v16, v44, v47);

        v30 &= v44;
      }

      else
      {
      }

      v65 = objc_msgSend_record(self, v49, v50);
      v68 = objc_msgSend_mutableEncryptedPSK(v65, v66, v67);
      if (v68)
      {
        v71 = v68;
        v72 = objc_msgSend_record(self, v69, v70);
        v75 = objc_msgSend_mutableEncryptedPSK(v72, v73, v74);
        v76 = *MEMORY[0x277CBC900];
        v79 = objc_msgSend_recordID(recordCopy, v77, v78);
        LOBYTE(v76) = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(self, v80, v75, v16, v76, v79);

        v30 &= v76;
      }

      else
      {
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v113 = v30;
        v116 = v16;
        v117 = recordCopy;
        selfCopy = self;
        v115 = objc_msgSend_record(self, v81, v82);
        objc_msgSend_oneTimeURLMetadatasByParticipantID(v115, v84, v85);
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v114 = v121 = 0u;
        v88 = objc_msgSend_allValues(v114, v86, v87);
        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v118, v124, 16);
        if (v90)
        {
          v93 = v90;
          v94 = *v119;
          v95 = *MEMORY[0x277CBC8F8];
          while (2)
          {
            for (i = 0; i != v93; ++i)
            {
              if (*v119 != v94)
              {
                objc_enumerationMutation(v88);
              }

              v97 = *(*(&v118 + 1) + 8 * i);
              v98 = objc_msgSend_encryptedOneTimeFullToken(v97, v91, v92);
              if (v98)
              {
                v99 = v98;
                v100 = objc_msgSend_encryptedOneTimeFullToken(v97, v91, v92);
                v103 = objc_msgSend_recordID(v117, v101, v102);
                v105 = objc_msgSend__wrapEncryptedData_withPCS_forField_recordID_(selfCopy, v104, v100, v116, v95, v103);

                if ((v105 & 1) == 0)
                {

                  goto LABEL_34;
                }
              }
            }

            v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v91, &v118, v124, 16);
            if (v93)
            {
              continue;
            }

            break;
          }
        }

        if (v113)
        {
          v108 = v114;
          v110 = v115;
          if (objc_msgSend_count(v114, v106, v107))
          {
            objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v115, v109, v114);
          }

          v30 = 1;
          recordCopy = v117;
        }

        else
        {
LABEL_34:
          v30 = 0;
          recordCopy = v117;
          v108 = v114;
          v110 = v115;
        }
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
        v61 = v60;
        v64 = objc_msgSend_recordID(recordCopy, v62, v63);
        *buf = 138412290;
        v123 = v64;
        _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Warn: Couldn't get a record PCS for record %@, but it has encrypted data set on it", buf, 0xCu);
      }

      v30 = 0;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Skipping wrapping of encrypted data because encryption is disabled", buf, 2u);
    }

    v54 = objc_msgSend_valueStore(recordCopy, v52, v53);
    objc_msgSend__pretendToWrapEncryptedDataForRecordValueStore_(self, v55, v54);

    v58 = objc_msgSend_encryptedValueStore(recordCopy, v56, v57);
    objc_msgSend__pretendToWrapEncryptedDataForRecordValueStore_(self, v59, v58);

    v30 = 1;
  }

  v111 = *MEMORY[0x277D85DE8];
  return v30 & 1;
}

- (void)savePCSDataToCache
{
  v4 = objc_msgSend_record(self, a2, v2);
  v7 = objc_msgSend_protectionData(v4, v5, v6);
  v10 = objc_msgSend_recordPCSData(self, v8, v9);
  objc_msgSend_setPcsData_(v10, v11, v7);

  v14 = objc_msgSend_record(self, v12, v13);
  v17 = objc_msgSend_protectionEtag(v14, v15, v16);
  v20 = objc_msgSend_recordPCSData(self, v18, v19);
  objc_msgSend_setEtag_(v20, v21, v17);

  v31 = objc_msgSend_operation(self, v22, v23);
  v26 = objc_msgSend_recordPCSData(self, v24, v25);
  v29 = objc_msgSend_recordID(self, v27, v28);
  objc_msgSend_setPCSData_forFetchedRecordID_(v31, v30, v26, v29);
}

- (void)setServerRecord:(id)record
{
  recordCopy = record;
  v7 = objc_msgSend_baseToken(recordCopy, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_baseToken(recordCopy, v8, v9);
    v13 = objc_msgSend_record(self, v11, v12);
    objc_msgSend_setBaseToken_(v13, v14, v10);
  }

  else
  {
    v15 = objc_msgSend_record(self, v8, v9);
    v18 = objc_msgSend_baseToken(v15, v16, v17);

    if (!v18)
    {
      goto LABEL_6;
    }

    v10 = objc_msgSend_record(self, v19, v20);
    v13 = objc_msgSend_baseToken(v10, v21, v22);
    objc_msgSend_setBaseToken_(recordCopy, v23, v13);
  }

LABEL_6:
  v24 = objc_msgSend_routingKey(recordCopy, v19, v20);

  if (v24)
  {
    v27 = objc_msgSend_routingKey(recordCopy, v25, v26);
    v30 = objc_msgSend_record(self, v28, v29);
    objc_msgSend_setRoutingKey_(v30, v31, v27);
  }

  else
  {
    v32 = objc_msgSend_record(self, v25, v26);
    v35 = objc_msgSend_routingKey(v32, v33, v34);

    if (!v35)
    {
      goto LABEL_11;
    }

    v27 = objc_msgSend_record(self, v36, v37);
    v30 = objc_msgSend_routingKey(v27, v38, v39);
    objc_msgSend_setRoutingKey_(recordCopy, v40, v30);
  }

LABEL_11:
  v41 = objc_msgSend_displayedHostname(recordCopy, v36, v37);

  if (v41)
  {
    v44 = objc_msgSend_displayedHostname(recordCopy, v42, v43);
    v47 = objc_msgSend_record(self, v45, v46);
    objc_msgSend_setDisplayedHostname_(v47, v48, v44);
  }

  else
  {
    v49 = objc_msgSend_record(self, v42, v43);
    v52 = objc_msgSend_displayedHostname(v49, v50, v51);

    if (!v52)
    {
      goto LABEL_16;
    }

    v44 = objc_msgSend_record(self, v53, v54);
    v47 = objc_msgSend_displayedHostname(v44, v55, v56);
    objc_msgSend_setDisplayedHostname_(recordCopy, v57, v47);
  }

LABEL_16:
  v58 = objc_msgSend_record(self, v53, v54);
  v61 = objc_msgSend_mutableEncryptedPSK(v58, v59, v60);

  if (v61)
  {
    v64 = objc_msgSend_record(self, v62, v63);
    v67 = objc_msgSend_mutableEncryptedPSK(v64, v65, v66);
    v70 = objc_msgSend_data(v67, v68, v69);

    if (!v70)
    {
      goto LABEL_22;
    }

    v71 = objc_alloc(MEMORY[0x277CBC2E8]);
    v74 = objc_msgSend_record(self, v72, v73);
    v77 = objc_msgSend_mutableEncryptedPSK(v74, v75, v76);
    v80 = objc_msgSend_data(v77, v78, v79);
    v82 = objc_msgSend_initWithData_(v71, v81, v80);
    objc_msgSend_setMutableEncryptedPSK_(recordCopy, v83, v82);
  }

  else
  {
    v84 = objc_msgSend_mutableEncryptedPSK(recordCopy, v62, v63);
    v87 = objc_msgSend_data(v84, v85, v86);

    if (!v87)
    {
      goto LABEL_22;
    }

    v88 = objc_alloc(MEMORY[0x277CBC2E8]);
    v74 = objc_msgSend_mutableEncryptedPSK(recordCopy, v89, v90);
    v77 = objc_msgSend_data(v74, v91, v92);
    v80 = objc_msgSend_initWithData_(v88, v93, v77);
    v82 = objc_msgSend_record(self, v94, v95);
    objc_msgSend_setMutableEncryptedPSK_(v82, v96, v80);
  }

LABEL_22:
  serverRecord = self->_serverRecord;
  self->_serverRecord = recordCopy;
}

- (void)_clearRecordProtectionDataForRecord
{
  v188 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_record(self, a2, v2);
  v158 = objc_msgSend_operation(self, v5, v6);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v153 = v7;
    v156 = objc_msgSend_recordID(v4, v154, v155);
    *buf = 138412290;
    v187 = v156;
    _os_log_debug_impl(&dword_22506F000, v153, OS_LOG_TYPE_DEBUG, "Clearing protection data for record %@", buf, 0xCu);
  }

  v10 = objc_msgSend_recordID(v4, v8, v9);
  objc_msgSend_setPCSData_forFetchedRecordID_(v158, v11, 0, v10);

  v14 = objc_msgSend_recordID(v4, v12, v13);
  v17 = objc_msgSend_zoneID(v14, v15, v16);
  objc_msgSend_setPCSData_forFetchedZoneID_(v158, v18, 0, v17);

  v21 = objc_msgSend_share(v4, v19, v20);
  v24 = objc_msgSend_recordID(v21, v22, v23);
  objc_msgSend_setPCSData_forFetchedShareID_(v158, v25, 0, v24);

  v26 = objc_alloc(MEMORY[0x277CBC5D0]);
  v27 = *MEMORY[0x277CBC020];
  v30 = objc_msgSend_recordID(v4, v28, v29);
  v33 = objc_msgSend_zoneID(v30, v31, v32);
  v35 = objc_msgSend_initWithRecordName_zoneID_(v26, v34, v27, v33);

  v157 = v35;
  objc_msgSend_setPCSData_forFetchedShareID_(v158, v36, 0, v35);
  objc_msgSend_setProtectionData_(v4, v37, 0);
  objc_msgSend_setProtectionEtag_(v4, v38, 0);
  objc_msgSend_setPreviousProtectionEtag_(v4, v39, 0);
  objc_msgSend_setZoneProtectionEtag_(v4, v40, 0);
  objc_msgSend_setShareEtag_(v4, v41, 0);
  objc_msgSend_setRecordPCSData_(self, v42, 0);
  objc_msgSend_setRecordPCS_(v4, v43, 0);
  objc_msgSend_setChainParentPublicKeyID_(v4, v44, 0);
  objc_msgSend_setChainPrivateKey_(v4, v45, 0);
  objc_msgSend_setChainProtectionInfo_(v4, v46, 0);
  v49 = objc_msgSend_savePolicy(v158, v47, v48);
  v52 = objc_msgSend_valueStore(v4, v50, v51);
  v55 = v52;
  if (v49 == 2)
  {
    objc_msgSend_allKeys(v52, v53, v54);
  }

  else
  {
    objc_msgSend_changedKeys(v52, v53, v54);
  }
  v56 = ;

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v57 = v56;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v177, v185, 16);
  v62 = 0x277CBC000uLL;
  v63 = 0x277CBE000uLL;
  v160 = v4;
  if (v59)
  {
    v64 = v59;
    v65 = *v178;
    v159 = v57;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v178 != v65)
        {
          objc_enumerationMutation(v57);
        }

        v67 = *(*(&v177 + 1) + 8 * i);
        v68 = objc_msgSend_valueStore(v4, v60, v61);
        v70 = objc_msgSend_rawValueForKey_(v68, v69, v67);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = v70;
          objc_msgSend_setAssetKey_(v71, v72, 0);
          objc_msgSend_setWrappedAssetKey_(v71, v73, 0);
          objc_msgSend_setClearAssetKey_(v71, v74, 0);
          objc_msgSend_setReferenceSignature_(v71, v75, 0);
          objc_msgSend_setUploadReceipt_(v71, v76, 0);
          objc_msgSend_setUploadReceiptExpiration_(v71, v77, v78, 0.0);
          objc_msgSend_setUploaded_(v71, v79, 0);
LABEL_15:

          goto LABEL_40;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setEncryptedData_(v70, v80, 0);
          goto LABEL_40;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v81 = v70;
          v84 = objc_msgSend_firstObject(v81, v82, v83);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v175 = 0u;
            v176 = 0u;
            v173 = 0u;
            v174 = 0u;
            v88 = v81;
            v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v173, v184, 16);
            if (v90)
            {
              v92 = v90;
              v93 = *v174;
              do
              {
                for (j = 0; j != v92; ++j)
                {
                  if (*v174 != v93)
                  {
                    objc_enumerationMutation(v88);
                  }

                  v95 = *(*(&v173 + 1) + 8 * j);
                  objc_msgSend_setAssetKey_(v95, v91, 0);
                  objc_msgSend_setWrappedAssetKey_(v95, v96, 0);
                  objc_msgSend_setClearAssetKey_(v95, v97, 0);
                  objc_msgSend_setReferenceSignature_(v95, v98, 0);
                  objc_msgSend_setUploadReceipt_(v95, v99, 0);
                  objc_msgSend_setUploadReceiptExpiration_(v95, v100, v101, 0.0);
                  objc_msgSend_setUploaded_(v95, v102, 0);
                }

                v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v91, &v173, v184, 16);
              }

              while (v92);
            }

            goto LABEL_38;
          }

          v105 = objc_msgSend_firstObject(v81, v86, v87);
          objc_opt_class();
          v106 = objc_opt_isKindOfClass();

          if (v106)
          {
            v171 = 0u;
            v172 = 0u;
            v169 = 0u;
            v170 = 0u;
            v107 = v81;
            v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v169, v183, 16);
            if (v109)
            {
              v111 = v109;
              v112 = *v170;
              do
              {
                for (k = 0; k != v111; ++k)
                {
                  if (*v170 != v112)
                  {
                    objc_enumerationMutation(v107);
                  }

                  objc_msgSend_setEncryptedData_(*(*(&v169 + 1) + 8 * k), v110, 0);
                }

                v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v110, &v169, v183, 16);
              }

              while (v111);
            }

LABEL_38:

            v57 = v159;
            v4 = v160;
          }

          v62 = 0x277CBC000uLL;
          v63 = 0x277CBE000uLL;
          goto LABEL_40;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = v70;
          objc_msgSend_setRecordPCS_(v71, v103, 0);
          objc_msgSend_setAssets_(v71, v104, 0);
          goto LABEL_15;
        }

LABEL_40:
      }

      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v60, &v177, v185, 16);
    }

    while (v64);
  }

  v116 = objc_msgSend_savePolicy(v158, v114, v115);
  v119 = objc_msgSend_encryptedValueStore(v4, v117, v118);
  v122 = v119;
  if (v116 == 2)
  {
    objc_msgSend_allKeys(v119, v120, v121);
  }

  else
  {
    objc_msgSend_changedKeys(v119, v120, v121);
  }
  v123 = ;

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v124 = v123;
  v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v165, v182, 16);
  if (v126)
  {
    v129 = v126;
    v130 = *v166;
    do
    {
      for (m = 0; m != v129; ++m)
      {
        if (*v166 != v130)
        {
          objc_enumerationMutation(v124);
        }

        v132 = *(*(&v165 + 1) + 8 * m);
        v133 = objc_msgSend_encryptedValueStore(v4, v127, v128);
        v135 = objc_msgSend_rawValueForKey_(v133, v134, v132);

        v136 = *(v62 + 744);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setEncryptedData_(v135, v137, 0);
        }

        else
        {
          v138 = *(v63 + 2656);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v139 = v135;
            v142 = objc_msgSend_firstObject(v139, v140, v141);
            v143 = *(v62 + 744);
            objc_opt_class();
            v144 = objc_opt_isKindOfClass();

            if (v144)
            {
              v163 = 0u;
              v164 = 0u;
              v161 = 0u;
              v162 = 0u;
              v145 = v139;
              v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v146, &v161, v181, 16);
              if (v147)
              {
                v149 = v147;
                v150 = *v162;
                do
                {
                  for (n = 0; n != v149; ++n)
                  {
                    if (*v162 != v150)
                    {
                      objc_enumerationMutation(v145);
                    }

                    objc_msgSend_setEncryptedData_(*(*(&v161 + 1) + 8 * n), v148, 0);
                  }

                  v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v148, &v161, v181, 16);
                }

                while (v149);
              }

              v4 = v160;
            }

            v62 = 0x277CBC000;
            v63 = 0x277CBE000;
          }
        }
      }

      v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v127, &v165, v182, 16);
    }

    while (v129);
  }

  v152 = *MEMORY[0x277D85DE8];
}

- (CKDModifyRecordsOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end