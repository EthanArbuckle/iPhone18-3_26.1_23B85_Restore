@interface FCPrivateDataSyncConditionStorefront
- (BOOL)isSatisfied;
- (id)description;
@end

@implementation FCPrivateDataSyncConditionStorefront

- (BOOL)isSatisfied
{
  v2 = +[FCAppleAccount sharedAccount];
  isContentStoreFrontSupported = [v2 isContentStoreFrontSupported];

  return isContentStoreFrontSupported;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v4 contentStoreFrontID];
  v6 = [v3 stringWithFormat:@"<%p condition=Storefront, storefrontID=%@>", self, contentStoreFrontID];

  return v6;
}

@end