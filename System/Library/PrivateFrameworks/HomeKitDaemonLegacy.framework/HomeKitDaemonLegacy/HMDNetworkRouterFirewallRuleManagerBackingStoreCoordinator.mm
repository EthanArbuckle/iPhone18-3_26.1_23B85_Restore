@interface HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator
+ (BOOL)ckUseAnonymousAccount;
+ (NSString)ckContainerIdentifier;
+ (id)__createProcessingOptionsWithLabel:(id)a3 qualityOfService:(int64_t)a4;
+ (id)__jsonFromRecords:(id)a3 validateWithPublicKeys:(id)a4 rawOutput:(BOOL)a5 error:(id *)a6;
+ (id)__jsonStringFromDictionary:(id)a3 rawOutput:(BOOL)a4 error:(id *)a5;
+ (id)__jsonValueForCKRecordValue:(id)a3;
+ (id)__networkDeclarationDataDictionaryFromOverrideObjectDictionary:(id)a3;
+ (id)__networkDeclarationDataDictionaryFromRecordDictionary:(id)a3;
+ (id)__networkDeclarationsFromRecord:(id)a3 recordKey:(id)a4 identifier:(id)a5;
+ (id)__pairedMetadataDataDictionaryFromRecordDictionary:(id)a3;
+ (id)__pairedMetadataDictionaryFromOverrideObjectDictionary:(id)a3;
+ (id)__pairedMetadataFromRecord:(id)a3 recordKey:(id)a4 identifier:(id)a5;
+ (id)logCategory;
+ (int64_t)ckContainerEnvironment;
- (BOOL)isRunning;
- (BOOL)removeAllLocalRulesWithError:(id *)a3;
- (BOOL)removeAllOverridesWithError:(id *)a3;
- (BOOL)removeOverridesForProductGroup:(id)a3 productNumber:(id)a4 error:(id *)a5;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator)initWithFirewallRuleManager:(id)a3 notificationCenter:(id)a4 cloudFetchInterval:(double)a5 cloudFetchRetryInterval:(double)a6 ownerQueue:(id)a7;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator)initWithFirewallRuleManager:(id)a3 notificationCenter:(id)a4 cloudFetchScheduler:(id)a5 ownerQueue:(id)a6;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator)initWithFirewallRuleManager:(id)a3 notificationCenter:(id)a4 ownerQueue:(id)a5;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirror)mirror;
- (HMDNetworkRouterFirewallRuleManagerInternal)firewallRuleManager;
- (id)_fetchAllDataForProductGroup:(id)a3 productNumber:(id)a4 options:(id)a5 error:(id *)a6;
- (id)_fetchAllOverridesForProductGroup:(id)a3 productNumber:(id)a4 options:(id)a5 error:(id *)a6;
- (id)_fetchNetworkDeclarationsForRecordIDs:(id)a3 options:(id)a4 ignoreOverrides:(BOOL)a5 error:(id *)a6;
- (id)_fetchPairedMetadataForAccessories:(id)a3 options:(id)a4 ignoreOverrides:(BOOL)a5 error:(id *)a6;
- (id)pairedMetadataVersionConfigurationForAccessory:(id)a3 pairedMetadata:(id)a4;
- (id)ruleConfigurationForAccessory:(id)a3 declarations:(id)a4;
- (void)__cloudFetchSchedulerFired:(id)a3;
- (void)__maybeStartOrStopCloudFetchScheduler;
- (void)__startupWithMirror:(id)a3 completion:(id)a4;
- (void)__startupWithMirroredLocalZone:(id)a3 completion:(id)a4;
- (void)__stopCloudFetchScheduler;
- (void)_dumpCloudRecordsForProductGroup:(id)a3 productNumber:(id)a4 rawOutput:(BOOL)a5 verifySignatures:(BOOL)a6 completion:(id)a7;
- (void)_fetchCloudChangesIfNeededForRecordIDs:(id)a3 completion:(id)a4;
- (void)_listCloudRecordsForProductGroup:(id)a3 rawOutput:(BOOL)a4 completion:(id)a5;
- (void)cloudFetchSchedulerFired:(id)a3 completion:(id)a4;
- (void)fetchRulesForAccessories:(id)a3 qualityOfService:(int64_t)a4 ignoreOverrides:(BOOL)a5 completion:(id)a6;
- (void)firewallRuleManagerClientsDidChange;
- (void)setMirror:(id)a3;
- (void)shutdownWithCompletion:(id)a3;
- (void)startupWithLocalDatabase:(id)a3 completion:(id)a4;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator

- (HMDNetworkRouterFirewallRuleManagerInternal)firewallRuleManager
{
  WeakRetained = objc_loadWeakRetained(&self->_firewallRuleManager);

  return WeakRetained;
}

- (void)cloudFetchSchedulerFired:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_cloudFetchSchedulerFired_completion___block_invoke;
  v8[3] = &unk_279735738;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)__cloudFetchSchedulerFired:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Cloud fetch scheduler fired", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v7 isRunning])
  {
    v10 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v7 cloudFetchScheduler];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [v12 runningActivity];
    }

    else
    {
      v13 = 0;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___cloudFetchSchedulerFired___block_invoke;
    v15[3] = &unk_27972DF20;
    v15[4] = v7;
    v16 = v4;
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v7 _fetchCloudChangesWithQualityOfService:9 ignoreLastFetchedAccessories:1 forceChangeNotifications:0 requiredRecordIDs:0 schedulerXpcActivity:v13 completion:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __89__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___cloudFetchSchedulerFired___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched cloud changes with poll timer: %@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud changes with poll timer: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
  v13 = [*(a1 + 32) firewallRuleManager];
  [v13 didCompleteScheduledCloudFetch];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)__stopCloudFetchScheduler
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Unconditionally stopping cloud fetch scheduler", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v5 cloudFetchScheduler];
  [v8 stop];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)__maybeStartOrStopCloudFetchScheduler
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self isRunning])
  {
    *&v24 = 0;
    *(&v24 + 1) = &v24;
    v25 = 0x2020000000;
    v26 = 0;
    v4 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self firewallRuleManager];
    v5 = [v4 activeClients];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __99__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___maybeStartOrStopCloudFetchScheduler__block_invoke;
    v21[3] = &unk_27972BEB8;
    v21[4] = &v24;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

    v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self cloudFetchScheduler];
    v7 = v6;
    if (*(*(&v24 + 1) + 24) != 1)
    {
      goto LABEL_19;
    }

    if (![v6 isRunning])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Starting cloud fetch scheduler", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [v7 start];
      goto LABEL_15;
    }

    if ((*(*(&v24 + 1) + 24) & 1) == 0)
    {
LABEL_19:
      if ([v7 isRunning])
      {
        v8 = objc_autoreleasePoolPush();
        v9 = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          *buf = 138543362;
          v23 = v11;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Stopping cloud fetch scheduler", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        [v7 stop];
      }
    }

LABEL_15:

    _Block_object_dispose(&v24, 8);
    goto LABEL_16;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    LODWORD(v24) = 138543362;
    *(&v24 + 4) = v15;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Not starting cloud fetch scheduler because we should not be running", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __99__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___maybeStartOrStopCloudFetchScheduler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)removeOverridesForProductGroup:(id)a3 productNumber:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc];
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = @"00000000";
  }

  v13 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v11 initWithProductGroup:v9 productNumber:v12 firmwareVersion:0];

  v14 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v13 cloudKitZoneName];
  if (v8)
  {
    v8 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v13 cloudKitRecordName];
  }

  v15 = [objc_opt_class() __createProcessingOptionsWithLabel:@"RemoveOverrides"];
  v16 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  v17 = [v16 removeOverridesForZoneName:v14 recordName:v8 options:v15 error:a5];

  return v17;
}

- (BOOL)removeAllOverridesWithError:(id *)a3
{
  v5 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [objc_opt_class() __createProcessingOptionsWithLabel:@"RemoveAllOverrides"];
  v7 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  LOBYTE(a3) = [v7 removeAllOverridesWithOptions:v6 error:a3];

  return a3;
}

void __89__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_addOverrides_replace_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 firmwareVersion];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v13;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Firmware version specified on %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }

  else
  {
    v17 = [v7 cloudKitRecordID];
    v18 = [*(a1 + 40) objectForKeyedSubscript:v17];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v22;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Multiple declarations given for the same identifier %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      *a4 = 1;
    }

    else
    {
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v17];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_fetchAllOverridesForProductGroup:(id)a3 productNumber:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v13);

  if (v10 && v11)
  {
    v14 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:v10 productNumber:v11 firmwareVersion:0];
    v15 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
    v16 = MEMORY[0x277CBEB98];
    v17 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v14 cloudKitRecordID];
    v18 = [v16 setWithObject:v17];
    v19 = [v15 fetchOverridesForRecordIDs:v18 options:v12 error:a6];

LABEL_6:
    goto LABEL_7;
  }

  if (v10)
  {
    v14 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:v10 productNumber:@"00000000" firmwareVersion:0];
    v15 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
    v20 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v14 cloudKitZoneName];
    v19 = [v15 fetchOverridesForZoneName:v20 options:v12 error:a6];

    goto LABEL_6;
  }

  v14 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  v19 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v14 fetchAllOverridesWithOptions:v12 error:a6];
LABEL_7:

  return v19;
}

- (BOOL)removeAllLocalRulesWithError:(id *)a3
{
  v5 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [objc_opt_class() __createProcessingOptionsWithLabel:@"RemoveAllLocalRules"];
  v7 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  LOBYTE(a3) = [v7 removeAllLocalRulesWithOptions:v6 error:a3];

  return a3;
}

- (void)_dumpCloudRecordsForProductGroup:(id)a3 productNumber:(id)a4 rawOutput:(BOOL)a5 verifySignatures:(BOOL)a6 completion:(id)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc];
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = @"00000000";
  }

  v17 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v15 initWithProductGroup:v36 productNumber:v16 firmwareVersion:0];
  v18 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v17 cloudKitRecordID];
  v19 = [v18 zoneID];
  if (!v12)
  {

    v18 = 0;
  }

  v20 = [objc_opt_class() __createProcessingOptionsWithLabel:@"DumpCloudRecords"];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__119970;
  v48[4] = __Block_byref_object_dispose__119971;
  v49 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __147__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__dumpCloudRecordsForProductGroup_productNumber_rawOutput_verifySignatures_completion___block_invoke;
  aBlock[3] = &unk_27972BE40;
  aBlock[4] = self;
  v21 = v19;
  v42 = v21;
  v22 = v18;
  v43 = v22;
  v23 = v20;
  v44 = v23;
  v24 = v13;
  v45 = v24;
  v46 = v48;
  v47 = a5;
  v25 = _Block_copy(aBlock);
  v26 = v25;
  if (a6)
  {
    v27 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if (v29)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __147__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__dumpCloudRecordsForProductGroup_productNumber_rawOutput_verifySignatures_completion___block_invoke_201;
      v37[3] = &unk_27972BE68;
      v40 = v48;
      v37[4] = self;
      v38 = v24;
      v39 = v26;
      [v29 fetchVerificationCertificatesRecordWithOperationGroup:0 completion:v37];

      v30 = v38;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@No idea how to validate signatures on another mirror class", buf, 0xCu);
      }

      objc_autoreleasePoolPop(context);
      v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(v24 + 2))(v24, 0, v30);
    }
  }

  else
  {
    (*(v25 + 2))(v25);
  }

  _Block_object_dispose(v48, 8);
  v34 = *MEMORY[0x277D85DE8];
}

void __147__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__dumpCloudRecordsForProductGroup_productNumber_rawOutput_verifySignatures_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mirror];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __147__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__dumpCloudRecordsForProductGroup_productNumber_rawOutput_verifySignatures_completion___block_invoke_2;
  v7[3] = &unk_27972BE18;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  [v2 fetchCloudRecordsForZoneID:v3 recordID:v4 options:v5 completion:v7];
}

void __147__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__dumpCloudRecordsForProductGroup_productNumber_rawOutput_verifySignatures_completion___block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [HMDNetworkRouterFirewallRuleManagerBackingStoreMirror publicKeysFromCertificateRecord:v5];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 56) + 8) + 40);
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        v26 = [*(*(*(a1 + 56) + 8) + 40) count];
        v16 = v11;
        if ([*(*(*(a1 + 56) + 8) + 40) count] == 1)
        {
          v17 = "";
        }

        else
        {
          v17 = "s";
        }

        v18 = [v5 recordID];
        v19 = [v18 hmbDescription];
        *buf = 138544130;
        v28 = v15;
        v29 = 2048;
        v30 = v26;
        v31 = 2080;
        v32 = v17;
        v11 = v16;
        v33 = 2112;
        v34 = v19;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Found %lu valid public key%s in record %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v11);
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v5 recordID];
        v22 = [v21 hmbDescription];
        *buf = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@No valid public keys found in record %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v23 = *(a1 + 40);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(v23 + 16))(v23, 0, v24);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __147__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__dumpCloudRecordsForProductGroup_productNumber_rawOutput_verifySignatures_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = *(a1 + 56);
    v12 = 0;
    v10 = [v7 __jsonFromRecords:v5 validateWithPublicKeys:v8 rawOutput:v9 error:&v12];
    v11 = v12;
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_listCloudRecordsForProductGroup:(id)a3 rawOutput:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v10);

  if (v8)
  {
    v11 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:v8 productNumber:@"00000000" firmwareVersion:0];
    v12 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v11 cloudKitRecordID];
    v13 = [v12 zoneID];
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_class() __createProcessingOptionsWithLabel:@"ListCloudRecords"];
  v15 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __116__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__listCloudRecordsForProductGroup_rawOutput_completion___block_invoke;
  v17[3] = &unk_27972BDF0;
  v19 = a4;
  v17[4] = self;
  v18 = v9;
  v16 = v9;
  [v15 fetchCloudRecordIDsForZoneID:v13 options:v14 completion:v17];
}

void __116__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__listCloudRecordsForProductGroup_rawOutput_completion___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v11 = [v10 zoneID];
          v12 = [v11 zoneName];

          v13 = [v10 recordName];
          if ((*(a1 + 48) & 1) == 0)
          {
            v14 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier identifierFromRecordID:v10];
            v15 = [v14 productGroup];

            v16 = [v14 productNumber];

            v13 = v16;
            v12 = v15;
          }

          v17 = [v4 objectForKeyedSubscript:v12];
          if (!v17)
          {
            v17 = [MEMORY[0x277CBEB18] array];
            [v4 setObject:v17 forKeyedSubscript:v12];
          }

          [v17 addObject:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v7);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = [v4 allValues];
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v31 + 1) + 8 * j) sortUsingSelector:{sel_compare_, v29}];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v20);
    }

    v23 = *(a1 + 32);
    v24 = objc_opt_class();
    v25 = *(a1 + 48);
    v30 = 0;
    v26 = [v24 __jsonStringFromDictionary:v4 rawOutput:v25 error:&v30];
    v27 = v30;
    (*(*(a1 + 40) + 16))();

    v3 = v29;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCloudChangesIfNeededForRecordIDs:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  v20 = 0;
  v10 = [v9 cloudFetchNeededForRecordIDs:v6 error:&v20];
  v11 = v20;

  if (v10)
  {
    if ([v10 BOOLValue])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v15;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Cloud fetch is needed for (some of) %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__fetchCloudChangesIfNeededForRecordIDs_completion___block_invoke;
      v18[3] = &unk_27972D2A0;
      v19 = v7;
      [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v13 _fetchCloudChangesWithQualityOfService:17 ignoreLastFetchedAccessories:0 forceChangeNotifications:0 requiredRecordIDs:v6 schedulerXpcActivity:0 completion:v18];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }

  else if (v11)
  {
    (*(v7 + 2))(v7, v11);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v7 + 2))(v7, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__fetchCloudChangesIfNeededForRecordIDs_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = v5;
  if (a2)
  {
    v7 = 0;
LABEL_4:
    (*(v6 + 16))(v6, v7);
    goto LABEL_5;
  }

  v7 = v5;
  if (v5)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  (*(v6 + 16))(v6, v8);

LABEL_5:
}

- (id)ruleConfigurationForAccessory:(id)a3 declarations:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v54 = self;
  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v8);

  v59 = [v6 firmwareVersion];
  if (!v59)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v50;
      v66 = 2112;
      v67 = v6;
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must have firmware version on %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v51 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must have firmware version on %@", v6];
    v52 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v52 submitLogEvent:v51];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v53 = v7;
  obj = [v7 ruleConfigurations];
  v58 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (!v58)
  {
    v56 = 0;
    v9 = 0;
    goto LABEL_36;
  }

  v9 = 0;
  v56 = 0;
  v57 = *v61;
  do
  {
    v10 = 0;
    do
    {
      if (*v61 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v60 + 1) + 8 * v10);
      v12 = [v11 accessoryIdentifier];
      v13 = [v12 productGroup];
      v14 = [v6 productGroup];
      if ([v13 isEqualToString:v14])
      {
        v15 = [v12 productNumber];
        v16 = [v6 productNumber];
        v17 = [v15 isEqualToString:v16];

        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v18 = objc_autoreleasePoolPush();
      v19 = v54;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v65 = v21;
        v66 = 2112;
        v67 = v12;
        v68 = 2112;
        v69 = v6;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Rule configuration contains identifier %@ that does not match requested identifier %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [[HMDAssertionLogEvent alloc] initWithReason:@"Rule configuration contains identifier %@ that does not match requested identifier %@", v12, v6];
      v23 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v23 submitLogEvent:v22];

LABEL_12:
      v24 = [v11 accessoryIdentifier];
      v25 = [v24 firmwareVersion];

      v26 = [v25 compare:v59];
      if (v26 == -1)
      {
        if (v9)
        {
          v33 = [v9 accessoryIdentifier];
          v34 = [v33 firmwareVersion];
          v35 = [v25 compare:v34];

          if (v35 != 1)
          {
            if (v35)
            {
              goto LABEL_29;
            }

            v30 = objc_autoreleasePoolPush();
            v31 = v54;
            v32 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_24;
            }

LABEL_23:
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v65 = v36;
            v66 = 2112;
            v67 = v12;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Multiple rule configurations with the same version for %@", buf, 0x16u);

LABEL_24:
            objc_autoreleasePoolPop(v30);
            v37 = [[HMDAssertionLogEvent alloc] initWithReason:@"Multiple rule configurations with the same version for %@", v12];
            v38 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v38 submitLogEvent:v37];

            goto LABEL_29;
          }

          v39 = v11;

          v9 = v39;
        }

        else
        {
          v9 = v11;
        }
      }

      else
      {
        if (!v26)
        {
          v42 = v11;

          v43 = v56;
          goto LABEL_40;
        }

        if (v56)
        {
          v27 = [v56 accessoryIdentifier];
          v28 = [v27 firmwareVersion];
          v29 = [v25 compare:v28];

          if (v29 != -1)
          {
            if (v29)
            {
              goto LABEL_29;
            }

            v30 = objc_autoreleasePoolPush();
            v31 = v54;
            v32 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          v40 = v11;

          v56 = v40;
        }

        else
        {
          v56 = v11;
        }
      }

LABEL_29:

      ++v10;
    }

    while (v58 != v10);
    v41 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
    v58 = v41;
  }

  while (v41);
LABEL_36:

  v43 = v56;
  if (v9)
  {
    v44 = v9;
  }

  else
  {
    v44 = v56;
  }

  v42 = v44;
LABEL_40:

  v45 = *MEMORY[0x277D85DE8];

  return v42;
}

- (void)fetchRulesForAccessories:(id)a3 qualityOfService:(int64_t)a4 ignoreOverrides:(BOOL)a5 completion:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v11);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = [v17 firmwareVersion];

        if (!v18)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543618;
            v50 = v31;
            v51 = 2112;
            v52 = v17;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Firmware version not specified on %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          v10[2](v10, 0, v27);
          v26 = v12;
          goto LABEL_20;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v19 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v12, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = v12;
  v21 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v40 + 1) + 8 * j) cloudKitRecordID];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v22);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __131__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_fetchRulesForAccessories_qualityOfService_ignoreOverrides_completion___block_invoke;
  v34[3] = &unk_279730F40;
  v37 = v10;
  v38 = a4;
  v34[4] = self;
  v35 = v19;
  v39 = a5;
  v36 = v20;
  v26 = v19;
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self _fetchCloudChangesIfNeededForRecordIDs:v26 completion:v34];

  v27 = v37;
LABEL_20:

  v32 = *MEMORY[0x277D85DE8];
}

void __131__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_fetchRulesForAccessories_qualityOfService_ignoreOverrides_completion___block_invoke(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() __createProcessingOptionsWithLabel:@"FetchRules" qualityOfService:*(a1 + 64)];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 72);
    v70 = 0;
    v9 = [v6 _fetchNetworkDeclarationsForRecordIDs:v7 options:v5 ignoreOverrides:v8 error:&v70];
    v10 = v70;
    if (v9)
    {
      v58 = a1;
      if ([v9 count])
      {
        v53 = v10;
        v55 = v5;
        v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v54 = v9;
        obj = v9;
        v12 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v67;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v67 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v66 + 1) + 8 * i);
              v17 = [v16 baseAccessoryIdentifier];
              v18 = [v11 objectForKeyedSubscript:v17];

              if (v18)
              {
                v19 = objc_autoreleasePoolPush();
                v20 = *(v58 + 32);
                v21 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v22 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v72 = v22;
                  v73 = 2112;
                  v74 = v17;
                  _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@More than one rule configuration for %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v19);
              }

              [v11 setObject:v16 forKeyedSubscript:v17];
            }

            v13 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
          }

          while (v13);
        }

        v23 = v58;
        v56 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(v58 + 48), "count")}];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v57 = *(v58 + 48);
        obja = [v57 countByEnumeratingWithState:&v62 objects:v77 count:16];
        if (obja)
        {
          v59 = *v63;
          do
          {
            for (j = 0; j != obja; j = j + 1)
            {
              if (*v63 != v59)
              {
                objc_enumerationMutation(v57);
              }

              v25 = *(*(&v62 + 1) + 8 * j);
              v26 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc];
              v27 = [v25 productGroup];
              v28 = [v25 productNumber];
              v29 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v26 initWithProductGroup:v27 productNumber:v28 firmwareVersion:0];

              v30 = [v11 objectForKeyedSubscript:v29];
              if (v30)
              {
                v31 = [*(v23 + 32) ruleConfigurationForAccessory:v25 declarations:v30];
                v32 = objc_autoreleasePoolPush();
                v33 = *(v23 + 32);
                v34 = HMFGetOSLogHandle();
                v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
                if (v31)
                {
                  if (v35)
                  {
                    v36 = HMFGetLogIdentifier();
                    *buf = 138543874;
                    v72 = v36;
                    v73 = 2112;
                    v74 = v25;
                    v75 = 2112;
                    v76 = v31;
                    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Found rule configuration for %@: %@", buf, 0x20u);

                    v23 = v58;
                  }

                  objc_autoreleasePoolPop(v32);
                  [v56 addObject:v31];
                }

                else
                {
                  if (v35)
                  {
                    v41 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v72 = v41;
                    v73 = 2112;
                    v74 = v25;
                    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@No declaration for %@", buf, 0x16u);

                    v23 = v58;
                  }

                  objc_autoreleasePoolPop(v32);
                }
              }

              else
              {
                v37 = objc_autoreleasePoolPush();
                v38 = *(v23 + 32);
                v39 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  v40 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v72 = v40;
                  v73 = 2112;
                  v74 = v25;
                  _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEBUG, "%{public}@No declarations for %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v37);
              }
            }

            obja = [v57 countByEnumeratingWithState:&v62 objects:v77 count:16];
          }

          while (obja);
        }

        v42 = *(v23 + 56);
        v43 = [v56 copy];
        (*(v42 + 16))(v42, v43, 0);

        v5 = v55;
        v3 = 0;
        v10 = v53;
        v9 = v54;
      }

      else
      {
        v44 = v9;
        v45 = objc_autoreleasePoolPush();
        v46 = *(v58 + 32);
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = HMFGetLogIdentifier();
          v49 = *(v58 + 48);
          *buf = 138543618;
          v72 = v48;
          v73 = 2112;
          v74 = v49;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_DEBUG, "%{public}@No declarations for %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
        v50 = *(v58 + 56);
        v51 = [MEMORY[0x277CBEB98] set];
        (*(v50 + 16))(v50, v51, 0);

        v9 = v44;
      }
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (id)_fetchPairedMetadataForAccessories:(id)a3 options:(id)a4 ignoreOverrides:(BOOL)a5 error:(id *)a6
{
  v100 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v10, "count")}];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v88 objects:v99 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v89;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v89 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [*(*(&v88 + 1) + 8 * i) cloudKitRecordID];
        [v13 addObject:v18];
      }

      v15 = [obj countByEnumeratingWithState:&v88 objects:v99 count:16];
    }

    while (v15);
  }

  v19 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  v87 = 0;
  v73 = [v19 fetchAllDataForRecordIDs:v13 options:v11 error:&v87];
  v20 = v87;

  if (v20)
  {
    if (a6)
    {
      v21 = v20;
      *a6 = v20;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v25;
      v94 = 2112;
      v95 = v20;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Fetch paired metadata for record failed with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = 0;
    goto LABEL_60;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v93 = v30;
    v94 = 2112;
    v95 = v73;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Fetched paired metadata dictionary %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  if (a5)
  {
    v76 = v28;
    v71 = v11;
    v78 = MEMORY[0x277CBEC10];
LABEL_27:
    v75 = [MEMORY[0x277CBEB58] setWithCapacity:{-[__CFString count](v73, "count")}];
    v72 = [MEMORY[0x277CBEB58] set];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v74 = v13;
    v79 = [v74 countByEnumeratingWithState:&v82 objects:v98 count:16];
    if (!v79)
    {
      goto LABEL_52;
    }

    v77 = *v83;
    while (1)
    {
      v42 = 0;
      do
      {
        if (*v83 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v43 = *(*(&v82 + 1) + 8 * v42);
        v44 = [(__CFString *)v78 objectForKeyedSubscript:v43];
        v45 = v44;
        if (v44 || (-[__CFString objectForKeyedSubscript:](v73, "objectForKeyedSubscript:", v43), v46 = objc_claimAutoreleasedReturnValue(), [v46 objectForKeyedSubscript:@"pairedMetadata"], v45 = objc_claimAutoreleasedReturnValue(), v46, v45))
        {
          v47 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier identifierFromRecordID:v43];
          v48 = [[HMDCloudPairedMetadata alloc] initWithBaseAccessoryIdentifier:v47 data:v45 allowUnzippedData:v44 != 0];
          v49 = objc_autoreleasePoolPush();
          v50 = v76;
          v51 = HMFGetOSLogHandle();
          v52 = v51;
          if (v48)
          {
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v53 = HMFGetLogIdentifier();
              v54 = v53;
              *buf = 138543874;
              v55 = @"Cloud";
              if (v44)
              {
                v55 = @"Override";
              }

              v93 = v53;
              v94 = 2112;
              v95 = v55;
              v96 = 2112;
              v97 = v47;
              _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@%@ data for %@ parsed successfully", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v49);
            v56 = v75;
            v57 = v48;
            goto LABEL_44;
          }

          v58 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
          if (v44)
          {
            if (v58)
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543618;
              v93 = v59;
              v94 = 2112;
              v95 = v47;
              _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Override data for %@ failed to parse successfully, removing", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v49);
            v56 = v72;
            v57 = v43;
LABEL_44:
            [v56 addObject:v57];
          }

          else
          {
            if (v58)
            {
              v60 = HMFGetLogIdentifier();
              *buf = 138543618;
              v93 = v60;
              v94 = 2112;
              v95 = v47;
              _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Cloud data for %@ failed to parse successfully", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v49);
          }
        }

        ++v42;
      }

      while (v79 != v42);
      v61 = [v74 countByEnumeratingWithState:&v82 objects:v98 count:16];
      v79 = v61;
      if (!v61)
      {
LABEL_52:

        v11 = v71;
        if ([v72 count])
        {
          v62 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v76 mirror];
          v81 = 0;
          v63 = [v62 removeOverridesForRecordIDs:v72 options:v71 error:&v81];
          v64 = v81;

          if ((v63 & 1) == 0)
          {
            v65 = objc_autoreleasePoolPush();
            v66 = v76;
            v67 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              v68 = HMFGetLogIdentifier();
              *buf = 138543618;
              v93 = v68;
              v94 = 2112;
              v95 = v64;
              _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove invalid override data: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v65);
          }
        }

        v26 = [v75 copy];

        v20 = 0;
        v32 = v78;
        goto LABEL_59;
      }
    }
  }

  v31 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v28 mirror];
  v86 = 0;
  v32 = [v31 fetchOverridesForRecordIDs:v13 options:v11 error:&v86];
  v20 = v86;

  if (!v20)
  {
    v78 = [objc_opt_class() __pairedMetadataDictionaryFromOverrideObjectDictionary:v32];
    v38 = objc_autoreleasePoolPush();
    v39 = v28;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v41;
      v94 = 2112;
      v95 = v78;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Fetched overrides dictionary %@", buf, 0x16u);
    }

    v76 = v28;
    v71 = v11;

    objc_autoreleasePoolPop(v38);
    goto LABEL_27;
  }

  if (a6)
  {
    v33 = v20;
    *a6 = v20;
  }

  v34 = objc_autoreleasePoolPush();
  v35 = v28;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543618;
    v93 = v37;
    v94 = 2112;
    v95 = v20;
    _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Fetch overrides for paired metadata failed with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v34);
  v26 = 0;
LABEL_59:

LABEL_60:
  v69 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)pairedMetadataVersionConfigurationForAccessory:(id)a3 pairedMetadata:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v59 = self;
  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v8);

  v64 = [v6 firmwareVersion];
  if (!v64)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = self;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543618;
      v70 = v55;
      v71 = 2112;
      v72 = v6;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must have firmware version on %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v52);
    v56 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must have firmware version on %@", v6];
    v57 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v57 submitLogEvent:v56];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v58 = v7;
  obj = [v7 versionConfigurations];
  v63 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (!v63)
  {
    v61 = 0;
    v9 = 0;
    goto LABEL_38;
  }

  v9 = 0;
  v61 = 0;
  v62 = *v66;
  do
  {
    v10 = 0;
    do
    {
      if (*v66 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v65 + 1) + 8 * v10);
      v12 = [v11 accessoryIdentifier];
      v13 = [v12 productGroup];
      v14 = [v6 productGroup];
      if ([v13 isEqualToString:v14])
      {
        v15 = [v12 productNumber];
        v16 = [v6 productNumber];
        v17 = [v15 isEqualToString:v16];

        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v18 = objc_autoreleasePoolPush();
      v19 = v59;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v70 = v21;
        v71 = 2112;
        v72 = v12;
        v73 = 2112;
        v74 = v6;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Version configuration contains identifier %@ that does not match requested identifier %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [[HMDAssertionLogEvent alloc] initWithReason:@"Version configuration contains identifier %@ that does not match requested identifier %@", v12, v6];
      v23 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v23 submitLogEvent:v22];

LABEL_12:
      v24 = [v11 accessoryIdentifier];
      v25 = [v24 firmwareVersion];

      v26 = [v25 compare:v64];
      if (v26 == -1)
      {
        if (v9)
        {
          v35 = [v9 accessoryIdentifier];
          v36 = [v35 firmwareVersion];
          v37 = [v25 compare:v36];

          if (v37 != 1)
          {
            if (v37)
            {
              goto LABEL_31;
            }

            v38 = objc_autoreleasePoolPush();
            v39 = v59;
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              v41 = HMFGetLogIdentifier();
              *buf = 138543618;
              v70 = v41;
              v71 = 2112;
              v72 = v12;
              _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Multiple rule configurations with the same version for %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v38);
            v34 = [[HMDAssertionLogEvent alloc] initWithReason:@"Multiple rule configurations with the same version for %@", v12];
            goto LABEL_26;
          }

          v44 = v11;

          v9 = v44;
        }

        else
        {
          v9 = v11;
        }
      }

      else
      {
        if (!v26)
        {
          v47 = v11;

          v48 = v61;
          goto LABEL_42;
        }

        if (v61)
        {
          v27 = [v61 accessoryIdentifier];
          v28 = [v27 firmwareVersion];
          v29 = [v25 compare:v28];

          if (v29 != -1)
          {
            if (v29)
            {
              goto LABEL_31;
            }

            v30 = objc_autoreleasePoolPush();
            v31 = v59;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543618;
              v70 = v33;
              v71 = 2112;
              v72 = v12;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Multiple version configurations with the same version for %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v30);
            v34 = [[HMDAssertionLogEvent alloc] initWithReason:@"Multiple version configurations with the same version for %@", v12];
LABEL_26:
            v42 = v34;
            v43 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v43 submitLogEvent:v42];

            goto LABEL_31;
          }

          v45 = v11;

          v61 = v45;
        }

        else
        {
          v61 = v11;
        }
      }

LABEL_31:

      ++v10;
    }

    while (v63 != v10);
    v46 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    v63 = v46;
  }

  while (v46);
LABEL_38:

  v48 = v61;
  if (v9)
  {
    v49 = v9;
  }

  else
  {
    v49 = v61;
  }

  v47 = v49;
LABEL_42:

  v50 = *MEMORY[0x277D85DE8];

  return v47;
}

- (id)_fetchNetworkDeclarationsForRecordIDs:(id)a3 options:(id)a4 ignoreOverrides:(BOOL)a5 error:(id *)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  v67 = 0;
  v55 = [v13 fetchAllDataForRecordIDs:v10 options:v11 error:&v67];
  v14 = v67;

  if (v14)
  {
    if (a6)
    {
      v15 = v14;
      v16 = 0;
      *a6 = v14;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_44;
  }

  if (a5)
  {
    v58 = self;
    v51 = v11;
    v17 = MEMORY[0x277CBEC10];
  }

  else
  {
    v18 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
    v66 = 0;
    v17 = [v18 fetchOverridesForRecordIDs:v10 options:v11 error:&v66];
    v14 = v66;

    if (v14)
    {
      if (a6)
      {
        v19 = v14;
        v16 = 0;
        *a6 = v14;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_43;
    }

    v51 = v11;
    v58 = self;
    v20 = [objc_opt_class() __networkDeclarationDataDictionaryFromOverrideObjectDictionary:v17];

    v17 = v20;
  }

  v57 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v55, "count", v51)}];
  v54 = [MEMORY[0x277CBEB58] set];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v53 = v10;
  obj = v10;
  v60 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (!v60)
  {
    goto LABEL_36;
  }

  v59 = *v63;
  do
  {
    v21 = 0;
    do
    {
      if (*v63 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v62 + 1) + 8 * v21);
      v23 = [v17 objectForKeyedSubscript:v22];
      v24 = v23;
      if (v23 || ([v55 objectForKeyedSubscript:v22], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", @"networkDeclarations"), v24 = objc_claimAutoreleasedReturnValue(), v25, v24))
      {
        v26 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier identifierFromRecordID:v22];
        v27 = [[HMDNetworkRouterFirewallRuleCloudNetworkDeclarations alloc] initWithBaseAccessoryIdentifier:v26 data:v24 allowUnzippedData:v23 != 0];
        v28 = objc_autoreleasePoolPush();
        v29 = v58;
        v30 = HMFGetOSLogHandle();
        v31 = v30;
        if (v27)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v32 = HMFGetLogIdentifier();
            v33 = v32;
            *buf = 138543874;
            v34 = @"Cloud";
            if (v23)
            {
              v34 = @"Override";
            }

            v69 = v32;
            v70 = 2112;
            v71 = v34;
            v72 = 2112;
            v73 = v26;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@%@ data for %@ parsed successfully", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v28);
          v35 = v57;
          v36 = v27;
          goto LABEL_28;
        }

        v37 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
        if (v23)
        {
          if (v37)
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543618;
            v69 = v38;
            v70 = 2112;
            v71 = v26;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Override data for %@ failed to parse successfully, removing", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v35 = v54;
          v36 = v22;
LABEL_28:
          [v35 addObject:v36];
        }

        else
        {
          if (v37)
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v69 = v39;
            v70 = 2112;
            v71 = v26;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cloud data for %@ failed to parse successfully", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      ++v21;
    }

    while (v60 != v21);
    v40 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    v60 = v40;
  }

  while (v40);
LABEL_36:

  v41 = v54;
  v11 = v52;
  v10 = v53;
  if ([v54 count])
  {
    v42 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)v58 mirror];
    v61 = 0;
    v43 = [v42 removeOverridesForRecordIDs:v54 options:v52 error:&v61];
    v44 = v61;

    if ((v43 & 1) == 0)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = v58;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v48;
        v70 = 2112;
        v71 = v44;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove invalid override data: %@", buf, 0x16u);

        v41 = v54;
      }

      objc_autoreleasePoolPop(v45);
    }
  }

  v16 = [v57 copy];

  v14 = 0;
LABEL_43:

LABEL_44:
  v49 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_fetchAllDataForProductGroup:(id)a3 productNumber:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v13);

  if (v10 && v11)
  {
    v14 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:v10 productNumber:v11 firmwareVersion:0];
    v15 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
    v16 = MEMORY[0x277CBEB98];
    v17 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v14 cloudKitRecordID];
    v18 = [v16 setWithObject:v17];
    v19 = [v15 fetchAllDataForRecordIDs:v18 options:v12 error:a6];

LABEL_6:
    goto LABEL_7;
  }

  if (v10)
  {
    v14 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:v10 productNumber:@"00000000" firmwareVersion:0];
    v15 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
    v20 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v14 cloudKitZoneName];
    v19 = [v15 fetchAllDataForZoneName:v20 options:v12 error:a6];

    goto LABEL_6;
  }

  v14 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
  v19 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v14 fetchAllDataWithOptions:v12 error:a6];
LABEL_7:

  return v19;
}

void __205__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__fetchCloudChangesWithQualityOfService_ignoreLastFetchedAccessories_forceChangeNotifications_requiredRecordIDs_schedulerXpcActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 watchedAccessoryIdentifiersForFirewallRuleManager:*(a1 + 32)];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __205__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__fetchCloudChangesWithQualityOfService_ignoreLastFetchedAccessories_forceChangeNotifications_requiredRecordIDs_schedulerXpcActivity_completion___block_invoke_2;
    v5[3] = &unk_27972BD28;
    v6 = *(a1 + 40);
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v5];
  }
}

void __205__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__fetchCloudChangesWithQualityOfService_ignoreLastFetchedAccessories_forceChangeNotifications_requiredRecordIDs_schedulerXpcActivity_completion___block_invoke_152(uint64_t a1, char a2, void *a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    if ([v7 count])
    {
      v9 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v7, "count")}];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __205__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__fetchCloudChangesWithQualityOfService_ignoreLastFetchedAccessories_forceChangeNotifications_requiredRecordIDs_schedulerXpcActivity_completion___block_invoke_2_153;
      v23 = &unk_27972BD78;
      v24 = *(a1 + 32);
      v25 = v9;
      v10 = v9;
      [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:&v20];
      v11 = [v10 copy];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB98] set];
    }

    v12 = [*(a1 + 40) firewallRuleManager];
    if ((*(a1 + 64) & 1) != 0 || [v11 count])
    {
      v28 = @"HMDNotificationNetworkRouterFirewallRulesUpdatedAccessoriesKey";
      v29[0] = v11;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v14 = [*(a1 + 40) notificationCenter];
      [v14 postNotificationName:@"HMDNotificationNetworkRouterFirewallRulesUpdated" object:v12 userInfo:v13];
    }

    if (!*(a1 + 48))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 40);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Resetting the cloud fetch scheduler after a successful force fetch", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 40) __stopCloudFetchScheduler];
      [*(a1 + 40) __maybeStartOrStopCloudFetchScheduler];
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __205__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__fetchCloudChangesWithQualityOfService_ignoreLastFetchedAccessories_forceChangeNotifications_requiredRecordIDs_schedulerXpcActivity_completion___block_invoke_2_153(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier identifierFromRecordID:v5];
    [v3 addObject:v4];
  }
}

void __205__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator__fetchCloudChangesWithQualityOfService_ignoreLastFetchedAccessories_forceChangeNotifications_requiredRecordIDs_schedulerXpcActivity_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cloudKitRecordID];
  [v2 addObject:v3];
}

void __165__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_fetchCloudChangesWithQualityOfService_ignoreLastFetchedAccessories_forceChangeNotifications_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)firewallRuleManagerClientsDidChange
{
  v3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self __maybeStartOrStopCloudFetchScheduler];
}

- (void)shutdownWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self isRunning])
  {
    v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self setMirror:0];
    v7 = [v6 shutdownFuture];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __85__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_shutdownWithCompletion___block_invoke_2;
    v18[3] = &unk_27972BD00;
    v18[4] = self;
    v19 = v4;
    v8 = [v7 addCompletionBlock:v18];

    v9 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirroredLocalZone];

    if (v9)
    {
      v10 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirroredLocalZone];
      [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self setMirroredLocalZone:0];
      v11 = [v10 shutdown];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __85__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_shutdownWithCompletion___block_invoke_4;
      v17[3] = &unk_279733BC0;
      v17[4] = self;
      v12 = [v11 addCompletionBlock:v17];
    }

    else
    {
      v14 = v6;
      if ([v14 conformsToProtocol:&unk_286700D38])
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v10 = v15;

      v16 = [v10 shutdown];
    }
  }

  else
  {
    v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_shutdownWithCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v21 = v4;
    dispatch_async(v13, block);

    v6 = v21;
  }
}

void __85__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_shutdownWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) ownerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_shutdownWithCompletion___block_invoke_3;
  v8[3] = &unk_279735738;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __85__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_shutdownWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down local zone: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)__startupWithMirror:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v8);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self isRunning])
  {
    v9 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirror];
    v10 = HMFEqualObjects();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    }

    v14 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___startupWithMirror_completion___block_invoke;
    block[3] = &unk_279735738;
    v23 = v11;
    v24 = v7;
    v15 = v11;
    dispatch_async(v14, block);
  }

  else
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    v12 = [v6 startupFuture];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __93__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___startupWithMirror_completion___block_invoke_2;
    v16[3] = &unk_27972BCD8;
    objc_copyWeak(&v18, &location);
    v17 = v7;
    objc_copyWeak(&v19, &from);
    v13 = [v12 addCompletionBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __93__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___startupWithMirror_completion___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained ownerQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___startupWithMirror_completion___block_invoke_3;
    v10[3] = &unk_279733CA8;
    v11 = v4;
    v13 = a1[4];
    objc_copyWeak(&v14, a1 + 6);
    v12 = v6;
    dispatch_async(v7, v10);

    objc_destroyWeak(&v14);
  }

  else
  {
    v8 = a1[4];
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v8[2](v8, v9);
  }
}

void __93__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___startupWithMirror_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      [*(a1 + 40) setMirror:WeakRetained];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v5 = *(a1 + 48);
      v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      (*(v5 + 16))(v5, v6);
    }
  }
}

- (void)__startupWithMirroredLocalZone:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v8);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self isRunning])
  {
    v9 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self mirroredLocalZone];
    v10 = HMFEqualObjects();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    }

    v15 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___startupWithMirroredLocalZone_completion___block_invoke;
    block[3] = &unk_279735738;
    v21 = v11;
    v22 = v7;
    v14 = v11;
    dispatch_async(v15, block);

    v16 = v22;
    goto LABEL_12;
  }

  v12 = [v6 mirror];
  if ([v12 conformsToProtocol:&unk_286700B60])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14)
  {
    v17 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___startupWithMirroredLocalZone_completion___block_invoke_2;
    v18[3] = &unk_2797348C0;
    v19 = v7;
    dispatch_async(v17, v18);

    v16 = v19;
LABEL_12:

    goto LABEL_13;
  }

  [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self setMirroredLocalZone:v6];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self __startupWithMirror:v14 completion:v7];
LABEL_13:
}

void __104__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___startupWithMirroredLocalZone_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2);
}

- (void)startupWithLocalDatabase:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v8);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self isRunning])
  {
    v9 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_startupWithLocalDatabase_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v36 = v7;
    dispatch_async(v9, block);

    v10 = v36;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBC220]);
    v12 = [objc_opt_class() ckContainerIdentifier];
    v10 = [v11 initWithContainerIdentifier:v12 environment:{objc_msgSend(objc_opt_class(), "ckContainerEnvironment")}];

    v13 = [objc_alloc(MEMORY[0x277D17050]) initWithContainerID:v10];
    v34 = 0;
    v14 = [objc_alloc(MEMORY[0x277D17048]) initWithLocalDatabase:v6 configuration:v13 error:&v34];
    v15 = v34;
    v16 = v15;
    if (v14)
    {
      v26 = v15;
      v17 = [HMDNetworkRouterFirewallRuleManagerBackingStoreMirror alloc];
      v18 = [objc_opt_class() ckUseAnonymousAccount];
      v19 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
      v20 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v17 initWithLocalDatabase:v6 cloudDatabase:v14 useAnonymousRequests:v18 ownerQueue:v19];

      v21 = objc_alloc_init(MEMORY[0x277D170F8]);
      [v21 setCreateIfNeeded:1];
      v30 = 0;
      v22 = [v6 openZoneWithMirror:v20 configuration:v21 error:&v30];
      v23 = v30;
      if (v22)
      {
        [v22 startUp];
        [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self __startupWithMirroredLocalZone:v22 completion:v7];
      }

      else
      {
        v25 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __98__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_startupWithLocalDatabase_completion___block_invoke_3;
        v27[3] = &unk_279735738;
        v29 = v7;
        v28 = v23;
        dispatch_async(v25, v27);
      }

      v16 = v26;
    }

    else
    {
      v24 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __98__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_startupWithLocalDatabase_completion___block_invoke_2;
      v31[3] = &unk_279735738;
      v33 = v7;
      v32 = v16;
      dispatch_async(v24, v31);

      v20 = v33;
    }
  }
}

- (void)setMirror:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v5);

  mirror = self->_mirror;
  self->_mirror = v4;

  if (v4)
  {

    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self __maybeStartOrStopCloudFetchScheduler];
  }

  else
  {

    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self __stopCloudFetchScheduler];
  }
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirror)mirror
{
  v3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v3);

  mirror = self->_mirror;

  return mirror;
}

- (BOOL)isRunning
{
  v3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self ownerQueue];
  dispatch_assert_queue_V2(v3);

  return self->_mirror != 0;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator)initWithFirewallRuleManager:(id)a3 notificationCenter:(id)a4 cloudFetchInterval:(double)a5 cloudFetchRetryInterval:(double)a6 ownerQueue:(id)a7
{
  v9 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self initWithFirewallRuleManager:a3 notificationCenter:a4 ownerQueue:a7];
  v10 = [[HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler alloc] initWithIdentifier:@"com.apple.homed.firewall-rule-manager.cloud-fetch-scheduler" interval:v9 retryInterval:a5 delegate:a6];
  cloudFetchScheduler = v9->_cloudFetchScheduler;
  v9->_cloudFetchScheduler = v10;

  return v9;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator)initWithFirewallRuleManager:(id)a3 notificationCenter:(id)a4 cloudFetchScheduler:(id)a5 ownerQueue:(id)a6
{
  v10 = a5;
  v11 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)self initWithFirewallRuleManager:a3 notificationCenter:a4 ownerQueue:a6];
  cloudFetchScheduler = v11->_cloudFetchScheduler;
  v11->_cloudFetchScheduler = v10;

  return v11;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator)initWithFirewallRuleManager:(id)a3 notificationCenter:(id)a4 ownerQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator;
  v11 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_firewallRuleManager, v8);
    objc_storeStrong(&v12->_notificationCenter, a4);
    objc_storeStrong(&v12->_ownerQueue, a5);
    v13 = v12;
  }

  return v12;
}

+ (id)__pairedMetadataDataDictionaryFromRecordDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __113__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___pairedMetadataDataDictionaryFromRecordDictionary___block_invoke;
  v9[3] = &unk_27972BDC8;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __113__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___pairedMetadataDataDictionaryFromRecordDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"pairedMetadata"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"pairedMetadata"];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

+ (id)__networkDeclarationDataDictionaryFromRecordDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __117__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___networkDeclarationDataDictionaryFromRecordDictionary___block_invoke;
  v9[3] = &unk_27972BDC8;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __117__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___networkDeclarationDataDictionaryFromRecordDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"networkDeclarations"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"networkDeclarations"];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

+ (id)__pairedMetadataDictionaryFromOverrideObjectDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __117__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___pairedMetadataDictionaryFromOverrideObjectDictionary___block_invoke;
  v9[3] = &unk_27972BDC8;
  v6 = v5;
  v10 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  if ([v6 count])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __117__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___pairedMetadataDictionaryFromOverrideObjectDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"pairedMetadata"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"pairedMetadata"];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

+ (id)__networkDeclarationDataDictionaryFromOverrideObjectDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___networkDeclarationDataDictionaryFromOverrideObjectDictionary___block_invoke;
  v9[3] = &unk_27972BDC8;
  v6 = v5;
  v10 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  if ([v6 count])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___networkDeclarationDataDictionaryFromOverrideObjectDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"networkDeclarations"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"networkDeclarations"];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

+ (id)__createProcessingOptionsWithLabel:(id)a3 qualityOfService:(int64_t)a4
{
  v5 = [MEMORY[0x277D17108] optionsWithLabel:a3];
  [v5 setShouldEnqueueMirrorOutput:0];
  [v5 setQualityOfService:a4];

  return v5;
}

+ (id)__jsonFromRecords:(id)a3 validateWithPublicKeys:(id)a4 rawOutput:(BOOL)a5 error:(id *)a6
{
  v64 = a5;
  v77 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v10 = v7;
  v11 = v9;
  obj = v10;
  v55 = [v10 countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v55)
  {
    v53 = v8;
    v54 = *v72;
    v52 = v9;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v72 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v71 + 1) + 8 * i);
        v14 = [v13 recordID];
        v15 = [v14 zoneID];
        v16 = [v15 zoneName];

        v17 = [v14 recordName];
        v60 = v14;
        v18 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier identifierFromRecordID:v14];
        v19 = v18;
        if (!v64)
        {
          v20 = [v18 productGroup];

          v21 = [v19 productNumber];

          v17 = v21;
          v16 = v20;
        }

        v62 = v19;
        v22 = [v11 objectForKeyedSubscript:v16];
        if (!v22)
        {
          v22 = [MEMORY[0x277CBEB38] dictionary];
          [v11 setObject:v22 forKeyedSubscript:v16];
        }

        v59 = v16;
        v23 = [MEMORY[0x277CBEB38] dictionary];
        v58 = v17;
        [v22 setObject:v23 forKeyedSubscript:v17];
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v63 = [v13 allKeys];
        v24 = [v63 countByEnumeratingWithState:&v67 objects:v75 count:16];
        if (!v24)
        {
          v37 = v17;
          goto LABEL_50;
        }

        v25 = v24;
        v56 = v22;
        v57 = i;
        v61 = 0;
        v26 = 0;
        v27 = *v68;
        do
        {
          v28 = 0;
          do
          {
            if (*v68 != v27)
            {
              objc_enumerationMutation(v63);
            }

            v29 = *(*(&v67 + 1) + 8 * v28);
            if (([v29 isEqualToString:@"CD_networkDeclarations_ckAsset"] & 1) != 0 || objc_msgSend(v29, "isEqualToString:", @"CD_networkDeclarations"))
            {
              if (!v64)
              {
                v30 = [objc_opt_class() __networkDeclarationsFromRecord:v13 recordKey:v29 identifier:v62];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v30 prettyJSONDictionary];
                  v26 = 1;
                  goto LABEL_22;
                }
              }

              v26 = 1;
              goto LABEL_21;
            }

            if ([v29 isEqualToString:@"CD_pairedMetadata_ckAsset"])
            {
              if (v64)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v34 = [v29 isEqualToString:@"CD_pairedMetadata"];
              if (!v34 || v64)
              {
                v61 |= v34;
                goto LABEL_21;
              }
            }

            v35 = [objc_opt_class() __pairedMetadataFromRecord:v13 recordKey:v29 identifier:v62];
            if (!v35)
            {
LABEL_31:
              v61 = 1;
LABEL_21:
              v33 = objc_opt_class();
              v31 = [v13 objectForKeyedSubscript:v29];
              v32 = [v33 __jsonValueForCKRecordValue:v31];
              goto LABEL_22;
            }

            v31 = v35;
            v32 = [v35 prettyJSONDictionary];
            v61 = 1;
LABEL_22:
            [v23 setObject:v32 forKeyedSubscript:v29];

            ++v28;
          }

          while (v25 != v28);
          v36 = [v63 countByEnumeratingWithState:&v67 objects:v75 count:16];
          v25 = v36;
        }

        while (v36);

        v8 = v53;
        if (v53)
        {
          i = v57;
          v37 = v58;
          if ((v26 ^ 1))
          {
            v11 = v52;
          }

          else
          {
            v66 = 0;
            v38 = [HMDNetworkRouterFirewallRuleCloudZone verifyNetworkDeclarationsFromRecord:v13 signatureVerificationPublicKeys:v53 error:&v66];
            v39 = v66;
            v40 = @"VALID";
            v11 = v52;
            if (!v38)
            {
              v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID: %@", v39];
              v50 = v40;
            }

            v41 = [@"CD_networkDeclarationsSignature" stringByAppendingString:@"[VALIDATION_RESULT]"];
            [v23 setObject:v40 forKeyedSubscript:v41];

            if (!v38)
            {
            }

            i = v57;
          }
        }

        else
        {
          v11 = v52;
          i = v57;
          v37 = v58;
        }

        v22 = v56;
        if (v53 && ((v61 ^ 1) & 1) == 0)
        {
          v65 = 0;
          v42 = [HMDNetworkRouterFirewallRuleCloudZone verifyPairedMetadataFromRecord:v13 signatureVerificationPublicKeys:v53 error:&v65];
          v63 = v65;
          v43 = @"VALID";
          if (!v42)
          {
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID: %@", v63];
            v49 = v43;
          }

          v44 = [@"CD_pairedMetadataSignature" stringByAppendingString:@"[VALIDATION_RESULT]"];
          [v23 setObject:v43 forKeyedSubscript:v44];

          if (!v42)
          {
          }

LABEL_50:
        }
      }

      v55 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v55);
  }

  v45 = [objc_opt_class() __jsonStringFromDictionary:v11 rawOutput:v64 error:a6];

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

+ (id)__pairedMetadataFromRecord:(id)a3 recordKey:(id)a4 identifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 isEqualToString:@"CD_pairedMetadata_ckAsset"])
  {
    v10 = [v7 objectForKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (!v12)
    {
      v15 = 0;
      goto LABEL_16;
    }

    v13 = MEMORY[0x277CBEA90];
    v14 = [(HMDCloudPairedMetadata *)v12 fileURL];
    v15 = [v13 dataWithContentsOfURL:v14];
  }

  else
  {
    if (![v8 isEqualToString:@"CD_pairedMetadata"])
    {
LABEL_14:
      v12 = 0;
      goto LABEL_17;
    }

    v12 = [v7 objectForKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    v15 = v16;
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  v12 = [[HMDCloudPairedMetadata alloc] initWithBaseAccessoryIdentifier:v9 data:v15];
LABEL_16:

LABEL_17:

  return v12;
}

+ (id)__networkDeclarationsFromRecord:(id)a3 recordKey:(id)a4 identifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 isEqualToString:@"CD_networkDeclarations_ckAsset"])
  {
    v10 = [v7 objectForKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (!v12)
    {
      v15 = 0;
      goto LABEL_16;
    }

    v13 = MEMORY[0x277CBEA90];
    v14 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)v12 fileURL];
    v15 = [v13 dataWithContentsOfURL:v14];
  }

  else
  {
    if (![v8 isEqualToString:@"CD_networkDeclarations"])
    {
LABEL_14:
      v12 = 0;
      goto LABEL_17;
    }

    v12 = [v7 objectForKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    v15 = v16;
  }

  if (!v15)
  {
    goto LABEL_14;
  }

  v12 = [[HMDNetworkRouterFirewallRuleCloudNetworkDeclarations alloc] initWithBaseAccessoryIdentifier:v9 data:v15];
LABEL_16:

LABEL_17:

  return v12;
}

void __103__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___jsonFromPairedMetadata_rawOutput_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier identifierFromRecordID:v5];
  v8 = [v5 zoneID];
  v9 = [v8 zoneName];

  v10 = [v5 recordName];
  if ((*(a1 + 48) & 1) == 0)
  {
    v11 = [v7 productGroup];

    v12 = [v7 productNumber];

    v10 = v12;
    v9 = v11;
  }

  v13 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:v9];
  }

  if (*(a1 + 48))
  {
    goto LABEL_11;
  }

  v14 = [[HMDCloudPairedMetadata alloc] initWithBaseAccessoryIdentifier:v7 data:v6 allowUnzippedData:1];
  if (!v14)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse declaration for %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
LABEL_11:
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    [v13 setObject:v21 forKeyedSubscript:v10];

    goto LABEL_12;
  }

  v15 = v14;
  v16 = [(HMDCloudPairedMetadata *)v14 prettyJSONDictionary];
  [v13 setObject:v16 forKeyedSubscript:v10];

LABEL_12:
  v22 = *MEMORY[0x277D85DE8];
}

void __101__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator___jsonFromDeclarations_rawOutput_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier identifierFromRecordID:v5];
  v8 = [v5 zoneID];
  v9 = [v8 zoneName];

  v10 = [v5 recordName];
  if ((*(a1 + 48) & 1) == 0)
  {
    v11 = [v7 productGroup];

    v12 = [v7 productNumber];

    v10 = v12;
    v9 = v11;
  }

  v13 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:v9];
  }

  if (*(a1 + 48))
  {
    goto LABEL_11;
  }

  v14 = [[HMDNetworkRouterFirewallRuleCloudNetworkDeclarations alloc] initWithBaseAccessoryIdentifier:v7 data:v6 allowUnzippedData:1];
  if (!v14)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse declaration for %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
LABEL_11:
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    [v13 setObject:v21 forKeyedSubscript:v10];

    goto LABEL_12;
  }

  v15 = v14;
  v16 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)v14 prettyJSONDictionary];
  [v13 setObject:v16 forKeyedSubscript:v10];

LABEL_12:
  v22 = *MEMORY[0x277D85DE8];
}

+ (id)__jsonStringFromDictionary:(id)a3 rawOutput:(BOOL)a4 error:(id *)a5
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:v5 error:a5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)__jsonValueForCKRecordValue:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
LABEL_4:
    v6 = v5;
    goto LABEL_5;
  }

  v9 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v11 base64EncodedStringWithOptions:1];
    }

    goto LABEL_26;
  }

  v15 = v9;
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

  if (v17)
  {
    v6 = [v17 description];
LABEL_19:

    goto LABEL_5;
  }

  v18 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v11 = v19;

  if (!v11)
  {
    v22 = v18;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (!v24)
    {
      v5 = [v22 description];
      goto LABEL_4;
    }

    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = v24;
    v26 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v32;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v17);
          }

          v30 = [a1 __jsonValueForCKRecordValue:{*(*(&v31 + 1) + 8 * i), v31}];
          [v25 addObject:v30];
        }

        v27 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v27);
    }

    v6 = [v25 copy];
    goto LABEL_19;
  }

  v20 = MEMORY[0x277CBEA90];
  v21 = [v11 fileURL];
  v13 = [v20 dataWithContentsOfURL:v21];

  v14 = [a1 __jsonValueForCKRecordValue:v13];
LABEL_26:
  v6 = v14;

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)ckUseAnonymousAccount
{
  v2 = [a1 ckContainerIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.willow.engrave"];

  return v3;
}

+ (int64_t)ckContainerEnvironment
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"engraveContainerEnvironment"];

  if (!v4)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  v5 = [v4 numberValue];
  v6 = [v5 integerValue];

  if ((v6 - 1) >= 2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Unknown container environment value %ld, ignoring", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_6;
  }

LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (NSString)ckContainerIdentifier
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"engraveContainerIdentifier"];

  if (!v4 || ([v4 numberValue], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "unsignedIntegerValue"), v5, !v6))
  {
LABEL_8:
    v7 = @"com.apple.willow.engrave";
    goto LABEL_9;
  }

  if (v6 != 1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Unknown container target value %lu, ignoring", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_8;
  }

  v7 = @"com.apple.willow.engrave.staging";
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return &v7->isa;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_120203 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_120203, &__block_literal_global_120204);
  }

  v3 = logCategory__hmf_once_v1_120205;

  return v3;
}

uint64_t __73__HMDNetworkRouterFirewallRuleManagerBackingStoreCoordinator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_120205;
  logCategory__hmf_once_v1_120205 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end