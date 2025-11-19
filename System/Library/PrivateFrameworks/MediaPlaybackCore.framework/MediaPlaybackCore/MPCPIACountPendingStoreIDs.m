@interface MPCPIACountPendingStoreIDs
@end

@implementation MPCPIACountPendingStoreIDs

void ___MPCPIACountPendingStoreIDs_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ((-[_MPCAccumulatorProgressiveResult isResolved](v6) & 1) == 0 || ![*(a1 + 32) numberOfItemsInSection:a3])
  {
    v5 = [(_MPCAccumulatorProgressiveResult *)v6 nextLoadableStoreID];
    if ([v5 length])
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

uint64_t ___MPCPIACountPendingStoreIDs_block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [(_MPCAccumulatorProgressiveResult *)v7 isResolved];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = [(_MPCAccumulatorProgressiveResult *)v7 nextLoadableStoreID];
    if ([v5 length])
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

@end