@interface NSString(CK_NSPathUtilitiesAdditions)
- (id)__ck_stringByExpandingTildeInPath;
@end

@implementation NSString(CK_NSPathUtilitiesAdditions)

- (id)__ck_stringByExpandingTildeInPath
{
  if ([self hasPrefix:@"~"])
  {
    v2 = [self mutableCopy];
    [v2 replaceCharactersInRange:0 withString:{1, @"/var/mobile/"}];
    stringByExpandingTildeInPath = [v2 copy];
  }

  else
  {
    stringByExpandingTildeInPath = [self stringByExpandingTildeInPath];
  }

  return stringByExpandingTildeInPath;
}

@end