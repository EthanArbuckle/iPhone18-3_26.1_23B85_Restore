@interface CSHardwareLatencyHelper
+ (id)sharedInstance;
- (BOOL)_valuesAreMinimalyValidForInfoDictionary:(id)a3 type:(unint64_t)a4;
- (BOOL)addHWLatencyToOption:(id)a3 withCorrection:(double)a4 streamHandle:(unint64_t)a5 voiceController:(id)a6;
- (id)_adjustmentSecondsFromLatencyInfo:(id)a3 error:(id *)a4;
- (id)_hardwareLatenciesUsingStreamHandle:(unint64_t)a3 andVoiceController:(id)a4;
- (id)_hardwareLatencyAdjustmentSeconds:(id)a3 hwLatencyType:(unint64_t)a4 error:(id *)a5;
- (id)_hardwareLatencyAdjustmentSecondsUsingStreamHandle:(unint64_t)a3 andVoiceController:(id)a4;
@end

@implementation CSHardwareLatencyHelper

- (BOOL)_valuesAreMinimalyValidForInfoDictionary:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 1)
  {
    v7 = MEMORY[0x1E6958380];
  }

  else
  {
    if (a4 != 2)
    {
LABEL_7:
      isKindOfClass = 0;
      goto LABEL_8;
    }

    v7 = MEMORY[0x1E6958388];
  }

  v8 = [v5 objectForKey:*v7];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

LABEL_8:
  return isKindOfClass & 1;
}

- (id)_hardwareLatencyAdjustmentSeconds:(id)a3 hwLatencyType:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (!v8)
  {
    if (!a5)
    {
      goto LABEL_15;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = &unk_1F5916590;
LABEL_14:
    [v10 errorWithDomain:@"com.apple.corespeech" code:114 userInfo:v11];
    *a5 = v15 = 0;
    goto LABEL_16;
  }

  if (![(CSHardwareLatencyHelper *)self _valuesAreMinimalyValidForInfoDictionary:v8 type:a4])
  {
    if (!a5)
    {
      goto LABEL_15;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = &unk_1F59165B8;
    goto LABEL_14;
  }

  if (a4 == 1)
  {
    v9 = MEMORY[0x1E6958380];
    goto LABEL_11;
  }

  if (a4 == 2)
  {
    v9 = MEMORY[0x1E6958388];
LABEL_11:
    v12 = *v9;
    v13 = [v8 objectForKey:v12];
    v14 = MEMORY[0x1E696AD98];
    [v13 floatValue];
    v15 = [v14 numberWithFloat:?];

    goto LABEL_16;
  }

  if (a5)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = &unk_1F59165E0;
    goto LABEL_14;
  }

LABEL_15:
  v15 = 0;
LABEL_16:

  return v15;
}

- (id)_adjustmentSecondsFromLatencyInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v7 = [(CSHardwareLatencyHelper *)self _hardwareLatencyAdjustmentSeconds:v6 hwLatencyType:2 error:&v22];
  v8 = v22;
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v21 = 0;
    v12 = [(CSHardwareLatencyHelper *)self _hardwareLatencyAdjustmentSeconds:v6 hwLatencyType:1 error:&v21];
    v13 = v21;
    v9 = v13;
    if (v13)
    {
      if (a4)
      {
        v14 = v13;
        v11 = 0;
        *a4 = v9;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v15 = MEMORY[0x1E696AD98];
      [v7 floatValue];
      v17 = v16;
      [v12 floatValue];
      *&v19 = v17 - v18;
      v11 = [v15 numberWithFloat:v19];
    }
  }

  return v11;
}

- (id)_hardwareLatenciesUsingStreamHandle:(unint64_t)a3 andVoiceController:(id)a4
{
  v5 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3412;
  v17 = __Block_byref_object_dispose__3413;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__CSHardwareLatencyHelper__hardwareLatenciesUsingStreamHandle_andVoiceController___block_invoke;
  v9[3] = &unk_1E865C920;
  v6 = v5;
  v11 = &v13;
  v12 = a3;
  v10 = v6;
  [CSUtils withElapsedTimeLogging:@"CRFetchCarPlayCapabilities" execute:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __82__CSHardwareLatencyHelper__hardwareLatenciesUsingStreamHandle_andVoiceController___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v3 = a1[6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__CSHardwareLatencyHelper__hardwareLatenciesUsingStreamHandle_andVoiceController___block_invoke_2;
  v9[3] = &unk_1E865AA48;
  v4 = a1[4];
  v11 = a1[5];
  v5 = v2;
  v10 = v5;
  [v4 getDeviceLatenciesForStream:v3 withCompletion:v9];
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v13 = "[CSHardwareLatencyHelper _hardwareLatenciesUsingStreamHandle:andVoiceController:]_block_invoke";
      _os_log_fault_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_FAULT, "%s AVVC getDeviceLatenciesForStream:withCompletion timed out", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __82__CSHardwareLatencyHelper__hardwareLatenciesUsingStreamHandle_andVoiceController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = [v7 localizedDescription];
      v12 = 136315394;
      v13 = "[CSHardwareLatencyHelper _hardwareLatenciesUsingStreamHandle:andVoiceController:]_block_invoke_2";
      v14 = 2112;
      v15 = v10;
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s getDeviceLatenciesForStream error: %@", &v12, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_hardwareLatencyAdjustmentSecondsUsingStreamHandle:(unint64_t)a3 andVoiceController:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(CSHardwareLatencyHelper *)self _hardwareLatenciesUsingStreamHandle:a3 andVoiceController:a4];
  v13 = 0;
  v6 = [(CSHardwareLatencyHelper *)self _adjustmentSecondsFromLatencyInfo:v5 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      v12 = [v7 localizedDescription];
      *buf = 136315650;
      v15 = "[CSHardwareLatencyHelper _hardwareLatencyAdjustmentSecondsUsingStreamHandle:andVoiceController:]";
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v12;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Error getting adjustment for hardware latency. infoDict=%{public}@; err=%{public}@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)addHWLatencyToOption:(id)a3 withCorrection:(double)a4 streamHandle:(unint64_t)a5 voiceController:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(CSHardwareLatencyHelper *)self _hardwareLatencyAdjustmentSecondsUsingStreamHandle:a5 andVoiceController:a6];
  v12 = v11;
  if (v11 && ([v11 isEqualToNumber:&unk_1F5916850] & 1) == 0)
  {
    [v12 floatValue];
    v16 = v15;
    v17 = v15 + a4;
    v18 = v17;
    v19 = [MEMORY[0x1E6958498] hostTimeForSeconds:v17];
    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136316162;
      v24 = "[CSHardwareLatencyHelper addHWLatencyToOption:withCorrection:streamHandle:voiceController:]";
      v25 = 2050;
      v26 = v18;
      v27 = 2050;
      v28 = v19;
      v29 = 2048;
      v30 = v16;
      v31 = 2048;
      v32 = a4;
      _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Applying adjustment for hardware latency %{public}f secs, %{public}llu ticks (AVF=%f Correction=%f)", &v23, 0x34u);
    }

    [v10 adjustStartRecordingHostTime:v19];
    v14 = 1;
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    v14 = 0;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[CSHardwareLatencyHelper addHWLatencyToOption:withCorrection:streamHandle:voiceController:]";
      v25 = 2112;
      v26 = *&v12;
      _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s No adjustment for hardware latency to apply. avfLatencySeconds = %@", &v23, 0x16u);
      v14 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3431 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3431, &__block_literal_global_3432);
  }

  v3 = sharedInstance_sharedInstance_3433;

  return v3;
}

uint64_t __41__CSHardwareLatencyHelper_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_3433 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end