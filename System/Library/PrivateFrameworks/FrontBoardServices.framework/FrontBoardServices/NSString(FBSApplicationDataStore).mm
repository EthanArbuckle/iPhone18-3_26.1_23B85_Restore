@interface NSString(FBSApplicationDataStore)
- (id)fbs_bundleIDFromAppID;
@end

@implementation NSString(FBSApplicationDataStore)

- (id)fbs_bundleIDFromAppID
{
  if ([self fbs_looksLikeAnIdentityString])
  {
    selfCopy = [MEMORY[0x1E69635D8] bundleIdentifierForIdentityString:self error:0];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end