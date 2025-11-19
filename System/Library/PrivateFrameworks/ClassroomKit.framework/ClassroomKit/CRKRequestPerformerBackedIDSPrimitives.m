@interface CRKRequestPerformerBackedIDSPrimitives
- (CRKRequestPerformerBackedIDSPrimitives)initWithRequestPerformer:(id)a3 operationQueue:(id)a4;
- (NSDictionary)debugInfo;
- (void)addAllowedAppleIDsToFirewall:(id)a3 completion:(id)a4;
- (void)fetchFirewallAllowedAppleIDs:(id)a3;
- (void)removeAllowedAppleIDsFromFirewall:(id)a3 completion:(id)a4;
- (void)sendMessage:(id)a3 destinationAddress:(id)a4 sourceAppleID:(id)a5 completion:(id)a6;
- (void)sendMessage:(id)a3 destinationAddress:(id)a4 sourceAppleID:(id)a5 options:(id)a6 completion:(id)a7;
- (void)subscribeToMessagesWithHandler:(id)a3 completion:(id)a4;
@end

@implementation CRKRequestPerformerBackedIDSPrimitives

- (CRKRequestPerformerBackedIDSPrimitives)initWithRequestPerformer:(id)a3 operationQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKRequestPerformerBackedIDSPrimitives;
  v9 = [(CRKRequestPerformerBackedIDSPrimitives *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operationQueue, a4);
    objc_storeStrong(&v10->_requestPerformer, a3);
  }

  return v10;
}

- (void)sendMessage:(id)a3 destinationAddress:(id)a4 sourceAppleID:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  [(CRKRequestPerformerBackedIDSPrimitives *)self sendMessage:v13 destinationAddress:v12 sourceAppleID:v11 options:v14 completion:v10];
}

- (void)sendMessage:(id)a3 destinationAddress:(id)a4 sourceAppleID:(id)a5 options:(id)a6 completion:(id)a7
{
  v33[1] = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  [v17 setDestinationAddress:v15];

  [v17 setSourceAppleID:v14];
  [v17 setMessage:v16];

  [v17 setOptions:v13];
  v18 = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v19 = [v18 operationForRequest:v17];

  v20 = MEMORY[0x277CCA8C8];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __106__CRKRequestPerformerBackedIDSPrimitives_sendMessage_destinationAddress_sourceAppleID_options_completion___block_invoke;
  v30 = &unk_278DC0FB8;
  v31 = v19;
  v32 = v12;
  v21 = v19;
  v22 = v12;
  v23 = [v20 blockOperationWithBlock:&v27];
  [v23 addDependency:{v21, v27, v28, v29, v30}];
  v24 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  v33[0] = v21;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v24 addOperations:v25 waitUntilFinished:0];

  v26 = [MEMORY[0x277CCABD8] mainQueue];
  [v26 addOperation:v23];
}

void __106__CRKRequestPerformerBackedIDSPrimitives_sendMessage_destinationAddress_sourceAppleID_options_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)subscribeToMessagesWithHandler:(id)a3 completion:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setHandlesNotifications:1];
  v9 = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v10 = [v9 operationForRequest:v8];

  v11 = [[CRKOperationBackedIDSMessageSubscription alloc] initWithListenOperation:v10 handler:v7];
  [v10 setNotificationDelegate:v11];
  v12 = [CRKWaitForProgressOperation alloc];
  v13 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  v14 = [(CRKWaitForProgressOperation *)v12 initWithOperationQueue:v13 operation:v10 expectedCompletedUnitCount:1 expectedTotalUnitCount:2];

  v15 = MEMORY[0x277CCA8C8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__CRKRequestPerformerBackedIDSPrimitives_subscribeToMessagesWithHandler_completion___block_invoke;
  v23[3] = &unk_278DC0F08;
  v25 = v11;
  v26 = v6;
  v24 = v14;
  v16 = v11;
  v17 = v6;
  v18 = v14;
  v19 = [v15 blockOperationWithBlock:v23];
  [v19 addDependency:v18];
  v20 = [MEMORY[0x277CCABD8] mainQueue];
  [v20 addOperation:v19];

  v21 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  v27[0] = v18;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v21 addOperations:v22 waitUntilFinished:0];
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

- (void)fetchFirewallAllowedAppleIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setAction:0];
  v6 = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v7 = [v6 operationForRequest:v5];

  v8 = MEMORY[0x277CCA8C8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __71__CRKRequestPerformerBackedIDSPrimitives_fetchFirewallAllowedAppleIDs___block_invoke;
  v17 = &unk_278DC10A0;
  v18 = v7;
  v19 = v4;
  v9 = v4;
  v10 = v7;
  v11 = [v8 blockOperationWithBlock:&v14];
  [v11 addDependency:{v10, v14, v15, v16, v17}];
  v12 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [v12 addOperation:v10];

  v13 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [v13 addOperation:v11];
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

- (void)addAllowedAppleIDsToFirewall:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setAction:1];
  [v8 setAllowedAppleIDs:v7];

  v9 = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v10 = [v9 operationForRequest:v8];

  v11 = MEMORY[0x277CCA8C8];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __82__CRKRequestPerformerBackedIDSPrimitives_addAllowedAppleIDsToFirewall_completion___block_invoke;
  v20 = &unk_278DC0FB8;
  v21 = v10;
  v22 = v6;
  v12 = v10;
  v13 = v6;
  v14 = [v11 blockOperationWithBlock:&v17];
  [v14 addDependency:{v12, v17, v18, v19, v20}];
  v15 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [v15 addOperation:v12];

  v16 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [v16 addOperation:v14];
}

void __82__CRKRequestPerformerBackedIDSPrimitives_addAllowedAppleIDsToFirewall_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)removeAllowedAppleIDsFromFirewall:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setAction:2];
  [v8 setAllowedAppleIDs:v7];

  v9 = [(CRKRequestPerformerBackedIDSPrimitives *)self requestPerformer];
  v10 = [v9 operationForRequest:v8];

  v11 = MEMORY[0x277CCA8C8];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __87__CRKRequestPerformerBackedIDSPrimitives_removeAllowedAppleIDsFromFirewall_completion___block_invoke;
  v20 = &unk_278DC0FB8;
  v21 = v10;
  v22 = v6;
  v12 = v10;
  v13 = v6;
  v14 = [v11 blockOperationWithBlock:&v17];
  [v14 addDependency:{v12, v17, v18, v19, v20}];
  v15 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [v15 addOperation:v12];

  v16 = [(CRKRequestPerformerBackedIDSPrimitives *)self operationQueue];
  [v16 addOperation:v14];
}

void __87__CRKRequestPerformerBackedIDSPrimitives_removeAllowedAppleIDsFromFirewall_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

@end