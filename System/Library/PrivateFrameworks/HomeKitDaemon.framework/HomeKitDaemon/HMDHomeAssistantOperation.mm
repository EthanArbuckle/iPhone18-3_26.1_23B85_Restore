@interface HMDHomeAssistantOperation
+ (id)homeAssistantOperationWithActionSet:(id)a3 queue:(id)a4;
+ (id)homeAssistantOperationWithReadRequests:(id)a3 queue:(id)a4;
+ (id)homeAssistantOperationWithWriteRequests:(id)a3 queue:(id)a4;
- (id)initWithAccessories:(void *)a3 queue:;
- (uint64_t)_testForReachability;
- (void)_callCompletion;
- (void)dealloc;
- (void)handleAccessoryIsReachable:(id)a3;
- (void)startWithCompletion:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDHomeAssistantOperation

- (void)startWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDHomeAssistantOperation_startWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __49__HMDHomeAssistantOperation_startWithCompletion___block_invoke(uint64_t a1, const char *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_setProperty_nonatomic_copy(v4, a2, v3, 48);
      v4 = *(a1 + 32);
    }

    v5 = [(HMDHomeAssistantOperation *)v4 _testForReachability];
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v8)
      {
        v9 = HMFGetLogIdentifier();
        v10 = *(a1 + 32);
        v20 = 138543618;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] Reachability test has passed, calling completion right away", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDHomeAssistantOperation *)*(a1 + 32) _callCompletion];
    }

    else
    {
      if (v8)
      {
        v15 = HMFGetLogIdentifier();
        v16 = *(a1 + 32);
        v20 = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] Reachability test did not pass, starting accessory connectivity timer", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v17 = *(a1 + 32);
      if (v17)
      {
        v18 = *(v17 + 24);
      }

      else
      {
        v18 = 0;
      }

      [v18 resume];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] Did not receive completion handler, cannot perform operation", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_testForReachability
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 40);
    v3 = [v2 count];
    v1 = v3 == [*(v1 + 32) count];
  }

  return v1;
}

- (void)_callCompletion
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_6:
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(a1 + 8))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v4;
      v10 = 2112;
      v11 = a1;
      _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@[%@] Completion handler has already been called", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    goto LABEL_6;
  }

  [*(a1 + 24) suspend];
  *(a1 + 8) = 1;
  v6 = *(*(a1 + 48) + 16);
  v7 = *MEMORY[0x277D85DE8];

  v6();
}

- (void)timerDidFire:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    accessoryConnectivityWaitTimer = self->_accessoryConnectivityWaitTimer;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    accessoryConnectivityWaitTimer = 0;
  }

  if (accessoryConnectivityWaitTimer == v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = self;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory connectivity wait timer has fired", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDHomeAssistantOperation *)self _callCompletion];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryIsReachable:(id)a3
{
  v4 = a3;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDHomeAssistantOperation_handleAccessoryIsReachable___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __56__HMDHomeAssistantOperation_handleAccessoryIsReachable___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 40);
    v4 = v3 ? *(v3 + 40) : 0;
    [v4 addObject:v2];
    if ([(HMDHomeAssistantOperation *)*(a1 + 40) _testForReachability])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = *(a1 + 40);
        v9 = [v2 uuid];
        v10 = [v9 UUIDString];
        v12 = 138543874;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory %@ is reachable, reachability test has passed, calling completion right away", &v12, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      [(HMDHomeAssistantOperation *)*(a1 + 40) _callCompletion];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDHomeAssistantOperation;
  [(HMDHomeAssistantOperation *)&v4 dealloc];
}

+ (id)homeAssistantOperationWithActionSet:(id)a3 queue:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v38 = a4;
  v6 = [MEMORY[0x277CBEB58] set];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = v5;
  obj = [v5 actions];
  v7 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        v12 = [v11 type];
        if (v12 <= 2)
        {
          if (v12)
          {
            if (v12 != 1)
            {
              continue;
            }

            v15 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v15;
            }

            else
            {
              v21 = 0;
            }

            v17 = v21;

            if (!v17)
            {
              v18 = objc_autoreleasePoolPush();
              v19 = a1;
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_57;
              }

              goto LABEL_58;
            }

            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v22 = [v17 mediaProfiles];
            v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v43;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v43 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [*(*(&v42 + 1) + 8 * j) accessory];
                  [v6 addObject:v27];
                }

                v24 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
              }

              while (v24);
            }

            goto LABEL_49;
          }

          v15 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v15;
          }

          else
          {
            v31 = 0;
          }

          v17 = v31;

          if (v17)
          {
            v29 = [v17 characteristic];
LABEL_47:
            v32 = v29;
            v22 = [v29 accessory];

            if (!v22)
            {
              goto LABEL_49;
            }

            goto LABEL_48;
          }

          v18 = objc_autoreleasePoolPush();
          v19 = a1;
          v20 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

LABEL_57:
          v33 = HMFGetLogIdentifier();
          v34 = HMActionTypeAsString();
          *buf = 138543874;
          v52 = v33;
          v53 = 2112;
          v54 = v15;
          v55 = 2112;
          v56 = v34;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

          goto LABEL_58;
        }

        switch(v12)
        {
          case 3:
            v15 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = v15;
            }

            else
            {
              v28 = 0;
            }

            v17 = v28;

            if (v17)
            {
              v29 = [v17 lightProfile];
              goto LABEL_47;
            }

            v18 = objc_autoreleasePoolPush();
            v19 = a1;
            v20 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 4:
            v15 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = v15;
            }

            else
            {
              v30 = 0;
            }

            v17 = v30;

            if (v17)
            {
              goto LABEL_40;
            }

            v18 = objc_autoreleasePoolPush();
            v19 = a1;
            v20 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          case 5:
            v13 = +[HMDCoreData featuresDataSource];
            v14 = [v13 isRVCEnabled];

            if (v14)
            {
              v15 = v11;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
              }

              else
              {
                v16 = 0;
              }

              v17 = v16;

              if (!v17)
              {
                v18 = objc_autoreleasePoolPush();
                v19 = a1;
                v20 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_57;
                }

LABEL_58:

                objc_autoreleasePoolPop(v18);
                v17 = 0;
LABEL_59:

                continue;
              }

LABEL_40:
              v22 = [v17 accessory];
              if (!v22)
              {
LABEL_49:

                goto LABEL_59;
              }

LABEL_48:
              [v6 addObject:v22];
              goto LABEL_49;
            }

            break;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v8);
  }

  v35 = [[HMDHomeAssistantOperation alloc] initWithAccessories:v6 queue:v38];
  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)initWithAccessories:(void *)a3 queue:
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    goto LABEL_23;
  }

  v49.receiver = a1;
  v49.super_class = HMDHomeAssistantOperation;
  v8 = objc_msgSendSuper2(&v49, sel_init);
  a1 = v8;
  if (!v8)
  {
    goto LABEL_23;
  }

  v40 = v7;
  objc_storeStrong(v8 + 2, a3);
  v9 = objc_alloc(MEMORY[0x277D0F920]);
  v10 = [v9 initWithTimeInterval:0 options:*&accessoryConnectivityWaitPeriod];
  v11 = a1[3];
  a1[3] = v10;

  [a1[3] setDelegate:a1];
  [a1[3] setDelegateQueue:a1[2]];
  objc_storeStrong(a1 + 4, a2);
  v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
  v13 = a1[5];
  a1[5] = v12;

  *(a1 + 8) = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = v6;
  v14 = v6;
  v15 = &OBJC_IVAR___HMDApplicationVendorIDStoreValue__spiClient;
  v16 = v14;
  v17 = [v14 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v17;
  v19 = *v46;
  v44 = v16;
  v42 = a1;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v46 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v45 + 1) + 8 * i);
      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      [v22 addObserver:a1 selector:sel_handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:v21];

      v23 = v21;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if ([v25 isReachable])
      {
        goto LABEL_12;
      }

      if ([v25 isPrimary] && objc_msgSend(v25, "hasBTLELink"))
      {
        v26 = objc_autoreleasePoolPush();
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          [v23 uuid];
          v29 = v43 = v26;
          v30 = [v29 UUIDString];
          *buf = 138543618;
          v51 = v28;
          v52 = 2112;
          v53 = v30;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Assuming reachability for primary BTLE accessory %@", buf, 0x16u);

          v15 = &OBJC_IVAR___HMDApplicationVendorIDStoreValue__spiClient;
          v26 = v43;

          a1 = v42;
        }

        objc_autoreleasePoolPop(v26);
        v16 = v44;
LABEL_12:
        [*(a1 + v15[941]) addObject:v23];
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v45 objects:v58 count:16];
  }

  while (v18);
LABEL_20:

  v31 = objc_autoreleasePoolPush();
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [a1[4] count];
    v35 = v15;
    v36 = v34;
    v37 = [*(a1 + v35[941]) count];
    *buf = 138544130;
    v51 = v33;
    v52 = 2112;
    v53 = a1;
    v54 = 2048;
    v55 = v36;
    v56 = 2048;
    v57 = v37;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@[%@] Need to perform operation on %ld accessories, and reachable accessory count is %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v31);
  v7 = v40;
  v6 = v41;
LABEL_23:

  v38 = *MEMORY[0x277D85DE8];
  return a1;
}

+ (id)homeAssistantOperationWithReadRequests:(id)a3 queue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) characteristic];
        v14 = [v13 accessory];

        if (v14)
        {
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [[HMDHomeAssistantOperation alloc] initWithAccessories:v7 queue:v6];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)homeAssistantOperationWithWriteRequests:(id)a3 queue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) characteristic];
        v14 = [v13 accessory];

        if (v14)
        {
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [[HMDHomeAssistantOperation alloc] initWithAccessories:v7 queue:v6];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end