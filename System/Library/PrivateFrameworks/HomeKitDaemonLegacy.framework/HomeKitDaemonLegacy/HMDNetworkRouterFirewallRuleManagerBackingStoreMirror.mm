@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirror
+ (BOOL)__errorIsNotFound:(id)found;
+ (id)__certificatesRecordID;
+ (id)__createSignatureVerificationPolicy;
+ (id)__overrideParentModelID;
+ (id)__publicKeyFromCertificateRecord:(id)record dataKey:(id)key assetKey:(id)assetKey;
+ (id)__recordKeyCertificatePrefix:(id)prefix;
+ (id)logCategory;
+ (id)publicKeysFromCertificateRecord:(id)record;
+ (unint64_t)__maxSizeForCKRecordSignatureVerificationCertificateChain;
- (BOOL)__addOverrides:(id)overrides replace:(BOOL)replace options:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__canRecoverFromFetchDatabaseChangesError:(id)error fetchInfo:(id)info;
- (BOOL)__canRecoverFromVerificationCertificatesError:(id)error fetchInfo:(id)info;
- (BOOL)__createCloudZonesForFetchInfo:(id)info error:(id *)error;
- (BOOL)__removeAllLocalRulesWithOptions:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__removeAllOverridesWithOptions:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__removeOverridesForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__removeOverridesForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__shouldFailCloudRecordFetchError:(id)error error:(id)a4;
- (BOOL)_removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options error:(id *)error;
- (BOOL)addOverrides:(id)overrides replace:(BOOL)replace options:(id)options error:(id *)error;
- (BOOL)isRunning;
- (BOOL)isShuttingDown;
- (BOOL)removeAllLocalRulesWithOptions:(id)options error:(id *)error;
- (BOOL)removeAllOverridesWithOptions:(id)options error:(id *)error;
- (BOOL)removeOverridesForRecordIDs:(id)ds options:(id)options error:(id *)error;
- (BOOL)removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options error:(id *)error;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirror)initWithLocalDatabase:(id)database cloudDatabase:(id)cloudDatabase useAnonymousRequests:(BOOL)requests ownerQueue:(id)queue;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel)internalState;
- (NAFuture)lastAsyncFuture;
- (NAFuture)shutdownFuture;
- (NAFuture)startupFuture;
- (id)__asyncFutureWithActivity:(id)activity ignoreErrors:(BOOL)errors block:(id)block;
- (id)__createCloudZoneIDForZoneID:(id)d;
- (id)__fetchAllDataForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error;
- (id)__fetchAllDataForZoneID:(id)d options:(id)options activity:(id)activity error:(id *)error;
- (id)__fetchAllDataForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error;
- (id)__fetchOverridesForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error;
- (id)__fetchOverridesForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error;
- (id)__loadOrCreateInternalStateModelWithLocalZone:(id)zone activity:(id)activity;
- (id)__localZonesForRecordIDs:(id)ds activity:(id)activity error:(id *)error;
- (id)__openLocalZoneForCloudZoneID:(id)d error:(id *)error;
- (id)_fetchAllDataForZoneName:(id)name options:(id)options error:(id *)error;
- (id)_fetchOverridesForZoneName:(id)name options:(id)options error:(id *)error;
- (id)cloudFetchNeededForRecordIDs:(id)ds error:(id *)error;
- (id)desiredKeys;
- (id)destroy;
- (id)fetchAllDataForRecordIDs:(id)ds options:(id)options error:(id *)error;
- (id)fetchAllDataForZoneName:(id)name options:(id)options error:(id *)error;
- (id)fetchAllDataWithOptions:(id)options error:(id *)error;
- (id)fetchOverridesForRecordIDs:(id)ds options:(id)options error:(id *)error;
- (id)flush;
- (id)shutdown;
- (id)triggerOutputForOutputRow:(unint64_t)row options:(id)options;
- (void)__fetchCloudRecordsWithFetchInfo:(id)info;
- (void)__fetchDatabaseChangesCompleted:(id)completed error:(id)error;
- (void)__fetchDatabaseChangesWithFetchInfo:(id)info;
- (void)__fetchRecordByID:(id)d;
- (void)__fetchRecordsByQuery:(id)query;
- (void)__fetchVerificationCertificatesCompleted:(id)completed record:(id)record error:(id)error;
- (void)__fetchVerificationCertificatesWithFetchInfo:(id)info;
- (void)__fetchZoneChangesWithFetchInfo:(id)info;
- (void)__performCloudZonePullsWithFetchInfo:(id)info;
- (void)__removeDeletedZonesWithFetchInfo:(id)info;
- (void)__retryFetchDatabaseChangesWithFetchInfo:(id)info;
- (void)__retryFetchVerificationCertificatesWithFetchInfo:(id)info;
- (void)__saveInternalStateWithActivity:(id)activity;
- (void)__shutdownLocalZones:(id)zones activity:(id)activity;
- (void)__shutdownWithActivity:(id)activity;
- (void)__startQueryOperation:(id)operation operation:(id)a4;
- (void)__startUpCloudZonesWithFetchInfo:(id)info;
- (void)__startupWithLocalZone:(id)zone activity:(id)activity;
- (void)__updateChangeTokenWithFetchInfo:(id)info;
- (void)_fetchCloudRecordsForZoneID:(id)d recordID:(id)iD options:(id)options desiredKeys:(id)keys completion:(id)completion;
- (void)fetchCloudChangesForRecordIDs:(id)ds options:(id)options ignoreLastSynchronizedRecords:(BOOL)records xpcActivity:(id)activity completion:(id)completion;
- (void)fetchCloudRecordIDsForZoneID:(id)d options:(id)options completion:(id)completion;
- (void)fetchCloudRecordsForZoneID:(id)d recordID:(id)iD options:(id)options completion:(id)completion;
- (void)fetchVerificationCertificatesRecordWithOperationGroup:(id)group completion:(id)completion;
- (void)setLastAsyncFuture:(id)future;
- (void)startUpWithLocalZone:(id)zone;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirror

- (void)__startQueryOperation:(id)operation operation:(id)a4
{
  operationCopy = operation;
  v7 = a4;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  [v7 setCallbackQueue:workQueue];
  operationGroup = [operationCopy operationGroup];
  [v7 setGroup:operationGroup];

  desiredKeys = [operationCopy desiredKeys];

  if (desiredKeys)
  {
    desiredKeys2 = [operationCopy desiredKeys];
    [v7 setDesiredKeys:desiredKeys2];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke;
  v22[3] = &unk_279720828;
  v12 = operationCopy;
  v23 = v12;
  v13 = workQueue;
  v24 = v13;
  [v7 setRecordFetchedBlock:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_3;
  v18[3] = &unk_279720850;
  v19 = v12;
  v20 = v13;
  selfCopy = self;
  v14 = v13;
  v15 = v12;
  [v7 setQueryCompletionBlock:v18];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  publicDatabase = [cloudDatabase publicDatabase];
  [publicDatabase addOperation:v7];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_2;
  v6[3] = &unk_279734960;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_4;
  v10[3] = &unk_2797352C0;
  v11 = *(a1 + 40);
  v12 = v6;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v5;
  v8 = v5;
  v9 = v6;
  [v7 performBlock:v10];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  if (*(a1 + 40) && [*(a1 + 48) __shouldFailCloudRecordFetchError:*(a1 + 56) error:?])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 48);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch records: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 56) finishWithError:*(a1 + 40)];
LABEL_10:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = *(a1 + 56);
  if (*(a1 + 64))
  {
    v8 = [*(a1 + 56) activity];
    [v8 markWithFormat:@"Previous fetch completed successfully, now fetching more records from cursor"];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 48);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Previous fetch completed successfully, now fetching more records from cursor", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [objc_alloc(MEMORY[0x277CBC590]) initWithCursor:*(a1 + 64)];
    [*(a1 + 48) __startQueryOperation:*(a1 + 56) operation:v13];

    goto LABEL_10;
  }

  v17 = [*(a1 + 56) records];
  v15 = [v17 copy];
  [v7 finishWithResult:v15];

  v16 = *MEMORY[0x277D85DE8];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = [*(a1 + 40) records];
  [v2 addObject:*(a1 + 48)];
}

- (void)__fetchRecordsByQuery:(id)query
{
  v36 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneID = [queryCopy zoneID];

  activity = [queryCopy activity];
  v8 = activity;
  if (zoneID)
  {
    zoneID2 = [queryCopy zoneID];
    hmbDescription = [zoneID2 hmbDescription];
    [v8 markWithFormat:@"Fetching records from zone %@", hmbDescription];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = HMFGetLogIdentifier();
    zoneID3 = [queryCopy zoneID];
    hmbDescription2 = [zoneID3 hmbDescription];
    *buf = 138543618;
    v33 = v14;
    v34 = 2112;
    v35 = hmbDescription2;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching records from zone %@", buf, 0x16u);
  }

  else
  {
    [activity markWithFormat:@"Fetching all records"];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching all records", buf, 0xCu);
  }

LABEL_7:
  objc_autoreleasePoolPop(v11);
  desiredKeys = [queryCopy desiredKeys];

  if (desiredKeys)
  {
    activity2 = [queryCopy activity];
    desiredKeys2 = [queryCopy desiredKeys];
    [activity2 markWithFormat:@"Only fetching specific fields: %@", desiredKeys2];

    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      desiredKeys3 = [queryCopy desiredKeys];
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = desiredKeys3;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Only fetching specific fields: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v27 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"CD_CloudAccessory" predicate:v26];
  v28 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v27];
  zoneID4 = [queryCopy zoneID];

  if (zoneID4)
  {
    zoneID5 = [queryCopy zoneID];
    [v28 setZoneID:zoneID5];
  }

  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __startQueryOperation:queryCopy operation:v28];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)__fetchRecordByID:(id)d
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  activity = [dCopy activity];
  recordID = [dCopy recordID];
  hmbDescription = [recordID hmbDescription];
  [activity markWithFormat:@"Fetching record: %@", hmbDescription];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    recordID2 = [dCopy recordID];
    hmbDescription2 = [recordID2 hmbDescription];
    *buf = 138543618;
    v40 = v12;
    v41 = 2112;
    v42 = hmbDescription2;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching record: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x277CBC3E0]);
  recordID3 = [dCopy recordID];
  v38 = recordID3;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v18 = [v15 initWithRecordIDs:v17];

  [v18 setCallbackQueue:workQueue];
  operationGroup = [dCopy operationGroup];
  [v18 setGroup:operationGroup];

  desiredKeys = [dCopy desiredKeys];

  if (desiredKeys)
  {
    activity2 = [dCopy activity];
    desiredKeys2 = [dCopy desiredKeys];
    [activity2 markWithFormat:@"Only fetching specific fields: %@", desiredKeys2];

    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      desiredKeys3 = [dCopy desiredKeys];
      *buf = 138543618;
      v40 = v26;
      v41 = 2112;
      v42 = desiredKeys3;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Only fetching specific fields: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    desiredKeys4 = [dCopy desiredKeys];
    [v18 setDesiredKeys:desiredKeys4];
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____fetchRecordByID___block_invoke;
  v34[3] = &unk_279720800;
  v35 = dCopy;
  v36 = workQueue;
  v37 = selfCopy;
  v29 = workQueue;
  v30 = dCopy;
  [v18 setFetchRecordsCompletionBlock:v34];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
  publicDatabase = [cloudDatabase publicDatabase];
  [publicDatabase addOperation:v18];

  v33 = *MEMORY[0x277D85DE8];
}

void __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____fetchRecordByID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____fetchRecordByID___block_invoke_2;
  v10[3] = &unk_2797352C0;
  v11 = *(a1 + 40);
  v12 = v6;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v5;
  v8 = v5;
  v9 = v6;
  [v7 performBlock:v10];
}

void __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____fetchRecordByID___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  if (*(a1 + 40) && [*(a1 + 48) __shouldFailCloudRecordFetchError:*(a1 + 56) error:?])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 48);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch records: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 56) finishWithError:*(a1 + 40)];
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *(a1 + 64);
    v9 = MEMORY[0x277CBEB98];
    if (v8)
    {
      v10 = [v8 allValues];
      v12 = [v9 setWithArray:v10];
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] set];
    }

    [*(a1 + 56) finishWithResult:v12];
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)__fetchCloudRecordsWithFetchInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordID = [infoCopy recordID];

  if (recordID)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __fetchRecordByID:infoCopy];
  }

  else
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __fetchRecordsByQuery:infoCopy];
  }
}

- (BOOL)__shouldFailCloudRecordFetchError:(id)error error:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = a4;
  if ([v7 hmbIsCKZoneDeletedError])
  {
    activity = [errorCopy activity];
    zoneID = [errorCopy zoneID];
    hmbDescription = [zoneID hmbDescription];
    [activity markWithFormat:@"Zone '%@' does not exist", hmbDescription];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      zoneID2 = [errorCopy zoneID];
      hmbDescription2 = [zoneID2 hmbDescription];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = hmbDescription2;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Zone '%@' does not exist", buf, 0x16u);
    }

LABEL_4:

    objc_autoreleasePoolPop(v11);
    v17 = 0;
    goto LABEL_15;
  }

  if ([v7 hmbIsCloudKitError])
  {
    if ([v7 code] == 11)
    {
      activity2 = [errorCopy activity];
      recordID = [errorCopy recordID];
      hmbDescription3 = [recordID hmbDescription];
      [activity2 markWithFormat:@"Record '%@' does not exist", hmbDescription3];

      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        recordID2 = [errorCopy recordID];
        hmbDescription4 = [recordID2 hmbDescription];
        *buf = 138543618;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = hmbDescription4;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Record '%@' does not exist", buf, 0x16u);
      }

      goto LABEL_4;
    }

    if ([v7 code] == 2)
    {
      userInfo = [v7 userInfo];
      v25 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v38 = 0;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __116__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____shouldFailCloudRecordFetchError_error___block_invoke;
      v33[3] = &unk_2797207D8;
      v34 = errorCopy;
      selfCopy3 = self;
      v36 = buf;
      [v25 enumerateKeysAndObjectsUsingBlock:v33];
      v17 = *(*&buf[8] + 24);

      _Block_object_dispose(buf, 8);
      goto LABEL_15;
    }
  }

  activity3 = [errorCopy activity];
  [activity3 markWithFormat:@"Failed to fetch records: %@", v7];

  v27 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v30;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch records: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v17 = 1;
LABEL_15:

  v31 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __116__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____shouldFailCloudRecordFetchError_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 hmbIsCloudKitError] && objc_msgSend(v6, "code") == 11)
  {
    v7 = [*(a1 + 32) activity];
    v8 = [v5 hmbDescription];
    [v7 markWithFormat:@"Record '%@' does not exist", v8];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v5 hmbDescription];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Record '%@' does not exist", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v14 = [*(a1 + 32) activity];
    v15 = [v5 hmbDescription];
    [v14 markWithFormat:@"Failed to fetch record %@: %@", v15, v6];

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v5 hmbDescription];
      *buf = 138543874;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch record %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)__shutdownWithActivity:(id)activity
{
  v40 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self isShuttingDown])
  {
    [activityCopy markWithFormat:@"Already shutting down"];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Already shutting down", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    shutdownFuture = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy shutdownFuture];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke;
    v36[3] = &unk_279733BC0;
    v37 = activityCopy;
    v11 = activityCopy;
    v12 = [shutdownFuture addCompletionBlock:v36];

    v13 = v37;
  }

  else
  {
    [activityCopy markWithFormat:@"Shutting down"];
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Shutting down", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 setShuttingDown:1];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 setLocalZone:0];
    startupPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 startupPromise];
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v20 = [startupPromise finishWithError:v19];

    if (v20)
    {
      [activityCopy markWithFormat:@"Shut down before startup completed"];
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy2;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Shut down before startup completed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
    }

    shutdownPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 shutdownPromise];
    cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 cloudDatabase];
    shutdown = [cloudDatabase shutdown];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_18;
    v31[3] = &unk_279721D38;
    v32 = activityCopy;
    v33 = workQueue;
    v34 = selfCopy2;
    v35 = shutdownPromise;
    v13 = shutdownPromise;
    v28 = activityCopy;
    v29 = [shutdown addCompletionBlock:v31];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_2;
  v8[3] = &unk_2797352C0;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v4;
  v6 = *(a1 + 56);
  v12 = *(a1 + 48);
  v13 = v6;
  v7 = v4;
  [v5 performBlock:v8];
}

void __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_3;
  block[3] = &unk_279734870;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v7;
  dispatch_async(v2, block);
}

void __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_3(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_4;
  v8[3] = &unk_279734870;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = *(a1 + 48);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v7;
  [v2 performBlock:v8];
}

uint64_t __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_4(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) markWithFormat:@"Failed to shut down cloud database: %@", v2];
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 48);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      *buf = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down cloud database: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  [*(a1 + 40) markWithFormat:@"Shutdown completed"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 48);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Shutdown completed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 56) finishWithNoResult];
  result = [*(a1 + 40) invalidate];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)__startupWithLocalZone:(id)zone activity:(id)activity
{
  v23 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self isShuttingDown])
  {
    [activityCopy markWithFormat:@"Already shutting down"];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Already shutting down", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    startupPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy startupPromise];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [startupPromise finishWithError:v14];
  }

  else
  {
    [activityCopy markWithFormat:@"Starting up"];
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Starting up", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 setLocalZone:zoneCopy];
    v19 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 __loadOrCreateInternalStateModelWithLocalZone:zoneCopy activity:activityCopy];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 setInternalState:v19];

    startupPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 startupPromise];
    [startupPromise finishWithNoResult];
  }

  [activityCopy invalidate];
  v20 = *MEMORY[0x277D85DE8];
}

- (id)__loadOrCreateInternalStateModelWithLocalZone:(id)zone activity:(id)activity
{
  v33 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = +[HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel modelID];
  v28 = 0;
  v10 = [zoneCopy fetchModelWithModelID:v9 ofType:objc_opt_class() error:&v28];
  v11 = v28;
  v12 = v11;
  if (v10)
  {
    [activityCopy markWithFormat:@"Loaded existing internal state model"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Loaded existing internal state model", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      lastSynchronizedRecordIDs = [v10 lastSynchronizedRecordIDs];
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = lastSynchronizedRecordIDs;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Last synchronized recordIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    [activityCopy markWithFormat:@"Creating new internal state model because existing one was not found: %@", v11];
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v25;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Creating new internal state model because existing one was not found: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v10 = objc_opt_new();
  }

  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)__retryFetchVerificationCertificatesWithFetchInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activity = [infoCopy activity];
  [infoCopy retryIntervalSeconds];
  [activity markWithFormat:@"Will retry the fetch in %lu seconds", v7];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    [infoCopy retryIntervalSeconds];
    *buf = 138543618;
    v22 = v11;
    v23 = 2048;
    v24 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Will retry the fetch in %lu seconds", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [infoCopy retryIntervalSeconds];
  v14 = dispatch_time(0, (v13 * 1000000000.0));
  [infoCopy setShouldRetry:0];
  [infoCopy setRetryCount:{objc_msgSend(infoCopy, "retryCount") + 1}];
  objc_initWeak(buf, selfCopy);
  workQueue2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __138__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____retryFetchVerificationCertificatesWithFetchInfo___block_invoke;
  block[3] = &unk_279732E78;
  v19 = infoCopy;
  v16 = infoCopy;
  objc_copyWeak(&v20, buf);
  dispatch_after(v14, workQueue2, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
  v17 = *MEMORY[0x277D85DE8];
}

void __138__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____retryFetchVerificationCertificatesWithFetchInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __138__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____retryFetchVerificationCertificatesWithFetchInfo___block_invoke_2;
  v3[3] = &unk_279732E78;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 performBlock:v3];

  objc_destroyWeak(&v5);
}

void __138__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____retryFetchVerificationCertificatesWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) activity];
    [v3 markWithFormat:@"Retrying fetch for verification certificates"];

    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying fetch for verification certificates", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [v5 __fetchVerificationCertificatesWithFetchInfo:*(a1 + 32)];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [*(a1 + 32) finishWithError:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)__canRecoverFromVerificationCertificatesError:(id)error fetchInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([errorCopy hmd_isCKError] && (objc_msgSend(errorCopy, "hmd_isNonRecoverableCKError") & 1) == 0 && (objc_msgSend(errorCopy, "hmbCloudKitRetryDelay"), objc_msgSend(infoCopy, "setRetryIntervalSeconds:"), objc_msgSend(infoCopy, "shouldRetry")))
  {
    activity = [infoCopy activity];
    [activity markWithFormat:@"Ignoring non-fatal error: %@", errorCopy];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = errorCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Ignoring non-fatal error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)__fetchVerificationCertificatesCompleted:(id)completed record:(id)record error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  recordCopy = record;
  errorCopy = error;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (recordCopy)
  {
    v12 = [objc_opt_class() publicKeysFromCertificateRecord:recordCopy];
    if ([v12 count])
    {
      [completedCopy setSignatureVerificationPublicKeys:v12];
      [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __fetchZoneChangesWithFetchInfo:completedCopy];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        recordID = [recordCopy recordID];
        hmbDescription = [recordID hmbDescription];
        v27 = 138543618;
        v28 = v16;
        v29 = 2112;
        v30 = hmbDescription;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get any usable public keys from record: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [completedCopy finishWithError:v19];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (errorCopy && ![(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __canRecoverFromVerificationCertificatesError:errorCopy fetchInfo:completedCopy])
  {
    [completedCopy finishWithError:errorCopy];
    goto LABEL_15;
  }

  if (![completedCopy shouldRetry])
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      recordID2 = [0 recordID];
      hmbDescription2 = [recordID2 hmbDescription];
      v27 = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = hmbDescription2;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Fetch returned no verification certificates record: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [completedCopy finishWithError:v12];
    goto LABEL_14;
  }

  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __retryFetchVerificationCertificatesWithFetchInfo:completedCopy];
LABEL_15:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)__fetchVerificationCertificatesWithFetchInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  operationGroup = [infoCopy operationGroup];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __133__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____fetchVerificationCertificatesWithFetchInfo___block_invoke;
  v13 = &unk_279727548;
  v7 = infoCopy;
  v14 = v7;
  selfCopy = self;
  objc_copyWeak(&v16, &location);
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self fetchVerificationCertificatesRecordWithOperationGroup:operationGroup completion:&v10];

  operationStartTime = [v7 operationStartTime];

  if (!operationStartTime)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v7 setOperationStartTime:v9];
  }

  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

void __133__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____fetchVerificationCertificatesWithFetchInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __133__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____fetchVerificationCertificatesWithFetchInfo___block_invoke_2;
  v12[3] = &unk_279727520;
  v8 = v6;
  v13 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  objc_copyWeak(&v17, (a1 + 48));
  v11 = v5;
  v16 = v11;
  [v7 performBlock:v12];

  objc_destroyWeak(&v17);
}

void __133__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____fetchVerificationCertificatesWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activity];
  v4 = v3;
  if (v2)
  {
    [v3 markWithFormat:@"Fetch records operation completed unsuccessfully: %@", *(a1 + 32)];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    *buf = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v10 = "%{public}@Fetch records operation completed unsuccessfully: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
  }

  else
  {
    [v3 markWithFormat:@"Fetch records operation completed successfully"];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v8;
    v10 = "%{public}@Fetch records operation completed successfully";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
  }

  _os_log_impl(&dword_2531F8000, v11, v12, v10, buf, v13);

LABEL_7:
  objc_autoreleasePoolPop(v5);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained __fetchVerificationCertificatesCompleted:*(a1 + 40) record:*(a1 + 56) error:*(a1 + 32)];
  }

  else
  {
    v16 = [*(a1 + 40) activity];
    [v16 markWithFormat:@"Mirror has been deallocated"];

    v17 = objc_autoreleasePoolPush();
    v18 = objc_opt_class();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Mirror has been deallocated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 32);
    if (!v21)
    {
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    }

    [*(a1 + 40) finishWithError:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)fetchVerificationCertificatesRecordWithOperationGroup:(id)group completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  __certificatesRecordID = [objc_opt_class() __certificatesRecordID];
  v10 = objc_alloc(MEMORY[0x277CBC3E0]);
  v22[0] = __certificatesRecordID;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v12 = [v10 initWithRecordIDs:v11];

  [v12 setCallbackQueue:workQueue];
  if (groupCopy)
  {
    [v12 setGroup:groupCopy];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __153__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates__fetchVerificationCertificatesRecordWithOperationGroup_completion___block_invoke;
  v18[3] = &unk_2797274F8;
  v19 = workQueue;
  selfCopy = self;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = workQueue;
  [v12 setFetchRecordsCompletionBlock:v18];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  publicDatabase = [cloudDatabase publicDatabase];
  [publicDatabase addOperation:v12];

  v17 = *MEMORY[0x277D85DE8];
}

void __153__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates__fetchVerificationCertificatesRecordWithOperationGroup_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a1[4];
  v6 = a2;
  dispatch_assert_queue_V2(v5);
  v7 = a1[5];
  v8 = [objc_opt_class() __certificatesRecordID];
  v9 = [v6 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = *(a1[6] + 16);
  }

  else
  {
    v11 = v12;
    if (!v12)
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    v10 = *(a1[6] + 16);
    v12 = v11;
  }

  v10();
}

+ (id)publicKeysFromCertificateRecord:(id)record
{
  v23 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [recordCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = [objc_opt_class() __recordKeyCertificatePrefix:*(*(&v18 + 1) + 8 * i)];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 stringByAppendingString:@"_ckAsset"];
          v13 = [self __publicKeyFromCertificateRecord:recordCopy dataKey:v11 assetKey:v12];
          if (v13)
          {
            [v17 addObject:v13];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if ([v17 count])
  {
    v14 = [v17 copy];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)__publicKeyFromCertificateRecord:(id)record dataKey:(id)key assetKey:(id)assetKey
{
  v94[2] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  keyCopy = key;
  assetKeyCopy = assetKey;
  v94[0] = keyCopy;
  v94[1] = assetKeyCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
  __maxSizeForCKRecordSignatureVerificationCertificateChain = [objc_opt_class() __maxSizeForCKRecordSignatureVerificationCertificateChain];
  v89 = 0;
  v13 = stringFromCKRecord(recordCopy, keyCopy, assetKeyCopy, __maxSizeForCKRecordSignatureVerificationCertificateChain, &v89);
  v14 = v89;
  v15 = v14;
  v84 = recordCopy;
  if (v13)
  {
    v83 = v13;
    v16 = [v13 componentsSeparatedByString:{@", "}];
    if ([v16 count])
    {
      v79 = v15;
      v82 = v11;
      v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v85 objects:v90 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v86;
        v80 = keyCopy;
        v78 = v16;
LABEL_5:
        v22 = 0;
        while (1)
        {
          if (*v86 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:*(*(&v85 + 1) + 8 * v22) options:0];
          if (!v23)
          {
            break;
          }

          v24 = v23;
          v25 = SecCertificateCreateWithData(0, v23);
          if (!v25)
          {
            v56 = objc_autoreleasePoolPush();
            selfCopy = self;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v59 = HMFGetLogIdentifier();
              *trust = 138543618;
              *&trust[4] = v59;
              v92 = 2112;
              *v93 = v82;
              _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Failed to create certificate from data using keys: %@", trust, 0x16u);
            }

            objc_autoreleasePoolPop(v56);
            v39 = 0;
            v36 = v84;
            v15 = v79;
            v41 = v80;
LABEL_33:
            v16 = v78;
            goto LABEL_49;
          }

          v26 = v25;
          [v17 addObject:v25];

          if (v20 == ++v22)
          {
            v20 = [v18 countByEnumeratingWithState:&v85 objects:v90 count:16];
            keyCopy = v80;
            v16 = v78;
            if (v20)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }

        v52 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v54 = HMFGetOSLogHandle();
        v15 = v79;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = HMFGetLogIdentifier();
          *trust = 138543874;
          *&trust[4] = v55;
          v92 = 2112;
          *v93 = v82;
          *&v93[8] = 2112;
          *&v93[10] = v79;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Invalid certificate data in record using keys: %@: %@", trust, 0x20u);
        }

        objc_autoreleasePoolPop(v52);
        v39 = 0;
        v36 = v84;
        v41 = v80;
        goto LABEL_33;
      }

LABEL_12:

      __createSignatureVerificationPolicy = [self __createSignatureVerificationPolicy];
      if (__createSignatureVerificationPolicy)
      {
        v18 = __createSignatureVerificationPolicy;
        v81 = keyCopy;
        *trust = 0;
        v28 = SecTrustCreateWithCertificates(v17, __createSignatureVerificationPolicy, trust);
        v29 = v28;
        v30 = *trust;
        if (!*trust || v28)
        {
          v64 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v66 = HMFGetOSLogHandle();
          v15 = v79;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v67 = v77 = v64;
            *trust = 138543874;
            *&trust[4] = v67;
            v92 = 1024;
            *v93 = v29;
            *&v93[4] = 2112;
            *&v93[6] = v82;
            _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_ERROR, "%{public}@Failed to create trust (result %i) from certificate using keys: %@", trust, 0x1Cu);

            v64 = v77;
          }

          objc_autoreleasePoolPop(v64);
          v39 = 0;
          v36 = v84;
        }

        else
        {
          *trust = 0;
          v31 = SecTrustEvaluateWithError(v30, trust);
          v32 = *trust;
          context = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v34 = HMFGetOSLogHandle();
          v35 = v34;
          v76 = v32;
          if (!v31 || v32)
          {
            v36 = v84;
            v15 = v79;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v68 = HMFGetLogIdentifier();
              *trust = 138543874;
              *&trust[4] = v68;
              v92 = 2112;
              *v93 = v82;
              *&v93[8] = 2112;
              *&v93[10] = v76;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Certificate did not pass trust evaluation with keys: %@, error: %@", trust, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            v39 = 0;
          }

          else
          {
            v36 = v84;
            v15 = v79;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v37 = HMFGetLogIdentifier();
              *trust = 138543618;
              *&trust[4] = v37;
              v92 = 2112;
              *v93 = v82;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Trusted certificate found in record using keys: %@", trust, 0x16u);
            }

            objc_autoreleasePoolPop(context);
            v38 = MEMORY[0x259C02550](v30);
            v39 = v38;
            if (v38)
            {
              v40 = v38;
            }

            else
            {
              v74 = objc_autoreleasePoolPush();
              v69 = selfCopy4;
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = HMFGetLogIdentifier();
                *trust = 138543618;
                *&trust[4] = v71;
                v92 = 2112;
                *v93 = v82;
                _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to get public key from trust in record using keys: %@", trust, 0x16u);
              }

              objc_autoreleasePoolPop(v74);
              v36 = v84;
            }
          }
        }

        v41 = v81;
      }

      else
      {
        v41 = keyCopy;
        v60 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = HMFGetLogIdentifier();
          *trust = 138543362;
          *&trust[4] = v63;
          _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Unable to create security policy to verify certificates", trust, 0xCu);
        }

        objc_autoreleasePoolPop(v60);
        v18 = 0;
        v39 = 0;
        v36 = v84;
        v15 = v79;
      }

LABEL_49:

      v11 = v82;
    }

    else
    {
      v41 = keyCopy;
      v48 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        *trust = 138543874;
        *&trust[4] = v51;
        v92 = 2112;
        *v93 = v11;
        *&v93[8] = 2112;
        *&v93[10] = v15;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@No certificates found on record using keys: %@: %@", trust, 0x20u);
      }

      objc_autoreleasePoolPop(v48);
      v39 = 0;
      v36 = v84;
    }

    v13 = v83;
  }

  else
  {
    v41 = keyCopy;
    v42 = assetKeyCopy;
    v43 = v14;
    v44 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *trust = 138543874;
      *&trust[4] = v47;
      v92 = 2112;
      *v93 = v11;
      *&v93[8] = 2112;
      *&v93[10] = v43;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to read data from certificate record using keys: %@: %@", trust, 0x20u);
    }

    objc_autoreleasePoolPop(v44);
    v39 = 0;
    v15 = v43;
    assetKeyCopy = v42;
    v36 = v84;
  }

  v72 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (id)__recordKeyCertificatePrefix:(id)prefix
{
  prefixCopy = prefix;
  if (__recordKeyCertificatePrefix__onceToken != -1)
  {
    dispatch_once(&__recordKeyCertificatePrefix__onceToken, &__block_literal_global_23_51743);
  }

  v4 = [__recordKeyCertificatePrefix__prefixRegex firstMatchInString:prefixCopy options:0 range:{0, objc_msgSend(prefixCopy, "length")}];
  v5 = v4;
  if (v4 && [v4 numberOfRanges] >= 2)
  {
    v7 = [v5 rangeAtIndex:1];
    v6 = [prefixCopy substringWithRange:{v7, v8}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __117__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____recordKeyCertificatePrefix___block_invoke()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(CD_certificate(?:\\d+|))(?:$|_ckAsset$)" options:0 error:0];
  v1 = __recordKeyCertificatePrefix__prefixRegex;
  __recordKeyCertificatePrefix__prefixRegex = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)__certificatesRecordID
{
  if (__certificatesRecordID_onceToken != -1)
  {
    dispatch_once(&__certificatesRecordID_onceToken, &__block_literal_global_51748);
  }

  v3 = __certificatesRecordID_certificatesRecordID;

  return v3;
}

void __110__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____certificatesRecordID__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  v3 = [v0 initWithZoneName:@"certificates" ownerName:*MEMORY[0x277CBBF28]];
  v1 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"certificates" zoneID:v3];
  v2 = __certificatesRecordID_certificatesRecordID;
  __certificatesRecordID_certificatesRecordID = v1;
}

+ (id)__createSignatureVerificationPolicy
{
  ApplePinned = SecPolicyCreateApplePinned();

  return ApplePinned;
}

+ (unint64_t)__maxSizeForCKRecordSignatureVerificationCertificateChain
{
  if (!isInternalBuild())
  {
    return 0x200000;
  }

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorSignatureVerificationCertificateChainMaxSize"];

  numberValue = [v3 numberValue];

  if (numberValue)
  {
    numberValue2 = [v3 numberValue];
    unsignedIntegerValue = [numberValue2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x200000;
  }

  return unsignedIntegerValue;
}

- (BOOL)__removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options activity:(id)activity error:(id *)error
{
  nameCopy = name;
  recordNameCopy = recordName;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (nameCopy && recordNameCopy)
  {
    v17 = objc_alloc(MEMORY[0x277CBC5F8]);
    v18 = [v17 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];
    v19 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:recordNameCopy zoneID:v18];
    v20 = [MEMORY[0x277CBEB98] setWithObject:v19];
    v21 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeOverridesForRecordIDs:v20 options:optionsCopy activity:activityCopy error:error];
  }

  else
  {
    if (nameCopy)
    {
      v22 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeOverridesForZoneName:nameCopy options:optionsCopy activity:activityCopy error:error];
    }

    else
    {
      v22 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeAllOverridesWithOptions:optionsCopy activity:activityCopy error:error];
    }

    v21 = v22;
  }

  return v21;
}

- (BOOL)__removeOverridesForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error
{
  v118 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [activityCopy markWithFormat:@"Removing overrides for zone '%@'", nameCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v110 = v17;
    v111 = 2112;
    v112 = nameCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Removing overrides for zone '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = objc_opt_class();
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  v108 = 0;
  v20 = [localZone fetchModelsOfType:v18 error:&v108];
  v21 = v108;

  v98 = v21;
  if (!v20)
  {
    [activityCopy markWithFormat:@"Failed to fetch override models: %@", v21];
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v110 = v48;
      v111 = 2112;
      v112 = v98;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch override models: %@", buf, 0x16u);

      v20 = 0;
    }

    objc_autoreleasePoolPop(v45);
    v49 = 0;
    if (error)
    {
      *error = v98;
    }

    goto LABEL_62;
  }

  if (![v20 count])
  {
    v49 = 1;
    goto LABEL_62;
  }

  localZone2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  v23 = [localZone2 createMirrorInputWithError:error];

  v94 = v23;
  if (!v23)
  {
    v49 = 0;
    goto LABEL_61;
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v90 = v20;
  v24 = v20;
  v96 = [v24 countByEnumeratingWithState:&v104 objects:v117 count:16];
  if (!v96)
  {

    v25 = 0;
    v49 = 1;
    goto LABEL_50;
  }

  obj = v24;
  errorCopy = error;
  v89 = optionsCopy;
  v95 = 0;
  v25 = 0;
  v97 = *v105;
  v91 = nameCopy;
  v92 = activityCopy;
  while (2)
  {
    for (i = 0; i != v96; ++i)
    {
      if (*v105 != v97)
      {
        objc_enumerationMutation(obj);
      }

      hmbModelID = [*(*(&v104 + 1) + 8 * i) hmbModelID];
      localZone3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
      v103 = v25;
      v99 = hmbModelID;
      v29 = [localZone3 externalIDForModelID:hmbModelID error:&v103];
      v30 = v103;

      if (!v29)
      {
        [activityCopy markWithFormat:@"Failed to fetch externalID for modelID %@: %@", v99, v30];
        v50 = objc_autoreleasePoolPush();
        v51 = selfCopy;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = HMFGetLogIdentifier();
          *buf = 138543874;
          v110 = v53;
          v111 = 2112;
          v112 = v99;
          v113 = 2112;
          v114 = v30;
          _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch externalID for modelID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v50);
        goto LABEL_40;
      }

      v31 = selfCopy;
      v102 = v30;
      v32 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v29 error:&v102];
      v33 = v102;

      if (!v32)
      {
        [activityCopy markWithFormat:@"Failed to convert externalID (%@) to CKRecordID for modelID %@: %@", v29, v99, v33];
        v54 = objc_autoreleasePoolPush();
        v55 = v31;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138544130;
          v110 = v57;
          v111 = 2112;
          v112 = v29;
          v113 = 2112;
          v114 = v99;
          v115 = 2112;
          v116 = v33;
          _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert externalID (%@) to CKRecordID for modelID %@: %@", buf, 0x2Au);
        }

        v32 = 0;
LABEL_39:

        objc_autoreleasePoolPop(v54);
        selfCopy = v31;

        v30 = v33;
        nameCopy = v91;
LABEL_40:

        v25 = v30;
        goto LABEL_41;
      }

      zoneID = [v32 zoneID];
      zoneName = [zoneID zoneName];
      v36 = [zoneName isEqualToString:nameCopy];

      if (v36)
      {
        hmbDescription = [v32 hmbDescription];
        [activityCopy markWithFormat:@"Removing override for %@", hmbDescription];

        v38 = objc_autoreleasePoolPush();
        v39 = v31;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = HMFGetLogIdentifier();
          hmbDescription2 = [v32 hmbDescription];
          *buf = 138543618;
          v110 = v41;
          v111 = 2112;
          v112 = hmbDescription2;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Removing override for %@", buf, 0x16u);

          nameCopy = v91;
        }

        objc_autoreleasePoolPop(v38);
        v101 = v33;
        v43 = v99;
        v44 = [v94 stageRemovalForModelWithID:v99 error:&v101];
        v25 = v101;

        if ((v44 & 1) == 0)
        {
          hmbDescription3 = [v32 hmbDescription];
          [v92 markWithFormat:@"Failed to remove model %@: %@", hmbDescription3, v25];

          v54 = objc_autoreleasePoolPush();
          v59 = v39;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v60 = HMFGetLogIdentifier();
            hmbDescription4 = [v32 hmbDescription];
            *buf = 138543874;
            v110 = v60;
            v111 = 2112;
            v112 = hmbDescription4;
            v113 = 2112;
            v114 = v25;
            _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove model %@: %@", buf, 0x20u);
          }

          v33 = v25;
          activityCopy = v92;
          goto LABEL_39;
        }

        ++v95;
        activityCopy = v92;
      }

      else
      {
        v25 = v33;
        v43 = v99;
      }

      selfCopy = v31;
    }

    v96 = [obj countByEnumeratingWithState:&v104 objects:v117 count:16];
    if (v96)
    {
      continue;
    }

    break;
  }

LABEL_41:

  v49 = v25 == 0;
  if (!v25 && v95)
  {
    [activityCopy markWithFormat:@"Committing removal of %lu overrides", v95];
    v62 = objc_autoreleasePoolPush();
    v63 = selfCopy;
    v64 = HMFGetOSLogHandle();
    optionsCopy = v89;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v66 = v65 = activityCopy;
      *buf = 138543618;
      v110 = v66;
      v111 = 2048;
      v112 = v95;
      _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Committing removal of %lu overrides", buf, 0x16u);

      activityCopy = v65;
    }

    objc_autoreleasePoolPop(v62);
    v100 = 0;
    v49 = [v94 frmSyncCommitWithOptions:v89 error:&v100];
    v67 = v100;
    v68 = v67;
    if (v49)
    {
      [activityCopy markWithFormat:@"Committed removal of overrides successfully"];
      v69 = objc_autoreleasePoolPush();
      v70 = v63;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v73 = v72 = activityCopy;
        *buf = 138543362;
        v110 = v73;
        _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@Committed removal of overrides successfully", buf, 0xCu);

        activityCopy = v72;
      }

      objc_autoreleasePoolPop(v69);
    }

    else
    {
      [activityCopy markWithFormat:@"Failed to commit: %@", v67];
      v80 = objc_autoreleasePoolPush();
      v81 = v63;
      v82 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v84 = v83 = activityCopy;
        *buf = 138543618;
        v110 = v84;
        v111 = 2112;
        v112 = v68;
        _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit: %@", buf, 0x16u);

        activityCopy = v83;
      }

      objc_autoreleasePoolPop(v80);
      if (errorCopy)
      {
        v85 = v68;
        *errorCopy = v68;
      }
    }

    v25 = 0;
    goto LABEL_60;
  }

  error = errorCopy;
  optionsCopy = v89;
  if (!v95)
  {
LABEL_50:
    [activityCopy markWithFormat:@"No matching models found, aborting"];
    v74 = objc_autoreleasePoolPush();
    v75 = selfCopy;
    v76 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v78 = v77 = activityCopy;
      *buf = 138543362;
      v110 = v78;
      _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_INFO, "%{public}@No matching models found, aborting", buf, 0xCu);

      activityCopy = v77;
    }

    objc_autoreleasePoolPop(v74);
  }

  [v94 abort];
  if (error)
  {
    v79 = v25;
    *error = v25;
  }

LABEL_60:

  v20 = v90;
LABEL_61:

LABEL_62:
  v86 = *MEMORY[0x277D85DE8];
  return v49;
}

- (BOOL)__removeOverridesForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [activityCopy markWithFormat:@"Removing overrides for recordIDs: %@", dsCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v17;
    v72 = 2112;
    v73 = dsCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Removing overrides for recordIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  v19 = [localZone createMirrorInputWithError:error];

  v63 = v19;
  if (v19)
  {
    errorCopy = error;
    v62 = optionsCopy;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v20 = dsCopy;
    v21 = [v20 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (v21)
    {
      v22 = v21;
      v60 = selfCopy;
      v61 = activityCopy;
      v58 = dsCopy;
      v23 = 0;
      v24 = *v67;
      while (2)
      {
        v25 = 0;
        v26 = v23;
        do
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v66 + 1) + 8 * v25);
          v28 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel modelIDForRecordID:v27];
          v65 = v26;
          v29 = [v63 stageRemovalForModelWithID:v28 error:&v65];
          v23 = v65;

          if ((v29 & 1) == 0)
          {
            hmbDescription = [v27 hmbDescription];
            [v61 markWithFormat:@"Failed to remove model %@: %@", hmbDescription, v23];

            v31 = objc_autoreleasePoolPush();
            selfCopy = v60;
            v32 = v60;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = HMFGetLogIdentifier();
              hmbDescription2 = [v27 hmbDescription];
              *buf = 138543874;
              v71 = v34;
              v72 = 2112;
              v73 = hmbDescription2;
              v74 = 2112;
              v75 = v23;
              _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove model %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v31);
            goto LABEL_16;
          }

          ++v25;
          v26 = v23;
        }

        while (v22 != v25);
        v22 = [v20 countByEnumeratingWithState:&v66 objects:v76 count:16];
        selfCopy = v60;
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_16:

      dsCopy = v58;
      activityCopy = v61;
      if (v23)
      {
        [v63 abort];
        optionsCopy = v62;
        if (errorCopy)
        {
          v36 = v23;
          v37 = 0;
          *errorCopy = v23;
        }

        else
        {
          v37 = 0;
        }

LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
    }

    [activityCopy markWithFormat:@"Committing removal of overrides"];
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    optionsCopy = v62;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v42 = v41 = activityCopy;
      *buf = 138543362;
      v71 = v42;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Committing removal of overrides", buf, 0xCu);

      activityCopy = v41;
    }

    objc_autoreleasePoolPop(v38);
    v64 = 0;
    v37 = [v63 frmSyncCommitWithOptions:v62 error:&v64];
    v43 = v64;
    v44 = v43;
    if (v37)
    {
      [activityCopy markWithFormat:@"Committed removal of overrides successfully"];
      v45 = objc_autoreleasePoolPush();
      v46 = v39;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v49 = v48 = activityCopy;
        *buf = 138543362;
        v71 = v49;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Committed removal of overrides successfully", buf, 0xCu);

        activityCopy = v48;
      }

      objc_autoreleasePoolPop(v45);
    }

    else
    {
      [activityCopy markWithFormat:@"Failed to commit: %@", v43];
      v50 = objc_autoreleasePoolPush();
      v51 = v39;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v54 = v53 = activityCopy;
        *buf = 138543618;
        v71 = v54;
        v72 = 2112;
        v73 = v44;
        _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit: %@", buf, 0x16u);

        activityCopy = v53;
      }

      objc_autoreleasePoolPop(v50);
      if (errorCopy)
      {
        v55 = v44;
        *errorCopy = v44;
      }
    }

    v23 = 0;
    goto LABEL_32;
  }

  v37 = 0;
LABEL_33:

  v56 = *MEMORY[0x277D85DE8];
  return v37;
}

- (BOOL)__removeAllOverridesWithOptions:(id)options activity:(id)activity error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [activityCopy markWithFormat:@"Removing all overrides"];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all overrides", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  v37[0] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v17 = [localZone removeAllModelsOfTypes:v16 options:optionsCopy];

  v32 = 0;
  v18 = [v17 blockAndWaitForCompletionWithError:&v32];
  v19 = v32;
  v20 = v19;
  if (v19)
  {
    [activityCopy markWithFormat:@"Failed to remove all previous overrides: %@", v19];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all previous overrides: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (error)
    {
      v25 = v20;
      *error = v20;
    }
  }

  else
  {
    [activityCopy markWithFormat:@"Successfully removed all previous overrides"];
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Successfully removed all previous overrides", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v20 == 0;
}

- (BOOL)__addOverrides:(id)overrides replace:(BOOL)replace options:(id)options activity:(id)activity error:(id *)error
{
  replaceCopy = replace;
  v56 = *MEMORY[0x277D85DE8];
  overridesCopy = overrides;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (replaceCopy)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeAllOverridesWithOptions:optionsCopy activity:activityCopy error:0];
  }

  __overrideParentModelID = [objc_opt_class() __overrideParentModelID];
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self localZone];
  v17 = [localZone createMirrorInputWithError:error];

  if (v17)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__95496;
    v50 = __Block_byref_object_dispose__95497;
    v51 = 0;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____addOverrides_replace_options_activity_error___block_invoke;
    v40[3] = &unk_27972A290;
    v18 = activityCopy;
    v41 = v18;
    selfCopy = self;
    v45 = &v46;
    v43 = __overrideParentModelID;
    v19 = v17;
    v44 = v19;
    [overridesCopy enumerateKeysAndObjectsUsingBlock:v40];
    if (v47[5])
    {
      [v19 abort];
      v20 = 0;
      if (error)
      {
        *error = v47[5];
      }
    }

    else
    {
      [v18 markWithFormat:@"Committing overrides"];
      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Committing overrides", buf, 0xCu);
      }

      objc_autoreleasePoolPop(context);
      v39 = 0;
      v20 = [v19 frmSyncCommitWithOptions:optionsCopy error:&v39];
      v24 = v39;
      contexta = v24;
      if (v20)
      {
        [v18 markWithFormat:@"Committed overrides successfully"];
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy2;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v53 = v28;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Committed overrides successfully", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
      }

      else
      {
        [v18 markWithFormat:@"Failed to commit: %@", v24];
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy2;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v32;
          v54 = 2112;
          v55 = contexta;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        if (error)
        {
          v33 = contexta;
          *error = contexta;
        }
      }
    }

    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v20 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v20;
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____addOverrides_replace_options_activity_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v36 = 0;
  v9 = [v7 externalID:&v36];
  v10 = v36;
  v11 = v36;
  if (v9)
  {
    v12 = [MEMORY[0x277CBEA90] data];
    v13 = [v8 objectForKeyedSubscript:@"networkDeclarations"];
    v14 = [v8 objectForKeyedSubscript:@"pairedMetadata"];
    if (v13 | v14)
    {
      v34 = a4;
      v33 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel modelIDForRecordID:v7];
      v32 = [[HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel alloc] initWithModelID:v33 parentModelID:*(a1 + 48) networkDeclarationsData:v13 pairedMetadataData:v14];
      v15 = [*(a1 + 56) stageAdditionForModel:? externalID:? externalData:? error:?];
      obj = v11;
      v16 = v11;

      if ((v15 & 1) == 0)
      {
        v17 = *(a1 + 32);
        v18 = [v7 hmbDescription];
        [v17 markWithFormat:@"Failed to update model for %@: %@", v18, v16];

        context = objc_autoreleasePoolPush();
        v19 = *(a1 + 40);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v29 = v16;
          v21 = [v7 hmbDescription];
          *buf = 138543874;
          v38 = v28;
          v39 = 2112;
          v40 = v21;
          v22 = v21;
          v41 = 2112;
          v42 = v29;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to update model for %@: %@", buf, 0x20u);

          v16 = v29;
        }

        objc_autoreleasePoolPop(context);
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
        *v34 = 1;
      }

      v11 = v16;
    }
  }

  else
  {
    [*(a1 + 32) markWithFormat:@"Failed to determine externalID: %@", v11];
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 40);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v26 = v35 = a4;
      *buf = 138543618;
      v38 = v26;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine externalID: %@", buf, 0x16u);

      a4 = v35;
    }

    objc_autoreleasePoolPop(v23);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
    *a4 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)__fetchOverridesForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  selfCopy = self;
  if (nameCopy)
  {
    [activityCopy markWithFormat:@"Fetching overrides for zone '%@'", nameCopy];
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v77 = v17;
    v78 = 2112;
    v79 = nameCopy;
    v18 = "%{public}@Fetching overrides for zone '%@'";
    v19 = v16;
    v20 = 22;
  }

  else
  {
    [activityCopy markWithFormat:@"Fetching all overrides"];
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v77 = v17;
    v18 = "%{public}@Fetching all overrides";
    v19 = v16;
    v20 = 12;
  }

  _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);

LABEL_7:
  objc_autoreleasePoolPop(v14);
  v22 = objc_opt_class();
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self localZone];
  v75 = 0;
  v24 = [localZone fetchModelsOfType:v22 error:&v75];
  v25 = v75;

  if (v24)
  {
    if ([v24 count])
    {
      v60 = v25;
      v65 = activityCopy;
      v62 = optionsCopy;
      v67 = nameCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v61 = v24;
      obj = v24;
      v26 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
      selfCopy4 = self;
      if (v26)
      {
        v28 = v26;
        v68 = *v72;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v72 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v71 + 1) + 8 * i);
            hmbModelID = [v30 hmbModelID];
            localZone2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy4 localZone];
            v70 = 0;
            v33 = [localZone2 externalIDForModelID:hmbModelID error:&v70];
            v34 = v70;

            if (v33)
            {
              v69 = v34;
              v35 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v33 error:&v69];
              v36 = v69;

              if (v35)
              {
                if (!v67 || ([v35 zoneID], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "zoneName"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", v67), v38, v37, v39))
                {
                  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                  networkDeclarationsData = [v30 networkDeclarationsData];
                  [dictionary2 setObject:networkDeclarationsData forKeyedSubscript:@"networkDeclarations"];

                  pairedMetadataData = [v30 pairedMetadataData];
                  [dictionary2 setObject:pairedMetadataData forKeyedSubscript:@"pairedMetadata"];

                  v43 = [dictionary2 copy];
                  [dictionary setObject:v43 forKeyedSubscript:v35];
                }
              }

              else
              {
                [v65 markWithFormat:@"Failed to convert externalID (%@) to CKRecordID for modelID %@: %@", v33, hmbModelID, v36];
                v48 = objc_autoreleasePoolPush();
                v49 = selfCopy4;
                v50 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v51 = HMFGetLogIdentifier();
                  *buf = 138544130;
                  v77 = v51;
                  v78 = 2112;
                  v79 = v33;
                  v80 = 2112;
                  v81 = hmbModelID;
                  v82 = 2112;
                  v83 = v36;
                  _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert externalID (%@) to CKRecordID for modelID %@: %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v48);
              }

              selfCopy4 = selfCopy;
            }

            else
            {
              [v65 markWithFormat:@"Failed to fetch externalID for modelID %@: %@", hmbModelID, v34];
              v44 = objc_autoreleasePoolPush();
              v45 = selfCopy4;
              v46 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v47 = HMFGetLogIdentifier();
                *buf = 138543874;
                v77 = v47;
                v78 = 2112;
                v79 = hmbModelID;
                v80 = 2112;
                v81 = v34;
                _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch externalID for modelID %@: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v44);
              v36 = v34;
            }
          }

          v28 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
        }

        while (v28);
      }

      v52 = [dictionary copy];
      nameCopy = v67;
      v24 = v61;
      optionsCopy = v62;
      activityCopy = v65;
      v25 = v60;
    }

    else
    {
      v52 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    [activityCopy markWithFormat:@"Failed to fetch override models: %@", v25];
    v53 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543618;
      v77 = v56;
      v78 = 2112;
      v79 = v25;
      _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch override models: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    if (error)
    {
      v57 = v25;
      v52 = 0;
      *error = v25;
    }

    else
    {
      v52 = 0;
    }
  }

  v58 = *MEMORY[0x277D85DE8];

  return v52;
}

- (id)__fetchOverridesForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v41 = objc_opt_class();
  v39 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = dsCopy;
  v43 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v43)
  {
    v40 = *v47;
    selfCopy = self;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v14 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel modelIDForRecordID:v12];
        localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self localZone];
        v45 = 0;
        v16 = [localZone fetchModelWithModelID:v14 ofType:v41 error:&v45];
        v17 = v45;

        hmbDescription = [v12 hmbDescription];
        v19 = hmbDescription;
        if (v16)
        {
          v44 = v17;
          [activityCopy markWithFormat:@"Model %@ (%@) found in override zone", v14, hmbDescription];

          v20 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = HMFGetLogIdentifier();
            hmbDescription2 = [v12 hmbDescription];
            *buf = 138543874;
            v51 = v23;
            v52 = 2112;
            v53 = v14;
            v54 = 2112;
            v55 = hmbDescription2;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Model %@ (%@) found in override zone", buf, 0x20u);

            self = selfCopy;
          }

          objc_autoreleasePoolPop(v20);
          networkDeclarationsData = [v16 networkDeclarationsData];
          [dictionary setObject:networkDeclarationsData forKeyedSubscript:@"networkDeclarations"];

          pairedMetadataData = [v16 pairedMetadataData];
          [dictionary setObject:pairedMetadataData forKeyedSubscript:@"pairedMetadata"];

          v27 = [dictionary copy];
          [v39 setObject:v27 forKeyedSubscript:v12];

          v17 = v44;
        }

        else
        {
          [activityCopy markWithFormat:@"No model %@ (%@) found in override zone: %@", v14, hmbDescription, v17, optionsCopy];

          v28 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = HMFGetLogIdentifier();
            hmbDescription3 = [v12 hmbDescription];
            *buf = 138544130;
            v51 = v31;
            v52 = 2112;
            v53 = v14;
            v54 = 2112;
            v55 = hmbDescription3;
            v56 = 2112;
            v57 = v17;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@No model %@ (%@) found in override zone: %@", buf, 0x2Au);

            self = selfCopy;
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      v43 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v43);
  }

  v33 = [v39 copy];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (BOOL)__removeAllLocalRulesWithOptions:(id)options activity:(id)activity error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  publicZoneIDs = [cloudDatabase publicZoneIDs];

  if ([publicZoneIDs count])
  {
    [activityCopy markWithFormat:@"Removing cloud zones: %@", publicZoneIDs];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = publicZoneIDs;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Removing cloud zones: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
    allObjects = [publicZoneIDs allObjects];
    [cloudDatabase2 handleRemovedZoneIDs:allObjects userInitiated:1];
  }

  [activityCopy markWithFormat:@"Resetting database change token"];
  v18 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v21;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting database change token", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  cloudDatabase3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 cloudDatabase];
  cloudDatabase4 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 cloudDatabase];
  publicDatabase = [cloudDatabase4 publicDatabase];
  [cloudDatabase3 updateServerChangeToken:0 forDatabaseWithScope:{objc_msgSend(publicDatabase, "scope")}];

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)__fetchAllDataForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (nameCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CBC5F8]);
    v11 = [v10 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v11];

LABEL_12:
    [activityCopy markWithFormat:@"Fetching models from zones: %@", v12];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v63 = v27;
      v64 = 2112;
      v65 = v12;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching models from zones: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v12;
    v28 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v28)
    {
      v29 = *v55;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v54 + 1) + 8 * i);
          v53 = 0;
          v32 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy __fetchAllDataForZoneID:v31 options:optionsCopy activity:activityCopy error:&v53];
          v33 = v53;
          if (v32)
          {
            [dictionary addEntriesFromDictionary:v32];
          }

          else
          {
            hmbDescription = [v31 hmbDescription];
            [activityCopy markWithFormat:@"Failed to fetch models for zone %@: %@", hmbDescription, v33];

            v35 = objc_autoreleasePoolPush();
            v36 = selfCopy;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = HMFGetLogIdentifier();
              hmbDescription2 = [v31 hmbDescription];
              *buf = 138543874;
              v63 = v38;
              v64 = 2112;
              v65 = hmbDescription2;
              v66 = 2112;
              v67 = v33;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch models for zone %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v35);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v28);
    }

    v40 = [dictionary copy];
    goto LABEL_27;
  }

  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  v14 = *MEMORY[0x277D17138];
  os_unfair_lock_lock_with_options();

  cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  zoneStateByZoneID = [cloudDatabase2 zoneStateByZoneID];
  allValues = [zoneStateByZoneID allValues];

  os_unfair_lock_unlock(&cloudDatabase[v14]);
  if ([allValues count])
  {
    v18 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(allValues, "count")}];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v19 = allValues;
    v20 = [v19 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v20)
    {
      v21 = *v59;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v59 != v21)
          {
            objc_enumerationMutation(v19);
          }

          zoneID = [*(*(&v58 + 1) + 8 * j) zoneID];
          v23ZoneID = [zoneID zoneID];
          [v18 addObject:v23ZoneID];
        }

        v20 = [v19 countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v20);
    }

    v12 = [v18 copy];
    goto LABEL_12;
  }

  obj = allValues;
  [activityCopy markWithFormat:@"No local zones exist"];
  v43 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v45 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    v46 = HMFGetLogIdentifier();
    *buf = 138543362;
    v63 = v46;
    _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_DEBUG, "%{public}@No local zones exist", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v43);
  v40 = MEMORY[0x277CBEC10];
LABEL_27:

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)__fetchAllDataForZoneID:(id)d options:(id)options activity:(id)activity error:(id *)error
{
  v144 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hmbDescription = [dCopy hmbDescription];
  v123 = activityCopy;
  [activityCopy markWithFormat:@"Fetching all models for zone %@", hmbDescription];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v18 = v17 = selfCopy;
    hmbDescription2 = [dCopy hmbDescription];
    *buf = 138543618;
    v136 = v18;
    v137 = 2112;
    v138 = hmbDescription2;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching all models for zone %@", buf, 0x16u);

    selfCopy = v17;
  }

  objc_autoreleasePoolPop(v14);
  v20 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy __createCloudZoneIDForZoneID:dCopy];
  v134 = 0;
  v21 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy __openLocalZoneForCloudZoneID:v20 error:&v134];
  v22 = v134;
  if (v21)
  {
    v115 = v20;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v133 = v22;
    v23 = [v21 fetchModelsOfType:objc_opt_class() error:&v133];
    v24 = v133;

    hmbDescription3 = [dCopy hmbDescription];
    v26 = hmbDescription3;
    v114 = v23;
    if (v23)
    {
      v113 = optionsCopy;
      v124 = v24;
      v27 = v23;
      [v123 markWithFormat:@"Found models in local zone for %@: %@", hmbDescription3, v23];

      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v32 = v31 = selfCopy;
        hmbDescription4 = [dCopy hmbDescription];
        *buf = 138543874;
        v136 = v32;
        v137 = 2112;
        v138 = hmbDescription4;
        v139 = 2112;
        v140 = v27;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Found models in local zone for %@: %@", buf, 0x20u);

        selfCopy = v31;
      }

      v117 = v29;
      objc_autoreleasePoolPop(v28);
      v34 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v27, "count")}];
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      obj = v27;
      v121 = [obj countByEnumeratingWithState:&v129 objects:v143 count:16];
      if (v121)
      {
        v119 = *v130;
        v35 = v124;
        v111 = selfCopy;
        v112 = dCopy;
        v120 = v21;
        while (2)
        {
          v36 = 0;
          v37 = v117;
          do
          {
            if (*v130 != v119)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v129 + 1) + 8 * v36);
            hmbModelID = [v38 hmbModelID];
            v128 = v35;
            v40 = [v21 externalIDForModelID:hmbModelID error:&v128];
            v41 = v128;

            if (!v40)
            {
              hmbModelID2 = [v38 hmbModelID];
              dCopy = v112;
              hmbDescription5 = [v112 hmbDescription];
              [v123 markWithFormat:@"Failed to fetch external id for model %@ in %@: %@", hmbModelID2, hmbDescription5, v41];

              v82 = objc_autoreleasePoolPush();
              v83 = v37;
              v84 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                v85 = HMFGetLogIdentifier();
                hmbModelID3 = [v38 hmbModelID];
                hmbDescription6 = [v112 hmbDescription];
                *buf = 138544130;
                v136 = v85;
                v137 = 2112;
                v138 = hmbModelID3;
                v139 = 2112;
                v140 = hmbDescription6;
                v141 = 2112;
                v142 = v41;
                _os_log_impl(&dword_2531F8000, v84, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch external id for model %@ in %@: %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v82);
              v35 = v41;
              optionsCopy = v113;
              v21 = v120;
              selfCopy = v111;
              goto LABEL_41;
            }

            v127 = v41;
            v42 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v40 error:&v127];
            v35 = v127;

            if (!v42)
            {
              hmbModelID4 = [v38 hmbModelID];
              dCopy = v112;
              hmbDescription7 = [v112 hmbDescription];
              v90 = v35;
              [v123 markWithFormat:@"Failed to convert external id for model %@ in %@: %@", hmbModelID4, hmbDescription7, v35];

              v91 = objc_autoreleasePoolPush();
              v92 = v37;
              v93 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v95 = v94 = v40;
                hmbModelID5 = [v38 hmbModelID];
                hmbDescription8 = [v112 hmbDescription];
                *buf = 138544130;
                v136 = v95;
                v137 = 2112;
                v138 = hmbModelID5;
                v139 = 2112;
                v140 = hmbDescription8;
                v141 = 2112;
                v142 = v90;
                _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert external id for model %@ in %@: %@", buf, 0x2Au);

                dCopy = v112;
                v40 = v94;
              }

              objc_autoreleasePoolPop(v91);
              optionsCopy = v113;
              v21 = v120;
              selfCopy = v111;
              v35 = v90;
              goto LABEL_41;
            }

            v125 = v40;
            hmbDescription9 = [v42 hmbDescription];
            [v123 markWithFormat:@"Fetched model for %@", hmbDescription9];

            v44 = objc_autoreleasePoolPush();
            v45 = v37;
            v46 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v47 = v34;
              v49 = v48 = v35;
              hmbDescription10 = [v42 hmbDescription];
              *buf = 138543618;
              v136 = v49;
              v137 = 2112;
              v138 = hmbDescription10;
              _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Fetched model for %@", buf, 0x16u);

              v35 = v48;
              v34 = v47;
              v37 = v117;
            }

            objc_autoreleasePoolPop(v44);
            networkDeclarationsData = [v38 networkDeclarationsData];

            if (networkDeclarationsData)
            {
              networkDeclarationsData2 = [v38 networkDeclarationsData];
              [v34 setObject:networkDeclarationsData2 forKeyedSubscript:@"networkDeclarations"];
            }

            pairedMetadataData = [v38 pairedMetadataData];

            v21 = v120;
            if (pairedMetadataData)
            {
              pairedMetadataData2 = [v38 pairedMetadataData];
              [v34 setObject:pairedMetadataData2 forKeyedSubscript:@"pairedMetadata"];
            }

            [dictionary setObject:v34 forKeyedSubscript:v42];

            ++v36;
          }

          while (v121 != v36);
          dCopy = v112;
          optionsCopy = v113;
          selfCopy = v111;
          v121 = [obj countByEnumeratingWithState:&v129 objects:v143 count:16];
          if (v121)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v35 = v124;
        optionsCopy = v113;
      }

LABEL_41:
    }

    else
    {
      [v123 markWithFormat:@"Failed to fetch models from local zone for %@: %@", hmbDescription3, v24];

      v66 = objc_autoreleasePoolPush();
      v67 = selfCopy;
      v68 = selfCopy;
      v69 = HMFGetOSLogHandle();
      v35 = v24;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v71 = v70 = v24;
        hmbDescription11 = [dCopy hmbDescription];
        *buf = 138543874;
        v136 = v71;
        v137 = 2112;
        v138 = hmbDescription11;
        v139 = 2112;
        v140 = v70;
        _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch models from local zone for %@: %@", buf, 0x20u);

        v35 = v70;
      }

      objc_autoreleasePoolPop(v66);
      selfCopy = v67;
    }

    shutdown = [v21 shutdown];
    v126 = 0;
    v99 = [shutdown blockAndWaitForCompletionWithError:&v126];
    v100 = v126;

    if (v100)
    {
      v101 = v35;
      hmbDescription12 = [dCopy hmbDescription];
      [v123 markWithFormat:@"Failed to shut down local zone for %@: %@", hmbDescription12, v100];

      v103 = objc_autoreleasePoolPush();
      v104 = selfCopy;
      v105 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v106 = HMFGetLogIdentifier();
        hmbDescription13 = [dCopy hmbDescription];
        *buf = 138543874;
        v136 = v106;
        v137 = 2112;
        v138 = hmbDescription13;
        v139 = 2112;
        v140 = v100;
        _os_log_impl(&dword_2531F8000, v105, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down local zone for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v103);
      v35 = v101;
      if (!v101)
      {
        v35 = v100;
      }
    }

    else if (!v35)
    {
      v65 = [dictionary copy];
LABEL_52:

      v22 = v35;
      v20 = v115;
      goto LABEL_53;
    }

    if (error)
    {
      v108 = v35;
      v65 = 0;
      *error = v35;
    }

    else
    {
      v65 = 0;
    }

    goto LABEL_52;
  }

  v55 = selfCopy;
  v56 = [objc_opt_class() __errorIsNotFound:v22];
  hmbDescription14 = [dCopy hmbDescription];
  v58 = hmbDescription14;
  if (v56)
  {
    [v123 markWithFormat:@"Local zone does not exist for %@", hmbDescription14];

    v59 = objc_autoreleasePoolPush();
    v60 = v55;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v62 = HMFGetLogIdentifier();
      [dCopy hmbDescription];
      v64 = v63 = v20;
      *buf = 138543618;
      v136 = v62;
      v137 = 2112;
      v138 = v64;
      _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_DEBUG, "%{public}@Local zone does not exist for %@", buf, 0x16u);

      v20 = v63;
    }

    objc_autoreleasePoolPop(v59);
    v65 = MEMORY[0x277CBEC10];
  }

  else
  {
    [v123 markWithFormat:@"Failed to open local zone for %@: %@", hmbDescription14, v22];

    v73 = objc_autoreleasePoolPush();
    v74 = v55;
    v75 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = HMFGetLogIdentifier();
      [dCopy hmbDescription];
      v78 = v77 = v20;
      *buf = 138543874;
      v136 = v76;
      v137 = 2112;
      v138 = v78;
      v139 = 2112;
      v140 = v22;
      _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_ERROR, "%{public}@Failed to open local zone for %@: %@", buf, 0x20u);

      v20 = v77;
    }

    objc_autoreleasePoolPop(v73);
    if (error)
    {
      v79 = v22;
      v65 = 0;
      *error = v22;
    }

    else
    {
      v65 = 0;
    }
  }

LABEL_53:

  v109 = *MEMORY[0x277D85DE8];

  return v65;
}

- (id)__fetchAllDataForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error
{
  v79 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v57 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __localZonesForRecordIDs:dsCopy activity:activityCopy error:error];
  if (v57)
  {
    v54 = optionsCopy;
    v60 = objc_opt_class();
    v58 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v55 = dsCopy;
    obj = dsCopy;
    v14 = v57;
    v63 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v63)
    {
      v61 = *v67;
      selfCopy = self;
      v56 = activityCopy;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v67 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v66 + 1) + 8 * i);
          v17 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel modelIDForRecordID:v16];
          zoneID = [v16 zoneID];
          v19 = [v14 objectForKeyedSubscript:zoneID];

          if (v19)
          {
            v65 = 0;
            v20 = [v19 fetchModelWithModelID:v17 ofType:v60 error:&v65];
            v21 = v65;
            hmbDescription = [v16 hmbDescription];
            v23 = hmbDescription;
            v64 = v21;
            if (v20)
            {
              [activityCopy markWithFormat:@"Model %@ found for record %@", v17, hmbDescription];

              v24 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v27 = HMFGetLogIdentifier();
                hmbDescription2 = [v16 hmbDescription];
                *buf = 138543874;
                v71 = v27;
                v72 = 2112;
                v73 = v17;
                v74 = 2112;
                v75 = hmbDescription2;
                _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Model %@ found for record %@", buf, 0x20u);

                activityCopy = v56;
                v14 = v57;
              }

              objc_autoreleasePoolPop(v24);
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              networkDeclarationsData = [v20 networkDeclarationsData];

              if (networkDeclarationsData)
              {
                networkDeclarationsData2 = [v20 networkDeclarationsData];
                [dictionary setObject:networkDeclarationsData2 forKeyedSubscript:@"networkDeclarations"];
              }

              pairedMetadataData = [v20 pairedMetadataData];

              self = selfCopy;
              if (pairedMetadataData)
              {
                pairedMetadataData2 = [v20 pairedMetadataData];
                [dictionary setObject:pairedMetadataData2 forKeyedSubscript:@"pairedMetadata"];
              }

              [v58 setObject:dictionary forKeyedSubscript:v16];
            }

            else
            {
              [activityCopy markWithFormat:@"No model %@ for record %@ found: %@", v17, hmbDescription, v21];

              v40 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v43 = HMFGetLogIdentifier();
                hmbDescription3 = [v16 hmbDescription];
                *buf = 138544130;
                v71 = v43;
                v72 = 2112;
                v73 = v17;
                v74 = 2112;
                v75 = hmbDescription3;
                v76 = 2112;
                v77 = v64;
                _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@No model %@ for record %@ found: %@", buf, 0x2Au);

                v14 = v57;
              }

              objc_autoreleasePoolPop(v40);
              self = selfCopy;
            }
          }

          else
          {
            hmbDescription4 = [v16 hmbDescription];
            [activityCopy markWithFormat:@"No local zone for model %@ for record %@ found", v17, hmbDescription4];

            v35 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = HMFGetLogIdentifier();
              hmbDescription5 = [v16 hmbDescription];
              *buf = 138543874;
              v71 = v38;
              v72 = 2112;
              v73 = v17;
              v74 = 2112;
              v75 = hmbDescription5;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@No local zone for model %@ for record %@ found", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v35);
            self = selfCopy;
          }
        }

        v63 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v63);
    }

    allValues = [v14 allValues];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __shutdownLocalZones:allValues activity:activityCopy];

    v46 = [v58 copy];
    v47 = v14;
    optionsCopy = v54;
    dsCopy = v55;
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v51;
      _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@localZones is nil, can't fetch paired metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v48);
    v46 = 0;
    v47 = 0;
  }

  v52 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)__localZonesForRecordIDs:(id)ds activity:(id)activity error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  selfCopy = self;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (!v12)
  {

LABEL_26:
    v45 = [dictionary copy];
    v14 = 0;
    goto LABEL_27;
  }

  v13 = v12;
  errorCopy = error;
  v14 = 0;
  v15 = *v56;
  v49 = dictionary;
  v50 = *v56;
  v16 = selfCopy;
  v51 = v11;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v56 != v15)
      {
        objc_enumerationMutation(v11);
      }

      zoneID = [*(*(&v55 + 1) + 8 * i) zoneID];
      v19 = [dictionary objectForKeyedSubscript:zoneID];

      if (!v19)
      {
        v20 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v16 __createCloudZoneIDForZoneID:zoneID];
        v54 = v14;
        v21 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v16 __openLocalZoneForCloudZoneID:v20 error:&v54];
        v22 = v54;

        if (v21)
        {
          hmbDescription = [zoneID hmbDescription];
          [activityCopy markWithFormat:@"Opened local zone for %@", hmbDescription];

          v24 = objc_autoreleasePoolPush();
          v25 = v16;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = HMFGetLogIdentifier();
            hmbDescription2 = [zoneID hmbDescription];
            *buf = 138543618;
            v60 = v27;
            v61 = 2112;
            v62 = hmbDescription2;
            _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Opened local zone for %@", buf, 0x16u);

            v15 = v50;
            dictionary = v49;
          }

          objc_autoreleasePoolPop(v24);
          [dictionary setObject:v21 forKeyedSubscript:zoneID];
        }

        else
        {
          v29 = v16;
          v30 = [objc_opt_class() __errorIsNotFound:v22];
          hmbDescription3 = [zoneID hmbDescription];
          v32 = hmbDescription3;
          if (!v30)
          {
            [activityCopy markWithFormat:@"Failed to open local zone for %@: %@", hmbDescription3, v22];

            v38 = objc_autoreleasePoolPush();
            v39 = v29;
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = HMFGetLogIdentifier();
              hmbDescription4 = [zoneID hmbDescription];
              *buf = 138543874;
              v60 = v41;
              v61 = 2112;
              v62 = hmbDescription4;
              v63 = 2112;
              v64 = v22;
              _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to open local zone for %@: %@", buf, 0x20u);

              dictionary = v49;
            }

            objc_autoreleasePoolPop(v38);
            v14 = v22;
            v11 = v51;
            v16 = selfCopy;
            goto LABEL_22;
          }

          [activityCopy markWithFormat:@"No local zone for %@, skipping", hmbDescription3];

          v33 = objc_autoreleasePoolPush();
          v34 = v29;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = HMFGetLogIdentifier();
            hmbDescription5 = [zoneID hmbDescription];
            *buf = 138543618;
            v60 = v36;
            v61 = 2112;
            v62 = hmbDescription5;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@No local zone for %@, skipping", buf, 0x16u);

            dictionary = v49;
          }

          objc_autoreleasePoolPop(v33);
          v22 = 0;
          v15 = v50;
        }

        v14 = v22;
        v11 = v51;
        v16 = selfCopy;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  if (!v14)
  {
    goto LABEL_26;
  }

  allValues = [dictionary allValues];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v16 __shutdownLocalZones:allValues activity:activityCopy];

  if (errorCopy)
  {
    v44 = v14;
    v45 = 0;
    *errorCopy = v14;
  }

  else
  {
    v45 = 0;
  }

LABEL_27:

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

- (void)__shutdownLocalZones:(id)zones activity:(id)activity
{
  v30 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([zonesCopy count])
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(zonesCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = zonesCopy;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          shutdown = [*(*(&v25 + 1) + 8 * v14) shutdown];
          [v9 addObject:shutdown];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v16 = MEMORY[0x277D2C900];
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v18 = [v16 combineAllFutures:v9 ignoringErrors:1 scheduler:globalAsyncScheduler];

    v19 = [v18 blockAndWaitForCompletionWithError:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____shutdownLocalZones_activity___block_invoke;
    v21[3] = &unk_27972A268;
    v22 = activityCopy;
    v23 = v10;
    selfCopy = self;
    [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____shutdownLocalZones_activity___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
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
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v10 = [v9 zoneID];
    v11 = [v10 name];
    [v8 markWithFormat:@"Failed to shut down local zone %@", v11];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 48);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v17 = [v16 zoneID];
      v18 = [v17 name];
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down local zone %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)__openLocalZoneForCloudZoneID:(id)d error:(id *)error
{
  dCopy = d;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self localDatabase];
  v9 = objc_alloc_init(MEMORY[0x277D17088]);
  v10 = [localDatabase openZoneWithZoneID:dCopy configuration:v9 error:error];

  [v10 startUp];

  return v10;
}

- (id)__createCloudZoneIDForZoneID:(id)d
{
  v4 = MEMORY[0x277D17070];
  dCopy = d;
  v6 = [v4 alloc];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  containerID = [cloudDatabase containerID];
  cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  publicDatabase = [cloudDatabase2 publicDatabase];
  v11 = [v6 initWithContainerID:containerID scope:objc_msgSend(publicDatabase zoneID:{"scope"), dCopy}];

  return v11;
}

+ (BOOL)__errorIsNotFound:(id)found
{
  foundCopy = found;
  if ([foundCopy isHMFError] && objc_msgSend(foundCopy, "code") == 2)
  {
    v4 = 1;
  }

  else if ([foundCopy isHMError])
  {
    v4 = [foundCopy code] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)__overrideParentModelID
{
  if (__overrideParentModelID_onceToken != -1)
  {
    dispatch_once(&__overrideParentModelID_onceToken, &__block_literal_global_95618);
  }

  v3 = __overrideParentModelID_overrideParentModelID;

  return v3;
}

uint64_t __89__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____overrideParentModelID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"56e3068a-cb39-4cef-b4a3-78d7cc58e7d5"];
  v1 = __overrideParentModelID_overrideParentModelID;
  __overrideParentModelID_overrideParentModelID = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)__updateChangeTokenWithFetchInfo:(id)info
{
  v62 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  originalDatabaseChangeToken = [infoCopy originalDatabaseChangeToken];
  databaseChangeToken = [infoCopy databaseChangeToken];
  v8 = HMFEqualObjects();

  if (v8)
  {
    activity = [infoCopy activity];
    databaseChangeToken2 = [infoCopy databaseChangeToken];
    hmbDescription = [databaseChangeToken2 hmbDescription];
    [activity markWithFormat:@"Database change token has not been updated: %@", hmbDescription];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      databaseChangeToken3 = [infoCopy databaseChangeToken];
      hmbDescription2 = [databaseChangeToken3 hmbDescription];
      *buf = 138543618;
      v59 = v15;
      v60 = 2112;
      v61 = hmbDescription2;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Database change token has not been updated: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    databaseChangeToken4 = [infoCopy databaseChangeToken];

    if (!databaseChangeToken4)
    {
      v51 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v54;
        _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Should never have a nil change token here", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v51);
      v55 = [[HMDAssertionLogEvent alloc] initWithReason:@"Should never have a nil change token here"];
      v56 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v56 submitLogEvent:v55];
    }

    activity2 = [infoCopy activity];
    databaseChangeToken5 = [infoCopy databaseChangeToken];
    hmbDescription3 = [databaseChangeToken5 hmbDescription];
    [activity2 markWithFormat:@"Updating database change token: %@", hmbDescription3];

    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      databaseChangeToken6 = [infoCopy databaseChangeToken];
      hmbDescription4 = [databaseChangeToken6 hmbDescription];
      *buf = 138543618;
      v59 = v25;
      v60 = 2112;
      v61 = hmbDescription4;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Updating database change token: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy3 cloudDatabase];
    v29 = *MEMORY[0x277D17138];
    os_unfair_lock_lock_with_options();

    cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy3 cloudDatabase];
    v31 = [cloudDatabase2 databaseStateForDatabaseScope:1];

    databaseChangeToken7 = [infoCopy databaseChangeToken];
    [v31 setServerChangeToken:databaseChangeToken7];

    cloudDatabase3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy3 cloudDatabase];
    stateZone = [cloudDatabase3 stateZone];
    v57 = v31;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    v36 = [stateZone update:v35];

    os_unfair_lock_unlock(&cloudDatabase[v29]);
    activity3 = [infoCopy activity];
    v38 = activity3;
    if (v36)
    {
      [activity3 markWithFormat:@"Failed to update database state model: %@", v36];

      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy3;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v42;
        v60 = 2112;
        v61 = v36;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to update database state model: %@", buf, 0x16u);
      }
    }

    else
    {
      [activity3 markWithFormat:@"Updated database change token successfully"];

      v39 = objc_autoreleasePoolPush();
      v43 = selfCopy3;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v44;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Updated database change token successfully", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v39);
  }

  requestedRecordIDs = [infoCopy requestedRecordIDs];
  internalState = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self internalState];
  [internalState setLastSynchronizedRecordIDs:requestedRecordIDs];

  activity4 = [infoCopy activity];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __saveInternalStateWithActivity:activity4];

  modifiedRecordIDs = [infoCopy modifiedRecordIDs];
  v49 = [modifiedRecordIDs copy];
  [infoCopy finishWithResult:v49];

  v50 = *MEMORY[0x277D85DE8];
}

- (void)__removeDeletedZonesWithFetchInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  array = [MEMORY[0x277CBEB18] array];
  zoneInfoMap = [infoCopy zoneInfoMap];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __111__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_RemoveDeletedZones____removeDeletedZonesWithFetchInfo___block_invoke;
  v14 = &unk_27972C180;
  selfCopy = self;
  v16 = array;
  v8 = array;
  [zoneInfoMap enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase:v11];
  v10 = [v8 copy];
  [v9 handleRemovedZoneIDs:v10 userInitiated:0];

  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __updateChangeTokenWithFetchInfo:infoCopy];
}

void __111__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_RemoveDeletedZones____removeDeletedZonesWithFetchInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if ([a3 zoneWasDeleted])
  {
    v5 = objc_alloc(MEMORY[0x277D17070]);
    v6 = [*(a1 + 32) cloudDatabase];
    v7 = [v6 containerID];
    v8 = [*(a1 + 32) cloudDatabase];
    v9 = [v8 publicDatabase];
    v10 = [v5 initWithContainerID:v7 scope:objc_msgSend(v9 zoneID:{"scope"), v11}];

    [*(a1 + 40) addObject:v10];
  }
}

- (void)__saveInternalStateWithActivity:(id)activity
{
  v36[1] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalState = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self internalState];

  if (!internalState)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must have internal state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must have internal state"];
    v29 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v29 submitLogEvent:v28];
  }

  [activityCopy markWithFormat:@"Saving internal state model"];
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Saving internal state model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 localZone];
  internalState2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 internalState];
  v36[0] = internalState2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v14 = [localZone update:v13];

  if (v14)
  {
    internalState3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 internalState];
    hmbModelID = [internalState3 hmbModelID];
    [activityCopy markWithFormat:@"Failed to save internal state model %@: %@", hmbModelID, v14];

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy2;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      internalState4 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v18 internalState];
      hmbModelID2 = [internalState4 hmbModelID];
      *buf = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = hmbModelID2;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to save internal state model %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options error:(id *)error
{
  nameCopy = name;
  recordNameCopy = recordName;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__134914;
  v32 = __Block_byref_object_dispose__134915;
  v33 = 0;
  v14 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"RemoveOverrides"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __110__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__removeOverridesForZoneName_recordName_options_error___block_invoke;
  v21[3] = &unk_27972D340;
  v21[4] = self;
  v26 = &v34;
  v15 = nameCopy;
  v22 = v15;
  v16 = recordNameCopy;
  v23 = v16;
  v17 = optionsCopy;
  v24 = v17;
  v18 = v14;
  v25 = v18;
  v27 = &v28;
  [v18 performBlock:v21];
  v19 = *(v35 + 24);
  if (error && (v35[3] & 1) == 0)
  {
    *error = v29[5];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

uint64_t __110__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__removeOverridesForZoneName_recordName_options_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(*(a1 + 80) + 8);
    obj = *(v7 + 40);
    v8 = [v2 __removeOverridesForZoneName:v3 recordName:v4 options:v5 activity:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    *(*(*(a1 + 72) + 8) + 24) = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v10 = *(*(a1 + 80) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return [*(a1 + 64) invalidate];
}

- (BOOL)removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options error:(id *)error
{
  optionsCopy = options;
  recordNameCopy = recordName;
  nameCopy = name;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(error) = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _removeOverridesForZoneName:nameCopy recordName:recordNameCopy options:optionsCopy error:error];
  return error;
}

- (BOOL)removeAllOverridesWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(error) = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _removeOverridesForZoneName:0 recordName:0 options:optionsCopy error:error];
  return error;
}

- (BOOL)removeOverridesForRecordIDs:(id)ds options:(id)options error:(id *)error
{
  dsCopy = ds;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__134914;
  v27 = __Block_byref_object_dispose__134915;
  v28 = 0;
  v11 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"RemoveOverridesForRecordIDs"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_removeOverridesForRecordIDs_options_error___block_invoke;
  v17[3] = &unk_27972D2F0;
  v17[4] = self;
  v21 = &v29;
  v12 = dsCopy;
  v18 = v12;
  v13 = optionsCopy;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  v22 = &v23;
  [v14 performBlock:v17];
  v15 = *(v30 + 24);
  if (error && (v30[3] & 1) == 0)
  {
    *error = v24[5];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

uint64_t __99__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_removeOverridesForRecordIDs_options_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 72) + 8);
    obj = *(v6 + 40);
    v7 = [v2 __removeOverridesForRecordIDs:v3 options:v4 activity:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return [*(a1 + 56) invalidate];
}

- (BOOL)addOverrides:(id)overrides replace:(BOOL)replace options:(id)options error:(id *)error
{
  overridesCopy = overrides;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__134914;
  v31 = __Block_byref_object_dispose__134915;
  v32 = 0;
  v13 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"AddOverrides"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_addOverrides_replace_options_error___block_invoke;
  v19[3] = &unk_27972D318;
  v14 = v13;
  v20 = v14;
  v15 = overridesCopy;
  v21 = v15;
  selfCopy = self;
  v24 = &v33;
  replaceCopy = replace;
  v16 = optionsCopy;
  v23 = v16;
  v25 = &v27;
  [v14 performBlock:v19];
  v17 = *(v34 + 24);
  if (error && (v34[3] & 1) == 0)
  {
    *error = v28[5];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

uint64_t __92__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_addOverrides_replace_options_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allKeys];
  v4 = __descriptionsForRecordIDArray(v3);
  [v2 markWithFormat:@"Applying overrides for recordIDs: %@", v4];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 48);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) allKeys];
    v10 = __descriptionsForRecordIDArray(v9);
    *buf = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Applying overrides for recordIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([*(a1 + 48) isRunning])
  {
    v11 = *(a1 + 80);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(*(a1 + 72) + 8);
    obj = *(v16 + 40);
    v17 = [v12 __addOverrides:v14 replace:v11 options:v13 activity:v15 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v17;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  result = [*(a1 + 32) invalidate];
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_fetchOverridesForZoneName:(id)name options:(id)options error:(id *)error
{
  nameCopy = name;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__134914;
  v36 = __Block_byref_object_dispose__134915;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__134914;
  v30 = __Block_byref_object_dispose__134915;
  v31 = 0;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v13 = [v11 initWithName:label];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchOverridesForZoneName_options_error___block_invoke;
  v20[3] = &unk_27972D2F0;
  v20[4] = self;
  v24 = &v32;
  v14 = nameCopy;
  v21 = v14;
  v15 = optionsCopy;
  v22 = v15;
  v16 = v13;
  v23 = v16;
  v25 = &v26;
  [v16 performBlock:v20];
  v17 = v33[5];
  if (v17)
  {
    v18 = v17;
  }

  else if (error)
  {
    *error = v27[5];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

uint64_t __98__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchOverridesForZoneName_options_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 72) + 8);
    obj = *(v6 + 40);
    v7 = [v2 __fetchOverridesForZoneName:v3 options:v4 activity:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v11 = *(*(a1 + 72) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  return [*(a1 + 56) invalidate];
}

- (id)fetchOverridesForRecordIDs:(id)ds options:(id)options error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__134914;
  v43 = __Block_byref_object_dispose__134915;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__134914;
  v37 = __Block_byref_object_dispose__134915;
  v38 = 0;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v13 = [v11 initWithName:label];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __98__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchOverridesForRecordIDs_options_error___block_invoke;
  v26[3] = &unk_27972D2F0;
  v14 = v13;
  v27 = v14;
  v15 = dsCopy;
  v28 = v15;
  selfCopy = self;
  v31 = &v39;
  v16 = optionsCopy;
  v30 = v16;
  v32 = &v33;
  [v14 performBlock:v26];
  v17 = v40[5];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    if (error)
    {
      *error = v34[5];
    }

    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = v34[5];
      *buf = 138543618;
      v46 = v22;
      v47 = 2112;
      v48 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@No overrides fetched with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __98__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchOverridesForRecordIDs_options_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = __descriptionsForRecordIDSet(*(a1 + 40));
  [v2 markWithFormat:@"Fetching overrides for recordIDs: %@", v3];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 48);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = __descriptionsForRecordIDSet(*(a1 + 40));
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching overrides for recordIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 48) isRunning])
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(*(a1 + 72) + 8);
    obj = *(v13 + 40);
    v14 = [v9 __fetchOverridesForRecordIDs:v11 options:v10 activity:v12 error:&obj];
    objc_storeStrong((v13 + 40), obj);
    v15 = 64;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 48);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@No local zone, can't fetch overrides", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v15 = 72;
  }

  v20 = *(*(a1 + v15) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v14;

  result = [*(a1 + 32) invalidate];
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)removeAllLocalRulesWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__134914;
  v25 = __Block_byref_object_dispose__134915;
  v26 = 0;
  v8 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v10 = [v8 initWithName:label];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_removeAllLocalRulesWithOptions_error___block_invoke;
  v15[3] = &unk_27972D2C8;
  v11 = v10;
  v16 = v11;
  selfCopy = self;
  v19 = &v27;
  v12 = optionsCopy;
  v18 = v12;
  v20 = &v21;
  [v11 performBlock:v15];
  if (error)
  {
    *error = v22[5];
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

uint64_t __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_removeAllLocalRulesWithOptions_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Removing all local rules"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all local rules", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) isRunning])
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 64) + 8);
    obj = *(v9 + 40);
    v10 = [v6 __removeAllLocalRulesWithOptions:v7 activity:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v10;
    v11 = [MEMORY[0x277CBEB98] set];
    v12 = [*(a1 + 40) internalState];
    [v12 setLastSynchronizedRecordIDs:v11];

    [*(a1 + 40) __saveInternalStateWithActivity:*(a1 + 32)];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  result = [*(a1 + 32) invalidate];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)fetchAllDataForZoneName:(id)name options:(id)options error:(id *)error
{
  optionsCopy = options;
  nameCopy = name;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _fetchAllDataForZoneName:nameCopy options:optionsCopy error:error];

  return v11;
}

- (id)fetchAllDataWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _fetchAllDataForZoneName:0 options:optionsCopy error:error];

  return v8;
}

- (id)_fetchAllDataForZoneName:(id)name options:(id)options error:(id *)error
{
  nameCopy = name;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__134914;
  v37 = __Block_byref_object_dispose__134915;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__134914;
  v31 = __Block_byref_object_dispose__134915;
  v32 = 0;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v13 = [v11 initWithName:label];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchAllDataForZoneName_options_error___block_invoke;
  v20[3] = &unk_27972D2F0;
  v14 = v13;
  v21 = v14;
  v15 = nameCopy;
  v22 = v15;
  selfCopy = self;
  v25 = &v33;
  v16 = optionsCopy;
  v24 = v16;
  v26 = &v27;
  [v14 performBlock:v20];
  v17 = v34[5];
  if (v17)
  {
    v18 = v17;
  }

  else if (error)
  {
    *error = v28[5];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

uint64_t __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchAllDataForZoneName_options_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Fetching records with zone name '%@'", *(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching records with zone name '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 48) isRunning])
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(*(a1 + 72) + 8);
    obj = *(v11 + 40);
    v12 = [v7 __fetchAllDataForZoneName:v9 options:v8 activity:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = 64;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v13 = 72;
  }

  v14 = *(*(a1 + v13) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;

  result = [*(a1 + 32) invalidate];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)fetchAllDataForRecordIDs:(id)ds options:(id)options error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__134914;
  v43 = __Block_byref_object_dispose__134915;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__134914;
  v37 = __Block_byref_object_dispose__134915;
  v38 = 0;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v13 = [v11 initWithName:label];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchAllDataForRecordIDs_options_error___block_invoke;
  v26[3] = &unk_27972D2F0;
  v14 = v13;
  v27 = v14;
  v15 = dsCopy;
  v28 = v15;
  selfCopy = self;
  v31 = &v39;
  v16 = optionsCopy;
  v30 = v16;
  v32 = &v33;
  [v14 performBlock:v26];
  v17 = v40[5];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    if (error)
    {
      *error = v34[5];
    }

    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = v34[5];
      *buf = 138543618;
      v46 = v22;
      v47 = 2112;
      v48 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch paired metadata dictionary with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchAllDataForRecordIDs_options_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = __descriptionsForRecordIDSet(*(a1 + 40));
  [v2 markWithFormat:@"Fetching records for recordIDs: %@", v3];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 48);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = __descriptionsForRecordIDSet(*(a1 + 40));
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching records for recordIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 48) isRunning])
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(*(a1 + 72) + 8);
    obj = *(v13 + 40);
    v14 = [v9 __fetchAllDataForRecordIDs:v11 options:v10 activity:v12 error:&obj];
    objc_storeStrong((v13 + 40), obj);
    v15 = 64;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 48);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch paired metadata dictionary due to nil local zone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v15 = 72;
  }

  v20 = *(*(a1 + v15) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v14;

  result = [*(a1 + 32) invalidate];
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fetchCloudRecordsForZoneID:(id)d recordID:(id)iD options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  iDCopy = iD;
  dCopy = d;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  desiredKeys = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self desiredKeys];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _fetchCloudRecordsForZoneID:dCopy recordID:iDCopy options:optionsCopy desiredKeys:desiredKeys completion:completionCopy];
}

- (id)desiredKeys
{
  v5[12] = *MEMORY[0x277D85DE8];
  v5[0] = @"CD_productGroup";
  v5[1] = @"CD_productGroup_ckAsset";
  v5[2] = @"CD_productNumber";
  v5[3] = @"CD_productNumber_ckAsset";
  v5[4] = @"CD_networkDeclarations";
  v5[5] = @"CD_networkDeclarations_ckAsset";
  v5[6] = @"CD_networkDeclarationsSignature";
  v5[7] = @"CD_networkDeclarationsSignature_ckAsset";
  v5[8] = @"CD_pairedMetadata";
  v5[9] = @"CD_pairedMetadata_ckAsset";
  v5[10] = @"CD_pairedMetadataSignature";
  v5[11] = @"CD_pairedMetadataSignature_ckAsset";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:12];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)fetchCloudRecordIDsForZoneID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudRecordIDsForZoneID_options_completion___block_invoke;
  v13[3] = &unk_27972D2A0;
  v14 = completionCopy;
  v12 = completionCopy;
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _fetchCloudRecordsForZoneID:dCopy recordID:0 options:optionsCopy desiredKeys:MEMORY[0x277CBEBF8] completion:v13];
}

void __105__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudRecordIDsForZoneID_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) recordID];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = *(a1 + 32);
    v13 = [v5 copy];
    (*(v12 + 16))(v12, v13, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCloudRecordsForZoneID:(id)d recordID:(id)iD options:(id)options desiredKeys:(id)keys completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  keysCopy = keys;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v18 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v20 = [v18 initWithName:label];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke;
  v27[3] = &unk_279733820;
  v28 = v20;
  selfCopy = self;
  v30 = optionsCopy;
  v31 = dCopy;
  v32 = iDCopy;
  v33 = keysCopy;
  v34 = completionCopy;
  v21 = completionCopy;
  v22 = keysCopy;
  v23 = iDCopy;
  v24 = dCopy;
  v25 = optionsCopy;
  v26 = v20;
  [v26 performBlock:v27];
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [a1[4] markWithFormat:@"Scheduling cloud fetch"];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling cloud fetch", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = a1[4];
  v7 = a1[5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_212;
  v17[3] = &unk_27972D278;
  v18 = v6;
  v19 = a1[6];
  v20 = a1[7];
  v21 = a1[8];
  v22 = a1[9];
  v8 = [v7 __asyncFutureWithActivity:v18 ignoreErrors:0 block:v17];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_2;
  v13[3] = &unk_27972DE70;
  v9 = a1[4];
  v10 = a1[5];
  v14 = v9;
  v15 = v10;
  v16 = a1[10];
  v11 = [v8 addCompletionBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_212(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo alloc];
  v8 = a1[4];
  v9 = a1[5];
  v10 = [v6 cloudDatabase];
  v11 = [v6 useAnonymousRequests];
  v12 = a1[7];
  v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo *)v7 initWithActivity:v8 options:v9 promise:v5 database:v10 useAnonymousRequests:v11 zoneID:a1[6] recordID:v12 desiredKeys:a1[8]];

  [v6 __fetchCloudRecordsWithFetchInfo:v13];
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_3;
  v12[3] = &unk_279734668;
  v11 = *(a1 + 32);
  v7 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = v5;
  v8 = *(a1 + 48);
  v15 = v6;
  v16 = v8;
  v9 = v6;
  v10 = v5;
  [v7 performBlock:v12];
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_3(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_4;
  block[3] = &unk_279734668;
  v3 = a1[5];
  v4 = a1[6];
  v8 = a1[4];
  v12 = a1[8];
  v5 = a1[7];
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  dispatch_async(v2, block);
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_4(uint64_t a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_5;
  v9[3] = &unk_279734668;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = *(a1 + 48);
  v12 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v2 performBlock:v9];
}

uint64_t __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_5(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 markWithFormat:@"Cloud fetch completed successfully"];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 48);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud fetch completed successfully", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 64) + 16);
  }

  else
  {
    [v2 markWithFormat:@"Cloud fetch completed unsuccessfully: %@", *(a1 + 56)];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 48);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 56);
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cloud fetch completed unsuccessfully: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = *(a1 + 56);
    v9 = *(*(a1 + 64) + 16);
  }

  v9();
  result = [*(a1 + 40) invalidate];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fetchCloudChangesForRecordIDs:(id)ds options:(id)options ignoreLastSynchronizedRecords:(BOOL)records xpcActivity:(id)activity completion:(id)completion
{
  optionsCopy = options;
  activityCopy = activity;
  completionCopy = completion;
  dsCopy = ds;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17 = [dsCopy copy];
  v18 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v20 = [v18 initWithName:label];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke;
  v26[3] = &unk_2797325D0;
  v27 = v20;
  selfCopy = self;
  recordsCopy = records;
  v29 = v17;
  v30 = optionsCopy;
  v31 = activityCopy;
  v32 = completionCopy;
  v21 = completionCopy;
  v22 = activityCopy;
  v23 = optionsCopy;
  v24 = v17;
  v25 = v20;
  [v25 performBlock:v26];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Scheduling cloud sync"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling cloud sync", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_184;
  v17[3] = &unk_27972D228;
  v18 = v6;
  v19 = *(a1 + 48);
  v22 = *(a1 + 80);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v8 = [v7 __asyncFutureWithActivity:v18 ignoreErrors:0 block:v17];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_201;
  v13[3] = &unk_27972D250;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 72);
  v11 = [v8 addCompletionBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_184(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v48 = a3;
  [*(a1 + 32) markWithFormat:@"Beginning cloud sync"];
  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Beginning cloud sync", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if ([*(a1 + 40) count])
  {
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) markWithFormat:@"Ignoring last fetched accessories"];
      v10 = objc_autoreleasePoolPush();
      v11 = v7;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring last fetched accessories", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
LABEL_15:
      v27 = [v7 cloudDatabase];
      v28 = *MEMORY[0x277D17138];
      os_unfair_lock_lock_with_options();

      v29 = [v7 cloudDatabase];
      v30 = [v29 databaseStateForDatabaseScope:1];

      v47 = [v30 serverChangeToken];

      os_unfair_lock_unlock(&v27[v28]);
      v31 = [HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo alloc];
      v32 = *(a1 + 32);
      v34 = *(a1 + 48);
      v33 = *(a1 + 56);
      v35 = [v7 cloudDatabase];
      v36 = [v7 useAnonymousRequests];
      v37 = *(a1 + 40);
      v38 = [v7 internalState];
      v39 = [v38 lastSynchronizedRecordIDs];
      LOBYTE(v46) = v36;
      v40 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo *)v31 initWithActivity:v32 options:v34 databaseChangeToken:v47 promise:v48 xpcActivity:v33 database:v35 useAnonymousRequests:v46 recordIDs:v37 lastSynchronizedRecordIDs:v39];

      [v7 __fetchDatabaseChangesWithFetchInfo:v40];
      goto LABEL_16;
    }

    v18 = [*(a1 + 40) mutableCopy];
    v19 = [v7 internalState];
    v20 = [v19 lastSynchronizedRecordIDs];
    [v18 minusSet:v20];

    v21 = [v18 count];
    v22 = *(a1 + 32);
    if (v21)
    {
      [v22 markWithFormat:@"Set of interested accessories has grown since last fetch: %@", v18];
      v23 = objc_autoreleasePoolPush();
      v24 = v7;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v26;
        v51 = 2112;
        v52 = v18;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Set of interested accessories has grown since last fetch: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      goto LABEL_15;
    }

    [v22 markWithFormat:@"Set of interested accessories has not grown, skipping fetch"];
    v42 = objc_autoreleasePoolPush();
    v43 = v7;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Set of interested accessories has not grown, skipping fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
    [v48 finishWithNoResult];
  }

  else
  {
    [*(a1 + 32) markWithFormat:@"Not interested in any records, skipping fetch"];
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Not interested in any records, skipping fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [v48 finishWithNoResult];
  }

LABEL_16:

  v41 = *MEMORY[0x277D85DE8];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_2;
  v11[3] = &unk_279734668;
  v10 = *(a1 + 32);
  v7 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  [v7 performBlock:v11];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_2(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_3;
  block[3] = &unk_279734668;
  v3 = a1[5];
  v4 = a1[6];
  v8 = a1[4];
  v5 = a1[7];
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  v12 = a1[8];
  dispatch_async(v2, block);
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_3(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_4;
  v8[3] = &unk_279734668;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = *(a1 + 48);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v10 = v7;
  v9 = v6;
  v11 = *(a1 + 64);
  [v2 performBlock:v8];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = NAEmptyResult();
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;

  v6 = *(a1 + 40);
  if (v2)
  {
    [v6 markWithFormat:@"Cloud sync completed successfully: %@", v5];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud sync completed successfully: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [v6 markWithFormat:@"Cloud sync completed unsuccessfully: %@", *(a1 + 56)];
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 48);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 56);
      *buf = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cloud sync completed unsuccessfully: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = *(a1 + 56);
  }

  (*(*(a1 + 64) + 16))();
  [*(a1 + 40) invalidate];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)cloudFetchNeededForRecordIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self isRunning])
  {
    if (dsCopy)
    {
      internalState = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self internalState];
      lastSynchronizedRecordIDs = [internalState lastSynchronizedRecordIDs];
      v10 = [dsCopy isSubsetOfSet:lastSynchronizedRecordIDs] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NAFuture)shutdownFuture
{
  shutdownPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self shutdownPromise];
  future = [shutdownPromise future];

  return future;
}

- (NAFuture)startupFuture
{
  startupPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self startupPromise];
  future = [startupPromise future];

  return future;
}

- (id)shutdown
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__134914;
  v15 = __Block_byref_object_dispose__134915;
  v16 = 0;
  v3 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Shutdown"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_shutdown__block_invoke;
  v7[3] = &unk_279735BC0;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  v10 = &v11;
  [v4 performBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __65__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_shutdown__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Scheduling shutdown"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling shutdown", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_shutdown__block_invoke_179;
  v12[3] = &unk_27972D200;
  v13 = v6;
  v8 = [v7 __asyncFutureWithActivity:v13 ignoreErrors:1 block:v12];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __65__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_shutdown__block_invoke_179(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = a2;
  v6 = [v9 shutdownFuture];
  v7 = [v5 completionHandlerAdapter];

  v8 = [v6 addCompletionBlock:v7];
  [v9 __shutdownWithActivity:*(a1 + 32)];
}

- (id)flush
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__134914;
  v15 = __Block_byref_object_dispose__134915;
  v16 = 0;
  v3 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Flush"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_flush__block_invoke;
  v7[3] = &unk_279735BC0;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  v10 = &v11;
  [v4 performBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __62__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_flush__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Scheduling flush"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling flush", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_flush__block_invoke_168;
  v12[3] = &unk_27972D200;
  v13 = v6;
  v8 = [v7 __asyncFutureWithActivity:v13 ignoreErrors:1 block:v12];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __62__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_flush__block_invoke_168(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) markWithFormat:@"Flushed"];
  v7 = objc_autoreleasePoolPush();
  v8 = v5;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Flushed", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [v6 finishWithNoResult];
  [*(a1 + 32) invalidate];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)triggerOutputForOutputRow:(unint64_t)row options:(id)options
{
  v4 = MEMORY[0x277D2C900];
  v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{58, options}];
  v6 = [v4 futureWithError:v5];

  return v6;
}

- (id)destroy
{
  v2 = MEMORY[0x277D2C900];
  v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
  v4 = [v2 futureWithError:v3];

  return v4;
}

- (void)startUpWithLocalZone:(id)zone
{
  zoneCopy = zone;
  v5 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Startup"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke;
  v8[3] = &unk_279734960;
  v9 = v5;
  selfCopy = self;
  v11 = zoneCopy;
  v6 = zoneCopy;
  v7 = v5;
  [v7 performBlock:v8];
}

void __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Scheduling startup"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling startup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke_161;
  block[3] = &unk_279734960;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  dispatch_async(v6, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke_161(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke_2;
  v4[3] = &unk_279734960;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 32);
  [v2 performBlock:v4];
}

- (id)__asyncFutureWithActivity:(id)activity ignoreErrors:(BOOL)errors block:(id)block
{
  errorsCopy = errors;
  activityCopy = activity;
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__134914;
  v27 = __Block_byref_object_dispose__134915;
  v28 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke;
  v19[3] = &unk_2797332C0;
  v22 = &v23;
  v19[4] = self;
  v10 = activityCopy;
  v20 = v10;
  v11 = blockCopy;
  v21 = v11;
  [v10 performBlock:v19];
  if (errorsCopy)
  {
    v12 = v24[5];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_150;
    v17[3] = &unk_2797300A8;
    v18 = v10;
    v13 = [v12 recover:v17];
    v14 = v24[5];
    v24[5] = v13;
  }

  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 future];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_2;
  block[3] = &unk_27972D1D8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v15 = v2;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v16 = v9;
  v17 = v10;
  v11 = v2;
  dispatch_async(v6, block);
}

id __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_2_151;
  v8[3] = &unk_279735D00;
  v9 = v3;
  v5 = v3;
  [v4 performBlock:v8];
  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v6;
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_2_151(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_class();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring error from promise: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_3;
  v6[3] = &unk_27972D1D8;
  v5 = *(a1 + 32);
  v2 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v9 = v3;
  v10 = v4;
  [v2 performBlock:v6];
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_3(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) lastAsyncFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_4;
  v7[3] = &unk_27972D1B0;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  objc_copyWeak(&v12, &location);
  v9 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v10 = v4;
  v11 = v5;
  v6 = [v2 flatMap:v7];
  [*(a1 + 32) setLastAsyncFuture:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_5;
  v10 = &unk_279733CA8;
  v11 = *(a1 + 40);
  objc_copyWeak(&v14, (a1 + 72));
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  dispatch_async(v4, &v7);

  v5 = [*(*(*(a1 + 64) + 8) + 40) recoverIgnoringError];

  objc_destroyWeak(&v14);

  return v5;
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_5(id *a1)
{
  v2 = a1[4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_6;
  v3[3] = &unk_279733CA8;
  objc_copyWeak(&v7, a1 + 7);
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  [v2 performBlock:v3];

  objc_destroyWeak(&v7);
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_6(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained isShuttingDown])
    {
      [*(a1 + 40) markWithFormat:@"Not running block because we're already shutting down"];
      v4 = objc_autoreleasePoolPush();
      v5 = v3;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v7;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Not running block because we're already shutting down", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = objc_autoreleasePoolPush();
      v9 = v5;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not running block because we're already shutting down", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [v12 finishWithError:v13];
    }

    v14 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v15 finishWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel)internalState
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self isRunning])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Should only get internal state while running", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [[HMDAssertionLogEvent alloc] initWithReason:@"Should only get internal state while running"];
    v12 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v12 submitLogEvent:v11];
  }

  internalState = self->_internalState;
  v5 = *MEMORY[0x277D85DE8];

  return internalState;
}

- (void)setLastAsyncFuture:(id)future
{
  futureCopy = future;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lastAsyncFuture = self->_lastAsyncFuture;
  self->_lastAsyncFuture = futureCopy;
}

- (NAFuture)lastAsyncFuture
{
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lastAsyncFuture = self->_lastAsyncFuture;

  return lastAsyncFuture;
}

- (BOOL)isShuttingDown
{
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_shuttingDown;
}

- (BOOL)isRunning
{
  selfCopy = self;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  LOBYTE(selfCopy) = localZone != 0;

  return selfCopy;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirror)initWithLocalDatabase:(id)database cloudDatabase:(id)cloudDatabase useAnonymousRequests:(BOOL)requests ownerQueue:(id)queue
{
  databaseCopy = database;
  cloudDatabaseCopy = cloudDatabase;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirror;
  v14 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_cloudDatabase, cloudDatabase);
    objc_storeStrong(&v15->_localDatabase, database);
    v15->_useAnonymousRequests = requests;
    objc_storeStrong(&v15->_workQueue, queue);
    v16 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:queueCopy];
    workQueueScheduler = v15->_workQueueScheduler;
    v15->_workQueueScheduler = v16;

    localZone = v15->_localZone;
    v15->_localZone = 0;

    v19 = +[HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID sharedInstance];
    zoneID = v15->_zoneID;
    v15->_zoneID = v19;

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    lastAsyncFuture = v15->_lastAsyncFuture;
    v15->_lastAsyncFuture = futureWithNoResult;

    v23 = objc_opt_new();
    startupPromise = v15->_startupPromise;
    v15->_startupPromise = v23;

    v25 = objc_opt_new();
    shutdownPromise = v15->_shutdownPromise;
    v15->_shutdownPromise = v25;

    v27 = v15;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_135043 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_135043, &__block_literal_global_135044);
  }

  v3 = logCategory__hmf_once_v5_135045;

  return v3;
}

uint64_t __68__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_135045;
  logCategory__hmf_once_v5_135045 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)__retryFetchDatabaseChangesWithFetchInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [infoCopy retryIntervalSeconds];
  v7 = v6;
  v8 = v6 > 0.0;
  activity = [infoCopy activity];
  if (v8)
  {
    v10 = "retry the fetch";
  }

  else
  {
    v10 = "fetch the next batch of changed zones";
  }

  [infoCopy retryIntervalSeconds];
  [activity markWithFormat:@"Will %s in %lu seconds", v10, v11];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    [infoCopy retryIntervalSeconds];
    *buf = 138543874;
    v27 = v15;
    v28 = 2080;
    v29 = v10;
    v30 = 2048;
    v31 = v16;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Will %s in %lu seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [infoCopy retryIntervalSeconds];
  v18 = dispatch_time(0, (v17 * 1000000000.0));
  [infoCopy setShouldRetry:0];
  [infoCopy setRetryCount:{objc_msgSend(infoCopy, "retryCount") + 1}];
  objc_initWeak(buf, selfCopy);
  workQueue2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____retryFetchDatabaseChangesWithFetchInfo___block_invoke;
  block[3] = &unk_27972F5B0;
  v23 = infoCopy;
  v20 = infoCopy;
  objc_copyWeak(&v24, buf);
  v25 = v7 > 0.0;
  dispatch_after(v18, workQueue2, block);

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
  v21 = *MEMORY[0x277D85DE8];
}

void __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____retryFetchDatabaseChangesWithFetchInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____retryFetchDatabaseChangesWithFetchInfo___block_invoke_2;
  v3[3] = &unk_27972F5B0;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 performBlock:v3];

  objc_destroyWeak(&v5);
}

void __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____retryFetchDatabaseChangesWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) activity];
    if (*(a1 + 48))
    {
      v4 = "Retrying";
    }

    else
    {
      v4 = "Fetching the next batch of changed zones";
    }

    v5 = [*(a1 + 32) databaseChangeToken];
    v6 = [v5 hmbDescription];
    [v3 markWithFormat:@"%s, token: %@", v4, v6];

    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      if (*(a1 + 48))
      {
        v11 = "Retrying";
      }

      else
      {
        v11 = "Fetching the next batch of changed zones";
      }

      v12 = [*(a1 + 32) databaseChangeToken];
      v13 = [v12 hmbDescription];
      *buf = 138543874;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@%s, token: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 __fetchDatabaseChangesWithFetchInfo:*(a1 + 32)];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [*(a1 + 32) finishWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)__canRecoverFromFetchDatabaseChangesError:(id)error fetchInfo:(id)info
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![errorCopy hmd_isCKError] || (objc_msgSend(errorCopy, "hmd_isNonRecoverableCKError") & 1) != 0)
  {
    goto LABEL_3;
  }

  if ([errorCopy code] == 21)
  {
    activity = [infoCopy activity];
    [activity markWithFormat:@"Change token has expired: %@", errorCopy];

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Change token has expired: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [infoCopy setDatabaseChangeToken:0];
    v9 = 1;
    [infoCopy setShouldRetry:1];
  }

  else
  {
    [errorCopy hmbCloudKitRetryDelay];
    [infoCopy setRetryIntervalSeconds:?];
    if (![infoCopy shouldRetry])
    {
LABEL_3:
      v9 = 0;
      goto LABEL_4;
    }

    activity2 = [infoCopy activity];
    [activity2 markWithFormat:@"Ignoring non-fatal error: %@", errorCopy];

    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v21;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Ignoring non-fatal error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v9 = 1;
  }

LABEL_4:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)__fetchDatabaseChangesCompleted:(id)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy && ![(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __canRecoverFromFetchDatabaseChangesError:errorCopy fetchInfo:completedCopy])
  {
    [completedCopy finishWithError:errorCopy];
  }

  else if ([completedCopy shouldRetry])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __retryFetchDatabaseChangesWithFetchInfo:completedCopy];
  }

  else if ([completedCopy zonesHaveChanged])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __fetchVerificationCertificatesWithFetchInfo:completedCopy];
  }

  else if ([completedCopy zonesWereDeleted])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeDeletedZonesWithFetchInfo:completedCopy];
  }

  else
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __updateChangeTokenWithFetchInfo:completedCopy];
  }
}

- (void)__fetchDatabaseChangesWithFetchInfo:(id)info
{
  v54 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  activity = [infoCopy activity];
  databaseChangeToken = [infoCopy databaseChangeToken];
  hmbDescription = [databaseChangeToken hmbDescription];
  [activity markWithFormat:@"Checking for database changes with change token: %@", hmbDescription];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    databaseChangeToken2 = [infoCopy databaseChangeToken];
    hmbDescription2 = [databaseChangeToken2 hmbDescription];
    *buf = 138543618;
    v51 = v12;
    v52 = 2112;
    v53 = hmbDescription2;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Checking for database changes with change token: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x277CBC388]);
  databaseChangeToken3 = [infoCopy databaseChangeToken];
  v17 = [v15 initWithPreviousServerChangeToken:databaseChangeToken3];

  [v17 setCallbackQueue:workQueue];
  operationGroup = [infoCopy operationGroup];
  [v17 setGroup:operationGroup];

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke;
  v46[3] = &unk_27972F510;
  v19 = infoCopy;
  v47 = v19;
  v20 = workQueue;
  v48 = v20;
  v49 = selfCopy;
  [v17 setRecordZoneWithIDChangedBlock:v46];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_14;
  aBlock[3] = &unk_27972F510;
  v21 = v19;
  v43 = v21;
  v22 = v20;
  v44 = v22;
  v45 = selfCopy;
  v23 = _Block_copy(aBlock);
  [v17 setRecordZoneWithIDWasDeletedBlock:v23];
  [v17 setRecordZoneWithIDWasPurgedBlock:v23];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_22;
  v38[3] = &unk_27972F538;
  v24 = v21;
  v39 = v24;
  v25 = v22;
  v40 = v25;
  v41 = selfCopy;
  [v17 setChangeTokenUpdatedBlock:v38];
  objc_initWeak(buf, selfCopy);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_28;
  v33[3] = &unk_27972F588;
  v26 = v24;
  v34 = v26;
  v27 = v25;
  v35 = v27;
  v36 = selfCopy;
  objc_copyWeak(&v37, buf);
  [v17 setFetchDatabaseChangesCompletionBlock:v33];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
  publicDatabase = [cloudDatabase publicDatabase];
  [publicDatabase addOperation:v17];

  operationStartTime = [v26 operationStartTime];
  LODWORD(cloudDatabase) = operationStartTime == 0;

  if (cloudDatabase)
  {
    v31 = [MEMORY[0x277CBEAA8] now];
    [v26 setOperationStartTime:v31];
  }

  objc_destroyWeak(&v37);

  objc_destroyWeak(buf);
  v32 = *MEMORY[0x277D85DE8];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2;
  v6[3] = &unk_279734870;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 performBlock:v6];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_15;
  v6[3] = &unk_279734870;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 performBlock:v6];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_23;
  v6[3] = &unk_279734870;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 performBlock:v6];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_28(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) activity];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_29;
  v13[3] = &unk_27972F560;
  v14 = *(a1 + 40);
  v10 = v8;
  v15 = v10;
  v16 = *(a1 + 32);
  v11 = v7;
  v20 = a3;
  v12 = *(a1 + 48);
  v17 = v11;
  v18 = v12;
  objc_copyWeak(&v19, (a1 + 56));
  [v9 performBlock:v13];

  objc_destroyWeak(&v19);
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_29(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) activity];
  v4 = [*(a1 + 56) hmbDescription];
  if (v2)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
    [v3 markWithFormat:@"Database changes operation completed unsuccessfully, token: %@, error: %@, moreComing: %@", v4, v5, v6];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 64);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 56) hmbDescription];
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
    *buf = 138544130;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    v14 = "%{public}@Database changes operation completed unsuccessfully, token: %@, error: %@, moreComing: %@";
    v15 = v9;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 42;
  }

  else
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
    [v3 markWithFormat:@"Database changes operation completed successfully, token: %@, moreComing: %@", v4, v18];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 64);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 56) hmbDescription];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
    *buf = 138543874;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v13;
    v14 = "%{public}@Database changes operation completed successfully, token: %@, moreComing: %@";
    v15 = v9;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 32;
  }

  _os_log_impl(&dword_2531F8000, v15, v16, v14, buf, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v20 = *(a1 + 56);
    if (!*(a1 + 40) || v20)
    {
      [*(a1 + 48) setDatabaseChangeToken:v20];
    }

    if (*(a1 + 80) == 1)
    {
      [*(a1 + 48) setShouldRetry:1];
    }

    [WeakRetained __fetchDatabaseChangesCompleted:*(a1 + 48) error:*(a1 + 40)];
  }

  else
  {
    v21 = [*(a1 + 48) activity];
    [v21 markWithFormat:@"Mirror has been deallocated"];

    v22 = objc_autoreleasePoolPush();
    v23 = objc_opt_class();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Mirror has been deallocated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = *(a1 + 40);
    if (!v26)
    {
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    }

    [*(a1 + 48) finishWithError:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_23(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = [*(a1 + 40) activity];
  v3 = [*(a1 + 48) hmbDescription];
  [v2 markWithFormat:@"Change token was updated: %@", v3];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 56);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 48) hmbDescription];
    *buf = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Change token was updated: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  result = [*(a1 + 40) setDatabaseChangeToken:*(a1 + 48)];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_15(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = [*(a1 + 40) zoneInfoMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];

  v4 = [*(a1 + 40) activity];
  v5 = [*(a1 + 48) hmbDescription];
  v6 = v5;
  if (v3)
  {
    [v4 markWithFormat:@"Zone was deleted: %@", v5];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 56);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 48) hmbDescription];
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Zone was deleted: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v3 markDeleted];
    [*(a1 + 40) markZonesDeleted];
  }

  else
  {
    [v4 markWithFormat:@"Ignoring deleted zone: %@", v5];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 56);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 48) hmbDescription];
      *buf = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring deleted zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = [*(a1 + 40) zoneInfoMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];

  if (v3 || ([*(a1 + 48) zoneName], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"certificates"), v4, v5))
  {
    v6 = [*(a1 + 40) activity];
    v7 = [*(a1 + 48) hmbDescription];
    [v6 markWithFormat:@"Zone has changes: %@", v7];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 56);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) hmbDescription];
      *buf = 138543618;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Zone has changes: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (v3)
    {
      [v3 markChanged];
    }

    else
    {
      v13 = [*(a1 + 40) activity];
      [v13 markWithFormat:@"Forcing all zones to drop change tokens and refresh"];

      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 56);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Forcing all zones to drop change tokens and refresh", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [*(a1 + 40) zoneInfoMap];
      [v18 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_149549];
    }

    [*(a1 + 40) markZonesChanged];
  }

  else
  {
    v20 = [*(a1 + 40) activity];
    v21 = [*(a1 + 48) hmbDescription];
    [v20 markWithFormat:@"Ignoring changes from zone: %@", v21];

    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 56);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [*(a1 + 48) hmbDescription];
      *buf = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring changes from zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)__fetchZoneChangesWithFetchInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = 0;
  v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __createCloudZonesForFetchInfo:infoCopy error:&v8];
  v7 = v8;
  if (v6)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __startUpCloudZonesWithFetchInfo:infoCopy];
  }

  else
  {
    [infoCopy finishWithError:v7];
  }
}

- (void)__performCloudZonePullsWithFetchInfo:(id)info
{
  v45 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activity = [infoCopy activity];
  [activity markWithFormat:@"Starting to pull from cloud zones"];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting to pull from cloud zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = MEMORY[0x277CBEB18];
  zoneInfoMap = [infoCopy zoneInfoMap];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(zoneInfoMap, "count")}];

  zoneInfoMap2 = [infoCopy zoneInfoMap];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke;
  v38[3] = &unk_279733A20;
  v38[4] = selfCopy;
  v15 = infoCopy;
  v39 = v15;
  v16 = v13;
  v40 = v16;
  [zoneInfoMap2 enumerateKeysAndObjectsUsingBlock:v38];

  v17 = [v16 count];
  activity2 = [v15 activity];
  v19 = activity2;
  if (v17)
  {
    [activity2 markWithFormat:@"Waiting for %lu cloud zones to pull", objc_msgSend(v16, "count")];

    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v16 count];
      *buf = 138543618;
      v42 = v23;
      v43 = 2048;
      v44 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Waiting for %lu cloud zones to pull", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277D2C900];
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v27 = [v25 combineAllFutures:v16 ignoringErrors:1 scheduler:globalAsyncScheduler];
  }

  else
  {
    [activity2 markWithFormat:@"Not waiting for any cloud zones to pull"];

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Not waiting for any cloud zones to pull", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v27 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_76;
  v35[3] = &unk_279733A70;
  v36 = v15;
  v37 = selfCopy;
  v32 = v15;
  v33 = [v27 addSuccessBlock:v35];

  v34 = *MEMORY[0x277D85DE8];
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke(id *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 cloudZone];
  if (v7)
  {
    v8 = [v6 mirroredLocalZone];

    if (v8)
    {
      v9 = [a1[4] cloudDatabase];
      v10 = [v7 cloudZoneID];
      v11 = [v9 serverChangeTokenForZoneWithID:v10];

      v12 = [v6 ignoreChangeToken];
      v13 = [a1[5] activity];
      v14 = [v5 hmbDescription];
      v15 = v14;
      if (v12)
      {
        [v13 markWithFormat:@"Fetching changes for zone %@ but ignoring change token", v14];

        v16 = objc_autoreleasePoolPush();
        v17 = a1[4];
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v5 hmbDescription];
          *buf = 138543618;
          v37 = v19;
          v38 = 2112;
          v39 = v20;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetching changes for zone %@ but ignoring change token", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v11 = 0;
      }

      else
      {
        [v13 markWithFormat:@"Fetching changes for zone %@", v14];

        v21 = objc_autoreleasePoolPush();
        v22 = a1[4];
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [v5 hmbDescription];
          *buf = 138543618;
          v37 = v24;
          v38 = 2112;
          v39 = v25;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Fetching changes for zone %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
      }

      v26 = [a1[5] options];
      v27 = [v7 fetchChangesWithToken:v11 options:v26];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_62;
      v32[3] = &unk_279733A98;
      v33 = a1[5];
      v28 = v5;
      v29 = a1[4];
      v34 = v28;
      v35 = v29;
      v30 = [v27 addCompletionBlock:v32];
      [a1[6] addObject:v27];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_2;
  v8[3] = &unk_279734960;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = v3;
  v6 = v3;
  [v4 performBlock:v8];
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_2(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_3;
  block[3] = &unk_279734960;
  v6 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  v7 = v3;
  v8 = v4;
  dispatch_async(v2, block);
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_4;
  v5[3] = &unk_279734960;
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 performBlock:v5];
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneInfoMap];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_5;
  v11[3] = &unk_279733AC0;
  v12 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v11];

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__182682;
  v9 = __Block_byref_object_dispose__182683;
  v10 = 0;
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_6;
  v4[3] = &unk_279733A48;
  v4[4] = &v5;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
  if (v6[5])
  {
    [*(a1 + 32) finishWithError:?];
  }

  else
  {
    [*(a1 + 48) __removeDeletedZonesWithFetchInfo:*(a1 + 32)];
  }

  _Block_object_dispose(&v5, 8);
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 cloudZone];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 modifiedRecordIDsFromLastPull];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [*(a1 + 32) modifiedRecordIDs];
      [v7 unionSet:v6];
    }

    v4 = v8;
  }
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
    *a4 = 1;
  }
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_62(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] activity];
  v8 = [a1[5] hmbDescription];
  v9 = v8;
  if (v6)
  {
    [v7 markWithFormat:@"Failed to fetch changes for zone %@: %@", v8, v6];

    v10 = objc_autoreleasePoolPush();
    v11 = a1[6];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] hmbDescription];
      *buf = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      v15 = "%{public}@Failed to fetch changes for zone %@: %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v16, v17, v15, buf, v18);
    }
  }

  else
  {
    [v7 markWithFormat:@"Successfully fetched changes for zone %@", v8];

    v10 = objc_autoreleasePoolPush();
    v11 = a1[6];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] hmbDescription];
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v15 = "%{public}@Successfully fetched changes for zone %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 22;
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v10);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)__startUpCloudZonesWithFetchInfo:(id)info
{
  v45 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activity = [infoCopy activity];
  [activity markWithFormat:@"Starting up cloud zones"];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting up cloud zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = MEMORY[0x277CBEB18];
  zoneInfoMap = [infoCopy zoneInfoMap];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(zoneInfoMap, "count")}];

  zoneInfoMap2 = [infoCopy zoneInfoMap];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke;
  v38[3] = &unk_279733A20;
  v38[4] = selfCopy;
  v15 = infoCopy;
  v39 = v15;
  v16 = v13;
  v40 = v16;
  [zoneInfoMap2 enumerateKeysAndObjectsUsingBlock:v38];

  v17 = [v16 count];
  activity2 = [v15 activity];
  v19 = activity2;
  if (v17)
  {
    [activity2 markWithFormat:@"Waiting for %lu cloud zones to start up", objc_msgSend(v16, "count")];

    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v16 count];
      *buf = 138543618;
      v42 = v23;
      v43 = 2048;
      v44 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Waiting for %lu cloud zones to start up", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277D2C900];
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v27 = [v25 combineAllFutures:v16 ignoringErrors:1 scheduler:globalAsyncScheduler];
  }

  else
  {
    [activity2 markWithFormat:@"Not waiting for any cloud zones to start up"];

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Not waiting for any cloud zones to start up", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v27 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_49;
  v35[3] = &unk_279733A70;
  v36 = v15;
  v37 = selfCopy;
  v32 = v15;
  v33 = [v27 addSuccessBlock:v35];

  v34 = *MEMORY[0x277D85DE8];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke(id *a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 cloudZone];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D170F8]);
    [v8 setCreateIfNeeded:1];
    v9 = [a1[4] localDatabase];
    v47 = 0;
    v10 = [v9 openZoneWithMirror:v7 configuration:v8 error:&v47];
    v11 = v47;

    if (v10)
    {
      [v10 startUp];
      v12 = [v7 startUp];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_32;
      v41[3] = &unk_2797339F8;
      v42 = a1[5];
      v13 = v5;
      v14 = a1[4];
      v43 = v13;
      v44 = v14;
      v45 = v6;
      v46 = v10;
      v15 = [v12 flatMap:v41];

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_37;
      v37[3] = &unk_279734D88;
      v38 = a1[5];
      v16 = v13;
      v17 = a1[4];
      v39 = v16;
      v40 = v17;
      v18 = [v15 addFailureBlock:v37];
      [a1[6] addObject:v15];

      v19 = v42;
    }

    else
    {
      v36 = v5;
      v20 = [a1[5] activity];
      v21 = [v7 cloudZoneID];
      [v21 zoneID];
      v23 = v22 = v11;
      v24 = [v23 hmbDescription];
      [v20 markWithFormat:@"Failed to create mirrored local zone for %@: %@", v24, v22];

      v25 = objc_autoreleasePoolPush();
      v26 = a1[4];
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v34 = [v7 cloudZoneID];
        v33 = [v34 zoneID];
        [v33 hmbDescription];
        v29 = v35 = v25;
        *buf = 138543874;
        v49 = v28;
        v50 = 2112;
        v51 = v29;
        v52 = 2112;
        v53 = v22;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create mirrored local zone for %@: %@", buf, 0x20u);

        v25 = v35;
      }

      objc_autoreleasePoolPop(v25);
      v30 = [v7 startUp];
      [v30 cancel];

      v31 = a1[6];
      v19 = [MEMORY[0x277D2C900] futureWithError:v22];
      [v31 addObject:v19];
      v11 = v22;
      v5 = v36;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_2;
  v8[3] = &unk_279734960;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = v3;
  v6 = v3;
  [v4 performBlock:v8];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_2(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_3;
  block[3] = &unk_279734960;
  v6 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  v7 = v3;
  v8 = v4;
  dispatch_async(v2, block);
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_4;
  v5[3] = &unk_279734960;
  v6 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 performBlock:v5];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_4(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__182682;
  v8 = __Block_byref_object_dispose__182683;
  v9 = 0;
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_5;
  v3[3] = &unk_279733A48;
  v3[4] = &v4;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
  if (v5[5])
  {
    [*(a1 + 40) finishWithError:?];
  }

  else
  {
    [*(a1 + 48) __performCloudZonePullsWithFetchInfo:*(a1 + 40)];
  }

  _Block_object_dispose(&v4, 8);
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
    *a4 = 1;
  }
}

id __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_32(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v5 = [*(a1 + 40) hmbDescription];
  [v4 markWithFormat:@"Zone %@ started up", v5];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 48);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 40) hmbDescription];
    *buf = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Zone %@ started up", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 56) setMirroredLocalZone:*(a1 + 64)];
  v11 = [MEMORY[0x277D2C900] futureWithNoResult];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_37(id *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] activity];
  v5 = [a1[5] hmbDescription];
  [v4 markWithFormat:@"Zone %@ failed to start up: %@", v5, v3];

  v6 = objc_autoreleasePoolPush();
  v7 = a1[6];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [a1[5] hmbDescription];
    *buf = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Zone %@ failed to start up: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)__createCloudZonesForFetchInfo:(id)info error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneInfoMap = [infoCopy zoneInfoMap];
  v9 = [zoneInfoMap count];

  if (v9)
  {
    activity = [infoCopy activity];
    [activity markWithFormat:@"Creating cloud zones"];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating cloud zones", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__182682;
    v32 = __Block_byref_object_dispose__182683;
    v33 = 0;
    cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
    v16 = *MEMORY[0x277D17138];
    os_unfair_lock_lock_with_options();

    cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
    v18 = [cloudDatabase2 databaseStateForDatabaseScope:1];

    zoneInfoMap2 = [infoCopy zoneInfoMap];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____createCloudZonesForFetchInfo_error___block_invoke;
    v24[3] = &unk_2797339D0;
    v25 = infoCopy;
    v26 = selfCopy;
    p_buf = &buf;
    v20 = v18;
    v27 = v20;
    [zoneInfoMap2 enumerateKeysAndObjectsUsingBlock:v24];

    os_unfair_lock_unlock(&cloudDatabase[v16]);
    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }

    v21 = *(*(&buf + 1) + 40) == 0;
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v21 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____createCloudZonesForFetchInfo_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v99 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([v8 zoneHasChanged])
  {
    v9 = [*(a1 + 40) __createCloudZoneIDForZoneID:v7];
    v10 = [*(a1 + 40) cloudDatabase];
    v11 = [v10 zoneStateByZoneID];
    v12 = [v11 objectForKeyedSubscript:v9];

    v13 = [*(a1 + 32) activity];
    v14 = [v7 hmbDescription];
    v15 = v14;
    if (v12)
    {
      v90 = v7;
      [v13 markWithFormat:@"Already have a model for zone %@", v14];

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v12;
        v20 = v8;
        v21 = v9;
        v23 = v22 = a4;
        v24 = [v90 hmbDescription];
        *buf = 138543618;
        v94 = v23;
        v95 = 2112;
        v96 = v24;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Already have a model for zone %@", buf, 0x16u);

        a4 = v22;
        v9 = v21;
        v8 = v20;
        v12 = v19;
      }

      objc_autoreleasePoolPop(v16);
      v25 = [v12 cloudZone];
      if (v25)
      {
        v26 = v25;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0;
        }

        v89 = v28;

        v29 = [*(a1 + 32) activity];
        v7 = v90;
        v30 = [v90 hmbDescription];
        v31 = v30;
        if (isKindOfClass)
        {
          [v29 markWithFormat:@"Already have an open HMDNetworkRouterFirewallRuleCloudZone for zone %@", v30];

          v32 = objc_autoreleasePoolPush();
          v33 = *(a1 + 40);
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = HMFGetLogIdentifier();
            v36 = [v90 hmbDescription];
            *buf = 138543618;
            v94 = v35;
            v95 = 2112;
            v96 = v36;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Already have an open HMDNetworkRouterFirewallRuleCloudZone for zone %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          [v8 setCloudZone:v26];
        }

        else
        {
          v88 = a4;
          [v29 markWithFormat:@"Another HMBCloudZone open for %@ that isn't one of ours: %@", v30, v26];

          v70 = objc_autoreleasePoolPush();
          v71 = *(a1 + 40);
          v72 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v73 = v87 = v70;
            v74 = [v90 hmbDescription];
            *buf = 138543874;
            v94 = v73;
            v95 = 2112;
            v96 = v74;
            v97 = 2112;
            v98 = v26;
            _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_ERROR, "%{public}@Another HMBCloudZone open for %@ that isn't one of ours: %@", buf, 0x20u);

            v70 = v87;
          }

          objc_autoreleasePoolPop(v70);
          v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          v76 = *(*(a1 + 56) + 8);
          v77 = *(v76 + 40);
          *(v76 + 40) = v75;

          *v88 = 1;
        }

        goto LABEL_29;
      }

      v7 = v90;
    }

    else
    {
      [v13 markWithFormat:@"Saving new cloud zone model for zone %@", v14];

      v44 = objc_autoreleasePoolPush();
      v45 = *(a1 + 40);
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        v48 = [v7 hmbDescription];
        *buf = 138543618;
        v94 = v47;
        v95 = 2112;
        v96 = v48;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Saving new cloud zone model for zone %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      v49 = objc_alloc(MEMORY[0x277D17078]);
      v50 = [v9 modelID];
      v51 = [*(a1 + 48) hmbModelID];
      v12 = [v49 initWithModelID:v50 parentModelID:v51];

      [v12 setZoneID:v9];
      [v12 setNeedsZoneCreation:MEMORY[0x277CBEC28]];
      v52 = [*(a1 + 40) cloudDatabase];
      v53 = [v52 stateZone];
      v92 = v12;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
      v55 = [v53 update:v54];
      v56 = *(*(a1 + 56) + 8);
      v57 = *(v56 + 40);
      *(v56 + 40) = v55;

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v58 = [*(a1 + 32) activity];
        v59 = [v7 hmbDescription];
        [v58 markWithFormat:@"Failed to save new cloud zone model for zone %@: %@", v59, *(*(*(a1 + 56) + 8) + 40)];

        v60 = objc_autoreleasePoolPush();
        v61 = *(a1 + 40);
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = HMFGetLogIdentifier();
          [v7 hmbDescription];
          v91 = v7;
          v64 = v12;
          v65 = v8;
          v66 = v9;
          v68 = v67 = a4;
          v69 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138543874;
          v94 = v63;
          v95 = 2112;
          v96 = v68;
          v97 = 2112;
          v98 = v69;
          _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to save new cloud zone model for zone %@: %@", buf, 0x20u);

          a4 = v67;
          v9 = v66;
          v8 = v65;
          v12 = v64;
          v7 = v91;
        }

        objc_autoreleasePoolPop(v60);
        *a4 = 1;
        goto LABEL_29;
      }

      v78 = [*(a1 + 40) cloudDatabase];
      v79 = [v78 zoneStateByZoneID];
      [v79 setObject:v12 forKeyedSubscript:v9];
    }

    v80 = [HMDNetworkRouterFirewallRuleCloudZone alloc];
    v81 = [*(a1 + 40) cloudDatabase];
    v82 = [*(a1 + 40) useAnonymousRequests];
    v83 = [v8 recordIDs];
    v84 = [*(a1 + 32) signatureVerificationPublicKeys];
    v85 = [(HMDNetworkRouterFirewallRuleCloudZone *)v80 initWithCloudDatabase:v81 state:v12 useAnonymousRequests:v82 watchedRecordIDs:v83 signatureVerificationPublicKeys:v84];

    [v12 setCloudZone:v85];
    [v8 setCloudZone:v85];

LABEL_29:
    goto LABEL_30;
  }

  v37 = [*(a1 + 32) activity];
  v38 = [v7 hmbDescription];
  [v37 markWithFormat:@"Ignoring zone %@ that has no changes", v38];

  v39 = objc_autoreleasePoolPush();
  v40 = *(a1 + 40);
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    v42 = HMFGetLogIdentifier();
    v43 = [v7 hmbDescription];
    *buf = 138543618;
    v94 = v42;
    v95 = 2112;
    v96 = v43;
    _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring zone %@ that has no changes", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v39);
LABEL_30:

  v86 = *MEMORY[0x277D85DE8];
}

@end