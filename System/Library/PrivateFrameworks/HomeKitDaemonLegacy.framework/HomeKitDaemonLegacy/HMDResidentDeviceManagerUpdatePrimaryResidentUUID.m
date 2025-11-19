@interface HMDResidentDeviceManagerUpdatePrimaryResidentUUID
@end

@implementation HMDResidentDeviceManagerUpdatePrimaryResidentUUID

uint64_t ____HMDResidentDeviceManagerUpdatePrimaryResidentUUID_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

uint64_t ____HMDResidentDeviceManagerUpdatePrimaryResidentUUID_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

@end