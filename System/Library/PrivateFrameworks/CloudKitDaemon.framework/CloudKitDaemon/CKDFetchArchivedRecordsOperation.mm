@interface CKDFetchArchivedRecordsOperation
- (CKDFetchArchivedRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)_createAndConfigureURLRequestForZoneIDs:(id)a3 optionsByZoneID:(id)a4;
- (id)_optionsForZonesWithPendingChangesAfterRequest:(id)a3;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_noteAttributesChangedForZone:(id)a3;
- (void)_noteChangedRecordWithID:(id)a3 record:(id)a4 error:(id)a5;
- (void)_noteCompletedURLRequest:(id)a3 withSchedulerInfo:(id)a4;
- (void)_noteDeletedRecordWithID:(id)a3 recordType:(id)a4;
- (void)_noteOperationBeginning;
- (void)_noteOperationEnding;
- (void)_noteOperationFinishedBlockEnd;
@end

@implementation CKDFetchArchivedRecordsOperation

- (CKDFetchArchivedRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  objc_msgSend_takeValuesFrom_(v8, v9, v7);
  v12 = objc_msgSend_recordZoneIDs(v7, v10, v11);
  objc_msgSend_setRecordZoneIDs_(v8, v13, v12);

  v16 = objc_msgSend_configurationsByRecordZoneID(v7, v14, v15);
  objc_msgSend_setConfigurationsByRecordZoneID_(v8, v17, v16);

  AssetContents = objc_msgSend_shouldFetchAssetContents(v7, v18, v19);
  objc_msgSend_setShouldFetchAssetContents_(v8, v21, AssetContents);
  AllChanges = objc_msgSend_fetchAllChanges(v7, v22, v23);
  objc_msgSend_setFetchAllChanges_(v8, v25, AllChanges);
  v28 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(v7, v26, v27);

  objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(v8, v29, v28);
  v32.receiver = self;
  v32.super_class = CKDFetchArchivedRecordsOperation;
  v30 = [(CKDFetchBatchedRecordsOperation *)&v32 initWithOperationInfo:v8 container:v6];

  return v30;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-archived-records", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_noteCompletedURLRequest:(id)a3 withSchedulerInfo:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v66 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, a2, self, @"CKDFetchArchivedRecordsOperation.m", 49, &stru_28385ED00);
  }

  v10 = v7;
  v13 = objc_msgSend_recordZoneIDs(v10, v11, v12);
  v65 = objc_msgSend_resultsByRecordZoneID(v10, v14, v15);
  v67 = v10;
  v18 = objc_msgSend_zoneErrorsByZoneID(v10, v16, v17);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v13;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v74, v82, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v75;
    do
    {
      v24 = 0;
      do
      {
        if (*v75 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v74 + 1) + 8 * v24);
        v26 = objc_msgSend_objectForKeyedSubscript_(v18, v21, v25);
        if (objc_msgSend_CKIsNotFoundError(v26, v27, v28))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v29 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v32 = v29;
            v35 = objc_msgSend_operationID(self, v33, v34);
            *buf = 138412546;
            v79 = v25;
            v80 = 2114;
            v81 = v35;
            _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Warn: Zone %@ wasn't found on the server for fetch changes request %{public}@. Wiping caches for that zone", buf, 0x16u);
          }

          v36 = objc_msgSend_container(self, v30, v31);
          v39 = objc_msgSend_recordCache(v36, v37, v38);
          objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v39, v40, v36, v25);

          objc_msgSend_setPCSData_forFetchedZoneID_(self, v41, 0, v25);
          v44 = objc_msgSend_container(self, v42, v43);
          v47 = objc_msgSend_pcsCache(v44, v45, v46);
          objc_msgSend_removePCSDataForItemsInZoneWithID_(v47, v48, v25);
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v74, v82, 16);
    }

    while (v22);
  }

  v51 = objc_msgSend_fetchRecordsGroup(self, v49, v50);
  dispatch_group_enter(v51);

  v54 = objc_msgSend_perRequestCallbackGroup(v66, v52, v53);
  v57 = objc_msgSend_perRequestCallbackQueue(v66, v55, v56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D70AC;
  block[3] = &unk_278548978;
  block[4] = self;
  v70 = obj;
  v71 = v65;
  v72 = v18;
  v73 = v66;
  v58 = v66;
  v59 = v18;
  v60 = v65;
  v61 = obj;
  dispatch_group_notify(v54, v57, block);

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_noteChangedRecordWithID:(id)a3 record:(id)a4 error:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_recordFetchedBlock(self, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_recordFetchedBlock(self, v13, v14);
    (v15)[2](v15, v16, v8, v9);
  }
}

- (void)_noteDeletedRecordWithID:(id)a3 recordType:(id)a4
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v6, a2, self, @"CKDFetchArchivedRecordsOperation.m", 102, @"Not expected to get here");
}

- (void)_noteAttributesChangedForZone:(id)a3
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDFetchArchivedRecordsOperation.m", 106, @"Not expected to get here");
}

- (id)_optionsForZonesWithPendingChangesAfterRequest:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDFetchArchivedRecordsOperation.m", 110, &stru_28385ED00);
  }

  v8 = v5;
  v9 = objc_opt_new();
  v12 = objc_msgSend_zoneErrorsByZoneID(v8, v10, v11);
  v15 = objc_msgSend_resultsByRecordZoneID(v8, v13, v14);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2251D77F8;
  v24[3] = &unk_278549630;
  v25 = v12;
  v16 = v9;
  v26 = v16;
  v17 = v12;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v15, v18, v24);

  v19 = v26;
  v20 = v16;

  return v16;
}

- (id)_createAndConfigureURLRequestForZoneIDs:(id)a3 optionsByZoneID:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    *buf = 134218242;
    v44 = objc_msgSend_count(v6, v10, v11);
    v45 = 2112;
    v46 = v7;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Fetching archived records from the server for %lu zones with options:\n%@", buf, 0x16u);
  }

  v12 = [CKDFetchArchivedRecordsURLRequest alloc];
  v14 = objc_msgSend_initWithOperation_recordZoneIDs_configurationsByRecordZoneID_(v12, v13, self, v6, v7);
  v17 = objc_msgSend_desiredAssetKeys(self, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_desiredAssetKeys(self, v21, v22);
    v26 = objc_msgSend_copy(v23, v24, v25);
    objc_msgSend_setDesiredAssetKeys_(v14, v27, v26);
  }

  else
  {
    AssetContents = objc_msgSend_shouldFetchAssetContents(self, v21, v22);
    objc_msgSend_setShouldFetchAssetContent_(v14, v29, AssetContents);
  }

  objc_initWeak(buf, self);
  v30 = [CKDPipeliningInfo alloc];
  v32 = objc_msgSend_initWithRequest_operation_(v30, v31, v14, self);
  objc_initWeak(&location, v32);
  v35 = objc_msgSend_recordFetchedBlock(self, v33, v34);

  if (v35)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2251D7BB8;
    v39[3] = &unk_278549658;
    objc_copyWeak(&v40, buf);
    objc_copyWeak(&v41, &location);
    objc_msgSend_setRecordFetchedBlock_(v14, v36, v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v40);
  }

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v37 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)_noteOperationBeginning
{
  objc_msgSend_hash(self, a2, v2);

  kdebug_trace();
}

- (void)_noteOperationEnding
{
  objc_msgSend_hash(self, a2, v2);

  kdebug_trace();
}

- (void)_noteOperationFinishedBlockEnd
{
  objc_msgSend_hash(self, a2, v2);

  kdebug_trace();
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setRecordFetchedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDFetchArchivedRecordsOperation;
  [(CKDFetchBatchedRecordsOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

@end