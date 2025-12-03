@interface HMDHomeAssistantOperation
+ (id)homeAssistantOperationWithActionSet:(id)set queue:(id)queue;
+ (id)homeAssistantOperationWithReadRequests:(id)requests queue:(id)queue;
+ (id)homeAssistantOperationWithWriteRequests:(id)requests queue:(id)queue;
- (id)initWithAccessories:(void *)accessories queue:;
- (uint64_t)_testForReachability;
- (void)_callCompletion;
- (void)dealloc;
- (void)handleAccessoryIsReachable:(id)reachable;
- (void)startWithCompletion:(id)completion;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDHomeAssistantOperation

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] Reachability test has passed, calling completion right away", &v20, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] Reachability test did not pass, starting accessory connectivity timer", &v20, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] Did not receive completion handler, cannot perform operation", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_testForReachability
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 40);
    v3 = [v2 count];
    selfCopy = v3 == [*(selfCopy + 32) count];
  }

  return selfCopy;
}

- (void)_callCompletion
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self)
  {
LABEL_6:
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(self + 8))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v4;
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@[%@] Completion handler has already been called", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    goto LABEL_6;
  }

  [*(self + 24) suspend];
  *(self + 8) = 1;
  v6 = *(*(self + 48) + 16);
  v7 = *MEMORY[0x277D85DE8];

  v6();
}

- (void)timerDidFire:(id)fire
{
  v14 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
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

  if (accessoryConnectivityWaitTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory connectivity wait timer has fired", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDHomeAssistantOperation *)self _callCompletion];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryIsReachable:(id)reachable
{
  reachableCopy = reachable;
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
  v7[3] = &unk_2797359B0;
  v8 = reachableCopy;
  selfCopy = self;
  v6 = reachableCopy;
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
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory %@ is reachable, reachability test has passed, calling completion right away", &v12, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      [(HMDHomeAssistantOperation *)*(a1 + 40) _callCompletion];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDHomeAssistantOperation;
  [(HMDHomeAssistantOperation *)&v4 dealloc];
}

+ (id)homeAssistantOperationWithActionSet:(id)set queue:(id)queue
{
  v64 = *MEMORY[0x277D85DE8];
  setCopy = set;
  queueCopy = queue;
  v6 = [MEMORY[0x277CBEB58] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = setCopy;
  actions = [setCopy actions];
  v8 = [actions countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    v45 = actions;
    v46 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(actions);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        type = [v12 type];
        if (type <= 2)
        {
          if (type)
          {
            if (type != 1)
            {
              continue;
            }

            v14 = v12;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;

            if (v16)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              mediaProfiles = [v16 mediaProfiles];
              v18 = [mediaProfiles countByEnumeratingWithState:&v48 objects:v56 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v49;
                do
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v49 != v20)
                    {
                      objc_enumerationMutation(mediaProfiles);
                    }

                    accessory = [*(*(&v48 + 1) + 8 * j) accessory];
                    [v6 addObject:accessory];
                  }

                  v19 = [mediaProfiles countByEnumeratingWithState:&v48 objects:v56 count:16];
                }

                while (v19);
              }

              v10 = v46;
              goto LABEL_46;
            }

            v33 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
LABEL_44:
              v38 = HMFGetLogIdentifier();
              v39 = HMActionTypeAsString();
              *buf = 138543874;
              v58 = v38;
              v59 = 2112;
              v60 = v14;
              v61 = 2112;
              v62 = v39;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              v10 = v46;
            }

LABEL_45:

            objc_autoreleasePoolPop(v33);
            actions = v45;
LABEL_46:

            continue;
          }

          v27 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v16 = v28;

          if (!v16)
          {
            v33 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = HMFGetLogIdentifier();
              v37 = HMActionTypeAsString();
              *buf = 138543874;
              v58 = v36;
              v59 = 2112;
              v60 = v27;
              v61 = 2112;
              v62 = v37;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Action doesn't match its type %@:%@", buf, 0x20u);

              v10 = v46;
            }

            goto LABEL_45;
          }

          characteristic = [v16 characteristic];
          goto LABEL_36;
        }

        if (type == 3)
        {
          v14 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v14;
          }

          else
          {
            v30 = 0;
          }

          v16 = v30;

          if (!v16)
          {
            v33 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          characteristic = [v16 lightProfile];
LABEL_36:
          v31 = characteristic;
          accessory2 = [characteristic accessory];

          if (accessory2)
          {
            [v6 addObject:accessory2];
          }

          goto LABEL_46;
        }

        if (type == 5)
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543362;
            v58 = v26;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Native matter actions are not supported in HH1", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v23);
        }
      }

      v9 = [actions countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v9);
  }

  v40 = [[HMDHomeAssistantOperation alloc] initWithAccessories:v6 queue:queueCopy];
  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)initWithAccessories:(void *)accessories queue:
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a2;
  accessoriesCopy = accessories;
  if (!self)
  {
    goto LABEL_23;
  }

  v49.receiver = self;
  v49.super_class = HMDHomeAssistantOperation;
  v8 = objc_msgSendSuper2(&v49, sel_init);
  self = v8;
  if (!v8)
  {
    goto LABEL_23;
  }

  v40 = accessoriesCopy;
  objc_storeStrong(v8 + 2, accessories);
  v9 = objc_alloc(MEMORY[0x277D0F920]);
  v10 = [v9 initWithTimeInterval:0 options:*&accessoryConnectivityWaitPeriod];
  v11 = self[3];
  self[3] = v10;

  [self[3] setDelegate:self];
  [self[3] setDelegateQueue:self[2]];
  objc_storeStrong(self + 4, a2);
  v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
  v13 = self[5];
  self[5] = v12;

  *(self + 8) = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = v6;
  v14 = v6;
  v15 = &OBJC_IVAR___HMDAssistantIntent__homeKitObjects;
  v16 = v14;
  v17 = [v14 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v17;
  v19 = *v46;
  v44 = v16;
  selfCopy = self;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v46 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v45 + 1) + 8 * i);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:v21];

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
          uUIDString = [v29 UUIDString];
          *buf = 138543618;
          v51 = v28;
          v52 = 2112;
          selfCopy2 = uUIDString;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Assuming reachability for primary BTLE accessory %@", buf, 0x16u);

          v15 = &OBJC_IVAR___HMDAssistantIntent__homeKitObjects;
          v26 = v43;

          self = selfCopy;
        }

        objc_autoreleasePoolPop(v26);
        v16 = v44;
LABEL_12:
        [*(self + v15[102]) addObject:v23];
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
    v34 = [self[4] count];
    v35 = v15;
    v36 = v34;
    v37 = [*(self + v35[102]) count];
    *buf = 138544130;
    v51 = v33;
    v52 = 2112;
    selfCopy2 = self;
    v54 = 2048;
    v55 = v36;
    v56 = 2048;
    v57 = v37;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[%@] Need to perform operation on %ld accessories, and reachable accessory count is %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v31);
  accessoriesCopy = v40;
  v6 = v41;
LABEL_23:

  v38 = *MEMORY[0x277D85DE8];
  return self;
}

+ (id)homeAssistantOperationWithReadRequests:(id)requests queue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  queueCopy = queue;
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = requestsCopy;
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

        characteristic = [*(*(&v18 + 1) + 8 * i) characteristic];
        accessory = [characteristic accessory];

        if (accessory)
        {
          [v7 addObject:accessory];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [[HMDHomeAssistantOperation alloc] initWithAccessories:v7 queue:queueCopy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)homeAssistantOperationWithWriteRequests:(id)requests queue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  queueCopy = queue;
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = requestsCopy;
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

        characteristic = [*(*(&v18 + 1) + 8 * i) characteristic];
        accessory = [characteristic accessory];

        if (accessory)
        {
          [v7 addObject:accessory];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [[HMDHomeAssistantOperation alloc] initWithAccessories:v7 queue:queueCopy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end