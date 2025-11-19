@interface HMDHH1IDSInvitationManager
- (HMDHH1IDSInvitationManager)initWithHomeManager:(id)a3 workQueue:(id)a4;
- (HMDHomeManager)homeManager;
- (void)manager:(id)a3 incomingInvitation:(id)a4;
@end

@implementation HMDHH1IDSInvitationManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)manager:(id)a3 incomingInvitation:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 fromID];
    v12 = [v6 senderMergeID];
    *buf = 138544387;
    v46 = v10;
    v47 = 2112;
    v48 = v6;
    v49 = 2160;
    v50 = 1752392040;
    v51 = 2112;
    v52 = v11;
    v53 = 2113;
    v54 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received incoming incompatible HH2 invitation %@ from user %{mask.hash}@ with mergeID %{private}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [v6 context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [v6 fromID];
    v17 = [HMDAccountHandle accountHandleForDestination:v16];

    v18 = [v6 senderMergeID];
    v19 = [HMDAccountIdentifier accountIdentifierForSenderCorrelationIdentifier:v18];

    v20 = [HMDAccount alloc];
    v44 = v17;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v22 = [(HMDAccount *)v20 initWithIdentifier:v19 handles:v21 devices:MEMORY[0x277CBEBF8]];

    v23 = [v15 dictionary];
    v24 = [v23 hmf_stringForKey:*MEMORY[0x277CD23D0]];
    if (v24)
    {
      if (![v23 hmf_BOOLForKey:@"HMDHomeSuppressInviteNotificationKey"])
      {
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __57__HMDHH1IDSInvitationManager_manager_incomingInvitation___block_invoke;
        v41[3] = &unk_279723AB0;
        v41[4] = v8;
        v42 = v22;
        v43 = v24;
        [(HMDAccount *)v42 isOfKnownPersonWithCompletion:v41];

        goto LABEL_18;
      }

      context = objc_autoreleasePoolPush();
      v25 = v8;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v37 = HMFGetLogIdentifier();
        v27 = [(HMDAccount *)v22 name];
        *buf = 138543874;
        v46 = v37;
        v47 = 2160;
        v48 = 1752392040;
        v49 = 2112;
        v50 = v27;
        v28 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping incompatible HH2 invitation from %{mask.hash}@ due to suppress notification flag", buf, 0x20u);
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v25 = v8;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = v38 = v17;
        v35 = [(HMDAccount *)v22 name];
        *buf = 138543874;
        v46 = v34;
        v47 = 2160;
        v48 = 1752392040;
        v49 = 2112;
        v50 = v35;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Dropping incompatible HH2 invitation from %{mask.hash}@ due to missing home name", buf, 0x20u);

        v17 = v38;
      }
    }

    objc_autoreleasePoolPop(context);
LABEL_18:

    goto LABEL_19;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = v8;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    v33 = [v6 uniqueID];
    *buf = 138543875;
    v46 = v32;
    v47 = 2112;
    v48 = v33;
    v49 = 2113;
    v50 = v6;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Expected invitation (%@) with IDSDictionaryInvitationContext context but got different type %{private}@. Dropping incompatible invitation", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v29);
LABEL_19:

  v36 = *MEMORY[0x277D85DE8];
}

void __57__HMDHH1IDSInvitationManager_manager_incomingInvitation___block_invoke(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) name];
    *buf = 138543874;
    v25 = v7;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Posting bulletin for incompatible HH2 invitation from %{mask.hash}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [*(a1 + 32) homeManager];
  v10 = [v9 homes];

  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([v14 isOwnerUser])
        {
          v11 = [v14 contextSPIUniqueIdentifier];
          goto LABEL_13;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = +[HMDBulletinBoard sharedBulletinBoard];
  v16 = [*(a1 + 40) name];
  if (a2)
  {
    v17 = *(a1 + 48);
  }

  else
  {
    v17 = 0;
  }

  [v15 insertBulletinForIncompatibleInvitationFromInviterName:v16 homeName:v17 ownedHomeIdentifier:v11];

  v18 = *MEMORY[0x277D85DE8];
}

- (HMDHH1IDSInvitationManager)initWithHomeManager:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HMDHH1IDSInvitationManager;
  v8 = [(HMDHH1IDSInvitationManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_homeManager, v6);
    v10 = [objc_alloc(MEMORY[0x277D18730]) initWithServiceIdentifier:@"com.apple.private.alloy.home.invite"];
    idsInvitationManager = v9->_idsInvitationManager;
    v9->_idsInvitationManager = v10;

    [(IDSInvitationManager *)v9->_idsInvitationManager setDelegate:v9 queue:v7];
  }

  return v9;
}

@end