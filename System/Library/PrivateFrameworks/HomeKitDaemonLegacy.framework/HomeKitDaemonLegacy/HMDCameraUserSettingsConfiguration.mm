@interface HMDCameraUserSettingsConfiguration
- (HMDCameraUserSettingsConfiguration)initWithUser:(id)user;
@end

@implementation HMDCameraUserSettingsConfiguration

- (HMDCameraUserSettingsConfiguration)initWithUser:(id)user
{
  userCopy = user;
  v9.receiver = self;
  v9.super_class = HMDCameraUserSettingsConfiguration;
  v5 = [(HMDCameraUserSettingsConfiguration *)&v9 init];
  if (v5)
  {
    photosPersonManagerSettings = [userCopy photosPersonManagerSettings];
    v5->_sharingFaceClassificationsEnabled = [photosPersonManagerSettings isSharingFaceClassificationsEnabled];

    photosPersonManagerSettings2 = [userCopy photosPersonManagerSettings];
    v5->_importingFromPhotoLibraryEnabled = [photosPersonManagerSettings2 isImportingFromPhotoLibraryEnabled];

    v5->_owner = [userCopy isOwner];
  }

  return v5;
}

@end