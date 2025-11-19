@interface CRKIDSSendMessageOperation
- (CRKIDSSendMessageOperation)initWithIDSLocalPrimitives:(id)a3 message:(id)a4 destinationAddress:(id)a5 sourceAppleID:(id)a6 options:(id)a7;
- (void)cancel;
- (void)didSendMessageWithIdentifier:(id)a3 sendSuccess:(BOOL)a4 error:(id)a5;
- (void)main;
@end

@implementation CRKIDSSendMessageOperation

- (CRKIDSSendMessageOperation)initWithIDSLocalPrimitives:(id)a3 message:(id)a4 destinationAddress:(id)a5 sourceAppleID:(id)a6 options:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = CRKIDSSendMessageOperation;
  v18 = [(CRKIDSSendMessageOperation *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_IDSLocalPrimitives, a3);
    v20 = [v14 copy];
    message = v19->_message;
    v19->_message = v20;

    v22 = [v15 copy];
    destinationAddress = v19->_destinationAddress;
    v19->_destinationAddress = v22;

    v24 = [v16 copy];
    sourceAppleID = v19->_sourceAppleID;
    v19->_sourceAppleID = v24;

    v26 = [v17 copy];
    options = v19->_options;
    v19->_options = v26;
  }

  return v19;
}

- (void)cancel
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogASM_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Canceled", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = CRKIDSSendMessageOperation;
  [(CRKIDSSendMessageOperation *)&v7 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CRKIDSSendMessageOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__CRKIDSSendMessageOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) messageSendSubscription];
    [v2 cancel];

    v3 = *(a1 + 32);
    v4 = CATErrorWithCodeAndUserInfo();
    [v3 endOperationWithError:v4];
  }
}

- (void)main
{
  v37 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = _CRKLogASM_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v30 = v6;
      v31 = 2048;
      v32 = self;
      _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Creating listener validate message send success", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    v7 = [(CRKIDSSendMessageOperation *)self IDSLocalPrimitives];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __34__CRKIDSSendMessageOperation_main__block_invoke;
    v26[3] = &unk_278DC1230;
    objc_copyWeak(&v27, &location);
    v8 = [v7 subscribeToMessageSendsWithHandler:v26];
    [(CRKIDSSendMessageOperation *)self setMessageSendSubscription:v8];

    v9 = [(CRKIDSSendMessageOperation *)self messageSendSubscription];
    [v9 resume];

    v10 = [(CRKIDSSendMessageOperation *)self IDSLocalPrimitives];
    v11 = [(CRKIDSSendMessageOperation *)self message];
    v12 = [(CRKIDSSendMessageOperation *)self destinationAddress];
    v13 = [(CRKIDSSendMessageOperation *)self sourceAppleID];
    v14 = [(CRKIDSSendMessageOperation *)self options];
    v24 = 0;
    v25 = 0;
    v15 = [v10 sendMessage:v11 toAddress:v12 fromID:v13 options:v14 identifier:&v25 error:&v24];
    v16 = v25;
    v17 = v24;

    if (v15)
    {
      v18 = _CRKLogASM_3();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [(CRKIDSSendMessageOperation *)self destinationAddress];
        *buf = 138544130;
        v30 = v20;
        v31 = 2048;
        v32 = self;
        v33 = 2114;
        v34 = v21;
        v35 = 2114;
        v36 = v16;
        _os_log_impl(&dword_243550000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Sent message to %{public}@ and received identifier %{public}@", buf, 0x2Au);
      }

      [(CRKIDSSendMessageOperation *)self setMessageSendIdentifier:v16];
      v22 = objc_opt_new();
      [(CRKIDSSendMessageOperation *)self setInitialSendDate:v22];
    }

    else
    {
      v23 = [(CRKIDSSendMessageOperation *)self messageSendSubscription];
      [v23 cancel];

      [(CRKIDSSendMessageOperation *)self endOperationWithError:v17];
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {

    [(CRKIDSSendMessageOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

void __34__CRKIDSSendMessageOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didSendMessageWithIdentifier:v8 sendSuccess:a3 error:v7];
}

- (void)didSendMessageWithIdentifier:(id)a3 sendSuccess:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__CRKIDSSendMessageOperation_didSendMessageWithIdentifier_sendSuccess_error___block_invoke;
  v12[3] = &unk_278DC1258;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __77__CRKIDSSendMessageOperation_didSendMessageWithIdentifier_sendSuccess_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) messageSendIdentifier];
    v3 = [v2 isEqualToString:*(a1 + 40)];

    if (v3)
    {
      v4 = objc_opt_new();
      v5 = [*(a1 + 32) initialSendDate];
      [v4 timeIntervalSinceDate:v5];
      v7 = v6;

      v8 = _CRKLogASM_3();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v13 = [v11 destinationAddress];
        if (*(a1 + 56))
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v15 = v14;
        v17 = 138544642;
        v18 = v10;
        v19 = 2048;
        v20 = v11;
        v21 = 2114;
        v22 = v12;
        v23 = 2114;
        v24 = v13;
        v25 = 2114;
        v26 = v15;
        v27 = 2048;
        v28 = v7;
        _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Received message send status for message %{public}@ to %{public}@. Did succeed = %{public}@, duration = %.2f", &v17, 0x3Eu);
      }

      v16 = *(a1 + 32);
      if (*(a1 + 56))
      {
        [v16 endOperationWithResultObject:0];
      }

      else
      {
        [v16 endOperationWithError:*(a1 + 48)];
      }
    }
  }
}

@end