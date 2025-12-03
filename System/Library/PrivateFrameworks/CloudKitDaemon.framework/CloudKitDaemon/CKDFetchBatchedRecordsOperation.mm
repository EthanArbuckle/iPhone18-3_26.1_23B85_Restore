@interface CKDFetchBatchedRecordsOperation
- (CKDFetchBatchedRecordsOperation)initWithOperationInfo:(id)info container:(id)container;
- (NSString)pipeliningDescription;
- (id)_createAndConfigureURLRequestForZoneIDs:(id)ds optionsByZoneID:(id)d;
- (id)_optionsForZonesWithPendingChangesAfterRequest:(id)request;
- (id)_possiblyWrapError:(id)error forRecordWithID:(id)d withCode:(int64_t)code format:(id)format;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleAttributesChangedForZone:(id)zone perRequestSchedulerInfo:(id)info;
- (void)_handleChangedRecords:(id)records perRequestSchedulerInfo:(id)info;
- (void)_handleFetchChangesRequestFinishedWithSchedulerInfo:(id)info;
- (void)_handleRecordDelete:(id)delete recordType:(id)type perRequestSchedulerInfo:(id)info;
- (void)_noteAttributesChangedForZone:(id)zone;
- (void)_noteChangedRecordWithID:(id)d record:(id)record error:(id)error;
- (void)_noteCompletedURLRequest:(id)request withSchedulerInfo:(id)info;
- (void)_noteDeletedRecordWithID:(id)d recordType:(id)type;
- (void)_noteOperationBeginning;
- (void)_noteOperationEnding;
- (void)_noteOperationFinishedBlockEnd;
- (void)_processZonePCSChanges:(id)changes;
- (void)_sendFetchChangesRequestForZoneIDs:(id)ds withOptions:(id)options previousRequestSchedulerInfo:(id)info;
- (void)main;
@end

@implementation CKDFetchBatchedRecordsOperation

- (CKDFetchBatchedRecordsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v31.receiver = self;
  v31.super_class = CKDFetchBatchedRecordsOperation;
  v9 = [(CKDDatabaseOperation *)&v31 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v9->_shouldFetchAssetContents = objc_msgSend_shouldFetchAssetContents(infoCopy, v7, v8);
    v9->_fetchAllChanges = objc_msgSend_fetchAllChanges(infoCopy, v10, v11);
    v14 = objc_msgSend_recordZoneIDs(infoCopy, v12, v13);
    recordZoneIDs = v9->_recordZoneIDs;
    v9->_recordZoneIDs = v14;

    v18 = objc_msgSend_configurationsByRecordZoneID(infoCopy, v16, v17);
    configurationsByRecordZoneID = v9->_configurationsByRecordZoneID;
    v9->_configurationsByRecordZoneID = v18;

    v22 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(infoCopy, v20, v21);
    assetTransferOptionsByRecordTypeAndKey = v9->_assetTransferOptionsByRecordTypeAndKey;
    v9->_assetTransferOptionsByRecordTypeAndKey = v22;

    v9->_errorReportingStyle = objc_msgSend_errorReportingStyle(infoCopy, v24, v25);
    v9->_numRequestsSent = 0;
    v26 = dispatch_group_create();
    fetchRecordsGroup = v9->_fetchRecordsGroup;
    v9->_fetchRecordsGroup = v26;

    v9->_forcePCSDecryptionAttempt = objc_msgSend_forcePCSDecryptionAttempt(infoCopy, v28, v29);
  }

  return v9;
}

- (void)_handleFetchChangesRequestFinishedWithSchedulerInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_request(infoCopy, v5, v6);
  objc_msgSend_setRequest_(infoCopy, v7, 0);
  objc_msgSend__noteCompletedURLRequest_withSchedulerInfo_(self, v8, v9, infoCopy);
}

- (void)_handleChangedRecords:(id)records perRequestSchedulerInfo:(id)info
{
  v56 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  infoCopy = info;
  v43 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = recordsCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v49, v55, 16);
  if (v11)
  {
    v13 = *v50;
    v14 = MEMORY[0x277CBC880];
    *&v12 = 138412290;
    v41 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * v15);
        v19 = objc_msgSend_recordID(v16, v9, v10, v41);
        if (v19)
        {
          v20 = objc_msgSend_record(v16, v17, v18);
          objc_msgSend_setObject_forKeyedSubscript_(v43, v21, v20, v19);
        }

        v22 = objc_msgSend_fetchRecordsGroup(self, v17, v18);
        dispatch_group_enter(v22);

        v25 = objc_msgSend_perRequestCallbackGroup(infoCopy, v23, v24);
        dispatch_group_enter(v25);

        if (*v14 != -1)
        {
          dispatch_once(v14, *MEMORY[0x277CBC878]);
        }

        v26 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v27 = v26;
          v30 = objc_msgSend_recordID(v16, v28, v29);
          v33 = objc_msgSend_ckShortDescription(v30, v31, v32);
          *buf = v41;
          v54 = v33;
          _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Handling record response for record %@", buf, 0xCu);
        }

        ++v15;
      }

      while (v11 != v15);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v49, v55, 16);
    }

    while (v11);
  }

  objc_initWeak(buf, self);
  v36 = objc_msgSend_recordFetcher(self, v34, v35);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2251D835C;
  v44[3] = &unk_2785496A8;
  v37 = infoCopy;
  v45 = v37;
  objc_copyWeak(&v48, buf);
  v38 = v43;
  v46 = v38;
  selfCopy = self;
  objc_msgSend_fetchRecords_withPerRecordCompletion_(v36, v39, obj, v44);

  objc_destroyWeak(&v48);
  objc_destroyWeak(buf);

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecordDelete:(id)delete recordType:(id)type perRequestSchedulerInfo:(id)info
{
  deleteCopy = delete;
  typeCopy = type;
  infoCopy = info;
  objc_initWeak(&location, infoCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D8D60;
  block[3] = &unk_2785496D0;
  objc_copyWeak(&v36, &location);
  block[4] = self;
  v11 = deleteCopy;
  v34 = v11;
  v12 = typeCopy;
  v35 = v12;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(infoCopy, v14, v13);
  if (objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x277CBC0A0]))
  {
    objc_msgSend_setPCSData_forFetchedShareID_(self, v16, 0, v11);
  }

  else
  {
    objc_msgSend_setPCSData_forFetchedRecordID_(self, v16, 0, v11);
  }

  v19 = objc_msgSend_container(self, v17, v18);
  v22 = objc_msgSend_recordCache(v19, v20, v21);
  v25 = objc_msgSend_databaseScope(self, v23, v24);
  objc_msgSend_deleteRecordWithID_container_scope_(v22, v26, v11, v19, v25);

  v29 = objc_msgSend_perRequestCallbackGroup(infoCopy, v27, v28);
  v32 = objc_msgSend_perRequestCallbackQueue(infoCopy, v30, v31);
  dispatch_group_async(v29, v32, v13);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

- (void)_handleAttributesChangedForZone:(id)zone perRequestSchedulerInfo:(id)info
{
  zoneCopy = zone;
  infoCopy = info;
  objc_msgSend__processZonePCSChanges_(self, v8, zoneCopy);
  objc_initWeak(&location, infoCopy);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_2251D8F24;
  v21 = &unk_278546EE0;
  objc_copyWeak(&v24, &location);
  selfCopy = self;
  v9 = zoneCopy;
  v23 = v9;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v18);
  objc_msgSend_addPerRequestCallbackBlock_(infoCopy, v11, v10, v18, v19, v20, v21, selfCopy);
  v14 = objc_msgSend_perRequestCallbackGroup(infoCopy, v12, v13);
  v17 = objc_msgSend_perRequestCallbackQueue(infoCopy, v15, v16);
  dispatch_group_async(v14, v17, v10);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_processZonePCSChanges:(id)changes
{
  changesCopy = changes;
  v8 = objc_msgSend_protectionData(changesCopy, v6, v7);
  v11 = objc_msgSend_length(v8, v9, v10);

  if (v11)
  {
    v12 = [CKDApplyZoneAttributeChangesOperationInfo alloc];
    v14 = objc_msgSend_initWithZone_(v12, v13, changesCopy);
    v15 = objc_opt_class();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2251D9088;
    v17[3] = &unk_278549720;
    v18 = changesCopy;
    selfCopy = self;
    v20 = a2;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v16, v15, v14, v17);
  }
}

- (void)_sendFetchChangesRequestForZoneIDs:(id)ds withOptions:(id)options previousRequestSchedulerInfo:(id)info
{
  v64 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  infoCopy = info;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    *buf = 134218242;
    v61 = objc_msgSend_count(dsCopy, v14, v15);
    v62 = 2112;
    v63 = optionsCopy;
    _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Fetching changes from the server for %lu zones with options:\n%@", buf, 0x16u);
  }

  v16 = objc_msgSend__createAndConfigureURLRequestForZoneIDs_optionsByZoneID_(self, v12, dsCopy, optionsCopy);
  v19 = objc_msgSend_request(v16, v17, v18);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v19);
  if (!objc_msgSend_fetchAllChanges(self, v20, v21) || (objc_msgSend_request(self, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v25 = v24 == 0, v24, v25))
  {
    v26 = 0;
  }

  else
  {
    objc_msgSend_suspendCallbackQueue(v16, v22, v23);
    v26 = 1;
  }

  v27 = objc_msgSend_fetchRecordsGroup(self, v22, v23);
  dispatch_group_enter(v27);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = dsCopy;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v54, v59, 16);
  if (v32)
  {
    v33 = *v55;
    while (1)
    {
      if (*v55 != v33)
      {
        objc_enumerationMutation(v28);
      }

      v34 = objc_msgSend_perRequestGroup(v16, v30, v31);
      dispatch_group_enter(v34);

      if (!--v32)
      {
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v54, v59, 16);
        if (!v32)
        {
          break;
        }
      }
    }
  }

  if (infoCopy)
  {
    v37 = objc_msgSend_perRequestGroup(infoCopy, v35, v36);
  }

  else
  {
    v37 = dispatch_group_create();
  }

  v38 = v37;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2251D9840;
  v48[3] = &unk_278549770;
  objc_copyWeak(&v51, buf);
  objc_copyWeak(&v52, &location);
  v39 = v16;
  v49 = v39;
  v40 = v38;
  v50 = v40;
  v53 = v26;
  objc_msgSend_setCompletionBlock_(v19, v41, v48);
  objc_msgSend_setRequest_(self, v42, v19);
  v45 = objc_msgSend_container(self, v43, v44);
  objc_msgSend_performRequest_(v45, v46, v19);

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v51);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v47 = *MEMORY[0x277D85DE8];
}

- (id)_possiblyWrapError:(id)error forRecordWithID:(id)d withCode:(int64_t)code format:(id)format
{
  errorCopy = error;
  dCopy = d;
  formatCopy = format;
  if ((CKShouldWrapErrorFetchingRecords() & 1) == 0)
  {
    v18 = errorCopy;
    goto LABEL_5;
  }

  if (CKCanRetryForError())
  {
    v14 = MEMORY[0x277CBC560];
    v15 = *MEMORY[0x277CBC120];
    v16 = objc_msgSend_code(errorCopy, v12, v13);
    v18 = objc_msgSend_errorWithDomain_code_error_format_(v14, v17, v15, v16, errorCopy, @"Encountered a transient error fetching record %@. Please try again.", dCopy);
LABEL_5:
    v19 = v18;
    goto LABEL_9;
  }

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v23 = objc_msgSend_initWithFormat_arguments_(v20, v21, formatCopy, &v27);
  if (errorCopy)
  {
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%@: %@", v23, errorCopy);

    v23 = v24;
  }

  v19 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], code, errorCopy, @"%@", v23);

LABEL_9:

  return v19;
}

- (void)main
{
  v86 = *MEMORY[0x277D85DE8];
  objc_msgSend__noteOperationBeginning(self, a2, v2);
  objc_initWeak(&location, self);
  v4 = objc_opt_new();
  AssetContents = objc_msgSend_shouldFetchAssetContents(self, v5, v6);
  objc_msgSend_setFetchAssetContents_(v4, v8, AssetContents);
  objc_msgSend_setFetchMergeableValues_(v4, v9, 0);
  objc_msgSend_setPreserveOrdering_(v4, v10, 0);
  v13 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v11, v12);
  objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(v4, v14, v13);

  v17 = objc_msgSend_forcePCSDecryptionAttempt(self, v15, v16);
  objc_msgSend_setForceDecryptionAttempt_(v4, v18, v17);
  v73 = objc_opt_new();
  if ((objc_msgSend_shouldFetchAssetContents(self, v19, v20) & 1) == 0)
  {
    v23 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v21, v22);
    v26 = objc_msgSend_allValues(v23, v24, v25);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_2251DA788;
    v82[3] = &unk_278549798;
    v83 = v73;
    objc_msgSend_enumerateObjectsUsingBlock_(v26, v27, v82);
  }

  if (objc_msgSend_count(v73, v21, v22))
  {
    objc_msgSend_setDesiredAssetKeys_(self, v28, v73);
  }

  v74 = objc_msgSend_set(MEMORY[0x277CBEB58], v28, v29);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v32 = objc_msgSend_recordZoneIDs(self, v30, v31);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v78, v85, 16);
  if (v36)
  {
    v37 = *v79;
    do
    {
      v38 = 0;
      do
      {
        if (*v79 != v37)
        {
          objc_enumerationMutation(v32);
        }

        v39 = *(*(&v78 + 1) + 8 * v38);
        v40 = objc_msgSend_configurationsByRecordZoneID(self, v34, v35);
        v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, v39);

        if (v42)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = v42;
            v46 = objc_msgSend_desiredKeys(v43, v44, v45);

            if (v46)
            {
              v49 = objc_msgSend_desiredKeys(v43, v47, v48);
              objc_msgSend_addObjectsFromArray_(v74, v50, v49);
            }

            NewestChangesFirst = objc_msgSend_fetchNewestChangesFirst(v43, v47, v48);
            v54 = objc_msgSend_preserveOrdering(v4, v52, v53);
            objc_msgSend_setPreserveOrdering_(v4, v55, NewestChangesFirst | v54);
          }
        }

        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v78, v85, 16);
    }

    while (v36);
  }

  objc_msgSend_setDesiredKeys_(v4, v56, v74);
  v57 = objc_opt_class();
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_2251DA8B8;
  v76[3] = &unk_278549560;
  v76[4] = self;
  objc_copyWeak(&v77, &location);
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v58, v57, v4, v76);
  v61 = objc_msgSend_recordZoneIDs(self, v59, v60);
  v64 = objc_msgSend_configurationsByRecordZoneID(self, v62, v63);
  objc_msgSend__sendFetchChangesRequestForZoneIDs_withOptions_previousRequestSchedulerInfo_(self, v65, v61, v64, 0);

  v68 = objc_msgSend_fetchRecordsGroup(self, v66, v67);
  objc_msgSend_qualityOfService(self, v69, v70);
  v71 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251DAB1C;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_group_notify(v68, v71, block);

  objc_destroyWeak(&v77);
  objc_destroyWeak(&location);
  v72 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v4 = MEMORY[0x277CBEB98];
  errorCopy = error;
  v8 = objc_msgSend_recordZoneIDs(self, v6, v7);
  v10 = objc_msgSend_setWithArray_(v4, v9, v8);

  if (objc_msgSend_count(v10, v11, v12))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2251DACD8;
    v17[3] = &unk_2785487F8;
    v18 = v10;
    objc_msgSend_updateCloudKitMetrics_(self, v15, v17);
  }

  objc_msgSend__noteOperationFinishedBlockEnd(self, v13, v14);
  v16.receiver = self;
  v16.super_class = CKDFetchBatchedRecordsOperation;
  [(CKDOperation *)&v16 _finishOnCallbackQueueWithError:errorCopy];
}

- (NSString)pipeliningDescription
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDFetchBatchedRecordsOperation.m", 515, @"Expect subclass to implement");

  return 0;
}

- (id)activityCreate
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDFetchBatchedRecordsOperation.m", 519, @"Expect subclass to implement");

  return 0;
}

- (void)_noteChangedRecordWithID:(id)d record:(id)record error:(id)error
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, d, record, error);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a2, self, @"CKDFetchBatchedRecordsOperation.m", 523, @"Expect subclass to implement");
}

- (void)_noteDeletedRecordWithID:(id)d recordType:(id)type
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, d, type);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v6, a2, self, @"CKDFetchBatchedRecordsOperation.m", 526, @"Expect subclass to implement");
}

- (void)_noteAttributesChangedForZone:(id)zone
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, zone);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDFetchBatchedRecordsOperation.m", 529, @"Expect subclass to implement");
}

- (id)_createAndConfigureURLRequestForZoneIDs:(id)ds optionsByZoneID:(id)d
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, ds, d);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CKDFetchBatchedRecordsOperation.m", 532, @"Expect subclass to implement");

  return 0;
}

- (id)_optionsForZonesWithPendingChangesAfterRequest:(id)request
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, request);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDFetchBatchedRecordsOperation.m", 536, @"Expect subclass to implement");

  return 0;
}

- (void)_noteCompletedURLRequest:(id)request withSchedulerInfo:(id)info
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, request, info);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v6, a2, self, @"CKDFetchBatchedRecordsOperation.m", 540, @"Expect subclass to implement");
}

- (void)_noteOperationBeginning
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDFetchBatchedRecordsOperation.m", 543, @"Expect subclass to implement");
}

- (void)_noteOperationEnding
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDFetchBatchedRecordsOperation.m", 546, @"Expect subclass to implement");
}

- (void)_noteOperationFinishedBlockEnd
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKDFetchBatchedRecordsOperation.m", 549, @"Expect subclass to implement");
}

@end