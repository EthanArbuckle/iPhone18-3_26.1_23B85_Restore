@interface NSURL(BackingStores)
+ (id)dnds_assertionSyncMetadataFileURL;
+ (id)dnds_backingStoreRootDirectoryURL;
+ (id)dnds_globalConfigurationBackingStoreFileURL;
+ (id)dnds_idsSyncEngineMetadataFileURL;
+ (id)dnds_legacySettingsFileURL;
+ (id)dnds_localAssertionBackingStoreFileURL;
+ (id)dnds_locationAssertionExplicitRegionFileURL;
+ (id)dnds_locationAssertionUntilExitRegionFileURL;
+ (id)dnds_meDeviceStoreFileURL;
+ (id)dnds_metricsBackingStoreFileURL;
+ (id)dnds_modeConfigurationsBackingStoreFileURL;
+ (id)dnds_modeConfigurationsSecureBackingStoreFileURL;
+ (id)dnds_placeholderModesLocalBackingStoreFileURL;
+ (id)dnds_rootDirectoryURL;
+ (id)dnds_settingsBackingStoreFileURL;
+ (id)dnds_syncEngineLastChanceFileURL;
+ (id)dnds_syncEngineMetadataFileURL;
@end

@implementation NSURL(BackingStores)

+ (id)dnds_rootDirectoryURL
{
  if (dnds_rootDirectoryURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_rootDirectoryURL];
  }

  v1 = dnds_rootDirectoryURL_directoryURL;

  return v1;
}

+ (id)dnds_backingStoreRootDirectoryURL
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NSURL_BackingStores__dnds_backingStoreRootDirectoryURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (dnds_backingStoreRootDirectoryURL_onceToken != -1)
  {
    dispatch_once(&dnds_backingStoreRootDirectoryURL_onceToken, block);
  }

  v1 = dnds_backingStoreRootDirectoryURL_directoryURL;

  return v1;
}

+ (id)dnds_localAssertionBackingStoreFileURL
{
  if (dnds_localAssertionBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_localAssertionBackingStoreFileURL];
  }

  v1 = dnds_localAssertionBackingStoreFileURL_fileURL;

  return v1;
}

+ (id)dnds_settingsBackingStoreFileURL
{
  if (dnds_settingsBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_settingsBackingStoreFileURL];
  }

  v1 = dnds_settingsBackingStoreFileURL_fileURL;

  return v1;
}

+ (id)dnds_metricsBackingStoreFileURL
{
  if (dnds_metricsBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_metricsBackingStoreFileURL];
  }

  v1 = dnds_metricsBackingStoreFileURL_fileURL;

  return v1;
}

+ (id)dnds_legacySettingsFileURL
{
  if (dnds_legacySettingsFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_legacySettingsFileURL];
  }

  v1 = dnds_legacySettingsFileURL_fileURL;

  return v1;
}

+ (id)dnds_locationAssertionUntilExitRegionFileURL
{
  if (dnds_locationAssertionUntilExitRegionFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_locationAssertionUntilExitRegionFileURL];
  }

  v1 = dnds_locationAssertionUntilExitRegionFileURL_fileURL;

  return v1;
}

+ (id)dnds_locationAssertionExplicitRegionFileURL
{
  if (dnds_locationAssertionExplicitRegionFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_locationAssertionExplicitRegionFileURL];
  }

  v1 = dnds_locationAssertionExplicitRegionFileURL_fileURL;

  return v1;
}

+ (id)dnds_modeConfigurationsBackingStoreFileURL
{
  if (dnds_modeConfigurationsBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_modeConfigurationsBackingStoreFileURL];
  }

  v1 = dnds_modeConfigurationsBackingStoreFileURL_fileURL;

  return v1;
}

+ (id)dnds_modeConfigurationsSecureBackingStoreFileURL
{
  if (dnds_modeConfigurationsSecureBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_modeConfigurationsSecureBackingStoreFileURL];
  }

  v1 = dnds_modeConfigurationsSecureBackingStoreFileURL_fileURL;

  return v1;
}

+ (id)dnds_globalConfigurationBackingStoreFileURL
{
  if (dnds_globalConfigurationBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_globalConfigurationBackingStoreFileURL];
  }

  v1 = dnds_globalConfigurationBackingStoreFileURL_fileURL;

  return v1;
}

+ (id)dnds_placeholderModesLocalBackingStoreFileURL
{
  if (dnds_placeholderModesLocalBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_placeholderModesLocalBackingStoreFileURL];
  }

  v1 = dnds_placeholderModesLocalBackingStoreFileURL_fileURL;

  return v1;
}

+ (id)dnds_syncEngineMetadataFileURL
{
  if (dnds_syncEngineMetadataFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_syncEngineMetadataFileURL];
  }

  v1 = dnds_syncEngineMetadataFileURL_fileURL;

  return v1;
}

+ (id)dnds_syncEngineLastChanceFileURL
{
  if (dnds_syncEngineLastChanceFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_syncEngineLastChanceFileURL];
  }

  v1 = dnds_syncEngineLastChanceFileURL_fileURL;

  return v1;
}

+ (id)dnds_idsSyncEngineMetadataFileURL
{
  if (dnds_idsSyncEngineMetadataFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_idsSyncEngineMetadataFileURL];
  }

  v1 = dnds_idsSyncEngineMetadataFileURL_fileURL;

  return v1;
}

+ (id)dnds_assertionSyncMetadataFileURL
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

  v4 = [v3 URLByAppendingPathComponent:@"AssertionSyncMetadata.plist"];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)dnds_meDeviceStoreFileURL
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

  v4 = [v3 URLByAppendingPathComponent:@"MeDeviceStatus.json"];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end