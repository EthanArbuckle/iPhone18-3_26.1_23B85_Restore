@interface CDMUaaPNLModelBundleFilter
+ (id)selectModelBundlesForLoadedAppModelBundles:(id)bundles;
@end

@implementation CDMUaaPNLModelBundleFilter

+ (id)selectModelBundlesForLoadedAppModelBundles:(id)bundles
{
  bundlesCopy = bundles;
  if ([bundlesCopy count])
  {
    v4 = bundlesCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end