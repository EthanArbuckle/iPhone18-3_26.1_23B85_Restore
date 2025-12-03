@interface HDSharingAuthorizationRecipientStoreServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)requiredEntitlements;
- (HDSharingAuthorizationRecipientStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)remote_fetchRecipientIdentifiersWithCompletion:(id)completion;
- (void)remote_registerObservers;
- (void)remote_unregisterObservers;
- (void)sharingAuthorizationManager:(id)manager didAddSharingAuthorizations:(id)authorizations recipientIdentifier:(id)identifier;
- (void)sharingAuthorizationManager:(id)manager didRemoveSharingAuthorizations:(id)authorizations recipientIdentifier:(id)identifier;
- (void)sharingAuthorizationManager:(id)manager didRevokeRecipientWithIdentifier:(id)identifier;
@end

@implementation HDSharingAuthorizationRecipientStoreServer

- (HDSharingAuthorizationRecipientStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDSharingAuthorizationRecipientStoreServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = [configurationCopy copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;
  }

  return v11;
}

- (void)remote_fetchRecipientIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  sharingAuthorizations = [(HKSharingAuthorizationRecipientStoreTaskConfiguration *)self->_configuration sharingAuthorizations];
  v10 = 0;
  v8 = [sharingAuthorizationManager recipientIdentifiersForSharingAuthorizations:sharingAuthorizations error:&v10];
  v9 = v10;

  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_registerObservers
{
  profile = [(HDStandardTaskServer *)self profile];
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  [sharingAuthorizationManager registerObserver:self];
}

- (void)remote_unregisterObservers
{
  profile = [(HDStandardTaskServer *)self profile];
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  [sharingAuthorizationManager unregisterObserver:self];
}

- (void)sharingAuthorizationManager:(id)manager didAddSharingAuthorizations:(id)authorizations recipientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __122__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  authorizationsCopy = authorizations;
  v9 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __122__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke_293;
  v11[3] = &unk_278613BA8;
  v11[4] = self;
  v10 = [authorizationsCopy hk_filter:v11];

  if ([v10 count])
  {
    [v9 clientRemote_didAddRecipientIdentifier:identifierCopy sharingAuthorizations:v10];
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

- (void)sharingAuthorizationManager:(id)manager didRemoveSharingAuthorizations:(id)authorizations recipientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __125__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke;
  v12[3] = &unk_2786138D0;
  v12[4] = self;
  authorizationsCopy = authorizations;
  v9 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __125__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke_295;
  v11[3] = &unk_278613BA8;
  v11[4] = self;
  v10 = [authorizationsCopy hk_filter:v11];

  if ([v10 count])
  {
    [v9 clientRemote_didRemoveRecipientIdentifier:identifierCopy sharingAuthorizations:v10];
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

- (void)sharingAuthorizationManager:(id)manager didRevokeRecipientWithIdentifier:(id)identifier
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__HDSharingAuthorizationRecipientStoreServer_sharingAuthorizationManager_didRevokeRecipientWithIdentifier___block_invoke;
  v7[3] = &unk_2786138D0;
  v7[4] = self;
  identifierCopy = identifier;
  v6 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v7];
  [v6 clientRemote_didRevokeRecipientIdentifier:identifierCopy];
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

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  sharingAuthorizations = [configuration sharingAuthorizations];
  v7 = [sharingAuthorizations count];

  if (!v7)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Missing authorization identifiers"];
  }

  return v7 != 0;
}

@end