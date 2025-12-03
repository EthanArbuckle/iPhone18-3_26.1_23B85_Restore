@interface HMDAppleMediaDeviceAssociationController
+ (id)logCategory;
- (BOOL)_currentDeviceHasDeviceAddress;
- (BOOL)_statusBusy;
- (HMDAppleMediaDeviceAssociationController)initWithHome:(id)home accessory:(id)accessory dataSource:(id)source;
- (HMDAppleMediaDeviceAssociationController)initWithQueue:(id)queue homeUUID:(id)d accessoryUUID:(id)iD residentSyncManager:(id)manager backingStore:(id)store notificationCenter:(id)center dataSource:(id)source;
- (HMFTimerProvider)timerProvider;
- (double)nextInterval;
- (id)_deviceAssociationInfoFromProtoData:(id)data;
- (id)logIdentifier;
- (id)mkfAppleMediaAccessoryWithModelIdentifier:(id)identifier;
- (void)_handleAppleAccountManagerResolvedNotification:(id)notification;
- (void)_handleDeviceUpdatedNotification:(id)notification;
- (void)_handleHMDAppleMediaDeviceAssociationPushMessage:(id)message;
- (void)_handlePrimaryChange:(id)change;
- (void)_handlePrimaryResidentDeviceAddressUpdate;
- (void)_process;
- (void)_pushDeviceAddress;
- (void)_pushDeviceAddressIfNeeded;
- (void)_registerForMessages:(id)messages messageDispatcher:(id)dispatcher;
- (void)_registerForNotifications:(id)notifications;
- (void)_setStatusBusy:(BOOL)busy;
- (void)_shouldPushDeviceAddressWithCompletion:(id)completion;
- (void)_startRetryTimer;
- (void)_updateIdsAddressWithAccessoryUUID:(id)d idsIdentifier:(id)identifier idsDestination:(id)destination completion:(id)completion;
- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher;
- (void)handleTransactionObjectUpdated;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAppleMediaDeviceAssociationController

- (HMFTimerProvider)timerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timerProvider);

  return WeakRetained;
}

- (id)logIdentifier
{
  homeUUID = [(HMDAppleMediaDeviceAssociationController *)self homeUUID];
  uUIDString = [homeUUID UUIDString];

  return uUIDString;
}

- (id)mkfAppleMediaAccessoryWithModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = identifierCopy;
    mkfAppleMediaModelFinder = [(HMDAppleMediaDeviceAssociationController *)self mkfAppleMediaModelFinder];

    if (mkfAppleMediaModelFinder)
    {
      mkfAppleMediaModelFinder2 = [(HMDAppleMediaDeviceAssociationController *)self mkfAppleMediaModelFinder];
      v8 = (mkfAppleMediaModelFinder2)[2](mkfAppleMediaModelFinder2, v5);
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

  timerIntervalIndex = [(HMDAppleMediaDeviceAssociationController *)self timerIntervalIndex];
  if (timerIntervalIndex < [&unk_283E757B8 count] - 1)
  {
    [(HMDAppleMediaDeviceAssociationController *)self setTimerIntervalIndex:[(HMDAppleMediaDeviceAssociationController *)self timerIntervalIndex]+ 1];
  }

  return v5;
}

- (void)timerDidFire:(id)fire
{
  v18 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  backoffTimer = [(HMDAppleMediaDeviceAssociationController *)self backoffTimer];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (backoffTimer == fireCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Backoff timer fired, retry", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    backoffTimer2 = [(HMDAppleMediaDeviceAssociationController *)selfCopy backoffTimer];
    [backoffTimer2 cancel];

    [(HMDAppleMediaDeviceAssociationController *)selfCopy setBackoffTimer:0];
    queue = [(HMDAppleMediaDeviceAssociationController *)selfCopy queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDAppleMediaDeviceAssociationController_timerDidFire___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(queue, block);
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

- (void)_setStatusBusy:(BOOL)busy
{
  os_unfair_lock_lock_with_options();
  self->_busy = busy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_statusBusy
{
  os_unfair_lock_lock_with_options();
  busy = self->_busy;
  os_unfair_lock_unlock(&self->_lock);
  return busy;
}

- (id)_deviceAssociationInfoFromProtoData:(id)data
{
  dataCopy = data;
  queue = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [[HMDDeviceAssociationInfoProto alloc] initWithProtoData:dataCopy];
  if (v6)
  {
    accessoryUUID = [(HMDDeviceAssociationInfoProto *)v6 accessoryUUID];
    if (!accessoryUUID)
    {
      goto LABEL_8;
    }

    idsIdentifier = [(HMDDeviceAssociationInfoProto *)v6 idsIdentifier];
    if (idsIdentifier)
    {
      v9 = idsIdentifier;
      idsDestination = [(HMDDeviceAssociationInfoProto *)v6 idsDestination];

      if (idsDestination)
      {
        accessoryUUID = v6;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  accessoryUUID = 0;
LABEL_8:

  return accessoryUUID;
}

- (void)_handleHMDAppleMediaDeviceAssociationPushMessage:(id)message
{
  messageCopy = message;
  queue = [(HMDAppleMediaDeviceAssociationController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__HMDAppleMediaDeviceAssociationController__handleHMDAppleMediaDeviceAssociationPushMessage___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(queue, v7);
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

- (void)_updateIdsAddressWithAccessoryUUID:(id)d idsIdentifier:(id)identifier idsDestination:(id)destination completion:(id)completion
{
  dCopy = d;
  identifierCopy = identifier;
  destinationCopy = destination;
  completionCopy = completion;
  objc_initWeak(&location, self);
  backingStore = [(HMDAppleMediaDeviceAssociationController *)self backingStore];
  context = [backingStore context];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __119__HMDAppleMediaDeviceAssociationController__updateIdsAddressWithAccessoryUUID_idsIdentifier_idsDestination_completion___block_invoke;
  v20[3] = &unk_2786860E8;
  objc_copyWeak(&v25, &location);
  v16 = dCopy;
  v21 = v16;
  v17 = completionCopy;
  v24 = v17;
  v18 = identifierCopy;
  v22 = v18;
  v19 = destinationCopy;
  v23 = v19;
  [context performBlock:v20];

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
  queue = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(queue);

  _statusBusy = [(HMDAppleMediaDeviceAssociationController *)self _statusBusy];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (_statusBusy)
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
    [(HMDAppleMediaDeviceAssociationController *)selfCopy _setStatusBusy:1];
    dataSource = [(HMDAppleMediaDeviceAssociationController *)selfCopy dataSource];
    currentDevice = [dataSource currentDevice];
    deviceAddress = [currentDevice deviceAddress];
    accessoryUUID = [(HMDAppleMediaDeviceAssociationController *)selfCopy accessoryUUID];
    idsIdentifier = [deviceAddress idsIdentifier];
    idsDestination = [deviceAddress idsDestination];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __85__HMDAppleMediaDeviceAssociationController__handlePrimaryResidentDeviceAddressUpdate__block_invoke;
    v18[3] = &unk_27868A250;
    v18[4] = selfCopy;
    [(HMDAppleMediaDeviceAssociationController *)selfCopy _updateIdsAddressWithAccessoryUUID:accessoryUUID idsIdentifier:idsIdentifier idsDestination:idsDestination completion:v18];
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
  queue = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(queue);

  backoffTimer = [(HMDAppleMediaDeviceAssociationController *)self backoffTimer];
  [backoffTimer cancel];

  [(HMDAppleMediaDeviceAssociationController *)self setBackoffTimer:0];
  [(HMDAppleMediaDeviceAssociationController *)self nextInterval];
  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  v11 = [(HMDAppleMediaDeviceAssociationController *)selfCopy timerWithTimeInterval:8 options:v6];
  [(HMDAppleMediaDeviceAssociationController *)selfCopy setBackoffTimer:v11];

  backoffTimer2 = [(HMDAppleMediaDeviceAssociationController *)selfCopy backoffTimer];
  [backoffTimer2 setDelegate:selfCopy];

  queue2 = [(HMDAppleMediaDeviceAssociationController *)selfCopy queue];
  backoffTimer3 = [(HMDAppleMediaDeviceAssociationController *)selfCopy backoffTimer];
  [backoffTimer3 setDelegateQueue:queue2];

  backoffTimer4 = [(HMDAppleMediaDeviceAssociationController *)selfCopy backoffTimer];
  [backoffTimer4 resume];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_pushDeviceAddress
{
  v40 = *MEMORY[0x277D85DE8];
  queue = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(HMDAppleMediaDeviceAssociationController *)self dataSource];
  if ([dataSource isCurrentDeviceConfirmedPrimary])
  {
    [(HMDAppleMediaDeviceAssociationController *)self _handlePrimaryResidentDeviceAddressUpdate];
  }

  else
  {
    _statusBusy = [(HMDAppleMediaDeviceAssociationController *)self _statusBusy];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (_statusBusy)
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
        messageTargetUUID = [(HMDAppleMediaDeviceAssociationController *)selfCopy messageTargetUUID];
        *buf = 138543618;
        v37 = v11;
        v38 = 2112;
        v39 = messageTargetUUID;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending remote message with target: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDAppleMediaDeviceAssociationController *)selfCopy _setStatusBusy:1];
      currentDevice = [dataSource currentDevice];
      deviceAddress = [currentDevice deviceAddress];
      v15 = objc_alloc(MEMORY[0x277D0F820]);
      messageTargetUUID2 = [(HMDAppleMediaDeviceAssociationController *)selfCopy messageTargetUUID];
      v17 = [v15 initWithTarget:messageTargetUUID2];

      v18 = [HMDDeviceAssociationInfoProto alloc];
      accessoryUUID = [(HMDAppleMediaDeviceAssociationController *)selfCopy accessoryUUID];
      idsIdentifier = [deviceAddress idsIdentifier];
      idsDestination = [deviceAddress idsDestination];
      v22 = [(HMDDeviceAssociationInfoProto *)v18 initWithAccessoryUUID:accessoryUUID idsIdentifier:idsIdentifier idsDestination:idsDestination];

      v34 = @"HMDAppleMediaDeviceAssociationInfoProtoKey";
      protoData = [(HMDDeviceAssociationInfoProto *)v22 protoData];
      v35 = protoData;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

      v25 = [objc_alloc(MEMORY[0x277D0F848]) initWithName:@"HMDAM.p" destination:v17 payload:v24];
      [v25 setRemoteRestriction:9];
      objc_initWeak(buf, v25);
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __62__HMDAppleMediaDeviceAssociationController__pushDeviceAddress__block_invoke;
      v31 = &unk_278687F40;
      objc_copyWeak(&v33, buf);
      v32 = selfCopy;
      [v25 setResponseHandler:&v28];
      v26 = [(HMDAppleMediaDeviceAssociationController *)selfCopy residentSyncManager:v28];
      [v26 performResidentRequest:v25 options:0];

      [(HMDAppleMediaDeviceAssociationController *)selfCopy _startRetryTimer];
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

- (void)_shouldPushDeviceAddressWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  queue = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDAppleMediaDeviceAssociationController *)self _statusBusy])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Controller busy: do not push", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    dataSource = [(HMDAppleMediaDeviceAssociationController *)self dataSource];
    currentDevice = [dataSource currentDevice];

    if (currentDevice && ([currentDevice deviceAddress], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      objc_initWeak(buf, self);
      backingStore = [(HMDAppleMediaDeviceAssociationController *)self backingStore];
      context = [backingStore context];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __83__HMDAppleMediaDeviceAssociationController__shouldPushDeviceAddressWithCompletion___block_invoke;
      v20[3] = &unk_278687BF8;
      objc_copyWeak(&v23, buf);
      v22 = completionCopy;
      v21 = currentDevice;
      [context performBlock:v20];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Current device has no IDS address: do not push", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      completionCopy[2](completionCopy, 0);
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
  queue = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(queue);

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
  dataSource = [(HMDAppleMediaDeviceAssociationController *)self dataSource];
  currentDevice = [dataSource currentDevice];

  if (currentDevice)
  {
    deviceAddress = [currentDevice deviceAddress];
    if (deviceAddress)
    {
      deviceAddress2 = [currentDevice deviceAddress];
      idsIdentifier = [deviceAddress2 idsIdentifier];
      if (idsIdentifier)
      {
        deviceAddress3 = [currentDevice deviceAddress];
        idsDestination = [deviceAddress3 idsDestination];
        v9 = idsDestination != 0;
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
  queue = [(HMDAppleMediaDeviceAssociationController *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(HMDAppleMediaDeviceAssociationController *)self dataSource];
  homeHasConfirmedPrimaryResident = [dataSource homeHasConfirmedPrimaryResident];

  if ((homeHasConfirmedPrimaryResident & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    selfCopy2 = self;
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

- (void)_handlePrimaryChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [changeCopy name];
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  queue = [(HMDAppleMediaDeviceAssociationController *)selfCopy queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDAppleMediaDeviceAssociationController__handlePrimaryChange___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleTransactionObjectUpdated
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Handle transaction object updated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  queue = [(HMDAppleMediaDeviceAssociationController *)selfCopy queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDAppleMediaDeviceAssociationController_handleTransactionObjectUpdated__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceUpdatedNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [notificationCopy name];
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = name;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = object;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  dataSource = [(HMDAppleMediaDeviceAssociationController *)selfCopy dataSource];
  currentDevice = [dataSource currentDevice];

  if (v12 && currentDevice && ([currentDevice identifier], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "hmf_isEqualToUUID:", v16), v16, v15, (v17 & 1) != 0))
  {
    queue = [(HMDAppleMediaDeviceAssociationController *)selfCopy queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__HMDAppleMediaDeviceAssociationController__handleDeviceUpdatedNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
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

- (void)_handleAppleAccountManagerResolvedNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [notificationCopy name];
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  queue = [(HMDAppleMediaDeviceAssociationController *)selfCopy queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HMDAppleMediaDeviceAssociationController__handleAppleAccountManagerResolvedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications:(id)notifications
{
  v19 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Register for notifications", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  notificationCenter = [(HMDAppleMediaDeviceAssociationController *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy name:@"HMDAppleAccountManagerResolved" object:0];

  notificationCenter2 = [(HMDAppleMediaDeviceAssociationController *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel__handleAppleAccountManagerResolvedNotification_ name:@"HMDAppleAccountManagerResolved" object:0];

  notificationCenter3 = [(HMDAppleMediaDeviceAssociationController *)selfCopy notificationCenter];
  [notificationCenter3 removeObserver:selfCopy name:@"HMDDeviceUpdatedNotification" object:0];

  notificationCenter4 = [(HMDAppleMediaDeviceAssociationController *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel__handleDeviceUpdatedNotification_ name:@"HMDDeviceUpdatedNotification" object:0];

  notificationCenter5 = [(HMDAppleMediaDeviceAssociationController *)selfCopy notificationCenter];
  [notificationCenter5 removeObserver:selfCopy name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

  notificationCenter6 = [(HMDAppleMediaDeviceAssociationController *)selfCopy notificationCenter];
  residentDeviceManager = [notificationsCopy residentDeviceManager];
  [notificationCenter6 addObserver:selfCopy selector:sel__handlePrimaryChange_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages:(id)messages messageDispatcher:(id)dispatcher
{
  v22 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  dispatcherCopy = dispatcher;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:messagesCopy userPrivilege:3 remoteAccessRequired:0];
  v17[1] = v14;
  v17[2] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  [dispatcherCopy registerForMessage:@"HMDAM.p" receiver:selfCopy policies:v15 selector:sel__handleHMDAppleMediaDeviceAssociationPushMessage_];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher
{
  v24 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  dispatcherCopy = dispatcher;
  if (!homeCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = dispatcherCopy;
  if (!dispatcherCopy)
  {
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    homeUUID = [(HMDAppleMediaDeviceAssociationController *)selfCopy homeUUID];
    accessoryUUID = [(HMDAppleMediaDeviceAssociationController *)selfCopy accessoryUUID];
    *buf = 138543874;
    v19 = v12;
    v20 = 2112;
    v21 = homeUUID;
    v22 = 2112;
    v23 = accessoryUUID;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@ accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDAppleMediaDeviceAssociationController *)selfCopy _registerForMessages:homeCopy messageDispatcher:v8];
  [(HMDAppleMediaDeviceAssociationController *)selfCopy _registerForNotifications:homeCopy];
  queue = [(HMDAppleMediaDeviceAssociationController *)selfCopy queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDAppleMediaDeviceAssociationController_configureWithHome_messageDispatcher___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaDeviceAssociationController)initWithQueue:(id)queue homeUUID:(id)d accessoryUUID:(id)iD residentSyncManager:(id)manager backingStore:(id)store notificationCenter:(id)center dataSource:(id)source
{
  queueCopy = queue;
  dCopy = d;
  iDCopy = iD;
  managerCopy = manager;
  storeCopy = store;
  centerCopy = center;
  sourceCopy = source;
  v26.receiver = self;
  v26.super_class = HMDAppleMediaDeviceAssociationController;
  v18 = [(HMDAppleMediaDeviceAssociationController *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_homeUUID, d);
    objc_storeStrong(&v19->_accessoryUUID, iD);
    objc_storeStrong(&v19->_residentSyncManager, manager);
    objc_storeStrong(&v19->_backingStore, store);
    objc_storeStrong(&v19->_notificationCenter, center);
    objc_storeStrong(&v19->_dataSource, source);
  }

  return v19;
}

- (HMDAppleMediaDeviceAssociationController)initWithHome:(id)home accessory:(id)accessory dataSource:(id)source
{
  homeCopy = home;
  accessoryCopy = accessory;
  sourceCopy = source;
  if (!homeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v11 = sourceCopy;
  workQueue = [homeCopy workQueue];

  if (!workQueue)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  uuid = [homeCopy uuid];

  if (!uuid)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  residentSyncManager = [homeCopy residentSyncManager];

  if (!residentSyncManager)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  backingStore = [homeCopy backingStore];

  if (!backingStore)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  backingStore2 = [homeCopy backingStore];
  context = [backingStore2 context];

  if (!context)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!accessoryCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  uuid2 = [accessoryCopy uuid];

  if (uuid2)
  {
    workQueue2 = [homeCopy workQueue];
    uuid3 = [homeCopy uuid];
    uuid4 = [accessoryCopy uuid];
    residentSyncManager2 = [homeCopy residentSyncManager];
    backingStore3 = [homeCopy backingStore];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = [(HMDAppleMediaDeviceAssociationController *)self initWithQueue:workQueue2 homeUUID:uuid3 accessoryUUID:uuid4 residentSyncManager:residentSyncManager2 backingStore:backingStore3 notificationCenter:defaultCenter dataSource:v11];

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