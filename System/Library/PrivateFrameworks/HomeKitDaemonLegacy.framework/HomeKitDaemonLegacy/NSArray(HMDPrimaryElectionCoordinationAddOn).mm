@interface NSArray(HMDPrimaryElectionCoordinationAddOn)
- (id)hmd_residentDeviceForMeshNode:()HMDPrimaryElectionCoordinationAddOn;
@end

@implementation NSArray(HMDPrimaryElectionCoordinationAddOn)

- (id)hmd_residentDeviceForMeshNode:()HMDPrimaryElectionCoordinationAddOn
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__NSArray_HMDPrimaryElectionCoordinationAddOn__hmd_residentDeviceForMeshNode___block_invoke;
  v8[3] = &unk_27972AE10;
  v9 = v4;
  v5 = v4;
  v6 = [a1 na_firstObjectPassingTest:v8];

  return v6;
}

@end