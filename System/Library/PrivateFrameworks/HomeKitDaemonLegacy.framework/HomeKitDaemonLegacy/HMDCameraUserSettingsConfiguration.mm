@interface HMDCameraUserSettingsConfiguration
- (HMDCameraUserSettingsConfiguration)initWithUser:(id)a3;
@end

@implementation HMDCameraUserSettingsConfiguration

- (HMDCameraUserSettingsConfiguration)initWithUser:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCameraUserSettingsConfiguration;
  v5 = [(HMDCameraUserSettingsConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 photosPersonManagerSettings];
    v5->_sharingFaceClassificationsEnabled = [v6 isSharingFaceClassificationsEnabled];

    v7 = [v4 photosPersonManagerSettings];
    v5->_importingFromPhotoLibraryEnabled = [v7 isImportingFromPhotoLibraryEnabled];

    v5->_owner = [v4 isOwner];
  }

  return v5;
}

@end