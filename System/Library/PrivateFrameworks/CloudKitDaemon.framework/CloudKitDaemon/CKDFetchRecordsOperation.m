@interface CKDFetchRecordsOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)fetchingAssetsForRereference;
- (BOOL)makeStateTransition;
- (CKDDecryptRecordsOperation)recordDecryptOperation;
- (CKDFetchRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (id)desiredIndexedListKeys;
- (id)errorForRecordID:(id)a3;
- (id)relevantZoneIDs;
- (int)_prepareAsset:(id)a3 record:(id)a4 recordKey:(id)a5 assetTransferOptions:(id)a6;
- (void)_addAssetDownloadTaskForRecord:(id)a3 completionBlock:(id)a4;
- (void)_addDownloadTasksForRecord:(id)a3 completionBlock:(id)a4;
- (void)_addMergeableValueDownloadTasksForRecord:(id)a3 completionBlock:(id)a4;
- (void)_continueHandleFetchedRecord:(id)a3 recordID:(id)a4;
- (void)_decryptPropertiesIfNeededForRecord:(id)a3 record:(id)a4;
- (void)_decryptPropertiesOnRecord:(id)a3 recordID:(id)a4;
- (void)_didDownloadAssetsWithError:(id)a3;
- (void)_downloadAssets;
- (void)_downloadMergeableValues;
- (void)_fetchCloudCerts;
- (void)_fetchContainerScopedUserID;
- (void)_fetchPCSForMergeableValueDeltaRecord:(id)a3 recordID:(id)a4;
- (void)_findSpecialParticipantsOnShare:(id)a3 identityDelegate:(id)a4;
- (void)_finishAllDownloadTasksWithError:(id)a3;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleRecordFetch:(id)a3 recordID:(id)a4 etagMatched:(BOOL)a5 responseCode:(id)a6;
- (void)_handleSharePCSPrepForShare:(id)a3 recordID:(id)a4;
- (void)_reallyDecryptPropertiesOnRecord:(id)a3 recordID:(id)a4;
- (void)_saveUpdatedShareRecords;
- (void)fetchRecordsWithIDs:(id)a3 andFullRecords:(id)a4;
- (void)finishDecryption;
- (void)finishWithError:(id)a3;
- (void)main;
- (void)setError:(id)a3 forRecordID:(id)a4;
@end

@implementation CKDFetchRecordsOperation

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 4)
  {
    if (v4 > 6)
    {
      if (v4 == 7)
      {
        objc_msgSend_setState_(self, v5, 8);
        objc_msgSend_hash(self, v41, v42);
        kdebug_trace();
        objc_msgSend_hash(self, v43, v44);
        kdebug_trace();
        objc_msgSend__downloadAssets(self, v45, v46);
        return 1;
      }

      if (v4 == 8)
      {
        objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
        objc_msgSend_hash(self, v18, v19);
        kdebug_trace();
        v11 = objc_msgSend_error(self, v20, v21);
        objc_msgSend_finishWithError_(self, v22, v11);
        goto LABEL_18;
      }
    }

    else if (v4 == 5)
    {
      objc_msgSend_setState_(self, v5, 6);
      objc_msgSend__saveUpdatedShareRecords(self, v25, v26);
    }

    else
    {
      objc_msgSend_setState_(self, v5, 7);
      objc_msgSend__downloadMergeableValues(self, v16, v17);
    }
  }

  else
  {
    if (v4 > 2)
    {
      if (v4 != 3 || (objc_msgSend_recordIDsToRefetch(self, v5, v6), v27 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend_count(v27, v28, v29), v27, !v30))
      {
        objc_msgSend_setState_(self, v5, 5);
        objc_msgSend_hash(self, v35, v36);
        kdebug_trace();
        objc_msgSend_hash(self, v37, v38);
        kdebug_trace();
        objc_msgSend__fetchCloudCerts(self, v39, v40);
        return 1;
      }

      objc_msgSend_setState_(self, v5, 4);
      objc_msgSend_setUseCachedEtags_(self, v31, 0);
      v11 = objc_msgSend_recordIDsToRefetch(self, v32, v33);
      objc_msgSend_fetchRecordsWithIDs_andFullRecords_(self, v34, v11, 0);
      goto LABEL_18;
    }

    if (v4 == 1)
    {
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend__fetchContainerScopedUserID(self, v23, v24);
    }

    else if (v4 == 2)
    {
      objc_msgSend_setState_(self, v5, 3);
      objc_msgSend_hash(self, v7, v8);
      kdebug_trace();
      v11 = objc_msgSend_recordIDsToFetch(self, v9, v10);
      v14 = objc_msgSend_fullRecordsToFetch(self, v12, v13);
      objc_msgSend_fetchRecordsWithIDs_andFullRecords_(self, v15, v11, v14);

LABEL_18:
    }
  }

  return 1;
}

- (void)_fetchContainerScopedUserID
{
  objc_initWeak(&location, self);
  v5 = objc_msgSend_stateTransitionGroup(self, v3, v4);
  dispatch_group_enter(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2250A01C8;
  v7[3] = &unk_278549318;
  objc_copyWeak(&v8, &location);
  objc_msgSend_fetchContainerScopedUserID_(self, v6, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)main
{
  v47 = *MEMORY[0x277D85DE8];
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC830];
  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v22 = v6;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v26 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v25, 1, 0, 0);
    v29 = objc_msgSend_CKPropertiesStyleString(v26, v27, v28);
    v31 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v30, 0, 1, 0);
    v34 = objc_msgSend_CKPropertiesStyleString(v31, v32, v33);
    v39 = 138544130;
    v40 = v24;
    v41 = 2048;
    v42 = self;
    v43 = 2114;
    v44 = v29;
    v45 = 2112;
    v46 = v34;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Starting fetch records operation <%{public}@: %p; %{public}@, %@>", &v39, 0x2Au);
  }

  v9 = objc_msgSend_recordIDsToFetch(self, v7, v8);
  if (objc_msgSend_count(v9, v10, v11))
  {

LABEL_8:
    objc_msgSend_makeStateTransition_(self, v14, 0);
    goto LABEL_9;
  }

  v15 = objc_msgSend_fullRecordsToFetch(self, v12, v13);
  v18 = objc_msgSend_count(v15, v16, v17);

  if (v18)
  {
    goto LABEL_8;
  }

  if (*v4 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    v35 = v20;
    v38 = objc_msgSend_operationID(self, v36, v37);
    v39 = 138543362;
    v40 = v38;
    _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Operation %{public}@ is finishing early because there are no records to fetch", &v39, 0xCu);
  }

  objc_msgSend_makeStateTransition_(self, v21, 1);
LABEL_9:
  v19 = *MEMORY[0x277D85DE8];
}

- (CKDDecryptRecordsOperation)recordDecryptOperation
{
  v2 = self;
  objc_sync_enter(v2);
  decryptOperation = v2->_decryptOperation;
  if (!decryptOperation || objc_msgSend_isFinished(decryptOperation, v3, v4))
  {
    v8 = objc_opt_new();
    if (*MEMORY[0x277CBC810] == 1)
    {
      v9 = objc_msgSend_webSharingIdentityDataByRecordID(v2, v6, v7);
      objc_msgSend_setWebSharingIdentityDataByRecordID_(v8, v10, v9);
    }

    v11 = objc_opt_class();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2250A3EC8;
    v15[3] = &unk_278548B60;
    v15[4] = v2;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v2, v12, v11, v8, v15);
  }

  objc_sync_exit(v2);

  v13 = v2->_decryptOperation;

  return v13;
}

- (void)_fetchCloudCerts
{
  location[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_keyOrErrorForHostname(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    objc_initWeak(location, self);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = objc_msgSend_keyOrErrorForHostname(self, v8, v9);
    obj = objc_msgSend_allKeys(v10, v11, v12);

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v35, v39, 16);
    if (v16)
    {
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = objc_msgSend_stateTransitionGroup(self, v14, v15);
          dispatch_group_enter(v20);

          v21 = objc_opt_new();
          objc_msgSend_setTranscodeServerHostname_(v21, v22, v19);
          objc_msgSend_setType_(v21, v23, 0);
          v24 = objc_opt_class();
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = sub_2251E2DE8;
          v33[3] = &unk_278549040;
          objc_copyWeak(&v34, location);
          v33[4] = v19;
          objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v25, v24, v21, v33);
          objc_destroyWeak(&v34);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v35, v39, 16);
      }

      while (v16);
    }

    objc_destroyWeak(location);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v28 = v26;
      v31 = objc_msgSend_operationID(self, v29, v30);
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v31;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "No cloud certs to download for operation %{public}@", location, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_saveUpdatedShareRecords
{
  v4 = objc_msgSend_shareRecordsToUpdateByRecordID(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v8 = objc_opt_new();
    v11 = objc_msgSend_shareRecordsToUpdateByRecordID(self, v9, v10);
    v14 = objc_msgSend_allValues(v11, v12, v13);
    objc_msgSend_setRecordsToSave_(v8, v15, v14);

    objc_msgSend_setShouldSkipPCSRetryBehavior_(v8, v16, 1);
    v19 = objc_msgSend_stateTransitionGroup(self, v17, v18);
    dispatch_group_enter(v19);

    objc_initWeak(&location, self);
    v20 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2251DC66C;
    v22[3] = &unk_278548FD0;
    objc_copyWeak(&v23, &location);
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v21, v20, v8, v22);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (id)desiredIndexedListKeys
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = objc_msgSend_desiredKeySet(self, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v32, v38, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = CKProcessIndexedArrayKey();
        v15 = 0;
        v18 = v15;
        if (v14)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v19 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v37 = v13;
            _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Invalid desired key %{public}@, which should have been caught earlier", buf, 0xCu);
          }

          v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDFetchRecordsOperation.m", 371, @"Invalid desired key %@, which should have been caught earlier", v13);
        }

        else if (v15)
        {
          v24 = objc_msgSend_count(v5, v16, v17);
          v26 = objc_msgSend_indexOfObject_inSortedRange_options_usingComparator_(v5, v25, v13, 0, v24, 1024, &unk_28385D5A0);
          objc_msgSend_insertObject_atIndex_(v5, v27, v13, v26);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v32, v38, 16);
    }

    while (v10);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)fetchingAssetsForRereference
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_fetchingAssetsForRereference(v3, v4, v5);

  return v6;
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

- (void)_downloadAssets
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_downloadTasksByRecordID(self, a2, v2);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_downloadTasksByRecordID(self, v12, v13);
    v17 = objc_msgSend_objectEnumerator(v14, v15, v16);

    v20 = objc_msgSend_nextObject(v17, v18, v19);
    if (v20)
    {
      v23 = v20;
      do
      {
        v24 = objc_msgSend_assetsToDownload(v23, v21, v22);
        objc_msgSend_addObjectsFromArray_(v9, v25, v24);

        v28 = objc_msgSend_assetsToDownloadInMemory(v23, v26, v27);
        objc_msgSend_addObjectsFromArray_(v10, v29, v28);

        v32 = objc_msgSend_assetURLInfosToFillOut(v23, v30, v31);
        objc_msgSend_addObjectsFromArray_(v11, v33, v32);

        v36 = objc_msgSend_nextObject(v17, v34, v35);

        v23 = v36;
      }

      while (v36);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v61 = v37;
      v64 = objc_msgSend_operationID(self, v62, v63);
      *buf = 138413058;
      v70 = v9;
      v71 = 2112;
      v72 = v10;
      v73 = 2112;
      v74 = v11;
      v75 = 2114;
      v76 = v64;
      _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Downloading assets: %@, in-memory assets: %@, and publish assets %@ for operation %{public}@", buf, 0x2Au);
    }

    v38 = objc_opt_new();
    objc_msgSend_setAssetsToDownload_(v38, v39, v9);
    objc_msgSend_setAssetsToDownloadInMemory_(v38, v40, v10);
    objc_msgSend_setAssetURLInfosToFillOut_(v38, v41, v11);
    shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v42, v43);
    objc_msgSend_setShouldCloneFileInAssetCache_(v38, v45, shouldCloneFileInAssetCache);
    v48 = objc_msgSend_fetchingAssetsForRereference(self, v46, v47);
    objc_msgSend_setFetchingAssetsForRereference_(v38, v49, v48);
    v52 = objc_msgSend_operationInfo(self, v50, v51);
    v55 = objc_msgSend_cloneContextReturnBlock(v52, v53, v54);
    objc_msgSend_setCloneContextReturnBlock_(v38, v56, v55);

    v57 = objc_opt_class();
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_2251E3028;
    v68[3] = &unk_278548DA0;
    v68[4] = self;
    v68[5] = a2;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v58, v57, v38, v68);

    goto LABEL_10;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v59 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v9 = v59;
    v67 = objc_msgSend_operationID(self, v65, v66);
    *buf = 138543362;
    v70 = v67;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "No assets to download for operation %{public}@", buf, 0xCu);

LABEL_10:
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_downloadMergeableValues
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_mergeableValueDownloadTasks(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v26 = v10;
      v29 = objc_msgSend_operationID(self, v27, v28);
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v29;
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Will download mergeable values for operation %{public}@", location, 0xCu);
    }

    v13 = objc_msgSend_stateTransitionGroup(self, v11, v12);
    dispatch_group_enter(v13);

    objc_initWeak(location, self);
    v14 = objc_opt_new();
    v17 = objc_msgSend_mergeableValueDownloadTasks(self, v15, v16);
    v20 = objc_msgSend_allKeys(v17, v18, v19);
    objc_msgSend_setMergeableValueIDs_(v14, v21, v20);

    v22 = objc_opt_class();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2251E401C;
    v34[3] = &unk_278548FD0;
    objc_copyWeak(&v35, location);
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v23, v22, v14, v34);
    objc_destroyWeak(&v35);

    objc_destroyWeak(location);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v30 = v24;
      v33 = objc_msgSend_operationID(self, v31, v32);
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v33;
      _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "No mergeable values to download for operation %{public}@", location, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-records", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (CKDFetchRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v83.receiver = self;
  v83.super_class = CKDFetchRecordsOperation;
  v9 = [(CKDDatabaseOperation *)&v83 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_recordIDs(v6, v7, v8);
    recordIDsToFetch = v9->_recordIDsToFetch;
    v9->_recordIDsToFetch = v10;

    v12 = objc_opt_new();
    cachedRecords = v9->_cachedRecords;
    v9->_cachedRecords = v12;

    v16 = objc_msgSend_desiredKeys(v6, v14, v15);

    if (v16)
    {
      v19 = MEMORY[0x277CBEB98];
      v20 = objc_msgSend_desiredKeys(v6, v17, v18);
      v22 = objc_msgSend_setWithArray_(v19, v21, v20);
      desiredKeySet = v9->_desiredKeySet;
      v9->_desiredKeySet = v22;
    }

    v24 = objc_msgSend_recordIDsToETags(v6, v17, v18);
    recordIDsToETags = v9->_recordIDsToETags;
    v9->_recordIDsToETags = v24;

    v28 = objc_msgSend_recordIDsToVersionETags(v6, v26, v27);
    recordIDsToVersionETags = v9->_recordIDsToVersionETags;
    v9->_recordIDsToVersionETags = v28;

    v32 = objc_msgSend_desiredPackageFileIndices(v6, v30, v31);
    desiredPackageFileIndices = v9->_desiredPackageFileIndices;
    v9->_desiredPackageFileIndices = v32;

    v34 = dispatch_group_create();
    fetchRecordsGroup = v9->_fetchRecordsGroup;
    v9->_fetchRecordsGroup = v34;

    v38 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v36, v37);
    downloadTasksByRecordID = v9->_downloadTasksByRecordID;
    v9->_downloadTasksByRecordID = v38;

    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    errorsByRecordID = v9->_errorsByRecordID;
    v9->_errorsByRecordID = v40;

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    shareRecordsToUpdateByRecordID = v9->_shareRecordsToUpdateByRecordID;
    v9->_shareRecordsToUpdateByRecordID = v42;

    v46 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(v6, v44, v45);
    assetTransferOptionsByRecordTypeAndKey = v9->_assetTransferOptionsByRecordTypeAndKey;
    v9->_assetTransferOptionsByRecordTypeAndKey = v46;

    v9->_shouldFetchAssetContent = objc_msgSend_shouldFetchAssetContent(v6, v48, v49);
    v9->_shouldFetchAssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(v6, v50, v51);
    v9->_shouldRequestEncryptedAssetOwnerIdentifier = objc_msgSend_shouldRequestEncryptedAssetOwnerIdentifier(v6, v52, v53);
    v9->_shouldFetchMergeableValues = objc_msgSend_shouldFetchMergeableValues(v6, v54, v55);
    v9->_shouldUpdateTimestampsForFetchedMergeableValues = 1;
    v9->_shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(v6, v56, v57);
    v60 = objc_msgSend_assetFieldNamesToPublishURLs(v6, v58, v59);

    if (v60)
    {
      v63 = objc_msgSend_assetFieldNamesToPublishURLs(v6, v61, v62);
      assetFieldNamesToPublishURLs = v9->_assetFieldNamesToPublishURLs;
      v9->_assetFieldNamesToPublishURLs = v63;

      v9->_requestedTTL = objc_msgSend_requestedTTL(v6, v65, v66);
      v9->_URLOptions = objc_msgSend_URLOptions(v6, v67, v68);
    }

    v9->_useCachedEtags = 1;
    v9->_useRecordCache = 1;
    v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recordIDsToRefetch = v9->_recordIDsToRefetch;
    v9->_recordIDsToRefetch = v69;

    v71 = objc_opt_new();
    keyOrErrorForHostname = v9->_keyOrErrorForHostname;
    v9->_keyOrErrorForHostname = v71;

    v75 = objc_msgSend_webSharingIdentityDataByRecordID(v6, v73, v74);
    webSharingIdentityDataByRecordID = v9->_webSharingIdentityDataByRecordID;
    v9->_webSharingIdentityDataByRecordID = v75;

    if (*MEMORY[0x277CBC810] == 1)
    {
      v79 = objc_msgSend_unitTestOverrides(v9, v77, v78);
      v81 = objc_msgSend_objectForKeyedSubscript_(v79, v80, @"ShouldRollSharePCSOnFetch");
      v9->_shouldRollSharePCSOnFetch = v81 != 0;
    }
  }

  return v9;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 7)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDFetchRecordsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278549A98[a3 - 2];
  }

  return v5;
}

- (void)_findSpecialParticipantsOnShare:(id)a3 identityDelegate:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v55 = a4;
  v9 = objc_msgSend_currentUserParticipant(v6, v7, v8);
  v10 = v9 != 0;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v56 = v6;
  obj = objc_msgSend_allParticipants(v6, v11, v12);
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v61, v67, 16);
  if (v60)
  {
    v59 = *v62;
    v57 = *MEMORY[0x277CBC088];
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v61 + 1) + 8 * i);
        v18 = objc_msgSend_userIdentity(v17, v14, v15);
        v21 = objc_msgSend_userRecordID(v18, v19, v20);
        v24 = objc_msgSend_recordName(v21, v22, v23);

        if (v10)
        {
          v10 = 1;
          goto LABEL_13;
        }

        v27 = objc_msgSend_container(self, v25, v26);
        v30 = objc_msgSend_containerScopedUserID(v27, v28, v29);
        if (objc_msgSend_isEqualToString_(v30, v31, v24))
        {

LABEL_11:
          v10 = 1;
          objc_msgSend_setIsCurrentUser_(v17, v25, 1);
          goto LABEL_13;
        }

        isEqualToString = objc_msgSend_isEqualToString_(v57, v32, v24);

        if (isEqualToString)
        {
          goto LABEL_11;
        }

        v10 = 0;
LABEL_13:
        v34 = objc_msgSend_container(self, v25, v26);
        v37 = objc_msgSend_orgAdminUserID(v34, v35, v36);
        if (v37)
        {
          v40 = v37;
          v41 = objc_msgSend_container(self, v38, v39);
          v44 = objc_msgSend_orgAdminUserID(v41, v42, v43);
          v46 = objc_msgSend_isEqualToString_(v44, v45, v24);

          if (v46)
          {
            objc_msgSend_setIsOrgAdminUser_(v17, v47, 1);
          }
        }

        else
        {
        }
      }

      v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v61, v67, 16);
    }

    while (v60);
  }

  if (!v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v48 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v51 = v48;
      v54 = objc_msgSend_recordID(v56, v52, v53);
      *buf = 138543362;
      v66 = v54;
      _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Matching public keys to find current user participant on share %{public}@", buf, 0xCu);
    }

    objc_msgSend_markCurrentUserParticipantViaPublicKeyMatchingForShare_(v55, v49, v56);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecordsWithIDs:(id)a3 andFullRecords:(id)a4
{
  v183 = *MEMORY[0x277D85DE8];
  v157 = a3;
  v158 = a4;
  if (objc_msgSend_count(v157, v7, v8))
  {
    v156 = a2;
    v11 = objc_opt_new();
    if (objc_msgSend_useRecordCache(self, v12, v13) && objc_msgSend_useCachedEtags(self, v14, v15))
    {
      v155 = objc_msgSend_container(self, v14, v15);
      v18 = objc_msgSend_recordCache(v155, v16, v17);
      v21 = objc_msgSend_desiredKeySet(self, v19, v20);
      v24 = objc_msgSend_databaseScope(self, v22, v23);
      v26 = objc_msgSend_recordsWithIDs_container_requiredKeys_scope_(v18, v25, v157, v155, v21, v24);

      v179 = 0u;
      v180 = 0u;
      v177 = 0u;
      v178 = 0u;
      v27 = v26;
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v177, v182, 16);
      if (v31)
      {
        v32 = *v178;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v178 != v32)
            {
              objc_enumerationMutation(v27);
            }

            v34 = *(*(&v177 + 1) + 8 * i);
            v35 = objc_msgSend_etag(v34, v29, v30);
            v38 = objc_msgSend_length(v35, v36, v37);

            if (v38)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v41 = objc_msgSend_container(self, v39, v40);
                v44 = objc_msgSend_pcsManager(v41, v42, v43);
                objc_msgSend__findSpecialParticipantsOnShare_identityDelegate_(self, v45, v34, v44);
              }

              v46 = objc_msgSend_cachedRecords(self, v39, v40);
              v49 = objc_msgSend_recordID(v34, v47, v48);
              objc_msgSend_setObject_forKeyedSubscript_(v46, v50, v34, v49);

              v53 = objc_msgSend_etag(v34, v51, v52);
              v56 = objc_msgSend_recordID(v34, v54, v55);
              objc_msgSend_setObject_forKeyedSubscript_(v11, v57, v53, v56);
            }
          }

          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v177, v182, 16);
        }

        while (v31);
      }
    }

    v58 = objc_msgSend_recordIDsToETags(self, v14, v15);

    if (v58)
    {
      v61 = objc_msgSend_recordIDsToETags(self, v59, v60);
      objc_msgSend_addEntriesFromDictionary_(v11, v62, v61);
    }

    v63 = objc_msgSend_desiredIndexedListKeys(self, v59, v60);
    v66 = objc_msgSend_desiredKeySet(self, v64, v65);
    v69 = v66;
    if (v63)
    {
      v70 = objc_msgSend_desiredKeySet(self, v67, v68);
      v73 = objc_msgSend_mutableCopy(v70, v71, v72);

      v75 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v74, v63);
      objc_msgSend_minusSet_(v73, v76, v75);
    }

    else
    {
      v73 = v66;
    }

    v175[0] = 0;
    v175[1] = v175;
    v175[2] = 0x2020000000;
    v176 = 0;
    v77 = [CKDFetchRecordsURLRequest alloc];
    v80 = objc_msgSend_recordIDsToVersionETags(self, v78, v79);
    v82 = objc_msgSend_initWithOperation_recordIDs_recordIDsToEtags_recordIDsToVersionETags_desiredKeys_(v77, v81, self, v157, v11, v80, v73);

    objc_msgSend_setDesiredIndexedListKeys_(v82, v83, v63);
    v86 = objc_msgSend_assetFieldNamesToPublishURLs(self, v84, v85);

    if (v86)
    {
      v89 = objc_msgSend_assetFieldNamesToPublishURLs(self, v87, v88);
      objc_msgSend_setAssetFieldNamesToPublishURLs_(v82, v90, v89);

      v93 = objc_msgSend_requestedTTL(self, v91, v92);
      objc_msgSend_setRequestedTTL_(v82, v94, v93);
      v97 = objc_msgSend_URLOptions(self, v95, v96);
      objc_msgSend_setURLOptions_(v82, v98, v97);
    }

    if (objc_msgSend_fetchingAssetsForRereference(self, v87, v88))
    {
      objc_msgSend_setShouldFetchAssetContent_(v82, v99, 0);
    }

    else
    {
      v102 = objc_opt_new();
      if ((objc_msgSend_shouldFetchAssetContent(self, v103, v104) & 1) == 0)
      {
        v107 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v105, v106);
        v110 = objc_msgSend_allValues(v107, v108, v109);
        v173[0] = MEMORY[0x277D85DD0];
        v173[1] = 3221225472;
        v173[2] = sub_2251DD574;
        v173[3] = &unk_278549798;
        v174 = v102;
        objc_msgSend_enumerateObjectsUsingBlock_(v110, v111, v173);
      }

      if (objc_msgSend_count(v102, v105, v106))
      {
        objc_msgSend_setDesiredAssetKeys_(v82, v112, v102);
      }

      else
      {
        AssetContent = objc_msgSend_shouldFetchAssetContent(self, v112, v113);
        objc_msgSend_setShouldFetchAssetContent_(v82, v115, AssetContent);
      }
    }

    v116 = objc_msgSend_fetchRecordsGroup(self, v100, v101);
    dispatch_group_enter(v116);

    objc_initWeak(&location, self);
    objc_initWeak(&from, v82);
    v168[0] = MEMORY[0x277D85DD0];
    v168[1] = 3221225472;
    v168[2] = sub_2251DD6A4;
    v168[3] = &unk_2785497E8;
    objc_copyWeak(&v169, &location);
    objc_copyWeak(v170, &from);
    v168[4] = v175;
    v170[1] = v156;
    objc_msgSend_setRecordFetchedBlock_(v82, v117, v168);
    v165[0] = MEMORY[0x277D85DD0];
    v165[1] = 3221225472;
    v165[2] = sub_2251DD7EC;
    v165[3] = &unk_278549810;
    objc_copyWeak(&v166, &location);
    objc_copyWeak(&v167, &from);
    v165[4] = v175;
    objc_msgSend_setCompletionBlock_(v82, v118, v165);
    v121 = objc_msgSend_stateTransitionGroup(self, v119, v120);
    dispatch_group_enter(v121);

    objc_msgSend_setRequest_(self, v122, v82);
    v125 = objc_msgSend_container(self, v123, v124);
    objc_msgSend_performRequest_(v125, v126, v82);

    objc_destroyWeak(&v167);
    objc_destroyWeak(&v166);
    objc_destroyWeak(v170);
    objc_destroyWeak(&v169);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    _Block_object_dispose(v175, 8);
  }

  if (objc_msgSend_count(v158, v9, v10))
  {
    v129 = objc_opt_new();
    objc_msgSend_setCode_(v129, v130, 1);
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v131 = v158;
    v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v132, &v161, v181, 16);
    if (v135)
    {
      v136 = *v162;
      do
      {
        for (j = 0; j != v135; ++j)
        {
          if (*v162 != v136)
          {
            objc_enumerationMutation(v131);
          }

          v138 = *(*(&v161 + 1) + 8 * j);
          v139 = objc_msgSend_recordID(v138, v133, v134);
          objc_msgSend__handleRecordFetch_recordID_etagMatched_responseCode_(self, v140, v138, v139, 0, v129);
        }

        v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v133, &v161, v181, 16);
      }

      while (v135);
    }

    v143 = objc_msgSend_stateTransitionGroup(self, v141, v142);
    dispatch_group_enter(v143);

    v146 = objc_msgSend_fetchRecordsGroup(self, v144, v145);
    v149 = objc_msgSend_callbackQueue(self, v147, v148);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251DDCF0;
    block[3] = &unk_278545A00;
    block[4] = self;
    dispatch_group_notify(v146, v149, block);
  }

  v150 = objc_msgSend_fetchRecordsGroup(self, v127, v128);
  v153 = objc_msgSend_callbackQueue(self, v151, v152);
  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = sub_2251DDDA4;
  v159[3] = &unk_278545A00;
  v159[4] = self;
  dispatch_group_notify(v150, v153, v159);

  v154 = *MEMORY[0x277D85DE8];
}

- (id)errorForRecordID:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_errorsByRecordID(self, v4, v5);
    objc_sync_enter(v7);
    v10 = objc_msgSend_errorsByRecordID(self, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v6);

    objc_sync_exit(v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setError:(id)a3 forRecordID:(id)a4
{
  v14 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = objc_msgSend_errorsByRecordID(self, v6, v7);
    objc_sync_enter(v9);
    v13 = objc_msgSend_errorsByRecordID(self, v10, v11);
    if (v14)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v13, v12, v14, v8);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(v13, v12, v8);
    }

    objc_sync_exit(v9);
  }
}

- (void)_continueHandleFetchedRecord:(id)a3 recordID:(id)a4
{
  v177 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v142 = a4;
  val = self;
  v9 = objc_msgSend_recordIDsToETags(self, v7, v8);
  v12 = objc_msgSend_recordID(v6, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v9, v13, v12);
  v17 = objc_msgSend_etag(v6, v15, v16);
  isEqual = objc_msgSend_isEqual_(v14, v18, v17);

  if (!v6 || (objc_msgSend_recordID(v6, v19, v20), (v21 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend_errorForRecordID_(val, v19, v142), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
  {
    v23 = objc_msgSend_callbackQueue(val, v19, v20);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251DEC44;
    block[3] = &unk_2785494E8;
    block[4] = val;
    v152 = isEqual;
    v150 = v6;
    v151 = v142;
    dispatch_async(v23, block);

    goto LABEL_5;
  }

  v140 = objc_msgSend_trackChanges(v6, v19, v20);
  objc_msgSend_setTrackChanges_(v6, v28, 0);
  v31 = objc_msgSend_desiredIndexedListKeys(val, v29, v30);
  v143 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v32, v33);
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  obj = v31;
  v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v165, v176, 16);
  if (v148)
  {
    v147 = *v166;
    do
    {
      v35 = 0;
      do
      {
        if (*v166 != v147)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v165 + 1) + 8 * v35);
        v163 = 0;
        v164 = 0;
        v162 = 0;
        v37 = CKProcessIndexedArrayKey();
        v40 = 0;
        if (v37)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v41 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v171 = v36;
            _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "Invalid desired key %{public}@, which should have been caught earlier", buf, 0xCu);
          }

          v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v42, v43);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, val, @"CKDFetchRecordsOperation.m", 619, @"Invalid desired key %@, which should have been caught earlier", v36);

          goto LABEL_39;
        }

        v46 = objc_msgSend_valueStore(v6, v38, v39);
        v14 = objc_msgSend_objectForKeyedSubscript_(v46, v47, v40);

        if (v14)
        {
          v50 = objc_msgSend_valueStore(v6, v48, v49);
        }

        else
        {
          v52 = objc_msgSend_encryptedValueStore(v6, v48, v49);
          v54 = objc_msgSend_objectForKeyedSubscript_(v52, v53, v40);

          if (!v54)
          {
            goto LABEL_25;
          }

          v50 = objc_msgSend_encryptedValueStore(v6, v55, v56);
        }

        v57 = v50;
        v58 = objc_msgSend_objectForKeyedSubscript_(v50, v51, v40);

        if (v58)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v59 = v58;
            v62 = objc_msgSend_objectForKeyedSubscript_(v143, v60, v40);
            if (v62)
            {
              v63 = objc_msgSend_objectForKeyedSubscript_(v143, v61, v40);
              v66 = objc_msgSend_unsignedIntegerValue(v63, v64, v65);
            }

            else
            {
              v66 = 0;
            }

            v68 = v14 == 0;

            v70 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v69, v163 + v66);
            objc_msgSend_setObject_forKeyedSubscript_(v143, v71, v70, v40);

            if (v68)
            {
              v14 = objc_msgSend_encryptedValueStore(v6, v72, v73);
              v75 = objc_msgSend_subarrayWithRange_(v59, v77, v66, v163);
              objc_msgSend_setCompatibilityModeObjectNoValidate_forKey_(v14, v78, v75, v36);
            }

            else
            {
              v14 = objc_msgSend_valueStore(v6, v72, v73);
              v75 = objc_msgSend_subarrayWithRange_(v59, v74, v66, v163);
              objc_msgSend_setObjectNoValidate_forKey_(v14, v76, v75, v36);
            }
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v14 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              v14 = v14;
              v80 = objc_opt_class();
              v81 = NSStringFromClass(v80);
              *buf = 138543874;
              v171 = v40;
              v172 = 2114;
              v173 = v81;
              v174 = 2114;
              v175 = v36;
              _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Original list key %{public}@ has incorrect value type %{public}@ for desired indexed list key %{public}@", buf, 0x20u);
            }
          }

          goto LABEL_39;
        }

LABEL_25:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v67 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v171 = v40;
          v172 = 2114;
          v173 = v36;
          _os_log_error_impl(&dword_22506F000, v67, OS_LOG_TYPE_ERROR, "Could not find original list key %{public}@ for desired indexed list key %{public}@", buf, 0x16u);
        }

LABEL_39:

        ++v35;
      }

      while (v148 != v35);
      v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, &v165, v176, 16);
    }

    while (v148);
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v84 = objc_msgSend_allKeys(v143, v82, v83);
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v158, v169, 16);
  if (!v88)
  {
    goto LABEL_53;
  }

  v89 = *v159;
  do
  {
    for (i = 0; i != v88; ++i)
    {
      if (*v159 != v89)
      {
        objc_enumerationMutation(v84);
      }

      v14 = *(*(&v158 + 1) + 8 * i);
      v91 = objc_msgSend_valueStore(v6, v86, v87);
      v93 = objc_msgSend_objectForKeyedSubscript_(v91, v92, v14);

      if (v93)
      {
        v96 = objc_msgSend_valueStore(v6, v94, v95);
      }

      else
      {
        v98 = objc_msgSend_encryptedValueStore(v6, v94, v95);
        v100 = objc_msgSend_objectForKeyedSubscript_(v98, v99, v14);

        if (!v100)
        {
          continue;
        }

        v96 = objc_msgSend_encryptedValueStore(v6, v86, v87);
      }

      v101 = v96;
      objc_msgSend_setObject_forKeyedSubscript_(v96, v97, 0, v14);
    }

    v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v86, &v158, v169, 16);
  }

  while (v88);
LABEL_53:

  objc_msgSend_setTrackChanges_(v6, v102, v140);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v105 = objc_msgSend_shouldRollSharePCSOnFetch(val, v103, v104);
    objc_msgSend_setShouldRollSharePCSOnFetch_(val, v106, 0);
  }

  else
  {
    v105 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_isZoneWideShare(v6, v107, v108))
  {
    goto LABEL_68;
  }

  v111 = objc_msgSend_currentUserParticipant(v6, v109, v110);
  if (objc_msgSend_role(v111, v112, v113) != 1)
  {
    goto LABEL_67;
  }

  if ((v105 & 1) == 0)
  {
    v14 = objc_msgSend_invitedKeysToRemove(v6, v114, v115);
    if (!objc_msgSend_count(v14, v116, v117))
    {
      goto LABEL_66;
    }
  }

  v118 = objc_msgSend_container(val, v114, v115);
  v121 = objc_msgSend_pcsManager(v118, v119, v120);
  if (!objc_msgSend_canRollShareKeys(v121, v122, v123))
  {

    if ((v105 & 1) == 0)
    {
LABEL_66:
    }

LABEL_67:

    goto LABEL_68;
  }

  v126 = objc_msgSend_shareRecordsToUpdateByRecordID(val, v124, v125);
  v129 = objc_msgSend_recordID(v6, v127, v128);
  v131 = objc_msgSend_objectForKeyedSubscript_(v126, v130, v129);

  if (v105)
  {

    if (!v131)
    {
LABEL_70:
      v135 = objc_msgSend_shareRecordsToUpdateByRecordID(val, v132, v133);
      v138 = objc_msgSend_recordID(v6, v136, v137);
      objc_msgSend_setObject_forKeyedSubscript_(v135, v139, v6, v138);

      goto LABEL_5;
    }
  }

  else
  {

    if (!v131)
    {
      goto LABEL_70;
    }
  }

LABEL_68:
  objc_initWeak(buf, val);
  v153[0] = MEMORY[0x277D85DD0];
  v153[1] = 3221225472;
  v153[2] = sub_2251DEA34;
  v153[3] = &unk_278549838;
  objc_copyWeak(&v156, buf);
  v154 = v142;
  v157 = isEqual;
  v155 = v6;
  objc_msgSend__addDownloadTasksForRecord_completionBlock_(val, v134, v155, v153);

  objc_destroyWeak(&v156);
  objc_destroyWeak(buf);
LABEL_5:
  v26 = objc_msgSend_fetchRecordsGroup(val, v24, v25);
  dispatch_group_leave(v26);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_decryptPropertiesOnRecord:(id)a3 recordID:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (objc_msgSend_isMergeableValueDeltaRecord(v11, v7, v8) && objc_msgSend_useEncryption(self, v9, v10))
  {
    objc_msgSend__fetchPCSForMergeableValueDeltaRecord_recordID_(self, v9, v11, v6);
  }

  else
  {
    objc_msgSend__reallyDecryptPropertiesOnRecord_recordID_(self, v9, v11, v6);
  }
}

- (void)_reallyDecryptPropertiesOnRecord:(id)a3 recordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10 = objc_msgSend_recordDecryptOperation(self, v8, v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251DEEC8;
  v14[3] = &unk_278549880;
  objc_copyWeak(&v17, &location);
  v11 = v6;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  objc_msgSend_decryptRecord_withCompletion_(v10, v13, v11, v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_fetchPCSForMergeableValueDeltaRecord:(id)a3 recordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10 = objc_msgSend_container(self, v8, v9);
  v13 = objc_msgSend_pcsCache(v10, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2251DF358;
  v17[3] = &unk_2785498C8;
  objc_copyWeak(&v21, &location);
  v14 = v7;
  v18 = v14;
  v15 = v6;
  v19 = v15;
  v20 = self;
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v13, v16, v14, self, 0, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_handleRecordFetch:(id)a3 recordID:(id)a4 etagMatched:(BOOL)a5 responseCode:(id)a6
{
  v168 = a5;
  v183 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    if (v168)
    {
      v159 = @"true";
    }

    else
    {
      v159 = @"false";
    }

    v160 = v12;
    *location = 138543874;
    *&location[4] = v10;
    v179 = 2114;
    v180 = v159;
    v181 = 1024;
    v182 = objc_msgSend_code(v11, v161, v162);
    _os_log_debug_impl(&dword_22506F000, v160, OS_LOG_TYPE_DEBUG, "Fetched record %{public}@, etag-matched:%{public}@, responseCode:%d", location, 0x1Cu);
  }

  v169 = objc_msgSend_container(self, v13, v14);
  v17 = objc_msgSend_fetchRecordsGroup(self, v15, v16);
  dispatch_group_enter(v17);

  v20 = objc_msgSend_code(v11, v18, v19);
  v167 = v20 == 1;
  if (v20 != 1)
  {
    v23 = MEMORY[0x277CBC560];
    v24 = sub_2253962A4(v11);
    v27 = objc_msgSend_request(self, v25, v26);
    v28 = sub_225395734(v27, v11);
    v31 = objc_msgSend_error(v11, v29, v30);
    v34 = objc_msgSend_errorDescription(v31, v32, v33);
    v36 = objc_msgSend_errorWithDomain_code_userInfo_format_(v23, v35, *MEMORY[0x277CBC120], v24, v28, @"Error fetching record %@ from server: %@", v10, v34);

    if (v10)
    {
      objc_msgSend_setError_forRecordID_(self, v37, v36, v10);
    }

    if (objc_msgSend_databaseScope(self, v37, v38) != 1 && objc_msgSend_CKIsNotFoundError(v36, v39, v40))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v41 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *location = 138412290;
        *&location[4] = v10;
        _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Record not found in private DB for recordID %@. Setting PCS data nil on caches", location, 0xCu);
      }

      objc_msgSend_setPCSData_forFetchedRecordID_(self, v42, 0, v10);
      objc_msgSend_setPCSData_forFetchedShareID_(self, v43, 0, v10);
    }
  }

  v44 = objc_msgSend_error(v11, v21, v22);
  v47 = objc_msgSend_clientError(v44, v45, v46);
  v50 = objc_msgSend_type(v47, v48, v49) == 48;

  if (v50)
  {
    v53 = objc_msgSend_options(v169, v51, v52);
    v58 = objc_msgSend_useAnonymousToServerShareParticipants(v53, v54, v55) ^ 1;
    if (!v10)
    {
      LOBYTE(v58) = 1;
    }

    if (v58)
    {
    }

    else
    {
      v59 = objc_msgSend_databaseScope(self, v56, v57) == 3;

      if (v59)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v62 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v163 = v62;
          v166 = objc_msgSend_zoneID(v10, v164, v165);
          *location = 138412290;
          *&location[4] = v166;
          _os_log_debug_impl(&dword_22506F000, v163, OS_LOG_TYPE_DEBUG, "Possible anonymous share %@ not found. Removing share from anonymous share list", location, 0xCu);
        }

        objc_initWeak(location, self);
        v65 = objc_msgSend_fetchRecordsGroup(self, v63, v64);
        dispatch_group_enter(v65);

        v68 = objc_msgSend_anonymousSharingManager(v169, v66, v67);
        v71 = objc_msgSend_zoneID(v10, v69, v70);
        v177 = v71;
        v73 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v72, &v177, 1);
        v175[0] = MEMORY[0x277D85DD0];
        v175[1] = 3221225472;
        v175[2] = sub_2251E01D8;
        v175[3] = &unk_278549318;
        objc_copyWeak(&v176, location);
        objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v68, v74, v73, self, v175);

        objc_destroyWeak(&v176);
        objc_destroyWeak(location);
      }
    }

    v75 = objc_msgSend_recordCache(v169, v60, v61);
    v78 = objc_msgSend_zoneID(v10, v76, v77);
    objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v75, v79, v169, v78);

    if (objc_msgSend_databaseScope(self, v80, v81) != 1)
    {
      v82 = objc_msgSend_zoneID(v10, v51, v52);
      objc_msgSend_setPCSData_forFetchedZoneID_(self, v83, 0, v82);

      v86 = objc_msgSend_pcsCache(v169, v84, v85);
      v89 = objc_msgSend_zoneID(v10, v87, v88);
      objc_msgSend_removePCSDataForItemsInZoneWithID_(v86, v90, v89);
    }
  }

  if (v10 && !v9 && v168)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v91 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *location = 138543362;
      *&location[4] = v10;
      _os_log_debug_impl(&dword_22506F000, v91, OS_LOG_TYPE_DEBUG, "Remote record matches local record etag. Returning record %{public}@ from cache.", location, 0xCu);
    }

    v94 = objc_msgSend_cachedRecords(self, v92, v93);
    v9 = objc_msgSend_objectForKeyedSubscript_(v94, v95, v10);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v9;
      v98 = objc_msgSend_container(self, v96, v97);
      v101 = objc_msgSend_pcsManager(v98, v99, v100);
      objc_msgSend__findSpecialParticipantsOnShare_identityDelegate_(self, v102, v9, v101);

      v105 = objc_msgSend_cachedRecords(self, v103, v104);
      objc_msgSend_setObject_forKeyedSubscript_(v105, v106, v9, v10);
    }

    v167 = 0;
  }

  if (v9)
  {
    v107 = objc_msgSend_etag(v9, v51, v52);
    v108 = v107 != 0;

    if (v167 && v108)
    {
      if (objc_msgSend_useRecordCache(self, v51, v52))
      {
        v109 = objc_msgSend_recordCache(v169, v51, v52);
        v112 = objc_msgSend_desiredKeySet(self, v110, v111);
        v115 = objc_msgSend_databaseScope(self, v113, v114);
        v117 = objc_msgSend_addRecord_container_knownUserKeys_scope_(v109, v116, v9, v169, v112, v115);
      }
    }
  }

  v118 = objc_msgSend_entitlements(v169, v51, v52);
  hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v118, v119, v120);
  objc_msgSend_setSerializeProtectionData_(v9, v122, hasProtectionDataEntitlement);

  if (*MEMORY[0x277CBC810] == 1)
  {
    v124 = objc_msgSend_objectForKeyedSubscript_(v9, v123, @"TESTING_NO_RECORD_ERROR_OR_RECORDS_RETURNED");
    v125 = v124 == 0;

    if (!v125)
    {

      if (v10)
      {
        objc_msgSend_setError_forRecordID_(self, v123, 0, v10);
      }

      v10 = 0;
      v9 = 0;
    }
  }

  v126 = objc_msgSend_errorForRecordID_(self, v123, v10);
  v129 = v126;
  if (!v9 || v126)
  {
    v131 = 0;
    if (v10 && v168)
    {
      v132 = objc_msgSend_recordIDsToETags(self, v127, v128);
      v135 = objc_msgSend_allKeys(v132, v133, v134);
      v131 = objc_msgSend_containsObject_(v135, v136, v10);
    }

    if (!v129 && (v131 & 1) == 0)
    {
      v137 = MEMORY[0x277CBC560];
      v138 = sub_2253962A4(v11);
      v141 = objc_msgSend_request(self, v139, v140);
      v142 = sub_225395734(v141, v11);
      v145 = objc_msgSend_error(v11, v143, v144);
      v148 = objc_msgSend_errorDescription(v145, v146, v147);
      v129 = objc_msgSend_errorWithDomain_code_userInfo_format_(v137, v149, *MEMORY[0x277CBC120], v138, v142, @"Error fetching record %@ from server: %@", v10, v148);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v150 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *location = 138412546;
      *&location[4] = v10;
      v179 = 2112;
      v180 = v129;
      _os_log_impl(&dword_22506F000, v150, OS_LOG_TYPE_INFO, "Calling completion block for nil or failed record with ID %@: %@", location, 0x16u);
    }

    v153 = objc_msgSend_callbackQueue(self, v151, v152);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251E02EC;
    block[3] = &unk_2785498F0;
    block[4] = self;
    v174 = v168;
    v171 = v9;
    v172 = v10;
    v173 = v129;
    v154 = v129;
    dispatch_async(v153, block);

    v157 = objc_msgSend_fetchRecordsGroup(self, v155, v156);
    dispatch_group_leave(v157);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend__handleSharePCSPrepForShare_recordID_(self, v130, v9, v10);
    }

    else
    {
      objc_msgSend__decryptPropertiesIfNeededForRecord_record_(self, v130, v9, v10);
    }
  }

  v158 = *MEMORY[0x277D85DE8];
}

- (void)_handleSharePCSPrepForShare:(id)a3 recordID:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_container(self, v8, v9);
  v13 = objc_msgSend_entitlements(v10, v11, v12);
  if (objc_msgSend_hasOutOfProcessUIEntitlement(v13, v14, v15))
  {
    objc_msgSend_setSerializePersonalInfo_(v6, v16, 1);
  }

  else
  {
    v18 = objc_msgSend_entitlements(v10, v16, v17);
    hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v18, v19, v20);
    objc_msgSend_setSerializePersonalInfo_(v6, v22, hasParticipantPIIEntitlement);
  }

  shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v10, v23, v24);
  objc_msgSend_setSerializeOwnerInfo_(v6, v26, shouldSerializeOwnerInfo);
  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v44 = objc_msgSend_recordID(v6, v28, v29);
    *buf = 138412546;
    v52 = v44;
    v53 = 2112;
    v54 = v10;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Prepping PCS data for share %@ with container %@", buf, 0x16u);
  }

  v32 = objc_msgSend_databaseScope(self, v30, v31);
  v35 = objc_msgSend_topmostParentOperation(self, v33, v34);
  v38 = objc_msgSend_operationID(v35, v36, v37);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_2251E0650;
  v45[3] = &unk_278549918;
  v39 = v6;
  v46 = v39;
  v40 = v10;
  v47 = v40;
  objc_copyWeak(&v49, &location);
  v41 = v7;
  v48 = v41;
  objc_msgSend__prepPCSDataWithContainer_databaseScope_removeServerSpecifiedKeys_requestorOperationID_completionHandler_(v39, v42, v40, v32, 1, v38, v45);

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_decryptPropertiesIfNeededForRecord:(id)a3 record:(id)a4
{
  v13 = a3;
  v6 = a4;
  v8 = objc_msgSend_errorForRecordID_(self, v7, v6);

  if ((objc_msgSend_hasPropertiesRequiringEncryption(v13, v9, v10) & 1) == 0 && !objc_msgSend_forcePCSDecrypt(self, v11, v12) || (objc_msgSend_skipDecryption(self, v11, v12) & 1) != 0 || v8)
  {
    objc_msgSend__continueHandleFetchedRecord_recordID_(self, v11, v13, v6);
  }

  else
  {
    objc_msgSend__decryptPropertiesOnRecord_recordID_(self, v11, v13, v6);
  }
}

- (int)_prepareAsset:(id)a3 record:(id)a4 recordKey:(id)a5 assetTransferOptions:(id)a6
{
  v102 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v16 = a6;
  if (!v12)
  {
    v83 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    v86 = objc_msgSend_operationID(self, v84, v85);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v83, v87, a2, self, @"CKDFetchRecordsOperation.m", 994, @"Expected non-nil record for operation %@", v86);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v11;
    v20 = objc_msgSend_downloadBaseURL(v17, v18, v19);
    if (v20 || (objc_msgSend_constructedAssetDownloadURLTemplate(v17, v21, v22), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (objc_msgSend_downloaded(v17, v23, v24))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v70 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v71 = v70;
        v74 = objc_msgSend_signature(v17, v72, v73);
        v77 = objc_msgSend_recordID(v12, v75, v76);
        v80 = objc_msgSend_operationID(self, v78, v79);
        *buf = 138413058;
        v95 = v74;
        v96 = 2112;
        v97 = v77;
        v98 = 2114;
        v99 = v13;
        v100 = 2114;
        v101 = v80;
        _os_log_impl(&dword_22506F000, v71, OS_LOG_TYPE_INFO, "Using cached asset for signature %@, record %@, recordKey %{public}@ and operation %{public}@", buf, 0x2Au);
      }

      v42 = 0;
      goto LABEL_33;
    }

    objc_msgSend_setRecord_(v17, v25, v12);
    objc_msgSend_setRecordKey_(v17, v26, v13);
    objc_msgSend_setAssetTransferOptions_(v17, v27, v16);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v31 = v28;
      v34 = objc_msgSend_signature(v17, v32, v33);
      v37 = objc_msgSend_recordID(v12, v35, v36);
      v40 = objc_msgSend_operationID(self, v38, v39);
      *buf = 138413058;
      v95 = v34;
      v96 = 2112;
      v97 = v37;
      v98 = 2114;
      v99 = v13;
      v100 = 2114;
      v101 = v40;
      _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, "Prepared asset %@ for record %@, recordKey %{public}@ and operation %{public}@", buf, 0x2Au);
    }

    v41 = objc_msgSend_downloadBaseURL(v17, v29, v30);

    if (v41)
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

LABEL_33:

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = self;
    v43 = v11;
    objc_msgSend_setRecord_(v43, v44, v12);
    objc_msgSend_setRecordKey_(v43, v45, v13);
    v48 = objc_msgSend_recordPCS(v12, v46, v47);
    objc_msgSend_setRecordPCS_(v43, v49, v48);
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v52 = objc_msgSend_assets(v43, v50, v51);
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v89, v93, 16);
    if (v54)
    {
      v56 = v54;
      v57 = *v90;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v90 != v57)
          {
            objc_enumerationMutation(v52);
          }

          v59 = *(*(&v89 + 1) + 8 * i);
          objc_msgSend_setRecord_(v59, v55, v12);
          objc_msgSend_setRecordKey_(v59, v60, v13);
          objc_msgSend_setAssetTransferOptions_(v59, v61, v16);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v55, &v89, v93, 16);
      }

      while (v56);
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v62 = *MEMORY[0x277CBC830];
    v42 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v63 = v62;
      v66 = objc_msgSend_recordID(v12, v64, v65);
      v69 = objc_msgSend_operationID(v88, v67, v68);
      *buf = 138413058;
      v95 = v43;
      v96 = 2112;
      v97 = v66;
      v98 = 2114;
      v99 = v13;
      v100 = 2114;
      v101 = v69;
      _os_log_impl(&dword_22506F000, v63, OS_LOG_TYPE_INFO, "Prepared package %@ for record %@, recordKey %{public}@ and operation %{public}@", buf, 0x2Au);
    }

    goto LABEL_33;
  }

  v42 = 0;
LABEL_34:

  v81 = *MEMORY[0x277D85DE8];
  return v42;
}

- (void)_addDownloadTasksForRecord:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251E11B8;
  v11[3] = &unk_278545830;
  objc_copyWeak(&v14, &location);
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  objc_msgSend__addMergeableValueDownloadTasksForRecord_completionBlock_(self, v10, v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_addAssetDownloadTaskForRecord:(id)a3 completionBlock:(id)a4
{
  v249 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v194 = a4;
  v205 = v5;
  if (!v5)
  {
    v189 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    v192 = objc_msgSend_operationID(self, v190, v191);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v189, v193, a2, self, @"CKDFetchRecordsOperation.m", 1047, @"Expected non-nil record for operation %@", v192, v194);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v172 = v8;
    v175 = objc_msgSend_recordID(v205, v173, v174);
    v178 = objc_msgSend_operationID(self, v176, v177);
    if (objc_msgSend_shouldFetchAssetContent(self, v179, v180))
    {
      v183 = @"true";
    }

    else
    {
      v183 = @"false";
    }

    if (objc_msgSend_fetchingAssetsForRereference(self, v181, v182))
    {
      v186 = @"true";
    }

    else
    {
      v186 = @"false";
    }

    *buf = 138413314;
    if (objc_msgSend_shouldFetchAssetContentInMemory(self, v184, v185))
    {
      v187 = @"true";
    }

    else
    {
      v187 = @"false";
    }

    v240 = v175;
    v241 = 2114;
    v242 = v178;
    v243 = 2114;
    v244 = v183;
    v245 = 2114;
    v246 = v186;
    v247 = 2114;
    v248 = v187;
    _os_log_debug_impl(&dword_22506F000, v172, OS_LOG_TYPE_DEBUG, "Preparing assets for download for record %@ and operation %{public}@ (shouldFetchAssetContent:%{public}@ fetchingAssetsForRereference:%{public}@ inMemory:%{public}@)", buf, 0x34u);
  }

  if ((objc_msgSend_shouldFetchAssetContent(self, v9, v10) & 1) == 0)
  {
    v13 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v11, v12);
    v16 = objc_msgSend_recordType(v205, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v13, v17, v16);
    v19 = v18 == 0;

    if (v19)
    {
      if (!objc_msgSend_containsAssetBackedMergeableDeltas(v205, v11, v12))
      {
        v171 = objc_msgSend_callbackQueue(self, v20, v21);
        v234[0] = MEMORY[0x277D85DD0];
        v234[1] = 3221225472;
        v234[2] = sub_2251E2328;
        v234[3] = &unk_2785456A0;
        v235 = v194;
        dispatch_async(v171, v234);

        goto LABEL_103;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Forcing asset fetch due to presence of asset-backed mergeable deltas", buf, 2u);
      }
    }
  }

  v195 = objc_msgSend_desiredPackageFileIndices(self, v11, v12);
  v200 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v199 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v198 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  obj = objc_msgSend_allKeys(v205, v23, v24);
  v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v230, v238, 16);
  if (v202)
  {
    v201 = *v231;
    do
    {
      v27 = 0;
      do
      {
        if (*v231 != v201)
        {
          v28 = v27;
          objc_enumerationMutation(obj);
          v27 = v28;
        }

        v203 = v27;
        v208 = *(*(&v230 + 1) + 8 * v27);
        v29 = objc_msgSend_objectForKeyedSubscript_(v205, v26, v208);
        v32 = v29;
        if (v29)
        {
          v206 = v29;
        }

        else
        {
          v33 = objc_msgSend_encryptedValues(v205, v30, v31);
          v206 = objc_msgSend_objectForKeyedSubscript_(v33, v34, v208);
        }

        v37 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v35, v36);
        v40 = objc_msgSend_recordType(v205, v38, v39);
        v204 = objc_msgSend_objectForKeyedSubscript_(v37, v41, v40);

        v44 = v204;
        if (v204)
        {
          v44 = objc_msgSend_objectForKeyedSubscript_(v204, v42, v208);
        }

        v209 = v44;
        v47 = objc_msgSend_shouldFetchAssetContent(v44, v42, v43);
        if (v47)
        {
          v48 = objc_msgSend_shouldFetchAssetContent(v209, v45, v46);
          AssetContent = objc_msgSend_BOOLValue(v48, v49, v50);
        }

        else
        {
          AssetContent = objc_msgSend_shouldFetchAssetContent(self, v45, v46);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_hasAssetBackedDeltas(v206, v52, v53))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v54 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v55 = v54;
            v58 = objc_msgSend_recordID(v205, v56, v57);
            *buf = 138543618;
            v240 = v208;
            v241 = 2112;
            v242 = v58;
            _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "Forcing asset download for asset-backed mergeable field %{public}@ on record %@", buf, 0x16u);
          }

LABEL_33:
          v61 = objc_msgSend_shouldFetchAssetContentInMemory(v209, v52, v53);
          if (v61)
          {
            v62 = objc_msgSend_shouldFetchAssetContentInMemory(v209, v59, v60);
            v65 = objc_msgSend_BOOLValue(v62, v63, v64);

            if (v65)
            {
              goto LABEL_35;
            }

LABEL_47:
            v67 = 0;
            v68 = 0;
          }

          else
          {
            if ((objc_msgSend_shouldFetchAssetContentInMemory(self, v59, v60) & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_35:
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v66 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v134 = v66;
              v137 = objc_msgSend_recordID(v205, v135, v136);
              *buf = 138543618;
              v240 = v208;
              v241 = 2112;
              v242 = v137;
              _os_log_debug_impl(&dword_22506F000, v134, OS_LOG_TYPE_DEBUG, "Will fetch asset content in memory for key %{public}@ on record %@", buf, 0x16u);
            }

            v67 = 1;
            v68 = 1;
          }

          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = sub_2251E2344;
          aBlock[3] = &unk_278549968;
          aBlock[4] = self;
          v229 = v67;
          v224 = v199;
          v225 = v200;
          v76 = v205;
          v226 = v76;
          v227 = v198;
          v228 = a2;
          v77 = _Block_copy(aBlock);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v79 = objc_msgSend__prepareAsset_record_recordKey_assetTransferOptions_(self, v78, v206, v76, v208, v209);
            v77[2](v77, v79, v206);
            goto LABEL_94;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = v206;
            v83 = objc_msgSend_firstObject(v80, v81, v82);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              if (objc_msgSend_count(v80, v85, v86))
              {
                v88 = 0;
                do
                {
                  v89 = objc_msgSend_objectAtIndexedSubscript_(v80, v87, v88);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v92 = objc_msgSend__prepareAsset_record_recordKey_assetTransferOptions_(self, v90, v89, v76, v208, v209);
                    if (v92)
                    {
                      objc_msgSend_setArrayIndex_(v89, v91, v88);
                    }

                    v77[2](v77, v92, v89);
                  }

                  ++v88;
                }

                while (v88 < objc_msgSend_count(v80, v93, v94));
              }
            }

            else
            {
              v122 = objc_msgSend_firstObject(v80, v85, v86);
              objc_opt_class();
              v123 = objc_opt_isKindOfClass();

              if (v123)
              {
                if (v68)
                {
                  v142 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v124, v125);
                  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v142, v143, a2, self, @"CKDFetchRecordsOperation.m", 1150, @"shouldFetchAssetContentInMemory not for packages");
                }

                v221 = 0u;
                v222 = 0u;
                v219 = 0u;
                v220 = 0u;
                v126 = v80;
                v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v127, &v219, v237, 16);
                if (v128)
                {
                  v129 = *v220;
                  do
                  {
                    for (i = 0; i != v128; ++i)
                    {
                      if (*v220 != v129)
                      {
                        objc_enumerationMutation(v126);
                      }

                      v131 = *(*(&v219 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v133 = objc_msgSend__prepareAsset_record_recordKey_assetTransferOptions_(self, v132, v131, v76, v208, v209);
                        v77[2](v77, v133, v131);
                      }
                    }

                    v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v132, &v219, v237, 16);
                  }

                  while (v128);
                }
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v68)
              {
                v140 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v95, v96);
                objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v140, v141, a2, self, @"CKDFetchRecordsOperation.m", 1160, @"shouldFetchAssetContentInMemory not for packages");
              }

              v97 = v206;
              v101 = objc_msgSend__prepareAsset_record_recordKey_assetTransferOptions_(self, v98, v97, v76, v208, v209);
              if (v101 == 1)
              {
                v102 = objc_msgSend_recordID(v76, v99, v100);
                v104 = objc_msgSend_objectForKeyedSubscript_(v195, v103, v102);

                if (v104)
                {
                  objc_msgSend_objectForKeyedSubscript_(v104, v105, v208);
                }

                else
                {
                  objc_msgSend_objectForKeyedSubscript_(v195, v105, v208);
                }
                v138 = ;
                objc_msgSend_setDownloadItemIndices_(v97, v139, v138);
              }

              v77[2](v77, v101, v97);

              goto LABEL_94;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_94:

              goto LABEL_95;
            }

            v218 = 0u;
            v216 = 0u;
            v217 = 0u;
            v215 = 0u;
            v80 = objc_msgSend_unmergedDeltas(v206, v106, v107);
            v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v108, &v215, v236, 16);
            if (v111)
            {
              v112 = *v216;
              do
              {
                for (j = 0; j != v111; ++j)
                {
                  if (*v216 != v112)
                  {
                    objc_enumerationMutation(v80);
                  }

                  v114 = *(*(&v215 + 1) + 8 * j);
                  v115 = objc_msgSend_asset(v114, v109, v110);

                  if (v115)
                  {
                    v116 = objc_msgSend_asset(v114, v109, v110);
                    v118 = objc_msgSend__prepareAsset_record_recordKey_assetTransferOptions_(self, v117, v116, v76, v208, v209);

                    v121 = objc_msgSend_asset(v114, v119, v120);
                    v77[2](v77, v118, v121);
                  }
                }

                v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v109, &v215, v236, 16);
              }

              while (v111);
            }
          }

          goto LABEL_94;
        }

        if (AssetContent)
        {
          goto LABEL_33;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setRecordKey_(v206, v69, v208);
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v70 = v209;
        v71 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v72 = v71;
          v75 = objc_msgSend_recordID(v205, v73, v74);
          *buf = 138543618;
          v240 = v208;
          v241 = 2112;
          v242 = v75;
          _os_log_debug_impl(&dword_22506F000, v72, OS_LOG_TYPE_DEBUG, "Skipping asset download for key %{public}@ on record %@", buf, 0x16u);

LABEL_95:
          v70 = v209;
        }

        v27 = v203 + 1;
      }

      while (v203 + 1 != v202);
      v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v230, v238, 16);
    }

    while (v202);
  }

  if (objc_msgSend_count(v200, v144, v145) || objc_msgSend_count(v199, v146, v147) || objc_msgSend_count(v198, v146, v147))
  {
    v148 = objc_msgSend_recordFetchProgressBlock(self, v146, v147);
    v149 = v148 != 0;

    v150 = [CKDRecordDownloadTask alloc];
    v152 = objc_msgSend_initWithRecord_trackProgress_assetsToDownload_assetsToDownloadInMemory_assetURLInfosToFillOut_(v150, v151, v205, v149, v200, v199, v198);
    v155 = objc_msgSend_group(v152, v153, v154);
    v158 = objc_msgSend_callbackQueue(self, v156, v157);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251E2574;
    block[3] = &unk_2785456C8;
    v212 = v194;
    v159 = v152;
    v211 = v159;
    dispatch_group_notify(v155, v158, block);

    v162 = objc_msgSend_downloadTasksByRecordID(self, v160, v161);
    objc_sync_enter(v162);
    v165 = objc_msgSend_downloadTasksByRecordID(self, v163, v164);
    v168 = objc_msgSend_recordID(v205, v166, v167);
    objc_msgSend_setObject_forKey_(v165, v169, v159, v168);

    objc_sync_exit(v162);
  }

  else
  {
    v188 = objc_msgSend_callbackQueue(self, v146, v147);
    v213[0] = MEMORY[0x277D85DD0];
    v213[1] = 3221225472;
    v213[2] = sub_2251E2558;
    v213[3] = &unk_2785456A0;
    v214 = v194;
    dispatch_async(v188, v213);

    v159 = v214;
  }

LABEL_103:
  v170 = *MEMORY[0x277D85DE8];
}

- (void)_addMergeableValueDownloadTasksForRecord:(id)a3 completionBlock:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_shouldFetchMergeableValues(self, v8, v9))
  {
    v10 = MEMORY[0x277CBC880];
    v68 = v7;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v61 = v11;
      v64 = objc_msgSend_recordID(v6, v62, v63);
      v67 = objc_msgSend_operationID(self, v65, v66);
      *buf = 138412546;
      v83 = v64;
      v84 = 2114;
      v85 = v67;
      _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Adding mergeable value download tasks for record %@ in operation %{public}@", buf, 0x16u);
    }

    group = dispatch_group_create();
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = objc_msgSend_allKeys(v6, v12, v13);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v78, v90, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v79;
      v69 = v6;
      v70 = *v79;
      do
      {
        v19 = 0;
        v72 = v17;
        do
        {
          if (*v79 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v78 + 1) + 8 * v19);
          v21 = objc_msgSend_objectForKeyedSubscript_(v6, v16, v20);
          v24 = v21;
          if (v21)
          {
            v25 = v21;
          }

          else
          {
            v26 = objc_msgSend_encryptedValues(v6, v22, v23);
            v25 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v20);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v25;
            v31 = objc_msgSend_valueID(v28, v29, v30);
            if (*v10 != -1)
            {
              dispatch_once(v10, *MEMORY[0x277CBC878]);
            }

            v32 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              v33 = v32;
              objc_msgSend_recordID(v6, v34, v35);
              v36 = v10;
              v38 = v37 = self;
              v41 = objc_msgSend_operationID(v37, v39, v40);
              *buf = 138413058;
              v83 = v31;
              v84 = 2112;
              v85 = v20;
              v86 = 2112;
              v87 = v38;
              v88 = 2114;
              v89 = v41;
              _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Will download mergeable value for mergeable %@ for key '%@' on record %@ in operation %{public}@", buf, 0x2Au);

              self = v37;
              v10 = v36;
              v6 = v69;
            }

            v42 = objc_alloc_init(CKMergeableValueDownloadTask);
            objc_msgSend_setRecord_(v42, v43, v6);
            objc_msgSend_setKey_(v42, v44, v20);
            objc_msgSend_setMergeableValueID_(v42, v45, v31);
            objc_msgSend_setRecordValue_(v42, v46, v28);
            dispatch_group_enter(group);
            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = sub_2251E2B28;
            v76[3] = &unk_278545A00;
            v77 = group;
            objc_msgSend_setCompletionBlock_(v42, v47, v76);
            v50 = objc_msgSend_mergeableValueDownloadTasks(self, v48, v49);

            if (!v50)
            {
              v53 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v51, v52);
              objc_msgSend_setMergeableValueDownloadTasks_(self, v54, v53);
            }

            v55 = objc_msgSend_mergeableValueDownloadTasks(self, v51, v52);
            objc_msgSend_setObject_forKeyedSubscript_(v55, v56, v42, v31);

            v18 = v70;
            v17 = v72;
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v78, v90, 16);
      }

      while (v17);
    }

    v59 = objc_msgSend_callbackQueue(self, v57, v58);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251E2B30;
    block[3] = &unk_2785456A0;
    v7 = v68;
    v75 = v68;
    dispatch_group_notify(group, v59, block);
  }

  else if (v7)
  {
    v7[2](v7);
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_finishAllDownloadTasksWithError:(id)a3
{
  v22 = a3;
  v6 = objc_msgSend_downloadTasksByRecordID(self, v4, v5);
  v9 = objc_msgSend_objectEnumerator(v6, v7, v8);

  v12 = objc_msgSend_nextObject(v9, v10, v11);
  if (v12)
  {
    v15 = v12;
    do
    {
      objc_msgSend_didCompleteTaskWithError_(v15, v13, v22);
      v18 = objc_msgSend_nextObject(v9, v16, v17);

      v15 = v18;
    }

    while (v18);
  }

  v19 = objc_msgSend_downloadTasksByRecordID(self, v13, v14);
  objc_msgSend_removeAllObjects(v19, v20, v21);
}

- (void)_didDownloadAssetsWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC880];
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
      v12 = objc_msgSend_operationID(self, v10, v11);
      *v20 = 138543618;
      *&v20[4] = v12;
      *&v20[12] = 2112;
      *&v20[14] = v4;
      v13 = "Failed to download assets for operation %{public}@: %@";
      v14 = v9;
      v15 = 22;
LABEL_11:
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, v13, v20, v15);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v9 = v16;
      v12 = objc_msgSend_operationID(self, v18, v19);
      *v20 = 138543362;
      *&v20[4] = v12;
      v13 = "Downloaded assets for operation %{public}@";
      v14 = v9;
      v15 = 12;
      goto LABEL_11;
    }
  }

  objc_msgSend__finishAllDownloadTasksWithError_(self, v8, v4, *v20, *&v20[16], v21);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  objc_msgSend__finishAllDownloadTasksWithError_(self, v5, v4);
  objc_msgSend_hash(self, v6, v7);
  kdebug_trace();
  v8.receiver = self;
  v8.super_class = CKDFetchRecordsOperation;
  [(CKDOperation *)&v8 finishWithError:v4];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = objc_msgSend_recordIDsToFetch(self, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v31, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_zoneID(*(*(&v27 + 1) + 8 * v15), v11, v12);
        objc_msgSend_addObject_(v5, v17, v16);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v27, v31, 16);
    }

    while (v13);
  }

  if (objc_msgSend_count(v5, v18, v19))
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2251E4A6C;
    v25[3] = &unk_2785487F8;
    v26 = v5;
    objc_msgSend_updateCloudKitMetrics_(self, v21, v25);
  }

  objc_msgSend_setRecordFetchProgressBlock_(self, v20, 0);
  objc_msgSend_setRecordFetchCompletionBlock_(self, v22, 0);
  v24.receiver = self;
  v24.super_class = CKDFetchRecordsOperation;
  [(CKDOperation *)&v24 _finishOnCallbackQueueWithError:v4];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)relevantZoneIDs
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_recordIDsToFetch(self, a2, v2);
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