@interface MDStoreOIDArrayApplyBlockParallel
@end

@implementation MDStoreOIDArrayApplyBlockParallel

uint64_t ___MDStoreOIDArrayApplyBlockParallel_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  v5 = *(*(a1 + 32) + 16);
  v6 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40) + 8 * *(a1 + 48);

  return v5();
}

@end