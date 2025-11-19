@interface HMIMutableExternalPersonManagerSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMIMutableExternalPersonManagerSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMIExternalPersonManagerSettings allocWithZone:?]];
  [(HMIExternalPersonManagerSettings *)v4 setImportingFromPhotoLibraryEnabled:[(HMIExternalPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled]];
  [(HMIExternalPersonManagerSettings *)v4 setSharingFaceClassificationsEnabled:[(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled]];
  return v4;
}

@end