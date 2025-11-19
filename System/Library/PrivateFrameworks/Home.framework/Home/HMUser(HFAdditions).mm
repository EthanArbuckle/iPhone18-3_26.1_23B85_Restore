@interface HMUser(HFAdditions)
- (uint64_t)hf_getPhotosLibrarySettingsStatus;
- (uint64_t)hf_isImportingPhotosLibraryEnabledForFaceRecognition;
- (uint64_t)hf_isSharingPhotosLibraryEnabledForFaceRecognition;
@end

@implementation HMUser(HFAdditions)

- (uint64_t)hf_isImportingPhotosLibraryEnabledForFaceRecognition
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 photosPersonManagerSettings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isImportingFromPhotoLibraryEnabled];
  }

  else
  {
    v5 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = [a1 name];
      v9 = 138412802;
      v10 = a1;
      v11 = 2080;
      v12 = "[HMUser(HFAdditions) hf_isImportingPhotosLibraryEnabledForFaceRecognition]";
      v13 = 2112;
      v14 = v8;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@ (%s): externalPersonManagerSettings is nil for user %@", &v9, 0x20u);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)hf_isSharingPhotosLibraryEnabledForFaceRecognition
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 photosPersonManagerSettings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isSharingFaceClassificationsEnabled];
  }

  else
  {
    v5 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = [a1 name];
      v9 = 138412802;
      v10 = a1;
      v11 = 2080;
      v12 = "[HMUser(HFAdditions) hf_isSharingPhotosLibraryEnabledForFaceRecognition]";
      v13 = 2112;
      v14 = v8;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@ (%s): externalPersonManagerSettings is nil for user %@", &v9, 0x20u);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)hf_getPhotosLibrarySettingsStatus
{
  v2 = [a1 photosPersonManagerSettings];
  v3 = [v2 isImportingFromPhotoLibraryEnabled];

  v4 = [a1 photosPersonManagerSettings];
  LODWORD(v2) = [v4 isSharingFaceClassificationsEnabled];

  v5 = 2;
  if (v2)
  {
    v5 = 3;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

@end