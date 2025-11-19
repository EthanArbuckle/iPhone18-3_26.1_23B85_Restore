@interface _DNDSUserAvailabilityTCCProvider
- (id)userAvailabilityTCCApprovedBundleIds;
@end

@implementation _DNDSUserAvailabilityTCCProvider

- (id)userAvailabilityTCCApprovedBundleIds
{
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D6C180];
  v4 = TCCAccessCopyBundleIdentifiersForService();
  v5 = [v2 setWithArray:v4];

  return v5;
}

@end