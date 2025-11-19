@interface HTDeveloperApp
- (HTDeveloperApp)initWithName:(id)a3 bundleID:(id)a4 bundleExecutable:(id)a5 bundleName:(id)a6 bundleDisplayName:(id)a7;
@end

@implementation HTDeveloperApp

- (HTDeveloperApp)initWithName:(id)a3 bundleID:(id)a4 bundleExecutable:(id)a5 bundleName:(id)a6 bundleDisplayName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = HTDeveloperApp;
  v17 = [(HTDeveloperApp *)&v23 init];
  if (v17)
  {
    v18 = [v12 copy];
    name = v17->_name;
    v17->_name = v18;

    v20 = [v13 copy];
    bundleID = v17->_bundleID;
    v17->_bundleID = v20;

    objc_storeStrong(&v17->_bundleExecutable, a5);
    objc_storeStrong(&v17->_bundleName, a6);
    objc_storeStrong(&v17->_bundleDisplayName, a7);
  }

  return v17;
}

@end