@interface HMDAppleMediaAccessorySensorManager
+ (id)logCategory;
- (HMDAppleMediaAccessorySensorManager)initWithWorkQueue:(id)a3;
- (NSString)derivedHAPAccessoryIdentifier;
- (NSUUID)derivedSensorUUID;
- (NSUUID)messageTargetUUID;
- (NSUUID)sensorAccessoryUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)derivedHAPAccessoryIdentifierData;
- (id)derivedHAPAccessoryIdentifierDataForHostUUID:(id)a3;
- (id)derivedSensorUUIDForHostUUID:(id)a3;
- (id)logIdentifier;
- (void)_checkIfCharacteristicsUpdateServiceName:(void *)a3 sensorUUID:;
- (void)_migrateToDataStoreIfNeeded:(id)a3 completion:(id)a4;
- (void)_readCharacteristicAndUpdateNameIfNeeded:(void *)a1;
- (void)_readDefaultSensorNameAndUpdateToNameIfNeeded:(void *)a3 service:(void *)a4 accessoryUUID:;
- (void)_removeExistingSensorAccessories:(void *)a3 completion:;
- (void)_removeExistingSensorAccessoriesAndPair:(void *)a1;
- (void)_resetSensorPairingAndPair;
- (void)_resetWithCompletion:(uint64_t)a1;
- (void)_updateServiceName:(void *)a3 service:(void *)a4 accessoryUUID:;
- (void)_updateServiceNameIfRequired;
- (void)checkPairingStateAndStartADKIfUnpaired:(void *)a1;
- (void)cleanUpExistingAccessoriesAndStartADKIfReady;
- (void)configureWithDataSource:(id)a3 hpsXPCClient:(id)a4 dataStore:(id)a5;
- (void)doesAccessoryMatchDerivedAccessory:(void *)a1;
- (void)fetchADKSensorStatusCompletion:(id)a3;
- (void)handleAccessoryAdded:(id)a3;
- (void)handleCharacteristicsChangedNotification:(id)a3;
- (void)handleErrorCaseTestMessage:(id)a3;
- (void)localAccessoryAddRequiresConsent:(id)a3;
- (void)logPairingSuccess:(void *)a3 error:(uint64_t)a4 setupFailureReason:;
- (void)managerIsReadyToBePaired;
- (void)performLocalAddWithDataSource:(void *)a3 setupDescription:;
- (void)setIsCurrentlyPairing:(uint64_t)a1;
- (void)setSensorAccessoryUUID:(id)a3;
- (void)setShouldUseDerivedSensorUUID:(uint64_t)a1;
- (void)startSensorClientWithCompletion:(uint64_t)a1;
@end

@implementation HMDAppleMediaAccessorySensorManager

- (id)logIdentifier
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];
  v5 = [v4 UUIDString];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  v8 = v7;

  return v7;
}

- (void)managerIsReadyToBePaired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@HPSManagerDelegate: manager is ready to be paired", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDAppleMediaAccessorySensorManager *)v4 cleanUpExistingAccessoriesAndStartADKIfReady];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpExistingAccessoriesAndStartADKIfReady
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 96, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDAppleMediaAccessorySensorManager_cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = a1;
    dispatch_async(Property, block);
  }
}

void __83__HMDAppleMediaAccessorySensorManager_cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke(uint64_t a1, const char *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained((v2 + 72));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained isResidentConfirmedForAppleMediaAccessorySensorManager:v2])
      {
        if ([v5 isReadyForSensorPairing:v2])
        {
          v6 = [v5 hostUUIDForAppleMediaAccessorySensorManager:v2];
          v7 = [v5 accessoriesWithHostUUID:v6 forAppleMediaAccessorySensorManager:v2];
          *&v43 = MEMORY[0x277D85DD0];
          *(&v43 + 1) = 3221225472;
          v44 = __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke;
          v45 = &unk_278681708;
          v46 = v2;
          v8 = [v7 na_filter:&v43];

          if ([v8 count])
          {
            v9 = [v2 sensorAccessoryUUID];
            v10 = v9 == 0;

            if (v10)
            {
              v29 = objc_autoreleasePoolPush();
              v30 = v2;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = HMFGetLogIdentifier();
                LODWORD(v39) = 138543362;
                *(&v39 + 4) = v32;
                _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Removing unexpected sensor accessories as no sensor should be paired", &v39, 0xCu);
              }

              objc_autoreleasePoolPop(v29);
              [(HMDAppleMediaAccessorySensorManager *)v30 _removeExistingSensorAccessoriesAndPair:v8];
              goto LABEL_29;
            }

            *&v39 = MEMORY[0x277D85DD0];
            *(&v39 + 1) = 3221225472;
            v40 = __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_37;
            v41 = &unk_278681708;
            v42 = v2;
            v11 = [v8 na_filter:&v39];
            if ([v11 count])
            {
              v12 = objc_autoreleasePoolPush();
              v13 = v2;
              v14 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v15 = HMFGetLogIdentifier();
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v15;
                _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Removing unexpected sensor accessories", &buf, 0xCu);
              }

              objc_autoreleasePoolPop(v12);
              [(HMDAppleMediaAccessorySensorManager *)v13 _removeExistingSensorAccessories:v11 completion:0];
            }
          }

          os_unfair_lock_lock_with_options();
          v16 = *(v2 + 40);
          os_unfair_lock_unlock((v2 + 8));
          if (v16 == 1)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = v2;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = HMFGetLogIdentifier();
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v20;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not checking HomePod sensor pairing status", &buf, 0xCu);
            }

            objc_autoreleasePoolPop(v17);
          }

          else
          {
            objc_initWeak(&location, v2);
            v28 = objc_getProperty(v2, v27, 64, 1);
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v36 = __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_38;
            v37 = &unk_278678098;
            objc_copyWeak(v38, &location);
            [v28 isReadyToPairWithCompletion:&buf];

            objc_destroyWeak(v38);
            objc_destroyWeak(&location);
          }

LABEL_29:

          goto LABEL_30;
        }

        v21 = objc_autoreleasePoolPush();
        v22 = v2;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          LODWORD(v43) = 138543362;
          *(&v43 + 4) = v26;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Cannot pair/check sensors yet as data source is not ready for pairing", &v43, 0xCu);
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = v2;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          LODWORD(v43) = 138543362;
          *(&v43 + 4) = v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Cannot pair/check sensors yet as no primary is confirmed", &v43, 0xCu);
        }
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v2;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        LODWORD(v43) = 138543362;
        *(&v43 + 4) = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot check and clean up existing HomePod sensor pairings with nil data source", &v43, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v21);
LABEL_30:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_removeExistingSensorAccessoriesAndPair:(void *)a1
{
  v3 = a2;
  Property = objc_getProperty(a1, v4, 96, 1);
  dispatch_assert_queue_V2(Property);
  objc_initWeak(&location, a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke;
  v6[3] = &unk_278686B80;
  objc_copyWeak(&v7, &location);
  [(HMDAppleMediaAccessorySensorManager *)a1 _removeExistingSensorAccessories:v3 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) sensorAccessoryUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5 ^ 1u;
}

- (void)_removeExistingSensorAccessories:(void *)a3 completion:
{
  v42 = *MEMORY[0x277D85DE8];
  v23 = a2;
  v22 = a3;
  if (a1)
  {
    Property = objc_getProperty(a1, v5, 96, 1);
    dispatch_assert_queue_V2(Property);
    group = dispatch_group_create();
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v10;
      v40 = 2112;
      v41 = v23;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Removing HomePod sensor accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    objc_initWeak(&location, v8);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v23;
    v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v11)
    {
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          if ([(HMDAppleMediaAccessorySensorManager *)v8 doesAccessoryMatchDerivedAccessory:v14])
          {
            v15 = objc_autoreleasePoolPush();
            v16 = v8;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = HMFGetLogIdentifier();
              *buf = 138543618;
              v39 = v18;
              v40 = 2112;
              v41 = v14;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Not removing derived HomePod sensor accessory %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v15);
          }

          else
          {
            dispatch_group_enter(group);
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke;
            v28[3] = &unk_278685D08;
            objc_copyWeak(&v31, &location);
            v29 = group;
            v30 = v14;
            [v14 sendRemovalRequestWithCompletion:{v28, v22}];

            objc_destroyWeak(&v31);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    v20 = objc_getProperty(v8, v19, 96, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke_46;
    block[3] = &unk_27868A7A0;
    block[4] = v8;
    v27 = v22;
    dispatch_group_notify(group, v20, block);

    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_38(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [(HMDAppleMediaAccessorySensorManager *)WeakRetained checkPairingStateAndStartADKIfUnpaired:?];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not starting HomePod Sensor pairing as homepodsensed is not ready", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)checkPairingStateAndStartADKIfUnpaired:(void *)a1
{
  if (a1)
  {
    v2 = a2;
    Property = objc_getProperty(a1, a2, 96, 1);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __78__HMDAppleMediaAccessorySensorManager_checkPairingStateAndStartADKIfUnpaired___block_invoke;
    v5[3] = &unk_278688650;
    v5[4] = a1;
    v6 = v2;
    dispatch_async(Property, v5);
  }
}

void __78__HMDAppleMediaAccessorySensorManager_checkPairingStateAndStartADKIfUnpaired___block_invoke(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    if (*(v2 + 41) == 1)
    {
      os_unfair_lock_unlock((v2 + 8));
      v5 = objc_autoreleasePoolPush();
      v6 = v2;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not checking sensor pairing while another check is in progress", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      *(v2 + 41) = 1;
      os_unfair_lock_unlock((v2 + 8));
      objc_initWeak(&location, v2);
      v10 = objc_getProperty(v2, v9, 64, 1);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v14 = __79__HMDAppleMediaAccessorySensorManager__checkPairingStateAndStartADKIfUnpaired___block_invoke;
      v15 = &unk_278673170;
      objc_copyWeak(&v16, &location);
      v17 = v3;
      [v10 isPairedWithCompletion:&buf];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __79__HMDAppleMediaAccessorySensorManager__checkPairingStateAndStartADKIfUnpaired___block_invoke(uint64_t a1, char a2, char a3)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    *(WeakRetained + 41) = 0;
    os_unfair_lock_unlock(WeakRetained + 2);
    if (a2)
    {
      if ((a3 & 1) != 0 || (*(a1 + 40) & 1) == 0)
      {
        Property = objc_getProperty(WeakRetained, v7, 96, 1);
        *&v17 = MEMORY[0x277D85DD0];
        *(&v17 + 1) = 3221225472;
        v18 = __71__HMDAppleMediaAccessorySensorManager_performPairingFromPairingStatus___block_invoke;
        v19 = &unk_278688650;
        v20 = WeakRetained;
        v21 = a3;
LABEL_13:
        dispatch_async(Property, &v17);
        goto LABEL_14;
      }

LABEL_12:
      Property = objc_getProperty(WeakRetained, v7, 96, 1);
      *&v17 = MEMORY[0x277D85DD0];
      *(&v17 + 1) = 3221225472;
      v18 = __67__HMDAppleMediaAccessorySensorManager_startADKAndCheckPairingState__block_invoke;
      v19 = &unk_27868A728;
      v20 = WeakRetained;
      goto LABEL_13;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      LODWORD(v17) = 138543362;
      *(&v17 + 4) = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to check sensor pairing due to xpc client error", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (*(a1 + 40) == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      LODWORD(v17) = 138543362;
      *(&v17 + 4) = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Self became nil in _checkPairingStateAndStartADKIfUnpaired", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

void __71__HMDAppleMediaAccessorySensorManager_performPairingFromPairingStatus___block_invoke(uint64_t a1, const char *a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_56;
  }

  v3 = *(a1 + 40);
  Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
  dispatch_assert_queue_V2(Property);
  os_unfair_lock_lock_with_options();
  v5 = *(v2 + 40);
  os_unfair_lock_unlock((v2 + 8));
  if (v5 != 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 72));
    if (!WeakRetained)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v2;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform HomePod sensor pairing with nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      goto LABEL_55;
    }

    v11 = [v2 sensorAccessoryUUID];

    if (v11)
    {
      v12 = [v2 sensorAccessoryUUID];
      v13 = [WeakRetained accessoryWithUUID:v12 forAppleMediaAccessorySensorManager:v2];

      if (!v13)
      {
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v31 error:1 setupFailureReason:?];

        v32 = objc_autoreleasePoolPush();
        v33 = v2;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v33 sensorAccessoryUUID];
          *buf = 138543618;
          *&buf[4] = v35;
          *&buf[12] = 2112;
          *&buf[14] = v36;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is missing, expected accessory with UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v38 = objc_getProperty(v33, v37, 96, 1);
        dispatch_assert_queue_V2(v38);
        v39 = objc_loadWeakRetained((v2 + 72));
        if (v39)
        {
          v40 = [v33 sensorAccessoryUUID];
          v41 = [v39 residentSyncClientDidSyncFutureForAppleMediaAccessorySensorManager:v33];
          v42 = v41;
          if (v41)
          {
            v43 = MEMORY[0x277D0F7C0];
            v89 = v41;
            v44 = [v39 firstCloudKitImportFutureForAppleMediaAccessorySensorManager:v33];
            v90 = v44;
            v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:2];
            v46 = [v43 allSettled:v45];

            objc_initWeak(&location, v33);
            v47 = objc_alloc(MEMORY[0x277D0F7A8]);
            v49 = objc_getProperty(v33, v48, 96, 1);
            v50 = [v47 initWithQueue:v49];

            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __57__HMDAppleMediaAccessorySensorManager__recoverLostSensor__block_invoke;
            v85 = &unk_278673198;
            objc_copyWeak(v88, &location);
            v86 = v40;
            v87 = v39;
            v51 = [v46 inContext:v50 then:buf];

            objc_destroyWeak(v88);
            objc_destroyWeak(&location);
          }

          else
          {
            v78 = objc_autoreleasePoolPush();
            v79 = v33;
            v80 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              v81 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v81;
              _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_ERROR, "%{public}@Resident sync future was nil", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v78);
          }
        }

        else
        {
          v70 = objc_autoreleasePoolPush();
          v71 = v33;
          v72 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v73 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v73;
            _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform HomePod sensor recovery with nil data source", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v70);
        }

        goto LABEL_55;
      }

      if (v3)
      {
LABEL_10:
        if (v13)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = v2;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@HomePod sensor (%@) is already paired -- no action needed", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          [(HMDAppleMediaAccessorySensorManager *)v16 _updateServiceNameIfRequired];

          goto LABEL_55;
        }

LABEL_31:
        v52 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v52 error:2 setupFailureReason:?];

        v53 = objc_autoreleasePoolPush();
        v54 = v2;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v56;
          _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is paired but not to any accessory in the home, resetting pairing", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v53);
        [(HMDAppleMediaAccessorySensorManager *)v54 _resetSensorPairingAndPair];
        goto LABEL_55;
      }
    }

    else
    {
      os_unfair_lock_lock_with_options();
      v24 = *(v2 + 44);
      os_unfair_lock_unlock((v2 + 8));
      if (v24 != 1)
      {
        if (v3)
        {
          goto LABEL_31;
        }

LABEL_34:
        v58 = objc_getProperty(v2, v14, 96, 1);
        dispatch_assert_queue_V2(v58);
        v59 = objc_loadWeakRetained((v2 + 72));
        if (v59)
        {
          os_unfair_lock_lock_with_options();
          if ((*(v2 + 40) & 1) == 0)
          {
            *(v2 + 40) = 1;
            [MEMORY[0x277D17DC0] currentTime];
            *(v2 + 56) = v74;
            [*(v2 + 112) removeAllObjects];
            os_unfair_lock_unlock((v2 + 8));
            v75 = [MEMORY[0x277D2C900] futureWithNoResult];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke;
            v85 = &unk_27868A200;
            v86 = v2;
            v76 = [v75 addSuccessBlock:buf];
            v89 = MEMORY[0x277D85DD0];
            v90 = 3221225472;
            v91 = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_59;
            v92 = &unk_27868A250;
            v93 = v2;
            v77 = [v75 addFailureBlock:&v89];

            goto LABEL_49;
          }

          os_unfair_lock_unlock((v2 + 8));
          v60 = objc_autoreleasePoolPush();
          v61 = v2;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v63;
            _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Not starting HomePod Sensor pairing as a pairing is already in progress", buf, 0xCu);
          }
        }

        else
        {
          v60 = objc_autoreleasePoolPush();
          v61 = v2;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v69 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v69;
            _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform HomePod sensor pairing with nil data source", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v60);
LABEL_49:

LABEL_55:
        goto LABEL_56;
      }

      v25 = [v2 derivedSensorUUID];
      v13 = [WeakRetained accessoryWithUUID:v25 forAppleMediaAccessorySensorManager:v2];

      if (v3)
      {
        goto LABEL_10;
      }
    }

    if (v13)
    {
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v26 error:3 setupFailureReason:?];

      os_unfair_lock_lock_with_options();
      LODWORD(v26) = *(v2 + 44);
      os_unfair_lock_unlock((v2 + 8));
      if (v26 != 1 || ([(HMDAppleMediaAccessorySensorManager *)v2 doesAccessoryMatchDerivedAccessory:v13]& 1) == 0)
      {
        v64 = objc_autoreleasePoolPush();
        v65 = v2;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v67;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is not paired but there is a paired accessory in the home, removing existing sensor: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        *buf = v13;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
        [(HMDAppleMediaAccessorySensorManager *)v65 _removeExistingSensorAccessoriesAndPair:v68];

        goto LABEL_55;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = v2;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is not paired but there is a paired derived accessory in the home. Running pairing again. %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
    }

    goto LABEL_34;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v2;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not checking HomePod sensor pairing status", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
LABEL_56:
  v82 = *MEMORY[0x277D85DE8];
}

- (void)logPairingSuccess:(void *)a3 error:(uint64_t)a4 setupFailureReason:
{
  if (a1)
  {
    v7 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v12 = [WeakRetained logSubmitterForAppleMediaAccessorySensorManager:a1];

    v9 = [HMDHomePodSensorPairingLogEvent alloc];
    os_unfair_lock_lock_with_options();
    v10 = *(a1 + 56);
    os_unfair_lock_unlock((a1 + 8));
    v11 = [(HMDHomePodSensorPairingLogEvent *)v9 initWithStartTime:a2 pairingSuccess:a4 failureReason:v10];
    [v12 submitLogEvent:v11 error:v7];
  }
}

- (void)doesAccessoryMatchDerivedAccessory:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 identifier];
    v6 = [a1 derivedHAPAccessoryIdentifier];
    if ([v5 isEqualToString:v6])
    {
      v7 = [v4 uuid];
      v8 = [a1 derivedSensorUUID];
      a1 = [v7 hmf_isEqualToUUID:v8];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_resetSensorPairingAndPair
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    objc_initWeak(&location, a1);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__HMDAppleMediaAccessorySensorManager__resetSensorPairingAndPair__block_invoke;
    v4[3] = &unk_278678098;
    objc_copyWeak(&v5, &location);
    [(HMDAppleMediaAccessorySensorManager *)a1 _resetWithCompletion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_updateServiceNameIfRequired
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    v4 = [a1 sensorAccessoryUUID];
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 9);
      v6 = [WeakRetained accessoryWithUUID:v4 forAppleMediaAccessorySensorManager:a1];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      if (v8)
      {
        v9 = [v8 uuid];
        v10 = [v9 hmf_isEqualToUUID:v4];

        if (v10)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v23 = v8;
          v11 = [v8 services];
          v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v29;
            do
            {
              v15 = 0;
              do
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v28 + 1) + 8 * v15);
                v24 = 0u;
                v25 = 0u;
                v26 = 0u;
                v27 = 0u;
                v17 = [v16 characteristics];
                v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v25;
                  do
                  {
                    v21 = 0;
                    do
                    {
                      if (*v25 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      [(HMDAppleMediaAccessorySensorManager *)a1 _checkIfCharacteristicsUpdateServiceName:v4 sensorUUID:?];
                    }

                    while (v19 != v21);
                    v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
                  }

                  while (v19);
                }

                ++v15;
              }

              while (v15 != v13);
              v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
            }

            while (v13);
          }

          v8 = v23;
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_checkIfCharacteristicsUpdateServiceName:(void *)a3 sensorUUID:
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  Property = objc_getProperty(a1, v7, 96, 1);
  dispatch_assert_queue_V2(Property);
  v9 = [v5 service];
  if (v9)
  {
    os_unfair_lock_lock_with_options();
    v10 = *(a1 + 112);
    v11 = [v9 instanceID];
    LOBYTE(v10) = [v10 containsObject:v11];

    os_unfair_lock_unlock((a1 + 8));
    if ((v10 & 1) == 0)
    {
      v12 = [v5 accessory];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 uuid];
        if ([v14 hmf_isEqualToUUID:v6])
        {
          v15 = [v5 type];
          v16 = [v15 isEqualToString:*MEMORY[0x277CCF988]];

          if (v16)
          {
            v17 = [v5 value];
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

            if (v19)
            {
              v20 = [v9 getConfiguredName];

              if (v20)
              {
                [(HMDAppleMediaAccessorySensorManager *)a1 _readDefaultSensorNameAndUpdateToNameIfNeeded:v19 service:v9 accessoryUUID:v6];
              }

              else
              {
                v33 = objc_autoreleasePoolPush();
                v34 = a1;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = HMFGetLogIdentifier();
                  v38 = 138543618;
                  v39 = v36;
                  v40 = 2112;
                  v41 = v9;
                  _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Renaming sensor service as it has no configured name: %@ ", &v38, 0x16u);
                }

                objc_autoreleasePoolPop(v33);
                [(HMDAppleMediaAccessorySensorManager *)v34 _updateServiceName:v19 service:v9 accessoryUUID:v6];
              }
            }

            else
            {
              v29 = objc_autoreleasePoolPush();
              v30 = a1;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = HMFGetLogIdentifier();
                v38 = 138543874;
                v39 = v32;
                v40 = 2112;
                v41 = v9;
                v42 = 2112;
                v43 = v5;
                _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Name for sensor service is nil %@/%@", &v38, 0x20u);
              }

              objc_autoreleasePoolPop(v29);
              [(HMDAppleMediaAccessorySensorManager *)v30 _readCharacteristicAndUpdateNameIfNeeded:v5];
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = a1;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v38 = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = v5;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@No accessory for characteristic: %@", &v38, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@No service for characteristic: %@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_readCharacteristicAndUpdateNameIfNeeded:(void *)a1
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(a1, v4, 96, 1);
  dispatch_assert_queue_V2(Property);
  v6 = [v3 accessory];
  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v3 service];
      *buf = 138543874;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Locally reading name for sensor service %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [HMDCharacteristicRequest requestWithCharacteristic:v3];
    v21 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v16 = objc_getProperty(v8, v15, 96, 1);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__HMDAppleMediaAccessorySensorManager__readCharacteristicAndUpdateNameIfNeeded___block_invoke;
    v19[3] = &unk_278687998;
    v19[4] = v8;
    v20 = v3;
    [v6 readCharacteristicValues:v14 source:1160 queue:v16 completionHandler:v19];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@No accessory for characteristic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateServiceName:(void *)a3 service:(void *)a4 accessoryUUID:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v10 = a4;
  if (a1)
  {
    Property = objc_getProperty(a1, v9, 96, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v12 = *(a1 + 112);
    v13 = [v8 instanceID];
    LOBYTE(v12) = [v12 containsObject:v13];

    if (v12)
    {
      os_unfair_lock_unlock((a1 + 8));
    }

    else
    {
      v14 = *(a1 + 112);
      v15 = [v8 instanceID];
      [v14 addObject:v15];

      os_unfair_lock_unlock((a1 + 8));
      v16 = objc_autoreleasePoolPush();
      v17 = a1;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138544130;
        v23 = v19;
        v24 = 2112;
        v25 = v8;
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Renaming service %@ on accessory %@ to %@ after sensor pairing", &v22, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      WeakRetained = objc_loadWeakRetained(v17 + 9);
      [WeakRetained renameService:v8 name:v7];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_readDefaultSensorNameAndUpdateToNameIfNeeded:(void *)a3 service:(void *)a4 accessoryUUID:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  Property = objc_getProperty(a1, v10, 96, 1);
  dispatch_assert_queue_V2(Property);
  v13 = objc_getProperty(a1, v12, 64, 1);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke;
  v17[3] = &unk_278673238;
  v17[4] = a1;
  v14 = v7;
  v18 = v14;
  v15 = v8;
  v19 = v15;
  v16 = v9;
  v20 = v16;
  [v13 getSensorName:v17];
}

void __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (([v3 isEqualToString:a1[5]] & 1) == 0)
    {
      v5 = [a1[6] getConfiguredName];
      if ([v5 isEqualToString:v4])
      {
      }

      else
      {
        v11 = [a1[6] name];
        v12 = [v11 isEqualToString:v4];

        if (!v12)
        {
          goto LABEL_12;
        }
      }

      v13 = a1[4];
      if (v13)
      {
        Property = objc_getProperty(v13, v6, 96, 1);
        v15 = a1[4];
      }

      else
      {
        v15 = 0;
        Property = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke_81;
      block[3] = &unk_278689550;
      block[4] = v15;
      v18 = a1[6];
      v19 = v4;
      v20 = a1[5];
      v21 = a1[7];
      dispatch_async(Property, block);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Fetched nil sensor name from adk", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

void __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke_81(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 40) getConfiguredName];
    v8 = *(a1 + 48);
    v10 = 138544130;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Renaming sensor service as name (%@) or configured name (%@) matches default accessory name: %@", &v10, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  [(HMDAppleMediaAccessorySensorManager *)*(a1 + 32) _updateServiceName:*(a1 + 40) service:*(a1 + 64) accessoryUUID:?];
  v9 = *MEMORY[0x277D85DE8];
}

void __80__HMDAppleMediaAccessorySensorManager__readCharacteristicAndUpdateNameIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v15 = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for read of name for %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if ([v3 na_all:&__block_literal_global_45810])
  {
    [(HMDAppleMediaAccessorySensorManager *)*(a1 + 32) _updateServiceNameIfRequired];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Local read of name for %@ did not succeed: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL __80__HMDAppleMediaAccessorySensorManager__readCharacteristicAndUpdateNameIfNeeded___block_invoke_78(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 value];
    v4 = v5 != 0;
  }

  return v4;
}

void __65__HMDAppleMediaAccessorySensorManager__resetSensorPairingAndPair__block_invoke(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [(HMDAppleMediaAccessorySensorManager *)WeakRetained setShouldUseDerivedSensorUUID:?];
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Reset HomePod sensor and ready to pair", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAppleMediaAccessorySensorManager *)v6 cleanUpExistingAccessoriesAndStartADKIfReady];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v4;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to reset HomePod sensor due to xpc client error", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_resetWithCompletion:(uint64_t)a1
{
  v8 = a2;
  Property = objc_getProperty(a1, v3, 96, 1);
  dispatch_assert_queue_V2(Property);
  os_unfair_lock_lock_with_options();
  v5 = *(a1 + 44);
  os_unfair_lock_unlock((a1 + 8));
  v7 = objc_getProperty(a1, v6, 64, 1);
  if (v5 == 1)
  {
    [v7 resetPairingsWithHandler:v8];
  }

  else
  {
    [v7 resetWithCompletion:v8];
  }
}

- (void)setShouldUseDerivedSensorUUID:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    *(a1 + 44) = a2;

    os_unfair_lock_unlock((a1 + 8));
  }
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HMFRandomDataWithLength();
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Starting HomePod Sensor pairing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(buf, *(a1 + 32));
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 64, 1);
  }

  v12 = Property;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_50;
  v16[3] = &unk_2786731C0;
  objc_copyWeak(&v19, buf);
  v13 = v4;
  v17 = v13;
  v14 = v5;
  v18 = v14;
  [v12 setupPairing:v13 uuid:v14 completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_59(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cannot pair HomePod sensor as zone fetch succeeded future failed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v9 error:11 setupFailureReason:?];

  [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:?];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setIsCurrentlyPairing:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;

    os_unfair_lock_unlock((a1 + 8));
  }
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_50(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = @"failed with xpc error";
    *v21 = 138543874;
    *&v21[4] = v10;
    *&v21[12] = 2112;
    if (a2)
    {
      v11 = @"completed";
    }

    *&v21[14] = v11;
    *&v21[22] = 2112;
    v22 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@HomePod Sensor pairing %@ - pairing URI: %@", v21, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5 && (a2 & 1) != 0)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = v5;
    v15 = v12;
    v17 = v13;
    if (v8)
    {
      Property = objc_getProperty(v8, v16, 96, 1);
      *v21 = MEMORY[0x277D85DD0];
      *&v21[8] = 3221225472;
      *&v21[16] = __75__HMDAppleMediaAccessorySensorManager_pairWithURI_authToken_authTokenUUID___block_invoke;
      v22 = &unk_2786891E0;
      v23 = v8;
      v24 = v14;
      v25 = v15;
      v26 = v17;
      dispatch_async(Property, v21);
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{-1, *v21, *&v21[8]}];
    [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v19 error:4 setupFailureReason:?];

    [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:v8];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __75__HMDAppleMediaAccessorySensorManager_pairWithURI_authToken_authTokenUUID___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v64 = *(a1 + 40);
  v62 = v2;
  v63 = v3;
  if (v1)
  {
    Property = objc_getProperty(v1, v4, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 9);
    if (!WeakRetained)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor pairing with nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [(HMDAppleMediaAccessorySensorManager *)v11 logPairingSuccess:v14 error:6 setupFailureReason:?];

      os_unfair_lock_lock_with_options();
      *(v11 + 40) = 0;
      v11[7] = 0;
      os_unfair_lock_unlock(v11 + 2);
      goto LABEL_36;
    }

    v7 = v64;
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    if (v8)
    {
      if ([MEMORY[0x277CD17C8] isHAPSetupPayloadURL:v8])
      {
        v9 = [objc_alloc(MEMORY[0x277CD1DF0]) initWithHAPSetupPayloadURL:v8 error:0];
        goto LABEL_15;
      }

      v15 = objc_autoreleasePoolPush();
      v16 = v1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not create setup payload from invalid HAP setup payload url string: %@", buf, 0x16u);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil setup payload for url string: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v15);
    v9 = 0;
LABEL_15:

    if (!v9)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = v1;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v53;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor pairing with nil accessory payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [(HMDAppleMediaAccessorySensorManager *)v51 logPairingSuccess:v54 error:5 setupFailureReason:?];

      os_unfair_lock_lock_with_options();
      *(v51 + 40) = 0;
      v51[7] = 0;
      os_unfair_lock_unlock(v51 + 2);
      goto LABEL_35;
    }

    v20 = objc_alloc(MEMORY[0x277CD1DE8]);
    v21 = [WeakRetained homeUUIDForAppleMediaAccessorySensorManager:v1];
    v22 = [v20 initWithSetupAccessoryPayload:v9 appID:0 homeUUID:v21 ownershipToken:0];

    objc_setProperty_atomic(v1, v23, v22, 80);
    [objc_getProperty(v1 v24];
    v25 = objc_autoreleasePoolPush();
    v26 = v1;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v30 = objc_getProperty(v26, v29, 80, 1);
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Starting HomePod sensor pairing with accessory description: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v31 = [WeakRetained accessoryBrowserForAppleMediaAccessorySensorManager:v26];
    [v31 startDiscoveringAccessoriesWithLinkType:1];
    v32 = [v31 unpairedHAPAccessoryWithAccessoryDescription:v22];
    if (v32)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v26;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v32;
        *&buf[22] = 2112;
        v66 = v22;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Previously discovered HomePod sensor accessory %@ for accessory description: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v61 = [(os_unfair_lock_s *)v34 derivedHAPAccessoryIdentifier];
      v60 = [(os_unfair_lock_s *)v34 derivedSensorUUID];
      os_unfair_lock_lock_with_options();
      os_unfair_lock_opaque_low = LOBYTE(v34[11]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v34 + 2);
      if (os_unfair_lock_opaque_low == 1)
      {
        v38 = [v32 identifier];
        if ([v38 isEqualToString:v61])
        {
          v39 = [v32 uuid];
          v40 = [v39 hmf_isEqualToUUID:v60];

          if ((v40 & 1) == 0)
          {
            v41 = objc_autoreleasePoolPush();
            v42 = v34;
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = HMFGetLogIdentifier();
              *buf = 138543874;
              *&buf[4] = v44;
              *&buf[12] = 2112;
              *&buf[14] = v32;
              *&buf[22] = 2112;
              v66 = v60;
              _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Previously discovered unpaired HomePod sensor accessory %@ does not have expected derived UUID (%@), will remove it from the browser to update it", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v41);
            v45 = [v32 preferredAccessoryServer];
            if (v45)
            {
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __76__HMDAppleMediaAccessorySensorManager__pairWithURI_authToken_authTokenUUID___block_invoke;
              v66 = &unk_2786731E8;
              v67 = v42;
              v46 = v32;
              v68 = v46;
              v47 = v31;
              v69 = v47;
              v70 = v45;
              v71 = v61;
              v72 = WeakRetained;
              v73 = v22;
              v48 = v61;
              v49 = v45;
              [v47 removeUnassociatedAccessory:v46 completion:buf];

LABEL_34:
LABEL_35:

LABEL_36:
              goto LABEL_37;
            }

            v56 = objc_autoreleasePoolPush();
            v57 = v42;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v59;
              _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@No server for unpaired HomePod sensor accessory, unable to re-discover it to update it", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v56);
          }
        }

        else
        {
        }
      }
    }

    [(HMDAppleMediaAccessorySensorManager *)v26 performLocalAddWithDataSource:v22 setupDescription:?];
    goto LABEL_34;
  }

LABEL_37:

  v55 = *MEMORY[0x277D85DE8];
}

void __76__HMDAppleMediaAccessorySensorManager__pairWithURI_authToken_authTokenUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removed unpaired HomePod sensor accessory (%@) from the browser", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 48) addUnpairedAccessoryServer:*(a1 + 56) identifier:*(a1 + 64)];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Added back removed unpaired HomePod sensor accessory %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDAppleMediaAccessorySensorManager *)*(a1 + 32) performLocalAddWithDataSource:*(a1 + 80) setupDescription:?];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)performLocalAddWithDataSource:(void *)a3 setupDescription:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__HMDAppleMediaAccessorySensorManager_performLocalAddWithDataSource_setupDescription___block_invoke;
    v7[3] = &unk_278688A18;
    objc_copyWeak(&v8, &location);
    [v5 performLocalAddAccessoryWithDescription:v6 progressHandlerDelegate:a1 completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __86__HMDAppleMediaAccessorySensorManager_performLocalAddWithDataSource_setupDescription___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  self = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 96, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDAppleMediaAccessorySensorManager_handleLocalAddCompletedWithError___block_invoke;
    block[3] = &unk_27868A750;
    block[4] = self;
    v9 = v5;
    dispatch_async(Property, block);
  }
}

void __72__HMDAppleMediaAccessorySensorManager_handleLocalAddCompletedWithError___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 9);
    v6 = [WeakRetained accessoryBrowserForAppleMediaAccessorySensorManager:v1];
    v7 = objc_autoreleasePoolPush();
    v8 = v1;
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    if (v3)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = objc_getProperty(v8, v12, 80, 1);
        *&buf[22] = 2112;
        v37 = v3;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to add HomePod sensor accessory: %@ - %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      [v6 cancelPairingWithAccessoryDescription:objc_getProperty(v8 error:{v13, 80, 1), v3}];
      os_unfair_lock_lock_with_options();
      v14 = *(v8 + 44);
      os_unfair_lock_unlock(v8 + 2);
      if (v14 == 1)
      {
        v15 = [v8 derivedHAPAccessoryIdentifier];
        [v6 deregisterPairedAccessory:v15];
      }

      [v8 setSensorAccessoryUUID:0];
      objc_setProperty_atomic(v8, v16, 0, 80);
      [objc_getProperty(v8 v17];
      objc_initWeak(&location, v8);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __73__HMDAppleMediaAccessorySensorManager__handleLocalAddCompletedWithError___block_invoke;
      v37 = &unk_278678098;
      objc_copyWeak(v38, &location);
      [(HMDAppleMediaAccessorySensorManager *)v8 _resetWithCompletion:buf];
      objc_destroyWeak(v38);
      objc_destroyWeak(&location);
      v18 = 7;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v8 sensorAccessoryUUID];
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully added HomePod sensor accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v21 = [v8 sensorAccessoryUUID];
      v22 = [WeakRetained accessoryWithUUID:v21 forAppleMediaAccessorySensorManager:v8];

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

      os_unfair_lock_lock_with_options();
      v25 = *(v8 + 44);
      os_unfair_lock_unlock(v8 + 2);
      if (v25 == 1)
      {
        if (v24)
        {
          v27 = [v6 unpairedHAPAccessoryWithAccessoryDescription:{objc_getProperty(v8, v26, 80, 1)}];
          v28 = v27 == 0;

          if (!v28)
          {
            v29 = [v24 identifier];
            *buf = 0;
            [v24 matchesHAPAccessoryWithServerIdentifier:v29 linkType:buf];
            [v6 handleNewlyPairedAccessory:v29 linkType:*buf];
          }
        }
      }

      objc_setProperty_atomic(v8, v26, 0, 80);
      v31 = objc_getProperty(v8, v30, 88, 1);
      v32 = [v8 sensorAccessoryUUID];
      [v31 saveSensorUUID:v32];

      [(HMDAppleMediaAccessorySensorManager *)v8 _updateServiceNameIfRequired];
      os_unfair_lock_lock_with_options();
      *(v8 + 40) = 0;
      v8[7] = 0;
      os_unfair_lock_unlock(v8 + 2);

      v18 = 0;
    }

    [v6 stopDiscoveringForUnpairedAccessoriesWithLinkType:1];
    [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v3 error:v18 setupFailureReason:?];
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __73__HMDAppleMediaAccessorySensorManager__handleLocalAddCompletedWithError___block_invoke(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:?];
  if (a2)
  {
    [(HMDAppleMediaAccessorySensorManager *)WeakRetained setShouldUseDerivedSensorUUID:?];
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      LODWORD(v15) = 138543362;
      *(&v15 + 4) = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Reset HomePod sensor after failed pairing", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (v5)
    {
      Property = objc_getProperty(v5, v8, 96, 1);
      *&v15 = MEMORY[0x277D85DD0];
      *(&v15 + 1) = 3221225472;
      v16 = __60__HMDAppleMediaAccessorySensorManager_scheduleRetryIfNeeded__block_invoke;
      v17 = &unk_27868A728;
      v18 = v5;
      dispatch_async(Property, &v15);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(v15) = 138543362;
      *(&v15 + 4) = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to reset HomePod sensor due to xpc client error", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60__HMDAppleMediaAccessorySensorManager_scheduleRetryIfNeeded__block_invoke(uint64_t a1, const char *a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained((v2 + 72));
    if (WeakRetained)
    {
      os_unfair_lock_lock_with_options();
      if ((*(v2 + 45) & 1) != 0 || (v5 = *(v2 + 104), v5 >= 0x32))
      {
        os_unfair_lock_unlock((v2 + 8));
      }

      else
      {
        *(v2 + 104) = v5 + 1;
        *(v2 + 45) = 1;
        os_unfair_lock_unlock((v2 + 8));
        if (v5 >= [&unk_283E75698 count])
        {
          v5 = ([&unk_283E75698 count] - 1);
        }

        v6 = [&unk_283E75698 objectAtIndexedSubscript:v5];
        v7 = objc_autoreleasePoolPush();
        v8 = v2;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v10;
          *&buf[12] = 2048;
          *&buf[14] = v5;
          *&buf[22] = 2048;
          v22 = [v6 integerValue];
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Will retry (# %ld) HomePod sensor pairing after %ld sec", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v7);
        objc_initWeak(&location, v8);
        [v6 doubleValue];
        v12 = v11;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __61__HMDAppleMediaAccessorySensorManager__scheduleRetryIfNeeded__block_invoke;
        v22 = &unk_278673210;
        objc_copyWeak(v23, &location);
        v23[1] = v5;
        v14 = objc_getProperty(v8, v13, 96, 1);
        [WeakRetained performAfterDelay:buf block:v14 queue:v12];

        objc_destroyWeak(v23);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v2;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot schedule retry due to nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __61__HMDAppleMediaAccessorySensorManager__scheduleRetryIfNeeded__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    *(WeakRetained + 45) = 0;
    os_unfair_lock_unlock(WeakRetained + 2);
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Performing sensor paring retry (# %ld)", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDAppleMediaAccessorySensorManager *)v4 cleanUpExistingAccessoriesAndStartADKIfReady];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HMDAppleMediaAccessorySensorManager__recoverLostSensor__block_invoke(id *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v5, 96, 1);
    dispatch_assert_queue_V2(Property);
    v8 = [(os_unfair_lock_s *)v6 derivedSensorUUID];
    v9 = v8;
    if (v8 && [v8 hmf_isEqualToUUID:a1[4]])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v6;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Recovering lost derived sensor immediately", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDAppleMediaAccessorySensorManager *)v11 logPairingSuccess:v14 error:13 setupFailureReason:?];

      v15 = objc_autoreleasePoolPush();
      v16 = v11;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v19 = a1[4];
        *buf = 138543618;
        v38 = v18;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting lost sensor %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDAppleMediaAccessorySensorManager *)v16 _removeExistingSensorAccessoriesAndPair:?];
    }

    else
    {
      os_unfair_lock_lock_with_options();
      if (HIBYTE(v6[10]._os_unfair_lock_opaque) == 1)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v6;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v38 = v23;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Recovery is already pending, will not start another.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        os_unfair_lock_unlock(v6 + 2);
      }

      else
      {
        HIBYTE(v6[10]._os_unfair_lock_opaque) = 1;
        os_unfair_lock_unlock(v6 + 2);
        v24 = objc_autoreleasePoolPush();
        v25 = v6;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v27;
          v39 = 2048;
          v40 = 0x40AC200000000000;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Pending sensor recovery for %f seconds", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v28 = a1[5];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __57__HMDAppleMediaAccessorySensorManager__recoverLostSensor__block_invoke_44;
        v33[3] = &unk_278685F38;
        objc_copyWeak(&v36, a1 + 6);
        v34 = a1[5];
        v35 = a1[4];
        v30 = objc_getProperty(v25, v29, 96, 1);
        [v28 performAfterDelay:v33 block:v30 queue:3600.0];

        objc_destroyWeak(&v36);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return 1;
}

void __57__HMDAppleMediaAccessorySensorManager__recoverLostSensor__block_invoke_44(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) accessoryWithUUID:*(a1 + 40) forAppleMediaAccessorySensorManager:WeakRetained];
    if (v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = WeakRetained;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v7;
        v26 = 2112;
        v27 = v3;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Found lost sensor %@, stopping reset", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDAppleMediaAccessorySensorManager *)v5 logPairingSuccess:v8 error:8 setupFailureReason:?];

      goto LABEL_17;
    }

    os_unfair_lock_lock_with_options();
    os_unfair_lock_opaque_low = LOBYTE(WeakRetained[10]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(WeakRetained + 2);
    if (os_unfair_lock_opaque_low == 1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:

        objc_autoreleasePoolPop(v10);
LABEL_17:

        goto LABEL_18;
      }

      v13 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v13;
      v14 = "%{public}@Already in the process of pairing, not resetting lost sensor";
    }

    else
    {
      v15 = [(os_unfair_lock_s *)WeakRetained sensorAccessoryUUID];
      v16 = [v15 hmf_isEqualToUUID:*(a1 + 40)];

      if (v16)
      {
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [(HMDAppleMediaAccessorySensorManager *)WeakRetained logPairingSuccess:v17 error:9 setupFailureReason:?];

        v18 = objc_autoreleasePoolPush();
        v19 = WeakRetained;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = HMFGetLogIdentifier();
          v22 = *(a1 + 40);
          v24 = 138543618;
          v25 = v21;
          v26 = 2112;
          v27 = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting lost sensor %@", &v24, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        [(HMDAppleMediaAccessorySensorManager *)v19 _removeExistingSensorAccessoriesAndPair:?];
        goto LABEL_17;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v13 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v13;
      v14 = "%{public}@Sensor UUID has changed, not resetting lost sensor";
    }

    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, v14, &v24, 0xCu);

    goto LABEL_16;
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

void __67__HMDAppleMediaAccessorySensorManager_startADKAndCheckPairingState__block_invoke(uint64_t a1, const char *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v4 = *(v2 + 40);
    os_unfair_lock_unlock((v2 + 8));
    if (v4 == 1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = v2;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not going to restart ADK", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      objc_initWeak(&location, v2);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v12 = __68__HMDAppleMediaAccessorySensorManager__startADKAndCheckPairingState__block_invoke;
      v13 = &unk_278678098;
      objc_copyWeak(v14, &location);
      [(HMDAppleMediaAccessorySensorManager *)v2 startSensorClientWithCompletion:?];
      objc_destroyWeak(v14);
      objc_destroyWeak(&location);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __68__HMDAppleMediaAccessorySensorManager__startADKAndCheckPairingState__block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2 && WeakRetained)
  {
    [(HMDAppleMediaAccessorySensorManager *)WeakRetained checkPairingStateAndStartADKIfUnpaired:?];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Starting the HomePod sensor manager to check pairing failed", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startSensorClientWithCompletion:(uint64_t)a1
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 96, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v6 = *(a1 + 40);
    os_unfair_lock_unlock((a1 + 8));
    if (v6 == 1)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = a1;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not starting adk again", buf, 0xCu);
      }

LABEL_5:

      objc_autoreleasePoolPop(v7);
      v4[2](v4, 0);
      goto LABEL_23;
    }

    os_unfair_lock_lock_with_options();
    if (*(a1 + 42) == 1)
    {
      os_unfair_lock_unlock((a1 + 8));
      v7 = objc_autoreleasePoolPush();
      v8 = a1;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Not starting the ADK while a start is already in progress", buf, 0xCu);
      }

      goto LABEL_5;
    }

    *(a1 + 42) = 1;
    os_unfair_lock_unlock((a1 + 8));
    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__HMDAppleMediaAccessorySensorManager_startSensorClientWithCompletion___block_invoke;
    aBlock[3] = &unk_2786730F8;
    objc_copyWeak(&v33, &location);
    v32 = v4;
    v12 = _Block_copy(aBlock);
    os_unfair_lock_lock_with_options();
    v13 = *(a1 + 44);
    os_unfair_lock_unlock((a1 + 8));
    if (v13)
    {
      v16 = [(HMDAppleMediaAccessorySensorManager *)a1 derivedHAPAccessoryIdentifierData];
      if (v16)
      {
        v17 = objc_getProperty(a1, v15, 120, 1);
        v18 = [v17 privateKey];
        v19 = [v18 data];

        if (v19)
        {
          v21 = objc_getProperty(a1, v20, 64, 1);
          [v21 startWithDeviceID:v16 deviceLTSK:v19 controllerPairingID:0 controllerLTPK:0 completion:v12];
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          v27 = a1;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543362;
            v36 = v29;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to get pairing identity to start sensor client", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v26);
          v12[2](v12, 0);
        }
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = a1;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to calculate derived deviceID to start sensor client", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v12[2](v12, 0);
        v16 = 0;
      }
    }

    else
    {
      v16 = objc_getProperty(a1, v14, 64, 1);
      [v16 startWithCompletion:v12];
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

LABEL_23:

  v30 = *MEMORY[0x277D85DE8];
}

void __71__HMDAppleMediaAccessorySensorManager_startSensorClientWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    *(WeakRetained + 42) = 0;
    os_unfair_lock_unlock(WeakRetained + 2);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Self became nil in startSensorClientWithCompletion", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)derivedHAPAccessoryIdentifierData
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(a1 + 24);
    if (!v2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v4 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:a1];

      if (!v4)
      {
LABEL_6:
        os_unfair_lock_unlock((a1 + 8));
        goto LABEL_7;
      }

      v5 = [a1 derivedHAPAccessoryIdentifierDataForHostUUID:v4];
      v6 = *(a1 + 24);
      *(a1 + 24) = v5;

      v2 = *(a1 + 24);
    }

    v4 = v2;
    goto LABEL_6;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

void __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  dispatch_group_leave(*(a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v17 = 138543874;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      v11 = "%{public}@Unable to remove existing HomePod sensor accessory: %@ - %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v12, v13, v11, &v17, v14);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = *(a1 + 40);
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v15;
    v11 = "%{public}@Removed HomePod sensor accessory %@";
    v12 = v8;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke_46(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removed HomePod sensor accessories", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting sensor uuid after sensor removal", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 setSensorAccessoryUUID:0];
  if (v3)
  {
    Property = objc_getProperty(v3, v6, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke_47;
  v9[3] = &unk_27868A250;
  v9[4] = v3;
  [Property saveSensorUUID:0 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke_47(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMDAppleMediaAccessorySensorManager_resetSensorPairingAndPair__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v2;
    dispatch_async(Property, block);
  }
}

- (NSString)derivedHAPAccessoryIdentifier
{
  os_unfair_lock_lock_with_options();
  derivedHAPAccessoryIdentifier = self->_derivedHAPAccessoryIdentifier;
  if (derivedHAPAccessoryIdentifier)
  {
    v4 = derivedHAPAccessoryIdentifier;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(HMDAppleMediaAccessorySensorManager *)self derivedHAPAccessoryIdentifierData];
    if (v5)
    {
      os_unfair_lock_lock_with_options();
      v6 = self->_derivedHAPAccessoryIdentifier;
      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x277CFEB48]) initWithDeviceIDData:v5];
        v8 = [v7 deviceIDString];
        v9 = self->_derivedHAPAccessoryIdentifier;
        self->_derivedHAPAccessoryIdentifier = v8;

        v6 = self->_derivedHAPAccessoryIdentifier;
      }

      v4 = v6;
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)derivedHAPAccessoryIdentifierDataForHostUUID:(id)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  [a3 getUUIDBytes:v6];
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:6];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSUUID)derivedSensorUUID
{
  os_unfair_lock_lock_with_options();
  derivedSensorUUID = self->_derivedSensorUUID;
  if (!derivedSensorUUID)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = [(HMDAppleMediaAccessorySensorManager *)self derivedSensorUUIDForHostUUID:v5];
    v7 = self->_derivedSensorUUID;
    self->_derivedSensorUUID = v6;

    derivedSensorUUID = self->_derivedSensorUUID;
  }

  v5 = derivedSensorUUID;
LABEL_5:
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)derivedSensorUUIDForHostUUID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAD78];
  v10 = @"HMDAppleMediaAccessorySensorManager";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v3 hm_deriveUUIDFromBaseUUID:v5 withSalts:{v6, v10, v11}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)fetchADKSensorStatusCompletion:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HMDAppleMediaAccessorySensorManager_fetchADKSensorStatusCompletion___block_invoke;
  v8[3] = &unk_278673260;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [Property getCurrentStatusWithCompletion:v8];
}

uint64_t __70__HMDAppleMediaAccessorySensorManager_fetchADKSensorStatusCompletion___block_invoke(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);
    v5 = *MEMORY[0x277D85DE8];

    return v4();
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch sensor status from adk", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    result = (*(*(a1 + 40) + 16))();
    v11 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)handleCharacteristicsChangedNotification:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDAppleMediaAccessorySensorManager_handleCharacteristicsChangedNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __80__HMDAppleMediaAccessorySensorManager_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v11 = [*(a1 + 40) userInfo];
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 96, 1);
    dispatch_assert_queue_V2(Property);
    v4 = [v1 sensorAccessoryUUID];
    if (v4)
    {
      v5 = [v11 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(HMDAppleMediaAccessorySensorManager *)v1 _checkIfCharacteristicsUpdateServiceName:v4 sensorUUID:?];
          }

          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryAdded:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"HMDNotificationAddedAccessoryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v16 = v6;

  if (v16)
  {
    v7 = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];

    if (v7)
    {
      if (self)
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      }

      else
      {
        WeakRetained = 0;
      }

      v9 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];

      v10 = [v16 uuid];
      v11 = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];
      if ([v10 hmf_isEqualToUUID:v11])
      {
      }

      else
      {
        if (!v9)
        {

          goto LABEL_14;
        }

        v13 = [v16 hostAccessory];
        v14 = [v13 uuid];
        v15 = [v9 hmf_isEqualToUUID:v14];

        if (!v15)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      [(HMDAppleMediaAccessorySensorManager *)self cleanUpExistingAccessoriesAndStartADKIfReady];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)localAccessoryAddRequiresConsent:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = [WeakRetained accessoryBrowserForAppleMediaAccessorySensorManager:self];
      if (([v6 isReadyForSensorPairing:self] & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v17;
          v53 = 2112;
          v54 = v4;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Not consenting to accessory local add for %@ as data source is no longer ready for pairing", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        Property = objc_getProperty(v15, v18, 80, 1);
        v20 = v7;
        v21 = 0;
        goto LABEL_21;
      }

      os_unfair_lock_lock_with_options();
      shouldUseDerivedSensorUUID = self->_shouldUseDerivedSensorUUID;
      os_unfair_lock_unlock(&self->_lock);
      if (shouldUseDerivedSensorUUID)
      {
        v9 = [(HMDAppleMediaAccessorySensorManager *)self derivedSensorUUID];
        if (v9)
        {
          if ([v4 hmf_isEqualToUUID:v9])
          {

LABEL_18:
            v33 = objc_autoreleasePoolPush();
            v34 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543618;
              v52 = v36;
              v53 = 2112;
              v54 = v4;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Confirming HomePod sensor with UUID %@ is allowed to be added locally", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            [(HMDAppleMediaAccessorySensorManager *)v34 setSensorAccessoryUUID:v4];
            Property = objc_getProperty(v34, v37, 80, 1);
            v20 = v7;
            v21 = 1;
LABEL_21:
            [v20 didReceiveUserConsentResponseForSetupAccessoryDetail:Property consent:v21];
LABEL_29:

            goto LABEL_30;
          }

          v43 = objc_autoreleasePoolPush();
          v44 = self;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            v46 = HMFGetLogIdentifier();
            *buf = 138543874;
            v52 = v46;
            v53 = 2112;
            v54 = v4;
            v55 = 2112;
            v56 = v9;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Pairing sensor UUID %@ does not match expected derived UUID: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v43);
          v47 = [[HMDAssertionLogEvent alloc] initWithReason:@"Pairing sensor UUID %@ does not match expected derived UUID: %@", v4, v9];
          v48 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v48 submitLogEvent:v47];

          [v7 didReceiveUserConsentResponseForSetupAccessoryDetail:objc_getProperty(v44 consent:{v49, 80, 1), 0}];
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          v39 = self;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            *buf = 138543618;
            v52 = v41;
            v53 = 2112;
            v54 = v4;
            _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Cannot confirm that HomePod sensor with UUID %@ is allowed to be added locally due to missing derived sensor UUID", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
          [v7 didReceiveUserConsentResponseForSetupAccessoryDetail:objc_getProperty(v39 consent:{v42, 80, 1), 0}];
        }

        goto LABEL_29;
      }

      v22 = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [(HMDAppleMediaAccessorySensorManager *)v24 sensorAccessoryUUID];
          *buf = 138543874;
          v52 = v26;
          v53 = 2112;
          v54 = v4;
          v55 = 2112;
          v56 = v27;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Pairing sensor UUID %@ when we already have a paired sensor: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v28 = [HMDAssertionLogEvent alloc];
        v29 = [(HMDAppleMediaAccessorySensorManager *)v24 sensorAccessoryUUID];
        v30 = [(HMDAssertionLogEvent *)v28 initWithReason:@"Pairing sensor UUID %@ when we already have a paired sensor: %@", v4, v29];

        v31 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v31 submitLogEvent:v30];

        [v7 didReceiveUserConsentResponseForSetupAccessoryDetail:objc_getProperty(v24 consent:{v32, 80, 1), 0}];
        goto LABEL_29;
      }

      goto LABEL_18;
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v13;
    v53 = 2112;
    v54 = v4;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Not consenting to accessory local add for %@ with nil data source", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_30:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)handleErrorCaseTestMessage:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 96, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  if (isInternalBuild())
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    }

    else
    {
      WeakRetained = 0;
    }

    v8 = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];
    v9 = [WeakRetained accessoryWithUUID:v8 forAppleMediaAccessorySensorManager:self];

    if (v9)
    {
      goto LABEL_7;
    }

    if (!self)
    {
      goto LABEL_15;
    }

    os_unfair_lock_lock_with_options();
    shouldUseDerivedSensorUUID = self->_shouldUseDerivedSensorUUID;
    os_unfair_lock_unlock(&self->_lock);
    if (!shouldUseDerivedSensorUUID)
    {
      goto LABEL_15;
    }

    v24 = [(HMDAppleMediaAccessorySensorManager *)self derivedSensorUUID];
    v9 = [WeakRetained accessoryWithUUID:v24 forAppleMediaAccessorySensorManager:self];

    if (v9)
    {
LABEL_7:
      v11 = [v5 messagePayload];
      v12 = [v11 objectForKey:*MEMORY[0x277CCF238]];

      v13 = [v5 messagePayload];
      v14 = [v13 objectForKey:*MEMORY[0x277CCF240]];
      v15 = v14 != 0;

      v16 = [v5 messagePayload];
      v17 = [v16 objectForKey:*MEMORY[0x277CCF228]];
      v18 = v17 != 0;

      v19 = dispatch_group_create();
      dispatch_group_enter(v19);
      if (v12)
      {
        if (self)
        {
          v21 = objc_getProperty(self, v20, 64, 1);
        }

        else
        {
          v21 = 0;
        }

        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke;
        v37[3] = &unk_278673148;
        v37[4] = self;
        v40 = v18;
        v38 = v19;
        v39 = v9;
        v41 = v15;
        [v21 resetWithCompletion:v37];

        v22 = v38;
      }

      else
      {
        if (self)
        {
          v26 = objc_getProperty(self, v20, 96, 1);
        }

        else
        {
          v26 = 0;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_5;
        block[3] = &unk_278684B18;
        v35 = v18;
        v32 = v19;
        v33 = self;
        v34 = v9;
        v36 = v15;
        dispatch_async(v26, block);

        v22 = v32;
      }

      if (self)
      {
        v28 = objc_getProperty(self, v27, 96, 1);
      }

      else
      {
        v28 = 0;
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_8;
      v29[3] = &unk_27868A750;
      v29[4] = self;
      v30 = v5;
      dispatch_group_notify(v19, v28, v29);
    }

    else
    {
LABEL_15:
      [(HMDAppleMediaAccessorySensorManager *)self cleanUpExistingAccessoriesAndStartADKIfReady];
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v5 respondWithError:v25];
    }
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v5 respondWithError:WeakRetained];
  }
}

void __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_2;
  v7[3] = &unk_278684B18;
  v11 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  v12 = *(a1 + 57);
  dispatch_async(Property, v7);
}

void __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_5(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v2 = *(a1 + 40);
    v14[0] = *(a1 + 48);
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_6;
    v11[3] = &unk_27868A728;
    v4 = &v12;
    v12 = *(a1 + 32);
    [(HMDAppleMediaAccessorySensorManager *)v2 _removeExistingSensorAccessories:v3 completion:v11];

    v5 = [MEMORY[0x277CCAD78] UUID];
    [*(a1 + 40) setSensorAccessoryUUID:v5];

LABEL_5:
    goto LABEL_6;
  }

  if (*(a1 + 57) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v6 = *(a1 + 40);
    v13 = *(a1 + 48);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_7;
    v9[3] = &unk_27868A728;
    v4 = &v10;
    v10 = *(a1 + 32);
    [(HMDAppleMediaAccessorySensorManager *)v6 _removeExistingSensorAccessories:v7 completion:v9];

    [*(a1 + 40) setSensorAccessoryUUID:0];
    goto LABEL_5;
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_8(uint64_t a1, const char *a2)
{
  [(HMDAppleMediaAccessorySensorManager *)*(a1 + 32) cleanUpExistingAccessoriesAndStartADKIfReady];
  v3 = *(a1 + 40);

  return [v3 respondWithSuccess];
}

void __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v2 = *(a1 + 40);
    v14[0] = *(a1 + 48);
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_3;
    v11[3] = &unk_27868A728;
    v4 = &v12;
    v12 = *(a1 + 32);
    [(HMDAppleMediaAccessorySensorManager *)v2 _removeExistingSensorAccessories:v3 completion:v11];

    v5 = [MEMORY[0x277CCAD78] UUID];
    [*(a1 + 40) setSensorAccessoryUUID:v5];

LABEL_5:
    goto LABEL_6;
  }

  if (*(a1 + 57) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v6 = *(a1 + 40);
    v13 = *(a1 + 48);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_4;
    v9[3] = &unk_27868A728;
    v4 = &v10;
    v10 = *(a1 + 32);
    [(HMDAppleMediaAccessorySensorManager *)v6 _removeExistingSensorAccessories:v7 completion:v9];

    [*(a1 + 40) setSensorAccessoryUUID:0];
    goto LABEL_5;
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
  v8 = *MEMORY[0x277D85DE8];
}

- (NSUUID)messageTargetUUID
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];

  return v4;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
    v2 = vars8;
  }

  return self;
}

- (void)setSensorAccessoryUUID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  sensorAccessoryUUID = self->_sensorAccessoryUUID;
  self->_sensorAccessoryUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)sensorAccessoryUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sensorAccessoryUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_migrateToDataStoreIfNeeded:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(HMDAppleMediaAccessorySensorManagerLocalDataStore);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__HMDAppleMediaAccessorySensorManager__migrateToDataStoreIfNeeded_completion___block_invoke;
    v15[3] = &unk_278673120;
    v15[4] = self;
    v16 = v6;
    v17 = v8;
    v18 = v7;
    v9 = v8;
    [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)v9 fetchSensorUUIDWithCompletion:v15];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot migrate HomePod sensor identifier with nil data source", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    (*(v7 + 2))(v7, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__HMDAppleMediaAccessorySensorManager__migrateToDataStoreIfNeeded_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Found HomePod sensor identifier, need to migrate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__HMDAppleMediaAccessorySensorManager__migrateToDataStoreIfNeeded_completion___block_invoke_24;
    v12[3] = &unk_278689358;
    v9 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v14 = *(a1 + 56);
    v13 = *(a1 + 48);
    [v9 saveSensorUUID:v3 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Didn't found HomePod sensor identifier, no migration needed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 56) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __78__HMDAppleMediaAccessorySensorManager__migrateToDataStoreIfNeeded_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate HomePod sensor identifier: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Success migrating HomePod sensor identifier", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) saveSensorUUID:0];
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configureWithDataSource:(id)a3 hpsXPCClient:(id)a4 dataStore:(id)a5
{
  v8 = a5;
  if (self)
  {
    v9 = a4;
    objc_storeWeak(&self->_dataSource, a3);
    objc_setProperty_atomic(self, v10, v9, 64);

    objc_setProperty_atomic(self, v11, v8, 88);
    Property = objc_getProperty(self, v12, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  dispatch_async(Property, v15);
}

uint64_t __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_2;
  v4[3] = &unk_278682310;
  v4[4] = v2;
  return [v2 _migrateToDataStoreIfNeeded:v1 completion:v4];
}

void __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_2(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 96, 1);
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_3;
    block[3] = &unk_27868A728;
    block[4] = v4;
    dispatch_async(Property, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with failed migration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_3(uint64_t a1, const char *a2)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v2 + 9);
    if (WeakRetained)
    {
      objc_getProperty(v2, v4, 64, 1);
      if ([objc_opt_class() supportSensory])
      {
        objc_initWeak(&location, v2);
        objc_initWeak(&v14, WeakRetained);
        v7 = objc_getProperty(v2, v6, 88, 1);
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v17 = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke;
        v18 = &unk_2786730D0;
        objc_copyWeak(&v19, &location);
        objc_copyWeak(v20, &v14);
        [v7 fetchSensorUUIDWithCompletion:&buf];

        objc_destroyWeak(v20);
        objc_destroyWeak(&v19);
        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
LABEL_11:

        goto LABEL_12;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = v2;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cannot start HomePod sensor manager as device does not support sensors", &buf, 0xCu);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v2;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with nil data source", &buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_11;
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
}

void __45__HMDAppleMediaAccessorySensorManager__start__block_invoke(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSensorAccessoryUUID:v3];
  if (v5 && WeakRetained)
  {
    v6 = [WeakRetained derivedSensorUUID];
    if (v6)
    {
      v7 = [WeakRetained sensorAccessoryUUID];
      if (v7)
      {
        v8 = [v3 hmf_isEqualToUUID:v6];
      }

      else
      {
        v8 = 1;
      }

      v78 = v6;
      os_unfair_lock_lock_with_options();
      *(WeakRetained + 44) = v8;
      os_unfair_lock_unlock(WeakRetained + 2);

      v18 = objc_loadWeakRetained(WeakRetained + 9);
      v19 = v18;
      if (v18)
      {
        v77 = v18;
        v20 = [v18 keychainStoreForAppleMediaAccessorySensorManager:WeakRetained];
        v21 = [WeakRetained derivedSensorUUID];
        v22 = [v20 pairingIdentityForAppleMediaAccessorySensorWithUUID:v21];

        v23 = objc_autoreleasePoolPush();
        v24 = WeakRetained;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v26 = v20;
          *buf = 138543618;
          v83 = v27;
          v84 = 2112;
          v85 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Existing sensor accessory pairing identity: %@", buf, 0x16u);

          v20 = v26;
        }

        objc_autoreleasePoolPop(v23);
        if (v22)
        {
          objc_setProperty_atomic_copy(v24, v28, v22, 120);
        }

        else
        {
          v35 = objc_loadWeakRetained(WeakRetained + 9);
          v36 = v35;
          if (v35)
          {
            v74 = v35;
            v75 = v20;
            v37 = [MEMORY[0x277D0F8A8] pairingIdentity];
            v38 = objc_alloc(MEMORY[0x277D0F8A8]);
            v39 = [v24 derivedHAPAccessoryIdentifier];
            v40 = [v37 publicKey];
            v73 = v37;
            v41 = [v37 privateKey];
            v42 = [v38 initWithIdentifier:v39 publicKey:v40 privateKey:v41];

            v43 = objc_autoreleasePoolPush();
            v44 = v24;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543618;
              v83 = v46;
              v84 = 2112;
              v85 = v42;
              _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new sensor accessory pairing identity: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v43);
            v36 = v74;
            v47 = [v74 keychainStoreForAppleMediaAccessorySensorManager:v44];
            if ([v47 saveAppleMediaAccessorySensorPairingIdentity:v42])
            {
              objc_setProperty_atomic_copy(v44, v48, v42, 120);
              v20 = v75;
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v72 = v44;
              v54 = HMFGetOSLogHandle();
              v20 = v75;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = HMFGetLogIdentifier();
                *buf = 138543362;
                v83 = v55;
                _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to save new sensor accessory pairing identity in the keychain store", buf, 0xCu);

                v36 = v74;
              }

              objc_autoreleasePoolPop(context);
            }
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            v50 = v24;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v53 = v52 = v20;
              *buf = 138543362;
              v83 = v53;
              _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Cannot create sensor pairing with nil data source", buf, 0xCu);

              v20 = v52;
              v36 = 0;
            }

            objc_autoreleasePoolPop(v49);
          }

          v22 = 0;
        }

        Property = objc_getProperty(v24, v29, 120, 1);
        v34 = Property != 0;
        if (!Property)
        {
          v57 = objc_autoreleasePoolPush();
          v58 = v24;
          v59 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v60 = v76 = v20;
            *buf = 138543362;
            v83 = v60;
            _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Unable to get/create a sensor pairing identity", buf, 0xCu);

            v20 = v76;
          }

          objc_autoreleasePoolPop(v57);
        }

        v19 = v77;
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = WeakRetained;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          v83 = v33;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot load sensor pairing with nil data source", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        v34 = 0;
      }

      v61 = objc_autoreleasePoolPush();
      v62 = WeakRetained;
      v63 = HMFGetOSLogHandle();
      v64 = v63;
      v6 = v78;
      if (v34)
      {
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v83 = v65;
          v84 = 2112;
          v85 = v3;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Local HomePod paired sensor UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v61);
        v67 = objc_getProperty(v62, v66, 96, 1);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_21;
        block[3] = &unk_278687590;
        block[4] = v62;
        v68 = v67;
        objc_copyWeak(&v80, (a1 + 32));
        objc_copyWeak(&v81, (a1 + 40));
        dispatch_async(v68, block);

        objc_destroyWeak(&v81);
        objc_destroyWeak(&v80);
        goto LABEL_47;
      }

      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        *buf = 138543362;
        v83 = v69;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Cannot start sensor manager as we are unable to get a pairing identity", buf, 0xCu);
      }

      v17 = v61;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = WeakRetained;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v83 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to calculate derived sensor UUID start sensor client", buf, 0xCu);
      }

      v17 = v13;
    }

    objc_autoreleasePoolPop(v17);
LABEL_47:

    goto LABEL_48;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v83 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot continue starting HomePod sensor manager with nil data source", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
LABEL_48:

  v70 = *MEMORY[0x277D85DE8];
}

void __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_2;
  v3[3] = &unk_2786730A8;
  objc_copyWeak(&v4, (a1 + 40));
  objc_copyWeak(&v5, (a1 + 48));
  [(HMDAppleMediaAccessorySensorManager *)v2 startSensorClientWithCompletion:v3];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

void __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_2(uint64_t a1, char a2)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5 && WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = WeakRetained;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *v26 = 138543362;
        *&v26[4] = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Starting the HomePod sensor manager failed", v26, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }

    v10 = v5;
    v11 = [v10 notificationCenterForAppleMediaAccessorySensorManager:WeakRetained];
    v12 = [v10 residentNotificationObjectForAppleMediaAccessorySensorManager:WeakRetained];
    [v11 addObserver:WeakRetained selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v12];

    v13 = [v10 residentNotificationObjectForAppleMediaAccessorySensorManager:WeakRetained];
    [v11 addObserver:WeakRetained selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:v13];

    v14 = [v10 residentNotificationObjectForAppleMediaAccessorySensorManager:WeakRetained];
    [v11 addObserver:WeakRetained selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v14];

    v15 = [v10 addAccessoryNotificationObjectForAppleMediaAccessorySensorManager:WeakRetained];
    [v11 addObserver:WeakRetained selector:sel_handleAccessoryAdded_ name:@"HMDNotificationHomeAddedAccessory" object:v15];

    [v11 addObserver:WeakRetained selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];
    if (isInternalBuild())
    {
      v16 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v17 = [v10 messageDispatcherForAppleMediaAccessorySensorManager:WeakRetained];
      v18 = *MEMORY[0x277CCF230];
      *v26 = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      [v17 registerForMessage:v18 receiver:WeakRetained policies:v19 selector:sel_handleErrorCaseTestMessage_];
    }

    [(HMDAppleMediaAccessorySensorManager *)WeakRetained cleanUpExistingAccessoriesAndStartADKIfReady];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *v26 = 138543362;
      *&v26[4] = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with nil data source or nil self", v26, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessorySensorManager)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDAppleMediaAccessorySensorManager;
  v6 = [(HMDAppleMediaAccessorySensorManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_workQueue, a3);
    v8 = [MEMORY[0x277CBEB18] array];
    renamedServiceIDs = v7->_renamedServiceIDs;
    v7->_renamedServiceIDs = v8;

    *&v7->_isCurrentlyPairing = 0;
    v7->_isCurrentlyStartingADK = 0;
    v7->_pairingRetryCount = 0;
    v7->_hasPendingRetry = 0;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t132 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t132, &__block_literal_global_87_45945);
  }

  v3 = logCategory__hmf_once_v133;

  return v3;
}

void __50__HMDAppleMediaAccessorySensorManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v133;
  logCategory__hmf_once_v133 = v1;
}

@end