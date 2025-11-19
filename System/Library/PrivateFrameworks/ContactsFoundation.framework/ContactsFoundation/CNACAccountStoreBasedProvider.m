@interface CNACAccountStoreBasedProvider
@end

@implementation CNACAccountStoreBasedProvider

uint64_t __49___CNACAccountStoreBasedProvider_allAccountTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 supportedDataclasses];
  if ([v3 containsObject:*MEMORY[0x1E6959640]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 supportedDataclasses];
    v4 = [v5 containsObject:*MEMORY[0x1E6959648]];
  }

  return v4;
}

uint64_t __70___CNACAccountStoreBasedProvider_isAnyAccountSyncableIgnoringAccount___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) accountsWithAccountType:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70___CNACAccountStoreBasedProvider_isAnyAccountSyncableIgnoringAccount___block_invoke_2;
  v6[3] = &unk_1E6ED7F70;
  v7 = *(a1 + 40);
  v4 = [v3 _cn_any:v6];

  return v4;
}

uint64_t __70___CNACAccountStoreBasedProvider_isAnyAccountSyncableIgnoringAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 parentAccountIdentifier];
    if (v6 || ([v3 _cn_isManaged] & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v3 isEnabledForDataclass:*MEMORY[0x1E6959AF0]];
    }
  }

  return v5;
}

@end