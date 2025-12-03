@interface NSURL(GKCachingAdditions)
- (id)cacheKeyRepresentation;
@end

@implementation NSURL(GKCachingAdditions)

- (id)cacheKeyRepresentation
{
  absoluteString = [self absoluteString];
  cacheKeyRepresentation = [absoluteString cacheKeyRepresentation];

  return cacheKeyRepresentation;
}

@end