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
  v2 = [a1 providerDomain];

  if (v2)
  {
    v3 = [a1 providerDomain];
    v4 = [DOCDocumentSource iconForFileProvider:v3 size:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isiCloudDriveDomain
{
  v1 = [a1 providerDomain];
  v2 = [v1 isiCloudDriveProvider];

  return v2;
}

- (uint64_t)isLocalStorageDomain
{
  v1 = *MEMORY[0x1E699A390];
  v2 = [a1 providerDomain];
  v3 = [v2 identifier];
  v4 = [v1 isEqualToString:v3];

  return v4;
}

- (id)localizedTitle
{
  v1 = [a1 providerDomain];
  v2 = DOCLocalizedDisplayName();

  return v2;
}

- (id)localizedSubtitle
{
  v1 = [a1 fpItem];
  v2 = [v1 displayName];

  return v2;
}

- (BOOL)isDefaultFolder
{
  v1 = [a1 fpItem];
  v2 = [v1 folderType] == 4;

  return v2;
}

@end