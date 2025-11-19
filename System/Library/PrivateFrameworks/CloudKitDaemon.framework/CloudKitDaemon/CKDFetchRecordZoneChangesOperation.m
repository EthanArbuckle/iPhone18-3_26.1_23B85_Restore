@interface CKDFetchRecordZoneChangesOperation
- (CKDFetchRecordZoneChangesOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)_createAndConfigureURLRequestForZoneIDs:(id)a3 optionsByZoneID:(id)a4;
- (id)_optionsForZonesWithPendingChangesAfterRequest:(id)a3;
- (id)activityCreate;
- (id)analyticsPayload;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_noteAttributesChangedForZone:(id)a3;
- (void)_noteChangedRecordWithID:(id)a3 record:(id)a4 error:(id)a5;
- (void)_noteCompletedURLRequest:(id)a3 withSchedulerInfo:(id)a4;
- (void)_noteDeletedRecordWithID:(id)a3 recordType:(id)a4;
- (void)_noteOperationBeginning;
- (void)_noteOperationEnding;
- (void)_noteOperationFinishedBlockEnd;
@end

@implementation CKDFetchRecordZoneChangesOperation

- (CKDFetchRecordZoneChangesOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  objc_msgSend_takeValuesFrom_(v8, v9, v6);
  v12 = objc_msgSend_recordZoneIDs(v6, v10, v11);
  objc_msgSend_setRecordZoneIDs_(v8, v13, v12);

  v16 = objc_msgSend_configurationsByRecordZoneID(v6, v14, v15);
  objc_msgSend_setConfigurationsByRecordZoneID_(v8, v17, v16);

  AssetContents = objc_msgSend_shouldFetchAssetContents(v6, v18, v19);
  objc_msgSend_setShouldFetchAssetContents_(v8, v21, AssetContents);
  AllChanges = objc_msgSend_fetchAllChanges(v6, v22, v23);
  objc_msgSend_setFetchAllChanges_(v8, v25, AllChanges);
  v28 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(v6, v26, v27);
  objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(v8, v29, v28);

  v32 = objc_msgSend_forcePCSDecryptionAttempt(v6, v30, v31);
  objc_msgSend_setForcePCSDecryptionAttempt_(v8, v33, v32);
  v36 = objc_msgSend_errorReportingStyle(v6, v34, v35);
  objc_msgSend_setErrorReportingStyle_(v8, v37, v36);
  v52.receiver = self;
  v52.super_class = CKDFetchRecordZoneChangesOperation;
  v38 = [(CKDFetchBatchedRecordsOperation *)&v52 initWithOperationInfo:v8 container:v7];

  if (v38)
  {
    v38->_changeTypes = objc_msgSend_changeTypes(v6, v39, v40);
    v43 = objc_msgSend_supplementalChangeTokenByZoneID(v6, v41, v42);
    supplementalChangeTokenByZoneID = v38->_supplementalChangeTokenByZoneID;
    v38->_supplementalChangeTokenByZoneID = v43;

    v47 = objc_msgSend_ckOperationClassName(v6, v45, v46);
    v48 = NSClassFromString(v47);
    v49 = objc_opt_class();
    v38->_clientIsUsingLegacyCKFetchRecordChangesOperationAPI = objc_msgSend_isSubclassOfClass_(v48, v50, v49) ^ 1;
  }

  return v38;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-record-changes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_noteCompletedURLRequest:(id)a3 withSchedulerInfo:(id)a4
{
  v130 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v109 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v105 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v105, v106, a2, self, @"CKDFetchRecordZoneChangesOperation.m", 67, &stru_28385ED00);
  }

  v110 = v7;
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_recordZoneIDs(v110, v13, v14);
  v108 = objc_msgSend_resultsByRecordZoneID(v110, v16, v17);
  v112 = objc_msgSend_zoneErrorsByZoneID(v110, v18, v19);
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v15;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v120, v129, 16);
  if (v22)
  {
    v24 = *v121;
    *&v23 = 138412290;
    v107 = v23;
    while (2)
    {
      v25 = 0;
      do
      {
        if (*v121 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v120 + 1) + 8 * v25);
        v27 = objc_msgSend_objectForKeyedSubscript_(v112, v21, v26, v107);
        if (objc_msgSend_CKIsNotFoundError(v27, v28, v29))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v32 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v35 = v32;
            v38 = objc_msgSend_operationID(self, v36, v37);
            *buf = 138412546;
            v126 = v26;
            v127 = 2114;
            v128 = v38;
            _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_INFO, "Warn: Zone %@ wasn't found on the server for fetch changes request %{public}@. Wiping caches for that zone", buf, 0x16u);
          }

          v39 = objc_msgSend_options(v12, v33, v34);
          if (objc_msgSend_useAnonymousToServerShareParticipants(v39, v40, v41))
          {
            v44 = objc_msgSend_databaseScope(self, v42, v43) == 3;

            if (v44)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v47 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
              {
                *buf = v107;
                v126 = v26;
                _os_log_debug_impl(&dword_22506F000, v47, OS_LOG_TYPE_DEBUG, "Possible anonymous share %@ not found. Removing share from anonymous share list", buf, 0xCu);
              }

              objc_initWeak(buf, self);
              v50 = objc_msgSend_fetchRecordsGroup(self, v48, v49);
              dispatch_group_enter(v50);

              v53 = objc_msgSend_anonymousSharingManager(v12, v51, v52);
              v124 = v26;
              v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v54, &v124, 1);
              v118[0] = MEMORY[0x277D85DD0];
              v118[1] = 3221225472;
              v118[2] = sub_2251E7BB8;
              v118[3] = &unk_278549318;
              objc_copyWeak(&v119, buf);
              objc_msgSend_removeAnonymousSharesFromSharedDB_operation_withCompletionBlock_(v53, v56, v55, self, v118);

              objc_destroyWeak(&v119);
              objc_destroyWeak(buf);
            }
          }

          else
          {
          }

          v57 = objc_msgSend_recordCache(v12, v45, v46);
          objc_msgSend_clearAllRecordsForContainer_zoneWithID_(v57, v58, v12, v26);

          objc_msgSend_setPCSData_forFetchedZoneID_(self, v59, 0, v26);
          v62 = objc_msgSend_pcsCache(v12, v60, v61);
          objc_msgSend_removePCSDataForItemsInZoneWithID_(v62, v63, v26);
        }

        if (objc_msgSend_clientIsUsingLegacyCKFetchRecordChangesOperationAPI(self, v30, v31))
        {
          v66 = objc_msgSend_error(self, v64, v65);
          v67 = v66 == 0;

          if (v67)
          {
            objc_msgSend_setError_(self, v68, v27);

            goto LABEL_28;
          }
        }

        ++v25;
      }

      while (v22 != v25);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v120, v129, 16);
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  v73 = objc_msgSend_error(self, v69, v70);
  if (v73)
  {
    goto LABEL_31;
  }

  if (objc_msgSend_clientIsUsingLegacyCKFetchRecordChangesOperationAPI(self, v71, v72))
  {
    v76 = objc_msgSend_firstObject(obj, v74, v75);
    v73 = objc_msgSend_objectForKeyedSubscript_(v108, v77, v76);

    v78 = objc_alloc(MEMORY[0x277CBC670]);
    v81 = objc_msgSend_resultServerChangeTokenData(v73, v79, v80);
    v83 = objc_msgSend_initWithData_(v78, v82, v81);
    objc_msgSend_setResultServerChangeToken_(self, v84, v83);

    v87 = objc_msgSend_resultClientChangeTokenData(v73, v85, v86);
    objc_msgSend_setResultClientChangeTokenData_(self, v88, v87);

    v91 = objc_msgSend_status(v73, v89, v90);
    objc_msgSend_setResultStatus_(self, v92, v91);
LABEL_31:
  }

  v93 = objc_msgSend_fetchRecordsGroup(self, v74, v75);
  dispatch_group_enter(v93);

  v96 = objc_msgSend_perRequestCallbackGroup(v109, v94, v95);
  v99 = objc_msgSend_perRequestCallbackQueue(v109, v97, v98);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251E7CCC;
  block[3] = &unk_278548978;
  block[4] = self;
  v114 = obj;
  v115 = v108;
  v116 = v112;
  v117 = v109;
  v100 = v109;
  v101 = v112;
  v102 = v108;
  v103 = obj;
  dispatch_group_notify(v96, v99, block);

  v104 = *MEMORY[0x277D85DE8];
}

- (void)_noteChangedRecordWithID:(id)a3 record:(id)a4 error:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_recordChangedBlock(self, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_recordChangedBlock(self, v13, v14);
    (v15)[2](v15, v16, v8, v9);
  }
}

- (void)_noteDeletedRecordWithID:(id)a3 recordType:(id)a4
{
  v13 = a3;
  v6 = a4;
  v9 = objc_msgSend_recordDeletedBlock(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_recordDeletedBlock(self, v10, v11);
    (v12)[2](v12, v13, v6);
  }
}

- (void)_noteAttributesChangedForZone:(id)a3
{
  v10 = a3;
  v6 = objc_msgSend_zoneAttributesChangedBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_zoneAttributesChangedBlock(self, v7, v8);
    (v9)[2](v9, v10);
  }
}

- (id)_optionsForZonesWithPendingChangesAfterRequest:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKDFetchRecordZoneChangesOperation.m", 164, &stru_28385ED00);
  }

  v8 = v5;
  v9 = objc_opt_new();
  v12 = objc_msgSend_zoneErrorsByZoneID(v8, v10, v11);
  v15 = objc_msgSend_resultsByRecordZoneID(v8, v13, v14);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2251E84E4;
  v25[3] = &unk_278549B78;
  v26 = v12;
  v27 = v8;
  v16 = v9;
  v28 = v16;
  v17 = v8;
  v18 = v12;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v15, v19, v25);

  v20 = v28;
  v21 = v16;

  return v16;
}

- (id)_createAndConfigureURLRequestForZoneIDs:(id)a3 optionsByZoneID:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
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
    v12 = objc_msgSend_count(v6, v10, v11);
    v15 = objc_msgSend_count(v6, v13, v14);
    v16 = @"s";
    *buf = 134218498;
    v82 = v12;
    if (v15 == 1)
    {
      v16 = &stru_28385ED00;
    }

    v83 = 2114;
    v84 = v16;
    v85 = 2112;
    v86 = v7;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Fetching changes from the server for %lu zone%{public}@ with options:\n%@", buf, 0x20u);
  }

  v17 = [CKDFetchRecordZoneChangesURLRequest alloc];
  v19 = objc_msgSend_initWithOperation_recordZoneIDs_configurationsByRecordZoneID_(v17, v18, self, v6, v7);
  v22 = objc_msgSend_changeTypes(self, v20, v21);
  objc_msgSend_setChangeTypes_(v19, v23, v22);
  v26 = objc_msgSend_supplementalChangeTokenByZoneID(self, v24, v25);
  objc_msgSend_setSupplementalChangeTokenByZoneID_(v19, v27, v26);

  v30 = objc_msgSend_container(self, v28, v29);
  v33 = objc_msgSend_options(v30, v31, v32);
  ChangesForMergeableValues = objc_msgSend_fetchChangesForMergeableValues(v33, v34, v35);
  objc_msgSend_setFetchChangesForMergeableValues_(v19, v37, ChangesForMergeableValues);

  v40 = objc_msgSend_desiredAssetKeys(self, v38, v39);
  v43 = objc_msgSend_count(v40, v41, v42);

  if (v43)
  {
    v46 = objc_msgSend_desiredAssetKeys(self, v44, v45);
    v49 = objc_msgSend_copy(v46, v47, v48);
    objc_msgSend_setDesiredAssetKeys_(v19, v50, v49);
  }

  else
  {
    AssetContents = objc_msgSend_shouldFetchAssetContents(self, v44, v45);
    objc_msgSend_setShouldFetchAssetContent_(v19, v52, AssetContents);
  }

  objc_initWeak(buf, self);
  v53 = [CKDPipeliningInfo alloc];
  v55 = objc_msgSend_initWithRequest_operation_(v53, v54, v19, self);
  objc_initWeak(&location, v55);
  v58 = objc_msgSend_recordChangedBlock(self, v56, v57);

  if (v58)
  {
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_2251E8B4C;
    v77[3] = &unk_278549538;
    objc_copyWeak(&v78, buf);
    objc_copyWeak(&v79, &location);
    objc_msgSend_setRecordsChangedBlock_(v19, v59, v77);
    objc_destroyWeak(&v79);
    objc_destroyWeak(&v78);
  }

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_2251E8BDC;
  v74[3] = &unk_278549BA0;
  objc_copyWeak(&v75, buf);
  objc_copyWeak(&v76, &location);
  objc_msgSend_setRecordDeletedBlock_(v19, v60, v74);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_2251E8C6C;
  v71[3] = &unk_278549BC8;
  objc_copyWeak(&v72, buf);
  objc_copyWeak(&v73, &location);
  objc_msgSend_setZoneAttributesChangedBlock_(v19, v61, v71);
  v63 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v62, v6);
  if (objc_msgSend_count(v63, v64, v65))
  {
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_2251E8CE0;
    v69[3] = &unk_2785487F8;
    v70 = v63;
    objc_msgSend_updateCloudKitMetrics_(self, v66, v69);
  }

  objc_destroyWeak(&v73);
  objc_destroyWeak(&v72);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&v75);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v67 = *MEMORY[0x277D85DE8];

  return v55;
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
  objc_msgSend_setRecordChangedBlock_(self, v5, 0);
  objc_msgSend_setRecordDeletedBlock_(self, v6, 0);
  objc_msgSend_setZoneAttributesChangedBlock_(self, v7, 0);
  v8.receiver = self;
  v8.super_class = CKDFetchRecordZoneChangesOperation;
  [(CKDFetchBatchedRecordsOperation *)&v8 _finishOnCallbackQueueWithError:v4];
}

- (id)analyticsPayload
{
  v35.receiver = self;
  v35.super_class = CKDFetchRecordZoneChangesOperation;
  v3 = [(CKDDatabaseOperation *)&v35 analyticsPayload];
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_operationInfo(self, v5, v6);
  v10 = objc_msgSend_recordZoneIDs(v7, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);
  v15 = objc_msgSend_numberWithUnsignedInteger_(v4, v14, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v16, v15, 0x28387E720);

  v17 = MEMORY[0x277CCABB0];
  AllChanges = objc_msgSend_fetchAllChanges(self, v18, v19);
  v22 = objc_msgSend_numberWithBool_(v17, v21, AllChanges);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v23, v22, 0x283869100);

  v24 = MEMORY[0x277CCABB0];
  v27 = objc_msgSend_operationInfo(self, v25, v26);
  AssetContents = objc_msgSend_shouldFetchAssetContents(v27, v28, v29);
  v32 = objc_msgSend_numberWithBool_(v24, v31, AssetContents);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v33, v32, 0x28387E6E0);

  return v3;
}

@end