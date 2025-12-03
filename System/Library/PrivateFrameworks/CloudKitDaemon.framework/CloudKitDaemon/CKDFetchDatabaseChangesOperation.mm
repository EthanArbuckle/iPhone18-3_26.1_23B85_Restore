@interface CKDFetchDatabaseChangesOperation
- (BOOL)shouldReturnServerChangeTokensToAdopter;
- (CKDFetchDatabaseChangesOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (id)analyticsPayload;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleAnonymousZoneDataObjects:(id)objects schedulerInfo:(id)info;
- (void)_handleFetchDatabaseChangesRequestFinishedWithSchedulerInfo:(id)info;
- (void)_sendFetchDatabaseChangesRequestWithChangeToken:(id)token previousRequestSchedulerInfo:(id)info;
- (void)main;
@end

@implementation CKDFetchDatabaseChangesOperation

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-changed-record-zones", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v4 = objc_msgSend_previousServerChangeToken(self, a2, v2);
  v7 = objc_msgSend_data(v4, v5, v6);
  objc_msgSend__sendFetchDatabaseChangesRequestWithChangeToken_previousRequestSchedulerInfo_(self, v8, v7, 0);

  objc_initWeak(&location, self);
  v11 = objc_msgSend_fetchZonesGroup(self, v9, v10);
  objc_msgSend_qualityOfService(self, v12, v13);
  v14 = CKGetGlobalQueue();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2250A4730;
  v15[3] = &unk_278547098;
  objc_copyWeak(&v16, &location);
  dispatch_group_notify(v11, v14, v15);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (BOOL)shouldReturnServerChangeTokensToAdopter
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_options(v4, v5, v6);
  if (!objc_msgSend_useAnonymousToServerShareParticipants(v7, v8, v9))
  {

    goto LABEL_8;
  }

  v12 = objc_msgSend_databaseScope(self, v10, v11);

  if (v12 != 3)
  {
LABEL_8:
    LOBYTE(v14) = 1;
    goto LABEL_9;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  v14 = os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO);
  if (v14)
  {
    v15 = v13;
    v18 = objc_msgSend_operationID(self, v16, v17);
    v21 = 138412290;
    v22 = v18;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Not returning metasync token in shared db to adopter using anonymous-to-server share participants for operation %@", &v21, 0xCu);

    LOBYTE(v14) = 0;
  }

LABEL_9:
  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)analyticsPayload
{
  v26.receiver = self;
  v26.super_class = CKDFetchDatabaseChangesOperation;
  analyticsPayload = [(CKDDatabaseOperation *)&v26 analyticsPayload];
  v4 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_previousServerChangeToken(self, v5, v6);
  v9 = objc_msgSend_numberWithInt_(v4, v8, v7 != 0);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v10, v9, 0x28387E7C0);

  v11 = MEMORY[0x277CCABB0];
  AllChanges = objc_msgSend_fetchAllChanges(self, v12, v13);
  v16 = objc_msgSend_numberWithBool_(v11, v15, AllChanges);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v17, v16, 0x283869100);

  v18 = MEMORY[0x277CCABB0];
  v21 = objc_msgSend_resultsLimit(self, v19, v20);
  v23 = objc_msgSend_numberWithUnsignedInteger_(v18, v22, v21);
  objc_msgSend_setObject_forKeyedSubscript_(analyticsPayload, v24, v23, 0x28387E7E0);

  return analyticsPayload;
}

- (CKDFetchDatabaseChangesOperation)initWithOperationInfo:(id)info container:(id)container
{
  v39 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  containerCopy = container;
  v36.receiver = self;
  v36.super_class = CKDFetchDatabaseChangesOperation;
  v10 = [(CKDDatabaseOperation *)&v36 initWithOperationInfo:infoCopy container:containerCopy];
  if (v10)
  {
    v11 = objc_msgSend_options(containerCopy, v8, v9);
    if (objc_msgSend_useAnonymousToServerShareParticipants(v11, v12, v13))
    {
      v16 = objc_msgSend_databaseScope(v10, v14, v15);

      if (v16 == 3)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v19 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v22 = v19;
          v25 = objc_msgSend_operationID(v10, v23, v24);
          *buf = 138412290;
          v38 = v25;
          _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Ignoring initial metasync token in shared db from adopter using anonymous-to-server share participants for operation %@", buf, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else
    {
    }

    v26 = objc_msgSend_previousServerChangeToken(infoCopy, v17, v18);
    previousServerChangeToken = v10->_previousServerChangeToken;
    v10->_previousServerChangeToken = v26;

LABEL_10:
    v10->_resultsLimit = objc_msgSend_resultsLimit(infoCopy, v20, v21);
    v10->_fetchAllChanges = objc_msgSend_fetchAllChanges(infoCopy, v28, v29);
    v10->_numRequestsSent = 0;
    v30 = dispatch_group_create();
    fetchZonesGroup = v10->_fetchZonesGroup;
    v10->_fetchZonesGroup = v30;

    v32 = objc_opt_new();
    requestInfos = v10->_requestInfos;
    v10->_requestInfos = v32;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_handleFetchDatabaseChangesRequestFinishedWithSchedulerInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_request(infoCopy, v5, v6);
  objc_msgSend_setRequest_(infoCopy, v8, 0);
  v11 = objc_msgSend_serverChangeTokenData(v7, v9, v10);

  if (v11)
  {
    v14 = objc_alloc(MEMORY[0x277CBC670]);
    v17 = objc_msgSend_serverChangeTokenData(v7, v15, v16);
    v11 = objc_msgSend_initWithData_(v14, v18, v17);
  }

  v19 = objc_msgSend_status(v7, v12, v13);
  v22 = objc_msgSend_fetchZonesGroup(self, v20, v21);
  dispatch_group_enter(v22);

  v25 = objc_msgSend_perRequestCallbackGroup(infoCopy, v23, v24);
  v28 = objc_msgSend_perRequestCallbackQueue(infoCopy, v26, v27);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_225243158;
  v31[3] = &unk_278546BB8;
  v31[4] = self;
  v32 = v11;
  v33 = infoCopy;
  v34 = v19;
  v29 = infoCopy;
  v30 = v11;
  dispatch_group_notify(v25, v28, v31);
}

- (void)_sendFetchDatabaseChangesRequestWithChangeToken:(id)token previousRequestSchedulerInfo:(id)info
{
  v97 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  infoCopy = info;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v96 = tokenCopy;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Fetching database changes from the server with change token %{public}@", buf, 0xCu);
  }

  v9 = [CKDFetchDatabaseChangesURLRequest alloc];
  v11 = objc_msgSend_initWithOperation_previousServerChangeTokenData_(v9, v10, self, tokenCopy);
  v14 = objc_msgSend_resultsLimit(self, v12, v13);
  objc_msgSend_setResultsLimit_(v11, v15, v14);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v11);
  v16 = [CKDPipeliningInfo alloc];
  v18 = objc_msgSend_initWithRequest_operation_(v16, v17, v11, self);
  v21 = objc_msgSend_requestInfos(self, v19, v20);
  objc_msgSend_addObject_(v21, v22, v18);

  objc_initWeak(&from, v18);
  if (!objc_msgSend_fetchAllChanges(self, v23, v24) || (objc_msgSend_request(self, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 == 0, v27, v28))
  {
    v29 = 0;
  }

  else
  {
    objc_msgSend_suspendCallbackQueue(v18, v25, v26);
    v29 = 1;
  }

  v30 = objc_msgSend_fetchZonesGroup(self, v25, v26);
  dispatch_group_enter(v30);

  v33 = objc_msgSend_perRequestGroup(v18, v31, v32);
  dispatch_group_enter(v33);

  if (infoCopy)
  {
    v36 = objc_msgSend_perRequestGroup(infoCopy, v34, v35);
  }

  else
  {
    v36 = dispatch_group_create();
  }

  v37 = v36;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = sub_225243AA4;
  v87[3] = &unk_278549510;
  objc_copyWeak(&v89, buf);
  objc_copyWeak(&v90, &location);
  objc_copyWeak(&v91, &from);
  v38 = v37;
  v88 = v38;
  v92 = v29;
  objc_msgSend_setCompletionBlock_(v11, v39, v87);
  v42 = objc_msgSend_recordZoneWithIDChangedBlock(self, v40, v41);

  if (v42)
  {
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_225244410;
    v84[3] = &unk_27854AE40;
    objc_copyWeak(&v85, buf);
    objc_copyWeak(&v86, &from);
    objc_msgSend_setZoneChangedBlock_(v11, v45, v84);
    objc_destroyWeak(&v86);
    objc_destroyWeak(&v85);
  }

  v46 = objc_msgSend_recordZoneWithIDWasDeletedBlock(self, v43, v44);

  if (v46)
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = sub_225244640;
    v81[3] = &unk_27854AE68;
    objc_copyWeak(&v82, buf);
    objc_copyWeak(&v83, &from);
    objc_msgSend_setZoneDeletedBlock_(v11, v49, v81);
    objc_destroyWeak(&v83);
    objc_destroyWeak(&v82);
  }

  v50 = objc_msgSend_recordZoneWithIDWasPurgedBlock(self, v47, v48);

  if (v50)
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = sub_225244880;
    v78[3] = &unk_27854AE68;
    objc_copyWeak(&v79, buf);
    objc_copyWeak(&v80, &from);
    objc_msgSend_setZonePurgedBlock_(v11, v53, v78);
    objc_destroyWeak(&v80);
    objc_destroyWeak(&v79);
  }

  v54 = objc_msgSend_recordZoneWithIDWasDeletedDueToEncryptedDataResetBlock(self, v51, v52);

  if (v54)
  {
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_225244AC0;
    v75[3] = &unk_27854AE68;
    objc_copyWeak(&v76, buf);
    objc_copyWeak(&v77, &from);
    objc_msgSend_setZoneDeletedDueToEncryptedDataResetBlock_(v11, v57, v75);
    objc_destroyWeak(&v77);
    objc_destroyWeak(&v76);
  }

  v58 = objc_msgSend_container(self, v55, v56);
  v61 = objc_msgSend_options(v58, v59, v60);
  v64 = objc_msgSend_useAnonymousToServerShareParticipants(v61, v62, v63);

  if (v64)
  {
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_225244D00;
    v72[3] = &unk_27854AE90;
    objc_copyWeak(&v73, buf);
    objc_copyWeak(&v74, &from);
    objc_msgSend_setAnonymousShareProcessingBlock_(v11, v66, v72);
    objc_destroyWeak(&v74);
    objc_destroyWeak(&v73);
  }

  objc_msgSend_setRequest_(self, v65, v11);
  v69 = objc_msgSend_container(self, v67, v68);
  objc_msgSend_performRequest_(v69, v70, v11);

  objc_destroyWeak(&v91);
  objc_destroyWeak(&v90);
  objc_destroyWeak(&v89);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v71 = *MEMORY[0x277D85DE8];
}

- (void)_handleAnonymousZoneDataObjects:(id)objects schedulerInfo:(id)info
{
  location[2] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  infoCopy = info;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v30 = v8;
    LODWORD(location[0]) = 134217984;
    *(location + 4) = objc_msgSend_count(objectsCopy, v31, v32);
    _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Handling encrypted anonymous share processing for: %lu number of anonymous zone data objects", location, 0xCu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = objectsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v40, v44, 16);
  if (v12)
  {
    v34 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        v15 = objc_msgSend_fetchZonesGroup(self, v10, v11);
        dispatch_group_enter(v15);

        v18 = objc_msgSend_perRequestCallbackGroup(infoCopy, v16, v17);
        dispatch_group_enter(v18);

        objc_initWeak(location, self);
        v21 = objc_msgSend_container(self, v19, v20);
        v24 = objc_msgSend_anonymousSharingManager(v21, v22, v23);
        v27 = objc_msgSend_encryptedTupleData(v14, v25, v26);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = sub_2252451CC;
        v35[3] = &unk_27854AEE0;
        v36 = infoCopy;
        selfCopy = self;
        objc_copyWeak(&v39, location);
        v38 = v14;
        objc_msgSend_decryptShareTuple_withCompletionBlock_(v24, v28, v27, v35);

        objc_destroyWeak(&v39);
        objc_destroyWeak(location);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v40, v44, 16);
    }

    while (v12);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setRecordZoneWithIDChangedBlock_(self, v5, 0);
  objc_msgSend_setRecordZoneWithIDWasDeletedBlock_(self, v6, 0);
  objc_msgSend_setRecordZoneWithIDWasPurgedBlock_(self, v7, 0);
  objc_msgSend_setRecordZoneWithIDWasDeletedDueToEncryptedDataResetBlock_(self, v8, 0);
  v9.receiver = self;
  v9.super_class = CKDFetchDatabaseChangesOperation;
  [(CKDOperation *)&v9 _finishOnCallbackQueueWithError:errorCopy];
}

@end