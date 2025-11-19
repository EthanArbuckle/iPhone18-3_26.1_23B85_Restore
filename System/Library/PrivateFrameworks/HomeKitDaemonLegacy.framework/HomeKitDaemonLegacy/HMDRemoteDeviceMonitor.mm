@interface HMDRemoteDeviceMonitor
+ (id)logCategory;
+ (id)pingMessageForDevice:(id)a3 timeout:(double)a4 restriction:(unint64_t)a5;
- (BOOL)isReachable;
- (HMDModernTransportDeviceReachabilityObserver)transportReachabilityObserver;
- (HMDRemoteDeviceInformation)_startMonitoringDevice:(void *)a3 withInitialReachability:(void *)a4 forClient:;
- (HMDRemoteDeviceMonitor)init;
- (HMDRemoteDeviceMonitor)initWithAccountRegistry:(id)a3 activityObserver:(id)a4 accountManager:(id)a5;
- (HMDRemoteDeviceMonitor)initWithAccountRegistry:(id)a3 activityObserver:(id)a4 queue:(id)a5 service:(id)a6 modernService:(id)a7 accountManager:(id)a8 remoteAccountManager:(id)a9 netMonitor:(id)a10 factory:(id)a11;
- (NSArray)unreachableDevices;
- (id)_deviceInformationForDevice:(uint64_t)a1;
- (id)devices;
- (id)dumpState;
- (id)iCloudAccount;
- (id)newConfirmationHandlerWithTimeout:(double)a3 workQueue:(id)a4 handler:(id)a5;
- (id)newDeviceMonitoringTimer;
- (id)newInitialDeviceHealthTimer;
- (id)newRepeatingDeviceHealthTimer;
- (id)newSendMessageOperationWithMessage:(id)a3;
- (void)_confirmDevice:(void *)a3 timeout:(double)a4 completionHandler:;
- (void)_handleGlobalReachabilityChange;
- (void)_handleIncomingMessageForDevice:(id)a3;
- (void)_sendPingToDevice:(dispatch_queue_t *)a1;
- (void)_stopMonitoringDevice:(uint64_t)a1;
- (void)account:(id)a3 isActiveChanged:(BOOL)a4;
- (void)account:(id)a3 loginChanged:(id)a4;
- (void)confirmDevice:(id)a3 forClient:(id)a4 timeout:(double)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)handleAccountRemoved:(id)a3;
- (void)handleCurrentDeviceUpdate:(id)a3;
- (void)handleDeviceRemovedFromAccount:(id)a3;
- (void)handleReachabilityChange:(void *)a3 deviceInformation:(unint64_t)a4 reason:(char)a5 didStartMonitoringDevice:;
- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)a3 isReachable:(BOOL)a4;
- (void)networkMonitorIsReachable:(id)a3;
- (void)networkMonitorIsUnreachable:(id)a3;
- (void)notifyDeviceReachabilityChange:(void *)a3 forDevice:;
- (void)observer:(id)a3 didUpdateDevice:(id)a4 isOnline:(BOOL)a5;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)setReachable:(uint64_t)a1;
- (void)setTransportReachabilityObserver:(id)a3;
- (void)start;
- (void)startMonitoringDevice:(id)a3 withInitialReachability:(id)a4 forClient:(id)a5;
- (void)stopMonitoringDevice:(id)a3 forClient:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDRemoteDeviceMonitor

- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)a3 isReachable:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDRemoteDeviceMonitor *)self accountRegistry];
  v8 = [v7 deviceForAddress:v6];

  if (!a4 && v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v8 shortDescription];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Transport detects device %{public}@ might be unreachable, confirming...", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDRemoteDeviceMonitor *)v10 confirmDevice:v8 forClient:v10 timeout:0 completionHandler:65.0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)a3 didUpdateDevice:(id)a4 isOnline:(BOOL)a5
{
  v8 = a4;
  v9 = v8;
  if (self)
  {
    activityObserver = self->_activityObserver;
  }

  else
  {
    activityObserver = 0;
  }

  if (activityObserver == a3)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HMDRemoteDeviceMonitor_observer_didUpdateDevice_isOnline___block_invoke;
    block[3] = &unk_279734938;
    block[4] = self;
    v13 = v8;
    v14 = a5;
    dispatch_async(queue, block);
  }
}

void __60__HMDRemoteDeviceMonitor_observer_didUpdateDevice_isOnline___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    v7 = v6;
    v8 = *(a1 + 48);
    *buf = 138543874;
    if (v8)
    {
      v9 = @"Connected";
    }

    else
    {
      v9 = @"Disconnected";
    }

    v32 = v5;
    v33 = 2114;
    v34 = v6;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received IDS Activity update for device %{public}@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = [[HMDRemoteDeviceReachabilityChangeLogEvent alloc] initWithReason:4 reachable:*(a1 + 48) targetSupportsIDSPresence:1];
  v11 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v11 submitLogEvent:v10];

  v12 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v13 = [(HMDRemoteDeviceMonitor *)*(a1 + 32) _deviceInformationForDevice:?];
  os_unfair_lock_unlock(v12 + 2);
  if (!v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) shortDescription];
      *buf = 138543618;
      v32 = v19;
      v33 = 2114;
      v34 = v20;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@No Device Information found for device: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (*(a1 + 48) == (*(v13 + 8) & 1))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 40) shortDescription];
      *buf = 138543618;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Server reachability is the same as our reachability for device: %{public}@", buf, 0x16u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v14);
    goto LABEL_17;
  }

  dispatch_assert_queue_V2(*(v13 + 24));
  *(v13 + 40) &= ~8uLL;
  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 32);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v32 = v24;
    v33 = 2114;
    v34 = v25;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Confirming device %{public}@ because server reachability is different from our reachability", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  [*(v13 + 64) suspend];
  v26 = *(v13 + 64);
  *(v13 + 64) = 0;

  v27 = *(a1 + 32);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__HMDRemoteDeviceMonitor_observer_didUpdateDevice_isOnline___block_invoke_197;
  v29[3] = &unk_2797358C8;
  v29[4] = v27;
  v30 = *(a1 + 40);
  [(HMDRemoteDeviceMonitor *)v27 _confirmDevice:v13 timeout:v29 completionHandler:65.0];

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
}

- (id)_deviceInformationForDevice:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_assert_owner((v2 + 8));
    v2 = [*(v2 + 120) objectForKey:v3];
  }

  return v2;
}

void __60__HMDRemoteDeviceMonitor_observer_didUpdateDevice_isOnline___block_invoke_197(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v9 = v8;
    v10 = @"Success";
    v12 = 138543874;
    v13 = v7;
    if (v3)
    {
      v10 = v3;
    }

    v14 = 2114;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Ping result due to IDS Activity for device %{public}@: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_confirmDevice:(void *)a3 timeout:(double)a4 completionHandler:
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    os_unfair_lock_lock_with_options();
    v9 = *(a1 + 41);
    os_unfair_lock_unlock((a1 + 8));
    if (v9)
    {
      if (v7)
      {
        Property = objc_getProperty(v7, v10, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v12 = Property;
      if ([a1 isReachable])
      {
        if ([v12 isCurrentDevice])
        {
          v13 = objc_autoreleasePoolPush();
          v14 = a1;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            v41 = 138543362;
            v42 = v16;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Confirming ourselves, returning success", &v41, 0xCu);
          }

          objc_autoreleasePoolPop(v13);
          if (v8)
          {
            v8[2](v8, 0);
          }

          goto LABEL_19;
        }

        if (v7)
        {
          v28 = (v7[5] & 0xA) == 0;
          if ((v7[1] & 1) == 0 && (v7[5] & 0xA) != 0)
          {
            v29 = objc_autoreleasePoolPush();
            v30 = a1;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = HMFGetLogIdentifier();
              v33 = [v12 shortDescription];
              v41 = 138543618;
              v42 = v32;
              v43 = 2114;
              v44 = v33;
              _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@The device is already unreachable: %{public}@", &v41, 0x16u);
            }

            objc_autoreleasePoolPop(v29);
            dispatch_assert_queue_V2(v7[3]);
            v7[5] = (v7[5] | 1);
            if (!v8)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v28 = 1;
        }

        if (v8)
        {
          [(HMDRemoteDeviceInformation *)v7 queueConfirmationHandler:v8 timeout:a4];
        }

        if (v28)
        {
          [(HMDRemoteDeviceMonitor *)a1 _sendPingToDevice:v7];
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = a1;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            if (v7)
            {
              v39 = objc_getProperty(v7, v37, 16, 1);
            }

            else
            {
              v39 = 0;
            }

            v40 = [v39 shortDescription];
            v41 = 138543618;
            v42 = v38;
            v43 = 2114;
            v44 = v40;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@The device is already being confirmed: %{public}@", &v41, 0x16u);
          }

          objc_autoreleasePoolPop(v34);
        }

        goto LABEL_19;
      }

      v21 = objc_autoreleasePoolPush();
      v22 = a1;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v12 shortDescription];
        v41 = 138543618;
        v42 = v24;
        v43 = 2114;
        v44 = v25;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@We are currently unreachable, so failing confirm for device: %{public}@", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      if (!v8)
      {
        goto LABEL_19;
      }

LABEL_18:
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      (v8)[2](v8, v26);

      goto LABEL_19;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v41 = 138543362;
      v42 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot confirm device before monitor has started", &v41, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (v8)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (v8)[2](v8, v12);
LABEL_19:
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_sendPingToDevice:(dispatch_queue_t *)a1
{
  v63[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[2]);
    if (v3)
    {
      if ([objc_getProperty(v3 v4])
      {
        v5 = objc_autoreleasePoolPush();
        v6 = a1;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v8;
          _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to send ping to ourselves", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v5);
      }

      else
      {
        v9 = (*(v3 + 5) & 2) == 0;
        v10 = objc_autoreleasePoolPush();
        v11 = a1;
        v12 = HMFGetOSLogHandle();
        v13 = v12;
        if (v9)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = HMFGetLogIdentifier();
            v16 = [objc_getProperty(v3 v15];
            *buf = 138543618;
            *&buf[4] = v14;
            *&buf[12] = 2114;
            *&buf[14] = v16;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Sending ping to device: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          [*(v3 + 8) suspend];
          objc_initWeak(&location, v11);
          aBlock = MEMORY[0x277D85DD0];
          v51 = 3221225472;
          v52 = __44__HMDRemoteDeviceMonitor__sendPingToDevice___block_invoke;
          v53 = &unk_2797338E8;
          objc_copyWeak(&v55, &location);
          v17 = v3;
          v54 = v17;
          v49 = _Block_copy(&aBlock);
          v18 = 65.0;
          if ((_pingTimeoutAdjustedForIDSPushBlackout_isPushAvailable & 1) == 0)
          {
            v19 = [MEMORY[0x277CCAC38] processInfo];
            [v19 systemUptime];
            v21 = v20;

            v22 = 120.0 - v21;
            if (v22 <= 0.0)
            {
              v30 = objc_autoreleasePoolPush();
              v31 = v11;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v33;
                *&buf[12] = 2048;
                *&buf[14] = 0x4050400000000000;
                _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Push is available, using default ping timeout: %f", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              _pingTimeoutAdjustedForIDSPushBlackout_isPushAvailable = 1;
            }

            else
            {
              v23 = objc_autoreleasePoolPush();
              v24 = v11;
              v25 = HMFGetOSLogHandle();
              v18 = v22 + 65.0;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v26 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v26;
                *&buf[12] = 2048;
                *&buf[14] = v22 + 65.0;
                _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Push is unavailable, using extended ping timeout: %f", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v23);
            }
          }

          [(HMDRemoteDeviceInformation *)v17 queueConfirmationHandler:v49 timeout:v18];
          dispatch_assert_queue_V2(v17[3]);
          v17[5] = (v17[5] | 2);
          dispatch_assert_queue_V2(v17[3]);
          v17[5] = (v17[5] & 0xFFFFFFFFFFFFFFFBLL);
          v34 = v17;
          v36 = [HMDRemoteDeviceMonitor pingMessageForDevice:objc_getProperty(v34 timeout:v35 restriction:16, 1), 0, v18];
          WeakRetained = objc_loadWeakRetained(v11 + 14);
          v38 = [WeakRetained newSendMessageOperationWithMessage:v36];
          objc_initWeak(&from, v11);
          objc_initWeak(&v57, v38);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __61__HMDRemoteDeviceMonitor__createRemotePingOperation_timeout___block_invoke;
          v60 = &unk_279733938;
          objc_copyWeak(&v62, &from);
          objc_copyWeak(v63, &v57);
          v39 = v34;
          v61 = v39;
          [v38 setCompletionBlock:buf];

          objc_destroyWeak(v63);
          objc_destroyWeak(&v62);
          objc_destroyWeak(&v57);
          objc_destroyWeak(&from);

          v40 = objc_autoreleasePoolPush();
          v41 = v11;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = HMFGetLogIdentifier();
            v44 = [v38 shortDescription];
            v46 = objc_getProperty(v39, v45, 16, 1);
            v47 = [v46 shortDescription];
            *buf = 138543874;
            *&buf[4] = v43;
            *&buf[12] = 2114;
            *&buf[14] = v44;
            *&buf[22] = 2114;
            v60 = v47;
            _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Starting ping operation %{public}@ for device: %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v40);
          [v41[3] addOperation:v38];

          objc_destroyWeak(&v55);
          objc_destroyWeak(&location);
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            v29 = [objc_getProperty(v3 v28];
            *buf = 138543618;
            *&buf[4] = v27;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Already pinging to device: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
        }
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __44__HMDRemoteDeviceMonitor__sendPingToDevice___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[2]);
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v9, 16, 1);
      }

      v12 = [Property shortDescription];
      v33 = 138543874;
      v34 = v10;
      v35 = 2114;
      v36 = v12;
      v37 = 2112;
      v38 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Confirmation completed for device %{public}@ with error: %@", &v33, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if (!v3)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v7;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = *(a1 + 32);
        if (v29)
        {
          v29 = objc_getProperty(v29, v27, 16, 1);
        }

        v30 = [v29 shortDescription];
        v33 = 138543618;
        v34 = v28;
        v35 = 2114;
        v36 = v30;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Confirmation succeeded to reachable device: %{public}@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      [(HMDRemoteDeviceMonitor *)v25 handleReachabilityChange:*(a1 + 32) deviceInformation:1uLL reason:0 didStartMonitoringDevice:?];
      goto LABEL_27;
    }

    v13 = *(a1 + 32);
    if (!v13 || (*(v13 + 8) & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v7;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 32);
        if (v19)
        {
          v19 = objc_getProperty(v19, v17, 16, 1);
        }

        v20 = [v19 shortDescription];
        v33 = 138543874;
        v34 = v18;
        v35 = 2114;
        v36 = v20;
        v37 = 2112;
        v38 = v3;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Confirmation failed to unreachable device %{public}@ with error: %@", &v33, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v21 = [v3 domain];
    if ([v21 isEqual:*MEMORY[0x277D0F1A0]])
    {
      v22 = [v3 code];

      if (v22 == 13)
      {
        v23 = 3;
LABEL_24:
        [(HMDRemoteDeviceMonitor *)v7 handleReachabilityChange:*(a1 + 32) deviceInformation:v23 reason:0 didStartMonitoringDevice:?];
        [(HMDRemoteDeviceInformation *)*(a1 + 32) addState:?];
        v31 = *(a1 + 32);
        if (v31 && (*(v31 + 40) & 4) != 0)
        {
          dispatch_assert_queue_V2(*(v31 + 24));
          *(v31 + 40) &= ~2uLL;
        }

LABEL_27:
        [(HMDRemoteDeviceInformation *)*(a1 + 32) completeConfirmationsWithError:v3];
        goto LABEL_28;
      }
    }

    else
    {
    }

    v23 = 2;
    goto LABEL_24;
  }

LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
}

void __61__HMDRemoteDeviceMonitor__createRemotePingOperation_timeout___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    v4 = [v3 error];
    v5 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__HMDRemoteDeviceMonitor__createRemotePingOperation_timeout___block_invoke_2;
    block[3] = &unk_279734960;
    block[4] = WeakRetained;
    v8 = v4;
    v9 = a1[4];
    v6 = v4;
    dispatch_async(v5, block);
  }
}

void __61__HMDRemoteDeviceMonitor__createRemotePingOperation_timeout___block_invoke_2(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    Property = *(a1 + 48);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 16, 1);
    }

    v9 = [Property shortDescription];
    v51 = 138543874;
    v52 = v6;
    v53 = 2112;
    v54 = v8;
    v55 = 2114;
    v56 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Operation completed with error %@ to device %{public}@", &v51, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *(a1 + 48);
  if (v10 && (*(v10 + 40) & 2) != 0)
  {
    v11 = *(a1 + 40);
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = *(a1 + 48);
        if (v18)
        {
          v18 = objc_getProperty(v18, v16, 16, 1);
        }

        v19 = [v18 shortDescription];
        v20 = *(a1 + 40);
        v51 = 138543874;
        v52 = v17;
        v53 = 2114;
        v54 = v19;
        v55 = 2112;
        v56 = v20;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to send ping to device %{public}@ with error: %@", &v51, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDRemoteDeviceInformation *)*(a1 + 48) completeConfirmationsWithError:?];
      v22 = *(a1 + 32);
      if (v22)
      {
        WeakRetained = objc_loadWeakRetained((v22 + 96));
      }

      else
      {
        WeakRetained = 0;
      }

      v25 = *(a1 + 40);
      v24 = *(a1 + 48);
      if (v24)
      {
        v24 = objc_getProperty(v24, v21, 16, 1);
      }

      v26 = [v24 remoteDestinationString];
      [WeakRetained __handleSendMessageFailureWithError:v25 destination:v26];

      [(HMDRemoteDeviceInformation *)*(a1 + 48) addState:?];
      [HMDRemoteDeviceInformation clearState:?];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = *(a1 + 48);
        if (v29)
        {
          v29 = objc_getProperty(v29, v27, 16, 1);
        }

        v30 = [v29 shortDescription];
        v51 = 138543618;
        v52 = v28;
        v53 = 2114;
        v54 = v30;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully sent ping to device: %{public}@", &v51, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDRemoteDeviceInformation *)*(a1 + 48) addState:?];
    }

    v31 = *(a1 + 32);
    v32 = *(a1 + 48);
    v33 = v32;
    if (!v31)
    {
      goto LABEL_33;
    }

    if (v32)
    {
      v34 = v32[8];
    }

    else
    {
      v34 = 0;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v31;
    v37 = HMFGetOSLogHandle();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
    if (v34)
    {
      if (v38)
      {
        v40 = HMFGetLogIdentifier();
        if (v33)
        {
          v41 = objc_getProperty(v33, v39, 16, 1);
        }

        else
        {
          v41 = 0;
        }

        v42 = [v41 shortDescription];
        v51 = 138543618;
        v52 = v40;
        v53 = 2114;
        v54 = v42;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Resuming actively monitoring device: %{public}@", &v51, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      if (v33)
      {
LABEL_31:
        v43 = v33[8];
LABEL_32:
        [v43 resume];
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      if (v38)
      {
        v46 = HMFGetLogIdentifier();
        if (v33)
        {
          v47 = objc_getProperty(v33, v45, 16, 1);
        }

        else
        {
          v47 = 0;
        }

        v48 = [v47 shortDescription];
        v51 = 138543618;
        v52 = v46;
        v53 = 2114;
        v54 = v48;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Starting to actively monitor device: %{public}@", &v51, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v49 = objc_loadWeakRetained(v36 + 14);
      v50 = [v49 newDeviceMonitoringTimer];

      [v50 setDelegateQueue:v36[2]];
      [v50 setDelegate:v36];
      [(HMDRemoteDeviceInformation *)v33 setRetryTimer:v50];

      if (v33)
      {
        goto LABEL_31;
      }
    }

    v43 = 0;
    goto LABEL_32;
  }

LABEL_34:
  v44 = *MEMORY[0x277D85DE8];
}

- (void)handleReachabilityChange:(void *)a3 deviceInformation:(unint64_t)a4 reason:(char)a5 didStartMonitoringDevice:
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  if (a1)
  {
    if (a4 < 5)
    {
      if (v9)
      {
        v11 = v9 + 9;
LABEL_5:
        *v11 = 1;
      }

LABEL_6:
      v12 = off_2797280C8[a4];
      goto LABEL_7;
    }

    if (a4 != 6)
    {
      if (a4 > 6)
      {
        v12 = @"unknown";
LABEL_7:
        v13 = v12;
        v14 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
        if (v10)
        {
          v15 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
          if ((*(v10 + 10) & 1) != 0 && a4 == 5 && (*(v10 + 9) & 1) == 0)
          {
            v16 = objc_autoreleasePoolPush();
            v17 = a1;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              v40 = 138543874;
              v41 = v19;
              v42 = 2114;
              v43 = v13;
              v44 = 2112;
              Property = objc_getProperty(v10, v20, 16, 1);
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Skipping updating reachability with reason: %{public}@ because initial reachability is set and waiting for non-network reachability changes for device: %@", &v40, 0x20u);

              v14 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
            }

            objc_autoreleasePoolPop(v16);
            v15 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
            if ((a5 & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_17;
          }

          if ((a5 & 1) != 0 || (v10[1] & 1) != a2)
          {
LABEL_17:
            dispatch_assert_queue_V2(v10[3]);
            v22 = [objc_getProperty(v10 v21];
            v23 = [v22 supportsIDSActivityMonitorPresence];

            v24 = [[HMDRemoteDeviceReachabilityChangeLogEvent alloc] initWithReason:a4 reachable:a2 targetSupportsIDSPresence:v23];
            v25 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v25 submitLogEvent:v24];

            *(v10 + v15[878]) = a2;
LABEL_18:
            v26 = objc_autoreleasePoolPush();
            v27 = a1;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              v31 = HMFBooleanToString();
              if (v10)
              {
                v32 = objc_getProperty(v10, v30, v14[875], 1);
              }

              else
              {
                v32 = 0;
              }

              v40 = 138544130;
              v41 = v29;
              v42 = 2114;
              v43 = v31;
              v44 = 2114;
              Property = v13;
              v46 = 2112;
              v47 = v32;
              _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Updating reachability to %{public}@ with reason: %{public}@, for device: %@", &v40, 0x2Au);
            }

            objc_autoreleasePoolPop(v26);
            if (v10)
            {
              v34 = objc_getProperty(v10, v33, v14[875], 1);
            }

            else
            {
              v34 = 0;
            }

            [(HMDRemoteDeviceMonitor *)v27 notifyDeviceReachabilityChange:a2 forDevice:v34];
          }
        }

        else if (a2 & 1) != 0 || (a5)
        {
          goto LABEL_18;
        }

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (!v9)
    {
      goto LABEL_6;
    }

    v11 = v9 + 10;
    if ((v9[10] & 1) == 0 && (v9[9] & 1) == 0)
    {
      goto LABEL_5;
    }

    v36 = objc_autoreleasePoolPush();
    v37 = a1;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v40 = 138543362;
      v41 = v39;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping updating reachability with initial reachability reason", &v40, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
  }

LABEL_26:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)notifyDeviceReachabilityChange:(void *)a3 forDevice:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v11 = [v5 shortDescription];
    v16 = 138543874;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying clients of reachability change, %@, for device: %{public}@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = v12;
  if (a2)
  {
    v14 = @"HMDRemoteDeviceIsReachableNotification";
  }

  else
  {
    v14 = @"HMDRemoteDeviceIsNotReachableNotification";
  }

  [v12 postNotificationName:v14 object:v5];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingMessageForDevice:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HMDRemoteDeviceMonitor *)self _startMonitoringDevice:v4 withInitialReachability:0 forClient:0];
  v6 = v5;
  if (v5)
  {
    [(HMDRemoteDeviceInformation *)v5 completeConfirmationsWithError:?];
    v7 = v6;
    if (*(v7 + 8))
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v13 = [objc_getProperty(v7 v12];
        v19 = 138543618;
        v20 = v11;
        v21 = 2114;
        v22 = v13;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Stopping actively monitoring device: %{public}@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(v7 + 8) suspend];
      objc_storeStrong(v7 + 8, 0);
    }

    dispatch_assert_queue_V2(*(v7 + 3));
    dispatch_assert_queue_V2(*(v7 + 3));
    *(v7 + 5) &= 0xFFFFFFFFFFFFFFF0;
    [(HMDRemoteDeviceMonitor *)self handleReachabilityChange:v7 deviceInformation:0 reason:0 didStartMonitoringDevice:?];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring incoming message from device %@ because no clients have registered to monitor it", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteDeviceInformation)_startMonitoringDevice:(void *)a3 withInitialReachability:(void *)a4 forClient:
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v69 = a3;
  v8 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (v7)
    {
      v68 = v8;
      v72 = 0;
      v9 = [a1 accountRegistry];
      v10 = [v9 deviceForDevice:v7 exists:&v72];

      if (([v10 isCurrentDevice] & 1) == 0)
      {
        v11 = [v10 handles];
        v12 = [v11 hmf_isEmpty];

        if (!v12)
        {
          os_unfair_lock_lock_with_options();
          v21 = [(HMDRemoteDeviceMonitor *)a1 _deviceInformationForDevice:v10];
          v23 = v21;
          if (v21)
          {
            objc_setProperty_atomic(v21, v22, v10, 16);
            v18 = v23;
          }

          else
          {
            v18 = [HMDRemoteDeviceInformation alloc];
            v24 = *(a1 + 16);
            WeakRetained = objc_loadWeakRetained((a1 + 112));
            v26 = v10;
            HIDWORD(obj) = HIDWORD(v24);
            v66 = v24;
            v27 = WeakRetained;
            v28 = v27;
            v64 = v26;
            if (v18)
            {
              if (!v26 || !v66 || !v27)
              {
                _HMFPreconditionFailure();
                __break(1u);
              }

              *buf = v18;
              *&buf[8] = HMDRemoteDeviceInformation;
              v29 = objc_msgSendSuper2(buf, sel_init);
              v18 = v29;
              if (v29)
              {
                objc_storeStrong(&v29->_device, v10);
                objc_storeStrong(&v18->_workQueue, v24);
                objc_storeWeak(&v18->_factory, v28);
                v18->_reachable = 1;
                v30 = [MEMORY[0x277CBEB18] array];
                confirmationHandlers = v18->_confirmationHandlers;
                v18->_confirmationHandlers = v30;

                v32 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
                clients = v18->_clients;
                v18->_clients = v32;
              }
            }

            v34 = *(a1 + 120);
            [v34 setObject:v18 forKey:v64];
          }

          os_unfair_lock_unlock((a1 + 8));
          if (v68)
          {
            os_unfair_lock_lock_with_options();
            if (v18)
            {
              v35 = v18->_clients;
            }

            else
            {
              v35 = 0;
            }

            v36 = v35;
            [(NSHashTable *)v36 addObject:v68];

            os_unfair_lock_unlock((a1 + 8));
          }

          if (v23)
          {
            if (v69 && ([v69 BOOLValue] & 1) == 0)
            {
              -[HMDRemoteDeviceMonitor handleReachabilityChange:deviceInformation:reason:didStartMonitoringDevice:](a1, [v69 BOOLValue], v18, 6uLL, 1);
            }
          }

          else
          {
            v18 = v18;
            v65 = v69;
            dispatch_assert_queue_V2(*(a1 + 16));
            if (v18)
            {
              Property = objc_getProperty(v18, v37, 16, 1);
            }

            else
            {
              Property = 0;
            }

            v67 = [Property account];
            if (v67)
            {
              v39 = [MEMORY[0x277CCAB98] defaultCenter];
              [v39 addObserver:a1 selector:sel_handleDeviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:v67];
            }

            LODWORD(obj) = [a1 isReachable];
            if (v65 && ([v65 BOOLValue] & 1) == 0)
            {
              LODWORD(obj) = [v65 BOOLValue];
              v40 = 6;
            }

            else
            {
              v40 = 5;
            }

            v61 = v40;
            context = objc_autoreleasePoolPush();
            v41 = a1;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v44 = HMFGetLogIdentifier();
              if (v18)
              {
                v45 = objc_getProperty(v18, v43, 16, 1);
              }

              else
              {
                v45 = 0;
              }

              v46 = [v45 shortDescription];
              v47 = HMFBooleanToString();
              *buf = 138543874;
              *&buf[4] = v44;
              *&buf[12] = 2114;
              *&buf[14] = v46;
              v74 = 2112;
              v75 = v47;
              _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Marking newly added device: %{public}@ with reachability: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            [(HMDRemoteDeviceMonitor *)v41 handleReachabilityChange:v18 deviceInformation:v61 reason:1 didStartMonitoringDevice:?];

            os_unfair_lock_lock_with_options();
            v48 = BYTE1(v41[10]._os_unfair_lock_opaque);
            os_unfair_lock_unlock(v41 + 2);
            if (v48 == 1 && !isWatch())
            {
              [(HMDRemoteDeviceInformation *)v18 addState:?];
              v70[0] = MEMORY[0x277D85DD0];
              v70[1] = 3221225472;
              v70[2] = __83__HMDRemoteDeviceMonitor__startMonitoringDevice_withInitialReachability_forClient___block_invoke;
              v70[3] = &unk_2797358C8;
              v70[4] = v41;
              v71 = v10;
              [(HMDRemoteDeviceMonitor *)v41 _confirmDevice:v18 timeout:v70 completionHandler:65.0];
            }

            v49 = *&v41[8]._os_unfair_lock_opaque;
            v50 = [v10 deviceAddress];
            [v49 addListener:v41 forDeviceAddress:v50];

            v51 = objc_autoreleasePoolPush();
            v52 = v41;
            v53 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v55 = HMFGetLogIdentifier();
              if (v18)
              {
                v56 = objc_getProperty(v18, v54, 16, 1);
              }

              else
              {
                v56 = 0;
              }

              v57 = [v56 shortDescription];
              *buf = 138543618;
              *&buf[4] = v55;
              *&buf[12] = 2114;
              *&buf[14] = v57;
              _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Starting IDS Activity for device: %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v51);
            v59 = v52[10];
            if (v18)
            {
              v60 = objc_getProperty(v18, v58, 16, 1);
            }

            else
            {
              v60 = 0;
            }

            [v59 startObservingPresenceForDevice:v60];
          }

          goto LABEL_9;
        }

        v13 = objc_autoreleasePoolPush();
        v14 = a1;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v17 = HMFBooleanToString();
          *buf = 138543874;
          *&buf[4] = v16;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          v74 = 2112;
          v75 = v17;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot monitor a device without any handles: %@, device found in account register: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
      }

      v18 = 0;
LABEL_9:

      v8 = v68;
      goto LABEL_11;
    }
  }

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __83__HMDRemoteDeviceMonitor__startMonitoringDevice_withInitialReachability_forClient___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) shortDescription];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Determined newly monitored device is unreachable: %{public}@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v29 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v16 = [HMDDeviceHandle deviceHandleForDestination:v14];
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v12 serviceIdentifier];
    *buf = 138543874;
    v31 = v20;
    v32 = 2112;
    v33 = v16;
    v34 = 2114;
    v35 = v21;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Received incoming message from: %@, on service: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = [(HMDRemoteDeviceMonitor *)v18 accountRegistry];
  v23 = [v22 deviceForHandle:v16];

  if (v23 && ![v23 isCurrentDevice])
  {
    [(HMDRemoteDeviceMonitor *)v18 _handleIncomingMessageForDevice:v23];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v18;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v27;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring incoming message from device because it is nil or it is the current device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@IDS Service active accounts changed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v6 iCloudAccount];
  WeakRetained = objc_loadWeakRetained(&v9->_iCloudAccount);
  if (v12 && ([v12 isEqual:WeakRetained] & 1) == 0)
  {
    context = objc_autoreleasePoolPush();
    v14 = v9;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v16 = v18 = v7;
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@iCloud account changed, updating delegate", buf, 0xCu);

      v7 = v18;
    }

    objc_autoreleasePoolPop(context);
    [WeakRetained removeDelegate:v14];
    [WeakRetained removeRegistrationDelegate:v14];
    [v12 addDelegate:v14 queue:self->_queue];
    [v12 addRegistrationDelegate:v14 queue:self->_queue];
    objc_storeWeak(v14 + 9, v12);
  }

  [(HMDRemoteDeviceMonitor *)v9 _handleGlobalReachabilityChange];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)iCloudAccount
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 9);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)account:(id)a3 loginChanged:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(HMDRemoteDeviceMonitor *)&self->super.super.isa iCloudAccount];
  v9 = [v8 uniqueID];
  v10 = [v9 isEqual:v6];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@IDS Account login changed", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDRemoteDeviceMonitor *)v12 _handleGlobalReachabilityChange];
  }

  else
  {
    if (v14)
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Ignoring IDS Account login change on non-iCloud account", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 isActiveChanged:(BOOL)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6 = [(HMDRemoteDeviceMonitor *)&self->super.super.isa iCloudAccount];
  v7 = [v6 isEqual:v5];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMFBooleanToString();
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@IDS Account active state changed to %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDRemoteDeviceMonitor *)v9 _handleGlobalReachabilityChange];
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Ignoring IDS Account active state change on non-iCloud account", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  deviceHealthTimer = self->_deviceHealthTimer;
  if (deviceHealthTimer == v4 || self->_initialDeviceHealthTimer == v4)
  {
    v77 = v4;
    [(HMFTimer *)deviceHealthTimer resume];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v89 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Confirming all reachable devices", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = [(HMDRemoteDeviceMonitor *)v19 devices];
    v22 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v84;
      v25 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
      do
      {
        v26 = 0;
        do
        {
          if (*v84 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v83 + 1) + 8 * v26);
          if (v27)
          {
            v28 = (v27[v25[881]] & 0xA) == 0;
          }

          else
          {
            v28 = 1;
          }

          v29 = [(HMDRemoteDeviceMonitor *)v19 isReachable];
          if (!v28 || v29)
          {
            v37 = v27;
            v38 = v37;
            if (v19 && v27)
            {
              v39 = v37[8];

              if (v39)
              {
                v40 = objc_autoreleasePoolPush();
                v41 = v19;
                v42 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  v43 = HMFGetLogIdentifier();
                  v45 = [objc_getProperty(v38 v44];
                  *buf = 138543618;
                  v89 = v43;
                  v90 = 2114;
                  v91 = v45;
                  _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Trying reachability health check to device: %{public}@", buf, 0x16u);

                  v25 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
                }

                objc_autoreleasePoolPop(v40);
                [(HMDRemoteDeviceMonitor *)v41 _sendPingToDevice:v38];
              }
            }

            else
            {
            }
          }

          else
          {
            v30 = objc_autoreleasePoolPush();
            v31 = v19;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v34 = HMFGetLogIdentifier();
              if (v27)
              {
                Property = objc_getProperty(v27, v33, 16, 1);
              }

              else
              {
                Property = 0;
              }

              v36 = [Property shortDescription];
              *buf = 138543618;
              v89 = v34;
              v90 = 2114;
              v91 = v36;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Deferring ping to device while we are unreachable: %{public}@", buf, 0x16u);

              v25 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
            }

            objc_autoreleasePoolPop(v30);
            [(HMDRemoteDeviceInformation *)v27 addState:?];
          }

          ++v26;
        }

        while (v23 != v26);
        v46 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
        v23 = v46;
      }

      while (v46);
    }

    v4 = v77;
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v6 = [(HMDRemoteDeviceMonitor *)self devices];
    v7 = [v6 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v80;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v80 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v79 + 1) + 8 * v10);
          if (v11)
          {
            v12 = *(v11 + 64);
          }

          else
          {
            v12 = 0;
          }

          if (v12 == v4)
          {
            v47 = objc_autoreleasePoolPush();
            v48 = self;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              v51 = HMFGetLogIdentifier();
              if (v11)
              {
                v52 = objc_getProperty(v11, v50, 16, 1);
              }

              else
              {
                v52 = 0;
              }

              v53 = [v52 shortDescription];
              *buf = 138543618;
              v89 = v51;
              v90 = 2114;
              v91 = v53;
              _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@Timer fired for device: %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v47);
            if ([(HMDRemoteDeviceMonitor *)v48 isReachable])
            {
              if (!v11 || (*(v11 + 40) & 1) == 0)
              {
                v54 = objc_autoreleasePoolPush();
                v55 = v48;
                v56 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                {
                  v58 = HMFGetLogIdentifier();
                  v59 = v4;
                  if (v11)
                  {
                    v60 = objc_getProperty(v11, v57, 16, 1);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v61 = [v60 shortDescription];
                  *buf = 138543618;
                  v89 = v58;
                  v90 = 2114;
                  v91 = v61;
                  _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@Timer fired but should confirm is not set for device: %{public}@", buf, 0x16u);

                  v4 = v59;
                }

                objc_autoreleasePoolPop(v54);
              }

              v62 = objc_autoreleasePoolPush();
              v63 = v48;
              v64 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                v66 = HMFGetLogIdentifier();
                if (v11)
                {
                  v67 = objc_getProperty(v11, v65, 16, 1);
                }

                else
                {
                  v67 = 0;
                }

                v68 = [v67 shortDescription];
                *buf = 138543618;
                v89 = v66;
                v90 = 2114;
                v91 = v68;
                _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Retrying ping to device: %{public}@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v62);
              [(HMDRemoteDeviceMonitor *)v63 _sendPingToDevice:v11];
            }

            else
            {
              v69 = objc_autoreleasePoolPush();
              v70 = v48;
              v71 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                v73 = HMFGetLogIdentifier();
                if (v11)
                {
                  v74 = objc_getProperty(v11, v72, 16, 1);
                }

                else
                {
                  v74 = 0;
                }

                v75 = [v74 shortDescription];
                *buf = 138543618;
                v89 = v73;
                v90 = 2114;
                v91 = v75;
                _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@Deferring ping while unreachable to device: %{public}@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v69);
              [(HMDRemoteDeviceInformation *)v11 addState:?];
            }

            goto LABEL_70;
          }

          ++v10;
        }

        while (v8 != v10);
        v13 = [v6 countByEnumeratingWithState:&v79 objects:v87 count:16];
        v8 = v13;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v17;
      v90 = 2112;
      v91 = v4;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unhandled timer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

LABEL_70:

  v76 = *MEMORY[0x277D85DE8];
}

- (id)devices
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(a1 + 120);
    v3 = NSAllMapTableValues(v2);

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)networkMonitorIsUnreachable:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDRemoteDeviceMonitor_networkMonitorIsUnreachable___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__HMDRemoteDeviceMonitor_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@NetworkMonitor status changed to disconnected", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleGlobalReachabilityChange];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)networkMonitorIsReachable:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDRemoteDeviceMonitor_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__HMDRemoteDeviceMonitor_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@NetworkMonitor status changed to connected", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleGlobalReachabilityChange];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)newConfirmationHandlerWithTimeout:(double)a3 workQueue:(id)a4 handler:(id)a5
{
  v7 = MEMORY[0x277D0F920];
  v8 = a5;
  v9 = a4;
  v10 = [[v7 alloc] initWithTimeInterval:0 options:a3];
  v11 = [[HMDRemoteDeviceConfirmationHandler alloc] initWithTimeoutTimer:v10 workQueue:v9 handler:v8];

  return v11;
}

- (id)newSendMessageOperationWithMessage:(id)a3
{
  v4 = a3;
  v5 = [HMDIDSSendMessageOperation alloc];
  if (self)
  {
    service = self->_service;
  }

  else
  {
    service = 0;
  }

  v7 = [(HMDIDSSendMessageOperation *)v5 initWithMessage:v4 service:service];

  return v7;
}

- (id)newDeviceMonitoringTimer
{
  v2 = objc_alloc(MEMORY[0x277D0F7B0]);
  v3 = *&remoteDeviceMonitorRetryTimerMinimumTimeInterval;
  v4 = *&remoteDeviceMonitorRetryTimerMaximumTimeInterval;
  v5 = remoteDeviceMonitorRetryTimerFactor;

  return [v2 initWithMinimumTimeInterval:v5 maximumTimeInterval:0 exponentialFactor:v3 options:v4];
}

- (id)newRepeatingDeviceHealthTimer
{
  v2 = objc_alloc(MEMORY[0x277D0F920]);
  v3 = *&remoteDeviceMonitorHealthTimerTimeInterval;

  return [v2 initWithTimeInterval:4 options:v3];
}

- (id)newInitialDeviceHealthTimer
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *&remoteDeviceMonitorHealthTimerTimeInterval;
  v4 = arc4random_uniform(*&remoteDeviceMonitorHealthTimerTimeInterval) + v3 / 2;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Initial health timer interval is %d seconds", &v11, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  result = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v4];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleAccountRemoved:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDRemoteDeviceMonitor_handleAccountRemoved___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __47__HMDRemoteDeviceMonitor_handleAccountRemoved___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

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
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v5 shortDescription];
      *buf = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping monitoring account: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [v5 devices];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(HMDRemoteDeviceMonitor *)*(a1 + 40) _stopMonitoringDevice:?];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringDevice:(uint64_t)a1
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (v3)
    {
      os_unfair_lock_lock_with_options();
      v4 = *(a1 + 120);
      v5 = [v4 objectForKey:v3];

      if (v5)
      {
        v6 = *(a1 + 120);
        [v6 removeObjectForKey:v3];

        os_unfair_lock_unlock((a1 + 8));
        v7 = objc_autoreleasePoolPush();
        v8 = a1;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v12 = [objc_getProperty(v5 v11];
          v20 = 138543618;
          v21 = v10;
          v22 = 2114;
          v23 = v12;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Stopping monitoring of device: %{public}@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v13 = v8[10];
        [v13 stopObservingPresenceForDevice:{objc_getProperty(v5, v14, 16, 1)}];

        v15 = v8[4];
        v17 = [objc_getProperty(v5 v16];
        [v15 removeListener:v8 forDeviceAddress:v17];

        v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
        [(HMDRemoteDeviceInformation *)v5 completeConfirmationsWithError:v18];
      }

      else
      {
        os_unfair_lock_unlock((a1 + 8));
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceRemovedFromAccount:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDRemoteDeviceMonitor_handleDeviceRemovedFromAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __57__HMDRemoteDeviceMonitor_handleDeviceRemovedFromAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

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
    [(HMDRemoteDeviceMonitor *)*(a1 + 40) _stopMonitoringDevice:v6];
    v5 = v6;
  }
}

- (void)handleCurrentDeviceUpdate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDRemoteDeviceMonitor_handleCurrentDeviceUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __52__HMDRemoteDeviceMonitor_handleCurrentDeviceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
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

  v5 = [v4 device];

  if (v5)
  {
    [(HMDRemoteDeviceMonitor *)*(a1 + 40) _stopMonitoringDevice:v5];
  }

  [*(a1 + 40) _handleGlobalReachabilityChange];
}

- (void)confirmDevice:(id)a3 forClient:(id)a4 timeout:(double)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__HMDRemoteDeviceMonitor_confirmDevice_forClient_timeout_completionHandler___block_invoke;
    block[3] = &unk_2797309E0;
    block[4] = self;
    v17 = v10;
    v18 = v11;
    v20 = a5;
    v19 = v13;
    dispatch_async(queue, block);
  }

  else if (v12)
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (v13)[2](v13, v15);
  }
}

void __76__HMDRemoteDeviceMonitor_confirmDevice_forClient_timeout_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(HMDRemoteDeviceMonitor *)*(a1 + 32) _startMonitoringDevice:0 withInitialReachability:*(a1 + 48) forClient:?];
  if (v2)
  {
    [(HMDRemoteDeviceMonitor *)*(a1 + 32) _confirmDevice:v2 timeout:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain device information even after monitoring was started for device: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleGlobalReachabilityChange
{
  v2 = self;
  v59 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (__HMDRemoteDeviceMonitorReachable(v2))
  {
    [(HMDRemoteDeviceMonitor *)v2 setReachable:?];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v3 = [(HMDRemoteDeviceMonitor *)v2 devices];
    v4 = [v3 objectEnumerator];
    v5 = [v4 allObjects];

    v6 = [v5 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (!v6)
    {
      goto LABEL_43;
    }

    v9 = v6;
    v10 = *v50;
    *&v8 = 138543618;
    v41 = v8;
    v43 = v2;
    v44 = v5;
    v42 = *v50;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        if (v12)
        {
          if ([objc_getProperty(*(*(&v49 + 1) + 8 * v11) v7])
          {
            goto LABEL_22;
          }

          v13 = *(v12 + 8);
          v14 = *(v12 + 40);
          if ((v14 & 8) != 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if ([0 isCurrentDevice])
          {
            goto LABEL_22;
          }

          LOBYTE(v14) = 0;
          v13 = 0;
        }

        v15 = objc_autoreleasePoolPush();
        v16 = v2;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          if (v12)
          {
            Property = objc_getProperty(v12, v18, 16, 1);
          }

          else
          {
            Property = 0;
          }

          v21 = [Property shortDescription];
          *buf = v41;
          v55 = v19;
          v56 = 2114;
          v57 = v21;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Marking formerly unreachable device as reachable now that we are reachable: %{public}@", buf, 0x16u);

          v10 = v42;
          v2 = v43;
        }

        objc_autoreleasePoolPop(v15);
        [(HMDRemoteDeviceMonitor *)v16 handleReachabilityChange:v12 deviceInformation:5uLL reason:0 didStartMonitoringDevice:?];
        v5 = v44;
LABEL_15:
        if (v13 & 1) == 0 && (v14)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = v2;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            if (v12)
            {
              v27 = objc_getProperty(v12, v25, 16, 1);
            }

            else
            {
              v27 = 0;
            }

            v28 = [v27 shortDescription];
            *buf = v41;
            v55 = v26;
            v56 = 2114;
            v57 = v28;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Confirming device due to network change: %{public}@", buf, 0x16u);

            v10 = v42;
            v2 = v43;
          }

          objc_autoreleasePoolPop(v22);
          [(HMDRemoteDeviceMonitor *)v23 _confirmDevice:v12 timeout:0 completionHandler:65.0];
          v5 = v44;
        }

LABEL_22:
        ++v11;
      }

      while (v9 != v11);
      v29 = [v5 countByEnumeratingWithState:&v49 objects:v58 count:16];
      v9 = v29;
      if (!v29)
      {
        goto LABEL_43;
      }
    }
  }

  [(HMDRemoteDeviceMonitor *)v2 setReachable:?];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v30 = [(HMDRemoteDeviceMonitor *)v2 devices];
  v31 = [v30 objectEnumerator];
  v5 = [v31 allObjects];

  v32 = [v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v32)
  {
    v34 = v32;
    v35 = *v46;
    do
    {
      v36 = 0;
      do
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v5);
        }

        v37 = *(*(&v45 + 1) + 8 * v36);
        if (v37)
        {
          v38 = objc_getProperty(*(*(&v45 + 1) + 8 * v36), v33, 16, 1);
        }

        else
        {
          v38 = 0;
        }

        if (([v38 isCurrentDevice] & 1) == 0)
        {
          [(HMDRemoteDeviceMonitor *)v2 handleReachabilityChange:v37 deviceInformation:5uLL reason:0 didStartMonitoringDevice:?];
        }

        ++v36;
      }

      while (v34 != v36);
      v39 = [v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
      v34 = v39;
    }

    while (v39);
  }

LABEL_43:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)setReachable:(uint64_t)a1
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_13:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  os_unfair_lock_lock_with_options();
  if (*(a1 + 40) != a2)
  {
    *(a1 + 40) = a2;
    os_unfair_lock_unlock((a1 + 8));
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v6 = [WeakRetained device];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = a1;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = v10;
        v12 = "unreachable";
        if (a2)
        {
          v12 = "reachable";
        }

        v14 = 138543618;
        v15 = v10;
        v16 = 2080;
        v17 = v12;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Marking current device as %s", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDRemoteDeviceMonitor *)v8 notifyDeviceReachabilityChange:a2 forDevice:v6];
      logAndPostNotification(@"HMDRemoteDeviceMonitorReachableNotification", v8, 0);
    }

    goto LABEL_13;
  }

  v4 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock((a1 + 8));
}

- (void)stopMonitoringDevice:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDRemoteDeviceMonitor_stopMonitoringDevice_forClient___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }
}

void __57__HMDRemoteDeviceMonitor_stopMonitoringDevice_forClient___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[15];
  }

  v4 = v3;
  v5 = [v4 objectForKey:*(a1 + 40)];

  if (v5)
  {
    v6 = v5[7];
    [v6 removeObject:*(a1 + 48)];

    v7 = v5[7];
    v8 = [v7 count];

    if (!v8)
    {
      os_unfair_lock_unlock(v2 + 2);
      [(HMDRemoteDeviceMonitor *)*(a1 + 32) _stopMonitoringDevice:?];
      goto LABEL_10;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v19 = v9;
      v12 = HMFGetLogIdentifier();
      v13 = v5[7];
      v14 = [v13 count];
      v16 = objc_getProperty(v5, v15, 16, 1);
      v17 = [v16 shortDescription];
      *buf = 138543874;
      v21 = v12;
      v22 = 2048;
      v23 = v14;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@There are still %lu clients monitoring device: %{public}@", buf, 0x20u);

      v9 = v19;
    }

    objc_autoreleasePoolPop(v9);
  }

  os_unfair_lock_unlock(v2 + 2);
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringDevice:(id)a3 withInitialReachability:(id)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HMDRemoteDeviceMonitor_startMonitoringDevice_withInitialReachability_forClient___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

id __82__HMDRemoteDeviceMonitor_startMonitoringDevice_withInitialReachability_forClient___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] shortDescription];
    v7 = a1[6];
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received request to start monitoring device: %{public}@ with initial reachability: %{public}@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [(HMDRemoteDeviceMonitor *)a1[4] _startMonitoringDevice:a1[6] withInitialReachability:a1[7] forClient:?];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSArray)unreachableDevices
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(HMDRemoteDeviceMonitor *)self devices];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v5;
  v8 = *v19;
  do
  {
    v9 = 0;
    do
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      if (v10)
      {
        if (v10[8])
        {
          goto LABEL_10;
        }

        Property = objc_getProperty(v10, v6, 16, 1);
      }

      else
      {
        Property = 0;
      }

      [v3 addObject:{Property, v18}];
LABEL_10:
      ++v9;
    }

    while (v7 != v9);
    v12 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    v7 = v12;
  }

  while (v12);
LABEL_14:

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  }

  else
  {
    WeakRetained = 0;
  }

  v14 = [WeakRetained device];

  if (v14 && ![(HMDRemoteDeviceMonitor *)self isReachable])
  {
    [v3 addObject:v14];
  }

  v15 = [v3 allObjects];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDRemoteDeviceMonitor_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__HMDRemoteDeviceMonitor_start__block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
  }

  [v7 addDelegate:v6 queue:*(v6 + 16)];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 64);
  }

  else
  {
    v9 = 0;
  }

  [v9 addDelegate:v8 queue:*(v8 + 16)];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 56);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 iCloudAccount];
  [v12 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
  [v12 addRegistrationDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
  v13 = *(a1 + 32);
  v41 = v12;
  if (v13 && (objc_storeWeak((v13 + 72), v12), (v14 = *(a1 + 32)) != 0))
  {
    v15 = *(v14 + 80);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D18518];
  [v15 addObserver:? forSubActivity:?];
  v17 = *(a1 + 32);
  if (v17)
  {
    dispatch_assert_queue_V2(*(v17 + 16));
    os_unfair_lock_lock_with_options();
    *(v17 + 41) = 1;
    os_unfair_lock_unlock((v17 + 8));
    v18 = *(a1 + 32);
  }

  else
  {
    v18 = 0;
  }

  [v18 _handleGlobalReachabilityChange];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(HMDRemoteDeviceMonitor *)*(a1 + 32) devices];
  v19 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v43 = *v45;
    do
    {
      v21 = 0;
      do
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v44 + 1) + 8 * v21);
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 32);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          if (v22)
          {
            Property = objc_getProperty(v22, v26, 16, 1);
          }

          else
          {
            Property = 0;
          }

          v29 = [Property shortDescription];
          *buf = 138543618;
          v49 = v27;
          v50 = 2114;
          v51 = v29;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Initializing IDS Activity for device: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v30 = *(a1 + 32);
        if (v30)
        {
          v30 = v30[10];
        }

        v32 = v30;
        if (v22)
        {
          v33 = objc_getProperty(v22, v31, 16, 1);
        }

        else
        {
          v33 = 0;
        }

        [v32 startObservingPresenceForDevice:v33];

        v35 = [*(a1 + 32) transportReachabilityObserver];
        v36 = *(a1 + 32);
        if (v22)
        {
          v37 = objc_getProperty(v22, v34, 16, 1);
        }

        else
        {
          v37 = 0;
        }

        v38 = [v37 deviceAddress];
        [v35 addListener:v36 forDeviceAddress:v38];

        if (!isWatch())
        {
          [(HMDRemoteDeviceInformation *)v22 addState:?];
          [(HMDRemoteDeviceMonitor *)*(a1 + 32) _confirmDevice:v22 timeout:0 completionHandler:65.0];
        }

        ++v21;
      }

      while (v20 != v21);
      v39 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      v20 = v39;
    }

    while (v39);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)setTransportReachabilityObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  transportReachabilityObserver = self->_transportReachabilityObserver;
  self->_transportReachabilityObserver = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDModernTransportDeviceReachabilityObserver)transportReachabilityObserver
{
  os_unfair_lock_lock_with_options();
  v3 = self->_transportReachabilityObserver;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDRemoteDeviceMonitor;
  [(HMDRemoteDeviceMonitor *)&v4 dealloc];
}

- (id)dumpState
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(HMDRemoteDeviceMonitor *)self devices];
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) description];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDRemoteDeviceMonitor)initWithAccountRegistry:(id)a3 activityObserver:(id)a4 queue:(id)a5 service:(id)a6 modernService:(id)a7 accountManager:(id)a8 remoteAccountManager:(id)a9 netMonitor:(id)a10 factory:(id)a11
{
  v38 = a3;
  v37 = a4;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v18 = a8;
  obj = a9;
  v33 = a10;
  v19 = a11;
  v40.receiver = self;
  v40.super_class = HMDRemoteDeviceMonitor;
  v20 = [(HMDRemoteDeviceMonitor *)&v40 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_queue, a5);
    v22 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v21->_operationQueue;
    v21->_operationQueue = v22;

    [(NSOperationQueue *)v21->_operationQueue setName:@"HMDRemoteDeviceMonitor"];
    [(NSOperationQueue *)v21->_operationQueue setQualityOfService:9];
    [(NSOperationQueue *)v21->_operationQueue setUnderlyingQueue:v21->_queue];
    v24 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceInformationByDevice = v21->_deviceInformationByDevice;
    v21->_deviceInformationByDevice = v24;

    objc_storeStrong(&v21->_accountRegistry, a3);
    objc_storeStrong(&v21->_activityObserver, a4);
    objc_storeStrong(&v21->_service, a6);
    objc_storeStrong(&v21->_modernService, a7);
    objc_storeWeak(&v21->_accountManager, v18);
    objc_storeWeak(&v21->_remoteAccountManager, obj);
    objc_storeStrong(&v21->_netMonitor, a10);
    [(HMFNetMonitor *)v21->_netMonitor setDelegate:v21];
    objc_storeWeak(&v21->_factory, v19);
    v26 = [v19 newInitialDeviceHealthTimer];
    initialDeviceHealthTimer = v21->_initialDeviceHealthTimer;
    v21->_initialDeviceHealthTimer = v26;

    [(HMFTimer *)v21->_initialDeviceHealthTimer setDelegateQueue:v21->_queue];
    [(HMFTimer *)v21->_initialDeviceHealthTimer setDelegate:v21];
    [(HMFTimer *)v21->_initialDeviceHealthTimer resume];
    v28 = [v19 newRepeatingDeviceHealthTimer];
    deviceHealthTimer = v21->_deviceHealthTimer;
    v21->_deviceHealthTimer = v28;

    [(HMFTimer *)v21->_deviceHealthTimer setDelegateQueue:v21->_queue];
    [(HMFTimer *)v21->_deviceHealthTimer setDelegate:v21];
    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v21 selector:sel_handleCurrentDeviceUpdate_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v18];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 addObserver:v21 selector:sel_handleAccountRemoved_ name:@"HMDAccountRegistryRemovedAccountNotification" object:v18];

    v21->_reachable = __HMDRemoteDeviceMonitorReachable(v21);
  }

  return v21;
}

- (HMDRemoteDeviceMonitor)initWithAccountRegistry:(id)a3 activityObserver:(id)a4 accountManager:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[HMDIDSServiceManager sharedManager];
  v12 = [v11 service];

  if (!v12)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: IDSService is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [[HMDAssertionLogEvent alloc] initWithReason:@"IDSService is nil"];
    v32 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v32 submitLogEvent:v31];
  }

  v13 = +[HMDIDSServiceManager sharedManager];
  v14 = [v13 serviceWithName:@"com.apple.private.alloy.home"];

  if (!v14)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v8;
      *buf = 138543362;
      v54 = v37;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: IDSService for Modern Transport is nil", buf, 0xCu);

      v8 = v36;
    }

    objc_autoreleasePoolPop(v33);
    v38 = [[HMDAssertionLogEvent alloc] initWithReason:@"IDSService for Modern Transport is nil"];
    v39 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v39 submitLogEvent:v38];
  }

  if ([v12 isEqual:v14])
  {
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      HMFGetLogIdentifier();
      v44 = v43 = v8;
      *buf = 138543362;
      v54 = v44;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: IDSService for Modern Transport and legacy transport is the same", buf, 0xCu);

      v8 = v43;
    }

    objc_autoreleasePoolPop(v40);
    v45 = [[HMDAssertionLogEvent alloc] initWithReason:@"IDSService for Modern Transport and legacy transport is the same"];
    v46 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v46 submitLogEvent:v45];

    if (v12)
    {
      goto LABEL_5;
    }
  }

  else if (v12)
  {
LABEL_5:
    v15 = HMDispatchQueueNameString();
    v16 = [v15 UTF8String];
    v52 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v16, v52);
    +[HMDRemoteAccountManager sharedManager];
    v18 = v14;
    v19 = v12;
    v20 = v10;
    v21 = v9;
    v23 = v22 = v8;
    v24 = [objc_alloc(MEMORY[0x277D0F868]) initWithNetAddress:0];
    v25 = [(HMDRemoteDeviceMonitor *)self initWithAccountRegistry:v22 activityObserver:v21 queue:v17 service:v19 modernService:v18 accountManager:v20 remoteAccountManager:v23 netMonitor:v24 factory:self];

    v8 = v22;
    v9 = v21;
    v10 = v20;
    v12 = v19;
    v14 = v18;

    v26 = v25;
    goto LABEL_18;
  }

  v47 = objc_autoreleasePoolPush();
  v25 = self;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v49;
    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@An IDS service is not available", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v47);
  v26 = 0;
LABEL_18:

  v50 = *MEMORY[0x277D85DE8];
  return v26;
}

- (HMDRemoteDeviceMonitor)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t59_161022 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t59_161022, &__block_literal_global_161023);
  }

  v3 = logCategory__hmf_once_v60_161024;

  return v3;
}

uint64_t __37__HMDRemoteDeviceMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v60_161024;
  logCategory__hmf_once_v60_161024 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)pingMessageForDevice:(id)a3 timeout:(double)a4 restriction:(unint64_t)a5
{
  v7 = a3;
  v8 = [HMDRemoteDeviceMessageDestination alloc];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [v9 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v11 = [(HMDRemoteDeviceMessageDestination *)v8 initWithTarget:v10 device:v7];

  v12 = [v7 version];

  v13 = +[HMDHomeKitVersion version3];
  v14 = [v12 isAtLeastVersion:v13];

  v15 = [HMDRemoteMessage alloc];
  if (v14)
  {
    v16 = @"kPingInternalRequestKey";
  }

  else
  {
    v16 = @"kElectDeviceForIDSSessionKey";
  }

  v17 = [(HMDRemoteMessage *)v15 initWithName:v16 destination:v11 payload:0 type:0 timeout:0 secure:a5 restriction:a4];

  return v17;
}

@end