@interface NSString(CalWellKnownPaths)
- (id)stringByExpandingTildeToNonSandboxHome;
@end

@implementation NSString(CalWellKnownPaths)

- (id)stringByExpandingTildeToNonSandboxHome
{
  v2 = +[CalWellKnownPaths realHomeDirectoryPath];
  v3 = [self stringByReplacingOccurrencesOfString:@"~" withString:v2];

  return v3;
}

@end