@interface DNDSApplicationIdentifierMapper
- (id)_iOSBundleIDForMacOSBundleID:(id)a3;
- (id)_macOSBundleIDForiOSBundleID:(id)a3;
- (id)applicationIdentifierForFileWithSourceApplicationIdentifier:(id)a3;
- (id)applicationIdentifierForTargetPlatform:(unint64_t)a3 withSourceApplicationIdentifier:(id)a4;
@end

@implementation DNDSApplicationIdentifierMapper

- (id)applicationIdentifierForTargetPlatform:(unint64_t)a3 withSourceApplicationIdentifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 platform];
  v8 = [v6 bundleID];

  v9 = v8;
  v10 = v9;
  if (a3 == 2 && v7 == 1)
  {
    v11 = [(DNDSApplicationIdentifierMapper *)self _macOSBundleIDForiOSBundleID:v9];
    v12 = v11;
    if (v11)
    {
      v13 = v11;

      v7 = 2;
LABEL_17:

      goto LABEL_18;
    }

    v7 = 1;
    goto LABEL_16;
  }

  if (a3 == 1 && v7 == 2)
  {
    v14 = [(DNDSApplicationIdentifierMapper *)self _iOSBundleIDForMacOSBundleID:v9];
    v12 = v14;
    if (v14)
    {
      v13 = v14;

      v7 = 1;
      goto LABEL_17;
    }

    v7 = 2;
LABEL_16:
    v13 = v10;
    goto LABEL_17;
  }

  if (v7 == a3)
  {
    v13 = v9;
    v7 = a3;
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
  v19 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v13 platform:v7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)applicationIdentifierForFileWithSourceApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DNDSApplicationIdentifierMapper *)self applicationIdentifierForTargetPlatform:DNDPlatformForCurrentDevice() withSourceApplicationIdentifier:v4];

  return v5;
}

- (id)_iOSBundleIDForMacOSBundleID:(id)a3
{
  v3 = MEMORY[0x277CF9650];
  v4 = a3;
  v5 = [v3 sharedCategories];
  v6 = [v5 bundleIDForPlatform:*MEMORY[0x277CF9640] fromBundleID:v4 platform:*MEMORY[0x277CF9648]];

  return v6;
}

- (id)_macOSBundleIDForiOSBundleID:(id)a3
{
  v3 = MEMORY[0x277CF9650];
  v4 = a3;
  v5 = [v3 sharedCategories];
  v6 = [v5 bundleIDForPlatform:*MEMORY[0x277CF9648] fromBundleID:v4 platform:*MEMORY[0x277CF9640]];

  return v6;
}

@end