@interface CDMUaaPNLModelBundleFilter
+ (id)selectModelBundlesForLoadedAppModelBundles:(id)a3;
@end

@implementation CDMUaaPNLModelBundleFilter

+ (id)selectModelBundlesForLoadedAppModelBundles:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end