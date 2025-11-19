@interface NSString(FBSApplicationDataStore)
- (id)fbs_bundleIDFromAppID;
@end

@implementation NSString(FBSApplicationDataStore)

- (id)fbs_bundleIDFromAppID
{
  if ([a1 fbs_looksLikeAnIdentityString])
  {
    v2 = [MEMORY[0x1E69635D8] bundleIdentifierForIdentityString:a1 error:0];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

@end