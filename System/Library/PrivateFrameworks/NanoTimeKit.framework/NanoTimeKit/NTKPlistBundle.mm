@interface NTKPlistBundle
- (NTKPlistBundle)initWithPlist:(id)plist bundle:(id)bundle;
@end

@implementation NTKPlistBundle

- (NTKPlistBundle)initWithPlist:(id)plist bundle:(id)bundle
{
  plistCopy = plist;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = NTKPlistBundle;
  v9 = [(NTKPlistBundle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_plistFileName, plist);
    objc_storeStrong(&v10->_bundle, bundle);
  }

  return v10;
}

@end