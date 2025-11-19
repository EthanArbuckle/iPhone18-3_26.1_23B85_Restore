@interface HMIExternalPersonManagerSettings
- (BOOL)isEqual:(id)a3;
- (HMIExternalPersonManagerSettings)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIExternalPersonManagerSettings

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMIExternalPersonManagerSettings isImportingFromPhotoLibraryEnabled](self, "isImportingFromPhotoLibraryEnabled"), v7 == [v6 isImportingFromPhotoLibraryEnabled]))
  {
    v9 = [(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
    v8 = v9 ^ [v6 isSharingFaceClassificationsEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[HMIMutableExternalPersonManagerSettings allocWithZone:?]];
  [(HMIExternalPersonManagerSettings *)v4 setImportingFromPhotoLibraryEnabled:[(HMIExternalPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled]];
  [(HMIExternalPersonManagerSettings *)v4 setSharingFaceClassificationsEnabled:[(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[HMIExternalPersonManagerSettings isImportingFromPhotoLibraryEnabled](self forKey:{"isImportingFromPhotoLibraryEnabled"), @"HMPMS.ifple"}];
  [v4 encodeBool:-[HMIExternalPersonManagerSettings isSharingFaceClassificationsEnabled](self forKey:{"isSharingFaceClassificationsEnabled"), @"HMPMS.sfce"}];
}

- (HMIExternalPersonManagerSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  -[HMIExternalPersonManagerSettings setImportingFromPhotoLibraryEnabled:](v5, "setImportingFromPhotoLibraryEnabled:", [v4 decodeBoolForKey:@"HMPMS.ifple"]);
  v6 = [v4 decodeBoolForKey:@"HMPMS.sfce"];

  [(HMIExternalPersonManagerSettings *)v5 setSharingFaceClassificationsEnabled:v6];
  return v5;
}

- (NSArray)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIExternalPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Importing From Photo Library Enabled" value:v4];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Sharing Face Classifications Enabled" value:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

@end