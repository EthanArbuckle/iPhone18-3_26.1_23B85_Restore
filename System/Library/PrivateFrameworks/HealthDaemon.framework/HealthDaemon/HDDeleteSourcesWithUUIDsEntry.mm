@interface HDDeleteSourcesWithUUIDsEntry
@end

@implementation HDDeleteSourcesWithUUIDsEntry

uint64_t __59___HDDeleteSourcesWithUUIDsEntry_applyEntries_withProfile___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 sourceManager];
  v8 = [v7 _deleteSourcesWithUUIDs:a1[5] localSourceEntityCacheKey:a1[6] syncIdentity:0 deleteSamples:1 transaction:v6 error:a3];

  return v8;
}

@end