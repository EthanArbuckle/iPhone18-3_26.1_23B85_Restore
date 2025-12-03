@interface CRKLocalBackedIDSPrimitives
- (CRKLocalBackedIDSPrimitives)initWithIDSLocalPrimitives:(id)primitives IDSReadinessEvaluator:(id)evaluator;
- (CRKLocalBackedIDSPrimitives)initWithIDSLocalPrimitives:(id)primitives IDSReadinessEvaluator:(id)evaluator operationQueue:(id)queue;
- (NSDictionary)debugInfo;
- (id)operationDebugInfo;
- (void)addAllowedAppleIDsToFirewall:(id)firewall completion:(id)completion;
- (void)fetchFirewallAllowedAppleIDs:(id)ds;
- (void)removeAllowedAppleIDsFromFirewall:(id)firewall completion:(id)completion;
- (void)sendMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d completion:(id)completion;
- (void)sendMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options completion:(id)completion;
- (void)subscribeToMessagesWithHandler:(id)handler completion:(id)completion;
@end

@implementation CRKLocalBackedIDSPrimitives

- (CRKLocalBackedIDSPrimitives)initWithIDSLocalPrimitives:(id)primitives IDSReadinessEvaluator:(id)evaluator
{
  v6 = MEMORY[0x277CF9540];
  evaluatorCopy = evaluator;
  primitivesCopy = primitives;
  crk_backgroundQueue = [v6 crk_backgroundQueue];
  v10 = [(CRKLocalBackedIDSPrimitives *)self initWithIDSLocalPrimitives:primitivesCopy IDSReadinessEvaluator:evaluatorCopy operationQueue:crk_backgroundQueue];

  return v10;
}

- (CRKLocalBackedIDSPrimitives)initWithIDSLocalPrimitives:(id)primitives IDSReadinessEvaluator:(id)evaluator operationQueue:(id)queue
{
  primitivesCopy = primitives;
  evaluatorCopy = evaluator;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CRKLocalBackedIDSPrimitives;
  v12 = [(CRKLocalBackedIDSPrimitives *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_IDSLocalPrimitives, primitives);
    objc_storeStrong(&v13->_IDSReadinessEvaluator, evaluator);
    objc_storeStrong(&v13->_operationQueue, queue);
  }

  return v13;
}

- (void)sendMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  addressCopy = address;
  messageCopy = message;
  v14 = objc_opt_new();
  [(CRKLocalBackedIDSPrimitives *)self sendMessage:messageCopy destinationAddress:addressCopy sourceAppleID:dCopy options:v14 completion:completionCopy];
}

- (void)sendMessage:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  addressCopy = address;
  messageCopy = message;
  v17 = [CRKIDSWaitAndSendIDSMessageOperation alloc];
  iDSLocalPrimitives = [(CRKLocalBackedIDSPrimitives *)self IDSLocalPrimitives];
  iDSReadinessEvaluator = [(CRKLocalBackedIDSPrimitives *)self IDSReadinessEvaluator];
  v20 = [(CRKIDSWaitAndSendIDSMessageOperation *)v17 initWithIDSLocalPrimitives:iDSLocalPrimitives IDSReadinessEvaluator:iDSReadinessEvaluator message:messageCopy destinationAddress:addressCopy sourceAppleID:dCopy options:optionsCopy];

  v21 = MEMORY[0x277CCA8C8];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __95__CRKLocalBackedIDSPrimitives_sendMessage_destinationAddress_sourceAppleID_options_completion___block_invoke;
  v30 = &unk_278DC0FB8;
  v31 = v20;
  v32 = completionCopy;
  v22 = v20;
  v23 = completionCopy;
  v24 = [v21 blockOperationWithBlock:&v27];
  [v24 addDependency:{v22, v27, v28, v29, v30}];
  operationQueue = [(CRKLocalBackedIDSPrimitives *)self operationQueue];
  [operationQueue addOperation:v22];

  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v24];
}

void __95__CRKLocalBackedIDSPrimitives_sendMessage_destinationAddress_sourceAppleID_options_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)subscribeToMessagesWithHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  handlerCopy = handler;
  iDSLocalPrimitives = [(CRKLocalBackedIDSPrimitives *)self IDSLocalPrimitives];
  v9 = [iDSLocalPrimitives subscribeToMessageReceivesWithHandler:handlerCopy];

  completionCopy[2](completionCopy, v9, 0);
  [v9 resume];
}

- (NSDictionary)debugInfo
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"Operations";
  operationDebugInfo = [(CRKLocalBackedIDSPrimitives *)self operationDebugInfo];
  v11[0] = operationDebugInfo;
  v10[1] = @"LocalPrimitives";
  iDSLocalPrimitives = [(CRKLocalBackedIDSPrimitives *)self IDSLocalPrimitives];
  debugInfo = [iDSLocalPrimitives debugInfo];
  v11[1] = debugInfo;
  v10[2] = @"IDSReadinessEvaluator";
  iDSReadinessEvaluator = [(CRKLocalBackedIDSPrimitives *)self IDSReadinessEvaluator];
  debugInfo2 = [iDSReadinessEvaluator debugInfo];
  v11[2] = debugInfo2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (id)operationDebugInfo
{
  operationQueue = [(CRKLocalBackedIDSPrimitives *)self operationQueue];
  operations = [operationQueue operations];
  v4 = [operations crk_mapUsingBlock:&__block_literal_global_75];

  return v4;
}

- (void)fetchFirewallAllowedAppleIDs:(id)ds
{
  dsCopy = ds;
  iDSLocalPrimitives = [(CRKLocalBackedIDSPrimitives *)self IDSLocalPrimitives];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__CRKLocalBackedIDSPrimitives_fetchFirewallAllowedAppleIDs___block_invoke;
  v7[3] = &unk_278DC2A80;
  v8 = dsCopy;
  v6 = dsCopy;
  [iDSLocalPrimitives fetchFirewallWithCompletion:v7];
}

uint64_t __60__CRKLocalBackedIDSPrimitives_fetchFirewallAllowedAppleIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [a2 fetchAllowedAppleIDsWithCompletion:v2];
  }

  else
  {
    return (*(v2 + 16))(*(a1 + 32));
  }
}

- (void)addAllowedAppleIDsToFirewall:(id)firewall completion:(id)completion
{
  firewallCopy = firewall;
  completionCopy = completion;
  iDSLocalPrimitives = [(CRKLocalBackedIDSPrimitives *)self IDSLocalPrimitives];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CRKLocalBackedIDSPrimitives_addAllowedAppleIDsToFirewall_completion___block_invoke;
  v11[3] = &unk_278DC2AA8;
  v12 = firewallCopy;
  v13 = completionCopy;
  v9 = firewallCopy;
  v10 = completionCopy;
  [iDSLocalPrimitives fetchFirewallWithCompletion:v11];
}

uint64_t __71__CRKLocalBackedIDSPrimitives_addAllowedAppleIDsToFirewall_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 addAllowedAppleIDs:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)removeAllowedAppleIDsFromFirewall:(id)firewall completion:(id)completion
{
  firewallCopy = firewall;
  completionCopy = completion;
  iDSLocalPrimitives = [(CRKLocalBackedIDSPrimitives *)self IDSLocalPrimitives];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__CRKLocalBackedIDSPrimitives_removeAllowedAppleIDsFromFirewall_completion___block_invoke;
  v11[3] = &unk_278DC2AA8;
  v12 = firewallCopy;
  v13 = completionCopy;
  v9 = firewallCopy;
  v10 = completionCopy;
  [iDSLocalPrimitives fetchFirewallWithCompletion:v11];
}

uint64_t __76__CRKLocalBackedIDSPrimitives_removeAllowedAppleIDsFromFirewall_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 removeAllowedAppleIDs:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

@end