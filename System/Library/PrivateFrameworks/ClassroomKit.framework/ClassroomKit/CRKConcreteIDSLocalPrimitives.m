@interface CRKConcreteIDSLocalPrimitives
+ (id)makeAccountsDifferenceEngineForPrimitives:(id)a3;
- (BOOL)isRemoteUserNotRegisteredError:(id)a3;
- (BOOL)sendMessage:(id)a3 toAddress:(id)a4 fromID:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (CRKConcreteIDSLocalPrimitives)initWithServiceName:(id)a3;
- (NSArray)accounts;
- (NSDictionary)debugInfo;
- (id)errorForIDSIDStatus:(int64_t)a3;
- (id)errorsByAddressForQueryRefreshResult:(id)a3;
- (id)subscribeToMessageReceivesWithHandler:(id)a3;
- (id)subscribeToMessageSendsWithHandler:(id)a3;
- (void)didReceiveSubscriptionDidCancel:(id)a3;
- (void)didReceiveSubscriptionDidResume:(id)a3;
- (void)didSendSubscriptionDidCancel:(id)a3;
- (void)didSendSubscriptionDidResume:(id)a3;
- (void)fetchFirewallWithCompletion:(id)a3;
- (void)forceRefreshIDStatusForDestinations:(id)a3 completion:(id)a4;
- (void)insertAccounts:(id)a3 atIndexes:(id)a4;
- (void)insertObject:(id)a3 inAccountsAtIndex:(unint64_t)a4;
- (void)publishAccountChanges;
- (void)removeAccountsAtIndexes:(id)a3;
- (void)removeObjectFromAccountsAtIndex:(unint64_t)a3;
- (void)replaceObjectInAccountsAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation CRKConcreteIDSLocalPrimitives

- (CRKConcreteIDSLocalPrimitives)initWithServiceName:(id)a3
{
  v4 = a3;
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

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    didSendSubscriptions = v5->_didSendSubscriptions;
    v5->_didSendSubscriptions = v9;

    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    didReceiveSubscriptions = v5->_didReceiveSubscriptions;
    v5->_didReceiveSubscriptions = v11;

    v13 = [v4 copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v13;

    v15 = [objc_alloc(MEMORY[0x277D18778]) initWithService:v4];
    service = v5->_service;
    v5->_service = v15;

    v17 = MEMORY[0x277D85CD0];
    [(IDSService *)v5->_service addDelegate:v5 withDelegateProperties:v6 queue:MEMORY[0x277D85CD0]];
    v18 = [objc_alloc(MEMORY[0x277D186C8]) initWithService:v4];
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

- (id)subscribeToMessageReceivesWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CRKLogASM_5();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Creating message receive subscription", &v10, 0x16u);
  }

  v8 = [[CRKConcreteIDSMessageDidReceiveSubscription alloc] initWithHandler:v4];
  [(CRKConcreteIDSMessageDidReceiveSubscription *)v8 setDelegate:self];

  return v8;
}

- (id)subscribeToMessageSendsWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CRKLogASM_5();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Creating message send subscription", &v10, 0x16u);
  }

  v8 = [[CRKConcreteIDSMessageDidSendSubscription alloc] initWithHandler:v4];
  [(CRKConcreteIDSMessageDidSendSubscription *)v8 setDelegate:self];

  return v8;
}

- (BOOL)sendMessage:(id)a3 toAddress:(id)a4 fromID:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = MEMORY[0x245D3A120](a5);
  v18 = _CRKLogASM_5();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v29 = 138544642;
    v30 = v20;
    v31 = 2048;
    v32 = self;
    v33 = 2114;
    v34 = v14;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v17;
    v39 = 2114;
    v40 = v16;
    _os_log_impl(&dword_243550000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Sending message %{public}@ to destination %{public}@ from appleID %{public}@ with options: %{public}@", &v29, 0x3Eu);
  }

  v21 = objc_opt_new();
  [v21 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18570]];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "shouldFireAndForget")}];
  [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x277D185C0]];

  [v21 setObject:v17 forKeyedSubscript:*MEMORY[0x277D185E0]];
  v23 = [v16 deliveryTimeout];
  [v21 setObject:v23 forKeyedSubscript:*MEMORY[0x277D18650]];

  v24 = [(CRKConcreteIDSLocalPrimitives *)self service];
  v25 = [MEMORY[0x277CBEB98] setWithObject:v15];
  v26 = [v21 copy];
  v27 = [v24 sendMessage:v14 toDestinations:v25 priority:300 options:v26 identifier:a7 error:a8];

  return v27;
}

- (void)fetchFirewallWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteIDSLocalPrimitives *)self service];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CRKConcreteIDSLocalPrimitives_fetchFirewallWithCompletion___block_invoke;
  v7[3] = &unk_278DC16D0;
  v8 = v4;
  v6 = v4;
  [v5 retrieveFirewallWithQueue:MEMORY[0x277D85CD0] completion:v7];
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

- (void)forceRefreshIDStatusForDestinations:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D18728];
  v8 = a3;
  v9 = [v7 sharedInstance];
  v10 = [(CRKConcreteIDSLocalPrimitives *)self serviceName];
  v11 = [(CRKConcreteIDSLocalPrimitives *)self serviceName];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__CRKConcreteIDSLocalPrimitives_forceRefreshIDStatusForDestinations_completion___block_invoke;
  v13[3] = &unk_278DC16F8;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v9 forceRefreshIDStatusForDestinations:v8 service:v10 listenerID:v11 queue:MEMORY[0x277D85CD0] completionBlock:v13];
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
  v2 = [(CRKConcreteIDSLocalPrimitives *)self accounts];
  v3 = [v2 crk_mapUsingBlock:&__block_literal_global_13];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (BOOL)isRemoteUserNotRegisteredError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277D18538]])
  {
    v5 = [v3 code] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v38 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a7;
  v12 = _CRKLogASM_5();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v16 = [v11 verboseDescription];
    *buf = 138544386;
    v29 = v14;
    v30 = 2048;
    v31 = self;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = v16;
    _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: IDSService did send message (%{public}@) with success (%{public}@) and error (%{public}@)", buf, 0x34u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(CRKConcreteIDSLocalPrimitives *)self didSendSubscriptions];
  v18 = [v17 allObjects];

  v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * v22++) receiveMessageIdentifier:v10 didSucceed:v8 error:v11];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = _CRKLogASM_5();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544130;
    v27 = v13;
    v28 = 2048;
    v29 = self;
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = v10;
    _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: IDSService did receive message (%{public}@) from sender (%{public}@)", buf, 0x2Au);
  }

  v14 = IDSCopyRawAddressForDestination();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [(CRKConcreteIDSLocalPrimitives *)self didReceiveSubscriptions];
  v16 = [v15 allObjects];

  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * v20++) receiveMessage:v9 senderAppleID:v14 senderAddress:v10];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }
}

- (void)didSendSubscriptionDidResume:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteIDSLocalPrimitives *)self didSendSubscriptions];
  [v5 addObject:v4];
}

- (void)didSendSubscriptionDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteIDSLocalPrimitives *)self didSendSubscriptions];
  [v5 removeObject:v4];
}

- (void)didReceiveSubscriptionDidResume:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteIDSLocalPrimitives *)self didReceiveSubscriptions];
  [v5 addObject:v4];
}

- (void)didReceiveSubscriptionDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteIDSLocalPrimitives *)self didReceiveSubscriptions];
  [v5 removeObject:v4];
}

+ (id)makeAccountsDifferenceEngineForPrimitives:(id)a3
{
  v3 = a3;
  v4 = [CRKArrayDifferenceEngine configurationWithIncomingItemsIdentifierFunction:&__block_literal_global_26 publishedItemsIdentifierFunction:&__block_literal_global_29];
  [v4 setUpdateBlock:&__block_literal_global_32];
  [v4 setLiftingFunction:&__block_literal_global_35];
  v5 = [[CRKArrayDifferenceEngine alloc] initWithObject:v3 keyPath:@"accounts" configuration:v4];

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
  v3 = [(CRKConcreteIDSLocalPrimitives *)self accountController];
  v4 = [v3 accounts];
  v5 = [v4 allObjects];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(CRKConcreteIDSLocalPrimitives *)self accountsDifferenceEngine];
  [v9 updateWithNewArray:v8];
}

- (id)errorsByAddressForQueryRefreshResult:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __70__CRKConcreteIDSLocalPrimitives_errorsByAddressForQueryRefreshResult___block_invoke;
  v12 = &unk_278DC17C0;
  v13 = v5;
  v14 = self;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];

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

- (id)errorForIDSIDStatus:(int64_t)a3
{
  if (!a3)
  {
    v4 = 45;
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
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
  v2 = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  v3 = [v2 copy];

  return v3;
}

- (void)insertObject:(id)a3 inAccountsAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [v7 insertObject:v6 atIndex:a4];
}

- (void)insertAccounts:(id)a3 atIndexes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [v8 insertObjects:v7 atIndexes:v6];
}

- (void)removeObjectFromAccountsAtIndex:(unint64_t)a3
{
  v4 = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [v4 removeObjectAtIndex:a3];
}

- (void)removeAccountsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [v5 removeObjectsAtIndexes:v4];
}

- (void)replaceObjectInAccountsAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  v7 = [(CRKConcreteIDSLocalPrimitives *)self backingAccounts];
  [v7 replaceObjectAtIndex:a3 withObject:v6];
}

@end