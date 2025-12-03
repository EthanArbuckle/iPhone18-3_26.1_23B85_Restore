@interface HMIMutableExternalPersonManagerSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMIMutableExternalPersonManagerSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMIExternalPersonManagerSettings allocWithZone:?]];
  [(HMIExternalPersonManagerSettings *)v4 setImportingFromPhotoLibraryEnabled:[(HMIExternalPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled]];
  [(HMIExternalPersonManagerSettings *)v4 setSharingFaceClassificationsEnabled:[(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled]];
  return v4;
}

@end