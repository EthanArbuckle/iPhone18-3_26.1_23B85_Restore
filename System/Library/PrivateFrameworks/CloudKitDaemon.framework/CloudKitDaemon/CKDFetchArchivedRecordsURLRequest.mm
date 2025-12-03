@interface CKDFetchArchivedRecordsURLRequest
- (CKDFetchArchivedRecordsURLRequest)initWithOperation:(id)operation recordZoneIDs:(id)ds configurationsByRecordZoneID:(id)d;
- (NSDictionary)resultsByRecordZoneID;
- (NSDictionary)zoneErrorsByZoneID;
- (id)_handleRecords:(id)records;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchArchivedRecordsURLRequest

- (CKDFetchArchivedRecordsURLRequest)initWithOperation:(id)operation recordZoneIDs:(id)ds configurationsByRecordZoneID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = CKDFetchArchivedRecordsURLRequest;
  v12 = [(CKDURLRequest *)&v22 initWithOperation:operation];
  if (v12)
  {
    v13 = objc_msgSend_copy(dsCopy, v10, v11);
    recordZoneIDs = v12->_recordZoneIDs;
    v12->_recordZoneIDs = v13;

    objc_storeStrong(&v12->_configurationsByRecordZoneID, d);
    v15 = objc_opt_new();
    zoneIDsByRequestOperationUUID = v12->_zoneIDsByRequestOperationUUID;
    v12->_zoneIDsByRequestOperationUUID = v15;

    v12->_shouldFetchAssetContent = 1;
    v17 = objc_opt_new();
    requestResultsByRecordZoneID = v12->_requestResultsByRecordZoneID;
    v12->_requestResultsByRecordZoneID = v17;

    v19 = objc_opt_new();
    nodeErrorsByZoneID = v12->_nodeErrorsByZoneID;
    v12->_nodeErrorsByZoneID = v19;
  }

  return v12;
}

- (NSDictionary)zoneErrorsByZoneID
{
  v3 = objc_msgSend_nodeErrorsByZoneID(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (NSDictionary)resultsByRecordZoneID
{
  v3 = objc_msgSend_requestResultsByRecordZoneID(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v38 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = objc_msgSend_recordZoneIDs(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v33, v37, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = objc_msgSend_configurationsByRecordZoneID(self, v9, v10, builderCopy);
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v14);
        v20 = objc_msgSend_previousServerChangeToken(v17, v18, v19);
        v23 = objc_msgSend_data(v20, v21, v22);

        if (!v23)
        {
          v23 = objc_msgSend_data(MEMORY[0x277CBEA90], v24, v25);
        }

        v26 = objc_msgSend_sqliteRepresentation(v14, v24, v25);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v23, v26);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v33, v37, 16);
    }

    while (v11);
  }

  v32.receiver = self;
  v32.super_class = CKDFetchArchivedRecordsURLRequest;
  [(CKDURLRequest *)&v32 fillOutEquivalencyPropertiesBuilder:builderCopy];
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v28, v4, @"zid->token");

  v29 = *MEMORY[0x277D85DE8];
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_recordZoneIDs(self, v5, v6);
  objc_msgSend_setFetchRecordZoneIDs_(propertiesCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDFetchArchivedRecordsURLRequest;
  [(CKDURLRequest *)&v9 fillOutRequestProperties:propertiesCopy];
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)generateRequestOperations
{
  v4 = objc_msgSend_recordZoneIDs(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253C7364;
  v8[3] = &unk_27854D478;
  v8[4] = self;
  v6 = objc_msgSend_CKMap_(v4, v5, v8);

  return v6;
}

- (id)_handleRecords:(id)records
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  recordsCopy = records;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(recordsCopy, v5, &v30, v34, 16);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v31;
    v28 = *MEMORY[0x277CBBF50];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v15 = objc_msgSend_recordFetchedBlock(self, v13, v14);

        if (v15)
        {
          v18 = objc_msgSend_translator(self, v16, v17);
          v29 = v8;
          v20 = objc_msgSend_recordFromPRecord_error_(v18, v19, v11, &v29);
          v21 = v29;

          if (v20)
          {
            v24 = objc_msgSend_recordFetchedBlock(self, v22, v23);
            (v24)[2](v24, v20);
          }

          else
          {
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v22, v28, 2006, @"Invalid data received from server");
            v21 = v24 = v21;
          }

          v8 = v21;
        }

        objc_autoreleasePoolPop(v12);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(recordsCopy, v25, &v30, v34, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)requestDidParseProtobufObject:(id)object
{
  objectCopy = object;
  if (objc_msgSend_hasFetchArchivedRecordsResponse(objectCopy, v6, v7))
  {
    v10 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v8, v9);
    v13 = objc_msgSend_response(objectCopy, v11, v12);
    v16 = objc_msgSend_operationUUID(v13, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v10, v17, v16);

    if (!v18)
    {
      v55 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
      v58 = objc_msgSend_response(objectCopy, v56, v57);
      v61 = objc_msgSend_operationUUID(v58, v59, v60);
      v64 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v62, v63);
      v67 = objc_msgSend_allKeys(v64, v65, v66);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v55, v68, a2, self, @"CKDFetchArchivedRecordsURLRequest.m", 140, @"Got a response for an unknown zone with request operation %@ %@", v61, v67);
    }

    v21 = objc_msgSend_recordFetchedBlock(self, v19, v20);

    if (v21)
    {
      v24 = objc_msgSend_fetchArchivedRecordsResponse(objectCopy, v22, v23);
      v27 = objc_msgSend_records(v24, v25, v26);
      v21 = objc_msgSend__handleRecords_(self, v28, v27);

      if (v21)
      {
        v29 = v21;
      }
    }

    v30 = objc_opt_new();
    v33 = objc_msgSend_fetchArchivedRecordsResponse(objectCopy, v31, v32);
    v36 = objc_msgSend_archiveContinuationToken(v33, v34, v35);
    objc_msgSend_setResultServerChangeTokenData_(v30, v37, v36);

    v40 = objc_msgSend_fetchArchivedRecordsResponse(objectCopy, v38, v39);
    LODWORD(v36) = objc_msgSend_hasStatus(v40, v41, v42);

    if (v36)
    {
      v45 = objc_msgSend_fetchArchivedRecordsResponse(objectCopy, v43, v44);
      v48 = objc_msgSend_status(v45, v46, v47);

      v49 = v48 != 2;
    }

    else
    {
      v49 = 1;
    }

    objc_msgSend_setStatus_(v30, v43, v49);
    v52 = objc_msgSend_requestResultsByRecordZoneID(self, v50, v51);
    objc_msgSend_setObject_forKeyedSubscript_(v52, v53, v30, v18);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v68 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_result(failureCopy, v16, v17);
  if (objc_msgSend_code(v18, v19, v20) != 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v52 = v21;
      v55 = objc_msgSend_error(v18, v53, v54);
      v58 = objc_msgSend_errorDescription(v55, v56, v57);
      *buf = 138543618;
      v65 = v15;
      v66 = 2114;
      v67 = v58;
      _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Error fetching archived records in zone %{public}@: %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CBC560];
    v23 = *MEMORY[0x277CBC120];
    v24 = sub_2253962A4(v18);
    v25 = sub_225395734(self, v18);
    v28 = objc_msgSend_error(v18, v26, v27);
    v31 = objc_msgSend_errorDescription(v28, v29, v30);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_format_(v22, v32, v23, v24, v25, @"Error fetching archived records in zone %@: %@", v15, v31);

    if (v15)
    {
      v36 = objc_msgSend_nodeErrorsByZoneID(self, v34, v35);
      objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v33, v15);
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v38 = objc_msgSend_zoneIDsByRequestOperationUUID(self, v34, v35);
      v36 = objc_msgSend_allValues(v38, v39, v40);

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v41, &v59, v63, 16);
      if (v42)
      {
        v45 = v42;
        v46 = *v60;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v60 != v46)
            {
              objc_enumerationMutation(v36);
            }

            v48 = *(*(&v59 + 1) + 8 * i);
            v49 = objc_msgSend_nodeErrorsByZoneID(self, v43, v44);
            objc_msgSend_setObject_forKeyedSubscript_(v49, v50, v33, v48);
          }

          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v43, &v59, v63, 16);
        }

        while (v45);
        v15 = 0;
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

@end