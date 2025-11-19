@interface HMDUnassociatedWACAccessory
+ (id)logCategory;
- (HMDUnassociatedWACAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 messageDispatcher:(id)a6 wacDevice:(id)a7;
- (HMDWACAccessoryConfigurationDelegate)delegate;
- (HMDWACDevice)wacDevice;
- (NSString)wacDeviceID;
- (OS_dispatch_queue)delegateQueue;
- (void)_abort:(id)a3;
- (void)_configureDevice;
- (void)_configureDeviceCompleted:(id)a3;
- (void)_postWACMatchTimeout;
- (void)_postWACMatchingAccessoryFound:(id)a3;
- (void)_requestUserPermission;
- (void)_userPermissionResponse:(BOOL)a3;
- (void)_waitForPostWACMatch;
- (void)cancelConfigurationWithCompletionHandler:(id)a3;
- (void)setDelegate:(id)a3 withQueue:(id)a4;
- (void)setWACDevice:(id)a3;
- (void)startConfigurationWithCompletionHandler:(id)a3;
- (void)timerDidFire:(id)a3;
- (void)updateWithMatchingUnassociatedAccessory:(id)a3;
@end

@implementation HMDUnassociatedWACAccessory

- (void)timerDidFire:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDUnassociatedWACAccessory_timerDidFire___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_postWACMatchingAccessoryFound:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Post-WAC matching accessory found: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  state = v7->_state;
  if (state == 4)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v7;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Post-WAC accessory found, but WAC hasn't completed.  Holding on to accessory until completion", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    objc_storeStrong(v12 + 21, a3);
  }

  else if (state == 6)
  {
    __callCompletion(v7, 0, v5, "[HMDUnassociatedWACAccessory _postWACMatchingAccessoryFound:]");
    v7->_state = 8;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = v7->_state;
      v21 = 138543618;
      v22 = v18;
      v23 = 2048;
      v24 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Invalid state (%ld) for postWACMatchingAccessoryFound call", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_abort:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    wacDevice = v6->_wacDevice;
    *buf = 138543618;
    v51 = v8;
    v52 = 2112;
    v53 = wacDevice;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling WAC assocciation for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  state = v6->_state;
  if (state <= 8)
  {
    if (((1 << state) & 0x18) != 0)
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
      v21 = objc_autoreleasePoolPush();
      v22 = v6;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Cancel: cancel WAC and notify delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [(HMDUnassociatedWACAccessory *)v22 delegate];
      if (v25)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v22;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v51 = v29;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegate that WAC was cancelled", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        [v25 unassociatedWACAccessoryDidFinishAssociation:v27 withError:v11];
      }

      objc_initWeak(&location, v22);
      v30 = objc_autoreleasePoolPush();
      v31 = v22;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = HMFGetLogIdentifier();
        v34 = v31->_wacDevice;
        *buf = 138543618;
        v51 = v33;
        v52 = 2112;
        v53 = v34;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Cancelling WAC operation for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v35 = v31->_wacDevice;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __38__HMDUnassociatedWACAccessory__abort___block_invoke;
      v46[3] = &unk_279731EB8;
      objc_copyWeak(&v48, &location);
      v47 = v4;
      [(HMDWACDevice *)v35 cancelConfigurationWithCompletionHandler:v46];

      objc_destroyWeak(&v48);
      objc_destroyWeak(&location);

      goto LABEL_31;
    }

    if (((1 << state) & 0x60) != 0)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v6;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v39;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegate that WAC was cancelled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v36);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
      WeakRetained = objc_loadWeakRetained(v37 + 22);
      [WeakRetained unassociatedWACAccessoryDidFinishAssociation:v37 withError:v11];

      v4[2](v4);
      __callCompletion(v37, v11, 0, "[HMDUnassociatedWACAccessory _abort:]");
      v6->_state = 7;
      goto LABEL_31;
    }

    if (((1 << state) & 0x180) != 0)
    {
      goto LABEL_28;
    }
  }

  if (state - 1 < 2)
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Cancel: notify delegate of cancellation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HMDUnassociatedWACAccessory *)v13 delegate];
    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v13;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegate that WAC was cancelled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [v16 unassociatedWACAccessoryDidFinishAssociation:v18 withError:v11];
    }

    v6->_state = 0;
    v4[2](v4);
    __callCompletion(v13, v11, 0, "[HMDUnassociatedWACAccessory _abort:]");

LABEL_31:
    goto LABEL_32;
  }

  if (!state)
  {
LABEL_28:
    v41 = objc_autoreleasePoolPush();
    v42 = v6;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v44;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Cancel: no action required", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
    v4[2](v4);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
    __callCompletion(v42, v11, 0, "[HMDUnassociatedWACAccessory _abort:]");
    goto LABEL_31;
  }

LABEL_32:

  v45 = *MEMORY[0x277D85DE8];
}

void __38__HMDUnassociatedWACAccessory__abort___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[16];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__HMDUnassociatedWACAccessory__abort___block_invoke_2;
    v5[3] = &unk_279735738;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

void __38__HMDUnassociatedWACAccessory__abort___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 160) = 0;
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
  __callCompletion(v2, v3, 0, "[HMDUnassociatedWACAccessory _abort:]_block_invoke_2");
}

- (void)_postWACMatchTimeout
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Timeout waiting to find device post-WAC", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
  v8 = [(HMDUnassociatedWACAccessory *)v4 delegate];
  v9 = v8;
  if (v8)
  {
    [v8 unassociatedWACAccessoryDidFinishAssociation:v4 withError:v7];
  }

  __callCompletion(v4, v7, 0, "[HMDUnassociatedWACAccessory _postWACMatchTimeout]");
  v4->_state = 7;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_waitForPostWACMatch
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_postWACAccessory)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Post WAC accessory already located, handoff", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    __callCompletion(v4, 0, self->_postWACAccessory, "[HMDUnassociatedWACAccessory _waitForPostWACMatch]");
    v4->_state = 8;
  }

  else
  {
    v7 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v8 = [v7 preferenceForKey:@"wacAccessoryPostConfigMatchTimeout"];
    v9 = [v8 numberValue];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &unk_2866283F0;
    }

    v11 = objc_alloc(MEMORY[0x277D0F920]);
    [v10 doubleValue];
    v12 = [v11 initWithTimeInterval:1 options:?];
    handoffExpirationTimer = self->_handoffExpirationTimer;
    self->_handoffExpirationTimer = v12;

    [(HMFTimer *)self->_handoffExpirationTimer setDelegate:self];
    self->_state = 6;
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting Post-WAC match timeout for %@ seconds", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMFTimer *)self->_handoffExpirationTimer resume];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_configureDeviceCompleted:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@WAC completed with %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDUnassociatedWACAccessory *)v6 delegate];
  v10 = v9;
  if (v9)
  {
    [v9 unassociatedWACAccessoryDidFinishAssociation:v6 withError:v4];
    if (!v4)
    {
      v6->_state = 5;
      __run(v6);
      goto LABEL_13;
    }

    __callCompletion(v6, v4, 0, "[HMDUnassociatedWACAccessory _configureDeviceCompleted:]");
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@WAC Failed with %@, device should still be WAC-able", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v12 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@No delegate assigned, cannot continue WAC association", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
    __callCompletion(v12, v18, 0, "[HMDUnassociatedWACAccessory _configureDeviceCompleted:]");
  }

  v12->_state = 0;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_configureDevice
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUnassociatedWACAccessory *)self delegate];
  v4 = v3;
  if (v3)
  {
    [v3 unassociatedWACAccessoryDidStartAssociation:self];
    objc_initWeak(&location, self);
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      wacDevice = v6->_wacDevice;
      *buf = 138543618;
      v21 = v8;
      v22 = 2112;
      v23 = wacDevice;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Starting WAC process for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v6->_state = 4;
    v10 = v6->_wacDevice;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__HMDUnassociatedWACAccessory__configureDevice__block_invoke;
    v17[3] = &unk_279734708;
    objc_copyWeak(&v18, &location);
    [(HMDWACDevice *)v10 startConfigurationWithCompletionHandler:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@No delegate assigned, cannot continue WAC association", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
    __callCompletion(v12, v15, 0, "[HMDUnassociatedWACAccessory _configureDevice]");

    v12->_state = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __47__HMDUnassociatedWACAccessory__configureDevice__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[16];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__HMDUnassociatedWACAccessory__configureDevice__block_invoke_2;
    v7[3] = &unk_2797359B0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)_userPermissionResponse:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = v8;
    v10 = @"Allowed";
    if (v3)
    {
      v10 = @"Denied";
    }

    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Permission to share network: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v3)
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
    __callCompletion(v6, v11, 0, "[HMDUnassociatedWACAccessory _userPermissionResponse:]");

    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@User permission denied, return to ready state", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v13->_state = 0;
  }

  else
  {
    v6->_state = 3;
    __run(v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_requestUserPermission
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUnassociatedWACAccessory *)self delegate];
  if (v3)
  {
    self->_state = 2;
    objc_initWeak(&location, self);
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Request user permission to share network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__HMDUnassociatedWACAccessory__requestUserPermission__block_invoke;
    v14[3] = &unk_27972C850;
    objc_copyWeak(&v15, &location);
    [v3 requestPermissionToAssociateWACAccessory:v5 completionHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@No delegate assigned, cannot continue WAC association", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
    __callCompletion(v9, v12, 0, "[HMDUnassociatedWACAccessory _requestUserPermission]");

    v9->_state = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __53__HMDUnassociatedWACAccessory__requestUserPermission__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[16];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__HMDUnassociatedWACAccessory__requestUserPermission__block_invoke_2;
    v6[3] = &unk_279735D28;
    v6[4] = v4;
    v7 = a2;
    dispatch_async(v5, v6);
  }
}

- (void)updateWithMatchingUnassociatedAccessory:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDUnassociatedWACAccessory_updateWithMatchingUnassociatedAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)cancelConfigurationWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Cancellation requested, aborting association", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  queue = v6->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HMDUnassociatedWACAccessory_cancelConfigurationWithCompletionHandler___block_invoke;
  v12[3] = &unk_279735738;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDUnassociatedWACAccessory_startConfigurationWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __71__HMDUnassociatedWACAccessory_startConfigurationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 160);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@WAC association already in progress", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    if (v6)
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(*(a1 + 32) + 136);
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Kicking off WAC association for %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v12 = _Block_copy(*(a1 + 40));
    v13 = *(a1 + 32);
    v14 = *(v13 + 144);
    *(v13 + 144) = v12;

    __run(*(a1 + 32));
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSString)wacDeviceID
{
  v2 = [(HMDUnassociatedWACAccessory *)self wacDevice];
  v3 = [v2 deviceID];

  return v3;
}

- (HMDWACDevice)wacDevice
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_wacDevice;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setWACDevice:(id)a3
{
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_state)
  {
    objc_storeStrong(&self->_wacDevice, a3);
  }

  os_unfair_recursive_lock_unlock();
}

- (HMDUnassociatedWACAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 messageDispatcher:(id)a6 wacDevice:(id)a7
{
  v13 = a7;
  v21.receiver = self;
  v21.super_class = HMDUnassociatedWACAccessory;
  v14 = [(HMDUnassociatedAccessory *)&v21 initWithIdentifier:a3 name:a4 category:a5 messageDispatcher:a6];
  if (v14)
  {
    v15 = HMDispatchQueueNameString();
    v16 = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(v16, v17);
    queue = v14->_queue;
    v14->_queue = v18;

    objc_storeStrong(&v14->_wacDevice, a7);
    v14->_state = 0;
  }

  return v14;
}

- (OS_dispatch_queue)delegateQueue
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_delegateQueue;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (HMDWACAccessoryConfigurationDelegate)delegate
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_recursive_lock_unlock();

  return WeakRetained;
}

- (void)setDelegate:(id)a3 withQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_recursive_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v7);

  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = v6;

  os_unfair_recursive_lock_unlock();
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32_69594 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32_69594, &__block_literal_global_69595);
  }

  v3 = logCategory__hmf_once_v33_69596;

  return v3;
}

uint64_t __42__HMDUnassociatedWACAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v33_69596;
  logCategory__hmf_once_v33_69596 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end