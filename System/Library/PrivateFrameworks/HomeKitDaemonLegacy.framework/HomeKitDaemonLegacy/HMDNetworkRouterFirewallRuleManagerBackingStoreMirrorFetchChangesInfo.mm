@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo)initWithActivity:(id)activity options:(id)options databaseChangeToken:(id)token promise:(id)promise xpcActivity:(id)xpcActivity database:(id)database useAnonymousRequests:(BOOL)requests recordIDs:(id)self0 lastSynchronizedRecordIDs:(id)self1;
- (void)__cleanupMirroredZones:(id)zones cloudZones:(id)cloudZones result:(id)result error:(id)error;
- (void)finishWithResult:(id)result error:(id)error;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo

- (void)__cleanupMirroredZones:(id)zones cloudZones:(id)cloudZones result:(id)result error:(id)error
{
  v71 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  cloudZonesCopy = cloudZones;
  resultCopy = result;
  errorCopy = error;
  v49 = cloudZonesCopy;
  v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(cloudZonesCopy, "count") + objc_msgSend(zonesCopy, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = zonesCopy;
  v12 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v62;
    v15 = @"Shutting down mirrored zone %@";
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v61 + 1) + 8 * i);
        activity = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
        [activity markWithFormat:v15, v17];

        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v22 = v13;
          v24 = v23 = v15;
          *buf = 138543618;
          v67 = v24;
          v68 = 2112;
          v69 = v17;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Shutting down mirrored zone %@", buf, 0x16u);

          v15 = v23;
          v13 = v22;
        }

        objc_autoreleasePoolPop(v19);
        shutdown = [v17 shutdown];
        [v52 addObject:shutdown];
      }

      v13 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v13);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v50 = v49;
  v26 = [v50 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v58;
    v29 = @"Shutting down cloud zone %@";
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v58 != v28)
        {
          objc_enumerationMutation(v50);
        }

        v31 = *(*(&v57 + 1) + 8 * j);
        activity2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
        [activity2 markWithFormat:v29, v31];

        v33 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v37 = v36 = v29;
          *buf = 138543618;
          v67 = v37;
          v68 = 2112;
          v69 = v31;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Shutting down cloud zone %@", buf, 0x16u);

          v29 = v36;
        }

        objc_autoreleasePoolPop(v33);
        shutdown2 = [v31 shutdown];
        [v52 addObject:shutdown2];
      }

      v27 = [v50 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v27);
  }

  v39 = MEMORY[0x277D2C900];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v41 = [v39 combineAllFutures:v52 ignoringErrors:1 scheduler:globalAsyncScheduler];

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo___cleanupMirroredZones_cloudZones_result_error___block_invoke;
  v53[3] = &unk_279735220;
  v53[4] = self;
  v54 = v50;
  v55 = resultCopy;
  v56 = errorCopy;
  v42 = errorCopy;
  v43 = resultCopy;
  v44 = v50;
  v45 = [v41 addSuccessBlock:v53];

  v46 = *MEMORY[0x277D85DE8];
}

void __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo___cleanupMirroredZones_cloudZones_result_error___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo___cleanupMirroredZones_cloudZones_result_error___block_invoke_2;
  v8[3] = &unk_27972D188;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7.receiver = *(a1 + 32);
  v7.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo;
  objc_msgSendSuper2(&v7, sel_finishWithResult_error_, v5, v6);
}

void __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo___cleanupMirroredZones_cloudZones_result_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [*(a1 + 32) activity];
    v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    [v8 markWithFormat:@"Failed to shut down zone %@: %@", v9, v7];

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      *buf = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down zone %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  zoneInfoMap = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo *)self zoneInfoMap];
  allValues = [zoneInfoMap allValues];

  v11 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        mirroredLocalZone = [v15 mirroredLocalZone];

        if (mirroredLocalZone)
        {
          mirroredLocalZone2 = [v15 mirroredLocalZone];
          [array addObject:mirroredLocalZone2];

          [v15 setMirroredLocalZone:0];
        }

        else
        {
          cloudZone = [v15 cloudZone];

          if (!cloudZone)
          {
            continue;
          }

          cloudZone2 = [v15 cloudZone];
          [array2 addObject:cloudZone2];
        }

        [v15 setCloudZone:0];
      }

      v12 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  if ([array count] || objc_msgSend(array2, "count"))
  {
    v20 = [array copy];
    v21 = [array2 copy];
    v22 = resultCopy;
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo *)self __cleanupMirroredZones:v20 cloudZones:v21 result:resultCopy error:errorCopy];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo;
    v22 = resultCopy;
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v25 finishWithResult:resultCopy error:errorCopy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo)initWithActivity:(id)activity options:(id)options databaseChangeToken:(id)token promise:(id)promise xpcActivity:(id)xpcActivity database:(id)database useAnonymousRequests:(BOOL)requests recordIDs:(id)self0 lastSynchronizedRecordIDs:(id)self1
{
  v76 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  optionsCopy = options;
  obj = token;
  tokenCopy = token;
  promiseCopy = promise;
  xpcActivityCopy = xpcActivity;
  dsCopy = ds;
  iDsCopy = iDs;
  container = [database container];
  v73.receiver = self;
  v73.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo;
  v64 = promiseCopy;
  v25 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v73 initWithActivity:activityCopy options:optionsCopy container:container useAnonymousRequests:requests promise:promiseCopy];

  if (v25)
  {
    v63 = iDsCopy;
    v59 = tokenCopy;
    v60 = optionsCopy;
    v61 = activityCopy;
    if (xpcActivityCopy)
    {
      operationGroup = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)v25 operationGroup];
      defaultConfiguration = [operationGroup defaultConfiguration];
      [defaultConfiguration setXpcActivity:xpcActivityCopy];
    }

    v57 = v25;
    v58 = xpcActivityCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v56 = dsCopy;
    v29 = dsCopy;
    v30 = [v29 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v70;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v70 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v69 + 1) + 8 * i);
          zoneID = [v34 zoneID];
          v36 = [dictionary objectForKeyedSubscript:zoneID];
          if (!v36)
          {
            v36 = [[HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo alloc] initWithZoneID:zoneID];
            [dictionary setObject:v36 forKeyedSubscript:zoneID];
          }

          recordIDs = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo *)v36 recordIDs];
          [recordIDs addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v31);
    }

    v38 = [v29 mutableCopy];
    [v38 minusSet:iDsCopy];
    v39 = [v38 count];
    if (v39)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v40 = v38;
      v41 = [v40 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v66;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v66 != v43)
            {
              objc_enumerationMutation(v40);
            }

            zoneID2 = [*(*(&v65 + 1) + 8 * j) zoneID];
            v46 = [dictionary objectForKeyedSubscript:zoneID2];
            [v46 forceRefresh];
          }

          v42 = [v40 countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v42);
      }

      iDsCopy = v63;
    }

    v47 = [v29 copy];
    v25 = v57;
    requestedRecordIDs = v57->_requestedRecordIDs;
    v57->_requestedRecordIDs = v47;

    v49 = [dictionary copy];
    zoneInfoMap = v57->_zoneInfoMap;
    v57->_zoneInfoMap = v49;

    objc_storeStrong(&v57->_databaseChangeToken, obj);
    objc_storeStrong(&v57->_originalDatabaseChangeToken, obj);
    v51 = [MEMORY[0x277CBEB58] set];
    modifiedRecordIDs = v57->_modifiedRecordIDs;
    v57->_modifiedRecordIDs = v51;

    v57->_zonesHaveChanged = v39 != 0;
    v53 = v57;

    optionsCopy = v60;
    activityCopy = v61;
    xpcActivityCopy = v58;
    tokenCopy = v59;
    dsCopy = v56;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v25;
}

@end