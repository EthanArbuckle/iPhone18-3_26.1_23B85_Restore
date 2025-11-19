@interface NSString(CK_NSPathUtilitiesAdditions)
- (id)__ck_stringByExpandingTildeInPath;
@end

@implementation NSString(CK_NSPathUtilitiesAdditions)

- (id)__ck_stringByExpandingTildeInPath
{
  if ([a1 hasPrefix:@"~"])
  {
    v2 = [a1 mutableCopy];
    [v2 replaceCharactersInRange:0 withString:{1, @"/var/mobile/"}];
    v3 = [v2 copy];
  }

  else
  {
    v3 = [a1 stringByExpandingTildeInPath];
  }

  return v3;
}

@end