@interface HMDIDSInvitationManager
+ (id)logCategory;
- (BOOL)_resolveAccountWithMergeID:(id)d fromAddress:(id)address;
- (HMDHomeManager)homeManager;
- (HMDIDSInvitationManager)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher queue:(id)queue remoteAccountManager:(id)accountManager;
- (HMDIDSInvitationManager)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher queue:(id)queue remoteAccountManager:(id)accountManager idsInvitationManager:(id)invitationManager;
- (id)_receivedInvitationWithUniqueID:(id)d;
- (id)_sendOptions:(BOOL)options;
- (id)_sentInvitationWithUniqueID:(id)d;
- (void)_cancelIDSSentInvitations:(id)invitations;
- (void)_cancelPendingIDSSentInvitationForHomeInvitationID:(id)d completionBlock:(id)block;
- (void)acceptInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d dictionary:(id)dictionary completionBlock:(id)block;
- (void)auditIDSSentInvitationsUsingCurrentInvitationUUIDs:(id)ds;
- (void)cancelInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d completionBlock:(id)block;
- (void)declineInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d completionBlock:(id)block;
- (void)handleForwardedAcceptance:(id)acceptance;
- (void)manager:(id)manager incomingInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation;
- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation;
- (void)sendInvitationToDestination:(id)destination expirationDate:(id)date dictionary:(id)dictionary homeInvitationID:(id)d isRestrictedGuestInvitation:(BOOL)invitation completionBlock:(id)block;
@end

@implementation HMDIDSInvitationManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)handleForwardedAcceptance:(id)acceptance
{
  v54[5] = *MEMORY[0x277D85DE8];
  acceptanceCopy = acceptance;
  v5 = MEMORY[0x277CBEB98];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v54[2] = objc_opt_class();
  v54[3] = objc_opt_class();
  v54[4] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:5];
  v7 = [v5 setWithArray:v6];

  v8 = [acceptanceCopy stringForKey:@"HMDInvitationForwardMessageHomeUUIDKey"];
  v9 = [acceptanceCopy stringForKey:@"HMDInvitationForwardMessageInvitationUUIDKey"];
  v10 = [acceptanceCopy stringForKey:@"HMDInvitationForwardMessageOriginKey"];
  v11 = [acceptanceCopy stringForKey:@"HMDInvitationForwardMessageOriginMergeIDKey"];
  if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
  }

  else
  {
    v12 = 0;
  }

  v13 = [acceptanceCopy dataForKey:@"HMDInvitationForwardMessageOriginPayloadKey"];
  if (v9)
  {
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
  }

  else
  {
    v14 = 0;
  }

  v31 = v13;
  v32 = v9;
  v41 = 0;
  v15 = [MEMORY[0x277CCAAC8] _strictlyUnarchivedObjectOfClasses:v7 fromData:v13 error:&v41];
  v33 = v41;
  v34 = v14;
  if (!v10 || !v11 || !v12 || !v15 || !v14)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v25 = contexta = v8;
      *buf = 138544642;
      v43 = v25;
      v44 = 2112;
      v45 = v10;
      v46 = 2112;
      v47 = v11;
      v48 = 2112;
      v49 = v12;
      v50 = 2112;
      v51 = v15;
      v52 = 2112;
      v53 = v33;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Missing info on forwarded acceptance message (origin: %@ mergeID: %@ home: %@ payload: %@), error %@", buf, 0x3Eu);

      v8 = contexta;
    }

    v26 = v22;
    goto LABEL_22;
  }

  v16 = [(HMDIDSInvitationManager *)self _resolveAccountWithMergeID:v11 fromAddress:v10];
  context = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  v19 = v18;
  if (!v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v27;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to process forwarded shared user invitation acceptance due to remote account resolving error", buf, 0xCu);
    }

    v26 = context;
LABEL_22:
    objc_autoreleasePoolPop(v26);
    goto LABEL_23;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v43 = v20;
    v44 = 2112;
    v45 = v10;
    v46 = 2112;
    v47 = v11;
    v48 = 2112;
    v49 = v12;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Processing forwarded invitation acceptance from user %@/%@ for home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(context);
  workQueue = [(HMDIDSInvitationManager *)selfCopy2 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDIDSInvitationManager_handleForwardedAcceptance___block_invoke;
  block[3] = &unk_278683598;
  block[4] = selfCopy2;
  v36 = v34;
  v37 = v12;
  v38 = v15;
  v39 = v10;
  v40 = v11;
  dispatch_async(workQueue, block);

LABEL_23:
  v28 = *MEMORY[0x277D85DE8];
}

void __53__HMDIDSInvitationManager_handleForwardedAcceptance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeManager];
  [v2 handleAcceptRequestForIDSInvitationWithIdentifier:*(a1 + 40) homeUUID:*(a1 + 48) payload:*(a1 + 56) fromAddress:*(a1 + 64) fromMergeID:*(a1 + 72)];
}

- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation
{
  v34 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invitationCopy = invitation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    senderMergeID = [invitationCopy senderMergeID];
    *buf = 138543874;
    v29 = v11;
    v30 = 2112;
    v31 = invitationCopy;
    v32 = 2112;
    v33 = senderMergeID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received incoming request to decline invitation %@ with mergeID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  context = [invitationCopy context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [invitationCopy context];
    workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMDIDSInvitationManager_manager_receiverDidDeclineInvitation___block_invoke;
    block[3] = &unk_27868A010;
    v25 = invitationCopy;
    v26 = context2;
    v27 = selfCopy;
    v17 = context2;
    dispatch_async(workQueue, block);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uniqueID = [invitationCopy uniqueID];
      *buf = 138543874;
      v29 = v21;
      v30 = 2112;
      v31 = uniqueID;
      v32 = 2112;
      v33 = invitationCopy;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Expected invitation (%@) with IDSDictionaryInvitationContext context but got different type %@. Dropping invitation", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __64__HMDIDSInvitationManager_manager_receiverDidDeclineInvitation___block_invoke(id *a1)
{
  v2 = [a1[4] destination];
  v3 = [v2 destinationURIs];
  v10 = [v3 anyObject];

  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [a1[5] dictionary];
  v6 = [v5 hmf_stringForKey:*MEMORY[0x277CD0640]];
  v7 = [v4 initWithUUIDString:v6];

  v8 = [a1[6] homeManager];
  v9 = [a1[4] uniqueID];
  [v8 handleDeclineRequestForIDSInvitationWithIdentifier:v9 fromAddress:v10 homeUUID:v7];
}

- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation
{
  v94 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invitationCopy = invitation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    senderMergeID = [invitationCopy senderMergeID];
    *buf = 138543874;
    v89 = v11;
    v90 = 2112;
    v91 = invitationCopy;
    v92 = 2112;
    v93 = senderMergeID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received incoming request to accept invitation %@ with mergeID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  homeManager = [(HMDIDSInvitationManager *)selfCopy homeManager];
  context = [invitationCopy context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (homeManager)
    {
      destination = [invitationCopy destination];
      destinationURIs = [destination destinationURIs];
      anyObject = [destinationURIs anyObject];

      senderMergeID2 = [invitationCopy senderMergeID];
      LOBYTE(destinationURIs) = [(HMDIDSInvitationManager *)selfCopy _resolveAccountWithMergeID:senderMergeID2 fromAddress:anyObject];

      if ((destinationURIs & 1) == 0)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = selfCopy;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v89 = v38;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to process shared user invitation acceptance due to remote account resolving error", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        goto LABEL_35;
      }

      context2 = [invitationCopy context];
      dictionary = [context2 dictionary];
      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      v77 = dictionary;
      v23 = [dictionary hmf_stringForKey:*MEMORY[0x277CD0640]];
      v24 = [v22 initWithUUIDString:v23];

      v78 = v24;
      v76 = [homeManager _homeWithUUID:v24];
      primaryResident = [v76 primaryResident];
      v26 = primaryResident;
      if (primaryResident)
      {
        if ([primaryResident isCurrentDevice])
        {
          workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__HMDIDSInvitationManager_manager_receiverDidAcceptInvitation___block_invoke;
          block[3] = &unk_278689550;
          v81 = homeManager;
          v82 = invitationCopy;
          v28 = v78;
          v83 = v78;
          v29 = v77;
          v84 = v77;
          v85 = anyObject;
          dispatch_async(workQueue, block);

LABEL_34:
LABEL_35:

          goto LABEL_36;
        }

        device = [v26 device];

        context = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        v46 = v45;
        if (device)
        {
          v74 = context2;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543874;
            v89 = v47;
            v90 = 2112;
            v91 = v26;
            v92 = 2112;
            v93 = v78;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Forwarding invitation acceptance to %@ as the local device is no longer the primary for %@.", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          v48 = [HMDRemoteDeviceMessageDestination alloc];
          uuid = [homeManager uuid];
          [v26 device];
          v50 = v67 = v44;
          v51 = [(HMDRemoteDeviceMessageDestination *)v48 initWithTarget:uuid device:v50];

          v79 = 0;
          v29 = v77;
          v52 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v77 requiringSecureCoding:1 error:&v79];
          v70 = v51;
          contexta = v79;
          v69 = v52;
          if (contexta)
          {
            v53 = objc_autoreleasePoolPush();
            v54 = v67;
            v55 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v56 = v68 = v53;
              *buf = 138543874;
              v89 = v56;
              v90 = 2112;
              v91 = contexta;
              v92 = 2112;
              v93 = v77;
              _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Error %@ while encoding payload for forwarding invitation acceptance: %@", buf, 0x20u);

              v53 = v68;
            }

            objc_autoreleasePoolPop(v53);
            v28 = v78;
            v57 = v70;
          }

          else
          {
            v87[0] = anyObject;
            v86[0] = @"HMDInvitationForwardMessageOriginKey";
            v86[1] = @"HMDInvitationForwardMessageOriginMergeIDKey";
            senderMergeID3 = [invitationCopy senderMergeID];
            v87[1] = senderMergeID3;
            v86[2] = @"HMDInvitationForwardMessageHomeUUIDKey";
            v28 = v78;
            uUIDString = [v78 UUIDString];
            v87[2] = uUIDString;
            v87[3] = v52;
            v86[3] = @"HMDInvitationForwardMessageOriginPayloadKey";
            v86[4] = @"HMDInvitationForwardMessageInvitationUUIDKey";
            uniqueID = [invitationCopy uniqueID];
            uUIDString2 = [uniqueID UUIDString];
            v87[4] = uUIDString2;
            v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:5];

            v57 = v70;
            v63 = [MEMORY[0x277D0F848] messageWithName:@"HMDInvitationForwardMessage" destination:v70 payload:v62];
            messageDispatcher = [(HMDIDSInvitationManager *)v67 messageDispatcher];
            [messageDispatcher sendMessage:v63 completionHandler:0];

            v29 = v77;
          }

          context2 = v74;
          goto LABEL_34;
        }

        v58 = v44;
        v29 = v77;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543618;
          v89 = v75;
          v90 = 2112;
          v91 = v78;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Unable to process shared user invitation acceptance as the primary resident for home %@ has no device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = selfCopy;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v42 = v73 = context2;
          *buf = 138543618;
          v89 = v42;
          v90 = 2112;
          v91 = v78;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to process shared user invitation acceptance as there is no primary resident for home %@", buf, 0x16u);

          context2 = v73;
        }

        objc_autoreleasePoolPop(v39);
        v29 = v77;
      }

      v28 = v78;
      goto LABEL_34;
    }

    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v33;
      v90 = 2112;
      v91 = invitationCopy;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Received shared user invitation acceptance for invitation %@ but there's no home manager.", buf, 0x16u);
      goto LABEL_13;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      uniqueID2 = [invitationCopy uniqueID];
      *buf = 138543874;
      v89 = v33;
      v90 = 2112;
      v91 = uniqueID2;
      v92 = 2112;
      v93 = invitationCopy;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Expected invitation (%@) with IDSDictionaryInvitationContext context but got different type %@. Dropping invitation", buf, 0x20u);

LABEL_13:
    }
  }

  objc_autoreleasePoolPop(v30);
LABEL_36:

  v65 = *MEMORY[0x277D85DE8];
}

void __63__HMDIDSInvitationManager_manager_receiverDidAcceptInvitation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) uniqueID];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) senderMergeID];
  [v2 handleAcceptRequestForIDSInvitationWithIdentifier:v7 homeUUID:v5 payload:v3 fromAddress:v4 fromMergeID:v6];
}

- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invitationCopy = invitation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = invitationCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Incoming request to cancel invitation %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HMDIDSInvitationManager_manager_senderDidCancelInvitation___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = selfCopy;
  v16 = invitationCopy;
  v13 = invitationCopy;
  dispatch_async(workQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __61__HMDIDSInvitationManager_manager_senderDidCancelInvitation___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) homeManager];
  v2 = [*(a1 + 40) uniqueID];
  [v3 handleCancelRequestForIDSInvitationWithIdentifier:v2];
}

- (void)manager:(id)manager incomingInvitation:(id)invitation
{
  v39 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invitationCopy = invitation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    fromID = [invitationCopy fromID];
    senderMergeID = [invitationCopy senderMergeID];
    *buf = 138544387;
    v30 = v11;
    v31 = 2112;
    v32 = invitationCopy;
    v33 = 2160;
    v34 = 1752392040;
    v35 = 2112;
    v36 = fromID;
    v37 = 2113;
    v38 = senderMergeID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received incoming invitation %@ from user %{mask.hash}@ with mergeID %{private}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  context = [invitationCopy context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [invitationCopy context];
    workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDIDSInvitationManager_manager_incomingInvitation___block_invoke;
    block[3] = &unk_27868A010;
    v26 = invitationCopy;
    v27 = selfCopy;
    v28 = context2;
    v18 = context2;
    dispatch_async(workQueue, block);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uniqueID = [invitationCopy uniqueID];
      *buf = 138543874;
      v30 = v22;
      v31 = 2112;
      v32 = uniqueID;
      v33 = 2112;
      v34 = invitationCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Expected invitation (%@) with IDSDictionaryInvitationContext context but got different type %@. Dropping invitation", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __54__HMDIDSInvitationManager_manager_incomingInvitation___block_invoke(id *a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] fromID];
  v3 = [HMDAccountHandle accountHandleForDestination:v2];
  v4 = [a1[4] senderMergeID];
  v5 = [HMDAccountIdentifier accountIdentifierForSenderCorrelationIdentifier:v4];

  v6 = [HMDAccount alloc];
  v28[0] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v8 = [(HMDAccount *)v6 initWithIdentifier:v5 handles:v7 devices:MEMORY[0x277CBEBF8]];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[5];
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v21 = v3;
    v13 = v12 = v2;
    v14 = [a1[4] uniqueID];
    v15 = [v14 UUIDString];
    *buf = 138543874;
    v23 = v13;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Calling handleAccessHomeInviteFromAccount for invite %@ with account %@", buf, 0x20u);

    v2 = v12;
    v3 = v21;
  }

  objc_autoreleasePoolPop(v9);
  v16 = [a1[5] homeManager];
  v17 = [a1[4] senderMergeID];
  v18 = [a1[4] uniqueID];
  v19 = [a1[6] dictionary];
  [v16 handleReceivedIDSInviteFromAccount:v8 mergeID:v17 idsInvitationIdentifier:v18 payload:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_resolveAccountWithMergeID:(id)d fromAddress:(id)address
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  addressCopy = address;
  v8 = [HMDDeviceHandle deviceHandleForDestination:addressCopy];
  v9 = [HMDAccountHandle accountHandleForDestination:addressCopy];
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v13;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 2112;
      v26 = addressCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse sender address: %{mask.hash}@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = 0;
  }

  else
  {
    v14 = [HMDAccountIdentifier accountIdentifierForSenderCorrelationIdentifier:dCopy];
    v15 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v8 accountHandle:v9 accountIdentifier:v14 deviceVersion:0 pairingIdentityIdentifier:0];
    remoteAccountManager = [(HMDIDSInvitationManager *)self remoteAccountManager];
    v17 = [remoteAccountManager accountForSenderContext:v15];
    v18 = v17 != 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)cancelInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d completionBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  blockCopy = block;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v34 = v14;
    v35 = 2112;
    v36 = dCopy;
    v37 = 2112;
    v38 = identifierCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Request to cancelInvitationWithIdentifier (homeID:%@) idsID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (identifierCopy)
  {
    v15 = [(HMDIDSInvitationManager *)selfCopy _sentInvitationWithUniqueID:identifierCopy];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v34 = v20;
        v35 = 2112;
        v36 = dCopy;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending cancellation for invite (homeID:%@) %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      idsInvitationManager = v17->_idsInvitationManager;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __94__HMDIDSInvitationManager_cancelInvitationWithIDSIdentifier_homeInvitationID_completionBlock___block_invoke;
      v29[3] = &unk_27868A528;
      v29[4] = v17;
      v30 = dCopy;
      v31 = identifierCopy;
      v32 = blockCopy;
      [(IDSInvitationManager *)idsInvitationManager cancelInvitation:v15 serverAcknowledgedBlock:v29];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v26;
        v35 = 2112;
        v36 = identifierCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not find pending invite with ID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (blockCopy)
      {
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
        (*(blockCopy + 2))(blockCopy, identifierCopy, v27);
      }

      v15 = 0;
    }

    goto LABEL_17;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v25;
    v35 = 2112;
    v36 = dCopy;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite must be provided for home invite %@, cannot cancel", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  if (blockCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v15);
LABEL_17:
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __94__HMDIDSInvitationManager_cancelInvitationWithIDSIdentifier_homeInvitationID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for cancelInvitation (homeID:%@) idsID %@, error %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)acceptInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d dictionary:(id)dictionary completionBlock:(id)block
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  dictionaryCopy = dictionary;
  blockCopy = block;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v38 = v17;
    v39 = 2112;
    v40 = dCopy;
    v41 = 2112;
    v42 = identifierCopy;
    v43 = 2112;
    v44 = dictionaryCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Request to acceptInvitationWithIDSIdentifier (homeID:%@) idsID %@ payload %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  if (identifierCopy)
  {
    v18 = [(HMDIDSInvitationManager *)selfCopy _receivedInvitationWithUniqueID:identifierCopy];
    v19 = [objc_alloc(MEMORY[0x277D186F0]) initWithDictionary:dictionaryCopy schema:@"hk-invite-v1"];
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v18)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v24;
        v39 = 2112;
        v40 = dCopy;
        v41 = 2112;
        v42 = v18;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Sending accept for invite (homeID:%@) %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      idsInvitationManager = v21->_idsInvitationManager;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __105__HMDIDSInvitationManager_acceptInvitationWithIDSIdentifier_homeInvitationID_dictionary_completionBlock___block_invoke;
      v33[3] = &unk_27868A528;
      v33[4] = v21;
      v34 = dCopy;
      v35 = identifierCopy;
      v36 = blockCopy;
      [(IDSInvitationManager *)idsInvitationManager acceptInvitation:v18 withContext:v19 serverAcknowledgedBlock:v33];
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v30;
        v39 = 2112;
        v40 = identifierCopy;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find received invite with ID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      if (blockCopy)
      {
        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
        (*(blockCopy + 2))(blockCopy, identifierCopy, v31);
      }
    }

    goto LABEL_17;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v29;
    v39 = 2112;
    v40 = dCopy;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite must be provided for home invite %@, cannot accept", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  if (blockCopy)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v18);
LABEL_17:
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __105__HMDIDSInvitationManager_acceptInvitationWithIDSIdentifier_homeInvitationID_dictionary_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for acceptInvitation (homeID:%@) idsID %@, error %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)declineInvitationWithIDSIdentifier:(id)identifier homeInvitationID:(id)d completionBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  blockCopy = block;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v34 = v14;
    v35 = 2112;
    v36 = dCopy;
    v37 = 2112;
    v38 = identifierCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Request to declineInvitationWithIDSIdentifier (homeID:%@) idsID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (identifierCopy)
  {
    v15 = [(HMDIDSInvitationManager *)selfCopy _receivedInvitationWithUniqueID:identifierCopy];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v34 = v20;
        v35 = 2112;
        v36 = dCopy;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending decline for invite (homeID:%@) %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      idsInvitationManager = v17->_idsInvitationManager;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __95__HMDIDSInvitationManager_declineInvitationWithIDSIdentifier_homeInvitationID_completionBlock___block_invoke;
      v29[3] = &unk_27868A528;
      v29[4] = v17;
      v30 = dCopy;
      v31 = identifierCopy;
      v32 = blockCopy;
      [(IDSInvitationManager *)idsInvitationManager declineInvitation:v15 serverAcknowledgedBlock:v29];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v26;
        v35 = 2112;
        v36 = identifierCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not find received invite with ID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (blockCopy)
      {
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
        (*(blockCopy + 2))(blockCopy, identifierCopy, v27);
      }

      v15 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = dCopy;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite must be provided for home invite %@, cannot decline", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, v15);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __95__HMDIDSInvitationManager_declineInvitationWithIDSIdentifier_homeInvitationID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for declineInvitation (homeID:%@) idsID %@, error %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_cancelPendingIDSSentInvitationForHomeInvitationID:(id)d completionBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Checking for an existing IDSSentInvitation to cancel for homeInvitationID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__99142;
  v42 = __Block_byref_object_dispose__99143;
  v43 = 0;
  pendingInvitations = [(IDSInvitationManager *)selfCopy->_idsInvitationManager pendingInvitations];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __94__HMDIDSInvitationManager__cancelPendingIDSSentInvitationForHomeInvitationID_completionBlock___block_invoke;
  v31[3] = &unk_278677D88;
  v31[4] = selfCopy;
  v13 = dCopy;
  v32 = v13;
  v33 = buf;
  [pendingInvitations hmf_enumerateWithAutoreleasePoolUsingBlock:v31];

  v14 = *(*&buf[8] + 40) == 0;
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  if (v14)
  {
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *v34 = 138543362;
      v35 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@No existing IDSSentInvitation found to cancel", v34, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, 0);
    }
  }

  else
  {
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(*&buf[8] + 40);
      *v34 = 138543874;
      v35 = v18;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending cancellation for pending invite (homeID:%@) %@", v34, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    uniqueID = [*(*&buf[8] + 40) uniqueID];
    idsInvitationManager = selfCopy->_idsInvitationManager;
    v22 = *(*&buf[8] + 40);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __94__HMDIDSInvitationManager__cancelPendingIDSSentInvitationForHomeInvitationID_completionBlock___block_invoke_39;
    v27[3] = &unk_27868A528;
    v27[4] = v16;
    v28 = v13;
    v23 = uniqueID;
    v29 = v23;
    v30 = blockCopy;
    [(IDSInvitationManager *)idsInvitationManager cancelInvitation:v22 serverAcknowledgedBlock:v27];
  }

  _Block_object_dispose(buf, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __94__HMDIDSInvitationManager__cancelPendingIDSSentInvitationForHomeInvitationID_completionBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 context];
  v8 = [v7 dictionary];
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@IDSSentInvitation: %@, payload: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v8 hmf_UUIDForKey:@"kInvitationIdentifierKey"];
  if ([v13 hmf_isEqualToUUID:*(a1 + 40)])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a3 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __94__HMDIDSInvitationManager__cancelPendingIDSSentInvitationForHomeInvitationID_completionBlock___block_invoke_39(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for cancelInvitation (homeID:%@) idsID %@, error %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 48), v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendInvitationToDestination:(id)destination expirationDate:(id)date dictionary:(id)dictionary homeInvitationID:(id)d isRestrictedGuestInvitation:(BOOL)invitation completionBlock:(id)block
{
  v51 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  dateCopy = date;
  dictionaryCopy = dictionary;
  dCopy = d;
  blockCopy = block;
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138544386;
    v42 = v22;
    v43 = 2112;
    v44 = dCopy;
    v45 = 2112;
    v46 = destinationCopy;
    v47 = 2112;
    v48 = dateCopy;
    v49 = 2112;
    v50 = dictionaryCopy;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Request to sendInvitationToDestination (homeID:%@) for destination %@ expirationDate %@, payload: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [objc_alloc(MEMORY[0x277D186F0]) initWithDictionary:dictionaryCopy schema:@"hk-invite-v1"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__HMDIDSInvitationManager_sendInvitationToDestination_expirationDate_dictionary_homeInvitationID_isRestrictedGuestInvitation_completionBlock___block_invoke;
  aBlock[3] = &unk_278677DB0;
  aBlock[4] = selfCopy;
  v39 = dCopy;
  v40 = blockCopy;
  v24 = blockCopy;
  v25 = dCopy;
  v26 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __142__HMDIDSInvitationManager_sendInvitationToDestination_expirationDate_dictionary_homeInvitationID_isRestrictedGuestInvitation_completionBlock___block_invoke_37;
  v32[3] = &unk_278677DD8;
  v32[4] = selfCopy;
  v33 = destinationCopy;
  v34 = dateCopy;
  v35 = v23;
  invitationCopy = invitation;
  v36 = v26;
  v27 = v26;
  v28 = v23;
  v29 = dateCopy;
  v30 = destinationCopy;
  [(HMDIDSInvitationManager *)selfCopy _cancelPendingIDSSentInvitationForHomeInvitationID:v25 completionBlock:v32];

  v31 = *MEMORY[0x277D85DE8];
}

void __142__HMDIDSInvitationManager_sendInvitationToDestination_expirationDate_dictionary_homeInvitationID_isRestrictedGuestInvitation_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = [v5 uniqueID];
    v16 = 138544130;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received server response for invitation (homeID:%@): IDSID %@ with error %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = [v5 uniqueID];
    (*(v13 + 16))(v13, v14, v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __142__HMDIDSInvitationManager_sendInvitationToDestination_expirationDate_dictionary_homeInvitationID_isRestrictedGuestInvitation_completionBlock___block_invoke_37(uint64_t a1)
{
  v6 = [*(a1 + 32) idsInvitationManager];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _sendOptions:*(a1 + 72)];
  [v6 sendInvitationToDestination:v4 expirationDate:v2 context:v3 options:v5 serverAcknowledgedBlock:*(a1 + 64)];
}

- (void)_cancelIDSSentInvitations:(id)invitations
{
  v37 = *MEMORY[0x277D85DE8];
  invitationsCopy = invitations;
  workQueue = [(HMDIDSInvitationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v6 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = invitationsCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v7)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v33 = v13;
          v34 = 2112;
          v35 = v9;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending cancellation for existing sent invite %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        idsInvitationManager = self->_idsInvitationManager;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __53__HMDIDSInvitationManager__cancelIDSSentInvitations___block_invoke;
        v23[3] = &unk_278688518;
        v23[4] = v9;
        v23[5] = selfCopy;
        v25 = v30;
        v24 = v6;
        [(IDSInvitationManager *)idsInvitationManager cancelInvitation:v9 serverAcknowledgedBlock:v23];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v7);
  }

  workQueue2 = [(HMDIDSInvitationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDIDSInvitationManager__cancelIDSSentInvitations___block_invoke_34;
  block[3] = &unk_27868A4D8;
  block[4] = self;
  v21 = obj;
  v22 = v30;
  v16 = obj;
  dispatch_group_notify(v6, workQueue2, block);

  _Block_object_dispose(v30, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __53__HMDIDSInvitationManager__cancelIDSSentInvitations___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) uniqueID];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to cancel existing sent invite idsID %@, error %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully canceled existing sent invite idsID %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  dispatch_group_leave(*(a1 + 48));

  v11 = *MEMORY[0x277D85DE8];
}

void __53__HMDIDSInvitationManager__cancelIDSSentInvitations___block_invoke_34(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) count];
    v7 = *(*(*(a1 + 48) + 8) + 24);
    v8 = HMFBooleanToString();
    v10 = 138543874;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Canceling [%lu] existing IDSSentInvitations finished, all succeeded: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)auditIDSSentInvitationsUsingCurrentInvitationUUIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = dsCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Auditing existing IDSSentInvitations using allow set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy__99142;
  v20 = __Block_byref_object_dispose__99143;
  array = [MEMORY[0x277CBEB18] array];
  pendingInvitations = [(IDSInvitationManager *)selfCopy->_idsInvitationManager pendingInvitations];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HMDIDSInvitationManager_auditIDSSentInvitationsUsingCurrentInvitationUUIDs___block_invoke;
  v14[3] = &unk_278677D88;
  v10 = dsCopy;
  v15 = v10;
  v16 = selfCopy;
  v17 = buf;
  [pendingInvitations hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

  workQueue = [(HMDIDSInvitationManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDIDSInvitationManager_auditIDSSentInvitationsUsingCurrentInvitationUUIDs___block_invoke_31;
  block[3] = &unk_27868A688;
  block[4] = selfCopy;
  block[5] = buf;
  dispatch_async(workQueue, block);

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __78__HMDIDSInvitationManager_auditIDSSentInvitationsUsingCurrentInvitationUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 uniqueID];
  v5 = [*(a1 + 32) containsObject:v4];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Should cancel %@, IDSSentInvitation: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if ((v5 & 1) == 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __78__HMDIDSInvitationManager_auditIDSSentInvitationsUsingCurrentInvitationUUIDs___block_invoke_31(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  [v1 _cancelIDSSentInvitations:v2];
}

- (id)_sendOptions:(BOOL)options
{
  optionsCopy = options;
  v30 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  if (optionsCopy)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D188F8]];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D18638]];
  }

  homeManager = [(HMDIDSInvitationManager *)self homeManager];
  appleAccountManager = [homeManager appleAccountManager];
  account = [appleAccountManager account];
  primaryDisplayHandle = [account primaryDisplayHandle];
  v11 = [primaryDisplayHandle URI];
  prefixedURI = [v11 prefixedURI];

  if (prefixedURI)
  {
    [v5 setObject:prefixedURI forKeyedSubscript:*MEMORY[0x277D185E0]];
    v13 = v5;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      homeManager2 = [(HMDIDSInvitationManager *)selfCopy homeManager];
      appleAccountManager2 = [homeManager2 appleAccountManager];
      account2 = [appleAccountManager2 account];
      primaryHandle = [account2 primaryHandle];
      v24 = 138543874;
      v25 = v17;
      v26 = 2160;
      v27 = 1752392040;
      v28 = 2112;
      v29 = primaryHandle;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to extract fromID for current account's primary handle: %{mask.hash}@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_receivedInvitationWithUniqueID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    receivedInvitations = [(IDSInvitationManager *)self->_idsInvitationManager receivedInvitations];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HMDIDSInvitationManager__receivedInvitationWithUniqueID___block_invoke;
    v13[3] = &unk_278677D60;
    v14 = dCopy;
    v6 = [receivedInvitations na_firstObjectPassingTest:v13];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite ID must be provided to find matching received invitation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __59__HMDIDSInvitationManager__receivedInvitationWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)_sentInvitationWithUniqueID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    pendingInvitations = [(IDSInvitationManager *)self->_idsInvitationManager pendingInvitations];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__HMDIDSInvitationManager__sentInvitationWithUniqueID___block_invoke;
    v13[3] = &unk_278677D38;
    v14 = dCopy;
    v6 = [pendingInvitations na_firstObjectPassingTest:v13];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@A IDS invite ID must be provided to find matching sent invitation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __55__HMDIDSInvitationManager__sentInvitationWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (HMDIDSInvitationManager)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher queue:(id)queue remoteAccountManager:(id)accountManager idsInvitationManager:(id)invitationManager
{
  v67 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  accountManagerCopy = accountManager;
  invitationManagerCopy = invitationManager;
  v60.receiver = self;
  v60.super_class = HMDIDSInvitationManager;
  v15 = [(HMDIDSInvitationManager *)&v60 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    v45 = queueCopy;
    v46 = dispatcherCopy;
    v47 = managerCopy;
    objc_storeWeak(&v15->_homeManager, managerCopy);
    objc_storeStrong(p_isa + 3, queue);
    objc_storeStrong(p_isa + 2, dispatcher);
    objc_storeStrong(p_isa + 4, accountManager);
    objc_storeStrong(p_isa + 5, invitationManager);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [p_isa[5] pendingInvitations];
    v17 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v57;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v57 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v56 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = p_isa;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            uniqueID = [v21 uniqueID];
            uUIDString = [uniqueID UUIDString];
            *buf = 138543618;
            v63 = v25;
            v64 = 2112;
            v65 = uUIDString;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Found pending sent invite: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v18);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obja = [p_isa[5] receivedInvitations];
    v28 = [obja countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v53;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(obja);
          }

          v32 = *(*(&v52 + 1) + 8 * j);
          v33 = objc_autoreleasePoolPush();
          v34 = p_isa;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            uniqueID2 = [v32 uniqueID];
            uUIDString2 = [uniqueID2 UUIDString];
            *buf = 138543618;
            v63 = v36;
            v64 = 2112;
            v65 = uUIDString2;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Found pending received invite: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
        }

        v29 = [obja countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v29);
    }

    [p_isa[5] setDelegate:p_isa queue:p_isa[3]];
    dispatcherCopy = v46;
    managerCopy = v47;
    queueCopy = v45;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = p_isa;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543362;
    v63 = v42;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Initialized HMDIDSInvitationManager since modern transport is enabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v39);
  v43 = *MEMORY[0x277D85DE8];
  return v40;
}

- (HMDIDSInvitationManager)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher queue:(id)queue remoteAccountManager:(id)accountManager
{
  v10 = MEMORY[0x277D18730];
  accountManagerCopy = accountManager;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  v15 = [[v10 alloc] initWithServiceIdentifier:@"com.apple.private.alloy.home.invite"];
  v16 = [(HMDIDSInvitationManager *)self initWithHomeManager:managerCopy messageDispatcher:dispatcherCopy queue:queueCopy remoteAccountManager:accountManagerCopy idsInvitationManager:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t52 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t52, &__block_literal_global_99178);
  }

  v3 = logCategory__hmf_once_v53;

  return v3;
}

void __38__HMDIDSInvitationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v53;
  logCategory__hmf_once_v53 = v1;
}

@end