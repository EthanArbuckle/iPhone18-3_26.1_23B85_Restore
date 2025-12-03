@interface HMDCloudShareParticipantsManager
+ (id)logCategory;
- (BOOL)isAcceptedParticipatingUser:(id)user;
- (HMDCloudShareParticipantsManager)initWithQueue:(id)queue cloudZone:(id)zone home:(id)home;
- (HMDCloudShareParticipantsManagerDataSource)dataSource;
- (HMDCloudShareParticipantsManagerDelegate)delegate;
- (HMDHome)home;
- (NSSet)participatingUsers;
- (id)logIdentifier;
- (void)_inviteUser:(id)user usingDevice:(id)device;
- (void)clearParticipants;
- (void)configure;
- (void)handleHomeDataLoadedNotification:(id)notification;
- (void)handleHomeUserAddedNotification:(id)notification;
- (void)handleHomeUserRemovedNotification:(id)notification;
- (void)inviteUser:(id)user usingDevice:(id)device;
- (void)updateShareParticipants;
@end

@implementation HMDCloudShareParticipantsManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDCloudShareParticipantsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDCloudShareParticipantsManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  cloudZone = [(HMDCloudShareParticipantsManager *)self cloudZone];
  zoneID = [cloudZone zoneID];
  name = [zoneID name];

  return name;
}

- (void)handleHomeDataLoadedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home data loaded notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDCloudShareParticipantsManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDCloudShareParticipantsManager_handleHomeDataLoadedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeUserRemovedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home user removed notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDCloudShareParticipantsManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDCloudShareParticipantsManager_handleHomeUserRemovedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeUserAddedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home user added notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDCloudShareParticipantsManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDCloudShareParticipantsManager_handleHomeUserAddedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __90__HMDCloudShareParticipantsManager__fetchInvitationContextForUser_shouldGrantWriteAccess___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch invitation context due to cloud share ID future error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

id __90__HMDCloudShareParticipantsManager__fetchInvitationContextForUser_shouldGrantWriteAccess___block_invoke_20(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v15 = 138543874;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating share invitation context for user %@ using trusted cloud share id: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = objc_alloc(MEMORY[0x277D17120]);
  v10 = [*(a1 + 40) uuid];
  v11 = [v9 initWithParticipantClientIdentifier:v10 cloudShareID:v3];

  [v11 setShouldGrantWriteAccess:*(a1 + 48)];
  v12 = [MEMORY[0x277D2C900] futureWithResult:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __82__HMDCloudShareParticipantsManager__fetchInvitationToUser_shouldGrantWriteAccess___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch invitation context: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

id __82__HMDCloudShareParticipantsManager__fetchInvitationToUser_shouldGrantWriteAccess___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 cloudZone];
  v6 = [v5 fetchInvitationWithContext:v4];

  v7 = MEMORY[0x277D2C938];
  v8 = [*(a1 + 32) workQueue];
  v9 = [v7 schedulerWithDispatchQueue:v8];
  v10 = [v6 reschedule:v9];

  return v10;
}

- (void)_inviteUser:(id)user usingDevice:(id)device
{
  v37 = *MEMORY[0x277D85DE8];
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDCloudShareParticipantsManager *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v10 = [dataSource manager:self shouldGrantWriteAccessToUser:userCopy];
  }

  else
  {
    v10 = 0;
  }

  cloudZone = [(HMDCloudShareParticipantsManager *)self cloudZone];
  uuid = [userCopy uuid];
  v13 = [cloudZone participantWithClientIdentifier:uuid];

  if ([v13 hasAccepted])
  {
    if (v10 != [v13 hasWriteAccess])
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        [v13 hasWriteAccess];
        v18 = HMFBooleanToString();
        HMFBooleanToString();
        v19 = v25 = v14;
        *buf = 138544130;
        v30 = v17;
        v31 = 2112;
        v32 = v18;
        v33 = 2112;
        v34 = v19;
        v35 = 2112;
        v36 = userCopy;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating write access from %@ to %@ for user %@", buf, 0x2Au);

        v14 = v25;
      }

      objc_autoreleasePoolPop(v14);
      cloudZone2 = [(HMDCloudShareParticipantsManager *)selfCopy cloudZone];
      v21 = [cloudZone2 setWriteAccessEnabled:v10 forParticipant:v13];
    }
  }

  else
  {
    v22 = [(HMDCloudShareParticipantsManager *)self _fetchInvitationToUser:userCopy shouldGrantWriteAccess:v10];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__HMDCloudShareParticipantsManager__inviteUser_usingDevice___block_invoke;
    v26[3] = &unk_27972AFE8;
    v26[4] = self;
    v27 = userCopy;
    v28 = deviceCopy;
    v23 = [v22 addCompletionBlock:v26];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __60__HMDCloudShareParticipantsManager__inviteUser_usingDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    v8 = [*(a1 + 32) delegate];
    v9 = *(a1 + 48);
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 48);
        v24 = 138543874;
        v25 = v14;
        v26 = 2112;
        v27 = v5;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending invitation %@ to device: %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [v8 manager:*(a1 + 32) didRequestSendForInvitation:v5 toDevice:*(a1 + 48)];
    }

    else
    {
      if (v13)
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 40);
        v24 = 138543874;
        v25 = v21;
        v26 = 2112;
        v27 = v5;
        v28 = 2112;
        v29 = v22;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending invitation %@ to user: %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [v8 manager:*(a1 + 32) didRequestSendForInvitation:v5 toUser:*(a1 + 40)];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      v24 = 138543874;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not create invitation to send to user %@: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAcceptedParticipatingUser:(id)user
{
  userCopy = user;
  cloudZone = [(HMDCloudShareParticipantsManager *)self cloudZone];
  uuid = [userCopy uuid];

  v7 = [cloudZone participantWithClientIdentifier:uuid];

  LOBYTE(cloudZone) = [v7 hasAccepted];
  return cloudZone;
}

- (void)clearParticipants
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Clearing share participants", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  cloudZone = [(HMDCloudShareParticipantsManager *)selfCopy cloudZone];
  participants = [cloudZone participants];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = participants;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        cloudZone2 = [(HMDCloudShareParticipantsManager *)selfCopy cloudZone];
        v16 = [cloudZone2 revokeShareAccessForParticipant:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)inviteUser:(id)user usingDevice:(id)device
{
  v27 = *MEMORY[0x277D85DE8];
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (([userCopy isCurrentUser] & 1) != 0 || (-[HMDCloudShareParticipantsManager dataSource](self, "dataSource"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "manager:shouldShareWithUser:", self, userCopy), v9, (v10 & 1) == 0))
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v19;
      v23 = 2112;
      v24 = userCopy;
      v25 = 2112;
      v26 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Not inviting ineligible user %@ using device: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      shortDescription = [userCopy shortDescription];
      v21 = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = shortDescription;
      v25 = 2112;
      v26 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Inviting user %@ using device: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCloudShareParticipantsManager *)selfCopy2 _inviteUser:userCopy usingDevice:deviceCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateShareParticipants
{
  v85 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDCloudShareParticipantsManager *)self home];
  v5 = home;
  if (!home)
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v47;
      v48 = "%{public}@Not updating share participants because home reference is nil";
      v49 = v46;
      v50 = OS_LOG_TYPE_DEFAULT;
LABEL_38:
      _os_log_impl(&dword_2531F8000, v49, v50, v48, buf, 0xCu);
    }

LABEL_39:

    objc_autoreleasePoolPop(v44);
    goto LABEL_44;
  }

  homeManager = [home homeManager];
  hasLoadedData = [homeManager hasLoadedData];

  if ((hasLoadedData & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v47;
      v48 = "%{public}@Not updating share participants because home manager has not finished loading data";
      v49 = v46;
      v50 = OS_LOG_TYPE_INFO;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  dataSource = [(HMDCloudShareParticipantsManager *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([dataSource areShareModificationsEnabledForManager:self] & 1) == 0)
  {
    v51 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v54;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_DEBUG, "%{public}@Not updating share participants because share modifications are disabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating share participants", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    cloudZone = [(HMDCloudShareParticipantsManager *)selfCopy4 cloudZone];
    participants = [cloudZone participants];

    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(participants, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = participants;
    v16 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v75;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v75 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v74 + 1) + 8 * i);
          clientIdentifier = [v20 clientIdentifier];
          [v15 setObject:v20 forKeyedSubscript:clientIdentifier];
        }

        v17 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v17);
    }

    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v70 = 0u;
    users = [v5 users];
    v23 = [users countByEnumeratingWithState:&v70 objects:v83 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v71;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v71 != v25)
          {
            objc_enumerationMutation(users);
          }

          v27 = *(*(&v70 + 1) + 8 * j);
          if (([v27 isCurrentUser] & 1) == 0 && objc_msgSend(dataSource, "manager:shouldShareWithUser:", selfCopy4, v27))
          {
            [(HMDCloudShareParticipantsManager *)selfCopy4 _inviteUser:v27 usingDevice:0];
            uuid = [v27 uuid];
            [v15 setObject:0 forKeyedSubscript:uuid];
          }
        }

        v24 = [users countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v24);
    }

    v59 = selfCopy4;
    v60 = v5;
    v56 = dataSource;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v29 = v15;
    v61 = [v29 countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v61)
    {
      v58 = *v67;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v67 != v58)
          {
            objc_enumerationMutation(v29);
          }

          v31 = *(*(&v66 + 1) + 8 * k);
          v32 = [v29 objectForKeyedSubscript:v31];
          v33 = objc_autoreleasePoolPush();
          v34 = v59;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v79 = v36;
            v80 = 2112;
            v81 = v32;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Revoking cloud share for existing cloud share participant: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          cloudZone2 = [(HMDCloudShareParticipantsManager *)v34 cloudZone];
          v38 = [cloudZone2 revokeShareAccessForParticipant:v32];
          v39 = MEMORY[0x277D2C938];
          workQueue2 = [(HMDCloudShareParticipantsManager *)v34 workQueue];
          v41 = [v39 schedulerWithDispatchQueue:workQueue2];
          v42 = [v38 reschedule:v41];
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __59__HMDCloudShareParticipantsManager_updateShareParticipants__block_invoke;
          v62[3] = &unk_27972E568;
          v63 = v60;
          v64 = v31;
          v65 = v34;
          v43 = [v42 addSuccessBlock:v62];
        }

        v61 = [v29 countByEnumeratingWithState:&v66 objects:v82 count:16];
      }

      while (v61);
    }

    v5 = v60;
    dataSource = v56;
  }

LABEL_44:
  v55 = *MEMORY[0x277D85DE8];
}

void __59__HMDCloudShareParticipantsManager_updateShareParticipants__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userWithUUID:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 48) delegate];
    [v3 manager:*(a1 + 48) didRevokeShareAccessForUser:v4];

    v2 = v4;
  }
}

- (void)configure
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDCloudShareParticipantsManager *)self home];
  v5 = home;
  if (home)
  {
    homeManager = [home homeManager];
    if (homeManager)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_handleHomeUserAddedNotification_ name:@"HMDHomeUserAddedNotification" object:v5];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v5];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel_handleHomeDataLoadedNotification_ name:@"HMDHomeManagerHomeDataLoadedNotification" object:homeManager];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Not configuring participants manager because home manager reference is nil", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Not configuring participants manager because home reference is nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSSet)participatingUsers
{
  cloudZone = [(HMDCloudShareParticipantsManager *)self cloudZone];
  participants = [cloudZone participants];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDCloudShareParticipantsManager_participatingUsers__block_invoke;
  v7[3] = &unk_27972AFC0;
  v7[4] = self;
  v5 = [participants na_map:v7];

  return v5;
}

id __54__HMDCloudShareParticipantsManager_participatingUsers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v3 clientIdentifier];

  v6 = [v4 userWithUUID:v5];

  return v6;
}

- (HMDCloudShareParticipantsManager)initWithQueue:(id)queue cloudZone:(id)zone home:(id)home
{
  queueCopy = queue;
  zoneCopy = zone;
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = HMDCloudShareParticipantsManager;
  v12 = [(HMDCloudShareParticipantsManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeStrong(&v13->_cloudZone, zone);
    objc_storeWeak(&v13->_home, homeCopy);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_108159 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_108159, &__block_literal_global_108160);
  }

  v3 = logCategory__hmf_once_v25_108161;

  return v3;
}

uint64_t __47__HMDCloudShareParticipantsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_108161;
  logCategory__hmf_once_v25_108161 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end