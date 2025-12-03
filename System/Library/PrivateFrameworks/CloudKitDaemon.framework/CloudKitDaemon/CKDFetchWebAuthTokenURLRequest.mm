@interface CKDFetchWebAuthTokenURLRequest
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)object;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)builder;
- (void)requestDidParseNodeFailure:(id)failure;
@end

@implementation CKDFetchWebAuthTokenURLRequest

- (void)fillOutEquivalencyPropertiesBuilder:(id)builder
{
  v9.receiver = self;
  v9.super_class = CKDFetchWebAuthTokenURLRequest;
  builderCopy = builder;
  [(CKDURLRequest *)&v9 fillOutEquivalencyPropertiesBuilder:builderCopy];
  v7 = objc_msgSend_APIToken(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setObject_forKeyedSubscript_(builderCopy, v8, v7, @"APIToken");
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
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationType(self, a2, v2);
  v6 = objc_msgSend_operationRequestWithType_(self, v5, v4);
  v7 = objc_opt_new();
  objc_msgSend_setWebAuthTokenRetrieveRequest_(v6, v8, v7);

  v11 = objc_msgSend_APIToken(self, v9, v10);
  v14 = objc_msgSend_length(v11, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_APIToken(self, v15, v16);
    v20 = objc_msgSend_webAuthTokenRetrieveRequest(v6, v18, v19);
    objc_msgSend_setApiToken_(v20, v21, v17);
  }

  v25[0] = v6;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v25, 1);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)requestDidParseProtobufObject:(id)object
{
  objectCopy = object;
  if (objc_msgSend_hasWebAuthTokenRetrieveResponse(objectCopy, v5, v6))
  {
    v9 = objc_msgSend_webAuthTokenRetrieveResponse(objectCopy, v7, v8);
    v12 = objc_msgSend_token(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_tokenFetchedBlock(self, v7, v8);

  if (v13)
  {
    v16 = objc_msgSend_tokenFetchedBlock(self, v14, v15);
    v19 = objc_msgSend_result(objectCopy, v17, v18);
    (v16)[2](v16, v12, v19);
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)failure
{
  failureCopy = failure;
  v6 = objc_msgSend_tokenFetchedBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_tokenFetchedBlock(self, v7, v8);
    v12 = objc_msgSend_result(failureCopy, v10, v11);
    (v9)[2](v9, 0, v12);
  }
}

@end