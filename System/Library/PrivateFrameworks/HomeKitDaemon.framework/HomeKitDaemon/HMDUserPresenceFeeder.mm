@interface HMDUserPresenceFeeder
+ (id)logCategory;
- (BOOL)_updatePresenceToResidentForUser:(id)a3 presenceAuthStatus:(id)a4 authChanging:(BOOL)a5 reason:(id)a6 fmfStatus:(id)a7;
- (HMDUserPresenceFeeder)init;
- (HMDUserPresenceFeeder)initWithLocation:(id)a3;
- (id)_sendPresenceAuthStatusForUser:(id)a3 presenceAuthStatus:(id)a4 presenceRegionStatus:(id)a5 presenceComputeStatus:(id)a6 reason:(id)a7;
- (void)_handleLocationAuthorizationChangedNotification:(id)a3;
- (void)_handlePrivilegeUpdate:(id)a3;
- (void)_registerForMessages;
- (void)_sendPresenceReport:(unint64_t)a3;
- (void)_sendPresenceUpdateToResident:(id)a3;
- (void)_sendPresenceUpdateToResidentForUser:(id)a3 presenceAuthStatus:(id)a4 authChanging:(BOOL)a5 reason:(id)a6;
- (void)_startRefreshTimer;
- (void)_updatePresenceComputeStatus:(id)a3;
- (void)accountAvailabilityChanged:(id)a3;
- (void)configure:(id)a3 messageDispatcher:(id)a4;
- (void)didEndFeedSession:(id)a3;
- (void)fetchCKAccountStatusAndSendPresenceReport;
- (void)fmfStatusUpdateNotification:(id)a3;
- (void)handleDidArriveHomeNotification:(id)a3;
- (void)handleDidLeaveHomeNotification:(id)a3;
- (void)handleHomeDataLoadedNotification:(id)a3;
- (void)handleResidentDeviceConfirmed:(id)a3;
- (void)handleTimerFiredNotification:(id)a3;
- (void)homeDataProcessed;
- (void)presenceAuthChanged;
- (void)presenceAuthStatusChangedForUser:(id)a3 presenceAuthStatus:(id)a4;
- (void)residentChanged;
- (void)sendInitialPresenceUpdate;
- (void)setPresenceRegionStatus:(unint64_t)a3;
@end

@implementation HMDUserPresenceFeeder

- (void)handleDidLeaveHomeNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self home];
  v6 = [(HMDHomePresenceBase *)self workQueue];
  v7 = v6;
  if (v5 && v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDUserPresenceFeeder_handleDidLeaveHomeNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v6, block);
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
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@home or workQueue unexpectedly nil -- likely called before configure", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleDidArriveHomeNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self home];
  v6 = [(HMDHomePresenceBase *)self workQueue];
  v7 = v6;
  if (v5 && v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDUserPresenceFeeder_handleDidArriveHomeNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v6, block);
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
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@home or workQueue unexpectedly nil -- likely called before configure", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didEndFeedSession:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserPresenceFeeder *)self currentFeedSession];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5 == v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@%@ is complete", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDUserPresenceFeeder *)v7 setCurrentFeedSession:0];
    v12 = [HMDUserPresenceFeed alloc];
    v13 = [v4 user];
    v14 = [v4 presenceAuthStatus];
    v15 = [v4 presenceComputeStatus];
    v16 = [v4 presenceRegionStatus];
    v17 = [v4 reason];
    v18 = [(HMDUserPresenceFeed *)v12 initWithUser:v13 presenceAuthStatus:v14 presenceComputeStatus:v15 presenceRegion:v16 reason:v17];
    [(HMDUserPresenceFeeder *)v7 setLastSentFeed:v18];

    v19 = objc_autoreleasePoolPush();
    v20 = v7;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [(HMDUserPresenceFeeder *)v20 lastSentFeed];
      v25 = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating last sent feed to %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDUserPresenceFeeder *)v20 _startRefreshTimer];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v10;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@ is not tracked", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleLocationAuthorizationChangedNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_numberForKey:@"HMLocationAuthorizationKey"];

  if (v6)
  {
    [v6 integerValue];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMLocationAuthorizationAsString();
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Latest Location Authorization is %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDUserPresenceFeeder *)v8 _sendPresenceReport:5];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No location authorization key in the message", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updatePresenceComputeStatus:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self home];
  v6 = [v5 presenceComputeStatus];
  v7 = HMFEqualObjects();

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v5 presenceComputeStatus];
      v30 = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Presence compute status is not changing from %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = [HMDHomeModel alloc];
    v14 = [v5 uuid];
    v15 = [v5 homeManager];
    v16 = [v15 uuid];
    v17 = [(HMDBackingStoreModelObject *)v13 initWithObjectChangeType:2 uuid:v14 parentUUID:v16];

    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v5 presenceComputeStatus];
      v30 = 138543874;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v4;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Presence compute status is changing from %@ to %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [v4 number];
    [(HMDHomeModel *)v17 setPresenceComputeStatus:v23];

    v24 = [MEMORY[0x277D0F818] messageWithName:@"kPresenceComputeStatusUpdate" messagePayload:0];
    v25 = [v5 backingStore];
    v26 = [v24 name];
    v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v28 = [v25 transaction:v26 options:v27];

    [v28 add:v17 withMessage:v24];
    [v28 run];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_sendPresenceAuthStatusForUser:(id)a3 presenceAuthStatus:(id)a4 presenceRegionStatus:(id)a5 presenceComputeStatus:(id)a6 reason:(id)a7
{
  v91 = *MEMORY[0x277D85DE8];
  v81 = a3;
  v12 = a4;
  v13 = a5;
  v82 = a6;
  v14 = a7;
  v15 = [(HMDHomePresenceBase *)self home];
  v16 = [v15 residentDeviceManager];
  v17 = [v16 primaryResidentDevice];

  v18 = [v17 device];
  if (!v18)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v84 = v29;
      v85 = 2112;
      v86 = 0;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Primary resident device %@ is not set, not notifying", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = MEMORY[0x277CCA9B8];
    v31 = 91;
    goto LABEL_13;
  }

  if (([v17 supportsSharedEventTriggerActivation] & 1) == 0)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v84 = v35;
      v85 = 2112;
      v86 = v18;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Primary resident device %@ is not capable of presence status, not notifying", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v30 = MEMORY[0x277CCA9B8];
    v31 = 92;
LABEL_13:
    v25 = [v30 hmErrorWithCode:v31];
    goto LABEL_36;
  }

  v80 = v18;
  v19 = +[HMDLostModeManager sharedManager];
  v20 = [v19 isLost];

  if (v20)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v84 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Device Lost. Not sending presence feed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
LABEL_35:
    v18 = v80;
    goto LABEL_36;
  }

  v36 = [(HMDUserPresenceFeeder *)self currentFeedSession];

  v78 = v13;
  v79 = v12;
  if (!v36)
  {
LABEL_26:
    if ([v14 value] == 11)
    {
      v56 = [[HMDUserPresenceFeed alloc] initWithUser:v81 presenceAuthStatus:v12 presenceComputeStatus:v82 presenceRegion:v13 reason:v14];
      v57 = [(HMDUserPresenceFeeder *)self lastSentFeed];
      v58 = [v57 isEqual:v56];

      if (v58)
      {
        v59 = objc_autoreleasePoolPush();
        v60 = self;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v62 = HMFGetLogIdentifier();
          v63 = [(HMDUserPresenceFeeder *)v60 lastSentFeed];
          *buf = 138543874;
          v84 = v62;
          v85 = 2112;
          v86 = v63;
          v87 = 2112;
          v88 = v56;
          _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Last feed %@ is same as the new feed %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v59);
        v25 = 0;
        v12 = v79;
        goto LABEL_35;
      }

      v12 = v79;
    }

    v64 = [HMDUserPresenceFeedSession alloc];
    [(HMDHomePresenceBase *)self workQueue];
    v66 = v65 = v12;
    v67 = [(HMDHomePresenceBase *)self presenceMonitorMessageTargetUUID];
    v68 = [(HMDHomePresenceBase *)self msgDispatcher];
    v69 = [(HMDUserPresenceFeedSession *)v64 initWithDelegate:self workQueue:v66 targetUUID:v67 messageDispatcher:v68 user:v81 presenceAuthStatus:v65 presenceComputeStatus:v82 presenceRegionStatus:v13 reason:v14];
    [(HMDUserPresenceFeeder *)self setCurrentFeedSession:v69];

    v70 = objc_autoreleasePoolPush();
    v71 = self;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      v74 = [(HMDUserPresenceFeeder *)v71 currentFeedSession];
      *buf = 138543874;
      v84 = v73;
      v85 = 2112;
      v86 = v74;
      v87 = 2112;
      v88 = v82;
      _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@Created new feed session %@ with new computed status : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v70);
    v75 = [(HMDUserPresenceFeeder *)v71 currentFeedSession];
    [v75 send];

    v25 = 0;
    v13 = v78;
    v12 = v79;
    goto LABEL_35;
  }

  v37 = objc_autoreleasePoolPush();
  v38 = self;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    v41 = [(HMDUserPresenceFeeder *)v38 currentFeedSession];
    *buf = 138543618;
    v84 = v40;
    v85 = 2112;
    v86 = v41;
    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@There is currently %@ active", buf, 0x16u);

    v13 = v78;
  }

  objc_autoreleasePoolPop(v37);
  v42 = [(HMDUserPresenceFeeder *)v38 currentFeedSession];
  v43 = [v42 presenceAuthStatus];
  if ((HMFEqualObjects() & 1) == 0)
  {

    goto LABEL_23;
  }

  v44 = [(HMDUserPresenceFeeder *)v38 currentFeedSession];
  v45 = [v44 presenceRegionStatus];
  v46 = HMFEqualObjects();

  v13 = v78;
  if (!v46)
  {
LABEL_23:
    v52 = objc_autoreleasePoolPush();
    v53 = v38;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138544130;
      v84 = v55;
      v85 = 2112;
      v86 = v79;
      v87 = 2112;
      v88 = v13;
      v89 = 2112;
      v90 = v80;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Current feed session is different than newer one. [presenceAuth = %@], [presenceRegion : %@], [resident: %@]", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v52);
    v12 = v79;
    goto LABEL_26;
  }

  v47 = objc_autoreleasePoolPush();
  v48 = v38;
  v49 = HMFGetOSLogHandle();
  v18 = v80;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = HMFGetLogIdentifier();
    v51 = [(HMDUserPresenceFeeder *)v48 currentFeedSession];
    *buf = 138543618;
    v84 = v50;
    v85 = 2112;
    v86 = v51;
    _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Current feed session %@ already contains same auth and region status, ignoring", buf, 0x16u);

    v13 = v78;
  }

  objc_autoreleasePoolPop(v47);
  v25 = 0;
  v12 = v79;
LABEL_36:

  v76 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)_updatePresenceToResidentForUser:(id)a3 presenceAuthStatus:(id)a4 authChanging:(BOOL)a5 reason:(id)a6 fmfStatus:(id)a7
{
  v9 = a5;
  v87 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v78 = a6;
  v12 = a7;
  v13 = [MEMORY[0x277CD1F00] authWithValue:1];
  v14 = [v12 value];
  v15 = 0;
  if (v14 <= 1)
  {
    if (v14)
    {
      v16 = 0;
      if (v14 == 1)
      {
        v16 = [MEMORY[0x277CD1F08] computeWithValue:3];
        v15 = 0;
      }

      goto LABEL_41;
    }

    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@FMF Device status is unknown, cannot send report", buf, 0xCu);
    }

    v31 = v27;
    goto LABEL_28;
  }

  if (v14 != 2)
  {
    v16 = 0;
    if (v14 != 3)
    {
LABEL_41:
      if (v9 || [v13 value] != 1 || objc_msgSend(v16, "value") != 4 || objc_msgSend(v15, "value"))
      {
LABEL_45:
        v62 = v12;
        v63 = v13;
        v64 = [(HMDUserPresenceFeeder *)self _sendPresenceAuthStatusForUser:v11 presenceAuthStatus:v13 presenceRegionStatus:v15 presenceComputeStatus:v16 reason:v78, v77];
        if (v16)
        {
          [(HMDUserPresenceFeeder *)self _updatePresenceComputeStatus:v16];
        }

        v65 = objc_autoreleasePoolPush();
        v66 = self;
        v67 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v69 = v68 = v11;
          *buf = 138544130;
          v80 = v69;
          v81 = 2112;
          v82 = v68;
          v83 = 2112;
          v84 = v63;
          v85 = 2112;
          v86 = v64;
          _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Sending status update of presence for user: %@, auth: %@ resulted in %@", buf, 0x2Au);

          v11 = v68;
        }

        objc_autoreleasePoolPop(v65);
        v44 = v64 == 0;

        v12 = v62;
        v13 = v63;
        goto LABEL_50;
      }

      v72 = objc_autoreleasePoolPush();
      v73 = self;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v76 = v75 = v11;
        *buf = 138543362;
        v80 = v76;
        _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Presence region status is still unknown, bailing out as a later update will be sent", buf, 0xCu);

        v11 = v75;
      }

      objc_autoreleasePoolPop(v72);
LABEL_29:
      v44 = 0;
      goto LABEL_50;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v21 = v20 = v11;
      *buf = 138543362;
      v80 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@There is an FMF device, but this device is not the FMF device", buf, 0xCu);

      v11 = v20;
    }

    objc_autoreleasePoolPop(v17);
    if (v9)
    {
      if ([v13 value] == 1)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v18;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v26 = v25 = v11;
          *buf = 138543362;
          v80 = v26;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Presence-auth is changing to authorized", buf, 0xCu);

          v11 = v25;
        }

        objc_autoreleasePoolPop(v22);
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x277CD1F08] computeWithValue:1];
      }

      v15 = 0;
      goto LABEL_45;
    }

    v45 = objc_autoreleasePoolPush();
    v46 = v18;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v49 = v48 = v11;
      *buf = 138543362;
      v80 = v49;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@There is an FMF device, but this device is not the FMF device. Presence-auth is authorized, the FMF device will send the message.", buf, 0xCu);

      v11 = v48;
    }

    v31 = v45;
LABEL_28:
    objc_autoreleasePoolPop(v31);
    goto LABEL_29;
  }

  v77 = v12;
  if ([v13 value] != 1)
  {
    v50 = v13;
    v51 = objc_autoreleasePoolPush();
    v52 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v54;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@We do not have presence authorization for this user.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
    v55 = MEMORY[0x277CD1F08];
    v56 = 1;
    goto LABEL_37;
  }

  v32 = [(HMDUserPresenceFeeder *)self location];
  v33 = [v32 locationAuthorized];

  v34 = objc_autoreleasePoolPush();
  v35 = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    HMLocationAuthorizationAsString();
    v39 = v38 = v13;
    *buf = 138543618;
    v80 = v37;
    v81 = 2112;
    v82 = v39;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Current Location Authorization : %@", buf, 0x16u);

    v13 = v38;
  }

  objc_autoreleasePoolPop(v34);
  if (v33 == 1)
  {
    v50 = v13;
    v16 = [MEMORY[0x277CD1F08] computeWithValue:4];
    v15 = [HMDUserPresenceRegion regionWithValue:[(HMDUserPresenceFeeder *)v35 presenceRegionStatus]];
LABEL_38:
    v57 = objc_autoreleasePoolPush();
    v58 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v61 = v60 = v11;
      *buf = 138543618;
      v80 = v61;
      v81 = 2112;
      v82 = v16;
      _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@This is the FMF device. Presence compute status : %@", buf, 0x16u);

      v11 = v60;
    }

    objc_autoreleasePoolPop(v57);
    v12 = v77;
    v13 = v50;
    goto LABEL_41;
  }

  if (v33)
  {
    v50 = v13;
    v55 = MEMORY[0x277CD1F08];
    v56 = 2;
LABEL_37:
    v16 = [v55 computeWithValue:{v56, v77}];
    v15 = 0;
    goto LABEL_38;
  }

  v40 = objc_autoreleasePoolPush();
  v41 = v35;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v80 = v43;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Looks like we are still waiting for location authorization status from Core Location. Till we determine that let's not send the presence update.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  v44 = 0;
  v12 = v77;
LABEL_50:

  v70 = *MEMORY[0x277D85DE8];
  return v44;
}

- (void)_sendPresenceUpdateToResidentForUser:(id)a3 presenceAuthStatus:(id)a4 authChanging:(BOOL)a5 reason:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v16;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Status update of presence for user: %@, auth: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if (v10)
  {
    v17 = [(HMDHomePresenceBase *)v14 home];
    v18 = [v17 homeManager];
    v19 = [v18 fmfHandler];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __101__HMDUserPresenceFeeder__sendPresenceUpdateToResidentForUser_presenceAuthStatus_authChanging_reason___block_invoke;
    v25[3] = &unk_278674238;
    v25[4] = v14;
    v26 = v10;
    v27 = v11;
    v29 = a5;
    v28 = v12;
    [v19 queryFMFStatusWithCompletion:v25];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v14;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Cannot send the presence update as the user is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __101__HMDUserPresenceFeeder__sendPresenceUpdateToResidentForUser_presenceAuthStatus_authChanging_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__HMDUserPresenceFeeder__sendPresenceUpdateToResidentForUser_presenceAuthStatus_authChanging_reason___block_invoke_2;
  v7[3] = &unk_2786801A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v12 = *(a1 + 64);
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __101__HMDUserPresenceFeeder__sendPresenceUpdateToResidentForUser_presenceAuthStatus_authChanging_reason___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@FMF Device Status is %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _sendPresenceUpdateToResidentForUser:*(a1 + 48) presenceAuthStatus:*(a1 + 56) authChanging:*(a1 + 72) reason:*(a1 + 64) fmfStatus:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_sendPresenceUpdateToResident:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self home];
  v7 = [v5 currentUser];

  v6 = [v7 presenceAuthStatus];
  [(HMDUserPresenceFeeder *)self _sendPresenceUpdateToResidentForUser:v7 presenceAuthStatus:v6 authChanging:0 reason:v4];
}

- (void)_sendPresenceReport:(unint64_t)a3
{
  v4 = [HMDUserPresenceUpdateReason reasonWithValue:a3];
  [(HMDUserPresenceFeeder *)self _sendPresenceUpdateToResident:v4];
}

- (void)residentChanged
{
  v3 = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDUserPresenceFeeder_residentChanged__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __40__HMDUserPresenceFeeder_residentChanged__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Trying to send report after resident changed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _sendPresenceReport:8];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendInitialPresenceUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomePresenceBase *)self workQueue];

  if (v3)
  {
    v4 = [(HMDHomePresenceBase *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDUserPresenceFeeder_sendInitialPresenceUpdate__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v4, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Could not send the initial presence as the presence feeder is not yet configured.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __50__HMDUserPresenceFeeder_sendInitialPresenceUpdate__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) home];
    v7 = [v6 currentUser];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Sending the initial presence report for %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _sendPresenceReport:3];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handlePrivilegeUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"kUserUUIDKey"];

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
    v9 = [(HMDHomePresenceBase *)self workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__HMDUserPresenceFeeder__handlePrivilegeUpdate___block_invoke;
    v15[3] = &unk_27868A750;
    v15[4] = self;
    v15[5] = v8;
    dispatch_async(v9, v15);
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
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@User privilege changed but the userInfo does not have the required key inside it.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __48__HMDUserPresenceFeeder__handlePrivilegeUpdate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 currentUser];
  v4 = [v3 uuid];
  v5 = *(a1 + 40);
  v6 = HMFEqualObjects();

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@User privilege changed: Updating presence map", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _sendPresenceReport:12];
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Not going to update the presence for [%@] as it is not the current user in the home", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentDeviceConfirmed:(id)a3
{
  v4 = [(HMDHomePresenceBase *)self home];
  v5 = [v4 residentDeviceManager];
  v6 = [v5 primaryResidentDevice];

  if (v6)
  {

    [(HMDUserPresenceFeeder *)self residentChanged];
  }
}

- (void)presenceAuthChanged
{
  v3 = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDUserPresenceFeeder_presenceAuthChanged__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __44__HMDUserPresenceFeeder_presenceAuthChanged__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Trying to send report after presence auth changed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _sendPresenceReport:9];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)presenceAuthStatusChangedForUser:(id)a3 presenceAuthStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDUserPresenceFeeder_presenceAuthStatusChangedForUser_presenceAuthStatus___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __77__HMDUserPresenceFeeder_presenceAuthStatusChangedForUser_presenceAuthStatus___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [HMDUserPresenceUpdateReason reasonWithValue:9];
  [v1 _sendPresenceUpdateToResidentForUser:v2 presenceAuthStatus:v3 authChanging:1 reason:v4];
}

- (void)handleTimerFiredNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 hmf_stringForKey:@"HMD.BGTM.NK"];

  v6 = [(HMDUserPresenceFeeder *)self timerID];
  v7 = HMFEqualObjects();

  if (v7)
  {
    v8 = [(HMDHomePresenceBase *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__HMDUserPresenceFeeder_handleTimerFiredNotification___block_invoke;
    v9[3] = &unk_27868A750;
    v9[4] = self;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

uint64_t __54__HMDUserPresenceFeeder_handleTimerFiredNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Timer fired with ID: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _sendPresenceReport:7];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_startRefreshTimer
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserPresenceFeeder *)self timerID];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v7;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting the refresh timer with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = +[HMDBackgroundTaskManager sharedManager];
  [v8 cancelTaskWithIdentifier:v3 onObserver:v5];

  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v9 dateComponents];

  v11 = [v10 minute];
  [v10 setMinute:presenceFeedRefreshInMinutes + v11];
  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v12 dateFromComponents:v10];

  v14 = +[HMDBackgroundTaskManager sharedManager];
  v22 = 0;
  v15 = [v14 scheduleTaskWithIdentifier:v3 fireDate:v13 onObserver:v5 selector:sel_handleTimerFiredNotification_ error:&v22];
  v16 = v22;

  if ((v15 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v5;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v20;
      v25 = 2112;
      v26 = v3;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to start timer %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setPresenceRegionStatus:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDUserPresenceRegionStatusAsString(v6->_presenceRegionStatus);
    v10 = HMDUserPresenceRegionStatusAsString(a3);
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating presence status from %@ to %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  presenceRegionStatus = v6->_presenceRegionStatus;
  if (presenceRegionStatus == a3)
  {
    v12 = 3;
  }

  else
  {
    if (presenceRegionStatus)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    v6->_presenceRegionStatus = a3;
  }

  v13 = [HMDUserPresenceUpdateReason reasonWithValue:v12];
  [(HMDUserPresenceFeeder *)v6 _sendPresenceUpdateToResident:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDataLoadedNotification:(id)a3
{
  v4 = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDUserPresenceFeeder_handleHomeDataLoadedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __58__HMDUserPresenceFeeder_handleHomeDataLoadedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received home data loaded notification, sending presence report", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _sendPresenceReport:3];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)homeDataProcessed
{
  v3 = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDUserPresenceFeeder_homeDataProcessed__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __42__HMDUserPresenceFeeder_homeDataProcessed__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Home data has been processed, trying to send presence report", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _sendPresenceReport:11];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fmfStatusUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomePresenceBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMDUserPresenceFeeder_fmfStatusUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__HMDUserPresenceFeeder_fmfStatusUpdateNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [HMDFMF fmfStatusWithDict:v2];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received FMF status update notification with %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) _sendPresenceReport:4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchCKAccountStatusAndSendPresenceReport
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomePresenceBase *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDUserPresenceFeeder *)self isAccountStatusFetchInProgress])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@CK Account fetch status already in progress. Not calling it again.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [(HMDUserPresenceFeeder *)self setIsAccountStatusFetchInProgress:1];
    objc_initWeak(buf, self);
    v8 = getCKContainer();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__HMDUserPresenceFeeder_fetchCKAccountStatusAndSendPresenceReport__block_invoke;
    v10[3] = &unk_278674210;
    objc_copyWeak(&v11, buf);
    [v8 accountStatusWithCompletionHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __66__HMDUserPresenceFeeder_fetchCKAccountStatusAndSendPresenceReport__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v22 = 138543874;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@CK accountStatus completed with %@, %@", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v8)
  {
    [v8 setIsAccountStatusFetchInProgress:0];
    if (v5)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v8;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v15;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@CK accountStatus failed with error: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    else if ([v8 ckAccountStatus] != a2)
    {
      [v8 setCkAccountStatus:a2];
      v16 = objc_autoreleasePoolPush();
      v17 = v8;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "ckAccountStatus")}];
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating the CK account status to %@. Sending the presence report", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [v17 _sendPresenceReport:10];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)accountAvailabilityChanged:(id)a3
{
  v4 = [(HMDHomePresenceBase *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDUserPresenceFeeder_accountAvailabilityChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_registerForMessages
{
  v5.receiver = self;
  v5.super_class = HMDUserPresenceFeeder;
  [(HMDHomePresenceBase *)&v5 _registerForMessages];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleLocationAuthorizationChangedNotification_ name:@"HMLocationAuthorizationChangedNotification" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_fmfStatusUpdateNotification_ name:@"HMDFMFStatusUpdateNotification" object:0];
}

- (void)configure:(id)a3 messageDispatcher:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = HMDUserPresenceFeeder;
  [(HMDHomePresenceBase *)&v21 configure:v6 messageDispatcher:a4];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(HMDHomePresenceBase *)self presenceMonitorMessageTargetUUID];
  v9 = [v8 UUIDString];
  v10 = [v7 stringWithFormat:@"presence.feeder/%@", v9];
  timerID = self->_timerID;
  self->_timerID = v10;

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [v6 residentDeviceManager];
  [v12 addObserver:self selector:sel_handleResidentDeviceConfirmed_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" object:v13];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel__handlePrivilegeUpdate_ name:@"HMDUserPrivilegeDidChangeNotification" object:0];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel_handleDidArriveHomeNotification_ name:@"HMDHomeDidArriveHomeNotificationKey" object:v6];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 addObserver:self selector:sel_handleDidLeaveHomeNotification_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:v6];

  v17 = [v6 featuresDataSource];
  LODWORD(v8) = [v17 isHomeActivityStateFeatureEnabled];

  if (v8)
  {
    v18 = [(HMDHomePresenceBase *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDUserPresenceFeeder_configure_messageDispatcher___block_invoke;
    block[3] = &unk_27868A750;
    block[4] = self;
    v20 = v6;
    dispatch_async(v18, block);
  }
}

uint64_t __53__HMDUserPresenceFeeder_configure_messageDispatcher___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) presenceRegionStatus];
  if (!result)
  {
    if ([*(a1 + 40) homeLocation] == 1)
    {
      v3 = 1;
    }

    else
    {
      if ([*(a1 + 40) homeLocation] != 2)
      {
        result = [*(a1 + 40) homeLocation];
        if (result != 3)
        {
          return result;
        }
      }

      v3 = 2;
    }

    v4 = *(a1 + 32);

    return [v4 setPresenceRegionStatus:v3];
  }

  return result;
}

- (HMDUserPresenceFeeder)initWithLocation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDUserPresenceFeeder;
  v6 = [(HMDUserPresenceFeeder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_presenceRegionStatus = 0;
    v6->_ckAccountStatus = 0;
    v6->_isAccountStatusFetchInProgress = 0;
    objc_storeStrong(&v6->_location, a3);
  }

  return v7;
}

- (HMDUserPresenceFeeder)init
{
  v3 = +[HMDLocation sharedManager];
  v4 = [(HMDUserPresenceFeeder *)self initWithLocation:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t51 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t51, &__block_literal_global_54162);
  }

  v3 = logCategory__hmf_once_v52;

  return v3;
}

void __36__HMDUserPresenceFeeder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v52;
  logCategory__hmf_once_v52 = v1;
}

@end