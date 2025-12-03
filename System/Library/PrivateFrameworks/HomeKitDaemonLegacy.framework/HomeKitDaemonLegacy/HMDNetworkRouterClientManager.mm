@interface HMDNetworkRouterClientManager
+ (id)logCategory;
- (BOOL)started;
- (HMDHAPAccessory)networkRouterAccessory;
- (HMDHome)home;
- (HMDNetworkRouterClientManager)initWithNetworkRouterAccessory:(id)accessory workQueue:(id)queue firewallRuleManager:(id)manager notificationCenter:(id)center;
- (HMDNetworkRouterController)routerController;
- (NSString)description;
- (id)_transactionBlockForAccessoriesWithStaleClientIdentifier;
- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)manager;
- (void)__deregisterForNetworkRouterAccessoryReachable:(id)reachable;
- (void)__registerForNetworkRouterAccessoryReachable:(id)reachable;
- (void)_createClientConfigurationForAccessory:(id)accessory credential:(id)credential clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed;
- (void)_deregisterForChangesToManagedAccessory:(id)accessory;
- (void)_evaluateManagement;
- (void)_fetchFirewallRulesForAccessory:(id)accessory completion:(id)completion;
- (void)_getNetworkConfigurationForAccessory:(id)accessory targetProtectionMode:(int64_t)mode completion:(id)completion;
- (void)_handleRouterAccessoryReachable:(id)reachable;
- (void)_migrateAccessory:(id)accessory withConfiguration:(id)configuration clientStatus:(id)status fromCredentialType:(int64_t)type toCredentialType:(int64_t)credentialType rotate:(BOOL)rotate completion:(id)completion;
- (void)_reconcileClientConfigurationForReachableAccessory:(id)accessory clientReconfigurationAllowed:(BOOL)allowed;
- (void)_registerForChangesToManagedAccessory:(id)accessory;
- (void)_registerForNetworkProtectionChangesToGroup:(id)group;
- (void)_replaceClientConfigurationForAccessory:(id)accessory credential:(id)credential clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed;
- (void)_replaceNetworkClientIdentifierForAccessory:(id)accessory networkClientIdentifier:(id)identifier networkRouterUUID:(id)d clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed;
- (void)_resetStaleClientIdentifiersBeforeStart;
- (void)_start;
- (void)_startManagingAccessory:(id)accessory initialHomeSetup:(BOOL)setup;
- (void)_stop;
- (void)_unregisterForNetworkProtectionChangesToGroup:(id)group;
- (void)_updateClientConfiguration:(id)configuration forAccessory:(id)accessory protectionMode:(int64_t)mode clientStatus:(id)status skipIfFingerprintMatches:(BOOL)matches clientReconfigurationAllowed:(BOOL)allowed;
- (void)evaluateManagement;
- (void)handleAccessoryAdded:(id)added;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleAccessoryFirmwareVersionUpdated:(id)updated;
- (void)handleAccessoryRemoved:(id)removed;
- (void)handleFirewallRulesUpdated:(id)updated;
- (void)handleHomeNetworkProtectionChanged:(id)changed;
- (void)handleNetworkProtectionGroupActivated:(id)activated;
- (void)handleNetworkProtectionGroupDeactivated:(id)deactivated;
- (void)handleNetworkProtectionGroupProtectionChanged:(id)changed;
- (void)handleRouterAccessoryReachable:(id)reachable;
- (void)migrateAccessory:(id)accessory toCredentialType:(int64_t)type rotate:(BOOL)rotate completion:(id)completion;
- (void)replaceActiveNetworkRouterAccessory:(id)accessory;
- (void)setNetworkRouterAccessory:(id)accessory;
- (void)setStarted:(BOOL)started;
- (void)stop;
@end

@implementation HMDNetworkRouterClientManager

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  home = [(HMDNetworkRouterClientManager *)self home];
  v7 = [v3 stringWithFormat:@"<%@ %p Home = %@>", v5, self, home];;

  return v7;
}

- (id)_transactionBlockForAccessoriesWithStaleClientIdentifier
{
  v31 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
  selfCopy = self;
  home = [(HMDNetworkRouterClientManager *)self home];
  backingStore = [home backingStore];
  v23 = v4;
  v24 = [backingStore transaction:@"Reset Stale Network Client Identifiers" options:v4];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = home;
  accessories = [home accessories];
  v8 = [accessories countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(accessories);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        networkClientIdentifier = [v12 networkClientIdentifier];
        if (networkClientIdentifier)
        {
          v14 = networkClientIdentifier;
          networkRouterAccessory = [(HMDNetworkRouterClientManager *)selfCopy networkRouterAccessory];
          uuid = [networkRouterAccessory uuid];
          networkRouterUUID = [v12 networkRouterUUID];
          v18 = [uuid isEqual:networkRouterUUID];

          if ((v18 & 1) == 0)
          {
            v19 = [v12 transactionWithObjectChangeType:2];
            [v19 setNetworkRouterUUID:0];
            [v19 setNetworkClientIdentifier:0];
            [v19 setNetworkClientProfileFingerprint:0];
            [v24 add:v19];
          }
        }
      }

      v9 = [accessories countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_unregisterForNetworkProtectionChangesToGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = groupCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering for network protection change notification to group %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  notificationCenter = [(HMDNetworkRouterClientManager *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy name:@"HMDAccessoryNetworkProtectionGroupProtectionModeUpdated" object:groupCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNetworkProtectionChangesToGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = groupCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering for network protection change notification to group %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  notificationCenter = [(HMDNetworkRouterClientManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleNetworkProtectionGroupProtectionChanged_ name:@"HMDAccessoryNetworkProtectionGroupProtectionModeUpdated" object:groupCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_deregisterForChangesToManagedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationCenter = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDAccessoryConnectedNotification" object:accessoryCopy];

  notificationCenter2 = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter2 removeObserver:self name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:accessoryCopy];
}

- (void)_registerForChangesToManagedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationCenter = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:accessoryCopy];

  notificationCenter2 = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleAccessoryFirmwareVersionUpdated_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:accessoryCopy];
}

- (void)_fetchFirewallRulesForAccessory:(id)accessory completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  metadataIdentifier = [accessoryCopy metadataIdentifier];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (metadataIdentifier)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = logDescriptionForAccessory(accessoryCopy);
      *buf = 138543874;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = metadataIdentifier;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Fetching firewall rules for accessory %@ with identifier %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    firewallRuleManager = [(HMDNetworkRouterClientManager *)selfCopy firewallRuleManager];
    v17 = [MEMORY[0x277CBEB98] setWithObject:metadataIdentifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__HMDNetworkRouterClientManager__fetchFirewallRulesForAccessory_completion___block_invoke;
    v21[3] = &unk_27972DE70;
    v22 = accessoryCopy;
    v23 = metadataIdentifier;
    v24 = completionCopy;
    [firewallRuleManager fetchRulesForAccessories:v17 completion:v21];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = logDescriptionForAccessory(accessoryCopy);
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch firewall rules due to failure to derive identifier for accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __76__HMDNetworkRouterClientManager__fetchFirewallRulesForAccessory_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = logDescriptionForAccessory(*(a1 + 32));
      v11 = *(a1 + 40);
      v16 = 138544130;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Fetched firewall rules for accessory %@ with identifier %@ failed with error %@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = [v5 allObjects];
    v14 = [v13 firstObject];
    (*(v12 + 16))(v12, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_getNetworkConfigurationForAccessory:(id)accessory targetProtectionMode:(int64_t)mode completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (mode == 3)
  {
    networkClientIdentifier = [accessoryCopy networkClientIdentifier];
    v12 = [HMDNetworkRouterClientConfiguration configurationForOpenProtectionWithClientIdentifier:networkClientIdentifier];

    (*(completionCopy + 2))(completionCopy, 0, v12, &unk_2866294A0, 0);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__HMDNetworkRouterClientManager__getNetworkConfigurationForAccessory_targetProtectionMode_completion___block_invoke;
    v13[3] = &unk_27972DE48;
    modeCopy = mode;
    v14 = accessoryCopy;
    selfCopy = self;
    v16 = completionCopy;
    [(HMDNetworkRouterClientManager *)self _fetchFirewallRulesForAccessory:v14 completion:v13];
  }
}

void __102__HMDNetworkRouterClientManager__getNetworkConfigurationForAccessory_targetProtectionMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 == 1)
  {
    v31 = v3;
    v10 = [[HMDNetworkRouterHomeKitOnlyFirewallConfiguration alloc] initWithAccessory:*(a1 + 32) sourceConfiguration:v3];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = logDescriptionForAccessory(*(a1 + 32));
      *buf = 138543874;
      v34 = v14;
      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Using firewall configuration %@ for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [*(a1 + 32) needsAirplayAccess];
    v17 = [*(a1 + 32) networkClientIdentifier];
    v18 = [HMDNetworkRouterClientConfiguration configurationForFirewallConfiguration:v10 hapAccessory:1 airplayAccessory:v16 withClientIdentifier:v17];

    (*(*(a1 + 48) + 16))();
    goto LABEL_11;
  }

  if (v5)
  {
    v32 = v3;
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 40);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = *(a1 + 56);
      v24 = HMAccessoryNetworkProtectionModeAsString();
      *buf = 138543618;
      v34 = v22;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unexpected target network protection mode %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = *(a1 + 48);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v25 + 16))(v25, v26, 0, 0, 0);

LABEL_11:
    v27 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *(a1 + 32);
  if (v4)
  {
    v30 = v4;
    v7 = [v6 needsAirplayAccess];
    v8 = [*(a1 + 32) networkClientIdentifier];
    v9 = [HMDNetworkRouterClientConfiguration configurationForFirewallConfiguration:v30 hapAccessory:1 airplayAccessory:v7 withClientIdentifier:v8];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v28 = [v6 networkClientIdentifier];
    v30 = [HMDNetworkRouterClientConfiguration configurationForOpenProtectionWithClientIdentifier:v28];

    (*(*(a1 + 48) + 16))();
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_migrateAccessory:(id)accessory withConfiguration:(id)configuration clientStatus:(id)status fromCredentialType:(int64_t)type toCredentialType:(int64_t)credentialType rotate:(BOOL)rotate completion:(id)completion
{
  v98 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  configurationCopy = configuration;
  statusCopy = status;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientIdentifier = [configurationCopy clientIdentifier];
  value = [clientIdentifier value];

  if (credentialType == 3)
  {
    if (type != 3 || rotate)
    {
      goto LABEL_8;
    }

LABEL_7:
    completionCopy[2](completionCopy, 0);
    goto LABEL_20;
  }

  if (credentialType != 2)
  {
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_19:
    v34 = v33;
    completionCopy[2](completionCopy, v33);

    goto LABEL_20;
  }

  if (type != 3)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (([accessoryCopy supportsWiFiReconfiguration] & 1) == 0)
  {
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    goto LABEL_19;
  }

  if ([accessoryCopy isReachable])
  {
    v22 = accessoryCopy;
    v71 = completionCopy;
    rotateCopy = rotate;
    v24 = configurationCopy;
    v25 = accessoryCopy;
    v26 = value;
    v27 = statusCopy;
    v28 = v22;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    v70 = v28;

    statusCopy = v27;
    value = v26;
    accessoryCopy = v25;
    configurationCopy = v24;
    v31 = rotateCopy;
    completionCopy = v71;
    wiFiManagementController = [v30 wiFiManagementController];

    if (wiFiManagementController)
    {
      routerController = [(HMDNetworkRouterClientManager *)self routerController];
      wiFiSSID = [routerController wiFiSSID];

      if (wiFiSSID)
      {
        if (credentialType == 2)
        {
          v69 = [HMDWiFiManagementController sharedPSKForNetworkWithSSID:wiFiSSID];
        }

        else
        {
          v44 = generateWiFiUniquePreSharedKey();
          v69 = [v44 dataUsingEncoding:1];
        }

        if (v69)
        {
          objc_initWeak(&location, self);
          networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
          uuid = [networkRouterAccessory uuid];

          if (statusCopy || credentialType != 2)
          {
            contexta = objc_autoreleasePoolPush();
            selfCopy = self;
            v57 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v65 = HMFGetLogIdentifier();
              v58 = HMAccessoryWiFiCredentialTypeAsString();
              v59 = logDescriptionForAccessory(v70);
              *buf = 138543874;
              v93 = v65;
              v94 = 2112;
              v95 = v58;
              v96 = 2112;
              v97 = v59;
              _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Attempting migration to %@ credential for accessory %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(contexta);
            accessoriesInReconfiguration = [(HMDNetworkRouterClientManager *)selfCopy accessoriesInReconfiguration];
            uuid2 = [v70 uuid];
            [accessoriesInReconfiguration addObject:uuid2];

            context = objc_alloc_init(HMDNetworkRouterCredential);
            if (credentialType == 3)
            {
              [(HMDNetworkRouterCredential *)context setPsk:v69];
            }

            else
            {
              macAddress = [statusCopy macAddress];
              [(HMDNetworkRouterCredential *)context setMacAddress:macAddress];
            }

            [configurationCopy setCredential:context];
            [configurationCopy setClientIdentifier:0];
            routerController2 = [(HMDNetworkRouterClientManager *)selfCopy routerController];
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_50;
            v74[3] = &unk_27972DE20;
            v64 = v82;
            objc_copyWeak(v82, &location);
            v75 = uuid;
            v81 = v71;
            v76 = v70;
            v82[1] = credentialType;
            v77 = wiFiManagementController;
            v78 = wiFiSSID;
            v79 = v69;
            v80 = value;
            [routerController2 addClientConfiguration:configurationCopy completion:v74];

            v54 = &v75;
            v49 = &v81;
            v50 = &v76;
            v51 = &v77;
            v53 = v79;
            v52 = &v78;
          }

          else
          {
            context = objc_alloc_init(HMDNetworkRouterClientStatusIdentifier);
            v46 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:value];
            [(HMDNetworkRouterCredential *)context setClientIdentifier:v46];

            routerController3 = [(HMDNetworkRouterClientManager *)self routerController];
            v83[0] = MEMORY[0x277D85DD0];
            v83[1] = 3221225472;
            v83[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke;
            v83[3] = &unk_27972DD58;
            v64 = v89;
            objc_copyWeak(v89, &location);
            v84 = uuid;
            v88 = v71;
            v85 = v70;
            v86 = value;
            v87 = configurationCopy;
            v89[1] = type;
            v89[2] = 2;
            v90 = v31;
            v48 = routerController3;
            [routerController3 getClientStatusWithIdentifier:context completion:v83];
            v49 = &v88;
            v50 = &v85;
            v51 = &v86;
            v52 = &v87;
            v53 = v48;
            v54 = &v84;
          }

          objc_destroyWeak(v64);
          objc_destroyWeak(&location);
        }

        else
        {
          v55 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
          (v71)[2](v71, v55);
        }
      }

      else
      {
        v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        (v71)[2](v71, v43);
      }
    }

    else
    {
      v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (v71)[2](v71, v42);
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v40 = logDescriptionForAccessory(accessoryCopy);
      *buf = 138543618;
      v93 = v39;
      v94 = 2112;
      v95 = v40;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Unable to perform Wi-Fi reconfiguration for unreachable accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    (completionCopy)[2](completionCopy, v41);
  }

LABEL_20:

  v35 = *MEMORY[0x277D85DE8];
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_2;
  v17[3] = &unk_27972DD30;
  v18 = v5;
  v10 = v9;
  v19 = v6;
  v20 = WeakRetained;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *&v13 = *(a1 + 56);
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v21 = v14;
  v22 = v13;
  v23 = *(a1 + 80);
  v24 = *(a1 + 96);
  v15 = v6;
  v16 = v5;
  ContinueRouterOperationOnWorkQueue(WeakRetained, v8, v10, v17);
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v8 = *(a1 + 32);
  v9 = *(a1 + 80);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_2_51;
  v13[3] = &unk_27972DDF8;
  v10 = v5;
  v14 = v10;
  v15 = WeakRetained;
  v16 = *(a1 + 40);
  v23 = *(a1 + 80);
  v11 = v6;
  v12 = *(a1 + 96);
  v17 = v11;
  v24[1] = v12;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  objc_copyWeak(v24, (a1 + 88));
  v21 = *(a1 + 32);
  v22 = *(a1 + 72);
  ContinueRouterOperationOnWorkQueue(WeakRetained, v8, v9, v13);

  objc_destroyWeak(v24);
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_2_51(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 accessoriesInReconfiguration];
    v5 = [*(a1 + 48) uuid];
    [v4 removeObject:v5];

    v6 = *(a1 + 32);
    v7 = *(*(a1 + 104) + 16);

    v7();
  }

  else
  {
    v8 = [v2 routerController];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_3;
    aBlock[3] = &unk_27972DDA8;
    v27 = *(a1 + 56);
    v9 = v8;
    v28 = v9;
    v10 = _Block_copy(aBlock);
    v11 = objc_alloc_init(HMDWiFiReconfigurationLogEvent);
    v12 = [*(a1 + 40) networkRouterAccessory];
    [(HMDWiFiReconfigurationLogEvent *)v11 setRouterAccessory:v12];

    [(HMDWiFiReconfigurationLogEvent *)v11 setCredentialType:*(a1 + 120)];
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_5;
    v18[3] = &unk_279731F80;
    v16 = *(a1 + 48);
    v17 = *(a1 + 120);
    v19 = v16;
    v25[1] = v17;
    v20 = *(a1 + 80);
    objc_copyWeak(v25, (a1 + 112));
    v21 = *(a1 + 88);
    v24 = *(a1 + 104);
    v22 = *(a1 + 56);
    v23 = *(a1 + 96);
    [v13 safelyReconfigureWithSSID:v14 PSK:v15 verificationCallback:v10 logEvent:v11 completion:v18];

    objc_destroyWeak(v25);
  }
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HMDNetworkRouterClientStatusIdentifier);
  v5 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:*(a1 + 32)];
  [(HMDNetworkRouterClientStatusIdentifier *)v4 setClientIdentifier:v5];

  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_4;
  v8[3] = &unk_27972DD80;
  v9 = v3;
  v7 = v3;
  [v6 getClientStatusWithIdentifier:v4 completion:v8];
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    if (*(a1 + 88) == 3)
    {
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 32) saveWiFiUniquePreSharedKey:v4 credentialType:?];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = *(a1 + 72);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_6;
  v10[3] = &unk_27972DDD0;
  v7 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = v3;
  v8 = *(a1 + 88);
  v13 = WeakRetained;
  v18 = v8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v9 = v3;
  ContinueRouterOperationOnWorkQueue(WeakRetained, v7, v6, v10);
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_6(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 48);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 88);
      v8 = HMAccessoryWiFiCredentialTypeAsString();
      v9 = logDescriptionForAccessory(*(a1 + 56));
      v16 = 138543874;
      v17 = v6;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Successfully completed migration to %@ credential for accessory %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 56) saveNetworkClientIdentifier:*(a1 + 32) networkRouterUUID:*(a1 + 64) clearProfileFingerprint:0];
    v10 = *(a1 + 72);

    v2 = v10;
  }

  v11 = [*(a1 + 48) routerController];
  [v11 removeClientConfigurationWithClientIdentifier:v2 completion:&__block_literal_global_56_137929];

  v12 = [*(a1 + 48) accessoriesInReconfiguration];
  v13 = [*(a1 + 56) uuid];
  [v12 removeObject:v13];

  v14 = *(a1 + 40);
  (*(*(a1 + 80) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 0;
  }

  v5 = !v4;
  return (*(v3 + 16))(v3, v5);
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 80);
    v3 = *(*(a1 + 80) + 16);
    v4 = *MEMORY[0x277D85DE8];

    v3();
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      [*(a1 + 48) _migrateAccessory:*(a1 + 56) withConfiguration:*(a1 + 72) clientStatus:v5 fromCredentialType:*(a1 + 88) toCredentialType:*(a1 + 96) rotate:*(a1 + 104) completion:*(a1 + 80)];
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 48);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = logDescriptionForAccessory(*(a1 + 56));
        v11 = *(a1 + 64);
        *buf = 138543874;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Router did not return client status for accessory %@ with client identifier %@ (accessory offline or not connected to router?)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v12 = *(a1 + 80);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (*(v12 + 16))(v12, v13);
    }

    v14 = *MEMORY[0x277D85DE8];
  }
}

- (void)_updateClientConfiguration:(id)configuration forAccessory:(id)accessory protectionMode:(int64_t)mode clientStatus:(id)status skipIfFingerprintMatches:(BOOL)matches clientReconfigurationAllowed:(BOOL)allowed
{
  configurationCopy = configuration;
  accessoryCopy = accessory;
  statusCopy = status;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke;
  v21[3] = &unk_27972DD08;
  matchesCopy = matches;
  v22 = accessoryCopy;
  selfCopy = self;
  v25 = configurationCopy;
  modeCopy = mode;
  allowedCopy = allowed;
  v24 = statusCopy;
  v18 = configurationCopy;
  v19 = statusCopy;
  v20 = accessoryCopy;
  [(HMDNetworkRouterClientManager *)self _getNetworkConfigurationForAccessory:v20 targetProtectionMode:mode completion:v21];
}

void __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v9 && v10)
  {
    v13 = [v11 integerValue];
    v14 = [v10 lanIdentifier];
    v15 = [v14 value];
    v38 = [v15 integerValue];

    v16 = [v10 fingerprint];
    if (*(a1 + 72) == 1 && ([*(a1 + 32) networkClientProfileFingerprint], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v18))
    {
      context = objc_autoreleasePoolPush();
      v19 = *(a1 + 40);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v35 = logDescriptionForAccessory(*(a1 + 32));
        v21 = *(a1 + 64);
        v22 = HMAccessoryNetworkProtectionModeAsString();
        *buf = 138543874;
        v55 = v36;
        v56 = 2112;
        v57 = v35;
        v58 = 2112;
        v59 = v22;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping network configuration update for accessory %@ with mode %@ - fingerprint matches existing profile", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      if (v13 != [*(a1 + 32) currentNetworkProtectionMode])
      {
        v23 = *(a1 + 32);
        v24 = [HMDAccessoryAllowedHost allowedHostsFromFirewallRuleConfiguration:v12];
        [v23 saveCurrentNetworkProtectionMode:v13 assignedLAN:v38 allowedWANHosts:v24 profileFingerprint:v16];
      }

      if (*(a1 + 73) == 1 && *(a1 + 64) != 3)
      {
        v25 = [*(a1 + 40) workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_42;
        block[3] = &unk_279734870;
        v39 = *(a1 + 32);
        v26 = v39.i64[0];
        v51 = vextq_s8(v39, v39, 8uLL);
        v52 = v10;
        v53 = *(a1 + 48);
        dispatch_async(v25, block);
      }
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:*(a1 + 56)];
      [v10 setClientIdentifier:v27];

      v28 = [*(a1 + 40) networkRouterAccessory];
      v29 = [v28 uuid];

      objc_initWeak(buf, *(a1 + 40));
      v30 = [*(a1 + 40) routerController];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_3;
      v40[3] = &unk_27972DCE0;
      objc_copyWeak(v48, buf);
      v31 = v29;
      v41 = v31;
      v42 = *(a1 + 32);
      v48[1] = v13;
      v48[2] = v38;
      v43 = v12;
      v44 = v16;
      v32 = *(a1 + 56);
      v49 = *(a1 + 73);
      v33 = *(a1 + 64);
      v45 = v32;
      v48[3] = v33;
      v46 = v10;
      v47 = *(a1 + 48);
      [v30 updateClientConfiguration:v46 completion:v40];

      objc_destroyWeak(v48);
      objc_destroyWeak(buf);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_42(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = [v3 credential];
  [v1 _migrateAccessory:v2 withConfiguration:v3 clientStatus:v4 fromCredentialType:credentialTypeForCredential(v5) toCredentialType:3 rotate:0 completion:&__block_literal_global_44_137940];
}

void __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_4;
    v15[3] = &unk_27972DCB8;
    v15[4] = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v21 = *(a1 + 96);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v16 = v12;
    v17 = v11;
    v13 = *(a1 + 64);
    v23 = *(a1 + 120);
    v14 = *(a1 + 112);
    v18 = v13;
    v22 = v14;
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    dispatch_async(v6, v15);
  }
}

void __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 104);
    v7 = *(a1 + 48);
    v8 = [HMDAccessoryAllowedHost allowedHostsFromFirewallRuleConfiguration:*(a1 + 56)];
    [v7 saveCurrentNetworkProtectionMode:v5 assignedLAN:v6 allowedWANHosts:v8 profileFingerprint:*(a1 + 64)];

    v9 = *(a1 + 48);
    v10 = +[HMDAccessoryNetworkAccessViolation noViolation];
    [v9 saveNetworkAccessViolation:v10];

    v11 = [*(a1 + 32) routerController];
    [v11 resetAccessViolationForClientIdentifier:*(a1 + 72) completion:&__block_literal_global_46_137938];

    if (*(a1 + 120) == 1 && *(a1 + 112) != 3)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v15 = *(a1 + 80);
      v14 = *(a1 + 88);
      v16 = [v15 credential];
      [v12 _migrateAccessory:v13 withConfiguration:v15 clientStatus:v14 fromCredentialType:credentialTypeForCredential(v16) toCredentialType:3 rotate:0 completion:&__block_literal_global_48];
    }
  }
}

- (void)_createClientConfigurationForAccessory:(id)accessory credential:(id)credential clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed
{
  v35 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  credentialCopy = credential;
  statusCopy = status;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = logDescriptionForAccessory(accessoryCopy);
    *buf = 138543618;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Creating new client configuration for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  ProtectionModeForAccessory = getProtectionModeForAccessory(accessoryCopy);
  objc_initWeak(buf, selfCopy);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke;
  v24[3] = &unk_27972DC90;
  v20 = credentialCopy;
  v25 = v20;
  v26 = selfCopy;
  objc_copyWeak(v29, buf);
  v21 = accessoryCopy;
  allowedCopy = allowed;
  v27 = v21;
  v29[1] = ProtectionModeForAccessory;
  v22 = statusCopy;
  v28 = v22;
  [(HMDNetworkRouterClientManager *)selfCopy _getNetworkConfigurationForAccessory:v21 targetProtectionMode:ProtectionModeForAccessory completion:v24];

  objc_destroyWeak(v29);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

void __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v9)
  {
    [v10 setClientIdentifier:0];
    [v10 setCredential:*(a1 + 32)];
    v13 = [*(a1 + 40) networkRouterAccessory];
    v14 = [v13 uuid];

    v15 = [*(a1 + 40) routerController];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_2;
    v19[3] = &unk_27972DC68;
    objc_copyWeak(v27, (a1 + 64));
    v16 = v14;
    v20 = v16;
    v21 = *(a1 + 48);
    v22 = v11;
    v23 = v10;
    v17 = v12;
    v28 = *(a1 + 80);
    v18 = *(a1 + 72);
    v24 = v17;
    v27[1] = v18;
    v25 = *(a1 + 56);
    v26 = *(a1 + 32);
    [v15 addClientConfiguration:v23 completion:v19];

    objc_destroyWeak(v27);
  }
}

void __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v8 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_3;
    block[3] = &unk_27972DC40;
    block[4] = v7;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v5;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v23 = *(a1 + 104);
    v22 = *(a1 + 96);
    v12 = *(a1 + 72);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v19 = v14;
    v20 = v13;
    v21 = *(a1 + 80);
    dispatch_async(v8, block);
  }
}

void __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 48) saveNetworkClientIdentifier:*(a1 + 56) networkRouterUUID:*(a1 + 40) clearProfileFingerprint:0];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 64) integerValue];
    v7 = [*(a1 + 72) lanIdentifier];
    v8 = [v7 value];
    v9 = [v8 integerValue];
    v10 = [HMDAccessoryAllowedHost allowedHostsFromFirewallRuleConfiguration:*(a1 + 80)];
    v11 = [*(a1 + 72) fingerprint];
    [v5 saveCurrentNetworkProtectionMode:v6 assignedLAN:v9 allowedWANHosts:v10 profileFingerprint:v11];

    v12 = *(a1 + 48);
    v13 = +[HMDAccessoryNetworkAccessViolation noViolation];
    [v12 saveNetworkAccessViolation:v13];

    if (*(a1 + 112) == 1 && *(a1 + 104) != 3)
    {
      v14 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:*(a1 + 56)];
      [*(a1 + 72) setClientIdentifier:v14];

      [*(a1 + 32) _migrateAccessory:*(a1 + 48) withConfiguration:*(a1 + 72) clientStatus:*(a1 + 88) fromCredentialType:credentialTypeForCredential(*(a1 + 96)) toCredentialType:3 rotate:0 completion:&__block_literal_global_137946];
    }
  }
}

- (void)_replaceClientConfigurationForAccessory:(id)accessory credential:(id)credential clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  credentialCopy = credential;
  statusCopy = status;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    networkClientIdentifier = [accessoryCopy networkClientIdentifier];
    v18 = logDescriptionForAccessory(accessoryCopy);
    *buf = 138543874;
    v32 = v16;
    v33 = 2112;
    v34 = networkClientIdentifier;
    v35 = 2112;
    v36 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Replacing client configuration with identifier %@ with a new client configuration for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  objc_initWeak(buf, selfCopy);
  routerController = [(HMDNetworkRouterClientManager *)selfCopy routerController];
  networkClientIdentifier2 = [accessoryCopy networkClientIdentifier];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __126__HMDNetworkRouterClientManager__replaceClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke;
  v25[3] = &unk_27972DC18;
  objc_copyWeak(&v29, buf);
  v21 = accessoryCopy;
  v26 = v21;
  v22 = credentialCopy;
  v27 = v22;
  v23 = statusCopy;
  v28 = v23;
  allowedCopy = allowed;
  [routerController removeClientConfigurationWithClientIdentifier:networkClientIdentifier2 completion:v25];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  v24 = *MEMORY[0x277D85DE8];
}

void __126__HMDNetworkRouterClientManager__replaceClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __126__HMDNetworkRouterClientManager__replaceClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_2;
    block[3] = &unk_279731590;
    block[4] = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    dispatch_async(v4, block);
  }
}

- (void)_replaceNetworkClientIdentifierForAccessory:(id)accessory networkClientIdentifier:(id)identifier networkRouterUUID:(id)d clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed
{
  v44 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identifierCopy = identifier;
  dCopy = d;
  statusCopy = status;
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    networkClientIdentifier = [accessoryCopy networkClientIdentifier];
    v20 = logDescriptionForAccessory(accessoryCopy);
    *buf = 138544130;
    v37 = v18;
    v38 = 2112;
    v39 = networkClientIdentifier;
    v40 = 2112;
    v41 = identifierCopy;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Replacing saved network client identifier %@ with %@ found on router for %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  objc_initWeak(buf, selfCopy);
  routerController = [(HMDNetworkRouterClientManager *)selfCopy routerController];
  networkClientIdentifier2 = [accessoryCopy networkClientIdentifier];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __161__HMDNetworkRouterClientManager__replaceNetworkClientIdentifierForAccessory_networkClientIdentifier_networkRouterUUID_clientStatus_clientReconfigurationAllowed___block_invoke;
  v29[3] = &unk_27972DBF0;
  objc_copyWeak(&v34, buf);
  v23 = dCopy;
  v30 = v23;
  v24 = accessoryCopy;
  v31 = v24;
  v25 = identifierCopy;
  v32 = v25;
  v26 = statusCopy;
  v33 = v26;
  allowedCopy = allowed;
  [routerController removeClientConfigurationWithClientIdentifier:networkClientIdentifier2 completion:v29];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

void __161__HMDNetworkRouterClientManager__replaceNetworkClientIdentifierForAccessory_networkClientIdentifier_networkRouterUUID_clientStatus_clientReconfigurationAllowed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __161__HMDNetworkRouterClientManager__replaceNetworkClientIdentifierForAccessory_networkClientIdentifier_networkRouterUUID_clientStatus_clientReconfigurationAllowed___block_invoke_2;
    v11[3] = &unk_27972DBC8;
    v11[4] = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v12 = v10;
    v13 = v9;
    v14 = *(a1 + 72);
    dispatch_async(v4, v11);
  }
}

void __161__HMDNetworkRouterClientManager__replaceNetworkClientIdentifierForAccessory_networkClientIdentifier_networkRouterUUID_clientStatus_clientReconfigurationAllowed___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 48) saveNetworkClientIdentifier:*(a1 + 56) networkRouterUUID:*(a1 + 40) clearProfileFingerprint:1];
    v5 = *(a1 + 32);
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    ProtectionModeForAccessory = getProtectionModeForAccessory(v7);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);

    [v5 _updateClientConfiguration:v6 forAccessory:v7 protectionMode:ProtectionModeForAccessory clientStatus:v9 skipIfFingerprintMatches:0 clientReconfigurationAllowed:v10];
  }
}

- (void)_reconcileClientConfigurationForReachableAccessory:(id)accessory clientReconfigurationAllowed:(BOOL)allowed
{
  v56 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = accessoryCopy;
  primaryIPServer = [v8 primaryIPServer];
  peerAddress = [primaryIPServer peerAddress];

  if (peerAddress)
  {
    v47 = 0;
    v11 = [HMDNetworkRouterIPAddress ipAddressFromNetAddress:peerAddress error:&v47];
    v12 = v47;
    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = logDescriptionForAccessory(v8);
        *buf = 138544130;
        v49 = v15;
        v50 = 2112;
        v51 = peerAddress;
        v52 = 2112;
        v53 = v16;
        v54 = 2112;
        v55 = v12;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to get translate IP address %@ for accessory %@ because of %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = logDescriptionForAccessory(v8);
      *buf = 138543618;
      v49 = v19;
      v50 = 2112;
      v51 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Unable to get IP address for accessory %@ because we don't have a connection", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v11 = 0;
  }

  v21 = [v11 v4];
  if (v21)
  {

LABEL_13:
    v24 = objc_alloc_init(HMDNetworkRouterClientStatusIdentifier);
    [(HMDNetworkRouterClientStatusIdentifier *)v24 setIpAddress:v11];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = logDescriptionForAccessory(v8);
      *buf = 138543874;
      v49 = v28;
      v50 = 2112;
      v51 = v29;
      v52 = 2112;
      v53 = v24;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Querying the router for the status of accessory %@ with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    objc_initWeak(buf, selfCopy);
    networkRouterAccessory = [(HMDNetworkRouterClientManager *)selfCopy networkRouterAccessory];
    uuid = [networkRouterAccessory uuid];

    routerController = [(HMDNetworkRouterClientManager *)selfCopy routerController];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __113__HMDNetworkRouterClientManager__reconcileClientConfigurationForReachableAccessory_clientReconfigurationAllowed___block_invoke;
    v41[3] = &unk_27972DBA0;
    objc_copyWeak(&v45, buf);
    v42 = v8;
    v33 = v24;
    v43 = v33;
    v34 = uuid;
    v44 = v34;
    allowedCopy = allowed;
    [routerController getClientStatusWithIdentifier:v33 completion:v41];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);

    goto LABEL_16;
  }

  accessoryCopy = [v11 accessoryCopy];
  v23 = accessoryCopy == 0;

  if (!v23)
  {
    goto LABEL_13;
  }

  v36 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    v40 = logDescriptionForAccessory(v8);
    *buf = 138543618;
    v49 = v39;
    v50 = 2112;
    v51 = v40;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to extract any IP address for accessory %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
LABEL_16:

  v35 = *MEMORY[0x277D85DE8];
}

void __113__HMDNetworkRouterClientManager__reconcileClientConfigurationForReachableAccessory_clientReconfigurationAllowed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        objc_autoreleasePoolPop(v9);
        goto LABEL_9;
      }

      v12 = HMFGetLogIdentifier();
      v13 = logDescriptionForAccessory(*(a1 + 32));
      v14 = *(a1 + 40);
      *buf = 138544130;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v5;
      v15 = "%{public}@Failed to get client status of accessory %@ with %@: %@";
      v16 = v11;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 42;
    }

    else
    {
      if (v6)
      {
        v19 = [WeakRetained workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __113__HMDNetworkRouterClientManager__reconcileClientConfigurationForReachableAccessory_clientReconfigurationAllowed___block_invoke_38;
        block[3] = &unk_279731590;
        block[4] = v8;
        v23 = *(a1 + 32);
        v24 = v6;
        v25 = *(a1 + 48);
        v26 = *(a1 + 64);
        dispatch_async(v19, block);

        goto LABEL_9;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      v12 = HMFGetLogIdentifier();
      v13 = logDescriptionForAccessory(*(a1 + 32));
      v21 = *(a1 + 40);
      *buf = 138543874;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v21;
      v15 = "%{public}@Router did not return client status for accessory %@ with %@ (accessory offline or not connected to router?)";
      v16 = v11;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 32;
    }

    _os_log_impl(&dword_2531F8000, v16, v17, v15, buf, v18);

    goto LABEL_6;
  }

LABEL_9:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_startManagingAccessory:(id)accessory initialHomeSetup:(BOOL)setup
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = logDescriptionForAccessory(v9);
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Managing accessory %@ as a Network Router client", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDNetworkRouterClientManager *)selfCopy _registerForChangesToManagedAccessory:v9];
    [(HMDNetworkRouterClientManager *)selfCopy _updateOrCreateClientConfigurationForAccessory:v9 preferReconcile:1 clientReconfigurationAllowed:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleFirewallRulesUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDNetworkRouterClientManager_handleFirewallRulesUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

void __60__HMDNetworkRouterClientManager_handleFirewallRulesUpdated___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 protectionMode];
  v4 = objc_autoreleasePoolPush();
  v28 = a1;
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  v27 = v2;
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v2 name];
      v10 = [*(v28 + 40) userInfo];
      *buf = 138543874;
      v35 = v8;
      v36 = 2112;
      v37 = v9;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling firewall rules update notification for home %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [*(v28 + 40) userInfo];
    v12 = [v11 hmf_setForKey:@"HMDNotificationNetworkRouterFirewallRulesUpdatedAccessoriesKey"];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [v2 accessories];
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          if ([v18 supportsNetworkProtection])
          {
            v19 = [v18 metadataIdentifier];
            if (v19)
            {
              v20 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc];
              v21 = [v19 productGroup];
              v22 = [v19 productNumber];
              v23 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v20 initWithProductGroup:v21 productNumber:v22 firmwareVersion:0];

              if (![v12 count] || objc_msgSend(v12, "containsObject:", v23))
              {
                [*(v28 + 32) _updateOrCreateClientConfigurationForAccessory:v18 preferReconcile:0 clientReconfigurationAllowed:0];
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }
  }

  else
  {
    if (v7)
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v27 name];
      *buf = 138543618;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Ignoring firewall rules update since network protection is disabled for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeNetworkProtectionChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDNetworkRouterClientManager_handleHomeNetworkProtectionChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __68__HMDNetworkRouterClientManager_handleHomeNetworkProtectionChanged___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    if (v4)
    {
      v5 = [*(a1 + 32) networkRouterAccessory];
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v4 name];
        [v4 protectionMode];
        v11 = HMNetworkProtectionModeAsString();
        v12 = [v5 shortDescription];
        v14 = 138544130;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Network protection for home %@ changed to %@. Network router Accessory: %@", &v14, 0x2Au);
      }

      objc_autoreleasePoolPop(v6);
      if ([v5 isReachable])
      {
        [*(a1 + 32) _updateClientConfigurationForAllAccessoriesWithClientReconfigurationAllowed:1];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleNetworkProtectionGroupProtectionChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMDNetworkRouterClientManager_handleNetworkProtectionGroupProtectionChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __79__HMDNetworkRouterClientManager_handleNetworkProtectionGroupProtectionChanged___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:*MEMORY[0x277CCEC10]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [*(a1 + 40) userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277CCEBF0]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v5)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = [*(a1 + 32) home];
      v12 = [v11 protectionMode];
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v12 == 1)
      {
        if (v16)
        {
          v17 = HMFGetLogIdentifier();
          [v9 integerValue];
          v18 = HMAccessoryNetworkProtectionModeAsString();
          *buf = 138543874;
          v35 = v17;
          v36 = 2112;
          v37 = v18;
          v38 = 2112;
          v39 = v5;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating accessory network configurations because protection mode changed to %@ for network protection group %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        v19 = [v11 networkProtectionGroupRegistry];
        v20 = [v19 accessoriesForGroupWithUUID:v5];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v31;
          do
          {
            v25 = 0;
            do
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [*(a1 + 32) _updateOrCreateClientConfigurationForAccessory:*(*(&v30 + 1) + 8 * v25++) preferReconcile:0 clientReconfigurationAllowed:{1, v30}];
            }

            while (v23 != v25);
            v23 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v23);
        }
      }

      else
      {
        if (v16)
        {
          v26 = HMFGetLogIdentifier();
          [v9 integerValue];
          v27 = HMAccessoryNetworkProtectionModeAsString();
          v28 = HMNetworkProtectionModeAsString();
          *buf = 138544130;
          v35 = v26;
          v36 = 2112;
          v37 = v27;
          v38 = 2112;
          v39 = v5;
          v40 = 2112;
          v41 = v28;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Ignoring protection mode change to %@ for network protection group %@ because home network protection is %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleNetworkProtectionGroupDeactivated:(id)deactivated
{
  deactivatedCopy = deactivated;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDNetworkRouterClientManager_handleNetworkProtectionGroupDeactivated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = deactivatedCopy;
  selfCopy = self;
  v6 = deactivatedCopy;
  dispatch_async(workQueue, v7);
}

void __73__HMDNetworkRouterClientManager_handleNetworkProtectionGroupDeactivated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277CCEBE0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) _unregisterForNetworkProtectionChangesToGroup:v6];
    v5 = v6;
  }
}

- (void)handleNetworkProtectionGroupActivated:(id)activated
{
  activatedCopy = activated;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDNetworkRouterClientManager_handleNetworkProtectionGroupActivated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = activatedCopy;
  selfCopy = self;
  v6 = activatedCopy;
  dispatch_async(workQueue, v7);
}

void __71__HMDNetworkRouterClientManager_handleNetworkProtectionGroupActivated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277CCEBE0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) _registerForNetworkProtectionChangesToGroup:v6];
    v5 = v6;
  }
}

- (void)handleAccessoryConfigured:(id)configured
{
  configuredCopy = configured;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDNetworkRouterClientManager_handleAccessoryConfigured___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = configuredCopy;
  v6 = configuredCopy;
  dispatch_async(workQueue, v7);
}

void __59__HMDNetworkRouterClientManager_handleAccessoryConfigured___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    if (v4)
    {
      v5 = [*(a1 + 32) accessoriesInReconfiguration];
      v6 = [v4 uuid];
      v7 = [v5 containsObject:v6];

      if (v7)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = HMFGetLogIdentifier();
          v12 = logDescriptionForAccessory(v4);
          v14 = 138543618;
          v15 = v11;
          v16 = 2112;
          v17 = v12;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Not reconciling client configuration for accessory %@ -- currently being reconfigured", &v14, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
      }

      else
      {
        [*(a1 + 32) _reconcileClientConfigurationForReachableAccessory:v4 clientReconfigurationAllowed:0];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryFirmwareVersionUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDNetworkRouterClientManager_handleAccessoryFirmwareVersionUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

void __71__HMDNetworkRouterClientManager_handleAccessoryFirmwareVersionUpdated___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    if (v4 && [v4 supportsNetworkProtection])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = HMFGetLogIdentifier();
        v9 = logDescriptionForAccessory(v4);
        v11 = 138543618;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling firmware version update for accessory %@", &v11, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 32) _updateOrCreateClientConfigurationForAccessory:v4 preferReconcile:0 clientReconfigurationAllowed:1];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryRemoved:(id)removed
{
  removedCopy = removed;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDNetworkRouterClientManager_handleAccessoryRemoved___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = removedCopy;
  v6 = removedCopy;
  dispatch_async(workQueue, v7);
}

void __56__HMDNetworkRouterClientManager_handleAccessoryRemoved___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:@"HMDAccessoryNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [*(a1 + 32) networkRouterAccessory];
    v7 = HMFEqualObjects();

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = logDescriptionForAccessory(v5);
        *buf = 138543618;
        v33 = v11;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Stopping client manager due to removal of currently active network router accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) _stop];
    }

    else
    {
      v13 = [v5 networkClientIdentifier];

      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
      if (v13)
      {
        if (v17)
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v5 networkClientIdentifier];
          v20 = logDescriptionForAccessory(v5);
          *buf = 138543874;
          v33 = v18;
          v34 = 2112;
          v35 = v19;
          v36 = 2112;
          v37 = v20;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Removing client configuration with identifier %@ from router for removed accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        v21 = [*(a1 + 32) routerController];
        v22 = [v5 networkClientIdentifier];
        v26 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __56__HMDNetworkRouterClientManager_handleAccessoryRemoved___block_invoke_31;
        v29 = &unk_2797358C8;
        v30 = *(a1 + 32);
        v31 = v5;
        [v21 removeClientConfigurationWithClientIdentifier:v22 completion:&v26];
      }

      else
      {
        if (v17)
        {
          v23 = HMFGetLogIdentifier();
          v24 = logDescriptionForAccessory(v5);
          *buf = 138543618;
          v33 = v23;
          v34 = 2112;
          v35 = v24;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No saved client identifier on removed accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }

      [*(a1 + 32) _deregisterForChangesToManagedAccessory:{v5, v26, v27, v28, v29, v30}];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __56__HMDNetworkRouterClientManager_handleAccessoryRemoved___block_invoke_31(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) networkClientIdentifier];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Remove client configuration with identifier %@ completed with error %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryAdded:(id)added
{
  addedCopy = added;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDNetworkRouterClientManager_handleAccessoryAdded___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = addedCopy;
  v6 = addedCopy;
  dispatch_async(workQueue, v7);
}

void __54__HMDNetworkRouterClientManager_handleAccessoryAdded___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:@"HMDNotificationAddedAccessoryKey"];

    if ([v3 supportsNetworkProtection])
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = logDescriptionForAccessory(v3);
        v15 = 138543618;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        v9 = "%{public}@Will manage new accessory %@ because it supports network protection";
LABEL_8:
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, v9, &v15, 0x16u);
      }
    }

    else
    {
      v10 = [v3 wiFiUniquePreSharedKey];

      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      v11 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (!v10)
      {
        if (v11)
        {
          v13 = HMFGetLogIdentifier();
          v14 = logDescriptionForAccessory(v3);
          v15 = 138543618;
          v16 = v13;
          v17 = 2112;
          v18 = v14;
          _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Will not manage new accessory %@", &v15, 0x16u);
        }

        objc_autoreleasePoolPop(v4);
        goto LABEL_10;
      }

      if (v11)
      {
        v7 = HMFGetLogIdentifier();
        v8 = logDescriptionForAccessory(v3);
        v15 = 138543618;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        v9 = "%{public}@Will manage new accessory %@ because it has a per-accessory credential";
        goto LABEL_8;
      }
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startManagingAccessory:v3 initialHomeSetup:0];
LABEL_10:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleRouterAccessoryReachable:(id)reachable
{
  v29 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDNetworkRouterClientManager *)self home];
  isActiveNetworkRouterInitialSetupNeeded = [home isActiveNetworkRouterInitialSetupNeeded];
  managedNetworkEnabled = [(HMDNetworkRouterClientManager *)self managedNetworkEnabled];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = managedNetworkEnabled & (isActiveNetworkRouterInitialSetupNeeded ^ 1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMFBooleanToString();
    v15 = logDescriptionForAccessory(reachableCopy);
    *buf = 138543874;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Managed network enabled assume to be %@ for network router accessory %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (v12)
  {
    [(HMDNetworkRouterClientManager *)selfCopy _updateClientConfigurationForAllAccessoriesWithClientReconfigurationAllowed:0];
  }

  else
  {
    objc_initWeak(buf, selfCopy);
    routerController = [(HMDNetworkRouterClientManager *)selfCopy routerController];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__HMDNetworkRouterClientManager__handleRouterAccessoryReachable___block_invoke;
    v18[3] = &unk_27972DB78;
    objc_copyWeak(&v21, buf);
    v19 = reachableCopy;
    v22 = isActiveNetworkRouterInitialSetupNeeded;
    v20 = home;
    [routerController writeManagedNetworkEnable:1 completion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __65__HMDNetworkRouterClientManager__handleRouterAccessoryReachable___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = logDescriptionForAccessory(*(a1 + 32));
      *buf = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Managed network enable for network router accessory %@ completed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v6 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDNetworkRouterClientManager__handleRouterAccessoryReachable___block_invoke_30;
    block[3] = &unk_279734938;
    block[4] = v6;
    v14 = *(a1 + 56);
    v13 = *(a1 + 40);
    dispatch_async(v10, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __65__HMDNetworkRouterClientManager__handleRouterAccessoryReachable___block_invoke_30(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setManagedNetworkEnabled:1];
  if (*(a1 + 48) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Initial Home-level protection setup is required", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) setActiveNetworkRouterInitialSetupNeeded:0];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [*(a1 + 32) home];
  v7 = [v6 accessories];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (shouldManageAccessory(v12))
        {
          [*(a1 + 32) _startManagingAccessory:v12 initialHomeSetup:*(a1 + 48)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleRouterAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDNetworkRouterClientManager_handleRouterAccessoryReachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = reachableCopy;
  v6 = reachableCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDNetworkRouterClientManager_handleRouterAccessoryReachable___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v5 = v3;

    v4 = v5;
    if (v5)
    {
      [*(a1 + 32) _handleRouterAccessoryReachable:v5];
      v4 = v5;
    }
  }
}

- (void)_stop
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNetworkRouterClientManager *)self started])
  {
    networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = logDescriptionForAccessory(networkRouterAccessory);
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping network router client manager - active network router accessory %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    notificationCenter = [(HMDNetworkRouterClientManager *)selfCopy notificationCenter];
    [notificationCenter removeObserver:selfCopy];

    [(HMDNetworkRouterClientManager *)selfCopy setStarted:0];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Client manager is already stopped", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_start
{
  v48 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDNetworkRouterClientManager *)self setStartPending:0];
  if ([(HMDNetworkRouterClientManager *)self started])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Client manager is already started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = logDescriptionForAccessory(networkRouterAccessory);
      *buf = 138543618;
      v45 = v12;
      v46 = 2112;
      v47 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting network router client manager with network router accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDNetworkRouterClientManager *)selfCopy2 __registerForNetworkRouterAccessoryReachable:networkRouterAccessory];
    home = [(HMDNetworkRouterClientManager *)selfCopy2 home];
    if (home)
    {
      notificationCenter = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      [notificationCenter addObserver:selfCopy2 selector:sel_handleAccessoryAdded_ name:@"HMDNotificationHomeAddedAccessory" object:home];

      notificationCenter2 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      [notificationCenter2 addObserver:selfCopy2 selector:sel_handleAccessoryRemoved_ name:@"HMDHomeAccessoryRemovedNotification" object:home];

      notificationCenter3 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      [notificationCenter3 addObserver:selfCopy2 selector:sel_handleHomeNetworkProtectionChanged_ name:@"HMDHomeNetworkProtectionUpdatedNotificationKey" object:home];

      notificationCenter4 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      [notificationCenter4 addObserver:selfCopy2 selector:sel_handleFirewallRulesUpdated_ name:@"HMDNotificationNetworkRouterFirewallRulesUpdated" object:0];

      notificationCenter5 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      networkProtectionGroupRegistry = [home networkProtectionGroupRegistry];
      [notificationCenter5 addObserver:selfCopy2 selector:sel_handleNetworkProtectionGroupActivated_ name:@"HMDAccessoryNetworkProtectionGroupProtectionModeActivated" object:networkProtectionGroupRegistry];

      notificationCenter6 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      networkProtectionGroupRegistry2 = [home networkProtectionGroupRegistry];
      [notificationCenter6 addObserver:selfCopy2 selector:sel_handleNetworkProtectionGroupDeactivated_ name:@"HMDAccessoryNetworkProtectionGroupProtectionModeDeactivated" object:networkProtectionGroupRegistry2];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      networkProtectionGroupRegistry3 = [home networkProtectionGroupRegistry];
      activeGroups = [networkProtectionGroupRegistry3 activeGroups];

      v25 = [activeGroups countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(activeGroups);
            }

            [(HMDNetworkRouterClientManager *)selfCopy2 _registerForNetworkProtectionChangesToGroup:*(*(&v39 + 1) + 8 * i)];
          }

          v26 = [activeGroups countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v26);
      }

      if ([networkRouterAccessory isReachable])
      {
        [(HMDNetworkRouterClientManager *)selfCopy2 _handleRouterAccessoryReachable:networkRouterAccessory];
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy2;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          shortDescription = [networkRouterAccessory shortDescription];
          *buf = 138543618;
          v45 = v36;
          v46 = 2112;
          v47 = shortDescription;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Network router: %@ is not reachable, waiting until it is", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
      }

      [(HMDNetworkRouterClientManager *)selfCopy2 setStarted:1];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy2;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@No home to register for notifications on", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_resetStaleClientIdentifiersBeforeStart
{
  v25 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNetworkRouterClientManager *)self started])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Client manager is already started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    staleClientIdentifiersResetInProgress = [(HMDNetworkRouterClientManager *)self staleClientIdentifiersResetInProgress];
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (staleClientIdentifiersResetInProgress)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Stale network client identifiers reset is already in progress", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        home = [(HMDNetworkRouterClientManager *)selfCopy2 home];
        name = [home name];
        *buf = 138543618;
        v22 = v14;
        v23 = 2112;
        v24 = name;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Resetting stale network client identifiers for accessories in the home %@ before starting", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [(HMDNetworkRouterClientManager *)selfCopy2 setStaleClientIdentifiersResetNeeded:0];
      [(HMDNetworkRouterClientManager *)selfCopy2 setStaleClientIdentifiersResetInProgress:1];
      [(HMDNetworkRouterClientManager *)selfCopy2 setStartPending:1];
      objc_initWeak(buf, selfCopy2);
      _transactionBlockForAccessoriesWithStaleClientIdentifier = [(HMDNetworkRouterClientManager *)selfCopy2 _transactionBlockForAccessoriesWithStaleClientIdentifier];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __72__HMDNetworkRouterClientManager__resetStaleClientIdentifiersBeforeStart__block_invoke;
      v19[3] = &unk_279734708;
      objc_copyWeak(&v20, buf);
      [_transactionBlockForAccessoriesWithStaleClientIdentifier run:v19];
      objc_destroyWeak(&v20);

      objc_destroyWeak(buf);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __72__HMDNetworkRouterClientManager__resetStaleClientIdentifiersBeforeStart__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDNetworkRouterClientManager__resetStaleClientIdentifiersBeforeStart__block_invoke_2;
    block[3] = &unk_279735D00;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __72__HMDNetworkRouterClientManager__resetStaleClientIdentifiersBeforeStart__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setStaleClientIdentifiersResetInProgress:0];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) home];
    v7 = [v6 name];
    [*(a1 + 32) staleClientIdentifiersResetNeeded];
    v8 = HMFBooleanToString();
    [*(a1 + 32) startPending];
    v9 = HMFBooleanToString();
    v14 = 138544130;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting stale network client identifiers completed for home %@, staleClientIdentifiersResetNeeded = %@, startPending = %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v10 = [*(a1 + 32) staleClientIdentifiersResetNeeded];
  v11 = *(a1 + 32);
  if (v10)
  {
    result = [v11 _resetStaleClientIdentifiersBeforeStart];
  }

  else
  {
    result = [v11 startPending];
    if (result)
    {
      result = [*(a1 + 32) _start];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_evaluateManagement
{
  v26 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDNetworkRouterClientManager *)self home];
  [home isResidentSupported];
  isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];
  primaryNetworkRouterManagingDeviceUUID = [home primaryNetworkRouterManagingDeviceUUID];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    v12 = HMFBooleanToString();
    [(HMDNetworkRouterClientManager *)selfCopy started];
    v13 = HMFBooleanToString();
    v16 = 138544386;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = primaryNetworkRouterManagingDeviceUUID;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Evaluating network router management responsibility. Resident Available: %@, Current Device Primary Resident: %@, Current Device Management Active: %@, Primary Managing Device: %@", &v16, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  if (primaryNetworkRouterManagingDeviceUUID)
  {
    v14 = 0;
  }

  else
  {
    v14 = isCurrentDevicePrimaryResident;
  }

  if (v14 == 1)
  {
    [(HMDNetworkRouterClientManager *)selfCopy _resetStaleClientIdentifiersBeforeStart];
  }

  else
  {
    [(HMDNetworkRouterClientManager *)selfCopy setStartPending:0];
    [(HMDNetworkRouterClientManager *)selfCopy _stop];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)__deregisterForNetworkRouterAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  notificationCenter = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDAccessoryIsReachableNotification" object:reachableCopy];
}

- (void)__registerForNetworkRouterAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  notificationCenter = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleRouterAccessoryReachable_ name:@"HMDAccessoryIsReachableNotification" object:reachableCopy];
}

- (HMDHome)home
{
  networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
  home = [networkRouterAccessory home];

  return home;
}

- (void)setNetworkRouterAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_networkRouterAccessory, accessoryCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStarted:(BOOL)started
{
  os_unfair_lock_lock_with_options();
  self->_started = started;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)manager
{
  v23 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  firewallRuleManager = [(HMDNetworkRouterClientManager *)self firewallRuleManager];

  if (firewallRuleManager == managerCopy)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    home = [(HMDNetworkRouterClientManager *)self home];
    accessories = [home accessories];

    v10 = [accessories countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(accessories);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 supportsNetworkProtection])
          {
            metadataIdentifier = [v14 metadataIdentifier];
            if (metadataIdentifier)
            {
              [v7 addObject:metadataIdentifier];
            }
          }
        }

        v11 = [accessories countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v6 = [v7 copy];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDNetworkRouterController)routerController
{
  networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
  networkRouterController = [networkRouterAccessory networkRouterController];

  return networkRouterController;
}

- (void)migrateAccessory:(id)accessory toCredentialType:(int64_t)type rotate:(BOOL)rotate completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke;
  block[3] = &unk_27972DB50;
  block[4] = self;
  v16 = accessoryCopy;
  v17 = completionCopy;
  typeCopy = type;
  rotateCopy = rotate;
  v13 = accessoryCopy;
  v14 = completionCopy;
  dispatch_async(workQueue, block);
}

void __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) networkClientIdentifier];
    if (v2)
    {
      ProtectionModeForAccessory = getProtectionModeForAccessory(*(a1 + 40));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke_11;
      v22[3] = &unk_27972DB28;
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v25 = v6;
      v22[4] = v7;
      v23 = v2;
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      v24 = v8;
      v26 = v9;
      v27 = *(a1 + 64);
      [v4 _getNetworkConfigurationForAccessory:v5 targetProtectionMode:ProtectionModeForAccessory completion:v22];

      v10 = v25;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Migration not possible, accessory has no existing client profile", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = *(a1 + 48);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (*(v20 + 16))(v20, v10);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Migration not possible, client manager is not running", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 48);
    v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v15 + 16))(v15, v2);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke_2;
    block[3] = &unk_27972DB00;
    v14 = v5;
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = *(a1 + 32);
    v12 = v7;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    v10 = v9;
    *&v11 = v8;
    *(&v11 + 1) = v10;
    v15 = v12;
    v16 = v11;
    dispatch_async(v6, block);
  }
}

uint64_t __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:*(a1 + 40)];
  [*(a1 + 32) setClientIdentifier:v2];

  return [*(a1 + 48) _migrateAccessory:*(a1 + 56) withConfiguration:*(a1 + 32) clientStatus:0 fromCredentialType:objc_msgSend(*(a1 + 56) toCredentialType:"wiFiCredentialType") rotate:*(a1 + 72) completion:{*(a1 + 80), *(a1 + 64)}];
}

- (void)replaceActiveNetworkRouterAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDNetworkRouterClientManager_replaceActiveNetworkRouterAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __69__HMDNetworkRouterClientManager_replaceActiveNetworkRouterAccessory___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = *(a1 + 40);
  if (HMFEqualObjects())
  {
    [*(a1 + 32) _evaluateManagement];
  }

  else
  {
    if (*(a1 + 40))
    {
      [*(a1 + 32) _stop];
      [*(a1 + 32) setNetworkRouterAccessory:*(a1 + 40)];
      [*(a1 + 32) setManagedNetworkEnabled:0];
      if ([*(a1 + 32) staleClientIdentifiersResetInProgress])
      {
        [*(a1 + 32) setStaleClientIdentifiersResetNeeded:1];
      }

      [*(a1 + 32) _evaluateManagement];
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = logDescriptionForAccessory(*(a1 + 40));
        v9 = logDescriptionForAccessory(v2);
        v14 = 138543874;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Activated network router accessory %@ - previous active network router accessory was %@", &v14, 0x20u);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Attempt to activate a nil network router accessory", &v14, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDNetworkRouterClientManager_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)evaluateManagement
{
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDNetworkRouterClientManager_evaluateManagement__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)started
{
  os_unfair_lock_lock_with_options();
  started = self->_started;
  os_unfair_lock_unlock(&self->_lock);
  return started;
}

- (HMDHAPAccessory)networkRouterAccessory
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_networkRouterAccessory);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMDNetworkRouterClientManager)initWithNetworkRouterAccessory:(id)accessory workQueue:(id)queue firewallRuleManager:(id)manager notificationCenter:(id)center
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  queueCopy = queue;
  managerCopy = manager;
  centerCopy = center;
  v28.receiver = self;
  v28.super_class = HMDNetworkRouterClientManager;
  v14 = [(HMDNetworkRouterClientManager *)&v28 init];
  if (v14)
  {
    networkRouterController = [accessoryCopy networkRouterController];

    if (!networkRouterController)
    {
      v22 = 0;
      goto LABEL_8;
    }

    context = objc_autoreleasePoolPush();
    v16 = v14;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v18 = v25 = managerCopy;
      logDescriptionForAccessory(accessoryCopy);
      v19 = v26 = queueCopy;
      *buf = 138543618;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Initializing with network router accessory %@", buf, 0x16u);

      queueCopy = v26;
      managerCopy = v25;
    }

    objc_autoreleasePoolPop(context);
    objc_storeWeak(&v16->_networkRouterAccessory, accessoryCopy);
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v16->_notificationCenter, center);
    objc_storeStrong(&v16->_firewallRuleManager, manager);
    *&v16->_started = 0x10000;
    v16->_startPending = 0;
    v20 = [MEMORY[0x277CBEB58] set];
    accessoriesInReconfiguration = v16->_accessoriesInReconfiguration;
    v16->_accessoriesInReconfiguration = v20;
  }

  v22 = v14;
LABEL_8:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t79 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t79, &__block_literal_global_78);
  }

  v3 = logCategory__hmf_once_v80;

  return v3;
}

uint64_t __44__HMDNetworkRouterClientManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v80;
  logCategory__hmf_once_v80 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end