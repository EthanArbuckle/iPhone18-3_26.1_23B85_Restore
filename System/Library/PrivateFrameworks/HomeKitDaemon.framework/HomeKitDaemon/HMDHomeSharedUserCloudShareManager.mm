@interface HMDHomeSharedUserCloudShareManager
+ (id)logCategory;
- (BOOL)_onlyShareOwnerInShare:(id)share;
- (HMDHomeSharedUserCloudShareManager)initWithCloudShareService:(id)service;
- (HMDHomeSharedUserCloudShareManager)initWithContainer:(id)container sharedStore:(id)store privateStore:(id)privateStore moc:(id)moc;
- (id)_createShareForSharedUserDataWithHomeModelID:(id)d logEventBuilder:(id)builder;
- (id)_existingShareForSharedUserDataWithHomeModelID:(id)d error:(id *)error;
- (id)_existingSharedUserDataRootWithHomeModelID:(id)d error:(id *)error;
- (id)_existingSharedUserDataRootWithoutShareWithHomeModelID:(id)d error:(id *)error;
- (id)_existingSharedUserPrivateRootWithHomeModelID:(id)d error:(id *)error;
- (id)_existingSharesForSharedUserDataWithHomeModelID:(id)d error:(id *)error;
- (id)_shareForSharedUserDataWithHomeModelID:(id)d logEventBuilder:(id)builder;
- (id)acceptShareInvitation:(id)invitation homeWithHomeModelID:(id)d;
- (id)fetchUserRecordIDForOwner:(id)owner home:(id)home;
- (id)grantAccessForOwner:(id)owner sharedUserDataWithHomeModelID:(id)d logEventBuilder:(id)builder;
- (id)leaveShareWithSharedHomeModelID:(id)d;
- (void)_deleteDanglingShare:(id)share homeModelID:(id)d;
- (void)_removeSharedUserDataRootsForHomeWithModelID:(id)d;
- (void)_verifyMKFCKSharedUserDataRootExistsForHomeModelID:(id)d;
- (void)removeShareForSharedUserDataWithHomeModelID:(id)d;
- (void)removeSharesWithNoParticipantForHomeWithModelID:(id)d;
- (void)revokeAccessForOwner:(id)owner sharedUserDataWithHomeModelID:(id)d;
@end

@implementation HMDHomeSharedUserCloudShareManager

- (void)_verifyMKFCKSharedUserDataRootExistsForHomeModelID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Verifying MKFCKSharedUserDataRoot exists for home %@ after 1-minute delay", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  managedObjectContext = [(HMDCoreDataCloudShareService *)selfCopy->_shareService managedObjectContext];
  privateStore = [(HMDCoreDataCloudShareService *)selfCopy->_shareService privateStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HMDHomeSharedUserCloudShareManager__verifyMKFCKSharedUserDataRootExistsForHomeModelID___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = selfCopy;
  v16 = dCopy;
  v17 = privateStore;
  v18 = managedObjectContext;
  v11 = managedObjectContext;
  v12 = privateStore;
  v13 = dCopy;
  [v11 performBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __89__HMDHomeSharedUserCloudShareManager__verifyMKFCKSharedUserDataRootExistsForHomeModelID___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching MKFCKSharedUserDataRoot for home %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = +[MKFCKSharedUserDataRoot fetchRequest];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", *(a1 + 40)];
  [v7 setPredicate:v8];

  v31[0] = *(a1 + 48);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v7 setAffectedStores:v9];

  [v7 setFetchLimit:1];
  v10 = *(a1 + 56);
  v24 = 0;
  v11 = [v10 executeFetchRequest:v7 error:&v24];
  v12 = v24;
  v13 = [v11 firstObject];

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully verified MKFCKSharedUserDataRoot exists for home %@ after 1-minute delay", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 40);
      *buf = 138543874;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFCKSharedUserDataRoot for home %@ after 1-minute delay, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v22 = +[HMDTTRManager sharedManager];
    [v22 requestRadarWithDisplayReason:@"detected issue related to HomeKit Shared User functionality" radarTitle:@"MKFCKSharedUserDataRoot could not be verified after creation" componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)fetchUserRecordIDForOwner:(id)owner home:(id)home
{
  ownerCopy = owner;
  homeCopy = home;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMDHomeSharedUserCloudShareManager_fetchUserRecordIDForOwner_home___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = homeCopy;
  v16 = ownerCopy;
  v10 = ownerCopy;
  v11 = homeCopy;
  v12 = [v8 inContext:managedObjectContext perform:v14];

  return v12;
}

uint64_t __69__HMDHomeSharedUserCloudShareManager_fetchUserRecordIDForOwner_home___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 _shareForSharedUserDataWithHomeModelID:v3 logEventBuilder:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDHomeSharedUserCloudShareManager_fetchUserRecordIDForOwner_home___block_invoke_2;
  v10[3] = &unk_278686800;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  v5 = [v4 then:v10];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __69__HMDHomeSharedUserCloudShareManager_fetchUserRecordIDForOwner_home___block_invoke_2(v8, v9);
  }
}

uint64_t __69__HMDHomeSharedUserCloudShareManager_fetchUserRecordIDForOwner_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [*(a1 + 40) accountHandle];
  v6 = [v4 fetchUserRecordIDForUserWithAccountHandle:v5 share:v3];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDHomeSharedUserCloudShareManager *)v9 _onlyShareOwnerInShare:v10, v11];
  }
}

- (BOOL)_onlyShareOwnerInShare:(id)share
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  participants = [share participants];
  v4 = [participants countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(participants);
        }

        if ([*(*(&v11 + 1) + 8 * i) role] != 1)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [participants countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_deleteDanglingShare:(id)share homeModelID:(id)d
{
  dCopy = d;
  shareService = self->_shareService;
  shareCopy = share;
  container = [(HMDCoreDataCloudShareService *)shareService container];
  recordID = [shareCopy recordID];

  zoneID = [recordID zoneID];
  privateStore = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HMDHomeSharedUserCloudShareManager__deleteDanglingShare_homeModelID___block_invoke;
  v14[3] = &unk_278686A28;
  v14[4] = self;
  v15 = dCopy;
  v13 = dCopy;
  [container purgeObjectsAndRecordsInZoneWithID:zoneID inPersistentStore:privateStore completion:v14];
}

void __71__HMDHomeSharedUserCloudShareManager__deleteDanglingShare_homeModelID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      v13 = "%{public}@Removing dangling share for user data for home %@ failed with %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v14, v15, v13, &v19, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v17;
    v13 = "%{public}@Removed dangling share for user data for home %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeSharesWithNoParticipantForHomeWithModelID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Looking for dangling shares to remove for home %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = MEMORY[0x277D0F7C0];
  managedObjectContext = [(HMDCoreDataCloudShareService *)selfCopy->_shareService managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__HMDHomeSharedUserCloudShareManager_removeSharesWithNoParticipantForHomeWithModelID___block_invoke;
  v14[3] = &unk_2786898D8;
  v14[4] = selfCopy;
  v15 = dCopy;
  v11 = dCopy;
  v12 = [v9 inContext:managedObjectContext perform:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HMDHomeSharedUserCloudShareManager_removeSharesWithNoParticipantForHomeWithModelID___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v32 = 0;
  v4 = [v2 _existingSharesForSharedUserDataWithHomeModelID:v3 error:&v32];
  v5 = v32;
  if (v4 && [v4 count] > 1)
  {
    v23 = v5;
    v24 = v4;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v4;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = *(*(a1 + 32) + 8);
          v17 = [v15 recordID];
          v18 = [v16 fetchShareWithRecordID:v17];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __86__HMDHomeSharedUserCloudShareManager_removeSharesWithNoParticipantForHomeWithModelID___block_invoke_164;
          v26[3] = &unk_278686A00;
          v19 = *(a1 + 40);
          v26[4] = *(a1 + 32);
          v26[5] = v15;
          v27 = v19;
          v20 = [v18 then:v26];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v5 = v23;
    v4 = v24;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      *buf = 138543618;
      v35 = v9;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@One or fewer reverse shares for home %@, nothing to prune.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __86__HMDHomeSharedUserCloudShareManager_removeSharesWithNoParticipantForHomeWithModelID___block_invoke_164(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Completed fetch for share %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if ([*(a1 + 32) _onlyShareOwnerInShare:v3])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = *(a1 + 48);
        v18 = 138543874;
        v19 = v12;
        v20 = 2112;
        v21 = v3;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing dangling share %@ for home %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      [*(a1 + 32) _deleteDanglingShare:v3 homeModelID:*(a1 + 48)];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Performed a fetch for share %@ but found none", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_createShareForSharedUserDataWithHomeModelID:(id)d logEventBuilder:(id)builder
{
  v75 = *MEMORY[0x277D85DE8];
  dCopy = d;
  builderCopy = builder;
  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  privateStore = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  [builderCopy markCreateMKFCKSharedUserDataRootBegin];
  v70 = 0;
  v10 = [(HMDHomeSharedUserCloudShareManager *)self _existingSharedUserDataRootWithoutShareWithHomeModelID:dCopy error:&v70];
  v11 = v70;
  v61 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v16;
      v73 = 2114;
      v74 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Checking for existing shared data root failed with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = MEMORY[0x277CCA9B8];
    v18 = HMDSanitizeCoreDataError(v12);
    firstObject = [v17 hmInternalErrorWithCode:3507 underlyingError:v18];

    v20 = MEMORY[0x277D0F7C0];
    v21 = HMDSanitizeCoreDataError(firstObject);
    v22 = [v20 futureWithError:v21];
  }

  else
  {
    v23 = [v10 count];
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (v27)
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v28;
        v73 = 2112;
        v74 = dCopy;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Will attempt to re-share existing MKFCKSharedUserDataRoot for home %@ that doesn't have an associated share", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      firstObject = [v61 firstObject];
    }

    else
    {
      if (v27)
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v29;
        v73 = 2112;
        v74 = dCopy;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating MKFCKSharedUserDataRoot for home %@ since none was found", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      firstObject = [MKFCKSharedUserDataRoot createWithHomeModelID:dCopy persistentStore:privateStore context:managedObjectContext];
      v30 = dispatch_time(0, 60000000000);
      v31 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __99__HMDHomeSharedUserCloudShareManager__createShareForSharedUserDataWithHomeModelID_logEventBuilder___block_invoke;
      block[3] = &unk_27868A750;
      block[4] = selfCopy2;
      v69 = dCopy;
      dispatch_after(v30, v31, block);
    }

    v67 = 0;
    v21 = [(HMDHomeSharedUserCloudShareManager *)selfCopy2 _existingSharedUserPrivateRootWithHomeModelID:dCopy error:&v67];
    v32 = v67;
    if (v32)
    {
      v12 = v32;
      v58 = privateStore;
      v33 = managedObjectContext;
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy2;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v37;
        v73 = 2114;
        v74 = v12;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Checking for existing private settings root failed with error: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v38 = MEMORY[0x277CCA9B8];
      v39 = HMDSanitizeCoreDataError(v12);
      v40 = [v38 hmInternalErrorWithCode:3506 underlyingError:v39];

      v41 = MEMORY[0x277D0F7C0];
      v42 = HMDSanitizeCoreDataError(v40);
      v22 = [v41 futureWithError:v42];

      managedObjectContext = v33;
      privateStore = v58;
    }

    else
    {
      if (!v21)
      {
        context = objc_autoreleasePoolPush();
        v43 = selfCopy2;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v59 = privateStore;
          v46 = v45 = managedObjectContext;
          *buf = 138543618;
          *&buf[4] = v46;
          v73 = 2112;
          v74 = dCopy;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Creating MKFCKSharedUserPrivateRoot for home %@ since none was found", buf, 0x16u);

          managedObjectContext = v45;
          privateStore = v59;
        }

        objc_autoreleasePoolPop(context);
        v47 = [MKFCKSharedUserPrivateRoot createWithHomeModelID:dCopy persistentStore:privateStore context:managedObjectContext];
      }

      [builderCopy markCreateMKFCKSharedUserDataRootEnd];
      v48 = objc_autoreleasePoolPush();
      v49 = selfCopy2;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v60 = privateStore;
        v52 = v51 = managedObjectContext;
        *buf = 138543618;
        *&buf[4] = v52;
        v73 = 2112;
        v74 = dCopy;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Creating reverse share for shared user data for home %@", buf, 0x16u);

        managedObjectContext = v51;
        privateStore = v60;
      }

      objc_autoreleasePoolPop(v48);
      [builderCopy markCreateReverseShareBegin];
      *buf = 0;
      v22 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      container = [(HMDCoreDataCloudShareService *)self->_shareService container];
      v71 = firstObject;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __99__HMDHomeSharedUserCloudShareManager__createShareForSharedUserDataWithHomeModelID_logEventBuilder___block_invoke_160;
      v62[3] = &unk_278686AE0;
      v62[4] = v49;
      v63 = dCopy;
      v64 = builderCopy;
      v65 = *buf;
      firstObject = firstObject;
      v66 = firstObject;
      [container shareManagedObjects:v54 toShare:0 completion:v62];

      v12 = 0;
    }
  }

  v55 = *MEMORY[0x277D85DE8];

  return v22;
}

void __99__HMDHomeSharedUserCloudShareManager__createShareForSharedUserDataWithHomeModelID_logEventBuilder___block_invoke_160(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      v28 = 138543874;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create share for home %@ due to %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [*(a1 + 48) markError:v12];
    [*(a1 + 56) rejectWithError:v12];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      v28 = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Created reverse share successful for home %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v21 = [*(a1 + 64) objectID];
    if (([v9 containsObject:v21] & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543874;
        v29 = v25;
        v30 = 2112;
        v31 = v21;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Sharing reverse objects succeeded but returned object IDs don't match expected. Expected: %@, Got: %@", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = +[HMDTTRManager sharedManager];
      [v26 requestRadarWithDisplayReason:@"detected issue related to HomeKit Shared User functionality" radarTitle:@"shareManagedObjects returned unexpected object IDs for MKFCKSharedUserDataRoot" componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];
    }

    [*(a1 + 48) markCreateReverseShareEnd];
    [*(a1 + 56) fulfillWithValue:v10];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_existingSharedUserPrivateRootWithHomeModelID:(id)d error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = +[MKFCKSharedUserPrivateRoot fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", dCopy];

  [v7 setPredicate:dCopy];
  privateStore = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v16[0] = privateStore;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v7 setAffectedStores:v10];

  [v7 setFetchLimit:1];
  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v12 = [managedObjectContext executeFetchRequest:v7 error:error];
  firstObject = [v12 firstObject];

  v14 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)_existingShareForSharedUserDataWithHomeModelID:(id)d error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(HMDHomeSharedUserCloudShareManager *)self _existingSharesForSharedUserDataWithHomeModelID:dCopy error:error];
  if ([v7 count] >= 2)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@More than one shared data root with home modelID %@ is found, using the first one", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  firstObject = [v7 firstObject];

  v13 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)_existingSharesForSharedUserDataWithHomeModelID:(id)d error:(id *)error
{
  v61[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v7 = +[MKFCKSharedUserDataRoot fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", dCopy];
  [v7 setPredicate:dCopy];

  privateStore = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v61[0] = privateStore;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
  [v7 setAffectedStores:v10];

  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v12 = [managedObjectContext executeFetchRequest:v7 error:error];

  if (*error || ![v12 count])
  {
    v13 = 0;
    v14 = array;
  }

  else
  {
    v15 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v12;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v52;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v52 != v19)
          {
            objc_enumerationMutation(v16);
          }

          objectID = [*(*(&v51 + 1) + 8 * i) objectID];
          [v15 addObject:objectID];
        }

        v18 = [v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v18);
    }

    container = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v23 = [v15 copy];
    v24 = [container fetchSharesMatchingObjectIDs:v23 error:error];

    v14 = array;
    if (*error)
    {
      v13 = 0;
    }

    else
    {
      v40 = v7;
      v41 = dCopy;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v15;
      v25 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v48;
        v44 = v15;
        do
        {
          v28 = 0;
          v45 = v26;
          do
          {
            if (*v48 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v47 + 1) + 8 * v28);
            v30 = [v24 objectForKeyedSubscript:v29];
            if (v30)
            {
              [v14 addObject:v30];
            }

            else
            {
              v31 = v27;
              v32 = v24;
              v33 = objc_autoreleasePoolPush();
              selfCopy = self;
              selfCopy2 = self;
              v36 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v37 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v37;
                v57 = 2112;
                v58 = v29;
                _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@No CKShare for objectID %@ in map", buf, 0x16u);

                v14 = array;
              }

              objc_autoreleasePoolPop(v33);
              self = selfCopy;
              v24 = v32;
              v27 = v31;
              v15 = v44;
              v26 = v45;
            }

            ++v28;
          }

          while (v26 != v28);
          v26 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v26);
      }

      v13 = [v14 copy];
      v7 = v40;
      dCopy = v41;
    }

    v12 = v42;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_existingSharedUserDataRootWithoutShareWithHomeModelID:(id)d error:(id *)error
{
  v6 = [(HMDHomeSharedUserCloudShareManager *)self _existingSharedUserDataRootWithHomeModelID:d error:?];
  v7 = v6;
  if (*error || ![v6 count])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v7 na_map:&__block_literal_global_158_256707];
    container = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v11 = [container fetchSharesMatchingObjectIDs:v9 error:error];

    if (*error)
    {
      v8 = 0;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __99__HMDHomeSharedUserCloudShareManager__existingSharedUserDataRootWithoutShareWithHomeModelID_error___block_invoke_2;
      v13[3] = &unk_278686AB8;
      v14 = v11;
      v8 = [v7 na_filter:v13];
    }
  }

  return v8;
}

BOOL __99__HMDHomeSharedUserCloudShareManager__existingSharedUserDataRootWithoutShareWithHomeModelID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 == 0;

  return v5;
}

- (id)_existingSharedUserDataRootWithHomeModelID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = +[MKFCKSharedUserDataRoot fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", dCopy];

  [v7 setPredicate:dCopy];
  privateStore = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v15[0] = privateStore;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v7 setAffectedStores:v10];

  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v12 = [managedObjectContext executeFetchRequest:v7 error:error];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_shareForSharedUserDataWithHomeModelID:(id)d logEventBuilder:(id)builder
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  builderCopy = builder;
  v20 = 0;
  v8 = [(HMDHomeSharedUserCloudShareManager *)self _existingShareForSharedUserDataWithHomeModelID:dCopy error:&v20];
  v9 = v20;
  if (v9)
  {
    v10 = [MEMORY[0x277D0F7C0] futureWithError:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v15;
        v23 = 2112;
        v24 = dCopy;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Found existing reverse share for home %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [builderCopy markCreateMKFCKSharedUserDataRootBegin];
      [builderCopy markCreateMKFCKSharedUserDataRootEnd];
      [builderCopy markCreateReverseShareBegin];
      [builderCopy markCreateReverseShareEnd];
      v10 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
    }

    else
    {
      if (v14)
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v16;
        v23 = 2112;
        v24 = dCopy;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@No reverse share for home found, creating a new reverse share with owner for home %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v10 = [(HMDHomeSharedUserCloudShareManager *)selfCopy _createShareForSharedUserDataWithHomeModelID:dCopy logEventBuilder:builderCopy];
    }
  }

  v17 = v10;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)leaveShareWithSharedHomeModelID:(id)d
{
  dCopy = d;
  v5 = self->_shareService;
  v16 = 0;
  v6 = [MEMORY[0x277D0F7C0] futureWithPromise:&v16];
  managedObjectContext = [(HMDCoreDataCloudShareService *)v5 managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HMDHomeSharedUserCloudShareManager_leaveShareWithSharedHomeModelID___block_invoke;
  v11[3] = &unk_2786891E0;
  v12 = dCopy;
  v13 = v5;
  selfCopy = self;
  v15 = v16;
  v8 = v5;
  v9 = dCopy;
  [managedObjectContext performBlock:v11];

  return v6;
}

void __70__HMDHomeSharedUserCloudShareManager_leaveShareWithSharedHomeModelID___block_invoke(id *a1)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v2 = +[MKFCKSharedHome fetchRequest];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"modelID", a1[4]];
  [v2 setPredicate:v3];

  v4 = [a1[5] sharedStore];
  v60[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  [v2 setAffectedStores:v5];

  v6 = [a1[5] managedObjectContext];
  v52 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v52];
  v8 = v52;

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1[6];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = a1[4];
      *buf = 138543874;
      v55 = v12;
      v56 = 2112;
      v57 = v13;
      v58 = 2112;
      v59 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Leaving shared home %@ failed due to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [a1[7] rejectWithError:v8];
  }

  else if ([v7 hmf_isEmpty])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1[6];
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = a1[4];
      *buf = 138543618;
      v55 = v17;
      v56 = 2112;
      v57 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Unable to leave non-existence shared home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = a1[7];
    v20 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2018];
    [v19 rejectWithError:v20];

    v8 = 0;
  }

  else
  {
    v21 = [v7 na_map:&__block_literal_global_154_256715];
    v22 = [a1[5] container];
    v51 = 0;
    v23 = [v22 fetchSharesMatchingObjectIDs:v21 error:&v51];
    v8 = v51;

    if (v8)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1[6];
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v27;
        v56 = 2112;
        v57 = v7;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get share mapping for shared homes %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = a1[7];
      v29 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2018 underlyingError:v8];
      [v28 rejectWithError:v29];
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v29 = [v23 allValues];
      v30 = [v29 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v30)
      {
        v31 = v30;
        v43 = v2;
        v40 = v23;
        v41 = v21;
        v42 = v7;
        v32 = *v48;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v47 + 1) + 8 * i);
            v35 = [a1[5] container];
            v36 = [v34 recordID];
            v37 = [v36 zoneID];
            v38 = [a1[5] sharedStore];
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __70__HMDHomeSharedUserCloudShareManager_leaveShareWithSharedHomeModelID___block_invoke_155;
            v44[3] = &unk_278686A70;
            v44[4] = a1[6];
            v45 = a1[4];
            v46 = a1[7];
            [v35 purgeObjectsAndRecordsInZoneWithID:v37 inPersistentStore:v38 completion:v44];
          }

          v31 = [v29 countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v31);
        v7 = v42;
        v2 = v43;
        v21 = v41;
        v23 = v40;
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __70__HMDHomeSharedUserCloudShareManager_leaveShareWithSharedHomeModelID___block_invoke_155(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Leaving share for shared home %@ failed with %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) rejectWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Left share for shared home %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) fulfillWithNoValue];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)acceptShareInvitation:(id)invitation homeWithHomeModelID:(id)d
{
  dCopy = d;
  invitationCopy = invitation;
  v8 = +[HMDCoreData sharedInstance];
  v9 = +[MKFCKSharedHome entity];
  v10 = [v8 applyVoucherForModel:v9 withModelID:dCopy eventType:1 storeType:1];

  v11 = [(HMDCoreDataCloudShareService *)self->_shareService acceptShareInvitation:invitationCopy];

  ignoreResult = [v11 ignoreResult];

  return ignoreResult;
}

- (void)_removeSharedUserDataRootsForHomeWithModelID:(id)d
{
  v81[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[MKFCKSharedUserPrivateRoot fetchRequest];
  v65 = dCopy;
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", dCopy];
  [v5 setPredicate:dCopy];

  privateStore = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v81[0] = privateStore;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
  [v5 setAffectedStores:v8];

  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v73 = 0;
  v10 = [managedObjectContext executeFetchRequest:v5 error:&v73];
  v11 = v73;

  if (!v10 || ![v10 count])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v16 = v15 = v10;
      v17 = HMDSanitizeCoreDataError(v11);
      *buf = 138543618;
      v75 = v16;
      v76 = 2112;
      v77 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFCKSharedUserPrivateRoot with error: %@", buf, 0x16u);

      v10 = v15;
    }

    objc_autoreleasePoolPop(v12);
  }

  v18 = +[MKFCKSharedUserDataRoot fetchRequest];
  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", v65];
  [v18 setPredicate:v19];

  managedObjectContext2 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v72 = 0;
  v21 = [managedObjectContext2 executeFetchRequest:v18 error:&v72];
  v22 = v72;

  v63 = v22;
  v64 = v10;
  if (!v21 || ![v21 count])
  {
    v23 = v11;
    v24 = v21;
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      HMDSanitizeCoreDataError(v22);
      v30 = v29 = v18;
      *buf = 138543618;
      v75 = v28;
      v76 = 2112;
      v77 = v30;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFCKSharedUserDataRoot with error: %@", buf, 0x16u);

      v18 = v29;
      v22 = v63;

      v10 = v64;
    }

    objc_autoreleasePoolPop(v25);
    v21 = v24;
    v11 = v23;
  }

  v31 = [MEMORY[0x277CBEBF8] arrayByAddingObjectsFromArray:v10];
  v32 = [v31 arrayByAddingObjectsFromArray:v21];

  if ([v32 count])
  {
    v59 = v21;
    v60 = v18;
    v61 = v11;
    v62 = v5;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v58 = v32;
    obj = v32;
    v33 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v69;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v69 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v68 + 1) + 8 * i);
          v38 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          selfCopy4 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543874;
            v75 = v42;
            v76 = 2112;
            v77 = v37;
            v78 = 2112;
            v79 = v65;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Removing shared user data root %@ for home with model ID %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
          self = selfCopy3;
          managedObjectContext3 = [(HMDCoreDataCloudShareService *)selfCopy3->_shareService managedObjectContext];
          [managedObjectContext3 deleteObject:v37];
        }

        v34 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v34);
    }

    managedObjectContext4 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v67 = 0;
    v45 = [managedObjectContext4 hmd_saveWithTransactionAuthor:9 error:&v67];
    v46 = v67;

    v47 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v49 = HMFGetOSLogHandle();
    v50 = v49;
    if (v45)
    {
      v5 = v62;
      v22 = v63;
      v10 = v64;
      v21 = v59;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543618;
        v75 = v51;
        v76 = 2112;
        v77 = v65;
        v52 = "%{public}@Successfully removed shared user data roots for home with model ID %@";
        v53 = v50;
        v54 = OS_LOG_TYPE_INFO;
        v55 = 22;
LABEL_26:
        _os_log_impl(&dword_229538000, v53, v54, v52, buf, v55);
      }
    }

    else
    {
      v5 = v62;
      v22 = v63;
      v10 = v64;
      v21 = v59;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543874;
        v75 = v51;
        v76 = 2112;
        v77 = v65;
        v78 = 2112;
        v79 = v46;
        v52 = "%{public}@Failed to remove shared user data roots for home with modelmID %@ with error: %@";
        v53 = v50;
        v54 = OS_LOG_TYPE_ERROR;
        v55 = 32;
        goto LABEL_26;
      }
    }

    objc_autoreleasePoolPop(v47);
    managedObjectContext5 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    [managedObjectContext5 reset];

    v18 = v60;
    v11 = v61;
    v32 = v58;
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)removeShareForSharedUserDataWithHomeModelID:(id)d
{
  dCopy = d;
  v5 = self->_shareService;
  v6 = MEMORY[0x277D0F7C0];
  managedObjectContext = [(HMDCoreDataCloudShareService *)v5 managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HMDHomeSharedUserCloudShareManager_removeShareForSharedUserDataWithHomeModelID___block_invoke;
  v11[3] = &unk_278686828;
  v11[4] = self;
  v12 = dCopy;
  v13 = v5;
  v8 = v5;
  v9 = dCopy;
  v10 = [v6 inContext:managedObjectContext perform:v11];
}

uint64_t __82__HMDHomeSharedUserCloudShareManager_removeShareForSharedUserDataWithHomeModelID___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _removeSharedUserDataRootsForHomeWithModelID:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v25 = 0;
  v4 = [v2 _existingShareForSharedUserDataWithHomeModelID:v3 error:&v25];
  v5 = v25;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      *buf = 138543874;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v5;
      v11 = "%{public}@Fetching existing share for user data for home %@ failed with %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_4:
      _os_log_impl(&dword_229538000, v12, v13, v11, buf, v14);
    }
  }

  else
  {
    if (v4)
    {
      v15 = [*(a1 + 48) container];
      v16 = [v4 recordID];
      v17 = [v16 zoneID];
      v18 = [*(a1 + 48) privateStore];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __82__HMDHomeSharedUserCloudShareManager_removeShareForSharedUserDataWithHomeModelID___block_invoke_146;
      v23[3] = &unk_278686A28;
      v19 = *(a1 + 40);
      v23[4] = *(a1 + 32);
      v24 = v19;
      [v15 purgeObjectsAndRecordsInZoneWithID:v17 inPersistentStore:v18 completion:v23];

      goto LABEL_8;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v22 = *(a1 + 40);
      *buf = 138543618;
      v27 = v9;
      v28 = 2112;
      v29 = v22;
      v11 = "%{public}@No share for user data for home %@ to remove";
      v12 = v8;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 22;
      goto LABEL_4;
    }
  }

  objc_autoreleasePoolPop(v6);
LABEL_8:

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

void __82__HMDHomeSharedUserCloudShareManager_removeShareForSharedUserDataWithHomeModelID___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      v13 = "%{public}@Removing share for user data for home %@ failed with %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v14, v15, v13, &v19, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v17;
    v13 = "%{public}@Removed share for user data for home %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)revokeAccessForOwner:(id)owner sharedUserDataWithHomeModelID:(id)d
{
  ownerCopy = owner;
  dCopy = d;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HMDHomeSharedUserCloudShareManager_revokeAccessForOwner_sharedUserDataWithHomeModelID___block_invoke;
  v13[3] = &unk_278686828;
  v13[4] = self;
  v14 = dCopy;
  v15 = ownerCopy;
  v10 = ownerCopy;
  v11 = dCopy;
  v12 = [v8 inContext:managedObjectContext perform:v13];
}

uint64_t __89__HMDHomeSharedUserCloudShareManager_revokeAccessForOwner_sharedUserDataWithHomeModelID___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v21 = 0;
  v4 = [v2 _existingShareForSharedUserDataWithHomeModelID:v3 error:&v21];
  v5 = v21;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      *buf = 138543874;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v5;
      v11 = "%{public}@Fetching existing share for user data for home %@ failed with %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_4:
      _os_log_impl(&dword_229538000, v12, v13, v11, buf, v14);
    }
  }

  else
  {
    if (v4)
    {
      v15 = *(*(a1 + 32) + 8);
      v16 = [*(a1 + 48) accountHandle];
      v17 = [v15 revokeAccessForUserWithAccountHandle:v16 share:v4];

      goto LABEL_8;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      *buf = 138543618;
      v23 = v9;
      v24 = 2112;
      v25 = v20;
      v11 = "%{public}@Nothing to do, no existing share for user data home %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 22;
      goto LABEL_4;
    }
  }

  objc_autoreleasePoolPop(v6);
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)grantAccessForOwner:(id)owner sharedUserDataWithHomeModelID:(id)d logEventBuilder:(id)builder
{
  ownerCopy = owner;
  dCopy = d;
  builderCopy = builder;
  v11 = MEMORY[0x277D0F7C0];
  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __104__HMDHomeSharedUserCloudShareManager_grantAccessForOwner_sharedUserDataWithHomeModelID_logEventBuilder___block_invoke;
  v18[3] = &unk_2786886F0;
  v18[4] = self;
  v19 = dCopy;
  v20 = builderCopy;
  v21 = ownerCopy;
  v13 = ownerCopy;
  v14 = builderCopy;
  v15 = dCopy;
  v16 = [v11 inContext:managedObjectContext perform:v18];

  return v16;
}

HMDHomeSharedUserCloudShareManager *__104__HMDHomeSharedUserCloudShareManager_grantAccessForOwner_sharedUserDataWithHomeModelID_logEventBuilder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shareForSharedUserDataWithHomeModelID:*(a1 + 40) logEventBuilder:*(a1 + 48)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __104__HMDHomeSharedUserCloudShareManager_grantAccessForOwner_sharedUserDataWithHomeModelID_logEventBuilder___block_invoke_2;
  v8[3] = &unk_278686A00;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 48);
  v3 = [v2 then:v8];
  if (v3)
  {
    v4 = v3;

    return 3;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return __104__HMDHomeSharedUserCloudShareManager_grantAccessForOwner_sharedUserDataWithHomeModelID_logEventBuilder___block_invoke_2(v6, v7);
  }
}

HMDHomeSharedUserCloudShareManager *__104__HMDHomeSharedUserCloudShareManager_grantAccessForOwner_sharedUserDataWithHomeModelID_logEventBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [*(a1 + 40) accountHandle];
  v6 = [v4 grantAccessForUserWithAccountHandle:v5 share:v3 logEventBuilder:*(a1 + 48)];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDHomeSharedUserCloudShareManager *)v9 initWithContainer:v10 sharedStore:v11 privateStore:v12 moc:v13, v14];
  }
}

- (HMDHomeSharedUserCloudShareManager)initWithContainer:(id)container sharedStore:(id)store privateStore:(id)privateStore moc:(id)moc
{
  mocCopy = moc;
  privateStoreCopy = privateStore;
  storeCopy = store;
  containerCopy = container;
  v14 = [[HMDCoreDataCloudShareService alloc] initWithContainer:containerCopy sharedStore:storeCopy privateStore:privateStoreCopy moc:mocCopy];

  v15 = [(HMDHomeSharedUserCloudShareManager *)self initWithCloudShareService:v14];
  return v15;
}

- (HMDHomeSharedUserCloudShareManager)initWithCloudShareService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = HMDHomeSharedUserCloudShareManager;
  v6 = [(HMDHomeSharedUserCloudShareManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareService, service);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_256735 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_256735, &__block_literal_global_141_256736);
  }

  v3 = logCategory__hmf_once_v27_256737;

  return v3;
}

void __49__HMDHomeSharedUserCloudShareManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27_256737;
  logCategory__hmf_once_v27_256737 = v1;
}

@end