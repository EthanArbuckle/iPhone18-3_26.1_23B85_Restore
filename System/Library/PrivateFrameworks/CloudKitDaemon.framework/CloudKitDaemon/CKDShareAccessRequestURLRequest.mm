@interface CKDShareAccessRequestURLRequest
- (CKDShareAccessRequestURLRequest)initWithOperation:(id)operation shareMetadatasToRequestAccess:(id)access;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDShareAccessRequestURLRequest

- (CKDShareAccessRequestURLRequest)initWithOperation:(id)operation shareMetadatasToRequestAccess:(id)access
{
  accessCopy = access;
  v13.receiver = self;
  v13.super_class = CKDShareAccessRequestURLRequest;
  v8 = [(CKDURLRequest *)&v13 initWithOperation:operation];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_shareMetadatasToRequestAccess, access);
    v10 = objc_opt_new();
    shareMetadataByRequestID = v9->_shareMetadataByRequestID;
    v9->_shareMetadataByRequestID = v10;
  }

  return v9;
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
  v50 = *MEMORY[0x277D85DE8];
  v44 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = objc_msgSend_shareMetadatasToRequestAccess(self, v3, v4);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v45, v49, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = objc_msgSend_operationType(self, v7, v8);
        v15 = objc_msgSend_operationRequestWithType_(self, v14, v13);
        v16 = objc_opt_new();
        objc_msgSend_setShareAccessRequest_(v15, v17, v16);
        v20 = objc_msgSend_routingKey(v12, v18, v19);
        objc_msgSend_setRoutingKey_(v16, v21, v20);

        v24 = objc_msgSend_shortTokenHash(v12, v22, v23);
        objc_msgSend_setShortTokenHash_(v16, v25, v24);

        v28 = objc_msgSend_userInformationRequestAccess(v12, v26, v27);
        objc_msgSend_setUserInformationRequestAccess_(v16, v29, v28);

        v32 = objc_msgSend_shareMetadataByRequestID(self, v30, v31);
        v35 = objc_msgSend_request(v15, v33, v34);
        v38 = objc_msgSend_operationUUID(v35, v36, v37);
        objc_msgSend_setObject_forKeyedSubscript_(v32, v39, v12, v38);

        objc_msgSend_addObject_(v44, v40, v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v45, v49, 16);
    }

    while (v9);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)requestDidParseProtobufObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_shareMetadataByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(objectCopy, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_shareAccessRequestedBlock(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_shareAccessRequestedBlock(self, v19, v20);
    v24 = objc_msgSend_shareURL(v15, v22, v23);
    v27 = objc_msgSend_result(objectCopy, v25, v26);
    (v21)[2](v21, v24, v27);
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_shareMetadataByRequestID(self, v4, v5);
  v9 = objc_msgSend_response(failureCopy, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v6, v13, v12);

  v17 = objc_msgSend_shareAccessRequestedBlock(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_shareAccessRequestedBlock(self, v18, v19);
    v23 = objc_msgSend_shareURL(v14, v21, v22);
    v26 = objc_msgSend_result(failureCopy, v24, v25);
    (v20)[2](v20, v23, v26);
  }
}

@end