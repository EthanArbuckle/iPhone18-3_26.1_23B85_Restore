@interface HMDNetworkRouterFirewallRuleManager
+ (HMDNetworkRouterFirewallRuleManager)sharedInstance;
+ (double)_intervalPreferenceForKey:(void *)key defaultValue:;
+ (id)logCategory;
- (HMDNetworkRouterFirewallRuleManager)init;
- (HMDNetworkRouterFirewallRuleManager)initWithLocalDatabase:(id)database coordinatorFactory:(id)factory;
- (HMDNetworkRouterFirewallRuleManager)initWithLocalDatabase:(id)database notificationCenter:(id)center workQueue:(id)queue coordinatorFactory:(id)factory;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator)coordinator;
- (NSArray)activeClients;
- (NSMutableArray)clients;
- (int64_t)state;
- (void)__beginOperationWithBlock:(os_unfair_lock_s *)block;
- (void)__finishOperationWithCallbackBlock:(void *)block;
- (void)__invokeCompletions:(void *)completions withError:;
- (void)__notifyCoordinatorThatClientsChanged;
- (void)__startupOrShutdownIfNecessary;
- (void)_addOverridesWithData:(char)data replace:(void *)replace completion:;
- (void)_dumpCloudRecordsForProductGroup:(void *)group productNumber:(char)number rawOutput:(char)output listOnly:(char)only verifySignatures:(void *)signatures completion:;
- (void)_dumpLocalRuleConfigurationsForProductGroup:(void *)group productNumber:(void *)number firmwareVersion:(char)version ignoreOverrides:(char)overrides rawOutput:(void *)output completion:;
- (void)_fetchCloudChangesIgnoringLastFetchedAccessories:(BOOL)accessories forceChangeNotifications:(BOOL)notifications completion:(id)completion;
- (void)_removeOverridesForProductGroup:(void *)group productNumber:(void *)number completion:;
- (void)dealloc;
- (void)didCompleteScheduledCloudFetch;
- (void)dumpPairedMetadataForProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version ignoreOverrides:(BOOL)overrides rawOutput:(BOOL)output completion:(id)completion;
- (void)fetchPairedMetadataVersionConfigurationsForAccessories:(id)accessories completion:(id)completion;
- (void)fetchRulesForAccessories:(id)accessories completion:(id)completion;
- (void)removeAllLocalRulesWithCompletion:(id)completion;
- (void)setCoordinator:(id)coordinator;
- (void)setState:(int64_t)state;
- (void)shutdownForClient:(id)client;
- (void)startupForClient:(id)client completion:(id)completion;
@end

@implementation HMDNetworkRouterFirewallRuleManager

- (void)_removeOverridesForProductGroup:(void *)group productNumber:(void *)number completion:
{
  v7 = a2;
  groupCopy = group;
  numberCopy = number;
  v10 = numberCopy;
  if (self)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __96__HMDNetworkRouterFirewallRuleManager__removeOverridesForProductGroup_productNumber_completion___block_invoke;
    v11[3] = &unk_278674BB8;
    v14 = numberCopy;
    v12 = v7;
    v13 = groupCopy;
    [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v11];
  }
}

void __96__HMDNetworkRouterFirewallRuleManager__removeOverridesForProductGroup_productNumber_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __96__HMDNetworkRouterFirewallRuleManager__removeOverridesForProductGroup_productNumber_completion___block_invoke_2;
    v24[3] = &unk_27868A7A0;
    v26 = *(a1 + 48);
    v25 = v6;
    [(HMDNetworkRouterFirewallRuleManager *)v5 __finishOperationWithCallbackBlock:v24];

    v7 = v26;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 coordinator];
    v10 = v9;
    if (v8)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v23 = 0;
      v13 = &v23;
      v14 = [v9 removeOverridesForProductGroup:v11 productNumber:v12 error:&v23];
    }

    else
    {
      v22 = 0;
      v13 = &v22;
      v14 = [v9 removeAllOverridesWithError:&v22];
    }

    v15 = v14;
    v16 = *v13;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__HMDNetworkRouterFirewallRuleManager__removeOverridesForProductGroup_productNumber_completion___block_invoke_3;
    v18[3] = &unk_278687F18;
    v21 = v15;
    v17 = *(a1 + 48);
    v19 = v16;
    v20 = v17;
    v7 = v16;
    [(HMDNetworkRouterFirewallRuleManager *)v5 __finishOperationWithCallbackBlock:v18];
  }
}

- (void)__beginOperationWithBlock:(os_unfair_lock_s *)block
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (block)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(os_unfair_lock_s *)block operationsInProgressCount]+ 1;
    [(os_unfair_lock_s *)block setOperationsInProgressCount:v4];
    os_unfair_lock_unlock(block + 2);
    v5 = objc_autoreleasePoolPush();
    blockCopy = block;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v8;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Operation started (%lu operations now pending)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    workQueue = [(os_unfair_lock_s *)blockCopy workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__HMDNetworkRouterFirewallRuleManager___beginOperationWithBlock___block_invoke;
    v11[3] = &unk_27868A7A0;
    v11[4] = blockCopy;
    v12 = v3;
    dispatch_async(workQueue, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __65__HMDNetworkRouterFirewallRuleManager___beginOperationWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  if (v2 == 1 || v2 == 3)
  {
    v6 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(v6 + 8);
    v7 = MEMORY[0x277CCA9B8];
    v8 = 15;
  }

  else
  {
    if (v2 == 2)
    {
      v9 = *(a1 + 32);
      v10 = *(*(a1 + 40) + 16);

      v10();
      return;
    }

    v11 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(v11 + 8);
    v7 = MEMORY[0x277CCA9B8];
    v8 = -1;
  }

  v12 = [v7 hmErrorWithCode:v8];
  (*(v5 + 16))(v5, v4, v12);
}

- (void)__finishOperationWithCallbackBlock:(void *)block
{
  v3 = a2;
  if (block)
  {
    workQueue = [block workQueue];
    dispatch_assert_queue_V2(workQueue);

    callbackQueue = [block callbackQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__HMDNetworkRouterFirewallRuleManager___finishOperationWithCallbackBlock___block_invoke;
    v6[3] = &unk_27868A7A0;
    v6[4] = block;
    v7 = v3;
    dispatch_async(callbackQueue, v6);
  }
}

uint64_t __96__HMDNetworkRouterFirewallRuleManager__removeOverridesForProductGroup_productNumber_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, v4);
}

void __74__HMDNetworkRouterFirewallRuleManager___finishOperationWithCallbackBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDNetworkRouterFirewallRuleManager___finishOperationWithCallbackBlock___block_invoke_2;
  block[3] = &unk_27868A728;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __74__HMDNetworkRouterFirewallRuleManager___finishOperationWithCallbackBlock___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(a1 + 32) workQueue];
    dispatch_assert_queue_V2(v2);

    os_unfair_lock_lock_with_options();
    v3 = [(os_unfair_lock_s *)v1 operationsInProgressCount];
    if (v3)
    {
      v4 = v3 - 1;
      [(os_unfair_lock_s *)v1 setOperationsInProgressCount:v3 - 1];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Operation count unbalanced", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [[HMDAssertionLogEvent alloc] initWithReason:@"Operation count unbalanced"];
      v15 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v15 submitLogEvent:v14];

      v4 = 0;
    }

    os_unfair_lock_unlock(v1 + 2);
    v5 = objc_autoreleasePoolPush();
    v6 = v1;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v8;
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Operation finished (%lu operations now pending)", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDNetworkRouterFirewallRuleManager *)v6 __startupOrShutdownIfNecessary];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)__startupOrShutdownIfNecessary
{
  v62 = *MEMORY[0x277D85DE8];
  if (self)
  {
    state = [(os_unfair_lock_s *)self state];
    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v3 = state;
      clients = [(os_unfair_lock_s *)self clients];
      v5 = [clients count];
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [clients objectAtIndex:v7];
        client = [v8 client];

        if (client)
        {
          ++v7;
        }

        else
        {
          [clients removeObjectAtIndex:v7];
          --v5;
          ++v6;
        }
      }

      while (v7 < v5);
      if (v6)
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *v58 = 138543874;
          *&v58[4] = v13;
          *&v58[12] = 2048;
          *&v58[14] = v6;
          *&v58[22] = 2048;
          v59 = v5;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Purged %lu deallocated client(s) (now have %lu)", v58, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
        v14 = 1;
      }

      else
      {
LABEL_13:
        v14 = 0;
      }

      os_unfair_lock_lock_with_options();
      operationsInProgressCount = [(os_unfair_lock_s *)self operationsInProgressCount];
      os_unfair_lock_unlock(self + 2);
      if (v3 || !(v5 | operationsInProgressCount))
      {
        if (v3 != 2 || (v5 | operationsInProgressCount) != 0)
        {
          v24 = v14 ^ 1;
          if (v3 != 2)
          {
            v24 = 1;
          }

          if ((v24 & 1) == 0)
          {
            [(HMDNetworkRouterFirewallRuleManager *)self __notifyCoordinatorThatClientsChanged];
          }
        }

        else
        {
          workQueue = [(os_unfair_lock_s *)self workQueue];
          dispatch_assert_queue_V2(workQueue);

          if ([(os_unfair_lock_s *)self state]!= 2)
          {
            v46 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
            {
              v49 = HMFGetLogIdentifier();
              *v58 = 138543362;
              *&v58[4] = v49;
              _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must be running", v58, 0xCu);
            }

            objc_autoreleasePoolPop(v46);
            v50 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must be running"];
            v51 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v51 submitLogEvent:v50];
          }

          os_unfair_lock_lock_with_options();
          if ([(os_unfair_lock_s *)self operationsInProgressCount])
          {
            v52 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
            {
              v55 = HMFGetLogIdentifier();
              *v58 = 138543362;
              *&v58[4] = v55;
              _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must have finished all operations", v58, 0xCu);
            }

            objc_autoreleasePoolPop(v52);
            v56 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must have finished all operations"];
            v57 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v57 submitLogEvent:v56];
          }

          os_unfair_lock_unlock(self + 2);
          v26 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            *v58 = 138543362;
            *&v58[4] = v29;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Shutdown initiated", v58, 0xCu);
          }

          objc_autoreleasePoolPop(v26);
          [(os_unfair_lock_s *)selfCopy4 setState:3];
          coordinator = [(os_unfair_lock_s *)selfCopy4 coordinator];
          *v58 = MEMORY[0x277D85DD0];
          *&v58[8] = 3221225472;
          *&v58[16] = __49__HMDNetworkRouterFirewallRuleManager___shutdown__block_invoke;
          v59 = &unk_27868A250;
          v60 = selfCopy4;
          [coordinator shutdownWithCompletion:v58];
        }
      }

      else
      {
        workQueue2 = [(os_unfair_lock_s *)self workQueue];
        dispatch_assert_queue_V2(workQueue2);

        if ([(os_unfair_lock_s *)self state])
        {
          v40 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            v43 = HMFGetLogIdentifier();
            *v58 = 138543362;
            *&v58[4] = v43;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must be stopped", v58, 0xCu);
          }

          objc_autoreleasePoolPop(v40);
          v44 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must be stopped"];
          v45 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v45 submitLogEvent:v44];
        }

        v17 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *v58 = 138543362;
          *&v58[4] = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Startup initiated", v58, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        [(os_unfair_lock_s *)selfCopy6 setState:1];
        coordinatorFactory = [(os_unfair_lock_s *)selfCopy6 coordinatorFactory];

        if (coordinatorFactory)
        {
          coordinatorFactory2 = [(os_unfair_lock_s *)selfCopy6 coordinatorFactory];
          createCoordinator = [coordinatorFactory2 createCoordinator];
        }

        else
        {
          v31 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator alloc];
          coordinatorFactory2 = [(os_unfair_lock_s *)selfCopy6 notificationCenter];
          [objc_opt_class() defaultCloudFetchInterval];
          v33 = v32;
          [objc_opt_class() defaultCloudFetchRetryInterval];
          v35 = v34;
          workQueue3 = [(os_unfair_lock_s *)selfCopy6 workQueue];
          createCoordinator = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v31 initWithFirewallRuleManager:selfCopy6 notificationCenter:coordinatorFactory2 cloudFetchInterval:workQueue3 cloudFetchRetryInterval:v33 ownerQueue:v35];
        }

        localDatabase = [(os_unfair_lock_s *)selfCopy6 localDatabase];
        *v58 = MEMORY[0x277D85DD0];
        *&v58[8] = 3221225472;
        *&v58[16] = __48__HMDNetworkRouterFirewallRuleManager___startup__block_invoke;
        v59 = &unk_27868A1D8;
        v60 = selfCopy6;
        v61 = createCoordinator;
        v38 = createCoordinator;
        [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v38 startupWithLocalDatabase:localDatabase completion:v58];
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)__notifyCoordinatorThatClientsChanged
{
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    coordinator = [self coordinator];
    if (objc_opt_respondsToSelector())
    {
      [coordinator firewallRuleManagerClientsDidChange];
    }
  }
}

void __49__HMDNetworkRouterFirewallRuleManager___shutdown__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  [*(a1 + 32) setCoordinator:0];
  [*(a1 + 32) setState:0];
  [(HMDNetworkRouterFirewallRuleManager *)*(a1 + 32) __startupOrShutdownIfNecessary];

  v9 = *MEMORY[0x277D85DE8];
}

void __48__HMDNetworkRouterFirewallRuleManager___startup__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [*(a1 + 32) clients];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __48__HMDNetworkRouterFirewallRuleManager___startup__block_invoke_2;
  v18 = &unk_278674AA0;
  v19 = *(a1 + 32);
  v7 = v6;
  v20 = v7;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Startup failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) setState:{0, v15, v16, v17, v18, v19}];
    [v5 removeAllObjects];
    [(HMDNetworkRouterFirewallRuleManager *)*(a1 + 32) __invokeCompletions:v7 withError:v3];
  }

  else
  {
    if (v11)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Startup completed successfully", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) setCoordinator:{*(a1 + 40), v15, v16, v17, v18, v19}];
    [*(a1 + 32) setState:2];
    [(HMDNetworkRouterFirewallRuleManager *)*(a1 + 32) __invokeCompletions:v7 withError:0];
    [(HMDNetworkRouterFirewallRuleManager *)*(a1 + 32) __startupOrShutdownIfNecessary];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __48__HMDNetworkRouterFirewallRuleManager___startup__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 startupCompletion];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = _Block_copy(v4);
    [v6 addObject:v7];

    [v3 setStartupCompletion:0];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Completion should not have been called yet", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [[HMDAssertionLogEvent alloc] initWithReason:@"Completion should not have been called yet"];
    v14 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v14 submitLogEvent:v13];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)__invokeCompletions:(void *)completions withError:
{
  v5 = a2;
  completionsCopy = completions;
  if (self && [v5 count])
  {
    callbackQueue = [self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMDNetworkRouterFirewallRuleManager___invokeCompletions_withError___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = self;
    v9 = v5;
    v10 = completionsCopy;
    dispatch_async(callbackQueue, block);
  }
}

void __69__HMDNetworkRouterFirewallRuleManager___invokeCompletions_withError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 48);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addOverridesWithData:(char)data replace:(void *)replace completion:
{
  v7 = a2;
  replaceCopy = replace;
  v9 = replaceCopy;
  if (self)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__HMDNetworkRouterFirewallRuleManager__addOverridesWithData_replace_completion___block_invoke;
    v10[3] = &unk_278674B90;
    v12 = replaceCopy;
    v11 = v7;
    dataCopy = data;
    [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v10];
  }
}

void __80__HMDNetworkRouterFirewallRuleManager__addOverridesWithData_replace_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__HMDNetworkRouterFirewallRuleManager__addOverridesWithData_replace_completion___block_invoke_2;
    v22[3] = &unk_27868A7A0;
    v24 = *(a1 + 40);
    v23 = v6;
    [(HMDNetworkRouterFirewallRuleManager *)v5 __finishOperationWithCallbackBlock:v22];

    v7 = v24;
  }

  else
  {
    v7 = [HMDNetworkRouterFirewallRuleManagerOverrideParser parseFromData:*(a1 + 32)];
    if (v7)
    {
      v8 = [v5 coordinator];
      v9 = [v7 copy];
      v10 = *(a1 + 48);
      v19 = 0;
      v11 = [v8 addOverrides:v9 replace:v10 error:&v19];
      v12 = v19;

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __80__HMDNetworkRouterFirewallRuleManager__addOverridesWithData_replace_completion___block_invoke_4;
      v15[3] = &unk_278687F18;
      v18 = v11;
      v13 = *(a1 + 40);
      v16 = v12;
      v17 = v13;
      v14 = v12;
      [(HMDNetworkRouterFirewallRuleManager *)v5 __finishOperationWithCallbackBlock:v15];
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __80__HMDNetworkRouterFirewallRuleManager__addOverridesWithData_replace_completion___block_invoke_3;
      v20[3] = &unk_278688B80;
      v21 = *(a1 + 40);
      [(HMDNetworkRouterFirewallRuleManager *)v5 __finishOperationWithCallbackBlock:v20];
      v14 = v21;
    }
  }
}

void __80__HMDNetworkRouterFirewallRuleManager__addOverridesWithData_replace_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2);
}

uint64_t __80__HMDNetworkRouterFirewallRuleManager__addOverridesWithData_replace_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, v4);
}

- (void)dumpPairedMetadataForProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version ignoreOverrides:(BOOL)overrides rawOutput:(BOOL)output completion:(id)completion
{
  groupCopy = group;
  numberCopy = number;
  versionCopy = version;
  completionCopy = completion;
  v18 = completionCopy;
  if (self)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __141__HMDNetworkRouterFirewallRuleManager__dumpPairedMetadataForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke;
    v19[3] = &unk_278674B40;
    v23 = completionCopy;
    v20 = groupCopy;
    v21 = numberCopy;
    v22 = versionCopy;
    overridesCopy = overrides;
    outputCopy = output;
    [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v19];
  }
}

void __141__HMDNetworkRouterFirewallRuleManager__dumpPairedMetadataForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __141__HMDNetworkRouterFirewallRuleManager__dumpPairedMetadataForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke_2;
    v24[3] = &unk_27868A7A0;
    v26 = *(a1 + 56);
    v25 = v5;
    v6 = a2;
    [(HMDNetworkRouterFirewallRuleManager *)v6 __finishOperationWithCallbackBlock:v24];

    v7 = v26;
  }

  else
  {
    v8 = a2;
    v9 = [v8 coordinator];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v14 = *(a1 + 65);
    v23 = 0;
    v15 = [v9 dumpPairedMetadataForProductGroup:v10 productNumber:v11 firmwareVersion:v12 ignoreOverrides:v13 rawOutput:v14 error:&v23];
    v16 = v23;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __141__HMDNetworkRouterFirewallRuleManager__dumpPairedMetadataForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke_3;
    v19[3] = &unk_278689F98;
    v20 = v15;
    v17 = *(a1 + 56);
    v21 = v16;
    v22 = v17;
    v7 = v16;
    v18 = v15;
    [(HMDNetworkRouterFirewallRuleManager *)v8 __finishOperationWithCallbackBlock:v19];
  }
}

uint64_t __141__HMDNetworkRouterFirewallRuleManager__dumpPairedMetadataForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    return (*(v3 + 16))(v3, 0);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5]);
  }
}

- (void)removeAllLocalRulesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HMDNetworkRouterFirewallRuleManager_removeAllLocalRulesWithCompletion___block_invoke;
  v6[3] = &unk_278674B68;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v6];
}

void __73__HMDNetworkRouterFirewallRuleManager_removeAllLocalRulesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__HMDNetworkRouterFirewallRuleManager_removeAllLocalRulesWithCompletion___block_invoke_2;
    v18[3] = &unk_27868A7A0;
    v20 = *(a1 + 32);
    v19 = v5;
    v6 = a2;
    [(HMDNetworkRouterFirewallRuleManager *)v6 __finishOperationWithCallbackBlock:v18];

    v7 = v20;
  }

  else
  {
    v8 = a2;
    v9 = [v8 coordinator];
    v17 = 0;
    v10 = [v9 removeAllLocalRulesWithError:&v17];
    v11 = v17;

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__HMDNetworkRouterFirewallRuleManager_removeAllLocalRulesWithCompletion___block_invoke_3;
    v13[3] = &unk_278687F18;
    v12 = *(a1 + 32);
    v16 = v10;
    v14 = v11;
    v15 = v12;
    v7 = v11;
    [(HMDNetworkRouterFirewallRuleManager *)v8 __finishOperationWithCallbackBlock:v13];
  }
}

uint64_t __73__HMDNetworkRouterFirewallRuleManager_removeAllLocalRulesWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return (*(v2 + 16))(v2, v3);
}

- (void)_dumpLocalRuleConfigurationsForProductGroup:(void *)group productNumber:(void *)number firmwareVersion:(char)version ignoreOverrides:(char)overrides rawOutput:(void *)output completion:
{
  v13 = a2;
  groupCopy = group;
  numberCopy = number;
  outputCopy = output;
  v17 = outputCopy;
  if (self)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __150__HMDNetworkRouterFirewallRuleManager__dumpLocalRuleConfigurationsForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke;
    v18[3] = &unk_278674B40;
    v22 = outputCopy;
    v19 = v13;
    v20 = groupCopy;
    v21 = numberCopy;
    versionCopy = version;
    overridesCopy = overrides;
    [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v18];
  }
}

void __150__HMDNetworkRouterFirewallRuleManager__dumpLocalRuleConfigurationsForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __150__HMDNetworkRouterFirewallRuleManager__dumpLocalRuleConfigurationsForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke_2;
    v24[3] = &unk_27868A7A0;
    v26 = *(a1 + 56);
    v25 = v5;
    v6 = a2;
    [(HMDNetworkRouterFirewallRuleManager *)v6 __finishOperationWithCallbackBlock:v24];

    v7 = v26;
  }

  else
  {
    v8 = a2;
    v9 = [v8 coordinator];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v14 = *(a1 + 65);
    v23 = 0;
    v15 = [v9 dumpLocalRulesForProductGroup:v10 productNumber:v11 firmwareVersion:v12 ignoreOverrides:v13 rawOutput:v14 error:&v23];
    v16 = v23;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __150__HMDNetworkRouterFirewallRuleManager__dumpLocalRuleConfigurationsForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke_3;
    v19[3] = &unk_278689F98;
    v20 = v15;
    v17 = *(a1 + 56);
    v21 = v16;
    v22 = v17;
    v7 = v16;
    v18 = v15;
    [(HMDNetworkRouterFirewallRuleManager *)v8 __finishOperationWithCallbackBlock:v19];
  }
}

uint64_t __150__HMDNetworkRouterFirewallRuleManager__dumpLocalRuleConfigurationsForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    return (*(v3 + 16))(v3, 0);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5]);
  }
}

- (void)_dumpCloudRecordsForProductGroup:(void *)group productNumber:(char)number rawOutput:(char)output listOnly:(char)only verifySignatures:(void *)signatures completion:
{
  v13 = a2;
  groupCopy = group;
  signaturesCopy = signatures;
  v16 = signaturesCopy;
  if (self)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __133__HMDNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke;
    v17[3] = &unk_278674B18;
    v20 = signaturesCopy;
    v18 = v13;
    v19 = groupCopy;
    numberCopy = number;
    outputCopy = output;
    onlyCopy = only;
    [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v17];
  }
}

void __133__HMDNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __133__HMDNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke_2;
    v18[3] = &unk_27868A7A0;
    v7 = &v20;
    v20 = *(a1 + 48);
    v8 = &v19;
    v19 = v6;
    [(HMDNetworkRouterFirewallRuleManager *)v5 __finishOperationWithCallbackBlock:v18];
  }

  else
  {
    v9 = [v5 coordinator];
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = *(a1 + 57);
    v13 = *(a1 + 58);
    v14 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __133__HMDNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke_3;
    v15[3] = &unk_278678988;
    v7 = &v16;
    v16 = v5;
    v8 = &v17;
    v17 = *(a1 + 48);
    [v9 dumpCloudRecordsForProductGroup:v14 productNumber:v10 rawOutput:v11 listOnly:v12 verifySignatures:v13 completion:v15];
  }
}

void __133__HMDNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __133__HMDNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke_4;
  v11[3] = &unk_278689F98;
  v12 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  [(HMDNetworkRouterFirewallRuleManager *)v7 __finishOperationWithCallbackBlock:v11];
}

uint64_t __133__HMDNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    return (*(v3 + 16))(v3, 0);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5]);
  }
}

- (void)fetchPairedMetadataVersionConfigurationsForAccessories:(id)accessories completion:(id)completion
{
  accessoriesCopy = accessories;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__HMDNetworkRouterFirewallRuleManager_fetchPairedMetadataVersionConfigurationsForAccessories_completion___block_invoke;
  v10[3] = &unk_278674AF0;
  v11 = accessoriesCopy;
  v12 = completionCopy;
  v8 = accessoriesCopy;
  v9 = completionCopy;
  [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v10];
}

void __105__HMDNetworkRouterFirewallRuleManager_fetchPairedMetadataVersionConfigurationsForAccessories_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __105__HMDNetworkRouterFirewallRuleManager_fetchPairedMetadataVersionConfigurationsForAccessories_completion___block_invoke_2;
    v15[3] = &unk_27868A7A0;
    v17 = *(a1 + 40);
    v16 = v5;
    [(HMDNetworkRouterFirewallRuleManager *)a2 __finishOperationWithCallbackBlock:v15];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (a2)
    {
      v8 = v6;
      v9 = [a2 workQueue];
      dispatch_assert_queue_V2(v9);

      v10 = [a2 coordinator];
      v21 = 0;
      v11 = [v10 fetchPairedMetadataVersionConfigurationsForAccessories:v8 qualityOfService:17 ignoreOverrides:0 error:&v21];

      v12 = v21;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      if (v11)
      {
        v13 = __106__HMDNetworkRouterFirewallRuleManager__fetchPairedMetadataVersionConfigurationsForAccessories_completion___block_invoke_2;
        v14 = v11;
      }

      else
      {
        v13 = __106__HMDNetworkRouterFirewallRuleManager__fetchPairedMetadataVersionConfigurationsForAccessories_completion___block_invoke;
        v14 = v12;
      }

      v18[2] = v13;
      v18[3] = &unk_27868A7A0;
      v20 = v7;
      v19 = v14;
      [(HMDNetworkRouterFirewallRuleManager *)a2 __finishOperationWithCallbackBlock:v18];
    }
  }
}

- (void)fetchRulesForAccessories:(id)accessories completion:(id)completion
{
  accessoriesCopy = accessories;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HMDNetworkRouterFirewallRuleManager_fetchRulesForAccessories_completion___block_invoke;
  v10[3] = &unk_278674AF0;
  v11 = accessoriesCopy;
  v12 = completionCopy;
  v8 = accessoriesCopy;
  v9 = completionCopy;
  [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v10];
}

void __75__HMDNetworkRouterFirewallRuleManager_fetchRulesForAccessories_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__HMDNetworkRouterFirewallRuleManager_fetchRulesForAccessories_completion___block_invoke_2;
    v14[3] = &unk_27868A7A0;
    v7 = &v16;
    v16 = *(a1 + 40);
    v8 = &v15;
    v15 = v6;
    [(HMDNetworkRouterFirewallRuleManager *)v5 __finishOperationWithCallbackBlock:v14];
  }

  else
  {
    v9 = [v5 coordinator];
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__HMDNetworkRouterFirewallRuleManager_fetchRulesForAccessories_completion___block_invoke_3;
    v11[3] = &unk_278680580;
    v7 = &v12;
    v12 = v5;
    v8 = &v13;
    v13 = *(a1 + 40);
    [v9 fetchRulesForAccessories:v10 qualityOfService:17 ignoreOverrides:0 completion:v11];
  }
}

void __75__HMDNetworkRouterFirewallRuleManager_fetchRulesForAccessories_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__HMDNetworkRouterFirewallRuleManager_fetchRulesForAccessories_completion___block_invoke_4;
  v11[3] = &unk_278689F98;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [(HMDNetworkRouterFirewallRuleManager *)v7 __finishOperationWithCallbackBlock:v11];
}

- (void)_fetchCloudChangesIgnoringLastFetchedAccessories:(BOOL)accessories forceChangeNotifications:(BOOL)notifications completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __124__HMDNetworkRouterFirewallRuleManager__fetchCloudChangesIgnoringLastFetchedAccessories_forceChangeNotifications_completion___block_invoke;
  v10[3] = &unk_278674AC8;
  v11 = completionCopy;
  accessoriesCopy = accessories;
  notificationsCopy = notifications;
  v9 = completionCopy;
  [(HMDNetworkRouterFirewallRuleManager *)self __beginOperationWithBlock:v10];
}

void __124__HMDNetworkRouterFirewallRuleManager__fetchCloudChangesIgnoringLastFetchedAccessories_forceChangeNotifications_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __124__HMDNetworkRouterFirewallRuleManager__fetchCloudChangesIgnoringLastFetchedAccessories_forceChangeNotifications_completion___block_invoke_2;
    v15[3] = &unk_27868A7A0;
    v7 = &v17;
    v17 = *(a1 + 32);
    v8 = &v16;
    v16 = v6;
    [(HMDNetworkRouterFirewallRuleManager *)v5 __finishOperationWithCallbackBlock:v15];
  }

  else
  {
    v9 = [v5 coordinator];
    v10 = *(a1 + 40);
    v11 = *(a1 + 41);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __124__HMDNetworkRouterFirewallRuleManager__fetchCloudChangesIgnoringLastFetchedAccessories_forceChangeNotifications_completion___block_invoke_3;
    v12[3] = &unk_278680580;
    v7 = &v13;
    v13 = v5;
    v8 = &v14;
    v14 = *(a1 + 32);
    [v9 fetchCloudChangesWithQualityOfService:17 ignoreLastFetchedAccessories:v10 forceChangeNotifications:v11 completion:v12];
  }
}

void __124__HMDNetworkRouterFirewallRuleManager__fetchCloudChangesIgnoringLastFetchedAccessories_forceChangeNotifications_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __124__HMDNetworkRouterFirewallRuleManager__fetchCloudChangesIgnoringLastFetchedAccessories_forceChangeNotifications_completion___block_invoke_4;
  v11[3] = &unk_278689F98;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [(HMDNetworkRouterFirewallRuleManager *)v7 __finishOperationWithCallbackBlock:v11];
}

uint64_t __124__HMDNetworkRouterFirewallRuleManager__fetchCloudChangesIgnoringLastFetchedAccessories_forceChangeNotifications_completion___block_invoke_4(void *a1)
{
  v2 = a1[6];
  if (!a1[4])
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))();
}

- (void)didCompleteScheduledCloudFetch
{
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  workQueue2 = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDNetworkRouterFirewallRuleManager_didCompleteScheduledCloudFetch__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue2, block);
}

- (NSArray)activeClients
{
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clients = [(HMDNetworkRouterFirewallRuleManager *)self clients];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(clients, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMDNetworkRouterFirewallRuleManager_activeClients__block_invoke;
  v9[3] = &unk_278674A78;
  v10 = v5;
  v6 = v5;
  [clients hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
  v7 = [v6 copy];

  return v7;
}

void __52__HMDNetworkRouterFirewallRuleManager_activeClients__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 client];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (void)shutdownForClient:(id)client
{
  clientCopy = client;
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDNetworkRouterFirewallRuleManager_shutdownForClient___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(workQueue, v7);
}

void __57__HMDNetworkRouterFirewallRuleManager_shutdownForClient___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clients];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__59005;
  v43 = __Block_byref_object_dispose__59006;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0x7FFFFFFFFFFFFFFFLL;
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __57__HMDNetworkRouterFirewallRuleManager_shutdownForClient___block_invoke_2;
  v31 = &unk_278674A50;
  v32 = *(a1 + 40);
  v33 = &v39;
  v34 = &v35;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:&v28];
  if (v40[5])
  {
    [v2 removeObjectAtIndex:{v36[3], v28, v29, v30, v31}];
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [v2 count];
      v8 = *(a1 + 40);
      *buf = 138543874;
      v47 = v6;
      v48 = 2048;
      v49 = v7;
      v50 = 2112;
      v51 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Removed active client (now have %lu): %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [*(a1 + 32) state];
    if (v9 == 2)
    {
      [(HMDNetworkRouterFirewallRuleManager *)*(a1 + 32) __notifyCoordinatorThatClientsChanged];
    }

    v10 = [v40[5] startupCompletion];
    if (v10)
    {
      if ((v9 & 0xFFFFFFFFFFFFFFFDLL) != 1)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = *(a1 + 32);
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v47 = v24;
          v25 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must be starting or stopping", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        v26 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must be starting or stopping"];
        v27 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v27 submitLogEvent:v26];
      }

      v11 = *(a1 + 32);
      v12 = _Block_copy(v10);
      v45 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [(HMDNetworkRouterFirewallRuleManager *)v11 __invokeCompletions:v13 withError:v14];
    }

    [(HMDNetworkRouterFirewallRuleManager *)*(a1 + 32) __startupOrShutdownIfNecessary];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543618;
      v47 = v18;
      v48 = 2112;
      v49 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Ignoring unbalanced shutdown request for client %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  v20 = *MEMORY[0x277D85DE8];
}

void __57__HMDNetworkRouterFirewallRuleManager_shutdownForClient___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [v10 client];
  v9 = a1[4];

  if (v8 == v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)startupForClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDNetworkRouterFirewallRuleManager_startupForClient_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = clientCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = clientCopy;
  dispatch_async(workQueue, block);
}

void __67__HMDNetworkRouterFirewallRuleManager_startupForClient_completion___block_invoke(id *a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] clients];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__59005;
  v35 = __Block_byref_object_dispose__59006;
  v36 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __67__HMDNetworkRouterFirewallRuleManager_startupForClient_completion___block_invoke_39;
  v28[3] = &unk_278674A28;
  v29 = a1[5];
  v30 = &v31;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v28];
  if (v32[5])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = a1[4];
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = a1[5];
      *buf = 138543618;
      v39 = v6;
      v40 = 2112;
      v41 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Ignoring duplicate startup request for client %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = [v32[5] startupCompletion];
    v9 = v8;
    if (v8)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __67__HMDNetworkRouterFirewallRuleManager_startupForClient_completion___block_invoke_41;
      v25[3] = &unk_278687AE8;
      v26 = v8;
      v27 = a1[6];
      [v32[5] setStartupCompletion:v25];

      v10 = v26;
    }

    else
    {
      v22 = a1[4];
      v10 = _Block_copy(a1[6]);
      v44[0] = v10;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      [(HMDNetworkRouterFirewallRuleManager *)v22 __invokeCompletions:v23 withError:0];
    }
  }

  else
  {
    v11 = objc_alloc_init(HMDNetworkRouterFirewallRuleManagerClientState);
    v12 = v32[5];
    v32[5] = v11;

    [v32[5] setClient:a1[5]];
    [v2 addObject:v32[5]];
    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v2 count];
      v18 = a1[5];
      *buf = 138543874;
      v39 = v16;
      v40 = 2048;
      v41 = v17;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Added active client (now have %lu): %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    if ([a1[4] state] == 2)
    {
      v19 = a1[4];
      v20 = _Block_copy(a1[6]);
      v37 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [(HMDNetworkRouterFirewallRuleManager *)v19 __invokeCompletions:v21 withError:0];

      [(HMDNetworkRouterFirewallRuleManager *)a1[4] __notifyCoordinatorThatClientsChanged];
    }

    else
    {
      [v32[5] setStartupCompletion:a1[6]];
      [(HMDNetworkRouterFirewallRuleManager *)a1[4] __startupOrShutdownIfNecessary];
    }
  }

  _Block_object_dispose(&v31, 8);
  v24 = *MEMORY[0x277D85DE8];
}

void __67__HMDNetworkRouterFirewallRuleManager_startupForClient_completion___block_invoke_39(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 client];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __67__HMDNetworkRouterFirewallRuleManager_startupForClient_completion___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  (*(*(a1 + 40) + 16))();
}

- (NSMutableArray)clients
{
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clients = self->_clients;

  return clients;
}

- (void)setState:(int64_t)state
{
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  self->_state = state;
}

- (int64_t)state
{
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_state;
}

- (void)setCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  coordinator = self->_coordinator;
  self->_coordinator = coordinatorCopy;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator)coordinator
{
  workQueue = [(HMDNetworkRouterFirewallRuleManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  coordinator = self->_coordinator;

  return coordinator;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_state)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: should be stopped", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [[HMDAssertionLogEvent alloc] initWithReason:@"should be stopped"];
    v9 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v9 submitLogEvent:v8];
  }

  v10.receiver = self;
  v10.super_class = HMDNetworkRouterFirewallRuleManager;
  [(HMDNetworkRouterFirewallRuleManager *)&v10 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

- (HMDNetworkRouterFirewallRuleManager)initWithLocalDatabase:(id)database coordinatorFactory:(id)factory
{
  v6 = MEMORY[0x277CCAB98];
  factoryCopy = factory;
  databaseCopy = database;
  defaultCenter = [v6 defaultCenter];
  v10 = HMFDispatchQueueName();
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(v10, v11);

  v13 = [(HMDNetworkRouterFirewallRuleManager *)self initWithLocalDatabase:databaseCopy notificationCenter:defaultCenter workQueue:v12 coordinatorFactory:factoryCopy];
  return v13;
}

- (HMDNetworkRouterFirewallRuleManager)init
{
  v3 = +[HMDDatabase defaultDatabase];
  localDatabase = [v3 localDatabase];
  v5 = [(HMDNetworkRouterFirewallRuleManager *)self initWithLocalDatabase:localDatabase];

  return v5;
}

- (HMDNetworkRouterFirewallRuleManager)initWithLocalDatabase:(id)database notificationCenter:(id)center workQueue:(id)queue coordinatorFactory:(id)factory
{
  databaseCopy = database;
  centerCopy = center;
  queueCopy = queue;
  factoryCopy = factory;
  v26.receiver = self;
  v26.super_class = HMDNetworkRouterFirewallRuleManager;
  v15 = [(HMDNetworkRouterFirewallRuleManager *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_localDatabase, database);
    objc_storeStrong(&v16->_notificationCenter, center);
    v17 = HMFDispatchQueueName();
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    callbackQueue = v16->_callbackQueue;
    v16->_callbackQueue = v19;

    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v16->_coordinatorFactory, factory);
    coordinator = v16->_coordinator;
    v16->_coordinator = 0;

    array = [MEMORY[0x277CBEB18] array];
    clients = v16->_clients;
    v16->_clients = array;

    v16->_state = 0;
    v16->_operationsInProgressCount = 0;
    v24 = v16;
  }

  return v16;
}

+ (double)_intervalPreferenceForKey:(void *)key defaultValue:
{
  keyCopy = key;
  objc_opt_self();
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v6 = [mEMORY[0x277D0F8D0] preferenceForKey:keyCopy];

  numberValue = [v6 numberValue];

  if (numberValue)
  {
    numberValue2 = [v6 numberValue];
    [numberValue2 doubleValue];
    self = v9;
  }

  return self;
}

+ (HMDNetworkRouterFirewallRuleManager)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_21_59063);
  }

  v3 = sharedInstance_firewallRuleManager;

  return v3;
}

void __53__HMDNetworkRouterFirewallRuleManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMDNetworkRouterFirewallRuleManager);
  v1 = sharedInstance_firewallRuleManager;
  sharedInstance_firewallRuleManager = v0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_59066 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_59066, &__block_literal_global_59067);
  }

  v3 = logCategory__hmf_once_v1_59068;

  return v3;
}

void __50__HMDNetworkRouterFirewallRuleManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_59068;
  logCategory__hmf_once_v1_59068 = v1;
}

@end