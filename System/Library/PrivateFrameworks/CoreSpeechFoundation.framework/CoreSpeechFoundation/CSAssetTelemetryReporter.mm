@interface CSAssetTelemetryReporter
+ (id)sharedReporter;
- (void)reportAssetMapFailTelemetryForError:(id)error assetSpecifier:(id)specifier assetConfigVersion:(id)version;
- (void)reportAssetMapLatencyTelemetry:(double)telemetry assetSpecifier:(id)specifier assetConfigVersion:(id)version;
- (void)submitSecureAssetMapFailDiagnosticReportForError:(id)error;
@end

@implementation CSAssetTelemetryReporter

- (void)submitSecureAssetMapFailDiagnosticReportForError:(id)error
{
  v16[3] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];

    if (domain)
    {
      userInfo = [v4 userInfo];
      v7 = userInfo;
      v8 = MEMORY[0x1E695E0F8];
      if (userInfo)
      {
        v8 = userInfo;
      }

      v9 = v8;

      v10 = +[CSDiagnosticReporter sharedInstance];
      v15[0] = @"ErrorCode";
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "code")}];
      v16[0] = v11;
      v15[1] = @"ErrorDomain";
      domain2 = [v4 domain];
      v15[2] = @"UserInfo";
      v16[1] = domain2;
      v16[2] = v9;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

      [v10 submitSecureAssetIssueReport:@"kCSSecureAssetMappingFailed" withContext:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reportAssetMapLatencyTelemetry:(double)telemetry assetSpecifier:(id)specifier assetConfigVersion:(id)version
{
  specifierCopy = specifier;
  versionCopy = version;
  v9 = versionCopy;
  if (telemetry >= 0.000000001 && specifierCopy != 0 && versionCopy != 0)
  {
    v12 = specifierCopy;
    v13 = v9;
    AnalyticsSendEventLazy();
  }
}

id __93__CSAssetTelemetryReporter_reportAssetMapLatencyTelemetry_assetSpecifier_assetConfigVersion___block_invoke(double *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 4);
    v4 = *(a1 + 5);
    v5 = *(a1 + 6);
    v10 = 136315906;
    v11 = "[CSAssetTelemetryReporter reportAssetMapLatencyTelemetry:assetSpecifier:assetConfigVersion:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Generated core analytics payload for assetName: %@, assetConfigVersion: %@, asset map latency:%f", &v10, 0x2Au);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:*(a1 + 4) forKey:@"assetSpecifier"];
  [v6 setObject:*(a1 + 5) forKey:@"assetConfigVersion"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a1[6]];
  [v6 setObject:v7 forKey:@"latency"];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)reportAssetMapFailTelemetryForError:(id)error assetSpecifier:(id)specifier assetConfigVersion:(id)version
{
  errorCopy = error;
  specifierCopy = specifier;
  versionCopy = version;
  v10 = versionCopy;
  if (specifierCopy)
  {
    if (versionCopy)
    {
      domain = [errorCopy domain];

      if (domain)
      {
        v12 = specifierCopy;
        v13 = v10;
        v14 = errorCopy;
        AnalyticsSendEventLazy();
      }
    }
  }
}

id __98__CSAssetTelemetryReporter_reportAssetMapFailTelemetryForError_assetSpecifier_assetConfigVersion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = v2;
    v7 = [v5 domain];
    v8 = [*(a1 + 48) code];
    v14 = 136316162;
    v15 = "[CSAssetTelemetryReporter reportAssetMapFailTelemetryForError:assetSpecifier:assetConfigVersion:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v7;
    v22 = 2048;
    v23 = v8;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Generated core analytics payload for assetName: %@, assetConfigVersion: %@, errorDomain:%@ errorCode: %ld", &v14, 0x34u);
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:*(a1 + 32) forKey:@"assetSpecifier"];
  [v9 setObject:*(a1 + 40) forKey:@"assetConfigVersion"];
  v10 = [*(a1 + 48) domain];
  [v9 setObject:v10 forKey:@"errorDomain"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "code")}];
  [v9 setObject:v11 forKey:@"errorCode"];

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)sharedReporter
{
  if (sharedReporter_onceToken != -1)
  {
    dispatch_once(&sharedReporter_onceToken, &__block_literal_global_7149);
  }

  v3 = sharedReporter_sender;

  return v3;
}

uint64_t __42__CSAssetTelemetryReporter_sharedReporter__block_invoke()
{
  sharedReporter_sender = objc_alloc_init(CSAssetTelemetryReporter);

  return MEMORY[0x1EEE66BB8]();
}

@end