@interface CleanupAllocations
@end

@implementation CleanupAllocations

BOOL ___CleanupAllocations_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];
  v3 = v2 == 0;

  return v3;
}

@end