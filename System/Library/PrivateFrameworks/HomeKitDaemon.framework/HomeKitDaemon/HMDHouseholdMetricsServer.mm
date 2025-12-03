@interface HMDHouseholdMetricsServer
+ (id)logCategory;
- (BOOL)evaluateMetricResponsesForSubmission:(id)submission;
- (HMDHouseholdMetricsDataSource)dataSource;
- (HMDHouseholdMetricsLogEventProviding)householdMetricsProvider;
- (HMDHouseholdMetricsMessaging)remoteMessageDispatcher;
- (HMDHouseholdMetricsServer)initWithDataSource:(id)source logEventSubmitter:(id)submitter householdMetricsProvider:(id)provider remoteMessageDispatcher:(id)dispatcher logEventFactories:(id)factories workQueue:(id)queue;
- (HMMLogEventSubmitting)logEventSubmitter;
- (void)runHouseholdMetricsDataCollectionAssociatedToDate:(id)date forceSubmit:(BOOL)submit;
- (void)sendHouseholdMetricsCollectionRequestToDevices:(id)devices forHomeWithUUID:(id)d associatedToDate:(id)date completion:(id)completion;
@end

@implementation HMDHouseholdMetricsServer

- (HMDHouseholdMetricsMessaging)remoteMessageDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteMessageDispatcher);

  return WeakRetained;
}

- (HMDHouseholdMetricsLogEventProviding)householdMetricsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_householdMetricsProvider);

  return WeakRetained;
}

- (HMMLogEventSubmitting)logEventSubmitter
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventSubmitter);

  return WeakRetained;
}

- (HMDHouseholdMetricsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)runHouseholdMetricsDataCollectionAssociatedToDate:(id)date forceSubmit:(BOOL)submit
{
  v56 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  householdMetricsProvider = [(HMDHouseholdMetricsServer *)self householdMetricsProvider];
  dataSource = [(HMDHouseholdMetricsServer *)self dataSource];
  selfCopy = self;
  logEventSubmitter = [(HMDHouseholdMetricsServer *)self logEventSubmitter];
  if (householdMetricsProvider && dataSource && logEventSubmitter)
  {
    v32 = householdMetricsProvider;
    [dataSource homeDataSources];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v7 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (!v7)
    {
      goto LABEL_29;
    }

    v8 = v7;
    v9 = *v46;
    v37 = *v46;
    v38 = dataSource;
    while (1)
    {
      v10 = 0;
      v39 = v8;
      do
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * v10);
        if ([v11 isCurrentDevicePrimaryResident])
        {
          v41 = v11;
          devicesOnCurrentAccount = [dataSource devicesOnCurrentAccount];
          array = [MEMORY[0x277CBEB18] array];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v14 = devicesOnCurrentAccount;
          v15 = [v14 countByEnumeratingWithState:&v49 objects:v55 count:16];
          if (!v15)
          {
            goto LABEL_21;
          }

          v16 = v15;
          v17 = *v50;
          while (1)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v50 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v49 + 1) + 8 * i);
              productInfo = [v19 productInfo];
              if ([productInfo productPlatform] == 4)
              {
              }

              else
              {
                productInfo2 = [v19 productInfo];
                productPlatform = [productInfo2 productPlatform];

                if (productPlatform != 2)
                {
                  continue;
                }
              }

              [array addObject:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v49 objects:v55 count:16];
            if (!v16)
            {
LABEL_21:

              v23 = [array copy];
              v9 = v37;
              dataSource = v38;
              v8 = v39;
              v11 = v41;
              if (v23)
              {
                goto LABEL_22;
              }

              goto LABEL_27;
            }
          }
        }

        enabledResidents = [v11 enabledResidents];
        v26 = [enabledResidents count];

        if (!v26)
        {
          if ([v11 isOwnerUser])
          {
            currentDevice = [dataSource currentDevice];
            productInfo3 = [currentDevice productInfo];
            productClass = [productInfo3 productClass];

            if (productClass == 1)
            {
              currentDevice2 = [dataSource currentDevice];
              v53 = currentDevice2;
              v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];

              if (v23)
              {
LABEL_22:
                uuid = [v11 uuid];
                v42[0] = MEMORY[0x277D85DD0];
                v42[1] = 3221225472;
                v42[2] = __91__HMDHouseholdMetricsServer_runHouseholdMetricsDataCollectionAssociatedToDate_forceSubmit___block_invoke;
                v42[3] = &unk_27866F718;
                submitCopy = submit;
                v42[4] = selfCopy;
                v42[5] = v11;
                v43 = logEventSubmitter;
                [(HMDHouseholdMetricsServer *)selfCopy sendHouseholdMetricsCollectionRequestToDevices:v23 forHomeWithUUID:uuid associatedToDate:dateCopy completion:v42];
              }
            }
          }
        }

LABEL_27:
        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (!v8)
      {
LABEL_29:

        householdMetricsProvider = v32;
        break;
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __91__HMDHouseholdMetricsServer_runHouseholdMetricsDataCollectionAssociatedToDate_forceSubmit___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(a1 + 56) & 1) != 0 || [*(a1 + 32) evaluateMetricResponsesForSubmission:v3])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __91__HMDHouseholdMetricsServer_runHouseholdMetricsDataCollectionAssociatedToDate_forceSubmit___block_invoke_2;
    v9[3] = &unk_27867C540;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Duplicate event detected, not submitting ...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __91__HMDHouseholdMetricsServer_runHouseholdMetricsDataCollectionAssociatedToDate_forceSubmit___block_invoke_2(id *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] logEventFactories];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [a1[5] uuid];
      v10 = [v8 coalescedLogEventsFromLogEvents:v6 homeUUID:v9];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        do
        {
          v15 = 0;
          do
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [a1[6] submitLogEvent:*(*(&v29 + 1) + 8 * v15++)];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v6;
      v20 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v26;
        do
        {
          v23 = 0;
          do
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(v11);
            }

            [a1[6] submitLogEvent:{*(*(&v25 + 1) + 8 * v23++), v25}];
          }

          while (v21 != v23);
          v21 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v21);
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1[4];
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v19;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@No factory found for the log event %@, which is impossible", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)sendHouseholdMetricsCollectionRequestToDevices:(id)devices forHomeWithUUID:(id)d associatedToDate:(id)date completion:(id)completion
{
  v63 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  dCopy = d;
  dateCopy = date;
  completionCopy = completion;
  householdMetricsProvider = [(HMDHouseholdMetricsServer *)self householdMetricsProvider];
  remoteMessageDispatcher = [(HMDHouseholdMetricsServer *)self remoteMessageDispatcher];
  v16 = remoteMessageDispatcher;
  if (householdMetricsProvider && remoteMessageDispatcher)
  {
    v33 = completionCopy;
    group = dispatch_group_create();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = devicesCopy;
    obj = devicesCopy;
    v35 = v16;
    v41 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v41)
    {
      v18 = *v51;
      v37 = dictionary;
      selfCopy = self;
      v36 = *v51;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          if ([v20 isCurrentDevice])
          {
            v21 = [householdMetricsProvider householdMetricsForHomeWithUUID:dCopy associatedWithDate:dateCopy];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke;
            v48[3] = &unk_278688218;
            v48[4] = self;
            v49 = dictionary;
            [v21 enumerateKeysAndObjectsUsingBlock:v48];
          }

          else
          {
            v60[0] = @"homeUUID";
            uUIDString = [dCopy UUIDString];
            v60[1] = @"date";
            v61[0] = uUIDString;
            v61[1] = dateCopy;
            v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];

            v23 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v26 = householdMetricsProvider;
              v27 = dateCopy;
              v29 = v28 = dCopy;
              *buf = 138543874;
              v55 = v29;
              v56 = 2112;
              v57 = v20;
              v58 = 2112;
              v59 = v21;
              _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Sending household metrics request to device=%@, payload=%@", buf, 0x20u);

              dCopy = v28;
              dateCopy = v27;
              householdMetricsProvider = v26;
              v16 = v35;
            }

            objc_autoreleasePoolPop(v23);
            dispatch_group_enter(group);
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke_3;
            v45[3] = &unk_27867E7E8;
            v45[4] = selfCopy2;
            v45[5] = v20;
            dictionary = v37;
            v46 = v37;
            v47 = group;
            [v16 sendMessage:@"HMDHouseholdMetricsHomeDataLogEventRequest" toDevice:v20 withPayload:v21 responseHandler:v45];

            self = selfCopy;
            v18 = v36;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v41);
    }

    workQueue = [(HMDHouseholdMetricsServer *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke_2;
    block[3] = &unk_278689F98;
    block[4] = self;
    v43 = dictionary;
    completionCopy = v33;
    v44 = v33;
    v31 = dictionary;
    dispatch_group_notify(group, workQueue, block);

    v16 = v35;
    devicesCopy = v34;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  addLogEventsToResponse(v7, v5, *(a1 + 40));
  os_unfair_lock_unlock(v6 + 2);
}

void __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    *buf = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received response for household metrics from device=%@, error=, payload=%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke_4;
  v13[3] = &unk_27867EAE0;
  v13[4] = *(a1 + 32);
  v14 = *(a1 + 48);
  [v6 enumerateKeysAndObjectsUsingBlock:v13];
  dispatch_group_leave(*(a1 + 56));

  v12 = *MEMORY[0x277D85DE8];
}

void __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@All responses received (or timed-out)", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v7 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v8 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke_9;
  v13[3] = &unk_27866F6F0;
  v9 = v6;
  v14 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];

  os_unfair_lock_unlock(v7 + 2);
  v10 = *(a1 + 48);
  v11 = [v9 copy];
  (*(v10 + 16))(v10, v11);

  v12 = *MEMORY[0x277D85DE8];
}

void __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __120__HMDHouseholdMetricsServer_sendHouseholdMetricsCollectionRequestToDevices_forHomeWithUUID_associatedToDate_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) logEventFactories];
  v7 = [v6 objectForKeyedSubscript:v13];

  if (objc_opt_respondsToSelector())
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [v7 logEventsFromDictionary:v10];
      if (v11)
      {
        v12 = *(a1 + 32);
        os_unfair_lock_lock_with_options();
        addLogEventsToResponse(v13, v11, *(a1 + 40));
        os_unfair_lock_unlock(v12 + 2);
      }
    }
  }
}

- (BOOL)evaluateMetricResponsesForSubmission:(id)submission
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [submission objectForKeyedSubscript:@"householdData"];
  v5 = v4;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (!v13)
          {
            v11 = 0;
LABEL_18:

            v14 = 0;
            goto LABEL_19;
          }

          if (![(HMDHouseholdMetricsServer *)self evaluateHouseholdActivityLogEventForSubmission:v13, v17])
          {
            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v14 = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 1;
    }

LABEL_19:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDHouseholdMetricsServer)initWithDataSource:(id)source logEventSubmitter:(id)submitter householdMetricsProvider:(id)provider remoteMessageDispatcher:(id)dispatcher logEventFactories:(id)factories workQueue:(id)queue
{
  sourceCopy = source;
  submitterCopy = submitter;
  providerCopy = provider;
  dispatcherCopy = dispatcher;
  factoriesCopy = factories;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = HMDHouseholdMetricsServer;
  v20 = [(HMDHouseholdMetricsServer *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_dataSource, sourceCopy);
    objc_storeWeak(&v21->_logEventSubmitter, submitterCopy);
    objc_storeWeak(&v21->_householdMetricsProvider, providerCopy);
    objc_storeWeak(&v21->_remoteMessageDispatcher, dispatcherCopy);
    objc_storeStrong(&v21->_logEventFactories, factories);
    objc_storeStrong(&v21->_workQueue, queue);
  }

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10, &__block_literal_global_13871);
  }

  v3 = logCategory__hmf_once_v11;

  return v3;
}

void __40__HMDHouseholdMetricsServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11;
  logCategory__hmf_once_v11 = v1;
}

@end