@interface HMDVideoStreamReconfigure
+ (id)logCategory;
- (HMDVideoStreamReconfigure)initWithSessionID:(id)a3 workQueue:(id)a4 delegate:(id)a5;
- (id)logIdentifier;
- (void)_addReconfigureEvent:(uint64_t)a1;
- (void)_processDownlinkQuality;
- (void)downlinkQualityChanged:(id)a3;
- (void)setDowngradeDebouceTimer:(uint64_t)a1;
- (void)setUpgradeDebouceTimer:(uint64_t)a1;
- (void)timerDidFire:(id)a3;
- (void)updateReconfigurationMode:(BOOL)a3;
@end

@implementation HMDVideoStreamReconfigure

- (void)timerDidFire:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    if (self->_upgradeDebouceTimer != v4)
    {
      downgradeDebouceTimer = self->_downgradeDebouceTimer;
LABEL_4:
      if (downgradeDebouceTimer == v4)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = self;
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          v24 = 138543362;
          v25 = v9;
          _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Downgrade debouce timer has fired, calling network has deteriorated", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v6);
        [(HMDVideoStreamReconfigure *)v7 setDowngradeDebouceTimer:?];
        if (self)
        {
          dispatch_assert_queue_V2(v7->_workQueue);
          v7->_reconfigurationMode = 1;
          [(HMDVideoStreamReconfigure *)v7 _addReconfigureEvent:?];
          v10 = objc_autoreleasePoolPush();
          v11 = v7;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            v24 = 138543362;
            v25 = v13;
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStreamReconfigureDidNetworkDeteriorate", &v24, 0xCu);
          }

          objc_autoreleasePoolPop(v10);
          WeakRetained = objc_loadWeakRetained(v11 + 8);
          if (objc_opt_respondsToSelector())
          {
            [WeakRetained videoStreamReconfigureDidNetworkDeteriorate:v11];
          }

LABEL_20:

          goto LABEL_21;
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
    downgradeDebouceTimer = 0;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Upgrade debouce timer has fired, calling network has improved", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDVideoStreamReconfigure *)v16 setUpgradeDebouceTimer:?];
  if (self)
  {
    dispatch_assert_queue_V2(v16->_workQueue);
    v16->_reconfigurationMode = 1;
    [(HMDVideoStreamReconfigure *)v16 _addReconfigureEvent:?];
    v19 = objc_autoreleasePoolPush();
    v20 = v16;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Calling delegate videoStreamReconfigureDidNetworkImprove", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    WeakRetained = objc_loadWeakRetained(v20 + 8);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained videoStreamReconfigureDidNetworkImprove:v20];
    }

    goto LABEL_20;
  }

LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setUpgradeDebouceTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setDowngradeDebouceTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (void)_addReconfigureEvent:(uint64_t)a1
{
  dispatch_assert_queue_V2(*(a1 + 48));
  if ([*(a1 + 24) count] == 10)
  {
    [*(a1 + 24) removeObjectAtIndex:0];
  }

  v4 = [[HMDVideoStreamReconfigureEvent alloc] initWithEventType:a2];
  [*(a1 + 24) addObject:v4];
}

- (void)downlinkQualityChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v5 = [v4 copy];
    objc_storeStrong(&self->_downlinkQualityInfo, v5);

    if (self->_reconfigurationMode)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not processing the downlink quality change yet, since the stream is in reconfiguration mode", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      [(HMDVideoStreamReconfigure *)self _processDownlinkQuality];
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processDownlinkQuality
{
  v92 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v81 = *MEMORY[0x277D85DE8];
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 48));
  v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
  v3 = *(a1 + 16);
  dispatch_assert_queue_V2(*(a1 + 48));
  v4 = objc_autoreleasePoolPush();
  v5 = a1;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v85 = v7;
    v86 = 2112;
    v87 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Downlink quality changed with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v83 = [v3 hmf_numberForKey:*MEMORY[0x277CE57C0]];
  v8 = [v3 hmf_numberForKey:*MEMORY[0x277CE57B8]];
  v9 = [v3 hmf_BOOLForKey:*MEMORY[0x277CE57A8]];
  v10 = [v3 hmf_BOOLForKey:*MEMORY[0x277CE57B0]];
  if (*(v5 + 4) && (v9 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v5;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Upgrade debounce timer is set, but not operating at maximum anymore, resetting the timer", buf, 0xCu);

      v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
    }

    objc_autoreleasePoolPop(v11);
    objc_storeStrong(v12 + 4, 0);
  }

  if (!((*(v5 + 5) == 0) | v10 & 1))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v5;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Downgrade debounce timer is set, but not operating at minimum anymore, resetting the timer", buf, 0xCu);

      v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
    }

    objc_autoreleasePoolPop(v15);
    objc_storeStrong(v16 + 5, 0);
  }

  if (v10)
  {
    v19 = [v83 isEqualToNumber:v8];
    v20 = *(v5 + 5);
    if (v19)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v5;
      v23 = HMFGetOSLogHandle();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
      if (!v20)
      {
        if (v24)
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v85 = v41;
          v86 = 2048;
          v87 = videoAttributesDowngradeDebouceTimer;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Starting downgrade debouce timer with interval %llu seconds", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v42 = objc_alloc(MEMORY[0x277D0F920]);
        v43 = [v42 initWithTimeInterval:0 options:videoAttributesDowngradeDebouceTimer];
        objc_storeStrong(v22 + 5, v43);

        [v22[5] setDelegate:v22];
        v44 = v22[5];
        v45 = v22[6];
        [v44 setDelegateQueue:v45];

        [v22[5] resume];
        goto LABEL_51;
      }

      if (v24)
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v85 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Downgrade debounce timer is already scheduled", buf, 0xCu);
      }

      v26 = v21;
      goto LABEL_25;
    }

    if (!v20)
    {
      goto LABEL_51;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v5;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Downgrade debounce timer is set, but optimal and operating bitrates arent matching, resetting the timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v37 = 40;
    goto LABEL_34;
  }

  if (v9)
  {
    v27 = [v83 isEqualToNumber:v8];
    v28 = *(v5 + 4);
    if (v27)
    {
      if (!v28)
      {
        v82 = v8;
        v46 = *(v5 + 9);
        dispatch_assert_queue_V2(*(v5 + 6));
        if ([*(v5 + 3) count] >= 4)
        {
          v47 = *(v5 + 3);
          v48 = [v47 objectAtIndex:{objc_msgSend(v47, "count") - 1}];

          v49 = *(v5 + 3);
          v50 = [v49 objectAtIndex:{objc_msgSend(v49, "count") - 2}];

          v51 = *(v5 + 3);
          v52 = [v51 objectAtIndex:{objc_msgSend(v51, "count") - 3}];

          v53 = objc_autoreleasePoolPush();
          v54 = v5;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v57 = v56 = v50;
            *buf = 138544130;
            v85 = v57;
            v86 = 2112;
            v87 = v48;
            v88 = 2112;
            v89 = v56;
            v90 = 2112;
            v91 = v52;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@reconfigure_1: %@, reconfigure_2: %@, reconfigure_3: %@", buf, 0x2Au);

            v50 = v56;
          }

          objc_autoreleasePoolPop(v53);
          v8 = v82;
          if ([v48 eventType] == 2 && objc_msgSend(v50, "eventType") == 1 && objc_msgSend(v52, "eventType") == 2 && (objc_msgSend(v52, "timestamp"), v58 = v50, v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "timeIntervalSinceNow"), v61 = fabs(v60), v59, v50 = v58, v61 < 120.0))
          {
            v73 = objc_autoreleasePoolPush();
            v74 = v54;
            v75 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              v76 = HMFGetLogIdentifier();
              *buf = 138543618;
              v85 = v76;
              v86 = 2048;
              v87 = *&v61;
              _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Downgrade-Upgrade-Downgrade has happened within %lf seconds", buf, 0x16u);

              v50 = v58;
            }

            objc_autoreleasePoolPop(v73);
            v77 = objc_autoreleasePoolPush();
            v78 = v74;
            v79 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              v80 = HMFGetLogIdentifier();
              *buf = 138543618;
              v85 = v80;
              v86 = 2048;
              v87 = 0x405E000000000000;
              _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_INFO, "%{public}@A Flip flop has been detected, so upgrade is going to be backed off by %lf seconds", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v77);
            v46 = 120.0;
            v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
            v8 = v82;
          }

          else
          {

            v2 = &OBJC_IVAR___HMDHome__networkRouterSupportDisableReason;
          }
        }

        v62 = objc_autoreleasePoolPush();
        v63 = v5;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v85 = v65;
          v86 = 2048;
          v87 = *&v46;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Starting upgrade debouce timer with interval %lf seconds", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
        v66 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v46];
        objc_storeStrong(v63 + 4, v66);

        [v63[4] setDelegate:v63];
        v67 = v63[4];
        v68 = v63[6];
        [v67 setDelegateQueue:v68];

        [v63[4] resume];
        v69 = videoAttributesUpgradeDebouceTimer;
        if (*(v63 + 9) + *(v63 + 9) < videoAttributesUpgradeDebouceTimer)
        {
          v69 = *(v63 + 9) + *(v63 + 9);
        }

        *(v63 + 9) = v69;
        goto LABEL_51;
      }

      v29 = objc_autoreleasePoolPush();
      v30 = v5;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v85 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Upgrade debounce timer is already scheduled", buf, 0xCu);
      }

      v26 = v29;
LABEL_25:
      objc_autoreleasePoolPop(v26);
      goto LABEL_51;
    }

    if (!v28)
    {
      goto LABEL_51;
    }

    v38 = objc_autoreleasePoolPush();
    v34 = v5;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Upgrade debounce timer is set, but optimal and operating bitrates arent matching, resetting the timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    v37 = 32;
LABEL_34:
    objc_storeStrong(&v34[v37], 0);
  }

LABEL_51:

  v70 = v2[177];
  v71 = *&v5[v70];
  *&v5[v70] = 0;
  v72 = *MEMORY[0x277D85DE8];
}

- (void)updateReconfigurationMode:(BOOL)a3
{
  v4 = self;
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = self->_workQueue;
  }

  dispatch_assert_queue_V2(&self->super.super);
  v5 = objc_autoreleasePoolPush();
  v6 = v4;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    if (v4)
    {
      reconfigurationMode = v6->_reconfigurationMode;
    }

    v10 = HMFBooleanToString();
    v11 = HMFBooleanToString();
    v17 = 138543874;
    v18 = v8;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating reconfiguration mode from %@ to %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    v6->_reconfigurationMode = a3;
    if (v6->_downlinkQualityInfo)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v6;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Downlink quality info is present, processing it", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDVideoStreamReconfigure *)v13 _processDownlinkQuality];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  if (self)
  {
    self = self->_sessionID;
  }

  return [(HMFObject *)self description];
}

- (HMDVideoStreamReconfigure)initWithSessionID:(id)a3 workQueue:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMDVideoStreamReconfigure;
  v12 = [(HMDVideoStreamReconfigure *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionID, a3);
    objc_storeStrong(&v13->_workQueue, a4);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    reconfigureEvents = v13->_reconfigureEvents;
    v13->_reconfigureEvents = v14;

    v13->_upgradeInterval = 2.0;
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_15216 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_15216, &__block_literal_global_15217);
  }

  v3 = logCategory__hmf_once_v1_15218;

  return v3;
}

void __40__HMDVideoStreamReconfigure_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_15218;
  logCategory__hmf_once_v1_15218 = v1;
}

@end