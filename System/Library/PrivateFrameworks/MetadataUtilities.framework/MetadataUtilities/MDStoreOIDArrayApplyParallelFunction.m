@interface MDStoreOIDArrayApplyParallelFunction
@end

@implementation MDStoreOIDArrayApplyParallelFunction

uint64_t ___MDStoreOIDArrayApplyParallelFunction_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 76);
  v10 = *MEMORY[0x1E69E9840];

  return v3(v8, v2, v4 + 8 * v5, v6, v7, v9);
}

@end