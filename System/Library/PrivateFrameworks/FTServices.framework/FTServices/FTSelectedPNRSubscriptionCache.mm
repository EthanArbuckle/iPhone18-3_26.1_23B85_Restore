@interface FTSelectedPNRSubscriptionCache
- (id)debugDescription;
@end

@implementation FTSelectedPNRSubscriptionCache

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  phoneNumber = [(FTSelectedPNRSubscriptionCache *)self phoneNumber];
  dualSIMCapability = [(FTSelectedPNRSubscriptionCache *)self dualSIMCapability];
  selectedContext = [(FTSelectedPNRSubscriptionCache *)self selectedContext];
  subscriptionInfo = [(FTSelectedPNRSubscriptionCache *)self subscriptionInfo];
  activeSubscriptionInfo = [(FTSelectedPNRSubscriptionCache *)self activeSubscriptionInfo];
  v10 = [v3 stringWithFormat:@"<%@: %p phoneNumber: %@, dualSIMCapability: %ld, selectedContext: %@, subsriptionInfo: %@, activeSubscriptionInfo: %@>", v4, self, phoneNumber, dualSIMCapability, selectedContext, subscriptionInfo, activeSubscriptionInfo];

  return v10;
}

@end