@interface HMUser(HFAdditions)
- (uint64_t)hf_getPhotosLibrarySettingsStatus;
- (uint64_t)hf_isImportingPhotosLibraryEnabledForFaceRecognition;
- (uint64_t)hf_isSharingPhotosLibraryEnabledForFaceRecognition;
@end

@implementation HMUser(HFAdditions)

- (uint64_t)hf_isImportingPhotosLibraryEnabledForFaceRecognition
{
  v15 = *MEMORY[0x277D85DE8];
  photosPersonManagerSettings = [self photosPersonManagerSettings];
  v3 = photosPersonManagerSettings;
  if (photosPersonManagerSettings)
  {
    isImportingFromPhotoLibraryEnabled = [photosPersonManagerSettings isImportingFromPhotoLibraryEnabled];
  }

  else
  {
    v5 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      name = [self name];
      v9 = 138412802;
      selfCopy = self;
      v11 = 2080;
      v12 = "[HMUser(HFAdditions) hf_isImportingPhotosLibraryEnabledForFaceRecognition]";
      v13 = 2112;
      v14 = name;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@ (%s): externalPersonManagerSettings is nil for user %@", &v9, 0x20u);
    }

    isImportingFromPhotoLibraryEnabled = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return isImportingFromPhotoLibraryEnabled;
}

- (uint64_t)hf_isSharingPhotosLibraryEnabledForFaceRecognition
{
  v15 = *MEMORY[0x277D85DE8];
  photosPersonManagerSettings = [self photosPersonManagerSettings];
  v3 = photosPersonManagerSettings;
  if (photosPersonManagerSettings)
  {
    isSharingFaceClassificationsEnabled = [photosPersonManagerSettings isSharingFaceClassificationsEnabled];
  }

  else
  {
    v5 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      name = [self name];
      v9 = 138412802;
      selfCopy = self;
      v11 = 2080;
      v12 = "[HMUser(HFAdditions) hf_isSharingPhotosLibraryEnabledForFaceRecognition]";
      v13 = 2112;
      v14 = name;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@ (%s): externalPersonManagerSettings is nil for user %@", &v9, 0x20u);
    }

    isSharingFaceClassificationsEnabled = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return isSharingFaceClassificationsEnabled;
}

- (uint64_t)hf_getPhotosLibrarySettingsStatus
{
  photosPersonManagerSettings = [self photosPersonManagerSettings];
  isImportingFromPhotoLibraryEnabled = [photosPersonManagerSettings isImportingFromPhotoLibraryEnabled];

  photosPersonManagerSettings2 = [self photosPersonManagerSettings];
  LODWORD(photosPersonManagerSettings) = [photosPersonManagerSettings2 isSharingFaceClassificationsEnabled];

  v5 = 2;
  if (photosPersonManagerSettings)
  {
    v5 = 3;
  }

  if (isImportingFromPhotoLibraryEnabled)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

@end