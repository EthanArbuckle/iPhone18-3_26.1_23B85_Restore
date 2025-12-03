@interface EMFSearchEngineBundleLoader
+ (BOOL)isLocaleSupported:(id)supported;
+ (id)assetBundleForLocale:(id)locale;
@end

@implementation EMFSearchEngineBundleLoader

+ (BOOL)isLocaleSupported:(id)supported
{
  if (supported)
  {
    return MEMORY[0x1EEDF8F38](supported, a2);
  }

  else
  {
    return 0;
  }
}

+ (id)assetBundleForLocale:(id)locale
{
  localeCopy = locale;
  v4 = localeCopy;
  if (localeCopy)
  {
    localeIdentifier = [localeCopy localeIdentifier];
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