@interface HMResidentDevice
@end

@implementation HMResidentDevice

uint64_t __51__HMResidentDevice_HFAdditions__hf_linkedAccessory__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) device];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

@end