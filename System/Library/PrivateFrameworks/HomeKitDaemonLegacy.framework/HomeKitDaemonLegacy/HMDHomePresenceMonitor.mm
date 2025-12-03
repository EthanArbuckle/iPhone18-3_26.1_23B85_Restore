@interface HMDHomePresenceMonitor
+ (id)logCategory;
- (HMDHomePresence)currentHomePresence;
- (HMDHomePresenceMonitor)init;
- (HMDHomePresenceMonitor)initWithCoder:(id)coder;
- (HMDHomePresenceUpdate)homePresenceUpdate;
- (NSDictionary)presenceMap;
- (void)_addUser:(id)user;
- (void)_auditPresenceMap;
- (void)_evaluatePresence:(id)presence newUserPresence:(id)userPresence presenceStatusUpdateReason:(id)reason;
- (void)_insertUserPresence:(id)presence;
- (void)_preparePresenceMap;
- (void)_reEvaluatePresenceWithReason:(id)reason;
- (void)_registerForMessages;
- (void)_removeNonExistingUsers;
- (void)_removeUserPresence:(id)presence;
- (void)_startAuditTimer;
- (void)_updateUserPresence:(id)presence presenceAuth:(id)auth completion:(id)completion;
- (void)addNewUser:(id)user;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleTimerFiredNotification:(id)notification;
- (void)handleUserHomePresencePayload:(id)payload device:(id)device user:(id)user completion:(id)completion;
- (void)handleUserPresenceUpdate:(id)update;
- (void)handleUserPresenceUpdateNotification:(id)notification;
- (void)removeUser:(id)user;
- (void)setCurrentHomePresence:(id)presence;
@end

@implementation HMDHomePresenceMonitor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  presenceMap = [(HMDHomePresenceMonitor *)self presenceMap];
  v5 = [presenceMap copy];
  [coderCopy encodeObject:v5 forKey:@"kHMDHomePresenceMonitorPresenceMapCodingKey"];
}

- (HMDHomePresenceMonitor)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDHomePresenceMonitor *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:3];
    v8 = [v6 setWithArray:{v7, v16, v17}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kHMDHomePresenceMonitorPresenceMapCodingKey"];
    v10 = [v9 mutableCopy];
    presenceMap = v5->_presenceMap;
    v5->_presenceMap = v10;

    if (!v5->_presenceMap)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v13 = v5->_presenceMap;
      v5->_presenceMap = dictionary;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_removeUserPresence:(id)presence
{
  presenceCopy = presence;
  os_unfair_lock_lock_with_options();
  presenceMap = self->_presenceMap;
  user = [presenceCopy user];
  uuid = [user uuid];
  [(NSMutableDictionary *)presenceMap setObject:0 forKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_insertUserPresence:(id)presence
{
  presenceCopy = presence;
  os_unfair_lock_lock_with_options();
  presenceMap = self->_presenceMap;
  user = [presenceCopy user];
  uuid = [user uuid];
  [(NSMutableDictionary *)presenceMap setObject:presenceCopy forKeyedSubscript:uuid];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHomePresenceUpdate)homePresenceUpdate
{
  v3 = [HMDHomePresenceUpdate alloc];
  currentHomePresence = [(HMDHomePresenceMonitor *)self currentHomePresence];
  v5 = [(HMDHomePresenceUpdate *)v3 initWithHomePresence:currentHomePresence userPresence:0 update:0 causingDevice:0];

  return v5;
}

- (void)_evaluatePresence:(id)presence newUserPresence:(id)userPresence presenceStatusUpdateReason:(id)reason
{
  v58 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  userPresenceCopy = userPresence;
  reasonCopy = reason;
  home = [(HMDHomePresenceBase *)self home];
  [(HMDHomePresenceMonitor *)self _auditPresenceMap];
  presenceMap = [(HMDHomePresenceMonitor *)self presenceMap];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v15;
    v52 = 2112;
    v53 = presenceMap;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Evaluating home presence with current presence map: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [[HMDHomePresence alloc] initWithHome:home userPresenceMap:presenceMap lastUpdateByDevice:presenceCopy];
  currentHomePresence = [(HMDHomePresenceMonitor *)selfCopy currentHomePresence];

  v43 = presenceMap;
  v44 = home;
  if (currentHomePresence)
  {
    currentHomePresence2 = [(HMDHomePresenceMonitor *)selfCopy currentHomePresence];
    v45 = HMFEqualObjects();
  }

  else
  {
    v45 = 1;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    currentHomePresence3 = [(HMDHomePresenceMonitor *)v20 currentHomePresence];
    shortDescription = [currentHomePresence3 shortDescription];
    [(HMDHomePresence *)v16 shortDescription];
    v26 = v25 = presenceCopy;
    HMFBooleanToString();
    v27 = v42 = reasonCopy;
    *buf = 138544130;
    v51 = v22;
    v52 = 2112;
    v53 = shortDescription;
    v54 = 2112;
    v55 = v26;
    v56 = 2112;
    v57 = v27;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating home presence from %@ to %@, Equal: %@", buf, 0x2Au);

    presenceCopy = v25;
    reasonCopy = v42;
  }

  objc_autoreleasePoolPop(v19);
  [(HMDHomePresenceMonitor *)v20 setCurrentHomePresence:v16];
  v28 = objc_autoreleasePoolPush();
  v29 = v20;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v51 = v31;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Current home presence evaluated, sending notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  logAndPostNotification(@"HMDHomePresenceEvaluatedNotification", v29, 0);
  if ((v45 & 1) == 0)
  {
    v46 = v16;
    [v44 saveWithReason:@"HMDHomePresenceMonitorUpdatedReason" postSyncNotification:0];
    v32 = [reasonCopy value] == 2;
    v33 = [HMDHomePresenceUpdate alloc];
    currentHomePresence4 = [(HMDHomePresenceMonitor *)v29 currentHomePresence];
    v35 = [(HMDHomePresenceUpdate *)v33 initWithHomePresence:currentHomePresence4 userPresence:userPresenceCopy update:v32 causingDevice:presenceCopy];

    v36 = objc_autoreleasePoolPush();
    v37 = v29;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v39;
      v52 = 2112;
      v53 = v35;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Sending home presence update %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v48 = @"HMDHomePresenceUpdateKey";
    v49 = v35;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    logAndPostNotification(@"HMDHomePresenceUpdateNotification", v37, v40);

    v16 = v46;
  }

  [(HMDHomePresenceMonitor *)v29 _startAuditTimer];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_updateUserPresence:(id)presence presenceAuth:(id)auth completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  authCopy = auth;
  completionCopy = completion;
  presenceAuthStatus = [presenceCopy presenceAuthStatus];
  v12 = HMFEqualObjects();

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v17;
      v34 = 2112;
      v35 = presenceCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Auth and compute status are not changing for user %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = _Block_copy(completionCopy);
    home = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }

  else
  {
    if (v16)
    {
      v20 = HMFGetLogIdentifier();
      presenceAuthStatus2 = [presenceCopy presenceAuthStatus];
      *buf = 138544130;
      v33 = v20;
      v34 = 2112;
      v35 = presenceAuthStatus2;
      v36 = 2112;
      v37 = authCopy;
      v38 = 2112;
      v39 = presenceCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Presence auth status is changing from %@ to %@ for user %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    home = [(HMDHomePresenceBase *)selfCopy home];
    if ([presenceCopy isOwner])
    {
      [home setPresenceAuthStatus:authCopy];
      currentUser = [home currentUser];
      [currentUser setPresenceAuthStatus:authCopy];

      v23 = _Block_copy(completionCopy);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23);
      }
    }

    else
    {
      v24 = [presenceCopy newModelWithChangeType:2];
      number = [authCopy number];
      [v24 setPresenceAuthorizationStatus:number];

      backingStore = [home backingStore];
      v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v28 = [backingStore transaction:@"kRemoteUpdateUserPresenceNotificationKey" options:v27];

      [v28 add:v24];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __70__HMDHomePresenceMonitor__updateUserPresence_presenceAuth_completion___block_invoke;
      v30[3] = &unk_279735558;
      v31 = completionCopy;
      [v28 run:v30];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __70__HMDHomePresenceMonitor__updateUserPresence_presenceAuth_completion___block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)handleUserHomePresencePayload:(id)payload device:(id)device user:(id)user completion:(id)completion
{
  v79 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  deviceCopy = device;
  userCopy = user;
  completionCopy = completion;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544130;
    v70 = v16;
    v71 = 2112;
    v72 = payloadCopy;
    v73 = 2112;
    v74 = deviceCopy;
    v75 = 2112;
    v76 = userCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Received user presence: [%@] from device [%@] for user [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  if (userCopy)
  {
    home = [(HMDHomePresenceBase *)selfCopy home];
    if (([home isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v70 = v43;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@This device is not the current resident, cannot process the presence update, responding with error", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2708];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v18);
      }

      goto LABEL_32;
    }

    v18 = [MEMORY[0x277CD1F00] authWithDict:payloadCopy];
    if (!v18)
    {
      v19 = MEMORY[0x277CD1F00];
      v20 = [payloadCopy hmf_numberForKey:@"kUserPresenceAuthStatusKey"];
      v18 = [v19 authWithNumber:v20];
    }

    v58 = [HMDUserPresenceRegion regionWithDict:payloadCopy];
    v57 = [HMDUserPresenceUpdateReason reasonWithDict:payloadCopy];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      userID = [userCopy userID];
      *buf = 138544386;
      v70 = v24;
      v71 = 2114;
      v72 = v18;
      v73 = 2114;
      v74 = v58;
      v75 = 2114;
      v76 = v57;
      v77 = 2112;
      v78 = userID;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Received user presence message with auth: %{public}@, region: %{public}@, reason: %{public}@, user: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v21);
    presenceMap = [(HMDHomePresenceMonitor *)v22 presenceMap];
    uuid = [userCopy uuid];
    v59 = [presenceMap objectForKeyedSubscript:uuid];

    if (!v59)
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v22;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        uuid2 = [userCopy uuid];
        *buf = 138543618;
        v70 = v47;
        v71 = 2112;
        v72 = uuid2;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Could not find the user with UUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      v49 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v49);
      }

      goto LABEL_31;
    }

    user = [v59 user];
    presenceAuthStatus = [user presenceAuthStatus];
    if (HMFEqualObjects())
    {
      presenceRegionStatus = [v59 presenceRegionStatus];
      v31 = HMFEqualObjects();

      if (v31)
      {
        [v59 setPresenceRegionStatus:v58];
        v32 = objc_autoreleasePoolPush();
        v33 = v22;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v70 = v35;
          v71 = 2112;
          v72 = v59;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@User presence auth or region status for %@ are not changing, updated presence timestamp", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        [home saveWithReason:@"HMDHomePresenceMonitorUpdatedReason" postSyncNotification:0];
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    v50 = [HMDUserPresence alloc];
    user2 = [v59 user];
    v52 = [MEMORY[0x277CBEAA8] now];
    v53 = [(HMDUserPresence *)v50 initWithUser:user2 presenceRegionStatus:v58 timeStamp:v52 presenceUpdateReason:v57 device:deviceCopy];

    objc_initWeak(buf, v22);
    user3 = [(HMDUserPresence *)v53 user];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __79__HMDHomePresenceMonitor_handleUserHomePresencePayload_device_user_completion___block_invoke;
    v61[3] = &unk_279723038;
    objc_copyWeak(&v68, buf);
    v62 = v59;
    v55 = v53;
    v63 = v55;
    v64 = userCopy;
    v67 = completionCopy;
    v65 = deviceCopy;
    v66 = v57;
    [(HMDHomePresenceMonitor *)v22 _updateUserPresence:user3 presenceAuth:v18 completion:v61];

    objc_destroyWeak(&v68);
    objc_destroyWeak(buf);

LABEL_31:
LABEL_32:

    goto LABEL_33;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543362;
    v70 = v39;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Remote user is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
  home = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, home);
  }

LABEL_33:

  v56 = *MEMORY[0x277D85DE8];
}

void __79__HMDHomePresenceMonitor_handleUserHomePresencePayload_device_user_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 32) user];
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v15 = 138544130;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Updated presence for user %@ from %@ to %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v3);
    os_unfair_lock_lock_with_options();
    v10 = *&v4[16]._os_unfair_lock_opaque;
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) uuid];
    [v10 setObject:v11 forKeyedSubscript:v12];

    os_unfair_lock_unlock(v4 + 14);
    v13 = *(a1 + 72);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }

    [(os_unfair_lock_s *)v4 _evaluatePresence:*(a1 + 56) newUserPresence:*(a1 + 40) presenceStatusUpdateReason:*(a1 + 64)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleUserPresenceUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDHomePresenceMonitor_handleUserPresenceUpdateNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __63__HMDHomePresenceMonitor_handleUserPresenceUpdateNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) userInfo];
    v14 = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received presence update notification with note %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = +[HMDAppleAccountManager sharedManager];
  v8 = [v7 device];

  v9 = [*(a1 + 32) home];
  v10 = [v9 currentUser];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) userInfo];
  [v11 handleUserHomePresencePayload:v12 device:v8 user:v10 completion:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUserPresenceUpdate:(id)update
{
  updateCopy = update;
  home = [(HMDHomePresenceBase *)self home];
  v6 = [updateCopy userForHome:home];

  messagePayload = [updateCopy messagePayload];
  remoteSourceDevice = [updateCopy remoteSourceDevice];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HMDHomePresenceMonitor_handleUserPresenceUpdate___block_invoke;
  v10[3] = &unk_2797359D8;
  v11 = updateCopy;
  v9 = updateCopy;
  [(HMDHomePresenceMonitor *)self handleUserHomePresencePayload:messagePayload device:remoteSourceDevice user:v6 completion:v10];
}

- (void)removeUser:(id)user
{
  v27 = *MEMORY[0x277D85DE8];
  userCopy = user;
  presenceMap = [(HMDHomePresenceMonitor *)self presenceMap];
  uuid = [userCopy uuid];
  v7 = [presenceMap objectForKeyedSubscript:uuid];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = userCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing user %@ from the presence map", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    os_unfair_lock_lock_with_options();
    presenceMap = selfCopy->_presenceMap;
    uuid2 = [userCopy uuid];
    [(NSMutableDictionary *)presenceMap removeObjectForKey:uuid2];

    os_unfair_lock_unlock(&selfCopy->_lock);
    userCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Removed user : %@", userCopy];
    [(HMDHomePresenceMonitor *)selfCopy _reEvaluatePresenceWithReason:userCopy];
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    presenceMap2 = [(HMDHomePresenceMonitor *)selfCopy2 presenceMap];
    *buf = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = userCopy;
    v25 = 2112;
    v26 = presenceMap2;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Presence map after removing user : %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)addNewUser:(id)user
{
  v14 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = userCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding new user %@ to the presence map", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomePresenceMonitor *)selfCopy _addUser:userCopy];
  [(HMDHomePresenceMonitor *)selfCopy _evaluatePresence:0 newUserPresence:0 presenceStatusUpdateReason:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addUser:(id)user
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  uuid = [userCopy uuid];

  if (uuid)
  {
    os_unfair_lock_lock_with_options();
    v6 = [[HMDUserPresence alloc] initWithUser:userCopy presenceRegionStatus:0];
    presenceMap = self->_presenceMap;
    uuid2 = [userCopy uuid];
    [(NSMutableDictionary *)presenceMap setObject:v6 forKeyedSubscript:uuid2];

    os_unfair_lock_unlock(&self->_lock);
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      presenceMap = [(HMDHomePresenceMonitor *)selfCopy2 presenceMap];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = userCopy;
      v20 = 2112;
      v21 = presenceMap;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Presence map after adding new user : %@, %@", &v16, 0x20u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = userCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@UUID for user %@ is nil, not adding it to the monitor map.", &v16, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v9);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeNonExistingUsers
{
  v33 = *MEMORY[0x277D85DE8];
  home = [(HMDHomePresenceBase *)self home];
  usersSupportingPresence = [home usersSupportingPresence];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  presenceMap = [(HMDHomePresenceMonitor *)self presenceMap];
  obj = [presenceMap allValues];

  v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = *v25;
    *&v6 = 138543618;
    v21 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        user = [v9 user];
        v11 = [usersSupportingPresence containsObject:user];

        if ((v11 & 1) == 0)
        {
          v12 = objc_autoreleasePoolPush();
          selfCopy = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            user2 = [v9 user];
            *buf = v21;
            v29 = v15;
            v30 = 2112;
            v31 = user2;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing the user %@ from presence map since it isn't part of home anymore", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          os_unfair_lock_lock_with_options();
          presenceMap = selfCopy->_presenceMap;
          user3 = [v9 user];
          uuid = [user3 uuid];
          [(NSMutableDictionary *)presenceMap removeObjectForKey:uuid];

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_preparePresenceMap
{
  selfCopy = self;
  v33 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  home = [(HMDHomePresenceBase *)self home];
  usersSupportingPresence = [home usersSupportingPresence];

  v5 = [usersSupportingPresence countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 138543618;
    v22 = v6;
    do
    {
      v9 = 0;
      v23 = v7;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(usersSupportingPresence);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        presenceMap = [(HMDHomePresenceMonitor *)selfCopy presenceMap];
        uuid = [v10 uuid];
        v13 = [presenceMap objectForKeyedSubscript:uuid];

        if (!v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = selfCopy;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v17 = selfCopy;
            v18 = v8;
            v20 = v19 = usersSupportingPresence;
            *buf = v22;
            v29 = v20;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Adding home user %@ to the presence map, as it isn't present", buf, 0x16u);

            usersSupportingPresence = v19;
            v8 = v18;
            selfCopy = v17;
            v7 = v23;
          }

          objc_autoreleasePoolPop(v14);
          [(HMDHomePresenceMonitor *)v15 _addUser:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [usersSupportingPresence countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  [(HMDHomePresenceMonitor *)selfCopy _removeNonExistingUsers];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_startAuditTimer
{
  v41 = *MEMORY[0x277D85DE8];
  timerID = [(HMDHomePresenceMonitor *)self timerID];
  if (timerID)
  {
    v4 = +[HMDBackgroundTaskManager sharedManager];
    [v4 cancelTaskWithIdentifier:timerID onObserver:self];

    home = [(HMDHomePresenceBase *)self home];
    primaryResident = [home primaryResident];
    device = [primaryResident device];

    if ([device isCurrentDevice])
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      hmf_dateComponents = [v8 hmf_dateComponents];

      minute = [hmf_dateComponents minute];
      [hmf_dateComponents setMinute:presenceMonitorAuditInMinutes + minute];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v12 = [currentCalendar dateFromComponents:hmf_dateComponents];

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        hmf_localTimeDescription = [v12 hmf_localTimeDescription];
        *buf = 138543874;
        v36 = v16;
        v37 = 2112;
        v38 = timerID;
        v39 = 2112;
        v40 = hmf_localTimeDescription;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting the audit timer (%@) to fire at %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = +[HMDBackgroundTaskManager sharedManager];
      v34 = 0;
      v19 = [v18 scheduleTaskWithIdentifier:timerID fireDate:v12 onObserver:selfCopy selector:sel_handleTimerFiredNotification_ error:&v34];
      v20 = v34;

      if ((v19 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543874;
          v36 = v24;
          v37 = 2112;
          v38 = timerID;
          v39 = 2112;
          v40 = v20;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to start timer %@ with error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
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
        *buf = 138543362;
        v36 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@This is not the resident device, not starting the audit timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
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
      *buf = 138543362;
      v36 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to start audit timer with nil timer id", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_auditPresenceMap
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    presenceMap = [(HMDHomePresenceMonitor *)selfCopy presenceMap];
    *buf = 138543618;
    v26 = v6;
    v27 = 2112;
    v28 = presenceMap;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Auditing the presence map %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomePresenceMonitor *)selfCopy _removeNonExistingUsers];
  presenceMap2 = [(HMDHomePresenceMonitor *)selfCopy presenceMap];
  home = [(HMDHomePresenceBase *)selfCopy home];
  primaryResident = [home primaryResident];
  device = [primaryResident device];

  isCurrentDevice = [device isCurrentDevice];
  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (isCurrentDevice)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      name = [device name];
      identifier = [device identifier];
      *buf = 138543874;
      v26 = v17;
      v27 = 2112;
      v28 = name;
      v29 = 2112;
      v30 = identifier;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@This device is the primary resident: [%@ / %@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__HMDHomePresenceMonitor__auditPresenceMap__block_invoke;
    v24[3] = &unk_279722FF0;
    v24[4] = v14;
    v20 = v24;
  }

  else
  {
    if (v16)
    {
      v21 = HMFGetLogIdentifier();
      identifier2 = [device identifier];
      *buf = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = identifier2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@This device is not the primary resident : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = &__block_literal_global_53;
  }

  [presenceMap2 enumerateKeysAndObjectsUsingBlock:v20];

  v23 = *MEMORY[0x277D85DE8];
}

void __43__HMDHomePresenceMonitor__auditPresenceMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 user];
  v8 = [v7 presenceAuthStatus];
  v9 = [v8 value];

  if (v9 == 1)
  {
    v10 = [v6 presenceRegionStatus];

    if (v10)
    {
      v11 = [v6 updateTimestamp];

      if (v11)
      {
        v12 = [v6 updateTimestamp];
        [v12 timeIntervalSinceNow];
        v14 = fabs(v13);

        v15 = (60 * (presenceMonitorRefreshGracePeriodInMinutes + presenceFeedRefreshInMinutes));
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v14 <= v15)
        {
          if (v19)
          {
            v21 = HMFGetLogIdentifier();
            v23 = 138544130;
            v24 = v21;
            v25 = 2112;
            v26 = v6;
            v27 = 2048;
            v28 = v14;
            v29 = 2048;
            v30 = v15;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@%@ update is still valid as the time since last update %lf is less than allowed %lf", &v23, 0x2Au);
          }

          objc_autoreleasePoolPop(v16);
        }

        else
        {
          if (v19)
          {
            v20 = HMFGetLogIdentifier();
            v23 = 138544130;
            v24 = v20;
            v25 = 2112;
            v26 = v6;
            v27 = 2048;
            v28 = v14;
            v29 = 2048;
            v30 = v15;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@%@ update is stale as the time since last update %lf is more than allowed %lf", &v23, 0x2Au);
          }

          objc_autoreleasePoolPop(v16);
          [v6 setPresenceRegionStatus:0];
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerFiredNotification:(id)notification
{
  userInfo = [notification userInfo];
  v8 = [userInfo hmf_stringForKey:@"HMD.BGTM.NK"];

  timerID = [(HMDHomePresenceMonitor *)self timerID];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"BTM Timer fired with ID: %@", v8];
    [(HMDHomePresenceMonitor *)self _reEvaluatePresenceWithReason:v7];
  }
}

- (void)_reEvaluatePresenceWithReason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(HMDHomePresenceBase *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDHomePresenceMonitor__reEvaluatePresenceWithReason___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __56__HMDHomePresenceMonitor__reEvaluatePresenceWithReason___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Re-evaluating presence due to reason: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _evaluatePresence:0 newUserPresence:0 presenceStatusUpdateReason:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setCurrentHomePresence:(id)presence
{
  presenceCopy = presence;
  os_unfair_lock_lock_with_options();
  currentHomePresence = self->_currentHomePresence;
  self->_currentHomePresence = presenceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHomePresence)currentHomePresence
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentHomePresence;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)presenceMap
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_presenceMap copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_registerForMessages
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceBase *)&v12 _registerForMessages];
  v3 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v3 setRoles:{objc_msgSend(v3, "roles") | 4}];
  v4 = [v3 copy];
  home = [(HMDHomePresenceBase *)self home];
  msgDispatcher = [(HMDHomePresenceBase *)self msgDispatcher];
  v13[0] = v4;
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [msgDispatcher registerForMessage:@"kRemoteUpdateUserPresenceNotificationKey" receiver:self policies:v8 selector:sel_handleUserPresenceUpdate_];

  presenceFeeder = [home presenceFeeder];
  if (presenceFeeder)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleUserPresenceUpdateNotification_ name:@"HMDUserPresenceUpdateLocalNotification" object:presenceFeeder];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher
{
  v10.receiver = self;
  v10.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceBase *)&v10 configure:configure messageDispatcher:dispatcher];
  v5 = MEMORY[0x277CCACA8];
  presenceMonitorMessageTargetUUID = [(HMDHomePresenceBase *)self presenceMonitorMessageTargetUUID];
  uUIDString = [presenceMonitorMessageTargetUUID UUIDString];
  v8 = [v5 stringWithFormat:@"presence.monitor/%@", uUIDString];
  timerID = self->_timerID;
  self->_timerID = v8;

  [(HMDHomePresenceMonitor *)self _preparePresenceMap];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDHomePresenceMonitor;
  [(HMDHomePresenceMonitor *)&v4 dealloc];
}

- (HMDHomePresenceMonitor)init
{
  v6.receiver = self;
  v6.super_class = HMDHomePresenceMonitor;
  v2 = [(HMDHomePresenceMonitor *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    presenceMap = v2->_presenceMap;
    v2->_presenceMap = dictionary;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_12581 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_12581, &__block_literal_global_12582);
  }

  v3 = logCategory__hmf_once_v1_12583;

  return v3;
}

uint64_t __37__HMDHomePresenceMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v1_12583 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end