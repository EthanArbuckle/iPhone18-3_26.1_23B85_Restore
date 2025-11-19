@interface EMContactsCache
@end

@implementation EMContactsCache

id __75___EMContactsCache__contactsForKey_cache_keysToFetch_predicateBlock_error___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  v3 = [*(a1 + 32) store];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v3 unifiedContactsMatchingPredicate:v2 keysToFetch:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(*(*(a1 + 56) + 8) + 40) ef_mapSelector:sel_identifier];

  return v9;
}

void __54___EMContactsCache_allContactEmailAddressesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) addressesCache];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54___EMContactsCache_allContactEmailAddressesWithError___block_invoke_2;
  v10[3] = &unk_1E826C838;
  v8 = v6;
  v11 = v8;
  v9 = [v7 objectForKey:v5 generator:v10];
}

@end