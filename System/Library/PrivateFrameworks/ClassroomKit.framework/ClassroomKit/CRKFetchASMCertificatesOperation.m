@interface CRKFetchASMCertificatesOperation
- (CRKFetchASMCertificatesOperation)initWithIDSPrimitives:(id)a3 addressTranslator:(id)a4 controlGroupIdentifier:(id)a5 destinationAppleID:(id)a6 sourceAppleID:(id)a7 destinationDeviceIdentifier:(id)a8 sourceRole:(int64_t)a9 destinationRole:(int64_t)a10 requesterCertificate:(id)a11;
- (void)cancel;
- (void)didSendMessage:(id)a3;
- (void)main;
- (void)operationWillFinish;
- (void)processMessage:(id)a3 senderAppleID:(id)a4 requestIdentifier:(id)a5;
@end

@implementation CRKFetchASMCertificatesOperation

- (CRKFetchASMCertificatesOperation)initWithIDSPrimitives:(id)a3 addressTranslator:(id)a4 controlGroupIdentifier:(id)a5 destinationAppleID:(id)a6 sourceAppleID:(id)a7 destinationDeviceIdentifier:(id)a8 sourceRole:(int64_t)a9 destinationRole:(int64_t)a10 requesterCertificate:(id)a11
{
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a11;
  v36.receiver = self;
  v36.super_class = CRKFetchASMCertificatesOperation;
  v22 = [(CRKFetchASMCertificatesOperation *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_IDSPrimitives, a3);
    objc_storeStrong(&v23->_addressTranslator, a4);
    objc_storeStrong(&v23->_controlGroupIdentifier, a5);
    v24 = [v18 copy];
    destinationAppleID = v23->_destinationAppleID;
    v23->_destinationAppleID = v24;

    v26 = [v19 copy];
    sourceAppleID = v23->_sourceAppleID;
    v23->_sourceAppleID = v26;

    v28 = [v20 copy];
    destinationDeviceIdentifier = v23->_destinationDeviceIdentifier;
    v23->_destinationDeviceIdentifier = v28;

    v23->_sourceRole = a9;
    v23->_destinationRole = a10;
    v30 = [v21 copy];
    requesterCertificate = v23->_requesterCertificate;
    v23->_requesterCertificate = v30;
  }

  return v23;
}

- (void)operationWillFinish
{
  v2 = [(CRKFetchASMCertificatesOperation *)self messageReceiveSubscription];
  [v2 cancel];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKFetchASMCertificatesOperation;
  [(CRKFetchASMCertificatesOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CRKFetchASMCertificatesOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__CRKFetchASMCertificatesOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v3];
  }
}

- (void)main
{
  v28 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = _CRKLogASM_4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v25 = v6;
      v26 = 2048;
      v27 = self;
      _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Fetching ASM certificate", buf, 0x16u);
    }

    v7 = [(CRKFetchASMCertificatesOperation *)self controlGroupIdentifier];
    v8 = [(CRKFetchASMCertificatesOperation *)self destinationDeviceIdentifier];
    v9 = [(CRKFetchASMCertificatesOperation *)self sourceRole];
    v10 = [(CRKFetchASMCertificatesOperation *)self destinationRole];
    v11 = [(CRKFetchASMCertificatesOperation *)self requesterCertificate];
    v12 = [CRKRequestCertificatesIDSMessage messageWithControlGroupIdentifier:v7 destinationDeviceIdentifier:v8 sourceRole:v9 destinationRole:v10 requesterCertificate:v11];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __40__CRKFetchASMCertificatesOperation_main__block_invoke;
    v22[3] = &unk_278DC12A8;
    v22[4] = self;
    v13 = v12;
    v23 = v13;
    v14 = MEMORY[0x245D3AAD0](v22);
    v15 = _CRKLogASM_4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138543618;
      v25 = v17;
      v26 = 2048;
      v27 = self;
      _os_log_impl(&dword_243550000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Preparing to receive response before sending request", buf, 0x16u);
    }

    v18 = [(CRKFetchASMCertificatesOperation *)self IDSPrimitives];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __40__CRKFetchASMCertificatesOperation_main__block_invoke_5;
    v20[3] = &unk_278DC12F8;
    v20[4] = self;
    v21 = v13;
    v19 = v13;
    [v18 subscribeToMessagesWithHandler:v14 completion:v20];
  }

  else
  {

    [(CRKFetchASMCertificatesOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

void __40__CRKFetchASMCertificatesOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 requestIdentifier];
  [v4 processMessage:v7 senderAppleID:v6 requestIdentifier:v8];
}

void __40__CRKFetchASMCertificatesOperation_main__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__CRKFetchASMCertificatesOperation_main__block_invoke_2;
  v10[3] = &unk_278DC12D0;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __40__CRKFetchASMCertificatesOperation_main__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isExecuting])
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 32);

      [v2 endOperationWithError:?];
    }

    else
    {
      v3 = _CRKLogASM_4();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = *(a1 + 32);
        *buf = 138543618;
        v23 = v5;
        v24 = 2048;
        v25 = v6;
        _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Ready to receive certificate response", buf, 0x16u);
      }

      [*(a1 + 32) setMessageReceiveSubscription:*(a1 + 48)];
      v7 = [CRKIDSMessageCannon alloc];
      v8 = [*(a1 + 32) IDSPrimitives];
      v9 = [(CRKIDSMessageCannon *)v7 initWithIDSPrimitives:v8];

      v10 = _CRKLogASM_4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = *(a1 + 32);
        v14 = [v13 destinationAppleID];
        *buf = 138543874;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        v26 = 2114;
        v27 = v14;
        _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Sending cert request to (%{public}@)", buf, 0x20u);
      }

      v15 = [*(a1 + 32) addressTranslator];
      v16 = [*(a1 + 32) destinationAppleID];
      v17 = [v15 destinationAddressForAppleID:v16];

      v18 = objc_opt_new();
      [v18 setFireAndForget:1];
      v19 = *(a1 + 56);
      v20 = [*(a1 + 32) sourceAppleID];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __40__CRKFetchASMCertificatesOperation_main__block_invoke_8;
      v21[3] = &unk_278DC0F68;
      v21[4] = *(a1 + 32);
      [(CRKIDSMessageCannon *)v9 sendIDSMessage:v19 destinationAddress:v17 sourceAppleID:v20 options:v18 completion:v21];
    }
  }
}

- (void)didSendMessage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CRKFetchASMCertificatesOperation_didSendMessage___block_invoke;
  v6[3] = &unk_278DC1320;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __51__CRKFetchASMCertificatesOperation_didSendMessage___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  result = [*(a1 + 32) isExecuting];
  if (result)
  {
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    if (v5)
    {
      v6 = _CRKLogASM_4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __51__CRKFetchASMCertificatesOperation_didSendMessage___block_invoke_cold_1(v2, v4, v6);
      }

      return [*v2 endOperationWithError:*v4];
    }
  }

  return result;
}

- (void)processMessage:(id)a3 senderAppleID:(id)a4 requestIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__CRKFetchASMCertificatesOperation_processMessage_senderAppleID_requestIdentifier___block_invoke;
  v14[3] = &unk_278DC12D0;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __83__CRKFetchASMCertificatesOperation_processMessage_senderAppleID_requestIdentifier___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isExecuting])
  {
    v2 = _CRKLogASM_4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v26 = 138543874;
      v27 = v4;
      v28 = 2048;
      v29 = v5;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Processing message response from (%{public}@)", &v26, 0x20u);
    }

    v7 = [*(a1 + 32) destinationAppleID];
    v8 = [v7 isEqualToString:*(a1 + 40)];

    if (v8)
    {
      v9 = [CRKIDSMessagePayload instanceWithDictionary:*(a1 + 48)];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 messageMetadata];
        v12 = [v11 messageType];

        if (v12 == 2)
        {
          v13 = [v10 messageContent];
          v14 = [CRKRequestCertificatesResponseIDSMessage instanceWithDictionary:v13];

          if (v14)
          {
            v15 = [v14 requestIdentifier];
            v16 = [v15 isEqual:*(a1 + 56)];

            if (v16)
            {
              v17 = [v14 error];

              if (v17)
              {
                v18 = *(a1 + 32);
                v19 = [v14 error];
                [v18 endOperationWithError:v19];
              }

              else
              {
                v20 = _CRKLogASM_4();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = objc_opt_class();
                  v22 = NSStringFromClass(v21);
                  v23 = *(a1 + 32);
                  v24 = *(a1 + 40);
                  v26 = 138543874;
                  v27 = v22;
                  v28 = 2048;
                  v29 = v23;
                  v30 = 2114;
                  v31 = v24;
                  _os_log_impl(&dword_243550000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Valid cert response from (%{public}@)", &v26, 0x20u);
                }

                v25 = *(a1 + 32);
                v19 = [v14 certificateDataCollection];
                [v25 endOperationWithResultObject:v19];
              }
            }
          }
        }
      }
    }
  }
}

void __51__CRKFetchASMCertificatesOperation_didSendMessage___block_invoke_cold_1(uint64_t *a1, id *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *a1;
  v9 = [*a2 verboseDescription];
  v10 = 138543874;
  v11 = v7;
  v12 = 2048;
  v13 = v8;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&dword_243550000, a3, OS_LOG_TYPE_ERROR, "%{public}@ - %p: Failed to send cert request. Error = %{public}@", &v10, 0x20u);
}

@end