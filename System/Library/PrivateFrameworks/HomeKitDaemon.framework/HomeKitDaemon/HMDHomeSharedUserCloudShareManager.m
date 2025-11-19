@interface HMDHomeSharedUserCloudShareManager
+ (id)logCategory;
- (BOOL)_onlyShareOwnerInShare:(id)a3;
- (HMDHomeSharedUserCloudShareManager)initWithCloudShareService:(id)a3;
- (HMDHomeSharedUserCloudShareManager)initWithContainer:(id)a3 sharedStore:(id)a4 privateStore:(id)a5 moc:(id)a6;
- (id)_createShareForSharedUserDataWithHomeModelID:(id)a3 logEventBuilder:(id)a4;
- (id)_existingShareForSharedUserDataWithHomeModelID:(id)a3 error:(id *)a4;
- (id)_existingSharedUserDataRootWithHomeModelID:(id)a3 error:(id *)a4;
- (id)_existingSharedUserDataRootWithoutShareWithHomeModelID:(id)a3 error:(id *)a4;
- (id)_existingSharedUserPrivateRootWithHomeModelID:(id)a3 error:(id *)a4;
- (id)_existingSharesForSharedUserDataWithHomeModelID:(id)a3 error:(id *)a4;
- (id)_shareForSharedUserDataWithHomeModelID:(id)a3 logEventBuilder:(id)a4;
- (id)acceptShareInvitation:(id)a3 homeWithHomeModelID:(id)a4;
- (id)fetchUserRecordIDForOwner:(id)a3 home:(id)a4;
- (id)grantAccessForOwner:(id)a3 sharedUserDataWithHomeModelID:(id)a4 logEventBuilder:(id)a5;
- (id)leaveShareWithSharedHomeModelID:(id)a3;
- (void)_deleteDanglingShare:(id)a3 homeModelID:(id)a4;
- (void)_removeSharedUserDataRootsForHomeWithModelID:(id)a3;
- (void)_verifyMKFCKSharedUserDataRootExistsForHomeModelID:(id)a3;
- (void)removeShareForSharedUserDataWithHomeModelID:(id)a3;
- (void)removeSharesWithNoParticipantForHomeWithModelID:(id)a3;
- (void)revokeAccessForOwner:(id)a3 sharedUserDataWithHomeModelID:(id)a4;
@end

@implementation HMDHomeSharedUserCloudShareManager

- (void)_verifyMKFCKSharedUserDataRootExistsForHomeModelID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Verifying MKFCKSharedUserDataRoot exists for home %@ after 1-minute delay", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCoreDataCloudShareService *)v6->_shareService managedObjectContext];
  v10 = [(HMDCoreDataCloudShareService *)v6->_shareService privateStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HMDHomeSharedUserCloudShareManager__verifyMKFCKSharedUserDataRootExistsForHomeModelID___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = v6;
  v16 = v4;
  v17 = v10;
  v18 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v4;
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

- (id)fetchUserRecordIDForOwner:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0F7C0];
  v9 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMDHomeSharedUserCloudShareManager_fetchUserRecordIDForOwner_home___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v7;
  v12 = [v8 inContext:v9 perform:v14];

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

- (BOOL)_onlyShareOwnerInShare:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 participants];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) role] != 1)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)_deleteDanglingShare:(id)a3 homeModelID:(id)a4
{
  v6 = a4;
  shareService = self->_shareService;
  v8 = a3;
  v9 = [(HMDCoreDataCloudShareService *)shareService container];
  v10 = [v8 recordID];

  v11 = [v10 zoneID];
  v12 = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HMDHomeSharedUserCloudShareManager__deleteDanglingShare_homeModelID___block_invoke;
  v14[3] = &unk_278686A28;
  v14[4] = self;
  v15 = v6;
  v13 = v6;
  [v9 purgeObjectsAndRecordsInZoneWithID:v11 inPersistentStore:v12 completion:v14];
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

- (void)removeSharesWithNoParticipantForHomeWithModelID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Looking for dangling shares to remove for home %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = MEMORY[0x277D0F7C0];
  v10 = [(HMDCoreDataCloudShareService *)v6->_shareService managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__HMDHomeSharedUserCloudShareManager_removeSharesWithNoParticipantForHomeWithModelID___block_invoke;
  v14[3] = &unk_2786898D8;
  v14[4] = v6;
  v15 = v4;
  v11 = v4;
  v12 = [v9 inContext:v10 perform:v14];

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

- (id)_createShareForSharedUserDataWithHomeModelID:(id)a3 logEventBuilder:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v9 = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  [v7 markCreateMKFCKSharedUserDataRootBegin];
  v70 = 0;
  v10 = [(HMDHomeSharedUserCloudShareManager *)self _existingSharedUserDataRootWithoutShareWithHomeModelID:v6 error:&v70];
  v11 = v70;
  v61 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v19 = [v17 hmInternalErrorWithCode:3507 underlyingError:v18];

    v20 = MEMORY[0x277D0F7C0];
    v21 = HMDSanitizeCoreDataError(v19);
    v22 = [v20 futureWithError:v21];
  }

  else
  {
    v23 = [v10 count];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
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
        v74 = v6;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Will attempt to re-share existing MKFCKSharedUserDataRoot for home %@ that doesn't have an associated share", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = [v61 firstObject];
    }

    else
    {
      if (v27)
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v29;
        v73 = 2112;
        v74 = v6;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating MKFCKSharedUserDataRoot for home %@ since none was found", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = [MKFCKSharedUserDataRoot createWithHomeModelID:v6 persistentStore:v9 context:v8];
      v30 = dispatch_time(0, 60000000000);
      v31 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __99__HMDHomeSharedUserCloudShareManager__createShareForSharedUserDataWithHomeModelID_logEventBuilder___block_invoke;
      block[3] = &unk_27868A750;
      block[4] = v25;
      v69 = v6;
      dispatch_after(v30, v31, block);
    }

    v67 = 0;
    v21 = [(HMDHomeSharedUserCloudShareManager *)v25 _existingSharedUserPrivateRootWithHomeModelID:v6 error:&v67];
    v32 = v67;
    if (v32)
    {
      v12 = v32;
      v58 = v9;
      v33 = v8;
      v34 = objc_autoreleasePoolPush();
      v35 = v25;
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

      v8 = v33;
      v9 = v58;
    }

    else
    {
      if (!v21)
      {
        context = objc_autoreleasePoolPush();
        v43 = v25;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v59 = v9;
          v46 = v45 = v8;
          *buf = 138543618;
          *&buf[4] = v46;
          v73 = 2112;
          v74 = v6;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Creating MKFCKSharedUserPrivateRoot for home %@ since none was found", buf, 0x16u);

          v8 = v45;
          v9 = v59;
        }

        objc_autoreleasePoolPop(context);
        v47 = [MKFCKSharedUserPrivateRoot createWithHomeModelID:v6 persistentStore:v9 context:v8];
      }

      [v7 markCreateMKFCKSharedUserDataRootEnd];
      v48 = objc_autoreleasePoolPush();
      v49 = v25;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v60 = v9;
        v52 = v51 = v8;
        *buf = 138543618;
        *&buf[4] = v52;
        v73 = 2112;
        v74 = v6;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Creating reverse share for shared user data for home %@", buf, 0x16u);

        v8 = v51;
        v9 = v60;
      }

      objc_autoreleasePoolPop(v48);
      [v7 markCreateReverseShareBegin];
      *buf = 0;
      v22 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      v53 = [(HMDCoreDataCloudShareService *)self->_shareService container];
      v71 = v19;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __99__HMDHomeSharedUserCloudShareManager__createShareForSharedUserDataWithHomeModelID_logEventBuilder___block_invoke_160;
      v62[3] = &unk_278686AE0;
      v62[4] = v49;
      v63 = v6;
      v64 = v7;
      v65 = *buf;
      v19 = v19;
      v66 = v19;
      [v53 shareManagedObjects:v54 toShare:0 completion:v62];

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

- (id)_existingSharedUserPrivateRootWithHomeModelID:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[MKFCKSharedUserPrivateRoot fetchRequest];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", v6];

  [v7 setPredicate:v8];
  v9 = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v7 setAffectedStores:v10];

  [v7 setFetchLimit:1];
  v11 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v12 = [v11 executeFetchRequest:v7 error:a4];
  v13 = [v12 firstObject];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_existingShareForSharedUserDataWithHomeModelID:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDHomeSharedUserCloudShareManager *)self _existingSharesForSharedUserDataWithHomeModelID:v6 error:a4];
  if ([v7 count] >= 2)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@More than one shared data root with home modelID %@ is found, using the first one", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [v7 firstObject];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_existingSharesForSharedUserDataWithHomeModelID:(id)a3 error:(id *)a4
{
  v61[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v43 = [MEMORY[0x277CBEB18] array];
  v7 = +[MKFCKSharedUserDataRoot fetchRequest];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", v6];
  [v7 setPredicate:v8];

  v9 = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v61[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
  [v7 setAffectedStores:v10];

  v11 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v12 = [v11 executeFetchRequest:v7 error:a4];

  if (*a4 || ![v12 count])
  {
    v13 = 0;
    v14 = v43;
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

          v21 = [*(*(&v51 + 1) + 8 * i) objectID];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v18);
    }

    v22 = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v23 = [v15 copy];
    v24 = [v22 fetchSharesMatchingObjectIDs:v23 error:a4];

    v14 = v43;
    if (*a4)
    {
      v13 = 0;
    }

    else
    {
      v40 = v7;
      v41 = v6;
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
              v34 = self;
              v35 = self;
              v36 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v37 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v37;
                v57 = 2112;
                v58 = v29;
                _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@No CKShare for objectID %@ in map", buf, 0x16u);

                v14 = v43;
              }

              objc_autoreleasePoolPop(v33);
              self = v34;
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
      v6 = v41;
    }

    v12 = v42;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_existingSharedUserDataRootWithoutShareWithHomeModelID:(id)a3 error:(id *)a4
{
  v6 = [(HMDHomeSharedUserCloudShareManager *)self _existingSharedUserDataRootWithHomeModelID:a3 error:?];
  v7 = v6;
  if (*a4 || ![v6 count])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v7 na_map:&__block_literal_global_158_256707];
    v10 = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v11 = [v10 fetchSharesMatchingObjectIDs:v9 error:a4];

    if (*a4)
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

- (id)_existingSharedUserDataRootWithHomeModelID:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[MKFCKSharedUserDataRoot fetchRequest];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", v6];

  [v7 setPredicate:v8];
  v9 = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v7 setAffectedStores:v10];

  v11 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v12 = [v11 executeFetchRequest:v7 error:a4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_shareForSharedUserDataWithHomeModelID:(id)a3 logEventBuilder:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v8 = [(HMDHomeSharedUserCloudShareManager *)self _existingShareForSharedUserDataWithHomeModelID:v6 error:&v20];
  v9 = v20;
  if (v9)
  {
    v10 = [MEMORY[0x277D0F7C0] futureWithError:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
        v24 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Found existing reverse share for home %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [v7 markCreateMKFCKSharedUserDataRootBegin];
      [v7 markCreateMKFCKSharedUserDataRootEnd];
      [v7 markCreateReverseShareBegin];
      [v7 markCreateReverseShareEnd];
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
        v24 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@No reverse share for home found, creating a new reverse share with owner for home %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v10 = [(HMDHomeSharedUserCloudShareManager *)v12 _createShareForSharedUserDataWithHomeModelID:v6 logEventBuilder:v7];
    }
  }

  v17 = v10;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)leaveShareWithSharedHomeModelID:(id)a3
{
  v4 = a3;
  v5 = self->_shareService;
  v16 = 0;
  v6 = [MEMORY[0x277D0F7C0] futureWithPromise:&v16];
  v7 = [(HMDCoreDataCloudShareService *)v5 managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HMDHomeSharedUserCloudShareManager_leaveShareWithSharedHomeModelID___block_invoke;
  v11[3] = &unk_2786891E0;
  v12 = v4;
  v13 = v5;
  v14 = self;
  v15 = v16;
  v8 = v5;
  v9 = v4;
  [v7 performBlock:v11];

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

- (id)acceptShareInvitation:(id)a3 homeWithHomeModelID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDCoreData sharedInstance];
  v9 = +[MKFCKSharedHome entity];
  v10 = [v8 applyVoucherForModel:v9 withModelID:v6 eventType:1 storeType:1];

  v11 = [(HMDCoreDataCloudShareService *)self->_shareService acceptShareInvitation:v7];

  v12 = [v11 ignoreResult];

  return v12;
}

- (void)_removeSharedUserDataRootsForHomeWithModelID:(id)a3
{
  v81[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MKFCKSharedUserPrivateRoot fetchRequest];
  v65 = v4;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", v4];
  [v5 setPredicate:v6];

  v7 = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v81[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
  [v5 setAffectedStores:v8];

  v9 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v73 = 0;
  v10 = [v9 executeFetchRequest:v5 error:&v73];
  v11 = v73;

  if (!v10 || ![v10 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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

  v20 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v72 = 0;
  v21 = [v20 executeFetchRequest:v18 error:&v72];
  v22 = v72;

  v63 = v22;
  v64 = v10;
  if (!v21 || ![v21 count])
  {
    v23 = v11;
    v24 = v21;
    v25 = objc_autoreleasePoolPush();
    v26 = self;
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
          v39 = self;
          v40 = self;
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
          self = v39;
          v43 = [(HMDCoreDataCloudShareService *)v39->_shareService managedObjectContext];
          [v43 deleteObject:v37];
        }

        v34 = [obj countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v34);
    }

    v44 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v67 = 0;
    v45 = [v44 hmd_saveWithTransactionAuthor:9 error:&v67];
    v46 = v67;

    v47 = objc_autoreleasePoolPush();
    v48 = self;
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
    v56 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    [v56 reset];

    v18 = v60;
    v11 = v61;
    v32 = v58;
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)removeShareForSharedUserDataWithHomeModelID:(id)a3
{
  v4 = a3;
  v5 = self->_shareService;
  v6 = MEMORY[0x277D0F7C0];
  v7 = [(HMDCoreDataCloudShareService *)v5 managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HMDHomeSharedUserCloudShareManager_removeShareForSharedUserDataWithHomeModelID___block_invoke;
  v11[3] = &unk_278686828;
  v11[4] = self;
  v12 = v4;
  v13 = v5;
  v8 = v5;
  v9 = v4;
  v10 = [v6 inContext:v7 perform:v11];
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

- (void)revokeAccessForOwner:(id)a3 sharedUserDataWithHomeModelID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0F7C0];
  v9 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HMDHomeSharedUserCloudShareManager_revokeAccessForOwner_sharedUserDataWithHomeModelID___block_invoke;
  v13[3] = &unk_278686828;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  v12 = [v8 inContext:v9 perform:v13];
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

- (id)grantAccessForOwner:(id)a3 sharedUserDataWithHomeModelID:(id)a4 logEventBuilder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D0F7C0];
  v12 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __104__HMDHomeSharedUserCloudShareManager_grantAccessForOwner_sharedUserDataWithHomeModelID_logEventBuilder___block_invoke;
  v18[3] = &unk_2786886F0;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v21 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  v16 = [v11 inContext:v12 perform:v18];

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

- (HMDHomeSharedUserCloudShareManager)initWithContainer:(id)a3 sharedStore:(id)a4 privateStore:(id)a5 moc:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[HMDCoreDataCloudShareService alloc] initWithContainer:v13 sharedStore:v12 privateStore:v11 moc:v10];

  v15 = [(HMDHomeSharedUserCloudShareManager *)self initWithCloudShareService:v14];
  return v15;
}

- (HMDHomeSharedUserCloudShareManager)initWithCloudShareService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDHomeSharedUserCloudShareManager;
  v6 = [(HMDHomeSharedUserCloudShareManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareService, a3);
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