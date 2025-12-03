@interface CKDCodeFunctionInvokeURLRequest
- (BOOL)requestGETPreAuth;
- (CKDCodeFunctionInvokeURLRequest)initWithOperation:(id)operation serviceName:(id)name functionName:(id)functionName serializedParameters:(id)parameters attestationEntropy:(id)entropy pccWrappedInvocationKeys:(id)keys trustedTargetWrappedInvocationKey:(id)key;
- (id)additionalHeaderValues;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (int64_t)databaseScope;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDCodeFunctionInvokeURLRequest

- (CKDCodeFunctionInvokeURLRequest)initWithOperation:(id)operation serviceName:(id)name functionName:(id)functionName serializedParameters:(id)parameters attestationEntropy:(id)entropy pccWrappedInvocationKeys:(id)keys trustedTargetWrappedInvocationKey:(id)key
{
  nameCopy = name;
  functionNameCopy = functionName;
  parametersCopy = parameters;
  entropyCopy = entropy;
  keysCopy = keys;
  keyCopy = key;
  v25.receiver = self;
  v25.super_class = CKDCodeFunctionInvokeURLRequest;
  v18 = [(CKDURLRequest *)&v25 initWithOperation:operation];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_serviceName, name);
    objc_storeStrong(&v19->_functionName, functionName);
    objc_storeStrong(&v19->_serializedParameters, parameters);
    objc_storeStrong(&v19->_pccWrappedInvocationKeys, keys);
    objc_storeStrong(&v19->_trustedTargetWrappedInvocationKey, key);
    objc_storeStrong(&v19->_attestationEntropy, entropy);
  }

  return v19;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v13.receiver = self;
  v13.super_class = CKDCodeFunctionInvokeURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v13 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v7 = objc_msgSend_serviceName(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v8, v7, @"serviceName");

  v11 = objc_msgSend_functionName(self, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v12, v11, @"functionName");
}

- (id)additionalHeaderValues
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_serviceName(self, a2, v2);
  v8 = objc_msgSend_functionName(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"%@/%@", v5, v8);

  v15 = 0x28387C7C0;
  v16[0] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v16, &v15, 1);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
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
    v12.super_class = CKDCodeFunctionInvokeURLRequest;
    databaseScope = [(CKDURLRequest *)&v12 databaseScope];
  }

  return databaseScope;
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)requestGETPreAuth
{
  v3 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v6 = objc_msgSend_usePreauth(v3, v4, v5);

  return v6;
}

- (id)generateRequestOperations
{
  v80[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = objc_msgSend_serviceName(self, v4, v5);
  objc_msgSend_setServiceName_(v3, v7, v6);

  v10 = objc_msgSend_functionName(self, v8, v9);
  objc_msgSend_setFunctionName_(v3, v11, v10);

  v14 = objc_msgSend_serializedParameters(self, v12, v13);
  objc_msgSend_setSerializedParameters_(v3, v15, v14);

  v18 = objc_msgSend_pccWrappedInvocationKeys(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_pccWrappedInvocationKeys(self, v19, v20);
    v23 = objc_msgSend_CKMap_(v21, v22, &unk_28385E3A0);

    v24 = objc_opt_new();
    v27 = objc_msgSend_mutableCopy(v23, v25, v26);
    objc_msgSend_setCryptoSessions_(v24, v28, v27);

    objc_msgSend_setProtectedCloudComputeMetadata_(v3, v29, v24);
  }

  v30 = objc_msgSend_attestationEntropy(self, v19, v20);

  if (v30)
  {
    v33 = objc_alloc_init(CKDPCodeFunctionInvokeRequestAttestationRequest);
    v36 = objc_msgSend_attestationEntropy(self, v34, v35);
    objc_msgSend_setEntropy_(v33, v37, v36);

    objc_msgSend_setAttestationRequest_(v3, v38, v33);
  }

  v39 = objc_msgSend_trustedTargetWrappedInvocationKey(self, v31, v32);

  if (v39)
  {
    v42 = objc_opt_new();
    v45 = objc_msgSend_trustedTargetWrappedInvocationKey(self, v43, v44);
    v48 = objc_msgSend_wrappedKey(v45, v46, v47);
    objc_msgSend_setEncryptedInvocationKey_(v42, v49, v48);

    v52 = objc_msgSend_trustedTargetWrappedInvocationKey(self, v50, v51);
    v55 = objc_msgSend_publicKey(v52, v53, v54);
    v58 = objc_msgSend_protectionSource(v55, v56, v57);
    objc_msgSend_setProtectionSource_(v42, v59, v58);

    v62 = objc_msgSend_trustedTargetWrappedInvocationKey(self, v60, v61);
    v65 = objc_msgSend_publicKey(v62, v63, v64);
    v68 = objc_msgSend_version(v65, v66, v67);
    objc_msgSend_setKeyVersion_(v42, v69, v68);

    objc_msgSend_setScheme_(v42, v70, 1);
    objc_msgSend_setTrustedTargetCryptoMetadata_(v3, v71, v42);
  }

  v72 = objc_msgSend_operationType(self, v40, v41);
  v74 = objc_msgSend_operationRequestWithType_(self, v73, v72);
  objc_msgSend_setFunctionInvokeRequest_(v74, v75, v3);
  v80[0] = v74;
  v77 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v76, v80, 1);

  v78 = *MEMORY[0x277D85DE8];

  return v77;
}

- (id)requestDidParseProtobufObject:(id)object
{
  v53 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objc_msgSend_fakeResponseOperationResultByItemID(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_fakeResponseOperationResultByItemID(self, v8, v9);
    v13 = objc_msgSend_functionName(self, v11, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);

    if (v15)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
      {
        v42 = v16;
        v45 = objc_msgSend_requestUUID(self, v43, v44);
        v48 = objc_msgSend_functionName(self, v46, v47);
        v49 = 138543618;
        v50 = v45;
        v51 = 2114;
        v52 = v48;
        _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "req: %{public}@, Inlining fake response operation result for function %{public}@", &v49, 0x16u);
      }

      objc_msgSend_setResult_(objectCopy, v17, v15);
    }
  }

  if (objc_msgSend_hasFunctionInvokeResponse(objectCopy, v8, v9))
  {
    v20 = objc_msgSend_functionInvokeResponse(objectCopy, v18, v19);
    if (objc_msgSend_hasAttestationResponse(v20, v21, v22))
    {
      v25 = objc_alloc_init(MEMORY[0x277D43178]);
      v28 = objc_msgSend_attestationResponse(v20, v26, v27);
      objc_msgSend_writeTo_(v28, v29, v25);

      v32 = objc_msgSend_data(v25, v30, v31);
    }

    else
    {
      v32 = objc_msgSend_serializedResult(v20, v23, v24);
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_msgSend_serializedResultsCallback(self, v18, v19);

  if (v33)
  {
    v36 = objc_msgSend_serializedResultsCallback(self, v34, v35);
    v39 = objc_msgSend_result(objectCopy, v37, v38);
    (v36)[2](v36, v32, v39);
  }

  v40 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_serializedResultsCallback(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_serializedResultsCallback(self, v7, v8);
    v12 = objc_msgSend_result(failureCopy, v10, v11);
    (v9)[2](v9, 0, v12);
  }
}

@end