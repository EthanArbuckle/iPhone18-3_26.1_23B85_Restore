@interface CKDFetchRecordVersionsOperation
- (CKDDecryptRecordsOperation)recordDecryptOperation;
- (CKDFetchRecordVersionsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleRecordVersionsFetchedForID:(id)d isDeleted:(BOOL)deleted versions:(id)versions responseCode:(id)code;
- (void)finishDecryption;
- (void)main;
@end

@implementation CKDFetchRecordVersionsOperation

- (CKDFetchRecordVersionsOperation)initWithOperationInfo:(id)info container:(id)container
{
  v35[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v34.receiver = self;
  v34.super_class = CKDFetchRecordVersionsOperation;
  v9 = [(CKDDatabaseOperation *)&v34 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_recordIDs(infoCopy, v7, v8);
    objc_msgSend_setRecordIDs_(v9, v11, v10);

    v14 = objc_msgSend_desiredKeys(infoCopy, v12, v13);
    if (v14 && (v17 = v14, objc_msgSend_desiredKeys(infoCopy, v15, v16), v18 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_count(v18, v19, v20), v18, v17, !v21))
    {
      v35[0] = *MEMORY[0x277CBC030];
      v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v35, 1);
    }

    else
    {
      v22 = objc_msgSend_desiredKeys(infoCopy, v15, v16);
    }

    desiredKeys = v9->_desiredKeys;
    v9->_desiredKeys = v22;

    v26 = objc_msgSend_minimumVersionETag(infoCopy, v24, v25);
    objc_msgSend_setMinimumVersionETag_(v9, v27, v26);

    v28 = dispatch_group_create();
    objc_msgSend_setFetchVersionsGroup_(v9, v29, v28);

    v9->_shouldFetchAssetContent = objc_msgSend_shouldFetchAssetContent(infoCopy, v30, v31);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-record-versions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (CKDDecryptRecordsOperation)recordDecryptOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  decryptOperation = selfCopy->_decryptOperation;
  if (!decryptOperation || objc_msgSend_isFinished(decryptOperation, v3, v4))
  {
    v6 = objc_opt_new();
    v7 = objc_opt_class();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2251E5C64;
    v11[3] = &unk_278548B60;
    v11[4] = selfCopy;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(selfCopy, v8, v7, v6, v11);
  }

  objc_sync_exit(selfCopy);

  v9 = selfCopy->_decryptOperation;

  return v9;
}

- (void)finishDecryption
{
  obj = self;
  objc_sync_enter(obj);
  decryptOperation = obj->_decryptOperation;
  if (decryptOperation && (objc_msgSend_isFinished(decryptOperation, v2, v3) & 1) == 0)
  {
    objc_msgSend_finishDecryption(obj->_decryptOperation, v5, v6);
  }

  objc_sync_exit(obj);
}

- (void)_handleRecordVersionsFetchedForID:(id)d isDeleted:(BOOL)deleted versions:(id)versions responseCode:(id)code
{
  deletedCopy = deleted;
  v97 = *MEMORY[0x277D85DE8];
  dCopy = d;
  versionsCopy = versions;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_225074040;
  v89 = sub_2250735AC;
  v90 = 0;
  codeCopy = code;
  v10 = objc_msgSend_code(codeCopy, v8, v9);
  if (dCopy && v10 == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v55 = objc_msgSend_count(versionsCopy, v12, v13);
      v56 = @"false";
      *location = 134218498;
      *&location[4] = v55;
      v93 = 2114;
      if (deletedCopy)
      {
        v56 = @"true";
      }

      v94 = dCopy;
      v95 = 2114;
      v96 = v56;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Fetched %ld versions for record with ID %{public}@ (is deleted: %{public}@)", location, 0x20u);
    }

    if (objc_msgSend_count(versionsCopy, v14, v15))
    {
      v18 = objc_msgSend_fetchVersionsGroup(self, v16, v17);
      dispatch_group_enter(v18);

      objc_initWeak(location, self);
      v19 = dispatch_group_create();
      v20 = objc_opt_new();
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = versionsCopy;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v81, v91, 16);
      if (v22)
      {
        v23 = *v82;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v82 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v81 + 1) + 8 * i);
            dispatch_group_enter(v19);
            v28 = objc_msgSend_recordDecryptOperation(self, v26, v27);
            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = sub_2251E64CC;
            v76[3] = &unk_278549AD8;
            objc_copyWeak(&v80, location);
            v77 = v20;
            v79 = &v85;
            v78 = v19;
            objc_msgSend_decryptRecord_withCompletion_(v28, v29, v25, v76);

            objc_destroyWeak(&v80);
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v81, v91, 16);
        }

        while (v22);
      }

      v31 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251E6740;
      block[3] = &unk_278549B28;
      objc_copyWeak(&v74, location);
      v32 = dCopy;
      v75 = deletedCopy;
      v70 = v32;
      v71 = v20;
      v73 = &v85;
      selfCopy = self;
      v33 = v20;
      dispatch_group_notify(v19, v31, block);

      objc_destroyWeak(&v74);
      objc_destroyWeak(location);
      goto LABEL_21;
    }
  }

  else
  {
    v34 = MEMORY[0x277CBC560];
    v35 = sub_2253962A4(codeCopy);
    v38 = objc_msgSend_request(self, v36, v37);
    v39 = sub_225395734(v38, codeCopy);
    v42 = objc_msgSend_error(codeCopy, v40, v41);
    v45 = objc_msgSend_errorDescription(v42, v43, v44);
    v47 = objc_msgSend_errorWithDomain_code_userInfo_format_(v34, v46, *MEMORY[0x277CBC120], v35, v39, @"Error fetching versions for record %@ from server: %@", dCopy, v45);
    v48 = v86[5];
    v86[5] = v47;

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v57 = v86[5];
      *location = 138412546;
      *&location[4] = dCopy;
      v93 = 2112;
      v94 = v57;
      _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Failed to fetch versions for record %@: %@", location, 0x16u);
    }
  }

  v50 = objc_msgSend_recordVersionFetchedBlock(self, v16, v17);

  if (v50)
  {
    v53 = objc_msgSend_callbackQueue(self, v51, v52);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_2251E68B4;
    v64[3] = &unk_278549B00;
    v64[4] = self;
    v65 = dCopy;
    v68 = deletedCopy;
    v66 = versionsCopy;
    v67 = &v85;
    dispatch_async(v53, v64);
  }

LABEL_21:
  _Block_object_dispose(&v85, 8);

  v54 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v4 = objc_msgSend_recordIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v9 = [CKDFetchRecordVersionsRequest alloc];
    v12 = objc_msgSend_recordIDs(self, v10, v11);
    v15 = objc_msgSend_desiredKeys(self, v13, v14);
    v18 = objc_msgSend_minimumVersionETag(self, v16, v17);
    v20 = objc_msgSend_initWithOperation_recordIDs_desiredKeys_minimumVersionETag_(v9, v19, self, v12, v15, v18);

    AssetContent = objc_msgSend_shouldFetchAssetContent(self, v21, v22);
    objc_msgSend_setShouldFetchAssetContent_(v20, v24, AssetContent);
    objc_initWeak(&location, self);
    objc_initWeak(&from, v20);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2251E6B9C;
    v35[3] = &unk_278549B50;
    objc_copyWeak(&v36, &location);
    objc_msgSend_setRecordVersionsFetchedBlock_(v20, v25, v35);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2251E6C38;
    v32[3] = &unk_278548748;
    objc_copyWeak(&v33, &location);
    objc_copyWeak(&v34, &from);
    objc_msgSend_setCompletionBlock_(v20, v26, v32);
    objc_msgSend_setRequest_(self, v27, v20);
    v30 = objc_msgSend_container(self, v28, v29);
    objc_msgSend_performRequest_(v30, v31, v20);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {

    objc_msgSend_finishWithError_(self, v8, 0);
  }
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v24 = v5;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v29 = objc_msgSend_ckShortDescription(self, v27, v28);
    *buf = 138544130;
    v39 = v26;
    v40 = 2048;
    selfCopy = self;
    v42 = 2114;
    v43 = v29;
    v44 = 2112;
    v45 = errorCopy;
    _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Fetch record versions operation <%{public}@: %p; %{public}@> finished with error %@", buf, 0x2Au);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = objc_msgSend_recordIDs(self, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v33, v37, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_zoneID(*(*(&v33 + 1) + 8 * i), v12, v13);
        objc_msgSend_addObject_(v6, v18, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v33, v37, 16);
    }

    while (v14);
  }

  if (objc_msgSend_count(v6, v19, v20))
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2251E6FFC;
    v31[3] = &unk_2785487F8;
    v32 = v6;
    objc_msgSend_updateCloudKitMetrics_(self, v22, v31);
  }

  objc_msgSend_setRecordVersionFetchedBlock_(self, v21, 0);
  v30.receiver = self;
  v30.super_class = CKDFetchRecordVersionsOperation;
  [(CKDOperation *)&v30 _finishOnCallbackQueueWithError:errorCopy];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)relevantZoneIDs
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_recordIDs(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
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

@end