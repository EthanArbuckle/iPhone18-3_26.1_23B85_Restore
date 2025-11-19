@interface CKDArchiveRecordsOperation
- (CKDArchiveRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleRecordArchived:(id)a3 responseCode:(id)a4;
- (void)main;
@end

@implementation CKDArchiveRecordsOperation

- (CKDArchiveRecordsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CKDArchiveRecordsOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_recordIDs(v6, v7, v8);
    recordIDs = v9->_recordIDs;
    v9->_recordIDs = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/archive-records", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setRecordArchivedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDArchiveRecordsOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

- (void)_handleRecordArchived:(id)a3 responseCode:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_code(v7, v8, v9);
  v11 = *MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC880];
  if (v10 == 1)
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v6;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Record with ID %@ was successfully archived", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    if (v12 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v21 = objc_msgSend_error(v7, v19, v20);
      v24 = objc_msgSend_errorDescription(v21, v22, v23);
      *buf = 138412546;
      v47 = v6;
      v48 = 2114;
      v49 = v24;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Error archiving record with ID %@: %{public}@", buf, 0x16u);
    }

    v25 = MEMORY[0x277CBC560];
    v26 = *MEMORY[0x277CBC120];
    v27 = sub_2253962A4(v7);
    v30 = objc_msgSend_request(self, v28, v29);
    v31 = sub_225395734(v30, v7);
    v34 = objc_msgSend_error(v7, v32, v33);
    v37 = objc_msgSend_errorDescription(v34, v35, v36);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_format_(v25, v38, v26, v27, v31, @"Error archiving record with ID %@: %@", v6, v37);
  }

  v39 = objc_msgSend_callbackQueue(self, v14, v15);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D5FF0;
  block[3] = &unk_278546990;
  block[4] = self;
  v44 = v6;
  v45 = v16;
  v40 = v16;
  v41 = v6;
  dispatch_async(v39, block);

  v42 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v48 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v30 = v3;
    v33 = objc_msgSend_operationID(self, v31, v32);
    v36 = objc_msgSend_recordIDs(self, v34, v35);
    *location = 138543618;
    *&location[4] = v33;
    v46 = 2112;
    v47 = v36;
    _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Starting archive records operation %{public}@ for record IDs %@", location, 0x16u);
  }

  v6 = objc_msgSend_recordIDs(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8) == 0;

  if (v9)
  {
    objc_msgSend_finishWithError_(self, v10, 0);
  }

  else
  {
    v11 = dispatch_group_create();
    v12 = [CKDArchiveRecordsURLRequest alloc];
    v15 = objc_msgSend_recordIDs(self, v13, v14);
    v17 = objc_msgSend_initWithOperation_recordIDsToArchive_(v12, v16, self, v15);

    objc_initWeak(location, self);
    objc_initWeak(&from, v17);
    dispatch_group_enter(v11);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2251D6420;
    v42[3] = &unk_278549608;
    objc_copyWeak(&v43, location);
    objc_msgSend_setRecordArchivedBlock_(v17, v18, v42);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2251D6498;
    v38[3] = &unk_278548AD0;
    objc_copyWeak(&v40, &from);
    objc_copyWeak(&v41, location);
    v19 = v11;
    v39 = v19;
    objc_msgSend_setCompletionBlock_(v17, v20, v38);
    objc_msgSend_setRequest_(self, v21, v17);
    v24 = objc_msgSend_container(self, v22, v23);
    objc_msgSend_performRequest_(v24, v25, v17);

    v28 = objc_msgSend_callbackQueue(self, v26, v27);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2251D6530;
    v37[3] = &unk_278545A00;
    v37[4] = self;
    dispatch_group_notify(v19, v28, v37);

    objc_destroyWeak(&v41);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  v29 = *MEMORY[0x277D85DE8];
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