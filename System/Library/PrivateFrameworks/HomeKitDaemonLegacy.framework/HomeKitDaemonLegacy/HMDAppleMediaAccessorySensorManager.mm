@interface HMDAppleMediaAccessorySensorManager
+ (id)logCategory;
- (HMDAppleMediaAccessorySensorManager)initWithWorkQueue:(id)queue;
- (NSUUID)messageTargetUUID;
- (NSUUID)sensorAccessoryUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)logIdentifier;
- (void)_checkIfCharacteristicsUpdateServiceName:(void *)name sensorUUID:;
- (void)_readCharacteristicAndUpdateNameIfNeeded:(void *)needed;
- (void)_readDefaultSensorNameAndUpdateToNameIfNeeded:(void *)needed service:(void *)service accessoryUUID:;
- (void)_removeExistingSensorAccessories:(void *)accessories completion:;
- (void)_removeExistingSensorAccessoriesAndPair:(void *)pair;
- (void)_resetSensorPairingAndPair;
- (void)_resetWithCompletion:(void *)completion;
- (void)_updateServiceName:(void *)name service:(void *)service accessoryUUID:;
- (void)_updateServiceNameIfRequired;
- (void)checkPairingStateAndStartADKIfUnpaired:(void *)unpaired;
- (void)cleanUpExistingAccessoriesAndStartADKIfReady;
- (void)configureWithDataSource:(id)source hpsXPCClient:(id)client dataStore:(id)store;
- (void)fetchADKSensorStatusCompletion:(id)completion;
- (void)handleAccessoryAdded:(id)added;
- (void)handleCharacteristicsChangedNotification:(id)notification;
- (void)handleErrorCaseTestMessage:(id)message;
- (void)localAccessoryAddRequiresConsent:(id)consent;
- (void)logPairingSuccess:(void *)success error:(uint64_t)error setupFailureReason:;
- (void)managerIsReadyToBePaired;
- (void)setIsCurrentlyPairing:(uint64_t)pairing;
- (void)setSensorAccessoryUUID:(id)d;
- (void)startSensorClientWithCompletion:(uint64_t)completion;
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
  uUIDString = [v4 UUIDString];
  v6 = uUIDString;
  if (uUIDString)
  {
    v7 = uUIDString;
  }

  else
  {
    v7 = &stru_286509E58;
  }

  v8 = v7;

  return v7;
}

- (void)managerIsReadyToBePaired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@HPSManagerDelegate: manager is ready to be paired", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDAppleMediaAccessorySensorManager *)selfCopy cleanUpExistingAccessoriesAndStartADKIfReady];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpExistingAccessoriesAndStartADKIfReady
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 72, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDAppleMediaAccessorySensorManager_cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(Property, block);
  }
}

void __83__HMDAppleMediaAccessorySensorManager_cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke(uint64_t a1, const char *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 72, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained((v2 + 48));
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
          v45 = &unk_27972C828;
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
                _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Removing unexpected sensor accessories as no sensor should be paired", &v39, 0xCu);
              }

              objc_autoreleasePoolPop(v29);
              [(HMDAppleMediaAccessorySensorManager *)v30 _removeExistingSensorAccessoriesAndPair:v8];
              goto LABEL_29;
            }

            *&v39 = MEMORY[0x277D85DD0];
            *(&v39 + 1) = 3221225472;
            v40 = __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_25;
            v41 = &unk_27972C828;
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
                _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Removing unexpected sensor accessories", &buf, 0xCu);
              }

              objc_autoreleasePoolPop(v12);
              [(HMDAppleMediaAccessorySensorManager *)v13 _removeExistingSensorAccessories:v11 completion:0];
            }
          }

          os_unfair_lock_lock_with_options();
          v16 = *(v2 + 12);
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
              _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not checking HomePod sensor pairing status", &buf, 0xCu);
            }

            objc_autoreleasePoolPop(v17);
          }

          else
          {
            objc_initWeak(&location, v2);
            v28 = objc_getProperty(v2, v27, 40, 1);
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v36 = __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_26;
            v37 = &unk_27972C850;
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
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Cannot pair/check sensors yet as data source is not ready for pairing", &v43, 0xCu);
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
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Cannot pair/check sensors yet as no primary is confirmed", &v43, 0xCu);
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
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot check and clean up existing HomePod sensor pairings with nil data source", &v43, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v21);
LABEL_30:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_removeExistingSensorAccessoriesAndPair:(void *)pair
{
  v3 = a2;
  Property = objc_getProperty(pair, v4, 72, 1);
  dispatch_assert_queue_V2(Property);
  objc_initWeak(&location, pair);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke;
  v6[3] = &unk_279732FD8;
  objc_copyWeak(&v7, &location);
  [(HMDAppleMediaAccessorySensorManager *)pair _removeExistingSensorAccessories:v3 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_25(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) sensorAccessoryUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5 ^ 1u;
}

- (void)_removeExistingSensorAccessories:(void *)accessories completion:
{
  v37 = *MEMORY[0x277D85DE8];
  v21 = a2;
  accessoriesCopy = accessories;
  if (self)
  {
    Property = objc_getProperty(self, v5, 72, 1);
    dispatch_assert_queue_V2(Property);
    v7 = dispatch_group_create();
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v11;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Removing HomePod sensor accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    objc_initWeak(buf, selfCopy);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v21;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = *v29;
      do
      {
        v15 = 0;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v28 + 1) + 8 * v15);
          dispatch_group_enter(v7);
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke;
          v24[3] = &unk_279731988;
          objc_copyWeak(&v27, buf);
          v25 = v7;
          v26 = v16;
          [v16 sendRemovalRequestWithCompletion:v24];

          objc_destroyWeak(&v27);
          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v18 = objc_getProperty(selfCopy, v17, 72, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke_31;
    block[3] = &unk_279735738;
    block[4] = selfCopy;
    v23 = accessoriesCopy;
    dispatch_group_notify(v7, v18, block);

    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_26(uint64_t a1, char a2)
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Not starting HomePod Sensor pairing as homepodsensed is not ready", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)checkPairingStateAndStartADKIfUnpaired:(void *)unpaired
{
  if (unpaired)
  {
    v2 = a2;
    Property = objc_getProperty(unpaired, a2, 72, 1);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __78__HMDAppleMediaAccessorySensorManager_checkPairingStateAndStartADKIfUnpaired___block_invoke;
    v5[3] = &unk_279735D28;
    v5[4] = unpaired;
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
    Property = objc_getProperty(*(a1 + 32), a2, 72, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    if (*(v2 + 13) == 1)
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
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Not checking sensor pairing while another check is in progress", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      *(v2 + 13) = 1;
      os_unfair_lock_unlock((v2 + 8));
      objc_initWeak(&location, v2);
      v10 = objc_getProperty(v2, v9, 40, 1);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v14 = __79__HMDAppleMediaAccessorySensorManager__checkPairingStateAndStartADKIfUnpaired___block_invoke;
      v15 = &unk_27972C8A0;
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
    *(WeakRetained + 13) = 0;
    os_unfair_lock_unlock(WeakRetained + 2);
    if (a2)
    {
      if ((a3 & 1) != 0 || (*(a1 + 40) & 1) == 0)
      {
        Property = objc_getProperty(WeakRetained, v7, 72, 1);
        *&v17 = MEMORY[0x277D85DD0];
        *(&v17 + 1) = 3221225472;
        v18 = __71__HMDAppleMediaAccessorySensorManager_performPairingFromPairingStatus___block_invoke;
        v19 = &unk_279735D28;
        v20 = WeakRetained;
        v21 = a3;
LABEL_13:
        dispatch_async(Property, &v17);
        goto LABEL_14;
      }

LABEL_12:
      Property = objc_getProperty(WeakRetained, v7, 72, 1);
      *&v17 = MEMORY[0x277D85DD0];
      *(&v17 + 1) = 3221225472;
      v18 = __67__HMDAppleMediaAccessorySensorManager_startADKAndCheckPairingState__block_invoke;
      v19 = &unk_279735D00;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to check sensor pairing due to xpc client error", &v17, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Self became nil in _checkPairingStateAndStartADKIfUnpaired", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

void __71__HMDAppleMediaAccessorySensorManager_performPairingFromPairingStatus___block_invoke(uint64_t a1, const char *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_42;
  }

  v3 = *(a1 + 40);
  Property = objc_getProperty(*(a1 + 32), a2, 72, 1);
  dispatch_assert_queue_V2(Property);
  os_unfair_lock_lock_with_options();
  v5 = *(v2 + 12);
  os_unfair_lock_unlock((v2 + 8));
  if (v5 != 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 48));
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
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform HomePod sensor pairing with nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      goto LABEL_41;
    }

    v11 = [v2 sensorAccessoryUUID];

    if (v11)
    {
      v13 = [v2 sensorAccessoryUUID];
      v14 = [WeakRetained accessoryWithUUID:v13 forAppleMediaAccessorySensorManager:v2];

      if (v14)
      {
        if (v3)
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
            *&buf[14] = v14;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@HomePod sensor (%@) is already paired -- no action needed", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          [(HMDAppleMediaAccessorySensorManager *)v16 _updateServiceNameIfRequired];
        }

        else
        {
          v38 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v38 error:3 setupFailureReason:?];

          v39 = objc_autoreleasePoolPush();
          v40 = v2;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v42;
            *&buf[12] = 2112;
            *&buf[14] = v14;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is not paired but there is a paired accessory in the home, removing existing sensor: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v39);
          *buf = v14;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          [(HMDAppleMediaAccessorySensorManager *)v40 _removeExistingSensorAccessoriesAndPair:v43];
        }
      }

      else
      {
        v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v30 error:1 setupFailureReason:?];

        v31 = objc_autoreleasePoolPush();
        v32 = v2;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v32 sensorAccessoryUUID];
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2112;
          *&buf[14] = v35;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is missing, expected accessory with UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v37 = objc_getProperty(v32, v36, 72, 1);
        dispatch_assert_queue_V2(v37);
      }

      goto LABEL_41;
    }

    if (v3)
    {
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v24 error:2 setupFailureReason:?];

      v25 = objc_autoreleasePoolPush();
      v26 = v2;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is paired but not to any accessory in the home, resetting pairing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      [(HMDAppleMediaAccessorySensorManager *)v26 _resetSensorPairingAndPair];
      goto LABEL_41;
    }

    v44 = objc_getProperty(v2, v12, 72, 1);
    dispatch_assert_queue_V2(v44);
    v45 = objc_loadWeakRetained((v2 + 48));
    if (v45)
    {
      os_unfair_lock_lock_with_options();
      if ((*(v2 + 12) & 1) == 0)
      {
        *(v2 + 12) = 1;
        [MEMORY[0x277D17DC0] currentTime];
        *(v2 + 32) = v51;
        [*(v2 + 88) removeAllObjects];
        os_unfair_lock_unlock((v2 + 8));
        v52 = [v45 fetchSentinelZoneDidFinishFutureForAppleMediaAccessorySensorManager:v2];
        if (v52)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke;
          v63 = &unk_279735918;
          v64 = v45;
          v65 = v2;
          v53 = [v52 addSuccessBlock:buf];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_42;
          v61[3] = &unk_2797359D8;
          v61[4] = v2;
          v54 = [v52 addFailureBlock:v61];
        }

        else
        {
          v55 = objc_autoreleasePoolPush();
          v56 = v2;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v58;
            _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Cannot pair HomePod sensor as zone fetch succeeded future is nil", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v55);
          v59 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          [(HMDAppleMediaAccessorySensorManager *)v56 logPairingSuccess:v59 error:12 setupFailureReason:?];

          os_unfair_lock_lock_with_options();
          *(v2 + 12) = 0;
          *(v2 + 32) = 0;
          os_unfair_lock_unlock((v2 + 8));
        }

        goto LABEL_40;
      }

      os_unfair_lock_unlock((v2 + 8));
      v46 = objc_autoreleasePoolPush();
      v47 = v2;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v49;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Not starting HomePod Sensor pairing as a pairing is already in progress", buf, 0xCu);
      }
    }

    else
    {
      v46 = objc_autoreleasePoolPush();
      v47 = v2;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v50;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform HomePod sensor pairing with nil data source", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v46);
LABEL_40:

LABEL_41:
    goto LABEL_42;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v2;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not checking HomePod sensor pairing status", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
LABEL_42:
  v60 = *MEMORY[0x277D85DE8];
}

- (void)logPairingSuccess:(void *)success error:(uint64_t)error setupFailureReason:
{
  if (self)
  {
    successCopy = success;
    WeakRetained = objc_loadWeakRetained((self + 48));
    v12 = [WeakRetained logSubmitterForAppleMediaAccessorySensorManager:self];

    v9 = [HMDHomePodSensorPairingLogEvent alloc];
    os_unfair_lock_lock_with_options();
    v10 = *(self + 32);
    os_unfair_lock_unlock((self + 8));
    v11 = [(HMDHomePodSensorPairingLogEvent *)v9 initWithStartTime:a2 pairingSuccess:error failureReason:v10];
    [v12 submitLogEvent:v11 error:successCopy];
  }
}

- (void)_resetSensorPairingAndPair
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 72, 1);
    dispatch_assert_queue_V2(Property);
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__HMDAppleMediaAccessorySensorManager__resetSensorPairingAndPair__block_invoke;
    v4[3] = &unk_27972C850;
    objc_copyWeak(&v5, &location);
    [(HMDAppleMediaAccessorySensorManager *)self _resetWithCompletion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_updateServiceNameIfRequired
{
  v34 = *MEMORY[0x277D85DE8];
  if (self)
  {
    Property = objc_getProperty(self, a2, 72, 1);
    dispatch_assert_queue_V2(Property);
    sensorAccessoryUUID = [self sensorAccessoryUUID];
    if (sensorAccessoryUUID)
    {
      WeakRetained = objc_loadWeakRetained(self + 6);
      v6 = [WeakRetained accessoryWithUUID:sensorAccessoryUUID forAppleMediaAccessorySensorManager:self];

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
        uuid = [v8 uuid];
        v10 = [uuid hmf_isEqualToUUID:sensorAccessoryUUID];

        if (v10)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v23 = v8;
          services = [v8 services];
          v12 = [services countByEnumeratingWithState:&v28 objects:v33 count:16];
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
                  objc_enumerationMutation(services);
                }

                v16 = *(*(&v28 + 1) + 8 * v15);
                v24 = 0u;
                v25 = 0u;
                v26 = 0u;
                v27 = 0u;
                characteristics = [v16 characteristics];
                v18 = [characteristics countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                        objc_enumerationMutation(characteristics);
                      }

                      [(HMDAppleMediaAccessorySensorManager *)self _checkIfCharacteristicsUpdateServiceName:sensorAccessoryUUID sensorUUID:?];
                    }

                    while (v19 != v21);
                    v19 = [characteristics countByEnumeratingWithState:&v24 objects:v32 count:16];
                  }

                  while (v19);
                }

                ++v15;
              }

              while (v15 != v13);
              v13 = [services countByEnumeratingWithState:&v28 objects:v33 count:16];
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

- (void)_checkIfCharacteristicsUpdateServiceName:(void *)name sensorUUID:
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  nameCopy = name;
  Property = objc_getProperty(self, v7, 72, 1);
  dispatch_assert_queue_V2(Property);
  service = [v5 service];
  if (service)
  {
    os_unfair_lock_lock_with_options();
    v10 = *(self + 88);
    instanceID = [service instanceID];
    LOBYTE(v10) = [v10 containsObject:instanceID];

    os_unfair_lock_unlock((self + 8));
    if ((v10 & 1) == 0)
    {
      accessory = [v5 accessory];
      v13 = accessory;
      if (accessory)
      {
        uuid = [accessory uuid];
        if ([uuid hmf_isEqualToUUID:nameCopy])
        {
          type = [v5 type];
          v16 = [type isEqualToString:*MEMORY[0x277CCF988]];

          if (v16)
          {
            value = [v5 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = value;
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;

            if (v19)
            {
              getConfiguredName = [service getConfiguredName];

              if (getConfiguredName)
              {
                [(HMDAppleMediaAccessorySensorManager *)self _readDefaultSensorNameAndUpdateToNameIfNeeded:v19 service:service accessoryUUID:nameCopy];
              }

              else
              {
                v33 = objc_autoreleasePoolPush();
                selfCopy = self;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = HMFGetLogIdentifier();
                  v38 = 138543618;
                  v39 = v36;
                  v40 = 2112;
                  v41 = service;
                  _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Renaming sensor service as it has no configured name: %@ ", &v38, 0x16u);
                }

                objc_autoreleasePoolPop(v33);
                [(HMDAppleMediaAccessorySensorManager *)selfCopy _updateServiceName:v19 service:service accessoryUUID:nameCopy];
              }
            }

            else
            {
              v29 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = HMFGetLogIdentifier();
                v38 = 138543874;
                v39 = v32;
                v40 = 2112;
                v41 = service;
                v42 = 2112;
                v43 = v5;
                _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Name for sensor service is nil %@/%@", &v38, 0x20u);
              }

              objc_autoreleasePoolPop(v29);
              [(HMDAppleMediaAccessorySensorManager *)selfCopy2 _readCharacteristicAndUpdateNameIfNeeded:v5];
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
        selfCopy3 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v38 = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = v5;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@No accessory for characteristic: %@", &v38, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@No service for characteristic: %@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_readCharacteristicAndUpdateNameIfNeeded:(void *)needed
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(needed, v4, 72, 1);
  dispatch_assert_queue_V2(Property);
  accessory = [v3 accessory];
  v7 = objc_autoreleasePoolPush();
  neededCopy = needed;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (accessory)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      service = [v3 service];
      *buf = 138543874;
      v23 = v11;
      v24 = 2112;
      v25 = service;
      v26 = 2112;
      v27 = v3;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Locally reading name for sensor service %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [HMDCharacteristicRequest requestWithCharacteristic:v3];
    v21 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v16 = objc_getProperty(neededCopy, v15, 72, 1);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__HMDAppleMediaAccessorySensorManager__readCharacteristicAndUpdateNameIfNeeded___block_invoke;
    v19[3] = &unk_279733A70;
    v19[4] = neededCopy;
    v20 = v3;
    [accessory readCharacteristicValues:v14 source:1160 queue:v16 completionHandler:v19];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@No accessory for characteristic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateServiceName:(void *)name service:(void *)service accessoryUUID:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  nameCopy = name;
  serviceCopy = service;
  if (self)
  {
    Property = objc_getProperty(self, v9, 72, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v12 = *(self + 88);
    instanceID = [nameCopy instanceID];
    LOBYTE(v12) = [v12 containsObject:instanceID];

    if (v12)
    {
      os_unfair_lock_unlock((self + 8));
    }

    else
    {
      v14 = *(self + 88);
      instanceID2 = [nameCopy instanceID];
      [v14 addObject:instanceID2];

      os_unfair_lock_unlock((self + 8));
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138544130;
        v23 = v19;
        v24 = 2112;
        v25 = nameCopy;
        v26 = 2112;
        v27 = serviceCopy;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Renaming service %@ on accessory %@ to %@ after sensor pairing", &v22, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      WeakRetained = objc_loadWeakRetained(selfCopy + 6);
      [WeakRetained renameService:nameCopy name:v7];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_readDefaultSensorNameAndUpdateToNameIfNeeded:(void *)needed service:(void *)service accessoryUUID:
{
  v7 = a2;
  neededCopy = needed;
  serviceCopy = service;
  Property = objc_getProperty(self, v10, 72, 1);
  dispatch_assert_queue_V2(Property);
  v13 = objc_getProperty(self, v12, 40, 1);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke;
  v17[3] = &unk_27972C8F0;
  v17[4] = self;
  v14 = v7;
  v18 = v14;
  v15 = neededCopy;
  v19 = v15;
  v16 = serviceCopy;
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
        Property = objc_getProperty(v13, v6, 72, 1);
        v15 = a1[4];
      }

      else
      {
        v15 = 0;
        Property = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke_61;
      block[3] = &unk_2797352C0;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Fetched nil sensor name from adk", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

void __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke_61(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Renaming sensor service as name (%@) or configured name (%@) matches default accessory name: %@", &v10, 0x2Au);
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for read of name for %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if ([v3 na_all:&__block_literal_global_127630])
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Local read of name for %@ did not succeed: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL __80__HMDAppleMediaAccessorySensorManager__readCharacteristicAndUpdateNameIfNeeded___block_invoke_58(uint64_t a1, void *a2)
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
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Reset HomePod sensor and ready to pair", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDAppleMediaAccessorySensorManager *)v5 cleanUpExistingAccessoriesAndStartADKIfReady];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to reset HomePod sensor due to xpc client error", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_resetWithCompletion:(void *)completion
{
  v6 = a2;
  Property = objc_getProperty(completion, v3, 72, 1);
  dispatch_assert_queue_V2(Property);
  [objc_getProperty(completion v5];
}

- (void)setIsCurrentlyPairing:(uint64_t)pairing
{
  if (pairing)
  {
    os_unfair_lock_lock_with_options();
    *(pairing + 12) = 0;
    *(pairing + 32) = 0;

    os_unfair_lock_unlock((pairing + 8));
  }
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) accountHasSentinelZoneForAppleMediaAccessorySensorManager:*(a1 + 40)])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cannot pair HomePod sensor as sentinel zone was detected in HH1, relaunch imminent", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v9 error:10 setupFailureReason:?];

    [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:?];
  }

  else
  {
    v10 = HMFRandomDataWithLength();
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Starting HomePod Sensor pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    objc_initWeak(buf, *(a1 + 40));
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v16, 40, 1);
    }

    v18 = Property;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_33;
    v22[3] = &unk_27972C8C8;
    objc_copyWeak(&v25, buf);
    v19 = v10;
    v23 = v19;
    v20 = v11;
    v24 = v20;
    [v18 setupPairing:v19 uuid:v20 completion:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_42(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cannot pair HomePod sensor as zone fetch succeeded future failed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v9 error:11 setupFailureReason:?];

  [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:?];
  v10 = *MEMORY[0x277D85DE8];
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_33(uint64_t a1, int a2, void *a3)
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
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@HomePod Sensor pairing %@ - pairing URI: %@", v21, 0x20u);
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
      Property = objc_getProperty(v8, v16, 72, 1);
      *v21 = MEMORY[0x277D85DD0];
      *&v21[8] = 3221225472;
      *&v21[16] = __75__HMDAppleMediaAccessorySensorManager_pairWithURI_authToken_authTokenUUID___block_invoke;
      v22 = &unk_279734870;
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
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v42 = v2;
  v6 = v3;
  if (v1)
  {
    Property = objc_getProperty(v1, v5, 72, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 6);
    if (!WeakRetained)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v1;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor pairing with nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [(HMDAppleMediaAccessorySensorManager *)v13 logPairingSuccess:v16 error:6 setupFailureReason:?];

      os_unfair_lock_lock_with_options();
      *(v13 + 12) = 0;
      v13[4] = 0;
      os_unfair_lock_unlock(v13 + 2);
      goto LABEL_23;
    }

    v9 = v4;
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    if (v10)
    {
      if ([MEMORY[0x277CD17C8] isHAPSetupPayloadURL:v10])
      {
        v11 = [objc_alloc(MEMORY[0x277CD1DF0]) initWithHAPSetupPayloadURL:v10 error:0];
LABEL_15:

        if (v11)
        {
          v22 = objc_alloc(MEMORY[0x277CD1DE8]);
          v23 = [WeakRetained homeUUIDForAppleMediaAccessorySensorManager:v1];
          v24 = [v22 initWithSetupAccessoryPayload:v11 appID:0 homeUUID:v23 ownershipToken:0];

          objc_setProperty_atomic(v1, v25, v24, 56);
          [objc_getProperty(v1 v26];
          v27 = objc_autoreleasePoolPush();
          v28 = v1;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = HMFGetLogIdentifier();
            v32 = objc_getProperty(v28, v31, 56, 1);
            *buf = 138543618;
            *&buf[4] = v30;
            *&buf[12] = 2112;
            *&buf[14] = v32;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Starting HomePod sensor pairing with accessory description: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
          v33 = [WeakRetained accessoryBrowserForAppleMediaAccessorySensorManager:v28];
          [v33 startDiscoveringAccessoriesWithLinkType:1];
          v34 = WeakRetained;
          v35 = v24;
          objc_initWeak(&location, v28);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __86__HMDAppleMediaAccessorySensorManager_performLocalAddWithDataSource_setupDescription___block_invoke;
          v45 = &unk_279734708;
          objc_copyWeak(v46, &location);
          [v34 performLocalAddAccessoryWithDescription:v35 progressHandlerDelegate:v28 completion:buf];
          objc_destroyWeak(v46);
          objc_destroyWeak(&location);
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = v1;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v39;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor pairing with nil accessory payload", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v36);
          v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          [(HMDAppleMediaAccessorySensorManager *)v37 logPairingSuccess:v40 error:5 setupFailureReason:?];

          os_unfair_lock_lock_with_options();
          *(v37 + 12) = 0;
          v37[4] = 0;
          os_unfair_lock_unlock(v37 + 2);
        }

LABEL_23:
        goto LABEL_24;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = v1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not create setup payload from invalid HAP setup payload url string: %@", buf, 0x16u);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil setup payload for url string: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v17);
    v11 = 0;
    goto LABEL_15;
  }

LABEL_24:

  v41 = *MEMORY[0x277D85DE8];
}

void __86__HMDAppleMediaAccessorySensorManager_performLocalAddWithDataSource_setupDescription___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  self = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 72, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDAppleMediaAccessorySensorManager_handleLocalAddCompletedWithError___block_invoke;
    block[3] = &unk_2797359B0;
    block[4] = self;
    v9 = v5;
    dispatch_async(Property, block);
  }
}

void __72__HMDAppleMediaAccessorySensorManager_handleLocalAddCompletedWithError___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 72, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 6);
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
        *&buf[14] = objc_getProperty(v8, v12, 56, 1);
        *&buf[22] = 2112;
        v27 = v3;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to add HomePod sensor accessory: %@ - %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      [v6 cancelPairingWithAccessoryDescription:objc_getProperty(v8 error:{v13, 56, 1), v3}];
      [v8 setSensorAccessoryUUID:0];
      objc_setProperty_atomic(v8, v14, 0, 56);
      [objc_getProperty(v8 v15];
      objc_initWeak(&location, v8);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __73__HMDAppleMediaAccessorySensorManager__handleLocalAddCompletedWithError___block_invoke;
      v27 = &unk_27972C850;
      objc_copyWeak(v28, &location);
      [(HMDAppleMediaAccessorySensorManager *)v8 _resetWithCompletion:buf];
      objc_destroyWeak(v28);
      objc_destroyWeak(&location);
      v16 = 7;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v8 sensorAccessoryUUID];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully added HomePod sensor accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      objc_setProperty_atomic(v8, v19, 0, 56);
      v21 = objc_getProperty(v8, v20, 64, 1);
      v22 = [v8 sensorAccessoryUUID];
      [v21 saveSensorUUID:v22];

      [(HMDAppleMediaAccessorySensorManager *)v8 _updateServiceNameIfRequired];
      os_unfair_lock_lock_with_options();
      *(v8 + 12) = 0;
      v8[4] = 0;
      os_unfair_lock_unlock(v8 + 2);
      v16 = 0;
    }

    [v6 stopDiscoveringForUnpairedAccessoriesWithLinkType:1];
    [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v3 error:v16 setupFailureReason:?];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __73__HMDAppleMediaAccessorySensorManager__handleLocalAddCompletedWithError___block_invoke(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:?];
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      LODWORD(v13) = 138543362;
      *(&v13 + 4) = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Reset HomePod sensor after failed pairing", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (v5)
    {
      Property = objc_getProperty(v5, v9, 72, 1);
      *&v13 = MEMORY[0x277D85DD0];
      *(&v13 + 1) = 3221225472;
      v14 = __60__HMDAppleMediaAccessorySensorManager_scheduleRetryIfNeeded__block_invoke;
      v15 = &unk_279735D00;
      v16 = v5;
      dispatch_async(Property, &v13);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      LODWORD(v13) = 138543362;
      *(&v13 + 4) = v11;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to reset HomePod sensor due to xpc client error", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __60__HMDAppleMediaAccessorySensorManager_scheduleRetryIfNeeded__block_invoke(uint64_t a1, const char *a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 72, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained((v2 + 48));
    if (WeakRetained)
    {
      os_unfair_lock_lock_with_options();
      if ((*(v2 + 17) & 1) != 0 || (v5 = *(v2 + 80), v5 >= 0x32))
      {
        os_unfair_lock_unlock((v2 + 8));
      }

      else
      {
        *(v2 + 80) = v5 + 1;
        *(v2 + 17) = 1;
        os_unfair_lock_unlock((v2 + 8));
        if (v5 >= [&unk_2866271A8 count])
        {
          v5 = ([&unk_2866271A8 count] - 1);
        }

        v6 = [&unk_2866271A8 objectAtIndexedSubscript:v5];
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
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Will retry (# %ld) HomePod sensor pairing after %ld sec", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v7);
        objc_initWeak(&location, v8);
        [v6 doubleValue];
        v12 = v11;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __61__HMDAppleMediaAccessorySensorManager__scheduleRetryIfNeeded__block_invoke;
        v22 = &unk_279731C88;
        objc_copyWeak(v23, &location);
        v23[1] = v5;
        v14 = objc_getProperty(v8, v13, 72, 1);
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
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot schedule retry due to nil data source", buf, 0xCu);
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
    *(WeakRetained + 17) = 0;
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
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Performing sensor paring retry (# %ld)", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDAppleMediaAccessorySensorManager *)v4 cleanUpExistingAccessoriesAndStartADKIfReady];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __67__HMDAppleMediaAccessorySensorManager_startADKAndCheckPairingState__block_invoke(uint64_t a1, const char *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 72, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v4 = *(v2 + 12);
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
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not going to restart ADK", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      objc_initWeak(&location, v2);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v12 = __68__HMDAppleMediaAccessorySensorManager__startADKAndCheckPairingState__block_invoke;
      v13 = &unk_27972C850;
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Starting the HomePod sensor manager to check pairing failed", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startSensorClientWithCompletion:(uint64_t)completion
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (completion)
  {
    Property = objc_getProperty(completion, v3, 72, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v6 = *(completion + 12);
    os_unfair_lock_unlock((completion + 8));
    if (v6 == 1)
    {
      v7 = objc_autoreleasePoolPush();
      completionCopy2 = completion;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not starting adk again", buf, 0xCu);
      }
    }

    else
    {
      os_unfair_lock_lock_with_options();
      if (*(completion + 14) != 1)
      {
        *(completion + 14) = 1;
        os_unfair_lock_unlock((completion + 8));
        objc_initWeak(buf, completion);
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __71__HMDAppleMediaAccessorySensorManager_startSensorClientWithCompletion___block_invoke;
        v19 = &unk_279730A10;
        objc_copyWeak(&v21, buf);
        v20 = v4;
        v12 = _Block_copy(&v16);
        v14 = objc_getProperty(completion, v13, 40, 1);
        [v14 startWithCompletion:{v12, v16, v17, v18, v19}];

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
        goto LABEL_11;
      }

      os_unfair_lock_unlock((completion + 8));
      v7 = objc_autoreleasePoolPush();
      completionCopy2 = completion;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Not starting the ADK while a start is already in progress", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v7);
    (*(v4 + 2))(v4, 0);
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

void __71__HMDAppleMediaAccessorySensorManager_startSensorClientWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    *(WeakRetained + 14) = 0;
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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Self became nil in startSensorClientWithCompletion", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v6 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_2531F8000, v12, v13, v11, &v17, v14);
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

uint64_t __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke_31(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removed HomePod sensor accessories", &v8, 0xCu);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting sensor uuid after sensor removal", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 setSensorAccessoryUUID:0];
  if (v3)
  {
    Property = objc_getProperty(v3, v6, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke_32;
  v9[3] = &unk_2797359D8;
  v9[4] = v3;
  [Property saveSensorUUID:0 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke_32(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 72, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMDAppleMediaAccessorySensorManager_resetSensorPairingAndPair__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = v2;
    dispatch_async(Property, block);
  }
}

- (void)fetchADKSensorStatusCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v4, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HMDAppleMediaAccessorySensorManager_fetchADKSensorStatusCompletion___block_invoke;
  v8[3] = &unk_27972C918;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch sensor status from adk", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    result = (*(*(a1 + 40) + 16))();
    v11 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)handleCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDAppleMediaAccessorySensorManager_handleCharacteristicsChangedNotification___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __80__HMDAppleMediaAccessorySensorManager_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v11 = [*(a1 + 40) userInfo];
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 72, 1);
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

- (void)handleAccessoryAdded:(id)added
{
  userInfo = [added userInfo];
  v5 = [userInfo objectForKey:@"HMDNotificationAddedAccessoryKey"];

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
    sensorAccessoryUUID = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];

    if (sensorAccessoryUUID)
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

      uuid = [v16 uuid];
      sensorAccessoryUUID2 = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];
      if ([uuid hmf_isEqualToUUID:sensorAccessoryUUID2])
      {
      }

      else
      {
        if (!v9)
        {

          goto LABEL_14;
        }

        hostAccessory = [v16 hostAccessory];
        uuid2 = [hostAccessory uuid];
        v15 = [v9 hmf_isEqualToUUID:uuid2];

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

- (void)localAccessoryAddRequiresConsent:(id)consent
{
  v41 = *MEMORY[0x277D85DE8];
  consentCopy = consent;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = [WeakRetained accessoryBrowserForAppleMediaAccessorySensorManager:self];
      if ([v6 isReadyForSensorPairing:self])
      {
        sensorAccessoryUUID = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];

        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        v12 = v11;
        if (sensorAccessoryUUID)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v13 = HMFGetLogIdentifier();
            sensorAccessoryUUID2 = [(HMDAppleMediaAccessorySensorManager *)selfCopy sensorAccessoryUUID];
            *buf = 138543874;
            v36 = v13;
            v37 = 2112;
            v38 = consentCopy;
            v39 = 2112;
            v40 = sensorAccessoryUUID2;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Pairing sensor UUID %@ when we already have a paired sensor: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v9);
          v15 = [HMDAssertionLogEvent alloc];
          sensorAccessoryUUID3 = [(HMDAppleMediaAccessorySensorManager *)selfCopy sensorAccessoryUUID];
          v17 = [(HMDAssertionLogEvent *)v15 initWithReason:@"Pairing sensor UUID %@ when we already have a paired sensor: %@", consentCopy, sensorAccessoryUUID3];

          v18 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v18 submitLogEvent:v17];

          [v7 didReceiveUserConsentResponseForSetupAccessoryDetail:objc_getProperty(selfCopy consent:{v19, 56, 1), 0}];
          goto LABEL_18;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v32;
          v37 = 2112;
          v38 = consentCopy;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Confirming HomePod sensor with UUID %@ is allowed to be added locally", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        [(HMDAppleMediaAccessorySensorManager *)selfCopy setSensorAccessoryUUID:consentCopy];
        Property = objc_getProperty(selfCopy, v33, 56, 1);
        v30 = v7;
        v31 = 1;
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v27;
          v37 = 2112;
          v38 = consentCopy;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Not consenting to accessory local add for %@ as data source is no longer ready for pairing", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        Property = objc_getProperty(selfCopy2, v28, 56, 1);
        v30 = v7;
        v31 = 0;
      }

      [v30 didReceiveUserConsentResponseForSetupAccessoryDetail:Property consent:v31];
LABEL_18:

      goto LABEL_19;
    }
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v23;
    v37 = 2112;
    v38 = consentCopy;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Not consenting to accessory local add for %@ with nil data source", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_19:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)handleErrorCaseTestMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    Property = objc_getProperty(self, v4, 72, 1);
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

    sensorAccessoryUUID = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];
    v9 = [WeakRetained accessoryWithUUID:sensorAccessoryUUID forAppleMediaAccessorySensorManager:self];

    if (v9)
    {
      messagePayload = [messageCopy messagePayload];
      v12 = [messagePayload objectForKey:*MEMORY[0x277CCF238]];

      messagePayload2 = [messageCopy messagePayload];
      v14 = [messagePayload2 objectForKey:*MEMORY[0x277CCF240]];
      v15 = v14 != 0;

      messagePayload3 = [messageCopy messagePayload];
      v17 = [messagePayload3 objectForKey:*MEMORY[0x277CCF228]];
      v18 = v17 != 0;

      v19 = dispatch_group_create();
      dispatch_group_enter(v19);
      if (v12)
      {
        if (self)
        {
          v21 = objc_getProperty(self, v20, 40, 1);
        }

        else
        {
          v21 = 0;
        }

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke;
        v35[3] = &unk_27972C878;
        v35[4] = self;
        v38 = v18;
        v36 = v19;
        v37 = v9;
        v39 = v15;
        [v21 resetWithCompletion:v35];

        v22 = v36;
      }

      else
      {
        if (self)
        {
          v24 = objc_getProperty(self, v20, 72, 1);
        }

        else
        {
          v24 = 0;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_5;
        block[3] = &unk_27972EC78;
        v33 = v18;
        v30 = v19;
        selfCopy = self;
        v32 = v9;
        v34 = v15;
        dispatch_async(v24, block);

        v22 = v30;
      }

      if (self)
      {
        v26 = objc_getProperty(self, v25, 72, 1);
      }

      else
      {
        v26 = 0;
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_8;
      v27[3] = &unk_2797359B0;
      v27[4] = self;
      v28 = messageCopy;
      dispatch_group_notify(v19, v26, v27);
    }

    else
    {
      [(HMDAppleMediaAccessorySensorManager *)self cleanUpExistingAccessoriesAndStartADKIfReady];
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v23];
    }
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:WeakRetained];
  }
}

void __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 72, 1);
  }

  else
  {
    Property = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_2;
  v7[3] = &unk_27972EC78;
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
    v11[3] = &unk_279735D00;
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
    v9[3] = &unk_279735D00;
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
    v11[3] = &unk_279735D00;
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
    v9[3] = &unk_279735D00;
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
    self = objc_getProperty(self, a2, 72, 1);
    v2 = vars8;
  }

  return self;
}

- (void)setSensorAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [dCopy copy];
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

- (void)configureWithDataSource:(id)source hpsXPCClient:(id)client dataStore:(id)store
{
  storeCopy = store;
  if (self)
  {
    clientCopy = client;
    objc_storeWeak(&self->_dataSource, source);
    objc_setProperty_atomic(self, v10, clientCopy, 40);

    objc_setProperty_atomic(self, v11, storeCopy, 64);
    Property = objc_getProperty(self, v12, 72, 1);
  }

  else
  {
    Property = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke;
  v15[3] = &unk_2797359B0;
  v15[4] = self;
  v16 = storeCopy;
  v14 = storeCopy;
  dispatch_async(Property, v15);
}

uint64_t __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_2;
  v4[3] = &unk_279734468;
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
      Property = objc_getProperty(Property, a2, 72, 1);
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_3;
    block[3] = &unk_279735D00;
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with failed migration", buf, 0xCu);
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
    Property = objc_getProperty(*(a1 + 32), a2, 72, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v2 + 6);
    if (WeakRetained)
    {
      objc_getProperty(v2, v4, 40, 1);
      if ([objc_opt_class() supportSensory])
      {
        objc_initWeak(&location, v2);
        objc_initWeak(&v14, WeakRetained);
        v7 = objc_getProperty(v2, v6, 64, 1);
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v17 = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke;
        v18 = &unk_27972C800;
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
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Cannot start HomePod sensor manager as device does not support sensors", &buf, 0xCu);
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
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with nil data source", &buf, 0xCu);
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
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSensorAccessoryUUID:v3];
  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Local HomePod paired sensor UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    Property = objc_getProperty(v7, v10, 72, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_12;
    block[3] = &unk_279733938;
    block[4] = v7;
    v12 = Property;
    objc_copyWeak(&v17, (a1 + 32));
    objc_copyWeak(&v18, (a1 + 40));
    dispatch_async(v12, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
  }

  else
  {
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot continue starting HomePod sensor manager with nil data source", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_12(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_2;
  v3[3] = &unk_27972C7D8;
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
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Starting the HomePod sensor manager failed", v26, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with nil data source or nil self", v26, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessorySensorManager)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDAppleMediaAccessorySensorManager;
  v6 = [(HMDAppleMediaAccessorySensorManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_workQueue, queue);
    array = [MEMORY[0x277CBEB18] array];
    renamedServiceIDs = v7->_renamedServiceIDs;
    v7->_renamedServiceIDs = array;

    *&v7->_isCurrentlyPairing = 0;
    v7->_isCurrentlyStartingADK = 0;
    v7->_pairingRetryCount = 0;
    v7->_hasPendingRetry = 0;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t94 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t94, &__block_literal_global_65_127726);
  }

  v3 = logCategory__hmf_once_v95;

  return v3;
}

uint64_t __50__HMDAppleMediaAccessorySensorManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v95;
  logCategory__hmf_once_v95 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end