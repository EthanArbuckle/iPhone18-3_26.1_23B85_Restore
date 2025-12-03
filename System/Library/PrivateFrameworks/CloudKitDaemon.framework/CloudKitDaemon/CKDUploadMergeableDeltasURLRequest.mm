@interface CKDUploadMergeableDeltasURLRequest
- (CKDUploadMergeableDeltasURLRequest)initWithOperation:(id)operation deltas:(id)deltas replacementRequests:(id)requests;
- (id)anonymousUserIDForHTTPHeader;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDUploadMergeableDeltasURLRequest

- (CKDUploadMergeableDeltasURLRequest)initWithOperation:(id)operation deltas:(id)deltas replacementRequests:(id)requests
{
  deltasCopy = deltas;
  requestsCopy = requests;
  v28.receiver = self;
  v28.super_class = CKDUploadMergeableDeltasURLRequest;
  v12 = [(CKDURLRequest *)&v28 initWithOperation:operation];
  if (v12)
  {
    v13 = objc_msgSend_copy(deltasCopy, v10, v11);
    deltas = v12->_deltas;
    v12->_deltas = v13;

    v17 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
    deltasByRequestID = v12->_deltasByRequestID;
    v12->_deltasByRequestID = v17;

    v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v19, v20);
    replacementRequestsByRequestID = v12->_replacementRequestsByRequestID;
    v12->_replacementRequestsByRequestID = v21;

    v25 = objc_msgSend_copy(requestsCopy, v23, v24);
    replacementRequests = v12->_replacementRequests;
    v12->_replacementRequests = v25;
  }

  return v12;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v15.receiver = self;
  v15.super_class = CKDUploadMergeableDeltasURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_replacementRequests(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"requests");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_replacementRequests(self, v5, v6);
  v9 = objc_msgSend_CKCompactMap_(v7, v8, &unk_28385E4A0);

  objc_msgSend_setModifyMergeableValueIDs_(propertiesCopy, v10, v9);
  v11.receiver = self;
  v11.super_class = CKDUploadMergeableDeltasURLRequest;
  [(CKDURLRequest *)&v11 fillOutRequestProperties:propertiesCopy];
}

- (id)zoneIDsToLock
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_deltas(self, v4, v5);
  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385E4C0);
  objc_msgSend_addObjectsFromArray_(v3, v9, v8);

  v12 = objc_msgSend_allObjects(v3, v10, v11);

  return v12;
}

- (id)requestOperationClasses
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, v16, 1);
  v7 = objc_msgSend_replacementRequests(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    v11 = objc_opt_class();
    v13 = objc_msgSend_arrayByAddingObject_(v4, v12, v11);

    v4 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)anonymousUserIDForHTTPHeader
{
  v3 = objc_msgSend_zoneIDsToLock(self, a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);
  v9 = objc_msgSend_anonymousCKUserID(v6, v7, v8);

  return v9;
}

- (id)generateRequestOperations
{
  v55 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_2250741CC;
  v51 = sub_225073664;
  v52 = 0;
  v4 = objc_msgSend_deltas(self, a2, v2);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_2253C4E24;
  v46[3] = &unk_27854D430;
  v46[4] = self;
  v46[5] = &v47;
  v6 = objc_msgSend_CKCompactMap_(v4, v5, v46);
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);

  if (v48[5])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v43 = v48[5];
      *buf = 138412290;
      v54 = v43;
      _os_log_fault_impl(&dword_22506F000, v12, OS_LOG_TYPE_FAULT, "Failed to generate requestOperations for MergeableDeltaSaveRequest: %@", buf, 0xCu);
    }

    objc_msgSend_finishWithError_(self, v13, v48[5]);
    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend_replacementRequests(self, v10, v11);
    v16 = (v48 + 5);
    obj = v48[5];
    v18 = objc_msgSend_requestOperationsForRequest_replaceDeltasRequests_ignoreMissingDeltas_error_(CKDReplaceMergeableDeltasURLRequest, v17, self, v15, 1, &obj);
    objc_storeStrong(v16, obj);

    if (v18 && !v48[5])
    {
      for (i = 0; i < objc_msgSend_count(v18, v19, v20); ++i)
      {
        v25 = objc_msgSend_objectAtIndexedSubscript_(v18, v24, i);
        v28 = objc_msgSend_replacementRequests(self, v26, v27);
        v30 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, i);
        v33 = objc_msgSend_replacementRequestsByRequestID(self, v31, v32);
        v36 = objc_msgSend_request(v25, v34, v35);
        v39 = objc_msgSend_operationUUID(v36, v37, v38);
        objc_msgSend_setObject_forKeyedSubscript_(v33, v40, v30, v39);
      }

      objc_msgSend_addObjectsFromArray_(v9, v24, v18);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        v44 = v48[5];
        *buf = 138412290;
        v54 = v44;
        _os_log_fault_impl(&dword_22506F000, v21, OS_LOG_TYPE_FAULT, "Failed to create mergeable delta proto for replacement request: %@", buf, 0xCu);
      }

      objc_msgSend_finishWithError_(self, v22, v48[5]);
      v9 = 0;
    }

    v9 = v9;

    v14 = v9;
  }

  _Block_object_dispose(&v47, 8);
  v41 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)requestDidParseProtobufObject:(id)object
{
  objectCopy = object;
  if (objc_msgSend_hasMergeableDeltaSaveResponse(objectCopy, v6, v7))
  {
    v10 = objc_msgSend_deltasByRequestID(self, v8, v9);
    v13 = objc_msgSend_response(objectCopy, v11, v12);
    v16 = objc_msgSend_operationUUID(v13, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v10, v17, v16);

    if (!v18)
    {
      v45 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v19, v20);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v45, v46, a2, self, @"CKDUploadMergeableDeltasURLRequest.m", 164, @"Expected non-nil delta for response %@", objectCopy);
    }

    v21 = objc_msgSend_perDeltaCompletionBlock(self, v19, v20);

    if (!v21)
    {
      goto LABEL_12;
    }

    v24 = objc_msgSend_perDeltaCompletionBlock(self, v22, v23);
LABEL_11:
    v42 = v24;
    v43 = objc_msgSend_result(objectCopy, v25, v26);
    (v42)[2](v42, v18, v43);

LABEL_12:
    goto LABEL_13;
  }

  if (objc_msgSend_hasMergeableDeltaReplaceResponse(objectCopy, v8, v9))
  {
    v29 = objc_msgSend_replacementRequestsByRequestID(self, v27, v28);
    v32 = objc_msgSend_response(objectCopy, v30, v31);
    v35 = objc_msgSend_operationUUID(v32, v33, v34);
    v18 = objc_msgSend_objectForKeyedSubscript_(v29, v36, v35);

    if (!v18)
    {
      v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v37, v38);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDUploadMergeableDeltasURLRequest.m", 170, @"Expected non-nil replacement request for response %@", objectCopy);
    }

    v39 = objc_msgSend_perReplaceDeltasRequestCompletionBlock(self, v37, v38);

    if (!v39)
    {
      goto LABEL_12;
    }

    v24 = objc_msgSend_perReplaceDeltasRequestCompletionBlock(self, v40, v41);
    goto LABEL_11;
  }

LABEL_13:

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v51 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v43 = v5;
    v46 = objc_msgSend_requestUUID(self, v44, v45);
    v47 = 138412546;
    v48 = v46;
    v49 = 2112;
    v50 = failureCopy;
    _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "Node failure in upload deltas request %@: %@", &v47, 0x16u);
  }

  v8 = objc_msgSend_deltasByRequestID(self, v6, v7);
  v11 = objc_msgSend_response(failureCopy, v9, v10);
  v14 = objc_msgSend_operationUUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (v16)
  {
    v19 = objc_msgSend_perDeltaCompletionBlock(self, v17, v18);

    if (v19)
    {
      v20 = objc_msgSend_perDeltaCompletionBlock(self, v17, v18);
      v23 = objc_msgSend_result(failureCopy, v21, v22);
      (v20)[2](v20, v16, v23);
    }
  }

  v24 = objc_msgSend_replacementRequestsByRequestID(self, v17, v18);
  v27 = objc_msgSend_response(failureCopy, v25, v26);
  v30 = objc_msgSend_operationUUID(v27, v28, v29);
  v32 = objc_msgSend_objectForKeyedSubscript_(v24, v31, v30);

  if (v32)
  {
    v35 = objc_msgSend_perReplaceDeltasRequestCompletionBlock(self, v33, v34);

    if (v35)
    {
      v38 = objc_msgSend_perReplaceDeltasRequestCompletionBlock(self, v36, v37);
      v41 = objc_msgSend_result(failureCopy, v39, v40);
      (v38)[2](v38, v32, v41);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

@end