@interface HDHealthStoreProviderServer
+ (id)requiredEntitlements;
- (id)_profileManager;
- (void)_clientMayAccessProfile:(void *)result;
- (void)remote_fetchAvailableIdentifiersWithCompletion:(id)a3;
- (void)remote_fetchForIdentifier:(id)a3 completion:(id)a4;
- (void)remote_requestAuthorizationToNewIdentifierToShareTypes:(id)a3 readTypes:(id)a4 completion:(id)a5;
- (void)remote_requestAuthorizationToNewIdentifierWithCompletion:(id)a3;
@end

@implementation HDHealthStoreProviderServer

- (id)_profileManager
{
  if (a1)
  {
    v1 = [a1 profile];
    v2 = [v1 daemon];
    v3 = [v2 profileManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_clientMayAccessProfile:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v2 client];
    v5 = [v4 _isAuthorizedToAccessProfile:v3];

    return v5;
  }

  return result;
}

- (void)remote_fetchForIdentifier:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 isPrimaryStoreIdentifier])
  {
    v6[2](v6, 1, 0);
  }

  else
  {
    v7 = [(HDHealthStoreProviderServer *)self _profileManager];
    v8 = [v11 profileIdentifier];
    v9 = [v7 profileForIdentifier:v8];

    if (v9 && ([(HDHealthStoreProviderServer *)self _clientMayAccessProfile:v9]& 1) != 0)
    {
      v6[2](v6, 1, 0);
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] hk_healthStoreUnavailableError];
      (v6)[2](v6, 0, v10);
    }
  }
}

- (void)remote_fetchAvailableIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthStoreProviderServer *)self _profileManager];
  v6 = [v5 allProfileIdentifiers];

  v7 = [(HDStandardTaskServer *)self client];
  v8 = [v7 hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__HDHealthStoreProviderServer_remote_fetchAvailableIdentifiersWithCompletion___block_invoke;
    v12[3] = &unk_278615BC8;
    v12[4] = self;
    v9 = [v6 hk_filter:v12];
  }

  v10 = v9;
  v11 = [v9 hk_map:&__block_literal_global_19];
  v4[2](v4, v11, 0);
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

- (void)remote_requestAuthorizationToNewIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = unimplementedError();
  (*(a3 + 2))(v4, 0, v5);
}

- (void)remote_requestAuthorizationToNewIdentifierToShareTypes:(id)a3 readTypes:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = unimplementedError();
  (*(a5 + 2))(v6, 0, v7);
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