@interface HMDAppleMediaDeviceAssociationController
+ (id)logCategory;
- (BOOL)_currentDeviceHasDeviceAddress;
- (BOOL)_statusBusy;
- (HMDAppleMediaDeviceAssociationController)initWithHome:(id)a3 accessory:(id)a4 dataSource:(id)a5;
- (HMDAppleMediaDeviceAssociationController)initWithQueue:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5 residentSyncManager:(id)a6 backingStore:(id)a7 notificationCenter:(id)a8 dataSource:(id)a9;
- (HMFTimerProvider)timerProvider;
- (double)nextInterval;
- (id)_deviceAssociationInfoFromProtoData:(id)a3;
- (id)logIdentifier;
- (id)mkfAppleMediaAccessoryWithModelIdentifier:(id)a3;
- (void)_handleAppleAccountManagerResolvedNotification:(id)a3;
- (void)_handleDeviceUpdatedNotification:(id)a3;
- (void)_handleHMDAppleMediaDeviceAssociationPushMessage:(id)a3;
- (void)_handlePrimaryChange:(id)a3;
- (void)_handlePrimaryResidentDeviceAddressUpdate;
- (void)_process;
- (void)_pushDeviceAddress;
- (void)_pushDeviceAddressIfNeeded;
- (void)_registerForMessages:(id)a3 messageDispatcher:(id)a4;
- (void)_registerForNotifications:(id)a3;
- (void)_setStatusBusy:(BOOL)a3;
- (void)_shouldPushDeviceAddressWithCompletion:(id)a3;
- (void)_startRetryTimer;
- (void)_updateIdsAddressWithAccessoryUUID:(id)a3 idsIdentifier:(id)a4 idsDestination:(id)a5 completion:(id)a6;
- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4;
- (void)handleTransactionObjectUpdated;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDAppleMediaDeviceAssociationController

- (HMFTimerProvider)timerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timerProvider);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDAppleMediaDeviceAssociationController *)self homeUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)mkfAppleMediaAccessoryWithModelIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(HMDAppleMediaDeviceAssociationController *)self mkfAppleMediaModelFinder];

    if (v6)
    {
      v7 = [(HMDAppleMediaDeviceAssociationController *)self mkfAppleMediaModelFinder];
      v8 = (v7)[2](v7, v5);
    }

    else
    {
      v8 = [HMCContext findAppleMediaAccessoryWithModelID:v5];
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMDAppleMediaDeviceAssociationController *)v10 nextInterval];
  }

  return result;
}

- (double)nextInterval
{
  v3 = [&unk_283E757B8 objectAtIndexedSubscript:{-[HMDAppleMediaDeviceAssociationController timerIntervalIndex](self, "timerIntervalIndex")}];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(HMDAppleMediaDeviceAssociationController *)self timerIntervalIndex];
  if (v6 < [&unk_283E757B8 count] - 1)
  {
    [(HMDAppleMediaDeviceAssociationController *)self setTimerIntervalIndex:[(HMDAppleMediaDeviceAssociationController *)self timerIntervalIndex]+ 1];
  }

  return v5;
}

- (void)timerDidFire:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaDeviceAssociationController *)self backoffTimer];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5 == v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Backoff timer fired, retry", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [(HMDAppleMediaDeviceAssociationController *)v7 backoffTimer];
    [v12 cancel];

    [(HMDAppleMediaDeviceAssociationController *)v7 setBackoffTimer:0];
    v13 = [(HMDAppleMediaDeviceAssociationController *)v7 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDAppleMediaDeviceAssociationController_timerDidFire___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v7;
    dispatch_async(v13, block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Wrong timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setStatusBusy:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_busy = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_statusBusy
{
  os_unfair_lock_lock_with_options();
  busy = self->_busy;
  os_unfair_lock_unlock(&self->_lock);
  return busy;
}

- (id)_deviceAssociationInfoFromProtoData:(id)a3
{
  v4 = a3;
  v5 = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [[HMDDeviceAssociationInfoProto alloc] initWithProtoData:v4];
  if (v6)
  {
    v7 = [(HMDDeviceAssociationInfoProto *)v6 accessoryUUID];
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = [(HMDDeviceAssociationInfoProto *)v6 idsIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = [(HMDDeviceAssociationInfoProto *)v6 idsDestination];

      if (v10)
      {
        v7 = v6;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)_handleHMDAppleMediaDeviceAssociationPushMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDAppleMediaDeviceAssociationController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__HMDAppleMediaDeviceAssociationController__handleHMDAppleMediaDeviceAssociationPushMessage___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __93__HMDAppleMediaDeviceAssociationController__handleHMDAppleMediaDeviceAssociationPushMessage___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataForKey:@"HMDAppleMediaDeviceAssociationInfoProtoKey"];
  if (v2)
  {
    v3 = [*(a1 + 40) _deviceAssociationInfoFromProtoData:v2];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [*(a1 + 32) shortDescription];
        v10 = [v3 accessoryUUID];
        *buf = 138543874;
        v27 = v8;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling remote message: %@ accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v4);
      v11 = [*(a1 + 40) residentSyncManager];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __93__HMDAppleMediaDeviceAssociationController__handleHMDAppleMediaDeviceAssociationPushMessage___block_invoke_60;
      v24[3] = &unk_2786858B0;
      v12 = *(a1 + 32);
      v24[4] = *(a1 + 40);
      v13 = v3;
      v25 = v13;
      [v11 interceptRemoteResidentRequest:v12 proceed:v24];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v20;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device association info object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v21 = *(a1 + 32);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [v21 respondWithError:v22];

      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 32);
      *buf = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing proto data from the message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = *(a1 + 32);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v19 respondWithError:v13];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __93__HMDAppleMediaDeviceAssociationController__handleHMDAppleMediaDeviceAssociationPushMessage___block_invoke_60(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Intercepting remote resident request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) accessoryUUID];
  v10 = [*(a1 + 40) idsIdentifier];
  v11 = [*(a1 + 40) idsDestination];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__HMDAppleMediaDeviceAssociationController__handleHMDAppleMediaDeviceAssociationPushMessage___block_invoke_61;
  v14[3] = &unk_27868A1D8;
  v14[4] = *(a1 + 32);
  v15 = v3;
  v12 = v3;
  [v8 _updateIdsAddressWithAccessoryUUID:v9 idsIdentifier:v10 idsDestination:v11 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __93__HMDAppleMediaDeviceAssociationController__handleHMDAppleMediaDeviceAssociationPushMessage___block_invoke_61(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Remote message update failed: error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Remote message update succeeded", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateIdsAddressWithAccessoryUUID:(id)a3 idsIdentifier:(id)a4 idsDestination:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [(HMDAppleMediaDeviceAssociationController *)self backingStore];
  v15 = [v14 context];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __119__HMDAppleMediaDeviceAssociationController__updateIdsAddressWithAccessoryUUID_idsIdentifier_idsDestination_completion___block_invoke;
  v20[3] = &unk_2786860E8;
  objc_copyWeak(&v25, &location);
  v16 = v10;
  v21 = v16;
  v17 = v13;
  v24 = v17;
  v18 = v11;
  v22 = v18;
  v19 = v12;
  v23 = v19;
  [v15 performBlock:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __119__HMDAppleMediaDeviceAssociationController__updateIdsAddressWithAccessoryUUID_idsIdentifier_idsDestination_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained mkfAppleMediaAccessoryWithModelIdentifier:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 resident];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = WeakRetained;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        *buf = 138543874;
        v28 = v9;
        v29 = 2112;
        v30 = v10;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Update IDS identifier: %@ destination: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      [v4 setIdsIdentifier:*(a1 + 40)];
      v12 = *(a1 + 40);
      v13 = [v4 resident];
      [v13 setIdsIdentifier:v12];

      [v4 setIdsDestination:*(a1 + 48)];
      v14 = *(a1 + 48);
      v15 = [v4 resident];
      [v15 setIdsDestination:v14];

      v16 = [v7 backingStore];
      v17 = [v16 context];
      v26 = 0;
      [v17 save:&v26];
      v18 = v26;

      v19 = *(*(a1 + 56) + 16);
      goto LABEL_10;
    }
  }

  v20 = objc_autoreleasePoolPush();
  v21 = WeakRetained;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v23;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@MKF models do not exist for media accessory and resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
  [v21 _setStatusBusy:0];
  v24 = *(a1 + 56);
  if (v24)
  {
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    v19 = *(v24 + 16);
LABEL_10:
    v19();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrimaryResidentDeviceAddressUpdate
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAppleMediaDeviceAssociationController *)self _statusBusy];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Controller is busy: do not update primary locally", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (v8)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Primary resident: update device IDS address locally", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAppleMediaDeviceAssociationController *)v6 _setStatusBusy:1];
    v11 = [(HMDAppleMediaDeviceAssociationController *)v6 dataSource];
    v12 = [v11 currentDevice];
    v13 = [v12 deviceAddress];
    v14 = [(HMDAppleMediaDeviceAssociationController *)v6 accessoryUUID];
    v15 = [v13 idsIdentifier];
    v16 = [v13 idsDestination];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __85__HMDAppleMediaDeviceAssociationController__handlePrimaryResidentDeviceAddressUpdate__block_invoke;
    v18[3] = &unk_27868A250;
    v18[4] = v6;
    [(HMDAppleMediaDeviceAssociationController *)v6 _updateIdsAddressWithAccessoryUUID:v14 idsIdentifier:v15 idsDestination:v16 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __85__HMDAppleMediaDeviceAssociationController__handlePrimaryResidentDeviceAddressUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HMDAppleMediaDeviceAssociationController__handlePrimaryResidentDeviceAddressUpdate__block_invoke_2;
  v7[3] = &unk_27868A750;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __85__HMDAppleMediaDeviceAssociationController__handlePrimaryResidentDeviceAddressUpdate__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Primary local update failed: error %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 40) _startRetryTimer];
  }

  else
  {
    if (v6)
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Primary local update succeeded", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  result = [*(a1 + 40) _setStatusBusy:0];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_startRetryTimer
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAppleMediaDeviceAssociationController *)self backoffTimer];
  [v4 cancel];

  [(HMDAppleMediaDeviceAssociationController *)self setBackoffTimer:0];
  [(HMDAppleMediaDeviceAssociationController *)self nextInterval];
  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v10;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting timer with interval: %f", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDAppleMediaDeviceAssociationController *)v8 timerWithTimeInterval:8 options:v6];
  [(HMDAppleMediaDeviceAssociationController *)v8 setBackoffTimer:v11];

  v12 = [(HMDAppleMediaDeviceAssociationController *)v8 backoffTimer];
  [v12 setDelegate:v8];

  v13 = [(HMDAppleMediaDeviceAssociationController *)v8 queue];
  v14 = [(HMDAppleMediaDeviceAssociationController *)v8 backoffTimer];
  [v14 setDelegateQueue:v13];

  v15 = [(HMDAppleMediaDeviceAssociationController *)v8 backoffTimer];
  [v15 resume];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_pushDeviceAddress
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAppleMediaDeviceAssociationController *)self dataSource];
  if ([v4 isCurrentDeviceConfirmedPrimary])
  {
    [(HMDAppleMediaDeviceAssociationController *)self _handlePrimaryResidentDeviceAddressUpdate];
  }

  else
  {
    v5 = [(HMDAppleMediaDeviceAssociationController *)self _statusBusy];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v9)
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v10;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Controller is busy: do not send push message", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      if (v9)
      {
        v11 = HMFGetLogIdentifier();
        v12 = [(HMDAppleMediaDeviceAssociationController *)v7 messageTargetUUID];
        *buf = 138543618;
        v37 = v11;
        v38 = 2112;
        v39 = v12;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending remote message with target: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDAppleMediaDeviceAssociationController *)v7 _setStatusBusy:1];
      v13 = [v4 currentDevice];
      v14 = [v13 deviceAddress];
      v15 = objc_alloc(MEMORY[0x277D0F820]);
      v16 = [(HMDAppleMediaDeviceAssociationController *)v7 messageTargetUUID];
      v17 = [v15 initWithTarget:v16];

      v18 = [HMDDeviceAssociationInfoProto alloc];
      v19 = [(HMDAppleMediaDeviceAssociationController *)v7 accessoryUUID];
      v20 = [v14 idsIdentifier];
      v21 = [v14 idsDestination];
      v22 = [(HMDDeviceAssociationInfoProto *)v18 initWithAccessoryUUID:v19 idsIdentifier:v20 idsDestination:v21];

      v34 = @"HMDAppleMediaDeviceAssociationInfoProtoKey";
      v23 = [(HMDDeviceAssociationInfoProto *)v22 protoData];
      v35 = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

      v25 = [objc_alloc(MEMORY[0x277D0F848]) initWithName:@"HMDAM.p" destination:v17 payload:v24];
      [v25 setRemoteRestriction:9];
      objc_initWeak(buf, v25);
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __62__HMDAppleMediaDeviceAssociationController__pushDeviceAddress__block_invoke;
      v31 = &unk_278687F40;
      objc_copyWeak(&v33, buf);
      v32 = v7;
      [v25 setResponseHandler:&v28];
      v26 = [(HMDAppleMediaDeviceAssociationController *)v7 residentSyncManager:v28];
      [v26 performResidentRequest:v25 options:0];

      [(HMDAppleMediaDeviceAssociationController *)v7 _startRetryTimer];
      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __62__HMDAppleMediaDeviceAssociationController__pushDeviceAddress__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([*(a1 + 32) _statusBusy] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Controller status set to idle prematurely", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v5)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [WeakRetained shortDescription];
      v23 = 138543874;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v5;
      v18 = "%{public}@Remote message %@ failed with error: %@";
      v19 = v15;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 32;
LABEL_10:
      _os_log_impl(&dword_229538000, v19, v20, v18, &v23, v21);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [WeakRetained shortDescription];
    v23 = 138543618;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v18 = "%{public}@Remote message %@ succeeded";
    v19 = v15;
    v20 = OS_LOG_TYPE_INFO;
    v21 = 22;
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v12);
  [*(a1 + 32) _setStatusBusy:0];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_shouldPushDeviceAddressWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDAppleMediaDeviceAssociationController *)self _statusBusy])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Controller busy: do not push", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v4[2](v4, 0);
  }

  else
  {
    v10 = [(HMDAppleMediaDeviceAssociationController *)self dataSource];
    v11 = [v10 currentDevice];

    if (v11 && ([v11 deviceAddress], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      objc_initWeak(buf, self);
      v13 = [(HMDAppleMediaDeviceAssociationController *)self backingStore];
      v14 = [v13 context];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __83__HMDAppleMediaDeviceAssociationController__shouldPushDeviceAddressWithCompletion___block_invoke;
      v20[3] = &unk_278687BF8;
      objc_copyWeak(&v23, buf);
      v22 = v4;
      v21 = v11;
      [v14 performBlock:v20];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Current device has no IDS address: do not push", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v4[2](v4, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __83__HMDAppleMediaDeviceAssociationController__shouldPushDeviceAddressWithCompletion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained accessoryUUID];
  v4 = [WeakRetained mkfAppleMediaAccessoryWithModelIdentifier:v3];

  if (v4)
  {
    v5 = [v4 resident];

    if (v5)
    {
      v6 = [v4 idsIdentifier];
      v7 = [*(a1 + 32) deviceAddress];
      v8 = [v7 idsIdentifier];
      if (HMFEqualObjects())
      {
        v9 = [v4 idsDestination];
        v10 = [*(a1 + 32) deviceAddress];
        v11 = [v10 idsDestination];
        if (HMFEqualObjects())
        {
          v39 = [v4 resident];
          v12 = [v39 idsIdentifier];
          v37 = [*(a1 + 32) deviceAddress];
          [v37 idsIdentifier];
          v13 = v38 = v12;
          if (HMFEqualObjects())
          {
            v34 = [v4 resident];
            [v34 idsDestination];
            v14 = v33 = v10;
            v32 = [*(a1 + 32) deviceAddress];
            [v32 idsDestination];
            v15 = v35 = v9;
            v36 = HMFEqualObjects();

            if (v36)
            {
              v16 = objc_autoreleasePoolPush();
              v17 = WeakRetained;
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = HMFGetLogIdentifier();
                v20 = [v4 idsIdentifier];
                v21 = [v4 idsDestination];
                *buf = 138543874;
                v41 = v19;
                v42 = 2112;
                v43 = v20;
                v44 = 2112;
                v45 = v21;
                _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@IDS identifier: %@ destination: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v16);
              v22 = [v17 backoffTimer];
              [v22 cancel];

              [v17 setBackoffTimer:0];
              v23 = objc_autoreleasePoolPush();
              v24 = v17;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = HMFGetLogIdentifier();
                *buf = 138543362;
                v41 = v26;
                v27 = "%{public}@MKF model IDS address already set: do not push";
LABEL_13:
                _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, v27, buf, 0xCu);

                goto LABEL_20;
              }

              goto LABEL_20;
            }

LABEL_18:
            v23 = objc_autoreleasePoolPush();
            v29 = WeakRetained;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v30 = HMFGetLogIdentifier();
              *buf = 138543362;
              v41 = v30;
              _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@MKF model IDS not set: should push", buf, 0xCu);
            }

            goto LABEL_20;
          }
        }
      }

      goto LABEL_18;
    }
  }

  v23 = objc_autoreleasePoolPush();
  v28 = WeakRetained;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v26;
    v27 = "%{public}@No MKF model: do not push";
    goto LABEL_13;
  }

LABEL_20:

  objc_autoreleasePoolPop(v23);
  (*(*(a1 + 40) + 16))();

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_pushDeviceAddressIfNeeded
{
  v3 = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__HMDAppleMediaDeviceAssociationController__pushDeviceAddressIfNeeded__block_invoke;
  v4[3] = &unk_278678098;
  objc_copyWeak(&v5, &location);
  [(HMDAppleMediaDeviceAssociationController *)self _shouldPushDeviceAddressWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __70__HMDAppleMediaDeviceAssociationController__pushDeviceAddressIfNeeded__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__HMDAppleMediaDeviceAssociationController__pushDeviceAddressIfNeeded__block_invoke_2;
  v5[3] = &unk_278688650;
  v6 = a2;
  v5[4] = WeakRetained;
  dispatch_async(v4, v5);
}

uint64_t __70__HMDAppleMediaDeviceAssociationController__pushDeviceAddressIfNeeded__block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _pushDeviceAddress];
  }

  return result;
}

- (BOOL)_currentDeviceHasDeviceAddress
{
  v2 = [(HMDAppleMediaDeviceAssociationController *)self dataSource];
  v3 = [v2 currentDevice];

  if (v3)
  {
    v4 = [v3 deviceAddress];
    if (v4)
    {
      v5 = [v3 deviceAddress];
      v6 = [v5 idsIdentifier];
      if (v6)
      {
        v7 = [v3 deviceAddress];
        v8 = [v7 idsDestination];
        v9 = v8 != 0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_process
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAppleMediaDeviceAssociationController *)self dataSource];
  v5 = [v4 homeHasConfirmedPrimaryResident];

  if ((v5 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Do not process: home has no primary";
LABEL_10:
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, v11, &v13, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v7);
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  if (![(HMDAppleMediaDeviceAssociationController *)self _currentDeviceHasDeviceAddress])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Do not process: current device has no IDS address";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = *MEMORY[0x277D85DE8];

  [(HMDAppleMediaDeviceAssociationController *)self _pushDeviceAddressIfNeeded];
}

- (void)_handlePrimaryChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDAppleMediaDeviceAssociationController *)v6 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDAppleMediaDeviceAssociationController__handlePrimaryChange___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v6;
  dispatch_async(v10, block);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleTransactionObjectUpdated
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Handle transaction object updated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAppleMediaDeviceAssociationController *)v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDAppleMediaDeviceAssociationController_handleTransactionObjectUpdated__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v4;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceUpdatedNotification:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 object];
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

  v13 = [(HMDAppleMediaDeviceAssociationController *)v6 dataSource];
  v14 = [v13 currentDevice];

  if (v12 && v14 && ([v14 identifier], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "hmf_isEqualToUUID:", v16), v16, v15, (v17 & 1) != 0))
  {
    v18 = [(HMDAppleMediaDeviceAssociationController *)v6 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__HMDAppleMediaDeviceAssociationController__handleDeviceUpdatedNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v6;
    dispatch_async(v18, block);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Not the current device, do not process", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleAppleAccountManagerResolvedNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDAppleMediaDeviceAssociationController *)v6 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HMDAppleMediaDeviceAssociationController__handleAppleAccountManagerResolvedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v6;
  dispatch_async(v10, block);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Register for notifications", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAppleMediaDeviceAssociationController *)v6 notificationCenter];
  [v9 removeObserver:v6 name:@"HMDAppleAccountManagerResolved" object:0];

  v10 = [(HMDAppleMediaDeviceAssociationController *)v6 notificationCenter];
  [v10 addObserver:v6 selector:sel__handleAppleAccountManagerResolvedNotification_ name:@"HMDAppleAccountManagerResolved" object:0];

  v11 = [(HMDAppleMediaDeviceAssociationController *)v6 notificationCenter];
  [v11 removeObserver:v6 name:@"HMDDeviceUpdatedNotification" object:0];

  v12 = [(HMDAppleMediaDeviceAssociationController *)v6 notificationCenter];
  [v12 addObserver:v6 selector:sel__handleDeviceUpdatedNotification_ name:@"HMDDeviceUpdatedNotification" object:0];

  v13 = [(HMDAppleMediaDeviceAssociationController *)v6 notificationCenter];
  [v13 removeObserver:v6 name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

  v14 = [(HMDAppleMediaDeviceAssociationController *)v6 notificationCenter];
  v15 = [v4 residentDeviceManager];
  [v14 addObserver:v6 selector:sel__handlePrimaryChange_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages:(id)a3 messageDispatcher:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = @"HMDAM.p";
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Register for message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v12 setRoles:{objc_msgSend(v12, "roles") | 8}];
  v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v17[0] = v13;
  v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:3 remoteAccessRequired:0];
  v17[1] = v14;
  v17[2] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  [v7 registerForMessage:@"HMDAM.p" receiver:v9 policies:v15 selector:sel__handleHMDAppleMediaDeviceAssociationPushMessage_];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMDAppleMediaDeviceAssociationController *)v10 homeUUID];
    v14 = [(HMDAppleMediaDeviceAssociationController *)v10 accessoryUUID];
    *buf = 138543874;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@ accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDAppleMediaDeviceAssociationController *)v10 _registerForMessages:v6 messageDispatcher:v8];
  [(HMDAppleMediaDeviceAssociationController *)v10 _registerForNotifications:v6];
  v15 = [(HMDAppleMediaDeviceAssociationController *)v10 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDAppleMediaDeviceAssociationController_configureWithHome_messageDispatcher___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v10;
  dispatch_async(v15, block);

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaDeviceAssociationController)initWithQueue:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5 residentSyncManager:(id)a6 backingStore:(id)a7 notificationCenter:(id)a8 dataSource:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = HMDAppleMediaDeviceAssociationController;
  v18 = [(HMDAppleMediaDeviceAssociationController *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a3);
    objc_storeStrong(&v19->_homeUUID, a4);
    objc_storeStrong(&v19->_accessoryUUID, a5);
    objc_storeStrong(&v19->_residentSyncManager, a6);
    objc_storeStrong(&v19->_backingStore, a7);
    objc_storeStrong(&v19->_notificationCenter, a8);
    objc_storeStrong(&v19->_dataSource, a9);
  }

  return v19;
}

- (HMDAppleMediaDeviceAssociationController)initWithHome:(id)a3 accessory:(id)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v8 workQueue];

  if (!v12)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  v13 = [v8 uuid];

  if (!v13)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v14 = [v8 residentSyncManager];

  if (!v14)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v15 = [v8 backingStore];

  if (!v15)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v16 = [v8 backingStore];
  v17 = [v16 context];

  if (!v17)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v9)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v18 = [v9 uuid];

  if (v18)
  {
    v19 = [v8 workQueue];
    v20 = [v8 uuid];
    v21 = [v9 uuid];
    v22 = [v8 residentSyncManager];
    v23 = [v8 backingStore];
    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = [(HMDAppleMediaDeviceAssociationController *)self initWithQueue:v19 homeUUID:v20 accessoryUUID:v21 residentSyncManager:v22 backingStore:v23 notificationCenter:v24 dataSource:v11];

    return v25;
  }

LABEL_17:
  v27 = _HMFPreconditionFailure();
  return +[(HMDAppleMediaDeviceAssociationController *)v27];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t39 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t39, &__block_literal_global_87680);
  }

  v3 = logCategory__hmf_once_v40;

  return v3;
}

void __55__HMDAppleMediaDeviceAssociationController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v40;
  logCategory__hmf_once_v40 = v1;
}

@end