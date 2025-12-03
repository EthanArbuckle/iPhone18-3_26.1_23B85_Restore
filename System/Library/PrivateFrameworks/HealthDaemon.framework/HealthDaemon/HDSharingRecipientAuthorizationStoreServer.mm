@interface HDSharingRecipientAuthorizationStoreServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)requiredEntitlements;
- (HDSharingRecipientAuthorizationStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)remote_addSharingAuthorizations:(id)authorizations completion:(id)completion;
- (void)remote_fetchSharingAuthorizationsMarkedForDeletionWithCompletion:(id)completion;
- (void)remote_fetchSharingAuthorizationsWithCompletion:(id)completion;
- (void)remote_registerObservers;
- (void)remote_removeSharingAuthorizations:(id)authorizations completion:(id)completion;
- (void)remote_revokeWithCompletion:(id)completion;
- (void)remote_unregisterObservers;
- (void)sharingAuthorizationManager:(id)manager didAddSharingAuthorizations:(id)authorizations recipientIdentifier:(id)identifier;
- (void)sharingAuthorizationManager:(id)manager didRemoveSharingAuthorizations:(id)authorizations recipientIdentifier:(id)identifier;
- (void)sharingAuthorizationManager:(id)manager didRevokeRecipientWithIdentifier:(id)identifier;
@end

@implementation HDSharingRecipientAuthorizationStoreServer

- (HDSharingRecipientAuthorizationStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDSharingRecipientAuthorizationStoreServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = [configurationCopy copy];
    configuration = v11->_configuration;
    v11->_configuration = v12;
  }

  return v11;
}

- (void)remote_fetchSharingAuthorizationsWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  recipientIdentifier = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v10 = 0;
  v8 = [sharingAuthorizationManager sharingAuthorizationsForRecipientIdentifier:recipientIdentifier error:&v10];
  v9 = v10;

  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_fetchSharingAuthorizationsMarkedForDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  recipientIdentifier = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v10 = 0;
  v8 = [sharingAuthorizationManager sharingAuthorizationsMarkedForDeletionForRecipientIdentifier:recipientIdentifier error:&v10];
  v9 = v10;

  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_addSharingAuthorizations:(id)authorizations completion:(id)completion
{
  completionCopy = completion;
  authorizationsCopy = authorizations;
  profile = [(HDStandardTaskServer *)self profile];
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  recipientIdentifier = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v13 = 0;
  v11 = [sharingAuthorizationManager addSharingAuthorizations:authorizationsCopy recipientIdentifier:recipientIdentifier error:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_removeSharingAuthorizations:(id)authorizations completion:(id)completion
{
  completionCopy = completion;
  authorizationsCopy = authorizations;
  profile = [(HDStandardTaskServer *)self profile];
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  recipientIdentifier = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v13 = 0;
  v11 = [sharingAuthorizationManager removeSharingAuthorizations:authorizationsCopy recipientIdentifier:recipientIdentifier error:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_revokeWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  sharingAuthorizationManager = [profile sharingAuthorizationManager];
  recipientIdentifier = [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)self->_configuration recipientIdentifier];
  v10 = 0;
  v8 = [sharingAuthorizationManager revokeRecipientWithIdentifier:recipientIdentifier error:&v10];
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
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __122__HDSharingRecipientAuthorizationStoreServer_sharingAuthorizationManager_didAddSharingAuthorizations_recipientIdentifier___block_invoke;
  v8[3] = &unk_2786138D0;
  v8[4] = self;
  authorizationsCopy = authorizations;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v8];
  [v7 clientRemote_didAddSharingAuthorizations:authorizationsCopy];
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

- (void)sharingAuthorizationManager:(id)manager didRemoveSharingAuthorizations:(id)authorizations recipientIdentifier:(id)identifier
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __125__HDSharingRecipientAuthorizationStoreServer_sharingAuthorizationManager_didRemoveSharingAuthorizations_recipientIdentifier___block_invoke;
  v8[3] = &unk_2786138D0;
  v8[4] = self;
  authorizationsCopy = authorizations;
  v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v8];
  [v7 clientRemote_didRemoveSharingAuthorizations:authorizationsCopy];
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

- (void)sharingAuthorizationManager:(id)manager didRevokeRecipientWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = identifierCopy;
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

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  recipientIdentifier = [configuration recipientIdentifier];

  if (!recipientIdentifier)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Missing recipient identifier"];
  }

  return recipientIdentifier != 0;
}

@end