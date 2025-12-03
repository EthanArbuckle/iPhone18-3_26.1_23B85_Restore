@interface NSArray(MRAVRoutingDiscoverySessionWrapperAdditions)
- (id)resultsFromConfiguration:()MRAVRoutingDiscoverySessionWrapperAdditions;
@end

@implementation NSArray(MRAVRoutingDiscoverySessionWrapperAdditions)

- (id)resultsFromConfiguration:()MRAVRoutingDiscoverySessionWrapperAdditions
{
  if ([a3 cachedDiscoveryEnabled])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self nonCachedResults];
  }

  return selfCopy;
}

@end