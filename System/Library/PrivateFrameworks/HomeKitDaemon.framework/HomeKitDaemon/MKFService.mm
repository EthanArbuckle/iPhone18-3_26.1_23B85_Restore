@interface MKFService
@end

@implementation MKFService

void __27___MKFService_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accessory.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_86429;
  homeRelation__hmf_once_v1_86429 = v0;
}

void __51___MKFService_pr_findCharacteristicWithInstanceID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 instanceID];
  v8 = [v7 isEqualToNumber:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end