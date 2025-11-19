@interface NSURL
@end

@implementation NSURL

void __45__NSURL_BackingStores__dnds_rootDirectoryURL__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v6[0] = v1;
  v6[1] = @"Library";
  v6[2] = @"DoNotDisturb";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v3 = [v0 fileURLWithPathComponents:v2];
  v4 = dnds_rootDirectoryURL_directoryURL;
  dnds_rootDirectoryURL_directoryURL = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __57__NSURL_BackingStores__dnds_backingStoreRootDirectoryURL__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dnds_rootDirectoryURL];
  v1 = [v3 URLByAppendingPathComponent:@"DB"];
  v2 = dnds_backingStoreRootDirectoryURL_directoryURL;
  dnds_backingStoreRootDirectoryURL_directoryURL = v1;
}

void __62__NSURL_BackingStores__dnds_localAssertionBackingStoreFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"Assertions.json"];
  v5 = dnds_localAssertionBackingStoreFileURL_fileURL;
  dnds_localAssertionBackingStoreFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __56__NSURL_BackingStores__dnds_settingsBackingStoreFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"Settings.json"];
  v5 = dnds_settingsBackingStoreFileURL_fileURL;
  dnds_settingsBackingStoreFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __55__NSURL_BackingStores__dnds_metricsBackingStoreFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"Metrics.json"];
  v5 = dnds_metricsBackingStoreFileURL_fileURL;
  dnds_metricsBackingStoreFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __50__NSURL_BackingStores__dnds_legacySettingsFileURL__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"BulletinBoard";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"BehaviorOverrides.plist"];
  v5 = dnds_legacySettingsFileURL_fileURL;
  dnds_legacySettingsFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __68__NSURL_BackingStores__dnds_locationAssertionUntilExitRegionFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"UntilExitRegion.json"];
  v5 = dnds_locationAssertionUntilExitRegionFileURL_fileURL;
  dnds_locationAssertionUntilExitRegionFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __67__NSURL_BackingStores__dnds_locationAssertionExplicitRegionFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"ExplicitRegion.json"];
  v5 = dnds_locationAssertionExplicitRegionFileURL_fileURL;
  dnds_locationAssertionExplicitRegionFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __66__NSURL_BackingStores__dnds_modeConfigurationsBackingStoreFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"ModeConfigurations.json"];
  v5 = dnds_modeConfigurationsBackingStoreFileURL_fileURL;
  dnds_modeConfigurationsBackingStoreFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __72__NSURL_BackingStores__dnds_modeConfigurationsSecureBackingStoreFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"ModeConfigurationsSecure.json"];
  v5 = dnds_modeConfigurationsSecureBackingStoreFileURL_fileURL;
  dnds_modeConfigurationsSecureBackingStoreFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __67__NSURL_BackingStores__dnds_globalConfigurationBackingStoreFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"GlobalConfiguration.json"];
  v5 = dnds_globalConfigurationBackingStoreFileURL_fileURL;
  dnds_globalConfigurationBackingStoreFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __69__NSURL_BackingStores__dnds_placeholderModesLocalBackingStoreFileURL__block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSSystemRootDirectory();
  v7[0] = v1;
  v7[1] = @"System";
  v7[2] = @"Library";
  v7[3] = @"DoNotDisturb";
  v7[4] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"PlaceholderModes.json"];
  v5 = dnds_placeholderModesLocalBackingStoreFileURL_fileURL;
  dnds_placeholderModesLocalBackingStoreFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __54__NSURL_BackingStores__dnds_syncEngineMetadataFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"SyncEngineMetadata.plist"];
  v5 = dnds_syncEngineMetadataFileURL_fileURL;
  dnds_syncEngineMetadataFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __56__NSURL_BackingStores__dnds_syncEngineLastChanceFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"SyncEngineLastChance.plist"];
  v5 = dnds_syncEngineLastChanceFileURL_fileURL;
  dnds_syncEngineLastChanceFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __57__NSURL_BackingStores__dnds_idsSyncEngineMetadataFileURL__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v7[0] = v1;
  v7[1] = @"Library";
  v7[2] = @"DoNotDisturb";
  v7[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"IDSSyncEngineMetadata.plist"];
  v5 = dnds_idsSyncEngineMetadataFileURL_fileURL;
  dnds_idsSyncEngineMetadataFileURL_fileURL = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end