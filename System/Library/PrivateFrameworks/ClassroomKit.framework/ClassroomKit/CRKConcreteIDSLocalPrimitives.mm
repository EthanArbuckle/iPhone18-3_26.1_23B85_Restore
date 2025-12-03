@interface CRKConcreteIDSLocalPrimitives
+ (id)makeAccountsDifferenceEngineForPrimitives:(id)primitives;
- (BOOL)isRemoteUserNotRegisteredError:(id)error;
- (BOOL)sendMessage:(id)message toAddress:(id)address fromID:(id)d options:(id)options identifier:(id *)identifier error:(id *)error;
- (CRKConcreteIDSLocalPrimitives)initWithServiceName:(id)name;
- (NSArray)accounts;
- (NSDictionary)debugInfo;
- (id)errorForIDSIDStatus:(int64_t)status;
- (id)errorsByAddressForQueryRefreshResult:(id)result;
- (id)subscribeToMessageReceivesWithHandler:(id)handler;
- (id)subscribeToMessageSendsWithHandler:(id)handler;
- (void)didReceiveSubscriptionDidCancel:(id)cancel;
- (void)didReceiveSubscriptionDidResume:(id)resume;
- (void)didSendSubscriptionDidCancel:(id)cancel;
- (void)didSendSubscriptionDidResume:(id)resume;
- (void)fetchFirewallWithCompletion:(id)completion;
- (void)forceRefreshIDStatusForDestinations:(id)destinations completion:(id)completion;
- (void)insertAccounts:(id)accounts atIndexes:(id)indexes;
- (void)insertObject:(id)object inAccountsAtIndex:(unint64_t)index;
- (void)publishAccountChanges;
- (void)removeAccountsAtIndexes:(id)indexes;
- (void)removeObjectFromAccountsAtIndex:(unint64_t)index;
- (void)replaceObjectInAccountsAtIndex:(unint64_t)index withObject:(id)object;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation CRKConcreteIDSLocalPrimitives

- (CRKConcreteIDSLocalPrimitives)initWithServiceName:(id)name
{
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = CRKConcreteIDSLocalPrimitives;
  v5 = [(CRKConcreteIDSLocalPrimitives *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [v6 setWantsCrossAccountMessaging:1];
    v7 = objc_opt_new();
    backingAccounts = v5->_backingAccounts;
    v5->_backingAccounts = v7;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    didSendSubscriptions = v5->_didSendSubscriptions;
    v5->_didSendSubscriptions = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    didReceiveSubscriptions = v5->_didReceiveSubscriptions;
    v5->_didReceiveSubscriptions = weakObjectsHashTable2;

    v13 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v13;

    v15 = [objc_alloc(MEMORY[0x277D18778]) initWithService:nameCopy];
    service = v5->_service;
    v5->_service = v15;

    v17 = MEMORY[0x277D85CD0];
    [(IDSService *)v5->_service addDelegate:v5 withDelegateProperties:v6 queue:MEMORY[0x277D85CD0]];
    v18 = [objc_alloc(MEMORY[0x277D186C8]) initWithService:nameCopy];
    accountController = v5->_accountController;
    v5->_accountController = v18;

    [(IDSAccountController *)v5->_accountController addDelegate:v5 queue:v17];
    v20 = [objc_opt_class() makeAccountsDifferenceEngineForPrimitives:v5];
    accountsDifferenceEngine = v5->_accountsDifferenceEngine;
    v5->_accountsDifferenceEngine = v20;

    [(CRKConcreteIDSLocalPrimitives *)v5 publishAccountChanges];
  }

  return v5;
}

- (id)subscribeToMessageReceivesWithHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _CRKLogASM_5();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Creating message receive subscription", &v10, 0x16u);
  }

  v8 = [[CRKConcreteIDSMessageDidReceiveSubscription alloc] initWithHandler:handlerCopy];
  [(CRKConcreteIDSMessageDidReceiveSubscription *)v8 setDelegate:self];

  return v8;
}

- (id)subscribeToMessageSendsWithHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _CRKLogASM_5();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Creating message send subscription", &v10, 0x16u);
  }

  v8 = [[CRKConcreteIDSMessageDidSendSubscription alloc] initWithHandler:handlerCopy];
  [(CRKConcreteIDSMessageDidSendSubscription *)v8 setDelegate:self];

  return v8;
}

- (BOOL)sendMessage:(id)message toAddress:(id)address fromID:(id)d options:(id)options identifier:(id *)identifier error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  addressCopy = address;
  optionsCopy = options;
  v17 = MEMORY[0x245D3A120](d);
  v18 = _CRKLogASM_5();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v29 = 138544642;
    v30 = v20;
    v31 = 2048;
    selfCopy = self;
    v33 = 2114;
    v34 = messageCopy;
    v35 = 2114;
    v36 = addressCopy;
    v37 = 2114;
    v38 = v17;
    v39 = 2114;
    v40 = optionsCopy;
    _os_log_impl(&dword_243550000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Sending message %{public}@ to destination %{public}@ from appleID %{public}@ with options: %{public}@", &v29, 0x3Eu);
  }

  v21 = objc_opt_new();
  [v21 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18570]];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(optionsCopy, "shouldFireAndForget")}];
  [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x277D185C0]];

  [v21 setObject:v17 forKeyedSubscript:*MEMORY[0x277D185E0]];
  deliveryTimeout = [optionsCopy deliveryTimeout];
  [v21 setObject:deliveryTimeout forKeyedSubscript:*MEMORY[0x277D18650]];

  service = [(CRKConcreteIDSLocalPrimitives *)self service];
  v25 = [MEMORY[0x277CBEB98] setWithObject:addressCopy];
  v26 = [v21 copy];
  v27 = [service sendMessage:messageCopy toDestinations:v25 priority:300 options:v26 identifier:identifier error:error];

  return v27;
}

- (void)fetchFirewallWithCompletion:(id)completion
{
  completionCopy = completion;
  service = [(CRKConcreteIDSLocalPrimitives *)self service];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CRKConcreteIDSLocalPrimitives_fetchFirewallWithCompletion___block_invoke;
  v7[3] = &unk_278DC16D0;
  v8 = completionCopy;
  v6 = completionCopy;
  [service retrieveFirewallWithQueue:MEMORY[0x277D85CD0] completion:v7];
}

void __61__CRKConcreteIDSLocalPrimitives_fetchFirewallWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [[CRKConcreteIDSFirewall alloc] initWithUnderlyingFirewall:v6];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)forceRefreshIDStatusForDestinations:(id)destinations completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277D18728];
  destinationsCopy = destinations;
  sharedInstance = [v7 sharedInstance];
  serviceName = [(CRKConcreteIDSLocalPrimitives *)self serviceName];
  serviceName2 = [(CRKConcreteIDSLocalPrimitives *)self serviceName];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__CRKConcreteIDSLocalPrimitives_forceRefreshIDStatusForDestinations_completion___block_invoke;
  v13[3] = &unk_278DC16F8;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [sharedInstance forceRefreshIDStatusForDestinations:destinationsCopy service:serviceName listenerID:serviceName2 queue:MEMORY[0x277D85CD0] completionBlock:v13];
}

void __80__CRKConcreteIDSLocalPrimitives_forceRefreshIDStatusForDestinations_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) errorsByAddressForQueryRefreshResult:a2];
  (*(v2 + 16))(v2, v3);
}

- (NSDictionary)debugInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Accounts";
  accounts = [(CRKConcreteIDSLocalPrimitives *)self accounts];
  v3 = [accounts crk_mapUsingBlock:&__block_literal_global_13];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (BOOL)isRemoteUserNotRegisteredError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D18538]])
  {
    v5 = [errorCopy code] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  v12 = _CRKLogASM_5();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
    verboseDescription = [errorCopy verboseDescription];
    *buf = 138544386;
    v29 = v14;
    v30 = 2048;
    selfCopy = self;
    v32 = 2114;
    v33 = identifierCopy;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = verboseDescription;
    _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: IDSService did send message (%{public}@) with success (%{public}@) and error (%{public}@)", buf, 0x34u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  didSendSubscriptions = [(CRKConcreteIDSLocalPrimitives *)self didSendSubscriptions];
  allObjects = [didSendSubscriptions allObjects];

  v19 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v23 + 1) + 8 * v22++) receiveMessageIdentifier:identifierCopy didSucceed:successCopy error:errorCopy];
      }

      while (v20 != v22);
      v20 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v11 = _CRKLogASM_5();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544130;
    v27 = v13;
    v28 = 2048;
    selfCopy = self;
    v30 = 2114;
    v31 = messageCopy;
    v32 = 2114;
    v33 = dCopy;
    _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: IDSService did receive message (%{public}@) from sender (%{public}@)", buf, 0x2Au);
  }

  v14 = IDSCopyRawAddressForDestination();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  didReceiveSubscriptions = [(CRKConcreteIDSLocalPrimitives *)self didReceiveSubscriptions];
  allObjects = [didReceiveSubscriptions allObjects];

  v17 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v21 + 1) + 8 * v20++) receiveMessage:messageCopy senderAppleID:v14 senderAddress:dCopy];
      }

      while (v18 != v20);
      v18 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }
}

- (void)didSendSubscriptionDidResume:(id)resume
{
  resumeCopy = resume;
  didSendSubscriptions = [(CRKConcreteIDSLocalPrimitives *)self didSendSubscriptions];
  [didSendSubscriptions addObject:resumeCopy];
}

- (void)didSendSubscriptionDidCancel:(id)cancel
{
  cancelCopy = cancel;
  didSendSubscriptions = [(CRKConcreteIDSLocalPrimitives *)self didSendSubscriptions];
  [didSendSubscriptions removeObject:cancelCopy];
}

- (void)didReceiveSubscriptionDidResume:(id)resume
{
  resumeCopy = resume;
  didReceiveSubscriptions = [(CRKConcreteIDSLocalPrimitives *)self didReceiveSubscriptions];
  [didReceiveSubscriptions addObject:resumeCopy];
}

- (void)didReceiveSubscriptionDidCancel:(id)cancel
{
  cancelCopy = cancel;
  didReceiveSubscriptions = [(CRKConcreteIDSLocalPrimitives *)self didReceiveSubscriptions];
  [didReceiveSubscriptions removeObject:cancelCopy];
}

+ (id)makeAccountsDifferenceEngineForPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v4 = [CRKArrayDifferenceEngine configurationWithIncomingItemsIdentifierFunction:&__block_literal_global_26 publishedItemsIdentifierFunction:&__block_literal_global_29];
  [v4 setUpdateBlock:&__block_literal_global_32];
  [v4 setLiftingFunction:&__block_literal_global_35];
  v5 = [[CRKArrayDifferenceEngine alloc] initWithObject:primitivesCopy keyPath:@"accounts" configuration:v4];

  return v5;
}

CRKConcreteIDSAccount *__75__CRKConcreteIDSLocalPrimitives_makeAccountsDifferenceEngineForPrimitives___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRKConcreteIDSAccount alloc] initWithAccount:v2];

  return v3;
}

- (void)publishAccountChanges
{
  accountController = [(CRKConcreteIDSLocalPrimitives *)self accountController];
  accounts = [accountController accounts];
  allObjects = [accounts allObjects];
  v6 = allObjects;
  v7 = MEMORY[0x277CBEBF8];
  if (allObjects)
  {
    v7 = allObjects;
  }

  v8 = v7;

  accountsDifferenceEngine = [(CRKConcreteIDSLocalPrimitives *)self accountsDifferenceEngine];
  [accountsDifferenceEngine updateWithNewArray:v8];
}

- (id)errorsByAddressForQueryRefreshResult:(id)result
{
  resultCopy = result;
  v5 = objc_opt_new();
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __70__CRKConcreteIDSLocalPrimitives_errorsByAddressForQueryRefreshResult___block_invoke;
  v12 = &unk_278DC17C0;
  v13 = v5;
  selfCopy = self;
  v6 = v5;
  [resultCopy enumerateKeysAndObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

void __70__CRKConcreteIDSLocalPrimitives_errorsByAddressForQueryRefreshResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorForIDSIDStatus:{objc_msgSend(a3, "integerValue")}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)errorForIDSIDStatus:(int64_t)status
{
  if (!status)
  {
    v4 = 45;
    goto LABEL_10;
  }

  if (status != 1)
  {
    if (status == 2)
    {
      v4 = 46;
    }

    else
    {
      v4 = 1;
    }

LABEL_10:
    v5 = CRKErrorWithCodeAndUserInfo(v4, 0);

    return v5;
  }

  v5 = 0;

  return v5;
}

- (NSArray)accounts
{
  backingAccounts = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  v3 = [backingAccounts copy];

  return v3;
}

- (void)insertObject:(id)object inAccountsAtIndex:(unint64_t)index
{
  objectCopy = object;
  backingAccounts = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [backingAccounts insertObject:objectCopy atIndex:index];
}

- (void)insertAccounts:(id)accounts atIndexes:(id)indexes
{
  indexesCopy = indexes;
  accountsCopy = accounts;
  backingAccounts = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [backingAccounts insertObjects:accountsCopy atIndexes:indexesCopy];
}

- (void)removeObjectFromAccountsAtIndex:(unint64_t)index
{
  backingAccounts = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [backingAccounts removeObjectAtIndex:index];
}

- (void)removeAccountsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  backingAccounts = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [backingAccounts removeObjectsAtIndexes:indexesCopy];
}

- (void)replaceObjectInAccountsAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  backingAccounts = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [backingAccounts replaceObjectAtIndex:index withObject:objectCopy];
}

@end