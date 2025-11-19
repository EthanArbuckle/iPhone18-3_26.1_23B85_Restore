@interface MRLoadContentItemAssets
@end

@implementation MRLoadContentItemAssets

void ___onQueue_MRLoadContentItemAssets_block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:147 description:0 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 40) + 16))();
}

void ___onQueue_MRLoadContentItemAssets_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void ___onQueue_MRLoadContentItemAssets_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

@end