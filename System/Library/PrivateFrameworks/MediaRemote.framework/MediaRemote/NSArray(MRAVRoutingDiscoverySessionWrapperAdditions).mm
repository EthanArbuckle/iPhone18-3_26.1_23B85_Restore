@interface NSArray(MRAVRoutingDiscoverySessionWrapperAdditions)
- (id)resultsFromConfiguration:()MRAVRoutingDiscoverySessionWrapperAdditions;
@end

@implementation NSArray(MRAVRoutingDiscoverySessionWrapperAdditions)

- (id)resultsFromConfiguration:()MRAVRoutingDiscoverySessionWrapperAdditions
{
  if ([a3 cachedDiscoveryEnabled])
  {
    v4 = a1;
  }

  else
  {
    v4 = [a1 nonCachedResults];
  }

  return v4;
}

@end