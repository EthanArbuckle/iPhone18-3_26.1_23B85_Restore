@interface MKFRoom
@end

@implementation MKFRoom

void __24___MKFRoom_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_79839;
  homeRelation__hmf_once_v1_79839 = v0;
}

uint64_t __75___MKFRoom_ResidentSyncCoding__shouldIncludeForRestrictedGuestWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 shouldIncludeForRestrictedGuestWithContext:*(a1 + 32)];

  return v6;
}

@end