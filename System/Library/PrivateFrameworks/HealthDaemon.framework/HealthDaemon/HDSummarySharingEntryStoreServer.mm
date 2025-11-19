@interface HDSummarySharingEntryStoreServer
+ (id)requiredEntitlements;
+ (id)taskIdentifier;
- (HDSummarySharingEntryStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
- (void)remote_acceptInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)remote_declineInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)remote_fetchSharingEntriesWithCompletionHandler:(id)a3;
- (void)remote_inviteSharingDataWithIdentifier:(id)a3 firstName:(id)a4 lastName:(id)a5 sharingAuthorizations:(id)a6 userWheelchairMode:(int64_t)a7 completion:(id)a8;
- (void)remote_leaveInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)remote_revokeInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)remote_unpauseInvitationWithUUID:(id)a3 completion:(id)a4;
- (void)remote_updateNotificationStatusWithUUID:(id)a3 notificationStatus:(int64_t)a4 completion:(id)a5;
- (void)sharingEntriesDidUpdate:(id)a3;
- (void)summarySharingEntryIDSManager:(id)a3 didUpdateReachabilityStatus:(id)a4 error:(id)a5;
@end

@implementation HDSummarySharingEntryStoreServer

- (HDSummarySharingEntryStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a5;
  v23.receiver = self;
  v23.super_class = HDSummarySharingEntryStoreServer;
  v11 = [(HDStandardTaskServer *)&v23 initWithUUID:a3 configuration:a4 client:v10 delegate:a6];
  if (v11)
  {
    v12 = [v10 profile];
    v13 = [v12 summarySharingEntryIDSManager];
    summarySharingEntryIDSManager = v11->_summarySharingEntryIDSManager;
    v11->_summarySharingEntryIDSManager = v13;

    v15 = [v10 profile];
    v16 = [v15 sharingEntryManager];
    sharingEntryManager = v11->_sharingEntryManager;
    v11->_sharingEntryManager = v16;

    v18 = [v10 profile];
    v19 = [v18 sharingAuthorizationManager];
    sharingAuthorizationManager = v11->_sharingAuthorizationManager;
    v11->_sharingAuthorizationManager = v19;

    [(HDSummarySharingEntryIDSManager *)v11->_summarySharingEntryIDSManager addObserver:v11];
    [(HDSummarySharingEntryManager *)v11->_sharingEntryManager addObserver:v11];
    v21 = [v10 profile];
    [v21 registerProfileReadyObserver:v11 queue:0];
  }

  return v11;
}

- (void)dealloc
{
  [(HDSummarySharingEntryManager *)self->_sharingEntryManager removeObserver:self];
  [(HDSummarySharingEntryIDSManager *)self->_summarySharingEntryIDSManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = HDSummarySharingEntryStoreServer;
  [(HDSummarySharingEntryStoreServer *)&v3 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  sharingEntryManager = self->_sharingEntryManager;
  v9 = 0;
  v5 = [(HDSummarySharingEntryManager *)sharingEntryManager resolveContactsIfNeededWithError:&v9];
  v6 = v9;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogSharing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to resolve contacts: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)summarySharingEntryIDSManager:(id)a3 didUpdateReachabilityStatus:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HDStandardTaskServer *)self client];
  v10 = [v9 connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__HDSummarySharingEntryStoreServer_summarySharingEntryIDSManager_didUpdateReachabilityStatus_error___block_invoke;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  v11 = [v10 remoteObjectProxyWithErrorHandler:v12];

  [v11 clientRemote_reachabilityStatusDidUpdate:v8 error:v7];
}

void __100__HDSummarySharingEntryStoreServer_summarySharingEntryIDSManager_didUpdateReachabilityStatus_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to notify client of reachability status update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sharingEntriesDidUpdate:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    _HKInitializeLogging();
    v5 = HKLogSharing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v36 = self;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Sharing entries updated: %@", buf, 0x16u);
    }

    v6 = [(HDStandardTaskServer *)self client];
    v7 = [v6 connection];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__HDSummarySharingEntryStoreServer_sharingEntriesDidUpdate___block_invoke;
    v33[3] = &unk_2786138D0;
    v33[4] = self;
    v25 = [v7 remoteObjectProxyWithErrorHandler:v33];

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v29 + 1) + 8 * v13) UUID];
          v15 = HDSummarySharingEntryPredicateForUUID(v14);
          [v8 addObject:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sharingEntryManager = self->_sharingEntryManager;
    v18 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v8];
    v28 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__HDSummarySharingEntryStoreServer_sharingEntriesDidUpdate___block_invoke_298;
    v26[3] = &unk_27861D260;
    v26[4] = self;
    v19 = v16;
    v27 = v19;
    v20 = [(HDSummarySharingEntryManager *)sharingEntryManager enumerateCodableEntriesWithPredicate:v18 error:&v28 handler:v26];
    v21 = v28;

    if (v20)
    {
      v22 = v25;
      [v25 clientRemote_sharingEntriesDidUpdate:v19];
    }

    else
    {
      _HKInitializeLogging();
      v23 = HKLogSharing();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v36 = self;
        v37 = 2112;
        v38 = v21;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Sharing entries updated but failed to fetch new entries. %@", buf, 0x16u);
      }

      v22 = v25;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __60__HDSummarySharingEntryStoreServer_sharingEntriesDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to notify client of sharing entry update: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HDSummarySharingEntryStoreServer_sharingEntriesDidUpdate___block_invoke_298(uint64_t a1, void *a2)
{
  v3 = [a2 sharingEntry];
  v4 = [*(a1 + 32) profile];
  v5 = [v4 daemon];
  v6 = [v5 profileManager];
  v7 = [v3 UUID];
  v8 = [v6 profileIdentifierForUUID:v7];

  if (v8 && [v8 type] == 2)
  {
    [v3 _setProfileIdentifier:v8];
  }

  [*(a1 + 40) addObject:v3];

  return 1;
}

- (void)remote_fetchSharingEntriesWithCompletionHandler:(id)a3
{
  sharingEntryManager = self->_sharingEntryManager;
  v7 = 0;
  v4 = a3;
  v5 = [(HDSummarySharingEntryManager *)sharingEntryManager fetchSharingEntriesWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (void)remote_inviteSharingDataWithIdentifier:(id)a3 firstName:(id)a4 lastName:(id)a5 sharingAuthorizations:(id)a6 userWheelchairMode:(int64_t)a7 completion:(id)a8
{
  v14 = a8;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __146__HDSummarySharingEntryStoreServer_remote_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke;
  v17[3] = &unk_2786130D8;
  v18 = v14;
  v16 = v14;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager inviteSharingDataWithIdentifier:a3 firstName:a4 lastName:a5 sharingAuthorizations:a6 userWheelchairMode:a7 completion:v17];
}

void __146__HDSummarySharingEntryStoreServer_remote_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_acceptInvitationWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HDSummarySharingEntryStoreServer_remote_acceptInvitationWithUUID_completion___block_invoke;
  v9[3] = &unk_2786130D8;
  v10 = v6;
  v8 = v6;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager acceptInvitationWithUUID:a3 completion:v9];
}

void __79__HDSummarySharingEntryStoreServer_remote_acceptInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_declineInvitationWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HDSummarySharingEntryStoreServer_remote_declineInvitationWithUUID_completion___block_invoke;
  v9[3] = &unk_2786130D8;
  v10 = v6;
  v8 = v6;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager declineInvitationWithUUID:a3 completion:v9];
}

void __80__HDSummarySharingEntryStoreServer_remote_declineInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_revokeInvitationWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HDSummarySharingEntryStoreServer_remote_revokeInvitationWithUUID_completion___block_invoke;
  v9[3] = &unk_2786130D8;
  v10 = v6;
  v8 = v6;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager revokeInvitationWithUUID:a3 completion:v9];
}

void __79__HDSummarySharingEntryStoreServer_remote_revokeInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_leaveInvitationWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HDSummarySharingEntryStoreServer_remote_leaveInvitationWithUUID_completion___block_invoke;
  v9[3] = &unk_2786130D8;
  v10 = v6;
  v8 = v6;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager leaveInvitationWithUUID:a3 completion:v9];
}

void __78__HDSummarySharingEntryStoreServer_remote_leaveInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_unpauseInvitationWithUUID:(id)a3 completion:(id)a4
{
  sharingEntryManager = self->_sharingEntryManager;
  v9 = 0;
  v6 = a4;
  v7 = [(HDSummarySharingEntryManager *)sharingEntryManager updateEntryWithUUID:a3 pauseStatus:0 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_updateNotificationStatusWithUUID:(id)a3 notificationStatus:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  sharingEntryManager = self->_sharingEntryManager;
  v19 = 0;
  v10 = [(HDSummarySharingEntryManager *)sharingEntryManager codableEntryWithUUID:a3 errorOut:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = self->_sharingEntryManager;
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    v14 = [v10 invitationUUID];
    v15 = [v13 initWithUUIDString:v14];
    v18 = 0;
    v16 = [(HDSummarySharingEntryManager *)v12 updateEntryWithInvitationUUID:v15 newNotificationStatus:a4 error:&v18];
    v17 = v18;

    v8[2](v8, v16, v17);
  }

  else
  {
    v8[2](v8, 0, v11);
  }
}

@end