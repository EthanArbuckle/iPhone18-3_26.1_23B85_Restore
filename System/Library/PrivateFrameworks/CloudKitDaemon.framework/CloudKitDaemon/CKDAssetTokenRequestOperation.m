@interface CKDAssetTokenRequestOperation
- (CKDAssetTokenRequestOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (void)main;
@end

@implementation CKDAssetTokenRequestOperation

- (CKDAssetTokenRequestOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CKDAssetTokenRequestOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_assetTokenRequest(v6, v7, v8);
    assetTokenRequest = v9->_assetTokenRequest;
    v9->_assetTokenRequest = v10;
  }

  return v9;
}

- (void)main
{
  v3 = [CKDFetchContentAuthTokensForPutURLRequest alloc];
  v6 = objc_msgSend_assetTokenRequest(self, v4, v5);
  v9 = objc_msgSend_protocolHeaders(CKDMMCS, v7, v8);
  v11 = objc_msgSend_initWithOperation_assetTokenRequest_headers_(v3, v10, self, v6, v9);

  objc_initWeak(&location, self);
  objc_initWeak(&from, v11);
  v14 = objc_msgSend_useEncryption(self, v12, v13);
  objc_msgSend_setUseEncryption_(v11, v15, v14);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_2251A5EE0;
  v25 = &unk_278548748;
  objc_copyWeak(&v26, &location);
  objc_copyWeak(&v27, &from);
  objc_msgSend_setCompletionBlock_(v11, v16, &v22);
  objc_msgSend_setRequest_(self, v17, v11, v22, v23, v24, v25);
  v20 = objc_msgSend_container(self, v18, v19);
  objc_msgSend_performRequest_(v20, v21, v11);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

@end