@interface FTSelectedPNRSubscriptionCache
- (id)debugDescription;
@end

@implementation FTSelectedPNRSubscriptionCache

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FTSelectedPNRSubscriptionCache *)self phoneNumber];
  v6 = [(FTSelectedPNRSubscriptionCache *)self dualSIMCapability];
  v7 = [(FTSelectedPNRSubscriptionCache *)self selectedContext];
  v8 = [(FTSelectedPNRSubscriptionCache *)self subscriptionInfo];
  v9 = [(FTSelectedPNRSubscriptionCache *)self activeSubscriptionInfo];
  v10 = [v3 stringWithFormat:@"<%@: %p phoneNumber: %@, dualSIMCapability: %ld, selectedContext: %@, subsriptionInfo: %@, activeSubscriptionInfo: %@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end