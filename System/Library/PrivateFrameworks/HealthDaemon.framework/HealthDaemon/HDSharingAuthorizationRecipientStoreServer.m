@interface HDSharingAuthorizationRecipientStoreServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)requiredEntitlements;
- (HDSharingAuthorizationRecipientStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)remote_fetchRecipientIdentifiersWithCompletion:(id)a3;
- (void)remote_registerObservers;
- (void)remote_unregisterObservers;
- (void)sharingAuthorizationManager:(id)a3 didAddSharingAuthorizations:(id)a4 recipientIdentifier:(id)a5;
- (void)sharingAuthorizationManager:(id)a3 didRemoveSharingAuthorizations:(id)a4 recipientIdentifier:(id)a5;
- (void)sharingAuthorizationManager:(id)a3 didRevokeRecipientWithIdentifier:(id)a4;
@end

@implementation HDSharingAuthorizationRecipientStoreServer

- (HDSharingAuthorizationRecipientStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDSharingAuthorizationRecipientStoreServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;
  }

  return v11;
}

- (void)remote_fetchRecipientIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 sharingAuthorizationManager];
  v7 = [(HKSharingAuthorizationRecipientStoreTaskConfiguration *)self->_configuration sharingAuthorizations];
  v10 = 0;
  v8 = [v6 recipientIdentifiersForSharingAuthorizations:v7 error:&v10];
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
  v7 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __122__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  v8 = a4;
  v9 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __122__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke_293;
  v11[3] = &unk_278613BA8;
  v11[4] = self;
  v10 = [v8 hk_filter:v11];

  if ([v10 count])
  {
    [v9 clientRemote_didAddRecipientIdentifier:v7 sharingAuthorizations:v10];
  }
}

void __122__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke(uint64_t a1, void *a2)
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

uint64_t __122__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke_293(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = a2;
  v4 = [v2 sharingAuthorizations];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)sharingAuthorizationManager:(id)a3 didRemoveSharingAuthorizations:(id)a4 recipientIdentifier:(id)a5
{
  v7 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __125__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  v8 = a4;
  v9 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __125__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke_295;
  v11[3] = &unk_278613BA8;
  v11[4] = self;
  v10 = [v8 hk_filter:v11];

  if ([v10 count])
  {
    [v9 clientRemote_didRemoveRecipientIdentifier:v7 sharingAuthorizations:v10];
  }
}

void __125__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke(uint64_t a1, void *a2)
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

uint64_t __125__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke_295(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = a2;
  v4 = [v2 sharingAuthorizations];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)sharingAuthorizationManager:(id)a3 didRevokeRecipientWithIdentifier:(id)a4
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRevokeRecipientWithIdentifier___block_invoke;
  v7[3] = &unk_2786138D0;
  v7[4] = self;
  v5 = a4;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v7];
  [v6 clientRemote_didRevokeRecipientIdentifier:v5];
}

void __107__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRevokeRecipientWithIdentifier___block_invoke(uint64_t a1, void *a2)
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
  v6 = [a3 sharingAuthorizations];
  v7 = [v6 count];

  if (!v7)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"Missing authorization identifiers"];
  }

  return v7 != 0;
}

@end