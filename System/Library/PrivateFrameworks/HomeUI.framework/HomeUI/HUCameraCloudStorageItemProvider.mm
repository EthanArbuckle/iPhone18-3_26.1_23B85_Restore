@interface HUCameraCloudStorageItemProvider
- (HUCameraCloudStorageItemProvider)init;
- (HUCameraCloudStorageItemProvider)initWithCameraProfile:(id)profile;
@end

@implementation HUCameraCloudStorageItemProvider

- (HUCameraCloudStorageItemProvider)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v6 = [[HUCameraEraseRecordingsItem alloc] initWithCameraProfile:profileCopy];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{v6, 0}];
  v11.receiver = self;
  v11.super_class = HUCameraCloudStorageItemProvider;
  v8 = [(HFStaticItemProvider *)&v11 initWithItems:v7];

  if (v8)
  {
    reloadItems = [(HFStaticItemProvider *)v8 reloadItems];
    [reloadItems finishWithNoResult];

    objc_storeStrong(&v8->_cameraProfile, profile);
  }

  return v8;
}

- (HUCameraCloudStorageItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCameraProfile_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraCloudStorageItemProvider.m" lineNumber:94 description:{@"%s is unavailable; use %@ instead", "-[HUCameraCloudStorageItemProvider init]", v5}];

  return 0;
}

@end