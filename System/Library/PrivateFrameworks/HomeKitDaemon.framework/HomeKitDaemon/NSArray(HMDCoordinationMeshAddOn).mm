@interface NSArray(HMDCoordinationMeshAddOn)
- (id)hmd_residentWithIdentifier:()HMDCoordinationMeshAddOn;
@end

@implementation NSArray(HMDCoordinationMeshAddOn)

- (id)hmd_residentWithIdentifier:()HMDCoordinationMeshAddOn
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__NSArray_HMDCoordinationMeshAddOn__hmd_residentWithIdentifier___block_invoke;
  v8[3] = &unk_278686EA0;
  v9 = v4;
  v5 = v4;
  v6 = [self na_firstObjectPassingTest:v8];

  return v6;
}

@end