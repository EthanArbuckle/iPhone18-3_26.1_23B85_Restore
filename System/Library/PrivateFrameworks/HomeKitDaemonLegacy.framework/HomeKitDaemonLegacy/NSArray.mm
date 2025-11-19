@interface NSArray
@end

@implementation NSArray

uint64_t __78__NSArray_HMDPrimaryElectionCoordinationAddOn__hmd_residentDeviceForMeshNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 idsIdentifier];
  v5 = [v4 UUIDString];
  v6 = [*(a1 + 32) idsIdentifier];
  v7 = [v5 isEqual:v6];

  return v7;
}

uint64_t __64__NSArray_HMDCoordinationMeshAddOn__hmd_residentWithIdentifier___block_invoke(uint64_t a1, void *a2)
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
  v6 = [v5 identifier];

  v7 = [v6 isEqual:*(a1 + 32)];
  return v7;
}

@end