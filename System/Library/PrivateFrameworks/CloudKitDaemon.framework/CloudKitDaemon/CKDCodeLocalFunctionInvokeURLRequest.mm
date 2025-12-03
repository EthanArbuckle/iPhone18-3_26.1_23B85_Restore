@interface CKDCodeLocalFunctionInvokeURLRequest
- (BOOL)requestGETPreAuth;
- (CKDCodeLocalFunctionInvokeURLRequest)initWithOperation:(id)operation serviceName:(id)name functionName:(id)functionName serializedParameters:(id)parameters resolvedBaseURL:(id)l;
- (id)additionalHeaderValues;
- (id)requestBodyStream;
- (id)requestDidParseProtobufObject:(id)object;
- (int64_t)databaseScope;
- (int64_t)partitionType;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDCodeLocalFunctionInvokeURLRequest

- (CKDCodeLocalFunctionInvokeURLRequest)initWithOperation:(id)operation serviceName:(id)name functionName:(id)functionName serializedParameters:(id)parameters resolvedBaseURL:(id)l
{
  nameCopy = name;
  functionNameCopy = functionName;
  parametersCopy = parameters;
  lCopy = l;
  v20.receiver = self;
  v20.super_class = CKDCodeLocalFunctionInvokeURLRequest;
  v17 = [(CKDURLRequest *)&v20 initWithOperation:operation];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceName, name);
    objc_storeStrong(&v18->_functionName, functionName);
    objc_storeStrong(&v18->_serializedParameters, parameters);
    objc_storeStrong(&v18->_resolvedBaseURL, l);
  }

  return v18;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v13.receiver = self;
  v13.super_class = CKDCodeLocalFunctionInvokeURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v13 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v7 = objc_msgSend_serviceName(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v8, v7, @"serviceName");

  v11 = objc_msgSend_functionName(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v12, v11, @"functionName");
}

- (BOOL)requestGETPreAuth
{
  v3 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v6 = objc_msgSend_usePreauth(v3, v4, v5);

  return v6;
}

- (int64_t)partitionType
{
  v3 = objc_msgSend_databaseScope(self, a2, v2);
  if (v3 == 4 || v3 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)databaseScope
{
  v4 = objc_msgSend_operation(self, a2, v2);
  v7 = objc_msgSend_operationInfo(v4, v5, v6);

  if (objc_msgSend_enqueuedOnContainerService(v7, v8, v9))
  {
    databaseScope = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKDCodeLocalFunctionInvokeURLRequest;
    databaseScope = [(CKDURLRequest *)&v12 databaseScope];
  }

  return databaseScope;
}

- (id)additionalHeaderValues
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_serviceName(self, a2, v2);
  v8 = objc_msgSend_functionName(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"%@/%@", v5, v8);

  v15[0] = 0x28387C7C0;
  v15[1] = 0x28387C500;
  v16[0] = v10;
  v16[1] = @"application/protobuf";
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v16, v15, 2);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)requestBodyStream
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_functionName(self, v5, v6);
  objc_msgSend_setFunctionName_(v4, v8, v7);

  v11 = objc_msgSend_serializedParameters(self, v9, v10);
  objc_msgSend_setSerializedParameters_(v4, v12, v11);

  objc_msgSend_setSerializationFormat_(v4, v13, 1);
  v16 = objc_msgSend_container(self, v14, v15);
  v17 = objc_opt_new();
  if (objc_msgSend_allowsAuthedAccount(self, v18, v19) && (objc_msgSend_sendRequestAnonymously(self, v20, v21) & 1) == 0)
  {
    v22 = objc_msgSend_containerScopedUserID(v16, v20, v21);
    objc_msgSend_setUserId_(v17, v23, v22);
  }

  v24 = objc_msgSend_containerID(v16, v20, v21);
  v27 = objc_msgSend_containerIdentifier(v24, v25, v26);
  objc_msgSend_setContainerName_(v17, v28, v27);

  v31 = objc_msgSend_containerID(v16, v29, v30);
  v34 = objc_msgSend_environment(v31, v32, v33);

  objc_msgSend_setDatabaseEnvironment_(v17, v35, v34 == 1);
  v38 = objc_msgSend_hardwareID(v16, v36, v37);
  objc_msgSend_setDeviceId_(v17, v39, v38);

  v42 = objc_msgSend_databaseScope(self, v40, v41);
  if (v42 > 2)
  {
    if (v42 != 3)
    {
      if (v42 == 4)
      {
        objc_msgSend_setDatabaseType_(v17, v43, 3);
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    objc_msgSend_setDatabaseType_(v17, v43, 2);
  }

  else
  {
    if (v42 != 1)
    {
      if (v42 == 2)
      {
        objc_msgSend_setDatabaseType_(v17, v43, 0);
        goto LABEL_14;
      }

LABEL_11:
      v45 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v43, v44);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v45, v46, a2, self, @"CKDCodeLocalFunctionInvokeURLRequest.m", 127, @"Invalid database environment for local code request");

      goto LABEL_14;
    }

    objc_msgSend_setDatabaseType_(v17, v43, 1);
  }

LABEL_14:
  v47 = objc_opt_new();
  v50 = objc_msgSend_operation(self, v48, v49);
  v53 = objc_msgSend_operationID(v50, v51, v52);
  objc_msgSend_setOperationId_(v47, v54, v53);

  v57 = objc_msgSend_operationGroupID(v50, v55, v56);
  objc_msgSend_setOperationGroupId_(v47, v58, v57);

  v61 = objc_msgSend_operationGroupName(v50, v59, v60);
  objc_msgSend_setOperationGroupName_(v47, v62, v61);

  v65 = objc_msgSend_operationGroupQuantityNumber(v50, v63, v64);

  if (v65)
  {
    v68 = objc_msgSend_operationGroupQuantityNumber(v50, v66, v67);
    v71 = objc_msgSend_intValue(v68, v69, v70);
    objc_msgSend_setOperationGroupQuantity_(v47, v72, v71);
  }

  objc_msgSend_setOperationGroup_(v17, v66, v47);
  objc_msgSend_setRequestContext_(v4, v73, v17);
  v76 = objc_msgSend_data(v4, v74, v75);
  v79 = objc_msgSend_shared(CKDTrafficLogger, v77, v78);
  v82 = objc_msgSend_requestUUID(self, v80, v81);
  objc_msgSend_logPartialRequestObjectDataWithRequestUUID_objectData_completionHandler_(v79, v83, v82, v76, &unk_28385E3C0);

  v85 = objc_msgSend_inputStreamWithData_(MEMORY[0x277CBEAE0], v84, v76);

  return v85;
}

- (id)requestDidParseProtobufObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_serializedResultsCallback(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_serializedResultsCallback(self, v8, v9);
    v13 = objc_msgSend_serializedResult(objectCopy, v11, v12);
    v16 = objc_msgSend_error(objectCopy, v14, v15);
    (v10)[2](v10, v13, v16);
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  v4 = objc_msgSend_serializedResultsCallback(self, a2, failure);

  if (v4)
  {
    v10 = objc_opt_new();
    objc_msgSend_setCode_(v10, v5, 3);
    objc_msgSend_setMessage_(v10, v6, @"Failed to parse node");
    v9 = objc_msgSend_serializedResultsCallback(self, v7, v8);
    (v9)[2](v9, 0, v10);
  }
}

@end