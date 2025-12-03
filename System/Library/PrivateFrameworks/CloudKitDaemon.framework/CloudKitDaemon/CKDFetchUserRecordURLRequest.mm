@interface CKDFetchUserRecordURLRequest
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
@end

@implementation CKDFetchUserRecordURLRequest

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v3.receiver = self;
  v3.super_class = CKDFetchUserRecordURLRequest;
  [(CKDURLRequest *)&v3 fillOutEquivalencyPropertiesBuilder:builder];
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
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setUserRetrieveRequest_(v6, v8, v7);

  v13[0] = v6;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 1);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v55 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objc_msgSend_hasUserRetrieveResponse(objectCopy, v5, v6) && (objc_msgSend_userRetrieveResponse(objectCopy, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_user(v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v9, v12))
  {
    v15 = objc_msgSend_translator(self, v13, v14);
    v52 = 0;
    v17 = objc_msgSend_recordFromPRecord_error_(v15, v16, v12, &v52);
    v18 = v52;
    userRecord = self->_userRecord;
    self->_userRecord = v17;

    if (!self->_userRecord)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v18;
        _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Invalid user record response from server: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v23 = self->_userRecord;
    self->_userRecord = 0;

    v12 = 0;
    v18 = 0;
  }

  if (self->_userRecord)
  {
    v24 = objc_msgSend_fakeResponseOperationResultByItemID(self, v20, v21);

    if (v24)
    {
      v25 = objc_msgSend_fakeResponseOperationResultByItemID(self, v20, v21);
      v28 = objc_msgSend_allValues(v25, v26, v27);
      v31 = objc_msgSend_firstObject(v28, v29, v30);

      if (v31)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v32 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
        {
          v48 = v32;
          v51 = objc_msgSend_requestUUID(self, v49, v50);
          *buf = 138543362;
          v54 = v51;
          _os_log_error_impl(&dword_22506F000, v48, OS_LOG_TYPE_ERROR, "req: %{public}@, Inlining fake response operation result", buf, 0xCu);
        }

        objc_msgSend_setResult_(objectCopy, v33, v31);
        v34 = self->_userRecord;
        self->_userRecord = 0;
      }
    }
  }

  v35 = objc_msgSend_recordFetchedBlock(self, v20, v21);

  if (v35)
  {
    v38 = objc_msgSend_recordFetchedBlock(self, v36, v37);
    v39 = self->_userRecord;
    v42 = objc_msgSend_recordID(v39, v40, v41);
    v45 = objc_msgSend_result(objectCopy, v43, v44);
    (v38)[2](v38, v39, v42, v45);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v18;
}

@end