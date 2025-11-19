@interface HMDCoreDataCloudShareService
+ (id)logCategory;
- (HMDCoreDataCloudShareService)initWithContainer:(id)a3 sharedStore:(id)a4 privateStore:(id)a5 moc:(id)a6;
- (id)_acceptShareInvitation:(id)a3;
- (id)_addParticipant:(id)a3 share:(id)a4;
- (id)_auditUsersForRevokedAccessWithAccountHandles:(id)a3 share:(id)a4;
- (id)_fetchParticipantForAccountHandle:(id)a3;
- (id)_fetchParticipantsForAccountHandles:(id)a3;
- (id)_fetchShareMetadataForInvitation:(id)a3;
- (id)_fetchUserRecordIDForUserWithAccountHandle:(id)a3 share:(id)a4;
- (id)_grantAccessForUserWithAccountHandle:(id)a3 share:(id)a4 logEventBuilder:(id)a5;
- (id)_pushUpdatedShare:(id)a3;
- (id)_removeParticipant:(id)a3 share:(id)a4;
- (id)_revokeAccessForUserWithAccountHandle:(id)a3 share:(id)a4;
- (id)acceptShareInvitation:(id)a3;
- (id)acceptShareInvitationsFromMetadata:(id)a3 intoPersistentStore:(id)a4;
- (id)auditUsersForRevokedAccessWithAccountHandles:(id)a3 share:(id)a4;
- (id)ckContainer;
- (id)fetchShareWithRecordID:(id)a3;
- (id)fetchUserRecordIDForUserWithAccountHandle:(id)a3 share:(id)a4;
- (id)grantAccessForUserWithAccountHandle:(id)a3 share:(id)a4 logEventBuilder:(id)a5;
- (id)revokeAccessForUserWithAccountHandle:(id)a3 share:(id)a4;
- (id)validateGrantingAccessForUserWithAccountHandle:(id)a3 share:(id)a4;
- (void)_acceptShareInvitationsFromMetadata:(id)a3 intoPersistentStore:(id)a4 completion:(id)a5;
- (void)_fetchShareMetadataForInvitation:(id)a3 completion:(id)a4;
- (void)_fetchShareWithRecordID:(id)a3 completion:(id)a4;
- (void)_pushUpdatedShare:(id)a3 completion:(id)a4;
@end

@implementation HMDCoreDataCloudShareService

- (id)_fetchUserRecordIDForUserWithAccountHandle:(id)a3 share:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCoreDataCloudShareService *)self _fetchParticipantForAccountHandle:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HMDCoreDataCloudShareService__fetchUserRecordIDForUserWithAccountHandle_share___block_invoke;
  v13[3] = &unk_27866F4B8;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 then:v13];

  return v11;
}

uint64_t __81__HMDCoreDataCloudShareService__fetchUserRecordIDForUserWithAccountHandle_share___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) participants];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __81__HMDCoreDataCloudShareService__fetchUserRecordIDForUserWithAccountHandle_share___block_invoke_2;
  v30[3] = &unk_27866F378;
  v5 = v3;
  v31 = v5;
  v6 = [v4 na_firstObjectPassingTest:v30];

  if (!v6)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      *buf = 138543874;
      v33 = v20;
      v34 = 2112;
      v35 = v5;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Participant for account handle not found on share using fetched participant %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v15 = v22;
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    goto LABEL_18;
  }

  v7 = [v6 userIdentity];
  v8 = [v7 userRecordID];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 40);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (!v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Participant for account handle has no user record ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v15 = 0;
LABEL_18:
    v16 = 2;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 48);
    *buf = 138543874;
    v33 = v13;
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched user record ID for user with account handle %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = v8;
  v16 = 1;
LABEL_19:

  v28 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)fetchUserRecordIDForUserWithAccountHandle:(id)a3 share:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HMDCoreDataCloudShareService_fetchUserRecordIDForUserWithAccountHandle_share___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v8 inContext:managedObjectContext perform:v14];

  return v12;
}

uint64_t __80__HMDCoreDataCloudShareService_fetchUserRecordIDForUserWithAccountHandle_share___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _fetchUserRecordIDForUserWithAccountHandle:*(a1 + 40) share:*(a1 + 48)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 _fetchShareMetadataForInvitation:v5, v6];
  }
}

- (id)_fetchShareMetadataForInvitation:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v13];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation___block_invoke;
  v8[3] = &unk_27866F490;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v9 = v6;
  v10 = v13;
  [(HMDCoreDataCloudShareService *)self _fetchShareMetadataForInvitation:v6 completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __65__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = v6;
  v9 = v8;
  if (!(v5 | v8))
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[4] url];
      v16 = 138544130;
      v17 = v13;
      v18 = 2160;
      v19 = 1752392040;
      v20 = 2112;
      v21 = v14;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Fetching metadata for URL %{mask.hash}@ failed due to %{public}@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    [a1[5] rejectWithError:v9];
  }

  else
  {
    [a1[5] fulfillWithValue:v5];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_fetchShareMetadataForInvitation:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBC3F8]);
  v9 = [v6 content];
  v10 = [v9 allKeys];
  v11 = [v6 content];
  v12 = [v8 initWithShareURLs:v10 invitationTokensByShareURL:v11];

  v13 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke;
  v31[3] = &unk_27866F468;
  objc_copyWeak(&v33, &location);
  v14 = v13;
  v32 = v14;
  [v12 setPerShareMetadataBlock:v31];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke_80;
  v26[3] = &unk_278685FB0;
  objc_copyWeak(&v30, &location);
  v15 = v7;
  v29 = v15;
  v16 = v6;
  v27 = v16;
  v17 = v14;
  v28 = v17;
  [v12 setFetchShareMetadataCompletionBlock:v26];
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v16 url];
    v23 = [v12 operationID];
    *buf = 138544130;
    v36 = v21;
    v37 = 2160;
    v38 = 1752392040;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v23;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Fetching share metadata for invitation URL %{mask.hash}@ (operationID: %@)", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  v24 = [(HMDCoreDataCloudShareService *)v19 ckContainer];
  [v24 addOperation:v12];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  v25 = *MEMORY[0x277D85DE8];
}

void __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138544130;
      v17 = v14;
      v18 = 2160;
      v19 = 1752392040;
      v20 = 2112;
      v21 = v7;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Fetching metadata for URL %{mask.hash}@ failed due to %{public}@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    [*(a1 + 32) addObject:v8];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke_80(id *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [v3 hmd_retryAfterCKError];
      v6 = objc_autoreleasePoolPush();
      v7 = WeakRetained;
      v8 = HMFGetOSLogHandle();
      v9 = v8;
      if (v5)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v11 = [a1[4] url];
          *buf = 138544386;
          v28 = v10;
          v29 = 2160;
          v30 = 1752392040;
          v31 = 2112;
          v32 = v11;
          v33 = 2114;
          v34 = v5;
          v35 = 2112;
          v36 = v3;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Retrying fetching share metadata for URL %{mask.hash}@ in %{public}@s due to error: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v6);
        [v5 doubleValue];
        v13 = dispatch_time(0, (v12 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__HMDCoreDataCloudShareService__fetchShareMetadataForInvitation_completion___block_invoke_81;
        block[3] = &unk_278689F98;
        block[4] = v7;
        v25 = a1[4];
        v26 = a1[6];
        dispatch_after(v13, MEMORY[0x277D85CD0], block);

        goto LABEL_19;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [a1[4] url];
        *buf = 138544130;
        v28 = v20;
        v29 = 2160;
        v30 = 1752392040;
        v31 = 2112;
        v32 = v21;
        v33 = 2114;
        v34 = v3;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch metadata for URL %{mask.hash}@ due to %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v6);
      v22 = _Block_copy(a1[6]);
      v19 = v22;
      if (v22)
      {
        (*(v22 + 2))(v22, 0, v3);
      }
    }

    else
    {
      v5 = _Block_copy(a1[6]);
      if (!v5)
      {
LABEL_19:

        goto LABEL_20;
      }

      v19 = [a1[5] firstObject];
      (v5)[2](v5, v19, 0);
    }

    goto LABEL_19;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Lost self fetching share metadata", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v17 = _Block_copy(a1[6]);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, 0, v3);
  }

LABEL_20:
  v23 = *MEMORY[0x277D85DE8];
}

- (id)_pushUpdatedShare:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v11];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDCoreDataCloudShareService__pushUpdatedShare___block_invoke;
  v7[3] = &unk_27866F3F0;
  objc_copyWeak(&v9, &location);
  v8 = v11;
  [(HMDCoreDataCloudShareService *)self _pushUpdatedShare:v4 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __50__HMDCoreDataCloudShareService__pushUpdatedShare___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetching share failed with %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) rejectWithError:v6];
  }

  else
  {
    v12 = *(a1 + 32);
    if (v5)
    {
      [v12 fulfillWithValue:v5];
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v12 rejectWithError:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_pushUpdatedShare:(id)a3 completion:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v8 setQualityOfService:17];
  v9 = objc_alloc(MEMORY[0x277CBC4A0]);
  v35[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v11 = [v9 initWithRecordsToSave:v10 recordIDsToDelete:0];

  [v11 setConfiguration:v8];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke;
  v26[3] = &unk_27866F418;
  objc_copyWeak(&v27, &location);
  [v11 setPerRecordCompletionBlock:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke_75;
  v22[3] = &unk_27866F440;
  objc_copyWeak(&v25, &location);
  v12 = v7;
  v24 = v12;
  v13 = v6;
  v23 = v13;
  [v11 setModifyRecordsCompletionBlock:v22];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v11 operationID];
    *buf = 138543874;
    v30 = v17;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Pushing updated share %@ (operationID: %@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [(HMDCoreDataCloudShareService *)v15 ckContainer];
  v20 = [v19 privateCloudDatabase];
  [v20 addOperation:v11];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
}

void __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543875;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      v22 = 2113;
      v23 = v6;
      v13 = "%{public}@Failed to push share %@: %{private}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v14, v15, v13, &v18, v16);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    v13 = "%{public}@Successfully pushed share: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
}

void __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke_75(id *a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = WeakRetained;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v14;
        v51 = 2114;
        v52 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Push updated share operation failed: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v9 hmd_retryAfterCKError];
      if (v15)
      {
        v16 = v15;
        v17 = objc_autoreleasePoolPush();
        v18 = v12;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v20;
          v51 = 2114;
          v52 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Retrying pushing updated share in %{public}@s", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        [v16 doubleValue];
        v22 = dispatch_time(0, (v21 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__HMDCoreDataCloudShareService__pushUpdatedShare_completion___block_invoke_76;
        block[3] = &unk_278689F98;
        block[4] = v18;
        v47 = a1[4];
        v48 = a1[5];
        dispatch_after(v22, MEMORY[0x277D85CD0], block);
      }

      else
      {
        v36 = [a1[4] recordID];
        v37 = [v9 hmd_actualCKErrorFromCKErrorPartialFailure:v36];

        v38 = objc_autoreleasePoolPush();
        v39 = v12;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v41;
          v51 = 2114;
          v52 = v37;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failing push updated share with %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        v42 = _Block_copy(a1[5]);
        v43 = v42;
        if (v42)
        {
          (*(v42 + 2))(v42, 0, v37);
        }

        v16 = 0;
      }
    }

    else
    {
      v27 = [v7 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v16 = v28;

      if (!v16)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = WeakRetained;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          [v7 firstObject];
          v33 = v45 = v29;
          *buf = 138543618;
          v50 = v32;
          v51 = 2112;
          v52 = v33;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unexpected record received when pushing updated share: %@", buf, 0x16u);

          v29 = v45;
        }

        objc_autoreleasePoolPop(v29);
      }

      v34 = _Block_copy(a1[5]);
      v35 = v34;
      if (v34)
      {
        (*(v34 + 2))(v34, v16, 0);
      }
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Lost self while pushing updated share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v26 = _Block_copy(a1[5]);
    v16 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, 0, v9);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)fetchShareWithRecordID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v11];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDCoreDataCloudShareService_fetchShareWithRecordID___block_invoke;
  v7[3] = &unk_27866F3F0;
  objc_copyWeak(&v9, &location);
  v8 = v11;
  [(HMDCoreDataCloudShareService *)self _fetchShareWithRecordID:v4 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __55__HMDCoreDataCloudShareService_fetchShareWithRecordID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetching share failed with %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) rejectWithError:v6];
  }

  else
  {
    v12 = *(a1 + 32);
    if (v5)
    {
      [v12 fulfillWithValue:v5];
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v12 rejectWithError:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_fetchShareWithRecordID:(id)a3 completion:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v8 setQualityOfService:17];
  v9 = objc_alloc(MEMORY[0x277CBC3E0]);
  v35[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v11 = [v9 initWithRecordIDs:v10];

  [v11 setConfiguration:v8];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke;
  v26[3] = &unk_27866F3A0;
  objc_copyWeak(&v27, &location);
  [v11 setPerRecordCompletionBlock:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke_68;
  v22[3] = &unk_27866F3C8;
  objc_copyWeak(&v25, &location);
  v12 = v7;
  v24 = v12;
  v13 = v6;
  v23 = v13;
  [v11 setFetchRecordsCompletionBlock:v22];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v11 operationID];
    *buf = 138543874;
    v30 = v17;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Fetching share with record ID: %@ (operationID: %@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [(HMDCoreDataCloudShareService *)v15 ckContainer];
  v20 = [v19 privateCloudDatabase];
  [v20 addOperation:v11];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
}

void __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_autoreleasePoolPush();
  v12 = WeakRetained;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v15;
      v23 = 2112;
      v24 = v7;
      v25 = 2114;
      v26 = v9;
      v16 = "%{public}@Failed to fetch share %@: %{public}@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v17, v18, v16, &v21, v19);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v15;
    v23 = 2112;
    v24 = v7;
    v16 = "%{public}@Successfully fetched share: %@";
    v17 = v14;
    v18 = OS_LOG_TYPE_DEFAULT;
    v19 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v11);
  v20 = *MEMORY[0x277D85DE8];
}

void __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke_68(id *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v11;
        v45 = 2114;
        v46 = v6;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetch share operation failed: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [v6 hmd_retryAfterCKError];
      if (v12)
      {
        v13 = v12;
        v14 = objc_autoreleasePoolPush();
        v15 = v9;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543874;
          v44 = v17;
          v45 = 2114;
          v46 = v13;
          v47 = 2112;
          v48 = v6;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Retrying fetching share in %{public}@s due to error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        [v13 doubleValue];
        v19 = dispatch_time(0, (v18 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__HMDCoreDataCloudShareService__fetchShareWithRecordID_completion___block_invoke_69;
        block[3] = &unk_278689F98;
        block[4] = v15;
        v41 = a1[4];
        v42 = a1[5];
        dispatch_after(v19, MEMORY[0x277D85CD0], block);
      }

      else
      {
        v32 = [v6 hmd_actualCKErrorFromCKErrorPartialFailure:a1[4]];
        v33 = objc_autoreleasePoolPush();
        v34 = v9;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v44 = v36;
          v45 = 2114;
          v46 = v32;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failing fetch share failed with %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v37 = _Block_copy(a1[5]);
        v38 = v37;
        if (v37)
        {
          (*(v37 + 2))(v37, 0, v32);
        }

        v13 = 0;
      }
    }

    else
    {
      v24 = [v5 objectForKeyedSubscript:a1[4]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v13 = v25;

      if (!v13)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = WeakRetained;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v44 = v29;
          v45 = 2112;
          v46 = v5;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetched share: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }

      v30 = _Block_copy(a1[5]);
      v31 = v30;
      if (v30)
      {
        (*(v30 + 2))(v30, v13, 0);
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Lost self while fetching share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v23 = _Block_copy(a1[5]);
    v13 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, v6);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)_fetchParticipantForAccountHandle:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v15[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v7 = [(HMDCoreDataCloudShareService *)self _fetchParticipantsForAccountHandles:v6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__HMDCoreDataCloudShareService__fetchParticipantForAccountHandle___block_invoke;
    v12[3] = &unk_278687110;
    v13 = v5;
    v14 = self;
    v8 = [v7 then:v12];
  }

  else
  {
    v9 = MEMORY[0x277D0F7C0];
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    v8 = [v9 futureWithError:v6];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __66__HMDCoreDataCloudShareService__fetchParticipantForAccountHandle___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v4;
    v6 = 1;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No participant with handle %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v6 = 2;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_fetchParticipantsForAccountHandles:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v43 count:16];
  v31 = v4;
  if (v6)
  {
    v8 = v6;
    v9 = *v37;
    *&v7 = 138543618;
    v30 = v7;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v11 cloudKitLookupInfo];
        if (v12)
        {
          [v4 setObject:v11 forKeyedSubscript:v12];
        }

        else
        {
          if ([v5 count] == 1)
          {
            v26 = MEMORY[0x277D0F7C0];
            v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
            v22 = [v26 futureWithError:v27];

            goto LABEL_20;
          }

          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = HMFGetLogIdentifier();
            *buf = v30;
            *&buf[4] = v16;
            v41 = 2112;
            v42 = v11;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Skipping user with handle %@ due to missing cloudkit lookup info", buf, 0x16u);

            v4 = v31;
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([v4 count])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v31 allKeys];
      *buf = 138543618;
      *&buf[4] = v20;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetching share participants using lookup infos: %@", buf, 0x16u);

      v4 = v31;
    }

    objc_autoreleasePoolPop(v17);
    *buf = 0;
    v22 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v23 = [(HMDCoreDataCloudShareService *)v18 container];
    v24 = [v4 allKeys];
    v25 = [(HMDCoreDataCloudShareService *)v18 privateStore];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__HMDCoreDataCloudShareService__fetchParticipantsForAccountHandles___block_invoke;
    v33[3] = &unk_278688348;
    v33[4] = v18;
    v34 = v31;
    v35 = *buf;
    [v23 fetchParticipantsMatchingLookupInfos:v24 intoPersistentStore:v25 completion:v33];

    v4 = v31;
  }

  else
  {
    v22 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC10]];
  }

LABEL_20:

  v28 = *MEMORY[0x277D85DE8];

  return v22;
}

void __68__HMDCoreDataCloudShareService__fetchParticipantsForAccountHandles___block_invoke(id *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = a1;
    v8 = objc_autoreleasePoolPush();
    v9 = v7[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v7[5] allKeys];
      *buf = 138543874;
      v45 = v11;
      v46 = 2112;
      v47 = v12;
      v48 = 2114;
      v49 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetching participant for %@ resulted in error %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v7[6] rejectWithError:v6];
  }

  else if ([v5 count])
  {
    v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v35 = v5;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      v36 = a1;
      v37 = v13;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          v19 = [v18 userIdentity];
          v20 = [v19 lookupInfo];

          if (v20)
          {
            v21 = [a1[5] objectForKeyedSubscript:v20];
            if (v21)
            {
              [v38 setObject:v18 forKeyedSubscript:v21];
            }

            else
            {
              v22 = objc_autoreleasePoolPush();
              v23 = a1[4];
              v24 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = HMFGetLogIdentifier();
                *buf = 138543618;
                v45 = v25;
                v46 = 2112;
                v47 = v18;
                _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot find account handle for fetching participant %@", buf, 0x16u);

                a1 = v36;
              }

              objc_autoreleasePoolPop(v22);
              v13 = v37;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v15);
    }

    [a1[6] fulfillWithValue:v38];
    v6 = 0;
    v5 = v35;
  }

  else
  {
    v26 = a1;
    v27 = objc_autoreleasePoolPush();
    v28 = v26[4];
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v26[5] allKeys];
      *buf = 138543618;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Did not fetch any participants using lookup infos %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v32 = v26[6];
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v32 rejectWithError:v33];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_removeParticipant:(id)a3 share:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v65 = v11;
    v66 = 2112;
    v67 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing participant %@ from share", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v7 participants];
  v59 = MEMORY[0x277D85DD0];
  v60 = 3221225472;
  v61 = __57__HMDCoreDataCloudShareService__removeParticipant_share___block_invoke;
  v62 = &unk_27866F378;
  v13 = v6;
  v63 = v13;
  v14 = [v12 na_firstObjectPassingTest:&v59];

  if (!v14)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v9;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not removing participant from share: No equal participant exists on the share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x277D0F7C0] futureWithValue:v7];
    goto LABEL_20;
  }

  if ([v14 role] == 1)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Cannot remove participant from share: Cannot remove the owner from a share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [[HMDAssertionLogEvent alloc] initWithReason:@"Cannot remove participant from share: Cannot remove the owner from a share"];
    v20 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v20 submitLogEvent:v19];

    v21 = MEMORY[0x277D0F7C0];
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Cannot remove the owner from a share";
LABEL_15:
    v35 = [v22 hmfErrorWithCode:5 reason:v23];
    v36 = [v21 futureWithError:v35];

    goto LABEL_21;
  }

  if ([v14 isCurrentUser])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v9;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Cannot remove participant from share: Cannot remove the current user from the share", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [[HMDAssertionLogEvent alloc] initWithReason:@"Cannot remove participant from share: Cannot remove the current user from the share"];
    v34 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v34 submitLogEvent:v33];

    v21 = MEMORY[0x277D0F7C0];
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Cannot remove the current user from the share";
    goto LABEL_15;
  }

  v37 = [v7 currentUserParticipant];
  if ([v37 role] == 1)
  {

LABEL_19:
    [v7 removeParticipant:v14];
    v28 = [(HMDCoreDataCloudShareService *)v9 _pushUpdatedShare:v7];
LABEL_20:
    v36 = v28;
    goto LABEL_21;
  }

  v38 = [v7 currentUserParticipant];
  v39 = [v38 role];

  if (v39 == 2)
  {
    goto LABEL_19;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = v9;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
  {
    v45 = HMFGetLogIdentifier();
    v46 = [v7 currentUserParticipant];
    v47 = [v46 role];
    *buf = 138543618;
    v65 = v45;
    v66 = 2048;
    v67 = v47;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Current user participant with non-owner role %ld cannot remove participants from a share", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v42);
  v48 = [HMDAssertionLogEvent alloc];
  v49 = [v7 currentUserParticipant];
  v50 = [v49 role];
  v51 = [(HMDAssertionLogEvent *)v48 initWithReason:@"Current user participant with non-owner role %ld cannot remove participants from a share", v50, v59, v60, v61, v62];

  v52 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v52 submitLogEvent:v51];

  v53 = MEMORY[0x277D0F7C0];
  v54 = MEMORY[0x277CCA9B8];
  v55 = MEMORY[0x277CCACA8];
  v56 = [v7 currentUserParticipant];
  v57 = [v55 stringWithFormat:@"Current user participant with non-owner role %ld cannot remove participants from a share", objc_msgSend(v56, "role")];
  v58 = [v54 hmfErrorWithCode:5 reason:v57];
  v36 = [v53 futureWithError:v58];

LABEL_21:
  v40 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_addParticipant:(id)a3 share:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding participant %@ to share", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [v7 addParticipant:v6];
  v12 = [(HMDCoreDataCloudShareService *)v9 _pushUpdatedShare:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_auditUsersForRevokedAccessWithAccountHandles:(id)a3 share:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__10242;
    v23[4] = __Block_byref_object_dispose__10243;
    v24 = 0;
    v8 = [v7 recordID];
    v9 = [(HMDCoreDataCloudShareService *)self fetchShareWithRecordID:v8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke;
    v20[3] = &unk_27866F240;
    v22 = v23;
    v20[4] = self;
    v10 = v6;
    v21 = v10;
    v11 = [v9 then:v20];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke_2;
    v16[3] = &unk_27866F350;
    v18 = self;
    v19 = v23;
    v17 = v10;
    v12 = [v11 then:v16];

    _Block_object_dispose(v23, 8);
  }

  else
  {
    v13 = MEMORY[0x277D0F7C0];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v12 = [v13 futureWithError:v14];
  }

  return v12;
}

uint64_t __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(a1 + 32) _fetchParticipantsForAccountHandles:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke_2(v8);
  }
}

uint64_t __84__HMDCoreDataCloudShareService__auditUsersForRevokedAccessWithAccountHandles_share___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v5 = [*(a1 + 32) count];
  v6 = v4;
  v7 = v3;
  v27 = [v6 arrayWithCapacity:v5];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v3 allKeys];
  v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v30;
    *&v9 = 138543874;
    v25 = v9;
    v26 = v3;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:{v13, v25}];
        v15 = [*(*(*(a1 + 48) + 8) + 40) participants];
        v16 = [v15 containsObject:v14];

        if ((v16 & 1) == 0)
        {
          v17 = v11;
          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 40);
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = *(*(*(a1 + 48) + 8) + 40);
            *buf = v25;
            v34 = v21;
            v35 = 2112;
            v36 = v14;
            v37 = 2112;
            v38 = v22;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Participant %@ no longer found on share %@", buf, 0x20u);

            v7 = v26;
          }

          objc_autoreleasePoolPop(v18);
          [v27 addObject:v13];
          v11 = v17;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_revokeAccessForUserWithAccountHandle:(id)a3 share:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__10242;
  v26[4] = __Block_byref_object_dispose__10243;
  v27 = 0;
  v8 = [v7 recordID];
  v9 = [(HMDCoreDataCloudShareService *)self fetchShareWithRecordID:v8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke;
  v23[3] = &unk_27866F240;
  v25 = v26;
  v23[4] = self;
  v10 = v6;
  v24 = v10;
  v11 = [v9 then:v23];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke_2;
  v19 = &unk_27866F308;
  v22 = v26;
  v20 = self;
  v12 = v7;
  v21 = v12;
  v13 = [v11 then:&v16];
  v14 = [v13 then:{&__block_literal_global_42, v16, v17, v18, v19, v20}];

  _Block_object_dispose(v26, 8);

  return v14;
}

uint64_t __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(a1 + 32) _fetchParticipantForAccountHandle:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke_2(v8);
  }
}

uint64_t __76__HMDCoreDataCloudShareService__revokeAccessForUserWithAccountHandle_share___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 48) + 8) + 40) participants];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) _removeParticipant:v3 share:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v16 = 138543874;
      v17 = v10;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No matching participant %@ found on share %@ to revoke", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [MEMORY[0x277D0F7C0] futureWithValue:*(*(*(a1 + 48) + 8) + 40)];
  }

  v12 = v6;
  if (!v12)
  {
    _HMFPreconditionFailure();
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];
  return 3;
}

- (id)_grantAccessForUserWithAccountHandle:(id)a3 share:(id)a4 logEventBuilder:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v41 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Granting access for user with account handle %@ to share: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = __Block_byref_object_copy__10242;
  v42 = __Block_byref_object_dispose__10243;
  v43 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__10242;
  v38[4] = __Block_byref_object_dispose__10243;
  v39 = 0;
  [v10 markAddUserBegin];
  v15 = [v9 recordID];
  v16 = [(HMDCoreDataCloudShareService *)v12 fetchShareWithRecordID:v15];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke;
  v35[3] = &unk_27866F240;
  v37 = buf;
  v35[4] = v12;
  v17 = v8;
  v36 = v17;
  v18 = [v16 then:v35];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2;
  v34[3] = &unk_27866F2B8;
  v34[5] = v38;
  v34[6] = buf;
  v34[4] = v12;
  v19 = [v18 then:v34];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2_36;
  v30[3] = &unk_27866F2E0;
  v33 = v38;
  v30[4] = v12;
  v31 = v10;
  v32 = v17;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_38;
  v26[3] = &unk_2786864A0;
  v26[4] = v12;
  v20 = v32;
  v27 = v20;
  v21 = v9;
  v28 = v21;
  v22 = v31;
  v29 = v22;
  v23 = [v19 then:v30 orRecover:v26];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(buf, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(a1 + 32) _fetchParticipantForAccountHandle:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2(v8);
  }
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = [*(*(*(a1 + 48) + 8) + 40) owner];
  v6 = [v5 isEqual:*(*(*(a1 + 40) + 8) + 40)];

  if (!v6)
  {
    v17 = [*(*(*(a1 + 48) + 8) + 40) participants];
    v18 = [v17 containsObject:*(*(*(a1 + 40) + 8) + 40)];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543618;
        v35 = v22;
        v36 = 2112;
        v37 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Removing and re-adding participant because fetched share already contains equivalent participant: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [*(a1 + 32) _removeParticipant:*(*(*(a1 + 40) + 8) + 40) share:*(*(*(a1 + 48) + 8) + 40)];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_35;
      v32[3] = &unk_27866F290;
      v33 = *(a1 + 32);
      v25 = [v24 then:v32];
      if (v25)
      {
        v26 = v25;

LABEL_13:
        v29 = 3;
        goto LABEL_16;
      }
    }

    else
    {
      v27 = [*(a1 + 32) _addParticipant:*(*(*(a1 + 40) + 8) + 40) share:*(*(*(a1 + 48) + 8) + 40)];
      if (v27)
      {
        v28 = v27;

        goto LABEL_13;
      }
    }

    _HMFPreconditionFailure();
  }

  v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3511];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(*(*(a1 + 48) + 8) + 40) owner];
    v13 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138544130;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    v38 = 2112;
    v39 = v13;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Refusing to grant access. Owner is same as participant. Owner: %@ Participant: %@. error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v14 = v7;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v29 = 2;
LABEL_16:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_2_36(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [v3 participants];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        if ([v9 isEqual:*(*(*(a1 + 56) + 8) + 40)])
        {
          v18 = [v9 invitationToken];

          v19 = objc_autoreleasePoolPush();
          v20 = *(a1 + 32);
          v21 = HMFGetOSLogHandle();
          v22 = v21;
          if (v18)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              v24 = *(a1 + 48);
              *buf = 138543618;
              v37 = v23;
              v38 = 2112;
              v39 = v24;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Successfully added user with handle %@ to share", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
            [*(a1 + 40) markAddUserEnd];
            v25 = [HMDCoreDataCloudShareInvitation alloc];
            v16 = [v3 URL];
            v26 = [v9 invitationToken];
            [(HMDCoreDataCloudShareInvitation *)v25 initWithURL:v16 token:v26];
            v17 = 1;
          }

          else
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v27 = HMFGetLogIdentifier();
              *buf = 138543362;
              v37 = v27;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nil invitation token after adding user as new participant", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v19);
            v28 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3504];
            [*(a1 + 40) markError:v28];
            v29 = v28;
            if (v29)
            {
              v26 = v29;
              v17 = 2;
              v16 = v26;
            }

            else
            {
              [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
              objc_claimAutoreleasedReturnValue();
              v26 = 0;
              v16 = 0;
              v17 = 2;
            }
          }

          goto LABEL_24;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unexpected no matching participant after adding user as a new participant", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3505];
  [*(a1 + 40) markError:v14];
  v15 = v14;
  if (v15)
  {
    v16 = v15;
    v17 = 2;
    v4 = v16;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
    v16 = 0;
    v4 = 0;
    v17 = 2;
  }

LABEL_24:

  v30 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_38(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmd_isRecordConflictCKError];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v3 hmd_conciseCKError];
      v11 = [v10 shortDescription];
      v20 = 138543618;
      v21 = v9;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Failed to save share, need to resolve conflict, %{public}@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v12 = [*(a1 + 32) _grantAccessForUserWithAccountHandle:*(a1 + 40) share:*(a1 + 48) logEventBuilder:*(a1 + 56)];
    if (!v12)
    {
      _HMFPreconditionFailure();
    }

    v13 = v12;

    v14 = 3;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v15;
      v22 = 2114;
      v23 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to add participant with %{public}@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v16 = v3;
    v13 = v16;
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v14 = 2;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __91__HMDCoreDataCloudShareService__grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _addParticipant:*(*(*(a1 + 40) + 8) + 40) share:v3];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v7 acceptShareInvitation:v8, v9];
  }
}

- (id)acceptShareInvitation:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDCoreDataCloudShareService_acceptShareInvitation___block_invoke;
  v10[3] = &unk_2786898D8;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  v8 = [v5 inContext:managedObjectContext perform:v10];

  return v8;
}

uint64_t __54__HMDCoreDataCloudShareService_acceptShareInvitation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _acceptShareInvitation:*(a1 + 40)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 validateGrantingAccessForUserWithAccountHandle:v5 share:v6, v7];
  }
}

- (id)validateGrantingAccessForUserWithAccountHandle:(id)a3 share:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v30 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Validation granting access for user with account handle %@ to share: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__10242;
  v31 = __Block_byref_object_dispose__10243;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__10242;
  v27[4] = __Block_byref_object_dispose__10243;
  v28 = 0;
  v12 = [v7 recordID];
  v13 = [(HMDCoreDataCloudShareService *)v9 fetchShareWithRecordID:v12];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke;
  v24[3] = &unk_27866F240;
  v26 = buf;
  v24[4] = v9;
  v14 = v6;
  v25 = v14;
  v15 = [v13 then:v24];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke_2;
  v20[3] = &unk_27866F268;
  v22 = v27;
  v23 = buf;
  v20[4] = v9;
  v16 = v14;
  v21 = v16;
  v17 = [v15 then:v20];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(a1 + 32) _fetchParticipantForAccountHandle:*(a1 + 40)];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke_2(v8);
  }
}

uint64_t __85__HMDCoreDataCloudShareService_validateGrantingAccessForUserWithAccountHandle_share___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = [*(*(*(a1 + 56) + 8) + 40) owner];
  v6 = [v5 isEqual:*(*(*(a1 + 48) + 8) + 40)];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3511];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(*(*(a1 + 56) + 8) + 40) owner];
      v13 = *(*(*(a1 + 48) + 8) + 40);
      v25 = 138544130;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Validation failed. Share owner is same as participant. Owner: %@ Participant: %@. error: %@", &v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v14 = v7;
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v22 = 2;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 40);
      v25 = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Validated %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)_acceptShareInvitation:(id)a3
{
  v4 = [(HMDCoreDataCloudShareService *)self _fetchShareMetadataForInvitation:a3];
  managedObjectContext = self->_managedObjectContext;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HMDCoreDataCloudShareService__acceptShareInvitation___block_invoke;
  v9[3] = &unk_27866F218;
  v9[4] = self;
  v6 = [v4 inContext:managedObjectContext then:v9];
  v7 = [v6 then:&__block_literal_global_32_10260];

  return v7;
}

uint64_t __55__HMDCoreDataCloudShareService__acceptShareInvitation___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v11[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [*(a1 + 32) sharedStore];
  v7 = [v4 acceptShareInvitationsFromMetadata:v5 intoPersistentStore:v6];
  if (!v7)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __55__HMDCoreDataCloudShareService__acceptShareInvitation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 firstObject];
  [v2 share];
  objc_claimAutoreleasedReturnValue();

  return 1;
}

- (id)acceptShareInvitationsFromMetadata:(id)a3 intoPersistentStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [MEMORY[0x277D0F7C0] futureWithPromise:&v16];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__HMDCoreDataCloudShareService_acceptShareInvitationsFromMetadata_intoPersistentStore___block_invoke;
  v11[3] = &unk_278689578;
  objc_copyWeak(&v14, &location);
  v12 = v16;
  v9 = v6;
  v13 = v9;
  [(HMDCoreDataCloudShareService *)self _acceptShareInvitationsFromMetadata:v9 intoPersistentStore:v7 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __87__HMDCoreDataCloudShareService_acceptShareInvitationsFromMetadata_intoPersistentStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    [*(a1 + 32) rejectWithError:v6];
  }

  else if (v5)
  {
    [*(a1 + 32) fulfillWithValue:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to accept share, no metadata returned for %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v13 rejectWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_acceptShareInvitationsFromMetadata:(id)a3 intoPersistentStore:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v14;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Accepting share invitations from metadata: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, v12);
  v15 = [(HMDCoreDataCloudShareService *)v12 container];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__HMDCoreDataCloudShareService__acceptShareInvitationsFromMetadata_intoPersistentStore_completion___block_invoke;
  v20[3] = &unk_27866F1F0;
  objc_copyWeak(&v24, buf);
  v16 = v10;
  v23 = v16;
  v17 = v8;
  v21 = v17;
  v18 = v9;
  v22 = v18;
  [v15 acceptShareInvitationsFromMetadata:v17 intoPersistentStore:v18 completion:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __99__HMDCoreDataCloudShareService__acceptShareInvitationsFromMetadata_intoPersistentStore_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Lost self while accepting share invitations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v19 = _Block_copy(*(a1 + 48));
    v20 = v19;
    if (!v19)
    {
      goto LABEL_14;
    }

    v21 = v19[2];
    goto LABEL_13;
  }

  if (!v6)
  {
    v22 = _Block_copy(*(a1 + 48));
    v20 = v22;
    if (!v22)
    {
LABEL_14:

      goto LABEL_21;
    }

    v21 = v22[2];
LABEL_13:
    v21();
    goto LABEL_14;
  }

  v8 = [v6 hmd_retryAfterCKError];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v13;
      v33 = 2112;
      v34 = v8;
      v35 = 2114;
      v36 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Retrying with %@, failed to accept share invitation due to %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [v8 doubleValue];
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __99__HMDCoreDataCloudShareService__acceptShareInvitationsFromMetadata_intoPersistentStore_completion___block_invoke_25;
    v27[3] = &unk_278689AB8;
    v27[4] = v10;
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    dispatch_after(v15, MEMORY[0x277D85CD0], v27);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to accept share invitation due to %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v24 = _Block_copy(*(a1 + 48));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0, v6);
    }
  }

LABEL_21:
  v26 = *MEMORY[0x277D85DE8];
}

- (id)auditUsersForRevokedAccessWithAccountHandles:(id)a3 share:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HMDCoreDataCloudShareService_auditUsersForRevokedAccessWithAccountHandles_share___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v8 inContext:managedObjectContext perform:v14];

  return v12;
}

uint64_t __83__HMDCoreDataCloudShareService_auditUsersForRevokedAccessWithAccountHandles_share___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _auditUsersForRevokedAccessWithAccountHandles:*(a1 + 40) share:*(a1 + 48)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 revokeAccessForUserWithAccountHandle:v5 share:v6, v7];
  }
}

- (id)revokeAccessForUserWithAccountHandle:(id)a3 share:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__HMDCoreDataCloudShareService_revokeAccessForUserWithAccountHandle_share___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v8 inContext:managedObjectContext perform:v14];

  return v12;
}

uint64_t __75__HMDCoreDataCloudShareService_revokeAccessForUserWithAccountHandle_share___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _revokeAccessForUserWithAccountHandle:*(a1 + 40) share:*(a1 + 48)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 grantAccessForUserWithAccountHandle:v5 share:v6 logEventBuilder:v7, v8];
  }
}

- (id)grantAccessForUserWithAccountHandle:(id)a3 share:(id)a4 logEventBuilder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D0F7C0];
  managedObjectContext = self->_managedObjectContext;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HMDCoreDataCloudShareService_grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke;
  v18[3] = &unk_2786886F0;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = [v11 inContext:managedObjectContext perform:v18];

  return v16;
}

uint64_t __90__HMDCoreDataCloudShareService_grantAccessForUserWithAccountHandle_share_logEventBuilder___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _grantAccessForUserWithAccountHandle:*(a1 + 40) share:*(a1 + 48) logEventBuilder:*(a1 + 56)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDCoreDataCloudShareService *)v4 ckContainer];
  }
}

- (id)ckContainer
{
  os_unfair_lock_lock_with_options();
  ckContainer = self->_ckContainer;
  if (!ckContainer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBC230]);
    [v4 setUseZoneWidePCS:1];
    v5 = [MEMORY[0x277CBC218] containerIDForContainerIdentifier:@"com.apple.homekit.config"];
    v6 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v5 options:v4];
    v7 = self->_ckContainer;
    self->_ckContainer = v6;

    ckContainer = self->_ckContainer;
  }

  v8 = ckContainer;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (HMDCoreDataCloudShareService)initWithContainer:(id)a3 sharedStore:(id)a4 privateStore:(id)a5 moc:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDCoreDataCloudShareService;
  v15 = [(HMDCoreDataCloudShareService *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_container, a3);
    objc_storeStrong(&v16->_sharedStore, a4);
    objc_storeStrong(&v16->_privateStore, a5);
    objc_storeStrong(&v16->_managedObjectContext, a6);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_10273 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_10273, &__block_literal_global_10274);
  }

  v3 = logCategory__hmf_once_v1_10275;

  return v3;
}

void __43__HMDCoreDataCloudShareService_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_10275;
  logCategory__hmf_once_v1_10275 = v1;
}

@end