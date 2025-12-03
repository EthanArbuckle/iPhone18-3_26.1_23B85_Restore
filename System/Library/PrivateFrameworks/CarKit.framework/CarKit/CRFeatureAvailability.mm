@interface CRFeatureAvailability
- (BOOL)disablesCarPlayFeatures:(unint64_t)features forVehicleIdentifier:(id)identifier;
- (BOOL)isCarPlayAllowed;
- (BOOL)setCarPlayFeatures:(unint64_t)features disabled:(BOOL)disabled forVehicleIdentifier:(id)identifier;
- (CRFeatureAvailability)init;
- (id)supportedAirPlayFeaturesForVehicleIdentifier:(id)identifier;
- (unint64_t)deviceSupportedCarPlayFeatures;
- (unint64_t)supportedCarPlayFeaturesForSession:(id)session;
- (void)fetchSupportedAirPlayFeaturesForVehicleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CRFeatureAvailability

- (CRFeatureAvailability)init
{
  v5.receiver = self;
  v5.super_class = CRFeatureAvailability;
  v2 = [(CRFeatureAvailability *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRCarKitServiceClient);
    [(CRFeatureAvailability *)v2 setServiceClient:v3];
  }

  return v2;
}

- (BOOL)isCarPlayAllowed
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CRFeatureAvailability isCarPlayAllowed];
  }

  serviceClient = [(CRFeatureAvailability *)self serviceClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CRFeatureAvailability_isCarPlayAllowed__block_invoke;
  v6[3] = &unk_1E82FC008;
  v6[4] = &v7;
  [serviceClient performSynchronousServiceBlock:v6 errorHandler:&__block_literal_global_2];

  LOBYTE(serviceClient) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return serviceClient;
}

uint64_t __41__CRFeatureAvailability_isCarPlayAllowed__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CRFeatureAvailability_isCarPlayAllowed__block_invoke_2;
  v3[3] = &unk_1E82FBFE0;
  v3[4] = *(a1 + 32);
  return [a2 isCarPlayAllowedWithReply:v3];
}

void __41__CRFeatureAvailability_isCarPlayAllowed__block_invoke_2(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_INFO, "isCarPlayAllowed: %{public}@", &v5, 0xCu);
  }
}

void __41__CRFeatureAvailability_isCarPlayAllowed__block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __41__CRFeatureAvailability_isCarPlayAllowed__block_invoke_27_cold_1();
  }
}

- (unint64_t)deviceSupportedCarPlayFeatures
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CRFeatureAvailability deviceSupportedCarPlayFeatures];
  }

  serviceClient = [(CRFeatureAvailability *)self serviceClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CRFeatureAvailability_deviceSupportedCarPlayFeatures__block_invoke;
  v7[3] = &unk_1E82FC008;
  v7[4] = &v8;
  [serviceClient performSynchronousServiceBlock:v7 errorHandler:&__block_literal_global_32];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __55__CRFeatureAvailability_deviceSupportedCarPlayFeatures__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__CRFeatureAvailability_deviceSupportedCarPlayFeatures__block_invoke_2;
  v3[3] = &unk_1E82FC030;
  v3[4] = *(a1 + 32);
  return [a2 deviceSupportedCarPlayFeaturesWithReply:v3];
}

void __55__CRFeatureAvailability_deviceSupportedCarPlayFeatures__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue];
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      v8 = 134349056;
      v9 = v7;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_INFO, "deviceSupportedFeatures %{public}lu", &v8, 0xCu);
    }
  }

  else
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__CRFeatureAvailability_deviceSupportedCarPlayFeatures__block_invoke_2_cold_1();
    }
  }
}

void __55__CRFeatureAvailability_deviceSupportedCarPlayFeatures__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__CRFeatureAvailability_deviceSupportedCarPlayFeatures__block_invoke_2_cold_1();
  }
}

- (BOOL)disablesCarPlayFeatures:(unint64_t)features forVehicleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CRFeatureAvailability *)identifierCopy disablesCarPlayFeatures:features forVehicleIdentifier:v7];
  }

  serviceClient = [(CRFeatureAvailability *)self serviceClient];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__CRFeatureAvailability_disablesCarPlayFeatures_forVehicleIdentifier___block_invoke;
  v12[3] = &unk_1E82FC080;
  featuresCopy = features;
  v9 = identifierCopy;
  v13 = v9;
  v14 = &v16;
  [serviceClient performSynchronousServiceBlock:v12 errorHandler:&__block_literal_global_35];

  v10 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __70__CRFeatureAvailability_disablesCarPlayFeatures_forVehicleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __70__CRFeatureAvailability_disablesCarPlayFeatures_forVehicleIdentifier___block_invoke_2;
  v6 = &unk_1E82FC058;
  return [a2 disablesCarPlayFeatures:MEMORY[0x1E69E9820] forVehicleIdentifier:3221225472 reply:{__70__CRFeatureAvailability_disablesCarPlayFeatures_forVehicleIdentifier___block_invoke_2, &unk_1E82FC058, *(a1 + 40), *(a1 + 48)}];
}

void __70__CRFeatureAvailability_disablesCarPlayFeatures_forVehicleIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = 134349314;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_INFO, "disablesCarPlayFeatures %{public}lu: %@", &v9, 0x16u);
    }
  }

  else
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__CRFeatureAvailability_disablesCarPlayFeatures_forVehicleIdentifier___block_invoke_2_cold_1();
    }
  }
}

void __70__CRFeatureAvailability_disablesCarPlayFeatures_forVehicleIdentifier___block_invoke_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__CRFeatureAvailability_disablesCarPlayFeatures_forVehicleIdentifier___block_invoke_2_cold_1();
  }
}

- (BOOL)setCarPlayFeatures:(unint64_t)features disabled:(BOOL)disabled forVehicleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349314;
    *&buf[4] = features;
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "CRFeatureAvailability setCarPlayFeaturesDisabled: %{public}lu vehicleID: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 0;
  serviceClient = [(CRFeatureAvailability *)self serviceClient];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke;
  v15[3] = &unk_1E82FC0A8;
  featuresCopy = features;
  disabledCopy = disabled;
  v11 = identifierCopy;
  v16 = v11;
  v17 = buf;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke_36;
  v14[3] = &unk_1E82FC0D0;
  v14[4] = buf;
  [serviceClient performSynchronousServiceBlock:v15 errorHandler:v14];

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v12 & 1;
}

uint64_t __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke_2;
  v6[3] = &unk_1E82FBFE0;
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  return [a2 setCarPlayFeatures:v4 disabled:v2 forVehicleIdentifier:v3 reply:v6];
}

void __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = CarGeneralLogging();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke_2_cold_2();
    }

    v8 = 1;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke_2_cold_1();
    }

    v8 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
}

void __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CRFeatureAvailability_setCarPlayFeatures_disabled_forVehicleIdentifier___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

- (unint64_t)supportedCarPlayFeaturesForSession:(id)session
{
  sessionCopy = session;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CRFeatureAvailability supportedCarPlayFeaturesForSession:];
  }

  mFiCertificateSerialNumber = [sessionCopy MFiCertificateSerialNumber];
  serviceClient = [(CRFeatureAvailability *)self serviceClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__CRFeatureAvailability_supportedCarPlayFeaturesForSession___block_invoke;
  v11[3] = &unk_1E82FC0F8;
  v8 = mFiCertificateSerialNumber;
  v12 = v8;
  v13 = &v14;
  [serviceClient performSynchronousServiceBlock:v11 errorHandler:&__block_literal_global_39];

  v9 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __60__CRFeatureAvailability_supportedCarPlayFeaturesForSession___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__CRFeatureAvailability_supportedCarPlayFeaturesForSession___block_invoke_2;
  v4[3] = &unk_1E82FC030;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 supportedCarPlayFeaturesForCertificateSerial:v2 reply:v4];
}

void __60__CRFeatureAvailability_supportedCarPlayFeaturesForSession___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue];
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      v8 = 134349056;
      v9 = v7;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_INFO, "supportedFeaturesForSession: %{public}lu", &v8, 0xCu);
    }
  }

  else
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__CRFeatureAvailability_supportedCarPlayFeaturesForSession___block_invoke_2_cold_1();
    }
  }
}

void __60__CRFeatureAvailability_supportedCarPlayFeaturesForSession___block_invoke_37(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__CRFeatureAvailability_supportedCarPlayFeaturesForSession___block_invoke_37_cold_1();
  }
}

- (id)supportedAirPlayFeaturesForVehicleIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CRFeatureAvailability supportedAirPlayFeaturesForVehicleIdentifier:];
  }

  serviceClient = [(CRFeatureAvailability *)self serviceClient];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke;
  v12[3] = &unk_1E82FC0F8;
  v7 = identifierCopy;
  v13 = v7;
  v14 = &v15;
  [serviceClient performSynchronousServiceBlock:v12 errorHandler:&__block_literal_global_43];

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v16[5];
    *buf = 138543362;
    v22 = v9;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "supportedAirPlayFeaturesForVehicleIdentifier: %{public}@", buf, 0xCu);
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

uint64_t __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke_2;
  v4[3] = &unk_1E82FC120;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 supportedAirPlayFeaturesForVehicleIdentifier:v2 reply:v4];
}

void __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke_2_cold_1();
    }
  }
}

void __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke_41(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke_41_cold_1();
  }
}

- (void)fetchSupportedAirPlayFeaturesForVehicleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CRFeatureAvailability fetchSupportedAirPlayFeaturesForVehicleIdentifier:completion:];
  }

  serviceClient = [(CRFeatureAvailability *)self serviceClient];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__CRFeatureAvailability_fetchSupportedAirPlayFeaturesForVehicleIdentifier_completion___block_invoke;
  v14[3] = &unk_1E82FC170;
  v15 = identifierCopy;
  v16 = completionCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CRFeatureAvailability_fetchSupportedAirPlayFeaturesForVehicleIdentifier_completion___block_invoke_44;
  v12[3] = &unk_1E82FBF48;
  v13 = v16;
  v10 = v16;
  v11 = identifierCopy;
  [serviceClient performServiceBlock:v14 errorHandler:v12];
}

void __86__CRFeatureAvailability_fetchSupportedAirPlayFeaturesForVehicleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __86__CRFeatureAvailability_fetchSupportedAirPlayFeaturesForVehicleIdentifier_completion___block_invoke_2;
  v4[3] = &unk_1E82FC148;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 supportedAirPlayFeaturesForVehicleIdentifier:v3 reply:v4];
}

void __86__CRFeatureAvailability_fetchSupportedAirPlayFeaturesForVehicleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CarGeneralLogging();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __86__CRFeatureAvailability_fetchSupportedAirPlayFeaturesForVehicleIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke_2_cold_1();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void __86__CRFeatureAvailability_fetchSupportedAirPlayFeaturesForVehicleIdentifier_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__CRFeatureAvailability_supportedAirPlayFeaturesForVehicleIdentifier___block_invoke_41_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)disablesCarPlayFeatures:(os_log_t)log forVehicleIdentifier:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134349314;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_1C81FC000, log, OS_LOG_TYPE_DEBUG, "CRFeatureAvailability disablesCarPlayFeatures: %{public}lu vehicleID: %@", &v3, 0x16u);
}

- (void)supportedCarPlayFeaturesForSession:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)supportedAirPlayFeaturesForVehicleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchSupportedAirPlayFeaturesForVehicleIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __86__CRFeatureAvailability_fetchSupportedAirPlayFeaturesForVehicleIdentifier_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end