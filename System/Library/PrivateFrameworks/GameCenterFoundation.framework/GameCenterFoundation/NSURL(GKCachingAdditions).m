@interface NSURL(GKCachingAdditions)
- (id)cacheKeyRepresentation;
@end

@implementation NSURL(GKCachingAdditions)

- (id)cacheKeyRepresentation
{
  v1 = [a1 absoluteString];
  v2 = [v1 cacheKeyRepresentation];

  return v2;
}

@end