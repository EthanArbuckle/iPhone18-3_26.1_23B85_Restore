@interface HTDeveloperApp
- (HTDeveloperApp)initWithName:(id)name bundleID:(id)d bundleExecutable:(id)executable bundleName:(id)bundleName bundleDisplayName:(id)displayName;
@end

@implementation HTDeveloperApp

- (HTDeveloperApp)initWithName:(id)name bundleID:(id)d bundleExecutable:(id)executable bundleName:(id)bundleName bundleDisplayName:(id)displayName
{
  nameCopy = name;
  dCopy = d;
  executableCopy = executable;
  bundleNameCopy = bundleName;
  displayNameCopy = displayName;
  v23.receiver = self;
  v23.super_class = HTDeveloperApp;
  v17 = [(HTDeveloperApp *)&v23 init];
  if (v17)
  {
    v18 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v18;

    v20 = [dCopy copy];
    bundleID = v17->_bundleID;
    v17->_bundleID = v20;

    objc_storeStrong(&v17->_bundleExecutable, executable);
    objc_storeStrong(&v17->_bundleName, bundleName);
    objc_storeStrong(&v17->_bundleDisplayName, displayName);
  }

  return v17;
}

@end