@interface NSString(GKCachingAdditions)
- (id)cacheKeyRepresentation;
@end

@implementation NSString(GKCachingAdditions)

- (id)cacheKeyRepresentation
{
  v2 = [a1 mutableCopy];
  [v2 replaceOccurrencesOfString:@"/" withString:@"_" options:2 range:{0, objc_msgSend(a1, "length")}];
  [v2 replaceOccurrencesOfString:@":" withString:@"_" options:2 range:{0, objc_msgSend(a1, "length")}];

  return v2;
}

@end