@interface CKDFetchUserQuotaURLRequest
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDFetchUserQuotaURLRequest

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKDFetchUserQuotaURLRequest;
  [(CKDURLRequest *)&v3 fillOutEquivalencyPropertiesBuilder:a3];
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
  objc_msgSend_setUserAvailableQuotaRequest_(v6, v8, v7);

  v13[0] = v6;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 1);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasUserAvailableQuotaResponse(v4, v5, v6))
  {
    v9 = objc_msgSend_userAvailableQuotaResponse(v4, v7, v8);
    v12 = objc_msgSend_storageAvailableBytes(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_quotaFetchedBlock(self, v7, v8);

  if (v13)
  {
    v16 = objc_msgSend_quotaFetchedBlock(self, v14, v15);
    v19 = objc_msgSend_result(v4, v17, v18);
    (v16)[2](v16, v12, v19);
  }

  return 0;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v13 = a3;
  v6 = objc_msgSend_quotaFetchedBlock(self, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_quotaFetchedBlock(self, v7, v8);
    v12 = objc_msgSend_result(v13, v10, v11);
    (v9)[2](v9, 0, v12);
  }
}

@end