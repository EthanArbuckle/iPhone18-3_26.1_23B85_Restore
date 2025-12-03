@interface CSVoiceTriggerAlwaysOnProcessor
- (CSVoiceTriggerAlwaysOnProcessor)init;
- (void)_setBuiltInRTModelDictionary:(id)dictionary;
- (void)disableVoiceTriggerOnAlwaysOnProcessorWithCompletion:(id)completion;
- (void)enableVoiceTriggerOnAlwaysOnProcessorWithAsset:(id)asset completion:(id)completion;
@end

@implementation CSVoiceTriggerAlwaysOnProcessor

- (CSVoiceTriggerAlwaysOnProcessor)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CSVoiceTriggerAlwaysOnProcessor;
    v4 = [(CSVoiceTriggerAlwaysOnProcessor *)&v11 init];
    if (v4)
    {
      v5 = [objc_opt_class() description];
      v6 = dispatch_queue_create([v5 UTF8String], 0);
      queue = v4->_queue;
      v4->_queue = v6;

      v8 = dispatch_group_create();
      aopSwitchGroup = v4->_aopSwitchGroup;
      v4->_aopSwitchGroup = v8;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_setBuiltInRTModelDictionary:(id)dictionary
{
  v10 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSVoiceTriggerAlwaysOnProcessor _setBuiltInRTModelDictionary:]";
    v8 = 2114;
    v9 = dictionaryCopy;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s setting rtModel dictionary : %{public}@", &v6, 0x16u);
  }

  [MEMORY[0x1E69E1488] setCurrentBuiltInRTModelDictionary:dictionaryCopy];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)disableVoiceTriggerOnAlwaysOnProcessorWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__CSVoiceTriggerAlwaysOnProcessor_disableVoiceTriggerOnAlwaysOnProcessorWithCompletion___block_invoke;
  v7[3] = &unk_1E865CB90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __88__CSVoiceTriggerAlwaysOnProcessor_disableVoiceTriggerOnAlwaysOnProcessorWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[CSUserSessionActiveMonitor sharedInstance];
  v3 = [v2 isUserActive];

  if (v3)
  {
    dispatch_group_wait(*(*(a1 + 32) + 8), 0xFFFFFFFFFFFFFFFFLL);
    v4 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[CSVoiceTriggerAlwaysOnProcessor disableVoiceTriggerOnAlwaysOnProcessorWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Disabling VoiceTrigger in AOP", buf, 0xCu);
    }

    dispatch_group_enter(*(*(a1 + 32) + 8));
    v5 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__CSVoiceTriggerAlwaysOnProcessor_disableVoiceTriggerOnAlwaysOnProcessorWithCompletion___block_invoke_21;
    v11[3] = &unk_1E865BEC8;
    v6 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v6;
    [v5 enableVoiceTriggerListening:0 completionBlock:v11];
  }

  else
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[CSVoiceTriggerAlwaysOnProcessor disableVoiceTriggerOnAlwaysOnProcessorWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Current user doesn't have owner ship of AOP, it cannot disable AOP VoiceTrigger", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:507 userInfo:0];
      (*(v8 + 16))(v8, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __88__CSVoiceTriggerAlwaysOnProcessor_disableVoiceTriggerOnAlwaysOnProcessorWithCompletion___block_invoke_21(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSVoiceTriggerAlwaysOnProcessor disableVoiceTriggerOnAlwaysOnProcessorWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Failed to disable AOP VoiceTrigger", &v7, 0xCu);
    }
  }

  [*(a1 + 32) _setBuiltInRTModelDictionary:0];
  dispatch_group_leave(*(*(a1 + 32) + 8));
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enableVoiceTriggerOnAlwaysOnProcessorWithAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__CSVoiceTriggerAlwaysOnProcessor_enableVoiceTriggerOnAlwaysOnProcessorWithAsset_completion___block_invoke;
  block[3] = &unk_1E865C678;
  selfCopy = self;
  v14 = completionCopy;
  v12 = assetCopy;
  v9 = assetCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __93__CSVoiceTriggerAlwaysOnProcessor_enableVoiceTriggerOnAlwaysOnProcessorWithAsset_completion___block_invoke(id *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = +[CSUserSessionActiveMonitor sharedInstance];
  v3 = [v2 isUserActive];

  v4 = CSLogCategoryVT;
  if (v3)
  {
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Updating VoiceTrigger Configuration", &buf, 0xCu);
    }

    v5 = [a1[4] RTModelWithFallbackLanguage:@"xx-XX"];
    v6 = [v5 builtInRTModelDictionary];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__6202;
    v56 = __Block_byref_object_dispose__6203;
    v57 = 0;
    v7 = [MEMORY[0x1E69E1488] requestCurrentBuiltInRTModelDictionary];
    v8 = [v7 isEqualToDictionary:v6];
    v9 = CSLogCategoryVT;
    v10 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *v47 = 136315650;
        v48 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
        v49 = 2114;
        v50 = v6;
        v51 = 2114;
        v52 = v7;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s RT model %{public}@ already set (current RT model : %{public}@, skip updating", v47, 0x20u);
      }

LABEL_33:
      v32 = a1[6];
      if (v32)
      {
        v32[2](v32, *(*(&buf + 1) + 40));
      }

      goto LABEL_41;
    }

    if (v10)
    {
      *v47 = 136315650;
      v48 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
      v49 = 2114;
      v50 = v7;
      v51 = 2114;
      v52 = v6;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Going to replace current RT model %{public}@ with : %{public}@", v47, 0x20u);
    }

    v12 = [v5 modelData];

    if (v12)
    {
      v13 = [CSKeywordAnalyzerNDEAPI alloc];
      v14 = [v5 modelData];
      v15 = [(CSKeywordAnalyzerNDEAPI *)v13 initWithBlob:v14];

      v16 = CSLogCategoryVT;
      if (!v15)
      {
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_FAULT))
        {
          *v47 = 136315138;
          v48 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
          _os_log_fault_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_FAULT, "%s Unable to send model to AOP since it failed to initialize NDEAPI", v47, 0xCu);
        }

        v33 = a1[6];
        if (!v33)
        {
          goto LABEL_41;
        }

        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:508 userInfo:0];
        v33[2](v33, v22);
        goto LABEL_40;
      }

      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 136315138;
        v48 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
        _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Successfully validate model with NDEAPI", v47, 0xCu);
      }
    }

    dispatch_group_wait(*(a1[5] + 1), 0xFFFFFFFFFFFFFFFFLL);
    if (!v6)
    {
      [a1[5] _setBuiltInRTModelDictionary:0];
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:503 userInfo:0];
      v30 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v29;

      v31 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
      {
        *v47 = 136315138;
        v48 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
        _os_log_error_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_ERROR, "%s RTModel doesn't exist, fail to enable VoiceTrigger in AOP", v47, 0xCu);
      }

      goto LABEL_33;
    }

    if (v7 || (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 checkAOPConfigurationWatchDog], v17, !v18))
    {
      v23 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 136315138;
        v48 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
        _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s Enabling VoiceTrigger in AOP", v47, 0xCu);
      }

      dispatch_group_enter(*(a1[5] + 1));
      v24 = [[CSOSTransaction alloc] initWithDescription:@"AOP Configuration Transaction"];
      v25 = +[CSFPreferences sharedPreferences];
      [v25 setAOPConfigurationWatchDog];

      if (+[CSUtils isExclaveHardware])
      {
        v26 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 136315138;
          v48 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
          _os_log_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_DEFAULT, "%s Directly enable AOP without configuring model", v47, 0xCu);
        }

        v27 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __93__CSVoiceTriggerAlwaysOnProcessor_enableVoiceTriggerOnAlwaysOnProcessorWithAsset_completion___block_invoke_19;
        v37[3] = &unk_1E865AE28;
        v28 = a1[5];
        p_buf = &buf;
        v37[4] = v28;
        v22 = v24;
        v38 = v22;
        v39 = a1[6];
        [v27 enableVoiceTriggerListening:1 completionBlock:v37];
      }

      else
      {
        v34 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
        objc_initWeak(v47, v34);

        v35 = +[CSAVVoiceTriggerClientManager sharedVoiceTriggerClient];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __93__CSVoiceTriggerAlwaysOnProcessor_enableVoiceTriggerOnAlwaysOnProcessorWithAsset_completion___block_invoke_17;
        v41[3] = &unk_1E865AE00;
        objc_copyWeak(&v46, v47);
        v41[4] = a1[5];
        v45 = &buf;
        v42 = v6;
        v22 = v24;
        v43 = v22;
        v44 = a1[6];
        [v35 updateVoiceTriggerConfiguration:v42 completionBlock:v41];

        objc_destroyWeak(&v46);
        objc_destroyWeak(v47);
      }
    }

    else
    {
      v19 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_FAULT))
      {
        *v47 = 136315138;
        v48 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
        _os_log_fault_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_FAULT, "%s Unable to enable AOP, due to AOP Enable WatchDog", v47, 0xCu);
      }

      v20 = +[CSFPreferences sharedPreferences];
      [v20 clearAOPConfigurationWatchDog];

      v21 = a1[6];
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:510 userInfo:0];
      v21[2](v21, v22);
    }

LABEL_40:

LABEL_41:
    _Block_object_dispose(&buf, 8);

    goto LABEL_42;
  }

  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Current user doesn't have owner ship of AOP, it cannot enable AOP VoiceTrigger", &buf, 0xCu);
  }

  v11 = a1[6];
  if (v11)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:507 userInfo:0];
    v11[2](v11, v5);
LABEL_42:
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __93__CSVoiceTriggerAlwaysOnProcessor_enableVoiceTriggerOnAlwaysOnProcessorWithAsset_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    [*(a1 + 32) _setBuiltInRTModelDictionary:0];
    v5 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to update AOP VoiceTrigger configuration", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    dispatch_group_leave(*(*(a1 + 32) + 8));
    v6 = +[CSFPreferences sharedPreferences];
    [v6 clearAOPConfigurationWatchDog];

    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, *(*(*(a1 + 64) + 8) + 40));
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__CSVoiceTriggerAlwaysOnProcessor_enableVoiceTriggerOnAlwaysOnProcessorWithAsset_completion___block_invoke_2;
    v16[3] = &unk_1E865ADD8;
    v9 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = 0;
    v10 = *(a1 + 64);
    v11 = v9;
    v12 = *(a1 + 48);
    *&v13 = *(a1 + 56);
    *(&v13 + 1) = v10;
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v18 = v14;
    v19 = v13;
    [WeakRetained enableVoiceTriggerListening:1 completionBlock:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __93__CSVoiceTriggerAlwaysOnProcessor_enableVoiceTriggerOnAlwaysOnProcessorWithAsset_completion___block_invoke_19(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to enable AOP VoiceTrigger", &v9, 0xCu);
    }

    objc_storeStrong((*(a1[7] + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1[4] + 8));
  v6 = +[CSFPreferences sharedPreferences];
  [v6 clearAOPConfigurationWatchDog];

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(a1[7] + 8) + 40));
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __93__CSVoiceTriggerAlwaysOnProcessor_enableVoiceTriggerOnAlwaysOnProcessorWithAsset_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _setBuiltInRTModelDictionary:0];
    v5 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSVoiceTriggerAlwaysOnProcessor enableVoiceTriggerOnAlwaysOnProcessorWithAsset:completion:]_block_invoke_2";
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to enable AOP VoiceTrigger", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 40));
  }

  else
  {
    [v4 _setBuiltInRTModelDictionary:*(a1 + 48)];
  }

  dispatch_group_leave(*(*(a1 + 32) + 8));
  v6 = +[CSFPreferences sharedPreferences];
  [v6 clearAOPConfigurationWatchDog];

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(*(a1 + 72) + 8) + 40));
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end