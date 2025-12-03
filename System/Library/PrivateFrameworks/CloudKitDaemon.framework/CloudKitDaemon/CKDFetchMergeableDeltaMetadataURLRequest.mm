@interface CKDFetchMergeableDeltaMetadataURLRequest
- (CKDFetchMergeableDeltaMetadataURLRequest)initWithOperation:(id)operation mergeableValueIDs:(id)ds continuationTokens:(id)tokens;
- (id)anonymousUserIDForHTTPHeader;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (id)zoneIDsToLock;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)fillOutRequestProperties:(id)properties;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchMergeableDeltaMetadataURLRequest

- (CKDFetchMergeableDeltaMetadataURLRequest)initWithOperation:(id)operation mergeableValueIDs:(id)ds continuationTokens:(id)tokens
{
  dsCopy = ds;
  tokensCopy = tokens;
  v18.receiver = self;
  v18.super_class = CKDFetchMergeableDeltaMetadataURLRequest;
  v11 = [(CKDURLRequest *)&v18 initWithOperation:operation];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mergeableValueIDs, ds);
    objc_storeStrong(&v12->_continuationTokens, tokens);
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
    mergeableValueIDByRequestID = v12->_mergeableValueIDByRequestID;
    v12->_mergeableValueIDByRequestID = v15;
  }

  return v12;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v15.receiver = self;
  v15.super_class = CKDFetchMergeableDeltaMetadataURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v15 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v5 = MEMORY[0x277CBEB98];
  v8 = objc_msgSend_mergeableValueIDs(self, v6, v7, v15.receiver, v15.super_class);
  v11 = objc_msgSend_ckEquivalencyProperties(v8, v9, v10);
  v13 = objc_msgSend_setWithArray_(v5, v12, v11);

  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v14, v13, @"mvIDs");
}

- (void)fillOutRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_msgSend_mergeableValueIDs(self, v5, v6);
  objc_msgSend_setFetchMergeableValueIDs_(propertiesCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDFetchMergeableDeltaMetadataURLRequest;
  [(CKDURLRequest *)&v9 fillOutRequestProperties:propertiesCopy];
}

- (id)zoneIDsToLock
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_mergeableValueIDs(self, v4, v5);
  v8 = objc_msgSend_CKCompactMap_(v6, v7, &unk_28385E420);
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
  v93 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = objc_msgSend_mergeableValueIDs(self, v5, v6);
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v88, v92, 16);
  if (v87)
  {
    v10 = *v89;
    p_superclass = &OBJC_METACLASS___CKCDPCodeServiceResponseAssetAuthorizationResponseHeaderInfo.superclass;
    while (2)
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v89 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v88 + 1) + 8 * i);
        v14 = objc_msgSend_operationType(self, v8, v9);
        v16 = objc_msgSend_operationRequestWithType_(self, v15, v14);
        v19 = objc_msgSend_mergeableValueIDByRequestID(self, v17, v18);
        v22 = objc_msgSend_request(v16, v20, v21);
        v25 = objc_msgSend_operationUUID(v22, v23, v24);
        objc_msgSend_setObject_forKeyedSubscript_(v19, v26, v13, v25);

        if (objc_msgSend_requiresCKAnonymousUserIDs(self, v27, v28))
        {
          v31 = objc_msgSend_zoneID(v13, v29, v30);
          v34 = objc_msgSend_anonymousCKUserID(v31, v32, v33);

          if (!v34)
          {
            v67 = objc_opt_new();
            v69 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v68, @"An anonymousCKUserID is required to fetch metadata for %@ when using anonymous to server share participants", v13);
            objc_msgSend_setObject_forKeyedSubscript_(v67, v70, v69, *MEMORY[0x277CCA450]);
            v73 = objc_msgSend_operation(self, v71, v72);
            v76 = objc_msgSend_topmostParentOperation(v73, v74, v75);

            v80 = objc_msgSend_operationID(v76, v77, v78);
            if (v80)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v67, v79, v80, *MEMORY[0x277CBBF60]);
            }

            v81 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v79, *MEMORY[0x277CBC120], 5015, v67);
            objc_msgSend_finishWithError_(self, v82, v81);

            v66 = 0;
            goto LABEL_17;
          }

          v86 = objc_msgSend_zoneID(v13, v35, v36);
          v39 = objc_msgSend_anonymousCKUserID(v86, v37, v38);
          v42 = objc_msgSend_CKDPIdentifier_User(v39, v40, v41);
          objc_msgSend_request(v16, v43, v44);
          v45 = v16;
          selfCopy = self;
          v47 = p_superclass;
          v48 = v10;
          v50 = v49 = v4;
          objc_msgSend_setAnonymousCKUserID_(v50, v51, v42);

          v4 = v49;
          v10 = v48;
          p_superclass = v47;
          self = selfCopy;
          v16 = v45;
        }

        v52 = objc_opt_new();
        v55 = objc_msgSend_translator(self, v53, v54);
        v57 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v55, v56, v13);
        objc_msgSend_setIdentifier_(v52, v58, v57);

        v61 = objc_msgSend_continuationTokens(self, v59, v60);
        v63 = objc_msgSend_objectForKeyedSubscript_(v61, v62, v13);

        if (v63)
        {
          objc_msgSend_setContinuation_(v52, v64, v63);
        }

        objc_msgSend_setMergeableDeltaMetadataRetrieveRequest_(v16, v64, v52);
        objc_msgSend_addObject_(v4, v65, v16);
      }

      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v88, v92, 16);
      if (v87)
      {
        continue;
      }

      break;
    }
  }

  v66 = v4;
LABEL_17:

  v83 = *MEMORY[0x277D85DE8];

  return v66;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v121 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_msgSend_mergeableValueIDByRequestID(self, v6, v7);
  v11 = objc_msgSend_response(objectCopy, v9, v10);
  v14 = objc_msgSend_operationUUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (!v16)
  {
    v103 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v103, v104, a2, self, @"CKDFetchMergeableDeltaMetadataURLRequest.m", 131, @"Expected non-nil value ID for response %@", objectCopy);
  }

  if (objc_msgSend_hasMergeableDeltaMetadataRetrieveResponse(objectCopy, v17, v18))
  {
    v21 = objc_msgSend_mergeableDeltaMetadataRetrieveResponse(objectCopy, v19, v20);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v86 = v22;
      v89 = objc_msgSend_requestUUID(self, v87, v88);
      v92 = objc_msgSend_metadatas(v21, v90, v91);
      v95 = objc_msgSend_count(v92, v93, v94);
      v98 = objc_msgSend_continuation(v21, v96, v97);
      *buf = 138544130;
      v114 = v89;
      v115 = 2112;
      v116 = v16;
      v117 = 2048;
      v118 = v95;
      v119 = 2112;
      v120 = v98;
      _os_log_debug_impl(&dword_22506F000, v86, OS_LOG_TYPE_DEBUG, "req: %{public}@, Received response for value %@ metadataCount=%ld continuation=%@", buf, 0x2Au);
    }

    v23 = objc_alloc(MEMORY[0x277CBEB18]);
    v26 = objc_msgSend_metadatasCount(v21, v24, v25);
    v28 = objc_msgSend_initWithCapacity_(v23, v27, v26);
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v31 = objc_msgSend_metadatas(v21, v29, v30);
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v108, v112, 16);
    if (v33)
    {
      v36 = v33;
      v105 = v21;
      v106 = objectCopy;
      v37 = *v109;
      while (2)
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v109 != v37)
          {
            objc_enumerationMutation(v31);
          }

          v39 = *(*(&v108 + 1) + 8 * i);
          v40 = objc_msgSend_translator(self, v34, v35);
          v107 = 0;
          v42 = objc_msgSend_mergeableDeltaMetadataFromPMetadata_mergeableValueID_error_(v40, v41, v39, v16, &v107);
          v43 = v107;

          if (v42)
          {
            v45 = v43 == 0;
          }

          else
          {
            v45 = 0;
          }

          if (!v45)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v21 = v105;
            objectCopy = v106;
            v47 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v114 = v43;
              _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Error parsing delta metadata: %@", buf, 0xCu);
            }

            goto LABEL_32;
          }

          objc_msgSend_addObject_(v28, v44, v42);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v108, v112, 16);
        if (v36)
        {
          continue;
        }

        break;
      }

      v43 = 0;
      v21 = v105;
      objectCopy = v106;
    }

    else
    {
      v43 = 0;
    }

LABEL_32:

    v52 = objc_msgSend_result(objectCopy, v48, v49);
    if (v43)
    {
      v53 = objc_opt_new();

      objc_msgSend_setCode_(v53, v54, 3);
      v55 = objc_opt_new();
      objc_msgSend_setError_(v53, v56, v55);

      v57 = objc_opt_new();
      v60 = objc_msgSend_error(v53, v58, v59);
      objc_msgSend_setClientError_(v60, v61, v57);

      v64 = objc_msgSend_error(v53, v62, v63);
      v67 = objc_msgSend_clientError(v64, v65, v66);
      objc_msgSend_setType_(v67, v68, 1);

      v71 = objc_msgSend_error(v53, v69, v70);
      objc_msgSend_setErrorKey_(v71, v72, @"Unable to parse delta metadata from server response");

      v75 = objc_msgSend_error(v53, v73, v74);
      objc_msgSend_setErrorDescription_(v75, v76, @"Unable to parse delta metadata");

      v52 = v53;
    }

    v77 = objc_msgSend_metadataFetchedBlock(self, v50, v51);

    if (v77)
    {
      v80 = objc_msgSend_metadataFetchedBlock(self, v78, v79);
      v83 = objc_msgSend_continuation(v21, v81, v82);
      (v80)[2](v80, v16, v28, v83, v52);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v99 = v46;
      v102 = objc_msgSend_requestUUID(self, v100, v101);
      *buf = 138412290;
      v114 = v102;
      _os_log_fault_impl(&dword_22506F000, v99, OS_LOG_TYPE_FAULT, "No mergeableDeltaMetadataRetrieveResponse for mergeableDeltaMetadataRetrieveRequest in request UUID %@", buf, 0xCu);
    }

    v43 = 0;
  }

  v84 = *MEMORY[0x277D85DE8];

  return v43;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v43 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
  {
    v35 = v6;
    v38 = objc_msgSend_requestUUID(self, v36, v37);
    v39 = 138543618;
    v40 = v38;
    v41 = 2112;
    v42 = failureCopy;
    _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "req: %{public}@, Node failure in list metadatas request: %@", &v39, 0x16u);
  }

  v9 = objc_msgSend_response(failureCopy, v7, v8);
  v12 = objc_msgSend_operationUUID(v9, v10, v11);

  if (!v12)
  {
    goto LABEL_9;
  }

  v15 = objc_msgSend_mergeableValueIDByRequestID(self, v13, v14);
  v18 = objc_msgSend_response(failureCopy, v16, v17);
  v21 = objc_msgSend_operationUUID(v18, v19, v20);
  v23 = objc_msgSend_objectForKeyedSubscript_(v15, v22, v21);

  if (v23)
  {
    v26 = objc_msgSend_metadataFetchedBlock(self, v24, v25);

    if (v26)
    {
      v29 = objc_msgSend_metadataFetchedBlock(self, v27, v28);
      v32 = objc_msgSend_result(failureCopy, v30, v31);
      (v29)[2](v29, v23, 0, 0, v32);
    }
  }

  else
  {
LABEL_9:
    if (*v5 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v39) = 0;
      _os_log_fault_impl(&dword_22506F000, v33, OS_LOG_TYPE_FAULT, "No value ID for list metadatas node failure response", &v39, 2u);
    }

    v23 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
}

@end