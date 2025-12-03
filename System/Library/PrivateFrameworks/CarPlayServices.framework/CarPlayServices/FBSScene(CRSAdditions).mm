@interface FBSScene(CRSAdditions)
- (id)crs_applicationBundleIdentifier;
@end

@implementation FBSScene(CRSAdditions)

- (id)crs_applicationBundleIdentifier
{
  identifier = [self identifier];
  v2 = [identifier componentsSeparatedByString:@":"];
  if ([v2 count] == 3)
  {
    lastObject = [v2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end