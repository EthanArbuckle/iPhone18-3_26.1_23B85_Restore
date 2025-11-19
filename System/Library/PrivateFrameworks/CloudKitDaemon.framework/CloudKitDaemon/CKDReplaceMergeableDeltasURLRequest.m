@interface CKDReplaceMergeableDeltasURLRequest
+ (id)requestOperationsForRequest:(id)a3 replaceDeltasRequests:(id)a4 ignoreMissingDeltas:(BOOL)a5 error:(id *)a6;
- (CKDReplaceMergeableDeltasURLRequest)initWithOperation:(id)a3 replaceDeltasRequests:(id)a4 ignoreMissingDeltas:(BOOL)a5;
- (id)anonymousUserIDForHTTPHeader;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)fillOutRequestProperties:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDReplaceMergeableDeltasURLRequest

- (CKDReplaceMergeableDeltasURLRequest)initWithOperation:(id)a3 replaceDeltasRequests:(id)a4 ignoreMissingDeltas:(BOOL)a5
{
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CKDReplaceMergeableDeltasURLRequest;
  v10 = [(CKDURLRequest *)&v17 initWithOperation:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_replaceDeltasRequests, a4);
    v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
    replacementRequestsByRequestID = v11->_replacementRequestsByRequestID;
    v11->_replacementRequestsByRequestID = v14;

    v11->_ignoreMissingDeltas = a5;
  }

  return v11;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v15.receiver = self;
  v15.super_class = CKDReplaceMergeableDeltasURLRequest;
  v4 = a3;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:v4];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_replaceDeltasRequests(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v13, @"requests");
}

- (void)fillOutRequestProperties:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_replaceDeltasRequests(self, v5, v6);
  v9 = objc_msgSend_CKCompactMap_(v7, v8, &unk_28385E460);

  objc_msgSend_setModifyMergeableValueIDs_(v4, v10, v9);
  objc_msgSend_setDeleteMergeableValueIDs_(v4, v11, v9);
  v12.receiver = self;
  v12.super_class = CKDReplaceMergeableDeltasURLRequest;
  [(CKDURLRequest *)&v12 fillOutRequestProperties:v4];
}

- (id)zoneIDsToLock
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_replaceDeltasRequests(self, v4, v5);
  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385E480);
  objc_msgSend_addObjectsFromArray_(v3, v9, v8);

  v12 = objc_msgSend_allObjects(v3, v10, v11);

  return v12;
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
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
  v3 = objc_opt_class();
  v6 = objc_msgSend_replaceDeltasRequests(self, v4, v5);
  v9 = objc_msgSend_ignoreMissingDeltas(self, v7, v8);
  v36 = 0;
  v11 = objc_msgSend_requestOperationsForRequest_replaceDeltasRequests_ignoreMissingDeltas_error_(v3, v10, self, v6, v9, &v36);
  v12 = v36;

  if (!v11)
  {
    objc_msgSend_finishWithError_(self, v13, v12);
  }

  if (objc_msgSend_count(v11, v13, v14))
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_replaceDeltasRequests(self, v15, v16);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v17);

      v22 = objc_msgSend_objectAtIndexedSubscript_(v11, v21, v17);
      v25 = objc_msgSend_replacementRequestsByRequestID(self, v23, v24);
      v28 = objc_msgSend_request(v22, v26, v27);
      v31 = objc_msgSend_operationUUID(v28, v29, v30);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v32, v20, v31);

      ++v17;
    }

    while (v17 < objc_msgSend_count(v11, v33, v34));
  }

  return v11;
}

+ (id)requestOperationsForRequest:(id)a3 replaceDeltasRequests:(id)a4 ignoreMissingDeltas:(BOOL)a5 error:(id *)a6
{
  v107 = a5;
  v124 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v9;
  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v116, v123, 16);
  if (!v108)
  {
    v81 = 0;
    goto LABEL_32;
  }

  v103 = a6;
  v105 = v12;
  v106 = *v117;
  while (2)
  {
    v15 = 0;
    do
    {
      if (*v117 != v106)
      {
        objc_enumerationMutation(obj);
      }

      v109 = v15;
      v16 = *(*(&v116 + 1) + 8 * v15);
      v17 = objc_msgSend_operationRequestWithType_(v8, v14, 313);
      v110 = v17;
      if (objc_msgSend_requiresCKAnonymousUserIDs(v8, v18, v19))
      {
        v22 = objc_msgSend_valueID(v16, v20, v21);
        v25 = objc_msgSend_zoneID(v22, v23, v24);
        v28 = objc_msgSend_anonymousCKUserID(v25, v26, v27);

        if (!v28)
        {
          v45 = objc_opt_new();
          v88 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v87, @"An anonymousCKUserID is required to replace deltas for %@ when using anonymous to server share participants", v16);
          objc_msgSend_setObject_forKeyedSubscript_(v45, v89, v88, *MEMORY[0x277CCA450]);
          v92 = objc_msgSend_operation(v8, v90, v91);
          v95 = objc_msgSend_topmostParentOperation(v92, v93, v94);
          v98 = objc_msgSend_operationID(v95, v96, v97);

          if (v98)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v45, v99, v98, *MEMORY[0x277CBBF60]);
          }

          v81 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v99, *MEMORY[0x277CBC120], 5015, v45);

          v85 = v88;
          v17 = v110;
LABEL_30:

          v12 = 0;
          goto LABEL_31;
        }

        v31 = objc_msgSend_valueID(v16, v29, v30);
        v34 = objc_msgSend_zoneID(v31, v32, v33);
        v37 = objc_msgSend_anonymousCKUserID(v34, v35, v36);
        v40 = objc_msgSend_CKDPIdentifier_User(v37, v38, v39);
        v43 = objc_msgSend_request(v17, v41, v42);
        objc_msgSend_setAnonymousCKUserID_(v43, v44, v40);
      }

      v45 = objc_opt_new();
      v48 = objc_msgSend_translator(v8, v46, v47);
      v51 = objc_msgSend_valueID(v16, v49, v50);
      v53 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v48, v52, v51);
      objc_msgSend_setIdentifier_(v45, v54, v53);

      v57 = objc_msgSend_deltaIdentifiersToReplace(v16, v55, v56);
      v60 = objc_msgSend_mutableCopy(v57, v58, v59);
      objc_msgSend_setDeltaIdentifiers_(v45, v61, v60);

      objc_msgSend_setIgnoreMissingDeltas_(v45, v62, v107);
      v65 = objc_msgSend_replacementDeltasContainNewData(v16, v63, v64);
      objc_msgSend_setContainsNewData_(v45, v66, v65);
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v69 = objc_msgSend_replacementDeltas(v16, v67, v68);
      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v112, v122, 16);
      if (v71)
      {
        v74 = v71;
        v75 = *v113;
LABEL_11:
        v76 = 0;
        while (1)
        {
          if (*v113 != v75)
          {
            objc_enumerationMutation(v69);
          }

          v77 = *(*(&v112 + 1) + 8 * v76);
          v78 = objc_msgSend_translator(v8, v72, v73);
          v111 = 0;
          v80 = objc_msgSend_pMergeableDeltaFromDelta_error_(v78, v79, v77, &v111);
          v81 = v111;

          if (!v80)
          {
            break;
          }

          objc_msgSend_addDeltas_(v45, v82, v80);

          if (v74 == ++v76)
          {
            v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v72, &v112, v122, 16);
            v17 = v110;
            if (v74)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }

        v17 = v110;
        if (!v81)
        {
          goto LABEL_19;
        }

        v85 = v105;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v86 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v121 = v81;
          _os_log_fault_impl(&dword_22506F000, v86, OS_LOG_TYPE_FAULT, "Error creating mergeable delta proto for replacement request: %@", buf, 0xCu);
        }

        goto LABEL_30;
      }

LABEL_17:

LABEL_19:
      objc_msgSend_setMergeableDeltaReplaceRequest_(v17, v83, v45);
      v12 = v105;
      objc_msgSend_addObject_(v105, v84, v17);

      v15 = v109 + 1;
    }

    while (v109 + 1 != v108);
    v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v116, v123, 16);
    if (v108)
    {
      continue;
    }

    break;
  }

  v81 = 0;
LABEL_31:
  a6 = v103;
LABEL_32:

  if (a6)
  {
    v100 = v81;
    *a6 = v81;
  }

  v101 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_replacementRequestsByRequestID(self, v6, v7);
  v11 = objc_msgSend_response(v5, v9, v10);
  v14 = objc_msgSend_operationUUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (!v16)
  {
    v43 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v43, v44, a2, self, @"CKDReplaceMergeableDeltasURLRequest.m", 176, @"Expected non-nil replacement request for response: %@", v5);
  }

  hasMergeableDeltaReplaceResponse = objc_msgSend_hasMergeableDeltaReplaceResponse(v5, v17, v18);
  v20 = *MEMORY[0x277CBC878];
  v21 = *MEMORY[0x277CBC880];
  if (hasMergeableDeltaReplaceResponse)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v20);
    }

    v22 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v35 = v22;
      v38 = objc_msgSend_requestUUID(self, v36, v37);
      *buf = 138543618;
      v46 = v38;
      v47 = 2112;
      v48 = v16;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "req: %{public}@, Received response for request %@", buf, 0x16u);
    }

    v25 = objc_msgSend_perReplacementCompletionBlock(self, v23, v24);

    if (v25)
    {
      v28 = objc_msgSend_perReplacementCompletionBlock(self, v26, v27);
      v31 = objc_msgSend_result(v5, v29, v30);
      (v28)[2](v28, v16, v31);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v20);
    }

    v32 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v39 = v32;
      v42 = objc_msgSend_requestUUID(self, v40, v41);
      *buf = 138412290;
      v46 = v42;
      _os_log_fault_impl(&dword_22506F000, v39, OS_LOG_TYPE_FAULT, "No mergeableDeltaReplaceResponse for mergeableDeltaReplaceRequest in request UUID %@", buf, 0xCu);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
  {
    v28 = v6;
    v31 = objc_msgSend_requestUUID(self, v29, v30);
    *buf = 138543618;
    v35 = v31;
    v36 = 2112;
    v37 = v5;
    _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "req: %{public}@, Node failure in replace deltas request: %@", buf, 0x16u);
  }

  v9 = objc_msgSend_replacementRequestsByRequestID(self, v7, v8);
  v12 = objc_msgSend_response(v5, v10, v11);
  v15 = objc_msgSend_operationUUID(v12, v13, v14);
  v17 = objc_msgSend_objectForKeyedSubscript_(v9, v16, v15);

  if (!v17)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CKDReplaceMergeableDeltasURLRequest.m", 194, @"Expected non-nil replacement request for response: %@", v5);
  }

  v20 = objc_msgSend_perReplacementCompletionBlock(self, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_perReplacementCompletionBlock(self, v21, v22);
    v26 = objc_msgSend_result(v5, v24, v25);
    (v23)[2](v23, v17, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end