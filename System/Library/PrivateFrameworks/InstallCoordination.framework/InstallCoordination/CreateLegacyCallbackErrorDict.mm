@interface CreateLegacyCallbackErrorDict
@end

@implementation CreateLegacyCallbackErrorDict

uint64_t ___CreateLegacyCallbackErrorDict_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69A8D00]];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v6 ^ 1u;
}

@end