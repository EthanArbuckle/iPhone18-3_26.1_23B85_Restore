@interface CRKRequestPerformerBackedIDSPrimitives
- (CRKRequestPerformerBackedIDSPrimitives)initWithRequestPerformer:(id)performer operationQueue:(id)queue;
- (NSDictionary)debugInfo;
- (void)addAllowedAppleIDsToFirewall:(id)firewall completion:(id)completion;
- (void)fetchFirewallAllowedAppleIDs:(id)ds;
- (void)removeAllowedAppleIDsFromFirewall:(id)firewall completion:(id)completion;
- (void)sendMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d completion:(id)completion;
- (void)sendMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options completion:(id)completion;
- (void)subscribeToMessagesWithHandler:(id)handler completion:(id)completion;
@end

@implementation CRKRequestPerformerBackedIDSPrimitives

- (CRKRequestPerformerBackedIDSPrimitives)initWithRequestPerformer:(id)performer operationQueue:(id)queue
{
  performerCopy = performer;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = CRKRequestPerformerBackedIDSPrimitives;
  v9 = [(CRKRequestPerformerBackedIDSPrimitives *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operationQueue, queue);
    objc_storeStrong(&v10->_requestPerformer, performer);
  }

  return v10;
}

- (void)sendMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  addressCopy = address;
  messageCopy = message;
  v14 = objc_opt_new();
  [(CRKRequestPerformerBackedIDSPrimitives *)self sendMessage:messageCopy destinationAddress:addressCopy sourceAppleID:dCopy options:v14 completion:completionCopy];
}

- (void)sendMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options completion:(id)completion
{
  v33[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  addressCopy = address;
  messageCopy = message;
  v17 = objc_opt_new();
  [v17 setDestinationAddress:addressCopy];

  [v17 setSourceAppleID:dCopy];
  [v17 setMessage:messageCopy];

  [v17 setOptions:optionsCopy];
  requestPerformer = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v19 = [requestPerformer operationForRequest:v17];

  v20 = MEMORY[0x277CCA8C8];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __106__CRKRequestPerformerBackedIDSPrimitives_sendMessage_destinationAddress_sourceAppleID_options_completion___block_invoke;
  v30 = &unk_278DC0FB8;
  v31 = v19;
  v32 = completionCopy;
  v21 = v19;
  v22 = completionCopy;
  v23 = [v20 blockOperationWithBlock:&v27];
  [v23 addDependency:{v21, v27, v28, v29, v30}];
  operationQueue = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  v33[0] = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [operationQueue addOperations:v25 waitUntilFinished:0];

  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v23];
}

void __106__CRKRequestPerformerBackedIDSPrimitives_sendMessage_destinationAddress_sourceAppleID_options_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)subscribeToMessagesWithHandler:(id)handler completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  handlerCopy = handler;
  v8 = objc_opt_new();
  [v8 setHandlesNotifications:1];
  requestPerformer = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v10 = [requestPerformer operationForRequest:v8];

  v11 = [[CRKOperationBackedIDSMessageSubscription alloc] initWithListenOperation:v10 handler:handlerCopy];
  [v10 setNotificationDelegate:v11];
  v12 = [CRKWaitForProgressOperation alloc];
  operationQueue = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  v14 = [(CRKWaitForProgressOperation *)v12 initWithOperationQueue:operationQueue operation:v10 expectedCompletedUnitCount:1 expectedTotalUnitCount:2];

  v15 = MEMORY[0x277CCA8C8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__CRKRequestPerformerBackedIDSPrimitives_subscribeToMessagesWithHandler_completion___block_invoke;
  v23[3] = &unk_278DC0F08;
  v25 = v11;
  v26 = completionCopy;
  v24 = v14;
  v16 = v11;
  v17 = completionCopy;
  v18 = v14;
  v19 = [v15 blockOperationWithBlock:v23];
  [v19 addDependency:v18];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v19];

  operationQueue2 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  v27[0] = v18;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [operationQueue2 addOperations:v22 waitUntilFinished:0];
}

void __84__CRKRequestPerformerBackedIDSPrimitives_subscribeToMessagesWithHandler_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 48);
  if (v2)
  {
    v7 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, 0, v7);
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);
    v6 = *(a1 + 48);

    v5(v6, v4, 0);
  }
}

- (NSDictionary)debugInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Class";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)fetchFirewallAllowedAppleIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  [v5 setAction:0];
  requestPerformer = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v7 = [requestPerformer operationForRequest:v5];

  v8 = MEMORY[0x277CCA8C8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __71__CRKRequestPerformerBackedIDSPrimitives_fetchFirewallAllowedAppleIDs___block_invoke;
  v17 = &unk_278DC10A0;
  v18 = v7;
  v19 = dsCopy;
  v9 = dsCopy;
  v10 = v7;
  v11 = [v8 blockOperationWithBlock:&v14];
  [v11 addDependency:{v10, v14, v15, v16, v17}];
  operationQueue = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [operationQueue addOperation:v10];

  operationQueue2 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [operationQueue2 addOperation:v11];
}

void __71__CRKRequestPerformerBackedIDSPrimitives_fetchFirewallAllowedAppleIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resultObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = *(a1 + 40);
  v7 = [v4 allowedAppleIDs];

  v6 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v7, v6);
}

- (void)addAllowedAppleIDsToFirewall:(id)firewall completion:(id)completion
{
  completionCopy = completion;
  firewallCopy = firewall;
  v8 = objc_opt_new();
  [v8 setAction:1];
  [v8 setAllowedAppleIDs:firewallCopy];

  requestPerformer = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v10 = [requestPerformer operationForRequest:v8];

  v11 = MEMORY[0x277CCA8C8];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __82__CRKRequestPerformerBackedIDSPrimitives_addAllowedAppleIDsToFirewall_completion___block_invoke;
  v20 = &unk_278DC0FB8;
  v21 = v10;
  v22 = completionCopy;
  v12 = v10;
  v13 = completionCopy;
  v14 = [v11 blockOperationWithBlock:&v17];
  [v14 addDependency:{v12, v17, v18, v19, v20}];
  operationQueue = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [operationQueue addOperation:v12];

  operationQueue2 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [operationQueue2 addOperation:v14];
}

void __82__CRKRequestPerformerBackedIDSPrimitives_addAllowedAppleIDsToFirewall_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)removeAllowedAppleIDsFromFirewall:(id)firewall completion:(id)completion
{
  completionCopy = completion;
  firewallCopy = firewall;
  v8 = objc_opt_new();
  [v8 setAction:2];
  [v8 setAllowedAppleIDs:firewallCopy];

  requestPerformer = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v10 = [requestPerformer operationForRequest:v8];

  v11 = MEMORY[0x277CCA8C8];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __87__CRKRequestPerformerBackedIDSPrimitives_removeAllowedAppleIDsFromFirewall_completion___block_invoke;
  v20 = &unk_278DC0FB8;
  v21 = v10;
  v22 = completionCopy;
  v12 = v10;
  v13 = completionCopy;
  v14 = [v11 blockOperationWithBlock:&v17];
  [v14 addDependency:{v12, v17, v18, v19, v20}];
  operationQueue = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [operationQueue addOperation:v12];

  operationQueue2 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [operationQueue2 addOperation:v14];
}

void __87__CRKRequestPerformerBackedIDSPrimitives_removeAllowedAppleIDsFromFirewall_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

@end