@interface CRKIDSWaitAndSendIDSMessageOperation
- (CRKIDSWaitAndSendIDSMessageOperation)initWithIDSLocalPrimitives:(id)a3 IDSReadinessEvaluator:(id)a4 message:(id)a5 destinationAddress:(id)a6 sourceAppleID:(id)a7 options:(id)a8;
- (void)cancel;
- (void)evaluateReadinessOperationDidFinish:(id)a3;
- (void)main;
- (void)run;
- (void)sendMessage;
- (void)sendMessageOperationDidFinish:(id)a3;
@end

@implementation CRKIDSWaitAndSendIDSMessageOperation

- (CRKIDSWaitAndSendIDSMessageOperation)initWithIDSLocalPrimitives:(id)a3 IDSReadinessEvaluator:(id)a4 message:(id)a5 destinationAddress:(id)a6 sourceAppleID:(id)a7 options:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v32.receiver = self;
  v32.super_class = CRKIDSWaitAndSendIDSMessageOperation;
  v21 = [(CRKIDSWaitAndSendIDSMessageOperation *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_IDSLocalPrimitives, a3);
    objc_storeStrong(&v22->_readinessEvaluator, a4);
    v23 = [v17 copy];
    message = v22->_message;
    v22->_message = v23;

    v25 = [v18 copy];
    destinationAddress = v22->_destinationAddress;
    v22->_destinationAddress = v25;

    v27 = [v19 copy];
    sourceAppleID = v22->_sourceAppleID;
    v22->_sourceAppleID = v27;

    v29 = [v20 copy];
    options = v22->_options;
    v22->_options = v29;
  }

  return v22;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKIDSWaitAndSendIDSMessageOperation;
  [(CRKIDSWaitAndSendIDSMessageOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CRKIDSWaitAndSendIDSMessageOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__CRKIDSWaitAndSendIDSMessageOperation_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) evaluateReadinessOperation];
  [v2 cancel];

  v3 = [*(a1 + 32) sendMessageOperation];
  [v3 cancel];
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CRKIDSWaitAndSendIDSMessageOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)run
{
  if ([(CRKIDSWaitAndSendIDSMessageOperation *)self isCanceled])
  {
    v7 = CATErrorWithCodeAndUserInfo();
    [(CRKIDSWaitAndSendIDSMessageOperation *)self endOperationWithError:?];
  }

  else
  {
    v3 = [(CRKIDSWaitAndSendIDSMessageOperation *)self readinessEvaluator];
    v4 = [v3 operationToEvaluateIDSReadiness];
    [(CRKIDSWaitAndSendIDSMessageOperation *)self setEvaluateReadinessOperation:v4];

    v5 = [(CRKIDSWaitAndSendIDSMessageOperation *)self evaluateReadinessOperation];
    [v5 addTarget:self selector:sel_evaluateReadinessOperationDidFinish_ forOperationEvents:6];

    v7 = [MEMORY[0x277CF9540] crk_backgroundQueue];
    v6 = [(CRKIDSWaitAndSendIDSMessageOperation *)self evaluateReadinessOperation];
    [v7 addOperation:v6];
  }
}

- (void)evaluateReadinessOperationDidFinish:(id)a3
{
  v7 = a3;
  if ([(CRKIDSWaitAndSendIDSMessageOperation *)self isCanceled])
  {
    v4 = CATErrorWithCodeAndUserInfo();
LABEL_5:
    v6 = v4;
    [(CRKIDSWaitAndSendIDSMessageOperation *)self endOperationWithError:v4];

    goto LABEL_6;
  }

  v5 = [v7 error];

  if (v5)
  {
    v4 = [v7 error];
    goto LABEL_5;
  }

  [(CRKIDSWaitAndSendIDSMessageOperation *)self sendMessage];
LABEL_6:
}

- (void)sendMessage
{
  v3 = [CRKIDSSendMessageOperation alloc];
  v4 = [(CRKIDSWaitAndSendIDSMessageOperation *)self IDSLocalPrimitives];
  v5 = [(CRKIDSWaitAndSendIDSMessageOperation *)self message];
  v6 = [(CRKIDSWaitAndSendIDSMessageOperation *)self destinationAddress];
  v7 = [(CRKIDSWaitAndSendIDSMessageOperation *)self sourceAppleID];
  v8 = [(CRKIDSWaitAndSendIDSMessageOperation *)self options];
  v9 = [(CRKIDSSendMessageOperation *)v3 initWithIDSLocalPrimitives:v4 message:v5 destinationAddress:v6 sourceAppleID:v7 options:v8];
  [(CRKIDSWaitAndSendIDSMessageOperation *)self setSendMessageOperation:v9];

  v10 = [(CRKIDSWaitAndSendIDSMessageOperation *)self sendMessageOperation];
  [v10 addTarget:self selector:sel_sendMessageOperationDidFinish_ forOperationEvents:6];

  v12 = [MEMORY[0x277CF9540] crk_backgroundQueue];
  v11 = [(CRKIDSWaitAndSendIDSMessageOperation *)self sendMessageOperation];
  [v12 addOperation:v11];
}

- (void)sendMessageOperationDidFinish:(id)a3
{
  v7 = a3;
  if ([(CRKIDSWaitAndSendIDSMessageOperation *)self isCanceled])
  {
    v4 = CATErrorWithCodeAndUserInfo();
LABEL_5:
    v6 = v4;
    [(CRKIDSWaitAndSendIDSMessageOperation *)self endOperationWithError:v4];

    goto LABEL_6;
  }

  v5 = [v7 error];

  if (v5)
  {
    v4 = [v7 error];
    goto LABEL_5;
  }

  [(CRKIDSWaitAndSendIDSMessageOperation *)self endOperationWithResultObject:0];
LABEL_6:
}

@end