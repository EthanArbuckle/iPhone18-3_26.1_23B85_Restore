@interface _COClusterRealmPair
+ (id)realmForCurrent;
- (id)_identifierForGroupResult:(id)result;
@end

@implementation _COClusterRealmPair

+ (id)realmForCurrent
{
  predicateForCurrentDevice = [MEMORY[0x277D27490] predicateForCurrentDevice];
  v3 = [[_COClusterRealmPair alloc] _initWithPredicate:predicateForCurrentDevice];

  return v3;
}

- (id)_identifierForGroupResult:(id)result
{
  firstObject = [result firstObject];
  homeKitMediaSystemIdentifier = [firstObject HomeKitMediaSystemIdentifier];
  uUIDString = [homeKitMediaSystemIdentifier UUIDString];

  return uUIDString;
}

@end