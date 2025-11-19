@interface EMFSearchEngineBundleLoader
+ (BOOL)isLocaleSupported:(id)a3;
+ (id)assetBundleForLocale:(id)a3;
@end

@implementation EMFSearchEngineBundleLoader

+ (BOOL)isLocaleSupported:(id)a3
{
  if (a3)
  {
    return MEMORY[0x1EEDF8F38](a3, a2);
  }

  else
  {
    return 0;
  }
}

+ (id)assetBundleForLocale:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localeIdentifier];
    BundleForLocaleIdentifier = CEMEMFSearchEngineCreateBundleForLocaleIdentifier();

    if (BundleForLocaleIdentifier)
    {
      v7 = CFBundleCopyBundleURL(BundleForLocaleIdentifier);
      CFRelease(BundleForLocaleIdentifier);
      BundleForLocaleIdentifier = [MEMORY[0x1E696AAE8] bundleWithURL:v7];
    }
  }

  else
  {
    BundleForLocaleIdentifier = 0;
  }

  return BundleForLocaleIdentifier;
}

@end