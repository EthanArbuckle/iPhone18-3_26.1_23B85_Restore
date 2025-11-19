@interface DDSMAAutoAssetManagerDataSource
- (id)supportedAutoAssetSpecifiers;
- (int64_t)linguisticAssetCompatabilityVersion;
@end

@implementation DDSMAAutoAssetManagerDataSource

- (int64_t)linguisticAssetCompatabilityVersion
{
  if (linguisticAssetCompatabilityVersion_onceToken != -1)
  {
    [DDSMAAutoAssetManagerDataSource linguisticAssetCompatabilityVersion];
  }

  return linguisticAssetCompatabilityVersion_supportedCompatibilityVersion;
}

void __70__DDSMAAutoAssetManagerDataSource_linguisticAssetCompatabilityVersion__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  linguisticAssetCompatabilityVersion_supportedCompatibilityVersion = DDSReadCompatabilityVersionFromFile(@"Info.plist");
  v0 = DefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 134217984;
    v3 = linguisticAssetCompatabilityVersion_supportedCompatibilityVersion;
    _os_log_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEFAULT, "Supported compatibility version for LinguisticData assets = %ld", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (id)supportedAutoAssetSpecifiers
{
  if (supportedAutoAssetSpecifiers_onceToken != -1)
  {
    [DDSMAAutoAssetManagerDataSource supportedAutoAssetSpecifiers];
  }

  v3 = supportedAutoAssetSpecifiers_supportedAutoAssetSpecifiers;

  return v3;
}

void __63__DDSMAAutoAssetManagerDataSource_supportedAutoAssetSpecifiers__block_invoke()
{
  v0 = DDSReadSupportedPriorityAssetSpecifiersFromFile(@"Info.plist");
  v1 = supportedAutoAssetSpecifiers_supportedAutoAssetSpecifiers;
  supportedAutoAssetSpecifiers_supportedAutoAssetSpecifiers = v0;

  v2 = DefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__DDSMAAutoAssetManagerDataSource_supportedAutoAssetSpecifiers__block_invoke_cold_1(v2);
  }
}

void __63__DDSMAAutoAssetManagerDataSource_supportedAutoAssetSpecifiers__block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = supportedAutoAssetSpecifiers_supportedAutoAssetSpecifiers;
  _os_log_debug_impl(&dword_1DF7C6000, log, OS_LOG_TYPE_DEBUG, "Supported auto asset specifiers: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end