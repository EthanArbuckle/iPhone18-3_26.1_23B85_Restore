@interface HMCameraActivityZone
@end

@implementation HMCameraActivityZone

id __66__HMCameraActivityZone_HMI__createHMIActivityZoneWithIsInclusion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14DC0];
  v3 = a2;
  v4 = [v2 alloc];
  [v3 point];
  v6 = v5;
  v8 = v7;

  v9 = [v4 initWithPoint:{v6, v8}];

  return v9;
}

@end