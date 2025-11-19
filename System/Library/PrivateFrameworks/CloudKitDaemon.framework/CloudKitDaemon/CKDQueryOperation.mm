@interface CKDQueryOperation
- (CKDQueryOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)_wrapError:(id)a3 format:(id)a4;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleQueryRequestFinishedWithSchedulerInfo:(id)a3;
- (void)_handleRecordResponses:(id)a3 perRequestSchedulerInfo:(id)a4;
- (void)_sendQueryRequestWithCursor:(id)a3 previousRequestSchedulerInfo:(id)a4;
- (void)main;
@end

@implementation CKDQueryOperation

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/query", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v91[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_query(self, a2, v2);

  if (v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [CKDProtocolTranslator alloc];
    v11 = objc_msgSend_container(self, v9, v10);
    v14 = objc_msgSend_databaseScope(self, v12, v13);
    v16 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v8, v15, v11, v14, 0);

    v19 = objc_msgSend_query(self, v17, v18);
    v89 = 0;
    v21 = objc_msgSend_pQueryFromQuery_error_(v16, v20, v19, &v89);
    v22 = v89;

    if (!v21)
    {
      v75 = MEMORY[0x277CBC560];
      v76 = *MEMORY[0x277CBC120];
      if (v22)
      {
        v77 = objc_msgSend_localizedDescription(v22, v23, v24);
        objc_msgSend_errorWithDomain_code_format_(v75, v78, v76, 1009, @"Invalid predicate: %@", v77);
      }

      else
      {
        v77 = objc_msgSend_query(self, v23, v24);
        objc_msgSend_errorWithDomain_code_format_(v75, v80, v76, 1000, @"Unexpected error while encoding query %@", v77);
      }
      v81 = ;
      objc_msgSend_finishWithError_(self, v82, v81);

      objc_autoreleasePoolPop(v7);
      goto LABEL_18;
    }

    objc_autoreleasePoolPop(v7);
LABEL_5:
    objc_initWeak(&location, self);
    v27 = objc_opt_new();
    AssetContent = objc_msgSend_shouldFetchAssetContent(self, v28, v29);
    objc_msgSend_setFetchAssetContents_(v27, v31, AssetContent);
    objc_msgSend_setPreserveOrdering_(v27, v32, 1);
    v35 = objc_msgSend_desiredKeySet(self, v33, v34);
    objc_msgSend_setDesiredKeys_(v27, v36, v35);

    v41 = objc_msgSend_query(self, v37, v38);
    if (v41)
    {
      v42 = objc_msgSend_query(self, v39, v40);
      v47 = objc_msgSend_recordType(v42, v43, v44);
      if (!v47)
      {
LABEL_9:

        goto LABEL_10;
      }

      v48 = objc_msgSend_assetTransferOptionsByKey(self, v45, v46);
      v49 = v48 == 0;

      if (!v49)
      {
        v41 = objc_msgSend_query(self, v50, v51);
        v42 = objc_msgSend_recordType(v41, v52, v53);
        v90 = v42;
        v56 = objc_msgSend_assetTransferOptionsByKey(self, v54, v55);
        v91[0] = v56;
        v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v91, &v90, 1);
        objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(v27, v59, v58);

        goto LABEL_9;
      }
    }

LABEL_10:
    v60 = objc_opt_class();
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_2250826F4;
    v86[3] = &unk_278549560;
    v86[4] = self;
    objc_copyWeak(&v87, &location);
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v61, v60, v27, v86);
    v64 = objc_msgSend_cursor(self, v62, v63);
    v67 = objc_msgSend_data(v64, v65, v66);
    objc_msgSend__sendQueryRequestWithCursor_previousRequestSchedulerInfo_(self, v68, v67, 0);

    v71 = objc_msgSend_fetchRecordsGroup(self, v69, v70);
    objc_msgSend_qualityOfService(self, v72, v73);
    v74 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251D24E8;
    block[3] = &unk_278545A00;
    block[4] = self;
    dispatch_group_notify(v71, v74, block);

    objc_destroyWeak(&v87);
    objc_destroyWeak(&location);
LABEL_18:
    v83 = *MEMORY[0x277D85DE8];
    return;
  }

  v25 = objc_msgSend_cursor(self, v5, v6);

  if (v25)
  {
    goto LABEL_5;
  }

  v84 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBBF50], 12, @"No query or cursor supplied for query operation");
  objc_msgSend_finishWithError_(self, v84, v84);
  v79 = *MEMORY[0x277D85DE8];
}

- (id)relevantZoneIDs
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_zoneID(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v9[0] = v3;
    v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v9, 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (CKDQueryOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v57[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v56.receiver = self;
  v56.super_class = CKDQueryOperation;
  v9 = [(CKDDatabaseOperation *)&v56 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_query(v6, v7, v8);
    query = v9->_query;
    v9->_query = v10;

    v14 = objc_msgSend_cursor(v6, v12, v13);
    cursor = v9->_cursor;
    v9->_cursor = v14;

    v9->_resultsLimit = objc_msgSend_resultsLimit(v6, v16, v17);
    v20 = v9->_cursor;
    if (!v20)
    {
      v20 = v6;
    }

    v21 = objc_msgSend_zoneID(v20, v18, v19);
    objc_storeStrong(&v9->_zoneID, v21);

    v9->_shouldFetchAssetContent = objc_msgSend_shouldFetchAssetContent(v6, v22, v23);
    v26 = objc_msgSend_desiredKeys(v6, v24, v25);
    if (v26 && (v29 = v26, objc_msgSend_desiredKeys(v6, v27, v28), v30 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend_count(v30, v31, v32), v30, v29, !v33))
    {
      v40 = MEMORY[0x277CBEB98];
      v57[0] = *MEMORY[0x277CBC030];
      v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v57, 1);
    }

    else
    {
      v34 = objc_msgSend_desiredKeys(v6, v27, v28);
      v37 = objc_msgSend_count(v34, v35, v36);

      if (!v37)
      {
LABEL_10:
        v9->_fetchAllResults = objc_msgSend_fetchAllResults(v6, v38, v39);
        v46 = dispatch_group_create();
        fetchRecordsGroup = v9->_fetchRecordsGroup;
        v9->_fetchRecordsGroup = v46;

        v9->_numRequestsSent = 0;
        v48 = objc_opt_new();
        requestInfos = v9->_requestInfos;
        v9->_requestInfos = v48;

        v52 = objc_msgSend_assetTransferOptionsByKey(v6, v50, v51);
        assetTransferOptionsByKey = v9->_assetTransferOptionsByKey;
        v9->_assetTransferOptionsByKey = v52;

        goto LABEL_11;
      }

      v40 = MEMORY[0x277CBEB98];
      v41 = objc_msgSend_desiredKeys(v6, v38, v39);
    }

    v43 = v41;
    v44 = objc_msgSend_setWithArray_(v40, v42, v41);
    desiredKeySet = v9->_desiredKeySet;
    v9->_desiredKeySet = v44;

    goto LABEL_10;
  }

LABEL_11:

  v54 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_handleQueryRequestFinishedWithSchedulerInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_request(v4, v5, v6);
  objc_msgSend_setRequest_(v4, v8, 0);
  v11 = objc_msgSend_resultsCursor(v7, v9, v10);

  if (v11)
  {
    v14 = objc_alloc(MEMORY[0x277CBC580]);
    v17 = objc_msgSend_resultsCursor(v7, v15, v16);
    v20 = objc_msgSend_zoneID(self, v18, v19);
    v11 = objc_msgSend_initWithData_zoneID_(v14, v21, v17, v20);
  }

  v22 = objc_msgSend_fetchRecordsGroup(self, v12, v13);
  dispatch_group_enter(v22);

  v25 = objc_msgSend_perRequestCallbackGroup(v4, v23, v24);
  v28 = objc_msgSend_perRequestCallbackQueue(v4, v26, v27);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D0614;
  block[3] = &unk_278546990;
  block[4] = self;
  v32 = v11;
  v33 = v4;
  v29 = v4;
  v30 = v11;
  dispatch_group_notify(v25, v28, block);
}

- (id)_wrapError:(id)a3 format:(id)a4
{
  v5 = a3;
  v8 = a4;
  if (!v5)
  {
    goto LABEL_5;
  }

  v9 = objc_msgSend_domain(v5, v6, v7);
  v10 = *MEMORY[0x277CBC120];
  if (objc_msgSend_isEqualToString_(v9, v11, *MEMORY[0x277CBC120]))
  {

LABEL_5:
    v17 = v5;
    goto LABEL_6;
  }

  v14 = objc_msgSend_domain(v5, v12, v13);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, *MEMORY[0x277CCA738]);

  if (isEqualToString)
  {
    goto LABEL_5;
  }

  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = objc_msgSend_initWithFormat_arguments_(v19, v20, v8, &v24);
  v17 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, v10, 1000, v5, @"%@", v21);

LABEL_6:

  return v17;
}

- (void)_handleRecordResponses:(id)a3 perRequestSchedulerInfo:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v6 = a4;
  if ((objc_msgSend_isCancelled(self, v7, v8) & 1) == 0)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = v33;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v38, v44, 16);
    if (v13)
    {
      v14 = *v39;
      v15 = MEMORY[0x277CBC880];
      v16 = MEMORY[0x277CBC830];
      do
      {
        v17 = 0;
        do
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v38 + 1) + 8 * v17);
          v19 = objc_msgSend_fetchRecordsGroup(self, v11, v12);
          dispatch_group_enter(v19);

          v22 = objc_msgSend_perRequestCallbackGroup(v6, v20, v21);
          dispatch_group_enter(v22);

          if (*v15 != -1)
          {
            dispatch_once(v15, *MEMORY[0x277CBC878]);
          }

          v23 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
          {
            v24 = v23;
            v27 = objc_msgSend_recordID(v18, v25, v26);
            *buf = 138412290;
            v43 = v27;
            _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Handling record response for record %@", buf, 0xCu);
          }

          ++v17;
        }

        while (v13 != v17);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v38, v44, 16);
      }

      while (v13);
    }

    objc_initWeak(buf, self);
    v30 = objc_msgSend_recordFetcher(self, v28, v29);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2251D0DF0;
    v34[3] = &unk_278549498;
    objc_copyWeak(&v37, buf);
    v35 = v6;
    v36 = self;
    objc_msgSend_fetchRecords_withPerRecordCompletion_(v30, v31, v9, v34);

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_sendQueryRequestWithCursor:(id)a3 previousRequestSchedulerInfo:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v73 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v90 = v6;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Executing query with cursor %@", buf, 0xCu);
  }

  v10 = objc_msgSend_zoneID(self, v8, v9, v73);
  v13 = objc_msgSend_cursor(self, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_cursor(self, v14, v15);
    v19 = objc_msgSend_zoneID(v16, v17, v18);

    v10 = v19;
  }

  if (v6)
  {
    v75 = 0;
  }

  else
  {
    v75 = objc_msgSend_query(self, v14, v15);
  }

  v20 = [CKDQueryURLRequest alloc];
  v23 = objc_msgSend_resultsLimit(self, v21, v22);
  v26 = objc_msgSend_desiredKeySet(self, v24, v25);
  v29 = objc_msgSend_allObjects(v26, v27, v28);
  cursor_limit_requestedFields_zoneID = objc_msgSend_initWithOperation_query_cursor_limit_requestedFields_zoneID_(v20, v30, self, v75, v6, v23, v29, v10);

  v32 = objc_opt_new();
  if ((objc_msgSend_shouldFetchAssetContent(self, v33, v34) & 1) == 0)
  {
    v37 = objc_msgSend_assetTransferOptionsByKey(self, v35, v36);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_2251D1AC0;
    v87[3] = &unk_2785494C0;
    v88 = v32;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v37, v38, v87);
  }

  if (objc_msgSend_count(v32, v35, v36))
  {
    objc_msgSend_setDesiredAssetKeys_(cursor_limit_requestedFields_zoneID, v39, v32);
  }

  else
  {
    AssetContent = objc_msgSend_shouldFetchAssetContent(self, v39, v40);
    objc_msgSend_setShouldFetchAssetContent_(cursor_limit_requestedFields_zoneID, v42, AssetContent);
  }

  v43 = [CKDPipeliningInfo alloc];
  v45 = objc_msgSend_initWithRequest_operation_(v43, v44, cursor_limit_requestedFields_zoneID, self);
  v48 = objc_msgSend_requestInfos(self, v46, v47);
  objc_msgSend_addObject_(v48, v49, v45);

  objc_initWeak(buf, self);
  objc_initWeak(&location, cursor_limit_requestedFields_zoneID);
  objc_initWeak(&from, v45);
  if (!objc_msgSend_fetchAllResults(self, v50, v51) || (objc_msgSend_request(self, v52, v53), v54 = objc_claimAutoreleasedReturnValue(), v55 = v54 == 0, v54, v55))
  {
    v56 = 0;
  }

  else
  {
    objc_msgSend_suspendCallbackQueue(v45, v52, v53);
    v56 = 1;
  }

  v57 = objc_msgSend_fetchRecordsGroup(self, v52, v53);
  dispatch_group_enter(v57);

  v60 = objc_msgSend_perRequestGroup(v45, v58, v59);
  dispatch_group_enter(v60);

  if (v74)
  {
    v63 = objc_msgSend_perRequestGroup(v74, v61, v62);
  }

  else
  {
    v63 = dispatch_group_create();
  }

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = sub_2251D1B64;
  v79[3] = &unk_278549510;
  objc_copyWeak(&v81, buf);
  objc_copyWeak(&v82, &location);
  objc_copyWeak(&v83, &from);
  v64 = v63;
  v80 = v64;
  v84 = v56;
  objc_msgSend_setCompletionBlock_(cursor_limit_requestedFields_zoneID, v65, v79);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_2251D2474;
  v76[3] = &unk_278549538;
  objc_copyWeak(&v77, buf);
  objc_copyWeak(&v78, &from);
  objc_msgSend_setRecordsParsedBlock_(cursor_limit_requestedFields_zoneID, v66, v76);
  objc_msgSend_setRequest_(self, v67, cursor_limit_requestedFields_zoneID);
  v70 = objc_msgSend_container(self, v68, v69);
  objc_msgSend_performRequest_(v70, v71, cursor_limit_requestedFields_zoneID);

  objc_destroyWeak(&v78);
  objc_destroyWeak(&v77);

  objc_destroyWeak(&v83);
  objc_destroyWeak(&v82);
  objc_destroyWeak(&v81);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v72 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setRecordFetchCompletionBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDQueryOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

@end