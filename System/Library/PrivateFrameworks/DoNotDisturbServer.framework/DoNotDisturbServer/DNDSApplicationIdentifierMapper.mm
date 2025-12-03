@interface DNDSApplicationIdentifierMapper
- (id)_iOSBundleIDForMacOSBundleID:(id)d;
- (id)_macOSBundleIDForiOSBundleID:(id)d;
- (id)applicationIdentifierForFileWithSourceApplicationIdentifier:(id)identifier;
- (id)applicationIdentifierForTargetPlatform:(unint64_t)platform withSourceApplicationIdentifier:(id)identifier;
@end

@implementation DNDSApplicationIdentifierMapper

- (id)applicationIdentifierForTargetPlatform:(unint64_t)platform withSourceApplicationIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  platformCopy = [identifierCopy platform];
  bundleID = [identifierCopy bundleID];

  v9 = bundleID;
  v10 = v9;
  if (platform == 2 && platformCopy == 1)
  {
    v11 = [(DNDSApplicationIdentifierMapper *)self _macOSBundleIDForiOSBundleID:v9];
    v12 = v11;
    if (v11)
    {
      v13 = v11;

      platformCopy = 2;
LABEL_17:

      goto LABEL_18;
    }

    platformCopy = 1;
    goto LABEL_16;
  }

  if (platform == 1 && platformCopy == 2)
  {
    v14 = [(DNDSApplicationIdentifierMapper *)self _iOSBundleIDForMacOSBundleID:v9];
    v12 = v14;
    if (v14)
    {
      v13 = v14;

      platformCopy = 1;
      goto LABEL_17;
    }

    platformCopy = 2;
LABEL_16:
    v13 = v10;
    goto LABEL_17;
  }

  if (platformCopy == platform)
  {
    v13 = v9;
    platformCopy = platform;
  }

  else
  {
    v15 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = NSStringFromDNDPlatform();
      v18 = NSStringFromDNDPlatform();
      v22 = 138478339;
      v23 = v10;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Cannot map %{private}@ from %{public}@ to %{public}@ on this device", &v22, 0x20u);
    }

    v13 = v10;
  }

LABEL_18:
  v19 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v13 platform:platformCopy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)applicationIdentifierForFileWithSourceApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(DNDSApplicationIdentifierMapper *)self applicationIdentifierForTargetPlatform:DNDPlatformForCurrentDevice() withSourceApplicationIdentifier:identifierCopy];

  return v5;
}

- (id)_iOSBundleIDForMacOSBundleID:(id)d
{
  v3 = MEMORY[0x277CF9650];
  dCopy = d;
  sharedCategories = [v3 sharedCategories];
  v6 = [sharedCategories bundleIDForPlatform:*MEMORY[0x277CF9640] fromBundleID:dCopy platform:*MEMORY[0x277CF9648]];

  return v6;
}

- (id)_macOSBundleIDForiOSBundleID:(id)d
{
  v3 = MEMORY[0x277CF9650];
  dCopy = d;
  sharedCategories = [v3 sharedCategories];
  v6 = [sharedCategories bundleIDForPlatform:*MEMORY[0x277CF9648] fromBundleID:dCopy platform:*MEMORY[0x277CF9640]];

  return v6;
}

@end