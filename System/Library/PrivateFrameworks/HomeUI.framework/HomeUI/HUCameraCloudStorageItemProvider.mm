@interface HUCameraCloudStorageItemProvider
- (HUCameraCloudStorageItemProvider)init;
- (HUCameraCloudStorageItemProvider)initWithCameraProfile:(id)a3;
@end

@implementation HUCameraCloudStorageItemProvider

- (HUCameraCloudStorageItemProvider)initWithCameraProfile:(id)a3
{
  v5 = a3;
  v6 = [[HUCameraEraseRecordingsItem alloc] initWithCameraProfile:v5];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{v6, 0}];
  v11.receiver = self;
  v11.super_class = HUCameraCloudStorageItemProvider;
  v8 = [(HFStaticItemProvider *)&v11 initWithItems:v7];

  if (v8)
  {
    v9 = [(HFStaticItemProvider *)v8 reloadItems];
    [v9 finishWithNoResult];

    objc_storeStrong(&v8->_cameraProfile, a3);
  }

  return v8;
}

- (HUCameraCloudStorageItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCameraProfile_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUCameraCloudStorageItemProvider.m" lineNumber:94 description:{@"%s is unavailable; use %@ instead", "-[HUCameraCloudStorageItemProvider init]", v5}];

  return 0;
}

@end