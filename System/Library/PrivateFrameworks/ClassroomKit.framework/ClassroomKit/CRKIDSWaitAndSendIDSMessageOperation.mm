@interface CRKIDSWaitAndSendIDSMessageOperation
- (CRKIDSWaitAndSendIDSMessageOperation)initWithIDSLocalPrimitives:(id)primitives IDSReadinessEvaluator:(id)evaluator message:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options;
- (void)cancel;
- (void)evaluateReadinessOperationDidFinish:(id)finish;
- (void)main;
- (void)run;
- (void)sendMessage;
- (void)sendMessageOperationDidFinish:(id)finish;
@end

@implementation CRKIDSWaitAndSendIDSMessageOperation

- (CRKIDSWaitAndSendIDSMessageOperation)initWithIDSLocalPrimitives:(id)primitives IDSReadinessEvaluator:(id)evaluator message:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options
{
  primitivesCopy = primitives;
  evaluatorCopy = evaluator;
  messageCopy = message;
  addressCopy = address;
  dCopy = d;
  optionsCopy = options;
  v32.receiver = self;
  v32.super_class = CRKIDSWaitAndSendIDSMessageOperation;
  v21 = [(CRKIDSWaitAndSendIDSMessageOperation *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_IDSLocalPrimitives, primitives);
    objc_storeStrong(&v22->_readinessEvaluator, evaluator);
    v23 = [messageCopy copy];
    message = v22->_message;
    v22->_message = v23;

    v25 = [addressCopy copy];
    destinationAddress = v22->_destinationAddress;
    v22->_destinationAddress = v25;

    v27 = [dCopy copy];
    sourceAppleID = v22->_sourceAppleID;
    v22->_sourceAppleID = v27;

    v29 = [optionsCopy copy];
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
    crk_backgroundQueue = CATErrorWithCodeAndUserInfo();
    [(CRKIDSWaitAndSendIDSMessageOperation *)self endOperationWithError:?];
  }

  else
  {
    readinessEvaluator = [(CRKIDSWaitAndSendIDSMessageOperation *)self readinessEvaluator];
    operationToEvaluateIDSReadiness = [readinessEvaluator operationToEvaluateIDSReadiness];
    [(CRKIDSWaitAndSendIDSMessageOperation *)self setEvaluateReadinessOperation:operationToEvaluateIDSReadiness];

    evaluateReadinessOperation = [(CRKIDSWaitAndSendIDSMessageOperation *)self evaluateReadinessOperation];
    [evaluateReadinessOperation addTarget:self selector:sel_evaluateReadinessOperationDidFinish_ forOperationEvents:6];

    crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
    evaluateReadinessOperation2 = [(CRKIDSWaitAndSendIDSMessageOperation *)self evaluateReadinessOperation];
    [crk_backgroundQueue addOperation:evaluateReadinessOperation2];
  }
}

- (void)evaluateReadinessOperationDidFinish:(id)finish
{
  finishCopy = finish;
  if ([(CRKIDSWaitAndSendIDSMessageOperation *)self isCanceled])
  {
    error2 = CATErrorWithCodeAndUserInfo();
LABEL_5:
    v6 = error2;
    [(CRKIDSWaitAndSendIDSMessageOperation *)self endOperationWithError:error2];

    goto LABEL_6;
  }

  error = [finishCopy error];

  if (error)
  {
    error2 = [finishCopy error];
    goto LABEL_5;
  }

  [(CRKIDSWaitAndSendIDSMessageOperation *)self sendMessage];
LABEL_6:
}

- (void)sendMessage
{
  v3 = [CRKIDSSendMessageOperation alloc];
  iDSLocalPrimitives = [(CRKIDSWaitAndSendIDSMessageOperation *)self IDSLocalPrimitives];
  message = [(CRKIDSWaitAndSendIDSMessageOperation *)self message];
  destinationAddress = [(CRKIDSWaitAndSendIDSMessageOperation *)self destinationAddress];
  sourceAppleID = [(CRKIDSWaitAndSendIDSMessageOperation *)self sourceAppleID];
  options = [(CRKIDSWaitAndSendIDSMessageOperation *)self options];
  v9 = [(CRKIDSSendMessageOperation *)v3 initWithIDSLocalPrimitives:iDSLocalPrimitives message:message destinationAddress:destinationAddress sourceAppleID:sourceAppleID options:options];
  [(CRKIDSWaitAndSendIDSMessageOperation *)self setSendMessageOperation:v9];

  sendMessageOperation = [(CRKIDSWaitAndSendIDSMessageOperation *)self sendMessageOperation];
  [sendMessageOperation addTarget:self selector:sel_sendMessageOperationDidFinish_ forOperationEvents:6];

  crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
  sendMessageOperation2 = [(CRKIDSWaitAndSendIDSMessageOperation *)self sendMessageOperation];
  [crk_backgroundQueue addOperation:sendMessageOperation2];
}

- (void)sendMessageOperationDidFinish:(id)finish
{
  finishCopy = finish;
  if ([(CRKIDSWaitAndSendIDSMessageOperation *)self isCanceled])
  {
    error2 = CATErrorWithCodeAndUserInfo();
LABEL_5:
    v6 = error2;
    [(CRKIDSWaitAndSendIDSMessageOperation *)self endOperationWithError:error2];

    goto LABEL_6;
  }

  error = [finishCopy error];

  if (error)
  {
    error2 = [finishCopy error];
    goto LABEL_5;
  }

  [(CRKIDSWaitAndSendIDSMessageOperation *)self endOperationWithResultObject:0];
LABEL_6:
}

@end