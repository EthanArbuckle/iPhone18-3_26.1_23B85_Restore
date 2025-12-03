@interface DOCDownloadSettingsItem(UI_Extensions)
- (BOOL)isDefaultFolder;
- (id)localizedSubtitle;
- (id)localizedTitle;
- (id)providerIcon;
- (uint64_t)isLocalStorageDomain;
- (uint64_t)isiCloudDriveDomain;
@end

@implementation DOCDownloadSettingsItem(UI_Extensions)

- (id)providerIcon
{
  providerDomain = [self providerDomain];

  if (providerDomain)
  {
    providerDomain2 = [self providerDomain];
    v4 = [DOCDocumentSource iconForFileProvider:providerDomain2 size:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isiCloudDriveDomain
{
  providerDomain = [self providerDomain];
  isiCloudDriveProvider = [providerDomain isiCloudDriveProvider];

  return isiCloudDriveProvider;
}

- (uint64_t)isLocalStorageDomain
{
  v1 = *MEMORY[0x1E699A390];
  providerDomain = [self providerDomain];
  identifier = [providerDomain identifier];
  v4 = [v1 isEqualToString:identifier];

  return v4;
}

- (id)localizedTitle
{
  providerDomain = [self providerDomain];
  v2 = DOCLocalizedDisplayName();

  return v2;
}

- (id)localizedSubtitle
{
  fpItem = [self fpItem];
  displayName = [fpItem displayName];

  return displayName;
}

- (BOOL)isDefaultFolder
{
  fpItem = [self fpItem];
  v2 = [fpItem folderType] == 4;

  return v2;
}

@end