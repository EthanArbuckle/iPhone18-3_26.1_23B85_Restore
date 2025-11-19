@interface HMDHouseholdMetricsClient
+ (id)logCategory;
- (HMDHouseholdMetricsClient)initWithCountersManager:(id)a3 dateProvider:(id)a4 remoteMessageDispatcher:(id)a5 requestCountProvider:(id)a6 logEventFactories:(id)a7 isDNUEnabledBlock:(id)a8;
- (HMDHouseholdMetricsMessaging)remoteMessageDispatcher;
- (HMDHouseholdMetricsRequestCountProvider)requestCountProvider;
- (id)handleRequestMessageWithPayload:(id)a3 outError:(id *)a4;
- (id)householdMetricsForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (void)dealloc;
- (void)deleteExpiredCounters;
- (void)handleRequest:(id)a3;
@end

@implementation HMDHouseholdMetricsClient

- (HMDHouseholdMetricsRequestCountProvider)requestCountProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_requestCountProvider);

  return WeakRetained;
}

- (HMDHouseholdMetricsMessaging)remoteMessageDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteMessageDispatcher);

  return WeakRetained;
}

- (void)deleteExpiredCounters
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHouseholdMetricsClient *)self dateProvider];
  v4 = [v3 startOfDayByAddingDayCount:-3];

  v5 = [(HMDHouseholdMetricsClient *)self dateProvider];
  v6 = [v5 startOfDayByAddingDayCount:1];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(HMDHouseholdMetricsClient *)self logEventFactories];
  v8 = [v7 objectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 deleteCountersBeforeDate:v4];
        [v13 deleteCountersAfterDate:v6];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)householdMetricsForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHouseholdMetricsClient *)self requestCountProvider];
  [v8 incrementRequestCountForHomeUUID:v6 date:v7];

  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v10 = [(HMDHouseholdMetricsClient *)self logEventFactories];
  v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

  v12 = [(HMDHouseholdMetricsClient *)self logEventFactories];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__HMDHouseholdMetricsClient_householdMetricsForHomeWithUUID_associatedWithDate___block_invoke;
  v18[3] = &unk_2786881C0;
  v19 = v6;
  v20 = v7;
  v21 = v11;
  v13 = v11;
  v14 = v7;
  v15 = v6;
  [v12 enumerateKeysAndObjectsUsingBlock:v18];

  v16 = [v13 copy];

  return v16;
}

void __80__HMDHouseholdMetricsClient_householdMetricsForHomeWithUUID_associatedWithDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 logEventsPopulatedForHomeWithUUID:*(a1 + 32) associatedWithDate:*(a1 + 40)];
  if (v5)
  {
    [*(a1 + 48) setObject:v5 forKey:v6];
  }
}

- (id)handleRequestMessageWithPayload:(id)a3 outError:(id *)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v10;
    v46 = 2112;
    v47 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Processing request, payload=%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDHouseholdMetricsClient *)v8 isDNUEnabledBlock];
  v12 = v11[2]();

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v14 = [v6 objectForKeyedSubscript:@"homeUUID"];
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
      v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v16];
    }

    else
    {
      v17 = 0;
    }

    v23 = [v6 objectForKeyedSubscript:@"date"];
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

    if (v17 && v25)
    {
      v26 = [(HMDHouseholdMetricsClient *)v8 householdMetricsForHomeWithUUID:v17 associatedWithDate:v25];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __70__HMDHouseholdMetricsClient_handleRequestMessageWithPayload_outError___block_invoke;
      v42[3] = &unk_278688218;
      v42[4] = v8;
      v27 = v13;
      v43 = v27;
      [v26 enumerateKeysAndObjectsUsingBlock:v42];
      v28 = objc_autoreleasePoolPush();
      v29 = v8;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v31 = v41 = v13;
        *buf = 138543618;
        v45 = v31;
        v46 = 2112;
        v47 = v27;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Responding with payload=%@", buf, 0x16u);

        v13 = v41;
      }

      objc_autoreleasePoolPop(v28);
      v22 = [v27 copy];
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v8;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = v35;
        v37 = "home UUID and date";
        if (v25)
        {
          v37 = "home UUID";
        }

        v38 = "date";
        if (v25)
        {
          v38 = "<impossible>";
        }

        if (v17)
        {
          v37 = v38;
        }

        *buf = 138543618;
        v45 = v35;
        v46 = 2080;
        v47 = v37;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Missing %s in request, responding with error", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:20 userInfo:0];
        *a4 = v22 = 0;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v8;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@DNU disabled, responding with error", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:17 userInfo:0];
      *a4 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  v39 = *MEMORY[0x277D85DE8];

  return v22;
}

void __70__HMDHouseholdMetricsClient_handleRequestMessageWithPayload_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) logEventFactories];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [v8 serializeLogEvents:v6];
    if (v9)
    {
      if ([MEMORY[0x277CCAC58] propertyList:v9 isValidForFormat:200])
      {
        [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
LABEL_15:

        goto LABEL_16;
      }

      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v17;
        v24 = 2114;
        v25 = v5;
        v18 = "%{public}@Dropping %{public}@ because the metrics can't be serialized as a property list";
        v19 = v16;
        v20 = OS_LOG_TYPE_ERROR;
        goto LABEL_13;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v17;
        v24 = 2114;
        v25 = v5;
        v18 = "%{public}@Factory didn't return serialized data for %{public}@";
        v19 = v16;
        v20 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
        _os_log_impl(&dword_229538000, v19, v20, v18, &v22, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v13;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Dropping %{public}@ because it's factory doesn't serialize", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 messagePayload];
  v8 = 0;
  v6 = [(HMDHouseholdMetricsClient *)self handleRequestMessageWithPayload:v5 outError:&v8];
  v7 = v8;
  [v4 respondWithPayload:v6 error:v7];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteMessageDispatcher);
  [WeakRetained deregisterForMessage:@"HMDHouseholdMetricsHomeDataLogEventRequest"];

  v4.receiver = self;
  v4.super_class = HMDHouseholdMetricsClient;
  [(HMDHouseholdMetricsClient *)&v4 dealloc];
}

- (HMDHouseholdMetricsClient)initWithCountersManager:(id)a3 dateProvider:(id)a4 remoteMessageDispatcher:(id)a5 requestCountProvider:(id)a6 logEventFactories:(id)a7 isDNUEnabledBlock:(id)a8
{
  v26 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v27.receiver = self;
  v27.super_class = HMDHouseholdMetricsClient;
  v20 = [(HMDHouseholdMetricsClient *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_countersManager, a3);
    objc_storeStrong(&v21->_dateProvider, a4);
    objc_storeWeak(&v21->_remoteMessageDispatcher, v16);
    objc_storeWeak(&v21->_requestCountProvider, v17);
    objc_storeStrong(&v21->_logEventFactories, a7);
    v22 = _Block_copy(v19);
    isDNUEnabledBlock = v21->_isDNUEnabledBlock;
    v21->_isDNUEnabledBlock = v22;

    [v16 registerForMessage:@"HMDHouseholdMetricsHomeDataLogEventRequest" selector:sel_handleRequest_];
    v24 = v21;
  }

  return v21;
}

uint64_t __129__HMDHouseholdMetricsClient_initWithCountersManager_dateProvider_remoteMessageDispatcher_requestCountProvider_logEventFactories___block_invoke()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 isDiagnosticSubmissionAllowed];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_267959 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_267959, &__block_literal_global_21_267960);
  }

  v3 = logCategory__hmf_once_v10_267961;

  return v3;
}

void __40__HMDHouseholdMetricsClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_267961;
  logCategory__hmf_once_v10_267961 = v1;
}

@end