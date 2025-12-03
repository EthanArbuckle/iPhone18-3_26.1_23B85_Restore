@interface CKDArchiveRecordsURLRequest
- (CKDArchiveRecordsURLRequest)initWithOperation:(id)operation recordIDsToArchive:(id)archive;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDArchiveRecordsURLRequest

- (CKDArchiveRecordsURLRequest)initWithOperation:(id)operation recordIDsToArchive:(id)archive
{
  v35 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  v33.receiver = self;
  v33.super_class = CKDArchiveRecordsURLRequest;
  v7 = [(CKDURLRequest *)&v33 initWithOperation:operation];
  if (v7)
  {
    v8 = objc_opt_new();
    zoneIDToRecordIDs = v7->_zoneIDToRecordIDs;
    v7->_zoneIDToRecordIDs = v8;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = archiveCopy;
    v10 = archiveCopy;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v34, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = objc_msgSend_zoneID(v18, v13, v14);
          v22 = objc_msgSend_objectForKeyedSubscript_(v7->_zoneIDToRecordIDs, v20, v19);
          if (!v22)
          {
            v22 = objc_opt_new();
            objc_msgSend_setObject_forKeyedSubscript_(v7->_zoneIDToRecordIDs, v23, v22, v19);
          }

          objc_msgSend_addObject_(v22, v21, v18);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v29, v34, 16);
      }

      while (v15);
    }

    v24 = objc_opt_new();
    recordZoneIDByRequestID = v7->_recordZoneIDByRequestID;
    v7->_recordZoneIDByRequestID = v24;

    archiveCopy = v28;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  builderCopy = builder;
  v7 = objc_msgSend_zoneIDToRecordIDs(self, v5, v6);
  v10 = objc_msgSend_allValues(v7, v8, v9);
  v12 = objc_msgSend_CKFlatMap_(v10, v11, &unk_28385E4E0);

  v14.receiver = self;
  v14.super_class = CKDArchiveRecordsURLRequest;
  [(CKDURLRequest *)&v14 fillOutEquivalencyPropertiesBuilder:builderCopy];
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v13, v12, @"recordIDs");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_zoneIDToRecordIDs(self, v5, v6);
  v10 = objc_msgSend_allValues(v7, v8, v9);
  v12 = objc_msgSend_CKFlatMap_(v10, v11, &unk_28385E500);

  objc_msgSend_setModifyRecordIDs_(propertiesCopy, v13, v12);
  v14.receiver = self;
  v14.super_class = CKDArchiveRecordsURLRequest;
  [(CKDURLRequest *)&v14 fillOutRequestProperties:propertiesCopy];
}

- (id)zoneIDsToLock
{
  v3 = objc_msgSend_zoneIDToRecordIDs(self, a2, v2);
  v6 = objc_msgSend_allKeys(v3, v4, v5);

  return v6;
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
  v4 = objc_msgSend_zoneIDToRecordIDs(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2253C6768;
  v11[3] = &unk_27854D478;
  v11[4] = self;
  v9 = objc_msgSend_CKMap_(v7, v8, v11);

  return v9;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v43 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_recordZoneIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_recordArchivedBlock(self, v16, v17);

  if (v18)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = objc_msgSend_zoneIDToRecordIDs(self, v19, v20, 0);
    v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v15);

    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v38, v42, 16);
    if (v25)
    {
      v28 = v25;
      v29 = *v39;
      do
      {
        v30 = 0;
        do
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v23);
          }

          v31 = *(*(&v38 + 1) + 8 * v30);
          v32 = objc_msgSend_recordArchivedBlock(self, v26, v27);
          v35 = objc_msgSend_result(objectCopy, v33, v34);
          (v32)[2](v32, v31, v35);

          ++v30;
        }

        while (v28 != v30);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v38, v42, 16);
      }

      while (v28);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v42 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v7 = objc_msgSend_recordZoneIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(failureCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_recordArchivedBlock(self, v16, v17);

  if (v18)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = objc_msgSend_zoneIDToRecordIDs(self, v19, v20, 0);
    v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v15);

    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v37, v41, 16);
    if (v25)
    {
      v28 = v25;
      v29 = *v38;
      do
      {
        v30 = 0;
        do
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(v23);
          }

          v31 = *(*(&v37 + 1) + 8 * v30);
          v32 = objc_msgSend_recordArchivedBlock(self, v26, v27);
          v35 = objc_msgSend_result(failureCopy, v33, v34);
          (v32)[2](v32, v31, v35);

          ++v30;
        }

        while (v28 != v30);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v37, v41, 16);
      }

      while (v28);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

@end