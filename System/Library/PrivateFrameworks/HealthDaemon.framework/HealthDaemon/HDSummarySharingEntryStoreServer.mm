@interface HDSummarySharingEntryStoreServer
+ (id)requiredEntitlements;
+ (id)taskIdentifier;
- (HDSummarySharingEntryStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)remote_acceptInvitationWithUUID:(id)d completion:(id)completion;
- (void)remote_declineInvitationWithUUID:(id)d completion:(id)completion;
- (void)remote_fetchSharingEntriesWithCompletionHandler:(id)handler;
- (void)remote_inviteSharingDataWithIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName sharingAuthorizations:(id)authorizations userWheelchairMode:(int64_t)mode completion:(id)completion;
- (void)remote_leaveInvitationWithUUID:(id)d completion:(id)completion;
- (void)remote_revokeInvitationWithUUID:(id)d completion:(id)completion;
- (void)remote_unpauseInvitationWithUUID:(id)d completion:(id)completion;
- (void)remote_updateNotificationStatusWithUUID:(id)d notificationStatus:(int64_t)status completion:(id)completion;
- (void)sharingEntriesDidUpdate:(id)update;
- (void)summarySharingEntryIDSManager:(id)manager didUpdateReachabilityStatus:(id)status error:(id)error;
@end

@implementation HDSummarySharingEntryStoreServer

- (HDSummarySharingEntryStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v23.receiver = self;
  v23.super_class = HDSummarySharingEntryStoreServer;
  v11 = [(HDStandardTaskServer *)&v23 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    profile = [clientCopy profile];
    summarySharingEntryIDSManager = [profile summarySharingEntryIDSManager];
    summarySharingEntryIDSManager = v11->_summarySharingEntryIDSManager;
    v11->_summarySharingEntryIDSManager = summarySharingEntryIDSManager;

    profile2 = [clientCopy profile];
    sharingEntryManager = [profile2 sharingEntryManager];
    sharingEntryManager = v11->_sharingEntryManager;
    v11->_sharingEntryManager = sharingEntryManager;

    profile3 = [clientCopy profile];
    sharingAuthorizationManager = [profile3 sharingAuthorizationManager];
    sharingAuthorizationManager = v11->_sharingAuthorizationManager;
    v11->_sharingAuthorizationManager = sharingAuthorizationManager;

    [(HDSummarySharingEntryIDSManager *)v11->_summarySharingEntryIDSManager addObserver:v11];
    [(HDSummarySharingEntryManager *)v11->_sharingEntryManager addObserver:v11];
    profile4 = [clientCopy profile];
    [profile4 registerProfileReadyObserver:v11 queue:0];
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

- (void)profileDidBecomeReady:(id)ready
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
      selfCopy = self;
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

- (void)summarySharingEntryIDSManager:(id)manager didUpdateReachabilityStatus:(id)status error:(id)error
{
  errorCopy = error;
  statusCopy = status;
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__HDSummarySharingEntryStoreServer_summarySharingEntryIDSManager_didUpdateReachabilityStatus_error___block_invoke;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  v11 = [connection remoteObjectProxyWithErrorHandler:v12];

  [v11 clientRemote_reachabilityStatusDidUpdate:statusCopy error:errorCopy];
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

- (void)sharingEntriesDidUpdate:(id)update
{
  v39 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if ([updateCopy count])
  {
    _HKInitializeLogging();
    v5 = HKLogSharing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v37 = 2112;
      v38 = updateCopy;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Sharing entries updated: %@", buf, 0x16u);
    }

    client = [(HDStandardTaskServer *)self client];
    connection = [client connection];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__HDSummarySharingEntryStoreServer_sharingEntriesDidUpdate___block_invoke;
    v33[3] = &unk_2786138D0;
    v33[4] = self;
    v25 = [connection remoteObjectProxyWithErrorHandler:v33];

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = updateCopy;
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

          uUID = [*(*(&v29 + 1) + 8 * v13) UUID];
          v15 = HDSummarySharingEntryPredicateForUUID(uUID);
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
        selfCopy2 = self;
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

- (void)remote_fetchSharingEntriesWithCompletionHandler:(id)handler
{
  sharingEntryManager = self->_sharingEntryManager;
  v7 = 0;
  handlerCopy = handler;
  v5 = [(HDSummarySharingEntryManager *)sharingEntryManager fetchSharingEntriesWithError:&v7];
  v6 = v7;
  handlerCopy[2](handlerCopy, v5, v6);
}

- (void)remote_inviteSharingDataWithIdentifier:(id)identifier firstName:(id)name lastName:(id)lastName sharingAuthorizations:(id)authorizations userWheelchairMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __146__HDSummarySharingEntryStoreServer_remote_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke;
  v17[3] = &unk_2786130D8;
  v18 = completionCopy;
  v16 = completionCopy;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager inviteSharingDataWithIdentifier:identifier firstName:name lastName:lastName sharingAuthorizations:authorizations userWheelchairMode:mode completion:v17];
}

void __146__HDSummarySharingEntryStoreServer_remote_inviteSharingDataWithIdentifier_firstName_lastName_sharingAuthorizations_userWheelchairMode_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_acceptInvitationWithUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HDSummarySharingEntryStoreServer_remote_acceptInvitationWithUUID_completion___block_invoke;
  v9[3] = &unk_2786130D8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager acceptInvitationWithUUID:d completion:v9];
}

void __79__HDSummarySharingEntryStoreServer_remote_acceptInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_declineInvitationWithUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HDSummarySharingEntryStoreServer_remote_declineInvitationWithUUID_completion___block_invoke;
  v9[3] = &unk_2786130D8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager declineInvitationWithUUID:d completion:v9];
}

void __80__HDSummarySharingEntryStoreServer_remote_declineInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_revokeInvitationWithUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HDSummarySharingEntryStoreServer_remote_revokeInvitationWithUUID_completion___block_invoke;
  v9[3] = &unk_2786130D8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager revokeInvitationWithUUID:d completion:v9];
}

void __79__HDSummarySharingEntryStoreServer_remote_revokeInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_leaveInvitationWithUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  summarySharingEntryIDSManager = self->_summarySharingEntryIDSManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HDSummarySharingEntryStoreServer_remote_leaveInvitationWithUUID_completion___block_invoke;
  v9[3] = &unk_2786130D8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HDSummarySharingEntryIDSManager *)summarySharingEntryIDSManager leaveInvitationWithUUID:d completion:v9];
}

void __78__HDSummarySharingEntryStoreServer_remote_leaveInvitationWithUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedErrorForDomain:*MEMORY[0x277CBBF50]];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_unpauseInvitationWithUUID:(id)d completion:(id)completion
{
  sharingEntryManager = self->_sharingEntryManager;
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDSummarySharingEntryManager *)sharingEntryManager updateEntryWithUUID:d pauseStatus:0 error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_updateNotificationStatusWithUUID:(id)d notificationStatus:(int64_t)status completion:(id)completion
{
  completionCopy = completion;
  sharingEntryManager = self->_sharingEntryManager;
  v19 = 0;
  v10 = [(HDSummarySharingEntryManager *)sharingEntryManager codableEntryWithUUID:d errorOut:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = self->_sharingEntryManager;
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    invitationUUID = [v10 invitationUUID];
    v15 = [v13 initWithUUIDString:invitationUUID];
    v18 = 0;
    v16 = [(HDSummarySharingEntryManager *)v12 updateEntryWithInvitationUUID:v15 newNotificationStatus:status error:&v18];
    v17 = v18;

    completionCopy[2](completionCopy, v16, v17);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v11);
  }
}

@end