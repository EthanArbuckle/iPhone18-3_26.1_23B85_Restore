@interface HMDHomeWalletKeyAccessoryManager
+ (id)createMatterIssuerKeyDataForUser:(id)a3 withUserIndex:(id)a4 flow:(id)a5;
+ (id)logCategory;
+ (id)matterIssuerKeyDataForCurrentUserWithFlow:(id)a3;
+ (id)matterIssuerKeyDataWithPublicKey:(id)a3 flow:(id)a4;
- (BOOL)isPrimaryResidentOrSoleOwnerController;
- (HMDDevice)primaryResidentDevice;
- (HMDHome)home;
- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)a3 workQueue:(id)a4;
- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5 notificationCenter:(id)a6;
- (HMDHomeWalletKeyAccessoryManagerDelegate)delegate;
- (NSArray)matterAccessoriesSupportingWalletKey;
- (NSString)walletKeyColorPreferenceKey;
- (id)_addIssuerKeyForUser:(id)a3 toMatterAccessory:(id)a4 flow:(id)a5;
- (id)_addIssuerKeyForUserIndex:(id)a3 toMatterAccessory:(id)a4 isUnifiedAccess:(BOOL)a5 issuerKeyData:(id)a6 withFlow:(id)a7;
- (id)addIssuerKeyForUser:(id)a3 toMatterAccessory:(id)a4 flow:(id)a5;
- (id)addIssuerKeysToMatterAccessories:(id)a3 flow:(id)a4;
- (id)addIssuerKeysToMatterAccessory:(id)a3 flow:(id)a4;
- (id)addIssuerKeysToMatterTTUAccessoriesForUser:(id)a3 flow:(id)a4;
- (id)configureMatterAccessory:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 forUser:(id)a6 flow:(id)a7;
- (id)configureNFCReaderKeyOnMatterAccessory:(id)a3 flow:(id)a4;
- (id)fetchMissingWalletKeysForAccessory:(id)a3 users:(id)a4 flow:(id)a5;
- (id)fetchMissingWalletKeysForAccessoryUUID:(id)a3 forUser:(id)a4 flow:(id)a5;
- (id)fetchMissingWalletKeysForUserUUID:(id)a3 flow:(id)a4;
- (id)fetchWalletKeyColorForAccessories_HAP:(id)a3 home:(id)a4 flow:(id)a5;
- (id)fetchWalletKeyColorForAccessories_Matter:(id)a3 home:(id)a4 flow:(id)a5;
- (id)logIdentifier;
- (id)matterAccessoriesSupportingWalletKeyExcludingACP;
- (id)missingWalletKeysForAccessoryUUID:(id)a3 usersByUniqueID:(id)a4 accessoryUsersByUniqueID:(id)a5 flow:(id)a6;
- (id)performHAPWriteRequestsHH2:(id)a3 home:(id)a4 flow:(id)a5;
- (id)restoreMissingWalletKeys:(id)a3 onAccessory:(id)a4 flow:(id)a5;
- (id)walletKeyColorWithCharacteristicValue:(id)a3 flow:(id)a4;
- (id)writeRequestsWithAccessories:(id)a3 home:(id)a4 deviceCredentialKey:(id)a5 user:(id)a6 flow:(id)a7;
- (void)_handleAddIssuerKeysToMatterV1AccessoriesMessage:(id)a3;
- (void)addIssuerKeysToMatterV1AccessoriesWithFlow:(id)a3;
- (void)configureAccessories:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 flow:(id)a6 completion:(id)a7;
- (void)configureAccessories:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 forDeviceWithUUID:(id)a6 user:(id)a7 flow:(id)a8 completion:(id)a9;
- (void)configureAccessories_HH1:(id)a3 withDeviceCredentialKey:(id)a4 forDeviceWithUUID:(id)a5 user:(id)a6 flow:(id)a7 completion:(id)a8;
- (void)configureAccessories_HH2:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 forDeviceWithUUID:(id)a6 user:(id)a7 flow:(id)a8 completion:(id)a9;
- (void)configureAccessory:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 flow:(id)a6 completion:(id)a7;
- (void)configureAccessoryWithNfcReaderKey:(id)a3 accessory:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)configureAllAccessoriesWithDeviceCredentialKey:(id)a3 ofType:(int64_t)a4 flow:(id)a5 completion:(id)a6;
- (void)configureNFCReaderKeyForAccessory:(id)a3 flow:(id)a4;
- (void)configureNFCReaderKeyForAllAccessoriesWithReason:(id)a3;
- (void)configureNotificationsWithReason:(id)a3;
- (void)configureWithHome:(id)a3;
- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:(id)a3 deviceCredentialKey:(id)a4 user:(id)a5 deviceUUID:(id)a6;
- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:(id)a3 deviceCredentialKey:(id)a4 user:(id)a5 deviceUUID:(id)a6;
- (void)fetchIsAccessoryConfiguredWithReaderKey:(id)a3 accessory:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)fetchOrConfigureNFCReaderKeyForAccessory:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)fetchWalletKeyColorForAccessories:(id)a3 flow:(id)a4 withCompletion:(id)a5;
- (void)fetchWalletKeyColorWithAccessory:(id)a3 flow:(id)a4;
- (void)fetchWalletKeyColorWithFlow:(id)a3 completion:(id)a4;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)a3;
- (void)handleAccessoryConfigured:(id)a3;
- (void)handleConfigureAccessoriesWithDeviceCredentialKeyMessage:(id)a3;
- (void)handleFetchMissingWalletKeysMessage:(id)a3;
- (void)handleFetchWalletKeyColorMessage:(id)a3;
- (void)handleHomeAccessoryRemovedNotification:(id)a3;
- (void)handleHomeAddedAccessoryNotification:(id)a3;
- (void)handleHomeDidDisableCharacteristicNotification:(id)a3;
- (void)handleHomeDidEnableCharacteristicNotification:(id)a3;
- (void)handleHomeNFCReaderKeyKeychainItemAvailableNotification:(id)a3;
- (void)handleHomeUserAddedNotification:(id)a3;
- (void)handlePendingDeviceCredentialKeysSyncForAccessories:(id)a3 withReason:(id)a4;
- (void)handlePendingDeviceCredentialKeysSyncForAccessory:(id)a3 withReason:(id)a4;
- (void)handlePrimaryResidentUpdateNotification:(id)a3;
- (void)handleRestoreMissingWalletKeysMessage:(id)a3;
- (void)handleWalletKeyRemoved;
- (void)handleWalletKeySupportDidChange:(id)a3;
- (void)registerForNotificationsWithReason:(id)a3;
- (void)removeNfcReaderKeyWithIdentifier:(id)a3 accessory:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)requestPrimaryResident:(id)a3 toConfigureAccessories:(id)a4 withDeviceCredentialKey:(id)a5 ofType:(int64_t)a6 flow:(id)a7 completion:(id)a8;
- (void)startHomeWalletKeyAddForAccessoryUUID:(id)a3 keyType:(unint64_t)a4 expectedCount:(int64_t)a5;
- (void)unconfigure;
- (void)unregisterForNotificationsWithReason:(id)a3;
- (void)updateHomeWalletKeyAddForAccessoryUUID:(id)a3 keyType:(unint64_t)a4;
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
  v2 = [(HMDHomeWalletKeyAccessoryManager *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)updateHomeWalletKeyAddForAccessoryUUID:(id)a3 keyType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __83__HMDHomeWalletKeyAccessoryManager_updateHomeWalletKeyAddForAccessoryUUID_keyType___block_invoke;
  v14 = &unk_279730908;
  v15 = v6;
  v16 = a4;
  v8 = v6;
  v9 = [v7 na_firstObjectPassingTest:&v11];

  if ([v9 incrementCompleted])
  {
    v10 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
    [v10 removeObject:v9];
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

- (void)startHomeWalletKeyAddForAccessoryUUID:(id)a3 keyType:(unint64_t)a4 expectedCount:(int64_t)a5
{
  v8 = a3;
  v9 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v10 = [v9 na_filter:&__block_literal_global_469];
  v11 = [v10 mutableCopy];
  [(HMDHomeWalletKeyAccessoryManager *)self setLogEvents:v11];

  v12 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __96__HMDHomeWalletKeyAccessoryManager_startHomeWalletKeyAddForAccessoryUUID_keyType_expectedCount___block_invoke_2;
  v22 = &unk_279730908;
  v13 = v8;
  v23 = v13;
  v24 = a4;
  v14 = [v12 na_firstObjectPassingTest:&v19];

  if (!v14)
  {
    v15 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents:v19];
    v16 = [HMDHomeKeySetupLockLogEvent alloc];
    v17 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v18 = [(HMDHomeKeySetupLockLogEvent *)v16 initWithAccessoryUUID:v13 withKeyType:a4 expectedCount:a5 queue:v17];
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

- (id)fetchWalletKeyColorForAccessories_HAP:(id)a3 home:(id)a4 flow:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138543874;
    v36 = v14;
    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for HAP accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke;
  v33[3] = &unk_279730898;
  v33[4] = v12;
  v16 = v10;
  v34 = v16;
  v17 = [v8 na_map:v33];
  v18 = [v17 count];
  v19 = MEMORY[0x277D2C900];
  if (v18)
  {
    v20 = objc_alloc_init(MEMORY[0x277D2C900]);
    objc_initWeak(buf, v12);
    v21 = [(HMFObject *)v12 description];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_466;
    v28[3] = &unk_2797308C0;
    objc_copyWeak(&v32, buf);
    v22 = v20;
    v29 = v22;
    v30 = v17;
    v31 = v16;
    [v9 readCharacteristicValues:v30 source:1110 sourceForLogging:v21 qualityOfService:-1 withCompletionHandler:v28];

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
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options: %@, accessory information service: %@ doesn't support hardware finish characteristic: %@", &v23, 0x34u);
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options: %@, accessory information service not supported %@", &v23, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

void __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_466(id *a1, uint64_t a2, void *a3)
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
    block[3] = &unk_2797352C0;
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
              _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic value in the read request: %@ is not of type %@:%@", buf, 0x34u);

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
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic read request failed with error %@:%@", buf, 0x2Au);
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
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to find wallet key color for HAP accessories", buf, 0xCu);

    v1 = v35;
  }

  objc_autoreleasePoolPop(v25);
  v29 = v1[8];
  v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  [v29 finishWithError:v30];
LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
}

- (id)fetchWalletKeyColorForAccessories_Matter:(id)a3 home:(id)a4 flow:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138543874;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for Matter accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke;
  v25[3] = &unk_279730828;
  v16 = v10;
  v26 = v16;
  v17 = [v8 na_map:v25];
  v18 = [v17 combineAllFutures];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_3;
  v23[3] = &unk_279730870;
  v23[4] = v12;
  v24 = v16;
  v19 = v16;
  v20 = [v18 flatMap:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 waitForDoorLockClusterObjectWithFlow:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_2;
  v7[3] = &unk_279730800;
  v8 = *(a1 + 32);
  v4 = [v3 then:v7];
  v5 = [v4 naFuture];

  return v5;
}

id __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_map:&__block_literal_global_460_158461];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_463];

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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to find wallet key color for Matter accessories", &v16, 0x16u);
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

- (void)fetchWalletKeyColorForAccessories:(id)a3 flow:(id)a4 withCompletion:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
  v13 = [(HMDHomeWalletKeyAccessoryManager *)self walletKeyColorPreferenceKey];
  v14 = [v12 numberValueFromNoBackupStoreWithKey:v13];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v9 UUID];
      *buf = 138543618;
      v44 = v18;
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping fetch, returning wallet key color from persistence store", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v10[2](v10, v14, 0);
  }

  else
  {
    v20 = [(HMDHomeWalletKeyAccessoryManager *)self home];
    if (v20)
    {
      v21 = [v8 na_filter:&__block_literal_global_453];
      v37 = [v8 na_filter:&__block_literal_global_455];
      v36 = [(HMDHomeWalletKeyAccessoryManager *)self fetchWalletKeyColorForAccessories_Matter:v21 home:v20 flow:v9];
      v22 = [(HMDHomeWalletKeyAccessoryManager *)self fetchWalletKeyColorForAccessories_HAP:v37 home:v20 flow:v9];
      v39 = v8;
      v23 = MEMORY[0x277D2C900];
      v42[0] = v36;
      v42[1] = v22;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      v38 = v20;
      v25 = MEMORY[0x277D2C938];
      v26 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
      v27 = [v25 schedulerWithDispatchQueue:v26];
      v28 = [v23 combineAllFutures:v24 ignoringErrors:1 scheduler:v27];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __90__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_flow_withCompletion___block_invoke_3;
      v40[3] = &unk_279732070;
      v40[4] = self;
      v41 = v10;
      v29 = [v28 addSuccessBlock:v40];

      v8 = v39;
      v20 = v38;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v9 UUID];
        *buf = 138543618;
        v44 = v33;
        v45 = 2112;
        v46 = v34;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options, home is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (v10)[2](v10, 0, v21);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __90__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_flow_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_map:&__block_literal_global_458];
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched wallet key color: %@", &v21, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to find color for Matter or HAP accessories", &v21, 0xCu);
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

- (id)walletKeyColorWithCharacteristicValue:(id)a3 flow:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v8 = [MEMORY[0x277CFEB70] parsedFromData:v6 error:&v34];
  v9 = v34;
  if (v8)
  {
    v10 = [v8 RGBColorValue];
    v11 = [v10 value];

    if (v11)
    {
      v12 = [v11 integerValue];
      if (v12 > 14935010)
      {
        v13 = v12 == 15521450;
        v14 = 14935011;
      }

      else
      {
        v13 = v12 == 0;
        v14 = 14341582;
      }

      if (v13 || v12 == v14)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue")}];
LABEL_21:

        goto LABEL_22;
      }

      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v7 UUID];
        v31 = [v11 integerValue];
        *buf = 138543874;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        v39 = 2048;
        v40 = v31;
        v26 = "%{public}@[Flow: %@] Unable to get wallet key color, unsupported color value: %ld";
        v27 = v23;
        v28 = 32;
        goto LABEL_19;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v7 UUID];
        *buf = 138543618;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        v26 = "%{public}@[Flow: %@] Unable to get wallet key color, color value is set to nil for hardware finish";
        v27 = v23;
        v28 = 22;
LABEL_19:
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
      }
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
    goto LABEL_21;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v7 UUID];
    *buf = 138544130;
    v36 = v18;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v6;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to get wallet key color, failed to parse hardware finish from encoded tlv data %@:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v20 = 0;
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)fetchWalletKeyColorWithAccessory:(id)a3 flow:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if ([v6 supportsWalletKey])
  {
    v14[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithAccessory_flow___block_invoke;
    v11[3] = &unk_2797307B8;
    v11[4] = self;
    v12 = v7;
    v13 = v6;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color when accessory connected %@:%@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)writeRequestsWithAccessories:(id)a3 home:(id)a4 deviceCredentialKey:(id)a5 user:(id)a6 flow:(id)a7
{
  v99 = *MEMORY[0x277D85DE8];
  v75 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v80 = a7;
  v15 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [v14 nfcIssuerKeyIdentifier];
  if (v16)
  {
    v74 = v14;
    v17 = objc_alloc_init(MEMORY[0x277CFEBD8]);
    [v17 setKey:v13];
    v18 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
    [v17 setType:v18];

    v73 = v16;
    [v17 setIssuerKeyIdentifier:v16];
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
      v68 = v13;
      v77 = [MEMORY[0x277CBEB58] set];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v75;
      v21 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
      if (v21)
      {
        v22 = v21;
        v82 = *v84;
        v79 = self;
        v76 = v12;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v84 != v82)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v83 + 1) + 8 * i);
            v25 = [v24 home];
            v26 = [v25 uuid];
            v27 = [(__CFString *)v12 uuid];
            v28 = [v26 isEqual:v27];

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
                  v47 = self;
                  v48 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    v49 = HMFGetLogIdentifier();
                    v50 = [v80 UUID];
                    v51 = [v24 shortDescription];
                    *buf = 138544386;
                    v89 = v49;
                    v90 = 2112;
                    v91 = v50;
                    v92 = 2112;
                    v93 = v51;
                    v94 = 2112;
                    v95 = v30;
                    v96 = 2112;
                    v97 = @"00000264-0000-1000-8000-0026BB765291";
                    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);

                    v12 = v76;
                    self = v79;
                  }

                  objc_autoreleasePoolPop(v46);
                }
              }

              else
              {
                v40 = objc_autoreleasePoolPush();
                v41 = self;
                v42 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v43 = HMFGetLogIdentifier();
                  v44 = [v80 UUID];
                  v45 = [v24 shortDescription];
                  *buf = 138544130;
                  v89 = v43;
                  v90 = 2112;
                  v91 = v44;
                  v92 = 2112;
                  v93 = v45;
                  v94 = 2112;
                  v95 = @"00000266-0000-1000-8000-0026BB765291";
                  _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, nfc access service not supported %@", buf, 0x2Au);

                  self = v79;
                }

                objc_autoreleasePoolPop(v40);
              }
            }

            else
            {
              v33 = objc_autoreleasePoolPush();
              v34 = self;
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v36 = HMFGetLogIdentifier();
                v37 = [v80 UUID];
                v38 = [v24 shortDescription];
                v39 = [v24 home];
                *buf = 138544386;
                v89 = v36;
                v90 = 2112;
                v91 = v37;
                v92 = 2112;
                v93 = v38;
                v94 = 2112;
                v95 = v39;
                v96 = 2112;
                v97 = v12;
                _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, home: %@ doesn't match current home: %@", buf, 0x34u);

                self = v79;
              }

              objc_autoreleasePoolPop(v33);
            }
          }

          v22 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
        }

        while (v22);
      }

      v52 = [v77 copy];
      v13 = v68;
      v53 = v69;
    }

    else
    {
      v61 = objc_autoreleasePoolPush();
      v62 = self;
      v63 = HMFGetOSLogHandle();
      v53 = v69;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        v65 = [v80 UUID];
        *buf = 138544130;
        v89 = v64;
        v90 = 2112;
        v91 = v65;
        v92 = 2112;
        v93 = 0;
        v94 = 2112;
        v95 = v69;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, unable to encode nfc access control %@:%@", buf, 0x2Au);
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
    v55 = v14;
    v56 = objc_autoreleasePoolPush();
    v57 = self;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = HMFGetLogIdentifier();
      v60 = [v80 UUID];
      *buf = 138543618;
      v89 = v59;
      v90 = 2112;
      v91 = v60;
      _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC issuer key identifier for user is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v56);
    v52 = [MEMORY[0x277CBEB98] set];
  }

  v66 = *MEMORY[0x277D85DE8];

  return v52;
}

- (id)configureMatterAccessory:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 forUser:(id)a6 flow:(id)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v47 = a6;
  v13 = a7;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v13 UUID];
    v19 = [v11 uuid];
    v20 = [v47 uuid];
    *buf = 138544386;
    v57 = v17;
    v58 = 2112;
    v59 = v18;
    v60 = 2112;
    v61 = v19;
    v62 = 2112;
    v63 = v12;
    v64 = 2112;
    v65 = v20;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring Matter accessory with device credential key. accessory: %@, deviceCredentialKey: %@ forUser: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  v21 = v12;
  v22 = v21;
  v23 = a5;
  if (a5)
  {
    goto LABEL_10;
  }

  v24 = objc_alloc_init(MEMORY[0x277CFEB40]);
  v25 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
  [v24 setType:v25];

  [v24 setKey:v21];
  v26 = [objc_alloc(MEMORY[0x277CFEBE0]) initWithValue:1];
  [v24 setState:v26];

  v27 = objc_alloc_init(MEMORY[0x277CFEB90]);
  [v27 setDeviceCredentialKey:v24];
  v55 = 0;
  v28 = [v27 serializeWithError:&v55];
  v45 = v55;
  if (v28)
  {
    v22 = v28;
    v29 = v21;
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v15;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v33 = v42 = v31;
      [v13 UUID];
      v34 = v44 = v32;
      [v11 shortDescription];
      v35 = v43 = v30;
      *buf = 138544386;
      v57 = v33;
      v58 = 2112;
      v59 = v34;
      v60 = 2112;
      v61 = v35;
      v62 = 2112;
      v63 = 0;
      v64 = 2112;
      v65 = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to encode matter credential %@:%@", buf, 0x34u);

      v30 = v43;
      v32 = v44;

      v31 = v42;
    }

    objc_autoreleasePoolPop(v30);
    v36 = MEMORY[0x277D2C900];
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v26 = [v36 futureWithError:v29];
    v22 = v21;
  }

  v23 = 0;
  if (v28)
  {
LABEL_10:
    v37 = [(HMDHomeWalletKeyAccessoryManager *)v15 home];
    v38 = [v47 uuid];
    v39 = [v37 findOrAddUserIndexForUserUUID:v38 guestName:0 accessory:v11 flow:v13];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke;
    v48[3] = &unk_279730790;
    v49 = v11;
    v50 = v13;
    v22 = v22;
    v54 = v23;
    v51 = v22;
    v52 = v15;
    v53 = v21;
    v26 = [v39 flatMap:v48];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v26;
}

id __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) waitForDoorLockClusterObjectWithFlow:*(a1 + 40)];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_2;
  v19[3] = &unk_279730740;
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
  v14 = &unk_279730768;
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
  if (v4 && (v5 = v4, [v3 status], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", &unk_286629D70), v6, v5, v7))
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with device credential key %@, accessory: %@", &v28, 0x2Au);
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
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", &v28, 0x2Au);
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

- (id)performHAPWriteRequestsHH2:(id)a3 home:(id)a4 flow:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hmf_isEmpty])
  {
    v11 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v12 = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
    v13 = [v12 accessoryWriteMaxRetryCount];
    v14 = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
    [v14 accessoryWriteRetryInterval];
    v15 = [v9 performWriteRequests:v8 withRetries:v13 timeInterval:self loggingObject:v10 flow:?];

    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D2C938];
    v17 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v18 = [v16 schedulerWithDispatchQueue:v17];
    v19 = [v15 reschedule:v18];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HMDHomeWalletKeyAccessoryManager_performHAPWriteRequestsHH2_home_flow___block_invoke;
    v21[3] = &unk_279730718;
    objc_copyWeak(&v24, &location);
    v22 = v10;
    v23 = v8;
    v11 = [v19 flatMap:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v11;
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
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key object got invalidated", buf, 0x16u);
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
                  _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured with device credential key: %@ with status code: %@", buf, 0x2Au);

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
                  _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", buf, 0x2Au);

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
                _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with device credential key: %@, failed to parse response value %@:%@", buf, 0x34u);

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
              _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

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
            _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

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

- (void)configureAccessories_HH2:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 forDeviceWithUUID:(id)a6 user:(id)a7 flow:(id)a8 completion:(id)a9
{
  v107 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v82 = a4;
  v16 = a6;
  v17 = a7;
  v83 = a8;
  v18 = a9;
  v19 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v19);

  v20 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (!v20)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v39 = v38 = v16;
      v40 = [v83 UUID];
      *buf = 138543618;
      v96 = v39;
      v97 = 2112;
      v98 = v40;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, home is nil", buf, 0x16u);

      v16 = v38;
    }

    objc_autoreleasePoolPop(v35);
    v41 = MEMORY[0x277CCA9B8];
    v42 = -1;
    goto LABEL_13;
  }

  if (![v15 count])
  {
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v47 = v46 = v16;
      v48 = [v83 UUID];
      *buf = 138543618;
      v96 = v47;
      v97 = 2112;
      v98 = v48;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessories with device credential key, accessories count is 0", buf, 0x16u);

      v16 = v46;
    }

    objc_autoreleasePoolPop(v43);
    v41 = MEMORY[0x277CCA9B8];
    v42 = 3;
LABEL_13:
    v49 = [v41 hmErrorWithCode:v42];
    v18[2](v18, v49);
    goto LABEL_20;
  }

  v79 = v20;
  v21 = [v15 na_filter:&__block_literal_global_439_158511];
  v81 = v15;
  v22 = [v15 na_filter:&__block_literal_global_441];
  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  v80 = v17;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [v83 UUID];
    v28 = v27 = v16;
    *buf = 138544642;
    v96 = v26;
    v97 = 2112;
    v98 = v28;
    v99 = 2112;
    v100 = v81;
    v101 = 2112;
    v102 = v82;
    v103 = 2112;
    v104 = v21;
    v105 = 2112;
    v106 = v22;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessories with device credential key HH2. accessories: %@, deviceCredentialKey: %@, hapAccessories: %@, matterAccessories: %@", buf, 0x3Eu);

    v16 = v27;
    v17 = v80;
  }

  objc_autoreleasePoolPop(v23);
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_442;
  v90[3] = &unk_2797306A0;
  v90[4] = v24;
  v29 = v82;
  v91 = v29;
  v94 = a5;
  v30 = v17;
  v92 = v30;
  v31 = v83;
  v93 = v31;
  v32 = [v22 na_map:v90];
  v33 = v32;
  v77 = v21;
  v78 = v16;
  v76 = v22;
  if (a5)
  {
    v34 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v75 = v32;
    v50 = [(HMDHomeWalletKeyAccessoryManager *)v24 writeRequestsWithAccessories:v21 home:v79 deviceCredentialKey:v29 user:v30 flow:v31];
    v51 = [v50 allObjects];
    v52 = [(HMDHomeWalletKeyAccessoryManager *)v24 performHAPWriteRequestsHH2:v51 home:v79 flow:v31];

    v53 = [v50 count];
    if (v53 != [v21 count])
    {
      v54 = objc_autoreleasePoolPush();
      v55 = v24;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v73 = HMFGetLogIdentifier();
        v56 = [v31 UUID];
        v57 = [v21 count];
        v58 = v57 - [v50 count];
        v59 = [v21 count];
        *buf = 138544130;
        v96 = v73;
        v97 = 2112;
        v98 = v56;
        v99 = 2048;
        v100 = v58;
        v101 = 2048;
        v102 = v59;
        _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create a write request for a subset of the HAP accessories (%lu of the %lu HAP accessories)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v54);
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_444;
      v88[3] = &unk_2797306C8;
      v89 = v50;
      v60 = [v52 flatMap:v88];
    }

    v33 = v75;
    v34 = v52;
  }

  v61 = [v33 arrayByAddingObject:v34];
  v62 = [MEMORY[0x277D2C900] combineAllFutures:v61];
  v63 = MEMORY[0x277D2C938];
  v64 = [(HMDHomeWalletKeyAccessoryManager *)v24 workQueue];
  v65 = [v63 schedulerWithDispatchQueue:v64];
  v66 = [v62 reschedule:v65];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_2_446;
  v86[3] = &unk_2797306F0;
  v67 = v18;
  v87 = v67;
  [v66 addSuccessBlock:v86];
  v68 = v18;
  v70 = v69 = v33;
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_3;
  v84[3] = &unk_279735558;
  v85 = v67;
  v71 = [v70 addFailureBlock:v84];

  v18 = v68;
  v17 = v80;
  v15 = v81;
  v16 = v78;
  v20 = v79;
  v49 = v77;
LABEL_20:

  v72 = *MEMORY[0x277D85DE8];
}

id __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_444(uint64_t a1)
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

- (void)configureAccessories_HH1:(id)a3 withDeviceCredentialKey:(id)a4 forDeviceWithUUID:(id)a5 user:(id)a6 flow:(id)a7 completion:(id)a8
{
  v69 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v51 = a4;
  v49 = a5;
  v50 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v17);

  v18 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (v18)
  {
    if ([v14 count])
    {
      [(HMDHomeWalletKeyAccessoryManager *)self createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:v14 deviceCredentialKey:v51 user:v50 deviceUUID:v49];
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v15 UUID];
        *buf = 138544130;
        v62 = v22;
        v63 = 2112;
        v64 = v23;
        v65 = 2112;
        v66 = v14;
        v67 = 2112;
        v68 = v51;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessories with device credential key HH1 %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [(HMDHomeWalletKeyAccessoryManager *)v20 writeRequestsWithAccessories:v14 home:v18 deviceCredentialKey:v51 user:v50 flow:v15];
      if ([v24 count])
      {
        v25 = [v24 count];
        if (v25 == [v14 count])
        {
          v47 = 0;
        }

        else
        {
          v47 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
        }

        v37 = [v24 allObjects];
        v38 = [(HMDHomeWalletKeyAccessoryManager *)v20 dataSource];
        v39 = [v38 accessoryWriteMaxRetryCount];
        v40 = [(HMDHomeWalletKeyAccessoryManager *)v20 dataSource];
        [v40 accessoryWriteRetryInterval];
        v48 = [v18 performWriteRequests:v37 withRetries:v39 timeInterval:v20 loggingObject:v15 flow:?];

        objc_initWeak(buf, v20);
        v41 = MEMORY[0x277D2C938];
        v42 = [(HMDHomeWalletKeyAccessoryManager *)v20 workQueue];
        v43 = [v41 schedulerWithDispatchQueue:v42];
        v44 = [v48 reschedule:v43];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __124__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH1_withDeviceCredentialKey_forDeviceWithUUID_user_flow_completion___block_invoke;
        v52[3] = &unk_279730678;
        objc_copyWeak(&v60, buf);
        v53 = v15;
        v59 = v16;
        v54 = v49;
        v55 = v51;
        v56 = v24;
        v57 = v50;
        v36 = v47;
        v58 = v36;
        v45 = [v44 addCompletionBlock:v52];

        objc_destroyWeak(&v60);
        objc_destroyWeak(buf);
      }

      else
      {
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v16 + 2))(v16, v36);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [v15 UUID];
        *buf = 138543618;
        v62 = v34;
        v63 = 2112;
        v64 = v35;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessories with device credential key, accessories count is 0", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (*(v16 + 2))(v16, v24);
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [v15 UUID];
      *buf = 138543618;
      v62 = v29;
      v63 = 2112;
      v64 = v30;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v16 + 2))(v16, v24);
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
                        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured with device credential key: %@ with status code: %@", buf, 0x2Au);

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
                        _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", buf, 0x2Au);

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
                      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with device credential key: %@, failed to parse response value %@:%@", buf, 0x34u);

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
                    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

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
                  _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

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
        _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, write response is nil: %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Operation cancelled because device credential key was updated for deviceUUID: %@", buf, 0x20u);
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
    _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key object got invalidated", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v60);
  v64 = *(a1 + 80);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
  (*(v64 + 16))(v64, v9);
LABEL_50:

  v80 = *MEMORY[0x277D85DE8];
}

- (void)configureAccessories:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 forDeviceWithUUID:(id)a6 user:(id)a7 flow:(id)a8 completion:(id)a9
{
  v34 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v21 = [v20 preferenceForKey:@"HMDHomeWalletKeyAccessoryManagerDisableAddingDeviceKeys"];
  v22 = [v21 BOOLValue];

  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      [v18 UUID];
      v27 = v29 = v23;
      *buf = 138543618;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not adding device credential key because HMDHomeWalletKeyAccessoryManagerDisableAddingDeviceKeys is set", buf, 0x16u);

      v23 = v29;
    }

    objc_autoreleasePoolPop(v23);
  }

  else
  {
    [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories_HH1:v14 withDeviceCredentialKey:v15 forDeviceWithUUID:v16 user:v17 flow:v18 completion:v19];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForNotificationsWithReason:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering for notifications with reason: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDHomeWalletKeyAccessoryManager *)v7 home];
  v11 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  [v11 removeObserver:v7 name:@"HMDAccessoryConnectedNotification" object:0];

  v12 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  [v12 removeObserver:v7 name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  v13 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  v14 = [v10 nfcReaderKeyManager];
  [v13 removeObserver:v7 name:@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification" object:v14];

  v15 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  [v15 removeObserver:v7 name:@"HMDNotificationHomeAddedAccessory" object:v10];

  v16 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  [v16 removeObserver:v7 name:@"HMDHomeUserAddedNotification" object:v10];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handlePendingDeviceCredentialKeysSyncForAccessories:(id)a3 withReason:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v30 = v6;
  if ([v6 count])
  {
    v9 = [(HMDHomeWalletKeyAccessoryManager *)self home];
    v10 = [v9 currentUser];
    v11 = [v10 isOwner];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v15;
        v44 = 2112;
        v45 = v7;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling pending device credential operations with reason: %@", buf, 0x16u);
      }

      v28 = v7;

      objc_autoreleasePoolPop(v12);
      v29 = v13;
      v16 = [(HMDHomeWalletKeyAccessoryManager *)v13 pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
      v17 = [v16 copy];

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
            v22 = [v21 user];
            if (v22)
            {
              v35[0] = MEMORY[0x277D85DD0];
              v35[1] = 3221225472;
              v35[2] = __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke;
              v35[3] = &unk_2797304D0;
              v23 = v21;
              v36 = v23;
              v24 = [v30 na_filter:v35];
              v25 = [v23 deviceCredentialKey];
              v26 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
              v33[0] = MEMORY[0x277D85DD0];
              v33[1] = 3221225472;
              v33[2] = __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke_2;
              v33[3] = &unk_2797358C8;
              v33[4] = v29;
              v34 = v23;
              [(HMDHomeWalletKeyAccessoryManager *)v29 configureAccessories:v24 withDeviceCredentialKey:v25 ofType:0 forDeviceWithUUID:v20 user:v22 flow:v26 completion:v33];
            }
          }

          v32 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v32);
      }

      v7 = v28;
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
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v16, v13);
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

- (void)handlePendingDeviceCredentialKeysSyncForAccessory:(id)a3 withReason:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if ([v6 supportsWalletKey])
  {
    v11[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(HMDHomeWalletKeyAccessoryManager *)self handlePendingDeviceCredentialKeysSyncForAccessories:v9 withReason:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForNotificationsWithReason:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering for notifications with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDHomeWalletKeyAccessoryManager *)v7 home];
  v11 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  [v11 addObserver:v7 selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:0];

  v12 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  [v12 addObserver:v7 selector:sel_handleWalletKeySupportDidChange_ name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  v13 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  v14 = [v10 nfcReaderKeyManager];
  [v13 addObserver:v7 selector:sel_handleHomeNFCReaderKeyKeychainItemAvailableNotification_ name:@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification" object:v14];

  v15 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  [v15 addObserver:v7 selector:sel_handleHomeAddedAccessoryNotification_ name:@"HMDNotificationHomeAddedAccessory" object:v10];

  v16 = [(HMDHomeWalletKeyAccessoryManager *)v7 notificationCenter];
  [v16 addObserver:v7 selector:sel_handleHomeUserAddedNotification_ name:@"HMDHomeUserAddedNotification" object:v10];

  [(HMDHomeWalletKeyAccessoryManager *)v7 configureNFCReaderKeyForAllAccessoriesWithReason:@"Registering for notifications"];
  v17 = [v10 accessoriesWithWalletKeySupport];
  [(HMDHomeWalletKeyAccessoryManager *)v7 handlePendingDeviceCredentialKeysSyncForAccessories:v17 withReason:@"notifications registered"];

  v18 = [(HMDHomeWalletKeyAccessoryManager *)v7 delegate];

  if (v18)
  {
    v19 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v19 UUID];
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Fetching wallet key color after registering for notifications", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__HMDHomeWalletKeyAccessoryManager_registerForNotificationsWithReason___block_invoke;
    v27[3] = &unk_2797340E0;
    v27[4] = v21;
    v28 = v19;
    v25 = v19;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully fetched wallet key color when registered for notifications %@", &v16, 0x20u);

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
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not fetch wallet key color when registered for notifications %@", &v16, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)configureNotificationsWithReason:(id)a3
{
  v7 = a3;
  v4 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  if ([(HMDHomeWalletKeyAccessoryManager *)self isCurrentDevicePrimaryResident])
  {
    if ([(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
    {
      goto LABEL_8;
    }

    v5 = 1;
  }

  else
  {
    v6 = [(HMDHomeWalletKeyAccessoryManager *)self home];
    v5 = [v6 hasCharacteristicNotificationRegistrations];

    if (v5 == [(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
    {
      goto LABEL_8;
    }
  }

  [(HMDHomeWalletKeyAccessoryManager *)self setCanConfigureAccessories:v5];
  if ([(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
  {
    [(HMDHomeWalletKeyAccessoryManager *)self registerForNotificationsWithReason:v7];
  }

  else
  {
    [(HMDHomeWalletKeyAccessoryManager *)self unregisterForNotificationsWithReason:v7];
  }

LABEL_8:
}

- (void)configureAccessoryWithNfcReaderKey:(id)a3 accessory:(id)a4 flow:(id)a5 completion:(id)a6
{
  v140 = *MEMORY[0x277D85DE8];
  v106 = a3;
  val = a4;
  v107 = a5;
  v105 = a6;
  v10 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v107 UUID];
    v16 = [val uuid];
    *buf = 138544130;
    v131 = v14;
    v132 = 2112;
    v133 = v15;
    v134 = 2112;
    v135 = v106;
    v136 = 2112;
    v137 = v16;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] configureAccessoryWithNfcReaderKey: %@, accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v17 = [(HMDHomeWalletKeyAccessoryManager *)v12 home];
  v18 = objc_autoreleasePoolPush();
  v19 = v12;
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if (!v17)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      v49 = [v107 UUID];
      *buf = 138543618;
      v131 = v48;
      v132 = 2112;
      v133 = v49;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with nfc reader key, home is nil", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [v107 UUID];
    v24 = [val shortDescription];
    *buf = 138544130;
    v131 = v22;
    v132 = 2112;
    v133 = v23;
    v134 = 2112;
    v135 = v24;
    v136 = 2112;
    v137 = v106;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessory with nfc reader key %@:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  v25 = [val home];
  v26 = [v25 uuid];
  v27 = [(__CFString *)v17 uuid];
  v28 = [v26 isEqual:v27];

  if ((v28 & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v19;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      v51 = [v107 UUID];
      v52 = [val shortDescription];
      v53 = [val home];
      *buf = 138544386;
      v131 = v50;
      v132 = 2112;
      v133 = v51;
      v134 = 2112;
      v135 = v52;
      v136 = 2112;
      v137 = v53;
      v138 = 2112;
      v139 = v17;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v18);
    v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v105[2](v105, v36);
    goto LABEL_39;
  }

  v29 = [val supportsCHIP];
  v30 = objc_autoreleasePoolPush();
  v31 = v19;
  v32 = HMFGetOSLogHandle();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
  if (v29)
  {
    if (v33)
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v107 UUID];
      *buf = 138543618;
      v131 = v34;
      v132 = 2112;
      v133 = v35;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for Matter accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v36 = objc_alloc_init(MEMORY[0x277CFEC28]);
    v37 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
    [(__CFString *)v36 setType:v37];

    v38 = [(__CFString *)v106 privateKey];
    [(__CFString *)v36 setKey:v38];

    v39 = [val nfcReaderIdentifier];
    [(__CFString *)v36 setKeyIdentifier:v39];

    v40 = [val nfcReaderIdentifier];
    [(__CFString *)v36 setReaderIdentifier:v40];

    v41 = objc_alloc_init(MEMORY[0x277CFEB90]);
    [v41 setReaderKey:v36];
    v42 = [val uuid];
    [(HMDHomeWalletKeyAccessoryManager *)v31 startHomeWalletKeyAddForAccessoryUUID:v42 keyType:0 expectedCount:1];

    v128 = 0;
    v102 = [v41 serializeWithError:&v128];
    v100 = v128;
    if (v102)
    {
      v43 = [val waitForDoorLockClusterObjectWithFlow:v107];
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke;
      v125[3] = &unk_279730600;
      v126 = v102;
      v44 = v107;
      v127 = v44;
      v45 = [v43 then:v125];
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_2;
      v120[3] = &unk_279730628;
      v120[4] = v31;
      v121 = v44;
      v122 = v106;
      v123 = val;
      v124 = v105;
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_418;
      v117[3] = &unk_279730650;
      v117[4] = v31;
      v118 = v121;
      v119 = v124;
      v46 = [v45 then:v120 orRecover:v117];

      v47 = v126;
    }

    else
    {
      v78 = objc_autoreleasePoolPush();
      v79 = v31;
      v80 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v81 = HMFGetLogIdentifier();
        v82 = [v107 UUID];
        v83 = [val shortDescription];
        *buf = 138544386;
        v131 = v81;
        v132 = 2112;
        v133 = v82;
        v134 = 2112;
        v135 = v83;
        v136 = 2112;
        v137 = 0;
        v138 = 2112;
        v139 = v100;
        _os_log_impl(&dword_2531F8000, v80, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to encode matter credential %@:%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v78);
      v47 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1002];
      v105[2](v105, v47);
    }
  }

  else
  {
    if (v33)
    {
      v54 = HMFGetLogIdentifier();
      v55 = [v107 UUID];
      *buf = 138543618;
      v131 = v54;
      v132 = 2112;
      v133 = v55;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for HAP accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v56 = [val findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
    v36 = v56;
    if (v56)
    {
      v103 = [(__CFString *)v56 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
      if (v103)
      {
        v57 = objc_alloc_init(MEMORY[0x277CFEBF8]);
        v58 = [(__CFString *)v106 privateKey];
        [v57 setKey:v58];

        v59 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
        [v57 setType:v59];

        v60 = [val nfcReaderIdentifier];
        [v57 setReaderIdentifier:v60];

        v101 = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:2];
        v99 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:v101 issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:0 deviceCredentialKeyResponse:0 readerKeyRequest:v57 readerKeyResponse:0];
        v116 = 0;
        v98 = [v99 serializeWithError:&v116];
        v97 = v116;
        if (v98)
        {
          v61 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v103 value:v98 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
          v129 = v61;
          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
          v63 = [(HMDHomeWalletKeyAccessoryManager *)v31 dataSource];
          v64 = [v63 accessoryWriteMaxRetryCount];
          v65 = [(HMDHomeWalletKeyAccessoryManager *)v31 dataSource];
          [v65 accessoryWriteRetryInterval];
          v66 = [(__CFString *)v17 performWriteRequests:v62 withRetries:v64 timeInterval:v31 loggingObject:v107 flow:?];

          objc_initWeak(buf, v31);
          objc_initWeak(&location, val);
          v67 = MEMORY[0x277D2C938];
          v68 = [(HMDHomeWalletKeyAccessoryManager *)v31 workQueue];
          v69 = [v67 schedulerWithDispatchQueue:v68];
          v70 = [v66 reschedule:v69];
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_420;
          v109[3] = &unk_2797305D8;
          objc_copyWeak(&v113, buf);
          objc_copyWeak(&v114, &location);
          v110 = v107;
          v112 = v105;
          v111 = v103;
          v71 = [v70 addCompletionBlock:v109];

          objc_destroyWeak(&v114);
          objc_destroyWeak(&v113);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);
        }

        else
        {
          v90 = objc_autoreleasePoolPush();
          v91 = v31;
          v92 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            v93 = HMFGetLogIdentifier();
            v94 = [v107 UUID];
            v95 = [val shortDescription];
            *buf = 138544386;
            v131 = v93;
            v132 = 2112;
            v133 = v94;
            v134 = 2112;
            v135 = v95;
            v136 = 2112;
            v137 = 0;
            v138 = 2112;
            v139 = v97;
            _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v90);
          v61 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          v105[2](v105, v61);
        }
      }

      else
      {
        v84 = objc_autoreleasePoolPush();
        v85 = v31;
        v86 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          v87 = HMFGetLogIdentifier();
          v88 = [v107 UUID];
          v89 = [val shortDescription];
          *buf = 138544386;
          v131 = v87;
          v132 = 2112;
          v133 = v88;
          v134 = 2112;
          v135 = v89;
          v136 = 2112;
          v137 = v36;
          v138 = 2112;
          v139 = @"00000264-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v84);
        v57 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        v105[2](v105, v57);
      }
    }

    else
    {
      v72 = objc_autoreleasePoolPush();
      v73 = v31;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = HMFGetLogIdentifier();
        v76 = [v107 UUID];
        v77 = [val shortDescription];
        *buf = 138544130;
        v131 = v75;
        v132 = 2112;
        v133 = v76;
        v134 = 2112;
        v135 = v77;
        v136 = 2112;
        v137 = @"00000266-0000-1000-8000-0026BB765291";
        _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, it doesn't support nfc access service %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v72);
      v104 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v105[2](v105, v104);
    }
  }

LABEL_39:

  v96 = *MEMORY[0x277D85DE8];
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
  if (v4 && (v5 = v4, [v3 status], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", &unk_286629D70), v6, v5, v7))
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with NFC reader key: %@, accessory: %@", &v27, 0x2Au);
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
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@ with status code: %@", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v24 = *(a1 + 64);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v24 + 16))(v24, v16);
  }

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_418(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to configure NFC reader key with error: %@", &v16, 0x20u);
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
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Ignoring duplicate error while adding Reader key", &v16, 0x16u);
  }

LABEL_9:

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

void __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_420(uint64_t a1, void *a2, void *a3)
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
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

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
          _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

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
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@ with status code: %@", buf, 0x2Au);

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
          _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, failed to parse response value %@:%@", buf, 0x34u);

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
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, write response is nil: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v35 + 16))(v35, v12);
  }

LABEL_33:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)removeNfcReaderKeyWithIdentifier:(id)a3 accessory:(id)a4 flow:(id)a5 completion:(id)a6
{
  v94 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v10 = a4;
  v74 = a5;
  v11 = a6;
  v12 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v74 UUID];
      v20 = [v10 shortDescription];
      *buf = 138544130;
      v85 = v18;
      v86 = 2112;
      v87 = v19;
      v88 = 2112;
      v89 = v20;
      v90 = 2112;
      v91 = v73;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing nfc reader key with identifier from accessory %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v21 = [v10 home];
    v22 = [v21 uuid];
    v23 = [(__CFString *)v13 uuid];
    v24 = [v22 isEqual:v23];

    if (v24)
    {
      v25 = [v10 findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
      v26 = v25;
      if (v25)
      {
        v27 = [(__CFString *)v25 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
        if (v27)
        {
          context = objc_alloc_init(MEMORY[0x277CFEBF8]);
          [context setIdentifier:v73];
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
            v29 = [(HMDHomeWalletKeyAccessoryManager *)v15 dataSource];
            v30 = [v29 accessoryWriteMaxRetryCount];
            v31 = [(HMDHomeWalletKeyAccessoryManager *)v15 dataSource];
            [v31 accessoryWriteRetryInterval];
            v32 = [(__CFString *)v13 performWriteRequests:v28 withRetries:v30 timeInterval:v15 loggingObject:v74 flow:?];

            objc_initWeak(buf, v15);
            objc_initWeak(&location, v10);
            v33 = MEMORY[0x277D2C938];
            v34 = [(HMDHomeWalletKeyAccessoryManager *)v15 workQueue];
            v35 = [v33 schedulerWithDispatchQueue:v34];
            v36 = [v32 reschedule:v35];
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __95__HMDHomeWalletKeyAccessoryManager_removeNfcReaderKeyWithIdentifier_accessory_flow_completion___block_invoke;
            v75[3] = &unk_2797305D8;
            objc_copyWeak(&v79, buf);
            objc_copyWeak(&v80, &location);
            v76 = v74;
            v78 = v11;
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
            v57 = v15;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v64 = HMFGetLogIdentifier();
              v59 = [v74 UUID];
              v60 = [v10 shortDescription];
              *buf = 138544386;
              v85 = v64;
              v86 = 2112;
              v87 = v59;
              v88 = 2112;
              v89 = v60;
              v90 = 2112;
              v91 = 0;
              v92 = 2112;
              v93 = v62;
              _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v56);
            v63 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            (*(v11 + 2))(v11, v63);
          }
        }

        else
        {
          contextb = objc_autoreleasePoolPush();
          v52 = v15;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            v54 = [v74 UUID];
            v55 = [v10 shortDescription];
            *buf = 138544386;
            v85 = v68;
            v86 = 2112;
            v87 = v54;
            v88 = 2112;
            v89 = v55;
            v90 = 2112;
            v91 = v26;
            v92 = 2112;
            v93 = @"00000264-0000-1000-8000-0026BB765291";
            _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(contextb);
          contextc = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          (*(v11 + 2))(v11, contextc);
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v47 = v15;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          v50 = [v74 UUID];
          v51 = [v10 shortDescription];
          *buf = 138544130;
          v85 = v49;
          v86 = 2112;
          v87 = v50;
          v88 = 2112;
          v89 = v51;
          v90 = 2112;
          v91 = @"00000266-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, it doesn't support nfc access service %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(contexta);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        (*(v11 + 2))(v11, v27);
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v15;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [v74 UUID];
        v45 = [v10 shortDescription];
        v46 = [v10 home];
        *buf = 138544386;
        v85 = v43;
        v86 = 2112;
        v87 = v44;
        v88 = 2112;
        v89 = v45;
        v90 = 2112;
        v91 = v46;
        v92 = 2112;
        v93 = v13;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v40);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v11 + 2))(v11, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [v74 UUID];
      *buf = 138543618;
      v85 = v38;
      v86 = 2112;
      v87 = v39;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from accessory, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v11 + 2))(v11, v26);
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
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

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
          _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, response value: %@ is not of type NSData", buf, 0x2Au);

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
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@ with status code: %@", buf, 0x2Au);

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
          _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, failed to parse response value %@:%@", buf, 0x34u);

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
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, write response is nil: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v35 + 16))(v35, v12);
  }

LABEL_33:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)fetchIsAccessoryConfiguredWithReaderKey:(id)a3 accessory:(id)a4 flow:(id)a5 completion:(id)a6
{
  v95 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v10 = a4;
  v74 = a5;
  v11 = a6;
  v12 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v74 UUID];
      v20 = [v10 shortDescription];
      *buf = 138544130;
      v86 = v18;
      v87 = 2112;
      v88 = v19;
      v89 = 2112;
      v90 = v20;
      v91 = 2112;
      v92 = v73;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching accessory is configured with nfc reader key %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v21 = [v10 home];
    v22 = [v21 uuid];
    v23 = [(__CFString *)v13 uuid];
    v24 = [v22 isEqual:v23];

    if (v24)
    {
      v25 = [v10 findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
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
            v29 = [(HMDHomeWalletKeyAccessoryManager *)v15 dataSource];
            v30 = [v29 accessoryWriteMaxRetryCount];
            v31 = [(HMDHomeWalletKeyAccessoryManager *)v15 dataSource];
            [v31 accessoryWriteRetryInterval];
            v32 = [(__CFString *)v13 performWriteRequests:v28 withRetries:v30 timeInterval:v15 loggingObject:v74 flow:?];

            objc_initWeak(buf, v15);
            objc_initWeak(&location, v10);
            v33 = MEMORY[0x277D2C938];
            v34 = [(HMDHomeWalletKeyAccessoryManager *)v15 workQueue];
            v35 = [v33 schedulerWithDispatchQueue:v34];
            v36 = [v32 reschedule:v35];
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __102__HMDHomeWalletKeyAccessoryManager_fetchIsAccessoryConfiguredWithReaderKey_accessory_flow_completion___block_invoke;
            v75[3] = &unk_2797305B0;
            objc_copyWeak(&v80, buf);
            objc_copyWeak(&v81, &location);
            v76 = v74;
            v79 = v11;
            v77 = v27;
            v78 = v73;
            v37 = [v36 addCompletionBlock:v75];

            objc_destroyWeak(&v81);
            objc_destroyWeak(&v80);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }

          else
          {
            v64 = objc_autoreleasePoolPush();
            v56 = v15;
            v57 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = HMFGetLogIdentifier();
              v59 = [v74 UUID];
              v60 = [v10 shortDescription];
              *buf = 138544386;
              v86 = v58;
              v87 = 2112;
              v88 = v59;
              v89 = 2112;
              v90 = v60;
              v91 = 2112;
              v92 = 0;
              v93 = 2112;
              v94 = v62;
              _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v64);
            v63 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            (*(v11 + 2))(v11, 0, 0, v63);
          }
        }

        else
        {
          contextb = objc_autoreleasePoolPush();
          v52 = v15;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            v54 = [v74 UUID];
            v55 = [v10 shortDescription];
            *buf = 138544386;
            v86 = v68;
            v87 = 2112;
            v88 = v54;
            v89 = 2112;
            v90 = v55;
            v91 = 2112;
            v92 = v26;
            v93 = 2112;
            v94 = @"00000264-0000-1000-8000-0026BB765291";
            _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(contextb);
          contextc = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          (*(v11 + 2))(v11, 0, 0, contextc);
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v47 = v15;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          v50 = [v74 UUID];
          v51 = [v10 shortDescription];
          *buf = 138544130;
          v86 = v49;
          v87 = 2112;
          v88 = v50;
          v89 = 2112;
          v90 = v51;
          v91 = 2112;
          v92 = @"00000266-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, it doesn't support nfc access service %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(contexta);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        (*(v11 + 2))(v11, 0, 0, v27);
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v15;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [v74 UUID];
        v45 = [v10 shortDescription];
        v46 = [v10 home];
        *buf = 138544386;
        v86 = v43;
        v87 = 2112;
        v88 = v44;
        v89 = 2112;
        v90 = v45;
        v91 = 2112;
        v92 = v46;
        v93 = 2112;
        v94 = v13;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v40);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v11 + 2))(v11, 0, 0, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [v74 UUID];
      *buf = 138543618;
      v86 = v38;
      v87 = 2112;
      v88 = v39;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch accessory is configured for wallet key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v11 + 2))(v11, 0, 0, v26);
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
              _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, failed to parse response value %@:%@", buf, 0x34u);

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
            _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, response value: %@ is not of type NSData", buf, 0x2Au);

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
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

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
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key: %@, write response is nil: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v27 + 16))(v27, 0, 0, v12);
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (id)configureNFCReaderKeyOnMatterAccessory:(id)a3 flow:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 supportsCHIP])
  {
    v8 = objc_alloc_init(MEMORY[0x277D2C900]);
    v9 = [(HMDHomeWalletKeyAccessoryManager *)self home];
    v10 = [v9 nfcReaderKeyManager];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyOnMatterAccessory_flow___block_invoke;
    v23[3] = &unk_279730588;
    v23[4] = self;
    v24 = v7;
    v11 = v8;
    v25 = v11;
    v26 = v6;
    [v10 fetchOrCreateReaderKeyWithRequiresPrivateKey:1 flow:v24 completion:v23];

    v12 = v26;
    v13 = v11;

    v14 = v13;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v7 UUID];
      *buf = 138543874;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring NFC Reader key on non-matter accessory: %@", buf, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch or nfc reader key for matter accessory: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 48) finishWithError:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)fetchOrConfigureNFCReaderKeyForAccessory:(id)a3 flow:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v9 UUID];
    *buf = 138543874;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] fetchOrConfigureNFCReaderKeyForAccessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [(HMDHomeWalletKeyAccessoryManager *)v13 home];
  v18 = [v17 nfcReaderKeyManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke;
  v23[3] = &unk_279730560;
  v23[4] = v13;
  v24 = v9;
  v25 = v8;
  v26 = v10;
  v19 = v8;
  v20 = v10;
  v21 = v9;
  [v18 fetchOrCreateReaderKeyWithRequiresPrivateKey:1 flow:v21 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
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
      v18[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_406;
      v18[3] = &unk_279730538;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch or nfc reader key: %@", location, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    (*(a1[7] + 2))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_406(id *a1, int a2, void *a3, void *a4)
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
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory is already configured with nfc reader key %@:%@", buf, 0x2Au);

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
        v32[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_407;
        v32[3] = &unk_279732B10;
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
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with reader key, accessory object became nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = a1[7];
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v26[2](v26, v27);
  }

LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
}

void __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_407(uint64_t a1, void *a2)
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

- (void)configureNFCReaderKeyForAccessory:(id)a3 flow:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 UUID];
    v14 = [v6 uuid];
    *buf = 138543874;
    v49 = v12;
    v50 = 2112;
    v51 = v13;
    v52 = 2112;
    v53 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if ([v6 supportsWalletKey])
  {
    v15 = [(HMDHomeWalletKeyAccessoryManager *)v10 dataSource];
    v16 = [v15 isWatch];

    if ((v16 & 1) == 0)
    {
      v17 = [(HMDHomeWalletKeyAccessoryManager *)v10 home];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 currentUser];
        v20 = [v19 isOwner];

        if (v20)
        {
          v21 = [(HMDHomeWalletKeyAccessoryManager *)v10 nfcReaderKeyConfigureStateByAccessoryUUID];
          v22 = [v6 uuid];
          v23 = [v21 objectForKeyedSubscript:v22];

          if (!v23)
          {
            v23 = objc_alloc_init(HMDHomeWalletKeyAccessoryConfigureState);
            v24 = [(HMDHomeWalletKeyAccessoryManager *)v10 nfcReaderKeyConfigureStateByAccessoryUUID];
            v25 = [v6 uuid];
            [v24 setObject:v23 forKeyedSubscript:v25];
          }

          if ([(HMDHomeWalletKeyAccessoryConfigureState *)v23 readerKeyConfigured])
          {
            v26 = objc_autoreleasePoolPush();
            v27 = v10;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              v30 = [v7 UUID];
              v31 = [v6 shortDescription];
              *buf = 138543874;
              v49 = v29;
              v50 = 2112;
              v51 = v30;
              v52 = 2112;
              v53 = v31;
              _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory is already configured with reader key: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v26);
          }

          else if ([(HMDHomeWalletKeyAccessoryConfigureState *)v23 readerKeyConfigureInProgress])
          {
            v37 = objc_autoreleasePoolPush();
            v38 = v10;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = HMFGetLogIdentifier();
              v41 = [v7 UUID];
              v42 = [v6 shortDescription];
              *buf = 138543874;
              v49 = v40;
              v50 = 2112;
              v51 = v41;
              v52 = 2112;
              v53 = v42;
              _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting should retry on nfc reader key configure failure for accessory: %@", buf, 0x20u);
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
            v44[3] = &unk_279730430;
            v44[4] = v10;
            v45 = v23;
            v46 = v7;
            v47 = v6;
            [(HMDHomeWalletKeyAccessoryManager *)v10 fetchOrConfigureNFCReaderKeyForAccessory:v47 flow:v46 completion:v44];
          }
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v10;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v7 UUID];
          *buf = 138543874;
          v49 = v35;
          v50 = 2112;
          v51 = v36;
          v52 = 2112;
          v53 = v6;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home does not exist when configuring reader key for accessory: %@", buf, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with nfc reader key %@:%@", &v22, 0x2Au);
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
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Retrying configuring accessory with nfc reader key: %@", &v22, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with nfc reader key: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [a1[5] setReaderKeyConfigured:1];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)configureNFCReaderKeyForAllAccessoriesWithReason:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC reader key for all accessories with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(HMDHomeWalletKeyAccessoryManager *)v8 home];
  v13 = [v12 accessoriesWithWalletKeySupport];

  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v13);
        }

        [(HMDHomeWalletKeyAccessoryManager *)v8 configureNFCReaderKeyForAccessory:*(*(&v19 + 1) + 8 * v17++) flow:v6];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)requestPrimaryResident:(id)a3 toConfigureAccessories:(id)a4 withDeviceCredentialKey:(id)a5 ofType:(int64_t)a6 flow:(id)a7 completion:(id)a8
{
  v57[4] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v45 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v18);

  v19 = [v15 na_map:&__block_literal_global_401];
  if ([v19 hmf_isEmpty])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v16 UUID];
      *buf = 138543618;
      v49 = v23;
      v50 = 2112;
      v51 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not send message to configure all accessories with device credential key, accessory uuids is empty", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v17[2](v17, v25);
  }

  else
  {
    v26 = [HMDRemoteDeviceMessageDestination alloc];
    v27 = [(HMDHomeWalletKeyAccessoryManager *)self messageTargetUUID];
    v44 = v14;
    v25 = [(HMDRemoteDeviceMessageDestination *)v26 initWithTarget:v27 device:v14];

    v57[0] = v45;
    v56[0] = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey";
    v56[1] = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType";
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
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
    v46[2] = __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_404;
    v46[3] = &unk_279732CF0;
    v46[4] = self;
    v47 = v17;
    [(HMDRemoteMessage *)v32 setResponseHandler:v46];
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v36 = v43 = v15;
      [v16 UUID];
      v42 = v17;
      v37 = v31;
      v39 = v38 = v16;
      *buf = 138544130;
      v49 = v36;
      v50 = 2112;
      v51 = v39;
      v52 = 2112;
      v53 = v32;
      v54 = 2112;
      v55 = v44;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to configure device credential key: %@ to primary resident: %@", buf, 0x2Au);

      v16 = v38;
      v31 = v37;
      v17 = v42;

      v15 = v43;
    }

    objc_autoreleasePoolPop(v33);
    v40 = [(HMDHomeWalletKeyAccessoryManager *)v34 messageDispatcher];
    [v40 sendMessage:v32];

    v14 = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_404(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_2;
  block[3] = &unk_2797355D0;
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

- (void)configureAccessories:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 flow:(id)a6 completion:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v16);

  if (a5 == 1)
  {
    if ([v13 length] != 65)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v14 UUID];
        *buf = 138544130;
        v47 = v20;
        v48 = 2112;
        v49 = v21;
        v50 = 2112;
        v51 = v13;
        v52 = 2048;
        v53 = 65;
        v22 = "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, key: %@ must be of length %lu bytes for HMMTRTapToUnlockType1";
        goto LABEL_17;
      }

LABEL_18:

      objc_autoreleasePoolPop(v17);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v15[2](v15, v24);
      goto LABEL_28;
    }
  }

  else if (!a5 && [v13 length] != 64)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v14 UUID];
      *buf = 138544130;
      v47 = v20;
      v48 = 2112;
      v49 = v21;
      v50 = 2112;
      v51 = v13;
      v52 = 2048;
      v53 = 64;
      v22 = "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, key: %@ must be of length %lu bytes for Unified Access";
LABEL_17:
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x2Au);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v23 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v24 = [v23 currentUser];

  if (v24)
  {
    v25 = [v24 isOwner];
    v26 = [(HMDHomeWalletKeyAccessoryManager *)self primaryResidentDevice];
    v27 = v26;
    if (v26 || (v25 & 1) != 0)
    {
      if (v26)
      {
        [(HMDHomeWalletKeyAccessoryManager *)self requestPrimaryResident:v26 toConfigureAccessories:v12 withDeviceCredentialKey:v13 ofType:a5 flow:v14 completion:v15];
      }

      else
      {
        v33 = [v24 account];
        v34 = [v33 currentDevice];

        if (v34)
        {
          v35 = [v34 identifier];
          [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:v12 withDeviceCredentialKey:v13 ofType:a5 forDeviceWithUUID:v35 user:v24 flow:v14 completion:v15];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v40 = v44 = v38;
            [v14 UUID];
            v41 = v45 = v37;
            *buf = 138543618;
            v47 = v40;
            v48 = 2112;
            v49 = v41;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, current device is nil", buf, 0x16u);

            v37 = v45;
            v38 = v44;
          }

          objc_autoreleasePoolPop(v37);
          v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          v15[2](v15, v42);
        }
      }
    }

    else
    {
      v28 = [[HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc] initWithDeviceCredentialKey:v13 accessories:v12 user:v24];
      v29 = [(HMDHomeWalletKeyAccessoryManager *)self pendingPrimaryResidentDeviceCredentialKeyOperation];

      if (v29)
      {
        v30 = [(HMDHomeWalletKeyAccessoryManager *)self pendingPrimaryResidentDeviceCredentialKeyOperation];
        v31 = [v30 operationByMergingWithOperation:v28];
        [(HMDHomeWalletKeyAccessoryManager *)self setPendingPrimaryResidentDeviceCredentialKeyOperation:v31];
      }

      else
      {
        [(HMDHomeWalletKeyAccessoryManager *)self setPendingPrimaryResidentDeviceCredentialKeyOperation:v28];
      }

      v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v15[2](v15, v36);
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v15[2](v15, v32);

    v24 = 0;
  }

LABEL_28:

  v43 = *MEMORY[0x277D85DE8];
}

- (HMDDevice)primaryResidentDevice
{
  v2 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v3 = [v2 residentDeviceManager];
  v4 = [v3 primaryResidentDevice];

  v5 = [v4 device];
  if (v5)
  {
    v6 = [v4 capabilities];
    if ([v6 supportsWalletKey])
    {
      v7 = [v4 isReachable];

      if (v7)
      {
        v8 = v5;
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
  v3 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v4 = [v3 uuid];
  v5 = [@"6D369245-5382-4703-8011-3DFE12E5147C" dataUsingEncoding:4];
  v6 = [v2 hmf_UUIDWithNamespace:v4 data:v5];
  v7 = [v6 UUIDString];

  return v7;
}

- (id)matterAccessoriesSupportingWalletKeyExcludingACP
{
  v2 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v3 = [v2 matterAccessories];
  v4 = [v3 na_map:&__block_literal_global_395];

  return v4;
}

id __84__HMDHomeWalletKeyAccessoryManager_matterAccessoriesSupportingWalletKeyExcludingACP__block_invoke(uint64_t a1, void *a2)
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

- (NSArray)matterAccessoriesSupportingWalletKey
{
  v2 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v3 = [v2 matterAccessories];
  v4 = [v3 na_map:&__block_literal_global_393];

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
  v2 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v3 = [v2 isCurrentDeviceConfirmedPrimaryResident];

  return v3;
}

- (void)handleHomeUserAddedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDHomeWalletKeyAccessoryManager_handleHomeUserAddedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __68__HMDHomeWalletKeyAccessoryManager_handleHomeUserAddedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
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

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling added user: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleWalletKeySupportDidChange:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
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

  v8 = [v7 home];
  v9 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (v8 == v9)
  {
    v15 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__HMDHomeWalletKeyAccessoryManager_handleWalletKeySupportDidChange___block_invoke;
    v17[3] = &unk_2797359B0;
    v17[4] = self;
    v18 = v7;
    dispatch_async(v15, v17);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v8 uuid];
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Not handling wallet key support change for accessory in other home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __68__HMDHomeWalletKeyAccessoryManager_handleWalletKeySupportDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = [*(a1 + 40) uuid];
    v10 = 138543874;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because wallet key support did change on accessory: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) configureNFCReaderKeyForAccessory:*(a1 + 40) flow:v2];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryConfigured:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__HMDHomeWalletKeyAccessoryManager_handleAccessoryConfigured___block_invoke;
    v8[3] = &unk_2797359B0;
    v8[4] = self;
    v9 = v6;
    dispatch_async(v7, v8);
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because accessory was configured", &v16, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Fetching wallet key color because accessory was configured", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) fetchWalletKeyColorWithAccessory:*(a1 + 40) flow:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAccessoryRemovedNotification:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
  v6 = [v5 isWatch];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

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
      v11 = [v4 object];
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

      if ([v13 hasAnyAccessoryWithWalletKeySupport])
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v26 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Not handling accessory removed notification, home still has an accessory that supports wallet key", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
      }

      else
      {
        v18 = [v4 userInfo];
        v19 = [v18 hmf_numberForKey:@"HMDNotificationSourceKey"];
        v20 = [v19 unsignedIntegerValue];

        if (v20 == 1)
        {
          v21 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __75__HMDHomeWalletKeyAccessoryManager_handleHomeAccessoryRemovedNotification___block_invoke;
          v23[3] = &unk_2797359B0;
          v23[4] = self;
          v24 = v13;
          dispatch_async(v21, v23);
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Last accessory supporting wallet key was removed.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 40) updateHasOnboardedForWalletKey:0 message:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedAccessoryNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HMDNotificationAddedAccessoryKey"];

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
    v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__HMDHomeWalletKeyAccessoryManager_handleHomeAddedAccessoryNotification___block_invoke;
    v9[3] = &unk_2797359B0;
    v9[4] = self;
    v10 = v7;
    dispatch_async(v8, v9);
  }
}

void __73__HMDHomeWalletKeyAccessoryManager_handleHomeAddedAccessoryNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = [*(a1 + 40) uuid];
    v10 = 138543874;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because new accessory was added: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) configureNFCReaderKeyForAccessory:*(a1 + 40) flow:v2];
  [*(a1 + 32) handlePendingDeviceCredentialKeysSyncForAccessory:*(a1 + 40) withReason:@"accessory added"];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidDisableCharacteristicNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HMDHomeWalletKeyAccessoryManager_handleHomeDidDisableCharacteristicNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __83__HMDHomeWalletKeyAccessoryManager_handleHomeDidDisableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 configureNotificationsWithReason:v2];
}

- (void)handleHomeDidEnableCharacteristicNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HMDHomeWalletKeyAccessoryManager_handleHomeDidEnableCharacteristicNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __82__HMDHomeWalletKeyAccessoryManager_handleHomeDidEnableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 configureNotificationsWithReason:v2];
}

- (void)handleHomeNFCReaderKeyKeychainItemAvailableNotification:(id)a3
{
  v4 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDHomeWalletKeyAccessoryManager_handleHomeNFCReaderKeyKeychainItemAvailableNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __92__HMDHomeWalletKeyAccessoryManager_handleHomeNFCReaderKeyKeychainItemAvailableNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nfcReaderKeyConfigureStateByAccessoryUUID];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 configureNFCReaderKeyForAllAccessoriesWithReason:@"Keychain item available"];
}

- (void)handlePrimaryResidentUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Current device primary changed from: (%@->%@)", buf, 0x20u);
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
    v25[2] = __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_379;
    v25[3] = &unk_2797304D0;
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
        v23[3] = &unk_2797358C8;
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

uint64_t __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_379(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v16, v13);
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

- (void)handleAccessoryCharacteristicsChangedNotification:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
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

  if ([v7 supportsWalletKey])
  {
    v8 = [v4 userInfo];
    v9 = [v8 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
    v10 = [v9 na_firstObjectPassingTest:&__block_literal_global_375];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v14;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling value update of hardware finish characteristic: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v10 value];
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
        v18 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
        v19 = [(HMDHomeWalletKeyAccessoryManager *)v12 walletKeyColorWithCharacteristicValue:v17 flow:v18];

        if (v19)
        {
          v20 = [(HMDHomeWalletKeyAccessoryManager *)v12 workQueue];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __86__HMDHomeWalletKeyAccessoryManager_handleAccessoryCharacteristicsChangedNotification___block_invoke_378;
          v27[3] = &unk_2797359B0;
          v27[4] = v12;
          v28 = v19;
          dispatch_async(v20, v27);
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = v12;
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
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Hardware finish characteristic value: %@ is not of type data: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __86__HMDHomeWalletKeyAccessoryManager_handleAccessoryCharacteristicsChangedNotification___block_invoke_378(uint64_t a1)
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

- (id)_addIssuerKeyForUser:(id)a3 toMatterAccessory:(id)a4 flow:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v10 UUID];
    *buf = 138544130;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeyForUser: %@, toAccessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [(HMDHomeWalletKeyAccessoryManager *)v13 home];
  v18 = [v8 uuid];
  v19 = [v17 findOrAddUserIndexForUserUUID:v18 guestName:0 accessory:v9 flow:v10];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke;
  v26[3] = &unk_2797304A8;
  v26[4] = v13;
  v27 = v8;
  v28 = v10;
  v29 = v9;
  v20 = v9;
  v21 = v10;
  v22 = v8;
  v23 = [v19 flatMap:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

id __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() createMatterIssuerKeyDataForUser:*(a1 + 40) withUserIndex:v3 flow:*(a1 + 48)];
  if (v5)
  {
    v6 = [*(a1 + 32) _addIssuerKeyForUserIndex:v3 toMatterAccessory:*(a1 + 56) isUnifiedAccess:1 issuerKeyData:v5 withFlow:*(a1 + 48)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 48) UUID];
      v12 = [*(a1 + 40) uuid];
      v17 = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not adding issuer key because we don't have one for user: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v6 = [v13 futureWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_addIssuerKeyForUserIndex:(id)a3 toMatterAccessory:(id)a4 isUnifiedAccess:(BOOL)a5 issuerKeyData:(id)a6 withFlow:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v13 waitForDoorLockClusterObjectWithFlow:v15];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke;
  v49[3] = &unk_2797303E0;
  v50 = v14;
  v17 = v12;
  v51 = v17;
  v53 = a5;
  v18 = v15;
  v52 = v18;
  v35 = v14;
  v19 = [v16 then:v49];
  v20 = [v19 naFuture];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_2;
  v46[3] = &unk_279730408;
  v46[4] = self;
  v21 = v13;
  v47 = v21;
  v22 = v18;
  v48 = v22;
  v23 = [v20 recover:v46];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_365;
  v42[3] = &unk_279730430;
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
  v38[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_366;
  v38[3] = &unk_279730458;
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
  v36[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_367;
  v36[3] = &unk_279730480;
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
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Ignoring duplicate error while adding Issuer key", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_8:
  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_365(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add issuer key for user index: %@, to accessory: %@, with error: %@", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

void __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_366(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured issuer key for user index: %@ on accessory: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
}

id __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_367(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) uuid];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)addIssuerKeyForUser:(id)a3 toMatterAccessory:(id)a4 flow:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDHomeWalletKeyAccessoryManager_addIssuerKeyForUser_toMatterAccessory_flow___block_invoke;
  block[3] = &unk_2797352C0;
  block[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v13 = v11;
  v24 = v13;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v12, block);

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

- (id)addIssuerKeysToMatterTTUAccessoriesForUser:(id)a3 flow:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 UUID];
    *buf = 138543874;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterTTUAccessoriesForUser: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDHomeWalletKeyAccessoryManager *)v10 matterAccessoriesSupportingWalletKey];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke;
  v24[3] = &unk_2797301B8;
  v24[4] = v10;
  v25 = v6;
  v26 = v7;
  v15 = v7;
  v16 = v6;
  v17 = [v14 na_map:v24];

  v18 = MEMORY[0x277D2C900];
  v19 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v20 = [v18 combineAllFutures:v17 ignoringErrors:1 scheduler:v19];
  v21 = [v20 flatMap:&__block_literal_global_359];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 na_any:&__block_literal_global_361_158655])
  {
    v3 = [v2 na_map:&__block_literal_global_363_158656];
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

- (id)addIssuerKeysToMatterAccessory:(id)a3 flow:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 UUID];
    *buf = 138543874;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDHomeWalletKeyAccessoryManager *)v10 home];
  v15 = [v14 users];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke;
  v28[3] = &unk_279730390;
  v28[4] = v10;
  v16 = v6;
  v29 = v16;
  v30 = v7;
  v17 = v7;
  v18 = [v15 na_map:v28];

  v19 = MEMORY[0x277D2C900];
  v20 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v21 = [v19 combineAllFutures:v18 ignoringErrors:1 scheduler:v20];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke_2;
  v26[3] = &unk_2797303B8;
  v27 = v16;
  v22 = v16;
  v23 = [v21 flatMap:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

id __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 na_any:&__block_literal_global_357];
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

- (id)addIssuerKeysToMatterAccessories:(id)a3 flow:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 UUID];
    *buf = 138543874;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = MEMORY[0x277D2C900];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __74__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessories_flow___block_invoke;
  v23 = &unk_279730368;
  v24 = v10;
  v25 = v7;
  v15 = v7;
  v16 = [v6 na_map:&v20];
  v17 = [v14 combineAllFuturesFlatteningArrayResults:{v16, v20, v21, v22, v23, v24}];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)addIssuerKeysToMatterV1AccessoriesWithFlow:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 UUID];
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessories", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeWalletKeyAccessoryManager *)v7 matterAccessoriesSupportingWalletKeyExcludingACP];
  v12 = [v11 hmf_isEmpty];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v4 UUID];
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No Matter accessories supporting wallet key excluding aliro, so nothing to add Issuer key to.", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v18 = [(HMDHomeWalletKeyAccessoryManager *)v7 matterAccessoriesSupportingWalletKeyExcludingACP];
    v19 = [(HMDHomeWalletKeyAccessoryManager *)v7 addIssuerKeysToMatterAccessories:v18 flow:v4];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddIssuerKeysToMatterV1AccessoriesMessage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 flow];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543874;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] _handleAddIssuerKeysToAccessoriesMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeWalletKeyAccessoryManager *)v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke;
  block[3] = &unk_279734960;
  block[4] = v7;
  v16 = v5;
  v17 = v4;
  v12 = v4;
  v13 = v5;
  dispatch_async(v11, block);

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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No Matter accessories supporting wallet key excluding aliro, so nothing to add Issuer key to.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] respondWithSuccess];
  }

  v9 = a1[4];
  v10 = [v9 matterAccessoriesSupportingWalletKeyExcludingACP];
  v11 = [v9 addIssuerKeysToMatterAccessories:v10 flow:a1[5]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke_354;
  v17[3] = &unk_279730038;
  v18 = a1[6];
  v12 = [v11 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke_2;
  v15[3] = &unk_2797359D8;
  v16 = a1[6];
  v13 = [v12 addFailureBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleConfigureAccessoriesWithDeviceCredentialKeyMessage:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(__CFString *)v4 flow];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    v12 = [(__CFString *)v4 messagePayload];
    *buf = 138544130;
    v72 = v10;
    v73 = 2112;
    v74 = v11;
    v75 = 2112;
    v76 = v4;
    v77 = 2112;
    v78 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to configure device credential key %@ with payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [(HMDHomeWalletKeyAccessoryManager *)v8 home];
  v14 = [(__CFString *)v4 userForHome:v13];

  if (v14)
  {
    v15 = [(__CFString *)v4 destination];
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
      v18 = [(__CFString *)v4 dataForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey"];
      if (v18)
      {
        v62 = v6;
        v19 = [(__CFString *)v4 numberForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType"];
        if (v19)
        {
          v20 = [(__CFString *)v4 arrayForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyAccessoryUUIDs"];
          if (v20)
          {
            v21 = [MEMORY[0x277CBEB58] set];
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke;
            v68[3] = &unk_279730340;
            v68[4] = v8;
            v57 = v6;
            v69 = v57;
            v22 = v21;
            v70 = v22;
            v58 = [v20 na_map:v68];
            if ([v22 count])
            {
              v23 = [v17 device];
              v24 = [v23 identifier];
              [(HMDHomeWalletKeyAccessoryManager *)v8 createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:v22 deviceCredentialKey:v18 user:v14 deviceUUID:v24];
            }

            v56 = [v19 integerValue];
            v25 = [v17 device];
            v26 = [v25 identifier];
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke_353;
            v65[3] = &unk_279734D88;
            v65[4] = v8;
            v66 = v57;
            v67 = v4;
            [(HMDHomeWalletKeyAccessoryManager *)v8 configureAccessories:v58 withDeviceCredentialKey:v18 ofType:v56 forDeviceWithUUID:v26 user:v14 flow:v66 completion:v65];
          }

          else
          {
            v50 = objc_autoreleasePoolPush();
            v51 = v8;
            v52 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v59 = HMFGetLogIdentifier();
              v61 = v50;
              v53 = [v62 UUID];
              *buf = 138543874;
              v72 = v59;
              v73 = 2112;
              v74 = v53;
              v54 = v53;
              v75 = 2112;
              v76 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyAccessoryUUIDs";
              _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, mising parameter: %@", buf, 0x20u);

              v50 = v61;
            }

            objc_autoreleasePoolPop(v50);
            v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
            [(__CFString *)v4 respondWithError:v22];
          }
        }

        else
        {
          v45 = objc_autoreleasePoolPush();
          v46 = v8;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v48 = v60 = v45;
            v49 = [v6 UUID];
            *buf = 138543874;
            v72 = v48;
            v73 = 2112;
            v74 = v49;
            v75 = 2112;
            v76 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType";
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, missing parameter: %@", buf, 0x20u);

            v45 = v60;
          }

          objc_autoreleasePoolPop(v45);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          [(__CFString *)v4 respondWithError:v20];
        }

        v6 = v62;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = v8;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v64 = v39;
          v43 = v42 = v6;
          v44 = [v42 UUID];
          *buf = 138543874;
          v72 = v43;
          v73 = 2112;
          v74 = v44;
          v75 = 2112;
          v76 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey";
          _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, missing parameter: %@", buf, 0x20u);

          v6 = v42;
          v39 = v64;
        }

        objc_autoreleasePoolPop(v39);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [(__CFString *)v4 respondWithError:v19];
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v8;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [v6 UUID];
        [(__CFString *)v4 destination];
        v37 = v63 = v6;
        v38 = objc_opt_class();
        *buf = 138544130;
        v72 = v35;
        v73 = 2112;
        v74 = v36;
        v75 = 2112;
        v76 = v37;
        v77 = 2112;
        v78 = v38;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Message destination is not of expected type %@:%@", buf, 0x2Au);

        v6 = v63;
      }

      objc_autoreleasePoolPop(v32);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(__CFString *)v4 respondWithError:v18];
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v8;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v6 UUID];
      *buf = 138543618;
      v72 = v30;
      v73 = 2112;
      v74 = v31;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, user not found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(__CFString *)v4 respondWithError:v17];
  }

  v55 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, accessory with uuid: %@ not found", &v28, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, failed to convert accessory uuid: %@ to: %@", &v28, 0x2Au);
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
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, unknown type for uuid: %@ expected: %@", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v10 = 0;
LABEL_21:

  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

void __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke_353(id *a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message %@:%@", buf, 0x2Au);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully handled configure device credential key message: %@", buf, 0x20u);
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

- (id)missingWalletKeysForAccessoryUUID:(id)a3 usersByUniqueID:(id)a4 accessoryUsersByUniqueID:(id)a5 flow:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 uuid];
  v15 = [v12 allValues];
  v16 = [v15 na_firstObjectPassingTest:&__block_literal_global_338_158680];

  v17 = [v16 credentials];
  v18 = [v17 na_firstObjectPassingTest:&__block_literal_global_341_158681];

  if (v18)
  {

    v19 = MEMORY[0x277CBEB98];
    v16 = [v11 allKeys];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_2_344;
    v34[3] = &unk_279730318;
    v35 = v12;
    v36 = self;
    v37 = v13;
    v38 = v14;
    v39 = v11;
    v20 = v14;
    v21 = [v16 na_map:v34];
    v22 = [v19 setWithArray:v21];

    v23 = v35;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      [v13 UUID];
      v28 = v33 = v24;
      *buf = 138543874;
      v43 = v27;
      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v14;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reader key is missing on accessory: %@", buf, 0x20u);

      v24 = v33;
    }

    objc_autoreleasePoolPop(v24);
    v29 = MEMORY[0x277CBEB98];
    v20 = [v11 allValues];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_342;
    v40[3] = &unk_2797302D0;
    v41 = v14;
    v23 = v14;
    v30 = [v20 na_map:v40];
    v22 = [v29 setWithArray:v30];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v22;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_342(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1C18];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [v4 uuid];

  v8 = [v5 initWithAccessoryUUID:v6 userUUID:v7];

  return v8;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_2_344(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) allKeys];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v7 = [v6 credentials];
    v8 = [v7 na_map:&__block_literal_global_348];

    if ([v8 count])
    {
      v9 = 0;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 48) UUID];
        v33 = *(a1 + 56);
        v25 = [*(a1 + 64) objectForKeyedSubscript:v3];
        [v25 uuid];
        v26 = v34 = v20;
        *buf = 138544130;
        v36 = v23;
        v37 = 2112;
        v38 = v24;
        v39 = 2112;
        v40 = v33;
        v41 = 2112;
        v42 = v26;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User does not have at least 1 RFID credentials on accessory: %@, user: %@", buf, 0x2Au);

        v20 = v34;
      }

      objc_autoreleasePoolPop(v20);
      v27 = objc_alloc(MEMORY[0x277CD1C18]);
      v28 = *(a1 + 56);
      v29 = [*(a1 + 64) objectForKeyedSubscript:v3];
      v30 = [v29 uuid];
      v9 = [v27 initWithAccessoryUUID:v28 userUUID:v30];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 48) UUID];
      v15 = *(a1 + 56);
      v16 = [*(a1 + 64) objectForKeyedSubscript:v3];
      v17 = [v16 uuid];
      *buf = 138544130;
      v36 = v13;
      v37 = 2112;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Matter user is missing on accessory: %@, user: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v18 = objc_alloc(MEMORY[0x277CD1C18]);
    v19 = *(a1 + 56);
    v6 = [*(a1 + 64) objectForKeyedSubscript:v3];
    v8 = [v6 uuid];
    v9 = [v18 initWithAccessoryUUID:v19 userUUID:v8];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v9;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_345(uint64_t a1, void *a2)
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

- (id)fetchMissingWalletKeysForAccessory:(id)a3 users:(id)a4 flow:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138544130;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v8;
    v45 = 2112;
    v46 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys from accessory: %@, users: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (v8)
  {
    v16 = [v9 na_dictionaryWithKeyGenerator:&__block_literal_global_331];
    v17 = [v8 waitForDoorLockClusterObjectWithFlow:v10];
    v18 = [v17 naFuture];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_2;
    v36[3] = &unk_279730220;
    v19 = v16;
    v37 = v19;
    v20 = v10;
    v38 = v20;
    v21 = [v18 flatMap:v36];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_3;
    v32[3] = &unk_279730268;
    v32[4] = v12;
    v33 = v8;
    v34 = v19;
    v35 = v20;
    v22 = v19;
    v23 = [v21 flatMap:v32];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v12;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v10 UUID];
      *buf = 138543618;
      v40 = v27;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Returning empty set for nil accessory", buf, 0x16u);
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
  v3 = [a2 na_dictionaryWithKeyGenerator:&__block_literal_global_335_158693];
  v4 = [*(a1 + 32) missingWalletKeysForAccessoryUUID:*(a1 + 40) usersByUniqueID:*(a1 + 48) accessoryUsersByUniqueID:v3 flow:*(a1 + 56)];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

- (id)fetchMissingWalletKeysForUserUUID:(id)a3 flow:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v46 = v11;
    v47 = 2112;
    v48 = v12;
    v49 = 2112;
    v50 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys for user UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDHomeWalletKeyAccessoryManager *)v9 home];
  v14 = [v13 userWithUUID:v6];
  v15 = [v13 accessoriesWithWalletKeySupport];
  v16 = [v15 na_filter:&__block_literal_global_318];

  if ([v16 hmf_isEmpty])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v9;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      [v7 UUID];
      v22 = v21 = v6;
      *buf = 138543618;
      v46 = v20;
      v47 = 2112;
      v48 = v22;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find any Matter accessories supporting TTU", buf, 0x16u);

      v6 = v21;
    }

    objc_autoreleasePoolPop(v17);
    v23 = MEMORY[0x277D2C900];
    v24 = [MEMORY[0x277CBEB98] set];
    v25 = [v23 futureWithResult:v24];
  }

  else
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_319;
    v42[3] = &unk_2797301B8;
    v42[4] = v9;
    v43 = v14;
    v38 = v13;
    v26 = v6;
    v27 = v7;
    v44 = v27;
    v28 = [v16 na_map:v42];
    v29 = MEMORY[0x277D2C900];
    v30 = [MEMORY[0x277D2C938] immediateScheduler];
    v31 = [v29 combineAllFutures:v28 ignoringErrors:1 scheduler:v30];
    [v31 flatMap:&__block_literal_global_324_158699];
    v32 = v14;
    v34 = v33 = v7;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_4;
    v39[3] = &unk_2797340B8;
    v39[4] = v9;
    v35 = v27;
    v6 = v26;
    v13 = v38;
    v40 = v35;
    v41 = v6;
    v25 = [v34 addCompletionBlock:v39];

    v7 = v33;
    v14 = v32;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v25;
}

id __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_319(void *a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v15, v16, v14, &v19, 0x2Au);
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
  v2 = [a2 na_map:&__block_literal_global_327_158704];
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

- (id)fetchMissingWalletKeysForAccessoryUUID:(id)a3 forUser:(id)a4 flow:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138543874;
    v37 = v14;
    v38 = 2112;
    v39 = v15;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys for accessory UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDHomeWalletKeyAccessoryManager *)v12 home];
  v17 = [v16 accessoryWithUUID:v8];
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

  if ([v19 supportsWalletKey])
  {
    v20 = [v16 users];
    v21 = [(HMDHomeWalletKeyAccessoryManager *)v12 fetchMissingWalletKeysForAccessory:v19 users:v20 flow:v10];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __88__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessoryUUID_forUser_flow___block_invoke;
    v33[3] = &unk_279730190;
    v33[4] = v12;
    v34 = v10;
    v35 = v8;
    v22 = [v21 addCompletionBlock:v33];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v12;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v26 = v32 = v9;
      v27 = [v10 UUID];
      v28 = [v19 uuid];
      *buf = 138543874;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      v40 = 2112;
      v41 = v28;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not fetching missing wallet keys for accessory that does not support wallet key: %@", buf, 0x20u);

      v9 = v32;
    }

    objc_autoreleasePoolPop(v23);
    v29 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CBEB98] set];
    v22 = [v29 futureWithResult:v20];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v22;
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
      _os_log_impl(&dword_2531F8000, v15, v16, v14, &v19, 0x2Au);
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

- (id)restoreMissingWalletKeys:(id)a3 onAccessory:(id)a4 flow:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    v16 = [v9 uuid];
    *buf = 138544130;
    v45 = v14;
    v46 = 2112;
    v47 = v15;
    v48 = 2112;
    v49 = v8;
    v50 = 2112;
    v51 = v16;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Restoring missing wallet keys: %@ on accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if ([v9 supportsCHIP])
  {
    v17 = objc_alloc_init(MEMORY[0x277D2C900]);
    v18 = [(HMDHomeWalletKeyAccessoryManager *)v12 configureNFCReaderKeyOnMatterAccessory:v9 flow:v10];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke;
    v41[3] = &unk_2797358C8;
    v19 = v17;
    v42 = v19;
    v20 = v8;
    v43 = v20;
    v21 = [v18 addFailureBlock:v41];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2;
    v35[3] = &unk_279730168;
    v36 = v20;
    v37 = v12;
    v38 = v10;
    v39 = v9;
    v22 = v19;
    v40 = v22;
    v23 = [v21 addSuccessBlock:v35];

    v24 = v40;
    v25 = v22;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v12;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [v10 UUID];
      v31 = [v9 uuid];
      *buf = 138543874;
      v45 = v29;
      v46 = 2112;
      v47 = v30;
      v48 = 2112;
      v49 = v31;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not restoring wallet key on non-Matter accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v32 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277CBEB98] set];
    v25 = [v32 futureWithResult:v18];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v25;
}

void __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3;
  v17[3] = &unk_279730060;
  v3 = *(a1 + 48);
  v17[4] = *(a1 + 40);
  v18 = v3;
  v4 = [v2 na_map:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_301;
  v14[3] = &unk_2797300D0;
  v14[4] = *(a1 + 40);
  v15 = *(a1 + 56);
  v16 = *(a1 + 48);
  v5 = [v4 na_map:v14];
  v6 = [v5 combineAllFutures];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_4;
  v9[3] = &unk_279730140;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find HMDUser with UUID: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _addIssuerKeyForUser:v3 toMatterAccessory:*(a1 + 40) flow:*(a1 + 48)];
  v5 = [v4 flatMap:&__block_literal_global_305_158720];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3_306;
  v9[3] = &unk_2797300A8;
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
    v4 = [v3 na_map:&__block_literal_global_312_158715];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2_313;
    v13[3] = &unk_279730118;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Error while restoring wallet keys: Failed to get results.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) finishWithResult:*(a1 + 56)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2_313(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1C18];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 initWithAccessoryUUID:v6 userUUID:v4];

  return v7;
}

void *__78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_309(uint64_t a1, void *a2)
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

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3_306(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) uuid];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (void)handleRestoreMissingWalletKeysMessage:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543874;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling RestoreMissingWalletKeysMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0720];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v13 = [v4 unarchivedObjectForKey:v11 ofClasses:v12];

  v14 = [v13 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_295];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_2;
  v23[3] = &unk_279730010;
  v23[4] = v7;
  v24 = v5;
  v15 = v5;
  v16 = [v14 na_map:v23];
  v17 = [v16 combineAllFutures];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_3;
  v21[3] = &unk_279730038;
  v22 = v4;
  v18 = v4;
  v19 = [v17 addSuccessBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

id __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

void __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_3(uint64_t a1, void *a2)
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

- (void)handleFetchMissingWalletKeysMessage:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543874;
    v42 = v9;
    v43 = 2112;
    v44 = v10;
    v45 = 2112;
    v46 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling FetchMissingWalletKeysMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 stringForKey:*MEMORY[0x277CD0700]];
  v12 = [v4 stringForKey:*MEMORY[0x277CD0728]];
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
  v15 = v14;
  if (v13)
  {
    v16 = [(HMDHomeWalletKeyAccessoryManager *)v7 home];
    v17 = [v4 userForHome:v16];

    v18 = [(HMDHomeWalletKeyAccessoryManager *)v7 fetchMissingWalletKeysForAccessoryUUID:v13 forUser:v17 flow:v5];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke;
    v39[3] = &unk_27972FFC8;
    v19 = v4;
    v40 = v19;
    v20 = [v18 addSuccessBlock:v39];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_2;
    v37[3] = &unk_2797359D8;
    v38 = v19;
    v21 = [v20 addFailureBlock:v37];
  }

  else if (v14)
  {
    v22 = [(HMDHomeWalletKeyAccessoryManager *)v7 fetchMissingWalletKeysForUserUUID:v14 flow:v5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_3;
    v35[3] = &unk_27972FFC8;
    v23 = v4;
    v36 = v23;
    v24 = [v22 addSuccessBlock:v35];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_4;
    v33[3] = &unk_2797359D8;
    v34 = v23;
    v25 = [v24 addFailureBlock:v33];

    v17 = v36;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v7;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      [v5 UUID];
      v30 = v32 = v26;
      *buf = 138543874;
      v42 = v29;
      v43 = 2112;
      v44 = v30;
      v45 = 2112;
      v46 = v4;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find either accessoryUUID or userUUID in message: %@", buf, 0x20u);

      v26 = v32;
    }

    objc_autoreleasePoolPop(v26);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v4 respondWithError:v17];
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

- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:(id)a3 deviceCredentialKey:(id)a4 user:(id)a5 deviceUUID:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v10;
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

        v21 = [*(*(&v23 + 1) + 8 * v20) uuid];
        [v15 addObject:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  [(HMDHomeWalletKeyAccessoryManager *)self createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:v15 deviceCredentialKey:v11 user:v12 deviceUUID:v13];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:(id)a3 deviceCredentialKey:(id)a4 user:(id)a5 deviceUUID:(id)a6
{
  v19 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [[HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc] initWithDeviceCredentialKey:v11 accessoriesUUIDs:v12 user:v10];
  v15 = [(HMDHomeWalletKeyAccessoryManager *)self pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
  v16 = [v15 objectForKeyedSubscript:v19];

  if (v16)
  {
    v17 = [v16 operationByMergingWithOperation:v14];

    v14 = v17;
  }

  v18 = [(HMDHomeWalletKeyAccessoryManager *)self pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
  [v18 setObject:v14 forKeyedSubscript:v19];
}

- (void)handleFetchWalletKeyColorMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 flow];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling HMHomeFetchWalletKeyColorMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMDHomeWalletKeyAccessoryManager_handleFetchWalletKeyColorMessage___block_invoke;
  v13[3] = &unk_27972FFA0;
  v14 = v4;
  v11 = v4;
  [(HMDHomeWalletKeyAccessoryManager *)v7 fetchWalletKeyColorWithFlow:v5 completion:v13];

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
  v3 = [(HMDHomeWalletKeyAccessoryManager *)self messageDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDHomeWalletKeyAccessoryManager *)self notificationCenter];
  [v4 removeObserver:self];
}

- (void)handleWalletKeyRemoved
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling wallet key removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDHomeWalletKeyAccessoryManager *)v5 dataSource];
  v9 = [(HMDHomeWalletKeyAccessoryManager *)v5 walletKeyColorPreferenceKey];
  [v8 persistNumberValueToNoBackupStore:0 withKey:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchWalletKeyColorWithFlow:(id)a3 completion:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v6 UUID];
    *buf = 138543618;
    v56 = v12;
    v57 = 2112;
    v58 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDHomeWalletKeyAccessoryManager *)v10 dataSource];
  v15 = [(HMDHomeWalletKeyAccessoryManager *)v10 walletKeyColorPreferenceKey];
  v16 = [v14 numberValueFromNoBackupStoreWithKey:v15];

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v10;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v6 UUID];
      *buf = 138543618;
      v56 = v20;
      v57 = 2112;
      v58 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping fetch, returning wallet key color from persistent store", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v7[2](v7, v16, 0);
  }

  else
  {
    v22 = [(HMDHomeWalletKeyAccessoryManager *)v10 home];
    v23 = [v22 accessoriesWithWalletKeySupport];
    v24 = [v23 na_any:&__block_literal_global_158734];

    v25 = objc_autoreleasePoolPush();
    v26 = v10;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      [v6 UUID];
      v50 = v7;
      v29 = v6;
      v31 = v30 = v22;
      v32 = HMFBooleanToString();
      *buf = 138543874;
      v56 = v28;
      v57 = 2112;
      v58 = v31;
      v59 = 2112;
      v60 = v32;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for home that does have Matter accessories: %@", buf, 0x20u);

      v22 = v30;
      v6 = v29;
      v7 = v50;
    }

    objc_autoreleasePoolPop(v25);
    if ([(HMDHomeWalletKeyAccessoryManager *)v26 isPrimaryResidentOrSoleOwnerController]|| ((v24 ^ 1) & 1) != 0)
    {
      v40 = [v22 accessoriesWithWalletKeySupport];
      if ([v40 count])
      {
        [(HMDHomeWalletKeyAccessoryManager *)v26 fetchWalletKeyColorForAccessories:v40 flow:v6 withCompletion:v7];
      }

      else
      {
        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (v7)[2](v7, 0, v48);
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
        v37 = [v6 UUID];
        *buf = 138543618;
        v56 = v36;
        v57 = 2112;
        v58 = v37;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Redispatching FetchWalletKeyColorMessage to resident because home has matter accessories", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = objc_alloc(MEMORY[0x277D0F820]);
      v39 = [(HMDHomeWalletKeyAccessoryManager *)v34 messageTargetUUID];
      v40 = [v38 initWithTarget:v39];

      v41 = objc_alloc(MEMORY[0x277D0F818]);
      v42 = *MEMORY[0x277CCFF98];
      v53 = *MEMORY[0x277D0F1C8];
      v43 = HMFEncodedRootObject();
      v54 = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v45 = [v41 initWithName:v42 destination:v40 payload:v44];

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithFlow_completion___block_invoke_283;
      v51[3] = &unk_279732CF0;
      v51[4] = v34;
      v52 = v7;
      [v45 setResponseHandler:v51];
      v46 = [(HMDHomeWalletKeyAccessoryManager *)v34 messageTargetUUID];
      v47 = [(HMDHomeWalletKeyAccessoryManager *)v34 workQueue];
      [v22 redispatchToResidentMessage:v45 target:v46 responseQueue:v47];
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __75__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithFlow_completion___block_invoke_283(uint64_t a1, void *a2, void *a3)
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

- (void)configureAllAccessoriesWithDeviceCredentialKey:(id)a3 ofType:(int64_t)a4 flow:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v13);

  v15 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v14 = [v15 accessoriesWithWalletKeySupport];
  [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:v14 withDeviceCredentialKey:v12 ofType:a4 flow:v11 completion:v10];
}

- (void)configureAccessory:(id)a3 withDeviceCredentialKey:(id)a4 ofType:(int64_t)a5 flow:(id)a6 completion:(id)a7
{
  v19[1] = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(v16);

  v19[0] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:v17 withDeviceCredentialKey:v14 ofType:a5 flow:v13 completion:v12];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v8;
    v49 = 2112;
    v50 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeWalletKeyAccessoryManager *)v6 setHome:v4];
  v9 = [v4 msgDispatcher];
  [(HMDHomeWalletKeyAccessoryManager *)v6 setMessageDispatcher:v9];

  v10 = [(HMDHomeWalletKeyAccessoryManager *)v6 dataSource];
  v11 = [v10 isResidentCapable];

  if (v11)
  {
    v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:0 remoteAccessRequired:0];
    v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    v39 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];
    v46[0] = v39;
    v46[1] = v14;
    v46[2] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    [v13 setRoles:{objc_msgSend(v13, "roles") | 4}];
    v16 = [v4 msgDispatcher];
    v45[0] = v12;
    v45[1] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    [v16 registerForMessage:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessage" receiver:v6 policies:v17 selector:sel_handleConfigureAccessoriesWithDeviceCredentialKeyMessage_];

    v18 = [v4 msgDispatcher];
    v19 = *MEMORY[0x277CD06F8];
    v44[0] = v12;
    v44[1] = v13;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    [v18 registerForMessage:v19 receiver:v6 policies:v20 selector:sel_handleFetchMissingWalletKeysMessage_];

    v21 = [v4 msgDispatcher];
    v22 = *MEMORY[0x277CD0738];
    v43[0] = v12;
    v43[1] = v13;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [v21 registerForMessage:v22 receiver:v6 policies:v23 selector:sel_handleRestoreMissingWalletKeysMessage_];

    v24 = [v4 msgDispatcher];
    v25 = *MEMORY[0x277CCFF98];
    v42[0] = v12;
    v42[1] = v13;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    [v24 registerForMessage:v25 receiver:v6 policies:v26 selector:sel_handleFetchWalletKeyColorMessage_];

    v27 = [v4 msgDispatcher];
    [v27 registerForMessage:@"HMDHomeConfigureMatterAccessoryWithReaderKeyMessage" receiver:v6 policies:v15 selector:sel_handleHMDHomeConfigureMatterAccessoryWithReaderKeyMessage_];

    v28 = [v4 msgDispatcher];
    [v28 registerForMessage:@"HMDHomeWalletKeyAccessoryManagerAddIssuerKeysToAccessoriesMessage" receiver:v6 policies:v15 selector:sel__handleAddIssuerKeysToMatterV1AccessoriesMessage_];
  }

  v29 = [(HMDHomeWalletKeyAccessoryManager *)v6 notificationCenter];
  [v29 addObserver:v6 selector:sel_handleHomeDidEnableCharacteristicNotification_ name:@"HMDHomeDidEnableCharacteristicNotifyEventNotification" object:v4];

  v30 = [(HMDHomeWalletKeyAccessoryManager *)v6 notificationCenter];
  [v30 addObserver:v6 selector:sel_handleHomeDidDisableCharacteristicNotification_ name:@"HMDHomeDidDisableCharacteristicNotifyEventNotification" object:v4];

  v31 = [(HMDHomeWalletKeyAccessoryManager *)v6 notificationCenter];
  v32 = [v4 residentDeviceManager];
  [v31 addObserver:v6 selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v32];

  v33 = [(HMDHomeWalletKeyAccessoryManager *)v6 notificationCenter];
  [v33 addObserver:v6 selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  v34 = [(HMDHomeWalletKeyAccessoryManager *)v6 notificationCenter];
  [v34 addObserver:v6 selector:sel_handleHomeAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:v4];

  v35 = [(HMDHomeWalletKeyAccessoryManager *)v6 notificationCenter];
  [v35 addObserver:v6 selector:sel_handleAccessoryCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];

  v36 = [(HMDHomeWalletKeyAccessoryManager *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHomeWalletKeyAccessoryManager_configureWithHome___block_invoke;
  block[3] = &unk_2797359B0;
  block[4] = v6;
  v41 = v4;
  v37 = v4;
  dispatch_async(v36, block);

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HMDHomeWalletKeyAccessoryManager_configureWithHome___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentDevicePrimaryResident:{objc_msgSend(*(a1 + 40), "isCurrentDeviceConfirmedPrimaryResident")}];
  v2 = *(a1 + 32);

  return [v2 configureNotificationsWithReason:@"configure"];
}

- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5 notificationCenter:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = HMDHomeWalletKeyAccessoryManager;
  v15 = [(HMDHomeWalletKeyAccessoryManager *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, a3);
    objc_storeStrong(&v16->_workQueue, a4);
    objc_storeStrong(&v16->_dataSource, a5);
    objc_storeStrong(&v16->_notificationCenter, a6);
    v17 = [MEMORY[0x277CBEB38] dictionary];
    nfcReaderKeyConfigureStateByAccessoryUUID = v16->_nfcReaderKeyConfigureStateByAccessoryUUID;
    v16->_nfcReaderKeyConfigureStateByAccessoryUUID = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = v16->_pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID;
    v16->_pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    logEvents = v16->_logEvents;
    v16->_logEvents = v21;

    [MEMORY[0x277D0F7A8] blessWithImplicitContext:v16->_workQueue];
  }

  return v16;
}

- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)a3 workQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMDHomeWalletDataSource);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [(HMDHomeWalletKeyAccessoryManager *)self initWithUUID:v7 workQueue:v6 dataSource:v8 notificationCenter:v9];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t211 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t211, &__block_literal_global_472);
  }

  v3 = logCategory__hmf_once_v212;

  return v3;
}

uint64_t __47__HMDHomeWalletKeyAccessoryManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v212;
  logCategory__hmf_once_v212 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)matterIssuerKeyDataWithPublicKey:(id)a3 flow:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CFEB78]);
  v9 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:1];
  [v8 setType:v9];

  [v8 setKey:v6];
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
    v15 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      [v7 UUID];
      v18 = v21 = v14;
      *buf = 138543874;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize issuer key with public key data with error: %@", buf, 0x20u);

      v14 = v21;
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)matterIssuerKeyDataForCurrentUserWithFlow:(id)a3
{
  v4 = MEMORY[0x277CFEC78];
  v5 = a3;
  v6 = [v4 systemStore];
  v7 = [v6 getPreferredHH2ControllerKey];
  v8 = [v7 publicKey];
  v9 = [v8 data];
  v10 = [a1 matterIssuerKeyDataWithPublicKey:v9 flow:v5];

  return v10;
}

+ (id)createMatterIssuerKeyDataForUser:(id)a3 withUserIndex:(id)a4 flow:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CFEB78]);
  v12 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:1];
  [v11 setType:v12];

  v13 = [v8 pairingIdentity];
  v14 = [v13 publicKey];
  v15 = [v14 data];
  [v11 setKey:v15];

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
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v23 = v28 = v9;
      [v10 UUID];
      v24 = v27 = v20;
      *buf = 138544386;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v8;
      v36 = 2048;
      v37 = v28;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize issuer key for user: %@ with user index: %ld with error: %@", buf, 0x34u);

      v20 = v27;
      v9 = v28;
    }

    objc_autoreleasePoolPop(v20);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

@end