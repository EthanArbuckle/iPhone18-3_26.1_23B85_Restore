@interface LSApplicationRecord(FBSBundleInfo)
- (id)fbs_correspondingApplicationProxy;
@end

@implementation LSApplicationRecord(FBSBundleInfo)

- (id)fbs_correspondingApplicationProxy
{
  v7 = *MEMORY[0x1E69E9840];
  compatibilityObject = [self compatibilityObject];
  if (!compatibilityObject)
  {
    v3 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "No corresponding proxy for %@", &v5, 0xCu);
    }
  }

  return compatibilityObject;
}

@end