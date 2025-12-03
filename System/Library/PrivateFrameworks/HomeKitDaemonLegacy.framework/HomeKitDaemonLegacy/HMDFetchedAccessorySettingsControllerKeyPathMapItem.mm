@interface HMDFetchedAccessorySettingsControllerKeyPathMapItem
- (HMDFetchedAccessorySettingsControllerKeyPathMapItem)initWithDriver:(id)driver keyPaths:(id)paths;
- (NSArray)keyPaths;
@end

@implementation HMDFetchedAccessorySettingsControllerKeyPathMapItem

- (NSArray)keyPaths
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
  }

  v2 = [(HMDFetchedAccessorySettingsControllerKeyPathMapItem *)self copy];

  return v2;
}

- (HMDFetchedAccessorySettingsControllerKeyPathMapItem)initWithDriver:(id)driver keyPaths:(id)paths
{
  driverCopy = driver;
  pathsCopy = paths;
  v14.receiver = self;
  v14.super_class = HMDFetchedAccessorySettingsControllerKeyPathMapItem;
  v9 = [(HMDFetchedAccessorySettingsControllerKeyPathMapItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_driver, driver);
    v11 = [pathsCopy mutableCopy];
    keyPathsInternal = v10->_keyPathsInternal;
    v10->_keyPathsInternal = v11;
  }

  return v10;
}

@end