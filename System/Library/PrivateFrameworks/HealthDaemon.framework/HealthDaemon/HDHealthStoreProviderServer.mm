@interface HDHealthStoreProviderServer
+ (id)requiredEntitlements;
- (id)_profileManager;
- (void)_clientMayAccessProfile:(void *)result;
- (void)remote_fetchAvailableIdentifiersWithCompletion:(id)completion;
- (void)remote_fetchForIdentifier:(id)identifier completion:(id)completion;
- (void)remote_requestAuthorizationToNewIdentifierToShareTypes:(id)types readTypes:(id)readTypes completion:(id)completion;
- (void)remote_requestAuthorizationToNewIdentifierWithCompletion:(id)completion;
@end

@implementation HDHealthStoreProviderServer

- (id)_profileManager
{
  if (self)
  {
    profile = [self profile];
    daemon = [profile daemon];
    profileManager = [daemon profileManager];
  }

  else
  {
    profileManager = 0;
  }

  return profileManager;
}

- (void)_clientMayAccessProfile:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    client = [v2 client];
    v5 = [client _isAuthorizedToAccessProfile:v3];

    return v5;
  }

  return result;
}

- (void)remote_fetchForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([identifierCopy isPrimaryStoreIdentifier])
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
    profileIdentifier = [identifierCopy profileIdentifier];
    v9 = [_profileManager profileForIdentifier:profileIdentifier];

    if (v9 && ([(HDHealthStoreProviderServer *)self _clientMayAccessProfile:v9]& 1) != 0)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      hk_healthStoreUnavailableError = [MEMORY[0x277CCA9B8] hk_healthStoreUnavailableError];
      (completionCopy)[2](completionCopy, 0, hk_healthStoreUnavailableError);
    }
  }
}

- (void)remote_fetchAvailableIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  _profileManager = [(HDHealthStoreProviderServer *)self _profileManager];
  allProfileIdentifiers = [_profileManager allProfileIdentifiers];

  client = [(HDStandardTaskServer *)self client];
  v8 = [client hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v8)
  {
    v9 = allProfileIdentifiers;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__HDHealthStoreProviderServer_remote_fetchAvailableIdentifiersWithCompletion___block_invoke;
    v12[3] = &unk_278615BC8;
    v12[4] = self;
    v9 = [allProfileIdentifiers hk_filter:v12];
  }

  v10 = v9;
  v11 = [v9 hk_map:&__block_literal_global_19];
  completionCopy[2](completionCopy, v11, 0);
}

void *__78__HDHealthStoreProviderServer_remote_fetchAvailableIdentifiersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [(HDHealthStoreProviderServer *)v3 _profileManager];
  v6 = [v5 profileForIdentifier:v4];

  if (v6)
  {
    v7 = [(HDHealthStoreProviderServer *)*(a1 + 32) _clientMayAccessProfile:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)remote_requestAuthorizationToNewIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = unimplementedError();
  (*(completion + 2))(completionCopy, 0, v5);
}

- (void)remote_requestAuthorizationToNewIdentifierToShareTypes:(id)types readTypes:(id)readTypes completion:(id)completion
{
  completionCopy = completion;
  v7 = unimplementedError();
  (*(completion + 2))(completionCopy, 0, v7);
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC1B8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end