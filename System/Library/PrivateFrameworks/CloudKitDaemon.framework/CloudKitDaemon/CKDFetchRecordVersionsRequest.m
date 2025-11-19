@interface CKDFetchRecordVersionsRequest
- (CKDFetchRecordVersionsRequest)initWithOperation:(id)a3 recordIDs:(id)a4 desiredKeys:(id)a5 minimumVersionETag:(id)a6;
- (id)generateRequestOperations;
- (id)recordIDsUsedInZones:(id)a3;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)fillOutRequestProperties:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDFetchRecordVersionsRequest

- (CKDFetchRecordVersionsRequest)initWithOperation:(id)a3 recordIDs:(id)a4 desiredKeys:(id)a5 minimumVersionETag:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CKDFetchRecordVersionsRequest;
  v14 = [(CKDURLRequest *)&v19 initWithOperation:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_recordIDs, a4);
    objc_storeStrong(&v15->_desiredKeys, a5);
    objc_storeStrong(&v15->_minimumVersionETag, a6);
    v16 = objc_opt_new();
    recordIDByRequestID = v15->_recordIDByRequestID;
    v15->_recordIDByRequestID = v16;

    v15->_shouldFetchAssetContent = 1;
  }

  return v15;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v19.receiver = self;
  v19.super_class = CKDFetchRecordVersionsRequest;
  v4 = a3;
  [(CKDURLRequest *)&v19 fillOutEquivalencyPropertiesBuilder:v4];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_recordIDs(self, v6, v7, v19.receiver, v19.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v13, @"recordIDs");
  v17 = objc_msgSend_minimumVersionETag(self, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v18, v17, @"minimumVersionETag");
}

- (void)fillOutRequestProperties:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  objc_msgSend_setFetchRecordIDs_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDFetchRecordVersionsRequest;
  [(CKDURLRequest *)&v9 fillOutRequestProperties:v4];
}

- (id)recordIDsUsedInZones:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  v9 = objc_msgSend_recordIDs_filteredByZones_(self, v8, v7, v4);

  return v9;
}

- (id)zoneIDsToLock
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_recordIDs(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_zoneID(*(*(&v21 + 1) + 8 * i), v9, v10);
        if (v15)
        {
          objc_msgSend_addObject_(v3, v14, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }

  v18 = objc_msgSend_allObjects(v3, v16, v17);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
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
  v4 = objc_msgSend_recordIDs(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253CA650;
  v8[3] = &unk_27854D4C8;
  v8[4] = self;
  v6 = objc_msgSend_CKMap_(v4, v5, v8);

  return v6;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v4 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_2250741DC;
  v47 = sub_22507366C;
  v48 = 0;
  v7 = objc_msgSend_recordIDByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(v4, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  if (objc_msgSend_hasRecordRetrieveVersionsResponse(v4, v16, v17))
  {
    v20 = objc_msgSend_recordRetrieveVersionsResponse(v4, v18, v19);
    v23 = objc_msgSend_recordVersions(v20, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  if (objc_msgSend_count(v23, v18, v19))
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2253CABC8;
    v42[3] = &unk_27854D4F0;
    v42[4] = self;
    v42[5] = &v43;
    v26 = objc_msgSend_CKCompactMap_(v23, v24, v42);
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_msgSend_recordVersionsFetchedBlock(self, v24, v25);

  if (v27)
  {
    v30 = objc_msgSend_recordVersionsFetchedBlock(self, v28, v29);
    v33 = objc_msgSend_recordRetrieveVersionsResponse(v4, v31, v32);
    isDeleted = objc_msgSend_isDeleted(v33, v34, v35);
    v39 = objc_msgSend_result(v4, v37, v38);
    (v30)[2](v30, v15, isDeleted, v26, v39);
  }

  v40 = v44[5];

  _Block_object_dispose(&v43, 8);

  return v40;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v24 = a3;
  v6 = objc_msgSend_recordIDByRequestID(self, v4, v5);
  v9 = objc_msgSend_response(v24, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v12);

  v17 = objc_msgSend_recordVersionsFetchedBlock(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_recordVersionsFetchedBlock(self, v18, v19);
    v23 = objc_msgSend_result(v24, v21, v22);
    (v20)[2](v20, v14, 0, 0, v23);
  }
}

@end