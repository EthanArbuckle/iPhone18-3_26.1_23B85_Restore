@interface HMDHomeOwnerCloudShareManager
+ (id)logCategory;
- (HMDHomeOwnerCloudShareManager)initWithContainer:(id)a3 sharedStore:(id)a4 privateStore:(id)a5 moc:(id)a6 cloudTransform:(id)a7 homeManager:(id)a8;
- (HMDHomeOwnerCloudShareManager)initWithShareService:(id)a3 homeManager:(id)a4 cloudTransform:(id)a5 modelSelectionBlock:(id)a6;
- (double)shareAgeForHome:(id)a3;
- (id)_allExistingSharesForHomeWithModelID:(id)a3 error:(id *)a4;
- (id)_canonicalModelFromSharedHomes:(id)a3;
- (id)_canonicalShareFromSharesToSharedHomes:(id)a3 shareMap:(id)a4;
- (id)_createShareForHome:(id)a3;
- (id)_existingShareForHomeWithModelID:(id)a3 error:(id *)a4;
- (id)_existingSharedHomeWithoutShareWithHomeModelID:(id)a3 error:(id *)a4;
- (id)_existingSharedHomesWithModelID:(id)a3 error:(id *)a4;
- (id)_removeShare:(id)a3 usingShareService:(id)a4 forHomeWithUUID:(id)a5;
- (id)_shareForHome:(id)a3;
- (id)auditAccessForUsers:(id)a3 home:(id)a4;
- (id)fetchUserRecordIDForUser:(id)a3 home:(id)a4;
- (id)grantAccessForUser:(id)a3 home:(id)a4 logEventBuilder:(id)a5;
- (id)removeSharesForHome:(id)a3;
- (id)revokeAccessForUser:(id)a3 home:(id)a4;
- (id)validateGrantingAccessForUserWithAccountHandle:(id)a3 home:(id)a4;
- (void)didDeleteModelWithID:(id)a3 tombstone:(id)a4 context:(id)a5;
- (void)updateSharedOwnerAccountHandleForHome:(id)a3;
@end

@implementation HMDHomeOwnerCloudShareManager

- (id)fetchUserRecordIDForUser:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0F7C0];
  v9 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v7;
  v12 = [v8 inContext:v9 perform:v14];

  return v12;
}

double __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shareForHome:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke_2;
  v8[3] = &unk_278686800;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v3 = [v2 then:v8];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke_2(v6, v7);
  }

  return result;
}

double __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [*(a1 + 40) accountHandle];
  v6 = [v4 fetchUserRecordIDForUserWithAccountHandle:v5 share:v3];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDHomeOwnerCloudShareManager *)v9 shareAgeForHome:v10, v11];
  }

  return result;
}

- (double)shareAgeForHome:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__256571;
  v46 = __Block_byref_object_dispose__256572;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__256571;
  v40 = __Block_byref_object_dispose__256572;
  v41 = 0;
  v5 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __49__HMDHomeOwnerCloudShareManager_shareAgeForHome___block_invoke;
  v31 = &unk_2786869D8;
  v34 = &v36;
  v32 = self;
  v6 = v4;
  v33 = v6;
  v35 = &v42;
  [v5 performBlockAndWait:&v28];

  if (*(v43 + 5))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v6 shortDescription];
      v12 = v43[5];
      *buf = 138543874;
      v49 = v10;
      v50 = 2112;
      v51 = v11;
      v52 = 2114;
      v53 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error trying to find existing share for home %@ due to %{public}@", buf, 0x20u);
    }

LABEL_4:

    v13 = 0.0;
    objc_autoreleasePoolPop(v7);
    goto LABEL_9;
  }

  if (!v37[5])
  {
    v7 = objc_autoreleasePoolPush();
    v24 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v6 shortDescription];
      v27 = v43[5];
      *buf = 138543874;
      v49 = v25;
      v50 = 2112;
      v51 = v26;
      v52 = 2114;
      v53 = v27;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to find existing share for home %@ due to %{public}@. This is normal if home hasn't been shared yet", buf, 0x20u);
    }

    goto LABEL_4;
  }

  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = [v37[5] creationDate];
  [v14 timeIntervalSinceDate:v15];
  v13 = v16;

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v6 shortDescription];
    *buf = 138543874;
    v49 = v20;
    v50 = 2112;
    v51 = v21;
    v52 = 2048;
    v53 = v13;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@CKShare age for home %@ is %f", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_9:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

void __49__HMDHomeOwnerCloudShareManager_shareAgeForHome___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _existingShareForHomeWithModelID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)didDeleteModelWithID:(id)a3 tombstone:(id)a4 context:(id)a5
{
  v14 = a3;
  v7 = [a4 objectForKeyedSubscript:@"modelID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v14 entity];
    v11 = +[MKFCKSharedUserDataRoot entity];
    v12 = [v10 isKindOfEntity:v11];

    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_homeManager);
      [WeakRetained auditAccessForUsersForHome:v9];
    }
  }
}

- (void)updateSharedOwnerAccountHandleForHome:(id)a3
{
  v4 = a3;
  if ([v4 isOwnerUser])
  {
    v5 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__HMDHomeOwnerCloudShareManager_updateSharedOwnerAccountHandleForHome___block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = v4;
    [v5 performBlock:v6];
  }
}

void __71__HMDHomeOwnerCloudShareManager_updateSharedOwnerAccountHandleForHome___block_invoke(uint64_t a1)
{
  v1 = a1;
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v43 = 0;
  v4 = [v2 _existingSharedHomesWithModelID:v3 error:&v43];
  v5 = v43;

  if (v4 && ([v4 hmf_isEmpty] & 1) == 0)
  {
    v34 = v5;
    v6 = [*(v1 + 40) owner];
    v7 = [v6 accountHandle];
    v8 = [v7 value];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v54 count:16];
    v36 = v1;
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        v13 = 0;
        v37 = v11;
        do
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * v13);
          v15 = [v14 ownerAccountHandle];
          v16 = [v15 isEqualToString:v8];

          if ((v16 & 1) == 0)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = *(v1 + 32);
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v20 = v12;
              v22 = v21 = v9;
              v23 = [v14 homeModelID];
              *buf = 138544386;
              v45 = v22;
              v46 = 2160;
              v47 = 1752392040;
              v48 = 2112;
              v49 = v23;
              v50 = 2160;
              v51 = 1752392040;
              v52 = 2112;
              v53 = v8;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating account handle on shared home model %{mask.hash}@ to %{mask.hash}@", buf, 0x34u);

              v1 = v36;
              v9 = v21;
              v12 = v20;
              v11 = v37;
            }

            objc_autoreleasePoolPop(v17);
            [v14 setOwnerAccountHandle:v8];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v39 objects:v54 count:16];
      }

      while (v11);
    }

    v24 = [*(*(v1 + 32) + 8) managedObjectContext];
    v25 = [v24 hasChanges];

    if (v25)
    {
      v26 = [*(*(v1 + 32) + 8) managedObjectContext];
      v38 = v34;
      [v26 hmd_saveWithTransactionAuthor:9 error:&v38];
      v5 = v38;

      if (v5)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = *(v1 + 32);
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          v31 = [*(v1 + 40) shortDescription];
          *buf = 138543874;
          v45 = v30;
          v46 = 2112;
          v47 = v31;
          v48 = 2114;
          v49 = v5;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to update owner account handle on shared home model for home %@ due to %{public}@", buf, 0x20u);

          v1 = v36;
        }

        objc_autoreleasePoolPop(v27);
      }
    }

    else
    {
      v5 = v34;
    }

    v4 = v35;
    v32 = [*(*(v1 + 32) + 8) managedObjectContext];
    [v32 reset];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_existingSharedHomeWithoutShareWithHomeModelID:(id)a3 error:(id *)a4
{
  v6 = [(HMDHomeOwnerCloudShareManager *)self _existingSharedHomesWithModelID:a3 error:?];
  v7 = v6;
  if (*a4 || ![v6 count])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v7 na_map:&__block_literal_global_41_256584];
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
      v13[2] = __86__HMDHomeOwnerCloudShareManager__existingSharedHomeWithoutShareWithHomeModelID_error___block_invoke_2;
      v13[3] = &unk_2786869B0;
      v14 = v11;
      v8 = [v7 na_filter:v13];
    }
  }

  return v8;
}

BOOL __86__HMDHomeOwnerCloudShareManager__existingSharedHomeWithoutShareWithHomeModelID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 == 0;

  return v5;
}

- (id)_createShareForHome:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  v50 = 0;
  v6 = [(HMDHomeOwnerCloudShareManager *)self _existingSharedHomeWithoutShareWithHomeModelID:v5 error:&v50];
  v7 = v50;

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v11;
      v53 = 2114;
      v54 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Checking for existing shared home model failed with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D0F7C0];
    v13 = HMDSanitizeCoreDataError(v7);
    v14 = [v12 futureWithError:v13];
  }

  else
  {
    v15 = [v6 count];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v4 uuid];
        v22 = [v6 count];
        *buf = 138543874;
        *&buf[4] = v20;
        v53 = 2112;
        v54 = v21;
        v55 = 2048;
        v56 = v22;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Will attempt to re-share first MKFCKSharedHome for home %@ that doesn't have an associated share out of %lu found", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v23 = [(HMDHomeOwnerCloudShareManager *)v17 _canonicalModelFromSharedHomes:v6];
    }

    else
    {
      if (v19)
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v4 uuid];
        *buf = 138543618;
        *&buf[4] = v24;
        v53 = 2112;
        v54 = v25;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Creating MKFCKSharedHome for home %@ since none was found", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v26 = [v4 uuid];
      v27 = [(HMDCoreDataCloudShareService *)v17->_shareService privateStore];
      v28 = [(HMDCoreDataCloudShareService *)v17->_shareService managedObjectContext];
      v23 = [MKFCKSharedHome createWithModelID:v26 persistentStore:v27 context:v28];

      v29 = [v4 name];
      [v23 setName:v29];

      v30 = [v4 owner];
      v31 = [v30 uuid];
      [v23 setOwnerModelID:v31];

      v32 = [v4 owner];
      v33 = [v32 accountHandle];
      v34 = [v33 value];
      [v23 setOwnerAccountHandle:v34];

      v35 = [v4 roomForEntireHome];
      v36 = [v35 uuid];
      [v23 setDefaultRoomModelID:v36];
    }

    v37 = objc_autoreleasePoolPush();
    v38 = v17;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      v41 = [v4 shortDescription];
      *buf = 138543618;
      *&buf[4] = v40;
      v53 = 2112;
      v54 = v41;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Creating share for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    *buf = 0;
    v14 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v42 = [v38[1] container];
    v51 = v23;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __53__HMDHomeOwnerCloudShareManager__createShareForHome___block_invoke;
    v46[3] = &unk_278686988;
    v46[4] = v38;
    v47 = v4;
    v48 = *buf;
    v49 = v23;
    v13 = v23;
    [v42 shareManagedObjects:v43 toShare:0 completion:v46];
  }

  v44 = *MEMORY[0x277D85DE8];

  return v14;
}

void __53__HMDHomeOwnerCloudShareManager__createShareForHome___block_invoke(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = a1[4];
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [a1[5] shortDescription];
      v28 = 138543874;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create share for home %@ due to %@. Leaving model alone to reuse next time we share it.", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [a1[6] rejectWithError:v12];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [a1[5] shortDescription];
      v28 = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Successfully created share for home %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v21 = [a1[7] objectID];
    if (([v9 containsObject:v21] & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1[4];
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
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Sharing MKFCKSharedHome succeeded but returned object IDs don't match expected. Expected: %@, Got: %@", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = +[HMDTTRManager sharedManager];
      [v26 requestRadarWithDisplayReason:@"detected issue related to HomeKit Shared User functionality" radarTitle:@"shareManagedObjects returned unexpected object IDs for MKFCKSharedHome" componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];
    }

    [a1[6] fulfillWithValue:v10];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_existingSharedHomesWithModelID:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[MKFCKSharedHome fetchRequest];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"modelID", v6];
  [v7 setPredicate:v8];

  v9 = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v28[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v7 setAffectedStores:v10];

  v11 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v12 = [v11 executeFetchRequest:v7 error:a4];

  if (*a4)
  {
    v13 = 0;
  }

  else
  {
    if ([v12 hmf_isEmpty])
    {
      v14 = [MEMORY[0x277CBEA60] array];
    }

    else
    {
      if ([v12 count] >= 2)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
          *buf = 138543874;
          v23 = v18;
          v24 = 2112;
          v25 = v19;
          v26 = 2112;
          v27 = v6;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Found multiple (%@) shared homes with modelID %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
      }

      v14 = v12;
    }

    v13 = v14;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_allExistingSharesForHomeWithModelID:(id)a3 error:(id *)a4
{
  v6 = [(HMDHomeOwnerCloudShareManager *)self _existingSharedHomesWithModelID:a3 error:?];
  v7 = v6;
  if (*a4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = 0;
  }

  else if ([v6 hmf_isEmpty])
  {
    v9 = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v10 = [v7 na_map:&__block_literal_global_26_256608];
    v11 = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v12 = [v11 fetchSharesMatchingObjectIDs:v10 error:a4];

    v9 = [v12 allValues];
  }

  return v9;
}

- (id)_canonicalModelFromSharedHomes:(id)a3
{
  if (self)
  {
    self = self->_modelSelectionBlock;
  }

  return (self->_cloudTransform)(self, a3);
}

- (id)_canonicalShareFromSharesToSharedHomes:(id)a3 shareMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if (self)
    {
      modelSelectionBlock = self->_modelSelectionBlock;
    }

    else
    {
      modelSelectionBlock = 0;
    }

    v9 = modelSelectionBlock;
    v10 = [v6 allValues];
    v11 = (*(modelSelectionBlock + 2))(v9, v10);

    v12 = [v11 objectID];
    v13 = [v7 objectForKeyedSubscript:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_existingShareForHomeWithModelID:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDHomeOwnerCloudShareManager *)self _existingSharedHomesWithModelID:v6 error:a4];
  v8 = v7;
  if (*a4 || ([v7 hmf_isEmpty] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v31 = v6;
    v35 = objc_opt_new();
    v12 = [v8 na_map:&__block_literal_global_24_256611];
    v13 = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v29 = v12;
    v14 = [v13 fetchSharesMatchingObjectIDs:v12 error:a4];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v8;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      v32 = self;
      v33 = v15;
      v34 = v14;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (!*a4)
          {
            v20 = *(*(&v36 + 1) + 8 * i);
            v21 = [v20 objectID];
            v22 = [v14 objectForKeyedSubscript:v21];

            if (v22)
            {
              [v35 setObject:v20 forKeyedSubscript:v22];
            }

            else
            {
              v23 = objc_autoreleasePoolPush();
              v24 = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = HMFGetLogIdentifier();
                v27 = [v20 objectID];
                *buf = 138543618;
                v41 = v26;
                v42 = 2112;
                v43 = v27;
                _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@No CKShare for objectID %@ in map", buf, 0x16u);

                self = v32;
              }

              objc_autoreleasePoolPop(v23);
              v15 = v33;
              v14 = v34;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v17);
    }

    v28 = [v35 copy];
    v9 = [(HMDHomeOwnerCloudShareManager *)self _canonicalShareFromSharesToSharedHomes:v28 shareMap:v14];

    v8 = v30;
    v6 = v31;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_shareForHome:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v11 = 0;
  v6 = [(HMDHomeOwnerCloudShareManager *)self _existingShareForHomeWithModelID:v5 error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = [MEMORY[0x277D0F7C0] futureWithError:v7];
  }

  else
  {
    if (v6)
    {
      [MEMORY[0x277D0F7C0] futureWithValue:v6];
    }

    else
    {
      [(HMDHomeOwnerCloudShareManager *)self _createShareForHome:v4];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (id)_removeShare:(id)a3 usingShareService:(id)a4 forHomeWithUUID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v24 = 0;
  v10 = MEMORY[0x277D0F7C0];
  v11 = a4;
  v12 = [v10 futureWithPromise:&v24];
  v13 = [v11 container];
  v14 = [v8 recordID];
  v15 = [v14 zoneID];
  v16 = [v11 privateStore];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__HMDHomeOwnerCloudShareManager__removeShare_usingShareService_forHomeWithUUID___block_invoke;
  v20[3] = &unk_278686940;
  v20[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v24;
  v17 = v9;
  v18 = v8;
  [v13 purgeObjectsAndRecordsInZoneWithID:v15 inPersistentStore:v16 completion:v20];

  return v12;
}

void __80__HMDHomeOwnerCloudShareManager__removeShare_usingShareService_forHomeWithUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
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
      v13 = *(a1 + 48);
      v18 = 138544130;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Removing share %@ for home %@ failed with %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) rejectWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removed share %@ for home %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) fulfillWithNoValue];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)removeSharesForHome:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isOwnerUser];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing shares for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = v7->_shareService;
    v13 = MEMORY[0x277D0F7C0];
    v14 = [(HMDCoreDataCloudShareService *)v12 managedObjectContext];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke;
    v20[3] = &unk_278686828;
    v20[4] = v7;
    v21 = v4;
    v22 = v12;
    v15 = v12;
    v16 = [v13 inContext:v14 perform:v20];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v17;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not removing the home as this is not owner user", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v16 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke(id *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v44 = 0;
  v29 = [v2 _allExistingSharesForHomeWithModelID:v3 error:&v44];
  v30 = v44;

  if (v30)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [a1[5] shortDescription];
      *buf = 138543874;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v47 = v30;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Fetching existing shares for home %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = v30;
    v10 = 2;
  }

  else if (v29 && ([v29 hmf_isEmpty] & 1) == 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = __Block_byref_object_copy__256571;
    v48 = __Block_byref_object_dispose__256572;
    v49 = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v29;
    v16 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    v17 = 0;
    if (v16)
    {
      v18 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          if (v17)
          {
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_17;
            v37[3] = &unk_2786868C8;
            v37[4] = a1[4];
            v37[5] = v20;
            v38 = a1[6];
            v39 = a1[5];
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_2;
            v33[3] = &unk_2786868F0;
            v36 = buf;
            v33[4] = a1[4];
            v33[5] = v20;
            v34 = a1[6];
            v35 = a1[5];
            v21 = [v17 then:v37 orRecover:v33];

            v17 = v21;
          }

          else
          {
            v22 = a1[6];
            v23 = a1[4];
            v24 = [a1[5] uuid];
            v17 = [v23 _removeShare:v20 usingShareService:v22 forHomeWithUUID:v24];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v16);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_3;
    v32[3] = &unk_278686918;
    v32[4] = buf;
    v25 = [v17 then:v32];
    if (!v25)
    {
      _HMFPreconditionFailure();
      __break(1u);
    }

    v26 = v25;

    _Block_object_dispose(buf, 8);
    v10 = 3;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[4];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] shortDescription];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@No share for home %@ to remove", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) uuid];
  v8 = [v4 _removeShare:v5 usingShareService:v6 forHomeWithUUID:v7];
  if (v8)
  {
    v9 = v8;

    return 3;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_2(v11);
  }
}

uint64_t __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) uuid];
  v11 = [v7 _removeShare:v8 usingShareService:v9 forHomeWithUUID:v10];
  if (v11)
  {
    v12 = v11;

    return 3;
  }

  else
  {
    v14 = _HMFPreconditionFailure();
    return __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_3(v14);
  }
}

uint64_t __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  return 2;
}

- (id)auditAccessForUsers:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isOwnerUser];
  v9 = MEMORY[0x277D0F7C0];
  if (v8)
  {
    v10 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HMDHomeOwnerCloudShareManager_auditAccessForUsers_home___block_invoke;
    v13[3] = &unk_278686828;
    v14 = v7;
    v15 = v6;
    v16 = self;
    v11 = [v9 inContext:v10 perform:v13];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v11 = [v9 futureWithError:v10];
  }

  return v11;
}

uint64_t __58__HMDHomeOwnerCloudShareManager_auditAccessForUsers_home___block_invoke(id *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v3 = [a1[4] users];
  v4 = [v2 setWithCapacity:{objc_msgSend(v3, "count")}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = a1[5];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if (([v10 isOwner] & 1) == 0)
        {
          v11 = [v10 accountHandle];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v7);
  }

  v12 = a1[6];
  v13 = [a1[4] uuid];
  v31 = 0;
  v14 = [v12 _existingShareForHomeWithModelID:v13 error:&v31];
  v15 = v31;

  if (v15 || !v14)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = a1[6];
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [a1[4] shortDescription];
      *buf = 138543618;
      v37 = v25;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch share, cannot audit shared users for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 1;
  }

  else
  {
    v16 = *(a1[6] + 1);
    v17 = [v4 allObjects];
    v18 = [v16 auditUsersForRevokedAccessWithAccountHandles:v17 share:v14];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__HMDHomeOwnerCloudShareManager_auditAccessForUsers_home___block_invoke_15;
    v29[3] = &unk_2786868A0;
    v30 = a1[5];
    v19 = [v18 then:v29];
    if (!v19)
    {
      _HMFPreconditionFailure();
    }

    v20 = v19;
    v21 = 3;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __58__HMDHomeOwnerCloudShareManager_auditAccessForUsers_home___block_invoke_15(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 accountHandle];
        v12 = [v3 containsObject:v11];

        if (v12)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v4 allObjects];
  objc_claimAutoreleasedReturnValue();

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)revokeAccessForUser:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isOwnerUser];
  v9 = MEMORY[0x277D0F7C0];
  if (v8)
  {
    v10 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HMDHomeOwnerCloudShareManager_revokeAccessForUser_home___block_invoke;
    v13[3] = &unk_278686828;
    v13[4] = self;
    v14 = v7;
    v15 = v6;
    v11 = [v9 inContext:v10 perform:v13];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v11 = [v9 futureWithError:v10];
  }

  return v11;
}

uint64_t __58__HMDHomeOwnerCloudShareManager_revokeAccessForUser_home___block_invoke(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v38 = 0;
  v4 = [v2 _allExistingSharesForHomeWithModelID:v3 error:&v38];
  v5 = v38;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[4];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [a1[5] shortDescription];
      *buf = 138543874;
      v41 = v9;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Fetching existing share for home %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = v5;
    v12 = 2;
  }

  else if (v4 && ([v4 hmf_isEmpty] & 1) == 0)
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v4;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v34 + 1) + 8 * i);
          v25 = *(a1[4] + 1);
          v26 = [a1[6] accountHandle];
          v27 = [v25 revokeAccessForUserWithAccountHandle:v26 share:v24];
          [v18 addObject:v27];
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v21);
    }

    v28 = [MEMORY[0x277D0F7C0] all:v18];
    v29 = [v28 ignoreResult];
    if (!v29)
    {
      _HMFPreconditionFailure();
    }

    v30 = v29;
    v12 = 3;

    v4 = v33;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [a1[5] shortDescription];
      *buf = 138543618;
      v41 = v16;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Nothing to do, no existing share for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 1;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)grantAccessForUser:(id)a3 home:(id)a4 logEventBuilder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isOwnerUser])
  {
    v11 = [(HMDHomeOwnerCloudShareManager *)self validateGrantingAccessForUserWithAccountHandle:v8 home:v9];
    v12 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke;
    v15[3] = &unk_278686878;
    v16 = v10;
    v17 = self;
    v18 = v9;
    v19 = v8;
    v13 = [v11 inContext:v12 then:v15];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v13 = [MEMORY[0x277D0F7C0] futureWithError:v11];
  }

  return v13;
}

uint64_t __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] markCreateShareBegin];
  v4 = [a1[5] _shareForHome:a1[6]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke_2;
  v16[3] = &unk_278686850;
  v5 = a1[4];
  v6 = a1[6];
  v15 = a1[5];
  v7 = a1[7];
  *&v8 = v15;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v17 = v9;
  v18 = v8;
  v10 = [v4 then:v16];
  if (v10)
  {
    v11 = v10;

    return 3;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke_2(v13, v14);
  }
}

uint64_t __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) markCreateShareEnd];
  v4 = +[HMDCoreData sharedInstance];
  v5 = +[MKFCKSharedHome entity];
  v6 = [*(a1 + 40) uuid];
  v7 = [v4 applyVoucherForModel:v5 withModelID:v6 eventType:2 storeType:0];

  v8 = *(*(a1 + 48) + 8);
  v9 = [*(a1 + 56) accountHandle];
  v10 = [v8 grantAccessForUserWithAccountHandle:v9 share:v3 logEventBuilder:*(a1 + 32)];
  if (v10)
  {
    v11 = v10;

    return 3;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return [(HMDHomeOwnerCloudShareManager *)v13 validateGrantingAccessForUserWithAccountHandle:v14 home:v15, v16];
  }
}

- (id)validateGrantingAccessForUserWithAccountHandle:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isOwnerUser])
  {
    v8 = MEMORY[0x277D0F7C0];
    v9 = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke;
    v12[3] = &unk_278686828;
    v12[4] = self;
    v13 = v7;
    v14 = v6;
    v10 = [v8 inContext:v9 perform:v12];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v10 = [MEMORY[0x277D0F7C0] futureWithError:v9];
  }

  return v10;
}

HMDHomeOwnerCloudShareManager *__85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shareForHome:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke_2;
  v8[3] = &unk_278686800;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v3 = [v2 then:v8];
  if (v3)
  {
    v4 = v3;

    return 3;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return __85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke_2(v6, v7);
  }
}

HMDHomeOwnerCloudShareManager *__85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [*(a1 + 40) accountHandle];
  v6 = [v4 validateGrantingAccessForUserWithAccountHandle:v5 share:v3];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDHomeOwnerCloudShareManager *)v9 initWithContainer:v10 sharedStore:v11 privateStore:v12 moc:v13 cloudTransform:v14 homeManager:v15, v16];
  }
}

- (HMDHomeOwnerCloudShareManager)initWithContainer:(id)a3 sharedStore:(id)a4 privateStore:(id)a5 moc:(id)a6 cloudTransform:(id)a7 homeManager:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[HMDCoreDataCloudShareService alloc] initWithContainer:v19 sharedStore:v18 privateStore:v17 moc:v16];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__HMDHomeOwnerCloudShareManager_initWithContainer_sharedStore_privateStore_moc_cloudTransform_homeManager___block_invoke;
  aBlock[3] = &unk_2786867D8;
  v26 = v20;
  v21 = v20;
  v22 = _Block_copy(aBlock);
  v23 = [(HMDHomeOwnerCloudShareManager *)self initWithShareService:v21 homeManager:v14 cloudTransform:v15 modelSelectionBlock:v22];

  return v23;
}

id __107__HMDHomeOwnerCloudShareManager_initWithContainer_sharedStore_privateStore_moc_cloudTransform_homeManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  v5 = [MKFCKModel canonicalModelForModels:v3 context:v4];

  return v5;
}

- (HMDHomeOwnerCloudShareManager)initWithShareService:(id)a3 homeManager:(id)a4 cloudTransform:(id)a5 modelSelectionBlock:(id)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = HMDHomeOwnerCloudShareManager;
  v15 = [(HMDHomeOwnerCloudShareManager *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_shareService, a3);
    objc_storeStrong(&v16->_cloudTransform, a5);
    objc_storeWeak(&v16->_homeManager, v12);
    v17 = _Block_copy(v14);
    modelSelectionBlock = v16->_modelSelectionBlock;
    v16->_modelSelectionBlock = v17;

    v19 = +[MKFCKSharedUserDataRoot entity];
    v24[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v13 registerCloudChangeListener:v16 forEntities:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_256640 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_256640, &__block_literal_global_256641);
  }

  v3 = logCategory__hmf_once_v1_256642;

  return v3;
}

void __44__HMDHomeOwnerCloudShareManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_256642;
  logCategory__hmf_once_v1_256642 = v1;
}

@end