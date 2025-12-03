@interface NSString(GKCachingAdditions)
- (id)cacheKeyRepresentation;
@end

@implementation NSString(GKCachingAdditions)

- (id)cacheKeyRepresentation
{
  v2 = [self mutableCopy];
  [v2 replaceOccurrencesOfString:@"/" withString:@"_" options:2 range:{0, objc_msgSend(self, "length")}];
  [v2 replaceOccurrencesOfString:@":" withString:@"_" options:2 range:{0, objc_msgSend(self, "length")}];

  return v2;
}

@end