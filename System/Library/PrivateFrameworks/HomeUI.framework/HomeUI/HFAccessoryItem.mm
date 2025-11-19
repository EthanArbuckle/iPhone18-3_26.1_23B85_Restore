@interface HFAccessoryItem
@end

@implementation HFAccessoryItem

uint64_t __69__HFAccessoryItem_HUBridgeItemServiceContainer__hu_containedServices__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 hf_showAsIndividualServices];

  return v3;
}

@end