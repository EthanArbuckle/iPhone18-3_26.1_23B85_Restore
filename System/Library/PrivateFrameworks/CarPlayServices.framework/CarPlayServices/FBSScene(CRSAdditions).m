@interface FBSScene(CRSAdditions)
- (id)crs_applicationBundleIdentifier;
@end

@implementation FBSScene(CRSAdditions)

- (id)crs_applicationBundleIdentifier
{
  v1 = [a1 identifier];
  v2 = [v1 componentsSeparatedByString:@":"];
  if ([v2 count] == 3)
  {
    v3 = [v2 lastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end