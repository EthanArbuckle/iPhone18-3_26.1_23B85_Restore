@interface CSUAFAssetManagerBase
- (CSUAFAssetManagerBase)init;
- (CSUAFAssetManagerBase)initWithForceSetIsExclave:(BOOL)a3 exclaveManagerProxy:(id)a4;
- (id)_getExclaveAssetManagerProxy;
- (id)_timerForUUID:(id)a3 eventHandler:(id)a4;
- (void)_cancelRetryTimerForAsset:(id)a3;
- (void)_logMapFailTelemetryAndSubmitDiagnosticReportForError:(id)a3 assetSpecifier:(id)a4 assetConfigVersion:(id)a5;
- (void)_logMapOperationLatencyTelemetry:(double)a3 assetSpecifier:(id)a4 assetConfigVersion:(id)a5;
- (void)_mapAssetToExclaveKit:(id)a3 assetName:(id)a4 assetSet:(id)a5 completion:(id)a6;
- (void)_mapVoiceTriggerAsset:(id)a3 asset:(id)a4 completion:(id)a5;
- (void)_resetRetryTimerForAsset:(id)a3;
- (void)_retryMappingAssetToExclaveKit:(id)a3 assetName:(id)a4 assetSet:(id)a5 completion:(id)a6;
- (void)mapAssetToExclaveKit:(id)a3 assetName:(id)a4 assetSet:(id)a5 completion:(id)a6;
- (void)retryMappingAssetToExclaveKit:(id)a3 assetName:(id)a4 assetSet:(id)a5 completion:(id)a6;
@end

@implementation CSUAFAssetManagerBase

- (CSUAFAssetManagerBase)init
{
  if (+[CSUtils isDarwinOS])
  {
    v3 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CSUAFAssetManagerBase;
    v4 = [(CSUAFAssetManagerBase *)&v13 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSUAFAssetManager queue", 0);
      queue = v4->_queue;
      v4->_queue = v5;

      v7 = [MEMORY[0x1E695DF90] dictionary];
      retryTimers = v4->_retryTimers;
      v4->_retryTimers = v7;

      v9 = [MEMORY[0x1E695DF90] dictionary];
      retryAttemptCount = v4->_retryAttemptCount;
      v4->_retryAttemptCount = v9;

      v4->_isExclaveHardware = +[CSUtils isExclaveHardware];
      exclaveManagerProxy = v4->_exclaveManagerProxy;
      v4->_exclaveManagerProxy = 0;
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

- (void)_mapVoiceTriggerAsset:(id)a3 asset:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke;
  v22[3] = &unk_1E865BF90;
  v26 = v10;
  v11 = v8;
  v23 = v11;
  v24 = self;
  v25 = v9;
  v12 = v9;
  v13 = v10;
  v14 = MEMORY[0x1E12BA300](v22);
  v15 = [(CSUAFAssetManagerBase *)self _getExclaveAssetManagerProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_2;
  v18[3] = &unk_1E865C678;
  v19 = v11;
  v20 = self;
  v21 = v14;
  v16 = v14;
  v17 = v11;
  [v15 stopSecureMobileAssetLoaderService:v18];
}

void __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke(uint64_t a1, void *a2, double a3)
{
  v13 = a2;
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v13);
  }

  v6 = [*(a1 + 32) assetNamed:@"com.apple.siri.sp.invocation"];
  v7 = [v6 metadata];
  v8 = [v7 objectForKey:*MEMORY[0x1E69DEF20]];

  if (v13)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) configVersion];
    [v9 _logMapFailTelemetryAndSubmitDiagnosticReportForError:v13 assetSpecifier:v8 assetConfigVersion:v10];
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 48) configVersion];
  [v11 _logMapOperationLatencyTelemetry:v8 assetSpecifier:v12 assetConfigVersion:a3];
}

void __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_2(void *a1)
{
  v2 = mach_absolute_time();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_3;
  v6[3] = &unk_1E865C008;
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v8 = v2;
  v6[4] = v3;
  v7 = v5;
  [v4 mapAsset:@"com.apple.siri.sp.invocation" queue:0 completion:v6];
}

void __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = mach_absolute_time() - *(a1 + 48);
  if (_CSMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
  }

  v5 = *&_CSMachAbsoluteTimeRate_rate * v4 / 1000000000.0;
  v6 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v17 = "[CSUAFAssetManagerBase _mapVoiceTriggerAsset:asset:completion:]_block_invoke_3";
    v18 = 2112;
    v19 = @"com.apple.siri.sp.invocation";
    v20 = 2048;
    v21 = v5;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Mapping asset %@ to ExclaveKit completed in %f second(s) with error %@", buf, 0x2Au);
  }

  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_331;
  v11[3] = &unk_1E865BFE0;
  v12 = v3;
  v8 = *(a1 + 40);
  v15 = v5;
  v13 = *(a1 + 32);
  v14 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_331(uint64_t a1, __n128 a2)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 48);
    a2.n128_u64[0] = *(a1 + 56);
    v4 = *(*(a1 + 48) + 16);

    v4(a2);
  }

  else
  {
    v5 = [*(a1 + 40) _getExclaveAssetManagerProxy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__CSUAFAssetManagerBase__mapVoiceTriggerAsset_asset_completion___block_invoke_2_332;
    v6[3] = &unk_1E865BFB8;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v5 startSecureMobileAssetLoaderService:0 completion:v6];
  }
}

- (void)_logMapOperationLatencyTelemetry:(double)a3 assetSpecifier:(id)a4 assetConfigVersion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[CSAssetTelemetryReporter sharedReporter];
  [v9 reportAssetMapLatencyTelemetry:v8 assetSpecifier:v7 assetConfigVersion:a3];
}

- (void)_logMapFailTelemetryAndSubmitDiagnosticReportForError:(id)a3 assetSpecifier:(id)a4 assetConfigVersion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[CSAssetTelemetryReporter sharedReporter];
  [v10 reportAssetMapFailTelemetryForError:v9 assetSpecifier:v8 assetConfigVersion:v7];

  v11 = +[CSAssetTelemetryReporter sharedReporter];
  [v11 submitSecureAssetMapFailDiagnosticReportForError:v9];
}

- (void)_retryMappingAssetToExclaveKit:(id)a3 assetName:(id)a4 assetSet:(id)a5 completion:(id)a6
{
  v44[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v11 = [v10 assetType];
  [(CSUAFAssetManagerBase *)self _cancelRetryTimerForAsset:v10];
  v12 = [(CSUAFAssetManagerBase *)self retryAttemptCount];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v14 = [v12 objectForKey:v13];

  v15 = [v14 unsignedIntegerValue];
  if (!v14 || [v14 unsignedIntegerValue] < self->_maxAssetMapRetryCount)
  {
    v16 = [MEMORY[0x1E696AFB0] UUID];
    objc_initWeak(&location, self);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke;
    v35[3] = &unk_1E865BF40;
    objc_copyWeak(&v41, &location);
    v36 = v10;
    v37 = v30;
    v38 = v31;
    v39 = self;
    v40 = v32;
    v17 = [(CSUAFAssetManagerBase *)self _timerForUUID:v16 eventHandler:v35];
    v18 = [(CSUAFAssetManagerBase *)self retryTimers];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [v18 setObject:v17 forKey:v19];

    v20 = [(CSUAFAssetManagerBase *)self retryAttemptCount];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15 + 1];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [v20 setObject:v21 forKey:v22];

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_4;
    v33[3] = &unk_1E865BF68;
    v23 = v17;
    v34 = v23;
    [v23 resume:v33];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
LABEL_6:

    goto LABEL_7;
  }

  [(CSUAFAssetManagerBase *)self _resetRetryTimerForAsset:v10];
  if (v32)
  {
    v24 = MEMORY[0x1E696ABC0];
    v43 = @"reason";
    v25 = MEMORY[0x1E696AEC0];
    v16 = [(CSUAFAssetManagerBase *)self retryAttemptCount];
    v26 = [v25 stringWithFormat:@"Failed to map asset of type %ld after %ld retries", v11, v16];
    v44[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v28 = [v24 errorWithDomain:@"com.apple.corespeech" code:2162 userInfo:v27];
    (*(v32 + 2))(v32, v28);

    goto LABEL_6;
  }

LABEL_7:

  v29 = *MEMORY[0x1E69E9840];
}

void __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_2;
  v12[3] = &unk_1E865BF18;
  objc_copyWeak(&v16, (a1 + 72));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = *(a1 + 56);
  v15 = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v13 = v11;
  v14 = v10;
  [WeakRetained _mapAssetToExclaveKit:v3 assetName:v4 assetSet:v5 completion:v12];

  objc_destroyWeak(&v16);
}

void __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_4(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 context];
    v8 = [v7 identifier];
    v10 = 136315650;
    v11 = "[CSUAFAssetManagerBase _retryMappingAssetToExclaveKit:assetName:assetSet:completion:]_block_invoke_4";
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s [%@] Timer resumed:%d", &v10, 0x1Cu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_3;
    block[3] = &unk_1E865BEF0;
    v14 = v3;
    v15 = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    *&v11 = v9;
    *(&v11 + 1) = *(a1 + 56);
    v18 = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v16 = v12;
    v17 = v11;
    dispatch_async(v6, block);
  }
}

uint64_t __86__CSUAFAssetManagerBase__retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 80);

    return [v3 _retryMappingAssetToExclaveKit:v2 assetName:v4 assetSet:v5 completion:v6];
  }

  else
  {
    [*(a1 + 72) _resetRetryTimerForAsset:v2];
    result = *(a1 + 80);
    if (result)
    {
      v8 = *(result + 16);

      return v8();
    }
  }

  return result;
}

- (id)_timerForUUID:(id)a3 eventHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CSFTimerContext alloc] initTimerinterval:v7 identifier:self->_assetMapRetryTimeInterval];

  v9 = [CSFTimer alloc];
  v10 = [(CSUAFAssetManagerBase *)self queue];
  v11 = [(CSFTimer *)v9 initWithContext:v8 queue:v10 eventHandler:v6];

  return v11;
}

- (void)_resetRetryTimerForAsset:(id)a3
{
  v4 = a3;
  [(CSUAFAssetManagerBase *)self _cancelRetryTimerForAsset:v4];
  v8 = [(CSUAFAssetManagerBase *)self retryAttemptCount];
  v5 = MEMORY[0x1E696AD98];
  v6 = [v4 assetType];

  v7 = [v5 numberWithUnsignedInteger:v6];
  [v8 removeObjectForKey:v7];
}

- (void)_cancelRetryTimerForAsset:(id)a3
{
  v4 = a3;
  v5 = [(CSUAFAssetManagerBase *)self retryTimers];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "assetType")}];
  v7 = [v5 objectForKey:v6];
  [v7 cancel];

  v11 = [(CSUAFAssetManagerBase *)self retryTimers];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v4 assetType];

  v10 = [v8 numberWithUnsignedInteger:v9];
  [v11 removeObjectForKey:v10];
}

- (void)retryMappingAssetToExclaveKit:(id)a3 assetName:(id)a4 assetSet:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__CSUAFAssetManagerBase_retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke;
  block[3] = &unk_1E865BEA0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, block);
}

uint64_t __85__CSUAFAssetManagerBase_retryMappingAssetToExclaveKit_assetName_assetSet_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetRetryTimerForAsset:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 _retryMappingAssetToExclaveKit:v3 assetName:v4 assetSet:v5 completion:v6];
}

- (void)_mapAssetToExclaveKit:(id)a3 assetName:(id)a4 assetSet:(id)a5 completion:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AFB0] UUID];
  v15 = CSLogCategoryAsset;
  v16 = os_signpost_id_generate(CSLogCategoryAsset);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      *buf = 138412546;
      v40 = v14;
      v41 = 2048;
      v42 = [v10 assetType];
      _os_signpost_emit_with_name_impl(&dword_1DDA4B000, v15, OS_SIGNPOST_EVENT, v17, "Mapping_Secure_Asset", "[%@] Mapping asset type: %ld into exclave", buf, 0x16u);
    }
  }

  v18 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v10 assetType];
    *buf = 136315650;
    v40 = "[CSUAFAssetManagerBase _mapAssetToExclaveKit:assetName:assetSet:completion:]";
    v41 = 2112;
    v42 = v14;
    v43 = 2048;
    v44 = v20;
    _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s [%@] Mapping asset type: %ld into exclave", buf, 0x20u);
  }

  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __77__CSUAFAssetManagerBase__mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke;
  v36 = &unk_1E865BEC8;
  v21 = v12;
  v37 = v21;
  v22 = v13;
  v38 = v22;
  v23 = MEMORY[0x1E12BA300](&v33);
  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
    goto LABEL_14;
  }

  v24 = [CSFPreferences sharedPreferences:v33];
  v25 = [v24 forceFailExclaveAssetMapping];

  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[CSUAFAssetManagerBase _mapAssetToExclaveKit:assetName:assetSet:completion:]";
    _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, "%s Internal Build: Setting to force fail asset mapping is enabled", buf, 0xCu);
  }

  v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2155 userInfo:&unk_1F59166A8];
  if (v27)
  {
    v28 = v27;
    v23[2](v23, v27);
  }

  else
  {
LABEL_14:
    v29 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v40 = "[CSUAFAssetManagerBase _mapAssetToExclaveKit:assetName:assetSet:completion:]";
      v41 = 2112;
      v42 = v11;
      _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_DEFAULT, "%s Mapping asset %@ to ExclaveKit", buf, 0x16u);
    }

    if ([v11 isEqualToString:{@"com.apple.siri.sp.invocation", v33, v34, v35, v36}])
    {
      [(CSUAFAssetManagerBase *)self _mapVoiceTriggerAsset:v21 asset:v10 completion:v23];
    }

    else
    {
      v30 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v40 = "[CSUAFAssetManagerBase _mapAssetToExclaveKit:assetName:assetSet:completion:]";
        v41 = 2112;
        v42 = v11;
        _os_log_error_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_ERROR, "%s Exclave Mapping Not supported assetName: %@", buf, 0x16u);
      }

      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2161 userInfo:&unk_1F59166D0];
      (v23)[2](v23, v31);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __77__CSUAFAssetManagerBase__mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_getExclaveAssetManagerProxy
{
  v3 = self->_exclaveManagerProxy;
  if (!v3)
  {
    v4 = +[CSExclaveAssetManagerProxy sharedManager];
    exclaveManagerProxy = self->_exclaveManagerProxy;
    self->_exclaveManagerProxy = v4;

    v3 = self->_exclaveManagerProxy;
  }

  return v3;
}

- (void)mapAssetToExclaveKit:(id)a3 assetName:(id)a4 assetSet:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CSUAFAssetManagerBase_mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke;
  block[3] = &unk_1E865BEA0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, block);
}

void __76__CSUAFAssetManagerBase_mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetRetryTimerForAsset:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__CSUAFAssetManagerBase_mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke_2;
  v6[3] = &unk_1E865BE78;
  v7 = *(a1 + 64);
  [v2 _mapAssetToExclaveKit:v3 assetName:v4 assetSet:v5 completion:v6];
}

void __76__CSUAFAssetManagerBase_mapAssetToExclaveKit_assetName_assetSet_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] == 2155)
    {
      v5 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[CSUAFAssetManagerBase mapAssetToExclaveKit:assetName:assetSet:completion:]_block_invoke_2";
        _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Skipping retry to map asset as the operation is not supported.", &v11, 0xCu);
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(v6 + 16);
LABEL_11:
        v7();
      }
    }

    else
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v7 = *(v9 + 16);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_11;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (CSUAFAssetManagerBase)initWithForceSetIsExclave:(BOOL)a3 exclaveManagerProxy:(id)a4
{
  v7 = a4;
  v8 = [(CSUAFAssetManagerBase *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_isExclaveHardware = a3;
    objc_storeStrong(&v8->_exclaveManagerProxy, a4);
    v9->_assetMapRetryTimeInterval = 30.0;
    v9->_maxAssetMapRetryCount = 50;
  }

  return v9;
}

@end