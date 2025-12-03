@interface CRVehicleVideoSettings
- (BOOL)diagnosticsEnabled;
- (CRSubtitleSettings)subtitleSettings;
- (CRVehicleVideoSettings)initWithVehicleIdentifier:(id)identifier;
- (void)fetchAnalyticsDataWithCompletion:(id)completion;
- (void)fetchLicensesTextWithCompletion:(id)completion;
- (void)setDiagnosticsEnabled:(BOOL)enabled;
- (void)setSubtitleSettings:(id)settings;
@end

@implementation CRVehicleVideoSettings

- (CRVehicleVideoSettings)initWithVehicleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = CRVehicleVideoSettings;
  v6 = [(CRVehicleVideoSettings *)&v10 init];
  if (v6)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CRVehicleVideoSettings *)v6 initWithVehicleIdentifier:v7];
    }

    objc_storeStrong(&v6->_vehicleID, identifier);
    v8 = objc_alloc_init(CRCarKitServiceClient);
    [(CRVehicleVideoSettings *)v6 setServiceClient:v8];
  }

  return v6;
}

- (CRSubtitleSettings)subtitleSettings
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CRVehicleVideoSettings subtitleSettings];
  }

  serviceClient = [(CRVehicleVideoSettings *)self serviceClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CRVehicleVideoSettings_subtitleSettings__block_invoke;
  v7[3] = &unk_1E82FC0F8;
  v7[4] = self;
  v7[5] = &v8;
  [serviceClient performSynchronousServiceBlock:v7 errorHandler:&__block_literal_global_14];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__CRVehicleVideoSettings_subtitleSettings__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 vehicleID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CRVehicleVideoSettings_subtitleSettings__block_invoke_2;
  v6[3] = &unk_1E82FC7F0;
  v6[4] = *(a1 + 40);
  [v4 videoSubtitleSettingsForVehicleIdentifier:v5 reply:v6];
}

void __42__CRVehicleVideoSettings_subtitleSettings__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(*(a1 + 32) + 8) + 40);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "subtitleSettings: %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __42__CRVehicleVideoSettings_subtitleSettings__block_invoke_2_cold_1();
    }
  }
}

void __42__CRVehicleVideoSettings_subtitleSettings__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__CRVehicleVideoSettings_subtitleSettings__block_invoke_21_cold_1();
  }
}

- (void)setSubtitleSettings:(id)settings
{
  v13 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = settingsCopy;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "setSubtitleSettings: %{public}@", buf, 0xCu);
  }

  serviceClient = [(CRVehicleVideoSettings *)self serviceClient];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CRVehicleVideoSettings_setSubtitleSettings___block_invoke;
  v8[3] = &unk_1E82FC818;
  v9 = settingsCopy;
  selfCopy = self;
  v7 = settingsCopy;
  [serviceClient performSynchronousServiceBlock:v8 errorHandler:&__block_literal_global_28_0];
}

void __46__CRVehicleVideoSettings_setSubtitleSettings___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 vehicleID];
  [v4 setVideoSubtitleSettings:v2 forVehicleIdentifier:v5 reply:&__block_literal_global_25_0];
}

void __46__CRVehicleVideoSettings_setSubtitleSettings___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__CRVehicleVideoSettings_setSubtitleSettings___block_invoke_2_cold_2();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __46__CRVehicleVideoSettings_setSubtitleSettings___block_invoke_2_cold_1();
  }
}

void __46__CRVehicleVideoSettings_setSubtitleSettings___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__CRVehicleVideoSettings_setSubtitleSettings___block_invoke_2_cold_1();
  }
}

- (BOOL)diagnosticsEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CRVehicleVideoSettings diagnosticsEnabled];
  }

  serviceClient = [(CRVehicleVideoSettings *)self serviceClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CRVehicleVideoSettings_diagnosticsEnabled__block_invoke;
  v7[3] = &unk_1E82FC0F8;
  v7[4] = self;
  v7[5] = &v8;
  [serviceClient performSynchronousServiceBlock:v7 errorHandler:&__block_literal_global_38];

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __44__CRVehicleVideoSettings_diagnosticsEnabled__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 vehicleID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CRVehicleVideoSettings_diagnosticsEnabled__block_invoke_2;
  v6[3] = &unk_1E82FC030;
  v6[4] = *(a1 + 40);
  [v4 videoDiagnosticsEnabledForVehicleIdentifier:v5 reply:v6];
}

void __44__CRVehicleVideoSettings_diagnosticsEnabled__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_INFO, "diagnosticsEnabled: %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__CRVehicleVideoSettings_diagnosticsEnabled__block_invoke_2_cold_1();
    }
  }
}

void __44__CRVehicleVideoSettings_diagnosticsEnabled__block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__CRVehicleVideoSettings_diagnosticsEnabled__block_invoke_36_cold_1();
  }
}

- (void)setDiagnosticsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (enabledCopy)
    {
      v6 = @"YES";
    }

    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "setDiagnosticsEnabled: %{public}@", buf, 0xCu);
  }

  serviceClient = [(CRVehicleVideoSettings *)self serviceClient];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CRVehicleVideoSettings_setDiagnosticsEnabled___block_invoke;
  v8[3] = &unk_1E82FC840;
  v9 = enabledCopy;
  v8[4] = self;
  [serviceClient performSynchronousServiceBlock:v8 errorHandler:&__block_literal_global_43_1];
}

void __48__CRVehicleVideoSettings_setDiagnosticsEnabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 vehicleID];
  [v4 setVideoDiagnosticsEnabled:v2 forVehicleIdentifier:v5 reply:&__block_literal_global_40_0];
}

void __48__CRVehicleVideoSettings_setDiagnosticsEnabled___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __48__CRVehicleVideoSettings_setDiagnosticsEnabled___block_invoke_2_cold_2();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __48__CRVehicleVideoSettings_setDiagnosticsEnabled___block_invoke_2_cold_1();
  }
}

void __48__CRVehicleVideoSettings_setDiagnosticsEnabled___block_invoke_41(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__CRVehicleVideoSettings_setDiagnosticsEnabled___block_invoke_2_cold_1();
  }
}

- (void)fetchAnalyticsDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CRVehicleVideoSettings fetchAnalyticsDataWithCompletion:];
  }

  serviceClient = [(CRVehicleVideoSettings *)self serviceClient];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CRVehicleVideoSettings_fetchAnalyticsDataWithCompletion___block_invoke;
  v8[3] = &unk_1E82FC170;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [serviceClient performServiceBlock:v8 errorHandler:&__block_literal_global_47];
}

void __59__CRVehicleVideoSettings_fetchAnalyticsDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 vehicleID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CRVehicleVideoSettings_fetchAnalyticsDataWithCompletion___block_invoke_2;
  v6[3] = &unk_1E82FC148;
  v7 = *(a1 + 40);
  [v4 videoAnalyticsForVehicleIdentifier:v5 reply:v6];
}

void __59__CRVehicleVideoSettings_fetchAnalyticsDataWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CarGeneralLogging();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "fetched analytics", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __59__CRVehicleVideoSettings_fetchAnalyticsDataWithCompletion___block_invoke_2_cold_1();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

void __59__CRVehicleVideoSettings_fetchAnalyticsDataWithCompletion___block_invoke_45(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__CRVehicleVideoSettings_fetchAnalyticsDataWithCompletion___block_invoke_45_cold_1();
  }
}

- (void)fetchLicensesTextWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CRVehicleVideoSettings fetchLicensesTextWithCompletion:];
  }

  serviceClient = [(CRVehicleVideoSettings *)self serviceClient];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CRVehicleVideoSettings_fetchLicensesTextWithCompletion___block_invoke;
  v8[3] = &unk_1E82FC170;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [serviceClient performServiceBlock:v8 errorHandler:&__block_literal_global_51_0];
}

void __58__CRVehicleVideoSettings_fetchLicensesTextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 vehicleID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CRVehicleVideoSettings_fetchLicensesTextWithCompletion___block_invoke_2;
  v6[3] = &unk_1E82FC868;
  v7 = *(a1 + 40);
  [v4 videoLicensesTextForVehicleIdentifier:v5 reply:v6];
}

void __58__CRVehicleVideoSettings_fetchLicensesTextWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CarGeneralLogging();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "fetched licensesText", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __58__CRVehicleVideoSettings_fetchLicensesTextWithCompletion___block_invoke_2_cold_1();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

void __58__CRVehicleVideoSettings_fetchLicensesTextWithCompletion___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__CRVehicleVideoSettings_fetchLicensesTextWithCompletion___block_invoke_49_cold_1();
  }
}

- (void)initWithVehicleIdentifier:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 vehicleID];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_DEBUG, "CRVehicleVideoSettings init with vehicleID: %@", v4, 0xCu);
}

@end