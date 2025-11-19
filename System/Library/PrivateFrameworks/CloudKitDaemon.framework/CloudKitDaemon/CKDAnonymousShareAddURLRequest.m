@interface CKDAnonymousShareAddURLRequest
- (CKDAnonymousShareAddURLRequest)initWithOperation:(id)a3 encryptedAnonymousSharesToAdd:(id)a4;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
@end

@implementation CKDAnonymousShareAddURLRequest

- (CKDAnonymousShareAddURLRequest)initWithOperation:(id)a3 encryptedAnonymousSharesToAdd:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CKDAnonymousShareAddURLRequest;
  v8 = [(CKDURLRequest *)&v13 initWithOperation:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_encryptedAnonymousSharesToAdd, a4);
    v10 = objc_opt_new();
    encryptedAnonymousShareHashToAddByRequestID = v9->_encryptedAnonymousShareHashToAddByRequestID;
    v9->_encryptedAnonymousShareHashToAddByRequestID = v10;
  }

  return v9;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v15.receiver = self;
  v15.super_class = CKDAnonymousShareAddURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:v4];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_encryptedAnonymousSharesToAdd(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_allKeys(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v13, @"hashes");
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
  v52 = *MEMORY[0x277D85DE8];
  v46 = objc_opt_new();
  v5 = objc_msgSend_encryptedAnonymousSharesToAdd(self, v3, v4);
  v8 = objc_msgSend_allKeys(v5, v6, v7);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v8;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v47, v51, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v48;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        v17 = objc_msgSend_operationType(self, v11, v12);
        v19 = objc_msgSend_operationRequestWithType_(self, v18, v17);
        v20 = objc_opt_new();
        objc_msgSend_setAnonymousShareAddRequest_(v19, v21, v20);

        v24 = objc_msgSend_anonymousShareAddRequest(v19, v22, v23);
        objc_msgSend_setAnonymousShareTupleHash_(v24, v25, v16);
        v28 = objc_msgSend_encryptedAnonymousSharesToAdd(self, v26, v27);
        v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, v16);
        objc_msgSend_setEncryptedShareTuple_(v24, v31, v30);

        v34 = objc_msgSend_encryptedAnonymousShareHashToAddByRequestID(self, v32, v33);
        v37 = objc_msgSend_request(v19, v35, v36);
        v40 = objc_msgSend_operationUUID(v37, v38, v39);
        objc_msgSend_setObject_forKeyedSubscript_(v34, v41, v16, v40);

        objc_msgSend_addObject_(v46, v42, v19);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v47, v51, 16);
    }

    while (v13);
  }

  v43 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_encryptedAnonymousShareHashToAddByRequestID(self, v5, v6);
  v10 = objc_msgSend_response(v4, v8, v9);
  v13 = objc_msgSend_operationUUID(v10, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v7, v14, v13);

  v18 = objc_msgSend_anonymousShareSavedBlock(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_anonymousShareSavedBlock(self, v19, v20);
    v24 = objc_msgSend_result(v4, v22, v23);
    (v21)[2](v21, v15, v24);
  }

  return 0;
}

@end