@interface HMDRemoteAccountManager
+ (id)logCategory;
+ (id)sharedManager;
- (BOOL)shouldSyncDevice:(id)a3;
- (HMDRemoteAccountManager)init;
- (HMDRemoteAccountManager)initWithIDSService:(id)a3;
- (NSArray)accounts;
- (NSArray)attributeDescriptions;
- (id)accountForDeviceHandle:(id)a3;
- (id)accountForHandle:(id)a3;
- (id)accountForIdentifier:(id)a3;
- (id)accountForModelIdentifier:(id)a3;
- (id)accountForSenderContext:(id)a3;
- (id)deviceForSenderContext:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__handleSendMessageFailureWithError:(id)a3 destination:(id)a4;
- (void)_resolveAccountForHandle:(id)a3 completionHandler:(id)a4;
- (void)addAccount:(id)a3;
- (void)configureWithAccountRegistry:(id)a3;
- (void)processAccountModel:(id)a3 message:(id)a4;
- (void)processAccountModelRemove:(id)a3 message:(id)a4;
- (void)removeAccount:(id)a3;
- (void)reset;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)setAccounts:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HMDRemoteAccountManager

- (NSArray)accounts
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_accounts allObjects];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v21 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (!a6)
  {
    v19 = [v17 toID];

    if (v19)
    {
      v20 = [v18 toID];
      [(HMDRemoteAccountManager *)self __handleSendMessageFailureWithError:v16 destination:v20];
    }
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(HMDRemoteAccountManager *)self accounts];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)processAccountModelRemove:(id)a3 message:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(HMDRemoteAccountManager *)self accountForModelIdentifier:v8];

  if (v9)
  {
    [(HMDRemoteAccountManager *)self removeAccount:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unexpected object model received", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processAccountModel:(id)a3 message:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 uuid];
  v8 = [(HMDRemoteAccountManager *)self accountForModelIdentifier:v7];

  if (v8)
  {
    [v8 transactionObjectUpdated:0 newValues:v10 message:v6];
  }

  else
  {
    v9 = [[HMDAccount alloc] initWithObjectModel:v10];
    if (!v9)
    {
      goto LABEL_6;
    }

    v8 = v9;
    [(HMDRemoteAccountManager *)self addAccount:v9];
  }

LABEL_6:
}

- (BOOL)shouldSyncDevice:(id)a3
{
  v4 = [a3 account];
  LOBYTE(self) = [(HMDRemoteAccountManager *)self shouldSyncAccount:v4];

  return self;
}

- (void)_resolveAccountForHandle:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke;
    block[3] = &unk_278689F98;
    block[4] = self;
    v12 = v7;
    v11 = v6;
    dispatch_async(queue, block);
  }
}

void __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isMonitoring];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v35 = v7;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting to resolve handle: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = [*(a1 + 32) resolveOperations];
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v10)
    {
LABEL_15:

      goto LABEL_22;
    }

    v11 = *v30;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v29 + 1) + 8 * v12);
      v14 = [v13 handle];
      if ([v14 isEqual:*(a1 + 40)])
      {
        v15 = [v13 isFinished];

        if ((v15 & 1) == 0)
        {
          v17 = v13;

          if (v17)
          {
            v18 = 0;
            goto LABEL_23;
          }

LABEL_22:
          v17 = [[HMDAccountHandleResolveOperation alloc] initWithHandle:*(a1 + 40)];
          v19 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Accounts.Resolve"];
          [(HMFOperation *)v17 setActivity:v19];
          objc_initWeak(buf, *(a1 + 32));
          objc_initWeak(&location, v17);
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_37;
          v25[3] = &unk_278681288;
          objc_copyWeak(&v26, buf);
          objc_copyWeak(&v27, &location);
          [(HMDAccountHandleResolveOperation *)v17 setCompletionBlock:v25];
          v20 = [*(a1 + 32) resolveOperations];
          [v20 addObject:v17];

          objc_destroyWeak(&v27);
          objc_destroyWeak(&v26);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);

          v18 = 1;
LABEL_23:
          v21 = *(a1 + 48);
          if (v21)
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_3;
            v23[3] = &unk_27867DC38;
            v24 = v21;
            [(HMDAccountHandleResolveOperation *)v17 addResolveBlock:v23];
          }

          if (v18)
          {
            [(HMFOperation *)v17 start];
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v16;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cannot resolve handle before started", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (*(a1 + 48))
  {
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(*(a1 + 48) + 16))();
    goto LABEL_27;
  }

LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
}

void __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_2;
    v5[3] = &unk_278686B48;
    objc_copyWeak(&v6, (a1 + 40));
    v5[4] = v3;
    dispatch_async(v4, v5);
    objc_destroyWeak(&v6);
  }
}

void __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!(v6 | v5))
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  }

  (*(*(a1 + 32) + 16))();
}

void __70__HMDRemoteAccountManager__resolveAccountForHandle_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) resolveOperations];
    [v3 removeObject:v4];

    WeakRetained = v4;
  }
}

- (void)removeAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_recursive_lock_lock_with_options();
    if ([(NSMutableSet *)self->_accounts containsObject:v6])
    {
      [(NSMutableSet *)self->_accounts removeObject:v6];
      v5 = [v6 manager];
      if (v5 == self)
      {
        [v6 setManager:0];
      }

      __deleteAccountModel(self, v6);

      os_unfair_recursive_lock_unlock();
      __notifyDelegateAccountRemoved_187212(self, v6);
    }

    else
    {
      os_unfair_recursive_lock_unlock();
    }

    v4 = v6;
  }
}

- (void)addAccount:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_43;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (([(NSMutableSet *)self->_accounts containsObject:v4]& 1) != 0)
  {
LABEL_42:
    os_unfair_recursive_lock_unlock();
    goto LABEL_43;
  }

  v39 = v4;
  if (![v4 isAuthenticated])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = self->_accounts;
    v17 = [(NSMutableSet *)obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v17)
    {
      v18 = *v45;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v44 + 1) + 8 * i);
          if (([v20 isAuthenticated] & 1) != 0 && objc_msgSend(v20, "isRelatedToAccount:", v4))
          {
            v33 = objc_autoreleasePoolPush();
            v34 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543618;
              v57 = v36;
              v58 = 2112;
              v59 = v39;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Unable to add account: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            v4 = v39;
            goto LABEL_42;
          }
        }

        v17 = [(NSMutableSet *)obj countByEnumeratingWithState:&v44 objects:v55 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_28;
  }

  obj = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableSet count](self->_accounts, "count")}];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = [(NSMutableSet *)self->_accounts copy];
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v6)
  {
    v7 = *v49;
    do
    {
      for (j = 0; j != v6; ++j)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v48 + 1) + 8 * j);
        if ([v9 isRelatedToAccount:v39])
        {
          v10 = objc_autoreleasePoolPush();
          v11 = self;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543618;
            v57 = v13;
            v58 = 2112;
            v59 = v9;
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing related account: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          [(NSMutableSet *)self->_accounts removeObject:v9];
          v14 = [v9 manager];
          v15 = v14 == v11;

          if (v15)
          {
            [v9 setManager:0];
          }

          __deleteAccountModel(v11, v9);
          [(NSMutableSet *)obj addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v6);
  }

  if (![(NSMutableSet *)obj count])
  {
LABEL_28:
    v16 = 0;
    goto LABEL_29;
  }

  v16 = [(NSMutableSet *)obj copy];
LABEL_29:

  [(NSMutableSet *)self->_accounts addObject:v39];
  [v39 setManager:self];
  v21 = v39;
  v22 = [(HMDRemoteAccountManager *)self accountRegistry];
  [v22 addAccount:v21 isLocal:0];

  os_unfair_recursive_lock_unlock();
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v24)
  {
    v25 = *v41;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v23);
        }

        __notifyDelegateAccountRemoved_187212(self, *(*(&v40 + 1) + 8 * k));
      }

      v24 = [v23 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v24);
  }

  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v30;
    v58 = 2112;
    v59 = v21;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Account added: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  v52 = @"HMDAccountNotificationKey";
  v53 = v21;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  [v31 postNotificationName:@"HMDRemoteAccountManagerAddedAccountNotification" object:v28 userInfo:v32];

  v4 = v39;
LABEL_43:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)setAccounts:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
    accounts = self->_accounts;
    self->_accounts = v5;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v10++) setManager:{self, v12}];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [(NSMutableSet *)self->_accounts removeAllObjects];
  }

  os_unfair_recursive_lock_unlock();

  v11 = *MEMORY[0x277D85DE8];
}

- (id)accountForDeviceHandle:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v19 = *v25;
    do
    {
      v18 = v6;
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v8 devices];
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = *v21;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = [*(*(&v20 + 1) + 8 * j) handles];
              v14 = [v13 containsObject:v4];

              if (v14)
              {
                v15 = v8;

                goto LABEL_19;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v15 = 0;
    }

    while (v6);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  os_unfair_recursive_lock_unlock();
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)accountForModelIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 modelIdentifier];
        v11 = [v10 hmf_isEqualToUUID:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)accountForHandle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 handles];
        v11 = [v10 containsObject:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)accountForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDRemoteAccountManager_reset__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __32__HMDRemoteAccountManager_reset__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) accounts];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) removeAccount:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDRemoteAccountManager_stop__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__HMDRemoteAccountManager_stop__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setMonitoring:0];
    v6 = [*(a1 + 32) service];
    [v6 removeDelegate:*(a1 + 32)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDRemoteAccountManager_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __32__HMDRemoteAccountManager_start__block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isMonitoring] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v68 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setMonitoring:1];
    v6 = [*(a1 + 32) service];
    [v6 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 8)];

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v39 = v7;
      v9 = v7;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v68 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Staring audit", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v47 = [MEMORY[0x277CBEB58] set];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = [v9 accounts];
      v42 = [obj countByEnumeratingWithState:&v57 objects:buf count:16];
      if (v42)
      {
        v41 = *v58;
        v44 = v9;
        do
        {
          v12 = 0;
          do
          {
            if (*v58 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = v12;
            v13 = *(*(&v57 + 1) + 8 * v12);
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v46 = v13;
            v45 = [v13 devices];
            v14 = [v45 countByEnumeratingWithState:&v53 objects:v66 count:16];
            if (v14)
            {
              v15 = v14;
              v48 = *v54;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v54 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v17 = *(*(&v53 + 1) + 8 * i);
                  v18 = objc_autoreleasePoolPush();
                  v49 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v19 = v47;
                  v20 = [v19 countByEnumeratingWithState:&v49 objects:v65 count:16];
                  if (v20)
                  {
                    v21 = v20;
                    v22 = *v50;
                    while (2)
                    {
                      for (j = 0; j != v21; ++j)
                      {
                        if (*v50 != v22)
                        {
                          objc_enumerationMutation(v19);
                        }

                        if ([v17 isRelatedToDevice:*(*(&v49 + 1) + 8 * j)])
                        {
                          v29 = objc_autoreleasePoolPush();
                          v30 = v9;
                          v31 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                          {
                            v32 = HMFGetLogIdentifier();
                            v33 = [v17 shortDescription];
                            *v61 = 138543618;
                            v62 = v32;
                            v63 = 2112;
                            v64 = v33;
                            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Found duplicate device: %@", v61, 0x16u);

                            v9 = v44;
                          }

                          objc_autoreleasePoolPop(v29);
                          [v46 removeDevice:v17];

                          goto LABEL_31;
                        }
                      }

                      v21 = [v19 countByEnumeratingWithState:&v49 objects:v65 count:16];
                      if (v21)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v24 = objc_autoreleasePoolPush();
                  v25 = v9;
                  v26 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    v27 = HMFGetLogIdentifier();
                    v28 = [v17 shortDescription];
                    *v61 = 138543618;
                    v62 = v27;
                    v63 = 2112;
                    v64 = v28;
                    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Audited device: %@", v61, 0x16u);

                    v9 = v44;
                  }

                  objc_autoreleasePoolPop(v24);
                  [v19 addObject:v17];
LABEL_31:
                  objc_autoreleasePoolPop(v18);
                }

                v15 = [v45 countByEnumeratingWithState:&v53 objects:v66 count:16];
              }

              while (v15);
            }

            v12 = v43 + 1;
          }

          while (v43 + 1 != v42);
          v42 = [obj countByEnumeratingWithState:&v57 objects:buf count:16];
        }

        while (v42);
      }

      v34 = objc_autoreleasePoolPush();
      v35 = v9;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *v61 = 138543362;
        v62 = v37;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Finished audit", v61, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v7 = v39;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)configureWithAccountRegistry:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v5 = v4;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_accountRegistry)
  {
LABEL_7:
    _HMFPreconditionFailure();
    __break(1u);
    return;
  }

  self->_accountRegistry = v5;
  v6 = v5;
  os_unfair_recursive_lock_unlock();
  v7 = [(HMDAccountRegistry *)v6 fetchAccountsWithLocalFlag:0];

  [(HMDRemoteAccountManager *)self setAccounts:v7];
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDRemoteAccountManager *)self accounts];
  v5 = [v3 initWithName:@"Accounts" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDRemoteAccountManager)initWithIDSService:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = HMDRemoteAccountManager;
  v6 = [(HMDRemoteAccountManager *)&v17 init];
  if (v6)
  {
    v7 = HMDispatchQueueNameString();
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    accounts = v6->_accounts;
    v6->_accounts = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    resolveOperations = v6->_resolveOperations;
    v6->_resolveOperations = v14;

    objc_storeStrong(&v6->_service, a3);
  }

  return v6;
}

- (HMDRemoteAccountManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32_187250 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32_187250, &__block_literal_global_187251);
  }

  v3 = logCategory__hmf_once_v33_187252;

  return v3;
}

void __38__HMDRemoteAccountManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v33_187252;
  logCategory__hmf_once_v33_187252 = v1;
}

+ (id)sharedManager
{
  v2 = +[HMDRegistry shared];
  v3 = [v2 remoteAccountManager];

  return v3;
}

- (id)deviceForSenderContext:(id)a3
{
  v157 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v134 = 0;
    goto LABEL_99;
  }

  v122 = v4;
  v5 = [(HMDAccount *)v4 accountHandle];
  v6 = v5 == 0;

  v7 = objc_autoreleasePoolPush();
  v124 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v16;
      v150 = 2112;
      v151 = v122;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot update with sender context: %@", buf, 0x16u);
    }

    v134 = 0;
    goto LABEL_98;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    v150 = 2112;
    v151 = v122;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Updating with sender context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  os_unfair_recursive_lock_lock_with_options();
  v11 = v124;
  v12 = v122;
  v123 = v11;
  if (!v11)
  {
    v130 = 0;
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [(HMDAccount *)v12 accountIdentifier];

  if (v14)
  {
    v15 = [(HMDAccount *)v13 accountIdentifier];
    v130 = [(HMDRemoteAccountManager *)v123 accountForIdentifier:v15];
  }

  else
  {
    v17 = [(HMDAccount *)v13 accountHandle];

    if (!v17)
    {
      v130 = 0;
      goto LABEL_16;
    }

    v15 = [(HMDAccount *)v13 accountHandle];
    v130 = [(HMDRemoteAccountManager *)v123 accountForHandle:v15];
  }

LABEL_16:
  v12 = v13;
LABEL_17:
  v125 = v12;

  if (v130)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v123;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDAccount *)v130 shortDescription];
      *buf = 138543874;
      *&buf[4] = v21;
      v150 = 2112;
      v151 = v22;
      v152 = 2112;
      v153 = v125;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Found an existing account, %@, for sender: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [(HMDAccount *)v130 handles];
    v24 = [(HMDAccount *)v125 accountHandle];
    v25 = [v23 containsObject:v24];

    if ((v25 & 1) == 0)
    {
      v26 = [(HMDAccount *)v125 accountHandle];
      v27 = v19;
      v130 = v130;
      v28 = v26;
      v29 = v28;
      v131 = v27;
      if (v27 && v28)
      {
        v30 = objc_autoreleasePoolPush();
        v135 = v131;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [v29 shortDescription];
          v34 = [(HMDAccount *)v130 shortDescription];
          *buf = 138543874;
          *&buf[4] = v32;
          v150 = 2112;
          v151 = v33;
          v152 = 2112;
          v153 = v34;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Adding handle, %@, to account: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v35 = [(HMDRemoteAccountManager *)v135 accounts];
        v36 = [v35 countByEnumeratingWithState:&v145 objects:buf count:16];
        if (v36)
        {
          v37 = *v146;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v146 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v145 + 1) + 8 * i);
              if (v39 != v130)
              {
                v40 = [*(*(&v145 + 1) + 8 * i) handles];
                v41 = [v40 containsObject:v29];

                if (v41)
                {
                  v42 = [(HMDAccount *)v39 handles];
                  v43 = [v42 count];

                  v44 = objc_autoreleasePoolPush();
                  v45 = v135;
                  v46 = HMFGetOSLogHandle();
                  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
                  if (v43 == 1)
                  {
                    if (v47)
                    {
                      v48 = HMFGetLogIdentifier();
                      *v154 = 138543618;
                      *&v154[4] = v48;
                      *&v154[12] = 2112;
                      *&v154[14] = v39;
                      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Removing account: %@", v154, 0x16u);
                    }

                    objc_autoreleasePoolPop(v44);
                    [(HMDRemoteAccountManager *)v45 removeAccount:v39];
                  }

                  else
                  {
                    if (v47)
                    {
                      v49 = HMFGetLogIdentifier();
                      *v154 = 138543874;
                      *&v154[4] = v49;
                      *&v154[12] = 2112;
                      *&v154[14] = v29;
                      *&v154[22] = 2112;
                      *&v154[24] = v39;
                      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Removing handle, %@, from account: %@", v154, 0x20u);
                    }

                    objc_autoreleasePoolPop(v44);
                    [(HMDAccount *)v39 removeHandle:v29];
                  }
                }
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v145 objects:buf count:16];
          }

          while (v36);
        }

        [(HMDAccount *)v130 addHandle:v29];
      }
    }
  }

  else
  {
    v50 = v125;
    v51 = v50;
    if (v123)
    {
      v52 = MEMORY[0x277CBEB18];
      v53 = [(HMDAccount *)v50 deviceHandle];
      *buf = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
      v55 = [v52 arrayWithArray:v54];

      v56 = [(HMDAccount *)v51 localDeviceHandle];

      if (v56)
      {
        v57 = [(HMDAccount *)v51 localDeviceHandle];
        [v55 addObject:v57];
      }

      v58 = [HMDDevice alloc];
      v59 = [(HMDAccount *)v51 deviceHandle];
      v60 = [v59 identifier];
      v61 = [(HMDAccount *)v51 deviceVersion];
      v62 = [(HMDDevice *)v58 initWithIdentifier:v60 handles:v55 name:0 productInfo:0 version:v61 capabilities:0];

      v63 = [(HMDAccount *)v51 accountIdentifier];

      v64 = [HMDAccount alloc];
      if (v63)
      {
        v65 = [(HMDAccount *)v51 accountIdentifier];
        v66 = [(HMDAccount *)v51 accountHandle];
        *&v145 = v66;
        v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
        *v154 = v62;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:1];
        v130 = [(HMDAccount *)v64 initWithIdentifier:v65 handles:v67 devices:v68];
      }

      else
      {
        v65 = [(HMDAccount *)v51 accountHandle];
        v66 = [HMDAccountIdentifier accountIdentifierForAccountHandle:v65];
        v67 = [(HMDAccount *)v51 accountHandle];
        *&v145 = v67;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
        *v154 = v62;
        v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:1];
        v130 = [(HMDAccount *)v64 initWithIdentifier:v66 handles:v68 devices:v69];
      }
    }

    else
    {
      v130 = 0;
    }

    v70 = objc_autoreleasePoolPush();
    v71 = v123;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v73;
      v150 = 2112;
      v151 = v130;
      _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Adding account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    [(HMDRemoteAccountManager *)v71 addAccount:v130];
  }

  v121 = [(HMDAccount *)v125 localDeviceHandle];
  v74 = [(HMDAccount *)v125 deviceHandle];
  v134 = [(HMDAccount *)v130 deviceForHandle:v74];

  if (v134)
  {
    if (v121 && [(HMDAccount *)v134 addHandle:v121])
    {
      v75 = objc_autoreleasePoolPush();
      v76 = v123;
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        v78 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v78;
        v150 = 2112;
        v151 = v134;
        _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@Adding local handle to device %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v75);
    }

    v79 = [(HMDAccount *)v125 deviceVersion];
    if (!v79)
    {
      goto LABEL_96;
    }

    v80 = [(HMDAccount *)v125 deviceVersion];
    v81 = [(HMDAccount *)v134 version];
    v82 = HMFEqualObjects();

    if (v82)
    {
      goto LABEL_96;
    }

    v83 = objc_autoreleasePoolPush();
    v84 = v123;
    v85 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      v86 = HMFGetLogIdentifier();
      v87 = [(HMDAccount *)v125 deviceVersion];
      *buf = 138543874;
      *&buf[4] = v86;
      v150 = 2112;
      v151 = v134;
      v152 = 2112;
      v153 = v87;
      _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_INFO, "%{public}@Updating the device, %@, with version: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v83);
    v88 = [(HMDAccount *)v125 deviceVersion];
    [(HMDAccount *)v134 updateVersion:v88];
  }

  else
  {
    v89 = MEMORY[0x277CBEB18];
    v90 = [(HMDAccount *)v125 deviceHandle];
    v140 = v90;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
    v120 = [v89 arrayWithArray:v91];

    if (v121)
    {
      v92 = [(HMDAccount *)v125 localDeviceHandle];
      [v120 addObject:v92];
    }

    v93 = [HMDDevice alloc];
    v94 = [(HMDAccount *)v125 deviceHandle];
    v95 = [v94 identifier];
    v96 = [v120 copy];
    v97 = [(HMDAccount *)v125 deviceVersion];
    v98 = [(HMDDevice *)v93 initWithIdentifier:v95 handles:v96 name:0 productInfo:0 version:v97 capabilities:0];

    v99 = v123;
    v128 = v130;
    v134 = v98;
    v119 = v99;
    if (v99 && v128 && v134)
    {
      v100 = objc_autoreleasePoolPush();
      v133 = v119;
      v101 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v102 = HMFGetLogIdentifier();
        v103 = [(HMDAccount *)v134 shortDescription];
        v104 = [(HMDAccount *)v128 shortDescription];
        *buf = 138543874;
        *&buf[4] = v102;
        v150 = 2112;
        v151 = v103;
        v152 = 2112;
        v153 = v104;
        _os_log_impl(&dword_229538000, v101, OS_LOG_TYPE_INFO, "%{public}@Adding device, %@, to the account: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v100);
      v155 = 0u;
      v156 = 0u;
      memset(v154, 0, sizeof(v154));
      obj = [(HMDRemoteAccountManager *)v133 accounts];
      v129 = [obj countByEnumeratingWithState:v154 objects:buf count:16];
      if (v129)
      {
        v127 = **&v154[16];
        do
        {
          for (j = 0; j != v129; ++j)
          {
            if (**&v154[16] != v127)
            {
              objc_enumerationMutation(obj);
            }

            v105 = *(*&v154[8] + 8 * j);
            if (v105 != v128)
            {
              v138 = 0u;
              v139 = 0u;
              v136 = 0u;
              v137 = 0u;
              v106 = [(HMDAccount *)v105 devices];
              v107 = [v106 countByEnumeratingWithState:&v136 objects:&v145 count:16];
              if (v107)
              {
                v108 = *v137;
                do
                {
                  for (k = 0; k != v107; ++k)
                  {
                    if (*v137 != v108)
                    {
                      objc_enumerationMutation(v106);
                    }

                    v110 = *(*(&v136 + 1) + 8 * k);
                    if ([v110 isRelatedToDevice:{v134, v119}])
                    {
                      v111 = objc_autoreleasePoolPush();
                      v112 = v133;
                      v113 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                      {
                        v114 = HMFGetLogIdentifier();
                        *v141 = 138543618;
                        v142 = v114;
                        v143 = 2112;
                        v144 = v110;
                        _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_INFO, "%{public}@Removing device: %@", v141, 0x16u);
                      }

                      objc_autoreleasePoolPop(v111);
                      [(HMDAccount *)v105 removeDevice:v110];
                    }
                  }

                  v107 = [v106 countByEnumeratingWithState:&v136 objects:&v145 count:16];
                }

                while (v107);
              }
            }
          }

          v129 = [obj countByEnumeratingWithState:v154 objects:buf count:16];
        }

        while (v129);
      }

      [(HMDAccount *)v128 addDevice:v134];
    }

    v88 = v120;
  }

LABEL_96:
  os_unfair_recursive_lock_unlock();
  v7 = objc_autoreleasePoolPush();
  v115 = v123;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v116 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v116;
    v150 = 2112;
    v151 = v125;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Updated with sender context: %@", buf, 0x16u);
  }

LABEL_98:

  objc_autoreleasePoolPop(v7);
  v4 = v122;
LABEL_99:

  v117 = *MEMORY[0x277D85DE8];

  return v134;
}

- (id)accountForSenderContext:(id)a3
{
  if (a3)
  {
    v3 = [(HMDRemoteAccountManager *)self deviceForSenderContext:?];
    v4 = [v3 account];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)__handleSendMessageFailureWithError:(id)a3 destination:(id)a4
{
  v56[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v52 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Received notification of failed message to, %@, with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [v6 domain];
    v14 = [v13 isEqualToString:*MEMORY[0x277D18538]];

    if (v14)
    {
      if (([v6 code] & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        goto LABEL_40;
      }

LABEL_10:
      v17 = v10;
      v18 = v8;
      if (!v17)
      {
LABEL_39:

        goto LABEL_40;
      }

      v19 = +[HMDAccountHandleFormatter defaultFormatter];
      v20 = [v19 accountHandleFromString:v18];

      if (!v20)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v17;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v30;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2112;
          v52 = v18;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from unknown account handle: %{mask.hash}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        goto LABEL_38;
      }

      v21 = [(HMDRemoteAccountManager *)v17 accountForHandle:v20];
      v22 = [HMDDeviceHandle deviceHandleForDestination:v18];
      v49 = v22;
      if (v22)
      {
        if (([v22 isGlobal] & 1) == 0)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v17;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v38;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v52 = v49;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from non-global handle: %{mask.hash}@", buf, 0x20u);
          }

          goto LABEL_19;
        }

        if (!v21)
        {
          v21 = [(HMDRemoteAccountManager *)v17 accountForDeviceHandle:v49];
          if (!v21)
          {
            v43 = objc_autoreleasePoolPush();
            v44 = v17;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543874;
              *&buf[4] = v46;
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2112;
              v52 = v49;
              _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from device handle with no account %{mask.hash}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v43);
            goto LABEL_37;
          }
        }

        v48 = [v21 deviceForHandle:v49];
        if (!v48)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v17;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v26;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v52 = v49;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from unknown device handle: %{mask.hash}@", buf, 0x20u);
          }

LABEL_19:

          objc_autoreleasePoolPop(v23);
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }
      }

      else
      {
        if (!v21)
        {
          v39 = objc_autoreleasePoolPush();
          v40 = v17;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v42;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v52 = v18;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Received unregistration from unknown destination: %{mask.hash}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v39);
          goto LABEL_37;
        }

        v48 = 0;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = v17;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v34;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v52 = v18;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Received unregistration from destination: %{mask.hash}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      objc_initWeak(&location, v32);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____handleUnregisteredDestination_block_invoke;
      v52 = &unk_27867DC60;
      objc_copyWeak(v56, &location);
      v35 = v21;
      v53 = v35;
      v36 = v20;
      v54 = v36;
      v37 = v48;
      v55 = v37;
      [(HMDRemoteAccountManager *)v32 _resolveAccountForHandle:v36 completionHandler:buf];

      objc_destroyWeak(v56);
      objc_destroyWeak(&location);

      goto LABEL_37;
    }

    v15 = [v6 domain];
    v16 = [v15 isEqualToString:*MEMORY[0x277D18920]];

    if (v16 && [v6 code] == 1)
    {
      goto LABEL_10;
    }
  }

LABEL_40:

  v47 = *MEMORY[0x277D85DE8];
}

@end