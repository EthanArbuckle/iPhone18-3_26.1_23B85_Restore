@interface LSApplicationProxy(FBSBundleInfo)
- (id)fbs_correspondingApplicationRecord;
@end

@implementation LSApplicationProxy(FBSBundleInfo)

- (id)fbs_correspondingApplicationRecord
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [a1 correspondingApplicationRecord];
  if (!v2)
  {
    v3 = FBSLogApplicationLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = a1;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "No corresponding record for %@", &v5, 0xCu);
    }
  }

  return v2;
}

@end