@interface FCPrivateDataSyncConditionStorefront
- (BOOL)isSatisfied;
- (id)description;
@end

@implementation FCPrivateDataSyncConditionStorefront

- (BOOL)isSatisfied
{
  v2 = +[FCAppleAccount sharedAccount];
  v3 = [v2 isContentStoreFrontSupported];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = +[FCAppleAccount sharedAccount];
  v5 = [v4 contentStoreFrontID];
  v6 = [v3 stringWithFormat:@"<%p condition=Storefront, storefrontID=%@>", self, v5];

  return v6;
}

@end