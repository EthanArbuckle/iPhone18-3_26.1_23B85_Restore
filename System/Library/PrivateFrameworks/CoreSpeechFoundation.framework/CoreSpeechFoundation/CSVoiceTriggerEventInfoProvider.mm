@interface CSVoiceTriggerEventInfoProvider
+ (BOOL)isVoiceTriggerInfoAvailableLocally:(id)a3;
+ (id)sharedInstance;
- (BOOL)_isBuiltInDeviceFromDeviceId:(id)a3;
- (CSVoiceTriggerEventInfoProvider)init;
- (void)fetchVoiceTriggerInfoWithAudioContext:(id)a3 resultVoiceTriggerInfo:(id *)a4 resultRTSTriggerInfo:(id *)a5;
- (void)setVoiceTriggerInfo:(id)a3 deviceId:(id)a4;
@end

@implementation CSVoiceTriggerEventInfoProvider

- (BOOL)_isBuiltInDeviceFromDeviceId:(id)a3
{
  if (a3)
  {
    return [a3 isEqualToString:@"BuiltInMicrophoneDevice"];
  }

  else
  {
    return 1;
  }
}

- (void)fetchVoiceTriggerInfoWithAudioContext:(id)a3 resultVoiceTriggerInfo:(id *)a4 resultRTSTriggerInfo:(id *)a5
{
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2649;
  v32 = __Block_byref_object_dispose__2650;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2649;
  v26 = __Block_byref_object_dispose__2650;
  v27 = 0;
  v9 = [v8 deviceId];
  if ([v8 isDarwinVoiceTriggered])
  {
    v10 = +[CSRemoteDarwinDeviceInfo sharedInstance];
    v11 = [v8 deviceId];
    v12 = [v10 fetchDeviceUUIDStringFromUID:v11];

    v13 = +[CSDarwinVoiceTriggerEventInfoProvider sharedInstance];
    v14 = [v13 getMachTimeAdjustedVoiceTriggerEventInfoForDeviceUUID:v12];
    v15 = v29[5];
    v29[5] = v14;
  }

  else
  {
    queue = self->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __117__CSVoiceTriggerEventInfoProvider_fetchVoiceTriggerInfoWithAudioContext_resultVoiceTriggerInfo_resultRTSTriggerInfo___block_invoke;
    v17[3] = &unk_1E865C808;
    v18 = v9;
    v19 = self;
    v20 = &v28;
    v21 = &v22;
    dispatch_async_and_wait(queue, v17);
    v12 = v18;
  }

  if (a4)
  {
    *a4 = v29[5];
  }

  if (a5)
  {
    *a5 = v23[5];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void __117__CSVoiceTriggerEventInfoProvider_fetchVoiceTriggerInfoWithAudioContext_resultVoiceTriggerInfo_resultRTSTriggerInfo___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1[4] && ([*(a1[5] + 8) objectForKeyedSubscript:?], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v12 = 136315394;
      v13 = "[CSVoiceTriggerEventInfoProvider fetchVoiceTriggerInfoWithAudioContext:resultVoiceTriggerInfo:resultRTSTriggerInfo:]_block_invoke";
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Providing voiceTriggerEventInfo with deviceId %{public}@", &v12, 0x16u);
    }

    v5 = [*(a1[5] + 8) objectForKeyedSubscript:a1[4]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[CSVoiceTriggerEventInfoProvider fetchVoiceTriggerInfoWithAudioContext:resultVoiceTriggerInfo:resultRTSTriggerInfo:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Providing built-in voiceTriggerEventInfo", &v12, 0xCu);
    }

    v9 = *(a1[6] + 8);
    v10 = *(a1[5] + 16);
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[5] + 32));
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setVoiceTriggerInfo:(id)a3 deviceId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CSVoiceTriggerEventInfoProvider_setVoiceTriggerInfo_deviceId___block_invoke;
  block[3] = &unk_1E865C778;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __64__CSVoiceTriggerEventInfoProvider_setVoiceTriggerInfo_deviceId___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = [*(result + 40) _isBuiltInDeviceFromDeviceId:*(result + 48)];
    result = v1[4];
    if (v2)
    {
      v3 = v1[5];
      v4 = result;
      v5 = *(v3 + 16);
      *(v3 + 16) = v4;
    }

    else
    {
      if (!result || !v1[6])
      {
        return result;
      }

      [*(v1[5] + 8) setObject:objc_msgSend(result forKeyedSubscript:{"copy"), v1[6]}];
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (CSVoiceTriggerEventInfoProvider)init
{
  v8.receiver = self;
  v8.super_class = CSVoiceTriggerEventInfoProvider;
  v2 = [(CSVoiceTriggerEventInfoProvider *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSVoiceTriggerEventInfoProvider Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    accessoryVoiceTriggerEvents = v2->_accessoryVoiceTriggerEvents;
    v2->_accessoryVoiceTriggerEvents = v5;
  }

  return v2;
}

+ (BOOL)isVoiceTriggerInfoAvailableLocally:(id)a3
{
  v3 = a3;
  if (+[CSUtils isLocalVoiceTriggerAvailable](CSUtils, "isLocalVoiceTriggerAvailable") || ([v3 isHearstVoiceTriggered] & 1) != 0 || (objc_msgSend(v3, "isJarvisVoiceTriggered") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isRemoraVoiceTriggered];
  }

  v5 = [v3 isDarwinVoiceTriggered] | v4;

  return v5 & 1;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2664 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2664, &__block_literal_global_2665);
  }

  v3 = sharedInstance_sharedInstance_2666;

  return v3;
}

uint64_t __49__CSVoiceTriggerEventInfoProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_2666 = objc_alloc_init(CSVoiceTriggerEventInfoProvider);

  return MEMORY[0x1EEE66BB8]();
}

@end