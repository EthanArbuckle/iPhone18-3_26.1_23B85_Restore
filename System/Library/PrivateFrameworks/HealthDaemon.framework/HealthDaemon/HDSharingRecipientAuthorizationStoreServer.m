@interface HDSharingRecipientAuthorizationStoreServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)requiredEntitlements;
- (HDSharingRecipientAuthorizationStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)remote_addSharingAuthorizations:(id)a3 completion:(id)a4;
- (void)remote_fetchSharingAuthorizationsMarkedForDeletionWithCompletion:(id)a3;
- (void)remote_fetchSharingAuthorizationsWithCompletion:(id)a3;
- (void)remote_registerObservers;
- (void)remote_removeSharingAuthorizations:(id)a3 completion:(id)a4;
- (void)remote_revokeWithCompletion:(id)a3;
- (void)remote_unregisterObservers;
- (void)sharingAuthorizationManager:(id)a3 didAddSharingAuthorizations:(id)a4 recipientIdentifier:(id)a5;
- (void)sharingAuthorizationManager:(id)a3 didRemoveSharingAuthorizations:(id)a4 recipientIdentifier:(id)a5;
- (void)sharingAuthorizationManager:(id)a3 didRevokeRecipientWithIdentifier:(id)a4;
@end

@implementation HDSharingRecipientAuthorizationStoreServer

- (HDSharingRecipientAuthorizationStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDSharingRecipientAuthorizationStoreServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;
  }

  return v11;
}

- (void)remote_fetchSharingAuthorizationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 sharingAuthorizationManager];
  v7 = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v10 = 0;
  v8 = [v6 sharingAuthorizationsForRecipientIdentifier:v7 error:&v10];
  v9 = v10;

  v4[2](v4, v8, v9);
}

- (void)remote_fetchSharingAuthorizationsMarkedForDeletionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 sharingAuthorizationManager];
  v7 = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v10 = 0;
  v8 = [v6 sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:v7 error:&v10];
  v9 = v10;

  v4[2](v4, v8, v9);
}

- (void)remote_addSharingAuthorizations:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 sharingAuthorizationManager];
  v10 = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v13 = 0;
  v11 = [v9 addSharingAuthorizations:v7 recipientIdentifier:v10 error:&v13];

  v12 = v13;
  v6[2](v6, v11, v12);
}

- (void)remote_removeSharingAuthorizations:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 sharingAuthorizationManager];
  v10 = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v13 = 0;
  v11 = [v9 removeSharingAuthorizations:v7 recipientIdentifier:v10 error:&v13];

  v12 = v13;
  v6[2](v6, v11, v12);
}

- (void)remote_revokeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 sharingAuthorizationManager];
  v7 = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v10 = 0;
  v8 = [v6 revokeRecipientWithIdentifier:v7 error:&v10];
  v9 = v10;

  v4[2](v4, v8, v9);
}

- (void)remote_registerObservers
{
  v4 = [(HDStandardTaskServer *)self profile];
  v3 = [v4 sharingAuthorizationManager];
  [v3 registerObserver:self];
}

- (void)remote_unregisterObservers
{
  v4 = [(HDStandardTaskServer *)self profile];
  v3 = [v4 sharingAuthorizationManager];
  [v3 unregisterObserver:self];
}

- (void)sharingAuthorizationManager:(id)a3 didAddSharingAuthorizations:(id)a4 recipientIdentifier:(id)a5
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __122__HDSharingRecipientAuthorizationStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke;
  v8[3] = &unk_2786138D0;
  v8[4] = self;
  v6 = a4;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v8];
  [v7 clientRemote_didAddSharingAuthorizations:v6];
}

void __122__HDSharingRecipientAuthorizationStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to notify client of added authorizations: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sharingAuthorizationManager:(id)a3 didRemoveSharingAuthorizations:(id)a4 recipientIdentifier:(id)a5
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __125__HDSharingRecipientAuthorizationStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke;
  v8[3] = &unk_2786138D0;
  v8[4] = self;
  v6 = a4;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v8];
  [v7 clientRemote_didRemoveSharingAuthorizations:v6];
}

void __125__HDSharingRecipientAuthorizationStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to notify client of removed authorizations: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sharingAuthorizationManager:(id)a3 didRevokeRecipientWithIdentifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Revoking Recipient with Identifier: %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __107__HDSharingRecipientAuthorizationStoreServer_sharingAuthorizationManager_didRevokeRecipientWithIdentifier___block_invoke;
  v9[3] = &unk_2786138D0;
  v9[4] = self;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v9];
  [v7 clientRemote_wasRevoked];

  v8 = *MEMORY[0x277D85DE8];
}

void __107__HDSharingRecipientAuthorizationStoreServer_sharingAuthorizationManager_didRevokeRecipientWithIdentifier___block_invoke(uint64_t a1, void *a2)
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
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to notify client of revoked authorizations: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = [a3 recipientIdentifier];

  if (!v6)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"Missing recipient identifier"];
  }

  return v6 != 0;
}

@end