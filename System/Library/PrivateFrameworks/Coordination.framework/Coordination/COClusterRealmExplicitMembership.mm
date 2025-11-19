@interface COClusterRealmExplicitMembership
@end

@implementation COClusterRealmExplicitMembership

void __46___COClusterRealmExplicitMembership_activate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 clusterIdentifier];
  [v2 _setIdentifierLocked:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) copy];
  [v4 _setUpdateHandlerLocked:v5];
}

@end