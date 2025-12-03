@interface CRCertificationOverridesClient
+ (void)_servicePerformBlock:(id)block errorHandler:(id)handler;
+ (void)fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion:(id)completion;
+ (void)setNextSessionOverrideAirPlayFeatureStrings:(id)strings completion:(id)completion;
@end

@implementation CRCertificationOverridesClient

+ (void)setNextSessionOverrideAirPlayFeatureStrings:(id)strings completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  completionCopy = completion;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = stringsCopy;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "setNextSessionOverrideAirPlayFeatureStrings: %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__CRCertificationOverridesClient_setNextSessionOverrideAirPlayFeatureStrings_completion___block_invoke;
  v11[3] = &unk_1E82FD538;
  v12 = stringsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = stringsCopy;
  [self _servicePerformBlock:v11 errorHandler:&__block_literal_global_28];
}

void __89__CRCertificationOverridesClient_setNextSessionOverrideAirPlayFeatureStrings_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__CRCertificationOverridesClient_setNextSessionOverrideAirPlayFeatureStrings_completion___block_invoke_2;
  v8[3] = &unk_1E82FCEC0;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 setNextSessionOverrideAirPlayFeatureStrings:v6 completion:v8];
}

void __89__CRCertificationOverridesClient_setNextSessionOverrideAirPlayFeatureStrings_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = CarCertificationOverrideLogging();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "setNextSessionOverrideAirPlayFeatureStrings succeeded", v16, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __89__CRCertificationOverridesClient_setNextSessionOverrideAirPlayFeatureStrings_completion___block_invoke_2_cold_1(v5, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, a2, v5);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }
}

void __89__CRCertificationOverridesClient_setNextSessionOverrideAirPlayFeatureStrings_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__CRCertificationOverridesClient_setNextSessionOverrideAirPlayFeatureStrings_completion___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

+ (void)fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__CRCertificationOverridesClient_fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion___block_invoke;
  v6[3] = &unk_1E82FD560;
  v7 = completionCopy;
  v5 = completionCopy;
  [self _servicePerformBlock:v6 errorHandler:&__block_literal_global_26];
}

void __94__CRCertificationOverridesClient_fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__CRCertificationOverridesClient_fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E82FD098;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion:v7];
}

void __94__CRCertificationOverridesClient_fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "fetchNextSessionOverrideAirPlayFeatureStrings: %{public}@ error: %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void __94__CRCertificationOverridesClient_fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __94__CRCertificationOverridesClient_fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion___block_invoke_24_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

+ (void)_servicePerformBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  v7 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "connecting to CRCertificationOverridesService", buf, 2u);
  }

  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803C48];
  v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.certificationOverrides.service" options:4096];
  [v9 setRemoteObjectInterface:v8];
  [v9 resume];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CRCertificationOverridesClient__servicePerformBlock_errorHandler___block_invoke;
  v14[3] = &unk_1E82FBF48;
  v10 = handlerCopy;
  v15 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v14];
  if (blockCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__CRCertificationOverridesClient__servicePerformBlock_errorHandler___block_invoke_2;
    v12[3] = &unk_1E82FBF70;
    v13 = v9;
    blockCopy[2](blockCopy, v11, v12);
  }
}

uint64_t __68__CRCertificationOverridesClient__servicePerformBlock_errorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end