@interface HMDHomeWalletKeyAccessoryManager
+ (id)createMatterIssuerKeyDataForUser:(id)user withUserIndex:(id)index flow:(id)flow;
+ (id)logCategory;
+ (id)matterIssuerKeyDataForCurrentUserWithFlow:(id)flow;
+ (id)matterIssuerKeyDataWithPublicKey:(id)key flow:(id)flow;
- (BOOL)isPrimaryResidentOrSoleOwnerController;
- (HMDDevice)primaryResidentDevice;
- (HMDHome)home;
- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)d workQueue:(id)queue;
- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)d workQueue:(id)queue dataSource:(id)source notificationCenter:(id)center;
- (HMDHomeWalletKeyAccessoryManagerDelegate)delegate;
- (NSArray)matterAccessoriesSupportingWalletKey;
- (NSString)walletKeyColorPreferenceKey;
- (id)_addIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow;
- (id)_addIssuerKeyForUserIndex:(id)index toMatterAccessory:(id)accessory isUnifiedAccess:(BOOL)access issuerKeyData:(id)data withFlow:(id)flow;
- (id)_addOrUpdateIssuerKey:(id)key forUser:(id)user toMatterAccessory:(id)accessory unifiedAccess:(BOOL)access flow:(id)flow;
- (id)addIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow;
- (id)addIssuerKeysToMatterAccessories:(id)accessories flow:(id)flow;
- (id)addIssuerKeysToMatterAccessory:(id)accessory flow:(id)flow;
- (id)addIssuerKeysToMatterTTUAccessoriesForUser:(id)user flow:(id)flow;
- (id)addOrUpdateIssuerKey:(id)key forUser:(id)user toMatterAccessory:(id)accessory withControllerType:(id)type unifiedAccess:(BOOL)access flow:(id)flow;
- (id)addOrUpdateIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow;
- (id)configureMatterAccessory:(id)accessory withDeviceCredentialKey:(id)key ofType:(int64_t)type forUser:(id)user flow:(id)flow;
- (id)configureNFCReaderKeyOnMatterAccessory:(id)accessory flow:(id)flow;
- (id)configureReaderKey:(id)key onACWGAccessory:(id)accessory flow:(id)flow;
- (id)fetchMissingWalletKeysForAccessory:(id)accessory users:(id)users flow:(id)flow;
- (id)fetchMissingWalletKeysForAccessoryUUID:(id)d forUser:(id)user flow:(id)flow;
- (id)fetchMissingWalletKeysForUserUUID:(id)d flow:(id)flow;
- (id)fetchWalletKeyColorForAccessories_HAP:(id)p home:(id)home flow:(id)flow;
- (id)fetchWalletKeyColorForAccessories_Matter:(id)matter home:(id)home flow:(id)flow;
- (id)logIdentifier;
- (id)matterAccessoriesSupportingWalletKeyExcludingACP;
- (id)missingWalletKeysForAccessoryUUID:(id)d usersByUniqueID:(id)iD accessoryUsersByUniqueID:(id)uniqueID flow:(id)flow;
- (id)performHAPWriteRequestsHH2:(id)h2 home:(id)home flow:(id)flow;
- (id)reachablePrimaryResidentDeviceForHome:(id)home;
- (id)restoreMissingWalletKeys:(id)keys onAccessory:(id)accessory flow:(id)flow;
- (id)walletKeyColorWithCharacteristicValue:(id)value flow:(id)flow;
- (id)writeRequestsWithAccessories:(id)accessories home:(id)home deviceCredentialKey:(id)key user:(id)user flow:(id)flow;
- (void)_handleAddIssuerKeysToMatterV1AccessoriesMessage:(id)message;
- (void)addIssuerKeysToMatterV1AccessoriesWithFlow:(id)flow;
- (void)auditKeysLocallyOrRedispatchWithAccessoryUUID:(id)d issuerKey:(id)key withFlow:(id)flow;
- (void)configureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion;
- (void)configureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion;
- (void)configureAccessories_HH1:(id)h1 withDeviceCredentialKey:(id)key forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion;
- (void)configureAccessories_HH2:(id)h2 withDeviceCredentialKey:(id)key ofType:(int64_t)type forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion;
- (void)configureAccessory:(id)accessory withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion;
- (void)configureAccessoryWithNfcReaderKey:(id)key accessory:(id)accessory flow:(id)flow completion:(id)completion;
- (void)configureAllAccessoriesWithDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion;
- (void)configureNFCReaderKeyForAccessory:(id)accessory flow:(id)flow;
- (void)configureNFCReaderKeyForAllAccessoriesWithReason:(id)reason;
- (void)configureNotificationsWithReason:(id)reason;
- (void)configureWithHome:(id)home;
- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:(id)accessories deviceCredentialKey:(id)key user:(id)user deviceUUID:(id)d;
- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:(id)ds deviceCredentialKey:(id)key user:(id)user deviceUUID:(id)d;
- (void)fetchIsAccessoryConfiguredWithReaderKey:(id)key accessory:(id)accessory flow:(id)flow completion:(id)completion;
- (void)fetchOrConfigureNFCReaderKeyForAccessory:(id)accessory flow:(id)flow completion:(id)completion;
- (void)fetchWalletKeyColorForAccessories:(id)accessories flow:(id)flow withCompletion:(id)completion;
- (void)fetchWalletKeyColorWithAccessory:(id)accessory flow:(id)flow;
- (void)fetchWalletKeyColorWithFlow:(id)flow completion:(id)completion;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleConfigureAccessoriesWithDeviceCredentialKeyMessage:(id)message;
- (void)handleFetchMissingWalletKeysMessage:(id)message;
- (void)handleFetchWalletKeyColorMessage:(id)message;
- (void)handleHMDHomeConfigureMatterAccessoryWithReaderKeyMessage:(id)message;
- (void)handleHMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage:(id)message;
- (void)handleHomeAccessoryRemovedNotification:(id)notification;
- (void)handleHomeAddedAccessoryNotification:(id)notification;
- (void)handleHomeDidDisableCharacteristicNotification:(id)notification;
- (void)handleHomeDidEnableCharacteristicNotification:(id)notification;
- (void)handleHomeNFCReaderKeyKeychainItemAvailableNotification:(id)notification;
- (void)handleHomeUserAddedNotification:(id)notification;
- (void)handlePendingDeviceCredentialKeysSyncForAccessories:(id)accessories withReason:(id)reason;
- (void)handlePendingDeviceCredentialKeysSyncForAccessory:(id)accessory withReason:(id)reason;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)handleRestoreMissingWalletKeysMessage:(id)message;
- (void)handleWalletKeyRemoved;
- (void)handleWalletKeySupportDidChange:(id)change;
- (void)registerForNotificationsWithReason:(id)reason;
- (void)removeNfcReaderKeyWithIdentifier:(id)identifier accessory:(id)accessory flow:(id)flow completion:(id)completion;
- (void)requestPrimaryResident:(id)resident toConfigureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion;
- (void)sendIssuerKeyUpdateMessageToPhone:(id)phone forAccessoryWithUUID:(id)d issuerKey:(id)key flow:(id)flow;
- (void)sendIssuerKeyUpdateMessageToPrimaryResidentforAccessoryWithUUID:(id)d issuerKey:(id)key flow:(id)flow;
- (void)startHomeWalletKeyAddForAccessoryUUID:(id)d keyType:(unint64_t)type expectedCount:(int64_t)count;
- (void)unconfigure;
- (void)unregisterForNotificationsWithReason:(id)reason;
- (void)updateHomeWalletKeyAddForAccessoryUUID:(id)d keyType:(unint64_t)type;
@end

@implementation HMDHomeWalletKeyAccessoryManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDHomeWalletKeyAccessoryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  uuid = [(HMDHomeWalletKeyAccessoryManager *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)updateHomeWalletKeyAddForAccessoryUUID:(id)d keyType:(unint64_t)type
{
  dCopy = d;
  logEvents = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __83__HMDHomeWalletKeyAccessoryManager_updateHomeWalletKeyAddForAccessoryUUID_keyType___block_invoke;
  v14 = &unk_278683A18;
  v15 = dCopy;
  typeCopy = type;
  v8 = dCopy;
  v9 = [logEvents na_firstObjectPassingTest:&v11];

  if ([v9 incrementCompleted])
  {
    logEvents2 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
    [logEvents2 removeObject:v9];
  }
}

BOOL __83__HMDHomeWalletKeyAccessoryManager_updateHomeWalletKeyAddForAccessoryUUID_keyType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessoryUUID];
  if ([v4 hmf_isEqualToUUID:*(a1 + 32)])
  {
    v5 = [v3 keyType] == *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)startHomeWalletKeyAddForAccessoryUUID:(id)d keyType:(unint64_t)type expectedCount:(int64_t)count
{
  dCopy = d;
  logEvents = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v10 = [logEvents na_filter:&__block_literal_global_533];
  v11 = [v10 mutableCopy];
  [(HMDHomeWalletKeyAccessoryManager *)self setLogEvents:v11];

  logEvents2 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __96__HMDHomeWalletKeyAccessoryManager_startHomeWalletKeyAddForAccessoryUUID_keyType_expectedCount___block_invoke_2;
  v22 = &unk_278683A18;
  v13 = dCopy;
  v23 = v13;
  typeCopy = type;
  v14 = [logEvents2 na_firstObjectPassingTest:&v19];

  if (!v14)
  {
    v15 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents:v19];
    v16 = [HMDHomeKeySetupLockLogEvent alloc];
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v18 = [(HMDHomeKeySetupLockLogEvent *)v16 initWithAccessoryUUID:v13 withKeyType:type expectedCount:count queue:workQueue];
    [v15 addObject:v18];
  }
}

BOOL __96__HMDHomeWalletKeyAccessoryManager_startHomeWalletKeyAddForAccessoryUUID_keyType_expectedCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessoryUUID];
  if ([v4 hmf_isEqualToUUID:*(a1 + 32)])
  {
    v5 = [v3 keyType] == *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchWalletKeyColorForAccessories_HAP:(id)p home:(id)home flow:(id)flow
{
  v41 = *MEMORY[0x277D85DE8];
  pCopy = p;
  homeCopy = home;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v36 = v14;
    v37 = 2112;
    v38 = uUID;
    v39 = 2112;
    v40 = pCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for HAP accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke;
  v33[3] = &unk_2786839A8;
  v33[4] = selfCopy;
  v16 = flowCopy;
  v34 = v16;
  v17 = [pCopy na_map:v33];
  v18 = [v17 count];
  v19 = MEMORY[0x277D2C900];
  if (v18)
  {
    v20 = objc_alloc_init(MEMORY[0x277D2C900]);
    objc_initWeak(buf, selfCopy);
    v21 = [(HMFObject *)selfCopy description];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_530;
    v28[3] = &unk_2786839D0;
    objc_copyWeak(&v32, buf);
    v22 = v20;
    v29 = v22;
    v30 = v17;
    v31 = v16;
    [homeCopy readCharacteristicValues:v30 source:1110 sourceForLogging:v21 qualityOfService:-1 withCompletionHandler:v28];

    v23 = v31;
    v24 = v22;

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v24 = [v19 futureWithError:v25];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

id __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CD0DD0];
  v5 = [v3 findServiceWithServiceType:*MEMORY[0x277CD0DD0]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 findCharacteristicWithType:@"0000026C-0000-1000-8000-0026BB765291"];
    if (v7)
    {
      v8 = [HMDCharacteristicRequest requestWithCharacteristic:v7];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 40) UUID];
        v20 = [v3 shortDescription];
        v23 = 138544386;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        v27 = 2112;
        v28 = v20;
        v29 = 2112;
        v30 = v6;
        v31 = 2112;
        v32 = @"0000026C-0000-1000-8000-0026BB765291";
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options: %@, accessory information service: %@ doesn't support hardware finish characteristic: %@", &v23, 0x34u);
      }

      objc_autoreleasePoolPop(v15);
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = [v3 shortDescription];
      v23 = 138544130;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options: %@, accessory information service not supported %@", &v23, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

void __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_530(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_2;
    block[3] = &unk_278689550;
    v11 = a1[5];
    v12 = v4;
    v13 = v6;
    v14 = a1[6];
    v15 = a1[4];
    dispatch_async(v7, block);
  }

  else
  {
    v8 = a1[4];
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v8 finishWithError:v9];
  }
}

void __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_2(id *a1)
{
  v1 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = a1[4];
  v35 = v1;
  v37 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v37)
  {
    v36 = *v40;
    *&v2 = 138544386;
    v32 = v2;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v39 + 1) + 8 * i);
        v5 = [v4 characteristic];
        v6 = v1[5];
        v38 = 0;
        v7 = [v6 hmd_valueOfCharacteristic:v5 error:&v38];
        v8 = v38;
        if (v7)
        {
          v9 = v7;
          objc_opt_class();
          v10 = objc_opt_isKindOfClass() & 1;
          if (v10)
          {
            v11 = v9;
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;

          if (v10)
          {
            v1 = v35;
            v13 = [v35[6] walletKeyColorWithCharacteristicValue:v9 flow:v35[7]];
            if (v13)
            {
              v30 = v13;

              [v35[8] finishWithResult:v30];
              goto LABEL_25;
            }
          }

          else
          {
            v19 = objc_autoreleasePoolPush();
            v1 = v35;
            v20 = v35[6];
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v22 = v33 = v19;
              v23 = [v35[7] UUID];
              v24 = objc_opt_class();
              *buf = v32;
              v44 = v22;
              v45 = 2112;
              v46 = v23;
              v47 = 2112;
              v48 = v4;
              v49 = 2112;
              v50 = v9;
              v51 = 2112;
              v52 = v24;
              _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic value in the read request: %@ is not of type %@:%@", buf, 0x34u);

              v1 = v35;
              v19 = v33;
            }

            objc_autoreleasePoolPop(v19);
          }
        }

        else
        {
          v14 = objc_autoreleasePoolPush();
          v15 = v1[6];
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            v18 = [v1[7] UUID];
            *buf = 138544130;
            v44 = v17;
            v45 = 2112;
            v46 = v18;
            v47 = 2112;
            v48 = v4;
            v49 = 2112;
            v50 = v8;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic read request failed with error %@:%@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      v37 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v37);
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v1[6];
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v28;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to find wallet key color for HAP accessories", buf, 0xCu);

    v1 = v35;
  }

  objc_autoreleasePoolPop(v25);
  v29 = v1[8];
  v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  [v29 finishWithError:v30];
LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
}

- (id)fetchWalletKeyColorForAccessories_Matter:(id)matter home:(id)home flow:(id)flow
{
  v33 = *MEMORY[0x277D85DE8];
  matterCopy = matter;
  homeCopy = home;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v28 = v14;
    v29 = 2112;
    v30 = uUID;
    v31 = 2112;
    v32 = matterCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for Matter accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke;
  v25[3] = &unk_278683958;
  v16 = flowCopy;
  v26 = v16;
  v17 = [matterCopy na_map:v25];
  combineAllFutures = [v17 combineAllFutures];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_3;
  v23[3] = &unk_278683980;
  v23[4] = selfCopy;
  v24 = v16;
  v19 = v16;
  v20 = [combineAllFutures flatMap:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 waitForDoorLockClusterObjectWithFlow:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_2;
  v7[3] = &unk_278683930;
  v8 = *(a1 + 32);
  v4 = [v3 then:v7];
  v5 = [v4 naFuture];

  return v5;
}

id __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_map:&__block_literal_global_524];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_527];

  if (v5)
  {
    v6 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to find wallet key color for Matter accessories", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v6 = [v12 futureWithResult:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

void *__87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

void __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchAccessoryColor_flow:*(a1 + 32)];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    [(HMDHomeWalletKeyAccessoryManager *)v6 fetchWalletKeyColorForAccessories:v7 flow:v8 withCompletion:v9, v10];
  }
}

- (void)fetchWalletKeyColorForAccessories:(id)accessories flow:(id)flow withCompletion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
  walletKeyColorPreferenceKey = [(HMDHomeWalletKeyAccessoryManager *)self walletKeyColorPreferenceKey];
  v14 = [dataSource numberValueFromNoBackupStoreWithKey:walletKeyColorPreferenceKey];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v44 = v18;
      v45 = 2112;
      v46 = uUID;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping fetch, returning wallet key color from persistence store", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    if (home)
    {
      v21 = [accessoriesCopy na_filter:&__block_literal_global_517];
      v37 = [accessoriesCopy na_filter:&__block_literal_global_519];
      v36 = [(HMDHomeWalletKeyAccessoryManager *)self fetchWalletKeyColorForAccessories_Matter:v21 home:home flow:flowCopy];
      v22 = [(HMDHomeWalletKeyAccessoryManager *)self fetchWalletKeyColorForAccessories_HAP:v37 home:home flow:flowCopy];
      v39 = accessoriesCopy;
      v23 = MEMORY[0x277D2C900];
      v42[0] = v36;
      v42[1] = v22;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      v38 = home;
      v25 = MEMORY[0x277D2C938];
      workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
      v27 = [v25 schedulerWithDispatchQueue:workQueue2];
      v28 = [v23 combineAllFutures:v24 ignoringErrors:1 scheduler:v27];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __90__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_flow_withCompletion___block_invoke_3;
      v40[3] = &unk_278689FC0;
      v40[4] = self;
      v41 = completionCopy;
      v29 = [v28 addSuccessBlock:v40];

      accessoriesCopy = v39;
      home = v38;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543618;
        v44 = v33;
        v45 = 2112;
        v46 = uUID2;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options, home is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (completionCopy)[2](completionCopy, 0, v21);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __90__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_flow_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_map:&__block_literal_global_522];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [*(a1 + 32) dataSource];
    v7 = [*(a1 + 32) walletKeyColorPreferenceKey];
    [v6 persistNumberValueToNoBackupStore:v5 withKey:v7];

    v8 = [*(a1 + 32) delegate];
    [v8 accessoryManager:*(a1 + 32) didUpdateWalletKeyColor:{objc_msgSend(v5, "integerValue")}];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      [v5 integerValue];
      v13 = HMHomeWalletKeyColorAsString();
      v21 = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched wallet key color: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to find color for Matter or HAP accessories", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v18 + 16))(v18, 0, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void *__90__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_flow_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (id)walletKeyColorWithCharacteristicValue:(id)value flow:(id)flow
{
  v43 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  flowCopy = flow;
  v34 = 0;
  v8 = [MEMORY[0x277CFEB70] parsedFromData:valueCopy error:&v34];
  v9 = v34;
  if (v8)
  {
    rGBColorValue = [v8 RGBColorValue];
    value = [rGBColorValue value];

    if (value)
    {
      integerValue = [value integerValue];
      if (integerValue > 14935010)
      {
        v13 = integerValue == 15521450;
        v14 = 14935011;
      }

      else
      {
        v13 = integerValue == 0;
        v14 = 14341582;
      }

      if (v13 || integerValue == v14)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(value, "integerValue")}];
LABEL_21:

        goto LABEL_22;
      }

      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        integerValue2 = [value integerValue];
        *buf = 138543874;
        v36 = v24;
        v37 = 2112;
        v38 = uUID;
        v39 = 2048;
        v40 = integerValue2;
        v26 = "%{public}@[Flow: %@] Unable to get wallet key color, unsupported color value: %ld";
        v27 = v23;
        v28 = 32;
        goto LABEL_19;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v36 = v24;
        v37 = 2112;
        v38 = uUID;
        v26 = "%{public}@[Flow: %@] Unable to get wallet key color, color value is set to nil for hardware finish";
        v27 = v23;
        v28 = 22;
LABEL_19:
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
      }
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
    goto LABEL_21;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    uUID2 = [flowCopy UUID];
    *buf = 138544130;
    v36 = v18;
    v37 = 2112;
    v38 = uUID2;
    v39 = 2112;
    v40 = valueCopy;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to get wallet key color, failed to parse hardware finish from encoded tlv data %@:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v20 = 0;
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)fetchWalletKeyColorWithAccessory:(id)accessory flow:(id)flow
{
  v14[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([accessoryCopy supportsWalletKey])
  {
    v14[0] = accessoryCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithAccessory_flow___block_invoke;
    v11[3] = &unk_2786838E8;
    v11[4] = self;
    v12 = flowCopy;
    v13 = accessoryCopy;
    [(HMDHomeWalletKeyAccessoryManager *)self fetchWalletKeyColorForAccessories:v9 flow:v12 withCompletion:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithAccessory_flow___block_invoke(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      v12 = [a1[6] shortDescription];
      v14 = 138544130;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color when accessory connected %@:%@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)writeRequestsWithAccessories:(id)accessories home:(id)home deviceCredentialKey:(id)key user:(id)user flow:(id)flow
{
  v99 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  homeCopy = home;
  keyCopy = key;
  userCopy = user;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  nfcIssuerKeyIdentifier = [userCopy nfcIssuerKeyIdentifier];
  if (nfcIssuerKeyIdentifier)
  {
    v74 = userCopy;
    v17 = objc_alloc_init(MEMORY[0x277CFEBD8]);
    [v17 setKey:keyCopy];
    v18 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
    [v17 setType:v18];

    v73 = nfcIssuerKeyIdentifier;
    [v17 setIssuerKeyIdentifier:nfcIssuerKeyIdentifier];
    v19 = [objc_alloc(MEMORY[0x277CFEBE0]) initWithValue:1];
    [v17 setState:v19];

    v71 = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:2];
    v72 = v17;
    v87 = 0;
    v70 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:v71 issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:v17 deviceCredentialKeyResponse:0 readerKeyRequest:0 readerKeyResponse:0];
    v20 = [v70 serializeWithError:&v87];
    v69 = v87;
    v78 = v20;
    if (v20)
    {
      v68 = keyCopy;
      v77 = [MEMORY[0x277CBEB58] set];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = accessoriesCopy;
      v21 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
      if (v21)
      {
        v22 = v21;
        v82 = *v84;
        selfCopy = self;
        v76 = homeCopy;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v84 != v82)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v83 + 1) + 8 * i);
            home = [v24 home];
            uuid = [home uuid];
            uuid2 = [(__CFString *)homeCopy uuid];
            v28 = [uuid isEqual:uuid2];

            if (v28)
            {
              v29 = [v24 findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
              v30 = v29;
              if (v29)
              {
                v31 = [(__CFString *)v29 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
                if (v31)
                {
                  v32 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v31 value:v78 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
                  [v77 addObject:v32];
                }

                else
                {
                  v46 = objc_autoreleasePoolPush();
                  selfCopy2 = self;
                  v48 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    v49 = HMFGetLogIdentifier();
                    uUID = [flowCopy UUID];
                    shortDescription = [v24 shortDescription];
                    *buf = 138544386;
                    v89 = v49;
                    v90 = 2112;
                    v91 = uUID;
                    v92 = 2112;
                    v93 = shortDescription;
                    v94 = 2112;
                    v95 = v30;
                    v96 = 2112;
                    v97 = @"00000264-0000-1000-8000-0026BB765291";
                    _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);

                    homeCopy = v76;
                    self = selfCopy;
                  }

                  objc_autoreleasePoolPop(v46);
                }
              }

              else
              {
                v40 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v42 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v43 = HMFGetLogIdentifier();
                  uUID2 = [flowCopy UUID];
                  shortDescription2 = [v24 shortDescription];
                  *buf = 138544130;
                  v89 = v43;
                  v90 = 2112;
                  v91 = uUID2;
                  v92 = 2112;
                  v93 = shortDescription2;
                  v94 = 2112;
                  v95 = @"00000266-0000-1000-8000-0026BB765291";
                  _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, nfc access service not supported %@", buf, 0x2Au);

                  self = selfCopy;
                }

                objc_autoreleasePoolPop(v40);
              }
            }

            else
            {
              v33 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v36 = HMFGetLogIdentifier();
                uUID3 = [flowCopy UUID];
                shortDescription3 = [v24 shortDescription];
                home2 = [v24 home];
                *buf = 138544386;
                v89 = v36;
                v90 = 2112;
                v91 = uUID3;
                v92 = 2112;
                v93 = shortDescription3;
                v94 = 2112;
                v95 = home2;
                v96 = 2112;
                v97 = homeCopy;
                _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, home: %@ doesn't match current home: %@", buf, 0x34u);

                self = selfCopy;
              }

              objc_autoreleasePoolPop(v33);
            }
          }

          v22 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
        }

        while (v22);
      }

      v52 = [v77 copy];
      keyCopy = v68;
      v53 = v69;
    }

    else
    {
      v61 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v63 = HMFGetOSLogHandle();
      v53 = v69;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        uUID4 = [flowCopy UUID];
        *buf = 138544130;
        v89 = v64;
        v90 = 2112;
        v91 = uUID4;
        v92 = 2112;
        v93 = 0;
        v94 = 2112;
        v95 = v69;
        _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, unable to encode nfc access control %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v61);
      v52 = [MEMORY[0x277CBEB98] set];
    }

    v54 = v73;
    v55 = v74;
  }

  else
  {
    v54 = 0;
    v55 = userCopy;
    v56 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = HMFGetLogIdentifier();
      uUID5 = [flowCopy UUID];
      *buf = 138543618;
      v89 = v59;
      v90 = 2112;
      v91 = uUID5;
      _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC issuer key identifier for user is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v56);
    v52 = [MEMORY[0x277CBEB98] set];
  }

  v66 = *MEMORY[0x277D85DE8];

  return v52;
}

- (id)configureMatterAccessory:(id)accessory withDeviceCredentialKey:(id)key ofType:(int64_t)type forUser:(id)user flow:(id)flow
{
  v85 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  keyCopy = key;
  userCopy = user;
  flowCopy = flow;
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    [flowCopy UUID];
    v19 = v64 = selfCopy;
    uuid = [accessoryCopy uuid];
    [userCopy uuid];
    v21 = flowCopy;
    v22 = accessoryCopy;
    v23 = userCopy;
    v25 = v24 = keyCopy;
    *buf = 138544386;
    v76 = v18;
    v77 = 2112;
    v78 = v19;
    v79 = 2112;
    v80 = uuid;
    v81 = 2112;
    v82 = v24;
    v83 = 2112;
    v84 = v25;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring Matter accessory with device credential key. accessory: %@, deviceCredentialKey: %@ forUser: %@", buf, 0x34u);

    keyCopy = v24;
    userCopy = v23;
    accessoryCopy = v22;
    flowCopy = v21;

    selfCopy = v64;
  }

  objc_autoreleasePoolPop(v15);
  if (type == 1)
  {
    [accessoryCopy supportsMatterWalletKey];
    v34 = v30 = keyCopy;
    bOOLValue = [v34 BOOLValue];

    keyCopy = v30;
    if (bOOLValue)
    {
      v26 = flowCopy;
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        uUID = [v26 UUID];
        *buf = 138543618;
        v76 = v31;
        v77 = 2112;
        v78 = uUID;
        v33 = "%{public}@[Flow: %@] Not putting Aliro key on UA accessory";
        goto LABEL_11;
      }

LABEL_12:

      objc_autoreleasePoolPop(v27);
      selfCopy = [MEMORY[0x277D2C900] futureWithNoResult];
      flowCopy = v26;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (type)
  {
LABEL_13:
    v36 = selfCopy;
    v37 = keyCopy;
LABEL_14:
    v38 = v36;
    home = [(HMDHomeWalletKeyAccessoryManager *)v36 home];
    uuid2 = [userCopy uuid];
    v41 = [home findOrAddUserIndexForUserUUID:uuid2 guestName:0 accessory:accessoryCopy flow:flowCopy];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke;
    v67[3] = &unk_2786838C0;
    v68 = accessoryCopy;
    v69 = flowCopy;
    v37 = v37;
    typeCopy = type;
    v70 = v37;
    v71 = v38;
    v72 = keyCopy;
    selfCopy = [v41 flatMap:v67];

    goto LABEL_15;
  }

  if ([accessoryCopy supportsACWGProvisioning])
  {
    v26 = flowCopy;
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v31 = v30 = keyCopy;
      uUID = [v26 UUID];
      *buf = 138543618;
      v76 = v31;
      v77 = 2112;
      v78 = uUID;
      v33 = "%{public}@[Flow: %@] Not putting UA key on Aliro accessory";
LABEL_11:
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, v33, buf, 0x16u);

      keyCopy = v30;
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v63 = keyCopy;
  v37 = keyCopy;
  v44 = objc_alloc_init(MEMORY[0x277CFEB40]);
  v45 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
  [v44 setType:v45];

  [v44 setKey:v37];
  v46 = [objc_alloc(MEMORY[0x277CFEBE0]) initWithValue:1];
  [v44 setState:v46];

  v47 = v44;
  v48 = objc_alloc_init(MEMORY[0x277CFEB90]);
  [v48 setDeviceCredentialKey:v47];
  v74 = 0;
  v62 = v48;
  v49 = [v48 serializeWithError:&v74];
  v65 = v74;
  if (v49)
  {
    v36 = selfCopy;
    v50 = v37;
    v37 = v49;
  }

  else
  {
    v61 = v47;
    v51 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v52 = selfCopy;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v54 = v58 = v52;
      [flowCopy UUID];
      v55 = log = v53;
      [accessoryCopy shortDescription];
      v56 = v59 = v51;
      *buf = 138544386;
      v76 = v54;
      v77 = 2112;
      v78 = v55;
      v79 = 2112;
      v80 = v56;
      v81 = 2112;
      v82 = 0;
      v83 = 2112;
      v84 = v65;
      _os_log_impl(&dword_229538000, log, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to encode matter credential %@:%@", buf, 0x34u);

      v51 = v59;
      v53 = log;

      v52 = v58;
    }

    objc_autoreleasePoolPop(v51);
    v57 = MEMORY[0x277D2C900];
    v50 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    selfCopy = [v57 futureWithError:v50];
    v47 = v61;
  }

  keyCopy = v63;
  if (v49)
  {
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  v42 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

id __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) waitForDoorLockClusterObjectWithFlow:*(a1 + 40)];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_2;
  v19[3] = &unk_278683870;
  v5 = *(a1 + 48);
  v23 = *(a1 + 72);
  v20 = v5;
  v21 = v3;
  v22 = *(a1 + 40);
  v6 = v3;
  v7 = [v4 then:v19];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_3;
  v14 = &unk_278683898;
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = *(a1 + 64);
  v18 = *(a1 + 32);
  v8 = [v7 then:&v11];
  v9 = [v8 naFuture];

  return v9;
}

uint64_t __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addDeviceCredentialKeyData:*(a1 + 32) ofType:*(a1 + 56) forUserIndex:objc_msgSend(*(a1 + 40) flow:{"integerValue"), *(a1 + 48)}];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_3(v7);
  }
}

uint64_t __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  if (v4 && (v5 = v4, [v3 status], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", &unk_283E74810), v6, v5, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) uuid];
      v28 = 138544130;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with device credential key %@, accessory: %@", &v28, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v15 = 1;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) UUID];
      v21 = [*(a1 + 56) shortDescription];
      v22 = [v3 status];
      v28 = 138544130;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", &v28, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v15 = 2;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)performHAPWriteRequestsHH2:(id)h2 home:(id)home flow:(id)flow
{
  h2Copy = h2;
  homeCopy = home;
  flowCopy = flow;
  if ([h2Copy hmf_isEmpty])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    dataSource = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
    accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
    dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
    [dataSource2 accessoryWriteRetryInterval];
    v15 = [homeCopy performWriteRequests:h2Copy withRetries:accessoryWriteMaxRetryCount timeInterval:self loggingObject:flowCopy flow:?];

    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D2C938];
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v18 = [v16 schedulerWithDispatchQueue:workQueue];
    v19 = [v15 reschedule:v18];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HMDHomeWalletKeyAccessoryManager_performHAPWriteRequestsHH2_home_flow___block_invoke;
    v21[3] = &unk_278683848;
    objc_copyWeak(&v24, &location);
    v22 = flowCopy;
    v23 = h2Copy;
    futureWithNoResult = [v19 flatMap:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return futureWithNoResult;
}

id __73__HMDHomeWalletKeyAccessoryManager_performHAPWriteRequestsHH2_home_flow___block_invoke(id *a1, void *a2)
{
  v104 = *MEMORY[0x277D85DE8];
  v86 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      v56 = [a1[4] UUID];
      *buf = 138543618;
      v94 = v55;
      v95 = 2112;
      v96 = v56;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key object got invalidated", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    v57 = MEMORY[0x277D2C900];
    v58 = MEMORY[0x277CCA9B8];
    v59 = 23;
    goto LABEL_46;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v72 = a1;
  obj = a1[5];
  v85 = [obj countByEnumeratingWithState:&v89 objects:v103 count:16];
  if (v85)
  {
    v65 = 0;
    v83 = *v90;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v90 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v4 = [*(*(&v89 + 1) + 8 * i) characteristic];
        v5 = [v4 accessory];
        v88 = 0;
        v6 = [v86 hmd_valueOfCharacteristic:v4 error:&v88];
        v7 = v88;
        if (v6)
        {
          v8 = v6;
          objc_opt_class();
          v9 = objc_opt_isKindOfClass() & 1;
          if (v9)
          {
            v10 = v8;
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          if (v9)
          {
            v87 = 0;
            v12 = [MEMORY[0x277CFEBD0] parsedFromData:v8 error:&v87];
            v13 = v87;
            v14 = v13;
            v78 = v5;
            if (v12)
            {
              context = v13;
              v15 = [v12 deviceCredentialKeyResponse];
              v16 = [v15 statusCode];

              if (v16 && (![v16 value] || objc_msgSend(v16, "value") == 2))
              {
                v17 = objc_autoreleasePoolPush();
                v18 = WeakRetained;
                v19 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v20 = v74 = v11;
                  [v72[4] UUID];
                  v79 = v6;
                  v21 = v66 = v7;
                  [v78 shortDescription];
                  v23 = v22 = v17;
                  *buf = 138544130;
                  v94 = v20;
                  v95 = 2112;
                  v96 = v21;
                  v97 = 2112;
                  v98 = v23;
                  v99 = 2112;
                  v100 = v16;
                  _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured with device credential key: %@ with status code: %@", buf, 0x2Au);

                  v17 = v22;
                  v7 = v66;
                  v6 = v79;

                  v11 = v74;
                }

                objc_autoreleasePoolPop(v17);
                ++v65;
              }

              else
              {
                v46 = objc_autoreleasePoolPush();
                v47 = WeakRetained;
                v48 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v49 = v77 = v11;
                  [v72[4] UUID];
                  v82 = v6;
                  v50 = v68 = v7;
                  [v78 shortDescription];
                  v52 = v51 = v46;
                  *buf = 138544130;
                  v94 = v49;
                  v95 = 2112;
                  v96 = v50;
                  v97 = 2112;
                  v98 = v52;
                  v99 = 2112;
                  v100 = v16;
                  _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", buf, 0x2Au);

                  v46 = v51;
                  v7 = v68;
                  v6 = v82;

                  v11 = v77;
                }

                objc_autoreleasePoolPop(v46);
              }

              v14 = context;

              v5 = v78;
            }

            else
            {
              v76 = v11;
              contexta = objc_autoreleasePoolPush();
              v40 = WeakRetained;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = HMFGetLogIdentifier();
                [v72[4] UUID];
                v81 = v6;
                v43 = v67 = v7;
                [v78 shortDescription];
                v45 = v44 = v14;
                *buf = 138544386;
                v94 = v42;
                v95 = 2112;
                v96 = v43;
                v97 = 2112;
                v98 = v45;
                v99 = 2112;
                v100 = v8;
                v101 = 2112;
                v102 = v44;
                _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with device credential key: %@, failed to parse response value %@:%@", buf, 0x34u);

                v14 = v44;
                v7 = v67;
                v6 = v81;
              }

              objc_autoreleasePoolPop(contexta);
              v11 = v76;
              v5 = v78;
            }
          }

          else
          {
            v32 = objc_autoreleasePoolPush();
            v33 = WeakRetained;
            v34 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              contextb = v32;
              v36 = v35 = v5;
              [v72[4] UUID];
              v37 = v75 = v11;
              [v35 shortDescription];
              v80 = v6;
              v39 = v38 = v7;
              *buf = 138544130;
              v94 = v36;
              v95 = 2112;
              v96 = v37;
              v97 = 2112;
              v98 = v39;
              v99 = 2112;
              v100 = v8;
              _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

              v7 = v38;
              v6 = v80;

              v11 = v75;
              v5 = v35;
              v32 = contextb;
            }

            objc_autoreleasePoolPop(v32);
          }
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          v25 = WeakRetained;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            [v72[4] UUID];
            v28 = v7;
            v30 = v29 = v5;
            v31 = [v29 shortDescription];
            *buf = 138544386;
            v94 = v27;
            v95 = 2112;
            v96 = v30;
            v97 = 2112;
            v98 = v31;
            v99 = 2112;
            v100 = v86;
            v101 = 2112;
            v102 = v4;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

            v5 = v29;
            v7 = v28;
            v6 = 0;
          }

          objc_autoreleasePoolPop(v24);
        }
      }

      v85 = [obj countByEnumeratingWithState:&v89 objects:v103 count:16];
    }

    while (v85);
  }

  else
  {
    v65 = 0;
  }

  if (v65 == [v72[5] count])
  {
    v60 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_48;
  }

  v57 = MEMORY[0x277D2C900];
  v58 = MEMORY[0x277CCA9B8];
  if (!v65)
  {
    v59 = 52;
LABEL_46:
    v61 = [v58 hmErrorWithCode:v59];
    goto LABEL_47;
  }

  v61 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
LABEL_47:
  v62 = v61;
  v60 = [v57 futureWithError:v61];

LABEL_48:
  v63 = *MEMORY[0x277D85DE8];

  return v60;
}

- (void)configureAccessories_HH2:(id)h2 withDeviceCredentialKey:(id)key ofType:(int64_t)type forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion
{
  v107 = *MEMORY[0x277D85DE8];
  h2Copy = h2;
  keyCopy = key;
  dCopy = d;
  userCopy = user;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (!home)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v39 = v38 = dCopy;
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v96 = v39;
      v97 = 2112;
      v98 = uUID;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, home is nil", buf, 0x16u);

      dCopy = v38;
    }

    objc_autoreleasePoolPop(v35);
    v41 = MEMORY[0x277CCA9B8];
    v42 = -1;
    goto LABEL_13;
  }

  if (![h2Copy count])
  {
    v43 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v47 = v46 = dCopy;
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v96 = v47;
      v97 = 2112;
      v98 = uUID2;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessories with device credential key, accessories count is 0", buf, 0x16u);

      dCopy = v46;
    }

    objc_autoreleasePoolPop(v43);
    v41 = MEMORY[0x277CCA9B8];
    v42 = 3;
LABEL_13:
    v49 = [v41 hmErrorWithCode:v42];
    completionCopy[2](completionCopy, v49);
    goto LABEL_20;
  }

  v79 = home;
  v21 = [h2Copy na_filter:&__block_literal_global_503];
  v81 = h2Copy;
  v22 = [h2Copy na_filter:&__block_literal_global_505];
  v23 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v25 = HMFGetOSLogHandle();
  v80 = userCopy;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [flowCopy UUID];
    v28 = v27 = dCopy;
    *buf = 138544642;
    v96 = v26;
    v97 = 2112;
    v98 = v28;
    v99 = 2112;
    v100 = v81;
    v101 = 2112;
    v102 = keyCopy;
    v103 = 2112;
    v104 = v21;
    v105 = 2112;
    v106 = v22;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessories with device credential key HH2. accessories: %@, deviceCredentialKey: %@, hapAccessories: %@, matterAccessories: %@", buf, 0x3Eu);

    dCopy = v27;
    userCopy = v80;
  }

  objc_autoreleasePoolPop(v23);
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_506;
  v90[3] = &unk_2786837D0;
  v90[4] = selfCopy3;
  v29 = keyCopy;
  v91 = v29;
  typeCopy = type;
  v30 = userCopy;
  v92 = v30;
  v31 = flowCopy;
  v93 = v31;
  v32 = [v22 na_map:v90];
  v33 = v32;
  v77 = v21;
  v78 = dCopy;
  v76 = v22;
  if (type)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v75 = v32;
    v50 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy3 writeRequestsWithAccessories:v21 home:v79 deviceCredentialKey:v29 user:v30 flow:v31];
    allObjects = [v50 allObjects];
    v52 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy3 performHAPWriteRequestsHH2:allObjects home:v79 flow:v31];

    v53 = [v50 count];
    if (v53 != [v21 count])
    {
      v54 = objc_autoreleasePoolPush();
      v55 = selfCopy3;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v73 = HMFGetLogIdentifier();
        uUID3 = [v31 UUID];
        v57 = [v21 count];
        v58 = v57 - [v50 count];
        v59 = [v21 count];
        *buf = 138544130;
        v96 = v73;
        v97 = 2112;
        v98 = uUID3;
        v99 = 2048;
        v100 = v58;
        v101 = 2048;
        v102 = v59;
        _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create a write request for a subset of the HAP accessories (%lu of the %lu HAP accessories)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v54);
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_508;
      v88[3] = &unk_2786837F8;
      v89 = v50;
      v60 = [v52 flatMap:v88];
    }

    v33 = v75;
    futureWithNoResult = v52;
  }

  v61 = [v33 arrayByAddingObject:futureWithNoResult];
  v62 = [MEMORY[0x277D2C900] combineAllFutures:v61];
  v63 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy3 workQueue];
  v65 = [v63 schedulerWithDispatchQueue:workQueue2];
  v66 = [v62 reschedule:v65];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_2_510;
  v86[3] = &unk_278683820;
  v67 = completionCopy;
  v87 = v67;
  [v66 addSuccessBlock:v86];
  v68 = completionCopy;
  v70 = v69 = v33;
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_3;
  v84[3] = &unk_278688DD0;
  v85 = v67;
  v71 = [v70 addFailureBlock:v84];

  completionCopy = v68;
  userCopy = v80;
  h2Copy = v81;
  dCopy = v78;
  home = v79;
  v49 = v77;
LABEL_20:

  v72 = *MEMORY[0x277D85DE8];
}

id __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_508(uint64_t a1)
{
  v1 = [*(a1 + 32) hmf_isEmpty];
  v2 = MEMORY[0x277D2C900];
  if (v1)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
  }
  v3 = ;
  v4 = [v2 futureWithError:v3];

  return v4;
}

void __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  (*(v1 + 16))(v1, v2);
}

- (void)configureAccessories_HH1:(id)h1 withDeviceCredentialKey:(id)key forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion
{
  v69 = *MEMORY[0x277D85DE8];
  h1Copy = h1;
  keyCopy = key;
  dCopy = d;
  userCopy = user;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (home)
  {
    if ([h1Copy count])
    {
      [(HMDHomeWalletKeyAccessoryManager *)self createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:h1Copy deviceCredentialKey:keyCopy user:userCopy deviceUUID:dCopy];
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138544130;
        v62 = v22;
        v63 = 2112;
        v64 = uUID;
        v65 = 2112;
        v66 = h1Copy;
        v67 = 2112;
        v68 = keyCopy;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessories with device credential key HH1 %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy writeRequestsWithAccessories:h1Copy home:home deviceCredentialKey:keyCopy user:userCopy flow:flowCopy];
      if ([v24 count])
      {
        v25 = [v24 count];
        if (v25 == [h1Copy count])
        {
          v47 = 0;
        }

        else
        {
          v47 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
        }

        allObjects = [v24 allObjects];
        dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
        accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
        dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
        [dataSource2 accessoryWriteRetryInterval];
        v48 = [home performWriteRequests:allObjects withRetries:accessoryWriteMaxRetryCount timeInterval:selfCopy loggingObject:flowCopy flow:?];

        objc_initWeak(buf, selfCopy);
        v41 = MEMORY[0x277D2C938];
        workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
        v43 = [v41 schedulerWithDispatchQueue:workQueue2];
        v44 = [v48 reschedule:v43];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __124__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH1_withDeviceCredentialKey_forDeviceWithUUID_user_flow_completion___block_invoke;
        v52[3] = &unk_2786837A8;
        objc_copyWeak(&v60, buf);
        v53 = flowCopy;
        v59 = completionCopy;
        v54 = dCopy;
        v55 = keyCopy;
        v56 = v24;
        v57 = userCopy;
        v36 = v47;
        v58 = v36;
        v45 = [v44 addCompletionBlock:v52];

        objc_destroyWeak(&v60);
        objc_destroyWeak(buf);
      }

      else
      {
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(completionCopy + 2))(completionCopy, v36);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543618;
        v62 = v34;
        v63 = 2112;
        v64 = uUID2;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessories with device credential key, accessories count is 0", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (*(completionCopy + 2))(completionCopy, v24);
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138543618;
      v62 = v29;
      v63 = 2112;
      v64 = uUID3;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, v24);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __124__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH1_withDeviceCredentialKey_forDeviceWithUUID_user_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v124 = *MEMORY[0x277D85DE8];
  v105 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];

    v10 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)v9 deviceCredentialKey];
    v11 = [v10 isEqual:*(a1 + 48)];

    if (v11)
    {
      if (v105)
      {
        v85 = v9;
        v86 = v5;
        v12 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)v9 accessoriesUUIDs];
        v87 = [v12 mutableCopy];

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v100 = a1;
        obj = *(a1 + 56);
        v104 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
        if (v104)
        {
          v88 = 0;
          v103 = *v110;
          v99 = v7;
          do
          {
            for (i = 0; i != v104; ++i)
            {
              if (*v110 != v103)
              {
                objc_enumerationMutation(obj);
              }

              v14 = [*(*(&v109 + 1) + 8 * i) characteristic];
              v15 = [v14 accessory];
              v108 = 0;
              v16 = [v105 hmd_valueOfCharacteristic:v14 error:&v108];
              v106 = v108;
              if (v16)
              {
                v17 = v16;
                objc_opt_class();
                v18 = objc_opt_isKindOfClass() & 1;
                if (v18)
                {
                  v19 = v17;
                }

                else
                {
                  v19 = 0;
                }

                v20 = v19;

                if (v18)
                {
                  v107 = 0;
                  v21 = [MEMORY[0x277CFEBD0] parsedFromData:v17 error:&v107];
                  v22 = v107;
                  v23 = v22;
                  v102 = v15;
                  if (v21)
                  {
                    v92 = v22;
                    v24 = [v21 deviceCredentialKeyResponse];
                    v25 = [v24 statusCode];

                    if (v25 && (![v25 value] || objc_msgSend(v25, "value") == 2))
                    {
                      v26 = objc_autoreleasePoolPush();
                      v27 = v7;
                      v28 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v29 = v95 = v16;
                        v30 = [*(v100 + 32) UUID];
                        [v102 shortDescription];
                        v31 = contexta = v26;
                        *buf = 138544130;
                        v114 = v29;
                        v115 = 2112;
                        v116 = v30;
                        v117 = 2112;
                        v118 = v31;
                        v119 = 2112;
                        v120 = v25;
                        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured with device credential key: %@ with status code: %@", buf, 0x2Au);

                        v26 = contexta;
                        v7 = v99;

                        v16 = v95;
                      }

                      objc_autoreleasePoolPop(v26);
                      ++v88;
                      v15 = v102;
                      v32 = [v102 uuid];
                      [v87 removeObject:v32];
                    }

                    else
                    {
                      v54 = objc_autoreleasePoolPush();
                      v55 = v7;
                      v56 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        HMFGetLogIdentifier();
                        v57 = v98 = v16;
                        v58 = [*(v100 + 32) UUID];
                        [v102 shortDescription];
                        v59 = contextb = v54;
                        *buf = 138544130;
                        v114 = v57;
                        v115 = 2112;
                        v116 = v58;
                        v117 = 2112;
                        v118 = v59;
                        v119 = 2112;
                        v120 = v25;
                        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", buf, 0x2Au);

                        v54 = contextb;
                        v7 = v99;

                        v16 = v98;
                      }

                      objc_autoreleasePoolPop(v54);
                      v15 = v102;
                    }

                    v23 = v92;
                  }

                  else
                  {
                    v97 = v16;
                    context = objc_autoreleasePoolPush();
                    v48 = v7;
                    v49 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                    {
                      HMFGetLogIdentifier();
                      v50 = v94 = v20;
                      v51 = [*(v100 + 32) UUID];
                      [v102 shortDescription];
                      v53 = v52 = v23;
                      *buf = 138544386;
                      v114 = v50;
                      v115 = 2112;
                      v116 = v51;
                      v117 = 2112;
                      v118 = v53;
                      v119 = 2112;
                      v120 = v17;
                      v121 = 2112;
                      v122 = v52;
                      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with device credential key: %@, failed to parse response value %@:%@", buf, 0x34u);

                      v23 = v52;
                      v7 = v99;

                      v20 = v94;
                    }

                    objc_autoreleasePoolPop(context);
                    v15 = v102;
                    v16 = v97;
                  }
                }

                else
                {
                  v40 = objc_autoreleasePoolPush();
                  v41 = v7;
                  v42 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v93 = v20;
                    v44 = v43 = v15;
                    v45 = [*(v100 + 32) UUID];
                    [v43 shortDescription];
                    v96 = v40;
                    v47 = v46 = v16;
                    *buf = 138544130;
                    v114 = v44;
                    v115 = 2112;
                    v116 = v45;
                    v117 = 2112;
                    v118 = v47;
                    v119 = 2112;
                    v120 = v17;
                    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

                    v16 = v46;
                    v40 = v96;

                    v7 = v99;
                    v15 = v43;
                    v20 = v93;
                  }

                  objc_autoreleasePoolPop(v40);
                }
              }

              else
              {
                v33 = objc_autoreleasePoolPush();
                v34 = v7;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = HMFGetLogIdentifier();
                  [*(v100 + 32) UUID];
                  v38 = v37 = v15;
                  v39 = [v37 shortDescription];
                  *buf = 138544386;
                  v114 = v36;
                  v115 = 2112;
                  v116 = v38;
                  v117 = 2112;
                  v118 = v39;
                  v119 = 2112;
                  v120 = v105;
                  v121 = 2112;
                  v122 = v14;
                  _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

                  v7 = v99;
                  v15 = v37;
                  v16 = 0;
                }

                objc_autoreleasePoolPop(v33);
              }
            }

            v104 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
          }

          while (v104);
        }

        else
        {
          v88 = 0;
        }

        v79 = v87;
        if ([v87 count])
        {
          v81 = v100;
          v9 = [[HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc] initWithDeviceCredentialKey:*(v100 + 48) accessoriesUUIDs:v87 user:*(v100 + 64)];
          v5 = v86;
        }

        else
        {
          v9 = 0;
          v5 = v86;
          v81 = v100;
        }

        v82 = [v7 pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
        [v82 setObject:v9 forKeyedSubscript:*(v81 + 40)];

        if (v88 == [*(v81 + 56) count])
        {
          (*(*(v81 + 80) + 16))(*(v81 + 80), *(v81 + 72));
        }

        else
        {
          v83 = *(v81 + 80);
          if (v88)
          {
            [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
          }

          else
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
          }
          v84 = ;
          (*(v83 + 16))(v83, v84);
        }

        goto LABEL_49;
      }

      v74 = objc_autoreleasePoolPush();
      v75 = v7;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = HMFGetLogIdentifier();
        v78 = [*(a1 + 32) UUID];
        *buf = 138543874;
        v114 = v77;
        v115 = 2112;
        v116 = v78;
        v117 = 2112;
        v118 = v5;
        _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, write response is nil: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v74);
      v71 = *(a1 + 80);
      v72 = MEMORY[0x277CCA9B8];
      v73 = -1;
    }

    else
    {
      v65 = objc_autoreleasePoolPush();
      v66 = v7;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = HMFGetLogIdentifier();
        v69 = [*(a1 + 32) UUID];
        v70 = *(a1 + 40);
        *buf = 138543874;
        v114 = v68;
        v115 = 2112;
        v116 = v69;
        v117 = 2112;
        v118 = v70;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Operation cancelled because device credential key was updated for deviceUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v65);
      v71 = *(a1 + 80);
      v72 = MEMORY[0x277CCA9B8];
      v73 = 23;
    }

    v79 = [v72 hmErrorWithCode:v73];
    (*(v71 + 16))(v71, v79);
LABEL_49:

    goto LABEL_50;
  }

  v60 = objc_autoreleasePoolPush();
  v61 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v62 = HMFGetLogIdentifier();
    v63 = [*(a1 + 32) UUID];
    *buf = 138543618;
    v114 = v62;
    v115 = 2112;
    v116 = v63;
    _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key object got invalidated", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v60);
  v64 = *(a1 + 80);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
  (*(v64 + 16))(v64, v9);
LABEL_50:

  v80 = *MEMORY[0x277D85DE8];
}

- (void)configureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion
{
  v56 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  keyCopy = key;
  dCopy = d;
  userCopy = user;
  flowCopy = flow;
  completionCopy = completion;
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v21 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDHomeWalletKeyAccessoryManagerDisableAddingDeviceKeys"];
  bOOLValue = [v21 BOOLValue];

  if (bOOLValue)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v49 = v26;
      v50 = 2112;
      v51 = uUID;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not adding device credential key because HMDHomeWalletKeyAccessoryManagerDisableAddingDeviceKeys is set", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = keyCopy;
  }

  else
  {
    typeCopy = type;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __127__HMDHomeWalletKeyAccessoryManager_configureAccessories_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke;
    v45[3] = &unk_278683520;
    v29 = userCopy;
    v46 = v29;
    v30 = flowCopy;
    v47 = v30;
    v31 = [accessoriesCopy na_filter:v45];

    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v35 = v42 = dCopy;
      [v30 UUID];
      v36 = v41 = userCopy;
      [v29 uuid];
      v40 = flowCopy;
      v38 = v37 = completionCopy;
      *buf = 138544130;
      v49 = v35;
      v50 = 2112;
      v51 = v36;
      v52 = 2112;
      v53 = v38;
      v54 = 2112;
      v55 = v31;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessories supported for user: %@, accessories: %@", buf, 0x2Au);

      completionCopy = v37;
      flowCopy = v40;

      userCopy = v41;
      dCopy = v42;
    }

    objc_autoreleasePoolPop(v32);
    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterTTU", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v28 = keyCopy;
      [(HMDHomeWalletKeyAccessoryManager *)selfCopy2 configureAccessories_HH2:v31 withDeviceCredentialKey:keyCopy ofType:typeCopy forDeviceWithUUID:dCopy user:v29 flow:v30 completion:completionCopy];
    }

    else
    {
      v28 = keyCopy;
      [(HMDHomeWalletKeyAccessoryManager *)selfCopy2 configureAccessories_HH1:v31 withDeviceCredentialKey:keyCopy forDeviceWithUUID:dCopy user:v29 flow:v30 completion:completionCopy];
    }

    accessoriesCopy = v31;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForNotificationsWithReason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = reasonCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering for notifications with reason: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  notificationCenter = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy name:@"HMDAccessoryConnectedNotification" object:0];

  notificationCenter2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter2 removeObserver:selfCopy name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  notificationCenter3 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  [notificationCenter3 removeObserver:selfCopy name:@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification" object:nfcReaderKeyManager];

  notificationCenter4 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter4 removeObserver:selfCopy name:@"HMDNotificationHomeAddedAccessory" object:home];

  notificationCenter5 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter5 removeObserver:selfCopy name:@"HMDHomeUserAddedNotification" object:home];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handlePendingDeviceCredentialKeysSyncForAccessories:(id)accessories withReason:(id)reason
{
  v46 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v30 = accessoriesCopy;
  if ([accessoriesCopy count])
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    currentUser = [home currentUser];
    isOwner = [currentUser isOwner];

    if (isOwner)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v15;
        v44 = 2112;
        v45 = reasonCopy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling pending device credential operations with reason: %@", buf, 0x16u);
      }

      v28 = reasonCopy;

      objc_autoreleasePoolPop(v12);
      v29 = selfCopy;
      pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = [(HMDHomeWalletKeyAccessoryManager *)selfCopy pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
      v17 = [pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID copy];

      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v18 = v17;
      v32 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v32)
      {
        v31 = *v38;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v18);
            }

            v20 = *(*(&v37 + 1) + 8 * i);
            v21 = [v18 objectForKeyedSubscript:v20];
            user = [v21 user];
            if (user)
            {
              v35[0] = MEMORY[0x277D85DD0];
              v35[1] = 3221225472;
              v35[2] = __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke;
              v35[3] = &unk_2786830C8;
              v23 = v21;
              v36 = v23;
              v24 = [v30 na_filter:v35];
              deviceCredentialKey = [v23 deviceCredentialKey];
              untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
              v33[0] = MEMORY[0x277D85DD0];
              v33[1] = 3221225472;
              v33[2] = __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke_2;
              v33[3] = &unk_27868A1D8;
              v33[4] = v29;
              v34 = v23;
              [(HMDHomeWalletKeyAccessoryManager *)v29 configureAccessories:v24 withDeviceCredentialKey:deviceCredentialKey ofType:0 forDeviceWithUUID:v20 user:user flow:untrackedPlaceholderFlow completion:v33];
            }
          }

          v32 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v32);
      }

      reasonCopy = v28;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessoriesUUIDs];
  v5 = [v3 uuid];

  v6 = [v4 containsObject:v5];
  return v6;
}

void __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "%{public}@Device credential key pending operation failed %@:%@ ";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v16, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@Device credential key pending operation succesed %@ ";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handlePendingDeviceCredentialKeysSyncForAccessory:(id)accessory withReason:(id)reason
{
  v11[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([accessoryCopy supportsWalletKey])
  {
    v11[0] = accessoryCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(HMDHomeWalletKeyAccessoryManager *)self handlePendingDeviceCredentialKeysSyncForAccessories:v9 withReason:reasonCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForNotificationsWithReason:(id)reason
{
  v33 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = reasonCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering for notifications with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  notificationCenter = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:0];

  notificationCenter2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleWalletKeySupportDidChange_ name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  notificationCenter3 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleHomeNFCReaderKeyKeychainItemAvailableNotification_ name:@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification" object:nfcReaderKeyManager];

  notificationCenter4 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handleHomeAddedAccessoryNotification_ name:@"HMDNotificationHomeAddedAccessory" object:home];

  notificationCenter5 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleHomeUserAddedNotification_ name:@"HMDHomeUserAddedNotification" object:home];

  [(HMDHomeWalletKeyAccessoryManager *)selfCopy configureNFCReaderKeyForAllAccessoriesWithReason:@"Registering for notifications"];
  accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];
  [(HMDHomeWalletKeyAccessoryManager *)selfCopy handlePendingDeviceCredentialKeysSyncForAccessories:accessoriesWithWalletKeySupport withReason:@"notifications registered"];

  delegate = [(HMDHomeWalletKeyAccessoryManager *)selfCopy delegate];

  if (delegate)
  {
    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = uUID;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Fetching wallet key color after registering for notifications", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__HMDHomeWalletKeyAccessoryManager_registerForNotificationsWithReason___block_invoke;
    v27[3] = &unk_2786898B0;
    v27[4] = v21;
    v28 = internalOnlyInitializer;
    v25 = internalOnlyInitializer;
    [(HMDHomeWalletKeyAccessoryManager *)v21 fetchWalletKeyColorWithFlow:v25 completion:v27];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __71__HMDHomeWalletKeyAccessoryManager_registerForNotificationsWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      [v5 integerValue];
      v13 = HMHomeWalletKeyColorAsString();
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully fetched wallet key color when registered for notifications %@", &v16, 0x20u);

LABEL_6:
    }
  }

  else if (v10)
  {
    v11 = HMFGetLogIdentifier();
    v14 = [*(a1 + 40) UUID];
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not fetch wallet key color when registered for notifications %@", &v16, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)configureNotificationsWithReason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDHomeWalletKeyAccessoryManager *)self isCurrentDevicePrimaryResident])
  {
    if ([(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
    {
      goto LABEL_8;
    }

    hasCharacteristicNotificationRegistrations = 1;
  }

  else
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    hasCharacteristicNotificationRegistrations = [home hasCharacteristicNotificationRegistrations];

    if (hasCharacteristicNotificationRegistrations == [(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
    {
      goto LABEL_8;
    }
  }

  [(HMDHomeWalletKeyAccessoryManager *)self setCanConfigureAccessories:hasCharacteristicNotificationRegistrations];
  if ([(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
  {
    [(HMDHomeWalletKeyAccessoryManager *)self registerForNotificationsWithReason:reasonCopy];
  }

  else
  {
    [(HMDHomeWalletKeyAccessoryManager *)self unregisterForNotificationsWithReason:reasonCopy];
  }

LABEL_8:
}

- (id)configureReaderKey:(id)key onACWGAccessory:(id)accessory flow:(id)flow
{
  v66 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  accessoryCopy = accessory;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    *buf = 138543874;
    v59 = v14;
    v60 = 2112;
    v61 = uUID;
    v62 = 2112;
    v63 = uuid;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring reader key on ACWG accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  home = [accessoryCopy home];
  if (home)
  {
    v18 = objc_opt_new();
    privateKey = [keyCopy privateKey];
    [v18 setReaderPrivateKey:privateKey];

    publicKeyExternalRepresentation = [keyCopy publicKeyExternalRepresentation];
    [v18 setReaderPublicKeyExternalRepresentation:publicKeyExternalRepresentation];

    publicKey = [keyCopy publicKey];
    v22 = [HMDNIST256Utilities identifier16BytesForKey:publicKey];
    [v18 setReaderGroupIdentifier:v22];

    if ([accessoryCopy supportsACWGUWB])
    {
      acwgGroupResolvingKey = [home acwgGroupResolvingKey];
      [v18 setGroupResolvingKey:acwgGroupResolvingKey];
    }

    readerPrivateKey = [v18 readerPrivateKey];
    if (readerPrivateKey)
    {
      v25 = readerPrivateKey;
      readerPublicKeyExternalRepresentation = [v18 readerPublicKeyExternalRepresentation];
      if (readerPublicKeyExternalRepresentation)
      {
        v27 = readerPublicKeyExternalRepresentation;
        readerGroupIdentifier = [v18 readerGroupIdentifier];

        if (readerGroupIdentifier)
        {
          v29 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
          naFuture = [v29 naFuture];
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __76__HMDHomeWalletKeyAccessoryManager_configureReaderKey_onACWGAccessory_flow___block_invoke;
          v53[3] = &unk_278683770;
          v53[4] = selfCopy;
          v54 = flowCopy;
          v18 = v18;
          v55 = v18;
          v56 = home;
          v57 = accessoryCopy;
          v31 = [naFuture flatMap:v53];

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      [v18 readerPublicKeyExternalRepresentation];
      v44 = v52 = flowCopy;
      [v18 readerGroupIdentifier];
      v51 = v39;
      v45 = accessoryCopy;
      v46 = home;
      v48 = v47 = keyCopy;
      *buf = 138544130;
      v59 = v42;
      v60 = 2112;
      v61 = uUID2;
      v62 = 2112;
      v63 = v44;
      v64 = 2112;
      v65 = v48;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] User is missing either readerPrivateKey or readerPublicKey or readerGroupIdentifier. readerPublicKeyExternalRepresentation: %@, readerGroupIdentifier: %@", buf, 0x2Au);

      keyCopy = v47;
      home = v46;
      accessoryCopy = v45;
      v39 = v51;

      flowCopy = v52;
    }

    objc_autoreleasePoolPop(v39);
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138543618;
      v59 = v35;
      v60 = 2112;
      v61 = uUID3;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home was nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    futureWithNoResult = [v37 futureWithError:v18];
  }

  v31 = futureWithNoResult;
LABEL_18:

  v49 = *MEMORY[0x277D85DE8];

  return v31;
}

id __76__HMDHomeWalletKeyAccessoryManager_configureReaderKey_onACWGAccessory_flow___block_invoke(id *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v24 = [a1[6] readerPublicKeyExternalRepresentation];
    v9 = [v24 hmf_hexadecimalRepresentation];
    v10 = [a1[6] readerGroupIdentifier];
    [v10 hmf_hexadecimalRepresentation];
    v11 = v26 = v4;
    [a1[6] groupResolvingKey];
    v12 = v25 = v3;
    v13 = [v12 hmf_hexadecimalRepresentation];
    *buf = 138544386;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v11;
    v40 = 2112;
    v41 = v13;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting reader config on lock. RPK: %@, RGI: %@, GRK: %@", buf, 0x34u);

    v3 = v25;
    v4 = v26;
  }

  objc_autoreleasePoolPop(v4);
  v14 = [v3 setOrReadReaderConfig:a1[6] flow:a1[5]];
  v15 = [v14 naFuture];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __76__HMDHomeWalletKeyAccessoryManager_configureReaderKey_onACWGAccessory_flow___block_invoke_480;
  v28[3] = &unk_278683748;
  v16 = a1[6];
  v27 = *(a1 + 2);
  v17 = v27.i64[1];
  v18 = a1[7];
  v19.i64[0] = v16;
  v19.i64[1] = v18;
  v20 = vzip2q_s64(v27, v19);
  v19.i64[1] = v27.i64[0];
  v30 = v20;
  v29 = v19;
  v31 = a1[8];
  v21 = [v15 flatMap:v28];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __76__HMDHomeWalletKeyAccessoryManager_configureReaderKey_onACWGAccessory_flow___block_invoke_480(id *a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
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

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v3 readerPublicKeyExternalRepresentation];
  v7 = [a1[4] readerPublicKeyExternalRepresentation];
  v8 = HMFEqualObjects();

  if (v8 && ([v3 readerGroupIdentifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[4], "readerGroupIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
  {
    v12 = [v3 groupResolvingKey];
    v13 = [a1[4] groupResolvingKey];
    v14 = HMFEqualObjects();

    if (v14)
    {
LABEL_8:
      v15 = [MEMORY[0x277D2C900] futureWithNoResult];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v16 = objc_autoreleasePoolPush();
  v17 = a1[5];
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [a1[6] UUID];
    v37 = [v3 readerPublicKeyExternalRepresentation];
    v21 = [v37 hmf_hexadecimalRepresentation];
    v36 = [v3 readerGroupIdentifier];
    v22 = [v36 hmf_hexadecimalRepresentation];
    [v3 groupResolvingKey];
    v23 = v38 = v16;
    v24 = [v23 hmf_hexadecimalRepresentation];
    *buf = 138544386;
    v47 = v19;
    v48 = 2112;
    v49 = v20;
    v50 = 2112;
    v51 = v21;
    v52 = 2112;
    v53 = v22;
    v54 = 2112;
    v55 = v24;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found existing reader config on lock. RPK: %@, RGI: %@, GRK: %@", buf, 0x34u);

    v16 = v38;
  }

  objc_autoreleasePoolPop(v16);
  v25 = objc_alloc_init(MEMORY[0x277D2C900]);
  v26 = [a1[7] backingStore];
  v27 = [v26 context];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __76__HMDHomeWalletKeyAccessoryManager_configureReaderKey_onACWGAccessory_flow___block_invoke_482;
  v39[3] = &unk_278683598;
  v28 = a1[8];
  v29 = a1[5];
  v30 = a1[6];
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v31 = v25;
  v43 = v31;
  v44 = v3;
  v45 = v27;
  v32 = v27;
  [v32 performBlock:v39];
  v33 = v45;
  v15 = v31;

LABEL_13:
  v34 = *MEMORY[0x277D85DE8];

  return v15;
}

void __76__HMDHomeWalletKeyAccessoryManager_configureReaderKey_onACWGAccessory_flow___block_invoke_482(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHAPAccessoryWithModelID:v2];

  if (v3)
  {
    v4 = [*(a1 + 64) readerPublicKeyExternalRepresentation];
    [v3 setPreexistingMatCredRPK:v4];

    v5 = [*(a1 + 64) readerGroupIdentifier];
    [v3 setPreexistingMatCredRGI:v5];

    v6 = [*(a1 + 64) groupResolvingKey];
    [v3 setPreexistingMatCredGRK:v6];

    v7 = *(a1 + 72);
    v28 = 0;
    v8 = [v7 save:&v28];
    v9 = v28;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 48) UUID];
        *buf = 138543618;
        v30 = v14;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully saved preexisting reader config for ACWG", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [*(a1 + 56) finishWithNoResult];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 48) UUID];
        *buf = 138543618;
        v30 = v23;
        v31 = 2112;
        v32 = v24;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to save preexisting reader config for ACWG", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v25 = *(a1 + 56);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v25 finishWithError:v26];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 48) UUID];
      v21 = [*(a1 + 32) uuid];
      *buf = 138543874;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to save supportsACWGUWB because could not find mkfHAPAccessory with UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = *(a1 + 56);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v22 finishWithError:v9];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)configureAccessoryWithNfcReaderKey:(id)key accessory:(id)accessory flow:(id)flow completion:(id)completion
{
  v143 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  accessoryCopy = accessory;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    *buf = 138544130;
    v134 = v15;
    v135 = 2112;
    v136 = uUID;
    v137 = 2112;
    v138 = keyCopy;
    v139 = 2112;
    v140 = uuid;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] configureAccessoryWithNfcReaderKey: %@, accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (!home)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v134 = v31;
      v135 = 2112;
      v136 = uUID2;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with nfc reader key, home is nil", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    uUID3 = [flowCopy UUID];
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138544130;
    v134 = v23;
    v135 = 2112;
    v136 = uUID3;
    v137 = 2112;
    v138 = shortDescription;
    v139 = 2112;
    v140 = keyCopy;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessory with nfc reader key %@:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
  home2 = [accessoryCopy home];
  uuid2 = [home2 uuid];
  uuid3 = [(__CFString *)home uuid];
  v29 = [uuid2 isEqual:uuid3];

  if ((v29 & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v20;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      shortDescription2 = [accessoryCopy shortDescription];
      home3 = [accessoryCopy home];
      *buf = 138544386;
      v134 = v34;
      v135 = 2112;
      v136 = uUID4;
      v137 = 2112;
      v138 = shortDescription2;
      v139 = 2112;
      v140 = home3;
      v141 = 2112;
      v142 = home;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
    }

LABEL_12:

    objc_autoreleasePoolPop(v19);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    completionCopy[2](completionCopy, v33);

    goto LABEL_42;
  }

  if ([accessoryCopy supportsCHIP])
  {
    if ([accessoryCopy supportsACWGProvisioning])
    {
      v30 = [(HMDHomeWalletKeyAccessoryManager *)v20 configureReaderKey:keyCopy onACWGAccessory:accessoryCopy flow:flowCopy];
    }

    else
    {
      v59 = objc_autoreleasePoolPush();
      v60 = v20;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        uUID5 = [flowCopy UUID];
        *buf = 138543618;
        v134 = v62;
        v135 = 2112;
        v136 = uUID5;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for Matter accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v59);
      v64 = objc_alloc_init(MEMORY[0x277CFEC28]);
      v65 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
      [v64 setType:v65];

      privateKey = [(__CFString *)keyCopy privateKey];
      [v64 setKey:privateKey];

      nfcReaderIdentifier = [accessoryCopy nfcReaderIdentifier];
      [v64 setKeyIdentifier:nfcReaderIdentifier];

      nfcReaderIdentifier2 = [accessoryCopy nfcReaderIdentifier];
      [v64 setReaderIdentifier:nfcReaderIdentifier2];

      v108 = objc_alloc_init(MEMORY[0x277CFEB90]);
      [v108 setReaderKey:v64];
      uuid4 = [accessoryCopy uuid];
      [(HMDHomeWalletKeyAccessoryManager *)v60 startHomeWalletKeyAddForAccessoryUUID:uuid4 keyType:0 expectedCount:1];

      v131 = 0;
      contexta = [v108 serializeWithError:&v131];
      v103 = v131;
      if (contexta)
      {
        v70 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
        v128[0] = MEMORY[0x277D85DD0];
        v128[1] = 3221225472;
        v128[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke;
        v128[3] = &unk_27868A6D8;
        v129 = contexta;
        v71 = flowCopy;
        v130 = v71;
        v72 = [v70 then:v128];
        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_2;
        v123[3] = &unk_2786836F8;
        v123[4] = v60;
        v124 = v71;
        v125 = keyCopy;
        v126 = accessoryCopy;
        v127 = completionCopy;
        v120[0] = MEMORY[0x277D85DD0];
        v120[1] = 3221225472;
        v120[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_477;
        v120[3] = &unk_278683720;
        v120[4] = v60;
        v121 = v124;
        v122 = v127;
        v73 = [v72 then:v123 orRecover:v120];

        v74 = v129;
      }

      else
      {
        v86 = objc_autoreleasePoolPush();
        v87 = v60;
        v88 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          v89 = HMFGetLogIdentifier();
          uUID6 = [flowCopy UUID];
          shortDescription3 = [accessoryCopy shortDescription];
          *buf = 138544386;
          v134 = v89;
          v135 = 2112;
          v136 = uUID6;
          v137 = 2112;
          v138 = shortDescription3;
          v139 = 2112;
          v140 = 0;
          v141 = 2112;
          v142 = v103;
          _os_log_impl(&dword_229538000, v88, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to encode matter credential %@:%@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v86);
        v74 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1002];
        completionCopy[2](completionCopy, v74);
      }
    }
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = v20;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      uUID7 = [flowCopy UUID];
      *buf = 138543618;
      v134 = v41;
      v135 = 2112;
      v136 = uUID7;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for HAP accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v43 = [accessoryCopy findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
    v107 = v43;
    if (v43)
    {
      v44 = [(__CFString *)v43 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
      if (v44)
      {
        v45 = objc_alloc_init(MEMORY[0x277CFEBF8]);
        privateKey2 = [(__CFString *)keyCopy privateKey];
        [v45 setKey:privateKey2];

        v47 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
        [v45 setType:v47];

        nfcReaderIdentifier3 = [accessoryCopy nfcReaderIdentifier];
        [v45 setReaderIdentifier:nfcReaderIdentifier3];

        context = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:2];
        v102 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:context issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:0 deviceCredentialKeyResponse:0 readerKeyRequest:v45 readerKeyResponse:0];
        v119 = 0;
        v101 = [v102 serializeWithError:&v119];
        v100 = v119;
        if (v101)
        {
          v49 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v44 value:v101 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
          v132 = v49;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
          dataSource = [(HMDHomeWalletKeyAccessoryManager *)v39 dataSource];
          accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
          dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)v39 dataSource];
          [dataSource2 accessoryWriteRetryInterval];
          v98 = [(__CFString *)home performWriteRequests:v50 withRetries:accessoryWriteMaxRetryCount timeInterval:v39 loggingObject:flowCopy flow:?];

          objc_initWeak(buf, v39);
          objc_initWeak(&location, accessoryCopy);
          v54 = MEMORY[0x277D2C938];
          workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)v39 workQueue];
          v56 = [v54 schedulerWithDispatchQueue:workQueue2];
          v57 = [v98 reschedule:v56];
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_478;
          v112[3] = &unk_2786836D0;
          objc_copyWeak(&v116, buf);
          objc_copyWeak(&v117, &location);
          v113 = flowCopy;
          v115 = completionCopy;
          v114 = v44;
          v58 = [v57 addCompletionBlock:v112];

          objc_destroyWeak(&v117);
          objc_destroyWeak(&v116);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);
        }

        else
        {
          v99 = objc_autoreleasePoolPush();
          v92 = v39;
          v93 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            v94 = HMFGetLogIdentifier();
            uUID8 = [flowCopy UUID];
            shortDescription4 = [accessoryCopy shortDescription];
            *buf = 138544386;
            v134 = v94;
            v135 = 2112;
            v136 = uUID8;
            v137 = 2112;
            v138 = shortDescription4;
            v139 = 2112;
            v140 = 0;
            v141 = 2112;
            v142 = v100;
            _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v99);
          v49 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          completionCopy[2](completionCopy, v49);
        }
      }

      else
      {
        contextb = objc_autoreleasePoolPush();
        v81 = v39;
        v82 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v83 = HMFGetLogIdentifier();
          uUID9 = [flowCopy UUID];
          shortDescription5 = [accessoryCopy shortDescription];
          *buf = 138544386;
          v134 = v83;
          v135 = 2112;
          v136 = uUID9;
          v137 = 2112;
          v138 = shortDescription5;
          v139 = 2112;
          v140 = v107;
          v141 = 2112;
          v142 = @"00000264-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(contextb);
        v45 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        completionCopy[2](completionCopy, v45);
      }
    }

    else
    {
      v75 = objc_autoreleasePoolPush();
      v76 = v39;
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v78 = HMFGetLogIdentifier();
        uUID10 = [flowCopy UUID];
        shortDescription6 = [accessoryCopy shortDescription];
        *buf = 138544130;
        v134 = v78;
        v135 = 2112;
        v136 = uUID10;
        v137 = 2112;
        v138 = shortDescription6;
        v139 = 2112;
        v140 = @"00000266-0000-1000-8000-0026BB765291";
        _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, it doesn't support nfc access service %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v75);
      v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      completionCopy[2](completionCopy, v44);
    }
  }

LABEL_42:

  v97 = *MEMORY[0x277D85DE8];
}

uint64_t __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addOrUpdateReaderKeyData:*(a1 + 32) flow:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_2(v7);
  }
}

uint64_t __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  if (v4 && (v5 = v4, [v3 status], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", &unk_283E74810), v6, v5, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) uuid];
      v27 = 138544130;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with NFC reader key: %@, accessory: %@", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 64) + 16))();
    v15 = *(a1 + 32);
    v16 = [*(a1 + 56) uuid];
    [v15 updateHomeWalletKeyAddForAccessoryUUID:v16 keyType:0];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 40) UUID];
      v22 = [*(a1 + 56) shortDescription];
      v23 = [v3 status];
      v27 = 138544130;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@ with status code: %@", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v24 = *(a1 + 64);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v24 + 16))(v24, v16);
  }

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_477(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != *MEMORY[0x277D17AA8])
  {

    goto LABEL_7;
  }

  v6 = [v3 code];

  if (v6 != 8)
  {
LABEL_7:
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to configure NFC reader key with error: %@", &v16, 0x20u);
    }

    goto LABEL_9;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) UUID];
    v16 = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Ignoring duplicate error while adding Reader key", &v16, 0x16u);
  }

LABEL_9:

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

void __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_478(uint64_t a1, void *a2, void *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = v8;
  if (WeakRetained)
  {
    if (v5)
    {
      v10 = *(a1 + 40);
      v87 = 0;
      v11 = [v5 hmd_valueOfCharacteristic:v10 error:&v87];
      v12 = v87;
      if (!v11)
      {
        v45 = objc_autoreleasePoolPush();
        v46 = WeakRetained;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v48 = v81 = WeakRetained;
          [*(a1 + 32) UUID];
          v49 = v5;
          v50 = v9;
          v51 = v85 = v6;
          [v9 shortDescription];
          v53 = v52 = v45;
          v54 = *(a1 + 40);
          *buf = 138544386;
          v89 = v48;
          v90 = 2112;
          v91 = v51;
          v92 = 2112;
          v93 = v53;
          v94 = 2112;
          v95 = v49;
          v96 = 2112;
          v97 = v54;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

          v45 = v52;
          v6 = v85;
          v9 = v50;
          v5 = v49;
          v11 = 0;

          WeakRetained = v81;
        }

        objc_autoreleasePoolPop(v45);
        (*(*(a1 + 48) + 16))();
        goto LABEL_32;
      }

      v84 = v6;
      v13 = v11;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass() & 1;
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (!v14)
      {
        v82 = v16;
        v55 = objc_autoreleasePoolPush();
        v56 = WeakRetained;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v58 = v74 = v56;
          [*(a1 + 32) UUID];
          v59 = v78 = v11;
          [v9 shortDescription];
          v60 = v76 = v55;
          *buf = 138544130;
          v89 = v58;
          v90 = 2112;
          v91 = v59;
          v92 = 2112;
          v93 = v13;
          v94 = 2112;
          v95 = v60;
          _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

          v55 = v76;
          v11 = v78;

          v56 = v74;
        }

        objc_autoreleasePoolPop(v55);
        v61 = *(a1 + 48);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v61 + 16))(v61, v19);
        v16 = v82;
        v6 = v84;
        goto LABEL_31;
      }

      v86 = 0;
      v17 = [MEMORY[0x277CFEBD0] parsedFromData:v13 error:&v86];
      v18 = v86;
      v19 = v18;
      v75 = v17;
      if (v17)
      {
        v20 = [v17 readerKeyResponse];
        v21 = [v20 statusCode];

        if (v21 && ![v21 value])
        {
          (*(*(a1 + 48) + 16))();
          goto LABEL_30;
        }

        v73 = v19;
        v80 = v16;
        v22 = objc_autoreleasePoolPush();
        v23 = WeakRetained;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v25 = v69 = v23;
          [*(a1 + 32) UUID];
          v26 = v77 = v11;
          [v9 shortDescription];
          v27 = v71 = v22;
          *buf = 138544130;
          v89 = v25;
          v90 = 2112;
          v91 = v26;
          v92 = 2112;
          v93 = v27;
          v94 = 2112;
          v95 = v21;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@ with status code: %@", buf, 0x2Au);

          v22 = v71;
          v11 = v77;

          v23 = v69;
        }

        objc_autoreleasePoolPop(v22);
        v28 = *(a1 + 48);
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        (*(v28 + 16))(v28, v29);

        v16 = v80;
      }

      else
      {
        v73 = v18;
        v62 = objc_autoreleasePoolPush();
        v72 = WeakRetained;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v64 = v79 = v11;
          [*(a1 + 32) UUID];
          v65 = v70 = v62;
          [v9 shortDescription];
          v66 = v83 = v16;
          *buf = 138544386;
          v89 = v64;
          v90 = 2112;
          v91 = v65;
          v92 = 2112;
          v93 = v66;
          v94 = 2112;
          v95 = v13;
          v96 = 2112;
          v97 = v73;
          _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, failed to parse response value %@:%@", buf, 0x34u);

          v16 = v83;
          v62 = v70;

          v11 = v79;
        }

        objc_autoreleasePoolPop(v62);
        v67 = *(a1 + 48);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v67 + 16))(v67, v21);
      }

      v19 = v73;
LABEL_30:

      v6 = v84;
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    v36 = v8;
    v37 = v6;
    v38 = objc_autoreleasePoolPush();
    v39 = WeakRetained;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      v42 = [*(a1 + 32) UUID];
      v43 = [v36 shortDescription];
      *buf = 138544130;
      v89 = v41;
      v90 = 2112;
      v91 = v42;
      v92 = 2112;
      v93 = v43;
      v94 = 2112;
      v95 = v37;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, write response is nil: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v38);
    v44 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v44 + 16))(v44, v12);
    v6 = v37;
    v9 = v36;
    v5 = 0;
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [*(a1 + 32) UUID];
      v34 = [v9 shortDescription];
      *buf = 138543874;
      v89 = v32;
      v90 = 2112;
      v91 = v33;
      v92 = 2112;
      v93 = v34;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v35 + 16))(v35, v12);
  }

LABEL_33:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)removeNfcReaderKeyWithIdentifier:(id)identifier accessory:(id)accessory flow:(id)flow completion:(id)completion
{
  v94 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accessoryCopy = accessory;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (home)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      shortDescription = [accessoryCopy shortDescription];
      *buf = 138544130;
      v85 = v18;
      v86 = 2112;
      v87 = uUID;
      v88 = 2112;
      v89 = shortDescription;
      v90 = 2112;
      v91 = identifierCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing nfc reader key with identifier from accessory %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    home2 = [accessoryCopy home];
    uuid = [home2 uuid];
    uuid2 = [(__CFString *)home uuid];
    v24 = [uuid isEqual:uuid2];

    if (v24)
    {
      v25 = [accessoryCopy findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
      v26 = v25;
      if (v25)
      {
        v27 = [(__CFString *)v25 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
        if (v27)
        {
          context = objc_alloc_init(MEMORY[0x277CFEBF8]);
          [context setIdentifier:identifierCopy];
          v67 = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:3];
          v66 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:v67 issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:0 deviceCredentialKeyResponse:0 readerKeyRequest:context readerKeyResponse:0];
          v82 = 0;
          v65 = [v66 serializeWithError:&v82];
          v62 = v82;
          if (v65)
          {
            v63 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v27 value:v65 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
            v83 = v63;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
            dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
            accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
            dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
            [dataSource2 accessoryWriteRetryInterval];
            v32 = [(__CFString *)home performWriteRequests:v28 withRetries:accessoryWriteMaxRetryCount timeInterval:selfCopy loggingObject:flowCopy flow:?];

            objc_initWeak(buf, selfCopy);
            objc_initWeak(&location, accessoryCopy);
            v33 = MEMORY[0x277D2C938];
            workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
            v35 = [v33 schedulerWithDispatchQueue:workQueue2];
            v36 = [v32 reschedule:v35];
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __95__HMDHomeWalletKeyAccessoryManager_removeNfcReaderKeyWithIdentifier_accessory_flow_completion___block_invoke;
            v75[3] = &unk_2786836D0;
            objc_copyWeak(&v79, buf);
            objc_copyWeak(&v80, &location);
            v76 = flowCopy;
            v78 = completionCopy;
            v77 = v27;
            v37 = [v36 addCompletionBlock:v75];

            objc_destroyWeak(&v80);
            objc_destroyWeak(&v79);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }

          else
          {
            v56 = objc_autoreleasePoolPush();
            v57 = selfCopy;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v64 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              shortDescription2 = [accessoryCopy shortDescription];
              *buf = 138544386;
              v85 = v64;
              v86 = 2112;
              v87 = uUID2;
              v88 = 2112;
              v89 = shortDescription2;
              v90 = 2112;
              v91 = 0;
              v92 = 2112;
              v93 = v62;
              _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v56);
            v63 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            (*(completionCopy + 2))(completionCopy, v63);
          }
        }

        else
        {
          contextb = objc_autoreleasePoolPush();
          v52 = selfCopy;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            uUID3 = [flowCopy UUID];
            shortDescription3 = [accessoryCopy shortDescription];
            *buf = 138544386;
            v85 = v68;
            v86 = 2112;
            v87 = uUID3;
            v88 = 2112;
            v89 = shortDescription3;
            v90 = 2112;
            v91 = v26;
            v92 = 2112;
            v93 = @"00000264-0000-1000-8000-0026BB765291";
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(contextb);
          contextc = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          (*(completionCopy + 2))(completionCopy, contextc);
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v47 = selfCopy;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          shortDescription4 = [accessoryCopy shortDescription];
          *buf = 138544130;
          v85 = v49;
          v86 = 2112;
          v87 = uUID4;
          v88 = 2112;
          v89 = shortDescription4;
          v90 = 2112;
          v91 = @"00000266-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, it doesn't support nfc access service %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(contexta);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        (*(completionCopy + 2))(completionCopy, v27);
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        uUID5 = [flowCopy UUID];
        shortDescription5 = [accessoryCopy shortDescription];
        home3 = [accessoryCopy home];
        *buf = 138544386;
        v85 = v43;
        v86 = 2112;
        v87 = uUID5;
        v88 = 2112;
        v89 = shortDescription5;
        v90 = 2112;
        v91 = home3;
        v92 = 2112;
        v93 = home;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v40);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      uUID6 = [flowCopy UUID];
      *buf = 138543618;
      v85 = v38;
      v86 = 2112;
      v87 = uUID6;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from accessory, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, v26);
  }

  v61 = *MEMORY[0x277D85DE8];
}

void __95__HMDHomeWalletKeyAccessoryManager_removeNfcReaderKeyWithIdentifier_accessory_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = v8;
  if (WeakRetained)
  {
    if (v5)
    {
      v10 = *(a1 + 40);
      v87 = 0;
      v11 = [v5 hmd_valueOfCharacteristic:v10 error:&v87];
      v12 = v87;
      if (!v11)
      {
        v45 = objc_autoreleasePoolPush();
        v46 = WeakRetained;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v48 = v81 = WeakRetained;
          [*(a1 + 32) UUID];
          v49 = v5;
          v50 = v9;
          v51 = v85 = v6;
          [v9 shortDescription];
          v53 = v52 = v45;
          v54 = *(a1 + 40);
          *buf = 138544386;
          v89 = v48;
          v90 = 2112;
          v91 = v51;
          v92 = 2112;
          v93 = v53;
          v94 = 2112;
          v95 = v49;
          v96 = 2112;
          v97 = v54;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

          v45 = v52;
          v6 = v85;
          v9 = v50;
          v5 = v49;
          v11 = 0;

          WeakRetained = v81;
        }

        objc_autoreleasePoolPop(v45);
        (*(*(a1 + 48) + 16))();
        goto LABEL_32;
      }

      v84 = v6;
      v13 = v11;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass() & 1;
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (!v14)
      {
        v82 = v16;
        v55 = objc_autoreleasePoolPush();
        v56 = WeakRetained;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v58 = v74 = v56;
          [*(a1 + 32) UUID];
          v59 = v78 = v11;
          [v9 shortDescription];
          v60 = v76 = v55;
          *buf = 138544130;
          v89 = v58;
          v90 = 2112;
          v91 = v59;
          v92 = 2112;
          v93 = v13;
          v94 = 2112;
          v95 = v60;
          _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, response value: %@ is not of type NSData", buf, 0x2Au);

          v55 = v76;
          v11 = v78;

          v56 = v74;
        }

        objc_autoreleasePoolPop(v55);
        v61 = *(a1 + 48);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v61 + 16))(v61, v19);
        v16 = v82;
        v6 = v84;
        goto LABEL_31;
      }

      v86 = 0;
      v17 = [MEMORY[0x277CFEBD0] parsedFromData:v13 error:&v86];
      v18 = v86;
      v19 = v18;
      v75 = v17;
      if (v17)
      {
        v20 = [v17 readerKeyResponse];
        v21 = [v20 statusCode];

        if (v21 && ![v21 value])
        {
          (*(*(a1 + 48) + 16))();
          goto LABEL_30;
        }

        v73 = v19;
        v80 = v16;
        v22 = objc_autoreleasePoolPush();
        v23 = WeakRetained;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v25 = v69 = v23;
          [*(a1 + 32) UUID];
          v26 = v77 = v11;
          [v9 shortDescription];
          v27 = v71 = v22;
          *buf = 138544130;
          v89 = v25;
          v90 = 2112;
          v91 = v26;
          v92 = 2112;
          v93 = v27;
          v94 = 2112;
          v95 = v21;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@ with status code: %@", buf, 0x2Au);

          v22 = v71;
          v11 = v77;

          v23 = v69;
        }

        objc_autoreleasePoolPop(v22);
        v28 = *(a1 + 48);
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        (*(v28 + 16))(v28, v29);

        v16 = v80;
      }

      else
      {
        v73 = v18;
        v62 = objc_autoreleasePoolPush();
        v72 = WeakRetained;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v64 = v79 = v11;
          [*(a1 + 32) UUID];
          v65 = v70 = v62;
          [v9 shortDescription];
          v66 = v83 = v16;
          *buf = 138544386;
          v89 = v64;
          v90 = 2112;
          v91 = v65;
          v92 = 2112;
          v93 = v66;
          v94 = 2112;
          v95 = v13;
          v96 = 2112;
          v97 = v73;
          _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, failed to parse response value %@:%@", buf, 0x34u);

          v16 = v83;
          v62 = v70;

          v11 = v79;
        }

        objc_autoreleasePoolPop(v62);
        v67 = *(a1 + 48);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v67 + 16))(v67, v21);
      }

      v19 = v73;
LABEL_30:

      v6 = v84;
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    v36 = v8;
    v37 = v6;
    v38 = objc_autoreleasePoolPush();
    v39 = WeakRetained;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      v42 = [*(a1 + 32) UUID];
      v43 = [v36 shortDescription];
      *buf = 138544130;
      v89 = v41;
      v90 = 2112;
      v91 = v42;
      v92 = 2112;
      v93 = v43;
      v94 = 2112;
      v95 = v37;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, write response is nil: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v38);
    v44 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v44 + 16))(v44, v12);
    v6 = v37;
    v9 = v36;
    v5 = 0;
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [*(a1 + 32) UUID];
      v34 = [v9 shortDescription];
      *buf = 138543874;
      v89 = v32;
      v90 = 2112;
      v91 = v33;
      v92 = 2112;
      v93 = v34;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v35 + 16))(v35, v12);
  }

LABEL_33:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)fetchIsAccessoryConfiguredWithReaderKey:(id)key accessory:(id)accessory flow:(id)flow completion:(id)completion
{
  v95 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  accessoryCopy = accessory;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (home)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      shortDescription = [accessoryCopy shortDescription];
      *buf = 138544130;
      v86 = v18;
      v87 = 2112;
      v88 = uUID;
      v89 = 2112;
      v90 = shortDescription;
      v91 = 2112;
      v92 = keyCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching accessory is configured with nfc reader key %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    home2 = [accessoryCopy home];
    uuid = [home2 uuid];
    uuid2 = [(__CFString *)home uuid];
    v24 = [uuid isEqual:uuid2];

    if (v24)
    {
      v25 = [accessoryCopy findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
      v26 = v25;
      if (v25)
      {
        v27 = [(__CFString *)v25 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
        if (v27)
        {
          context = objc_alloc_init(MEMORY[0x277CFEBF8]);
          v67 = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:1];
          v66 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:v67 issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:0 deviceCredentialKeyResponse:0 readerKeyRequest:context readerKeyResponse:0];
          v83 = 0;
          v65 = [v66 serializeWithError:&v83];
          v62 = v83;
          if (v65)
          {
            v63 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v27 value:v65 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
            v84 = v63;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
            dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
            accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
            dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
            [dataSource2 accessoryWriteRetryInterval];
            v32 = [(__CFString *)home performWriteRequests:v28 withRetries:accessoryWriteMaxRetryCount timeInterval:selfCopy loggingObject:flowCopy flow:?];

            objc_initWeak(buf, selfCopy);
            objc_initWeak(&location, accessoryCopy);
            v33 = MEMORY[0x277D2C938];
            workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
            v35 = [v33 schedulerWithDispatchQueue:workQueue2];
            v36 = [v32 reschedule:v35];
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __102__HMDHomeWalletKeyAccessoryManager_fetchIsAccessoryConfiguredWithReaderKey_accessory_flow_completion___block_invoke;
            v75[3] = &unk_2786836A8;
            objc_copyWeak(&v80, buf);
            objc_copyWeak(&v81, &location);
            v76 = flowCopy;
            v79 = completionCopy;
            v77 = v27;
            v78 = keyCopy;
            v37 = [v36 addCompletionBlock:v75];

            objc_destroyWeak(&v81);
            objc_destroyWeak(&v80);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }

          else
          {
            v64 = objc_autoreleasePoolPush();
            v56 = selfCopy;
            v57 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              shortDescription2 = [accessoryCopy shortDescription];
              *buf = 138544386;
              v86 = v58;
              v87 = 2112;
              v88 = uUID2;
              v89 = 2112;
              v90 = shortDescription2;
              v91 = 2112;
              v92 = 0;
              v93 = 2112;
              v94 = v62;
              _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v64);
            v63 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            (*(completionCopy + 2))(completionCopy, 0, 0, v63);
          }
        }

        else
        {
          contextb = objc_autoreleasePoolPush();
          v52 = selfCopy;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            uUID3 = [flowCopy UUID];
            shortDescription3 = [accessoryCopy shortDescription];
            *buf = 138544386;
            v86 = v68;
            v87 = 2112;
            v88 = uUID3;
            v89 = 2112;
            v90 = shortDescription3;
            v91 = 2112;
            v92 = v26;
            v93 = 2112;
            v94 = @"00000264-0000-1000-8000-0026BB765291";
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(contextb);
          contextc = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          (*(completionCopy + 2))(completionCopy, 0, 0, contextc);
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v47 = selfCopy;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          shortDescription4 = [accessoryCopy shortDescription];
          *buf = 138544130;
          v86 = v49;
          v87 = 2112;
          v88 = uUID4;
          v89 = 2112;
          v90 = shortDescription4;
          v91 = 2112;
          v92 = @"00000266-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, it doesn't support nfc access service %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(contexta);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        (*(completionCopy + 2))(completionCopy, 0, 0, v27);
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        uUID5 = [flowCopy UUID];
        shortDescription5 = [accessoryCopy shortDescription];
        home3 = [accessoryCopy home];
        *buf = 138544386;
        v86 = v43;
        v87 = 2112;
        v88 = uUID5;
        v89 = 2112;
        v90 = shortDescription5;
        v91 = 2112;
        v92 = home3;
        v93 = 2112;
        v94 = home;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v40);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, 0, 0, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      uUID6 = [flowCopy UUID];
      *buf = 138543618;
      v86 = v38;
      v87 = 2112;
      v88 = uUID6;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch accessory is configured for wallet key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, 0, v26);
  }

  v61 = *MEMORY[0x277D85DE8];
}

void __102__HMDHomeWalletKeyAccessoryManager_fetchIsAccessoryConfiguredWithReaderKey_accessory_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_loadWeakRetained((a1 + 72));
  v9 = v8;
  if (WeakRetained)
  {
    if (v5)
    {
      v10 = *(a1 + 40);
      v70 = 0;
      v11 = [v5 hmd_valueOfCharacteristic:v10 error:&v70];
      v12 = v70;
      if (v11)
      {
        v67 = v6;
        v13 = v11;
        objc_opt_class();
        v14 = objc_opt_isKindOfClass() & 1;
        if (v14)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        v66 = v15;

        if (v14)
        {
          v69 = 0;
          v16 = [MEMORY[0x277CFEBD0] parsedFromData:v13 error:&v69];
          v17 = v69;
          if (v16)
          {
            v62 = v11;
            v18 = [v16 readerKeyResponse];
            v19 = [v18 identifier];

            v20 = [*(a1 + 48) identifier];
            v21 = [v19 isEqualToData:v20];

            if (v21)
            {
              (*(*(a1 + 56) + 16))();
              v6 = v67;
            }

            else
            {
              v6 = v67;
              (*(*(a1 + 56) + 16))();
            }

            v11 = v62;
          }

          else
          {
            v51 = objc_autoreleasePoolPush();
            v61 = WeakRetained;
            v59 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              v57 = HMFGetLogIdentifier();
              [*(a1 + 32) UUID];
              v52 = v56 = v51;
              [v9 shortDescription];
              v53 = v65 = v11;
              *buf = 138544386;
              v72 = v57;
              v73 = 2112;
              v74 = v52;
              v75 = 2112;
              v76 = v53;
              v77 = 2112;
              v78 = v13;
              v79 = 2112;
              v80 = v17;
              _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, failed to parse response value %@:%@", buf, 0x34u);

              v11 = v65;
              v51 = v56;
            }

            objc_autoreleasePoolPop(v51);
            v54 = *(a1 + 56);
            v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            (*(v54 + 16))(v54, 0, 0, v19);
            v6 = v67;
          }
        }

        else
        {
          v44 = objc_autoreleasePoolPush();
          v45 = WeakRetained;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v47 = v58 = v45;
            [*(a1 + 32) UUID];
            v48 = v64 = v11;
            [v9 shortDescription];
            v49 = v60 = v44;
            *buf = 138544130;
            v72 = v47;
            v73 = 2112;
            v74 = v48;
            v75 = 2112;
            v76 = v49;
            v77 = 2112;
            v78 = v13;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, response value: %@ is not of type NSData", buf, 0x2Au);

            v44 = v60;
            v11 = v64;

            v45 = v58;
          }

          objc_autoreleasePoolPop(v44);
          v50 = *(a1 + 56);
          v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          (*(v50 + 16))(v50, 0, 0, v17);
          v6 = v67;
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = WeakRetained;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v40 = v63 = WeakRetained;
          [*(a1 + 32) UUID];
          v41 = v68 = v6;
          v42 = [v9 shortDescription];
          v43 = *(a1 + 40);
          *buf = 138544386;
          v72 = v40;
          v73 = 2112;
          v74 = v41;
          v75 = 2112;
          v76 = v42;
          v77 = 2112;
          v78 = v5;
          v79 = 2112;
          v80 = v43;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

          v11 = 0;
          v6 = v68;

          WeakRetained = v63;
        }

        objc_autoreleasePoolPop(v37);
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v28 = v8;
      v29 = v6;
      v30 = objc_autoreleasePoolPush();
      v31 = WeakRetained;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [*(a1 + 32) UUID];
        v35 = [v28 shortDescription];
        *buf = 138544130;
        v72 = v33;
        v73 = 2112;
        v74 = v34;
        v75 = 2112;
        v76 = v35;
        v77 = 2112;
        v78 = v29;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key: %@, write response is nil: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v30);
      v36 = *(a1 + 56);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v36 + 16))(v36, 0, 0, v12);
      v6 = v29;
      v9 = v28;
      v5 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 32) UUID];
      v26 = [v9 shortDescription];
      *buf = 138543874;
      v72 = v24;
      v73 = 2112;
      v74 = v25;
      v75 = 2112;
      v76 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v27 + 16))(v27, 0, 0, v12);
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (id)configureNFCReaderKeyOnMatterAccessory:(id)accessory flow:(id)flow
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  if ([accessoryCopy supportsCHIP])
  {
    v8 = objc_alloc_init(MEMORY[0x277D2C900]);
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    nfcReaderKeyManager = [home nfcReaderKeyManager];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyOnMatterAccessory_flow___block_invoke;
    v23[3] = &unk_278683680;
    v23[4] = self;
    v24 = flowCopy;
    v11 = v8;
    v25 = v11;
    v26 = accessoryCopy;
    [nfcReaderKeyManager fetchOrCreateReaderKeyWithRequiresPrivateKey:1 flow:v24 completion:v23];

    v12 = v26;
    v13 = v11;

    v14 = v13;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543874;
      v28 = v18;
      v29 = 2112;
      v30 = uUID;
      v31 = 2112;
      v32 = accessoryCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring NFC Reader key on non-matter accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:93];
    v14 = [v20 futureWithError:v13];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

void __80__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyOnMatterAccessory_flow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
    [v8 configureAccessoryWithNfcReaderKey:v5 accessory:v10 flow:v9 completion:v11];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) UUID];
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch or nfc reader key for matter accessory: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 48) finishWithError:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)fetchOrConfigureNFCReaderKeyForAccessory:(id)accessory flow:(id)flow completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v45 = v15;
    v46 = 2112;
    v47 = uUID;
    v48 = 2112;
    v49 = accessoryCopy;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] fetchOrConfigureNFCReaderKeyForAccessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterTTU", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [accessoryCopy supportsCHIP] && !-[HMDHomeWalletKeyAccessoryManager isPrimaryResidentOrSoleOwnerController](selfCopy, "isPrimaryResidentOrSoleOwnerController"))
  {
    v37 = completionCopy;
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      uuid = [accessoryCopy uuid];
      *buf = 138543874;
      v45 = v22;
      v46 = 2112;
      v47 = uUID2;
      v48 = 2112;
      v49 = uuid;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Messaging resident to configure NFC reader key for matter accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = objc_alloc(MEMORY[0x277D0F820]);
    messageTargetUUID = [(HMDHomeWalletKeyAccessoryManager *)v20 messageTargetUUID];
    v27 = [v25 initWithTarget:messageTargetUUID];

    v28 = objc_alloc(MEMORY[0x277D0F818]);
    v42[0] = @"HMDHomeConfigureMatterAccessoryWithReaderKeyMessageKeyAccessoryUUID";
    uuid2 = [accessoryCopy uuid];
    v30 = encodeRootObjectForIncomingXPCMessage(uuid2, 0);
    v43[0] = v30;
    v42[1] = *MEMORY[0x277D0F1C8];
    v31 = HMFEncodedRootObject();
    v43[1] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v33 = [v28 initWithName:@"HMDHomeConfigureMatterAccessoryWithReaderKeyMessage" destination:v27 payload:v32];

    messageTargetUUID2 = [(HMDHomeWalletKeyAccessoryManager *)v20 messageTargetUUID];
    workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)v20 workQueue];
    [home redispatchToResidentMessage:v33 target:messageTargetUUID2 responseQueue:workQueue2];

    completionCopy = v37;
  }

  else
  {
    nfcReaderKeyManager = [home nfcReaderKeyManager];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke;
    v38[3] = &unk_278683658;
    v38[4] = selfCopy;
    v39 = flowCopy;
    v41 = completionCopy;
    v40 = accessoryCopy;
    [nfcReaderKeyManager fetchOrCreateReaderKeyWithRequiresPrivateKey:1 flow:v39 completion:v38];
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    objc_initWeak(location, a1[6]);
    v8 = [a1[6] supportsCHIP];
    v10 = a1[5];
    v9 = a1[6];
    v11 = a1[4];
    if (v8)
    {
      [a1[4] configureAccessoryWithNfcReaderKey:v5 accessory:a1[6] flow:a1[5] completion:a1[7]];
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_464;
      v18[3] = &unk_278683630;
      v18[4] = v11;
      objc_copyWeak(&v22, location);
      v19 = a1[5];
      v21 = a1[7];
      v20 = v5;
      [v11 fetchIsAccessoryConfiguredWithReaderKey:v20 accessory:v9 flow:v10 completion:v18];

      objc_destroyWeak(&v22);
    }

    objc_destroyWeak(location);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] UUID];
      *location = 138543874;
      *&location[4] = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch or nfc reader key: %@", location, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    (*(a1[7] + 2))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_464(id *a1, int a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v9);

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    if (a2)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = a1[4];
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v14 = v31 = v7;
        v15 = [a1[5] UUID];
        v16 = v8;
        v17 = v11;
        v18 = a1[6];
        v19 = [WeakRetained shortDescription];
        *buf = 138544130;
        v38 = v14;
        v39 = 2112;
        v40 = v15;
        v41 = 2112;
        v42 = v18;
        v11 = v17;
        v8 = v16;
        v43 = 2112;
        v44 = v19;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory is already configured with nfc reader key %@:%@", buf, 0x2Au);

        v7 = v31;
      }

      objc_autoreleasePoolPop(v11);
      v20 = *(a1[7] + 2);
    }

    else
    {
      if (v7)
      {
        v28 = a1[4];
        v29 = a1[5];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_465;
        v32[3] = &unk_2786862E8;
        v32[4] = v28;
        v36 = a1[7];
        v33 = a1[6];
        v34 = WeakRetained;
        v35 = a1[5];
        [v28 removeNfcReaderKeyWithIdentifier:v7 accessory:v34 flow:v29 completion:v32];

        goto LABEL_12;
      }

      if (!v8)
      {
        [a1[4] configureAccessoryWithNfcReaderKey:a1[6] accessory:WeakRetained flow:a1[5] completion:a1[7]];
        goto LABEL_12;
      }

      v20 = *(a1[7] + 2);
    }

    v20();
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1[4];
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [a1[5] UUID];
      *buf = 138543618;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with reader key, accessory object became nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = a1[7];
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v26[2](v26, v27);
  }

LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
}

void __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_465(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v3);

  if (v4)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 32) configureAccessoryWithNfcReaderKey:*(a1 + 40) accessory:*(a1 + 48) flow:*(a1 + 56) completion:*(a1 + 64)];
  }
}

- (void)configureNFCReaderKeyForAccessory:(id)accessory flow:(id)flow
{
  v54 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    *buf = 138543874;
    v49 = v12;
    v50 = 2112;
    v51 = uUID;
    v52 = 2112;
    v53 = uuid;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if ([accessoryCopy supportsWalletKey])
  {
    dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
    isWatch = [dataSource isWatch];

    if ((isWatch & 1) == 0)
    {
      home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
      v18 = home;
      if (home)
      {
        currentUser = [home currentUser];
        isOwner = [currentUser isOwner];

        if (isOwner)
        {
          nfcReaderKeyConfigureStateByAccessoryUUID = [(HMDHomeWalletKeyAccessoryManager *)selfCopy nfcReaderKeyConfigureStateByAccessoryUUID];
          uuid2 = [accessoryCopy uuid];
          v23 = [nfcReaderKeyConfigureStateByAccessoryUUID objectForKeyedSubscript:uuid2];

          if (!v23)
          {
            v23 = objc_alloc_init(HMDHomeWalletKeyAccessoryConfigureState);
            nfcReaderKeyConfigureStateByAccessoryUUID2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy nfcReaderKeyConfigureStateByAccessoryUUID];
            uuid3 = [accessoryCopy uuid];
            [nfcReaderKeyConfigureStateByAccessoryUUID2 setObject:v23 forKeyedSubscript:uuid3];
          }

          if ([(HMDHomeWalletKeyAccessoryConfigureState *)v23 readerKeyConfigured])
          {
            v26 = objc_autoreleasePoolPush();
            v27 = selfCopy;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              shortDescription = [accessoryCopy shortDescription];
              *buf = 138543874;
              v49 = v29;
              v50 = 2112;
              v51 = uUID2;
              v52 = 2112;
              v53 = shortDescription;
              _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory is already configured with reader key: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v26);
          }

          else if ([(HMDHomeWalletKeyAccessoryConfigureState *)v23 readerKeyConfigureInProgress])
          {
            v37 = objc_autoreleasePoolPush();
            v38 = selfCopy;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = HMFGetLogIdentifier();
              uUID3 = [flowCopy UUID];
              shortDescription2 = [accessoryCopy shortDescription];
              *buf = 138543874;
              v49 = v40;
              v50 = 2112;
              v51 = uUID3;
              v52 = 2112;
              v53 = shortDescription2;
              _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting should retry on nfc reader key configure failure for accessory: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v37);
            [(HMDHomeWalletKeyAccessoryConfigureState *)v23 setShouldRetryReaderKeyConfigureOnFailure:1];
          }

          else
          {
            [(HMDHomeWalletKeyAccessoryConfigureState *)v23 setReaderKeyConfigureInProgress:1];
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __75__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyForAccessory_flow___block_invoke;
            v44[3] = &unk_278683340;
            v44[4] = selfCopy;
            v45 = v23;
            v46 = flowCopy;
            v47 = accessoryCopy;
            [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchOrConfigureNFCReaderKeyForAccessory:v47 flow:v46 completion:v44];
          }
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          *buf = 138543874;
          v49 = v35;
          v50 = 2112;
          v51 = uUID4;
          v52 = 2112;
          v53 = accessoryCopy;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home does not exist when configuring reader key for accessory: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __75__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyForAccessory_flow___block_invoke(id *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v4);

  [a1[5] setReaderKeyConfigureInProgress:0];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [a1[6] UUID];
      v11 = [a1[7] shortDescription];
      v22 = 138544130;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with nfc reader key %@:%@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    if ([a1[5] shouldRetryReaderKeyConfigureOnFailure])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1[4];
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [a1[6] UUID];
        v17 = [a1[7] shortDescription];
        v22 = 138543874;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Retrying configuring accessory with nfc reader key: %@", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [a1[5] setShouldRetryReaderKeyConfigureOnFailure:0];
      [a1[4] configureNFCReaderKeyForAccessory:a1[7] flow:a1[6]];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [a1[6] UUID];
      v20 = [a1[7] shortDescription];
      v22 = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with nfc reader key: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [a1[5] setReaderKeyConfigured:1];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)configureNFCReaderKeyForAllAccessoriesWithReason:(id)reason
{
  v30 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v25 = v10;
    v26 = 2112;
    v27 = uUID;
    v28 = 2112;
    v29 = reasonCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC reader key for all accessories with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];

  v14 = [accessoriesWithWalletKeySupport countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(accessoriesWithWalletKeySupport);
        }

        [(HMDHomeWalletKeyAccessoryManager *)selfCopy configureNFCReaderKeyForAccessory:*(*(&v19 + 1) + 8 * v17++) flow:internalOnlyInitializer];
      }

      while (v15 != v17);
      v15 = [accessoriesWithWalletKeySupport countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)requestPrimaryResident:(id)resident toConfigureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion
{
  v57[4] = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  accessoriesCopy = accessories;
  keyCopy = key;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v19 = [accessoriesCopy na_map:&__block_literal_global_461];
  if ([v19 hmf_isEmpty])
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v49 = v23;
      v50 = 2112;
      v51 = uUID;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not send message to configure all accessories with device credential key, accessory uuids is empty", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, v25);
  }

  else
  {
    v26 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDHomeWalletKeyAccessoryManager *)self messageTargetUUID];
    v44 = residentCopy;
    v25 = [(HMDRemoteDeviceMessageDestination *)v26 initWithTarget:messageTargetUUID device:residentCopy];

    v57[0] = keyCopy;
    v56[0] = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey";
    v56[1] = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType";
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v57[1] = v28;
    v57[2] = v19;
    v29 = *MEMORY[0x277D0F1C8];
    v56[2] = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyAccessoryUUIDs";
    v56[3] = v29;
    v30 = HMFEncodedRootObject();
    v57[3] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];

    v32 = [[HMDRemoteMessage alloc] initWithName:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessage" destination:v25 payload:v31 type:0 timeout:1 secure:0.0];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_462;
    v46[3] = &unk_278685AF8;
    v46[4] = self;
    v47 = completionCopy;
    [(HMDRemoteMessage *)v32 setResponseHandler:v46];
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v36 = v43 = accessoriesCopy;
      [flowCopy UUID];
      v42 = completionCopy;
      v37 = v31;
      v39 = v38 = flowCopy;
      *buf = 138544130;
      v49 = v36;
      v50 = 2112;
      v51 = v39;
      v52 = 2112;
      v53 = v32;
      v54 = 2112;
      v55 = v44;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to configure device credential key: %@ to primary resident: %@", buf, 0x2Au);

      flowCopy = v38;
      v31 = v37;
      completionCopy = v42;

      accessoriesCopy = v43;
    }

    objc_autoreleasePoolPop(v33);
    messageDispatcher = [(HMDHomeWalletKeyAccessoryManager *)selfCopy2 messageDispatcher];
    [messageDispatcher sendMessage:v32];

    residentCopy = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_462(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_2;
  block[3] = &unk_278689F98;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hmf_BOOLForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyDidSucceed"])
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v3 = *(a1 + 48);
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 userInfo:v5];
    (*(v3 + 16))(v3, v4);
  }
}

id __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)configureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  keyCopy = key;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (type == 1)
  {
    if ([keyCopy length] != 65)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138544130;
        v47 = v20;
        v48 = 2112;
        v49 = uUID;
        v50 = 2112;
        v51 = keyCopy;
        v52 = 2048;
        v53 = 65;
        v22 = "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, key: %@ must be of length %lu bytes for HMMTRTapToUnlockType1";
        goto LABEL_17;
      }

LABEL_18:

      objc_autoreleasePoolPop(v17);
      currentUser = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      completionCopy[2](completionCopy, currentUser);
      goto LABEL_28;
    }
  }

  else if (!type && [keyCopy length] != 64)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138544130;
      v47 = v20;
      v48 = 2112;
      v49 = uUID;
      v50 = 2112;
      v51 = keyCopy;
      v52 = 2048;
      v53 = 64;
      v22 = "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, key: %@ must be of length %lu bytes for Unified Access";
LABEL_17:
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x2Au);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  currentUser = [home currentUser];

  if (currentUser)
  {
    isOwner = [currentUser isOwner];
    primaryResidentDevice = [(HMDHomeWalletKeyAccessoryManager *)self primaryResidentDevice];
    v27 = primaryResidentDevice;
    if (primaryResidentDevice || (isOwner & 1) != 0)
    {
      if (primaryResidentDevice)
      {
        [(HMDHomeWalletKeyAccessoryManager *)self requestPrimaryResident:primaryResidentDevice toConfigureAccessories:accessoriesCopy withDeviceCredentialKey:keyCopy ofType:type flow:flowCopy completion:completionCopy];
      }

      else
      {
        account = [currentUser account];
        currentDevice = [account currentDevice];

        if (currentDevice)
        {
          identifier = [currentDevice identifier];
          [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:accessoriesCopy withDeviceCredentialKey:keyCopy ofType:type forDeviceWithUUID:identifier user:currentUser flow:flowCopy completion:completionCopy];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v40 = v44 = selfCopy3;
            [flowCopy UUID];
            v41 = v45 = v37;
            *buf = 138543618;
            v47 = v40;
            v48 = 2112;
            v49 = v41;
            _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, current device is nil", buf, 0x16u);

            v37 = v45;
            selfCopy3 = v44;
          }

          objc_autoreleasePoolPop(v37);
          v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          completionCopy[2](completionCopy, v42);
        }
      }
    }

    else
    {
      v28 = [[HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc] initWithDeviceCredentialKey:keyCopy accessories:accessoriesCopy user:currentUser];
      pendingPrimaryResidentDeviceCredentialKeyOperation = [(HMDHomeWalletKeyAccessoryManager *)self pendingPrimaryResidentDeviceCredentialKeyOperation];

      if (pendingPrimaryResidentDeviceCredentialKeyOperation)
      {
        pendingPrimaryResidentDeviceCredentialKeyOperation2 = [(HMDHomeWalletKeyAccessoryManager *)self pendingPrimaryResidentDeviceCredentialKeyOperation];
        v31 = [pendingPrimaryResidentDeviceCredentialKeyOperation2 operationByMergingWithOperation:v28];
        [(HMDHomeWalletKeyAccessoryManager *)self setPendingPrimaryResidentDeviceCredentialKeyOperation:v31];
      }

      else
      {
        [(HMDHomeWalletKeyAccessoryManager *)self setPendingPrimaryResidentDeviceCredentialKeyOperation:v28];
      }

      v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      completionCopy[2](completionCopy, v36);
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    completionCopy[2](completionCopy, v32);

    currentUser = 0;
  }

LABEL_28:

  v43 = *MEMORY[0x277D85DE8];
}

- (HMDDevice)primaryResidentDevice
{
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  device = [primaryResidentDevice device];
  if (device)
  {
    capabilities = [primaryResidentDevice capabilities];
    if ([capabilities supportsWalletKey])
    {
      isReachable = [primaryResidentDevice isReachable];

      if (isReachable)
      {
        v8 = device;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (NSString)walletKeyColorPreferenceKey
{
  v2 = MEMORY[0x277CCAD78];
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  uuid = [home uuid];
  v5 = [@"6D369245-5382-4703-8011-3DFE12E5147C" dataUsingEncoding:4];
  v6 = [v2 hmf_UUIDWithNamespace:uuid data:v5];
  uUIDString = [v6 UUIDString];

  return uUIDString;
}

- (id)matterAccessoriesSupportingWalletKeyExcludingACP
{
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  matterAccessories = [home matterAccessories];
  v4 = [matterAccessories na_map:&__block_literal_global_455_235057];

  return v4;
}

id __84__HMDHomeWalletKeyAccessoryManager_matterAccessoriesSupportingWalletKeyExcludingACP__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsWalletKey] && (objc_msgSend(v2, "supportsACWGProvisioning") & 1) == 0)
  {
    v4 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)matterAccessoriesSupportingWalletKey
{
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  matterAccessories = [home matterAccessories];
  v4 = [matterAccessories na_map:&__block_literal_global_453_235060];

  return v4;
}

id __72__HMDHomeWalletKeyAccessoryManager_matterAccessoriesSupportingWalletKey__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsWalletKey])
  {
    v3 = v2;
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
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPrimaryResidentOrSoleOwnerController
{
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if ([home isCurrentDeviceConfirmedPrimaryResident])
  {
    v3 = 1;
  }

  else if ([home hasAnyResident])
  {
    v3 = 0;
  }

  else
  {
    currentUser = [home currentUser];
    if ([currentUser isOwner])
    {
      v3 = isiPhoneDevice() || isiPadDevice();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)handleHomeUserAddedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDHomeWalletKeyAccessoryManager_handleHomeUserAddedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __68__HMDHomeWalletKeyAccessoryManager_handleHomeUserAddedNotification___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPrimaryResidentOrSoleOwnerController])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:@"HMDUserNotificationKey"];

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

    v6 = [v5 isRestrictedGuest];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v10)
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v5 uuid];
        v22 = 138543618;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received notification of restricted guest %@ being added to home but we already scheduled work to configure issuerKeys in invite acceptance, so nothing to be done here", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      if (v10)
      {
        v13 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v13;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling added user: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterTTU", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
      {
        v14 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
        v15 = objc_autoreleasePoolPush();
        v16 = *(a1 + 32);
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v14 UUID];
          v22 = 138543874;
          v23 = v18;
          v24 = 2112;
          v25 = v19;
          v26 = 2112;
          v27 = v5;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Adding Issuer Key to accessories for newly added user: %@", &v22, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
        v20 = [*(a1 + 32) addIssuerKeysToMatterTTUAccessoriesForUser:v5 flow:v14];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleWalletKeySupportDidChange:(id)change
{
  v23 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  home = [v7 home];
  home2 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (home == home2)
  {
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__HMDHomeWalletKeyAccessoryManager_handleWalletKeySupportDidChange___block_invoke;
    v17[3] = &unk_27868A750;
    v17[4] = self;
    v18 = v7;
    dispatch_async(workQueue, v17);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      uuid = [home uuid];
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = uuid;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not handling wallet key support change for accessory in other home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __68__HMDHomeWalletKeyAccessoryManager_handleWalletKeySupportDidChange___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = [*(a1 + 40) uuid];
    v18 = 138543874;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because wallet key support did change on accessory: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) configureNFCReaderKeyForAccessory:*(a1 + 40) flow:v2];
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterTTU", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [*(a1 + 40) supportsCHIP] && objc_msgSend(*(a1 + 40), "supportsWalletKey") && objc_msgSend(*(a1 + 32), "isPrimaryResidentOrSoleOwnerController"))
  {
    v9 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 UUID];
      v15 = [*(a1 + 40) uuid];
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Adding Issuer Key to accessory because wallet key support did change on accessory: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [*(a1 + 32) addIssuerKeysToMatterAccessory:*(a1 + 40) flow:v9];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryConfigured:(id)configured
{
  object = [configured object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__HMDHomeWalletKeyAccessoryManager_handleAccessoryConfigured___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v6;
    dispatch_async(workQueue, v8);
  }
}

void __62__HMDHomeWalletKeyAccessoryManager_handleAccessoryConfigured___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v16 = 138543618;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because accessory was configured", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) configureNFCReaderKeyForAccessory:*(a1 + 40) flow:v2];
  [*(a1 + 32) handlePendingDeviceCredentialKeysSyncForAccessory:*(a1 + 40) withReason:@"accessory connected"];
  v8 = [*(a1 + 32) delegate];

  if (v8 && [*(a1 + 40) supportsHAP])
  {
    v9 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 UUID];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Fetching wallet key color because accessory was configured", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) fetchWalletKeyColorWithAccessory:*(a1 + 40) flow:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAccessoryRemovedNotification:(id)notification
{
  v27 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
  isWatch = [dataSource isWatch];

  if ((isWatch & 1) == 0)
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

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
      object = [notificationCopy object];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = object;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if ([v13 hasAnyAccessoryWithWalletKeySupport])
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v26 = v17;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Not handling accessory removed notification, home still has an accessory that supports wallet key", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
      }

      else
      {
        userInfo2 = [notificationCopy userInfo];
        v19 = [userInfo2 hmf_numberForKey:@"HMDNotificationSourceKey"];
        unsignedIntegerValue = [v19 unsignedIntegerValue];

        if (unsignedIntegerValue == 1)
        {
          workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __75__HMDHomeWalletKeyAccessoryManager_handleHomeAccessoryRemovedNotification___block_invoke;
          v23[3] = &unk_27868A750;
          v23[4] = self;
          v24 = v13;
          dispatch_async(workQueue, v23);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __75__HMDHomeWalletKeyAccessoryManager_handleHomeAccessoryRemovedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Last accessory supporting wallet key was removed.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 40) updateHasOnboardedForWalletKey:0 message:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedAccessoryNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDNotificationAddedAccessoryKey"];

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
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__HMDHomeWalletKeyAccessoryManager_handleHomeAddedAccessoryNotification___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v7;
    dispatch_async(workQueue, v9);
  }
}

void __73__HMDHomeWalletKeyAccessoryManager_handleHomeAddedAccessoryNotification___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = [*(a1 + 40) uuid];
    v22 = 138543874;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because new accessory was added: %@", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) configureNFCReaderKeyForAccessory:*(a1 + 40) flow:v2];
  [*(a1 + 32) handlePendingDeviceCredentialKeysSyncForAccessory:*(a1 + 40) withReason:@"accessory added"];
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterTTU", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    if ([*(a1 + 40) supportsCHIP])
    {
      if ([*(a1 + 40) supportsWalletKey])
      {
        if ([*(a1 + 32) isPrimaryResidentOrSoleOwnerController])
        {
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) uuid];
          v11 = [*(a1 + 40) home];
          v12 = [v11 users];
          [v9 startHomeWalletKeyAddForAccessoryUUID:v10 keyType:1 expectedCount:{objc_msgSend(v12, "count")}];

          if (([*(a1 + 40) supportsACWGProvisioning] & 1) == 0)
          {
            v13 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 32);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              v18 = [v13 UUID];
              v19 = [*(a1 + 40) uuid];
              v22 = 138543874;
              v23 = v17;
              v24 = 2112;
              v25 = v18;
              v26 = 2112;
              v27 = v19;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Adding Issuer Key to accessory because new accessory was added: %@", &v22, 0x20u);
            }

            objc_autoreleasePoolPop(v14);
            v20 = [*(a1 + 32) addIssuerKeysToMatterAccessory:*(a1 + 40) flow:v13];
          }
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidDisableCharacteristicNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HMDHomeWalletKeyAccessoryManager_handleHomeDidDisableCharacteristicNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __83__HMDHomeWalletKeyAccessoryManager_handleHomeDidDisableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 configureNotificationsWithReason:v2];
}

- (void)handleHomeDidEnableCharacteristicNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HMDHomeWalletKeyAccessoryManager_handleHomeDidEnableCharacteristicNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __82__HMDHomeWalletKeyAccessoryManager_handleHomeDidEnableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 configureNotificationsWithReason:v2];
}

- (void)handleHomeNFCReaderKeyKeychainItemAvailableNotification:(id)notification
{
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDHomeWalletKeyAccessoryManager_handleHomeNFCReaderKeyKeychainItemAvailableNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __92__HMDHomeWalletKeyAccessoryManager_handleHomeNFCReaderKeyKeychainItemAvailableNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nfcReaderKeyConfigureStateByAccessoryUUID];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 configureNFCReaderKeyForAllAccessoriesWithReason:@"Keychain item available"];
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 isCurrentDeviceConfirmedPrimaryResident];
  if (v3 != [*(a1 + 32) isCurrentDevicePrimaryResident])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      [*(a1 + 32) isCurrentDevicePrimaryResident];
      v8 = HMFBooleanToString();
      v9 = HMFBooleanToString();
      *buf = 138543874;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Current device primary changed from: (%@->%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setCurrentDevicePrimaryResident:v3];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) name];
    [v10 configureNotificationsWithReason:v11];
  }

  v12 = [*(a1 + 32) pendingPrimaryResidentDeviceCredentialKeyOperation];
  if (v12)
  {
    v13 = [v2 accessoriesWithWalletKeySupport];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_439;
    v25[3] = &unk_2786830C8;
    v14 = v12;
    v26 = v14;
    v15 = [v13 na_filter:v25];

    v16 = [*(a1 + 32) primaryResidentDevice];
    v17 = [v2 currentUser];
    if (([v17 isOwner] & 1) == 0 && objc_msgSend(v15, "count") && v16)
    {
      v19 = [*(a1 + 32) canConfigureAccessories];

      if (v19)
      {
        v20 = *(a1 + 32);
        v21 = [v14 deviceCredentialKey];
        v22 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_2;
        v23[3] = &unk_27868A1D8;
        v23[4] = *(a1 + 32);
        v24 = v14;
        [v20 requestPrimaryResident:v16 toConfigureAccessories:v15 withDeviceCredentialKey:v21 ofType:0 flow:v22 completion:v23];
      }
    }

    else
    {
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_439(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessoriesUUIDs];
  v5 = [v3 uuid];

  v6 = [v4 containsObject:v5];
  return v6;
}

void __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "%{public}@Failed to handle pending operation when primary resident updated %@:%@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v16, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@Successfully handled pending operation when primary resident updated %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setPendingPrimaryResidentDeviceCredentialKeyOperation:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification
{
  v35 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 supportsWalletKey])
  {
    userInfo = [notificationCopy userInfo];
    v9 = [userInfo hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
    v10 = [v9 na_firstObjectPassingTest:&__block_literal_global_435];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v14;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling value update of hardware finish characteristic: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      value = [v10 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = value;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
        v19 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy walletKeyColorWithCharacteristicValue:v17 flow:untrackedPlaceholderFlow];

        if (v19)
        {
          workQueue = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __86__HMDHomeWalletKeyAccessoryManager_handleAccessoryCharacteristicsChangedNotification___block_invoke_438;
          v27[3] = &unk_27868A750;
          v27[4] = selfCopy;
          v28 = v19;
          dispatch_async(workQueue, v27);
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = objc_opt_class();
          *buf = 138543874;
          v30 = v24;
          v31 = 2112;
          v32 = 0;
          v33 = 2112;
          v34 = v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Hardware finish characteristic value: %@ is not of type data: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __86__HMDHomeWalletKeyAccessoryManager_handleAccessoryCharacteristicsChangedNotification___block_invoke_438(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [*(a1 + 32) walletKeyColorPreferenceKey];
  v9 = [v2 numberValueFromNoBackupStoreWithKey:v3];

  v4 = v9;
  if (!v9)
  {
    v5 = [*(a1 + 32) dataSource];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) walletKeyColorPreferenceKey];
    [v5 persistNumberValueToNoBackupStore:v6 withKey:v7];

    v8 = [*(a1 + 32) delegate];
    [v8 accessoryManager:*(a1 + 32) didUpdateWalletKeyColor:{objc_msgSend(*(a1 + 40), "integerValue")}];

    v4 = 0;
  }
}

uint64_t __86__HMDHomeWalletKeyAccessoryManager_handleAccessoryCharacteristicsChangedNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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
  v5 = v4;
  if (v4)
  {
    v6 = [v4 type];
    v7 = [v6 isEqualToString:@"0000026C-0000-1000-8000-0026BB765291"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleHMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  flow = [messageCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v42 = v10;
    v43 = 2112;
    v44 = uUID;
    v45 = 2112;
    v46 = messageCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage message: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (([home isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
    [messageCopy respondWithError:v12];
  }

  v13 = [messageCopy userForHome:home];
  v33 = [messageCopy uuidForKey:@"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageAccessoryUUID"];
  v34 = home;
  v14 = [home accessoryWithUUID:?];
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

  v17 = [messageCopy dataForKey:@"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageIssuerKey"];
  v32 = [messageCopy numberForKey:@"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageControllerType"];
  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    uUID2 = [flow UUID];
    *buf = 138543618;
    v42 = v21;
    v43 = 2112;
    v44 = uUID2;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Add/Update issuer keys locally", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  supportsMatterWalletKey = [v16 supportsMatterWalletKey];
  v24 = -[HMDHomeWalletKeyAccessoryManager addOrUpdateIssuerKey:forUser:toMatterAccessory:withControllerType:unifiedAccess:flow:](v19, "addOrUpdateIssuerKey:forUser:toMatterAccessory:withControllerType:unifiedAccess:flow:", v17, v13, v16, v32, [supportsMatterWalletKey BOOLValue], flow);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __102__HMDHomeWalletKeyAccessoryManager_handleHMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage___block_invoke;
  v38[3] = &unk_2786835C0;
  v38[4] = v19;
  v25 = flow;
  v39 = v25;
  v26 = messageCopy;
  v40 = v26;
  v27 = [v24 addSuccessBlock:v38];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __102__HMDHomeWalletKeyAccessoryManager_handleHMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage___block_invoke_433;
  v35[3] = &unk_278688D58;
  v35[4] = v19;
  v36 = v25;
  v37 = v26;
  v28 = v26;
  v29 = v25;
  v30 = [v27 addFailureBlock:v35];

  v31 = *MEMORY[0x277D85DE8];
}

void __102__HMDHomeWalletKeyAccessoryManager_handleHMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage___block_invoke(id *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addOrUpdateIssuerKey successful.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [a1[6] respondWithSuccess];

  v9 = *MEMORY[0x277D85DE8];
}

void __102__HMDHomeWalletKeyAccessoryManager_handleHMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage___block_invoke_433(id *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] addOrUpdateIssuerKey failed with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [a1[6] respondWithError:v3];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)auditKeysLocallyOrRedispatchWithAccessoryUUID:(id)d issuerKey:(id)key withFlow:(id)flow
{
  v92 = *MEMORY[0x277D85DE8];
  dCopy = d;
  keyCopy = key;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v87 = v14;
    v88 = 2112;
    v89 = uUID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling auditKeysLocallyOrRedispatchWithAccessoryUUID", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  if (home)
  {
    v85 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy reachablePrimaryResidentDeviceForHome:home];
    homeManager = [home homeManager];
    companionDevice = [homeManager companionDevice];

    v84 = dCopy;
    v19 = [home accessoryWithUUID:dCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    supportsMatterWalletKey = [v21 supportsMatterWalletKey];
    bOOLValue = [supportsMatterWalletKey BOOLValue];

    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v79 = home;
      v27 = v26 = companionDevice;
      [flowCopy UUID];
      v29 = v28 = keyCopy;
      v30 = HMFBooleanToString();
      *buf = 138543874;
      v87 = v27;
      v88 = 2112;
      v89 = v29;
      v90 = 2112;
      v91 = v30;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Using unifiedAccess: %@", buf, 0x20u);

      keyCopy = v28;
      companionDevice = v26;
      home = v79;
    }

    objc_autoreleasePoolPop(v23);
    if ([home isCurrentDeviceConfirmedPrimaryResident])
    {
      currentUser = [home currentUser];

      dCopy = v84;
      if (currentUser)
      {
        currentUser2 = [home currentUser];
        v33 = [(HMDHomeWalletKeyAccessoryManager *)v24 addOrUpdateIssuerKey:keyCopy forUser:currentUser2 toMatterAccessory:v21 withControllerType:&unk_283E747E0 unifiedAccess:bOOLValue flow:flowCopy];

        goto LABEL_34;
      }

      v48 = v21;
      v49 = objc_autoreleasePoolPush();
      v50 = v24;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v80 = home;
        v53 = flowCopy;
        v54 = companionDevice;
        v56 = v55 = keyCopy;
        *buf = 138543618;
        v87 = v52;
        v88 = 2112;
        v89 = v56;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not find user to audit for on primary resident device", buf, 0x16u);

        keyCopy = v55;
        companionDevice = v54;
        flowCopy = v53;
        home = v80;
      }

      objc_autoreleasePoolPop(v49);
    }

    else
    {
      dCopy = v84;
      if (v85)
      {
        v83 = v21;
        v39 = objc_autoreleasePoolPush();
        v40 = v24;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          [flowCopy UUID];
          v43 = home;
          v44 = flowCopy;
          v45 = companionDevice;
          v47 = v46 = keyCopy;
          *buf = 138543618;
          v87 = v42;
          v88 = 2112;
          v89 = v47;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Redispatching to primary resident", buf, 0x16u);

          keyCopy = v46;
          companionDevice = v45;
          flowCopy = v44;
          home = v43;
        }

        objc_autoreleasePoolPop(v39);
        [(HMDHomeWalletKeyAccessoryManager *)v40 sendIssuerKeyUpdateMessageToPrimaryResidentforAccessoryWithUUID:v84 issuerKey:keyCopy flow:flowCopy];
        v21 = v83;
        goto LABEL_34;
      }

      if ([home hasAnyResident])
      {
LABEL_34:

        goto LABEL_35;
      }

      v81 = keyCopy;
      currentUser3 = [home currentUser];
      if (currentUser3)
      {
        v58 = currentUser3;
        currentUser4 = [home currentUser];
        isOwner = [currentUser4 isOwner];

        if (isOwner)
        {
          dataSource = [(HMDHomeWalletKeyAccessoryManager *)v24 dataSource];
          isWatch = [dataSource isWatch];

          v63 = objc_autoreleasePoolPush();
          v64 = v24;
          v65 = HMFGetOSLogHandle();
          v66 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);
          if (isWatch && companionDevice)
          {
            if (v66)
            {
              v67 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              *buf = 138543618;
              v87 = v67;
              v88 = 2112;
              v89 = uUID2;
              _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Redispatching to phone from watch", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v63);
            dCopy = v84;
            keyCopy = v81;
            [(HMDHomeWalletKeyAccessoryManager *)v64 sendIssuerKeyUpdateMessageToPhone:companionDevice forAccessoryWithUUID:v84 issuerKey:v81 flow:flowCopy];
          }

          else
          {
            if (v66)
            {
              v75 = HMFGetLogIdentifier();
              uUID3 = [flowCopy UUID];
              *buf = 138543618;
              v87 = v75;
              v88 = 2112;
              v89 = uUID3;
              _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Auditing locally on owner's phone", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v63);
            currentUser5 = [home currentUser];
            keyCopy = v81;
            v78 = [(HMDHomeWalletKeyAccessoryManager *)v64 addOrUpdateIssuerKey:v81 forUser:currentUser5 toMatterAccessory:v21 withControllerType:&unk_283E747F8 unifiedAccess:bOOLValue flow:flowCopy];

            dCopy = v84;
          }

          goto LABEL_34;
        }
      }

      v48 = v21;
      v69 = objc_autoreleasePoolPush();
      v70 = v24;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = HMFGetLogIdentifier();
        uUID4 = [flowCopy UUID];
        *buf = 138543618;
        v87 = v72;
        v88 = 2112;
        v89 = uUID4;
        _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Current user no longer exists or is not the owner.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v69);
      keyCopy = v81;
    }

    v21 = v48;
    goto LABEL_34;
  }

  v34 = objc_autoreleasePoolPush();
  v35 = selfCopy;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = HMFGetLogIdentifier();
    uUID5 = [flowCopy UUID];
    *buf = 138543618;
    v87 = v37;
    v88 = 2112;
    v89 = uUID5;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Lost reference to home", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v34);
LABEL_35:

  v74 = *MEMORY[0x277D85DE8];
}

- (id)reachablePrimaryResidentDeviceForHome:(id)home
{
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  if ([primaryResidentDevice isReachable])
  {
    device = [primaryResidentDevice device];
  }

  else
  {
    device = 0;
  }

  return device;
}

- (void)sendIssuerKeyUpdateMessageToPrimaryResidentforAccessoryWithUUID:(id)d issuerKey:(id)key flow:(id)flow
{
  v43[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  keyCopy = key;
  flowCopy = flow;
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v12 = [HMDRemoteHomeMessageDestination alloc];
  messageTargetUUID = [(HMDHomeWalletKeyAccessoryManager *)self messageTargetUUID];
  uuid = [home uuid];
  v15 = [(HMDRemoteHomeMessageDestination *)v12 initWithTarget:messageTargetUUID homeUUID:uuid];

  v35 = keyCopy;
  v43[0] = keyCopy;
  v42[0] = @"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageIssuerKey";
  v42[1] = @"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageControllerType";
  v16 = MEMORY[0x277CCABB0];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v18 = [v16 numberWithInteger:{objc_msgSend(productInfo, "productClass")}];
  v43[1] = v18;
  v42[2] = *MEMORY[0x277D0F1C8];
  v19 = HMFEncodedRootObject();
  v43[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

  if (dCopy)
  {
    v21 = [v20 mutableCopy];
    uUIDString = [dCopy UUIDString];
    [v21 setObject:uUIDString forKey:@"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageAccessoryUUID"];

    v20 = v21;
  }

  v23 = [[HMDRemoteMessage alloc] initWithName:@"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage" destination:v15 payload:v20 type:0 timeout:1 secure:0.0];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __115__HMDHomeWalletKeyAccessoryManager_sendIssuerKeyUpdateMessageToPrimaryResidentforAccessoryWithUUID_issuerKey_flow___block_invoke;
  v36[3] = &unk_278688370;
  v36[4] = self;
  v24 = flowCopy;
  v37 = v24;
  [(HMDRemoteMessage *)v23 setResponseHandler:v36];
  v25 = objc_autoreleasePoolPush();
  selfCopy = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    [v24 UUID];
    v34 = home;
    v29 = dCopy;
    v31 = v30 = v15;
    *buf = 138543618;
    v39 = v28;
    v40 = 2112;
    v41 = v31;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message: HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageIssuerKey to primary resident", buf, 0x16u);

    v15 = v30;
    dCopy = v29;
    home = v34;
  }

  objc_autoreleasePoolPop(v25);
  msgDispatcher = [home msgDispatcher];
  [msgDispatcher sendMessage:v23];

  v33 = *MEMORY[0x277D85DE8];
}

void __115__HMDHomeWalletKeyAccessoryManager_sendIssuerKeyUpdateMessageToPrimaryResidentforAccessoryWithUUID_issuerKey_flow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to send message to primary resident receiver with error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendIssuerKeyUpdateMessageToPhone:(id)phone forAccessoryWithUUID:(id)d issuerKey:(id)key flow:(id)flow
{
  v31[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  keyCopy = key;
  flowCopy = flow;
  phoneCopy = phone;
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v15 = [HMDRemoteDeviceMessageDestination alloc];
  messageTargetUUID = [(HMDHomeWalletKeyAccessoryManager *)self messageTargetUUID];
  v17 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:messageTargetUUID device:phoneCopy];

  v31[0] = keyCopy;
  v30[0] = @"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageIssuerKey";
  v30[1] = @"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageControllerType";
  v18 = MEMORY[0x277CCABB0];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v20 = [v18 numberWithInteger:{objc_msgSend(productInfo, "productClass")}];
  v31[1] = v20;
  v30[2] = *MEMORY[0x277D0F1C8];
  v21 = HMFEncodedRootObject();
  v31[2] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  if (dCopy)
  {
    v23 = [v22 mutableCopy];
    [v23 setObject:dCopy forKey:@"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessageAccessoryUUID"];

    v22 = v23;
  }

  v24 = [[HMDRemoteMessage alloc] initWithName:@"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage" destination:v17 payload:v22 type:0 timeout:1 secure:0.0];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __106__HMDHomeWalletKeyAccessoryManager_sendIssuerKeyUpdateMessageToPhone_forAccessoryWithUUID_issuerKey_flow___block_invoke;
  v28[3] = &unk_278688370;
  v28[4] = self;
  v29 = flowCopy;
  v25 = flowCopy;
  [(HMDRemoteMessage *)v24 setResponseHandler:v28];
  msgDispatcher = [home msgDispatcher];
  [msgDispatcher sendMessage:v24];

  v27 = *MEMORY[0x277D85DE8];
}

void __106__HMDHomeWalletKeyAccessoryManager_sendIssuerKeyUpdateMessageToPhone_forAccessoryWithUUID_issuerKey_flow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to send message to phone receiver with error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)addOrUpdateIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow
{
  v32 = *MEMORY[0x277D85DE8];
  userCopy = user;
  accessoryCopy = accessory;
  flowCopy = flow;
  if (accessoryCopy)
  {
    if ([accessoryCopy supportsACWGProvisioning])
    {
      [userCopy acwgIssuerPublicKeyExternalRepresentation];
    }

    else
    {
      [objc_opt_class() createMatterIssuerKeyDataForUser:userCopy withUserIndex:&unk_283E747C8 flow:flowCopy];
    }
    v14 = ;
    if (v14)
    {
      supportsMatterWalletKey = [accessoryCopy supportsMatterWalletKey];
      v13 = -[HMDHomeWalletKeyAccessoryManager addOrUpdateIssuerKey:forUser:toMatterAccessory:withControllerType:unifiedAccess:flow:](self, "addOrUpdateIssuerKey:forUser:toMatterAccessory:withControllerType:unifiedAccess:flow:", v14, userCopy, accessoryCopy, 0, [supportsMatterWalletKey BOOLValue], flowCopy);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        uuid = [userCopy uuid];
        v26 = 138543874;
        v27 = v19;
        v28 = 2112;
        v29 = uUID;
        v30 = 2112;
        v31 = uuid;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not adding issuer key because we don't have one for user: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v22 = MEMORY[0x277D2C900];
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v13 = [v22 futureWithError:v23];
    }
  }

  else
  {
    v11 = MEMORY[0x277D2C900];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v13 = [v11 futureWithError:v12];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)addOrUpdateIssuerKey:(id)key forUser:(id)user toMatterAccessory:(id)accessory withControllerType:(id)type unifiedAccess:(BOOL)access flow:(id)flow
{
  keyCopy = key;
  userCopy = user;
  accessoryCopy = accessory;
  typeCopy = type;
  flowCopy = flow;
  v19 = objc_opt_new();
  if (accessoryCopy)
  {
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke;
    block[3] = &unk_2786834F8;
    block[4] = self;
    v54 = keyCopy;
    v55 = userCopy;
    accessCopy = access;
    v56 = accessoryCopy;
    v57 = flowCopy;
    v58 = typeCopy;
    v21 = v19;
    v59 = v21;
    v22 = flowCopy;
    v23 = userCopy;
    v24 = keyCopy;
    dispatch_async(workQueue, block);

    v25 = v59;
    v26 = v21;

    v27 = v54;
  }

  else
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    [home accessoriesWithAliroProvisioning];
    v29 = v42 = typeCopy;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_418;
    v50[3] = &unk_278683520;
    v30 = userCopy;
    v51 = v30;
    v31 = flowCopy;
    v52 = v31;
    v32 = [v29 na_filter:v50];

    accessoryCopy = 0;
    workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_2_419;
    v43[3] = &unk_278683598;
    v44 = v32;
    selfCopy = self;
    v46 = keyCopy;
    v47 = v30;
    v48 = v31;
    v34 = v19;
    v49 = v34;
    v35 = v31;
    v36 = v30;
    v37 = keyCopy;
    v38 = v32;
    dispatch_async(workQueue2, v43);

    v39 = v49;
    v40 = v34;

    typeCopy = v42;
    v27 = v51;
  }

  return v19;
}

void __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _addOrUpdateIssuerKey:*(a1 + 40) forUser:*(a1 + 48) toMatterAccessory:*(a1 + 56) unifiedAccess:*(a1 + 88) flow:*(a1 + 64)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_2;
  v10[3] = &unk_2786834D0;
  v11 = *(a1 + 72);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v12 = v3;
  v13 = v4;
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v5 = [v2 addSuccessBlock:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_417;
  v7[3] = &unk_278688D58;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v6 = [v5 addFailureBlock:v7];
}

void __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_2_419(id *a1)
{
  v2 = a1[4];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_3;
  v19[3] = &unk_278683548;
  v14 = *(a1 + 5);
  v3 = *(&v14 + 1);
  v4 = a1[7];
  v5 = a1[8];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v20 = v14;
  v21 = v6;
  v7 = [v2 na_map:v19];
  v8 = MEMORY[0x277D2C900];
  v9 = MEMORY[0x277D2C938];
  v10 = [a1[5] workQueue];
  v11 = [v9 schedulerWithDispatchQueue:v10];
  v12 = [v8 combineAllFutures:v7 ignoringErrors:1 scheduler:v11];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_4;
  v15[3] = &unk_2786831A0;
  v15[4] = a1[5];
  v16 = a1[8];
  v17 = a1[4];
  v18 = a1[9];
  v13 = [v12 flatMap:v15];
}

uint64_t __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__235110;
  v18 = __Block_byref_object_dispose__235111;
  v19 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_420;
  v9 = &unk_278683570;
  v4 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v4;
  v12 = *(a1 + 48);
  v13 = &v14;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:&v6];
  [*(a1 + 56) finishWithResult:0 error:{v15[5], v6, v7, v8, v9, v10}];

  _Block_object_dispose(&v14, 8);
  return 0;
}

void __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_420(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
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
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v13 = [*(a1 + 48) objectAtIndexedSubscript:a3];
      [v13 uuid];
      v14 = v16 = v8;
      *buf = 138544130;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed individual accessory %@ addOrUpdateIssuerKey with error %@", buf, 0x2Au);

      v8 = v16;
    }

    objc_autoreleasePoolPop(v8);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_2(id *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1[4] && [v3 BOOLValue])
  {
    v5 = -[HMDWalletKeyAliroHealingEvent initWithControllerType:userPrivilege:]([HMDWalletKeyAliroHealingEvent alloc], "initWithControllerType:userPrivilege:", [a1[4] integerValue], objc_msgSend(a1[5], "privilege"));
    v6 = [a1[6] home];
    v7 = [v6 logEventSubmitter];
    [v7 submitLogEvent:v5 error:0];

    v8 = objc_autoreleasePoolPush();
    v9 = a1[6];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[7] UUID];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Healing Mechanism successfully added new issuer key", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  [a1[8] finishWithNoResult];

  v13 = *MEMORY[0x277D85DE8];
}

void __121__HMDHomeWalletKeyAccessoryManager_addOrUpdateIssuerKey_forUser_toMatterAccessory_withControllerType_unifiedAccess_flow___block_invoke_417(id *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Healing Mechanism triggered but failed with error %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [a1[6] finishWithError:v3];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_addOrUpdateIssuerKey:(id)key forUser:(id)user toMatterAccessory:(id)accessory unifiedAccess:(BOOL)access flow:(id)flow
{
  accessCopy = access;
  v74 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  userCopy = user;
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (accessCopy)
  {
    supportsMatterWalletKey = [accessoryCopy supportsMatterWalletKey];
    bOOLValue = [supportsMatterWalletKey BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
LABEL_3:
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v63 = v22;
        v64 = 2112;
        v65 = uUID;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Accessory is not ACWG or unified access is not enabled", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = MEMORY[0x277D2C900];
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      naFuture = [v24 futureWithError:v25];

      goto LABEL_18;
    }
  }

  else if (([accessoryCopy supportsACWGProvisioning] & 1) == 0)
  {
    goto LABEL_3;
  }

  v27 = [accessoryCopy supportsWalletKeyForUser:userCopy withFlow:flowCopy];
  v28 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v30 = HMFGetOSLogHandle();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (v27)
  {
    v53 = keyCopy;
    if (v31)
    {
      v32 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v34 = HMFBooleanToString();
      *buf = 138544642;
      v63 = v32;
      v64 = 2112;
      v65 = uUID2;
      v66 = 2112;
      v67 = v53;
      v68 = 2112;
      v69 = userCopy;
      v70 = 2112;
      v71 = accessoryCopy;
      v72 = 2112;
      v73 = v34;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addOrUpdateIssuerKey: %@, forUser: %@, toAccessory: %@, unifiedAccess: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v28);
    if (!accessCopy)
    {
      acwgIssuerPublicKeyExternalRepresentation = [userCopy acwgIssuerPublicKeyExternalRepresentation];
      v36 = objc_autoreleasePoolPush();
      v37 = selfCopy2;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        v52 = v37;
        uUID3 = [flowCopy UUID];
        uuid = [userCopy uuid];
        HMFEqualObjects();
        v40 = HMFBooleanToString();
        *buf = 138544642;
        v63 = v51;
        v64 = 2112;
        v65 = uUID3;
        v66 = 2112;
        v67 = uuid;
        v68 = 2112;
        v69 = acwgIssuerPublicKeyExternalRepresentation;
        v70 = 2112;
        v71 = v53;
        v72 = 2112;
        v73 = v40;
        v41 = v40;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User %@ home graph issuer key: %@ requested issuer key: %@ does match: %@", buf, 0x3Eu);

        v37 = v52;
      }

      objc_autoreleasePoolPop(v36);
    }

    v42 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke;
    v55[3] = &unk_2786834A8;
    keyCopy = v53;
    v56 = v53;
    v57 = userCopy;
    v61 = accessCopy;
    v58 = flowCopy;
    v59 = selfCopy2;
    v60 = accessoryCopy;
    v43 = [v42 then:v55];
    naFuture = [v43 naFuture];
  }

  else
  {
    if (v31)
    {
      v44 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      [userCopy uuid];
      v46 = v54 = keyCopy;
      uuid2 = [accessoryCopy uuid];
      *buf = 138544130;
      v63 = v44;
      v64 = 2112;
      v65 = uUID4;
      v66 = 2112;
      v67 = v46;
      v68 = 2112;
      v69 = uuid2;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipped adding wallet key to accessory because wallet keys are not supported for user: %@ on accessory: %@", buf, 0x2Au);

      keyCopy = v54;
    }

    objc_autoreleasePoolPop(v28);
    naFuture = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

LABEL_18:

  v48 = *MEMORY[0x277D85DE8];

  return naFuture;
}

uint64_t __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) uniqueIDForAccessories];
  v6 = [v3 addOrUpdateIssuerKeyData:v4 forUserUniqueID:v5 isUnifiedAccess:*(a1 + 72) flow:*(a1 + 48)];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke_2;
  v25[3] = &unk_278683458;
  v20 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 48);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v20;
  *(&v11 + 1) = v7;
  v26 = v11;
  v27 = v10;
  v12 = v3;
  v28 = v12;
  v29 = *(a1 + 32);
  v30 = *(a1 + 72);
  v13 = [v6 recover:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke_4;
  v22[3] = &unk_278683480;
  v24 = *(a1 + 72);
  v21 = *(a1 + 48);
  v14 = v21.i64[0];
  v23 = vextq_s8(v21, v21, 8uLL);
  v15 = [v13 recover:v22];
  if (v15)
  {
    v16 = v15;

    return 3;
  }

  else
  {
    v18 = _HMFPreconditionFailure();
    return __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke_2(v18, v19);
  }
}

uint64_t __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != *MEMORY[0x277D17AA8])
  {

LABEL_6:
    v14 = v3;
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v13 = 2;
    goto LABEL_10;
  }

  v6 = [v3 code];

  if (v6 != 11)
  {
    goto LABEL_6;
  }

  v7 = [*(a1 + 32) home];
  v8 = [*(a1 + 40) uuid];
  v9 = [v7 findOrAddUserIndexForUserUUID:v8 guestName:0 accessory:*(a1 + 48) flow:*(a1 + 56)];
  v10 = [v9 hmfFuture];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke_3;
  v19[3] = &unk_278683430;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v23 = *(a1 + 80);
  v22 = *(a1 + 56);
  v11 = [v10 then:v19];
  if (v11)
  {
    v12 = v11;

    v13 = 3;
LABEL_10:

    return v13;
  }

  v18 = _HMFPreconditionFailure();
  return __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke_4(v18);
}

uint64_t __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) != 1)
  {
LABEL_8:
    v14 = v4;
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v13 = 2;
    goto LABEL_12;
  }

  v5 = [v3 domain];
  v6 = v5;
  if (v5 != *MEMORY[0x277D17AA8])
  {

    goto LABEL_8;
  }

  v7 = [v4 code];

  if (v7 != 8)
  {
    goto LABEL_8;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) UUID];
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Ignoring duplicate error while updating Issuer key", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = 1;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __103__HMDHomeWalletKeyAccessoryManager__addOrUpdateIssuerKey_forUser_toMatterAccessory_unifiedAccess_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) addOrUpdateIssuerKeyData:*(a1 + 40) forUserIndex:v3 isUnifiedAccess:*(a1 + 56) flow:*(a1 + 48)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMDHomeWalletKeyAccessoryManager *)v7 _addIssuerKeyForUser:v8 toMatterAccessory:v9 flow:v10, v11];
  }
}

- (id)_addIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow
{
  v43 = *MEMORY[0x277D85DE8];
  userCopy = user;
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = [accessoryCopy supportsWalletKeyForUser:userCopy withFlow:flowCopy];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138544130;
      v36 = v17;
      v37 = 2112;
      v38 = uUID;
      v39 = 2112;
      v40 = userCopy;
      v41 = 2112;
      v42 = accessoryCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeyForUser: %@, toAccessory: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
    uuid = [userCopy uuid];
    v21 = [home findOrAddUserIndexForUserUUID:uuid guestName:0 accessory:accessoryCopy flow:flowCopy];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke;
    v30[3] = &unk_278683408;
    v31 = accessoryCopy;
    v32 = userCopy;
    v33 = selfCopy;
    v34 = flowCopy;
    v22 = [v21 flatMap:v30];
  }

  else
  {
    if (v16)
    {
      v23 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      uuid2 = [userCopy uuid];
      uuid3 = [accessoryCopy uuid];
      *buf = 138544130;
      v36 = v23;
      v37 = 2112;
      v38 = uUID2;
      v39 = 2112;
      v40 = uuid2;
      v41 = 2112;
      v42 = uuid3;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipped adding wallet key to accessory because wallet keys are not supported for user: %@ on accessory: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v27 = MEMORY[0x277D2C900];
    home = [MEMORY[0x277CBEB68] null];
    v22 = [v27 futureWithResult:home];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v22;
}

id __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke(id *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([a1[4] supportsACWGProvisioning])
  {
    if ([a1[5] isCurrentUser])
    {
      v4 = objc_opt_new();
      v5 = +[HMDACWGKeyManager shared];
      v6 = [a1[6] home];
      v7 = [v6 uuid];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke_2;
      v27[3] = &unk_2786833E0;
      v8 = a1[7];
      v27[4] = a1[6];
      v28 = v8;
      v9 = v4;
      v29 = v9;
      v30 = a1[5];
      v31 = v3;
      v32 = a1[4];
      [v5 getIssuerKeyPairExternalRepresentationFromKeychainForHomeUUID:v7 completionHandler:v27];

      v10 = v32;
      v11 = v9;
    }

    else
    {
      v14 = a1[6];
      v15 = a1[4];
      v16 = [a1[5] acwgIssuerPublicKeyExternalRepresentation];
      v11 = [v14 _addIssuerKeyForUserIndex:v3 toMatterAccessory:v15 isUnifiedAccess:0 issuerKeyData:v16 withFlow:a1[7]];
    }
  }

  else
  {
    v12 = a1[6];
    v13 = [objc_opt_class() createMatterIssuerKeyDataForUser:a1[5] withUserIndex:v3 flow:a1[7]];
    if (v13)
    {
      v11 = [a1[6] _addIssuerKeyForUserIndex:v3 toMatterAccessory:a1[4] isUnifiedAccess:1 issuerKeyData:v13 withFlow:a1[7]];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a1[6];
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [a1[7] UUID];
        v22 = [a1[5] uuid];
        *buf = 138543874;
        v34 = v20;
        v35 = 2112;
        v36 = v21;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not adding issuer key because we don't have one for user: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v23 = MEMORY[0x277D2C900];
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v11 = [v23 futureWithError:v24];
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

void __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [*(a1 + 32) workQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke_3;
  v20[3] = &unk_278684158;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v21 = v7;
  v22 = v10;
  v23 = v11;
  v24 = v8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v25 = v17;
  v26 = v16;
  v18 = v8;
  v19 = v7;
  dispatch_async(v9, v20);
}

void __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [HMDNIST256Utilities publicKeyExternalRepresentationFromKeyPairExternalRepresentation:?];
    if (v2)
    {
      v3 = [*(a1 + 40) _addIssuerKeyForUserIndex:*(a1 + 80) toMatterAccessory:*(a1 + 88) isUnifiedAccess:0 issuerKeyData:v2 withFlow:*(a1 + 48)];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke_405;
      v20[3] = &unk_2786833B8;
      v21 = *(a1 + 64);
      v4 = [v3 addCompletionBlock:v20];

      v5 = v21;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 48) UUID];
        v17 = [*(a1 + 72) uuid];
        *buf = 138543874;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not adding issuer key because we don't have one for user: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v18 = *(a1 + 64);
      v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      [v18 finishWithError:v5];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v11 = *(a1 + 56);
      *buf = 138543874;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to get ACWG issuer key with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 64) finishWithError:*(a1 + 56)];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_addIssuerKeyForUserIndex:(id)index toMatterAccessory:(id)accessory isUnifiedAccess:(BOOL)access issuerKeyData:(id)data withFlow:(id)flow
{
  indexCopy = index;
  accessoryCopy = accessory;
  dataCopy = data;
  flowCopy = flow;
  v16 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke;
  v49[3] = &unk_2786832F0;
  v50 = dataCopy;
  v17 = indexCopy;
  v51 = v17;
  accessCopy = access;
  v18 = flowCopy;
  v52 = v18;
  v35 = dataCopy;
  v19 = [v16 then:v49];
  naFuture = [v19 naFuture];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_2;
  v46[3] = &unk_278683318;
  v46[4] = self;
  v21 = accessoryCopy;
  v47 = v21;
  v22 = v18;
  v48 = v22;
  v23 = [naFuture recover:v46];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_398;
  v42[3] = &unk_278683340;
  v42[4] = self;
  v24 = v22;
  v43 = v24;
  v25 = v17;
  v44 = v25;
  v26 = v21;
  v45 = v26;
  v27 = [v23 addFailureBlock:v42];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_399;
  v38[3] = &unk_278683368;
  v38[4] = self;
  v28 = v26;
  v39 = v28;
  v40 = v24;
  v41 = v25;
  v29 = v25;
  v30 = v24;
  v31 = [v27 addSuccessBlock:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_400;
  v36[3] = &unk_278683390;
  v37 = v28;
  v32 = v28;
  v33 = [v31 flatMap:v36];

  return v33;
}

uint64_t __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addIssuerKeyData:*(a1 + 32) forUserIndex:objc_msgSend(*(a1 + 40) isUnifiedAccess:"integerValue") flow:{*(a1 + 56), *(a1 + 48)}];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_2(v7);
  }
}

id __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_2(id *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != *MEMORY[0x277D17AA8])
  {

LABEL_7:
    v14 = [MEMORY[0x277D2C900] futureWithError:v3];
    goto LABEL_8;
  }

  v6 = [v3 code];

  if (v6 != 8)
  {
    goto LABEL_7;
  }

  v7 = a1[4];
  v8 = [a1[5] uuid];
  [v7 updateHomeWalletKeyAddForAccessoryUUID:v8 keyType:1];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [a1[6] UUID];
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Ignoring duplicate error while adding Issuer key", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_8:
  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_398(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = 138544386;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add issuer key for user index: %@, to accessory: %@, with error: %@", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

void __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_399(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) uuid];
  [v4 updateHomeWalletKeyAddForAccessoryUUID:v5 keyType:1];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 48) UUID];
    v11 = *(a1 + 56);
    v12 = [*(a1 + 40) uuid];
    v14 = 138544130;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured issuer key for user index: %@ on accessory: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
}

id __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_400(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) uuid];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)addIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow
{
  userCopy = user;
  accessoryCopy = accessory;
  flowCopy = flow;
  v11 = objc_opt_new();
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDHomeWalletKeyAccessoryManager_addIssuerKeyForUser_toMatterAccessory_flow___block_invoke;
  block[3] = &unk_278689550;
  block[4] = self;
  v21 = userCopy;
  v22 = accessoryCopy;
  v23 = flowCopy;
  v13 = v11;
  v24 = v13;
  v14 = flowCopy;
  v15 = accessoryCopy;
  v16 = userCopy;
  dispatch_async(workQueue, block);

  v17 = v24;
  v18 = v13;

  return v13;
}

void __79__HMDHomeWalletKeyAccessoryManager_addIssuerKeyForUser_toMatterAccessory_flow___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _addIssuerKeyForUser:*(a1 + 40) toMatterAccessory:*(a1 + 48) flow:*(a1 + 56)];
  v2 = [*(a1 + 64) completionHandlerAdapter];
  v3 = [v4 addCompletionBlock:v2];
}

- (id)addIssuerKeysToMatterTTUAccessoriesForUser:(id)user flow:(id)flow
{
  v33 = *MEMORY[0x277D85DE8];
  userCopy = user;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v28 = v12;
    v29 = 2112;
    v30 = uUID;
    v31 = 2112;
    v32 = userCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterTTUAccessoriesForUser: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  matterAccessoriesSupportingWalletKey = [(HMDHomeWalletKeyAccessoryManager *)selfCopy matterAccessoriesSupportingWalletKey];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke;
  v24[3] = &unk_2786830F0;
  v24[4] = selfCopy;
  v25 = userCopy;
  v26 = flowCopy;
  v15 = flowCopy;
  v16 = userCopy;
  v17 = [matterAccessoriesSupportingWalletKey na_map:v24];

  v18 = MEMORY[0x277D2C900];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v20 = [v18 combineAllFutures:v17 ignoringErrors:1 scheduler:globalAsyncScheduler];
  v21 = [v20 flatMap:&__block_literal_global_392_235141];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 na_any:&__block_literal_global_394_235143])
  {
    v3 = [v2 na_map:&__block_literal_global_396];
    v4 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  return v4;
}

void *__84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

uint64_t __84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (id)addIssuerKeysToMatterAccessory:(id)accessory flow:(id)flow
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v32 = v12;
    v33 = 2112;
    v34 = uUID;
    v35 = 2112;
    v36 = accessoryCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  users = [home users];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke;
  v28[3] = &unk_2786832C8;
  v28[4] = selfCopy;
  v16 = accessoryCopy;
  v29 = v16;
  v30 = flowCopy;
  v17 = flowCopy;
  v18 = [users na_map:v28];

  v19 = MEMORY[0x277D2C900];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v21 = [v19 combineAllFutures:v18 ignoringErrors:1 scheduler:globalAsyncScheduler];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke_2;
  v26[3] = &unk_2786883B8;
  v27 = v16;
  v22 = v16;
  v23 = [v21 flatMap:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

id __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 na_any:&__block_literal_global_390_235146];
  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [*(a1 + 32) uuid];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [v4 futureWithResult:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (id)addIssuerKeysToMatterAccessories:(id)accessories flow:(id)flow
{
  v32 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v27 = v12;
    v28 = 2112;
    v29 = uUID;
    v30 = 2112;
    v31 = accessoriesCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = MEMORY[0x277D2C900];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __74__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessories_flow___block_invoke;
  v23 = &unk_2786832A0;
  v24 = selfCopy;
  v25 = flowCopy;
  v15 = flowCopy;
  v16 = [accessoriesCopy na_map:&v20];
  v17 = [v14 combineAllFuturesFlatteningArrayResults:{v16, v20, v21, v22, v23, v24}];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)addIssuerKeysToMatterV1AccessoriesWithFlow:(id)flow
{
  v25 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = uUID;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessories", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  matterAccessoriesSupportingWalletKeyExcludingACP = [(HMDHomeWalletKeyAccessoryManager *)selfCopy matterAccessoriesSupportingWalletKeyExcludingACP];
  hmf_isEmpty = [matterAccessoriesSupportingWalletKeyExcludingACP hmf_isEmpty];

  if (hmf_isEmpty)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = uUID2;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No Matter accessories supporting wallet key excluding aliro, so nothing to add Issuer key to.", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    matterAccessoriesSupportingWalletKeyExcludingACP2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy matterAccessoriesSupportingWalletKeyExcludingACP];
    v19 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy addIssuerKeysToMatterAccessories:matterAccessoriesSupportingWalletKeyExcludingACP2 flow:flowCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddIssuerKeysToMatterV1AccessoriesMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  flow = [messageCopy flow];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v19 = v9;
    v20 = 2112;
    v21 = uUID;
    v22 = 2112;
    v23 = messageCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] _handleAddIssuerKeysToAccessoriesMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = selfCopy;
  v16 = flow;
  v17 = messageCopy;
  v12 = messageCopy;
  v13 = flow;
  dispatch_async(workQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] matterAccessoriesSupportingWalletKeyExcludingACP];
  v3 = [v2 hmf_isEmpty];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [a1[5] UUID];
      *buf = 138543618;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No Matter accessories supporting wallet key excluding aliro, so nothing to add Issuer key to.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] respondWithSuccess];
  }

  v9 = a1[4];
  v10 = [v9 matterAccessoriesSupportingWalletKeyExcludingACP];
  v11 = [v9 addIssuerKeysToMatterAccessories:v10 flow:a1[5]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke_387;
  v17[3] = &unk_278682F48;
  v18 = a1[6];
  v12 = [v11 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke_2;
  v15[3] = &unk_27868A250;
  v16 = a1[6];
  v13 = [v12 addFailureBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleHMDHomeConfigureMatterAccessoryWithReaderKeyMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterTTU", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    flow = [messageCopy flow];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      uUID = [flow UUID];
      *buf = 138543874;
      v26 = v9;
      v27 = 2112;
      v28 = uUID;
      v29 = 2112;
      v30 = messageCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling HMDHomeConfigureMatterAccessoryWithReaderKeyMessage message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v24 = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v12 = [messageCopy unarchivedObjectForKey:@"HMDHomeConfigureMatterAccessoryWithReaderKeyMessageKeyAccessoryUUID" ofClasses:v11];

    home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
    v14 = [home accessoryWithUUID:v12];

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
      [(HMDHomeWalletKeyAccessoryManager *)selfCopy configureNFCReaderKeyForAccessory:v16 flow:flow];
      [messageCopy respondWithSuccess];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        uUID2 = [flow UUID];
        *buf = 138543874;
        v26 = v20;
        v27 = 2112;
        v28 = uUID2;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find accessory with uuid: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleConfigureAccessoriesWithDeviceCredentialKeyMessage:(id)message
{
  v80 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [(__CFString *)messageCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    messagePayload = [(__CFString *)messageCopy messagePayload];
    *buf = 138544130;
    v73 = v10;
    v74 = 2112;
    v75 = uUID;
    v76 = 2112;
    v77 = messageCopy;
    v78 = 2112;
    v79 = messagePayload;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to configure device credential key %@ with payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v14 = [(__CFString *)messageCopy userForHome:home];

  if (v14)
  {
    destination = [(__CFString *)messageCopy destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = destination;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v18 = [(__CFString *)messageCopy dataForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey"];
      if (v18)
      {
        v63 = flow;
        v19 = [(__CFString *)messageCopy numberForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType"];
        if (v19)
        {
          v20 = [(__CFString *)messageCopy arrayForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyAccessoryUUIDs"];
          if (v20)
          {
            v21 = [MEMORY[0x277CBEB58] set];
            v69[0] = MEMORY[0x277D85DD0];
            v69[1] = 3221225472;
            v69[2] = __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke;
            v69[3] = &unk_278683278;
            v69[4] = selfCopy;
            v22 = flow;
            v70 = v22;
            v71 = v21;
            v58 = v21;
            [v20 na_map:v69];
            v23 = v60 = v18;
            integerValue = [v19 integerValue];
            device = [v17 device];
            identifier = [device identifier];
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke_378;
            v66[3] = &unk_278688D58;
            v66[4] = selfCopy;
            v67 = v22;
            v68 = messageCopy;
            v26 = selfCopy;
            v27 = v58;
            [(HMDHomeWalletKeyAccessoryManager *)v26 configureAccessories:v23 withDeviceCredentialKey:v60 ofType:integerValue forDeviceWithUUID:identifier user:v14 flow:v67 completion:v66];

            v18 = v60;
          }

          else
          {
            v51 = objc_autoreleasePoolPush();
            v52 = selfCopy;
            v53 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v59 = HMFGetLogIdentifier();
              v62 = v51;
              uUID2 = [v63 UUID];
              *buf = 138543874;
              v73 = v59;
              v74 = 2112;
              v75 = uUID2;
              v55 = uUID2;
              v76 = 2112;
              v77 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyAccessoryUUIDs";
              _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, mising parameter: %@", buf, 0x20u);

              v51 = v62;
            }

            objc_autoreleasePoolPop(v51);
            v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
            [(__CFString *)messageCopy respondWithError:v27];
          }
        }

        else
        {
          v46 = objc_autoreleasePoolPush();
          v47 = selfCopy;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v49 = v61 = v46;
            uUID3 = [flow UUID];
            *buf = 138543874;
            v73 = v49;
            v74 = 2112;
            v75 = uUID3;
            v76 = 2112;
            v77 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType";
            _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, missing parameter: %@", buf, 0x20u);

            v46 = v61;
          }

          objc_autoreleasePoolPop(v46);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          [(__CFString *)messageCopy respondWithError:v20];
        }

        flow = v63;
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v65 = v40;
          v44 = v43 = flow;
          uUID4 = [v43 UUID];
          *buf = 138543874;
          v73 = v44;
          v74 = 2112;
          v75 = uUID4;
          v76 = 2112;
          v77 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey";
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, missing parameter: %@", buf, 0x20u);

          flow = v43;
          v40 = v65;
        }

        objc_autoreleasePoolPop(v40);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [(__CFString *)messageCopy respondWithError:v19];
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        uUID5 = [flow UUID];
        [(__CFString *)messageCopy destination];
        v38 = v64 = flow;
        v39 = objc_opt_class();
        *buf = 138544130;
        v73 = v36;
        v74 = 2112;
        v75 = uUID5;
        v76 = 2112;
        v77 = v38;
        v78 = 2112;
        v79 = v39;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Message destination is not of expected type %@:%@", buf, 0x2Au);

        flow = v64;
      }

      objc_autoreleasePoolPop(v33);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(__CFString *)messageCopy respondWithError:v18];
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      uUID6 = [flow UUID];
      *buf = 138543618;
      v73 = v31;
      v74 = 2112;
      v75 = uUID6;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, user not found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(__CFString *)messageCopy respondWithError:v17];
  }

  v56 = *MEMORY[0x277D85DE8];
}

id __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke(id *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
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

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    if (v6)
    {
      v7 = [a1[4] home];
      v8 = [v7 accessoryWithUUID:v6];

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
        goto LABEL_20;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = a1[4];
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [a1[5] UUID];
        v28 = 138543874;
        v29 = v14;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, accessory with uuid: %@ not found", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      [a1[6] addObject:v6];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a1[4];
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [a1[5] UUID];
        v28 = 138544130;
        v29 = v24;
        v30 = 2112;
        v31 = v25;
        v32 = 2112;
        v33 = v5;
        v34 = 2112;
        v35 = objc_opt_class();
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, failed to convert accessory uuid: %@ to: %@", &v28, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
    }

    v10 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = a1[4];
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [a1[5] UUID];
    v28 = 138544130;
    v29 = v19;
    v30 = 2112;
    v31 = v20;
    v32 = 2112;
    v33 = v3;
    v34 = 2112;
    v35 = objc_opt_class();
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, unknown type for uuid: %@ expected: %@", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v10 = 0;
LABEL_21:

  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

void __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke_378(id *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [a1[5] UUID];
      v11 = a1[6];
      *buf = 138544130;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    [a1[6] respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v14 = a1[6];
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully handled configure device credential key message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v15 = a1[6];
    v18 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyDidSucceed";
    v19 = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v15 respondWithPayload:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)missingWalletKeysForAccessoryUUID:(id)d usersByUniqueID:(id)iD accessoryUsersByUniqueID:(id)uniqueID flow:(id)flow
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  uniqueIDCopy = uniqueID;
  flowCopy = flow;
  uuid = [dCopy uuid];
  supportsMatterWalletKey = [dCopy supportsMatterWalletKey];
  bOOLValue = [supportsMatterWalletKey BOOLValue];

  if (!bOOLValue)
  {
    goto LABEL_4;
  }

  allValues = [uniqueIDCopy allValues];
  allKeys = [allValues na_firstObjectPassingTest:&__block_literal_global_360_235169];

  credentials = [allKeys credentials];
  v20 = [credentials na_firstObjectPassingTest:&__block_literal_global_363];

  if (v20)
  {

LABEL_4:
    v21 = MEMORY[0x277CBEB98];
    allKeys = [iDCopy allKeys];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_2_366;
    v36[3] = &unk_278683250;
    v37 = uniqueIDCopy;
    selfCopy = self;
    v39 = flowCopy;
    v40 = uuid;
    v41 = iDCopy;
    v42 = dCopy;
    allValues2 = uuid;
    v23 = [allKeys na_map:v36];
    v24 = [v21 setWithArray:v23];

    v25 = v37;
    goto LABEL_5;
  }

  v28 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    [flowCopy UUID];
    v32 = v35 = v28;
    *buf = 138543874;
    v46 = v31;
    v47 = 2112;
    v48 = v32;
    v49 = 2112;
    v50 = uuid;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reader key is missing on accessory: %@", buf, 0x20u);

    v28 = v35;
  }

  objc_autoreleasePoolPop(v28);
  v33 = MEMORY[0x277CBEB98];
  allValues2 = [iDCopy allValues];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_364;
  v43[3] = &unk_278683208;
  v44 = uuid;
  v25 = uuid;
  v34 = [allValues2 na_map:v43];
  v24 = [v33 setWithArray:v34];

LABEL_5:
  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_364(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1C18];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [v4 uuid];

  v8 = [v5 initWithAccessoryUUID:v6 userUUID:v7];

  return v8;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_2_366(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) allKeys];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v7 = [*(a1 + 72) supportsACWGProvisioning];
    v8 = [v6 credentials];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 na_map:&__block_literal_global_370_235174];

      if (![v10 count])
      {
        v11 = objc_autoreleasePoolPush();
        v12 = *(a1 + 40);
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = [*(a1 + 48) UUID];
          v37 = *(a1 + 56);
          v16 = [*(a1 + 64) objectForKeyedSubscript:v3];
          [v16 uuid];
          v17 = v39 = v11;
          *buf = 138544130;
          v41 = v14;
          v42 = 2112;
          v43 = v15;
          v44 = 2112;
          v45 = v37;
          v46 = 2112;
          v47 = v17;
          v18 = "%{public}@[Flow: %@] User does not have an issuer key on accessory: %@, user: %@";
LABEL_13:
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, v18, buf, 0x2Au);

          v11 = v39;
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v10 = [v8 na_map:&__block_literal_global_373_235176];

      if (![v10 count])
      {
        v11 = objc_autoreleasePoolPush();
        v12 = *(a1 + 40);
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = [*(a1 + 48) UUID];
          v38 = *(a1 + 56);
          v16 = [*(a1 + 64) objectForKeyedSubscript:v3];
          [v16 uuid];
          v17 = v39 = v11;
          *buf = 138544130;
          v41 = v14;
          v42 = 2112;
          v43 = v15;
          v44 = 2112;
          v45 = v38;
          v46 = 2112;
          v47 = v17;
          v18 = "%{public}@[Flow: %@] User does not have at least 1 RFID credentials on accessory: %@, user: %@";
          goto LABEL_13;
        }

LABEL_14:

        objc_autoreleasePoolPop(v11);
        v31 = objc_alloc(MEMORY[0x277CD1C18]);
        v32 = *(a1 + 56);
        v33 = [*(a1 + 64) objectForKeyedSubscript:v3];
        v34 = [v33 uuid];
        v30 = [v31 initWithAccessoryUUID:v32 userUUID:v34];

        goto LABEL_15;
      }
    }

    v30 = 0;
    goto LABEL_15;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 40);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [*(a1 + 48) UUID];
    v24 = *(a1 + 56);
    v25 = [*(a1 + 64) objectForKeyedSubscript:v3];
    v26 = [v25 uuid];
    *buf = 138544130;
    v41 = v22;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    v46 = 2112;
    v47 = v26;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Matter user is missing on accessory: %@, user: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
  v27 = objc_alloc(MEMORY[0x277CD1C18]);
  v28 = *(a1 + 56);
  v6 = [*(a1 + 64) objectForKeyedSubscript:v3];
  v29 = [v6 uuid];
  v30 = [v27 initWithAccessoryUUID:v28 userUUID:v29];

LABEL_15:
  v35 = *MEMORY[0x277D85DE8];

  return v30;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_371(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 credentialType];
  v4 = [v3 isEqualToNumber:*MEMORY[0x277D17990]];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_367(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 credentialType];
  v4 = [v3 isEqualToNumber:*MEMORY[0x277D17988]];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 credentialType];
  v3 = *MEMORY[0x277D17990];
  v4 = HMFEqualObjects();

  return v4;
}

uint64_t __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userUniqueID];
  v3 = *MEMORY[0x277D17AB8];
  v4 = HMFEqualObjects();

  return v4;
}

- (id)fetchMissingWalletKeysForAccessory:(id)accessory users:(id)users flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  usersCopy = users;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138544130;
    v40 = v14;
    v41 = 2112;
    v42 = uUID;
    v43 = 2112;
    v44 = accessoryCopy;
    v45 = 2112;
    v46 = usersCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys from accessory: %@, users: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (accessoryCopy)
  {
    v16 = [usersCopy na_dictionaryWithKeyGenerator:&__block_literal_global_353];
    v17 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
    naFuture = [v17 naFuture];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_2;
    v36[3] = &unk_278683158;
    v19 = v16;
    v37 = v19;
    v20 = flowCopy;
    v38 = v20;
    v21 = [naFuture flatMap:v36];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_3;
    v32[3] = &unk_2786831A0;
    v32[4] = selfCopy;
    v33 = accessoryCopy;
    v34 = v19;
    v35 = v20;
    v22 = v19;
    v23 = [v21 flatMap:v32];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v40 = v27;
      v41 = 2112;
      v42 = uUID2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Returning empty set for nil accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CBEB98] set];
    v23 = [v29 futureWithResult:v17];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

id __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allKeys];
  v6 = [v5 arrayByAddingObject:*MEMORY[0x277D17AB8]];

  v7 = [v4 getUsersWithUniqueIDs:v6 flow:*(a1 + 40)];

  v8 = [v7 naFuture];

  return v8;
}

id __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 na_dictionaryWithKeyGenerator:&__block_literal_global_357_235186];
  v4 = [*(a1 + 32) missingWalletKeysForAccessoryUUID:*(a1 + 40) usersByUniqueID:*(a1 + 48) accessoryUsersByUniqueID:v3 flow:*(a1 + 56)];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

- (id)fetchMissingWalletKeysForUserUUID:(id)d flow:(id)flow
{
  v56 = *MEMORY[0x277D85DE8];
  dCopy = d;
  flowCopy = flow;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v51 = v11;
    v52 = 2112;
    v53 = uUID;
    v54 = 2112;
    v55 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys for user UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v14 = [home userWithUUID:dCopy];
  accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke;
  v48[3] = &unk_2786830C8;
  v16 = v14;
  v49 = v16;
  v17 = [accessoriesWithWalletKeySupport na_filter:v48];

  if ([v17 hmf_isEmpty])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v40 = v17;
      v23 = v22 = dCopy;
      *buf = 138543618;
      v51 = v21;
      v52 = 2112;
      v53 = v23;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find any Matter accessories supporting TTU", buf, 0x16u);

      dCopy = v22;
      v17 = v40;
    }

    objc_autoreleasePoolPop(v18);
    v24 = MEMORY[0x277D2C900];
    v25 = [MEMORY[0x277CBEB98] set];
    v26 = [v24 futureWithResult:v25];
  }

  else
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_341;
    v45[3] = &unk_2786830F0;
    v45[4] = selfCopy;
    v46 = v16;
    v41 = home;
    v27 = v16;
    v28 = dCopy;
    v29 = flowCopy;
    v47 = v29;
    v30 = [v17 na_map:v45];
    v31 = MEMORY[0x277D2C900];
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v33 = [v31 combineAllFutures:v30 ignoringErrors:1 scheduler:immediateScheduler];
    [v33 flatMap:&__block_literal_global_346];
    v34 = v17;
    v36 = v35 = flowCopy;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_4;
    v42[3] = &unk_278689A18;
    v42[4] = selfCopy;
    v37 = v29;
    dCopy = v28;
    v16 = v27;
    home = v41;
    v43 = v37;
    v44 = dCopy;
    v26 = [v36 addCompletionBlock:v42];

    flowCopy = v35;
    v17 = v34;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuid];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v4 areAccessoriesInAllowedList:v6];

  if (v7)
  {
    v7 = [v3 supportsCHIP];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

id __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_341(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v10 = a1[5];
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v3 fetchMissingWalletKeysForAccessory:v5 users:v6 flow:{a1[6], v10, v11}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
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
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v19 = 138544130;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[Flow: %@] Found missing wallet keys for userUUID: %@ missing wallet keys: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_229538000, v15, v16, v14, &v19, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) UUID];
    v17 = *(a1 + 48);
    v19 = 138544130;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v6;
    v14 = "%{public}@[Flow: %@] Failed to fetch missing wallet keys for userUUID: %@, error: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = *MEMORY[0x277D85DE8];
}

id __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 na_map:&__block_literal_global_349_235195];
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];
  v4 = [v3 na_setByFlattening];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

void *__75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (id)fetchMissingWalletKeysForAccessoryUUID:(id)d forUser:(id)user flow:(id)flow
{
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  userCopy = user;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v47 = v14;
    v48 = 2112;
    v49 = uUID;
    v50 = 2112;
    v51 = dCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys for accessory UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v17 = [home accessoryWithUUID:dCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v45 = dCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v21 = [userCopy areAccessoriesInAllowedList:v20];

  if (v21)
  {
    if ([v19 supportsWalletKey])
    {
      users = [home users];
      v23 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchMissingWalletKeysForAccessory:v19 users:users flow:flowCopy];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __88__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessoryUUID_forUser_flow___block_invoke;
      v42[3] = &unk_2786830A0;
      v42[4] = selfCopy;
      v43 = flowCopy;
      v44 = dCopy;
      v24 = [v23 addCompletionBlock:v42];

      goto LABEL_16;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      [v19 uuid];
      v37 = v41 = v32;
      *buf = 138543874;
      v47 = v35;
      v48 = 2112;
      v49 = uUID2;
      v50 = 2112;
      v51 = v37;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not fetching missing wallet keys for accessory that does not support wallet key: %@", buf, 0x20u);

      v32 = v41;
    }

    objc_autoreleasePoolPop(v32);
    v38 = MEMORY[0x277D2C900];
    users = [MEMORY[0x277CBEB98] set];
    v31 = [v38 futureWithResult:users];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138543874;
      v47 = v28;
      v48 = 2112;
      v49 = uUID3;
      v50 = 2112;
      v51 = dCopy;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] User is not permitted to operate on accessory as it is not in allowed list : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v30 = MEMORY[0x277D2C900];
    users = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2907];
    v31 = [v30 futureWithError:users];
  }

  v24 = v31;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];

  return v24;
}

void __88__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessoryUUID_forUser_flow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
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
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v19 = 138544130;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[Flow: %@] Found missing wallet keys for accessoryUUID: %@ missing wallet keys: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_229538000, v15, v16, v14, &v19, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) UUID];
    v17 = *(a1 + 48);
    v19 = 138544130;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v6;
    v14 = "%{public}@[Flow: %@] Failed to fetch missing wallet keys for accessoryUUID: %@, error: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = *MEMORY[0x277D85DE8];
}

- (id)restoreMissingWalletKeys:(id)keys onAccessory:(id)accessory flow:(id)flow
{
  v54 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  accessoryCopy = accessory;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    *buf = 138544130;
    v47 = v14;
    v48 = 2112;
    v49 = uUID;
    v50 = 2112;
    v51 = keysCopy;
    v52 = 2112;
    v53 = uuid;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Restoring missing wallet keys: %@ on accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if ([accessoryCopy supportsCHIP])
  {
    v17 = objc_alloc_init(MEMORY[0x277D2C900]);
    supportsMatterWalletKey = [accessoryCopy supportsMatterWalletKey];
    bOOLValue = [supportsMatterWalletKey BOOLValue];

    if (bOOLValue)
    {
      [(HMDHomeWalletKeyAccessoryManager *)selfCopy configureNFCReaderKeyOnMatterAccessory:accessoryCopy flow:flowCopy];
    }

    else
    {
      [MEMORY[0x277D2C900] futureWithNoResult];
    }
    v27 = ;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke;
    v43[3] = &unk_27868A1D8;
    v29 = v17;
    v44 = v29;
    v30 = keysCopy;
    v45 = v30;
    v31 = [v27 addFailureBlock:v43];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2;
    v37[3] = &unk_278683078;
    v38 = v30;
    v39 = selfCopy;
    v40 = flowCopy;
    v41 = accessoryCopy;
    v32 = v29;
    v42 = v32;
    v33 = [v31 addSuccessBlock:v37];

    v34 = v42;
    v28 = v32;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      uuid2 = [accessoryCopy uuid];
      *buf = 138543874;
      v47 = v23;
      v48 = 2112;
      v49 = uUID2;
      v50 = 2112;
      v51 = uuid2;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not restoring wallet key on non-Matter accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v26 = MEMORY[0x277D2C900];
    v27 = [MEMORY[0x277CBEB98] set];
    v28 = [v26 futureWithResult:v27];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v28;
}

void __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3;
  v17[3] = &unk_278682F70;
  v3 = *(a1 + 48);
  v17[4] = *(a1 + 40);
  v18 = v3;
  v4 = [v2 na_map:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_325;
  v14[3] = &unk_278682FE0;
  v14[4] = *(a1 + 40);
  v15 = *(a1 + 56);
  v16 = *(a1 + 48);
  v5 = [v4 na_map:v14];
  v6 = [v5 combineAllFutures];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_4;
  v9[3] = &unk_278683050;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v8 = [v6 addSuccessBlock:v9];
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v3 userUUID];
  v6 = [v4 userWithUUID:v5];

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = [v3 userUUID];
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find HMDUser with UUID: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_325(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _addIssuerKeyForUser:v3 toMatterAccessory:*(a1 + 40) flow:*(a1 + 48)];
  v5 = [v4 flatMap:&__block_literal_global_329_235212];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3_330;
  v9[3] = &unk_278682FB8;
  v10 = v3;
  v6 = v3;
  v7 = [v5 recover:v9];

  return v7;
}

void __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 na_map:&__block_literal_global_336_235207];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2_337;
    v13[3] = &unk_278683028;
    v14 = *(a1 + 64);
    v5 = [v4 na_map:v13];
    v6 = [v5 asSet];

    [*(a1 + 48) finishWithResult:v6];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Error while restoring wallet keys: Failed to get results.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) finishWithResult:*(a1 + 56)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2_337(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1C18];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 initWithAccessoryUUID:v6 userUUID:v4];

  return v7;
}

void *__78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_333(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3_330(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) uuid];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (void)handleRestoreMissingWalletKeysMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v37 = v9;
    v38 = 2112;
    v39 = uUID;
    v40 = 2112;
    v41 = messageCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling RestoreMissingWalletKeysMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0720];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v13 = [messageCopy unarchivedObjectForKey:v11 ofClasses:v12];

  v14 = [v13 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_318];
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v16 = [messageCopy userForHome:home];

  allKeys = [v14 allKeys];
  v18 = [v16 areAccessoriesInAllowedList:allKeys];

  if (v18)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_319;
    v33[3] = &unk_278682F20;
    v33[4] = selfCopy;
    v34 = internalOnlyInitializer;
    v19 = [v14 na_map:v33];
    combineAllFutures = [v19 combineAllFutures];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_2;
    v31[3] = &unk_278682F48;
    v32 = messageCopy;
    v21 = [combineAllFutures addSuccessBlock:v31];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      [internalOnlyInitializer UUID];
      v26 = v30 = internalOnlyInitializer;
      allKeys2 = [v14 allKeys];
      *buf = 138543874;
      v37 = v25;
      v38 = 2112;
      v39 = v26;
      v40 = 2112;
      v41 = allKeys2;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] User is not permitted to operate on accessory as it is not in allowed list : %@", buf, 0x20u);

      internalOnlyInitializer = v30;
    }

    objc_autoreleasePoolPop(v22);
    v28 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2907];
    [messageCopy respondWithError:v28];
  }

  v29 = *MEMORY[0x277D85DE8];
}

id __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_319(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 home];
  v9 = [v8 accessoryWithUUID:v7];

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

  v12 = [*(a1 + 32) restoreMissingWalletKeys:v6 onAccessory:v11 flow:*(a1 + 40)];

  return v12;
}

void __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 asSet];
  v4 = [v3 na_setByFlattening];

  v5 = *(a1 + 32);
  v9 = *MEMORY[0x277CD0720];
  v6 = encodeRootObject();
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 respondWithPayload:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchMissingWalletKeysMessage:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v42 = v9;
    v43 = 2112;
    v44 = uUID;
    v45 = 2112;
    v46 = messageCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling FetchMissingWalletKeysMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy stringForKey:*MEMORY[0x277CD0700]];
  v12 = [messageCopy stringForKey:*MEMORY[0x277CD0728]];
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
  v15 = v14;
  if (v13)
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
    v17 = [messageCopy userForHome:home];

    v18 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchMissingWalletKeysForAccessoryUUID:v13 forUser:v17 flow:internalOnlyInitializer];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke;
    v39[3] = &unk_278682ED8;
    v19 = messageCopy;
    v40 = v19;
    v20 = [v18 addSuccessBlock:v39];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_2;
    v37[3] = &unk_27868A250;
    v38 = v19;
    v21 = [v20 addFailureBlock:v37];
  }

  else if (v14)
  {
    v22 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchMissingWalletKeysForUserUUID:v14 flow:internalOnlyInitializer];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_3;
    v35[3] = &unk_278682ED8;
    v23 = messageCopy;
    v36 = v23;
    v24 = [v22 addSuccessBlock:v35];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_4;
    v33[3] = &unk_27868A250;
    v34 = v23;
    v25 = [v24 addFailureBlock:v33];

    v17 = v36;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      [internalOnlyInitializer UUID];
      v30 = v32 = v26;
      *buf = 138543874;
      v42 = v29;
      v43 = 2112;
      v44 = v30;
      v45 = 2112;
      v46 = messageCopy;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find either accessoryUUID or userUUID in message: %@", buf, 0x20u);

      v26 = v32;
    }

    objc_autoreleasePoolPop(v26);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [messageCopy respondWithError:v17];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = *MEMORY[0x277CD0720];
  v2 = encodeRootObject();
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v1 respondWithPayload:v3];

  v4 = *MEMORY[0x277D85DE8];
}

void __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = *MEMORY[0x277CD0720];
  v2 = encodeRootObject();
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v1 respondWithPayload:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:(id)accessories deviceCredentialKey:(id)key user:(id)user deviceUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  keyCopy = key;
  userCopy = user;
  dCopy = d;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = accessoriesCopy;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        uuid = [*(*(&v23 + 1) + 8 * v20) uuid];
        [v15 addObject:uuid];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  [(HMDHomeWalletKeyAccessoryManager *)self createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:v15 deviceCredentialKey:keyCopy user:userCopy deviceUUID:dCopy];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:(id)ds deviceCredentialKey:(id)key user:(id)user deviceUUID:(id)d
{
  dCopy = d;
  userCopy = user;
  keyCopy = key;
  dsCopy = ds;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = [[HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc] initWithDeviceCredentialKey:keyCopy accessoriesUUIDs:dsCopy user:userCopy];
  pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = [(HMDHomeWalletKeyAccessoryManager *)self pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
  v16 = [pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID objectForKeyedSubscript:dCopy];

  if (v16)
  {
    v17 = [v16 operationByMergingWithOperation:v14];

    v14 = v17;
  }

  pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID2 = [(HMDHomeWalletKeyAccessoryManager *)self pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
  [pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID2 setObject:v14 forKeyedSubscript:dCopy];
}

- (void)handleFetchWalletKeyColorMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  flow = [messageCopy flow];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = uUID;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling HMHomeFetchWalletKeyColorMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMDHomeWalletKeyAccessoryManager_handleFetchWalletKeyColorMessage___block_invoke;
  v13[3] = &unk_278682EB0;
  v14 = messageCopy;
  v11 = messageCopy;
  [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchWalletKeyColorWithFlow:flow completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __69__HMDHomeWalletKeyAccessoryManager_handleFetchWalletKeyColorMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v8 = *MEMORY[0x277CCFFA0];
    v9[0] = a2;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v3 respondWithPayload:v6];
  }

  else
  {
    [*(a1 + 32) respondWithError:a3];
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  messageDispatcher = [(HMDHomeWalletKeyAccessoryManager *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  notificationCenter = [(HMDHomeWalletKeyAccessoryManager *)self notificationCenter];
  [notificationCenter removeObserver:self];
}

- (void)handleWalletKeyRemoved
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling wallet key removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
  walletKeyColorPreferenceKey = [(HMDHomeWalletKeyAccessoryManager *)selfCopy walletKeyColorPreferenceKey];
  [dataSource persistNumberValueToNoBackupStore:0 withKey:walletKeyColorPreferenceKey];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchWalletKeyColorWithFlow:(id)flow completion:(id)completion
{
  v61 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v56 = v12;
    v57 = 2112;
    v58 = uUID;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
  walletKeyColorPreferenceKey = [(HMDHomeWalletKeyAccessoryManager *)selfCopy walletKeyColorPreferenceKey];
  v16 = [dataSource numberValueFromNoBackupStoreWithKey:walletKeyColorPreferenceKey];

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v56 = v20;
      v57 = 2112;
      v58 = uUID2;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping fetch, returning wallet key color from persistent store", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    completionCopy[2](completionCopy, v16, 0);
  }

  else
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
    accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];
    v24 = [accessoriesWithWalletKeySupport na_any:&__block_literal_global_235227];

    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v50 = completionCopy;
      v29 = flowCopy;
      v31 = v30 = home;
      v32 = HMFBooleanToString();
      *buf = 138543874;
      v56 = v28;
      v57 = 2112;
      v58 = v31;
      v59 = 2112;
      v60 = v32;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for home that does have Matter accessories: %@", buf, 0x20u);

      home = v30;
      flowCopy = v29;
      completionCopy = v50;
    }

    objc_autoreleasePoolPop(v25);
    if ([(HMDHomeWalletKeyAccessoryManager *)v26 isPrimaryResidentOrSoleOwnerController]|| ((v24 ^ 1) & 1) != 0)
    {
      accessoriesWithWalletKeySupport2 = [home accessoriesWithWalletKeySupport];
      if ([accessoriesWithWalletKeySupport2 count])
      {
        [(HMDHomeWalletKeyAccessoryManager *)v26 fetchWalletKeyColorForAccessories:accessoriesWithWalletKeySupport2 flow:flowCopy withCompletion:completionCopy];
      }

      else
      {
        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (completionCopy)[2](completionCopy, 0, v48);
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v26;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543618;
        v56 = v36;
        v57 = 2112;
        v58 = uUID3;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Redispatching FetchWalletKeyColorMessage to resident because home has matter accessories", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = objc_alloc(MEMORY[0x277D0F820]);
      messageTargetUUID = [(HMDHomeWalletKeyAccessoryManager *)v34 messageTargetUUID];
      accessoriesWithWalletKeySupport2 = [v38 initWithTarget:messageTargetUUID];

      v41 = objc_alloc(MEMORY[0x277D0F818]);
      v42 = *MEMORY[0x277CCFF98];
      v53 = *MEMORY[0x277D0F1C8];
      v43 = HMFEncodedRootObject();
      v54 = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v45 = [v41 initWithName:v42 destination:accessoriesWithWalletKeySupport2 payload:v44];

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithFlow_completion___block_invoke_306;
      v51[3] = &unk_278685AF8;
      v51[4] = v34;
      v52 = completionCopy;
      [v45 setResponseHandler:v51];
      messageTargetUUID2 = [(HMDHomeWalletKeyAccessoryManager *)v34 messageTargetUUID];
      workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)v34 workQueue];
      [home redispatchToResidentMessage:v45 target:messageTargetUUID2 responseQueue:workQueue2];
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __75__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithFlow_completion___block_invoke_306(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 hmf_numberForKey:*MEMORY[0x277CCFFA0]];
  if (v5)
  {
    v6 = [*(a1 + 32) dataSource];
    v7 = [*(a1 + 32) walletKeyColorPreferenceKey];
    [v6 persistNumberValueToNoBackupStore:v5 withKey:v7];

    v8 = [*(a1 + 32) delegate];
    [v8 accessoryManager:*(a1 + 32) didUpdateWalletKeyColor:{objc_msgSend(v5, "integerValue")}];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)configureAllAccessoriesWithDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion
{
  completionCopy = completion;
  flowCopy = flow;
  keyCopy = key;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];
  [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:accessoriesWithWalletKeySupport withDeviceCredentialKey:keyCopy ofType:type flow:flowCopy completion:completionCopy];
}

- (void)configureAccessory:(id)accessory withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  flowCopy = flow;
  keyCopy = key;
  accessoryCopy = accessory;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v19[0] = accessoryCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:v17 withDeviceCredentialKey:keyCopy ofType:type flow:flowCopy completion:completionCopy];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home
{
  v54 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v8;
    v52 = 2112;
    v53 = homeCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeWalletKeyAccessoryManager *)selfCopy setHome:homeCopy];
  msgDispatcher = [homeCopy msgDispatcher];
  [(HMDHomeWalletKeyAccessoryManager *)selfCopy setMessageDispatcher:msgDispatcher];

  dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
  isResidentCapable = [dataSource isResidentCapable];

  if (isResidentCapable)
  {
    v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:5 remoteAccessRequired:0];
    v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    v41 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];
    v49[0] = v41;
    v49[1] = v14;
    v49[2] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
    [v13 setRoles:{objc_msgSend(v13, "roles") | 4}];
    msgDispatcher2 = [homeCopy msgDispatcher];
    v48[0] = v12;
    v48[1] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    [msgDispatcher2 registerForMessage:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessage" receiver:selfCopy policies:v17 selector:sel_handleConfigureAccessoriesWithDeviceCredentialKeyMessage_];

    msgDispatcher3 = [homeCopy msgDispatcher];
    v19 = *MEMORY[0x277CD06F8];
    v47[0] = v12;
    v47[1] = v13;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [msgDispatcher3 registerForMessage:v19 receiver:selfCopy policies:v20 selector:sel_handleFetchMissingWalletKeysMessage_];

    msgDispatcher4 = [homeCopy msgDispatcher];
    v22 = *MEMORY[0x277CD0738];
    v46[0] = v12;
    v46[1] = v13;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    [msgDispatcher4 registerForMessage:v22 receiver:selfCopy policies:v23 selector:sel_handleRestoreMissingWalletKeysMessage_];

    msgDispatcher5 = [homeCopy msgDispatcher];
    v25 = *MEMORY[0x277CCFF98];
    v45[0] = v12;
    v45[1] = v13;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    [msgDispatcher5 registerForMessage:v25 receiver:selfCopy policies:v26 selector:sel_handleFetchWalletKeyColorMessage_];

    msgDispatcher6 = [homeCopy msgDispatcher];
    [msgDispatcher6 registerForMessage:@"HMDHomeConfigureMatterAccessoryWithReaderKeyMessage" receiver:selfCopy policies:v15 selector:sel_handleHMDHomeConfigureMatterAccessoryWithReaderKeyMessage_];

    msgDispatcher7 = [homeCopy msgDispatcher];
    [msgDispatcher7 registerForMessage:@"HMDHomeWalletKeyAccessoryManagerAddIssuerKeysToAccessoriesMessage" receiver:selfCopy policies:v15 selector:sel__handleAddIssuerKeysToMatterV1AccessoriesMessage_];

    msgDispatcher8 = [homeCopy msgDispatcher];
    v44[0] = v12;
    v44[1] = v13;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    [msgDispatcher8 registerForMessage:@"HMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage" receiver:selfCopy policies:v30 selector:sel_handleHMDHomeWalletKeyAccessoryManagerAddOrUpdateIssuerKeyMessage_];
  }

  notificationCenter = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleHomeDidEnableCharacteristicNotification_ name:@"HMDHomeDidEnableCharacteristicNotifyEventNotification" object:homeCopy];

  notificationCenter2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleHomeDidDisableCharacteristicNotification_ name:@"HMDHomeDidDisableCharacteristicNotifyEventNotification" object:homeCopy];

  notificationCenter3 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  residentDeviceManager = [homeCopy residentDeviceManager];
  [notificationCenter3 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  notificationCenter4 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  notificationCenter5 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleHomeAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:homeCopy];

  notificationCenter6 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter6 addObserver:selfCopy selector:sel_handleAccessoryCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];

  workQueue = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHomeWalletKeyAccessoryManager_configureWithHome___block_invoke;
  block[3] = &unk_27868A750;
  block[4] = selfCopy;
  v43 = homeCopy;
  v39 = homeCopy;
  dispatch_async(workQueue, block);

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HMDHomeWalletKeyAccessoryManager_configureWithHome___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentDevicePrimaryResident:{objc_msgSend(*(a1 + 40), "isCurrentDeviceConfirmedPrimaryResident")}];
  v2 = *(a1 + 32);

  return [v2 configureNotificationsWithReason:@"configure"];
}

- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)d workQueue:(id)queue dataSource:(id)source notificationCenter:(id)center
{
  dCopy = d;
  queueCopy = queue;
  sourceCopy = source;
  centerCopy = center;
  v24.receiver = self;
  v24.super_class = HMDHomeWalletKeyAccessoryManager;
  v15 = [(HMDHomeWalletKeyAccessoryManager *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, d);
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v16->_dataSource, source);
    objc_storeStrong(&v16->_notificationCenter, center);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    nfcReaderKeyConfigureStateByAccessoryUUID = v16->_nfcReaderKeyConfigureStateByAccessoryUUID;
    v16->_nfcReaderKeyConfigureStateByAccessoryUUID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = v16->_pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID;
    v16->_pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = dictionary2;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    logEvents = v16->_logEvents;
    v16->_logEvents = v21;

    [MEMORY[0x277D0F7A8] blessWithImplicitContext:v16->_workQueue];
  }

  return v16;
}

- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)d workQueue:(id)queue
{
  queueCopy = queue;
  dCopy = d;
  v8 = objc_alloc_init(HMDHomeWalletDataSource);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [(HMDHomeWalletKeyAccessoryManager *)self initWithUUID:dCopy workQueue:queueCopy dataSource:v8 notificationCenter:defaultCenter];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t265 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t265, &__block_literal_global_536);
  }

  v3 = logCategory__hmf_once_v266;

  return v3;
}

void __47__HMDHomeWalletKeyAccessoryManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v266;
  logCategory__hmf_once_v266 = v1;
}

+ (id)matterIssuerKeyDataWithPublicKey:(id)key flow:(id)flow
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  flowCopy = flow;
  v8 = objc_alloc_init(MEMORY[0x277CFEB78]);
  v9 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:1];
  [v8 setType:v9];

  [v8 setKey:keyCopy];
  v10 = objc_alloc_init(MEMORY[0x277CFEB90]);
  [v10 setIssuerKey:v8];
  v22 = 0;
  v11 = [v10 serializeWithError:&v22];
  v12 = v22;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v18 = v21 = v14;
      *buf = 138543874;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize issuer key with public key data with error: %@", buf, 0x20u);

      v14 = v21;
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)matterIssuerKeyDataForCurrentUserWithFlow:(id)flow
{
  v4 = MEMORY[0x277CFEC78];
  flowCopy = flow;
  systemStore = [v4 systemStore];
  getPreferredHH2ControllerKey = [systemStore getPreferredHH2ControllerKey];
  publicKey = [getPreferredHH2ControllerKey publicKey];
  data = [publicKey data];
  v10 = [self matterIssuerKeyDataWithPublicKey:data flow:flowCopy];

  return v10;
}

+ (id)createMatterIssuerKeyDataForUser:(id)user withUserIndex:(id)index flow:(id)flow
{
  v40 = *MEMORY[0x277D85DE8];
  userCopy = user;
  indexCopy = index;
  flowCopy = flow;
  v11 = objc_alloc_init(MEMORY[0x277CFEB78]);
  v12 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:1];
  [v11 setType:v12];

  pairingIdentity = [userCopy pairingIdentity];
  publicKey = [pairingIdentity publicKey];
  data = [publicKey data];
  [v11 setKey:data];

  v16 = objc_alloc_init(MEMORY[0x277CFEB90]);
  [v16 setIssuerKey:v11];
  v29 = 0;
  v17 = [v16 serializeWithError:&v29];
  v18 = v29;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v23 = v28 = indexCopy;
      [flowCopy UUID];
      v24 = v27 = v20;
      *buf = 138544386;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = userCopy;
      v36 = 2048;
      v37 = v28;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize issuer key for user: %@ with user index: %ld with error: %@", buf, 0x34u);

      v20 = v27;
      indexCopy = v28;
    }

    objc_autoreleasePoolPop(v20);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

@end