@interface MPCPIAEligibilityForItem
@end

@implementation MPCPIAEligibilityForItem

uint64_t ___MPCPIAEligibilityForItem_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) song];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) tvEpisode];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) movie];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x1EEE66BB8](v8, v10);
}

@end