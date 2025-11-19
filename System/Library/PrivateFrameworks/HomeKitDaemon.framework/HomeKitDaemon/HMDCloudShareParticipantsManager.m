@interface HMDCloudShareParticipantsManager
+ (id)logCategory;
- (BOOL)isAcceptedParticipatingUser:(id)a3;
- (HMDCloudShareParticipantsManager)initWithQueue:(id)a3 cloudZone:(id)a4 home:(id)a5;
- (HMDCloudShareParticipantsManagerDataSource)dataSource;
- (HMDCloudShareParticipantsManagerDelegate)delegate;
- (HMDHome)home;
- (NSSet)participatingUsers;
- (id)logIdentifier;
- (void)_inviteUser:(id)a3 usingDevice:(id)a4;
- (void)clearParticipants;
- (void)configure;
- (void)handleHomeDataLoadedNotification:(id)a3;
- (void)handleHomeUserAddedNotification:(id)a3;
- (void)handleHomeUserRemovedNotification:(id)a3;
- (void)inviteUser:(id)a3 usingDevice:(id)a4;
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
  v2 = [(HMDCloudShareParticipantsManager *)self cloudZone];
  v3 = [v2 zoneID];
  v4 = [v3 name];

  return v4;
}

- (void)handleHomeDataLoadedNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home data loaded notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCloudShareParticipantsManager *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDCloudShareParticipantsManager_handleHomeDataLoadedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v6;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeUserRemovedNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home user removed notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCloudShareParticipantsManager *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDCloudShareParticipantsManager_handleHomeUserRemovedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v6;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeUserAddedNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling home user added notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCloudShareParticipantsManager *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDCloudShareParticipantsManager_handleHomeUserAddedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v6;
  dispatch_async(v9, block);

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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch invitation context due to cloud share ID future error: %@", &v9, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating share invitation context for user %@ using trusted cloud share id: %@", &v15, 0x20u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch invitation context: %@", &v9, 0x16u);
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

- (void)_inviteUser:(id)a3 usingDevice:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCloudShareParticipantsManager *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 manager:self shouldGrantWriteAccessToUser:v6];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HMDCloudShareParticipantsManager *)self cloudZone];
  v12 = [v6 uuid];
  v13 = [v11 participantWithClientIdentifier:v12];

  if ([v13 hasAccepted])
  {
    if (v10 != [v13 hasWriteAccess])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
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
        v36 = v6;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating write access from %@ to %@ for user %@", buf, 0x2Au);

        v14 = v25;
      }

      objc_autoreleasePoolPop(v14);
      v20 = [(HMDCloudShareParticipantsManager *)v15 cloudZone];
      v21 = [v20 setWriteAccessEnabled:v10 forParticipant:v13];
    }
  }

  else
  {
    v22 = [(HMDCloudShareParticipantsManager *)self _fetchInvitationToUser:v6 shouldGrantWriteAccess:v10];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__HMDCloudShareParticipantsManager__inviteUser_usingDevice___block_invoke;
    v26[3] = &unk_27867C0F0;
    v26[4] = self;
    v27 = v6;
    v28 = v7;
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending invitation %@ to device: %@", &v24, 0x20u);
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending invitation %@ to user: %@", &v24, 0x20u);
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
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not create invitation to send to user %@: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAcceptedParticipatingUser:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudShareParticipantsManager *)self cloudZone];
  v6 = [v4 uuid];

  v7 = [v5 participantWithClientIdentifier:v6];

  LOBYTE(v5) = [v7 hasAccepted];
  return v5;
}

- (void)clearParticipants
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Clearing share participants", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCloudShareParticipantsManager *)v4 cloudZone];
  v8 = [v7 participants];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
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
        v15 = [(HMDCloudShareParticipantsManager *)v4 cloudZone];
        v16 = [v15 revokeShareAccessForParticipant:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)inviteUser:(id)a3 usingDevice:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (([v6 isCurrentUser] & 1) != 0 || (-[HMDCloudShareParticipantsManager dataSource](self, "dataSource"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "manager:shouldShareWithUser:", self, v6), v9, (v10 & 1) == 0))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v19;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Not inviting ineligible user %@ using device: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v6 shortDescription];
      v21 = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Inviting user %@ using device: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCloudShareParticipantsManager *)v12 _inviteUser:v6 usingDevice:v7];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateShareParticipants
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCloudShareParticipantsManager *)self home];
  v5 = v4;
  if (!v4)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = self;
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
      _os_log_impl(&dword_229538000, v49, v50, v48, buf, 0xCu);
    }

LABEL_39:

    objc_autoreleasePoolPop(v44);
    goto LABEL_44;
  }

  v6 = [v4 homeManager];
  v7 = [v6 hasLoadedData];

  if ((v7 & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = self;
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

  v8 = [(HMDCloudShareParticipantsManager *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v8 areShareModificationsEnabledForManager:self] & 1) == 0)
  {
    v51 = objc_autoreleasePoolPush();
    v52 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v54;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_DEBUG, "%{public}@Not updating share participants because share modifications are disabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating share participants", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDCloudShareParticipantsManager *)v10 cloudZone];
    v14 = [v13 participants];

    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v14;
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
          v21 = [v20 clientIdentifier];
          [v15 setObject:v20 forKeyedSubscript:v21];
        }

        v17 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v17);
    }

    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v70 = 0u;
    v22 = [v5 users];
    v23 = [v22 countByEnumeratingWithState:&v70 objects:v83 count:16];
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
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v70 + 1) + 8 * j);
          if (([v27 isCurrentUser] & 1) == 0 && objc_msgSend(v8, "manager:shouldShareWithUser:", v10, v27))
          {
            [(HMDCloudShareParticipantsManager *)v10 _inviteUser:v27 usingDevice:0];
            v28 = [v27 uuid];
            [v15 setObject:0 forKeyedSubscript:v28];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v24);
    }

    v59 = v10;
    v60 = v5;
    v56 = v8;

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
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Revoking cloud share for existing cloud share participant: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          v37 = [(HMDCloudShareParticipantsManager *)v34 cloudZone];
          v38 = [v37 revokeShareAccessForParticipant:v32];
          v39 = MEMORY[0x277D2C938];
          v40 = [(HMDCloudShareParticipantsManager *)v34 workQueue];
          v41 = [v39 schedulerWithDispatchQueue:v40];
          v42 = [v38 reschedule:v41];
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __59__HMDCloudShareParticipantsManager_updateShareParticipants__block_invoke;
          v62[3] = &unk_2786835C0;
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
    v8 = v56;
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
  v3 = [(HMDCloudShareParticipantsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCloudShareParticipantsManager *)self home];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 homeManager];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 addObserver:self selector:sel_handleHomeUserAddedNotification_ name:@"HMDHomeUserAddedNotification" object:v5];

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 addObserver:self selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v5];

      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:self selector:sel_handleHomeDataLoadedNotification_ name:@"HMDHomeManagerHomeDataLoadedNotification" object:v6];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Not configuring participants manager because home manager reference is nil", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Not configuring participants manager because home reference is nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSSet)participatingUsers
{
  v3 = [(HMDCloudShareParticipantsManager *)self cloudZone];
  v4 = [v3 participants];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDCloudShareParticipantsManager_participatingUsers__block_invoke;
  v7[3] = &unk_27867C0C0;
  v7[4] = self;
  v5 = [v4 na_map:v7];

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

- (HMDCloudShareParticipantsManager)initWithQueue:(id)a3 cloudZone:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDCloudShareParticipantsManager;
  v12 = [(HMDCloudShareParticipantsManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, a3);
    objc_storeStrong(&v13->_cloudZone, a4);
    objc_storeWeak(&v13->_home, v11);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_161677 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_161677, &__block_literal_global_161678);
  }

  v3 = logCategory__hmf_once_v25_161679;

  return v3;
}

void __47__HMDCloudShareParticipantsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_161679;
  logCategory__hmf_once_v25_161679 = v1;
}

@end