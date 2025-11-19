@interface CKDDecryptRecordsOperation
- (CKDDecryptRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)_decryptRecordPCSForRecord:(id)a3 usingChainPCS:(id)a4;
- (id)_decryptRecordPCSForRecord:(id)a3 usingSharePCS:(id)a4;
- (id)_decryptRecordPCSForRecord:(id)a3 usingZonePCS:(id)a4;
- (id)_possiblyWrapError:(id)a3 forRecordWithID:(id)a4 withCode:(int64_t)a5 format:(id)a6;
- (id)_unwrapAssetKeyForAsset:(id)a3 inRecordWithID:(id)a4 forField:(id)a5 withPCS:(_OpaquePCSShareProtection *)a6;
- (id)_unwrapEncryptedPropertiesForRecordValueStore:(id)a3 withPCS:(_OpaquePCSShareProtection *)a4;
- (id)_unwrapEncryptedPropertiesOnRecord:(id)a3 withPCS:(_OpaquePCSShareProtection *)a4;
- (id)_unwrapMergeableRecordValue:(id)a3 inRecordWithID:(id)a4 forField:(id)a5 withPCS:(_OpaquePCSShareProtection *)a6;
- (id)_unwrapPackageAssets:(id)a3 inRecordWithID:(id)a4 forField:(id)a5 withPCS:(_OpaquePCSShareProtection *)a6;
- (id)activityCreate;
- (void)_clearProtectionDataForRecordInfo:(id)a3;
- (void)_decryptRecordInfo:(id)a3;
- (void)_decryptRecordInfo:(id)a3 usingWebSharingIdentityData:(id)a4;
- (void)_finishDecryptOperation;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleProtectionDataForRecordInfo:(id)a3;
- (void)_handleShareProtectionDataForRecordInfo:(id)a3;
- (void)_handleZoneProtectionDataForRecordInfo:(id)a3;
- (void)_recordInfoWasDecrypted:(id)a3 nextSteps:(id)a4;
- (void)decryptRecord:(id)a3 withCompletion:(id)a4;
- (void)finishDecryption;
- (void)main;
@end

@implementation CKDDecryptRecordsOperation

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/decrypt-records", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)finishDecryption
{
  v17 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = v3;
    v14 = objc_msgSend_operationID(self, v12, v13);
    v15 = 138543362;
    v16 = v14;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Finishing decryption operation %{public}@", &v15, 0xCu);
  }

  v4 = self;
  objc_sync_enter(v4);
  if (objc_msgSend_isStarted(v4, v5, v6))
  {
    objc_sync_exit(v4);

    objc_msgSend__finishDecryptOperation(v4, v8, v9);
  }

  else
  {
    objc_msgSend_setMarkedToFinish_(v4, v7, 1);
    objc_sync_exit(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_finishDecryptOperation
{
  v34 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isFinished(self, a2, v2))
  {
    v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CKDDecryptRecordsOperation.m", 709, @"You can't finish a decrypt operation twice");
  }

  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v21 = v9;
    v24 = objc_msgSend_operationID(self, v22, v23);
    *buf = 138543362;
    v33 = v24;
    _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Finishing decrypt records operation %{public}@", buf, 0xCu);
  }

  v12 = objc_msgSend_recordDecryptQueue(self, v10, v11);
  dispatch_activate(v12);

  if (*v7 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = v13;
    v28 = objc_msgSend_operationID(self, v26, v27);
    *buf = 138543362;
    v33 = v28;
    _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Decrypt operation %{public}@ is finishing. Waiting for all records to finish decrypting first...", buf, 0xCu);
  }

  v16 = objc_msgSend_recordDecryptGroup(self, v14, v15);
  v19 = objc_msgSend_callbackQueue(self, v17, v18);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2250A6D8C;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_group_notify(v16, v19, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (objc_msgSend_isMarkedToFinish(v2, v3, v4))
  {
    objc_sync_exit(v2);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v14 = v6;
      v17 = objc_msgSend_operationID(v2, v15, v16);
      v22 = 138543362;
      v23 = v17;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Record decrypt operation %{public}@ was asked to finish before it started", &v22, 0xCu);
    }

    objc_msgSend__finishDecryptOperation(v2, v7, v8);
  }

  else
  {
    objc_msgSend_setStarted_(v2, v5, 1);
    objc_sync_exit(v2);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v18 = v9;
      v21 = objc_msgSend_operationID(v2, v19, v20);
      v22 = 138543362;
      v23 = v21;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Starting decrypt records operation %{public}@", &v22, 0xCu);
    }

    v12 = objc_msgSend_recordDecryptQueue(v2, v10, v11);
    dispatch_activate(v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (CKDDecryptRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = CKDDecryptRecordsOperation;
  v9 = [(CKDDatabaseOperation *)&v26 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_webSharingIdentityDataByRecordID(v6, v7, v8);
    objc_msgSend_setWebSharingIdentityDataByRecordID_(v9, v11, v10);

    v12 = dispatch_group_create();
    recordDecryptGroup = v9->_recordDecryptGroup;
    v9->_recordDecryptGroup = v12;

    v16 = objc_msgSend_createInactiveSerialQueue(v9, v14, v15);
    recordDecryptQueue = v9->_recordDecryptQueue;
    v9->_recordDecryptQueue = v16;

    v18 = objc_opt_new();
    outstandingDecryptions = v9->_outstandingDecryptions;
    v9->_outstandingDecryptions = v18;

    v22 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v20, v21);
    v9->_maxUnwrapAttempts = objc_msgSend_PCSRetryCount(v22, v23, v24);
  }

  return v9;
}

- (void)decryptRecord:(id)a3 withCompletion:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (objc_msgSend_isMarkedToFinish(self, v9, v10))
  {
    v39 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, a2, self, @"CKDDecryptRecordsOperation.m", 117, @"Operation %@ has already been marked to finished. You can't enqueue any more decrypts", self);
  }

  v13 = objc_msgSend_recordDecryptGroup(self, v11, v12);
  dispatch_group_enter(v13);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v18 = objc_msgSend_recordID(v7, v16, v17);
    *buf = 138412290;
    v47 = v18;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Enqueuing decryption for record %@", buf, 0xCu);
  }

  v19 = [CKRecordDecryptInfo alloc];
  v22 = objc_msgSend_callbackQueue(self, v20, v21);
  v24 = objc_msgSend_initWithRecord_callbackQueue_(v19, v23, v7, v22);

  objc_initWeak(buf, v24);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_225255104;
  v43[3] = &unk_27854B140;
  v43[4] = self;
  objc_copyWeak(&v45, buf);
  v25 = v8;
  v44 = v25;
  objc_msgSend_setCallback_(v24, v26, v43);
  v29 = objc_msgSend_outstandingDecryptions(self, v27, v28);
  objc_sync_enter(v29);
  v32 = objc_msgSend_outstandingDecryptions(self, v30, v31);
  objc_msgSend_addObject_(v32, v33, v24);

  objc_sync_exit(v29);
  v36 = objc_msgSend_recordDecryptQueue(self, v34, v35);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225255160;
  block[3] = &unk_278545898;
  block[4] = self;
  v42 = v24;
  v37 = v24;
  dispatch_async(v36, block);

  objc_destroyWeak(&v45);
  objc_destroyWeak(buf);

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_recordInfoWasDecrypted:(id)a3 nextSteps:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_callbackQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v14 = v11;
    v17 = objc_msgSend_record(v6, v15, v16);
    v20 = objc_msgSend_recordID(v17, v18, v19);
    v25 = objc_msgSend_error(v6, v21, v22);
    if (v25)
    {
      v26 = @" with error: ";
    }

    else
    {
      v26 = &stru_28385ED00;
    }

    v27 = objc_msgSend_error(v6, v23, v24);
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_28385ED00;
    }

    v77 = 138412802;
    v78 = v20;
    v79 = 2114;
    v80 = v26;
    v81 = 2112;
    v82 = v29;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Record %@ was decrypted%{public}@%@", &v77, 0x20u);
  }

  v32 = objc_msgSend_error(v6, v12, v13);
  if (v32)
  {
    v33 = objc_msgSend_error(v6, v30, v31);
    v34 = CKIsPCSError();

    if (v34)
    {
      v35 = objc_msgSend_numUnwrapAttempts(v6, v30, v31);
      v38 = objc_msgSend_maxUnwrapAttempts(self, v36, v37);
      v39 = *MEMORY[0x277CBC878];
      v40 = *MEMORY[0x277CBC880];
      if (v35 < v38)
      {
        if (v40 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v39);
        }

        v41 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v43 = v41;
          v46 = objc_msgSend_record(v6, v44, v45);
          v49 = objc_msgSend_recordID(v46, v47, v48);
          v77 = 138412290;
          v78 = v49;
          _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Clearing protection data for record %@ and retrying decryption", &v77, 0xCu);
        }

        objc_msgSend_setError_(v6, v42, 0);
        v52 = objc_msgSend_callbackQueue(self, v50, v51);
        objc_msgSend__setupDecryptCallbackForQueue_(v6, v53, v52);

        objc_msgSend__clearProtectionDataForRecordInfo_(self, v54, v6);
        objc_msgSend__decryptRecordInfo_(self, v55, v6);
        goto LABEL_26;
      }

      if (v40 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v39);
      }

      v56 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v57 = v56;
        v60 = objc_msgSend_record(v6, v58, v59);
        v63 = objc_msgSend_recordID(v60, v61, v62);
        v77 = 138412290;
        v78 = v63;
        _os_log_impl(&dword_22506F000, v57, OS_LOG_TYPE_INFO, "Decryption has failed for record %@ too many times. Giving up", &v77, 0xCu);
      }
    }
  }

  if (v7)
  {
    v64 = objc_msgSend_record(v6, v30, v31);
    v67 = objc_msgSend_error(v6, v65, v66);
    v7[2](v7, v64, v67);
  }

  v68 = objc_msgSend_outstandingDecryptions(self, v30, v31);
  objc_sync_enter(v68);
  v71 = objc_msgSend_outstandingDecryptions(self, v69, v70);
  objc_msgSend_removeObject_(v71, v72, v6);

  objc_sync_exit(v68);
  v75 = objc_msgSend_recordDecryptGroup(self, v73, v74);
  dispatch_group_leave(v75);

LABEL_26:
  v76 = *MEMORY[0x277D85DE8];
}

- (void)_clearProtectionDataForRecordInfo:(id)a3
{
  v43 = objc_msgSend_record(a3, a2, a3);
  v6 = objc_msgSend_recordID(v43, v4, v5);
  objc_msgSend_setPCSData_forFetchedRecordID_(self, v7, 0, v6);

  v10 = objc_msgSend_recordID(v43, v8, v9);
  v13 = objc_msgSend_zoneID(v10, v11, v12);
  objc_msgSend_setPCSData_forFetchedZoneID_(self, v14, 0, v13);

  v17 = objc_msgSend_share(v43, v15, v16);
  v20 = objc_msgSend_recordID(v17, v18, v19);
  objc_msgSend_setPCSData_forFetchedShareID_(self, v21, 0, v20);

  v24 = objc_msgSend_parent(v43, v22, v23);
  v27 = objc_msgSend_recordID(v24, v25, v26);
  objc_msgSend_setPCSData_forFetchedRecordID_(self, v28, 0, v27);

  v29 = objc_alloc(MEMORY[0x277CBC5D0]);
  v30 = *MEMORY[0x277CBC020];
  v33 = objc_msgSend_recordID(v43, v31, v32);
  v36 = objc_msgSend_zoneID(v33, v34, v35);
  v38 = objc_msgSend_initWithRecordName_zoneID_(v29, v37, v30, v36);

  objc_msgSend_setPCSData_forFetchedShareID_(self, v39, 0, v38);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v43;
    objc_msgSend_setPrivatePCS_(v40, v41, 0);
    objc_msgSend_setPublicPCS_(v40, v42, 0);
  }
}

- (void)_decryptRecordInfo:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_record(v4, v5, v6);
  v10 = objc_msgSend_numUnwrapAttempts(v4, v8, v9);
  objc_msgSend_setNumUnwrapAttempts_(v4, v11, v10 + 1);
  v14 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v12, v13);
  if (objc_msgSend_isAppleInternalInstall(v14, v15, v16))
  {
    v19 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v17, v18);
    v22 = objc_msgSend_recordNamesForFakingDecryptionFailure(v19, v20, v21);
    v25 = objc_msgSend_recordID(v7, v23, v24);
    v28 = objc_msgSend_recordName(v25, v26, v27);
    v30 = objc_msgSend_containsObject_(v22, v29, v28);

    if (v30)
    {
      v33 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v31, *MEMORY[0x277CBC120], 5004, 0, @"Faking decryption failure on record because you asked for it");
      objc_msgSend_setError_(v4, v34, v33);
LABEL_19:

      goto LABEL_20;
    }
  }

  else
  {
  }

  hasPropertiesRequiringDecryption = objc_msgSend_hasPropertiesRequiringDecryption(v7, v31, v32);
  if (objc_msgSend_isCancelled(self, v36, v37))
  {
    v40 = MEMORY[0x277CBC560];
    v41 = *MEMORY[0x277CBC120];
    v42 = objc_msgSend_operationID(self, v38, v39);
    v33 = objc_msgSend_errorWithDomain_code_format_(v40, v43, v41, 1, @"Decrypt operation %@ was cancelled", v42);

    if (!v33)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if ((hasPropertiesRequiringDecryption & 1) != 0 || objc_msgSend_forcePCSDecrypt(self, v38, v39))
  {
    if (objc_msgSend_useEncryption(self, v38, v39))
    {
      v46 = objc_msgSend_protectionData(v7, v44, v45);
      if (v46)
      {

LABEL_22:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v60 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v80 = v60;
          v83 = objc_msgSend_recordID(v7, v81, v82);
          *buf = 138412290;
          v85 = v83;
          _os_log_debug_impl(&dword_22506F000, v80, OS_LOG_TYPE_DEBUG, "We need to decrypt properties on record %@. Fetching PCS data for that record", buf, 0xCu);
        }

        objc_msgSend__handleProtectionDataForRecordInfo_(self, v61, v4);
        goto LABEL_20;
      }

      v57 = objc_msgSend_zoneishKeyID(v7, v47, v48);

      if (v57)
      {
        goto LABEL_22;
      }

      v62 = objc_msgSend_forcePCSDecrypt(self, v58, v59);
      v63 = *MEMORY[0x277CBC878];
      v64 = *MEMORY[0x277CBC880];
      if (hasPropertiesRequiringDecryption & 1 | ((v62 & 1) == 0))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v63);
        }

        v65 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v68 = v65;
          v71 = objc_msgSend_recordID(v7, v69, v70);
          *buf = 138412290;
          v85 = v71;
          _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Record %@ has items that require encryption but no protection data was found on the record", buf, 0xCu);
        }

        v72 = MEMORY[0x277CBC560];
        v73 = *MEMORY[0x277CBC120];
        v74 = objc_msgSend_recordID(v7, v66, v67);
        v33 = objc_msgSend_errorWithDomain_code_format_(v72, v75, v73, 5001, @"Record %@ has items that require encryption but no protection data was found on the record", v74);

        if (!v33)
        {
          goto LABEL_20;
        }

LABEL_18:
        objc_msgSend_setError_(v4, v38, v33);
        goto LABEL_19;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v63);
      }

      v76 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v33 = v76;
        v79 = objc_msgSend_recordID(v7, v77, v78);
        *buf = 138412290;
        v85 = v79;
        _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Suppressing error for record %@ because no protection data was found on the record while forcing decryption and it has no properties requiring decryption", buf, 0xCu);

        goto LABEL_19;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v49 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v51 = v49;
        v54 = objc_msgSend_recordID(v7, v52, v53);
        *buf = 138412290;
        v85 = v54;
        _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Encryption is disabled, so we're only going to pretend to unwrap the data on record %@. You asked for it!", buf, 0xCu);
      }

      v33 = objc_msgSend__unwrapEncryptedPropertiesOnRecord_withPCS_(self, v50, v7, 0);
      if (v33)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_20:
  v55 = objc_msgSend_decryptGroup(v4, v38, v39);
  dispatch_group_leave(v55);

  v56 = *MEMORY[0x277D85DE8];
}

- (void)_decryptRecordInfo:(id)a3 usingWebSharingIdentityData:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_record(v6, v8, v9);
  v13 = objc_msgSend_container(self, v11, v12);
  v16 = objc_msgSend_pcsManager(v13, v14, v15);
  v46 = 0;
  v18 = objc_msgSend_createSharingIdentityFromData_error_(v16, v17, v7, &v46);

  v19 = v46;
  if (v19 || !v18)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v19;
      _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Couldn't create a sharing identity from sharing identity data: %@", buf, 0xCu);
      if (v19)
      {
LABEL_15:
        if (!v18)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if (v19)
    {
      goto LABEL_15;
    }

    v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5003, @"Couldn't create a sharing identity");
    goto LABEL_15;
  }

  v22 = objc_msgSend_container(self, v20, v21);
  v25 = objc_msgSend_pcsManager(v22, v23, v24);
  v28 = objc_msgSend_protectionData(v10, v26, v27);
  v45 = 0;
  v30 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(v25, v29, v28, v18, &v45);
  v19 = v45;

  v31 = *MEMORY[0x277CBC878];
  v32 = *MEMORY[0x277CBC880];
  if (!v19 && v30)
  {
    if (v32 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v31);
    }

    v33 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v41 = v33;
      v44 = objc_msgSend_recordID(v10, v42, v43);
      *buf = 138412546;
      v48 = v44;
      v49 = 2112;
      v50 = v30;
      _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Setting CKRecordPCS on record %@: %@", buf, 0x16u);
    }

    objc_msgSend_setRecordPCS_(v10, v34, v30);
    v19 = objc_msgSend__unwrapEncryptedPropertiesOnRecord_withPCS_(self, v35, v10, v30);
    goto LABEL_23;
  }

  if (v32 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v31);
  }

  v38 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  *buf = 138412290;
  v48 = v19;
  _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "Couldn't create a sharing identity from sharing identity data: %@", buf, 0xCu);
  if (!v19)
  {
LABEL_21:
    v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v39, *MEMORY[0x277CBC120], 5003, @"Couldn't unwrap record PCS with web sharing PCS");
  }

LABEL_22:
  if (v30)
  {
LABEL_23:
    CFRelease(v30);
  }

LABEL_24:
  CFRelease(v18);
LABEL_25:
  objc_msgSend_setError_(v6, v37, v19);

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_handleZoneProtectionDataForRecordInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_record(v4, v5, v6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isZoneWideShare(v7, v8, v9) & 1) == 0 && objc_msgSend_privatePCS(v7, v8, v9) && objc_msgSend_publicPCS(v7, v8, v9))
  {
    v10 = objc_msgSend_decryptGroup(v4, v8, v9);
    dispatch_group_enter(v10);

    v13 = objc_msgSend_container(self, v11, v12);
    v16 = objc_msgSend_pcsManager(v13, v14, v15);
    v19 = objc_msgSend_topmostParentOperation(self, v17, v18);
    v22 = objc_msgSend_operationID(v19, v20, v21);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_2252562EC;
    v52[3] = &unk_27854A708;
    v53 = v7;
    v54 = self;
    v55 = v4;
    v23 = v4;
    v24 = v7;
    objc_msgSend_pcsDataFromFetchedShare_requestorOperationID_completionHandler_(v16, v25, v24, v22, v52);

    v26 = v53;
  }

  else
  {
    v27 = objc_msgSend_container(self, v8, v9);
    v24 = objc_msgSend_pcsCache(v27, v28, v29);

    v32 = objc_msgSend_record(v4, v30, v31);
    v35 = objc_msgSend_zoneishKeyID(v32, v33, v34);
    v36 = v35 != 0;

    v37 = 8 * v36;
    v40 = objc_msgSend_decryptGroup(v4, v38, v39);
    dispatch_group_enter(v40);

    v43 = objc_msgSend_recordID(v7, v41, v42);
    v46 = objc_msgSend_zoneID(v43, v44, v45);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_225256590;
    v48[3] = &unk_27854B168;
    v49 = v7;
    v50 = self;
    v51 = v4;
    v26 = v4;
    v23 = v7;
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v24, v47, v46, self, v37, v48);
  }
}

- (id)_decryptRecordPCSForRecord:(id)a3 usingZonePCS:(id)a4
{
  v118 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_zoneishKeyID(v6, v8, v9);

  if (v10)
  {
    if (objc_msgSend_zoneishPCS(v7, v11, v12))
    {
      v15 = objc_msgSend_zoneishPCS(v7, v13, v14);
      if (v15)
      {
        v16 = v15;
        CFRetain(v15);
        v18 = 0;
LABEL_24:
        v84 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v17, v6);
        objc_msgSend_setPcs_(v84, v85, v16);
        objc_msgSend_setZonePCSData_(v84, v86, v7);
        v89 = objc_msgSend_recordID(v6, v87, v88);
        objc_msgSend_setPCSData_forFetchedRecordID_(self, v90, v84, v89);

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v91 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v107 = v91;
          v110 = objc_msgSend_recordID(v6, v108, v109);
          *buf = 138412546;
          v115 = v110;
          v116 = 2112;
          v117 = v16;
          _os_log_debug_impl(&dword_22506F000, v107, OS_LOG_TYPE_DEBUG, "Setting CKRecordPCS on record %@: %@", buf, 0x16u);
        }

        objc_msgSend_setRecordPCS_(v6, v92, v16);
        v83 = objc_msgSend__unwrapEncryptedPropertiesOnRecord_withPCS_(self, v93, v6, v16);

        CFRelease(v16);
        goto LABEL_34;
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      v23 = objc_msgSend_recordID(v6, v21, v22);
      v26 = objc_msgSend_zoneID(v23, v24, v25);
      *buf = 138412290;
      v115 = v26;
      _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Couldn't get a zoneish PCS for zone %@. We'll try the record PCS if it exists, just in case.", buf, 0xCu);
    }
  }

  if (objc_msgSend_pcs(v7, v11, v12) && (objc_msgSend_protectionData(v6, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
  {
    v32 = objc_msgSend_container(self, v30, v31);
    v35 = objc_msgSend_options(v32, v33, v34);
    v38 = objc_msgSend_acceptServerSignedRecords(v35, v36, v37);

    v41 = objc_msgSend_container(self, v39, v40);
    v44 = objc_msgSend_pcsManager(v41, v42, v43);
    v47 = objc_msgSend_protectionData(v6, v45, v46);
    v52 = objc_msgSend_pcs(v7, v48, v49);
    if (v38)
    {
      v53 = objc_msgSend_validatedTrusts(CKDServerTrustCache, v50, v51);
      v113 = 0;
      v16 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_trusts_error_(v44, v54, v47, 1, v52, v53, &v113);
      v18 = v113;

      if (!v18)
      {
        v56 = objc_msgSend_container(self, v17, v55);
        v59 = objc_msgSend_pcsManager(v56, v57, v58);
        v62 = objc_msgSend_protectionData(v6, v60, v61);
        v112 = 0;
        v64 = objc_msgSend_recordProtectionDataNeedsCounterSign_error_(v59, v63, v62, &v112);
        v18 = v112;

        if (v64)
        {
          objc_msgSend_setNeedsRollAndCounterSign_(v6, v17, 1);
        }
      }
    }

    else
    {
      v111 = 0;
      v16 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v44, v50, v47, 1, v52, &v111);
      v18 = v111;
    }

    if (v16)
    {
      goto LABEL_24;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v94 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v97 = v94;
      v100 = objc_msgSend_recordID(v6, v98, v99);
      *buf = 138412546;
      v115 = v100;
      v116 = 2112;
      v117 = v18;
      _os_log_impl(&dword_22506F000, v97, OS_LOG_TYPE_INFO, "Couldn't create record PCS for record %@: %@", buf, 0x16u);
    }

    v101 = MEMORY[0x277CBC560];
    v102 = *MEMORY[0x277CBC120];
    v103 = objc_msgSend_recordID(v6, v95, v96);
    v83 = objc_msgSend_errorWithDomain_code_format_(v101, v104, v102, 5001, @"Record %@ has items that require encryption but no protection data was found: %@", v103, v18);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v65 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v68 = v65;
      v71 = objc_msgSend_recordID(v6, v69, v70);
      v74 = objc_msgSend_zoneID(v71, v72, v73);
      v77 = objc_msgSend_protectionData(v6, v75, v76);
      v78 = &stru_28385ED00;
      if (!v77)
      {
        v78 = @" - record has no protection data";
      }

      *buf = 138412546;
      v115 = v74;
      v116 = 2114;
      v117 = v78;
      _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for zone %@%{public}@", buf, 0x16u);
    }

    v79 = MEMORY[0x277CBC560];
    v80 = *MEMORY[0x277CBC120];
    v81 = objc_msgSend_recordID(v6, v66, v67);
    v83 = objc_msgSend_errorWithDomain_code_format_(v79, v82, v80, 5001, @"Record %@ has items that require encryption but no zone protection data was found", v81);
  }

LABEL_34:

  v105 = *MEMORY[0x277D85DE8];

  return v83;
}

- (id)_decryptRecordPCSForRecord:(id)a3 usingSharePCS:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_container(self, v8, v9);
  v13 = objc_msgSend_pcsManager(v10, v11, v12);
  v16 = objc_msgSend_protectionData(v6, v14, v15);
  v19 = objc_msgSend_pcs(v7, v17, v18);
  v52 = 0;
  v21 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v13, v20, v16, 1, v19, &v52);
  v22 = v52;

  if (v21)
  {
    v24 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v23, v6);
    objc_msgSend_setPcs_(v24, v25, v21);
    objc_msgSend_setSharePCSData_(v24, v26, v7);
    v29 = objc_msgSend_recordID(v6, v27, v28);
    objc_msgSend_setPCSData_forFetchedRecordID_(self, v30, v24, v29);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v48 = v31;
      v51 = objc_msgSend_recordID(v6, v49, v50);
      *buf = 138412546;
      v54 = v51;
      v55 = 2112;
      v56 = v21;
      _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Setting CKRecordPCS on record %@: %@", buf, 0x16u);
    }

    objc_msgSend_setRecordPCS_(v6, v32, v21);
    v34 = objc_msgSend__unwrapEncryptedPropertiesOnRecord_withPCS_(self, v33, v6, v21);

    CFRelease(v21);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v38 = v35;
      v41 = objc_msgSend_recordID(v6, v39, v40);
      *buf = 138412546;
      v54 = v41;
      v55 = 2112;
      v56 = v22;
      _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, "Couldn't create record PCS for record %@ from share: %@", buf, 0x16u);
    }

    v24 = objc_msgSend_recordID(v6, v36, v37);
    v44 = objc_msgSend_recordID(v6, v42, v43);
    v34 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(self, v45, v22, v24, 5001, @"Record %@ has items that require encryption but no protection data was found", v44);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)_decryptRecordPCSForRecord:(id)a3 usingChainPCS:(id)a4
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_container(self, v8, v9);
  v13 = objc_msgSend_pcsManager(v10, v11, v12);
  v15 = objc_msgSend_decryptChainPCSForRecordPCS_(v13, v14, v7);

  if (v15 || (objc_msgSend_chainPCSData(v7, v16, v17), v39 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend_pcs(v39, v40, v41), v39, !v42))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v21 = v18;
      v24 = objc_msgSend_recordID(v6, v22, v23);
      *buf = 138412546;
      v90 = v24;
      v91 = 2112;
      v92 = v15;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't create record PCS for record %@ from parent PCS: %@", buf, 0x16u);
    }

    v25 = objc_msgSend_parent(v6, v19, v20);
    v28 = objc_msgSend_recordID(v25, v26, v27);
    v31 = objc_msgSend_parent(v6, v29, v30);
    v34 = objc_msgSend_recordID(v31, v32, v33);
    v36 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(self, v35, v15, v28, 5001, @"Couldn't unwrap chain PCS on parent %@", v34);
  }

  else
  {
    v45 = objc_msgSend_container(self, v43, v44);
    v48 = objc_msgSend_pcsManager(v45, v46, v47);
    v51 = objc_msgSend_protectionData(v6, v49, v50);
    v54 = objc_msgSend_chainPCSData(v7, v52, v53);
    v57 = objc_msgSend_pcs(v54, v55, v56);
    v88 = 0;
    v59 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v48, v58, v51, 1, v57, &v88);
    v60 = v88;

    if (!v60 && v59)
    {
      v62 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v61, v6);
      objc_msgSend_setPcs_(v62, v63, v59);
      objc_msgSend_setParentPCSData_(v62, v64, v7);
      v67 = objc_msgSend_recordID(v6, v65, v66);
      objc_msgSend_setPCSData_forFetchedRecordID_(self, v68, v62, v67);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v69 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v84 = v69;
        v87 = objc_msgSend_recordID(v6, v85, v86);
        *buf = 138412546;
        v90 = v87;
        v91 = 2112;
        v92 = v59;
        _os_log_debug_impl(&dword_22506F000, v84, OS_LOG_TYPE_DEBUG, "Setting CKRecordPCS on record %@: %@", buf, 0x16u);
      }

      objc_msgSend_setRecordPCS_(v6, v70, v59);
      v36 = objc_msgSend__unwrapEncryptedPropertiesOnRecord_withPCS_(self, v71, v6, v59);

LABEL_23:
      CFRelease(v59);
      goto LABEL_7;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v72 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v75 = v72;
      v78 = objc_msgSend_recordID(v6, v76, v77);
      *buf = 138412546;
      v90 = v78;
      v91 = 2112;
      v92 = 0;
      _os_log_impl(&dword_22506F000, v75, OS_LOG_TYPE_INFO, "Couldn't create record PCS for record %@ from parent PCS: %@", buf, 0x16u);
    }

    v79 = objc_msgSend_recordID(v6, v73, v74);
    v82 = objc_msgSend_recordID(v6, v80, v81);
    v36 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(self, v83, v60, v79, 5001, @"Record %@ has items that require encryption but no protection data was found", v82);

    if (v59)
    {
      goto LABEL_23;
    }
  }

LABEL_7:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)_handleShareProtectionDataForRecordInfo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7 = objc_msgSend_record(v4, v5, v6);
  v10 = objc_msgSend_share(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_decryptGroup(v4, v11, v12);
    dispatch_group_enter(v13);

    v16 = objc_msgSend_container(self, v14, v15);
    v19 = objc_msgSend_pcsCache(v16, v17, v18);

    v22 = objc_msgSend_share(v7, v20, v21);
    v25 = objc_msgSend_recordID(v22, v23, v24);
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_225257B98;
    v86[3] = &unk_27854A708;
    v87 = v7;
    v88 = self;
    v89 = v4;
    objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v19, v26, v25, self, 0, v86);

    v27 = v87;
  }

  else
  {
    v28 = objc_msgSend_parent(v7, v11, v12);

    if (v28)
    {
      v31 = objc_msgSend_decryptGroup(v4, v29, v30);
      dispatch_group_enter(v31);

      v34 = objc_msgSend_container(self, v32, v33);
      v19 = objc_msgSend_pcsCache(v34, v35, v36);

      v39 = objc_msgSend_parent(v7, v37, v38);
      v42 = objc_msgSend_recordID(v39, v40, v41);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_225257E74;
      v81[3] = &unk_27854B190;
      v82 = v7;
      objc_copyWeak(&v85, &location);
      v83 = self;
      v84 = v4;
      objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v19, v43, v42, self, 4, v81);

      objc_destroyWeak(&v85);
      v27 = v82;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isZoneWideShare(v7, v44, v45) & 1) == 0)
      {
        v59 = objc_msgSend_decryptGroup(v4, v44, v45);
        dispatch_group_enter(v59);

        v62 = objc_msgSend_container(self, v60, v61);
        v65 = objc_msgSend_pcsManager(v62, v63, v64);
        v68 = objc_msgSend_topmostParentOperation(self, v66, v67);
        v71 = objc_msgSend_operationID(v68, v69, v70);
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = sub_225258150;
        v77[3] = &unk_27854A708;
        v78 = v7;
        v79 = self;
        v80 = v4;
        objc_msgSend_pcsDataFromFetchedShare_requestorOperationID_completionHandler_(v65, v72, v78, v71, v77);

        v19 = v78;
        goto LABEL_9;
      }

      v46 = objc_msgSend_decryptGroup(v4, v44, v45);
      dispatch_group_enter(v46);

      v49 = objc_msgSend_container(self, v47, v48);
      v19 = objc_msgSend_pcsCache(v49, v50, v51);

      v54 = objc_msgSend_recordID(v7, v52, v53);
      v57 = objc_msgSend_zoneID(v54, v55, v56);
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_2252583F4;
      v73[3] = &unk_27854B168;
      v74 = v7;
      v75 = self;
      v76 = v4;
      objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v19, v58, v57, self, 0, v73);

      v27 = v74;
    }
  }

LABEL_9:
  objc_destroyWeak(&location);
}

- (void)_handleProtectionDataForRecordInfo:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_record(v5, v6, v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v44 = v9;
    v47 = objc_msgSend_recordID(v8, v45, v46);
    v50 = objc_msgSend_recordID(v8, v48, v49);
    v53 = objc_msgSend_zoneID(v50, v51, v52);
    v54 = 134218498;
    v55 = v8;
    v56 = 2112;
    v57 = v47;
    v58 = 2112;
    v59 = v53;
    _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Fetching PCS data. Record %p recordID %@ zoneID %@", &v54, 0x20u);
  }

  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_deviceContext(v12, v13, v14);
  v18 = objc_msgSend_testDeviceReference(v15, v16, v17);
  if (v18)
  {
    v21 = v18;
    v22 = objc_msgSend_webSharingIdentityDataByRecordID(self, v19, v20);
    v25 = objc_msgSend_recordID(v8, v23, v24);
    v27 = objc_msgSend_objectForKeyedSubscript_(v22, v26, v25);

    if (v27)
    {
      v30 = objc_msgSend_webSharingIdentityDataByRecordID(self, v28, v29);
      v33 = objc_msgSend_recordID(v8, v31, v32);
      v35 = objc_msgSend_objectForKeyedSubscript_(v30, v34, v33);
      objc_msgSend__decryptRecordInfo_usingWebSharingIdentityData_(self, v36, v5, v35);

      goto LABEL_14;
    }
  }

  else
  {
  }

  if (objc_msgSend_databaseScope(self, v28, v29) == 2)
  {
    objc_msgSend__handleZoneProtectionDataForRecordInfo_(self, v37, v5);
  }

  else if (objc_msgSend_databaseScope(self, v37, v38) == 3)
  {
    objc_msgSend__handleShareProtectionDataForRecordInfo_(self, v39, v5);
  }

  else
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v39, v40);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, self, @"CKDDecryptRecordsOperation.m", 507, @"You can't decrypt a record in the public database");
  }

LABEL_14:

  v43 = *MEMORY[0x277D85DE8];
}

- (id)_unwrapAssetKeyForAsset:(id)a3 inRecordWithID:(id)a4 forField:(id)a5 withPCS:(_OpaquePCSShareProtection *)a6
{
  v64 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15 = objc_msgSend_useEncryption(self, v13, v14);
  v18 = objc_msgSend_mergeableDeltaID(v10, v16, v17);
  if (v18)
  {
    v21 = v18;
    v22 = objc_msgSend_mergeableDeltaID(v10, v19, v20);
    v25 = objc_msgSend_valueID(v22, v23, v24);
    isEncrypted = objc_msgSend_isEncrypted(v25, v26, v27);

    if (isEncrypted & v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v51 = 0;
    v52 = 0;
    v54 = 0;
    goto LABEL_15;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a6)
  {
    v29 = [CKDWrappingContext alloc];
    v32 = objc_msgSend_mergeableDeltaID(v10, v30, v31);
    v35 = objc_msgSend_signature(v10, v33, v34);
    v38 = objc_msgSend_referenceSignature(v10, v36, v37);
    v60 = v12;
    v40 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v29, v39, v11, v12, v32, v35, v38);

    v43 = objc_msgSend_container(self, v41, v42);
    v46 = objc_msgSend_pcsManager(v43, v44, v45);
    v49 = objc_msgSend_wrappedAssetKey(v10, v47, v48);
    v61 = 0;
    v51 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v46, v50, v49, a6, v40, &v61);
    v52 = v61;

    if (v51)
    {
      objc_msgSend_setAssetKey_(v10, v53, v51);
      v54 = 0;
    }

    else
    {
      v54 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(self, v53, v52, v11, 5004, @"Error unwrapping asset key with PCS %@ for record %@", a6, v11);
    }

    v12 = v60;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v55 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v63 = v11;
      _os_log_impl(&dword_22506F000, v55, OS_LOG_TYPE_INFO, "Couldn't get a PCS object for record %@", buf, 0xCu);
    }

    v54 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v56, *MEMORY[0x277CBC120], 5001, @"Couldn't get a PCS object for record %@", v11);
    v51 = 0;
    v52 = 0;
  }

LABEL_15:
  v57 = v54;

  v58 = *MEMORY[0x277D85DE8];
  return v54;
}

- (id)_unwrapPackageAssets:(id)a3 inRecordWithID:(id)a4 forField:(id)a5 withPCS:(_OpaquePCSShareProtection *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = objc_msgSend_assets(a3, v12, v13, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v29, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v26;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend__unwrapAssetKeyForAsset_inRecordWithID_forField_withPCS_(self, v17, *(*(&v25 + 1) + 8 * i), v10, v11, a6);
        if (v21)
        {
          v22 = v21;
          goto LABEL_11;
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v29, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_11:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_unwrapMergeableRecordValue:(id)a3 inRecordWithID:(id)a4 forField:(id)a5 withPCS:(_OpaquePCSShareProtection *)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v11 = objc_msgSend_useEncryption(self, v9, v10);
  v12 = 0;
  if (a6 && v11)
  {
    v13 = objc_alloc_init(CKDKeyEnvelopeContext);
    objc_msgSend_setShareProtection_(v13, v14, a6);
    v17 = objc_msgSend_container(self, v15, v16);
    v20 = objc_msgSend_pcsManager(v17, v18, v19);
    objc_msgSend_setPcsManager_(v13, v21, v20);

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = objc_msgSend_unmergedDeltas(v8, v22, v23);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v38, v44, 16);
    if (v12)
    {
      v27 = *v39;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v38 + 1) + 8 * i);
          v37 = 0;
          v30 = objc_msgSend_decryptWithContext_error_(v29, v26, v13, &v37);
          v31 = v37;
          v32 = v31;
          if ((v30 & 1) == 0)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v33 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v43 = v32;
              _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Failed to decrypt mergeable delta with error: %@", buf, 0xCu);
            }

            v12 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], 5004, v32, @"Failed to decrypt mergeable delta");

            goto LABEL_17;
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v38, v44, 16);
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v35 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_unwrapEncryptedPropertiesForRecordValueStore:(id)a3 withPCS:(_OpaquePCSShareProtection *)a4
{
  v133 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = objc_msgSend_allKeys(v5, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v124, v132, 16);
  if (!v9)
  {
    goto LABEL_65;
  }

  v11 = v9;
  v12 = 0x277CBC000uLL;
  v106 = *v125;
  do
  {
    v13 = 0;
    do
    {
      if (*v125 != v106)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v124 + 1) + 8 * v13);
      v15 = objc_msgSend_rawValueForKey_(v5, v10, v14, v94);
      v16 = *(v12 + 744);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v12;
        v18 = [CKDWrappingContext alloc];
        v21 = objc_msgSend_recordID(v5, v19, v20);
        v23 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v18, v22, v21, v14, 0, 0, 0);

        v26 = objc_msgSend_container(self, v24, v25);
        v29 = objc_msgSend_pcsManager(v26, v27, v28);
        v31 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v29, v30, v15, a4, v23);

        v12 = v17;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = objc_msgSend_recordID(v5, v32, v33);
        v35 = objc_msgSend__unwrapAssetKeyForAsset_inRecordWithID_forField_withPCS_(self, v34, v15, v23, v14, a4);
LABEL_14:
        v31 = v35;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = objc_msgSend_recordID(v5, v36, v37);
        v35 = objc_msgSend__unwrapPackageAssets_inRecordWithID_forField_withPCS_(self, v38, v15, v23, v14, a4);
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = objc_msgSend_recordID(v5, v39, v40);
        v35 = objc_msgSend__unwrapMergeableRecordValue_inRecordWithID_forField_withPCS_(self, v41, v15, v23, v14, a4);
        goto LABEL_14;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_count(v15, v42, v43))
      {
        goto LABEL_63;
      }

      v23 = objc_msgSend_firstObject(v15, v44, v45);
      v46 = *(v12 + 744);
      objc_opt_class();
      v104 = self;
      v94 = v11;
      if (objc_opt_isKindOfClass())
      {
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v95 = v15;
        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v47, &v120, v131, 16);
        if (v100)
        {
          v96 = *v121;
LABEL_23:
          v48 = 0;
          while (1)
          {
            if (*v121 != v96)
            {
              objc_enumerationMutation(v95);
            }

            v49 = *(*(&v120 + 1) + 8 * v48);
            v50 = [CKDWrappingContext alloc];
            v53 = objc_msgSend_recordID(v5, v51, v52);
            v55 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v50, v54, v53, v14, 0, 0, 0);

            v58 = objc_msgSend_container(v104, v56, v57);
            v61 = objc_msgSend_pcsManager(v58, v59, v60);
            v31 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v61, v62, v49, a4, v55);

            if (v31)
            {
              goto LABEL_61;
            }

            if (v100 == ++v48)
            {
              v31 = 0;
              v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v63, &v120, v131, 16);
              if (v100)
              {
                goto LABEL_23;
              }

              goto LABEL_61;
            }
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v97 = v15;
          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v64, &v116, v130, 16);
          if (v65)
          {
            v68 = v65;
            v101 = *v117;
LABEL_33:
            v69 = 0;
            while (1)
            {
              if (*v117 != v101)
              {
                objc_enumerationMutation(v97);
              }

              v70 = *(*(&v116 + 1) + 8 * v69);
              v71 = objc_msgSend_recordID(v5, v66, v67, v94);
              v31 = objc_msgSend__unwrapAssetKeyForAsset_inRecordWithID_forField_withPCS_(v104, v72, v70, v71, v14, a4);

              if (v31)
              {
                goto LABEL_61;
              }

              if (v68 == ++v69)
              {
                v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v66, &v116, v130, 16);
                v31 = 0;
                if (v68)
                {
                  goto LABEL_33;
                }

                goto LABEL_61;
              }
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v98 = v15;
            v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v73, &v112, v129, 16);
            if (v74)
            {
              v77 = v74;
              v102 = *v113;
LABEL_43:
              v78 = 0;
              while (1)
              {
                if (*v113 != v102)
                {
                  objc_enumerationMutation(v98);
                }

                v79 = *(*(&v112 + 1) + 8 * v78);
                v80 = objc_msgSend_recordID(v5, v75, v76, v94);
                v31 = objc_msgSend__unwrapPackageAssets_inRecordWithID_forField_withPCS_(v104, v81, v79, v80, v14, a4);

                if (v31)
                {
                  goto LABEL_61;
                }

                if (v77 == ++v78)
                {
                  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v75, &v112, v129, 16);
                  v31 = 0;
                  if (v77)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_61;
                }
              }
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

LABEL_63:
              goto LABEL_16;
            }

            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v99 = v15;
            v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v82, &v108, v128, 16);
            if (v83)
            {
              v86 = v83;
              v103 = *v109;
LABEL_53:
              v87 = 0;
              while (1)
              {
                if (*v109 != v103)
                {
                  objc_enumerationMutation(v99);
                }

                v88 = *(*(&v108 + 1) + 8 * v87);
                v89 = objc_msgSend_recordID(v5, v84, v85, v94);
                v31 = objc_msgSend__unwrapMergeableRecordValue_inRecordWithID_forField_withPCS_(v104, v90, v88, v89, v14, a4);

                if (v31)
                {
                  goto LABEL_61;
                }

                if (v86 == ++v87)
                {
                  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v84, &v108, v128, 16);
                  v31 = 0;
                  if (v86)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_61;
                }
              }
            }
          }
        }
      }

      v31 = 0;
LABEL_61:

      self = v104;
      v12 = 0x277CBC000;
      v11 = v94;
LABEL_15:

      if (v31)
      {
        goto LABEL_66;
      }

LABEL_16:
      ++v13;
    }

    while (v13 != v11);
    v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v124, v132, 16);
    v11 = v91;
  }

  while (v91);
LABEL_65:
  v31 = 0;
LABEL_66:

  v92 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_unwrapEncryptedPropertiesOnRecord:(id)a3 withPCS:(_OpaquePCSShareProtection *)a4
{
  v136 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!a4 && objc_msgSend_useEncryption(self, v6, v7))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v9;
      v15 = objc_msgSend_recordID(v8, v13, v14);
      *buf = 138412290;
      v132 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Couldn't get a PCS object for the record %@", buf, 0xCu);
    }

    v16 = MEMORY[0x277CBC560];
    v17 = *MEMORY[0x277CBC120];
    v18 = objc_msgSend_recordID(v8, v10, v11);
    v20 = objc_msgSend_errorWithDomain_code_format_(v16, v19, v17, 5001, @"Couldn't get a PCS object for the record %@. ", v18);
LABEL_8:

    goto LABEL_11;
  }

  v21 = objc_msgSend_valueStore(v8, v6, v7);
  v20 = objc_msgSend__unwrapEncryptedPropertiesForRecordValueStore_withPCS_(self, v22, v21, a4);

  if (!v20)
  {
    v25 = objc_msgSend_encryptedValueStore(v8, v23, v24);
    v20 = objc_msgSend__unwrapEncryptedPropertiesForRecordValueStore_withPCS_(self, v26, v25, a4);

    if (!v20)
    {
      v31 = objc_msgSend_chainPrivateKey(v8, v27, v28);
      v34 = objc_msgSend_encryptedData(v31, v32, v33);

      if (!v34)
      {
        goto LABEL_16;
      }

      v37 = [CKDWrappingContext alloc];
      v40 = objc_msgSend_recordID(v8, v38, v39);
      v42 = objc_msgSend_initWithRecordID_fieldName_(v37, v41, v40, *MEMORY[0x277CBC8B0]);

      v45 = objc_msgSend_container(self, v43, v44);
      v48 = objc_msgSend_pcsManager(v45, v46, v47);
      v51 = objc_msgSend_chainPrivateKey(v8, v49, v50);
      v20 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v48, v52, v51, a4, v42);

      if (!v20)
      {
LABEL_16:
        v53 = objc_msgSend_mutableEncryptedPSK(v8, v35, v36);
        v56 = objc_msgSend_encryptedData(v53, v54, v55);

        if (v56)
        {
          v57 = [CKDWrappingContext alloc];
          v60 = objc_msgSend_recordID(v8, v58, v59);
          v18 = objc_msgSend_initWithRecordID_fieldName_(v57, v61, v60, *MEMORY[0x277CBC900]);

          v64 = objc_msgSend_container(self, v62, v63);
          v67 = objc_msgSend_pcsManager(v64, v65, v66);
          v70 = objc_msgSend_mutableEncryptedPSK(v8, v68, v69);
          v20 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v67, v71, v70, a4, v18);

          if (v20)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v72 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v109 = v72;
              v112 = objc_msgSend_recordID(v8, v110, v111);
              *buf = 138412290;
              v132 = v112;
              _os_log_debug_impl(&dword_22506F000, v109, OS_LOG_TYPE_DEBUG, "Record %@ is unable to decrypt its mutableEncryptedPSK.  Dropping the value", buf, 0xCu);
            }

            objc_msgSend_setMutableEncryptedPSK_(v8, v73, 0);
            goto LABEL_8;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v124 = self;
          v120 = v8;
          v18 = v8;
          objc_msgSend_oneTimeURLMetadatasByParticipantID(v18, v74, v75);
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v121 = v130 = 0u;
          obj = objc_msgSend_allValues(v121, v76, v77);
          v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v78, &v127, v135, 16);
          if (v126)
          {
            v125 = *v128;
            v123 = *MEMORY[0x277CBC8F8];
            while (2)
            {
              for (i = 0; i != v126; ++i)
              {
                if (*v128 != v125)
                {
                  objc_enumerationMutation(obj);
                }

                v82 = *(*(&v127 + 1) + 8 * i);
                v83 = objc_msgSend_encryptedOneTimeFullToken(v82, v79, v80);
                v86 = objc_msgSend_encryptedData(v83, v84, v85);

                if (v86)
                {
                  v87 = [CKDWrappingContext alloc];
                  v88 = v18;
                  v91 = objc_msgSend_recordID(v18, v89, v90);
                  v93 = objc_msgSend_initWithRecordID_fieldName_(v87, v92, v91, v123);

                  v96 = objc_msgSend_container(v124, v94, v95);
                  v99 = objc_msgSend_pcsManager(v96, v97, v98);
                  v102 = objc_msgSend_encryptedOneTimeFullToken(v82, v100, v101);
                  v20 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v99, v103, v102, a4, v93);

                  if (v20)
                  {
                    if (*MEMORY[0x277CBC880] != -1)
                    {
                      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                    }

                    v18 = v88;
                    v8 = v120;
                    v108 = *MEMORY[0x277CBC830];
                    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
                    {
                      v113 = v108;
                      v116 = objc_msgSend_recordID(v88, v114, v115);
                      v119 = objc_msgSend_participantID(v82, v117, v118);
                      *buf = 138412546;
                      v132 = v116;
                      v133 = 2112;
                      v134 = v119;
                      _os_log_debug_impl(&dword_22506F000, v113, OS_LOG_TYPE_DEBUG, "Record %@ is unable to decrypt its encryptedOneTimeFullToken for participant %@. Bailing.", buf, 0x16u);

                      v18 = v88;
                    }

                    v104 = v121;
                    goto LABEL_44;
                  }

                  v18 = v88;
                }
              }

              v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, &v127, v135, 16);
              if (v126)
              {
                continue;
              }

              break;
            }
          }

          v104 = v121;
          if (objc_msgSend_count(v121, v105, v106))
          {
            objc_msgSend_setOneTimeURLMetadatasByParticipantID_(v18, v107, v121);
          }

          v20 = 0;
          v8 = v120;
LABEL_44:

          goto LABEL_8;
        }

        v20 = 0;
      }
    }
  }

LABEL_11:

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = MEMORY[0x277CBC830];
  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v23 = v8;
    v26 = objc_msgSend_operationID(self, v24, v25);
    *buf = 138543362;
    v40 = v26;
    _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Finished decrypt operation %{public}@", buf, 0xCu);
  }

  if (objc_msgSend_isFinished(self, v9, v10))
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    v34 = objc_msgSend_operationID(self, v32, v33);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v35, a2, self, @"CKDDecryptRecordsOperation.m", 678, @"Operation %@ was already marked as finished", v34);
  }

  v13 = objc_msgSend_recordDecryptQueue(self, v11, v12);
  dispatch_activate(v13);

  if (*v6 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    v27 = v14;
    v30 = objc_msgSend_operationID(self, v28, v29);
    *buf = 138543362;
    v40 = v30;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Decrypt operation %{public}@ is finishing. Waiting for all records to finish decrypting in case it never started", buf, 0xCu);
  }

  v17 = objc_msgSend_recordDecryptGroup(self, v15, v16);
  v20 = objc_msgSend_callbackQueue(self, v18, v19);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22525A1D0;
  block[3] = &unk_278545E20;
  v37 = v5;
  v38 = a2;
  block[4] = self;
  v21 = v5;
  dispatch_group_notify(v17, v20, block);

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_possiblyWrapError:(id)a3 forRecordWithID:(id)a4 withCode:(int64_t)a5 format:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ((CKShouldWrapErrorFetchingRecords() & 1) == 0)
  {
    v18 = v9;
    goto LABEL_5;
  }

  if (CKCanRetryForError())
  {
    v14 = MEMORY[0x277CBC560];
    v15 = *MEMORY[0x277CBC120];
    v16 = objc_msgSend_code(v9, v12, v13);
    v18 = objc_msgSend_errorWithDomain_code_error_format_(v14, v17, v15, v16, v9, @"Encountered a transient error fetching protection data for record %@. Please try again.", v10);
LABEL_5:
    v19 = v18;
    goto LABEL_9;
  }

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v23 = objc_msgSend_initWithFormat_arguments_(v20, v21, v11, &v27);
  if (v9)
  {
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%@: %@", v23, v9);

    v23 = v24;
  }

  v19 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], a5, v9, @"%@", v23);

LABEL_9:

  return v19;
}

@end