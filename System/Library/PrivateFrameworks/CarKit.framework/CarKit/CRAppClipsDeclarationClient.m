@interface CRAppClipsDeclarationClient
+ (void)_servicePerformBlock:(id)a3 errorHandler:(id)a4;
+ (void)fetchSupportedAppClipsForPairedVehicleIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CRAppClipsDeclarationClient

+ (void)fetchSupportedAppClipsForPairedVehicleIdentifier:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_INFO, "fetchSupportedAppClipsForPairedVehicleIdentifier: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E82FD228;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke_21;
  v11[3] = &unk_1E82FBF48;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [a1 _servicePerformBlock:v13 errorHandler:v11];
}

void __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke_2;
  v8[3] = &unk_1E82FD098;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 fetchSupportedAppClipsForPairedVehicleIdentifier:v6 completion:v8];
}

void __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CarGeneralLogging();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "supported app clips: %{public}@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke_2_cold_1(v6, v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke_21_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

+ (void)_servicePerformBlock:(id)a3 errorHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_INFO, "connecting to CRAppClipsDeclarationService", buf, 2u);
  }

  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47FBC90];
  v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.appClips.service" options:4096];
  [v9 setRemoteObjectInterface:v8];
  [v9 activate];
  objc_initWeak(buf, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CRAppClipsDeclarationClient__servicePerformBlock_errorHandler___block_invoke;
  v14[3] = &unk_1E82FD250;
  objc_copyWeak(&v16, buf);
  v10 = v6;
  v15 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v14];
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__CRAppClipsDeclarationClient__servicePerformBlock_errorHandler___block_invoke_2;
    v12[3] = &unk_1E82FBF70;
    v13 = v9;
    v5[2](v5, v11, v12);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __65__CRAppClipsDeclarationClient__servicePerformBlock_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }

  [WeakRetained invalidate];
}

void __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "fetchSupportedAppClipsForPairedVehicleIdentifier returned with error: %{public}@", &v2, 0xCu);
}

void __91__CRAppClipsDeclarationClient_fetchSupportedAppClipsForPairedVehicleIdentifier_completion___block_invoke_21_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "fetchSupportedAppClipsForPairedVehicleIdentifier call failed: %{public}@", &v2, 0xCu);
}

@end