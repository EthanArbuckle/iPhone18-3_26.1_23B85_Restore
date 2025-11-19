@interface HMDFetchedAccessorySettingsControllerKeyPathMapItem
- (HMDFetchedAccessorySettingsControllerKeyPathMapItem)initWithDriver:(id)a3 keyPaths:(id)a4;
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

- (HMDFetchedAccessorySettingsControllerKeyPathMapItem)initWithDriver:(id)a3 keyPaths:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDFetchedAccessorySettingsControllerKeyPathMapItem;
  v9 = [(HMDFetchedAccessorySettingsControllerKeyPathMapItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_driver, a3);
    v11 = [v8 mutableCopy];
    keyPathsInternal = v10->_keyPathsInternal;
    v10->_keyPathsInternal = v11;
  }

  return v10;
}

@end