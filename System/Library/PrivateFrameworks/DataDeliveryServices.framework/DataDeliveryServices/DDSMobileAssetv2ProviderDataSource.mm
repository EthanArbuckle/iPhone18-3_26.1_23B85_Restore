@interface DDSMobileAssetv2ProviderDataSource
- (int64_t)linguisticAssetCompatabilityVersion;
- (int64_t)mecabraDictionaryRapidUpdatesAssetCompatabilityVersion;
@end

@implementation DDSMobileAssetv2ProviderDataSource

- (int64_t)linguisticAssetCompatabilityVersion
{
  if (linguisticAssetCompatabilityVersion_onceToken_0 != -1)
  {
    [DDSMobileAssetv2ProviderDataSource linguisticAssetCompatabilityVersion];
  }

  return linguisticAssetCompatabilityVersion_supportedCompatibilityVersion_0;
}

void __73__DDSMobileAssetv2ProviderDataSource_linguisticAssetCompatabilityVersion__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  linguisticAssetCompatabilityVersion_supportedCompatibilityVersion_0 = DDSReadCompatabilityVersionFromFile(@"Info.plist");
  v0 = DefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 134217984;
    v3 = linguisticAssetCompatabilityVersion_supportedCompatibilityVersion_0;
    _os_log_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEFAULT, "Supported compatibility version for LinguisticData assets = %ld", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (int64_t)mecabraDictionaryRapidUpdatesAssetCompatabilityVersion
{
  if (mecabraDictionaryRapidUpdatesAssetCompatabilityVersion_onceToken != -1)
  {
    [DDSMobileAssetv2ProviderDataSource mecabraDictionaryRapidUpdatesAssetCompatabilityVersion];
  }

  return mecabraDictionaryRapidUpdatesAssetCompatabilityVersion_mecabraAssetsCompatibilityVersion;
}

void __92__DDSMobileAssetv2ProviderDataSource_mecabraDictionaryRapidUpdatesAssetCompatabilityVersion__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  mecabraDictionaryRapidUpdatesAssetCompatabilityVersion_mecabraAssetsCompatibilityVersion = DDSReadCompatabilityVersionFromFile(@"MecabraDictionaryRapidUpdates_Info.plist");
  v0 = DefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 134217984;
    v3 = mecabraDictionaryRapidUpdatesAssetCompatabilityVersion_mecabraAssetsCompatibilityVersion;
    _os_log_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEFAULT, "Supported compatibility version for MecabraDictionaryRapidUpdates assets = %ld", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

@end