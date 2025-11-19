@interface MKFApplicationData
@end

@implementation MKFApplicationData

void __68___MKFApplicationData_HMDBackingStoreModelObject__hmd_parentModelID__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) hmd_lastKnownValueForKey:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __50___MKFApplicationData_hmd_parentAttributeKeyPaths__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"accessory";
  v3[1] = @"actionSet";
  v3[2] = @"home";
  v3[3] = @"room";
  v3[4] = @"service";
  v3[5] = @"serviceGroup";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = hmd_parentAttributeKeyPaths__hmf_once_v4;
  hmd_parentAttributeKeyPaths__hmf_once_v4 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __54___MKFApplicationData_castIfApplicationDataContainer___block_invoke()
{
  v0 = [[HMCConformanceCache alloc] initWithProtocol:&unk_283E89D50];
  v1 = castIfApplicationDataContainer___hmf_once_v1;
  castIfApplicationDataContainer___hmf_once_v1 = v0;
}

@end