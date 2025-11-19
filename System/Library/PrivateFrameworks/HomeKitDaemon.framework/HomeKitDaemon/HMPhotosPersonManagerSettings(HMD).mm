@interface HMPhotosPersonManagerSettings(HMD)
- (id)createHMIExternalPersonManagerSettings;
@end

@implementation HMPhotosPersonManagerSettings(HMD)

- (id)createHMIExternalPersonManagerSettings
{
  v2 = objc_alloc_init(MEMORY[0x277D14DA0]);
  [v2 setImportingFromPhotoLibraryEnabled:{objc_msgSend(a1, "isImportingFromPhotoLibraryEnabled")}];
  [v2 setSharingFaceClassificationsEnabled:{objc_msgSend(a1, "isSharingFaceClassificationsEnabled")}];
  v3 = [v2 copy];

  return v3;
}

@end