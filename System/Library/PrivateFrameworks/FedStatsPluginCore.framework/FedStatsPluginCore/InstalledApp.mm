@interface InstalledApp
- (InstalledApp)initWithBundleIdentifier:(id)a3 supportedMediaCategories:(id)a4 supportedIntents:(id)a5 appName:(id)a6;
- (id)description;
@end

@implementation InstalledApp

- (InstalledApp)initWithBundleIdentifier:(id)a3 supportedMediaCategories:(id)a4 supportedIntents:(id)a5 appName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = InstalledApp;
  v15 = [(InstalledApp *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdentifier, a3);
    objc_storeStrong(&v16->_supportedMediaCategories, a4);
    objc_storeStrong(&v16->_supportedIntents, a5);
    objc_storeStrong(&v16->_appName, a6);
  }

  return v16;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(InstalledApp *)self bundleIdentifier];
  v4 = [v2 stringWithFormat:@"InstalledApp { bundleIdentifier: %@ }", v3];

  return v4;
}

@end