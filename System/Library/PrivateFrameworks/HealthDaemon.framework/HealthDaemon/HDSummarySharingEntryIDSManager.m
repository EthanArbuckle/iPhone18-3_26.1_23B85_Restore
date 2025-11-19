@interface HDSummarySharingEntryIDSManager
- (HDSummarySharingEntryIDSManager)initWithProfile:(id)a3;
- (id)_finishHandlerForOperation:(void *)a3 completion:;
- (id)_profileForEntry:(uint64_t)a3 errorOut:;
- (uint64_t)_deleteProfile:(uint64_t)a3 errorOut:;
- (uint64_t)_queue_insertOrReplaceCodableEntry:(uint64_t)a3 ignoreIfExists:(uint64_t)a4 shouldResolveCNContact:(uint64_t)a5 error:;
- (uint64_t)_queue_updateEntryWithInvitationUUID:(uint64_t)a3 newStatus:(void *)a4 dateAccepted:(void *)a5 ownerParticipant:(uint64_t)a6 error:;
- (void)_attemptBestEffortCloudSynchronization;
- (void)acceptInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)beginObservingReachabilityStatusForIdentifiers:(id)a3 isInitialQuery:(BOOL)a4;
- (void)declineInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)invitationManager:(id)a3 didAcceptInvitation:(id)a4;
- (void)invitationManager:(id)a3 didDeclineInvitation:(id)a4;
- (void)invitationManager:(id)a3 didReceiveInvitation:(id)a4;
- (void)invitationManager:(id)a3 didRescindInvitation:(id)a4;
- (void)inviteSharingDataWithIdentifier:(id)a3 firstName:(id)a4 lastName:(id)a5 sharingAuthorizations:(id)a6 userWheelchairMode:(int64_t)a7 completion:(id)a8;
- (void)leaveInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)removeObserver:(id)a3;
- (void)revokeInvitationWithUUID:(id)a3 completion:(id)a4;
@end

@implementation HDSummarySharingEntryIDSManager

- (HDSummarySharingEntryIDSManager)initWithProfile:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HDSummarySharingEntryIDSManager;
  v5 = [(HDSummarySharingEntryIDSManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    [v4 registerProfileReadyObserver:v6 queue:v6->_queue];
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v9;

    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = HKLogSharing();
    v15 = [v11 initWithName:v13 loggingCategory:v14];
    observers = v6->_observers;
    v6->_observers = v15;
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HDSummarySharingEntryIDSManager_profileDidBecomeReady___block_invoke;
  v7[3] = &unk_278613968;
  v7[4] = self;
  [v5 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v7];
}

void __57__HDSummarySharingEntryIDSManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 16));
    if (!*(v1 + 48))
    {
      v2 = [[HDIDSInvitationManager alloc] initWithServiceIdentifier:@"com.apple.private.alloy.health.sync.sharingsetup" messageClass:objc_opt_class() schema:@"1"];
      v3 = *(v1 + 48);
      *(v1 + 48) = v2;

      v4 = *(v1 + 48);

      [v4 setDelegate:v1];
    }
  }
}

- (void)removeObserver:(id)a3
{
  [(HKObserverSet *)self->_observers unregisterObserver:a3];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HDSummarySharingEntryIDSManager_removeObserver___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __50__HDSummarySharingEntryIDSManager_removeObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) count];
  if (!result)
  {
    v3 = *(*(a1 + 32) + 40);

    return [v3 cancel];
  }

  return result;
}

- (void)beginObservingReachabilityStatusForIdentifiers:(id)a3 isInitialQuery:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke;
  block[3] = &unk_27861F830;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_sync(queue, block);
}

void __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hk_map:&__block_literal_global_87];
  if ([*(*(a1 + 40) + 32) operationCount] && *(a1 + 48) != 1)
  {
    _HKInitializeLogging();
    v12 = HKLogSharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) count];
      *buf = 138543618;
      v23 = v13;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating reachability operation for %ld identifiers.", buf, 0x16u);
    }

    [*(*(a1 + 40) + 40) updateDestinations:v2];
  }

  else
  {
    [*(*(a1 + 40) + 32) cancelAllOperations];
    objc_initWeak(&location, *(a1 + 40));
    v3 = [HDIDSReachabilityOperation alloc];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke_3;
    v19 = &unk_27861F808;
    objc_copyWeak(&v20, &location);
    v4 = [(HDIDSReachabilityOperation *)v3 initWithIdentifers:v2 serviceIdentifier:@"com.apple.private.alloy.health.sync.sharingsetup" updateHandler:&v16];
    v5 = *(a1 + 40);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = objc_alloc(MEMORY[0x277D186D8]);
    v8 = [v7 initWithService:@"com.apple.private.alloy.health.sync.sharingsetup" delegate:*(*(a1 + 40) + 40) queue:{*(*(a1 + 40) + 16), v16, v17, v18, v19}];
    [*(*(a1 + 40) + 40) setQueryController:v8];
    _HKInitializeLogging();
    v9 = HKLogSharing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) count];
      *buf = 138543618;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Enqueing reachability operation for %ld identifiers.", buf, 0x16u);
    }

    [*(*(a1 + 40) + 32) addOperation:*(*(a1 + 40) + 40)];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _appearsToBeEmail])
  {
    v3 = _IDSCopyIDForEmailAddress();
  }

  else if ([v2 _appearsToBePhoneNumber])
  {
    v3 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

void __97__HDSummarySharingEntryIDSManager_beginObservingReachabilityStatusForIdentifiers_isInitialQuery___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  v8 = v5;
  if (WeakRetained)
  {
    v9 = WeakRetained[7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__HDSummarySharingEntryIDSManager__notifyObserversWithReachabilityStatus_error___block_invoke;
    v11[3] = &unk_27861F858;
    v11[4] = WeakRetained;
    v12 = v7;
    v13 = v8;
    [v9 notifyObservers:v11];
  }
}

- (void)inviteSharingDataWithIdentifier:(id)a3 firstName:(id)a4 lastName:(id)a5 sharingAuthorizations:(id)a6 userWheelchairMode:(int64_t)a7 completion:(id)a8
{
  v41 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:a8 completion:?];
  _HKInitializeLogging();
  v20 = HKLogSharing();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v38 = self;
    v39 = 2113;
    v40 = v15;
    _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Inviting to share data with contact identifier %{private}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  v22 = [WeakRetained cloudSyncManager];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke;
  v29[3] = &unk_27861F8D0;
  v29[4] = self;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = a2;
  v36 = a7;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v19;
  [v22 fetchCloudKitAccountInfoWithCompletion:v29];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_finishHandlerForOperation:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__HDSummarySharingEntryIDSManager__finishHandlerForOperation_completion___block_invoke;
    aBlock[3] = &unk_278613150;
    aBlock[4] = a1;
    v9 = v5;
    v10 = v6;
    a1 = _Block_copy(aBlock);
  }

  return a1;
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 emailAddress];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v9;
    if (v8)
    {
      if ([v9 _appearsToBeEmail])
      {
        v11 = _IDSCopyIDForEmailAddress();
        goto LABEL_13;
      }

      if ([v10 _appearsToBePhoneNumber])
      {
        v11 = _IDSCopyIDForPhoneNumberWithOptions();
LABEL_13:
        v15 = v11;

        if (v15)
        {
          v70 = v6;
          v16 = objc_alloc(MEMORY[0x277CBEB18]);
          v71 = v5;
          v17 = [v5 emailAddress];
          v18 = [v16 initWithObjects:{v17, 0}];

          v74 = *(a1 + 32);
          v69 = v15;
          if (!v74)
          {
            goto LABEL_52;
          }

          v19 = objc_alloc(MEMORY[0x277CC37B0]);
          v20 = [v19 initWithQueue:MEMORY[0x277D85CD0]];
          v88 = 0;
          v21 = [v20 getSubscriptionInfoWithError:&v88];
          v22 = v88;
          if (v22)
          {
            v23 = v22;
            _HKInitializeLogging();
            log = HKLogSharing();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v95 = v74;
              v96 = 2114;
              v97 = v23;
              _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to get CTXPCServiceSubscriptionInfo with error, %{public}@", buf, 0x16u);
            }

            v24 = 0;
          }

          else
          {
            v68 = v18;
            v28 = [v21 subscriptionsInUse];

            if (v28)
            {
              v67 = a1;
              log = objc_alloc_init(MEMORY[0x277CBEB18]);
              v84 = 0u;
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v66 = v21;
              v29 = [v21 subscriptionsInUse];
              v30 = [v29 countByEnumeratingWithState:&v84 objects:v90 count:16];
              if (v30)
              {
                v31 = v30;
                v23 = 0;
                v32 = *v85;
                v33 = log;
                do
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v85 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v35 = *(*(&v84 + 1) + 8 * i);
                    if ([v35 isSimDataOnly])
                    {
                      _HKInitializeLogging();
                      v36 = HKLogSharing();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        v95 = v74;
                        _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Sim is data only. Skipping...", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v83 = v23;
                      v36 = [v20 getPhoneNumber:v35 error:&v83];
                      v37 = v83;

                      _HKInitializeLogging();
                      if (v37)
                      {
                        v38 = HKLogSharing();
                        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          v95 = v74;
                          v96 = 2114;
                          v97 = v37;
                          _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to get sim Phone Number with error, %{public}@", buf, 0x16u);
                        }
                      }

                      else
                      {
                        v39 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                        {
                          v40 = v39;
                          v41 = [v36 number];
                          *buf = 138477827;
                          v95 = v41;
                          _os_log_impl(&dword_228986000, v40, OS_LOG_TYPE_DEFAULT, "Found sim phone number %{private}@", buf, 0xCu);

                          v33 = log;
                        }

                        v38 = [v36 number];
                        [v33 addObject:v38];
                      }

                      v23 = v37;
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v84 objects:v90 count:16];
                }

                while (v31);
              }

              else
              {
                v23 = 0;
                v33 = log;
              }

              v24 = [v33 count]? [v33 copy]: 0;
              a1 = v67;
              v18 = v68;
              v21 = v66;
            }

            else
            {
              _HKInitializeLogging();
              log = HKLogSharing();
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v95 = v74;
                _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: CTXPCServiceSubscriptionContext returned nil when fetching sim phone number.", buf, 0xCu);
              }

              v23 = 0;
              v24 = 0;
            }
          }

          if (v24)
          {
            v75 = v24;
            [v18 addObjectsFromArray:v24];
          }

          else
          {
LABEL_52:
            v75 = 0;
          }

          v42 = [HDCodableSummarySharingEntry alloc];
          v43 = [MEMORY[0x277CCAD78] UUID];
          v89 = *(a1 + 40);
          v44 = v89;
          v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
          v46 = *(a1 + 48);
          v73 = *(a1 + 56);
          v47 = *(a1 + 88);
          v48 = a1;
          v49 = [MEMORY[0x277CBEAA8] date];
          v50 = [MEMORY[0x277CBEAA8] date];
          v51 = [(HDCodableSummarySharingEntry *)v42 initWithUUID:v43 invitationUUID:0 cloudKitIdentifier:0 primaryContactIdentifier:v44 allContactIdentifiers:v45 firstName:v46 lastName:v73 sharingAuthorizations:v47 userWheelchairMode:0 type:0 direction:0 status:0 notificationStatus:v49 dateModified:v50 dateInvited:0 dateAccepted:0 setupMetadata:0 ownerParticipant:?];

          v52 = *(v48 + 32);
          v53 = *(v48 + 64);
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_342;
          v76[3] = &unk_27861F8A8;
          v76[4] = v52;
          v77 = *(v48 + 40);
          v78 = v51;
          v82 = *(v48 + 72);
          v79 = v71;
          v80 = v18;
          v13 = v69;
          v81 = v13;
          v54 = v18;
          v55 = v51;
          v56 = v53;
          v57 = v76;
          if (v52)
          {
            WeakRetained = objc_loadWeakRetained((v52 + 8));
            v59 = [WeakRetained cloudSyncManager];
            v60 = [v59 sharedSummaryManager];
            *v90 = MEMORY[0x277D85DD0];
            *&v90[8] = 3221225472;
            *&v90[16] = __137__HDSummarySharingEntryIDSManager__setupSharingWithOutgoingCodableSummarySharingEntry_sharingAuthorizations_localAccountInfo_completion___block_invoke;
            v91 = &unk_27861FA88;
            v93 = v57;
            v92 = v55;
            v61 = [v60 setupSharingWithOutgoingSummarySharingEntry:v92 sharingAuthorizations:v56 completion:v90];
          }

          v5 = v71;
          v6 = v70;
          v26 = v75;
LABEL_56:

          goto LABEL_57;
        }

LABEL_20:
        v25 = *(a1 + 32);
        v26 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 80) format:@"Unable to create email address or phone number from identifier"];
        _HKInitializeLogging();
        v27 = HKLogSharing();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v64 = *(a1 + 32);
          v65 = *(a1 + 40);
          *v90 = 138543875;
          *&v90[4] = v64;
          *&v90[12] = 2114;
          *&v90[14] = v26;
          *&v90[22] = 2113;
          v91 = v65;
          _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error %{public}@ creating destination from identifier %{private}@", v90, 0x20u);
        }

        (*(*(a1 + 72) + 16))();
        v13 = 0;
        goto LABEL_56;
      }
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v12 = HKLogSharing();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v63 = *(a1 + 32);
    *v90 = 138543618;
    *&v90[4] = v63;
    *&v90[12] = 2114;
    *&v90[14] = v6;
    _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error fetching cloudkit email address %{public}@", v90, 0x16u);
  }

  v13 = [v6 hd_cloudKitErrorRequiringUserAction];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), 0, v14);
LABEL_57:

  v62 = *MEMORY[0x277D85DE8];
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_342(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v7 copy];
    v11 = [*(a1 + 56) emailAddress];
    [v10 setPrimaryContactIdentifier:v11];

    [v10 setAllContactIdentifiers:*(a1 + 64)];
    [v10 setFirstName:0];
    [v10 setLastName:0];
    _HKInitializeLogging();
    v12 = HKLogSharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 138543619;
      v38 = v13;
      v39 = 2113;
      v40 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Sending sharing invitation to identifier %{private}@", buf, 0x16u);
    }

    v15 = [*(a1 + 32) invitationManager];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_344;
    v27[3] = &unk_27861F880;
    v16 = *(a1 + 32);
    v28 = v10;
    v29 = v16;
    v17 = *(a1 + 72);
    v33 = *(a1 + 80);
    v30 = v7;
    v31 = v8;
    v32 = *(a1 + 40);
    v18 = v10;
    [v15 sendInvitationToIdentifier:v17 expirationDate:0 codableObject:v18 serverAcknowledgedBlock:v27];

    v19 = v28;
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogSharing();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *buf = 138543875;
      v38 = v25;
      v39 = 2114;
      v40 = v9;
      v41 = 2113;
      v42 = v26;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error %{public}@ received nil pairing info for identifier %{private}@", buf, 0x20u);
    }

    v18 = [v9 hd_cloudKitErrorRequiringUserAction];
    [*(a1 + 48) setStatus:4];
    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_343;
    block[3] = &unk_278613830;
    block[4] = v21;
    v35 = *(a1 + 48);
    v36 = *(a1 + 40);
    dispatch_sync(v22, block);
    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v9;
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80), 0, v23);

    v19 = v35;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_343(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = [(HDSummarySharingEntryIDSManager *)v2 _queue_insertOrReplaceCodableEntry:v3 ignoreIfExists:0 shouldResolveCNContact:0 error:&v14];
  v5 = v14;
  if ((v4 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = a1 + 40;
      v9 = *(a1 + 40);
      v10 = *(v11 + 8);
      v12 = v6;
      v13 = [v9 uuid];
      *buf = 138544131;
      v16 = v8;
      v17 = 2113;
      v18 = v10;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error inserting revoked invitation with contact identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_insertOrReplaceCodableEntry:(uint64_t)a3 ignoreIfExists:(uint64_t)a4 shouldResolveCNContact:(uint64_t)a5 error:
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = *(a1 + 16);
    v10 = a2;
    dispatch_assert_queue_V2(v9);
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v12 = [WeakRetained sharingEntryManager];
    v17[0] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

    v14 = [v12 insertOrReplaceCodableEntries:v13 ignoreIfExists:a3 shouldResolveCNContact:a4 syncProvenance:0 error:a5];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_344(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_3;
    block[3] = &unk_27861F920;
    v21 = *(a1 + 48);
    v22 = v5;
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v23 = v9;
    v24 = v10;
    v25 = *(a1 + 64);
    v26 = *(a1 + 32);
    v27 = *(a1 + 72);
    dispatch_sync(v8, block);

    v11 = v21;
  }

  else
  {
    v12 = v6;
    [*(a1 + 32) setStatus:4];
    v13 = *(a1 + 40);
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained((v13 + 8));
    }

    else
    {
      WeakRetained = 0;
    }

    v15 = [WeakRetained cloudSyncManager];
    v16 = [v15 sharedSummaryManager];
    v17 = *(a1 + 32);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_2;
    v28[3] = &unk_278616CC8;
    v18 = *(a1 + 72);
    v29 = v12;
    v30 = v18;
    v11 = v12;
    v19 = [v16 revokeParticipantWithOutgoingSummarySharingEntry:v17 completion:v28];
  }
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_3(uint64_t a1)
{
  v35[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) uniqueID];
  v3 = [v2 UUIDString];
  [*(a1 + 32) setInvitationUUID:v3];

  [*(a1 + 32) setCloudKitIdentifier:*(a1 + 48)];
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v32 = 0;
  LOBYTE(v3) = [(HDSummarySharingEntryIDSManager *)v4 _queue_insertOrReplaceCodableEntry:v5 ignoreIfExists:0 shouldResolveCNContact:1 error:&v32];
  v6 = v32;
  if (v3)
  {
    v7 = *(a1 + 56);
    if (v7 && !_HDIsUnitTesting)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 8));
      v9 = [WeakRetained cloudSyncManager];
      v10 = [v9 sharedSummaryManager];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __56__HDSummarySharingEntryIDSManager__attemptPushSummaries__block_invoke;
      v34 = &unk_2786130B0;
      v35[0] = v7;
      v11 = [v10 push:buf];
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 40);
      v25 = v12;
      v26 = [v24 uniqueID];
      *buf = 138544131;
      *&buf[4] = v22;
      *&buf[12] = 2113;
      *&buf[14] = v23;
      *&buf[22] = 2114;
      v34 = v26;
      LOWORD(v35[0]) = 2114;
      *(v35 + 2) = v6;
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error inserting invitation with contact identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }

    v13 = [*(a1 + 56) invitationManager];
    v14 = [*(a1 + 40) uniqueID];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_346;
    v30[3] = &unk_278616020;
    v30[4] = *(a1 + 56);
    v31 = *(a1 + 40);
    [v13 rescindInvitationWithUUID:v14 serverAcknowledgedBlock:v30];

    [*(a1 + 72) setStatus:4];
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = objc_loadWeakRetained((v15 + 8));
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 cloudSyncManager];
    v18 = [v17 sharedSummaryManager];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_347;
    v27[3] = &unk_278616CC8;
    v19 = *(a1 + 72);
    v29 = *(a1 + 80);
    v28 = v6;
    v20 = [v18 revokeParticipantWithOutgoingSummarySharingEntry:v19 completion:v27];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __138__HDSummarySharingEntryIDSManager_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke_346(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = v6;
      v11 = [v8 uniqueID];
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error attempting to rescinding invitation with UUID %{public}@. %{public}@", &v12, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)acceptInvitationWithUUID:(id)a3 completion:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:a4 completion:?];
  _HKInitializeLogging();
  v8 = HKLogSharing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    *buf = 138543618;
    v54 = self;
    v55 = 2114;
    v56 = v9;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Accepting invitation with UUID %{public}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained sharingEntryManager];
  v52 = 0;
  v12 = [v11 codableEntryWithUUID:v6 errorOut:&v52];
  v13 = v52;

  if (v12)
  {
    if ([v12 status])
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:1600 description:@"We found an entry in the database but it has the wrong status."];
      _HKInitializeLogging();
      v15 = HKLogSharing();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [v12 status];
        v35 = HKStringForSharingStatus();
        v36 = [v12 primaryContactIdentifier];
        v37 = [v12 uuid];
        *buf = 138544131;
        v54 = self;
        v55 = 2114;
        v56 = v35;
        v57 = 2113;
        v58 = v36;
        v59 = 2114;
        v60 = v37;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error incorrect status %{public}@ for entry with identifier %{private}@ and UUID %{public}@", buf, 0x2Au);
      }

      _HKInitializeLogging();
      v16 = HKLogSharing();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v12 sharingEntry];
        *buf = 138543619;
        v54 = self;
        v55 = 2113;
        v56 = v17;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Found entry: %{private}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v14);
    }

    else
    {
      v19 = [v12 sharingSetupMetadata];
      v51 = v13;
      v20 = [HDCloudSyncShareSetupMetadata cloudSyncShareSetupMetadataWithCodableSharingSetupMetadata:v19 error:&v51];
      v21 = v51;

      if (v20)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke;
        aBlock[3] = &unk_27861F8F8;
        aBlock[4] = self;
        v22 = v12;
        v49 = v22;
        v23 = v7;
        v50 = v23;
        v40 = _Block_copy(aBlock);
        v24 = [v20 shareURLs];
        v25 = [v24 count];

        if (v25)
        {
          v47 = v21;
          v26 = [(HDSummarySharingEntryIDSManager *)self _profileForEntry:v22 errorOut:&v47];
          v27 = v47;

          if (v26)
          {
            v28 = [v26 cloudSyncManager];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_362;
            v41[3] = &unk_27861F998;
            v41[4] = self;
            v29 = v26;
            v42 = v29;
            v30 = v40;
            v45 = v40;
            v43 = v20;
            v46 = v23;
            v44 = v22;
            [v28 acceptShare:v43 completion:v41];

            v21 = v27;
          }

          else
          {
            _HKInitializeLogging();
            v33 = HKLogSharing();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v54 = self;
              v55 = 2114;
              v56 = v27;
              _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Unable to create profile. %{public}@", buf, 0x16u);
            }

            (*(v23 + 2))(v23, 0, v27);
            v29 = 0;
            v21 = v27;
            v30 = v40;
          }
        }

        else
        {
          _HKInitializeLogging();
          v32 = HKLogSharing();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v39 = [v6 UUIDString];
            *buf = 138543618;
            v54 = self;
            v55 = 2114;
            v56 = v39;
            _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: No share URLs found on invitation with UUID %{public}@", buf, 0x16u);
          }

          v29 = [MEMORY[0x277CCA9B8] hk_error:710 description:@"Share setup metadata does not contain any share URLs"];
          v30 = v40;
          (*(v40 + 2))(v40, v29);
        }
      }

      else
      {
        _HKInitializeLogging();
        v31 = HKLogSharing();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v38 = [v12 sharingSetupMetadata];
          *buf = 138543875;
          v54 = self;
          v55 = 2113;
          v56 = v38;
          v57 = 2114;
          v58 = v21;
          _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to decode codable sharing setup metadata %{private}@: %{public}@", buf, 0x20u);
        }

        (v7)[2](v7, 0, v21);
      }

      v13 = v21;
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogSharing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v54 = self;
      v55 = 2114;
      v56 = v13;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Codable entry not found. %{public}@", buf, 0x16u);
    }

    (v7)[2](v7, 0, v13);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_2;
  v8[3] = &unk_278613680;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_sync(v6, v8);
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hk_isHealthKitErrorWithCode:710])
  {
    v2 = *(a1 + 40);
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [*(a1 + 48) invitationUUID];
    v5 = [v3 initWithUUIDString:v4];
    v22 = 0;
    if (v2)
    {
      v6 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v5 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v22];
      v7 = v22;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v8 = v7;

    if (v6)
    {
      v9 = *(a1 + 56);
      v10 = [MEMORY[0x277CCA9B8] hk_error:707 format:@"The share participant was not found. Invitation has been declined"];
      (*(v9 + 16))(v9, 0, v10);
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 40);
        v16 = *(a1 + 48);
        v18 = v14;
        v19 = [v16 primaryContactIdentifier];
        v20 = [*(a1 + 48) uuid];
        v21 = *(a1 + 32);
        *buf = 138544131;
        v24 = v17;
        v25 = 2113;
        v26 = v19;
        v27 = 2114;
        v28 = v20;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error updating declined invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
      }

      (*(*(a1 + 56) + 16))();
    }

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 56) + 16);
    v13 = *MEMORY[0x277D85DE8];

    v12();
  }
}

- (id)_profileForEntry:(uint64_t)a3 errorOut:
{
  v5 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v7 = [WeakRetained daemon];
    v8 = [v7 profileManager];

    v9 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = [v5 uuid];
    v11 = [v9 initWithUUIDString:v10];

    v12 = [v8 profileIdentifierForUUID:v11];
    if (v12)
    {
      v13 = v12;
      v14 = [v8 profileForIdentifier:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CCD7C8] _profileWithUUID:v11 type:2];
      v15 = [v5 firstName];
      v16 = [v5 lastName];
      v17 = v16;
      if (!v15)
      {
        if (v16)
        {
          v15 = &stru_283BF39C8;
        }

        else
        {
          v15 = [v5 primaryContactIdentifier];
        }
      }

      v14 = [v8 createProfileForIdentifier:v13 firstName:v15 lastName:v17 error:a3];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_362(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) cloudSyncManager];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_363;
    v24[3] = &unk_27861F970;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v24[4] = *(a1 + 32);
    v25 = v8;
    v28 = *(a1 + 72);
    v26 = *(a1 + 56);
    v27 = v5;
    [v7 configureForShareSetupMetadata:v9 acceptedShares:v27 completion:v24];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogSharing();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = v6;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Accepted CKShares are nil. %{public}@", buf, 0x16u);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v29 = 0;
    v13 = [(HDSummarySharingEntryIDSManager *)v11 _deleteProfile:v12 errorOut:&v29];
    v14 = v29;
    if ((v13 & 1) == 0)
    {
      _HKInitializeLogging();
      v15 = HKLogSharing();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        v21 = [*(a1 + 40) profileIdentifier];
        v22 = [v21 identifier];
        v23 = [v22 UUIDString];
        *buf = 138543874;
        v31 = v20;
        v32 = 2114;
        v33 = v23;
        v34 = 2114;
        v35 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to delete shared profile with identifier %{public}@. %{public}@", buf, 0x20u);
      }
    }

    v16 = [v6 hd_cloudKitErrorRequiringUserAction];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v6;
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_deleteProfile:(uint64_t)a3 errorOut:
{
  if (result)
  {
    v4 = result;
    v5 = a2;
    WeakRetained = objc_loadWeakRetained((v4 + 8));
    v7 = [WeakRetained daemon];
    v8 = [v7 profileManager];
    v9 = [v5 profileIdentifier];

    v10 = [v8 deleteProfile:v9 error:a3];
    return v10;
  }

  return result;
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_363(id *a1, char a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSharing();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = [a1[6] primaryContactIdentifier];
      v10 = [a1[6] uuid];
      *buf = 138543875;
      v39 = v8;
      v40 = 2113;
      v41 = v9;
      v42 = 2114;
      v43 = v10;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Sending accepted sharing invitation to identifier %{private}@ and UUID %{public}@", buf, 0x20u);
    }

    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [a1[6] invitationUUID];
    v13 = [v11 initWithUUIDString:v12];

    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSinceReferenceDate];
    [a1[6] setDateAccepted:?];
    v15 = [a1[4] invitationManager];
    v16 = a1[6];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_364;
    v30[3] = &unk_27861F948;
    v30[4] = a1[4];
    v31 = v16;
    v32 = v13;
    v33 = v14;
    v34 = a1[7];
    v36 = a1[8];
    v35 = a1[5];
    v17 = v14;
    v18 = v13;
    [v15 acceptInvitationWithUUID:v18 codableObject:v31 serverAcknowledgedBlock:v30];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25 = a1[4];
      *buf = 138543618;
      v39 = v25;
      v40 = 2114;
      v41 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to configure share setup metadata. %{public}@", buf, 0x16u);
    }

    v19 = a1[4];
    v20 = a1[5];
    v37 = 0;
    v21 = [(HDSummarySharingEntryIDSManager *)v19 _deleteProfile:v20 errorOut:&v37];
    v18 = v37;
    if ((v21 & 1) == 0)
    {
      _HKInitializeLogging();
      v22 = HKLogSharing();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = a1[4];
        v27 = [a1[5] profileIdentifier];
        v28 = [v27 identifier];
        v29 = [v28 UUIDString];
        *buf = 138543874;
        v39 = v26;
        v40 = 2114;
        v41 = v29;
        v42 = 2114;
        v43 = v18;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to delete shared profile with identifier %{public}@. %{public}@", buf, 0x20u);
      }
    }

    v17 = [v5 hd_cloudKitErrorRequiringUserAction];
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = v5;
    }

    (*(a1[8] + 2))(a1[8], 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_364(uint64_t a1, char a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = v6;
      v13 = [v10 primaryContactIdentifier];
      v14 = *(a1 + 48);
      *buf = 138544131;
      v23 = v11;
      v24 = 2113;
      v25 = v13;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = v5;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error accepting invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_365;
  block[3] = &unk_27861F920;
  block[4] = v7;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 40);
  v21 = *(a1 + 80);
  v20 = *(a1 + 72);
  dispatch_sync(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_365(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) firstObject];
  v6 = [v5 owner];
  v22 = 0;
  LOBYTE(v3) = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:1 dateAccepted:v4 ownerParticipant:v6 error:&v22];
  v7 = v22;

  if (v3)
  {
    v8 = [*(a1 + 72) cloudSyncManager];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_366;
    v21[3] = &unk_2786130B0;
    v21[4] = *(a1 + 32);
    [v8 subscribeToDataAvailableNotificationsWithCompletion:v21];

    v9 = [*(a1 + 72) cloudSyncManager];
    v10 = [v9 sharedSummaryManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_367;
    v20[3] = &unk_2786130B0;
    v20[4] = *(a1 + 32);
    v11 = [v10 pull:v20];

    [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
    v12 = *(*(a1 + 80) + 16);
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 64);
      v17 = v13;
      v18 = [v16 primaryContactIdentifier];
      v19 = [*(a1 + 64) uuid];
      *buf = 138544131;
      v24 = v15;
      v25 = 2113;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
      v29 = 2114;
      v30 = v7;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error updating accepted invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }

    v12 = *(*(a1 + 80) + 16);
  }

  v12();

  v14 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_queue_updateEntryWithInvitationUUID:(uint64_t)a3 newStatus:(void *)a4 dateAccepted:(void *)a5 ownerParticipant:(uint64_t)a6 error:
{
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    v12 = a5;
    v13 = a4;
    v14 = a2;
    dispatch_assert_queue_V2(v11);
    WeakRetained = objc_loadWeakRetained((v10 + 8));
    v16 = [WeakRetained sharingEntryManager];
    v17 = [v16 updateEntryWithInvitationUUID:v14 newStatus:a3 dateAccepted:v13 ownerParticipant:v12 error:a6];

    return v17;
  }

  return result;
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_366(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogSharing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to subscribe to data available after accepting share. %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __71__HDSummarySharingEntryIDSManager_acceptInvitationWithUUID_completion___block_invoke_367(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogSharing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to pull summaries after accepting share. %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_attemptBestEffortCloudSynchronization
{
  if (a1)
  {
    if (!_HDIsUnitTesting)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v3 = [WeakRetained cloudSyncManager];
      v4 = [v3 sharedSummaryManager];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __73__HDSummarySharingEntryIDSManager__attemptBestEffortCloudSynchronization__block_invoke;
      v6[3] = &unk_2786130B0;
      v6[4] = a1;
      v5 = [v4 synchronizeWithCompletion:v6];
    }
  }
}

- (void)declineInvitationWithUUID:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:a4 completion:?];
  _HKInitializeLogging();
  v8 = HKLogSharing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    *buf = 138543618;
    v34 = self;
    v35 = 2114;
    v36 = v9;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Declining invitation with UUID %{public}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained sharingEntryManager];
  v32 = 0;
  v12 = [v11 codableEntryWithUUID:v6 errorOut:&v32];
  v13 = v32;

  if (v12)
  {
    if ([v12 status])
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:1600 description:@"We found an entry in the database but it has the wrong status."];
      _HKInitializeLogging();
      v15 = HKLogSharing();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [v12 status];
        v25 = HKStringForSharingStatus();
        v26 = [v12 primaryContactIdentifier];
        v27 = [v12 uuid];
        *buf = 138544131;
        v34 = self;
        v35 = 2114;
        v36 = v25;
        v37 = 2113;
        v38 = v26;
        v39 = 2114;
        v40 = v27;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error incorrect status %{public}@ for entry with identifier %{private}@ and UUID %{public}@", buf, 0x2Au);
      }

      _HKInitializeLogging();
      v16 = HKLogSharing();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v12 sharingEntry];
        *buf = 138543619;
        v34 = self;
        v35 = 2113;
        v36 = v17;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Found entry: %{private}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v14);
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x277CCAD78]);
      v20 = [v12 invitationUUID];
      v21 = [v19 initWithUUIDString:v20];

      v22 = [(HDSummarySharingEntryIDSManager *)self invitationManager];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __72__HDSummarySharingEntryIDSManager_declineInvitationWithUUID_completion___block_invoke;
      v28[3] = &unk_278619540;
      v31 = v7;
      v28[4] = self;
      v29 = v21;
      v30 = v12;
      v23 = v21;
      [v22 declineInvitationWithUUID:v23 serverAcknowledgedBlock:v28];
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogSharing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v34 = self;
      v35 = 2114;
      v36 = v13;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Codable entry not found. %{public}@", buf, 0x16u);
    }

    (v7)[2](v7, 0, v13);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __72__HDSummarySharingEntryIDSManager_declineInvitationWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 & 1) != 0 || [v5 code] == 3 || (objc_msgSend(v6, "hk_isHealthKitErrorWithCode:", 118))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDSummarySharingEntryIDSManager_declineInvitationWithUUID_completion___block_invoke_2;
    block[3] = &unk_27861F9C0;
    block[4] = v8;
    v11 = v7;
    v12 = *(a1 + 48);
    v13 = v6;
    v14 = *(a1 + 56);
    dispatch_sync(v9, block);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __72__HDSummarySharingEntryIDSManager_declineInvitationWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  if (v2)
  {
    v4 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v16];
    v5 = v16;
    if (v4)
    {
      [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
      v6 = *(*(a1 + 64) + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = v7;
    v13 = [v11 primaryContactIdentifier];
    v14 = [*(a1 + 48) uuid];
    v15 = *(a1 + 56);
    *buf = 138544131;
    v18 = v10;
    v19 = 2113;
    v20 = v13;
    v21 = 2114;
    v22 = v14;
    v23 = 2114;
    v24 = v15;
    _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error updating declined invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
  }

  v8 = *(a1 + 56);
  v6 = *(*(a1 + 64) + 16);
LABEL_8:
  v6();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)revokeInvitationWithUUID:(id)a3 completion:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:a4 completion:?];
  _HKInitializeLogging();
  v8 = HKLogSharing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    *buf = 138543618;
    v56 = self;
    v57 = 2114;
    v58 = v9;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Revoking invitation with UUID %{public}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained sharingEntryManager];
  v54 = 0;
  v12 = [v11 codableEntryWithUUID:v6 errorOut:&v54];
  v13 = v54;

  if (v12)
  {
    if ([v12 status] == 1 || !objc_msgSend(v12, "status"))
    {
      v19 = objc_alloc(MEMORY[0x277CCAD78]);
      v20 = [v12 invitationUUID];
      v21 = [v19 initWithUUIDString:v20];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke;
      aBlock[3] = &unk_27861FA10;
      aBlock[4] = self;
      v41 = v6;
      v49 = v6;
      v22 = v21;
      v50 = v22;
      v23 = v12;
      v51 = v23;
      v39 = v13;
      v52 = v13;
      v40 = v7;
      v24 = v7;
      v53 = v24;
      v25 = _Block_copy(aBlock);
      v26 = [v23 copy];
      if ([v23 status] == 1)
      {
        v27 = 4;
      }

      else
      {
        v27 = 3;
      }

      [v26 setStatus:v27];
      if (self)
      {
        v28 = objc_loadWeakRetained(&self->_profile);
      }

      else
      {
        v28 = 0;
      }

      v29 = [v28 cloudSyncManager];
      v30 = [v29 sharedSummaryManager];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_370;
      v43[3] = &unk_27861FA60;
      v43[4] = self;
      v44 = v23;
      v45 = v22;
      v46 = v24;
      v47 = v25;
      v31 = v25;
      v32 = v22;
      v33 = [v30 revokeParticipantWithOutgoingSummarySharingEntry:v26 completion:v43];

      v7 = v40;
      v6 = v41;
      v13 = v39;
    }

    else
    {
      v14 = v13;
      v15 = [MEMORY[0x277CCA9B8] hk_error:1600 description:@"We found an entry in the database but it has the wrong status."];
      _HKInitializeLogging();
      v16 = HKLogSharing();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [v12 status];
        v42 = HKStringForSharingStatus();
        v36 = [v12 primaryContactIdentifier];
        v37 = [v12 uuid];
        *buf = 138544131;
        v56 = self;
        v57 = 2114;
        v58 = v42;
        v59 = 2113;
        v60 = v36;
        v61 = 2114;
        v62 = v37;
        v38 = v37;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error incorrect status %{public}@ for entry with identifier %{private}@ and UUID %{public}@", buf, 0x2Au);
      }

      _HKInitializeLogging();
      v17 = HKLogSharing();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v12 sharingEntry];
        *buf = 138543619;
        v56 = self;
        v57 = 2113;
        v58 = v18;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Found entry: %{private}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v15);
      v13 = v14;
    }
  }

  else
  {
    _HKInitializeLogging();
    v34 = HKLogSharing();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v56 = self;
      v57 = 2114;
      v58 = v13;
      _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Codable entry not found. %{public}@", buf, 0x16u);
    }

    (v7)[2](v7, 0, v13);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v9 = *(a1 + 32);
  v4 = *(v9 + 16);
  block[2] = __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_2;
  block[3] = &unk_27861F9E8;
  v5 = *(&v9 + 1);
  v15 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  dispatch_sync(v4, block);
}

void __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) UUIDString];
    v5 = *(a1 + 80);
    v6 = HKStringForSharingStatus();
    *buf = 138543874;
    v25 = v3;
    v26 = 2114;
    v27 = v4;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating invitation with UUID %{public}@ to %{public}@.", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v23 = 0;
  if (v7)
  {
    v10 = [(HDSummarySharingEntryIDSManager *)v7 _queue_updateEntryWithInvitationUUID:v8 newStatus:v9 dateAccepted:0 ownerParticipant:0 error:&v23];
    v11 = v23;
    if (v10)
    {
      [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
      v12 = *(*(a1 + 72) + 16);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 80);
    v18 = v13;
    v19 = HKStringForSharingStatus();
    v20 = [*(a1 + 56) primaryContactIdentifier];
    v21 = [*(a1 + 56) uuid];
    v22 = *(a1 + 64);
    *buf = 138544387;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v28 = 2113;
    v29 = v20;
    v30 = 2114;
    v31 = v21;
    v32 = 2114;
    v33 = v22;
    _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error updating %{public}@ invitation with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x34u);
  }

  v14 = *(a1 + 64);
  v12 = *(*(a1 + 72) + 16);
LABEL_10:
  v12();

  v15 = *MEMORY[0x277D85DE8];
}

void __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_370(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) invitationManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_371;
    v14[3] = &unk_27861FA38;
    v7 = *(a1 + 48);
    v16 = *(a1 + 56);
    v15 = *(a1 + 40);
    v17 = *(a1 + 64);
    [v6 rescindInvitationWithUUID:v7 serverAcknowledgedBlock:v14];

    v8 = v16;
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogSharing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = [*(a1 + 40) primaryContactIdentifier];
      *buf = 138543875;
      v19 = v12;
      v20 = 2113;
      v21 = v5;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error removing participant with identifier %{private}@: %{public}@", buf, 0x20u);
    }

    v8 = [v5 hd_cloudKitErrorRequiringUserAction];
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __71__HDSummarySharingEntryIDSManager_revokeInvitationWithUUID_completion___block_invoke_371(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2 & 1) != 0 || [v5 code] == 3 || (v7 = objc_msgSend(v8, "hk_isHealthKitErrorWithCode:", 118), v6 = v8, (v7))
  {
    [*(a1 + 32) status];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)leaveInvitationWithUUID:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDSummarySharingEntryIDSManager *)self _finishHandlerForOperation:a4 completion:?];
  _HKInitializeLogging();
  v8 = HKLogSharing();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 UUIDString];
    *buf = 138543618;
    v35 = self;
    v36 = 2114;
    v37 = v9;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Leaving invitation with UUID %{public}@", buf, 0x16u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained sharingEntryManager];
  v33 = 0;
  v12 = [v11 codableEntryWithUUID:v6 errorOut:&v33];
  v13 = v33;

  if (v12)
  {
    if ([v12 status] == 1)
    {
      v32 = v13;
      v14 = [(HDSummarySharingEntryIDSManager *)self _profileForEntry:v12 errorOut:&v32];
      v15 = v32;

      if (v14)
      {
        v16 = [v14 cloudSyncManager];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __70__HDSummarySharingEntryIDSManager_leaveInvitationWithUUID_completion___block_invoke;
        v28[3] = &unk_278613100;
        v28[4] = self;
        v29 = v12;
        v31 = v7;
        v30 = v14;
        v17 = [v16 leaveSharesWithCompletion:v28];
      }

      else
      {
        _HKInitializeLogging();
        v23 = HKLogSharing();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = self;
          v36 = 2114;
          v37 = v15;
          _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Unable to create profile. %{public}@", buf, 0x16u);
        }

        (v7)[2](v7, 0, v15);
      }

      v13 = v15;
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hk_error:1600 description:@"We found an entry in the database but it has the wrong status."];
      _HKInitializeLogging();
      v20 = HKLogSharing();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [v12 status];
        v25 = HKStringForSharingStatus();
        v26 = [v12 primaryContactIdentifier];
        v27 = [v12 uuid];
        *buf = 138544131;
        v35 = self;
        v36 = 2114;
        v37 = v25;
        v38 = 2113;
        v39 = v26;
        v40 = 2114;
        v41 = v27;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error incorrect status %{public}@ for entry with identifier %{private}@ and UUID %{public}@", buf, 0x2Au);
      }

      _HKInitializeLogging();
      v21 = HKLogSharing();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v12 sharingEntry];
        *buf = 138543619;
        v35 = self;
        v36 = 2113;
        v37 = v22;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Found entry: %{private}@", buf, 0x16u);
      }

      (v7)[2](v7, 0, v19);
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogSharing();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = self;
      v36 = 2114;
      v37 = v13;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Codable entry not found. %{public}@", buf, 0x16u);
    }

    (v7)[2](v7, 0, v13);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __70__HDSummarySharingEntryIDSManager_leaveInvitationWithUUID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v16 = *(a1 + 32);
    v6 = *(v16 + 16);
    block[2] = __70__HDSummarySharingEntryIDSManager_leaveInvitationWithUUID_completion___block_invoke_372;
    block[3] = &unk_278617468;
    v7 = *(&v16 + 1);
    v8 = *(a1 + 56);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = v8;
    v18 = v16;
    v19 = v9;
    dispatch_sync(v6, block);
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogSharing();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) primaryContactIdentifier];
      *buf = 138543875;
      v21 = v14;
      v22 = 2114;
      v23 = v5;
      v24 = 2113;
      v25 = v15;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Error %{public}@ unable to leave sharing with identifier %{private}@", buf, 0x20u);
    }

    v11 = [v5 hd_cloudKitErrorRequiringUserAction];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v5;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __70__HDSummarySharingEntryIDSManager_leaveInvitationWithUUID_completion___block_invoke_372(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [*(a1 + 40) invitationUUID];
  v5 = [v3 initWithUUIDString:v4];
  v26 = 0;
  if (v2)
  {
    v6 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v5 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v26];
    v7 = v26;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = v7;

  if (v6)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v25 = 0;
    v11 = [(HDSummarySharingEntryIDSManager *)v9 _deleteProfile:v10 errorOut:&v25];
    v12 = v25;
    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = HKLogSharing();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        v22 = [*(a1 + 48) profileIdentifier];
        v23 = [v22 identifier];
        v24 = [v23 UUIDString];
        *buf = 138543874;
        v28 = v21;
        v29 = 2114;
        v30 = v24;
        v31 = 2114;
        v32 = v12;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to delete shared profile with identifier %{public}@. %{public}@", buf, 0x20u);
      }
    }

    [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = v14;
      v19 = [v16 primaryContactIdentifier];
      v20 = [*(a1 + 40) uuid];
      *buf = 138544131;
      v28 = v17;
      v29 = 2113;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      v33 = 2114;
      v34 = v8;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Error updating entry with identifier %{private}@ and UUID %{public}@. %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __137__HDSummarySharingEntryIDSManager__setupSharingWithOutgoingCodableSummarySharingEntry_sharingAuthorizations_localAccountInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v12 = 0;
    v9 = [a2 codableSharingSetupMetadataWithError:&v12];
    v10 = v12;
    if (v9)
    {
      [*(a1 + 32) setSharingSetupMetadata:v9];
      v11 = *(a1 + 32);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __73__HDSummarySharingEntryIDSManager__attemptBestEffortCloudSynchronization__block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to synchronize with error %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __56__HDSummarySharingEntryIDSManager__attemptPushSummaries__block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Pushed summaries succeeded after invite completion", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to push summaries after invite completion with error %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __73__HDSummarySharingEntryIDSManager__finishHandlerForOperation_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 hd_errorForAnalytics];
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v8 = [WeakRetained daemon];
  v9 = [v8 analyticsSubmissionCoordinator];
  [v9 summarySharing_reportSetupOperation:a1[5] success:a2 error:v6];

  if ((a2 & 1) == 0)
  {
    v10 = a1[4];
    v11 = v6;
    v12 = v11;
    if (v10 && [v11 hk_isHealthKitError])
    {
      if ([v12 code] == 3)
      {
      }

      else
      {
        v13 = [v12 code];

        if (v13 != 1600)
        {
          goto LABEL_11;
        }
      }

      _HKInitializeLogging();
      v14 = HKLogSharing();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = a1[4];
        v20 = a1[5];
        v21 = 138543874;
        v22 = v19;
        v23 = 2114;
        v24 = v20;
        v25 = 2114;
        v26 = v12;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Setup operation %{public}@ failed with error %{public}@", &v21, 0x20u);
      }

      v15 = objc_loadWeakRetained((a1[4] + 8));
      v16 = [v15 daemon];
      v17 = [v16 autoBugCaptureReporter];
      [v17 reportSummarySharingInvitationFailureForOperation:a1[5] error:v12];
    }

    else
    {
    }
  }

LABEL_11:
  (*(a1[6] + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

- (void)invitationManager:(id)a3 didReceiveInvitation:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 codableObject];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uuid];
    v9 = [v5 UUID];
    v10 = [v9 UUIDString];
    v11 = [v6 primaryContactIdentifier];
    *buf = 138544131;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v10;
    v26 = 2113;
    v27 = v11;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Received invitation with UUID %{public}@, invitation UUID %{public}@ and identifier %{private}@.", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDSummarySharingEntryIDSManager_invitationManager_didReceiveInvitation___block_invoke;
  block[3] = &unk_278613830;
  v17 = v6;
  v18 = v5;
  v19 = self;
  v13 = v5;
  v14 = v6;
  dispatch_sync(queue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __74__HDSummarySharingEntryIDSManager_invitationManager_didReceiveInvitation___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sharingAuthorizationsCount];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 sharingAuthorizations];
    HDSharingAuthorizationsFromCodableSharingAuthorizations(v4);
  }

  else
  {
    v4 = [v3 authorizationCategories];
    [v4 hk_map:&__block_literal_global_382_0];
  }
  v27 = ;

  v5 = [HDCodableSummarySharingEntry alloc];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [*(a1 + 32) uuid];
  v8 = [v6 initWithUUIDString:v7];
  v9 = [*(a1 + 40) UUID];
  v10 = [*(a1 + 40) fromID];
  v11 = [*(a1 + 32) allContactIdentifiers];
  v12 = [*(a1 + 32) userWheelchairMode];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [*(a1 + 32) sharingSetupMetadata];
  v15 = [(HDCodableSummarySharingEntry *)v5 initWithUUID:v8 invitationUUID:v9 cloudKitIdentifier:0 primaryContactIdentifier:v10 allContactIdentifiers:v11 firstName:0 lastName:0 sharingAuthorizations:v27 userWheelchairMode:v12 type:0 direction:1 status:0 notificationStatus:0 dateModified:0 dateInvited:v13 dateAccepted:0 setupMetadata:v14 ownerParticipant:0];

  v16 = [MEMORY[0x277CBDAB8] hd_contactStoreWithHealthAppIdentity];
  v17 = HDCNContactForCodableEntry(v15, v16);
  v18 = v17;
  if (v17)
  {
    v19 = [v17 givenName];
    [(HDCodableSummarySharingEntry *)v15 setFirstName:v19];

    v20 = [v18 familyName];
    [(HDCodableSummarySharingEntry *)v15 setLastName:v20];
  }

  v21 = *(a1 + 48);
  v28 = 0;
  v22 = [(HDSummarySharingEntryIDSManager *)v21 _queue_insertOrReplaceCodableEntry:v15 ignoreIfExists:1 shouldResolveCNContact:1 error:&v28];
  v23 = v28;
  if ((v22 & 1) == 0)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 48);
      *buf = 138543618;
      v30 = v26;
      v31 = 2114;
      v32 = v23;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing invitation received but failed to insert HDCodableSummarySharingEntry with error %{public}@", buf, 0x16u);
    }
  }

  [(HDSummarySharingEntryIDSManager *)*(a1 + 48) _attemptBestEffortCloudSynchronization];

  v25 = *MEMORY[0x277D85DE8];
}

id __74__HDSummarySharingEntryIDSManager_invitationManager_didReceiveInvitation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD960];
  v3 = a2;
  v4 = [[v2 alloc] initWithAuthorizationIdentifier:v3];

  return v4;
}

- (void)invitationManager:(id)a3 didRescindInvitation:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 codableObject];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uuid];
    v9 = [v5 UUID];
    v10 = [v9 UUIDString];
    v11 = [v6 primaryContactIdentifier];
    *buf = 138544131;
    v20 = self;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    v25 = 2113;
    v26 = v11;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Received rescind invitation with UUID %{public}@, invitation UUID %{public}@ and identifier %{private}@.", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDSummarySharingEntryIDSManager_invitationManager_didRescindInvitation___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v17 = v5;
  v18 = v6;
  v13 = v6;
  v14 = v5;
  dispatch_sync(queue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __74__HDSummarySharingEntryIDSManager_invitationManager_didRescindInvitation___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = v3;
  v15 = 0;
  if (v2)
  {
    v5 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:3 dateAccepted:0 ownerParticipant:0 error:&v15];
    v2 = v15;

    if (v5)
    {
      [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
      goto LABEL_7;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = v6;
    v11 = [v9 primaryContactIdentifier];
    v12 = [*(a1 + 48) uuid];
    v13 = [*(a1 + 40) UUID];
    v14 = [v13 UUIDString];
    *buf = 138544387;
    v17 = v8;
    v18 = 2113;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v2;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing entry rescind received but failed to update database for identifier %{private}@, UUID %{public}@ and invitation UUID %{public}@ with error %{public}@", buf, 0x34u);
  }

LABEL_7:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invitationManager:(id)a3 didAcceptInvitation:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 codableObject];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uuid];
    v9 = [v5 UUID];
    v10 = [v9 UUIDString];
    v11 = [v6 primaryContactIdentifier];
    *buf = 138544131;
    v20 = self;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    v25 = 2113;
    v26 = v11;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Received accept invitation with UUID %{public}@, invitation UUID %{public}@ and identifier %{private}@.", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HDSummarySharingEntryIDSManager_invitationManager_didAcceptInvitation___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v17 = v5;
  v18 = v6;
  v13 = v6;
  v14 = v5;
  dispatch_sync(queue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __73__HDSummarySharingEntryIDSManager_invitationManager_didAcceptInvitation___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = MEMORY[0x277CBEAA8];
  [*(a1 + 48) dateAccepted];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v17 = 0;
  v6 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:1 dateAccepted:v5 ownerParticipant:0 error:&v17];
  v7 = v17;

  if (v6)
  {
    [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = v8;
      v13 = [v11 primaryContactIdentifier];
      v14 = [*(a1 + 48) uuid];
      v15 = [*(a1 + 40) UUID];
      v16 = [v15 UUIDString];
      *buf = 138544387;
      v19 = v10;
      v20 = 2113;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v24 = 2114;
      v25 = v16;
      v26 = 2114;
      v27 = v7;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing entry accepted received but failed to update database for identifier %{private}@, UUID %{public}@ and invitation UUID %{public}@ with error %{public}@", buf, 0x34u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)invitationManager:(id)a3 didDeclineInvitation:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 codableObject];
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uuid];
    v9 = [v5 UUID];
    v10 = [v9 UUIDString];
    v11 = [v6 primaryContactIdentifier];
    *buf = 138544131;
    v20 = self;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    v25 = 2113;
    v26 = v11;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Received decline invitation with UUID %{public}@, invitation UUID %{public}@ and identifier %{private}@.", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDSummarySharingEntryIDSManager_invitationManager_didDeclineInvitation___block_invoke;
  block[3] = &unk_278613830;
  block[4] = self;
  v17 = v5;
  v18 = v6;
  v13 = v6;
  v14 = v5;
  dispatch_sync(queue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __74__HDSummarySharingEntryIDSManager_invitationManager_didDeclineInvitation___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = v3;
  v15 = 0;
  if (v2)
  {
    v5 = [(HDSummarySharingEntryIDSManager *)v2 _queue_updateEntryWithInvitationUUID:v3 newStatus:2 dateAccepted:0 ownerParticipant:0 error:&v15];
    v2 = v15;

    if (v5)
    {
      [(HDSummarySharingEntryIDSManager *)*(a1 + 32) _attemptBestEffortCloudSynchronization];
      goto LABEL_7;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = v6;
    v11 = [v9 primaryContactIdentifier];
    v12 = [*(a1 + 48) uuid];
    v13 = [*(a1 + 40) UUID];
    v14 = [v13 UUIDString];
    *buf = 138544387;
    v17 = v8;
    v18 = 2113;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v2;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing entry declined received but failed to update database for identifier %{private}@, UUID %{public}@ and invitation UUID %{public}@ with error %{public}@", buf, 0x34u);
  }

LABEL_7:

  v7 = *MEMORY[0x277D85DE8];
}

@end