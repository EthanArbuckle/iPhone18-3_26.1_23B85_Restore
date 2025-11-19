@interface MPCPIACreateAnonymousSection
@end

@implementation MPCPIACreateAnonymousSection

void ___MPCPIACreateAnonymousSection_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v5 = [v2 UUID];
  v4 = [v5 UUIDString];
  [v3 setOpaqueID:v4];
}

@end